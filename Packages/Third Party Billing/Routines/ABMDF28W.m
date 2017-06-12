ABMDF28W ; IHS/ASDST/DMJ - PRINT UB-04 ;   
 ;;2.6;IHS 3P BILLING SYSTEM;**8,20**;NOV 12, 2009;Build 317
 ;
 ; IHS/SD/SDR - v2.5 p12 - IM24881 - Form alignment changes
 ;
 ;IHS/SD/SDR 2.6*20 - HEAT270943 - If the provider doesn't have a NPI it will print the facility NPI as the default.
 ; *********************************************************************
 ;
 Q
 ;
WRT ; EP
 ; Write data element in requested format
 S ABMTAB=+$P(ABMDE,"^",2)+ABMP("LM")
 I $P(ABMDE,"^",3)["R" S $P(ABMDE,"^")=$J($P(ABMDE,"^"),+$P(ABMDE,"^",3))
 S ABMDE=$E($P(ABMDE,"^"),1,+$P(ABMDE,"^",3))
 S:ABMTAB+$L(ABMDE)>IOM ABMDE=$E(ABMDE,1,IOM-ABMTAB)
 W ?ABMTAB,ABMDE
 Q
 ;
TEST ; EP
 ; Test Alignment
 S ABMP("LM")=$P(^ABMDEXP(28,0),"^",2)
 N I
 F I=1:1:4 D
 .W !
 .S ABMDE="XXXXX BLOCK 1 LINE "_I_" XXXXX"_"^^25"
 .D WRT
 .I I=2 D
 ..S ABMDE="XXXXXXXXXXXXXXXXXXXXX"_"^53^20"
 ..D WRT
 ..S ABMDE="XXX"_"^77^4"
 ..D WRT
 ..Q
 N I
 F I=1:1:14 W !
 S ABMDE="0100 ALL INCL ROOM & BOARD/ANC"_"^^29"
 D WRT
 S ABMDE="450.00 ^30^9R"
 D WRT
 S ABMDE=3_"^52^7R"
 D WRT
 S ABMDE=135000_" ^60^10R"
 D WRT
 W $$EN^ABMVDF("IOF")
 Q
 ;
PROV ;EP - PROVIDER INFORMATION
 ;  ABM("PRV",#) = UPIN/MCD #_Provider Name ^ UPIN/MCD# ^
 ;                 Provider State License Number ^ NPI
 S ABMPCNT=1                ; Initialize Provider Count
 S ABMPRVTP="A"
 S ABMPRVNO=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C","A",0))
 D GETPROV
 S ABMPCNT=2
 S ABMPRVTP="O"
 S ABMPRVNO=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C","O",0))
 D GETPROV
 F ABMPRVTP="R","T","F","S","P" D
 .S ABMPRVNO=0             ; Initialize Provider number
 .F  S ABMPRVNO=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C",ABMPRVTP,ABMPRVNO)) Q:'ABMPRVNO  D
 ..Q:+$G(ABMPRVNO)=0
 ..S ABMPCNT=ABMPCNT+1
 ..Q:ABMPCNT>4             ; only 1st 4 providers
 ..D GETPROV
 Q
GETPROV ;
 ; NEW PERSON file IEN
 Q:+$G(ABMPRVNO)=0
 S ABMPRV=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,ABMPRVNO,0)),U)
 S ABM("PRV",ABMPCNT)=$P($G(^VA(200,ABMPRV,0)),U)  ;provider name
 ;I $P($$NPI^XUSNPI("Individual_ID",ABMPRV),U)>0 D  ;abm*2.6*20 IHS/SD/SDR HEAT270943
 I (($P($$NPI^XUSNPI("Individual_ID",ABMPRV),U)>0)!($P($$NPI^XUSNPI("Organization_ID",ABMP("LDFN")),U)>0)) D  ;abm*2.6*20 IHS/SD/SDR HEAT270943
 .S $P(ABM("PRV",ABMPCNT),U,4)=$S(ABMPRVTP="F":"DN",ABMPRVTP="R":82,1:"ZZ")
 .;S $P(ABM("PRV",ABMPCNT),U,4)=$P(ABM("PRV",ABMPCNT),U,4)_"#"_$P($$NPI^XUSNPI("Individual_ID",ABMPRV),U)  ;abm*2.6*20 IHS/SD/SDR HEAT270943
 .S $P(ABM("PRV",ABMPCNT),U,4)=$P(ABM("PRV",ABMPCNT),U,4)_"#"_$S($P($$NPI^XUSNPI("Individual_ID",ABMPRV),U)>0:$P($$NPI^XUSNPI("Individual_ID",ABMPRV),U),1:$P($$NPI^XUSNPI("Organization_ID",ABMP("LDFN")),U))  ;abm*2.6*20 IHS/SD/SDR HEAT270943
 S $P(ABM("PRV",ABMPCNT),U,2)=""
 ; If Medicare FI, find provider UPIN
 I ABMP("ITYPE")="R" D
 .S ABMUPIN=$P($G(^VA(200,ABMPRV,9999999)),"^",8)
 .S:ABMUPIN="" ABMUPIN="PHS000"
 .S $P(ABM("PRV",ABMPCNT),U,2)=ABMUPIN
 ;If Medicaid FI, get MCD Number
 I ABMP("ITYPE")="D"!(ABMP("ITYPE")="K") D
 .S $P(ABM("PRV",ABMPCNT),U,2)=$P($G(^VA(200,ABMPRV,9999999.18,+ABMP("INS"),0)),U,2)
 .S:$P(ABM("PRV",ABMPCNT),U,2)="" $P(ABM("PRV",ABMPCNT),U,2)=$P($G(^VA(200,ABMPRV,9999999)),U,7)
 S ABMVST=$P($G(^AUTTLOC(+ABMP("LDFN"),0)),"^",23)  ; state IEN
 S:ABMVST="" ABMVST=$P($G(^AUTTLOC(+ABMP("LDFN"),0)),"^",14)
 S ABMP("RTYPE")=$S(ABMP("ITYPE")="R":"1G",ABMP("ITYPE")="D":"1D",$P($G(^ABMNINS(ABMDUZ2,ABMP("INS"),1,ABMP("VTYP"),1)),U)'="":$P($G(^ABMREFID($P($G(^ABMNINS(ABMDUZ2,ABMP("INS"),1,ABMP("VTYP"),1)),U),0)),U),1:"0B")
 D ABMPNUM(ABMP("RTYPE"),ABMPRV)
 Q:$G(ABMR("REF",30))=""  ;abm*2.6*8 HEAT39389
 I $P($G(^AUTNINS(ABMP("INS"),0)),U)="ARKANSAS MEDICAID" S ABMP("RTYPE")="0B"
 I $P($G(^AUTNINS(ABMP("INS"),0)),U)="IOWA MEDICAID"!($P($G(^AUTNINS(ABMP("INS"),0)),U)="NEBRASKA MEDICAID") S ABMP("RTYPE")="  "
 S $P(ABM("PRV",ABMPCNT),U,3)=ABMP("RTYPE")_"#"_$S($P(ABM("PRV",ABMPCNT),U,2)'="":$P(ABM("PRV",ABMPCNT),U,2),1:$S(ABMR("REF",30)["-":$P(ABMR("REF",30),"-",2),1:ABMR("REF",30)))  ;Qualifier and Other Provider number
 Q
ABMPNUM(X,Y) ;
 ;x=type
 ;y=provider
 S ABMEIC=X
 S ABMIEN=Y
 I ABMEIC="1C" D
 .S ABMR("REF",30)=$$MCR^ABMEEPRV(ABMIEN)
 .Q:$$RCID^ABMUTLP(ABMP("INS"))'="C00900"
 .Q:$$RCID^ABMUTLP(ABMP("INS"))'="04402"
 .S ABMR("REF",30)=$$NPI^ABMEEPRV(ABMIEN,ABMP("LDFN"),ABMP("INS"))
 I ABMEIC="1D" D
 .S ABMR("REF",30)=$$MCD^ABMEEPRV(ABMIEN,+$G(ABMPAYER))
 I ABMEIC="0B" D
 .S ABMR("REF",30)=$$SLN^ABMEEPRV(ABMIEN)
 I ABMEIC="1G" D
 .S ABMR("REF",30)=$$UPIN^ABMEEPRV(ABMIEN)
 I "^BQ^G2^1A^1B^B3^1H^1J^EI^FH^G5^LU^SY^U3^X5^"[("^"_ABMEIC_"^") D
 .S ABMR("REF",30)=$$PI^ABMUTLF(ABMP("LDFN"))
 Q
