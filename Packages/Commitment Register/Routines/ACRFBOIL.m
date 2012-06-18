ACRFBOIL ;IHS/OIRM/DSD/THL,AEF - DOCUMENT BOILER PLATE MANAGEMENT UTILITY; [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;ROUTINE USED FOR DOCUMENT BOILER PLATE MANAGEMENT
EN ;EP;TO CREATE OR EDIT BOILER PLATE STATEMENTS
 D STATE
EXIT K ACR,ACRBPDA,ACRX,ACRI,ACRY
 Q
STATE ;EP;TO ADD NEW BOILER PLATE STATEMENTS
 F  D BOIL Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT
 Q
BOIL ;SELECT AND EDIT STATEMENT
 W @IOF
 W !!?20,"DOCUMENT BOILER PLATE STATEMENTS"
 S DIC="^ACRBP("
 S DIC(0)="AEMLQZ"
 S DIC("A")="BOILER PLATE STATEMENT: "
 W !!
 D DIC^ACRFDIC
 I +Y<1 S ACRQUIT="" Q
 S DA=+Y
 S DIE="^ACRBP("
 S DR="[ACR BOILER PLATE STATEMENT]"
 D DIE^ACRFDIC
 Q
DOCBOIL ;EP;UTILITY TO SELECT BOILER PLATE STATEMENTS TO ADD TO DOCUMENT
 K ACRQUIT
 I $D(^ACRDOCBP("C",ACRDOCDA)) D DELBOIL
 W !!?3,"Select BOILER PLATES Statements"
 W !
 S ACR=0
 S ACRBP=""
 F  S ACRBP=$O(^ACRBP("B",ACRBP)) Q:ACRBP=""  D
 .S ACRBPDA=0
 .F  S ACRBPDA=$O(^ACRBP("B",ACRBP,ACRBPDA)) Q:'ACRBPDA  D
 ..I $D(^ACRBP(ACRBPDA,0)) D
 ...S ACR=ACR+1
 ...S ACR(ACR)=ACRBPDA
 ...W !?10,ACR
 ...W ?15,$P(^ACRBP(ACRBPDA,0),U)
 S DIR(0)="LO^1:"_ACR
 S DIR("A")="Which One(s)"
 S DIR("?")="Indicate the number(s) of applicable Boiler Plate Statements."
 W !
 D DIR^ACRFDIC
 I $D(ACRQUIT)!$D(ACROUT) K ACRQUIT Q
 N ACRI,ACRX,ACRY
 S ACRY=Y
 F ACRI=1:1 S ACRX=$P(ACRY,",",ACRI) Q:ACRX=""  S (ACRBP,X)=ACR(ACRX) D
 .I '$D(^ACRDOCBP("AC",ACRDOCDA,ACRBP)) D
 ..S DIC="^ACRDOCBP("
 ..S DIC(0)="L"
 ..S DIC("DR")=".02////"_ACRDOCDA
 ..D FILE^ACRFDIC
 ..S ACRBPDA=+Y
 ..D XY
 .I $D(^ACRDOCBP("AC",ACRDOCDA,ACRBP)) S ACRBPDA=$O(^(ACRBP,0)) D
 ..I ACRBPDA D
 ...W !!,"You have added the ",$P(^ACRBP(ACRBP,0),U)," statement to this document."
 ...S DIR(0)="YO"
 ...S DIR("A")="Do you want to edit the statement"
 ...S DIR("B")="NO"
 ...D DIR^ACRFDIC
 ...I Y=1 D
 ....S DA=ACRBPDA
 ....S DIE="^ACRDOCBP("
 ....S DR=1
 ....D DIE^ACRFDIC
 Q
XY ;SET STATEMENT FOR THE DOCUMENT EQUAL TO BOILER PLATE STATEMENT
 S %X="^ACRBP("_ACR(ACRX)_",1,"
 S %Y="^ACRDOCBP("_ACRBPDA_",1,"
 D %XY^%RCR
 K %X,%Y
 Q
BAPPEND ;EP;LIST BOILER PLATE STATMENTS APPENDED TO DOCUMENT AND ALLOW FOR
 ;DELETION OR EDITING
 Q:'$D(ACRDOCDA)
 I '$D(^ACRDOCBP("C",ACRDOCDA)) W !!,"NO STATEMENTS APPENDED."
DELBOIL N ACR,ACRI S ACR=0
 F ACRI=1:1 S ACR=$O(^ACRDOCBP("C",ACRDOCDA,ACR)) Q:'ACR  D
 .I ACRI=1 D
 ..W !!?10,"STATEMENTS APPENDED:"
 ..W !?10,"------------------------"
 .I $D(^ACRDOCBP(ACR,0)) S ACRBP=+^(0) D:ACRBP
 ..W !?10,ACRI
 ..W ?15,$P(^ACRBP(ACRBP,0),U)
 ..D D1
 Q
D1 ;
 S DIR(0)="YO"
 S DIR("A")="          Read Statement NO. "_ACRI_" "
 S DIR("B")="NO"
 D DIR^ACRFDIC
 I Y=1 D
 .S D0=ACR
 .N DXS,DIP,DC,DN
 .W @IOF
 .W !
 .D ^ACRBP
 .D PAUSE^ACRFWARN
 .W !
 Q:$D(ACRREV)
 S DIR(0)="SO^1:Edit Statement No. "_ACRI_";2:Delete Statement No. "_ACRI
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)!("12"'[Y)
 I Y=1 D  Q
 .S DA=ACR
 .S DIE="^ACRDOCBP("
 .S DR="[ACR BP STATEMENT]"
 .W @IOF
 .D DIE^ACRFDIC
 I Y=2 D
 .S DIR(0)="YO"
 .S DIR("A")="Sure you want to delete Statement No. "_ACRI
 .S DIR("B")="NO"
 .W !
 .D DIR^ACRFDIC
 .Q:Y'=1
 .S DA=ACR
 .S DIK="^ACRDOCBP("
 .K ^ACRDOCBP("C",ACRDOCDA,DA),^ACRDOCBP("AC",ACRDOCDA,ACRBP,DA)
 .W !!,"Statement NO. "_ACRI_" deleted."
 Q
PBOIL ;EP;TO PRINT BOILER PLATE STATEMENT ATTACHED TO A DOCUMENT
 Q:$D(ACROUT)
 W:$O(^ACRDOCBP("C",ACRDOCDA,0)) @IOF
 N ACR,D0
 S ACR=0
 F  S ACR=$O(^ACRDOCBP("C",ACRDOCDA,ACR)) Q:'ACR  D
 .N DXS,DIP,DC,DN
 .S D0=ACR
 .I $E($G(IOST),1,2)="C-" D  Q:'$D(ACRSCREN)
 ..N ACRFILE,ACRIEN,ACRFIELD,ACRTITLE
 ..S ACRFILE=9002197.3
 ..S ACRIEN=ACR
 ..S ACRFIELD=1
 ..S ACRTITLE="ARMS BOILER PLATE STATEMENT"
 ..D WP^ACRFDIC
 .K ACRSCREN
 .D ^ACRBP
 .S ACRX=+^ACRDOCBP(ACR,0)
 .I $P(^ACRBP(ACRX,0),U,2),$D(^ACRAPVS("AB",ACRDOCDA)) D
 ..N ACRAPVT
 ..S ACRAPVT=5
 ..D SIG^ACRFCERT
 .I $E($G(IOST),1,2)["C-" D PAUSE^ACRFWARN
 .W @IOF
 Q
