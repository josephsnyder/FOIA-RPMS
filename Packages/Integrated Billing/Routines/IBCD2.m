IBCD2	;ALB/ARH - AUTOMATED BILLER (CREATE - SETUP/GATHER DATA FIELDS) ; 8/6/93
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	;;Per VHA Directive 10-93-142, this routine should not be modified.
	;
FIND	;
	S IBX=$$CHKSYS^IBCD4 I 'IBX D TERR(0,0,$P(IBX,U,2)) G EXIT
	S IBS="IBC0" F  S IBS=$O(^TMP(IBS)) Q:IBS=""  S IBX=$E(IBS,4,99) Q:$E(IBS,1,3)'="IBC"!'+IBX  D
	. S IBDFN=0 F  S IBDFN=$O(^TMP(IBS,$J,IBDFN)) Q:'IBDFN  D
	.. S IBSTDT="" F  S IBSTDT=$O(^TMP(IBS,$J,IBDFN,IBSTDT)) Q:IBSTDT=""  D  I $D(IBCT)>9 D CREATE
	... K IBCT S IBTRN=0 F  S IBTRN=$O(^TMP(IBS,$J,IBDFN,IBSTDT,IBTRN)) Q:'IBTRN  S IBCT(IBTRN)="",IBTF=^TMP(IBS,$J,IBDFN,IBSTDT,IBTRN)
EXIT	K IBS,IBDFN,IBSTDT,IBCT,IBTRN,IBTF,IBX,X,DFN
	Q
	;
CREATE	;set up a bill,  required: IBCT(IBTRN),IBDFN,IBSTDT
	Q:$D(IBCT)<9  K IB
	S IBSP=$G(^IBE(350.9,1,1)),IBDIV=$P(IBSP,U,25),IBTRN=+$O(IBCT(0))
	S IBTRND=$G(^IBT(356,IBTRN,0)) I 'IBTRND D TERR(+IBTRN,0,"Claims Tracking Record not found or not complete.") G QUIT
	S IBTYPE=$P(IBTRND,U,18) S IBX=$$CHK I 'IBX D TERR(+IBTRN,0,$P(IBX,U,2)) G QUIT
	;
	S IBX=$$ARSET I 'IBX D TERR(IBTRN,0,$P(IBX,U,2)) G QUIT
	S IBIFN=+IBX,IB(.01)=$P(IBX,U,2),IB(.17)=$P(IBX,U,3),IB(.2)=1
	S (IB(.02),DFN)=IBDFN,IB(.06)=IBTF
	S IB(.07)=$O(^DGCR(399.3,"B","REIMBURSABLE INS.",0)) I 'IB(.07) S IB(.07)=8
	S IBX=$O(^IBT(356.2,"ATRTP",IBTRN,1,"")) I +IBX S IB(163)=$P($G(^IBT(356.2,IBX,0)),U,28) ;pre-cert #
	;
	S IBX=$P($G(^IBE(356.6,+IBTYPE,0)),U,1)
	I IBX="INPATIENT ADMISSION" D INPT^IBCD5 G CONT
	I IBX="PRESCRIPTION REFILL" D RXRF G CONT
	I IBX="OUTPATIENT VISIT" D OUTPT G CONT
	G QUIT
	;
CONT	S IBX=$$BDT^IBCU3(IBDFN,IB(.03)) S IB(.17)=$S(+IBX:IBX,1:IBIFN) ; continuing episode of care
	;Note if a primary bill is found for an outpatient bill then it allows them to choose the bill during bill creation,  .17 is not editable on the screens
	S IB(.18)=$$SC^IBCU3(IBDFN) ; SC at time of care
	;
	D ^IBCD3 ; create bill
	;
	S IBTRN=0 F  S IBTRN=$O(IBCT(IBTRN)) Q:'IBTRN  D
	. D TERR(IBTRN,IBIFN,"") ; bill created
	. D TEABD(IBTRN,0) ; remove eabd
	. D TBILL(IBTRN,IBIFN) ; set index for bill and event (356.399)
	;
QUIT	K X,Y,IBX,IBY,IBSP,IBDIV,IBTRN,IBTRND,IBTYPE,IB
	Q
	;
OUTPT	S IB(.04)=$S(+$P($G(^DG(40.8,+IBDIV,0)),U,3):7,1:1) ;division outpatient only or hospital
	S IB(.05)=3,IB(.06)=1,IB(.09)=4
	;event dt is date of first visit, stmt from is first visit dt, stmt to is last visit dt on bill
	S (IB(.03),IB(151))=9999999,IB(152)=""
	S IBTRNX=0 F  S IBTRNX=$O(IBCT(IBTRNX)) Q:'IBTRNX  S IBX=$P($G(^IBT(356,IBTRNX,0)),U,6)\1 D
	. S IB(43,+IBX)="" S:IB(152)<IBX IB(152)=IBX F IBI=.03,151 I IB(IBI)>IBX S IB(IBI)=IBX
	K IBI,IBX,IBTRNX
	Q
RXRF	S IB(.04)=$S(+$P($G(^DG(40.8,+IBDIV,0)),U,3):7,1:1) ;division outpatient only or hospital
	S IB(.05)=3,IB(.06)=1
	;event dt is date of first visit, stmt from is first visit dt, stmt to is last visit dt on bill
	S (IB(.03),IB(151))=9999999,IB(152)=""
	S IBTRNX=0 F  S IBTRNX=$O(IBCT(IBTRNX)) Q:'IBTRNX  S IBRX=$G(^IBT(356,IBTRNX,0)) D
	. S IBX=$$RXRF^IBCD4(+$P(IBRX,U,8),+$P(IBRX,U,10)),IB(362.4,+$P(IBRX,U,8),+$P(IBRX,U,10))=IBX,IBX=$P(IBX,U,4)
	. S:IB(152)<IBX IB(152)=IBX F IBI=.03,151 I IB(IBI)>IBX S IB(IBI)=IBX
	K IBI,IBX,IBTRNX,IBRX
	Q
	;
ARSET()	; set up entry for new bill in AR returns IFN, bill number
	;otherwise "0^error meaasge"
	N X S X="0^Can not set up bill in AR."
	S PRCASV("SER")=$P($G(^IBE(350.9,1,1)),U,14),PRCASV("SITE")=+$P($$SITE^VASITE,U,3)
	D SETUP^PRCASVC3
	I $P(PRCASV("ARBIL"),U)=-1 S X="0^"_$P(PRCASV("ARBIL"),U,2)_" - "_$$ETXT^IBEFUNC($P(PRCASV("ARBIL"),U,2)) G ARSETQ
	I $P(PRCASV("ARREC"),U)=-1 S X="0^"_$P(PRCASV("ARREC"),U,2)_" - "_$$ETXT^IBEFUNC($P(PRCASV("ARREC"),U,2)) G ARSETQ
	S X=PRCASV("ARREC")_U_$P(PRCASV("ARBIL"),"-",2)
ARSETQ	K PRCASV
	Q X
	;
CHK()	;other checks
	N X S X=1 I $G(^DPT(+$G(IBDFN),0))="" S X="0^Patient information lacking."
	Q X
	;
TEABD(TRN,IBDT)	;
	S IBDT=+$G(IBDT),^TMP("IBEABD",$J,+TRN,+IBDT)=""
	Q
TERR(TRN,IFN,ER)	;
	N X S TRN=+$G(TRN),IFN=+$G(IFN),X=+$G(^TMP("IBCE",$J,DT,TRN,IFN))+1
	S ^TMP("IBCE",$J,DT,TRN,IFN,X)=$G(ER),^TMP("IBCE",$J,DT,TRN,IFN)=X
	Q
TBILL(TRN,IFN)	;
	I '$D(^IBT(356,+$G(TRN),0))!('$D(^DGCR(399,+$G(IFN),0))) Q
	S ^TMP("IBILL",$J,TRN,IFN)=""
	Q
