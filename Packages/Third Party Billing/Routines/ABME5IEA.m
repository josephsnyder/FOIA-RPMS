ABME5IEA ; IHS/ASDST/DMJ - 837 IEA Segment 
 ;;2.6;IHS Third Party Billing System;**6**;NOV 12, 2009
 ;Interchange Control Header
 ;
START ;START HERE
 K ABMREC("IEA"),ABMR("IEA")
 S ABME("RTYPE")="IEA"
 D LOOP
 K ABME,ABM
 Q
LOOP ;LOOP HERE
 F I=10:10:30 D
 .D @I
 .I $D(^ABMEXLM("AA",+$G(ABMP("INS")),+$G(ABMP("EXP")),ABME("RTYPE"),I)) D @(^(I))
 .I $G(ABMREC("IEA"))'="" S ABMREC("IEA")=ABMREC("IEA")_"*"
 .S ABMREC("IEA")=$G(ABMREC("IEA"))_ABMR("IEA",I)
 Q
10 ;segment
 S ABMR("IEA",10)="IEA"
 Q
20 ;IEA01 - Number of Included Functional Groups
 S ABMR("IEA",20)=1
 Q
30 ;IEA02 - Interchange Contol Number
 S ABMR("IEA",30)=$$TCN^ABMERUTL(ABMPXMIT)
 S ABMR("IEA",30)=$$FMT^ABMERUTL(ABMR("IEA",30),"9NR")
 Q
