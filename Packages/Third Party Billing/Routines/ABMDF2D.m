ABMDF2D ; IHS/SD/SDR - Set HCFA1500 Print Array - Part 4 ;
 ;;2.6;IHS 3P BILLING SYSTEM;**10,14**;NOV 12, 2009;Build 238
 ;Original;TMD;
 ;
 ;IHS/DSD/DMJ - 5/14/1999 - NOIS HQW-0599-100027 Patch 2
 ;          Y2K IV&V issues, all $$HDT^ABMDUTL changed to $$HDTO^ABMDUTL
 ;                    in line: PDT
 ;IHS/SD/SDR - 2.6*14 - updated DX^ABMCVAPI calls to be numeric
 ;
D53 ; Dental Diagnosis Info
 I ABMP("VTYP")'=998 G DX
LOOP S ABM=0 F ABM("I")=31:1:34 D  Q:'ABM  D PC1
 .I $D(ABM("X")),+ABM S ABM("X")=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),33,"C",ABM,ABM("X"))) I +ABM("X") S ABMZ("NUM")=ABM("I") Q
 .S ABM=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),33,"C",ABM)) Q:'ABM  S ABM("X")=$O(^(ABM,""))
 .Q
 G ST
 ;
PC1 S ABM("X0")=^ABMDBILL(DUZ(2),ABMP("BDFN"),33,ABM("X"),0)
 I $P(^AUTTADA(+ABM("X0"),0),U,3)]"" S:'$D(ABM("DUP",$P(^(0),U,3))) ABM("DUP",$P(^(0),U,3))="",$P(ABMF(ABM("I")),U)=$P($$DX^ABMCVAPI($P(^AUTTADA(+ABM("X0"),0),U,3),ABMP("VDT")),U,2)_"  "_$E($P(^(0),U,3),1,50),ABMD($P(^(0),U))=ABM("I")  ;CSV-c
 Q
 ;
DX ; Diagnosis Info
 S ABM="" F ABM("I")=31:1:34 S ABM=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),17,"C",ABM)) Q:'ABM  D
 .S ABM("X")=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),17,"C",ABM,""))
 .S ABM(9)=$P(^AUTNPOV($P(^ABMDBILL(DUZ(2),ABMP("BDFN"),17,ABM("X"),0),U,3),0),U)
 .S ABM(9)=$S(ABM(9)["*ICD*":$P(ABM(9),"  "),1:ABM(9))
 .;S $P(ABMF(ABM("I")),U)=$P($$DX^ABMCVAPI(ABM("X"),ABMP("VDT")),U,2)_" "_ABM(9)  ;CSV-c  ;abm*2.6*14 updated API call
 .S $P(ABMF(ABM("I")),U)=$P($$DX^ABMCVAPI(+ABM("X"),ABMP("VDT")),U,2)_" "_ABM(9)  ;CSV-c  ;abm*2.6*14 updated API call
 .S ABM("DX",$P(ABMF(ABM("I"))," "))=ABM("I")-30
 ;
ST ;
 ;S ABMF(36)=$S($P($G(^AUTNINS(ABMP("INS"),2)),U)="R":"CPT",$G(ABMP("PX"))="I":"ICD",ABMP("VTYP")=998:"ADA",1:"CPT")  ;abm*2.6*10 HEAT73780
 S ABMF(36)=$S($$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,ABMP("INS"),".211","I"),1,"I")="R":"CPT",$G(ABMP("PX"))="I":"ICD",ABMP("VTYP")=998:"ADA",1:"CPT")  ;abm*2.6*10 HEAT73780
 S ABMP("GL")="^ABMDBILL(DUZ(2),"_ABMP("BDFN")_","
 D ^ABMDESM1
HCFA I $P(^ABMDBILL(DUZ(2),ABMP("BDFN"),2),U)=0 S ABMS("TOT")=0
 S ABMS="" F ABMS("I")=37:2:47 S ABMS=$O(ABMS(ABMS)) Q:'ABMS  D
 .S ABMF(ABMS("I"))=$P(ABMS(ABMS),U,2)_U_$S(ABMP("VTYP")=111!($G(ABMP("BTYP"))=111):1,ABMP("VTYP")=831:"B",1:3)_U_$P(ABMS(ABMS),U,4)_U_U_U_$P(ABMS(ABMS),U)_U_$P(ABMS(ABMS),U,6)_U_$P(ABMS(ABMS),U,7)
 .S $P(ABMF(ABMS("I")),U,5)=$S($P(ABMS(ABMS),U,5)="":"",$D(ABM("DX",$P(ABMS(ABMS),U,5))):ABM("DX",$P(ABMS(ABMS),U,5)),1:$P(ABMS(ABMS),U,5))
 .I $P(ABMS(ABMS),U,3)'=$P(ABMS(ABMS),U,2) S ABMF(ABMS("I")+1)=$P(ABMS(ABMS),U,3)
 .I $L($P(ABMS(ABMS),U,8))>19 S ABMU("LNG")=19,ABMU("TXT")=$P(ABMS(ABMS),U,8),ABMU=2 D LNG^ABMDWRAP S $P(ABMF(ABMS("I")),U,4)=ABMU(1),$P(ABMF(ABMS("I")+1),U,4)=$G(ABMU(2)) K ABMU I 1
 .E  S $P(ABMF(ABMS("I")),U,4)=$P(ABMS(ABMS),U,8)
 .K ABMS(ABMS)
 K ABMR I ABMS("I")=47,+$O(ABMS("")) K ABMF("C") F ABMS("I")=48:1 S ABMS=$O(ABMS(ABMS)) Q:'ABMS  D
 .S ABMR(ABMS("I"))=ABMS(ABMS)
 .K ABMS(ABMS)
 ;
 D PREV^ABMDFUTL
 S ABM("RATIO")=+^ABMDBILL(DUZ(2),ABMP("BDFN"),2)/$S($P(^(2),U,3):$P(^(2),U,3),1:1)
 S:ABM("RATIO")>1 ABM("RATIO")=1
 S ABM("P")=+$FN(ABMP("PD")*ABM("RATIO"),"",2)
 S ABM("W")=+$FN(ABMP("WO")*ABM("RATIO"),"",2)
 S $P(ABMF(50),U,3)=ABM("P")+ABM("W")
 S ABM("OB")=ABMS("TOT")-$P(ABMF(50),U,3)
 S:ABM("OB")<0 ABM("OB")=0
 S ABM("YTOT")=ABM("OB") D YTOT^ABMDFUTL
 I '$D(ABMR) S $P(ABMF(50),U,2)=ABMS("TOT"),$P(ABMF(50),U,4)=$S(ABM("OB")>999:$FN(ABM("OB"),",",0),1:$FN(ABM("OB"),",",2))
 E  S ABMR("TOT")=U_ABMS("TOT")_U_$P(ABMF(50),U,3)_U_($S(ABM("OB")>999:$FN(ABM("OB"),",",0),1:$FN(ABM("OB"),",",2))) K ABMF(50) I $P(ABMR("TOT"),U,3)<0 S $P(ABMR("TOT"),U,3)=0
 I  S $P(ABMF(50),U,3)=$S($P(ABMF(50),U,3)>999:$FN($P(ABMF(50),U,3),",",0),1:$FN($P(ABMF(50),U,3),",",2))
 K ABMS
 ;
57 ; Provider Info
 I $P($G(^ABMDPARM(DUZ(2),1,0)),U,17)=2 D  G PDT
 .S $P(ABMF(51),U)=$P($G(^VA(200,$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),1),U,4),0)),U)
 .I $P($G(^VA(200,$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),1),U,4),0)),U,9),$D(^VA(200.1,$P(^(0),U,9),0)) S $P(ABMF(52),U)=$P(^(0),U)
 S ABM="",ABM("OLD")="" F ABM("I")=51:1:52 S ABM=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C",ABM)) Q:ABM=""  S ABM("X")=$O(^(ABM,"")) D
 .Q:ABM("OLD")=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,ABM("X"),0),U)  S ABM("OLD")=$P(^(0),U)
 .D SELBILL^ABMDE4X I ABM("I")=52,$P(ABM(ABM),U)=$P(ABMF(51)," ") Q
 .I $L($P(ABM(ABM),U)_" "_ABM("PNUM"))<30 S $P(ABMF(ABM("I")),U)=$P(ABM(ABM),U)_" "_ABM("PNUM") Q
 .S $P(ABMF($S(ABM("I")=51:50,1:52)),U)=$P(ABM(ABM),U)
 .S $P(ABMF($S(ABM("I")=51:51,1:53)),U)="            "_ABM("PNUM")
PDT S $P(ABMF(54),U)=$$HDTO^ABMDUTL(DT)
 S $P(ABMF(51),U,2)="X"
 ;
XIT K ABM,ABMV,ABMX
 Q
