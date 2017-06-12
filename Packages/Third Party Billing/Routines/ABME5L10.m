ABME5L10 ; IHS/ASDST/DMJ - Header 
 ;;2.6;IHS Third Party Billing System;**6,8,10,11,19**;NOV 12, 2009;Build 300
 ;Header Segments
 ;IHS/SD/SDR - 2.6*19 - HEAT116949 - Include LIN segment in 837I if line item has an NDC.
 ;
EP ;START HERE
 S ABMLXCNT=0
 K ABM
 D FRATE^ABMDF11
 D ^ABMERGRV
 S ABMI=""
 F  S ABMI=$O(ABMRV(ABMI)) Q:ABMI=""  D
 .Q:ABMI=9999
 .S ABMJ=-1
 .F  S ABMJ=$O(ABMRV(ABMI,ABMJ)) Q:ABMJ=""  D
 ..S ABMK=0
 ..F  S ABMK=$O(ABMRV(ABMI,ABMJ,ABMK)) Q:ABMK=""  D
 ...D LOOP
 K ABMI,ABMJ,ABMK
 Q
 ;
LOOP ;
 ; Loop 2400 - Service Line Number
 S ABMLOOP=2400
 S ABMLXCNT=ABMLXCNT+1
 D EP^ABME5LX
 D WR^ABMUTL8("LX")
 D EP^ABME5SV2
 D WR^ABMUTL8("SV2")
 I $P(ABMRV(ABMI,ABMJ,ABMK),U,10) D
 .D EP^ABME5DTP("472","D8",$P(ABMRV(ABMI,ABMJ,ABMK),U,10))
 I '$P(ABMRV(ABMI,ABMJ,ABMK),U,10) D
 .D EP^ABME5DTP(472,"D8",$P(ABMB7,U))
 D WR^ABMUTL8("DTP")
 ;D EP^ABME5REF("6R","")   ;line item control number  ;abm*2.6*11 HEAT92070
 ;D WR^ABMUTL8("REF")  ;abm*2.6*11 HEAT92070
 ;start new code abm*2.6*11 HEAT92070
 I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,38)'="" D
 .D EP^ABME5REF("6R","")
 .D WR^ABMUTL8("REF")   ;line item control number
 ;end new code HEAT92070
 ;
 ; Loop 2410 - Drug Identification
 S ABMLOOP=2410
 ;I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,14)'="" D  ;abm*2.6*10 HEAT72307
 ;I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,13)'="" D  ;abm*2.6*10 HEAT72307  ;abm*2.6*10 HEAT78446
 ;I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,28)'="" D  ;abm*2.6*10 HEAT72307  ;abm*2.6*10 HEAT78446  ;abm*2.6*19 HEAT116949
 S NDC=$P($P(ABMRV(ABMI,ABMJ,ABMK),U,9)," ")  ;abm*2.6*19 HEAT116949
 S NDC=$TR(NDC,"-") I ($L(NDC)'=10&($L(NDC)'=11)) Q  ;abm*2.6*19 HEAT116949
 I NDC D  ;abm*2.6*19 HEAT116949
 .I $P($P(ABMRV(ABMI,ABMJ,ABMK),U,9)," ")'="" D
 ..D EP^ABME5LIN
 ..D WR^ABMUTL8("LIN")
 .I +$P(ABMRV(ABMI,ABMJ,ABMK),U,5) D
 ..D EP^ABME5CTP
 ..D WR^ABMUTL8("CTP")
 .;start old abm*2.6*19 HEAT116949
 .;D EP^ABME5REF("XZ",$P(ABMRV(ABMI,ABMJ,ABMK),U,14))
 .;D WR^ABMUTL8("REF")
 .;end old start new abm*2.6*19 HEAT116949
 .I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,14)'="" D
 ..D EP^ABME5REF("XZ",$P(ABMRV(ABMI,ABMJ,ABMK),U,14))
 ..D WR^ABMUTL8("REF")
 ;end new abm*2.6*19 HEAT116949
 ;
 ; Loop 2420A - Operating Physician Name
 S ABMLOOP="2420A"
 I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,16) D
 .S ABM("PRV")=$P(ABMRV(ABMI,ABMJ,ABMK),U,16)
 .Q:ABM("PRV")=$O(ABMP("PRV","O",0))
 .D EP^ABME5NM1("72")
 .D WR^ABMUTL8("NM1")
 .I ABMNPIU="N" D
 ..D EP^ABME5REF("EI",9999999.06,DUZ(2))
 ..D WR^ABMUTL8("REF")
 .I ABMNPIU'="N" D
 ..D EP^ABME5REF(ABMP("RTYPE"),200,ABM("PRV"))
 ..D WR^ABMUTL8("REF")
 ;
 ; Loop 2420C - Other Physician Name
 I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,18) D
 .S ABM("PRV")=$P(ABMRV(ABMI,ABMJ,ABMK),U,18)
 .Q:ABM("PRV")=$O(ABMP("PRV","T",0))
 .D EP^ABME5NM1("73")
 .D WR^ABMUTL8("NM1")
 .I ABMNPIU="N" D
 ..D EP^ABME5REF("EI",9999999.06,DUZ(2))
 ..D WR^ABMUTL8("REF")
 .I ABMNPIU'="N" D
 ..D EP^ABME5REF(ABMP("RTYPE"),200,ABM("PRV"))
 ..D WR^ABMUTL8("REF")
 ;
 ; Loop 2420D - Referring Physician Name
 I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,17) D
 .S ABM("PRV")=$P(ABMRV(ABMI,ABMJ,ABMK),U,17)
 .Q:ABM("PRV")=$O(ABMP("PRV","F",0))
 .D EP^ABME5NM1("DN")
 .D WR^ABMUTL8("NM1")
 .I ABMNPIU="N" D
 ..D EP^ABME5REF("EI",9999999.06,DUZ(2))
 ..D WR^ABMUTL8("REF")
 .I ABMNPIU'="N" D
 ..D EP^ABME5REF(ABMP("RTYPE"),200,ABM("PRV"))
 ..D WR^ABMUTL8("REF")
 ;
 ; Loop 2430 - Line Adjudication Information
 Q
