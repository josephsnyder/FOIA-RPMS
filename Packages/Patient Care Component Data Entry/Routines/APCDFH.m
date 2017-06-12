APCDFH ; IHS/CMI/LAB - LIST MANAGER API'S FOR FAMILY HISTORY AND API FOR REP FACTORS 
 ;;2.0;IHS PCC SUITE;**2,5,7,10,11,16**;MAY 14, 2009;Build 9
 ;
MAIN ;EP - main routine driver
 D ASK
 Q:'$G(APCDPAT)
 D REFRESH(APCDPAT)
 Q
 ;
REFRESH(PAT) ;
 D TERM^VALM0
 D CLEAR^VALM1
 S DFN=PAT
 Q:'$D(^AUPNPAT(PAT))
 Q:'$D(^DPT(PAT))
 S Y=PAT
 D ^AUPNPAT
 D LM
 Q
 ;
EN(P,D) ;PEP - CALLED FROM OTHER MODULES
 I '$G(P) Q
 I '$D(^DPT(P)) Q
 D EN^XBNEW("EN1^APCDFH","P;D;VALM*")
 Q
EN1 ;
 S (APCDF,APCDPAT)=P
 S APCDDATE=$P($G(D),".")
 D REFRESH(P)
 Q
LM ;
 S VALMCC=1
 D EN^VALM("APCD FAMILY HISTORY"),CLEAR^VALM1
 Q
 ;
SET ;
 S APCDLINE=APCDLINE+1,APCDFHA(APCDLINE,0)=APCDX,APCDFHA("IDX",APCDLINE,APCDRCNT)=APCDIEN_U_R
 Q
 ;
GETPAT(PAT) ;
 K APCDFHA,APCDFHR,APCDTFH
 S (APCDCNT,APCDRCNT,APCDLINE)=0
 I '$O(^AUPNFH("AC",PAT,0)),'$O(^AUPNFHR("AA",PAT,0)) D  Q
 . S APCDFHA(1,0)="No Family History currently on file"
 . S APCDRCNT=0
 S APCDIEN=0 F  S APCDIEN=$O(^AUPNFH("AC",PAT,APCDIEN)) Q:'APCDIEN  D
 .Q:'$D(^AUPNFH(APCDIEN,0))
 .S R=$P(^AUPNFH(APCDIEN,0),U,9),O=""
 .I R="" S R="Z",S=$$VAL^XBDIQ1(9000014,APCDIEN,.07),Z=S_" ",O=8 D  G GETPAT1
 ..I S="" S S="UNKNOWN",Z="UNKNOWN "
 .I R]"" S S=$$VAL^XBDIQ1(9000014.1,R,.01),Z=S_" "_$P(^AUPNFHR(R,0),U,3) D
 ..S O=$P(^AUPNFHR(R,0),U) I O S O=$P($G(^AUTTRLSH(O,21)),U,3)
 ..I 'O S O=8
GETPAT1 .S APCDTFH(O,S,Z,R,(9999999-$P(^AUPNFH(APCDIEN,0),U,3)),APCDIEN)=""
 S X=0 F  S X=$O(^AUPNFHR("AA",PAT,X)) Q:X'=+X  S Y=0 F  S Y=$O(^AUPNFHR("AA",PAT,X,Y)) Q:Y'=+Y  D
 .I '$D(^AUPNFH("AE",Y)) D
 ..S R=Y
 ..S S=$$VAL^XBDIQ1(9000014.1,R,.01),Z=S_" "_$P(^AUPNFHR(R,0),U,3)
 ..S O=$P(^AUPNFHR(R,0),U) I O S O=$P($G(^AUTTRLSH(O,21)),U,3)
 ..I 'O S O=8
 ..S APCDTFH(O,S,Z,R,(9999999-$P(^AUPNFHR(R,0),U,9)),0)=""
 S O=0 F  S O=$O(APCDTFH(O)) Q:O'=+O  D
 .S S="" F  S S=$O(APCDTFH(O,S)) Q:S=""  D
 ..S Z="" F  S Z=$O(APCDTFH(O,S,Z)) Q:Z=""  D
 ...S R="",C=0 F  S R=$O(APCDTFH(O,S,Z,R)) Q:R=""  D
 ....S D="" F  S D=$O(APCDTFH(O,S,Z,R,D)) Q:D=""  D
 .....S APCDIEN="" F  S APCDIEN=$O(APCDTFH(O,S,Z,R,D,APCDIEN)) Q:APCDIEN=""  D FH
 Q
 ;
STAT(I,R) ;
 I R Q $$VAL^XBDIQ1(9000014.1,R,.04)
 Q $$VAL^XBDIQ1(9000014,I,.06)
 ;
FH ;-- 
 S APCDX="",APCDRCNT=APCDRCNT+1
 S APCDLDM=$$LDM(APCDIEN) I APCDLDM="",R S APCDLDM=$P(^AUPNFHR(R,0),U,9)
 ;
 S APCDX=APCDRCNT_")",$E(APCDX,5)=$$FMTE^XLFDT(APCDLDM)_"  Relation: "_Z  ;$$VAL^XBDIQ1(9000014.1,R,.04)
 D SET
 S APCDX="",$E(APCDX,5)="Status: "_$$STAT(APCDIEN,R) D SET
 I R'=+R G FH1
 I R,$P(^AUPNFHR(R,0),U,5)]""!($P(^AUPNFHR(R,0),U,6)]"") D
 .S APCDX="",$E(APCDX,5)="Age at Death: "_$$VAL^XBDIQ1(9000014.1,R,.05)_"  Cause of Death: "_$P(^AUPNFHR(R,0),U,6)
 .D SET
 I R,$P(^AUPNFHR(R,0),U,7)]""!($P(^AUPNFHR(R,0),U,8)]"") D
 .S APCDX="",$E(APCDX,5)="Multiple Birth: "_$$VAL^XBDIQ1(9000014.1,R,.07)_$S($P(^AUPNFHR(R,0),U,7)="Y":"  Multiple Birth Type: "_$$VAL^XBDIQ1(9000014.1,R,.08),1:"")
 .D SET
FH1 S APCDX="",$E(APCDX,5)="Dx: "_$$VAL^XBDIQ1(9000014,APCDIEN,.01)_"  "_$$GET1^DIQ(9000014,APCDIEN,.04)
 D SET
 S APCDX="",$E(APCDX,5)="SNOMED: "_$$VALI^XBDIQ1(9000014,APCDIEN,.13)
 D SET
 S APCDX="",$E(APCDX,5)="Age at Onset: "_$$VAL^XBDIQ1(9000014,APCDIEN,.05)
 D SET
 I APCDIEN,$P(^AUPNFH(APCDIEN,0),U,8)]"" S APCDX="",$E(APCDX,5)="Provider who Documented: "_$$VAL^XBDIQ1(9000014,APCDIEN,.08) D SET
 Q
LDM(I) ;
 I $G(I)="" Q ""
 I I=0 Q ""
 I '$D(^AUPNFH(I,0)) Q ""
 NEW J,D,E
 S D=""
 S J=$P(^AUPNFH(I,0),U,9) I J S D=$P($G(^AUPNFHR(J,0)),U,9) I D="" S D=$P($G(^AUPNFHR(J,0)),U,9)
 S E=$P(^AUPNFH(I,0),U,12) I E>D S D=E
 S E=$P(^AUPNFH(I,0),U,3) I E>D S D=E
 Q D
 ;
HDR ;EP
 K VALMHDR
 S VALMHDR(1)="Name: "_$E($P(^DPT(AUPNPAT,0),U),1,30)
 S VALMHDR(1)=VALMHDR(1)_"  DOB: "_$$FTIME^VALM1(AUPNDOB)_"  Sex: "
 S VALMHDR(1)=VALMHDR(1)_$P(^DPT(AUPNPAT,0),U,2)_"  HRN: "
 S VALMHDR(1)=VALMHDR(1)_$S($D(^AUPNPAT(AUPNPAT,41,DUZ(2),0)):$P(^AUPNPAT(AUPNPAT,41,DUZ(2),0),U,2),1:"????")
 Q
 ;
ASK ;
 W !
 S AUPNLK("INAC")=""
 S APCDPAT=""
 S DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC
 Q:Y<0
 S (APCDF,APCDPAT)=+Y
 K AUPNLK
 Q
 ;
INIT ;
 S VALMSG="Q - Quit/?? for more actions/+ next/- previous"
 D GETPAT(APCDPAT)
 K VALMHDR
 S VALMCNT=APCDLINE
 Q
 ;
ADD ;-- 
 D FULL^VALM1
 K APCDADD,APCDICD
 K APCDREL,DIR
 S APCDSEC=0
 D EN^DDIOL(,,"!")
 S DIR(0)="9000014.1,.01",DIR("A")="Enter RELATION" KILL DA D ^DIR
 I $D(DIRUT) D EN^DDIOL("no relation entered, it is required ....exiting") D PAUSE,BACK Q
 I Y="" D EN^DDIOL("no relationship entered, it is required ....exiting") D PAUSE,BACK Q
 S APCDREL=+Y
ADD1 ;
 I $P($G(^AUTTRLSH(APCDREL,21)),U,2) D  I Q D ADDX,PAUSE,BACK Q
 .S Q=0
 .K APCDR S C=0
 .S X=0 F  S X=$O(^AUPNFHR("AA",APCDPAT,APCDREL,X)) Q:X'=+X  D
 ..S C=C+1,APCDR(C)=$$VAL^XBDIQ1(9000014.1,X,.01)_"  "_$P(^AUPNFHR(X,0),U,3)_"  "_$$VAL^XBDIQ1(9000014.1,X,.04)_U_X
 .I C=0 D ADDFHR Q
 .S X=0 F  S X=$O(APCDR(X)) Q:X'=+X  W !?5,X,")  ",$P(APCDR(X),U,1)
 .S N=C+1 W !?5,N,")  Add new ",$P(^AUTTRLSH(APCDREL,0),U,1)
 .S DIR(0)="N^1:"_N_":0",DIR("A")="Choose",DIR("B")=N KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) S Q=1 Q
 .I Y=N D ADDFHR Q
 .S APCDFHR=$P(APCDR(+Y),U,2)
 I '$P($G(^AUTTRLSH(APCDREL,21)),U,2) S APCDFHR=$O(^AUPNFHR("AA",APCDPAT,APCDREL,0)) I 'APCDFHR D ADDFHR
 I 'APCDFHR G ADD1
 S DIE="^AUPNFHR(",DR="[APCD FAMILY HX MEMBER EDIT]",DA=APCDFHR D ^DIE K DA,DIE,DR
 ;
COND ;
 S DIR(0)="Y",DIR("A")="Add "_$S(APCDSEC:"Another",1:"a")_" Condition for "_$$VAL^XBDIQ1(9000014.1,APCDFHR,.01)_" "_$P(^AUPNFHR(APCDFHR,0),U,3),DIR("B")=$S(APCDSEC:"N",1:"Y") KILL DA D ^DIR KILL DIR
 I $D(DIRUT) W !!,"No condition entered." D PAUSE,ADDX,BACK Q
 I 'Y D ADDX,BACK Q
 ;CODE HERE TO GET SNOMED
 S APCDICD="" K APCDAICD
 D SMDX
Y I $G(APCDCI)="" W !,"SNOMED is required." G COND
 I $G(APCDICD)="" W !,"A valid code was not selected." G COND
COND1 ;
 K DIC,DR,DA
 K DD,DO
 S DIC="^AUPNFH(",DIC(0)="L",X=APCDICD,DIC("DR")=".02////"_APCDPAT_";.03////^S X=DT;.12////^S X=DT;.09////"_APCDFHR_";.13///"_APCDCI_";.14///"_APCDDI
 D FILE^DICN
 K DIC,DA,DR,DD,DO,D0,DIE
 S APCDFH=+Y
 K Y
 S APCDOVRR=1
 W !,"This is the ICD code that the SNOMED maps to, you can change it if needed.",!
 S DIE="^AUPNFH(",DR=".01",DA=APCDFH D ^DIE K DIE,DA,DR
 ;
X ;
 ;
 S Y=$$GETNARR^APCDFHS()
 I Y="" D
 .S Y=$P($$ICDDX^ICDEX(APCDICD,DT),U,4) W "  ",Y
 S Y=Y_"|"_APCDDI,Y=$TR(Y,";",":")
 S DA=APCDFH,DIE="^AUPNFH(",DR=".04///"_Y_";.08;.05;.15" D ^DIE K DA,DR,DIE
 ;now put in additional icd codes if there are any
 S APCDX=0 F  S APCDX=$O(APCDAICD(APCDX)) Q:APCDX'=+APCDX  D
 .S DA(1)=APCDFH
 .S X=APCDAICD(APCDX),X=$P($$ICDDX^ICDEX(X),U,1) Q:X=""  I X]"" S X="`"_X
 .S DIC="^AUPNFH("_DA(1)_",11,"
 .S DIC(0)="L"
 .S DIC("P")=$P(^DD(9000014,1101,0),"^",2)
 .D ^DIC K DA,DIC
 D EN^DDIOL("Family History added.  ",,"!!")
 K APCDOVRR,DIR
 S APCDSEC=1
 G COND
 ;
SMDX ;
 S (APCDCI,APCDDI,APCDPT,APCDICD)=""
 D ^APCDFHS
C I APCDCI="" W !!,"No SNOMED selected." Q
 ;get icd code for this snomed
 S A=0
 I APCDICD]"" S APCDICD=$P($$ICDDX^ICDEX(APCDICD),U,1) Q
 W !!,"There was no map to an ICD Diagnosis code for that SNOMED term, you "
 W !,"will need to select an ICD Diagnosis code for this Family History.",!
 I $T(^APCDFHD)="" D
 .S DIR(0)="9000014,.01",DIR("A")="Enter Condition" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) D EN^DDIOL("no diagnosis selected....required") Q
 .S APCDICD=+Y
 Q
ADDX ;
 K APCDFHR,APCDREL,APCDFH,APCDSEC,APCDOVRR,DIR,DA,DR,APCDICD,APCDR
 D ^XBFMK
 Q
 ;
ADDFHR ;
 S APCDFHR=""
 S DIR(0)="9000014.1,.03O",DIR("A")="Enter"_$S($G(APCDREL):" "_$P(^AUTTRLSH(APCDREL,0),U),1:"")_" Relation Description" KILL DA D ^DIR KILL DIR
 I X="^" Q
 S APCDRELD=$$UP^XLFSTR(Y)
 ;see if already have one
 S Y=0,G=0 F  S Y=$O(APCDR(Y)) Q:Y'=+Y!(G)  S X=$P(APCDR(Y),U,2) I $P(^AUPNFHR(X,0),U,1)=APCDREL,$$UP^XLFSTR($P(^AUPNFHR(X,0),U,3))=APCDRELD S G=X D
 .W !!,"This Relation Description ",$P(^AUTTRLSH(APCDREL,0),U,1)," ",APCDRELD," already exists."
 .Q
 I G Q
 S APCDFHR=""
 K DIC,DR,DA,DIADD,DLAYGO
 K DD,DO
 S DIC="^AUPNFHR(",DIC(0)="L",X=APCDREL,DIC("DR")=".02////"_APCDPAT_";.09////^S X=$S($G(APCDDATE):APCDDATE,1:DT);.03///"_APCDRELD_";.11////^S X=$S($G(APCDDATE):APCDDATE,1:DT)",DIADD=1,DLAYGO=9000014.1
 D FILE^DICN
 I Y=-1 W "Error in CREATING relation entry." K DIC,DR,DA,DD,D0,DO,DIADD,DLAYGO Q
 S APCDFHR=+Y
 K DIC,DR,DA,DD,D0,DO,DIADD,DLAYGO
 Q
 ;
EDIT ;
 I 'APCDRCNT D EN^DDIOL("No Family History to Edit",,"!!") H 3 D BACK Q
 D EN^VALM2(XQORNOD(0),"OS")
 I '$D(VALMY) W !,"No FAMILY HISTORY entry selected." H 2 D BACK Q
 S APCDP=$O(VALMY(0)) I 'APCDP K APCDP,VALMY,XQORNOD W !,"No record selected." H 2 D BACK Q
 S (APCDFHI,APCDRELI)=0
 S (X,Y)=0 F  S X=$O(APCDFHA("IDX",X)) Q:X'=+X!(APCDFHI)  I $O(APCDFHA("IDX",X,0))=APCDP S Y=$O(APCDFHA("IDX",X,0)),APCDFHI=$P(APCDFHA("IDX",X,Y),U,1),APCDRELI=$P(APCDFHA("IDX",X,Y),U,2)
 D FULL^VALM1
 ;
 ;first edit relation
 D ^XBFMK
 I APCDRELI,'APCDFHI D  D BACK Q
 .S DA=APCDRELI,DIE="^AUPNFHR(",DR="[APCD FAMILY HX MEMBER EDIT 1]" D ^DIE K DIE,DR,DA
 .I '$D(^AUPNFHR(APCDRELI)) W !,"Relation deleted." D PAUSE Q
 .S APCDSEC=0,APCDFHR=APCDRELI D COND
 S APCDOREL=""
 I 'APCDRELI!('APCDFHI) S Y=1 G EDIT1
 I APCDRELI,APCDFHI D
 .S APCDOR=$P(^AUPNFH(APCDFHI,0),U,9) I APCDOR S APCDOREL=$P(^AUPNFHR(APCDOR,0),U,1)
 .W !!,"The relation associated with this Family History condition is: ",!?10,$$VAL^XBDIQ1(9000014.1,APCDRELI,.01)_" "_$P(^AUPNFHR(APCDRELI,0),U,3)
 .S DIR(0)="Y",DIR("A")="Do you wish to CHANGE the relation associated with this condition",DIR("B")="N" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) W !,"Exiting edit mode...." K APCDOR,APCDFHI,APCDOREL,APCDP,VALMY,XQORNOD,APCDRELI
 ;
 I $D(DIRUT) W !,"exiting edit mode" H 2 D BACK Q
 I 'Y G EDITREST
EDIT1 D EN^DDIOL(,,"!")
 S DIR(0)="9000014.1,.01",DIR("A")="Enter RELATION" KILL DA D ^DIR
 I $D(DIRUT) D EN^DDIOL("no relation entered, it is required ....exiting") H 1 D BACK Q
 I Y="" D EN^DDIOL("no relation entered, it is required ....exiting") H 1 D BACK Q
 S APCDREL=+Y
 I $P($G(^AUTTRLSH(APCDREL,21)),U,2) D  I Q D BACK Q
 .S Q=0
 .K APCDR S C=0
 .S X=0 F  S X=$O(^AUPNFHR("AA",APCDPAT,APCDREL,X)) Q:X'=+X  D
 ..S C=C+1,APCDR(C)=$$VAL^XBDIQ1(9000014.1,X,.01)_"  "_$P(^AUPNFHR(X,0),U,3)_"  "_$$VAL^XBDIQ1(9000014.1,X,.04)_U_X
 .I C=0 D ADDFHR Q
 .S X=0 F  S X=$O(APCDR(X)) Q:X'=+X  W !?5,X,")  ",$P(APCDR(X),U,1)
 .S N=C+1 W !?5,N,")  Add new ",$P(^AUTTRLSH(APCDREL,0),U,1)
 .S DIR(0)="N^1:"_N_":0",DIR("A")="Choose",DIR("B")=N KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) S Q=1 Q
 .I Y=N D ADDFHR Q
 .S APCDFHR=$P(APCDR(Y),U,2)
 .S APCDRELI=$P(APCDR(+Y),U,2)
 I '$P($G(^AUTTRLSH(APCDREL,21)),U,2) S APCDFHR=$O(^AUPNFHR("AA",APCDPAT,APCDREL,0)) I 'APCDFHR D ADDFHR
 I 'APCDFHR D EDITX,BACK Q
 I APCDFHI S DA=APCDFHI,DIE="^AUPNFH(",DR=".09////^S X=APCDFHR" D ^DIE K DA,DR,DIE
 I APCDRELI,APCDFHR'=APCDRELI D
 .I $$VAL^XBDIQ1(9000014.1,APCDRELI,.01)="UNKNOWN",'$D(^AUPNFH("AE",APCDRELI)) S DA=APCDRELI,DIK="^AUPNFHR(" D ^DIK
 S APCDRELI=APCDFHR
EDITREST ;
 W ! S DA=APCDRELI,DIE("NO^")=1,DIE="^AUPNFHR(",DR="[APCD FAMILY HX MEMBER EDIT]" D ^DIE K DA,DIE,DR
 S APCDOVRR=1
 W !!
 I 'APCDFHI S APCDSEC=0 D COND K APCDADD Q
 W !!,"SNOMED: ",$$CONCPT^AUPNVUTL($P(^AUPNFH(APCDFHI,0),U,13))_" ("_$P(^AUPNFH(APCDFHI,0),U,13)_")"
 W !,"DX: ",$$GET1^DIQ(9000014,APCDFHI,.01)
 S DIR(0)="Y",DIR("A")="Do you wish to CHANGE the SNOMED or Diagnosis",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 I Y D EDITSMDX
 S APCDCI=$P($G(^AUPNFH(APCDFHI,0)),U,13),APCDDI=$P(^AUPNFH(APCDFHI,0),U,14) ;I 'Y
 S DA=APCDFHI,DIE="^AUPNFH(",DR=".09////^S X=APCDRELI;.12///^S X=DT;.08" D ^DIE K DA,DR,DIE
 I '$D(^AUPNFH(APCDFHI,0)) D BACK Q
 ;I APCDCI]"" S X=$$GET1^DIQ(9000014,APCDFHI,.04)_"|"_APCDDI,DA=APCDFHI,DIE="^AUPNFH(",DR=".04///"_X D ^DIE K DA,DIE,DRIT
 S DA=APCDFHI,DIE="^AUPNFH(",DR=".05;.15" D ^DIE K DA,DR,DIE
 K DIE,DA,DR,APCDOVRR
 D BACK
 K APCDADD
 Q
EDITSMDX ;
 D SMDX
X1 I APCDCI="" W !,"No SNOMED selected, NO CHANGE" D PAUSE Q
 S $P(^AUPNFH(APCDFHI,0),U,4)=""  ;WIPE OUT PROVIDER NARRATIVE
 I APCDICD]"" S DIE="^AUPNFH(",DA=APCDFHI,DR=".01////"_APCDICD D ^DIE K DIE,DA,DR
 W !,"This is the ICD code that the SNOMED maps to, you can change it if needed.",!
 S DIE="^AUPNFH(",DA=APCDFHI,DR=".01" D ^DIE K DA,DR,DIE
 S Y=$$GETNARR^APCDFHS()
 I Y="" D
 .S Y=$P($$ICDDX^ICDEX(APCDICD,DT),U,4) W "  ",Y
 S Y=Y_"|"_APCDDI,Y=$TR(Y,";",":")
 S DA=APCDFHI,DIE="^AUPNFH(",DR=".04///"_Y_";.13////"_APCDCI_";.14////"_APCDDI_";.08;.05;.15" D ^DIE K DA,DR,DIE
 ;.04;.13////"_APCDCI_";.14////"_APCDDI D ^DIE K DA,DR,DIE
 I APCDDI]"" S X=$P(^AUTNPOV($$GET1^DIQ(9000014,APCDFHI,.04,"I"),0),U)_"|"_APCDDI,DA=APCDFHI,DIE="^AUPNFH(",DR=".04///"_X D ^DIE K DA,DIE,DR
 Q
 ;
EDITX ;
 K APCDADD,APCDOVRR,DIE,DA,DR,APCDRELI,APCDOREL,APCDFHR,APCDFHI
 Q
DELETE ;
 D DELETE^APCDFH1
 Q
 ;
HS ;EP
 D HS^APCDFH1
 Q
BACK ;EP -BACK
 D TERM^VALM0
 S VALMBCK="R"
 D INIT
 D HDR
 K DIR
 K X,Y,Z,I
 Q
 ;
HELP ;
 S X="?"
 D DISP^XQORM1
 W !!
 Q
 ;
EOJ ;
 D CLEAR^VALM1
 K APCDFHA
 K AUPNADD,APCDICD,APCDFH
 Q
 ;
 ;
RFADD(P) ;PEP - called to add a patient to the Reproductive Factors file
 ;output:  DFN (ien of entry, file is dinum)
 ;         0^error message if add failed
 I '$G(P) Q 0_"^patient DFN invalid"
 I '$D(^DPT(P)) Q 0_"^patient DFN invalid"
 I $P(^DPT(P,0),U,2)'="F" Q 0_"^patient not FEMALE"
 I $D(^AUPNREP(P,0)) Q P
 NEW X,DIC,DD,D0,DO,Y
 S X=P,DIC="^AUPNREP(",DIC(0)="L"
 K DD,D0,DO,DINUM
 S DINUM=X
 D FILE^DICN
 I Y=-1 Q 0_"^fileman failed adding patient"
 Q 1
 ;
RHEDIT(P,RETVAL) ;PEP - called to edit reproductive hx data fields
 ;input - DFN of patient
 ;output - 1 if add/edit successful
 ;         0^error message if error
 I '$G(P) S RETVAL="0^patient DFN invalid" Q
 I '$D(^DPT(P)) S RETVAL="0^patient DFN invalid" Q
 I $P(^DPT(P,0),U,2)'="F" S RETVAL="0^patient not FEMALE" Q
 NEW V
 I '$D(^AUPNREP(P,0)) S V=$$RFADD(P) I 'V S RETVAL=V Q
 NEW DA,DDS
 S DA=P,DDSFILE=9000017,DR="[APCD UPDATE REPROD FACTORS" D ^DDS
 I $D(DIMSG) S RETVAL="0^error in screenman" Q
 S RETVAL=1
 Q
 ;
FP ;EP - called from d/e input template APCD FP (FP)
 S APCDREPI=DA
 D EN^XBNEW("FP1^APCDFH","APCDREPI;APCDDATE")
 K Y
 Q
FP1 ;EP - called from XBNEW call
 S APCDRFS="",APCDPARS=""
 I '$D(^AUPNREP(APCDREPI)) S X=$$RFADD(APCDREPI) I 'X W $P(X,U,2) Q
FP11 ;
 S DIE="^AUPNREP(",DA=APCDREPI,DR="[APCD FP EDIT]" D ^DIE
 K DIE,DA,DR
FP12 ;
 D FM1^APCDFH1
 K Y
 Q
 ;
RF ;EP
 S APCDREPI=DA
 D EN^XBNEW("RF1^APCDFH","APCDREPI;APCDDATE")
 K Y
 Q
RF1 ;EP
 S APCDRFS="",APCDPARS=""
 I '$D(^AUPNREP(APCDREPI)) S X=$$RFADD(APCDREPI) I 'X W $P(X,U,2) Q
RF11 ;
 S DIE="^AUPNREP(",DA=APCDREPI,DR="[APCD RF EDIT]" D ^DIE
 K DIE,DA,DR
 K Y
 Q
 ;
PAUSE ;EP
 S DIR(0)="EO",DIR("A")="Press enter to continue...." D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
