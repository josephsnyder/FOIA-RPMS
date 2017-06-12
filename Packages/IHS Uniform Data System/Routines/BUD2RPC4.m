BUD2RPC4 ; IHS/CMI/LAB - UDS TABLE 6 11 Dec 2007 12:15 PM ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
T9 ;EP
 ;TABLE 9D - TOTALS ONLY
 ;CODE ORIGINATED WITH SHONDA RENDER (BUDMUPV1)
 ;FIRST LOOP THROUGH BUDDBILL FOR THIS PATIENTS VISITS THAT ARE IN ^TMP
 S BUDCNT=0
 S BUDDUZ2=0
 S BUDFOUND=0
 S BUDLINE=""
 D GETPAR
 F  S BUDDUZ2=$O(^ABMDBILL(BUDDUZ2)) Q:'BUDDUZ2  D
 .S BUDVDFN=0
 .F  S BUDVDFN=$O(^TMP($J,"VISITS356A",BUDVDFN)) Q:'BUDVDFN  D
 ..S BUDBILLF=0  ;BUD*2.6*8 HEAT47191
 ..;Q:($G(^XTMP("BUD-PVP",$J,"VISITS",BUDVDFN))=1)  ;already counted this visit on report
 ..Q:'$D(^ABMDBILL(BUDDUZ2,"AV",BUDVDFN))  ;visit not under this DUZ(2)
 ..S BUDP("BDFN")=0
 ..F  S BUDP("BDFN")=$O(^ABMDBILL(BUDDUZ2,"AV",BUDVDFN,BUDP("BDFN"))) Q:'BUDP("BDFN")  D  Q:BUDBILLF  ;BUD*2.6*8 HEAT47191
 ...I $P($G(^ABMDBILL(BUDDUZ2,BUDP("BDFN"),0)),U,4)="X" Q  ;CANCELLED
 ...S BUDVLOC=$P($G(^ABMDBILL(BUDDUZ2,BUDP("BDFN"),0)),U,3)
 ...S BUDINS=$P($G(^ABMDBILL(BUDDUZ2,BUDP("BDFN"),0)),U,8)
 ...S BUDPT=$P($G(^ABMDBILL(BUDDUZ2,BUDP("BDFN"),0)),U,5)
 ...;determine insurer type and set LINE var
 ...S BUDLINE=""
 ...D GETITYPE
 ...I BUDLINE="" Q
 ...S (BUDBILLN,BUDSAV)=$P($G(^ABMDBILL(BUDDUZ2,BUDP("BDFN"),0)),U)
 ...;F  S BUDBILLN=$O(^BARBL(BUDPAR,"B",BUDBILLN)) Q:$G(BUDBILLN)=""!(BUDBILLN'[BUDSAV)  D  ;BUD*2.6*8 HEAT47191
 ...F  S BUDBILLN=$O(^BARBL(BUDPAR,"B",BUDBILLN)) Q:$G(BUDBILLN)=""!(BUDBILLN'[BUDSAV)  D  Q:BUDBILLF  ;BUD*2.6*8 HEAT47191
 ....S BUDARIEN=0
 ....S BUDHOLD=DUZ(2)
 ....S DUZ(2)=BUDPAR
 ....F  S BUDARIEN=$O(^BARBL(DUZ(2),"B",BUDBILLN,BUDARIEN)) Q:'BUDARIEN  D   Q:BUDBILLF  ;BUD*2.6*8 HEAT47191
 .....S BUDARACT=$$GET1^DIQ(90050.01,BUDARIEN_",",3,"I")     ;A/R BILL, A/R ACCOUNT
 .....S $P(BUDT9(BUDLINE),U,1)=$P($G(BUDT9(BUDLINE)),U,1)+$$VAL^XBDIQ1(90050.01,BUDARIEN,13)
 .....S $P(BUDT9(BUDLINE),U,3)=$P($G(BUDT9(BUDLINE)),U,3)+$$VAL^XBDIQ1(90050.01,BUDARIEN,25)
 .....;I BUDLINE=3 W !,DFN,":",BUDBILLN,":",BUDARIEN,":",$$VAL^XBDIQ1(90050.01,BUDARIEN,13)
 .....;S D0=BUDARACT
 .....;S BUDITYP=$$VALI^BARVPM(8)   ;GET 'VIP INSURER TYPE' CODE
 .....;S BUDGRP=$S(BUDITYP="D":"MCD",BUDITYP="K":"CHIP",1:"OTHR")
 .....S BUDABILN=$P($G(^BARBL(DUZ(2),BUDARIEN,0)),U)
 .....S BUDTRIEN=0
 .....;F  S BUDTRIEN=$O(^BARTR(DUZ(2),"AC",BUDARIEN,BUDTRIEN)) Q:'BUDTRIEN  D  ;BUD*2.6*8 HEAT47191
 .....F  S BUDTRIEN=$O(^BARTR(DUZ(2),"AC",BUDARIEN,BUDTRIEN)) Q:'BUDTRIEN  D  Q:BUDBILLF  ;BUD*2.6*8 HEAT47191
 ......S BUDTRTYP=$P($G(^BARTR(DUZ(2),BUDTRIEN,1)),U)
 ......S BUDADJT=$P($G(^BARTR(DUZ(2),BUDTRIEN,1)),U,3) ;abm*2.6*8
 ......;I "^40^113^114^121^132^137^138^139^"'[("^"_ABMTRTYP_"^") Q ;payment or payment credit ;abm*2.6*8
 ......I (BUDTRTYP'=40)&("^113^114^121^132^137^138^139^"'[("^"_BUDADJT_"^")) Q  ;payment or payment credit ;abm*2.6*8
 ......I ($$GET1^DIQ(90050.03,BUDTRIEN,3.5))<(.01) Q  ;don't count 0 pymts or reversals
 ......;CHECK DATES??
 ......Q:$P($P(^BARTR(DUZ(2),BUDTRIEN,0),U,1),".")>BUDED
 ......Q:$P($P(^BARTR(DUZ(2),BUDTRIEN,0),U,1),".")<BUDBD
 ......S $P(BUDT9(BUDLINE),U,2)=$P($G(BUDT9(BUDLINE)),U,2)+$$VAL^XBDIQ1(90050.03,BUDTRIEN,3.5)
 ....S DUZ(2)=BUDHOLD
 Q
GETITYPE ;
 S BUDIT=$P($G(^ABMDBILL(BUDDUZ2,BUDP("BDFN"),2)),U,2)
 I BUDIT="D" S BUDLINE=3 Q
 I BUDIT="K" S BUDLINE=3 Q
 I BUDIT="R" S BUDLINE=6 Q
 I BUDIT="MD" S BUDLINE=6 Q
 I BUDIT="MH" S BUDLINE=6 Q
 I BUDIT="MC" S BUDLINE=6 Q
 I BUDIT="MMC" S BUDLINE=6 Q
 I BUDIT="I" S BUDLINE=9 Q
 I BUDIT="G" S BUDLINE=9 Q
 I BUDIT="SEP" S BUDLINE=9 Q
 I BUDIT="T" S BUDLINE=9 Q
 I BUDIT="C" S BUDLINE=12 Q
 I BUDIT="F" S BUDLINE=12 Q
 I BUDIT="FPL" S BUDLINE=12 Q
 I BUDIT="H" S BUDLINE=12 Q
 I BUDIT="M" S BUDLINE=12 Q
 I BUDIT="P" S BUDLINE=12 Q
 I BUDIT="W" S BUDLINE=12 Q
 I BUDIT="N" S BUDLINE=13 Q
 I BUDIT="TSI" S BUDLINE=13 Q
 ;I BUDIT="P" D
 ;.;IF INSURER HAS A K PUT IN 9
 ;.NEW X,Y,G
 ;.S G=0,X=0 F  S X=$O(^ABMDBILL(BUDDUZ2,BUDP("BDFN"),13,X)) Q:X'=+X  D
 ;..S Y=$P(^ABMDBILL(BUDDUZ2,BUDP("BDFN"),13,X,0),U)
 ;..I $P($G(^AUTNINS(Y,2)),U,1)="K" S G=1
 ;.I G S BUDLINE=9 Q
 ;.S BUDLINE=12
 Q
GETPAR ;EP
 K BUDPSFLG,BUDFLIST
 S BUDPAR=0
 S BUDCNT=1
 F  S BUDPAR=$O(^BAR(90052.05,BUDPAR)) Q:+BUDPAR=0  D  Q:($G(BUDPSFLG)=1)
 .I $D(^BAR(90052.05,BUDPAR,DUZ(2))) D
 ..; Use A/R parent/sat is yes, but DUZ(2) is not the parent for this 
 ..; visit location
 ..Q:$P($G(^BAR(90052.05,BUDPAR,DUZ(2),0)),U,3)'=BUDPAR
 ..Q:$P($G(^BAR(90052.05,BUDPAR,DUZ(2),0)),U,6)>DT
 ..Q:$P($G(^BAR(90052.05,BUDPAR,DUZ(2),0)),U,7)&($P(^(0),U,7)<DT)
 ..S BUDPSFLG=1
 Q  ;
