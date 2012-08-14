ACRFSS43 ;IHS/OIRM/DSD/THL,AEF - CONTINUATION OF ACRFSS4;  [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;CONTINUATION OF ACRFSS4
DELETE ;EP;DELETE TRAVEL DAYS
 S DIR(0)="LO^1:"_ACRJ
 S DIR("A")="Which DAY(s)"
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)!(+$G(Y)<1)
 S ACRDEL=Y
 S DIR(0)="YO"
 S DIR("A")="Sure you want to delete travel day(s) "_$E(Y,1,$L(Y)-1)_" "
 S DIR("B")="NO"
 W !
 D DIR^ACRFDIC
 Q:Y'=1
 F ACRI=1:1 S ACRYY=$P(ACRDEL,",",ACRI) Q:ACRYY=""  D DTV1:$D(^TMP("ACRTV",$J,ACRYY))
 K ACRDEL
 Q
DTV1 S DA=+^TMP("ACRTV",$J,ACRYY)
 S DIK="^ACRTV("
 D DIK^ACRFDIC
 S ACRCHANG=""
 K ^TMP("ACRTV",$J,ACRYY)
 Q
CHK1 ;SET VARIABLES FOR TRAVEL DAY DATA BEFORE DAY IS EDITED
 S ^TMP("ACRTV",$J,"CHK",ACRTVDA)=^ACRTV(ACRTVDA,0)_"&&&&"_^ACRTV(ACRTVDA,"DT")
 Q
CHK2 ;COMPARE TRAVEL DAY INFO AFTER IT IS EDITED
 Q:'ACRTVDA
 Q:'$D(^ACRTV(ACRTVDA,0))
 S X=^ACRTV(ACRTVDA,0)_"&&&&"_^ACRTV(ACRTVDA,"DT")
 I ^TMP("ACRTV",$J,"CHK",ACRTVDA)'=X S ACRCHANG=""
 Q
DESTIN ;EP;TO SELECT AUTHORIZED DESTINATIONS FOR A TRAVEL ORDER
 S DA=ACRDOCDA
 S DIE="^ACRDOC("
 S DR="[ACR TRAVEL DESTINATION]"
 I $D(ACRREV) S ACRSCREN=""
 E  D DDS^ACRFDIC
 I '$D(ACRSCREN) D IDEN Q
 K ACRSCREN
 F ACRI=1:1 D D1 Q:$D(ACRQUIT)!$D(ACROUT)!$D(ACRREV)
 K ACRQUIT
 Q
D1 W @IOF
 D ITIN
 I $D(ACRREV) D PAUSE^ACRFWARN K ACRQUIT Q
 S DA=ACRDOCDA
 S DIE="^ACRDOC("
 S DR="1301T"
 W !
 D DIE^ACRFDIC
 I '$O(^ACRDOC(ACRDOCDA,9,0)) D
 .S (ACRI,Y)=1
 .D D1A
 .W @IOF
 .D ITIN
 S DIR(0)="SO^1:Edit Mode of Travel;2:Add Authorized Destination;3:Delete Authorized Destination"
 S DIR("A")="Which one"
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)!(+$G(Y)<1)
 I Y=2 D  Q
 .W !
 .D D1A
 I 13[Y D
 .S ACRDEST=$S(Y=1:"EDIT",1:"DELETE")
 .D DELDEST
 .K ACRDEST
 Q
D1A ;ADD TRAVEL TO DESTINATION
 S:'$D(^ACRDOC(ACRDOCDA,9,0))#2 ^ACRDOC(ACRDOCDA,9,0)="^9002196.901P"
 S DIC="^ACRPD("
 S DIC(0)="AEMQZ"
 S DIC("A")=$S(ACRI=1:"TRAVEL AUTHORIZED TO: ",1:"AND ALSO TO.........: ")
 D DIC^ACRFDIC
 I $D(ACRQUIT)!$D(ACROUT)!(+$G(Y)<1) D  K ACRDESTN,ACRQUIT Q
 .K ACRDESTN
 .S X=0
 .F  S X=$O(^ACRDOC(ACRDOCDA,9,X)) Q:'X  I $D(^(X,0)) S ACRDESTN="" Q
 .I '$D(ACRDESTN)#2 D
 ..W *7,*7
 ..W !!,"No AUTHORIZED DESTINATIONS have been entered."
 ..W !,"You will not be able to add any TRAVEL DAYS unless an AUTHORIZED DESTINATION"
 ..W !,"is entered."
 ..D PAUSE^ACRFWARN
 I $D(^ACRDOC(ACRDOCDA,9,"B",+Y)) S Y=$O(^(+Y,0))
 E  D
 .S DA(1)=ACRDOCDA
 .S DIC="^ACRDOC("_ACRDOCDA_",9,"
 .S DIC(0)="L"
 .S X=+Y
 .D FILE^ACRFDIC
 S DA=+Y
D1E ;EDIT TRAVEL TO DESTINATION
 S DA(1)=ACRDOCDA
 S DIE="^ACRDOC("_ACRDOCDA_",9,"
 S DR="S ACRTM=$P(^ACRDOC(ACRDOCDA,9,DA,0),U,3);.02T;S:X'=4&(ACRTM="""") Y=""@1"";.03T;@1"
 W !
 D DIE^ACRFDIC
 W !
 D IDEN
 Q
DELDEST ;EP;TO DELETE A TRAVEL DESTINATION
 D DESTLIST
 S DIR(0)="LO^1:"_ACRK
 S DIR("A")=ACRDEST_" which TRAVEL DESTINATION(s)"
 W !
 D DIR^ACRFDIC
 I '+$G(ACRY) K ACRQUIT Q
 F ACRJ=1:1 S ACRX=$P(ACRY,",",ACRJ) Q:ACRX=""  D
 .S DA=ACRX(ACRX)
 .S (DIE,DIK)="^ACRDOC("_ACRDOCDA_",9,"
 .S DA(1)=ACRDOCDA
 .D ^DIK:ACRDEST="DELETE"
 .I ACRDEST="EDIT" D D1E
 Q
DESTLIST ;
 W !
 S (ACRX,ACRK)=0
 F  S ACRX=$O(^ACRDOC(ACRDOCDA,9,ACRX)) Q:'ACRX  D
 .I $D(^ACRDOC(ACRDOCDA,9,ACRX,0)) S Y=^(0) D
 ..I $D(^ACRPD(+Y,0)) D
 ...S Z=$P(^ACRPD(+Y,0),U)
 ...S ACRK=ACRK+1
 ...S ACRX(ACRK)=ACRX
 ...W !?10,ACRK
 ...W ?15,Z
 Q
ITIN ;EP;TO DISPLAY CITIES TO WHICH TRAVEL IS AUTHORIZED
 Q:$D(ACROUT)
 Q:'$D(^ACRDOC(ACRDOCDA,9,0))&'$D(^ACRDOC(ACRDOCDA,13,0))
 N ACRI
 W !,"|-----------------------------  TRAVEL ITINERARY  -----------------------------|"
 I $D(^ACRDOC(ACRDOCDA,13))#2 N ACRPDDA S ACRPDDA=+^(13) I ACRPDDA,$D(^ACRPD(ACRPDDA,0)) D
 .W !,"|"
 .W ?5,"Travel authorized fr: ",$P(^ACRPD(ACRPDDA,0),U)
 .W ?79,"|"
 S X=0
 F ACRI=1:1 S X=$O(^ACRDOC(ACRDOCDA,9,X)) Q:'X  D
 .S Y=$G(^ACRDOC(ACRDOCDA,9,X,0))
 .I $D(^ACRPD(+Y,0)) S Z=$P(^(0),U) D
 ..W !,"|"
 ..W ?5,$S(ACRI=1:"Travel authorized to",1:"and also to........."),": ",Z," via "
 ..S Z=$P(Y,U,2)
 ..W $S(Z=1:"COMMON CARRIER",Z=2:"POV",Z=3:"COMMON CARRIER & POV",Z=5:"GSA VEHICLE",Z=6:"CHARTER",1:$S($P(Y,U,3)]"":$P(Y,U,3),1:"OTHER"))
 ..W:'$O(^ACRDOC(ACRDOCDA,9,X)) " and return"
 ..W ?79,"|"
 Q
LODGE ;EP;TO DISPLAY THE LODGING AND PER DIEM RATES FOR CITIES TO WHICH THE
 ;TRAVELER IS TRAVELING
 Q:$D(ACROUT)
 N ACR,ACRPD
 S:'$D(D0)&$D(ACRDOCDA) D0=ACRDOCDA
 S ACR=0
 F  S ACR=$O(^ACRTV("D",D0,ACR)) Q:'ACR  D
 .S ACRPD=$P($G(^ACRTV(ACR,"DT")),U,4)
 .I $D(^ACRPD(+ACRPD,0)) S ACRPD=^(0),ACRPD($P(ACRPD,U))=ACRPD
 Q:'$D(ACRPD)
 S ACR=""
 F  S ACR=$O(ACRPD(ACR)) Q:ACR=""  D
 .S ACRPD=ACRPD(ACR)
 .W !,"|"
 .W ?23,$P(ACRPD,U),$S('$P(ACRPD,U,2):"",$D(^DIC(5,$P(ACRPD,U,2),0)):", "_$P(^(0),U,2),1:"")
 .W ?56,$J($FN($P(ACRPD,U,3),"P,",2),10)
 .W ?$X+2,$J($FN($P(ACRPD,U,4),"P,",2),10)
 .W ?79,"|"
 Q
DELAUTO ;EP;TO DELETE RENTAL CAR EXPENSES IF RENTAL CAR IS DENIED
 S:'$D(ACRDOCDA) ACRDOCDA=DA
 Q:'ACRDOCDA
 S ACR=0
 F  S ACR=$O(^ACRTV("D",ACRDOCDA,ACR)) Q:'ACR  D
 .S ACRX=$G(^ACRTV(ACR,"DT"))
 .I $L($P(ACRX,U,13,15))>2!$D(^ACRTV(ACR,"RCJ")) D
 ..S DA=ACR
 ..S DIE="^ACRTV("
 ..S DR="13///@;14///@;15///@;21///@;22///@;23///@;24///@;25///@"
 ..D DIE^ACRFDIC
 Q
IDEN ;EP;TO SET IDENTIFIER FOR TRAVEL ORDER
 Q:'$G(ACRDOCDA)
 Q:$L($P($G(^ACRDOC(ACRDOCDA,0)),U,14))>8
 N X
 S X=$O(^ACRDOC(ACRDOCDA,9,0))
 S X=$P($G(^ACRDOC(ACRDOCDA,9,+X,0)),U)
 Q:'X
 S X=$E($P($G(^ACRPD(X,0)),U),1,6)
 S DA=ACRDOCDA
 S DIE="^ACRDOC("
 S DR=".14////"_$P(^ACRDOC(ACRDOCDA,0),U,14)_"/"_X
 D DIE^ACRFDIC
 Q