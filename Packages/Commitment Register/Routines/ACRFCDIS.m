ACRFCDIS ;IHS/OIRM/DSD/THL,AEF - CALCULATE STATUS OF FUNDS; [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;ROUTINE TO CALCULATE THE STATUS OF FUNDS
EN ;EP;TO CALCULATE THE STATUS OF FUNDS
 D EN1
EXIT K ACR,ACRX,ACRY,ACRI,ACRJ
 Q
EN1 D SELECT
 Q:$D(ACRQUIT)!$D(ACROUT)
 D REPORT
 Q:$D(ACRQUIT)!$D(ACROUT)
 S ACRSSDA=0
 F  S ACRSSDA=$O(^ACRSS(ACRXREF,ACRDA,ACRSSDA)) Q:'ACRSSDA  D
 .N X,Y
 .S X=^ACRSS(ACRSSDA,0)
 .S Y=^ACRSS(ACRSSDA,"DT")
 .S ACRCANDA=$P(X,U,5)
 .S ACROBJDA=$P(X,U,4)
 .S ACRLBDA=$P(X,U,X)
 .S ACR(2)=$P(Y,U,4)
 .S ACR(1)=$P(Y,U,9)
 .S ACRCAN=$P(^AUTTCAN(ACRCANDA,0),U)
 .S ACROBJ=$P(^AUTTOBJC(ACROBJDA,0),U)
 .S ACRFY=$P(^ACRLOCB(ACRLBDA,"DT"),U)
 .S ACRGREF="^TMP(""ACRSOF"","_ACRFY_","_ACRCAN_","_ACROBJ_")"
 .S:'$D(@ACRGREF) @ACRGREF=0
 .F ACR=1,2 S $P(@ACRGREF,U,ACR)=$P(@ACRGREF,U,ACR)+ACR(ACR)
 Q
SELECT ;SELECT ACCOUNT LEVEL FOR SOF REPORT
 S DIR(0)="SO^1:CAN NO.;2:DEPARTMENT ACCOUNT;3:SUB-ALLOWANCE",DIR("A")="Which summary",DIR("B")="DEPARTMENT ACCOUNT"
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)
 S ACRY=+Y
 S ACRXREF=$S(Y=1:"CAN",Y=2:"LB",1:"SA")
 S ACRDA=$S(Y=1:ACRCANDA,1:ACRLBDA)
 Q
REPORT ;SELECT TYPE OF REPORT
 S DIR(0)="SO^1:SUMMARY;2:DETAIL",DIR("A")="Which report",DIR("B")="SUMMARY"
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)
 S ACRSUM=+Y
 Q
