ABME5L15 ; IHS/ASDST/DMJ - Header 
 ;;2.6;IHS Third Party Billing System;**6,8**;NOV 12, 2009
 ;Header Segments
 ;
EP ;START HERE
 S ABMLXCNT=0
 K ABM
 D ^ABMEHGRV
 S ABMI=0
 F  S ABMI=$O(ABMRV(ABMI)) Q:'+ABMI  D
 .S ABMJ=-1
 .F  S ABMJ=$O(ABMRV(ABMI,ABMJ)) Q:'+ABMJ  D
 ..S ABMK=0
 ..F  S ABMK=$O(ABMRV(ABMI,ABMJ,ABMK))  Q:'+ABMK  D
 ...D LOOP
 K ABMI,ABMJ,ABMK
 Q
 ;
LOOP ;
 Q:$P(ABMRV(ABMI,ABMJ,ABMK),U,2)=""
 S ABMLXCNT=ABMLXCNT+1
 S ABMLOOP=2400
 D EP^ABME5LX
 D WR^ABMUTL8("LX")
 D EP^ABME5SV3
 D WR^ABMUTL8("SV3")
 I $P(ABMRV(ABMI,ABMJ,ABMK),U,23)'=""!($P(ABMRV(ABMI,ABMJ,ABMK),U,24)'="") D
 .D ^ABME5TOO
 .D WR^ABMUTL8("TOO")
 I $P(ABMRV(ABMI,ABMJ,ABMK),U,10)'=$P(ABMB7,U) D
 .Q:'$P(ABMRV(ABMI,ABMJ,ABMK),U,10)
 .D EP^ABME5DTP(472,"D8",$P(ABMRV(ABMI,ABMJ,ABMK),U,10))
 .D WR^ABMUTL8("DTP")
 D EP^ABME5REF("6R","")   ;line item control number
 D WR^ABMUTL8("REF")
 ;
 ; Loop 2420A - Rendering Physician
 I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,13) D
 .S ABM("PRV")=$P(ABMRV(ABMI,ABMJ,ABMK),U,13)
 .Q:ABM("PRV")=$O(ABMP("PRV","R",0))
 .Q:$D(ABMP("PRV","A",ABM("PRV")))!($D(ABMP("PRV","R",ABM("PRV"))))  ;abm*2.6*8
 .D EP^ABME5NM1(82,ABM("PRV"))
 .D WR^ABMUTL8("NM1")
 .;D EP^ABME5PRV("PE",ABM("PRV"))
 .;D WR^ABMUTL8("PRV")
 .;I ABMNPIU="N" D
 .;.Q:((ABMRCID="99999")!(ABMRCID="AHCCCS866004791"))  ;AZ Medicaid
 .;.D EP^ABME5REF("EI",9999999.06,DUZ(2))
 .;.D WR^ABMUTL8("REF")
 .I ABMNPIU'="N" D
 ..D EP^ABME5REF(ABMP("RTYPE"),200,ABM("PRV"))
 ..D WR^ABMUTL8("REF")
 ;
 ; Loop 2420C - Supervising Provider
 I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,21) D
 .S ABM("PRV")=$P(ABMRV(ABMI,ABMJ,ABMK),U,21)
 .Q:ABM("PRV")=$O(ABMP("PRV","S",0))
 .D EP^ABME5NM1("DQ",ABM("PRV"))
 .D WR^ABMUTL8("NM1")
 .I ABMNPIU'="N" D
 ..D EP^ABME5REF(ABMP("RTYPE"),200,ABM("PRV"))
 ..D WR^ABMUTL8("REF")
 Q