BYIMSEGS ;IHS/CIM/THL - IMMUNIZATION DATA EXCHANGE;
 ;;2.0;BYIM IMMUNIZATION DATA EXCHANGE;**3,4,5,6,7**;JUN 01, 2015;Build 242
 ;
 ;code to supplement fields in the HL7 segments
 ;
MSH ;EP;entry point
 D PATH^BYIMIMM6
 D NOW^%DTC
 S INA("EVDT")=%
 S INA("ENC")=$$COMP^INHUT()_$$REP^INHUT()_$$SUBCOMP^INHUT()_$$ESC^INHUT()
 S INA("MT")=$P($G(^INTHL7M(BHLMIEN,0)),U,6)
 S INA("ET")=$P($G(^INTHL7M(BHLMIEN,0)),U,2)
 S INA("ACA")=$P($G(^INTHL7M(BHLMIEN,0)),U,10)
 S INA("APA")=$P($G(^INTHL7M(BHLMIEN,0)),U,11)
 S INA("VER")=BYIMVER
 S INA("PRID")=$P($G(^INTHL7M(BHLMIEN,0)),U,3)
 S INA("SAP")=$P($G(^INTHL7M(BHLMIEN,7)),U)
 S INA("SF")=$P($G(^INTHL7M(BHLMIEN,7)),U,2)
 S INA("RAP")=$P($G(^INTHL7M(BHLMIEN,7)),U,3)
 S INA("RF")=$P($G(^INTHL7M(BHLMIEN,7)),U,4)
 D MSH3
 D MSH4
 D MSH5
 D MSH6
 D MSH7
 D MSH8
 D MSH9
 D MSH10
 D MSH11
 D MSH12
 Q
 ;-----
MSH3 ;
 S X=BYIM("MSH3.1")
 S:X="" X="RPMS"
 I BYIM("MSH3.2")]"" S X=X_CS_BYIM("MSH3.2")_CS_"ISO"
 S INA("MSH3")=X
 Q
 ;-----
MSH4 ;
 N X
 S X=BYIM("MSH4.1")
 S:X="" X=$P($G(^DIC(4,+$G(DUZ(2)),0)),U)
 I BYIM("MSH4.2")]"" S X=X_CS_BYIM("MSH4.2")_CS_"ISO"
 S INA("MSH4")=X
 Q
 ;-----
MSH5 ;
 S X=BYIM("MSH5.1")
 I BYIM("MSH5.2")]"" S X=X_CS_BYIM("MSH5.2")_CS_"ISO"
 S INA("MSH5")=X
 Q
 ;-----
MSH6 ;
 S INA("MSH6")=BYIM("MSH6")
 Q
 ;-----
MSH7 ;
 D NOW^%DTC
 S INA("MSH7")=$P($$TIMEIO^INHUT10(%),"-")
 Q
 ;-----
MSH8 ;
 S INA("MSH8")=BYIMMSH8
 Q
 ;-----
MSH9 ;
 S INA("MSH9")=INA("MT")_CS_INA("ET")_CS_INA("MT")_"_"_INA("ET")
 Q
 ;-----
MSH10 ;
 S INA("MSH10")=$P($G(^INTHU(+$G(UIF),0)),U,5)
 S:INA("MSH10")="" INA("MSH10")=$$MESSID^INHD()
 Q
 ;-----
MSH11 ;
 S INA("MSH11")="P"
 Q
 ;-----
MSH12 ;
 S INA("MSH12")=BYIMVER
 Q
 ;-----
MSHEND Q
 ;-----
 ;-----
PID ;EP;
 D PID3
 D PID5
 D PID7
 D PID10
 D PID11
 D PID13
 D PID14
 D PID22
 D PID24
 Q
 ;-----
PID3 ;PID-3 HRN
 N X,Y,Z
 S X=$$HRN^BYIMIMM3(INDA)
 ;PATCH 6 ALLOW EXCLUSION OF SSN
 I '$G(BYIMESSN) D
 .S Y=$TR($P($G(^DPT(INDA,0)),U,9),"-")
 .S:Y]"" X=X_"~"_Y_CS_CS_CS_"SSA"_CS_"SS"
 ;PATCH 6 ALLOW EXCLUSION OF SSN
 S Y=""
 S Z=$O(^AUPNMCD("B",INDA,9999999999),-1)
 S:Z Y=$P($G(^AUPNMCD(Z,0)),U,3)
 S:Y]"" X=X_"~"_Y_CS_CS_CS_"MCD"_CS_"MA"
 S INA("PID3")=X
 S INA("PID3",1)=X
 Q
 ;-----
PID5 ;PID-5 NAME
 N X,Y,Z
 S X=$P($G(^DPT(INDA,0)),U)
 S Y=$P($P(X,",",2)," ")
 S Z=$P($P(X,",",2)," ",2)
 S X=$P(X,",")
 S INA("PID5")=X_CS_Y_CS_Z_CS_CS_CS_CS_"L"
 S INA("PID5",1)=INA("PID5")
 Q
 ;-----
PID7 ;PID-7 DOB
 S INA("PID7")=17000000+$P($G(^DPT(INDA,0)),U,3)
 S INA("PID7",1)=INA("PID7")
 Q
 ;-----
PID10 ;PID-10 RACE
 S INA("PID10")=$$RACE^BYIMIMM3(INDA)
 S INA("PID10",1)=INA("PID10")
 Q
 ;-----
PID11 ;PID-11 ADDRESS
 S X=$G(^DPT(+INDA,.11))
 S INA("PID11")=$P(X,U)_CS_CS_$P(X,U,4)_CS_$P($G(^DIC(5,+$P(X,U,5),0)),U,2)_CS_$P(X,U,6)_CS_"USA"_CS_"L"
 S INA("PID11",1)=INA("PID11")
 Q
 ;-----
PID13 ;PID-13 PHONE HOME
 S INA("PID13")=""
 S INA("PID13",1)=""
 S X=$P($G(^DPT(INDA,.13)),U)
 S X=$TR(X,"()\/- ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
 S:$E(X)=1 X=$E(X,2,99)
 I X'?10N S INA("PID13")=""
 D:X?10N
 .D:BYIMVER>2.4
 ..S INA("PID13")=CS_"PRN"_CS_"PH"_CS_CS_CS_$E(X,1,3)_CS_$E(X,4,10)
 ..S INA("PID13",1)=INA("PID13")
 .D:BYIMVER<2.5
 ..S INA("PID13")="("_$E(X,1,3)_")"_$E(X,4,6)_"-"_$E(X,7,10)_CS_"PRN"_CS_"PH"
 ..S INA("PID13",1)=INA("PID13")
 S X=$P($G(^AUPNPAT(INDA,18)),U,2)
 Q:X=""
 S X="~^NET^^"_X
 S INA("PID13")=INA("PID13")_X
 S INA("PID13",1)=INA("PID13")
 Q
 ;-----
PID14 ;PID-14 PHONE BUSINESS
 S INA("PID14")=""
 S INA("PID14",1)=""
 S X=$P($G(^DPT(INDA,.13)),U,2)
 S X=$TR(X,"()\/- ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
 S:$E(X)=1 X=$E(X,2,99)
 I X'?10N S INA("PID14",1)="" Q
 D:BYIMVER["2.5"
 .S INA("PID14")=CS_"WPN"_CS_"PH"_CS_CS_CS_$E(X,1,3)_CS_$E(X,4,10)
 .S INA("PID14",1)=INA("PID14")
 D:BYIMVER'["2.5"
 .S INA("PID14")="("_$E(X,1,3)_")"_$E(X,4,6)_"-"_$E(X,7,10)_CS_"WPN"_CS_"PH"
 .S INA("PID14",1)=INA("PID14")
 Q
 ;-----
PID22 ;PID-22 ETHNICITY
 S INA("PID22")=$$ETH^BYIMIMM3(INDA)
 S INA("PID22",1)=INA("PID22")
 Q
 ;-----
PID24 ;PID-24 BIRTH ORDER
 S INA("PID24")="N"
 S INA("PID24",1)="N"
PIDEND Q
 ;-----
 ;-----
PD1 ;EP;
 D PD13
 D PD111
 D PD112
 D PD113
 D PD116
 D PD117
 D PD118
 Q
 ;-----
PD13 ;PD1-3 variable - location
 S INA("PD13",1)=$G(BYIM("PD13.1"))_CS_$G(BYIM("PD13.2"))
 Q
 ;-----
PD111 ;PD1-11 PUBLICITY
 S INA("PD111",1)=$$PUB^BYIMIMM3(INDA)
 Q
 ;-----
PD112 ;PD1-12
 S INA("PD112",1)=$$PROT^BYIMIMM3(INDA)
 Q
 ;-----
PD113 ;PD1-13
 S INA("PD113",1)=$$PROTDT^BYIMIMM3(INDA)
 S:INA("PD112",1)="" INA("PD113",1)=""
 I INA("PD112",1)]"",INA("PD113",1)="" S INA("PD113",1)=DT+17000000
 Q
 ;-----
PD116 ;PD1-16
 ;PATCH 6 INCLUDE ACTIVE/INACTIVE STATUS
 S X=$P($G(^BIP(INDA,0)),U,8)
 S INA("PD116",1)=$S('X:"A",1:"I")
 ;PATCH 6 INCLUDE ACTIVE/INACTIVE STATUS
 Q
 ;-----
PD117 ;PD1-17
 ;PATCH 6 INCLUDE ACTIVE/INACTIVE STATUS
 S INA("PD117",1)=$$ACTDT^BYIMIMM3(INDA)
 S:INA("PD117",1)="" INA("PD113",1)=DT+17000000
 ;PATCH 6 INCLUDE ACTIVE/INACTIVE STATUS
 Q
 ;-----
PD118 ;PD1-18
 I INA("PD111",1)="" S INA("PD118",1)="" Q
 S INA("PD118",1)=$$PUBDT^BYIMIMM3(INDA)
 S:INA("PD118",1)="" INA("PD118",1)=DT+17000000
 Q
 ;-----
PD1END Q
 ;-----
 ;-----
NK1 ;-- this will generate the NK1 segment
 D NK11
 D NK12
 D NK13
 D NK14
 D NK15
 Q
 ;-----
NK11 ;subid
 S INA("NK11")="1"
 S INA("NK11",1)="1"
 Q
 ;-----
NK12 N X,FN,LN,MN
 S X=$P($G(^DPT(INDA,.21)),U)
 S LN=$P(X,",")
 S FN=$P($P(X,",",2)," ")
 S MN=$P($P(X,",",2)," ",2)
 ;PATCH 7 USE DEFAULT LN AND FN IF NOT DEFINED
 S:LN="" LN="LAST_NAME"
 S:FN="" FN="FIRST_NAME"
 S INA("NK12")=LN_CS_FN_CS_MN_CS_CS_CS_CS_"L"
 S INA("NK12",1)=INA("NK12")
 Q
 ;-----
NK13 N X
 S X=+$P($G(^AUPNPAT(INDA,28)),U,2)
 S Y=$G(^BYIMCDC(+$P($G(^BYIMREL(X,0)),U,2),0))
 S:Y]"" X=$P(Y,U,2),Y=$P(Y,U)
 S:Y="" Y="OTH",X="OTHER"
 S INA("NK13")=Y_CS_X_CS_"HL70063"
 S INA("NK13",1)=INA("NK13")
 Q
 ;-----
NK14 ;NOK ADDRESS
 S X=$P($G(^DPT(+INDA,.21)),U,3,8)
 S X=$P(X,U)_CS_CS_$P(X,U,4)_CS_$P($G(^DIC(5,+$P(X,U,5),0)),U,2)_CS_$P(X,U,6)_CS_"USA"_CS_"L"
 S INA("NK14")=X
 S INA("NK14",1)=X
 Q
 ;-----
NK15 ;PHONE NUMBER
 S INA("NK15")=""
 S X=$P($G(^DPT(INDA,.21)),U,9)
 S X=$TR(X,"()\/- ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
 S:$E(X)=1 X=$E(X,2,99)
 I X'?10N S INA("NK15",1)="" Q
 D:BYIMVER["2.5"
 .S INA("NK15")=CS_"PRN"_CS_"PH"_CS_CS_CS_$E(X,1,3)_CS_$E(X,4,10)
 .S INA("NK15",1)=INA("NK15")
 D:BYIMVER'["2.5"
 .S INA("NK15")="("_$E(X,1,3)_")"_$E(X,4,6)_"-"_$E(X,7,10)_CS_"PRN"_CS_"PH"
 .S INA("NK15",1)=INA("NK15")
NK1END Q
 ;-----
 ;-----
PV1 ;EP;FOR PV1 SEGMENT CONTENT
 ;PATCH 7 ADD PV1 COMPONENT
 D PV11
 D PV12
 D PV13
 D PV17
 D PV19
 D PV119
 D PV120
 D PV144
 Q
 ;-----
PV11 ;PV1-01
 S INA("PV11",1)=1
 Q
 ;-----
PV12 ;PV1-02
 S INA("PV12",1)="R"
 Q
 ;-----
PV13 ;PV1-03 PAT LOC
 S INA("PV13",1)=""
 Q
 ;-----
PV17 ;PV1-07
 S INA("PV17",1)=""
 S P=$$PRIMPROV^APCLV(INDA,"I")
 Q:'P
 S X=$$PROV(P)
 S INA("PV17",1)=X
 Q
 ;-----
PV19 ;PV1-09
 S INA("PV19",1)=""
 S P=$$PRIMPROV^APCLV(INDA,"I")
 Q:'P
 S X=$$PROV(P)
 S INA("PV19",1)=X
 Q
 ;-----
PV119 ;PV1-19
 ;PATCH 7
 S INA("PV119",1)=INDA_CS_CS_CS_"RPMS"_CS_"MR"
 Q
 ;-----
PV120 ;PV1-20 VFC
 S INA("PV120",1)=$$VFC^BYIMIMM3(INDA)
 Q
 ;-----
PV144 ;PV1-44 VISIT DATE
 N X,Y,Z
 S INA("PV144",1)=""
 S X=$P($G(^AUPNVSIT(+$G(INDA),0)),".")
 Q:$L(X)'=7
 S INA("PV144",1)=X+17000000
PV1END Q
 ;-----
 ;-----
ORC ;EP; - for ORC components
 D VSET(INDA)
 D ORC1
 D ORC2
 D ORC3
 D ORC5
 D ORC10
 D ORC12
 D ORC17
 Q
 ;-----
ORC1 ;
 S INA("ORC1",INDA)="RE"
 Q
 ;-----
ORC2 ;
 ;PATCH 7 MAX LENGTH 15
 ;S INA("ORC2",INDA)=INDA_"-"_$P($G(^AUTTLOC(+$G(DUZ(2)),0)),U,10)_CS_"IHS"
 S INA("ORC2",INDA)=$E(INDA_"-"_$P($G(^AUTTLOC(+$G(DUZ(2)),0)),U,10),1,15)_CS_"IHS"
 Q
 ;-----
ORC3 ;
 N X
 S X=$P($G(^AUPNVSIT(+$P($G(^AUPNVIMM(+INDA,0)),U,3),0)),".")
 S INA("ORC3",INDA)=$E($$TIMEIO^INHUT10(X),1,8)_"-"_INDA_"-"_$P($$HRN^BYIMIMM3($P($G(^AUPNVIMM(+INDA,0)),U,2)),U)_CS_$P($$HRN^BYIMIMM3($P($G(^AUPNVIMM(+INDA,0)),U,2)),U,4)
 ;PATCH 7 NOT MORE THAN 20 CHARACTERS
 S $P(INA("ORC3",INDA),U,2)=$E($P(INA("ORC3",INDA),U,2),1,20)
 Q
 ;-----
ORC5 ;
 S INA("ORC5",INDA)="IP"
 Q
 ;-----
ORC10 ;entered by
 N P,X,Y,Z
 S INA("ORC10",INDA)=""
 S P=+$P(X12,U,14)
 S:'P P=+$P(V0,U,23)
 Q:'P
 S X=$$PROV(P)
 S INA("ORC10",INDA)=X
 Q
 ;-----
ORC12 ;ordering provider
 N P,X,Y,Z
 S INA("ORC12",INDA)=""
 S P=+$P(X12,U,2)
 S:'P P=+$P(X12,U,4)
 D:'P
 .S Y=+$P($G(^AUPNVIMM(+INDA,0)),U,3)
 .S P=+$O(^AUPNVPRV("AD",Y,0))
 .S P=+$G(^AUPNVPRV(P,0))
 Q:'P
 S X=$$PROV(P)
 S INA("ORC12",INDA)=X
 Q
 ;-----
ORC17 ;setup for ORC17 variable - location
 ;PATCH 7
 ;S INA("ORC17",INDA)=CS_CS_CS_$P($G(^DIC(4,+$G(DUZ(2)),0)),U)
 S INA("ORC17",INDA)=$P($G(^AUTTLOC(+$G(DUZ(2)),0)),U,10)_CS_$P($G(^DIC(4,+$G(DUZ(2)),0)),U)_CS_"RPMS"
ORCEND Q
 ;-----
 ;-----
RXA ;EP;
 Q:'$D(^AUPNVIMM(INDA,0))
 D VSET(INDA)
 D RXA2
 D RXA3
 D RXA4
 D RXA5
 D RXA6
 D RXA7
 D RXA9
 D RXA10
 D RXA11
 D RXA15
 D RXA16
 D RXA17
 D RXA20
 D RXA21
 D RXA22
 Q
 ;-----
RXA2 ;admin subid
 S INA("RXA2",INDA)=1
 Q
 ;-----
RXA3 ;admin date/time
 S INA("RXA3",INDA)=$E($P($$TIMEIO^INHUT10($P(V0,U)),"-"),1,8)
 Q
 ;-----
RXA4 ;date/time entered
 S INA("RXA4",INDA)=$E($P($$TIMEIO^INHUT10($P(V0,U)),"-"),1,8)
 Q
 ;-----
RXA5 ;admin code
 N X
 S X=$P(Z0,U,3)
 S:$L(X)=1 X="0"_X
 S INA("RXA5",INDA)=X_CS_$P(Z0,U)_CS_"CVX"
 Q
 ;-----
RXA6 ;dose
 N X
 S X=+$P(X0,U,11)
 S:$E(X)="." X="0"_X
 ;PATCH 7 USE DEFAULT VOLUME WHEN NOT RECORDED
 S:'X X=$P(Z0,U,18)
 ;S:'X X="999"
 S:'X X=""
 S INA("RXA6",INDA)=X
 Q
 ;-----
RXA7 ;quantity definition
 S INA("RXA7",INDA)=""
 I INA("RXA6",INDA),INA("RXA6",INDA)'>997 S INA("RXA7",INDA)="mL^MilliLiters^UCUM"
 Q
 ;-----
RXA9 ;admin history
 S INA("RXA9",INDA)=$$HX1^BYIMIMM3(INDA)_CS_$$HX2^BYIMIMM3(INDA)_CS_"NIP001"
 S:INA("RXA9",INDA) INA("RXA6",INDA)=999
 Q
 ;-----
RXA10 ;encounter provider
 N X,Y,Z
 S INA("RXA10",INDA)=""
 S P=+$P(X12,U,4)
 D:'P
 .S Y=+$P($G(^AUPNVIMM(+INDA,0)),U,3)
 .S P=+$O(^AUPNVPRV("AD",Y,0))
 .S P=+$G(^AUPNVPRV(P,0))
 Q:'P
 S X=$$PROV(P)
 S INA("RXA10",INDA)=X
 Q
 ;-----
RXA11 ;location of encounter
 S INA("RXA11",INDA)=""
 N X,Y,Z
 S Z=+$P(V0,U,6)
 I $D(^BYIMPARA(DUZ(2),5,Z,0)) S X=$P(^(0),U,2)
 I '$D(^BYIMPARA(DUZ(2),5,Z,0)) S X=$P($G(^DIC(4,Z,0)),U)
 I $E(X,1,5)="OTHER"!(X=""),$P(V21,U)]"" S X=$P(V21,U)
 ;PATCH 7 NOT MORE THAN 20 CHARACTERS
 S INA("RXA11",INDA)=CS_CS_CS_$E(X,1,20)
 Q
 ;-----
RXA15 ;immunization lot number
 S INA("RXA15",INDA)=""
 N X,Y,Z
 S X=$P(X0,U,5)
 Q:'X
 S INA("RXA15",INDA)=$P($G(^AUTTIML(X,0)),U,16)
 S:INA("RXA15",INDA)="" INA("RXA15",INDA)=$P($G(^AUTTIML(X,0)),U)
 Q
 ;-----
RXA16 ;immunization lot number
 S INA("RXA16",INDA)=""
 N X,Y,Z
 S X=+$P(X0,U,5)
 Q:'$P($G(^AUTTIML(X,0)),U,9)
 S INA("RXA16",INDA)=$P($G(^AUTTIML(X,0)),U,9)+17000000
 Q
 ;-----
RXA17 ;immunization manufacturer
 S INA("RXA17",INDA)=""
 N X,Y,Z
 S X=$P(X0,U,5)
 Q:'X
 S X=$P($G(^AUTTIML(X,0)),U,2)
 Q:'X
 S X=$G(^AUTTIMAN(X,0))
 S INA("RXA17",INDA)=$P(X,U,2)_CS_$P(X,U)_CS_"MVX"
 Q
 ;-----
RXA20 ;action code
 S INA("RXA20",INDA)="CP"
 Q
 ;-----
RXA21 ;action code
 ;PATCH 6 DETERMINE WHETHER 'A' ADD OR 'U' UPDATE
 S INA("RXA21",INDA)="A"
 S:$D(^BYIMEXP("D",INDA)) INA("RXA21",INDA)="U"
 ;PATCH 6 DETERMINE WHETHER 'A' ADD OR 'U' UPDATE
 Q
 ;-----
RXA22 ;action code
 S X=$P(X12,U,18)
 S:'X X=$P(X12,U)
 S:'X X=$P(V0,U)
 S INA("RXA22",INDA)=$E($P($$TIMEIO^INHUT10(X),"-"),1,8)
RXAEND Q
 ;-----
 ;-----
RXR ;EP;
 D RXR^BYIMSEG1
 Q
 ;-----
 ;-----
QRD ;EP; setup the variables for the QRD segment
 N BYIMDA,BYIMNM,BYIMRN,BYIMASU
 S BYIMDA=$O(INA("QNM",0))
 Q:'BYIMDA
 D QRD1
 D QRD2
 D QRD3
 D QRD4
 D QRD7
 D QRD8
 D QRD9
 D QRD10
 D QRD12
 Q
 ;-----
QRD1 ;
 D NOW^%DTC
 S INA("QRD1")=$P($$TIMEIO^INHUT10(%),"-")
 Q
 ;-----
QRD2 ;
 S INA("QRD2")="R"
 Q
 ;-----
QRD3 ;
 S INA("QRD3")="I"
 Q
 ;-----
QRD4 ;
 S INA("QRD4")=INA("QRD1")_"-"_$P($$HRN^BYIMIMM3(BYIMDA),U)
 Q
 ;-----
QRD7 ;
 S INA("QRD7")="25^RD"
 Q
 ;-----
QRD8 ;information to build a who string (QRD-8)
 ;support for multiples built in
 N X,Y,Z
 S X=$P($G(^DPT(BYIMDA,0)),U)
 S X=$$PN^INHUT(X)
 S Y=$$HRN^BYIMIMM3(BYIMDA)
 S INA("QRD8")=$P(Y,U)_CS_X
 Q
 ;-----
QRD9 ;
 S INA("QRD9")="VXI"_CS_"VACCINE INFORMATION"_CS_"HL70048"
 Q
 ;-----
QRD10 ;
 S INA("QRD10")=CS_"IIS"
 Q
 ;-----
QRD12 ;
 S INA("QRD12")="T"
QRDEND Q
 ;-----
 ;-----
FHS ;EP;
 D FHS3
 D MSH
 Q
 ;-----
FHS3 ;
 N X
 S X=$P($G(^BYIMPARA(+$G(DUZ(2)),0)),U,7)
 S:X="" X=$P($G(^DIC(4,+$G(DUZ(2)),0)),U)
 S INA("FSH3")=X
FHSEND Q
 ;-----
 ;-----
RCP ;-- setup variables for RCP segment
RCPEND Q
 ;-----
 ;-----
QPD ;-- setup variables for QPD segment
QPDEND Q
 ;-----
 ;-----
VSET(INDA) ;SET VISIT VARIABLES
 S X0=^AUPNVIMM(INDA,0)
 S X12=$G(^AUPNVIMM(INDA,12))
 S Z0=$G(^AUTTIMM(+X0,0))
 S V0=$G(^AUPNVSIT(+$P(X0,U,3),0))
 S V21=$G(^AUPNVSIT(+$P(X0,U,3),21))
 S T=$P(V0,U,7)
 Q
 ;-----
 ;-----
NPI(PRV) ;
 S NPI=$P($G(^VA(200,+PRV,"NPI")),U)
 Q NPI
 ;-----
 ;-----
TITLE(P) ;GET PROVIDER'S TITLE/PROVIDER CLASS
 Q:'$G(P) ""
 N X,Y,Z
 S X=$P($G(^VA(200,P,"PS")),U,5)
 Q:'X ""
 S X=$P($G(^DIC(7,X,0)),U,2)
 Q X
 ;-----
PROV(P) ;RETURN PROVIDER COMPONENT INFO
 ;PATCH 7 ADD PROV CALL TO ENSURE PROPER FORMAT
 N X,Y,Z
 S X=$P($G(^VA(200,P,0)),U)
 Q:X="" ""
 S TITLE=$$TITLE(P)
 S NPI=$$NPI(P)
 S Y=$P($P(X,",",2)," ")
 S Z=$P($P(X,",",2)," ",2)
 S X=NPI_CS_$P(X,",")_CS_Y_CS_Z_CS_CS_TITLE_CS_CS_CS_$S(NPI]"":"RPMS",1:"RPMS")_CS_"L"
 Q X
 ;
