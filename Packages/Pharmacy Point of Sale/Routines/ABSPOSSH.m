ABSPOSSH ; IHS/SD/RLT - Special sets for formats - cont;      [ 7/11/2007  9:40 AM ]
 ;;1.0;PHARMACY POINT OF SALE;**23,29,39**;JUL 11, 2007;Build 15
 ;---
 ; New diagnosis code fields in clinical segment.
 ; Set logic for flds 491, 492 and 424 in this routine to 
 ; avoid the wrapping within the global which has been known to 
 ; split when installed on certain systems.
 ;---
FLD491 ;DIAGNOSIS CODE COUNT - called from set logic in ABSP NCPDP Field
 ;
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),490),U)=ABSP("X")
 ;
 Q
 ;
FLD492 ;DIAGNOSIS CODE QUALIFIER - called from set logic in ABSP NCPDP Field
 ;
 Q:$G(DIAG)=""  ;IHS/OIT/SCR 2/13/09 patch 29
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),491.01,DIAG,0),U,2)=ABSP("X")
 ;
 Q
 ;
FLD424 ;DIAGNOSIS CODE - called from set logic in ABSP NCPDP Field
 ;
 Q:$G(DIAG)=""  ;IHS/OIT/SCR 2/13/09 patch 29
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),491.01,DIAG,0),U,3)=ABSP("X")
 ;
 Q
 ;IHS/CNI/SCR 031710 patch 39 START CHANGES
 ;called from set logic in ABSP NCPDP Field Defs repeating field in the COB/Other Payments 5.1 Segment
FLD337 ; COB/Other Paymnts Count
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),330),U,7)=ABSP("X")
 S ^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,0)="^9002313.0401A^^"_ABSP("X")
 Q
FLD338 ; Other Payer Coverage Type
 Q:'$G(ABSPCOB)
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,ABSPCOB,0),U,2)=ABSP("X")
 Q
FLD339 ; Other Payer ID Qualifier
 Q:'$G(ABSPCOB)
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,ABSPCOB,0),U,3)=ABSP("X")
 Q
FLD340 ; Other Payer ID
 Q:'$G(ABSPCOB)
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,ABSPCOB,0),U,4)=ABSP("X")
 Q
FLD341 ; Other Amt Paid Cnt
 Q:'$G(ABSPCOB)
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,ABSPCOB,0),U,6)=ABSP("X")
 Q
FLD342 ; Other Payer Amt Paid Qual
 Q:'$G(COB)
 Q:$G(AMT)=""
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,ABSPCOB,1,AMT,0),U,2)=ABSP("X")
 Q
FLD431 ; OTHER PAYOR AMOUNT
 Q:'$G(ABSPCOB)
 Q:$G(AMT)=""
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,ABSPCOB,1,AMT,0),U,3)=ABSP("X")
 Q
FLD443 ; OTHER PAYOR DATE
 Q:'$G(ABSPCOB)
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,ABSPCOB,0),U,5)=ABSP("X")
 Q
FLD471 ; Other Payer Reject Count
 Q:'$G(COB)
 Q:$G(AMT)=""
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,COB,0),U,7)=ABSP("X")
 Q
FLD472 ; Other Payer Reject Code
 Q:'$G(COB)
 Q:$G(REJ)=""
 S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),337,COB,2,REJ,0),U,2)=ABSP("X")
 Q
 ;IHS/CNI/SCR 031710 patch 39 END CHANGES
