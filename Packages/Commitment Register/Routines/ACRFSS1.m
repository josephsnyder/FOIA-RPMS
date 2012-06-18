ACRFSS1 ;IHS/OIRM/DSD/THL,AEF - ACRFSS CON'T;  [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;CONTINUATION OF ACRFSS
EDIT ;EP;TO SELECT REQUEST ITEM TO EDIT
 N ACRI,ACRY
 I ACRJ=1 D  Q
 .S Y=1
 .D EDIT1
 S DIR(0)="LO^1:"_ACRSJ
 S DIR("A")="Which Item(s)"
 W !
 D DIR^ACRFDIC
 I $D(ACRQUIT)!$D(ACROUT) K ACRQUIT Q
EDIT1 S ACRY=Y
 F ACRI=1:1 S X=$P(ACRY,",",ACRI) Q:X=""  D ED1:$D(ACRSS(X))
 K ACR25
 Q
ED1 W !!?21,"Item NO. ",X
 S ACRSSDA=+ACRSS(X)
 I $P(^ACRSS(ACRSSDA,0),U,12),$P($G(^ACRITEM($P(^(0),U,12),"DT")),U,9) S ACRSTOCK=""
 N ACRDR
 S ACRDR="[ACR NON-STANDARD ITEM-2]"
 I ACRREFX=116,$P(^ACRDOC(ACRDOCDA,0),U,4)=36!($P(^(0),U,4)=37) D
 .S ACRDR="[ACR SUPPLY/SERVICES-CONTRACT]"
 I $G(ACRAPVT)=31!($G(ACRAPVT)=6) S ACRSSDR="[ACR PROPERTY CLEARANCE]"
 D EDIE
 D CHECK1^ACRFWARN:$D(ACRTXLIM)&$D(ACRCHK)
 K ACRSTOCK
 Q
ADD ;EP;TO ADD NEW ITEM TO REQUEST
 D FILE^ACRFDIC
 S ACRSSDA=+Y
 S ACRNEWSS=""
 S DIE("NO^")=""
 I $D(ACRSSDR) N ACRDR S ACRDR=ACRSSDR
 D EDIE
 K ACRNEWSS
 Q:'$D(ACRSSDA)
 S ACRVENDA=+$G(^ACRSS(ACRSSDA,"VND"))
 Q
ADD2 ;EP;
 S ACRCANDA=$P(^ACRLOCB($P(ACRDOC0,U,6),"DT"),U,9)
 S ACROCDA=$P(ACROBLDT,U,3)
 S X=ACRJ+1
 S (DIC,DIE)="^ACRSS("
 S DIC(0)="AELQZ"
 S DIC("DR")=".02////"_ACRDOCDA_";.03////"_ACRDOCDA_";.04////"_$S(ACROCDA:ACROCDA,1:"")_";.05////"_ACRCANDA_";.2////"_ACRDOCDA_";20////"_ACRDOCVN
 I $G(ACRCANDA),'$D(ACRFDNCA) S ACRFDNCA=$P(^AUTTCAN(ACRCANDA,0),U)
 I $D(ACRXX) D
 .S DIC("DR")=DIC("DR")_";1////"_ACRXX
 .S ACRCAN=$S($D(ACRCAN):ACRCAN,1:ACRFDNCA)
 N ACRDR
 S ACRDR=".05T;.04T"
 I ACRREFX=116,$P(^ACRDOC(ACRDOCDA,0),U,4)=36!($P(^(0),U,4)=37) D
 .S ACRDR=".06T;.04T"
 D ADD
 Q
ADD1 ;EP;
 S ACRCANDA=$P(^ACRLOCB($P(ACRDOC0,U,6),"DT"),U,9)
 S X=ACRJ
 S ACRITMNO=Y(0,0)
 N ACRY
 S ACRY=^ACRITEM(ACRITMDA,"DT")
 S ACRDSC=$G(^ACRITEM(ACRITMDA,"DT2"))
 S ACRDSC1=$P(ACRY,U)
 S ACRDSC2=$P(ACRY,U,2)
 S ACRNSN=$P(ACRY,U,4)
 S ACROCDA=$P(ACRY,U,6)
 S ACRVENON=$P($G(^ACRITEM(ACRITMDA,"DT1")),U,2)
 S ACRNDC=$P($G(^ACRITEM(ACRITMDA,"DT1")),U,4)
 S ACRUI=$P(ACRY,U,12)
 S ACRUC=$P(ACRY,U,13)
 S ACRVENDA=$P(ACRY,U,14)
 S:ACRDSC1[";" ACRDSC1=$TR(ACRDSC1,";",",")
 S:ACRDSC2[";" ACRDSC2=$TR(ACRDSC2,";",",")
 S:$P(ACRY,U,17)="8" ACRUC=ACRUC*1.035,ACRSC="8"
 S ACRNEW=""
 S DIC="^ACRSS("
 S DIC(0)="L"
 S DIC("DR")=".02////"_ACRDOCDA_";.03////"_ACRDOCDA_";.04////"_ACROCDA_";.05////"_ACRCANDA_";.12////"_ACRITMDA_";.2////"_ACRDOCDA
 S DIC("DR")=DIC("DR")_";1////"_ACRVENON_";2////"_ACRNSN_";3////"_ACRNDC_";11////"_ACRUI_";12////"_ACRUC_";21////"_ACRVENON_";20////"_ACRVENDA_";100////"_ACRDSC1_";101////"_ACRDSC2
 S:$P(ACRY,U,17)="C" DIC("DR")=DIC("DR")_";19////"_ACRSC
 I $G(ACRCANDA),'$D(ACRFDNCA) S ACRFDNCA=$P(^AUTTCAN(ACRCANDA,0),U)
 S ACRCAN=$S($D(ACRCAN):ACRCAN,1:ACRFDNCA)
 D ADD
 Q
EDIE ;EP;TO EDIT AN ITEM ON A REQUEST
 S ACRTXDA=$P(ACRDOC0,U,4)
 I $P(^ACRSS(ACRSSDA,0),U,12)]"" D
 .W @IOF
 .W !?20,"INFORMATION FOR SELECTED "
 .W !?20,@ACRON,"SERVICE OR SUPPLY",@ACROF
 .W !!
 .D SSDISP
 D NOW^%DTC
 S ACRNOW=%
 I $D(ACRNEW) D  I $D(ACRQUIT) K ACRQUIT Q
 .K ACRNEW
 .W !!?10,ACRX," ",@ACRON,"ARE",@ACROF," on file."
 .S DIR(0)="YO"
 .S DIR("A")="          Add it to this request"
 .S DIR("B")="YES"
 .W !
 .D DIR^ACRFDIC
 .I Y'=1 D
 ..S DA=ACRSSDA
 ..S DIK="^ACRSS("
 ..D DIK^ACRFDIC
 ..K ACRSSDA
 ..S ACRQUIT=""
 I $G(ACRCANDA),'$D(ACRFDNCA) S ACRFDNCA=$P(^AUTTCAN(ACRCANDA,0),U)
 S ACRCAN=$S($D(ACRCAN):ACRCAN,1:ACRFDNCA)
 S DA=ACRSSDA
 S DIE="^ACRSS("
 S DR=$S($D(ACRSSDR):ACRSSDR,1:ACRDR)
DIE1 S:$D(ACRNEWSS) DIE("NO^")=""
 S ACRDDIE="SSDISP^ACRFSS1"
 S ACRMESS="ITEM NO. "_$P(^ACRSS(DA,0),U)
 D SCREEN^ACRFAU:DR'="[ACR PROPERTY CLEARANCE]"
 D:'$D(ACRSCREN) DIE^ACRFDIC
 I '$D(ACRSSDR) D
 .S DA=ACRSSDA
 .S DIE="^ACRSS("
 .S DR=$S(ACRTXDA=36!(ACRTXDA=37):"[ACR SUPPLY/SERVICES-CONTRACT]",ACRTXDA'=35:"[ACR SUPPLY/SERVICES INFO-2]",1:"[ACR CREDIT CARD ITEM]")
 .F  D ^ACRFESS Q:$D(ACRQUIT)!$D(ACROUT)
 .K ACRQUIT
 K ACRSSDR,ACRDDIE,ACRMESS
 D SSCHK^ACRFSSA
 S:'$D(ACRSSTOT) ACRSSTOT=0
 S ACRSSTOT=ACRSSTOT+$P(^ACRSS(ACRSSDA,"DT"),U,4)
 S DA=ACRSSDA
 S DIE="^ACRSS("
 S DR="14////"_$P(^ACRSS(ACRSSDA,"DT"),U)
 D DIE^ACRFDIC
 I $G(ACRITMDA),'$P($G(^ACRDOC(ACRDOCDA,"PO")),U,5),+$G(^ACRITEM(ACRITMDA,"DT1")) D
 .S DIE="^ACRDOC("
 .S DA=ACRDOCDA
 .S DR="103070////"_+^ACRITEM(ACRITMDA,"DT1")
 .D DIE^ACRFDIC
 Q
SSDISP W @IOF
 N DXS,DIP,DC,D0,DN
 S D0=ACRSSDA
 D ^ACRPII
 Q
