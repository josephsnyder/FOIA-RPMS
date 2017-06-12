APCLSIHL ;cmi/flag/maw - APCL ILI CDC HL7 Export 5/12/2010 9:26:17 AM
 ;;3.0;IHS PCC REPORTS;**29,30**;FEB 05, 1997;Build 27
 ;
 ;
 ;
ILI(TYPE) ;EP -  lets create the ILI HL7 export here
 N APCLLAST
 D BATCH(.HLPARM,TYPE)
 S APCLLAST=$$GETLAST()
 D APCLDATA(.HLMSTATE,.HLPARM,TYPE)
 I $G(HLMSTATE("IEN")) D GL(HLMSTATE("IEN"),TYPE)
 K HLMSTATE,HLPARM
 Q
 ;
BATCH(HLPARM,TYP) ;-- start the message batch here
 S HLPARM("COUNTRY")="USA"
 S HLPARM("VERSION")="2.5.1"
 I '$$NEWBATCH^HLOAPI(.HLPARM,.HLMSTATE,.ERROR) D  Q
 . S ERR=$G(ERR)
 Q
 ;
GETLAST() ;-- get the last record
 N BDA,LAST
 S BDA=0 F  S BDA=$O(^APCLDATA($J,BDA)) Q:'BDA!($G(LAST))  D
 . I $P(^APCLDATA($J,BDA),",",1)="" S LAST=(BDA-1)
 Q $G(LAST)
 ;
ZHS(TYP) ;-- lets create the ZHS segment
 N ZHS,ZHS1,ZHS2,ZHS3,ZHS4,ZHS5,ZHS6
 ;ZHS1 = DBID
 ;ZHS2 = Test/Production
 ;ZHS3 = #of records in file
 ;ZHS4 = IEN of export log
 ;ZHS5 = Location Name
 ;ZHS6 = ASUFAC_IEN of export log
 I TYP="ILI" D
 . N DBIDI,DBID,ILII,PT,LOC,ASUFAC,LAST,LASTDT,TOT
 . S DBIDI=$P($G(^AUTTSITE(1,0)),U)
 . S DBID=$P($G(^AUTTLOC(DBIDI,1)),U,3)
 . S ILII=$O(^APCLILIC("B",0))
 . S PT="P"
 . ;I '$$PROD^XUPROD()!($P($G(^APCLILIC(ILII,0)),U,5)="T") S PT="T"
 . I $P($G(^APCLILIC(ILII,0)),U,5)="T" S PT="T"
 . S LOC=$P($G(^DIC(4,DBIDI,0)),U)
 . S LASTDT=$O(^APCLILIC(ILII,12,"B",""),-1)
 . S LAST=$S($G(LASTDT):$O(^APCLILIC(ILII,12,"B",LASTDT,""),-1),1:"")
 . S ASUFAC=$P($G(^AUTTLOC(DBIDI,0)),U,10)_$$FMTHL7^XLFDT(APCLZHSD)
 . S TOT=$S($G(LAST):$P($G(^APCLILIC(ILII,12,LAST,0)),U,4),1:0)
 . D SET(.ARY,"ZHS",0)
 . D SET(.ARY,DBID,1)
 . D SET(.ARY,PT,2)
 . D SET(.ARY,APCLVTOT,3)
 . D SET(.ARY,$$FMTHL7^XLFDT(APCLZHSD),4)
 . D SET(.ARY,LOC,5)
 . D SET(.ARY,ASUFAC,6)
 . S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
  Q
 ;
ZTS(TYP,LA) ;-- lets create the ZTS segment
 N ZTS,ZTS1,ZTS2,ZTS3,ZTS4,ZTS5
 ;ZTS1 = sequence
 ;ZTS2 = date
 ;ZTS3 = repeating counts
 ;ZTS4 = count of ILI clinic visits old comma 13
 ;ZTS5 = count of H visits old comma 20
 ;ZTS6 = count of A visits old comma 42
 I TYP="ILI" D
 . N CNT,RDA,RDATA,RLOC,RDT,RCNT1,RCNT2,RCNT3
 . S CNT=0
 . S RDA=LA F  S RDA=$O(^APCLDATA($J,RDA)) Q:'RDA  D
 .. Q:$P(^APCLDATA($J,RDA),",",1)]""
 .. S CNT=CNT+1
 .. S RDATA=$G(^APCLDATA($J,RDA))
 .. S RLOC=$P(RDATA,",",6)
 .. S RDT=$$FMTHL7^XLFDT($P(RDATA,",",7))
 .. S RCNT1=$P(RDATA,",",13)
 .. S RCNT2=$P(RDATA,",",20)
 .. S RCNT3=$P(RDATA,",",42)
 .. D SET(.ARY,"ZTS",0)
 .. D SET(.ARY,CNT,1)
 .. D SET(.ARY,RDT,2)
 .. D SET(.ARY,RLOC,3)
 .. D SET(.ARY,RCNT1,4)
 .. D SET(.ARY,RCNT2,5)
 .. D SET(.ARY,RCNT3,6)
 .. S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
APCLDATA(HLMSTATE,HLPARM,TYP) ;-- loop through ^APCLDATA here and create each message
 N APCLDA,APCLCNT,APCLREC
 S APCLCNT=0
 S APCLDA=0 F  S APCLDA=$O(^APCLDATA($J,APCLDA)) Q:'APCLDA  Q:$P(^APCLDATA($J,APCLDA),",",1)=""  D
 . S APCLCNT=APCLCNT+1
 . S APCLREC=$G(^APCLDATA($J,APCLDA))
 . S DFN=$P(APCLREC,",",1)
 . S DFN=+$E(DFN,6,15)
 . N I
 . I TYP="ILI" F I=1:1:300 S APCLREC(I)=$P(APCLREC,",",I)
 . D NEWMSG(.HLMSTATE,.HLPARM,.APCLREC,"ADT","A08",TYP,APCLDA)
 Q
 ;
NEWMSG(HLST,HLPM,RC,MTYPE,EVNTTYPE,TYP,LDA) ;EP
 N ARY,HLQ,APPARMS,HLMSGIEN,HLECH,HLFS,ERR,WHO
 N LN,HL1,HRCN,FLD,LP,X,LN
 S LN=0
 S HLPM("MESSAGE TYPE")=MTYPE
 S HLPM("EVENT")=EVNTTYPE
 I '$$ADDMSG^HLOAPI(.HLST,.HLPM,.ERR) D  Q
 .S ERR=$G(ERR)
 S HLFS=HLPM("FIELD SEPARATOR")
 S HLECH=HLPM("ENCODING CHARACTERS")
 S HL1("ECH")=HLECH
 S HL1("FS")=HLFS
 S HL1("Q")=""
 S HL1("VER")=HLPM("VERSION")
 ;Create segments
 ;
 D EVN(MTYPE,EVNTTYPE)
 I TYP="ILI" D
 . I '$D(ERR) D PID(.RC)
 . I '$D(ERR) D PV1(.RC)
 . I '$D(ERR),$G(RC(8))]"" D DG1(.RC,1,RC(8))
 . I '$D(ERR),$G(RC(9))]"" D DG1(.RC,2,RC(9))
 . I '$D(ERR),$G(RC(10))]""  D DG1(.RC,3,RC(10))
 . I '$D(ERR) D OBXMSR(.RC)
 . I '$D(ERR) D ZLI(.RC)
 . I '$D(ERR),$G(RC(45))]"" D ZSR(.RC,1,RC(45))
 . I '$D(ERR),$G(RC(46))]"" D ZSR(.RC,2,RC(46))
 . I '$D(ERR),$G(RC(47))]"" D ZSR(.RC,3,RC(47))
 . I '$D(ERR),$G(RC(48))]"" D ZSR(.RC,4,RC(48))
 . I '$D(ERR),$G(RC(66))]"" D ZAN(.RC)
 . I $$ZPCCHK(.RC) D ZPC(.RC)
 . D ZCV
 . I LDA=+$G(APCLLAST) D
 .. D ZHS(TYP)
 .. D ZTS(TYP,LDA)
 I '$D(ERR) D
 .; Define sending and receiving parameters
 .S APPARMS("SENDING APPLICATION")="RPMS-ILI"
 .S APPARMS("ACCEPT ACK TYPE")="AL"
 .S APPARMS("APP ACK RESPONSE")="AACK^APCLSHL"
 .S APPARMS("ACCEPT ACK RESPONSE")="CACK^APCLSHL"
 .S APPARMS("APP ACK TYPE")="AL"
 .S APPARMS("QUEUE")="ILI ADT"
 .S WHO("RECEIVING APPLICATION")="ILI"
 .S WHO("FACILITY LINK NAME")="IHS"
 .S WHOTO("RECEIVING APPLICATION")="IHS"
 .I '$$SENDONE^HLOAPI1(.HLST,.APPARMS,.WHO,.ERR) D
 .. S ERR=$G(ERR)
 Q
 ;
AACK ; EP - Application ACK callback - called when AA, AE or AR is received.
 N DATA,AACK,XQAID,XQDATA,XQA,XQAMSG,MSGID
 Q:'$G(HLMSGIEN)
 S MSGID=$P($G(^HLB(+HLMSGIEN,0)),U)
 S AACK=$G(^HLB(HLMSGIEN,4))
 I $P(AACK,U,3)'["|AA|" D
 .S XQAMSG="ILI message "_MSGID_" did not receive a correct application ack."
 .S XQAID="ILI,"_MSGID_","_50
 .S XQDATA=$P(AACK,U,3)
 .S XQA("G.APCS ILI")=""
 .D SETUP^XQALERT
 Q
 ;
CACK ; EP - Commit ACK callback - called when CA, CE or CR is received.
 N CACK,XQAID,XQAMSG,XQA,XQDATA,MSGID
 S MSGID=$P($G(^HLB(+HLMSGIEN,0)),U)
 S CACK=$G(^HLB(HLMSGIEN,4))
 I $P(CACK,U,3)'["|CA|" D
 .S XQAMSG="ILI message "_MSGID_" did not receive a correct commit acknowledgement."
 .S XQAID="ILI,"_MSGID_","_50
 .S XQDATA=$P(CACK,U,3)
 .S XQA("G.APCS ILI")=""
 .D SETUP^XQALERT
 Q
 ;
ERR ;
 Q
 ;
EVN(MTYPE,EVNTTYPE) ;Create the EVN segment
 N %,X,FLD,VAL
 D NOW^%DTC
 S X=$$HLDATE^HLFNC(%,"TS")
 D SET(.ARY,"EVN",0)
 D SET(.ARY,EVNTTYPE,1)
 D SET(.ARY,X,2)
 S X=$$ADDSEG^HLOAPI(.HLMSTATE,.ARY,.ERR)
 Q
 ; Create PID segment
PID(R) ;EP
 S HLQ=HL1("Q")
 D SET(.ARY,"PID",0)
 D SET(.ARY,1,1)
 D SET(.ARY,R(1),2)
 D SET(.ARY,R(2),3)  ; Patient HRN
 D SET(.ARY,R(3),8)
 D SET(.ARY,$$HLD(R(4)),7)
 D SET(.ARY,R(5),11,8)
 S X=$$ADDSEG^HLOAPI(.HLMSTATE,.ARY,.ERR)
 Q
 ;
 ;
PIDLAB(R) ;EP
 D PIDLAB^APCLSIH1(R)
 Q
 ;
ZIDLAB(R) ;
 D ZIDLAB^APCLSIH1(R)
 Q
 ;
PV1(R) ;-- setup the PV1 segment
 N PRVI,PRV,LNM,FNM,MI,NPI
 D SET(.ARY,"PV1",0)
 D SET(.ARY,1,1)
 D SET(.ARY,R(6),3,1)
 D SET(.ARY,R(41),3,2)
 ;add attending doctor to PV1-7 with NPI in the format NPI^LAST^FIRST^MIDDLE^^^^N
 S PRVI=$G(R(138))
 I $G(PRVI) D
 . S NPI=$$GET1^DIQ(200,PRVI,41.99)
 . S PRV=$$GET1^DIQ(200,PRVI,.01)
 . ;D STDNAME^XLFNAME(.PRV,"CP")
 . ;S LNM=$G(PRV("FAMILY"))
 . ;S FNM=$G(PRV("GIVEN"))
 . ;S MI=$G(PRV("MIDDLE"))
 . D SET(.ARY,NPI,7,1)
 . ;D SET(.ARY,LNM,7,2)
 . ;D SET(.ARY,FNM,7,3)
 . ;D SET(.ARY,MI,7,4)
 . D SET(.ARY,"N",7,8)
 D SET(.ARY,R(12),19)
 D SET(.ARY,R(16),36)
 D SET(.ARY,R(132),41)  ;p30 visit status
 D SET(.ARY,$$HLD(R(7)),44)
 D SET(.ARY,$$HLD(R(17)),45)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
PV1LAB(R) ;-- setup the PV1 LAB segment
 D PV1LAB^APCLSIH1(R)
 Q
 ;
DG1(R,SQ,DG13) ;-- set the repeating DG1
 N ICDT
 ;S ICDT=$P($$ICDDX^APCLSILU(DG13,$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)  ;get the icd type based on the code
 S ICDT=$P($$ICDDX^APCLSILU(DG13,R(7)),U,20)  ;get the icd type based on the code
 D SET(.ARY,"DG1",0)
 D SET(.ARY,SQ,1)
 D SET(.ARY,"ICD",2)
 D SET(.ARY,DG13,3)
 D SET(.ARY,$S(ICDT="30":"I10",1:"I9"),3,3)  ;set the diagnosis type here
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
DG1LAB(R) ;EP
 D DG1LAB^APCLSIH1(R)
 Q
 ;
PR1LAB(R) ;EP
 D PR1LAB^APCLSIH1(R)
 Q
 ;
OBX(R) ;-- setup the ILI OBX segment
 D SET(.ARY,"OBX",0)
 D SET(.ARY,1,1)
 D SET(.ARY,"ST",2)
 D SET(.ARY,"TMP",3)
 D SET(.ARY,R(11),5)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
OBXMSR(R) ;-- setup the ILI OBX HT/WT segment
 N I,CNT
 S CNT=0
 F I=11,125,126 D
 . Q:R(I)=""
 . S CNT=CNT+1
 . D SET(.ARY,"OBX",0)
 . D SET(.ARY,CNT,1)
 . D SET(.ARY,"ST",2)
 . D SET(.ARY,$P(R(I),U,1),3)
 . D SET(.ARY,$P(R(I),U,2),5)
 . D SET(.ARY,$$HLD($P(R(I),U,3)),14)
 . S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 F I=37 D
 . Q:R(I)=""
 . S CNT=CNT+1
 . D SET(.ARY,"OBX",0)
 . D SET(.ARY,CNT,1)
 . D SET(.ARY,"ST",2)
 . D SET(.ARY,"BMI",3)
 . D SET(.ARY,$P(R(I),U,1),5)
 . D SET(.ARY,$$HLD(R(38)),14)
 . S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 . ;
 Q
 ;
OBXLAB(R) ;
 D OBXLAB^APCLSIH1(R)
 Q
 ;
ZLI(R) ;-- setup the ILI ZLI segment
 D SET(.ARY,"ZLI",0)
 D SET(.ARY,1,1)
 D SET(.ARY,$$HLD(R(14)),3)
 D SET(.ARY,R(15),4)
 D SET(.ARY,R(18),5)
 D SET(.ARY,$$HLD(R(19)),6)
 D SET(.ARY,R(21),8)
 D SET(.ARY,R(22),9)
 I $G(R(22))["." D
 . N ICDTA
 . ;S ICDTA=$P($$ICDDX^APCLSILU(R(22),$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)
 . S ICDTA=$P($$ICDDX^APCLSILU(R(22),R(7)),U,20)  ;get the icd type based on the code
 . D SET(.ARY,$S(ICDTA="30":"I10",1:"I9"),9,3)
 D SET(.ARY,R(33),10)
 D SET(.ARY,R(34),11)
 D SET(.ARY,R(35),12)
 D SET(.ARY,R(36),13)
 D SET(.ARY,R(39),16)
 D SET(.ARY,$$HLD(R(40)),17)
 N ICDT
 ;S ICDT=$P($$ICDDX^APCLSILU(R(43),$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)
 S ICDT=$P($$ICDDX^APCLSILU(R(43),R(7)),U,20)  ;get the icd type based on the code
 D SET(.ARY,R(43),19)
 I $G(R(43))]"" D SET(.ARY,$S(ICDT="30":"I10",1:"I9"),19,3)
 D SET(.ARY,R(44),20)
 D SET(.ARY,R(59),21)
 D SET(.ARY,R(60),22)
 D SET(.ARY,R(61),23)
 D SET(.ARY,R(62),24)
 D SET(.ARY,R(63),25)
 D SET(.ARY,R(64),26)
 D SET(.ARY,R(65),27)
 D SET(.ARY,$$HLD(R(123)),28)
 D SET(.ARY,$$HLD(R(124)),29)
 D SET(.ARY,R(133),30)
 D SET(.ARY,R(134),31)
 D SET(.ARY,R(135),32)
 D SET(.ARY,$$HLD(R(136)),33)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
ZPCCHK(R) ;-- do we need to create a ZPC
 I R(107) Q 1
 F I=113:1:122 I R(I) Q 1
 Q 0
 ;
ZPC(R) ;-- setup the ZPC segment
 D SET(.ARY,"ZPC",0)
 D SET(.ARY,R(107),1)
 D SET(.ARY,R(113),2)
 N ICDT
 ;S ICDT=$P($$ICDDX^APCLSILU(R(113),$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)  ;get the icd type based on the code
 S ICDT=$P($$ICDDX^APCLSILU(R(113),R(7)),U,20)  ;get the icd type based on the code
 I $G(R(113))]"" D SET(.ARY,$S(ICDT="30":"I10",1:"I9"),2,3)
 D SET(.ARY,$$HLD(R(114)),3)
 D SET(.ARY,R(115),4)
 N ICDTA
 ;S ICDTA=$P($$ICDDX^APCLSILU(R(115),$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)  ;get the icd type based on the code
 S ICDTA=$P($$ICDDX^APCLSILU(R(115),R(7)),U,20)  ;get the icd type based on the code
 I $G(R(115))]"" D SET(.ARY,$S(ICDTA="30":"I10",1:"I9"),4,3)
 D SET(.ARY,$$HLD(R(116)),5)
 D SET(.ARY,R(117),6)
 N ICDTB
 ;S ICDTB=$P($$ICDDX^APCLSILU(R(117),$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)  ;get the icd type based on the code
 S ICDTB=$P($$ICDDX^APCLSILU(R(117),R(7)),U,20)  ;get the icd type based on the code
 I $G(R(117))]"" D SET(.ARY,$S(ICDTB="30":"I10",1:"I9"),6,3)
 D SET(.ARY,$$HLD(R(118)),7)
 D SET(.ARY,R(119),8)
 N ICDTC
 ;S ICDTC=$P($$ICDDX^APCLSILU(R(119),$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)  ;get the icd type based on the code
 S ICDTC=$P($$ICDDX^APCLSILU(R(119),R(7)),U,20)  ;get the icd type based on the code
 I $G(R(119))]"" D SET(.ARY,$S(ICDTC="30":"I10",1:"I9"),8,3)
 D SET(.ARY,$$HLD(R(120)),9)
 D SET(.ARY,R(121),10)
 N ICDTD
 ;S ICDTD=$P($$ICDDX^APCLSILU(R(121),$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)  ;get the icd type based on the code
 S ICDTD=$P($$ICDDX^APCLSILU(R(121),R(7)),U,20)  ;get the icd type based on the code
 I $G(R(121))]"" D SET(.ARY,$S(ICDTD="30":"I10",1:"I9"),10,3)
 D SET(.ARY,$$HLD(R(122)),11)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
ZAV(R,SQ,ZAV2,ZAV3) ;-- setup the ILI ZAV segment
 D SET(.ARY,"ZAV",0)
 D SET(.ARY,SQ,1)
 D SET(.ARY,$$HLD(ZAV2),2)
 D SET(.ARY,ZAV3,3)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
ZSR(R,SQ,ZSR2) ;-- setup the ILI ZSR segment
 N ICDT
 ;S ICDT=$P($$ICDDX^APCLSILU(ZSR2,$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)  ;get the icd type based on the code
 S ICDT=$P($$ICDDX^APCLSILU(ZSR2,R(7)),U,20)  ;get the icd type based on the code
 D SET(.ARY,"ZSR",0)
 D SET(.ARY,SQ,1)
 D SET(.ARY,ZSR2,2)
 D SET(.ARY,$S(ICDT="30":"I10",1:"I9"),2,3)  ;set the diagnosis type here
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
ZAE(R,SQ,ZAE2) ;-- setup the ILI ZAE segment
 D SET(.ARY,"ZAE",0)
 D SET(.ARY,SQ,1)
 D SET(.ARY,ZAE2,2)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
ZAS(R,SQ,ZAS2,ZAS3) ;-- setup the ILI ZAS segment
 D SET(.ARY,"ZAS",0)
 D SET(.ARY,SQ,1)
 D SET(.ARY,ZAS2,2)
 D SET(.ARY,$$HLD(ZAS3),3)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
ZAN(R) ;-- setup the ILI ZAN segment
 N I,ZANC,VAL,VALD
 S ZANC=1
 F I=66:1:70 D
 . I $G(R(I))]"" D
 .. S VAL=$G(R(I))
 .. S VALD=$$FMTHL7^XLFDT($G(R(I+42)))
 .. D SET(.ARY,"ZAN",0)
 .. D SET(.ARY,ZANC,1)
 .. N ICDT
 .. ;S ICDT=$P($$ICDDX^APCLSILU(VAL,$P($G(^APCLDATA($J,R,"PV1")),U,5)),U,20)
 .. S ICDT=$P($$ICDDX^APCLSILU(VAL,R(7)),U,20)  ;get the icd type based on the code
 .. D SET(.ARY,VAL,2)
 .. D SET(.ARY,$S(ICDT="30":"I10",1:"I9"),2,3)
 .. D SET(.ARY,VALD,3)
 .. S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 .. S ZANC=ZANC+1
 Q
 ;
ZCV(R) ;-- setup the ILI ZCV segment
 N J,ZCVC,VALC,VALD,ARBD,X,D
 S ZCVC=0
 S J=0 F  S J=$O(^AUPNVIMM("AC",DFN,J)) Q:J'=+J  D
 . Q:'$D(^AUPNVIMM(J,0))  ;bad xref
 . Q:$P(^AUPNVIMM(J,0),U,1)=""
 . S VALD=""
 . I $P($G(^AUPNVIMM(J,12)),U,1) S VALD=$P($P(^AUPNVIMM(J,12),U,1),".")
 . I VALD="" S VALD=$$VD^APCLV($P(^AUPNVIMM(J,0),U,3))
 . S VALC=$$GET1^DIQ(9999999.14,$P(^AUPNVIMM(J,0),U,1),.03)
 . S ARBD(9999999-VALD,J)=VALC
 S D=0 F  S D=$O(ARBD(D)) Q:D'=+D  D
 .S J=0 F  S J=$O(ARBD(D,J)) Q:J'=+J  D
 .. S VALD=$$FMTHL7^XLFDT(9999999-D),VALC=ARBD(D,J),ZCVC=ZCVC+1
 .. D SET(.ARY,"ZCV",0)
 .. D SET(.ARY,ZCVC,1)
 .. D SET(.ARY,VALC,2)
 .. D SET(.ARY,VALD,3)
 .. S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 Q
 ;
 ; Create MSA segment
MSA ;EP
 N MSA
 D SET(.ARY,"MSA",0)
 D SET(.ARY,"AA",1)
 D SET(.ARY,"TODO-MSGID",2)
 D SET(.ARY,"Transaction Successful",3)
 S MSA=$$ADDSEG^HLOAPI(.HLST,.ARY)
 Q
 ; Create MSH segment
 ;EP
 N MSH
 D SET(.ARY,"MSH",0)
 S MSH=$$ADDSEG^HLOAPI(.HLST,.ARY)
 Q
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
GL(IN,TYP) ;-- write out batch
 K ^APCLTMP($J)
 N BDA,BDO,HLODAT,MSH,MSGP,MSG,BT,BT1,BT2,BT3
 S APCLCNT=0
 S MSG=$P($G(^HLB(IN,0)),U,2)
 S BT1=$G(^HLB(IN,1))
 S BT2=$G(^HLB(IN,2))
 S BT3=$G(^HLB(IN,3))
 S BT=BT1_BT2_BT3
 D SETGL(BT)
 S BDA=0 F  S BDA=$O(^HLB(IN,3,BDA)) Q:'BDA  D
 . S MSH=""
 . S MSGP=$P($G(^HLB(IN,3,BDA,0)),U)
 . S BDO=0 F  S BDO=$O(^HLB(IN,3,BDA,BDO)) Q:'BDO  D
 .. S HLOMSH=$G(^HLB(IN,3,BDA,BDO))
 .. S MSH=MSH_HLOMSH
 . D SETGL(MSH)
 . D REST(MSG,MSGP)
 S DIK="^HLB(",DA=IN D ^DIK
 S DIK="^HLA(",DA=MSG D ^DIK
 D WRITE(TYP)
 Q
 ;
REST(M,MP) ;-- write out the remainder of the segments to the global
 N MDA,DATA,MCNT
 S MCNT=0
 S MDA=0 F  S MDA=$O(^HLA(M,2,MP,1,MDA)) Q:'MDA  D
 . S DATA=$G(^HLA(M,2,MP,1,MDA,0))
 . Q:DATA=""
 . D SETGL(DATA)
 Q
 ;
SETGL(D) ;-- set the temp global
 S APCLCNT=APCLCNT+1
 S ^APCLTMP($J,APCLCNT)=D
 Q
 ;
WRITE(T) ; use XBGSAVE to save the temp global (APCLDATA) to a delimited
 N XBGL,XBQ,XBQTO,XBNAR,XBMED,XBFLT,XBUF,XBFN,APCLFN
 S XBGL="APCLTMP",XBMED="F",XBQ="N",XBFLT=1,XBF=$J,XBE=$J
 S XBNAR="ILI FLU "_TYP_"_HL7 EXPORT"
 S APCLASU=$P($G(^AUTTLOC($P(^AUTTSITE(1,0),U),0)),U,10)
 ;is this a test system?
 NEW TST
 S TST=0
 ;I '$$PROD^XUPROD() S TST=1
 I $P($G(^APCLILIC(1,0)),U,5)="T" S TST=1
 S (XBFN,APCLDFN)=$S(TST:"FLZ",$G(APCLFLF):"FLF",1:"FLU")_"_"_APCLASU_"_"_$$DATE(DT)_"_P30.txt"
 S XBS1="SURVEILLANCE ILI SEND"
 ;
 D ^XBGSAVE
 ;
 I XBFLG'=0 D
 . I XBFLG(1)="" W:'$D(ZTQUEUED) !!,TYP_" HL7 file successfully created",!!
 . I XBFLG(1)]"" W:'$D(ZTQUEUED) !!,TYP_" HL7 file NOT successfully created",!!
 . W:'$D(ZTQUEUED) !,"File was NOT successfully transferred to IHS/CDC",!,"you will need to manually ftp it.",!
 . W:'$D(ZTQUEUED) !,XBFLG(1),!!
 D SETLOG
 K ^APCLTMP($J),APCLCNT
 K ^APCLDATA($J)
 Q
DATE(D) ;EP
 Q (1700+$E(D,1,3))_$E(D,4,5)_$E(D,6,7)
 ;
SETLOG ;EP
 D SET^APCLSIL4
 Q
