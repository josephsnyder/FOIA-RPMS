ABME5L4 ; IHS/ASDST/DMJ - Header 
 ;;2.6;IHS Third Party Billing;**6,8,10,11,13**;NOV 12, 2009;Build 213
 ;Header Segments
 ;IHS/SD/SDR - 2.6*13 - Added DTP segments for Initial Treatment Date and Acute Manifestation Date
 ;
START ;START HERE
 K ABMOUTLB
 S ABMLOOP="2300"
 D ^ABME5CLM
 D WR^ABMUTL8("CLM")
 S ABMP("PDFN")=$P(ABMB0,U,5)   ;Patient IEN
 ;I $P(ABMB8,U,6)'="" D  ;onset of current illness or symptom  ;abm*2.6*10 HEAT66142
 I $P(ABMB8,U,6)'="",($P(ABMB8,U,3)'="") D  ;onset of current illness or symptom  abm*2.6*10 HEAT66142
 .Q:$P(ABMB8,U,6)=$P(ABMB7,U)  ;IHS/SD/SDR 5/21/12 HEAT69623
 .Q:$P(ABMB8,U,6)=$P(ABMB6,U)  ;IHS/SD/AML 6/13/2012
 .D EP^ABME5DTP(431,"D8",$P(ABMB8,U,6))
 .D WR^ABMUTL8("DTP")
 ;start new code abm*2.6*13 exp mode 35 (454)
 I $P(ABMB8,"^",23) D
 .D EP^ABME5DTP(454,"D8",$P(ABMB8,"^",23))  ;Initial Treatment Date
 .D WR^ABMUTL8("DTP")
 ;end new code exp mode 35
 ;start new code abm*2.6*10 IHS/SD/AML HEAT79778
 I $P(ABMB9,"^",11) D
 .D EP^ABME5DTP(304,"D8",$P(ABMB9,"^",11))  ;Date last seen
 .D WR^ABMUTL8("DTP")
 .;end new code abm*2.6*10 IHS/SD/AML HEAT79778
 ;start new code abm*2.6*13 exp mode 35 (453)
 I $P(ABMB7,"^",27) D
 .D EP^ABME5DTP(453,"D8",$P(ABMB7,"^",27))  ;Acute Manifestation Date
 .D WR^ABMUTL8("DTP")
 ;end new code exp mode 35
 ;I $P(ABMB8,U,2) D  ;accident  ;abm*2.6*10 HEAT66142
 I $P(ABMB8,U,2),($P(ABMB8,U,3)'="") D  ;accident  ;abm*2.6*10 HEAT66142
 .D EP^ABME8DTP(439,"D8",$P(ABMB8,U,2))
 .D WR^ABMUTL8("DTP")  ;abm*2.6*8 HEAT40129 - Write DPT segment if accident occurs
 I $D(^ABMDBILL(DUZ(2),ABMP("BDFN"),51)) D
 .S ABMP("51IEN")=0,ABMP("LMDT")=""
 .F  S ABMP("51IEN")=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),51,ABMP("51IEN"))) Q:'ABMP("51IEN")  D  Q:($G(ABMP("LMDT"))'="")
 ..I $P($G(^ABMDCODE($P(^ABMDBILL(DUZ(2),ABMP("BDFN"),51,ABMP("51IEN"),0),U),0)),U)=10 D
 ...S ABMP("LMDT")=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),51,ABMP("51IEN"),0)),U,2)
 .I $G(ABMP("LMDT"))'="" D
 ..D EP^ABME5DTP(484,"D8",ABMP("LMDT"))
 ..D WR^ABMUTL8("DTP")
 I $P(ABMB9,U,13)'="" D
 .D EP^ABME5DTP(455,"D8",$P(ABMB9,U,13))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB7,"^",14) D
 .D EP^ABME5DTP(471,"D8",$P(ABMB7,"^",14))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB7,U,15)'=""&($P(ABMB7,U,16)'="") D
 .D EP^ABME5DTP(314,"RD8",$P(ABMB7,U,15),$P(ABMB7,U,16))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB7,U,15)'=""&($P(ABMB7,U,16)="") D
 .D EP^ABME5DTP(360,"D8",$P(ABMB7,U,15))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB7,U,15)=""&($P(ABMB7,U,16)'="") D
 .D EP^ABME5DTP(361,"D8",$P(ABMB7,U,16))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB7,U,17) D
 .D EP^ABME5DTP(297,"D8",$P(ABMB7,U,17))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB7,U,18) D
 .D EP^ABME5DTP(296,"D8",$P(ABMB7,U,18))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB6,U),($E(ABMP("BTYP"),1,2)=11) D
 .Q:$P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,4)="Y"&($E($G(ABMP("BTYP")),1,2)'="11")  ;dme billing
 .D EP^ABME8DTP(435,"D8",$P(ABMB6,U))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB6,"^",3),($E(ABMP("BTYP"),1,2)=11) D
 .D EP^ABME8DTP("096","D8",$P(ABMB6,"^",3))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB7,U,19) D
 .D EP^ABME5DTP("090","D8",$P(ABMB7,U,19))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB7,U,21) D
 .D EP^ABME5DTP("091","D8",$P(ABMB7,U,21))
 .D WR^ABMUTL8("DTP")
 I $P(ABMB7,U,22) D
 .D EP^ABME5DTP(444,"D8",$P(ABMB7,U,22))
 .D WR^ABMUTL8("DTP")
 I $D(^ABMDBILL(DUZ(2),ABMP("BDFN"),71)) D
 .K ABM71CNT
 .S ABM71IEN=0
 .F  S ABM71IEN=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),71,ABM71IEN)) Q:+ABM71IEN=0  D  Q:$G(ABM71CNT)=10
 ..D ^ABME8PWK,WR^ABMUTL8("PWK")
 ..S ABM71CNT=+$G(ABM71CNT)+1
 I $P(ABMB7,U,23) D
 .D EP^ABME5AMT("F5")
 .D WR^ABMUTL8("AMT")
 I ABMP("CLIN")=72 D  ;mammography
 .Q:$P($G(^ABMDPARM(ABMP("LDFN"),1,5)),U,4)=""  ;no cert#
 .D EP^ABME5REF("EW")
 .D WR^ABMUTL8("REF")
 I $P(ABMB5,U,11)'="" D
 .D EP^ABME5REF("9F")
 .D WR^ABMUTL8("REF")
 I $P(ABMB5,U,12)'="" D
 .D EP^ABME5REF("G1")
 .D WR^ABMUTL8("REF")
 I $P(ABMB4,U,9)'="" D
 .D EP^ABME5REF("F8")
 .D WR^ABMUTL8("REF")
 D ^ABMEHGRV
 S ABMCHK=0,ABMJ=0
 F ABMI=27,37,43 D
 .S ABMJ=-1
 .S ABMJ=$O(ABMRV(ABMI,ABMJ)) Q:ABMJ=""  D
 ..S ABMK=0
 ..F  S ABMK=$O(ABMRV(ABMI,ABMJ,ABMK)) Q:ABMK=""  D
 ...I $P(ABMRV(ABMI,ABMJ,ABMK),U,2)>79999,($P(ABMRV(ABMI,ABMJ,ABMK),U,2)<90000) S ABMCHK=1
 I ABMCHK=1 D
 .S ABMCLIA="CLM"
 .D EP^ABME5REF("X4","1CLM","1CLM")
 .D WR^ABMUTL8("REF")
 .K ABMCLIA,ABMCHK
 D EP^ABME5REF("EA")
 D WR^ABMUTL8("REF")
 I $D(^ABMDBILL(DUZ(2),ABMP("BDFN"),61))!($P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),10)),U)'="") D
 .D EP^ABME5NTE("ADD")
 .Q:$TR($G(ABMR("NTE",30))," ")=""  ;don't write NTE if no data except spaces
 .D WR^ABMUTL8("NTE")
 I ABMP("CLIN")="A3" D
 .D EP^ABME5CR1
 .D WR^ABMUTL8("CR1")
 I $P(ABMB7,U,24)'="" D
 .D EP^ABME5CR2
 .D WR^ABMUTL8("CR2")
 ;ambulance certification
 I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),12)),U,15)="Y",($D(^ABMDBILL(DUZ(2),ABMP("BDFN"),14))) D
 .D EP^ABME5CRC("AMB")
 .D WR^ABMUTL8("CRC")
 ;patient condition info:vision
 I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),8)),U,21)'="" D
 .D EP^ABME5CRC("VIS")
 .D WR^ABMUTL8("CRC")
 ;EPSDT Referral
 I $D(^ABMDBILL(DUZ(2),ABMP("BDFN"),59,0)) D
 .S ABMSPIEN=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),59,0))
 .Q:+ABMSPIEN=0
 .Q:$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),59,ABMSPIEN,0)),U,2)=""
 .D EP^ABME5CRC("EPSDT")
 .D WR^ABMUTL8("CRC")
 ;health care diagnosis code
 D DXSET^ABMUTL8(ABMP("BDFN"))
 ;D EP^ABME5HI("BZ")
 D EP^ABME5HI("BK")
 D WR^ABMUTL8("HI")
 ;anesthesia related procedure
 D ANES^ABMUTL8(ABMP("BDFN"))
 D EP^ABME5HI("BP")
 D WR^ABMUTL8("HI")
 ;condition information
 ;start old code abm*2.6*11 NOHEAT4
 ;D CDSET^ABMUTL8(ABMP("BDFN"))
 ;D EP^ABME8HI("BG")
 ;D WR^ABMUTL8("HI")
 ;end old code NOHEAT4
 Q
