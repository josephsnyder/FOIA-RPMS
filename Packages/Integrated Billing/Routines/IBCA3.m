IBCA3	;ALB/AAS - MCCR SINGLE LINE DISPLAY OF BILL ; 12/22/89
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	;;Per VHA Directive 10-93-142, this routine should not be modified.
	;
	;MAP TO DGCRA3
	;
EN1	;entry for one bill, must pass IBIFN
	K DGSELNO D HDR,ONE
	G END
	;
EN2	;Find all bills for a patient must pass dfn
	S IBQUIT=0 D UTIL S:'$D(IBPAUS) IBPAUS=5
	I 'IBCNT W !,"No Bills On File for this Patient!" G EN2Q
	K DGSELNO D HDR S (IBDT,IBIFN)="",IBCNT=0
	F K=0:0 S IBDT=$O(^UTILITY($J,IBDT)) Q:IBDT=""!(IBQUIT)  F J=0:0 S IBIFN=$O(^UTILITY($J,IBDT,IBIFN)) Q:IBIFN=""!(IBQUIT)  S IBCNT=IBCNT+1 D ONE,PAUSE:'(IBCNT#IBPAUS)
EN2Q	D END Q
	;
EN3	;Find all bills for a patient on one episode date.  must pass dfn, episode date in x
	S IBQUIT=0 D UTIL,UTIL1
	I 'IBCNT W !,"No Other Bills for this Episode Date on File!" G EN3Q
	K DGSELNO S IBIFN="",IBCNT=0,IBDT=-(X+.99),IBDT1=X
	F K=0:0 S IBDT=$O(^UTILITY($J,IBDT)) Q:IBDT=""!(IBQUIT)!(IBDT>-IBDT1)  F J=0:0 S IBIFN=$O(^UTILITY($J,IBDT,IBIFN)) Q:IBIFN=""!(IBQUIT)  S IBCNT=IBCNT+1 D HDR:IBCNT=1,ONE,PAUSE:'(IBCNT#5)
	F K=0:0 S K=$O(^UTILITY($J,"IB",K)) Q:'K!(IBQUIT)  S IBCNT=IBCNT+1 D HDR1:IBCNT=1,ONE1,PAUSE:'(IBCNT#5)
	I 'IBCNT W !,"No Other Bills for this Episode Date on File!" G EN3Q
EN3Q	D END Q
EN4	;Find all bills beginning a CEOC and allow selection by number, pass dfn
	K ^UTILITY($J) S (DGSELNO,IBQUIT)=0 D UTIL
	I 'IBCNT W !,"No Other Bills for this Episode Date on File!" G EN4Q
	S (IBDT,IBIFN)="",IBCNT=0,IBPAUS=5
	F K=0:0 S IBDT=$O(^UTILITY($J,IBDT)) Q:'IBDT!(IBQUIT)  D 41
	D:'IBQUIT PAUSE:'$D(IBIDS(.17))
EN4Q	K DIC,DGSELNO D END Q
	;
41	F J=0:0 S IBIFN=$O(^UTILITY($J,IBDT,IBIFN)) Q:'IBIFN!(IBQUIT)  D SCRN ;S IBCNT=IBCNT+1 D ONE,PAUSE:'(IBCNT#IBPAUS)
	Q
SCRN	S A=$P(^DGCR(399,IBIFN,0),"^",17)
	I A=IBIFN S DGSELNO=DGSELNO+1,^UTILITY($J,"IBSEL",DGSELNO)=IBIFN,^UTILITY($J,"IBSEL",$P(^DGCR(399,A,0),"^"))=IBIFN D HDR:DGSELNO=1,ONE,PAUSE:'(DGSELNO#IBPAUS)
	Q
	;
ONE	D GVAR^IBCBB W !
	S DGTAB="?0" I $D(DGSELNO) W ?3,DGSELNO S DGTAB="?8" ;write selection numbers here
	W @DGTAB,IBBNO,"  ",$S(IBCL=1:"Inpat. ",IBCL=3:"Outpt. ",IBCL=2:"HE Inpt",1:"HE Opt."),"  ",$S(IBWHO="p":"Patnt",IBWHO="i":"Insur",1:"Other"),"  "
	F I=IBEVDT,IBFDT,IBTDT W $E(I,4,5)_"/"_$E(I,6,7)_"/"_$E(I,2,3),"  "
	W $S(IBST=1:"Enterd",IBST=2:"Revwed",IBST=3:"Auth. ",IBST=4:"Printd",1:"Cancel"),"  "
	W IBTF," ",$S(IBTF=1:"Ad - Ds",IBTF=2:"Int FC ",IBTF=3:"Int CC ",IBTF=4:"Int LC ",IBTF=5:"Late Ch",IBTF=6:"Adjust ",1:"Replace")
	Q
	;
ONE1	; Display IB Actions.  Input: K, X
	N C,D,I,Y S D=$G(^IB(K,0))
	W !,$P($P(D,"^",11),"-",2),?8,$S($P($G(^IBE(350.1,+$P(D,"^",3),0)),"^")["OPT":"Outpt.",1:"Inpat."),"  Patnt  "
	F I=X,$P(D,"^",14),$P(D,"^",15) W $$DAT1^IBOUTL(I),"  "
	S C=$P(^DD(350,.05,0),"^",2),Y=$P(D,"^",5) D Y^DIQ W $E(Y,1,7),"  ",$E($$ACTNM^IBOUTL($P(D,"^",3)),1,18)
	Q
	;
HDR	S DGTAB=$S($D(DGSELNO):"!?8",1:"!") W @DGTAB,"Bill #  Classif  Payer  Event DT  From Dat  To Date   Status  Timeframe"
	S DGTAB=$S($D(DGSELNO):"!?8",1:"!") W @DGTAB,"------  -------  -----  --------  --------  --------  ------  ----------"
	Q
	;
HDR1	; Write header to dislay IB Actions.
	W !,"Bill #  Classf  Payer  Event DT  From Dat  To Date   Status   IB Action Type"
	W !,"------  ------  -----  --------  --------  --------  -------  --------------"
	Q
	;
PAUSE	I '$D(DGSELNO),$E(IOST,1,2)["C-" R !!,"Enter ""^"" to quit display, return to continue",IBX1:DTIME S IBQUIT=$S(IBX1["^":1,'$T:1,1:0) Q
ASK	I '$D(DGSELNO),DGSELNO<1 Q
	W !!,"CHOOSE 1" W:DGSELNO>1 "-",DGSELNO W " or ENTER BILL NUMBER: " R IBX:DTIME I IBX="^"!('$T) S IBQUIT=1 Q
	Q:IBX=""
	I $D(^UTILITY($J,"IBSEL",IBX)) S Y=^(IBX) I $D(^DGCR(399,Y,0)) S Y(0)=^(0) W "  ",$P(Y(0),"^") S IBIDS(.17)=$P(Y(0),"^",17),IBQUIT=1 Q
	;
HELPSEL	W !!,"Enter 1-",DGSELNO," to select that entry or enter the Bill Number" G ASK
	Q
	;
UTIL	S IBIFN1="",IBCNT=0 K ^UTILITY($J)
	F J=0:0 S IBIFN1=$O(^DGCR(399,"C",DFN,IBIFN1)) Q:IBIFN1=""  S IBCNT=IBCNT+1,IBEVDT=$P(^DGCR(399,IBIFN1,0),"^",3),^UTILITY($J,-IBEVDT,IBIFN1)=""
	Q
	;
UTIL1	; Get IB charges for a patient for a single event date.  Input: DFN, X
	N Y,Y1
	S Y=0 F  S Y=$O(^IB("AFDT",DFN,-X,Y)) Q:'Y  S Y1=0 F  S Y1=$O(^IB("AF",Y,Y1)) Q:'Y1  I $D(^IB(Y1,0)),$P(^(0),"^",8)'["ADMISSION" S IBCNT=IBCNT+1,^UTILITY($J,"IB",Y1)=""
	Q
	;
END	D END^IBCBB1
	K A,DGTAB,IBIFN1,IBPAUS,IBQUIT,IBX1,IBDT,IBDT1,IBCNT,^UTILITY($J)
	Q
