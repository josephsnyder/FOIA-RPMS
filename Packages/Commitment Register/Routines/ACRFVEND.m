ACRFVEND ;IHS/OIRM/DSD/THL,AEF - ADD/EDIT VENDORS; [ 07/20/2006   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**20**;NOV 05, 2001
 ;;ROUTINE USED TO ADD/EDIT VENDORS
EN ; EP
 S (AUTEDIT,AUTTPKG)=""
 ; D ADD^AUTTVLK               ; ACR*2.1*20.14  VENDOR
 D ADD^ACRFVLK                 ; ACR*2.1*20.14  VENDOR
EXIT K AUTEDIT,AUTTPKG,AUTDA,AUTVDA,ACRVENAM,ACRDA,ACRD0,ACRMANAM
 Q
MAN ;EP;TO EDIT MANUFACTURER FOR AN ITEM
 F  D MAN1 Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT,ACRDIE,ACRMANAM,ACRD0
 Q
MAN1 W @IOF
 W !!?22,"ADD A MANUFACTURER"
 W !?22,"=================="
 S DIC="^ACRMAN("
 S DIC(0)="AELMQZ"
 S DIC("A")="MANUFACTURER........: "
 W !!?21,"|"
 F ACRI=1:1:30 W "="
 W "|"
 D DIC^ACRFDIC
 I U[$E(X)!(+Y<1) S ACRQUIT="" Q
 N ACRY
 S (ACRDA,ACRD0)=+Y
 S ACRY=$P(Y,U,3)
 S ACRMANAM=$P(^ACRMAN(+Y,0),U)
 D MAN2 Q:$D(ACRQUIT)!$D(ACROUT)
 K ACRQUIT
 Q
MAN2 G:ACRY=1 MAN3
 D MANDISP
 S DIR(0)="YO"
 S DIR("A")="Edit MANUFACTURER DATA"
 S DIR("B")="NO"
 W !
 D DIR^ACRFDIC
 I Y=0 S ACRQUIT="" Q
MAN3 S DA=ACRDA
 S DIE="^ACRMAN("
 S DR="[ACR MANUFACTURER EDIT]"
 W !!
 D DIE^ACRFDIC
 Q
MANDISP W @IOF
 W ?9,@ACRON,"MANUFACURER",@ACROF," DATA FOR: ",@ACRON,ACRMANAM,@ACROF
 W !
 S D0=ACRD0
 N DXS,DIP,DC,DN
 D ^ACRPMAN
 Q