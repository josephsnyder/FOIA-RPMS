APCLSMU ;cmi/flag/maw - APCL MU2 MESSAGE GENERATOR 5/12/2010 9:26:17 AM
 ;;3.0;IHS PCC REPORTS;**29,30**;FEB 05, 1997;Build 27
 ;
OPT ;EP - option to export via date range or patient
 N TYPE
 S TYPE=$$EXPTYP()
 Q:TYPE=""
 I TYPE="P" D PATEXP Q
 I TYPE="D" D DATEXP^APCLSMUN Q
 Q
 ;
EXPTYP() ;-- get the export type
 S DIR(0)="S^P:One Patient's Visit;D:Date Range of Visits"
 S DIR("A")="Export Type"
 D ^DIR
 I $D(DIRUT) Q ""
 Q $G(Y)
 ;
PATEXP ;-- ask the patient and visit date
 D GETPAT
 I APCDPAT="" W !!,"No PATIENT selected!" D EOJ Q
 D GETVISIT
 I APCDVSIT="" W !!,"No VISIT selected!" D EOJ Q
 F I="A04","A03","A08","A01" D MSG(I,APCDVSIT,APCDPAT)
 Q
 ;
DATEXP ;-- ask the date range
 N BDT,EDT,DADA,DIEN,PAT
 S %DT="AE",%DT("A")="Begin Date: "
 D ^%DT
 I Y<0 D EOJ Q
 S BDT=+Y
 S %DT="AE",%DT("A")="End Date: "
 D ^%DT
 I Y<0 D EOJ Q
 S EDT=+Y
 S DADA=BDT-.0001 F  S DADA=$O(^AUPNVSIT("B",DADA)) Q:DADA>(EDT+.9999)!'DADA  D
 . S DIEN=0 F  S DIEN=$O(^AUPNVSIT("B",DADA,DIEN)) Q:'DIEN  D
 .. S PAT=$P($G(^AUPNVSIT(DIEN,0)),U,5)
 .. F I="A04","A03","A08","A01" D MSG(I,DIEN,PAT)
 Q
 ;
GETPAT ;EP GET-  PATIENT
 W !
 S AUPNLK("INAC")=""
 S APCDPAT=""
 S DIC("A")="Enter PATIENT NAME: ",DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC
 Q:Y<0
 S APCDPAT=+Y
 Q
 ;
GETVISIT ;EP - this entry point called by the BVP package (View patient record)
 S APCDLOOK="",APCDVSIT=""
 K APCDVLK
 D ^APCDVLK
 K APCDLOOK
 Q
 ;
MSG(EVN,VST,PAT) ;EP - create the message based on the event type and visit
 N VDATE,UNITFLG
 S VDATE=$P($$GET1^DIQ(9000010,VST,.01,"I"),".")
 S OBXCNT=0,DGCNT=0
 N LN,HL1,HRCN,FLD,LP,X,LN
 S LN=0
 S HLPM("MESSAGE TYPE")="ADT"
 S HLPM("EVENT")=EVN
 S HLPM("VERSION")="2.5.1"
 I '$$NEWMSG^HLOAPI(.HLPM,.HLST,.ERR) D  Q
 .W !,"Unable to create message" Q
 S HLFS=HLPM("FIELD SEPARATOR")
 S HLECH=HLPM("ENCODING CHARACTERS")
 S HL1("ECH")=HLECH
 S HL1("FS")=HLFS
 S HL1("Q")=""
 S HL1("VER")=HLPM("VERSION")
 D MSH("ADT",EVN)
 D EVN(EVN)
 D PID(PAT)
 D PV1(EVN,VST,PAT)
 I EVN="A01" D PV2(VST,PAT)
 I (EVN="A03") D
 . S DGCNT=DGCNT+1
 . D DG1S(EVN,VST)
 S OBXCNT=OBXCNT+1
 D OBXLOC(VST,OBXCNT)
 S UNITFLG=0
 I $$GET1^DIQ(40.7,$P($G(^AUPNVSIT(VST,0)),U,8),1)=30,EVN="A04" D  ;this may not work but we will see if they accept another OBX
 . ;Q:'$$GET1^DIQ(9000010,VST,1601)
 . Q:$P($G(^DPT(PAT,0)),U)'["UNKNOWN"
 . ;Q:$P($G(^DPT(PAT,0)),U,2)'="U"  ;ihs/cmi/maw lets use this if they have an UNKNOWN sex
 . S OBXCNT=OBXCNT+1
 . S UNITFLG=1
 . D OBXUNIT(PAT,VST,OBXCNT)
 I '$G(UNITFLG) D
 . S OBXCNT=OBXCNT+1
 . D OBXAGE(PAT,VST,OBXCNT)
 S OBXCNT=OBXCNT+1
 D OBXCC(VST,OBXCNT)
 I EVN'="A03" D
 . ;D DG1P(EVN,VST,0)
 . Q:EVN="A01"
 . D DG1S(EVN,VST)  ;for multiple DX in A08 and primary in A04
 S APPARMS("SENDING APPLICATION")="RPMS-ILI"
 S APPARMS("RECEIVING APPLICATION")="ILI"
 S APPARMS("ACCEPT ACK TYPE")="AL"  ;Commit ACK type
 S APPARMS("APP ACK RESPONSE")="AACK^APCLSHL"  ;Callback when 'application ACK' is received
 S APPARMS("ACCEPT ACK RESPONSE")="CACK^APCLSHL"  ;Callback when 'commit ACK' is received
 S APPARMS("APP ACK TYPE")="AL"  ;Application ACK type
 S APPARMS("QUEUE")="ILI ADT"   ;Incoming QUEUE
 S WHO("RECEIVING APPLICATION")="ILI"
 S WHO("FACILITY LINK NAME")="IHS"
 S WHOTO("RECEIVING APPLICATION")="ILI"
 I '$$SENDONE^HLOAPI1(.HLST,.APPARMS,.WHO,.ERR) D
 . S ERR=$G(ERR)
 D GL(HLST("IEN"),EVN,PAT,VDATE)
 K OBXCNT
 Q
 ;
SETHL(MTYPE,EVNTTYPE) ;-- setup HLO variables
 ;N HLPM,HLST,ARY,HLQ,APPARMS,HLPM,HLMSGIEN,HLECH,HLFS,ERR,WHO
 N LN,HL1,HRCN,FLD,LP,X,LN
 S LN=0
 S HLPM("MESSAGE TYPE")=MTYPE
 S HLPM("EVENT")=EVNTTYPE
 S HLPM("VERSION")="2.5.1"
 I '$$NEWMSG^HLOAPI(.HLPM,.HLST,.ERR) D  Q
 .;D NOTIF(DFN,"Unable to build HL7 message."_$S($D(ERR):" ERR:"_$G(ERR),1:""))
 S HLFS=HLPM("FIELD SEPARATOR")
 S HLECH=HLPM("ENCODING CHARACTERS")
 S HL1("ECH")=HLECH
 S HL1("FS")=HLFS
 S HL1("Q")=""
 S HL1("VER")=HLPM("VERSION")
 Q
 ;
ERR ;
 Q
 ;
 ; Create MSH segment
MSH(MS,EV) ;EP
 N MSH,%,X,FLD,VAL
 D NOW^%DTC
 S X=$$HLDATE^HLFNC(%,"TS")
 D SET(.ARY,"NSH",0)
 D SET(.ARY,"RPMS",4,1)
 D SET(.ARY,"1231231234",4,2)
 D SET(.ARY,"NPI",4,3)
 D SET(.ARY,X,7)
 D SET(.ARY,MS,9,1)
 D SET(.ARY,EV,9,2)
 D SET(.ARY,MS_"_"_$S(EV="A04":"A01",EV="A08":"A01",1:EV),9,3)
 D SET(.ARY,"IHS-"_$R(999999999),10)
 D SET(.ARY,"P",11)
 D SET(.ARY,"2.5.1",12)
 D SET(.ARY,"PH_SS-NoAck",21,1)
 D SET(.ARY,"SS Sender",21,2)
 D SET(.ARY,"2.16.840.1.114222.4.10.3",21,3)
 D SET(.ARY,"ISO",21,4)
 S MSH=$$ADDSEG^HLOAPI(.HLST,.ARY)
 Q
EVN(EVNTTYPE) ;Create the EVN segment
 N %,X,FLD,VAL
 D NOW^%DTC
 S X=$$HLDATE^HLFNC(%,"TS")
 D SET(.ARY,"EVN",0)
 D SET(.ARY,X,2)
 D SET(.ARY,"RPMS",7,1)
 D SET(.ARY,1231231234,7,2)
 D SET(.ARY,"NPI",7,3)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ; Create PID segment
PID(P) ;EP
 S HLQ=HL1("Q")
 N REC,SEX,RACEI,RACE,ZIP,CNTY,EDA,ETH,ETHI,NTYP,DOD,ADD,CITY,STI,STATE,ADD2,DOB
 S NTYP=$S($P($G(^DPT(P,0)),U)["UNKNOWN":"U",1:"S")  ;this needs to be determined
 S REC=$$HRN^AUPNPAT(P,DUZ(2))
 S SEX=$P($G(^DPT(P,0)),U,2)
 S DOB=$$FMTHL7^XLFDT($$GET1^DIQ(2,P,.03,"I"))
 S RACEI=$P($G(^DPT(P,0)),U,6)
 I '$G(RACEI) S RACEI=$O(^DPT(P,.02,0))
 S RACE=$$GET1^DIQ(10,RACEI,4)
 S ADD=$$GET1^DIQ(2,P,.111)
 S ADD2=$$GET1^DIQ(2,P,.112)
 S CITY=$$GET1^DIQ(2,P,.114)
 S STI=$$GET1^DIQ(2,P,.115,"I")
 S STATE=$S(STI]"":$P($G(^DIC(5,STI,0)),U,3),1:"")
 S ZIP=$$GET1^DIQ(2,P,.116)
 S CNTY=$$GET1^DIQ(2,P,.117)
 I CNTY="" D
 . N COR,CTY
 . S COR=$$GET1^DIQ(9000001,P,1117,"I")
 . S CTY=$S(COR:$$GET1^DIQ(9999999.05,COR,.02,"I"),1:"")
 . I CTY S CNTY=$$GET1^DIQ(9999999.23,CTY,.04)
 S EDA=$O(^DPT(P,.06,"B",0))
 I EDA S ETHI=$P($G(^DPT(P,.06,EDA,0)),U)
 I $G(ETHI) S ETH=$$GET1^DIQ(10.2,ETHI,4)
 S DOD=$$GET1^DIQ(2,P,.351,"I")
 I DOD]"" S DOD=$$FMTHL7^XLFDT(DOD)
 D SET(.ARY,"PID",0)
 D SET(.ARY,1,1)
 D SET(.ARY,REC,3,1)
 D SET(.ARY,"MR",3,5)  ; Patient HRN
 D SET(.ARY,$S(NTYP]"":NTYP,1:"S"),5,7,,2)  ;this needs to be determined
 ;D SET(.ARY,DOB,7)
 D SET(.ARY,SEX,8)
 D SET(.ARY,RACE,10,1)
 I $G(RACE)]"" D SET(.ARY,"CDCREC",10,3)
 D SET(.ARY,ADD,11,1)
 D SET(.ARY,ADD2,11,2)
 D SET(.ARY,CITY,11,3)
 D SET(.ARY,STATE,11,4)
 D SET(.ARY,ZIP,11,5)
 D SET(.ARY,CNTY,11,9)
 D SET(.ARY,$G(ETH),22,1)
 I $G(ETH)]"" D SET(.ARY,"CDCREC",22,3)
 I EVN="A03" D
 . D SET(.ARY,DOD,29)
 . I DOD]"" D SET(.ARY,"Y",30)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
PV1(EV,V,P) ;-- setup the JVN PV1 segment
 D SET(.ARY,"PV1",0)
 D SET(.ARY,1,1)
 D SET(.ARY,V,19,1)
 D SET(.ARY,"VN",19,5)
 I EV="A03" D
 . N DDSP,VER
 . S DDSP="01"
 . I $$GET1^DIQ(2,P,.351,"I") S DDSP="20"
 . ;S VER=$O(^AUPNVER("AD",V,0))
 . S VER=$O(^AMERVSIT("AD",V,0))
 . I VER D
 .. N DED
 .. ;S DED=$P($G(^AUPNVER(VER,0)),U,11)
 .. S DED=$E($$GET1^DIQ(9009080,VER,6.1),1)
 .. S DDSP=$S(DED="A":"09",DED="D":20,DED="E":20,1:"01")
 . D SET(.ARY,DDSP,36)
 D SET(.ARY,$$FMTHL7^XLFDT($$GET1^DIQ(9000010,V,.01,"I")),44)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
PV2(V,PT) ;-- setup the PV2 segment
 ;this may need to be changed to look at the admitting dx in ADT
 Q:'$G(V)
 N HVST,VINP,DXI,DX,DXE,IVDT,ADMT
 ;find H visit here
 S IVDT=(9999999-$P(^AUPNVSIT(V,0),U))
 S EVDT=IVDT+2
 S HVST=$$FNDH(IVDT,EVDT,PT)
 Q:'HVST
 ;find the admit here and get admitting dx
 S ADMT=$O(^DGPM("AVST",PT,HVST,0))
 Q:'ADMT
 ;S VINP=$O(^AUPNVINP("AD",HVST,0))
 ;Q:'VINP
 ;S DXI=$$GET1^DIQ(9000010.02,VINP,.12,"I")
 ;S DX=$$GET1^DIQ(9000010.02,VINP,.12)
 S DXI=$O(^ICD9("AB",$P($G(^DGPM(ADMT,0)),U,10)_" ",0))
 S DX=$$GET1^DIQ(405,ADMT,.1,"I")
 I $G(DXI) S DXE=$$GET1^DIQ(80,DXI,3)
 N ICDT,ICDATA
 S ICDATA=$$ICDDX^APCLSILU(DX,VDATE)
 S ICDT=$P(ICDATA,U,20)  ;get the icd type based on the code
 I $P(DX,".",2)="" S DX=$TR(DX,".")
 D SET(.ARY,"PV2",0)
 D SET(.ARY,DX,3,1)
 D SET(.ARY,$G(DXE),3,2)
 ;D SET(.ARY,"I9CDX",3,3)
 D SET(.ARY,$S(ICDT="30":"I10",1:"I9CDX"),3,3)  ;p30
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
FNDH(VDT,EDT,P) ;-- find the next H visit within 48 hours
 N VDA
 S VDA=VDT F  S VDA=$O(^AUPNVSIT("AAH",P,VDA)) Q:'VDA  D
 . S VIEN=0 F  S VIEN=$O(^AUPNVSIT("AAH",P,VDA,VIEN)) Q:'VIEN  D
 .. I VDA<EDT S VIN=VIEN Q
 Q $G(VIN)
 ;
OBXLOC(V,CNT) ;-- setup the location OBX
 N CL,CLC,CD,DSC
 S CL=$P($G(^AUPNVSIT(V,0)),U,8)
 S CLC=$$GET1^DIQ(40.7,CL,1)
 S CD=""
 ;we will need to do a more dynamic clinic map here
 I CLC=80 S CD="261QU0200X"  ;urgent care
 I CLC=30 S CD="261QE0002X"  ;er
 Q:CD=""
 S DSC=$$LOOKTABM("","NUCC",CD,HLECH)
 D SET(.ARY,"OBX",0)
 D SET(.ARY,CNT,1)
 D SET(.ARY,"CWE",2)
 D SET(.ARY,"SS003",3,1)  ;this may need to change as well
 D SET(.ARY,"PHINQUESTION",3,3)
 D SET(.ARY,CD,5,1)
 D SET(.ARY,$P(DSC,HLECH,2),5,2)
 D SET(.ARY,"NUCC",5,3)
 D SET(.ARY,"F",11)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
OBXUNIT(P,V,CNT) ;-- setup units
 Q:$P($G(^DPT(P,0)),U)'["UNKNOWN"  ;this will need to change once we identify what an unknown patient is
 ;Q:$$GET1^DIQ(40.7,$P($G(^AUPNVSIT(V,0)),U,8),1)=80
 D SET(.ARY,"OBX",0)
 D SET(.ARY,CNT,1)
 D SET(.ARY,"NM",2)
 D SET(.ARY,"21612-7",3,1)
 D SET(.ARY,"LN",3,3)
 D SET(.ARY,"UNK",6,1)
 D SET(.ARY,"NULLFL",6,3)
 D SET(.ARY,"F",11)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
OBXAGE(P,V,CNT) ;-- setup the visit OBX
 ;Q:$$GET1^DIQ(40.7,$P($G(^AUPNVSIT(V,0)),U,8),1)=30
 N AGE
 S AGE=$$AGE^AUPNPAT(P)
 D SET(.ARY,"OBX",0)
 D SET(.ARY,CNT,1)
 D SET(.ARY,"NM",2)
 D SET(.ARY,"21612-7",3,1)
 D SET(.ARY,"LN",3,3)
 D SET(.ARY,AGE,5)
 D SET(.ARY,"a",6,1)
 D SET(.ARY,"UCUM",6,3)
 D SET(.ARY,"F",11)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
OBXCC(V,CNT) ;-- setup the chief complaint OBX
 N LN,CCI,CC,EC,ECE,ECI,VPOVI,CCE
 ;S VPOVI=$O(^AUPNVPOV("AD",V,0))
 ;S CCI=$$GET1^DIQ(9000010,V,1107,"I")
 ;S CC=$$GET1^DIQ(80,$$GET1^DIQ(9000010.07,VPOVI,.01,"I"),3)
 ;S LN=$$GET1^DIQ(9000010,V,1401)
 S CCE=$$GET1^DIQ(9000010,V,1401)
 Q:$G(CCE)=""
 I $G(CCE)]"" S CCI=$O(^ICD9("AB",CCE_" ",0))
 I $G(CCI) S CC=$$GET1^DIQ(80,CCI,3)
 ;S ECI=$$GET1^DIQ(9000010.07,VPOVI,.09,"I")
 S EC=$$GET1^DIQ(80,CCI,.01)
 S ECE=$$GET1^DIQ(80,CCI,3)
 D SET(.ARY,"OBX",0)
 D SET(.ARY,CNT,1)
 D SET(.ARY,"CWE",2)
 D SET(.ARY,"8661-1",3,1)  ;this is the chief complaint loinc code
 I $G(CCI) D
 . D SET(.ARY,EC,5,1)
 . D SET(.ARY,ECE,5,2)
 . D SET(.ARY,"I9CDX",5,3)
 D SET(.ARY,"LN",3,3)
 D SET(.ARY,$G(CCE),5,9)
 D SET(.ARY,"F",11)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
DG1P(EV,V,FL) ;-- set the repeating DG1
 I 'FL Q:EV="A03"
 Q:EV="A01"  ;IN pv2
 ;Q:EV'="A04"!EV'="A08"
 N DX,DXE,DXT
 S DXT=$S($G(FL):"F",1:"W")
 I EV="A08" S DXT="W"
 I EV="A04" S DXT="W"
 ;S DX=$TR($$PRIMPOV^APCLV(V,"C"),".")
 S DX=$$PRIMPOV^APCLV(V,"C")
 N ICDT,ICDATA
 S ICDATA=$$ICDDX^APCLSILU(DX,VDATE)
 S ICDT=$P(ICDATA,U,20)  ;get the icd type based on the code
 I $P(DX,".",2)="" S DX=$TR(DX,".")
 ;S LEN=$L(DX)
 ;I $E(DX,LEN,LEN)="0" S DX=$E(DX,1,(LEN-1))
 Q:$G(DX)=""
 I $P(DX,".",2)="" S DX=$TR(DX,".")
 S DXE=$S(ICDT=30:$P(ICDATA,U,4),1:$P($$PRIMPOV^APCLV(V,"E"),"|"))
 D SET(.ARY,"DG1",0)
 D SET(.ARY,1,1)
 D SET(.ARY,DX,3,1)
 D SET(.ARY,DXE,3,2)
 D SET(.ARY,$S(ICDT="30":"I10",1:"I9CDX"),3,3)  ;p30
 D SET(.ARY,DXT,6)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
DG1S(EV,V) ;-- set the secondary DXs
 N DX,DXE,DXT,DXDA,DXI,DXCNT,LEN,CNTR
 S DXCNT=0,CNTR=0
 S CNTR=$$POVS(V)
 I CNTR=1 D DG1P(EV,V,1) Q
 S DXDA=0 F  S DXDA=$O(^AUPNVPOV("AD",V,DXDA)) Q:'DXDA  D
 . ;Q:$P($G(^AUPNVPOV(DXDA,0)),U,12)="P"
 . S DXCNT=DXCNT+1
 . ;Q:DXCNT=1
 . S DXI=$P($G(^AUPNVPOV(DXDA,0)),U)
 . ;S DX=$TR($$GET1^DIQ(80,DXI,.01),".")
 . S DX=$$GET1^DIQ(80,DXI,.01)
 . N ICDT,ICDATA
 . S ICDATA=$$ICDDX^APCLSILU(DX,VDATE)
 . S ICDT=$P(ICDATA,U,20)  ;get the icd type based on the code
 . I $P(DX,".",2)="" S DX=$TR(DX,".")
 . ;S LEN=$L(DX)
 . ;I $E(DX,LEN,LEN)="0" S DX=$E(DX,1,(LEN-1))
 . S DXE=$S(ICDT=30:$P(ICDATA,U,4),1:$$GET1^DIQ(80,DXI,3))
 . S DXT="F"  ;change this once i know the formula
 . I EV="A08" S DXT="W"
 . I EV="A04" S DXT="W"
 . D SET(.ARY,"DG1",0)
 . D SET(.ARY,DXCNT,1)
 . ;D SET(.ARY,(DXCNT-1),1)
 . D SET(.ARY,DX,3,1)
 . D SET(.ARY,DXE,3,2)
 . D SET(.ARY,$S(ICDT="30":"I10",1:"I9CDX"),3,3)
 . D SET(.ARY,DXT,6)
 . S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
POVS(V) ;-- count the POVs
 N DXDA,CN
 S CN=0
 S DXDA=0 F  S DXDA=$O(^AUPNVPOV("AD",V,DXDA)) Q:'DXDA  D
 . S CN=CN+1
 Q $G(CN)
 ;
LOOKTABM(TYPE,TAB,VAL,ECH) ;-- find the value and description in the HL7 tables
 N DESC,IENI,GBL
 S GBL="^APCLMUT"
 I TYPE="" S GBL="^APCLMUT"
 S IENI=$O(@GBL@("AVAL",TAB,VAL,0))
 Q:'IENI
 S DESC=$P($G(@GBL@(IENI,0)),U,3)
 Q VAL_ECH_DESC_ECH_TYPE_TAB
         ;
LOOKTAB(TYPE,TAB,VAL,ECH) ;-- find the value and description in the HL7 tables
 N DESC,IENI,GBL
 S GBL="^BHLTBL"
 I TYPE="" S GBL="^BHLOTBL"
 S IENI=$O(@GBL@("AVAL",TAB,VAL,0))
 Q:'IENI
 S DESC=$P($G(@GBL@(IENI,0)),U,3)
 Q VAL_ECH_DESC_ECH_TYPE_TAB
         ;
LOOKDSC(TYPE,TAB,DSC,ECH) ;-- find a reverse value based on description
 N VAL,IENI,GBL
 S GBL="^BHLOTBL"
 I TYPE="" S GBL="^BHLOTBL"
 S IENI=$O(@GBL@("ADSC",TAB,DSC,0))
 Q:'IENI
 S VAL=$P($G(@GBL@(IENI,0)),U,2)
 Q VAL_ECH_ECH_TYPE_TAB
 ;
SET(ARY,V,F,C,S,R) ;EP
 D SET^HLOAPI(.ARY,.V,.F,.C,.S,.R)
 Q
 ; Fix for non-working ZIPCODE Field trigger in File 2
FIXZIP(DFN,ZIP) ;EP
 Q:$G(ZIP) ZIP
 Q $$GET1^DIQ(2,DFN,.116)
 ;
HLD(FDT) ;-- convert to HL7 date
 I $G(FDT)="" Q ""
 N D
 S %DT="X"
 S X=FDT D ^%DT
 S D=$$FMTHL7^XLFDT(Y)
 Q D
 ;
GL(IN,EV,PT,VDD) ;-- write out the batch to a global for saving in APCLSLAB
 K ^APCLTMP($J)
 N BDA,BDO,HLODAT,MSH,MSGP,MSG,BT,BT1,BT2,BT3
 S APCLCNT=0
 S MSG=$P($G(^HLB(IN,0)),U,2)
 D REST(MSG)
 D WRITE(EV,PT,VDD)
 Q
 ;
REST(M) ;-- write out the remainder of the segments to the global
 N MDA,DATA,MCNT
 S MCNT=0
 S MDA=0 F  S MDA=$O(^HLA(M,1,MDA)) Q:'MDA  D
 . S DATA=$G(^HLA(M,1,MDA,0))
 . Q:DATA=""
 . I $E(DATA,1,3)="NSH" D
 .. S $E(DATA,1,4)="MSH"
 .. S $P(DATA,HLFS,2)="^~\&"
 . D SETGL(DATA)
 Q
 ;
SETGL(D) ;-- set the temp global
 S APCLCNT=APCLCNT+1
 S ^APCLTMP($J,APCLCNT)=D
 Q
 ;
WRITE(E,P,VD) ; use XBGSAVE to save the temp global (APCLDATA) to a delimited
 ; file that is exported to the IE system
 N XBGL,XBQ,XBQTO,XBNAR,XBMED,XBFLT,XBUF,XBFN,APCLFN
 S XBGL="APCLTMP",XBMED="F",XBQ="N",XBFLT=1,XBF=$J,XBE=$J
 S XBNAR="MU2 HL7 EXPORT"
 S APCLASU=$P($G(^AUTTLOC($P(^AUTTSITE(1,0),U),0)),U,10)  ;asufac for file name
 S (XBFN,APCLDFN)="MU2_"_E_"_"_$$HRN^AUPNPAT(P,DUZ(2))_"_"_$$DATET(VD)_".txt"
 S XBS1="SURVEILLANCE MU2 SEND"
 ;
 D ^XBGSAVE
 ;
 I XBFLG'=0 D
 . I XBFLG(1)="" W:'$D(ZTQUEUED) !!,"MU2 HL7 file successfully created",!!
 . I XBFLG(1)]"" W:'$D(ZTQUEUED) !!,"MU2 HL7 file NOT successfully created",!!
 K ^APCLTMP($J),APCLCNT
 K ^APCLDATA($J)
 Q
DATE(D) ;EP
 Q (1700+$E(D,1,3))_$E(D,4,5)_$E(D,6,7)
 ;
DATET(D) ;EP
 Q (1700+$E(D,1,3))_$E(D,4,5)_$E(D,6,7)_$E(D,8,11)
 ;
EOJ ; EP - EOJ HOUSE KEEPING - this ep called by the BVP package (View patient record)
 K AUPNLK("INAC")
 K %,%DT,%X,%Y,C,DIYS,X,Y
 K APCDCLN,APCDCAT,APCDDATE,APCDLOC,APCDPAT,APCDVSIT,APCDLOOK,APCDTYPE
 D KILL^AUPNPAT
 Q
 ;
