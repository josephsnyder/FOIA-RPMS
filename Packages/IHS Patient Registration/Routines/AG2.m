AG2 ; IHS/ASDS/EFG - ELIGIBILITY AND TRIBAL DATA ; 
 ;;7.1;PATIENT REGISTRATION;**2**;JAN 31, 2007
L1 D S1,^AG1 G K^AG0:$D(DFOUT)!$D(DTOUT),UP:$D(DUOUT)
 I $D(AGDOG) G:'$D(AG("TEMP CHART")) K^AG0
 I $D(AG("TEMP CHART")) D S1,DOB^AG2A,S1,SEX^AG2A Q
L5 D S1,BEN^AG2A
 ;AFTER RETURNING FROM BEN^AG2A IF THE BENEFICIARY NAME CONTAINED
 ;"NON-INDIAN" THEN THE GUARANTOR PAGE MUST BE FILLED OUT. CERTAIN
 ;FIELDS ARE REQUIRED PER SPECS. ON RETURN HERE THE VARIABLE ALLFLDRQ
 ;WILL BE TRUE
 G L1:$D(DUOUT),K^AG0:$D(DFOUT)!$D(DTOUT)
 I $D(X),X]"",$D(^AUTTBEN(X,0)) S X=$P(^(0),U,2)
 W !!!
 G L5:X=""&('$G(ALLFLDRQ))  ;ALLFLDRQ=1 SIGNIFIES NON-INDIAN
 S DIE="^AUPNPAT(",DA=DFN
TRIB D S1,TRIBE^AG2A G L5:$D(DUOUT),K^AG0:$D(DFOUT)!$D(DTOUT),IQTM:'$D(^AUPNPAT(DFN,11)),IQTM:$P(^(11),U,8)="" ;-----
 I $D(^AUPNPAT(DFN,11)),$P(^(11),U,8)'["" W *7,!,"<Tribe Required>" G TRIB ;-----
 I $D(^AUPNPAT(DFN,11)),$P(^(11),U,8)]"",($P(^AUTTTRI($P(^AUPNPAT(DFN,11),U,8),0),U,4)="Y") W !,"That TRIBE not acceptable." G L5
 S AG("TRINUM")=+$P(^AUTTTRI($P(^AUPNPAT(DFN,11),U,8),0),U,2) F AGXXX=0,999,970 I AG("TRINUM")=AGXXX K AGXXX,AG("TRINUM") S DR="1109////NONE;1110////NONE",DA=DFN D ^DIE G COM ;-----
 K AGXXX,AG("TRINUM")
TRINUM I AGOPT(2)="Y" D S1,TRINUM^AGOPT2 G TRIB:$D(DUOUT) I 1
 E  G TRIB:$D(DUOUT)
IQTM D S1,IQTM^AG2A
 G TRIB:$D(DUOUT)&($P(^AUPNPAT(DFN,11),U,8)=""),TRINUM:$D(DUOUT),K^AG0:$D(DFOUT)!$D(DTOUT)
 I X="NONE"&('$G(ALLFLDRQ)) W *7,!!?5,"ERROR: Inconsistancy, Native American with Blood Quantity of NONE?" G L5
TQTM I AGOPT(1)="Y" D S1,TQTM^AGOPT2 G IQTM:$D(DUOUT)
 G:$D(DUOUT) IQTM
 I X="NONE"&('$G(ALLFLDRQ)) W *7,!!?5,"ERROR: Inconsistancy, Tribal Member with Blood Quantity of NONE?" G TRIB
OTHRTR I AGOPT(8)="Y" D S1,OTHRTR^AGOPT2 G TQTM:$D(DUOUT) I 1
 E  G TQTM:$D(DUOUT)
COM D S1,^AG2B I $D(DUOUT),$D(^AUPNPAT(DFN,11)),$P(^(11),U,11)]"",$P(^AUTTBEN($P(^(11),U,11),0),U,2)'="01" G L5
 G OTHRTR:$D(DUOUT)!$D(DTOUT),K^AG0:$D(DFOUT)
ELIG D S1,ELIG^AG2A
 G COM:$D(DUOUT),K^AG0:$D(DFOUT)!$D(DTOUT)
 I X="I",$D(^AUPNPAT(DFN,11)),$P(^(11),U,11)]"",$P(^AUTTBEN($P(^(11),U,11),0),U,2)="01" W *7,!!?5,"ERROR: Inconsistancy, Native American with Status of INELIGIBLE?" G L5
 ;S AGWM=1 D ^AGELCHK I $D(AG("ER",9)) K AG("ER"),AGWM G L5
 ;IF NOT A NON BEN THEN DO THE QUANTUM CHECKS. SEE E-MAIL 6/5/2006 SUBJECT BUG WHEN ENTERING NON-BEN
 I '$G(ALLFLDRQ) S AGWM=1 D ^AGELCHK I $D(AG("ER",9)) K AG("ER"),AGWM G L5
 K AG("ER"),AGWM
END K AG
 G ^AG3
S1 K DFOUT,DTOUT,DUOUT,DLOUT,DQOUT Q
UP S AG("EDIT")="",AG("NAME")=$P(^DPT(DFN,0),U) W !!,*7,*7,"Deleting Patient ",AG("NAME")," ...." D Z1^AGKPAT,DFN^AGKPAT G L1^AG0
