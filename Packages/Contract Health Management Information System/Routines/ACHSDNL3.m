ACHSDNL3 ; IHS/ITSC/PMF - DENIAL LTR/FS (LTR2) (4/6) ;7/23/10  15:32
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**3,4,5,6,12,18,21**;JUNE 11, 2001;Build 37
 ;ACHS*3.1*3 prt alt ins, chg chart no display,fx opt prt, allow for a third sig
 ;ACHS*3.1*4 include effective dates on alt ins and fx left margin
 ;ACHS*3.1*5 12/06/2002 display of Medicare dt
 ;ACHS*3.1*6 3.24.03 IHS/SET/FCJ CHECK FOR PRT SUD AND AREA DIR, TEST PROV,ALT RES AND FOR TOT $ AMT TO PRT
 ;ACHS*3.1*18 6.11.10 IHS/SET/ABK Top, Lft Mar par BC name and phone no
 ;ACHS*3.1*18 9.31.10 IHS.OIT.FCJ MULT Chng FOR NEW DEN REA AND OPT, EDIT OPT is calling this rtn-ACHSDN4
BODY ;EP - Print body of Den let
 ;CHECK 'PRT DEN AMOUNT ON LETTERS?' PAR
 ;ACHS*3.1*6 3.27.03 IHS/SET/FCJ ADD COUNT TEST
 I ACHSCNT>0,$P($G(^ACHSDENR(DUZ(2),0)),U,6)="Y" S DA=ACHSA D AMT^ACHSDNA ;ACHS*3.1*6
 ;I $P($G(^ACHSDENR(DUZ(2),0)),U,6)="Y" S DA=ACHSA D AMT^ACHSDNA ;ACHS*3.1*6
 S ACHSNFAC=$P(^DIC(4,DUZ(2),0),U,1)     ;ACHS*3.1*18
A ;
 ;{ABK, 6/11/10} SET TOPM AND DIWL
 S T2=$G(^ACHSDENR(DUZ(2),0)),DIWL=$P(T2,U,9),TOPM=$P(T2,U,11)
 S:DIWL="" DIWL=5 S:TOPM="" TOPM=5
 ;{abk,6/15/10}S DIWL=5,DIWR=75,DIWF="W",ACHD=0,ACHDPRE=""
 S DIWR=75,DIWF="W",ACHD=0,ACHDPRE=""
 W !!,?DIWL-1,"Dear ",$S($G(ACHDALT)'="N":$G(ACHDNAMP),1:$G(ACHDALTN)),",",!!
 ;
MIDTXT ; --- Prt Mid Text of Den let
 ;{ABK, 6/11/10} SET TOPM AND DIWL FROM CHS DENIAL PAR
 S T2=$G(^ACHSDENR(DUZ(2),0)),DIWL=$P(T2,U,9),TOPM=$P(T2,U,11)
 S:DIWL="" DIWL=5 S:TOPM="" TOPM=5
 ;S DIWL=5  ;ACHS*3.1*18
 F  S ACHD=$O(^ACHSDENR(DUZ(2),2,ACHD)) Q:+ACHD=0  D  Q:$G(ACHSQUIT)
 .S X=$G(^ACHSDENR(DUZ(2),2,ACHD,0)) I X["ACHSFAC" S X=$P(X,"ACHSFAC",1)_ACHSNFAC_$P(X,"ACHSFAC",2)
 .D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 D ^DIWW,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 S DIWF="WI5C55"
 ;
PRIREAS ;PRIMARY DEN REA?
 S ACHDPREN=$G(^ACHSDEN(DUZ(2),"D",ACHSA,250))
 I ACHDPREN S ACHDPRE=$P($G(^ACHSDENS($P(ACHDPREN,U),0)),U)
 ;NO DEN REA AND NO OTHER DEN REA SKIP DOING DEN SECT
 I 'ACHDPREN,'$D(^ACHSDEN(DUZ(2),"D",ACHSA,300)) W ?DIWL+10,"(No denial reason on file.)",! G A5
 ;
PRITXT ;
 ;ACHS*3.1*4 4/12/02 pmf
 ;I ACHDPREN W !?DIWL-3,ACHDPRE F ACHD=0:0 S ACHD=$O(^ACHSDENS(+ACHDPREN,1,ACHD)) Q:'ACHD  S X=$G(^ACHSDENS(+ACHDPREN,1,ACHD,0)) D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)  ;  ACHS*3.1*4
 ;ACHS*3.1*18 IHS.OIT.FCJ SPLIT LINE INTO DO AND ADDED NXT LINE
 I $P(ACHDPREN,U,3) S ACHDFC=$P(^DIC(4,$P(ACHDPREN,U,3),0),U)
 I ACHDPREN W !?DIWL-1,ACHDPRE D
 .F ACHD=0:0 S ACHD=$O(^ACHSDENS(+ACHDPREN,1,ACHD)) Q:'ACHD  D
 ..S X=$G(^ACHSDENS(+ACHDPREN,1,ACHD,0))
 ..D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 ;
 Q:$G(ACHSQUIT)
 D ^DIWW,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 ;I ACHDPRE["Alternate Resource",($G(DFN)'="") D  ; ACHS*3.1*3
 ;.D PVTINS^ACHSRPI1(DFN,"","",DUZ(2),ACHSA,1)  ; ACHS*3.1*3
 ;.D SUPINS^ACHSRPI1(DFN,"","",DUZ(2),ACHSA,1)  ; ACHS*3.1*3
 S ACHSX=$G(^ACHSDENR(DUZ(2),0)),ACHSDBCN=$P(ACHSX,U,12),ACHSDBCP=$P(ACHSX,U,13) ;ACHS*3.1*18
 ;I ACHDPRE["Alternate Resource" D ALTINS  ; ACHS*3.1*3
 ;
 G:'$P(ACHDPREN,U,2) PRICMT
 ;W ! ;ACHS*3.1*18
 ;1/29/02  pmf  fix option printing bug
 ;I $D(^ACHSDENS(+ACHDPREN,20,$P(ACHDPREN,U,2),1,0)) D  Q:$G(ACHSQUIT)  ; ACHS*3.1*3
 I $D(^ACHSDENS(+ACHDPREN,20,$P(ACHDPREN,U,2),1,1,0)) D  Q:$G(ACHSQUIT)  ; ACHS*3.1*3
 .;S ACHD=0  ; ACHS*3.1*3
 .S ACHD=""  ; ACHS*3.1*3
 .;F  S ACHD=$O(^ACHSDENS(+ACHDPREN,20,$P(ACHDPREN,U,2),1,ACHD)) Q:'ACHD  S X=$G(^ACHSDENS(+ACHDPREN,20,$P(ACHDPREN,U,2),1,ACHD,0)) D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)  ; ACHS*3.1*3
 .;ACHS*3.1*18 ACHS*3.1*18 MULT CHANGES SPLIT F LOOP ADDED LINES, ETC
 .F  S ACHD=$O(^ACHSDENS(+ACHDPREN,20,$P(ACHDPREN,U,2),1,ACHD)) Q:ACHD=""   D
 ..S X=$G(^ACHSDENS(+ACHDPREN,20,$P(ACHDPREN,U,2),1,ACHD,0))
 ..I X["ACHSDBCN" S X=$P(X,"ACHSDBCN",1)_ACHSDBCN_$P(X,"ACHSDBCN",2)             ;ACHS*3.1*18
 ..I X["ACHSDBCP" S X=$P(X,"ACHSDBCP",1)_ACHSDBCP_$P(X,"ACHSDBCP",2)                       ;ACHS*3.1*18
 ..I X["ACHDALT" S X=$P(X,"ACHDALT",1) D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)  D ALTINS Q     ;ACHS*3.1*18
 ..I X["ACHDTY" S X1=$P(X,"ACHDTY",1),X2=$P(X,"ACHDTY",2) D ALTOPT S X=X1_ACHDTY_X2       ;ACHS*3.1*18
 ..I X["ACHSNFAC" S X=$P(X,"ACHSNFAC",1)_ACHSNFAC_$P(X,"ACHSNFAC",2)             ;ACHS*3.1*18
 ..I X["ACHDFC" S X=$P(X,"ACHDFC",1)_ACHDFC_$P(X,"ACHDFC",2)                     ;ACHS*3.1*18
 ..D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)  ; ACHS*3.1*3
 . D ^DIWW,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 Q:$G(ACHSQUIT)
 ;
PRICMT ;
 I $D(^ACHSDEN(DUZ(2),"D",ACHSA,255,0)) D  Q:$G(ACHSQUIT)
 . W !
 . S X="Primary Denial Comments:"
 . D ^DIWP,^DIWW
 . S ACHD=0
 . F  S ACHD=$O(^ACHSDEN(DUZ(2),"D",ACHSA,255,ACHD)) Q:'ACHD  D  Q:$G(ACHSQUIT)
 ..S X=$G(^ACHSDEN(DUZ(2),"D",ACHSA,255,ACHD,0))
 ..D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 .Q:$G(ACHSQUIT)  D ^DIWW
 Q:$G(ACHSQUIT)
 ;
OTHTXT ;OTH DEN REA
 S ACHDI=0
 ;ACHS*3.1*18 MULT CHANGES
 ;D  Q:$G(ACHSQUIT)  G A5
 ;.F  S ACHDI=$O(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI)) Q:+ACHDI=0  I $D(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,0)) S A=0,DA=$P($G(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,0)),U) D PG:$Y>ACHSBM Q:$G(ACHSQUIT)  W !?DIWL-1,$P($G(^ACHSDENS(DA,0)),U) S A=0 D
 F  S ACHDI=$O(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI)) Q:+ACHDI=0  I $D(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,0)) D
 .S A=0,DA=$P($G(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,0)),U) D PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 .S ACHDO=^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,0)
 .;WRITE OTH REA
 .W !?DIWL-1,$P($G(^ACHSDENS(DA,0)),U) S A=0 D
 ..;WRITE THE TEXT
 ..F  S A=$O(^ACHSDENS(DA,1,A)) Q:+A=0  S X=$G(^ACHSDENS(DA,1,A,0)) D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 ..D ^DIWW,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 ..;WRITE OPT
 ..S ACHDOPT=$P(ACHDO,U,2),ACHDFC=$P(ACHDO,U,3)
 ..I ACHDFC>0 S ACHDFC=$P(^DIC(4,ACHDFC,0),U)
 ..I ACHDOPT S A=0 F  S A=$O(^ACHSDENS(DA,20,ACHDOPT,1,A)) Q:A'?1N.N  D
 ...S X=$G(^ACHSDENS(DA,20,ACHDOPT,1,A,0))
 ...I X["ACHSDBCN" S X=$P(X,"ACHSDBCN",1)_ACHSDBCN_$P(X,"ACHSDBCN",2)                       ;ACHS*3.1*18
 ...I X["ACHSDBCP" S X=$P(X,"ACHSDBCP",1)_ACHSDBCP_$P(X,"ACHSDBCP",2)                       ;ACHS*3.1*18
 ...I X["ACHDALT" S X=$P(X,"ACHDALT",1) D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)  D ALTINS Q     ;ACHS*3.1*18
 ...I X["ACHDTY" S X1=$P(X,"ACHDTY",1),X2=$P(X,"ACHDTY",2) D ALTOPT2 S X=X1_ACHDTY_X2       ;ACHS*3.1*18
 ...I X["ACHDFC" S X=$P(X,"ACHDFC",1)_ACHDFC_$P(X,"ACHDFC",2)                               ;ACHS*3.1*18
 ...D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)  ; ACHS*3.1*3 
 ..D ^DIWW,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 ..D OTHCMT
 G A5
 ;
OTHCMT ;
 Q:+ACHDI=0
 I $D(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,1,0)) D
 . W !
 . S X="Other Denial Comments:"
 . D ^DIWP,^DIWW
 . S ACHDC=0
 . F  S ACHDC=$O(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,1,ACHDC)) Q:'ACHDC  S X=$G(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,1,ACHDC,0)) D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 . D ^DIWW,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 Q
 ;
A5 ;
 D PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 S ACHD=0,DIWF="W",DIWR=75
 ;
BOTTXT ; --Prt Bot Text of Den let
 W !!
 ;{ABK, 6/11/10} SET TOPM AND DIWL
 S T2=$G(^ACHSDENR(DUZ(2),0)),DIWL=$P(T2,U,9),TOPM=$P(T2,U,11)
 S:DIWL="" DIWL=5 S:TOPM="" TOPM=5
 ;{abk, 6/15/10}S DIWL=5,DIWR=75,DIWF="W"
 S DIWR=75,DIWF="W"
 F ACHD=0:0 S ACHD=$O(^ACHSDENR(DUZ(2),3,ACHD)) Q:+ACHD=0  S X=$G(^ACHSDENR(DUZ(2),3,ACHD,0)) D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 D ^DIWW
 D PG:$Y>ACHSBM
 Q:$G(ACHSQUIT)
 ;
 ;PRT SUD info
 ;ITSC/SET/JVK ACHS*3.1*12 1-27-05 ADD NXT 2 LINES
 I +$P($G(^AUTTLOC(DUZ(2),0)),U,10)'=353610,+$P($G(^AUTTLOC(DUZ(2),0)),U,10)'=353601 D SUD(20)
 ;D SUD(20)
 ;
CLOSTXT ; --- Prt closing text
 W !!
 F ACHD=0:0 S ACHD=$O(^ACHSDENR(DUZ(2),9,ACHD)) Q:+ACHD=0  S X=$G(^ACHSDENR(DUZ(2),9,ACHD,0)) D ^DIWP,PG:(($Y+7)>ACHSBM) Q:$G(ACHSQUIT)
 D ^DIWW
 ;
 ;
AREADIR ; --- Area Director info
 G:$P($G(^ACHSDENR(DUZ(2),200)),U)="" SIGTXT ;ACHS*3.1*6
 W !!?20,$P($G(^ACHSDENR(DUZ(2),200)),U)
 W !?20,$P($G(^ACHSDENR(DUZ(2),200)),U,2)
 ;5/18/01 pmf  added next 3 lines
 S ACHSYAYA=$P($G(^ACHSDENR(DUZ(2),200)),U,8) I ACHSYAYA'="" W !,?20,ACHSYAYA
 S ACHSYAYA=$P($G(^ACHSDENR(DUZ(2),200)),U,9) I ACHSYAYA'="" W !,?20,ACHSYAYA
 K ACHSYAYA
 ;
 W !?20,$P($G(^ACHSDENR(DUZ(2),200)),U,3),", "
 W $P($G(^DIC(5,$P($G(^ACHSDENR(DUZ(2),200)),U,4),0)),U,2),"  "
 W $P($G(^ACHSDENR(DUZ(2),200)),U,5)
 W !?20,$P($G(^ACHSDENR(DUZ(2),200)),U,6),!
 ;
 ;
SIGTXT ;
 ; ---  Print sig text
 D PG:$Y>(ACHSBM-10) Q:$G(ACHSQUIT)
 S DIWF="NW"
 W !!  ; ACHS*3.1*3
 F ACHD=0:0 S ACHD=$O(^ACHSDENR(DUZ(2),7,ACHD)) Q:+ACHD=0  S X=$G(^ACHSDENR(DUZ(2),7,ACHD,0)) D ^DIWP,PG:($Y>ACHSBM) Q:$G(ACHSQUIT)
 D ^DIWW
 D PG:$Y>ACHSBM
 Q:$G(ACHSQUIT)
 W !!  ; ACHS*3.1*3
 ;
 ;020102  pmf add a new sig person ;PRINT SUD INFO  ; ACHS*3.1*3
 I $D(^ACHSDENR(DUZ(2),300)) D  I 1
 . N DATA,ZZ F ZZ=300:1:305 S DATA=$G(^ACHSDENR(DUZ(2),ZZ)) I DATA'="" W !,?4,DATA
 . S DATA=$G(^ACHSDENR(DUZ(2),306)) I DATA'="" W $P($G(^DIC(5,DATA,0)),U,2)
 . S DATA=$G(^ACHSDENR(DUZ(2),307)) I DATA'="" W "  ",DATA
 . S DATA=$G(^ACHSDENR(DUZ(2),308)) I DATA'="" W !,?4,DATA
 E  D SUD(4)
 ;4/5/02   pmf  ACHS*3.1*4
 ;I '$D(ACHDONE) D END Q  ; ACHS*3.1*4
 I ACHDONE D END Q  ; ACHS*3.1*4
 ;
 ;
OFC ; ---  Print office info at bottom
 ;11/28/01  pmf  changes to include the Pawnee BP #
 ;W !!!,"Denial Number: ",$$DN^ACHS(0,1),!,"Chart Number: "  ; ACHS*3.1*3
 ;I $G(DFN)'="" D  ; ACHS*3.1*3
 ;.W:$D(^AUPNPAT(DFN,41,DUZ(2),0)) $P($G(^AUPNPAT(DFN,41,DUZ(2),0)),U,2)_" "_$P($G(^DIC(4,DUZ(2),0)),U)  ; ACHS*3.1*3
 ;.W:'$D(^AUPNPAT(DFN,41,DUZ(2),0)) "(No Chart At This Facility)"  ; ACHS*3.1*3
 ;E  W $P($G(^ACHSDEN(DUZ(2),"D",ACHSA,10)),U,6) ;'CHART # (OTHER FACILITY)  ; ACHS*3.1*3
 ;.Q  ; ACHS*3.1*3
 W !!!,"Denial Number: ",$$DN^ACHS(0,1)  ; ACHS*3.1*3
 D SETCHT^ACHSDNL2    ; ACHS*3.1*3
 W !,ACHDCH  ; ACHS*3.1*3
 ;
 I $$DN^ACHS(850,1)'="Y" W !,"No Receipt Information Available",! G CMT1
 ;
 W !,"Method of receipt: "
 S X=$$DN^ACHS(850,2),Y=$P($G(^DD(9002071.01,851,0)),U,3)
 F %=1:1 D  Q:'%
 . I $P(Y,";",%)="" W "<unknown>" S %=0 Q
 . I $P($P(Y,";",%),":")=X W $P($P(Y,";",%),":",2) S %=0 Q
 . Q
 W !,"Date of receipt: ",$$FMTE^XLFDT($$DN^ACHS(850,3))
 W !,"Received by: ",$$DN^ACHS(850,4)
CMT1 ;
 I '$D(^ACHSDEN(DUZ(2),"D",ACHSA,900)) D END Q
 W !!,"CHS Office Comments: ",!
 S ACHD=0
 F  S ACHD=$O(^ACHSDEN(DUZ(2),"D",ACHSA,900,ACHD)) Q:'ACHD  S X=$G(^ACHSDEN(DUZ(2),"D",ACHSA,900,ACHD,0)) D ^DIWP
 D ^DIWW
END ;
 Q:$G(ACHSQUIT)
 W !!!
 I $$DN^ACHS(0,8)="Y" F I=1:1:4 W "DOCUMENT CANCELLED *"
 W !!
 ;
 I 'ACHDONE F I=1:1:4 W "*** OFFICE COPY *** "  ; ACHS*3.1*4
 ;
 D RTRN^ACHS
 W @IOF
 K ACHDALT,ACHDI,ACHDPRE,ACHDPREN,ACHDPROV,DA,DTOUT,DUOUT,STATEPRT,SUDSTUFF,ACHSCNT,ACHDO,ACHDOPT,ACHDFC,ACHSNFAC  ;ACHS*3.1*4,6,18
 Q
 ;
PG ;Heading other than first page.
 Q:$G(ACHSQUIT)
 D RTRN^ACHS
 S ACHSPG=ACHSPG+1
 W @IOF,!!!?DIWL-1,ACHDNAMP,?76-$L($$DN^ACHS(0,1)),$$DN^ACHS(0,1),!?70,"Page ",ACHSPG,!!
 Q
SUD(OFFSET) ;
 Q:$P($G(^ACHSDENR(DUZ(2),100)),U)=""  ;ACHS*3.1*6 NEW LINE
 S SUDSTUFF=$G(^ACHSDENR(DUZ(2),100))
 W !?OFFSET,$P(SUDSTUFF,U)
 W !?OFFSET,$P(SUDSTUFF,U,2)
 I $P(SUDSTUFF,U,8)'="" W !?OFFSET,$P(SUDSTUFF,U,8)
 I $P(SUDSTUFF,U,9)'="" W !?OFFSET,$P(SUDSTUFF,U,9)
 ;
 W !?OFFSET,$P(SUDSTUFF,U,3)
 W ", "
 S STATEPTR=$P($G(^ACHSDENR(DUZ(2),100)),U,4)
 W:STATEPTR'="" $P($G(^DIC(5,STATEPTR,0)),U,2),"  ",$P($G(^ACHSDENR(DUZ(2),100)),U,5),!?OFFSET,$P($G(^ACHSDENR(DUZ(2),100)),U,6)
 D PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 Q
 ;
ALTINS ;
 ;ACHS*3.1*3  2/11/02  pmf  this entire module added
 I '$D(^ACHSDEN(DUZ(2),"D",ACHSA,320)) Q
 I $G(DFN)="" Q
 W !
 N DAT,DAT1,DAT2,DAT3,SS,TAG  ;  ACHS*3.1*4
 W !,?DIWL+4,"INSURANCE",?31,"ID NO.",?43,"EFF. DATE",?55,"TRM. DATE",!,?DIWL+4 F DAT=1:1 W "-" I $X>64 Q  ; ACHS*3.1*4
 S SS=0  F  S SS=$O(^ACHSDEN(DUZ(2),"D",ACHSA,320,SS)) Q:SS=""  D  ; ACHS*3.1*4
 . S DAT2=$G(^ACHSDEN(DUZ(2),"D",ACHSA,320,SS,0)),DAT=$P(DAT2,U,2)
 . S TAG="PINS"_DAT I $L(TAG)=5 D @TAG
 W !
 Q
 ;
PINSM ;
 ;ACHS*3.1*3 new module;ACHS*3.1*4 overhauled-print medicare ins
 W !,?DIWL+4,"Medicare"
 S DAT1=$G(^AUPNMCR(DFN,0))
 W ?30," ",$P(DAT1,U,3) I $P(DAT1,U,4) W $G(^AUTTMCS($P(DAT1,U,4),0),U)  ;ACHS*3.1*21 ADDED TEST FOR PRINTING SUF
 S DAT2=$P(DAT2,U,3) I DAT2="" Q
 S DAT2=$G(^AUPNMCR(DFN,11,DAT2,0))
 W ?42," " S DAT=$P(DAT2,U,1) D PDATE  ;ACHS*3.1*5
 W ?54," " S DAT=$P(DAT2,U,2) D PDATE  ;ACHS*3.1*5
 D PADD  ;ACHS*3.1*18
 Q
 ;
PINSC ;
 ;ACHS*3.1*3 new module;ACHS*3.1*4 overhauled print MCD ins
 S DAT3=$P(DAT2,U,3)
 I DAT3="" Q
 W !,?DIWL+4,"Medicaid"
 S DAT1=$G(^AUPNMCD(DAT3,0))
 W ?30," ",$P(DAT1,U,3)
 S DAT2=$P(DAT2,U,4)
 I DAT2="" Q
 S DAT2=$G(^AUPNMCD(DAT3,11,DAT2,0))
 W ?42," " S DAT=$P(DAT2,U,1) D PDATE
 W ?54," " S DAT=$P(DAT2,U,2) D PDATE
 D PADD  ;ACHS*3.1*18
 Q
 ;
PINSR ;
 ;ACHS*3.1*3 new module;ACHS*3.1*4 overhauled print RR ins
 S DAT="RR retire  "_$P($G(^AUPNRRE(DFN,21)),U,1),DAT1=^AUPNRRE(DFN,0)
 W !,?DIWL+4,$E(DAT,1,21)
 W ?30," ",$P($G(DAT1),U,4)
 S DAT2=$P(DAT2,U,3)
 I DAT2="" Q
 S DAT2=$G(^AUPNRRE(DFN,11,DAT2,0))
 W ?42," " S DAT=$P(DAT2,U,1) D PDATE
 W ?54," " S DAT=$P(DAT2,U,2) D PDATE
 D PADD  ;ACHS*3.1*18
 Q
 ;
PINSP ;
 ;ACHS*3.1*3 new module;ACHS*3.1*4 overhauled print private ins
 S DAT=$P(DAT2,U,3),DAT3=$G(^AUPNPRVT(DFN,11,DAT,0))
 S DAT=$P(DAT3,U,1) I DAT'="" S DAT=$P($G(^AUTNINS(DAT,0)),U) I DAT="" S DAT=" --- "
 W !,?DIWL+4,$E(DAT,1,21),?30," ",$P(DAT2,U,2)
 W ?42," " S DAT=$P(DAT3,U,6) D PDATE
 W ?54," " S DAT=$P(DAT3,U,7) D PDATE
 Q:'$P(DAT3,U)         ;ACHS*3.1*18
 S DATADD=$G(^AUTNINS($P(DAT3,U),0),0)      ;ACHS*3.1*18
 W !?DIWL+4,$P(DATADD,U,2)," ",$P(DATADD,U,3),", " I $P(DATADD,U,4) W $P(^DIC(5,$P(DATADD,U,4),0),U,2)    ;ACHS*3.1*18
 W " ",$P(DATADD,U,5)   ;ACHS*3.1*18 
 Q
 ;
PDATE ;
 ;ACHS*3.1*4 new module
 I 'DAT Q
 W $E(DAT,4,5),"/",$E(DAT,6,7),"/",($E(DAT,1,3)+1700)
 Q
PADD ;PRINT INS ADDRESS;ACHS*3.1*18-NEW
 Q:'$P(DAT1,U,10)
 S DATADD=$G(^AUTNINS($P(DAT1,U,10),0),0)  ;ACHS*3.1*21 CHANGED 2 TO 10
 W !?DIWL+4,$P(DATADD,U,2)," ",$P(DATADD,U,3),", " I $P(DATADD,U,4) W $P(^DIC(5,$P(DATADD,U,4),0),U,2)
 W " ",$P(DATADD,U,5)
 Q
ALTOPT ;OPT FOR PRI REASON;ACHS*3.1*18 NEW MODULE
 I '$D(^ACHSDEN(DUZ(2),"D",ACHSA,256)) Q
 S T1="",ACHDTY="",I=0,CT=0,CT1=0
 F  S I=$O(^ACHSDEN(DUZ(2),"D",ACHSA,256,I)) Q:I'?1N.N  S CT=CT+1
 S I=0 F  S I=$O(^ACHSDEN(DUZ(2),"D",ACHSA,256,I)) Q:I'?1N.N  D
 .S CT1=CT1+1
 .S T=$P(^ACHSDEN(DUZ(2),"D",ACHSA,256,I,0),U)
 .I CT>1,CT1>1 S T1=$S(CT1<CT:", ",1:" and ")
 .S ACHDTY=ACHDTY_T1_^ACHSDENS(+ACHDPREN,30,T,0)
 Q
ALTOPT2 ;OPT FOR OTHER REASON;ACHS*3.1*18 NEW MODULE
 I '$D(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,4)) Q
 S T1="",ACHDTY="",I=0,CT=0,CT1=0
 F  S I=$O(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,4,I)) Q:I'?1N.N  S CT=CT+1
 S I=0 F  S I=$O(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,4,I)) Q:I'?1N.N  D
 .S CT1=CT1+1
 .S T=$P(^ACHSDEN(DUZ(2),"D",ACHSA,300,ACHDI,4,I,0),U)
 .I CT>1,CT1>1 S T1=$S(CT1<CT:", ",1:" and ")
 .S ACHDTY=ACHDTY_T1_^ACHSDENS(DA,30,T,0)
 Q
