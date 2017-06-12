AG2A ; IHS/ASDS/EFG - ENTER & EDIT MANDATORY DATA ;   
 ;;7.1;PATIENT REGISTRATION;**2,8,11**;AUG 25, 2005;Build 1
 ;IHS/OIT/NKD AG*7.1*11 MU2 UNKNOWN SEX
 ;
 ;IF BENEFICIARY CONTAINS NON-INDIAN THEN
 ;GUARANTOR INFORMATION MUST BE ENTERED
 ;
DOB ;EP - Date of Birth.
 S AGOLD("DOB")=$P(^DPT(DFN,0),U,3)
 I $P(^AUPNPAT(DFN,0),U,23)]"" D
 . I $D(^AUTTSSN($P(^AUPNPAT(DFN,0),U,23),0)) D
 .. I "XV"[$P(^AUTTSSN($P(^AUPNPAT(DFN,0),U,23),0),U) D
 ... W !!,*7,"The NAME/SSN/DOB have been Verfied by the SSA do not change the DOB unless you are"
 ... W !,"certain that it is incorrect!"
 I $D(AG("PG")),AGOPT(12)="Y",'$D(^XUSEC("AGZMGR",DUZ)) D  Q
 . W !!,*7,"DOB must be edited by a supervisor."
 . H 3
 D S2
 S DR=.03
 D END
 I $P(^DPT(DFN,0),U,3)'=AGOLD("DOB") D
 . S DIE="^AUPNPAT("
 . S DA=DFN
 . S DR=".23///@"
 . D ^DIE
 K AGOLD("DOB")
 Q
SEX ;EP - Sex.
 S AGOLD("SEX")=$P(^DPT(DFN,0),U,2)
 I $P(^AUPNPAT(DFN,0),U,23)]"" D
 . I $D(^AUTTSSN($P(^AUPNPAT(DFN,0),U,23),0)) D
 .. I "XV"[$P(^AUTTSSN($P(^AUPNPAT(DFN,0),U,23),0),U) D
 ... W !!,*7,"The NAME/SSN/SEX have been Verfied by the SSA do not change the SEX unless you're"
 ... W !,"certain that it is incorrect!"
 D S2
 S DR=.02
 D END
 ;IHS/OIT/NKD AG*7.1*11 MU2 - CONFIRM CHANGE OF SEX TO UNKNOWN - START NEW CODE
 I AGOLD("SEX")'="U",$P(^DPT(DFN,0),U,2)="U" D
 . K DIR S DIR(0)="Y",DIR("B")="N"
 . S DIR("A",1)="You are attempting to change the Patient SEX to 'UNKNOWN'."
 . S DIR("A")="Please confirm this is correct (Y/N)"
 . D ^DIR K DIR
 . I Y=0 D
 . . W !,"Unconfirmed. Reverting Patient SEX to previous value."
 . . S DIE="^DPT("
 . . S DA=DFN
 . . S DR=".02////"_AGOLD("SEX")
 . . D ^DIE
 . . H 2
 ;IHS/OIT/NKD AG*7.1*11 END NEW CODE
 I $P(^DPT(DFN,0),U,2)'=AGOLD("SEX") D
 . S DIE="^AUPNPAT("
 . S DA=DFN
 . S DR=".23///@"
 . D ^DIE
 . ;IHS/OIT/NKD AG*7.1*11 MU2 - MODIFY ASSOCIATED ELIGIBLE SEX/GENDER FIELDS
 . D SEXELIG^AGUTL(DFN)
 K AGOLD("SEX")
 Q
TRIBE ;EP - Tribe.
 S DIC="^AUPNPAT("
 S DR=1108
 S DA=DFN
 K ^UTILITY("DIQ1",$J)
 S DIC("B")=$$GET1^DIQ(9000001,DFN,DR)
 S DIC="^AUTTTRI("
 S DIC(0)="AEFMQZ"
 S DIC("A")=$P(^DD(9000001,1108,0),U)_" : ",DIC("S")="I $P(^(0),U,4)'=""Y"""
 D ^DIC
 K DIC
 Q:$D(DUOUT)!(+Y<1)
 S DIE="^AUPNPAT("
 S DA=DFN
 S DR="1108////"_+Y
 D ^DIE
 I AGOPT(14)'="N" D TRBFLG,TRBMNR^AGBIC2:'$D(DUOUT)
 Q
TRBFLG ;EP - Enter Tribe Verified Flag.
 S DR=1119
 D S1,END
 Q
TQTM ;Tribal Blood Quantum.
 D S1
 S DR=1109
 D END
 Q
TRINUM ;Tribal Enrollment Number.
 D S1
 S DR=.07
 D END
 Q
IQTM ;EP - Indian Blood Quantum.
 D S1
 S DR=1110
 D END
 Q
BEN ;EP - Beneficiary Code.
BEN1 ;
 N DRTEMP
 S ALLFLDRQ=0  ;ASSUME PATIENT IS NATIVE AMERICAN. USED AS FLAG IN AG2
 W !
 S DIC="^AUTTBEN("
 S DIC(0)="QAZEM"
 S DIC("A")="Select CLASSIFICATION/BENEFICIARY: "                                     ;AG*7.1*8
 S DIC("B")=$S('$D(^AUPNPAT(DFN,11)):"",1:$P(^(11),U,11))
 S:DIC("B")="" DIC("B")="INDIAN/ALASKA NATIVE"
 S DIC("S")="I $P(^(0),U,3)'=""I"""
 D ^DIC
 S Y=+Y
 K DIC("S"),DIC("B")
 Q:Y<1
 D S1
 S DR="1111///"_$P(Y(0),U)
 S BENTEMP=$P(Y(0),U)
 D END
 ;IF BENEFICIARY CONTAINS NON-INDIAN THEN
 ;GUARANTOR INFORMATION MUST BE ENTERED
GUARREQ ;
 Q:BENTEMP[("NON-INDIAN SPOUSE")  ;IHS/SD/TPF 5/1/2006 AG*7.1*2 PAGE 11 ITEM 14
 ;ABOVE- DO NOT INCLUDE NON-INDIAN SPOUSE THEY ARE COVERED PER SANDRA
 I BENTEMP[("NON-INDIAN") D
 .S ALLFLDRQ=1  ;ALL FIELDS REQUIRED IN GUARANTOR PAGE FOR NON-INDIAN
 .Q:$D(^AUPNGUAR(DFN))  ;QUIT IF GUARANTOR INFO ALREADY ENTERED
 .S PARDFN=DFN
 .S PARDT=""
 .S PARFIL=""
 .S NEWENTRY=1
 .D EN^AGEDGUAR(PARDFN,PARFIL,PARDT,NEWENTRY,"",ALLFLDRQ)
 .K PARDFN,PARFIL,PARDT,NEWENTRY
 .I '$D(^AUPNGUAR(DFN)) W !,"GUARANTOR INFORMATION MANDATORY FOR NON-INDIAN!" H 2 G GUARREQ
 K BENTEMP
 Q
BENED ;EP - Classification / Beneficiary (string in AGED2).
 D S1
 S DR=1111
 D END
 Q
ELIG ;EP - Eligibility Status.
 D S1
 S DR=1112
 D END
 I $D(AG("SVELIG"))  D
 . I $P($G(^AUPNPAT(DFN,11)),U,12)'=AG("SVELIG")  D
 .. S MODREC=0
 .. F  S MODREC=$O(^AUPNPAT(DFN,34,MODREC)) Q:'MODREC  D
 ... S DA(1)=DFN
 ... S DIK="^AUPNPAT("_DA(1)_",34,"
 ... S DA=MODREC
 ... D ^DIK K DA,DA(1),DIK
 Q
S1 ;
 K DUOUT
 S DIE="^AUPNPAT("
 S DA=DFN
 W !
 Q
S2 ;
 K DUOUT
 S DIE="^DPT("
 S DA=DFN
 W !
 Q
END ;
 D ^DIE
 S:$D(Y) DUOUT=""
 K DIC
 Q
