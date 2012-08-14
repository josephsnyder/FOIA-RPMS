ACRFPCC ;IHS/OIRM/DSD/THL,AEF - DISPLAY COST COMPARISON; [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;ROUTINE TO DISPLAY VENDORS FOR A STOCK ITEM
EN ;EP      
 D SET,DISPLAY
EXIT K ACRVDA,ACRVCON,ACRVON,ACRVUI,ACRVUC,ACRVSP,ACRVNAM,ACRVEIN,ACRVCIT,ACRVPHN,ACRVA1,ACRVA2,ACRVA3,ACRVZIP,ACR11,ACR13,ACRDT1,ACRFOB,ACRBR,ACRCT,ACRDT,ACRMAN,ACRVNDC,ACRP1,ACRP2,ACRP3
 Q
ZIS ;EP;TO PRINT COST COMPARISON
 S (ACRRTN,ZTRTN)="EN^ACRFPCC"
 S ZTDESC="PRINT COST COMPARISON FOR DOCUMENT "_$P(^ACRDOC(ACRDOCDA,0),U)
 D ^ACRFZIS
 Q
SET W:$E(IOST,1,2)="C-" @IOF
 W !?12,@ACRON,"COST COMPARISON",@ACROF
 W !,"--------------------------------------------------------------------------------"
 W !?11,"| VENDOR 1"
 W ?34,"| VENDOR 2"
 W ?57,"| VENDOR 3"
 W !,"--------------------------------------------------------------------------------"
 S ACR=0
 D SET1
 Q
SET1 ;SET VENDOR INFO FOR COST COMPARISON
 N X,Y
 S ACRV(1)=$P(^ACRDOC(ACRDOCDA,"PO"),U,5)
 S Y=$G(^ACRDOC(ACRDOCDA,13))
 S ACRV(2)=$P(Y,U,5)
 S ACRV(3)=$P(Y,U,6)
 F ACRI=1:1:3 D S1
 Q
S1 S Z=ACRV(ACRI)
 I Z,$D(^AUTTVNDR(Z,0)) D  I 1
 .S ACR0=$P(^AUTTVNDR(Z,0),U)
 .S X=$G(^AUTTVNDR(Z,11))
 .S Y=$G(^AUTTVNDR(Z,13))
 .S ACRVDA=Z
 .S Z="*"_$E(ACR0,1,20)_U_$P(Y,U)_U_$P(Y,U,10)_U_$P(Y,U,2)_U_$P(Y,U,3)_U_$P(Y,U,4)_U_$P(Y,U,5)_U_$P(X,U,9)_U_$P(X,U,14)_U_$P(X,U,13)_U_$P(X,U,27)_U_$P(X,U,15)_U_$P(X,U,28)_U_$P(X,U,17)
 .S $P(Z,U,30)=ACRVDA
 E  S Z=$G(^ACRDOC(ACRDOCDA,$S(ACRI=1:3,ACRI=2:14,1:15)))
 S $P(Z,U)=$E($P(Z,U),1,21)
 S $P(Z,U,6)=$E($P(Z,U,6),1,5)
 S $P(Z,U,4)=$E($P(Z,U,4),1,13)
 S $P(Z,U,12)="WO: "_$S($P(Z,U,12)=1:"YES",1:"NO")
 S $P(Z,U,13)="BI: "_$S($P(Z,U,13)=6:"YES",1:"NO")
 S $P(Z,U,14)=$S($P(Z,U,14)=1:"YES",1:"NO")
 I $P(Z,U,5),$D(^DIC(5,$P(Z,U,5),0)) S $P(Z,U,5)=$P(^(0),U,2)
 I $P(Z,U,11)]"" D  I 1
 .S $P(Z,U,11)=$E($P($P(^DD(9999999.11,1127,0),($P(Z,U,11)_":"),2),";"),1,21)
 E  S $P(Z,U,11)="NOT STATED"
 S ACRV(ACRI)=Z
 Q
DISPLAY W !,"VENDOR"
 W ?11,"|"
 S ACRP=1
 D W
 W !,"CONTACT"
 W ?11,"|"
 S ACRP=7
 D W
 W !,"STREET 1"
 W ?11,"|"
 S ACRP=2
 D W
 W !,"STREET 2"
 W ?11,"|"
 S ACRP=3
 D W
 W !,"CITY/ST/ZIP"
 W ?11,"|"
 S ACRP="4"
 D W
 W !,"PHONE"
 W ?11,"|"
 S ACRP=8
 D W
 W !,"FAX"
 W ?11,"|"
 S ACRP=9
 D W
 W !,"EIN NO."
 W ?11,"|"
 S ACRP=10
 D W
 W !,"BUS SIZE"
 W ?11,"|"
 S ACRP=11
 D W
 W !,"WOMAN/IND"
 W ?11,"|"
 S ACRP=12
 D W
 W !,"LABOR SURP"
 W ?11,"|"
 S ACRP=14
 D W
 W !,"FOB POINT"
 W ?11,"|"
 S ACRP=15
 D W
 W !,"DELIVRY/ARO"
 W ?11,"|"
 S ACRP=16
 D W
 W !,"PAYMENT TRM"
 W ?11,"|"
 S ACRP=17
 D W
 W !,"MULTI-AWARD"
 W ?11,"|"
 S ACRP=18
 D W
 W !,"CONFIRM ORD"
 W ?11,"|"
 S ACRP=19
 D W
 W !,"MAIL INSTR"
 W ?11,"|"
 S ACRP=20
 D W
 W $$DASH^ACRFMENU
 D SS
 Q
W W ?12,$E($P(ACRV(1),U,ACRP),1,22)
 I ACRP=4 D  S ACRP=4
 .F ACRP=5,6 W:$P(ACRV(1),U,ACRP)]"" ",",$P(ACRV(1),U,ACRP)
 W:ACRP=12 ?25,$P(ACRV(1),U,13)
 W ?34,"|"
 W ?35,$E($P(ACRV(2),U,ACRP),1,22)
 I ACRP=4 D  S ACRP=4
 .F ACRP=5,6 W:$P(ACRV(2),U,ACRP)]"" ",",$P(ACRV(2),U,ACRP)
 W:ACRP=12 ?48,$P(ACRV(2),U,13)
 W ?57,"|"
 W ?58,$E($P(ACRV(3),U,ACRP),1,22)
 I ACRP=4 D  S ACRP=4
 .F ACRP=5,6 W:$P(ACRV(3),U,ACRP)]"" ",",$P(ACRV(3),U,ACRP)
 W:ACRP=12 ?71,$P(ACRV(3),U,13)
 Q
SS ;DISPLAY COST DATA FOR EACH ITEM FOR EACH VENDOR
 D SSH
 N X,Y
 S ACRXREF=$S(ACRREFX=116&($P(^ACRDOC(ACRDOCDA,0),U,4)'=35):"C",ACRREFX=116&($P(^ACRDOC(ACRDOCDA,0),U,4)=35&($P($G(^ACROBL(ACRDOCDA,"APV")),U)'="A")):"C",1:"J")
 S (ACRSSDA,ACRTT1,ACRTT2,ACRTT3)=0
 F  S ACRSSDA=$O(^ACRSS(ACRXREF,ACRDOCDA,ACRSSDA)) Q:'ACRSSDA  D
 .S X=^ACRSS(ACRSSDA,"DT"),Y=$G(^ACRSS(ACRSSDA,2)),Z=+^ACRSS(ACRSSDA,0)
 .S ACRQUAN=$P(X,U)
 .S ACRUI=$P(X,U,2)
 .S ACRP1=$P(X,U,3)
 .S ACRT1=$P(X,U,4)
 .S ACRP2=$P(Y,U,4)
 .S ACRT2=ACRQUAN*ACRP2
 .S ACRP3=$P(Y,U,6)
 .S ACRT3=ACRQUAN*ACRP3
 .S ACRTT1=ACRTT1+ACRT1
 .S ACRTT2=ACRTT2+ACRT2
 .S ACRTT3=ACRTT3+ACRT3
 .W !,Z
 .W ?2,"|",$J(ACRQUAN,5)
 .W ?7,"|",$S($D(^ACRUI(+ACRUI,0)):$P(^(0),U),1:"**")
 .W ?11,"|",$J($FN(ACRP1,"P",2),10)
 .W ?22,"|",$J($FN(ACRT1,"P",2),11)
 .W ?34,"|",$J($FN(ACRP2,"P",2),10)
 .W ?45,"|",$J($FN(ACRT2,"P",2),11)
 .W ?57,"|",$J($FN(ACRP3,"P",2),10)
 .W ?68,"|",$J($FN(ACRT3,"P",2),11)
 W $$DASH^ACRFMENU
 W !,"ORDER AMT"
 W ?11,"|"
 W ?23,$J($FN(ACRTT1,"P",2),11)
 W ?34,"|"
 W ?46,$J($FN(ACRTT2,"P",2),11)
 W ?57,"|"
 W ?69,$J($FN(ACRTT3,"P",2),11)
 D PAUSE^ACRFWARN
 W @IOF
 K ACRT1,ACRT2,ACRT3,ACRTT1,ACRTT2,ACRTT3
 Q
SSH I IOSL-4<$Y D PAUSE^ACRFWARN W @IOF
 W !,"# | QTY |UI|UNIT COST |   TOTAL   |UNIT COST |   TOTAL   |UNIT COST |   TOTAL"
 W !,"--------------------------------------------------------------------------------"
 Q