ACRFPAY9 ;IHS/OIRM/DSD/THL,AEF - PAYMENT REPORTS, UTILITIES;  [ 09/23/2005  9:51 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**5,19**;NOV 05, 2001
 ;;
TECHPAY ;EP;TO PRINT PAYMENTS MADE BY ONE ACCOUNTING TECH
 D TPEXIT
 F  D TP Q:$D(ACRQUIT)!$D(ACROUT)
TPEXIT K ACR,ACRTDA,ACRQUIT,ACROUT,ACRBEGIN,ACROUT,ACRFY,ACRFYDA,ACRBATDA,ACRBATNO,ACREND,ACRRTN
 K ^TMP("ACRPBAT",$J)
 Q
TP ;
 D TPHEAD
 D TECH
 Q:$D(ACRQUIT)!'$G(ACRTDA)
 D FY
 Q:$D(ACRQUIT)!'$G(ACRFYDA)
 D DATES
 Q:$D(ACRQUIT)!'$G(ACRBEGIN)!'$G(ACREND)
 D ZIS
 Q
TECH ;LOOK UP ACCOUNTING TECH
 S DIC="^ACRAU("
 S DIC(0)="AEMQZ"
 S DIC("A")="Which ACCOUNTING TECH: "
 S DIC("S")="I $D(^AFSLAFP(""D"",+Y))"
 W !
 D DIC^ACRFDIC
 I Y<1 S ACRQUIT=""
 S ACRTDA=+Y
 Q
FY ;SELECT FISCAL YEAR FOR REPORT
 S DIR(0)="NO^1000:9999"
 S DIR("A")="Which FISCAL YEAR"
 S DIR("B")=$S($E(DT,4,5)<10:$E(DT,1,3)+1700,1:($E(DT,1,3)+1)+1700)
 W !
 D DIR^ACRFDIC
 Q:Y=""
 S ACRFY=Y
 S ACRFYDA=$O(^AFSLAFP("B",ACRFY,0))
 Q
DATES ;SELECT DATE RANGE FOR PAYMENTS TO REVIEW
 W !
 D ^ACRFDATE
 Q
ZIS ;SELECT DEVICE TO PRINT REPORT
 S (ZTRTN,ACRRTN)="TP1^ACRFPAY9"
 S ZTDESC="REVIEW PAYMENTS FOR SELECTED TECH"
 D ^ACRFZIS
 Q
TP1 ;EP;TO PRINT TECH PAYMENTS REPORT
 Q:'$G(ACRFYDA)!'$G(ACRTDA)
 N ACRBATDA
 S ACRBATDA=0
 F  S ACRBATDA=$O(^AFSLAFP("D",ACRTDA,ACRFYDA,ACRBATDA)) Q:'ACRBATDA  D
 .Q:$P($G(^AFSLAFP(ACRFYDA,1,ACRBATDA,2)),U,2)<ACRBEGIN  Q:$P(^(2),U,2)>ACREND
 .N ACRSEQDA
 .S ACRSEQDA=0
 .F  S ACRSEQDA=$O(^AFSLAFP("D",ACRTDA,ACRFYDA,ACRBATDA,ACRSEQDA)) Q:'ACRSEQDA  D
 ..S X=$G(^AFSLAFP(ACRFYDA,1,ACRBATDA,1,ACRSEQDA,0))
 ..Q:'$P(X,U,10)&'$P(X,U,24)
 ..I $P(X,U,10) S X=$P($G(^AUTTVNDR($P(X,U,10),0)),U)
 ..;E  S:$P(X,U,24) X=$P($G(^VA(200,$P(X,U,24),0)),U)  ;ACR*2.1*19.02 IM16848
 ..E  S:$P(X,U,24) X=$$NAME2^ACRFUTL1($P(X,U,24))  ;ACR*2.1*19.02 IM16848
 ..Q:X=""
 ..S ^TMP("ACRPBAT",$J,ACRFYDA,ACRBATDA,X,ACRSEQDA)=""
 S ACRBATDA=0
 F  S ACRBATDA=$O(^TMP("ACRPBAT",$J,ACRFYDA,ACRBATDA)) Q:'ACRBATDA!$D(ACRQUIT)  D
 .S ACRBATNO=$P(^AFSLAFP(ACRFYDA,1,ACRBATDA,0),U)
 .D PBHEAD^ACRFPAY7
 .N ACRX
 .S ACRX=""
 .F  S ACRX=$O(^TMP("ACRPBAT",$J,ACRFYDA,ACRBATDA,ACRX)) Q:ACRX=""!$D(ACRQUIT)  D
 ..S ACRSEQDA=0
 ..F  S ACRSEQDA=$O(^TMP("ACRPBAT",$J,ACRFYDA,ACRBATDA,ACRX,ACRSEQDA)) Q:'ACRSEQDA!$D(ACRQUIT)  D PBD1^ACRFPAY7
 D TPEXIT
 Q
TPHEAD ;
 W @IOF
 W !?10,"Review Payments for a Selected Accounting Tech",!
 Q
PTYPE ;EP;SELECT PAYMENT TYPE
 S DIC="^AFSLPTYP("
 S DIC(0)="AEMQZ"
 S DIC("A")="PAYMENT TYPE........: "
 S DIC("B")=$S(ACRBTYP="V"&$G(ACRDFYDA):"OBLIGATED PMT",ACRBTYP="V"&'$G(ACRDFYDA):"UNOBLIGATED PAYMENT (19013)",1:"TRAVEL DISBRSMENT")
 D DIC^ACRFDIC
 I X["^" S ACROUT="" Q
 I +Y<1 W !!,"PAYMENT TYPE REQUIRED",! G PTYPE
 S (ACR3,Y)=+Y
 S ACRTCODE=$S(Y=2:"06115",Y=3:24219,Y=6:"06125",Y=11:19217,Y=12:19917,Y=14:19817,Y=15:19013,Y=16:23717,1:19114)   ;ACR*2.1*5.01
 I ACRTCODE="06115" D OTA          ;ACR*2.1*5.01
 Q
OTA ;EP;SYNCHRONIZE TRAVEL ADVANCE
 S ACRREF=602
 S ACRREFDA=$O(^AUTTDOCR("B",602,0))
 N ACRDOCDA
 S ACRDOCDA=$O(^ACRDOC("B",ACRDOC,0))
 Q:'ACRDOCDA
 S ACRADV=ACRIVT
 D OTA^ACRFSSA1
 Q
FYFUN ;EP;FISCAL YEAR OF FUNDS
 K ACRFY
 S DIR(0)="NO^1000:9999"
 S DIR("A")="FISCAL YEAR OF FUNDS"
 S DIR("B")=$S($E(DT,4,5)<10:$E(DT,1,3)+1700,1:($E(DT,1,3)+1)+1700)
 D DIR^ACRFDIC
 I X["^" S ACROUT="" Q
 I $L(Y)'=4 W !!,"FISCAL YEAR OF FUNDS REQUIRED",! G FYFUN
 S ACRFYFUN=Y
 S $P(ACRLBDT,U)=ACRFYFUN
 Q
