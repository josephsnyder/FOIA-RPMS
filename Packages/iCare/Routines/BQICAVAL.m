BQICAVAL ;GDIT/HS/ALA-Community Alert Validation ; 24 Jul 2012  1:42 PM
 ;;2.5;ICARE MANAGEMENT SYSTEM;**1**;May 24, 2016;Build 17
 ;
EN ;EP
 S TMFRAME="T-"_$$GET1^DIQ(90508,"1,",.24,"E")
 D LAB
 D EXP
 ; Get export format type 'D' is delimited and 'H' or blank is HL7
 S FRM=$P($G(^BQI(90508,1,0)),U,2)
 S IN=$S(FRM="D":1,1:0)
 S DELIM=$S(FRM="D":",",1:"~")
 S FLNM=$S('$$PROD^XUPROD():"CANEZ",1:"CANES")
 ; If HL7
 I FRM'="D" D ^BQICAHLO
 D WRITE
 K ASUFAC,BJ,DELIM,DXN,FLNM,FRM,GRP,IN,MEAS,POP,RESULT,XBPAFN,XBS1,ZISHC,ZISHDA1
 Q
 ;
LAB ;EP - Get all labs
 NEW UID,TREF,TAX
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S TREF=$NA(^TMP("BQITAX",$J)) K @TREF
 F TAX="BQI C.TRACH SPECIFIC LOINC","BQI C.TRACH NON-SPECIFIC LOINC","BQI C.TRACH DNA QUANT LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI C.TRACH SPECIFIC TAX","BQI C.TRACH NON-SPECIFIC TAX","BQI C.TRACH DNA QUANT TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(50)
 K @TREF
 ;
 S TAX="BQI S PNEUM SUSCEPT TEST LOINC" D BLD^BQITUTL(TAX,.TREF)
 S TAX="BQI S PNEUM SUSCEPT TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(45)
 K @TREF
 ;
 S TAX="SURVEILLANCE RAPID FLU LOINC" D BLD^BQITUTL(TAX,.TREF)
 S TAX="SURVEILLANCE RAPID FLU TESTS" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(79)
 K @TREF
 ;
 F TAX="BQI HEP B QUAL TEST LOINC","BQI HEP B QUANT TEST LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI HEP B QUAL TEST TAX","BQI HEP B QUANT TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(56)
 K @TREF
 ;
 F TAX="BQI HEP C QUAL TEST LOINC","BQI HEP C QUANT TEST LOINC" D BLD^BQITUTL(TAX,.TREF) D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI HEP C CONFIRM LOINC CODES","BQI HEP C GENOTYPE LOINC","BQI HEP C SCREEN LOINC CODES" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI HEP C QUAL TEST TAX","BQI HEP C QUANT TEST TAX","BQI HEP C CONFIRM TESTS" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI HEP C GENOTYPE TESTS","BQI HEP C SCREEN TESTS" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(57)
 K @TREF
 ;
 F TAX="BGP CD4 LOINC CODES","BKMV CD4 ABS LOINC CODES","BGP VIRAL LOAD LOINC CODES" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BGP CD4 TAX","BKMV CD4 ABS TESTS TAX","BGP HIV VIRAL LOAD TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI HIV AB QUAL SCREEN LOINC","BQI HIV QUAL CONFIRM LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI HIV AB QUAL SCREEN TAX","BQI HIV QUAL CONFIRM TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI HIV ID SPEC CONFIRM LOINC","BQI HIV QUAL NUC ACID LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI HIV ID SPEC CONFIRM TAX","BQI HIV QUAL NUC ACID TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI HIV QUAL ANTIGEN LOINC","BQI HIV VIROLOGIC TEST LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI HIV QUAL ANTIGEN TAX","BQI HIV VIROLOGIC TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI HIV AB QUANT SCREEN LOINC","BQI HIV QUANT CONFIRM LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI HIV AB QUANT SCREEN TAX","BQI HIV QUANT CONFIRM TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI HIV QUANT NUC ACID LOINC","BQI HIV QUANT ANTIGEN LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI HIV QUANT NUC ACID TAX","BQI HIV QUANT ANTIGEN TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(2)
 K @TREF
 ;
 F TAX="BQI MEASLES QUAL TEST LOINC","BQI MEASLES ID SPEC TEST LOINC","BQI MEASLES QUAN TEST LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI MEASLES QUAL TEST TAX","BQI MEASLES ID SPEC TEST TAX","BQI MEASLES QUAN TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(14)
 K @TREF
 ;
 F TAX="BQI MENINGITIS QUAL TEST LOINC","BQI MENINGITIS ID SPEC LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI MENINGITIS GRAM STAIN LNC","BQI MENINGITIS QUAN LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI MENINGITIS QUAL TEST TAX","BQI MENINGITIS GRAM STAIN TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI MENINGITIS ID SPEC TAX","BQI MENINGITIS QUAN TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(4)
 K @TREF
 ;
 F TAX="BKM PPD LOINC CODES","BQI PPD DIAMETER LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BKM PPD TAX","BQI PPD DIAMETER TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI TB GAMMA REL QUAL TEST TAX","BQI TB GAMMA REL QUANT TEST TX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI TB GAMMA REL QUAL TEST LNC","BQI TB GAMMA REL QUANT TEST LC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI TB RNA DNA QUAL TEST LOINC","BQI TB RNA DNA QUANT TEST LNC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI TB RNA DNA QUAL TEST TAX","BQI TB RNA DNA QUANT TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI TB SPECIFIC AFB TEST LOINC","BQI TB NONSPEC AFB TEST LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI TB SPECIFIC AFB TEST TAX","BQI TB NONSPEC AFB TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(29)
 K @TREF
 ;
 F TAX="BKM RPR LOINC CODES","BQI SYPH DARK FIELD TEST LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BKM RPR TAX","BQI SYPH DARK FIELD TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 F TAX="BQI SYPHILIS QUAL TEST LOINC","BQI SYPHILIS QUANT TEST LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI SYPHILIS QUAL TEST TAX","BQI SYPHILIS QUANT TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(46)
 K @TREF
 ;
 F TAX="BQI HIB QUAL TEST LOINC","BQI HIB CULTURE TEST LOINC","BQI HIB QUANT TEST LOINC" D BLD^BQITUTL(TAX,.TREF)
 F TAX="BQI HIB QUAL TEST TAX","BQI HIB CULTURE TEST TAX","BQI HIB QUANT TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(77)
 K @TREF
 ;
 F TAX="BQI S PNEUM CULTURE TEST LOINC" D BLD^BQITUTL(TAX,.TREF)
 S TAX="BQI S PNEUM CULTURE TEST TAX" D BLD^BQITUTL(TAX,.TREF,"L")
 D FND(78)
 ;
 Q
 ;
FND(TYP) ;EP
 NEW TIEN,DATE,BQDFN,LDATE,IEN
 S TIEN="",DATE=$$DATE^BQIUL1(TMFRAME),DATE=9999999-DATE
 F  S TIEN=$O(@TREF@(TIEN)) Q:TIEN=""  D
 . S BQDFN=""
 . F  S BQDFN=$O(^AUPNVLAB("AA",BQDFN)) Q:BQDFN=""  D
 .. S LDATE=""
 .. F  S LDATE=$O(^AUPNVLAB("AA",BQDFN,TIEN,LDATE)) Q:LDATE=""!(LDATE'<DATE)  D
 ... S IEN=""
 ... F  S IEN=$O(^AUPNVLAB("AA",BQDFN,TIEN,LDATE,IEN)) Q:IEN=""  D
 .... I "RM"']$P($G(^AUPNVLAB(IEN,11)),U,9) Q
 .... S ^XTMP("BQICAVAL",BQDFN,TYP,"LB",(9999999-LDATE),IEN)=TIEN_U_9000010.09
 .. S LDATE=""
 .. F  S LDATE=$O(^AUPNVMIC("AA",BQDFN,TIEN,LDATE)) Q:LDATE=""!(LDATE'<DATE)  D
 ... S IEN=""
 ... F  S IEN=$O(^AUPNVMIC("AA",BQDFN,TIEN,LDATE,IEN)) Q:IEN=""  D
 .... I "RM"']$P($G(^AUPNVMIC(IEN,11)),U,9) Q
 .... S ^XTMP("BQICAVAL",BQDFN,TYP,"LB",(9999999-LDATE),IEN)=TIEN_U_9000010.25
 Q
 ;
EXP ;EP - Export data
 NEW ALERT,ASUFAC,ASUN,ASUNM,BJ,CT,DELIM,DFN,DIAG,DTLMD,DXN,FLNM,FRM,GRP,I,IN,LAB,LCP,LOC,LOINC
 NEW MEAS,N,POP,RECORD,RESULT,RESULTS,RIEN,SITE,TMDATA,TYP,VDATE,VFILE,VISIT,VSDTM,XBPAFN,XBS1,ZISHC,ZISHDA1
 S ASUN=$P(^AUTTSITE(1,0),U),ASUFAC=$P($G(^AUTTLOC(ASUN,0)),U,10),ASUNM=$P(^DIC(4,ASUN,0),U)
 S CT=0,N=0
 K ^BQIDATA($J)
 ;
 S FRM=$P($G(^BQI(90508,1,0)),U,2)
 S IN=$S(FRM="D":1,1:0)
 S DELIM=$S(FRM="D":",",1:"~")
 I FRM="D" S HDR=$$JDATE(DT)_DELIM_CT_DELIM_ASUNM,^BQIDATA($J,IN)=HDR
 S FLNM=$S('$$PROD^XUPROD():"CANEZ",1:"CANES")
 ;
PROC ;EP
 S DFN=""
 F  S DFN=$O(^XTMP("BQICAVAL",DFN)) Q:DFN=""  D
 . S TYP=""
 . F  S TYP=$O(^XTMP("BQICAVAL",DFN,TYP)) Q:TYP=""  D
 .. S VDATE=""
 .. F  S VDATE=$O(^XTMP("BQICAVAL",DFN,TYP,"LB",VDATE)) Q:VDATE=""  D
 ... S RIEN=""
 ... F  S RIEN=$O(^XTMP("BQICAVAL",DFN,TYP,"LB",VDATE,RIEN)) Q:RIEN=""  D
 .... S VFILE=$P(^XTMP("BQICAVAL",DFN,TYP,"LB",VDATE,RIEN),U,2)
 .... S LAB=$P(^XTMP("BQICAVAL",DFN,TYP,"LB",VDATE,RIEN),U,1)
 .... S VISIT=$S(VFILE=9000010.25:$P($G(^AUPNVMIC(RIEN,0)),U,3),1:$P($G(^AUPNVLAB(RIEN,0)),U,3))
 .... I VISIT="" K ^XTMP("BQICAVAL",DFN,TYP,"LB",VDATE,RIEN) Q
 .... S ALERT=$P(^BQI(90507.8,TYP,2),U,1)
 .... S DIAG=$P(^BQI(90507.8,TYP,0),U,1),GRP=$P(^(0),U,3),DXN=""
 .... S LOC=$P($G(^AUPNVSIT(VISIT,0)),U,6)
 .... D FORM
 .. S VDATE=""
 .. F  S VDATE=$O(^XTMP("BQICAVAL",DFN,TYP,"DX",VDATE)) Q:VDATE=""  D
 ... S RIEN=""
 ... F  S RIEN=$O(^XTMP("BQICAVAL",DFN,TYP,"DX",VDATE,RIEN)) Q:RIEN=""  D
 .... S VFILE=$P(^XTMP("BQICAVAL",DFN,TYP,"DX",VDATE,RIEN),U,2)
 .... S DX=$P(^XTMP("BQICAVAL",DFN,TYP,"DX",VDATE,RIEN),U,1)
 .... S VISIT=$P($G(^AUPNVPOV(RIEN,0)),U,3)
 .... I VISIT="" K ^XTMP("BQICAVAL",DFN,TYP,"DX",VDATE,RIEN) Q
 .... S ALERT=$P(^BQI(90507.8,TYP,2),U,1)
 .... S DIAG=$P(^BQI(90507.8,TYP,0),U,1),GRP=$P(^(0),U,3),DXN=$$GET1^DIQ(9000010.07,RIEN_",",.01,"E")
 .... S LOC=$P($G(^AUPNVSIT(VISIT,0)),U,6)
 .... D FORM
 Q
 ;
FORM ; Format the data
 ; Unique Identifier
 S RECORD=$$UID(DFN)
 ; HRN
 S $P(RECORD,DELIM,2)=$S($$HRN^AUPNPAT(DFN,LOC)]"":$$HRN^AUPNPAT(DFN,LOC),1:$$HRN^AUPNPAT(DFN,DUZ(2)))
 ; Gender
 S $P(RECORD,DELIM,3)=$P(^DPT(DFN,0),U,2)
 ; DOB
 S $P(RECORD,DELIM,4)=$S(FRM="D":$$JDATE($P($G(^DPT(DFN,0)),U,3)),1:$$FMTHL7^XLFDT($P($G(^DPT(DFN,0)),U,3)))
 ; Age
 S $P(RECORD,DELIM,5)=$P($$AGE^BQIAGE(DFN,"",1)," ",1)
 ; Age Units
 S $P(RECORD,DELIM,6)=$P($$AGE^BQIAGE(DFN,"",1)," ",2)
 ; Patient Street Address
 S $P(RECORD,DELIM,7)=$$GET1^DIQ(2,DFN_",",.111,"E")
 ; Patient Address City
 S $P(RECORD,DELIM,8)=$$GET1^DIQ(2,DFN_",",.114,"E")
 ; Patient Address State
 NEW ST
 S ST=$$GET1^DIQ(2,DFN_",",.115,"I")
 S $P(RECORD,DELIM,9)=$$PTR^BQIUL2(2,.115,ST,1)
 ; Patient Address Zip
 S $P(RECORD,DELIM,10)=$S($$GET1^DIQ(2,DFN_",",.1112,"E")'="":$$GET1^DIQ(2,DFN_",",.1112,"E"),1:$$GET1^DIQ(2,DFN_",",.116,"E"))
 ; Patient County
 S $P(RECORD,DELIM,11)=$$COUN^BQIULPT(DFN)
 ; Current community of residence
 S $P(RECORD,DELIM,12)=$$COMMRES^AUPNPAT(DFN,"C")
 ; Race
 NEW RACE,RCN
 S RACE=$$RCE^BQIPTDMG(DFN,.01),RCN=$P(RACE,$C(28),1)
 I RCN'="" S $P(RECORD,DELIM,13)=$P(^DIC(10,RCN,0),U,3)
 ; Ethnicity
 NEW ETHN,ETN
 S ETHN=$$ETHN^BQIPTDMG(DFN,.01),ETN=$P(ETHN,$C(28),1)
 I ETN'="" S $P(RECORD,DELIM,14)=$P(^DIC(10.2,ETN,0),U,2)
 ; ASUFAC of encounter location
 S $P(RECORD,DELIM,15)=$S(LOC'="":$P($G(^AUTTLOC(LOC,0)),U,10),1:"")
 ; Visit Date
 S $P(RECORD,DELIM,16)=$S(FRM="D":$$JDATE(VDATE),1:$$FMTHL7^XLFDT(VDATE))
 ; Visit ID
 S $P(RECORD,DELIM,17)=$S($P($G(^AUPNVSIT(VISIT,11)),U,14)]"":$P($G(^AUPNVSIT(VISIT,11)),U,14),1:$$UIDV^AUPNVSIT(VISIT))
 ; Dxn code
 S $P(RECORD,DELIM,18)=DXN
 ; CDC diagnosis narrative
 S $P(RECORD,DELIM,19)=DIAG
 ; Type of alert
 S $P(RECORD,DELIM,20)=ALERT
 ; Group
 S $P(RECORD,DELIM,21)=GRP
 ; Visit last modified
 ;S DTLMD=$S(VFILE'=9000010:$P($G(^AMHREC(VISIT,11)),U,14),1:$P($G(^AUPNVSIT(VISIT,0)),U,13))
 S DTLMD=$S(VFILE'[9000010:$P($G(^AMHREC(VISIT,11)),U,14),1:$P($G(^AUPNVSIT(VISIT,0)),U,13))
 S $P(RECORD,DELIM,22)=$S(FRM="D":$$JDATE(DTLMD),1:$$FMTHL7^XLFDT(DTLMD))
 ; Set up Lab test result for OBX
 I VFILE=9000010.09 D
 . S SITE=$P($G(^AUPNVLAB(RIEN,11)),U,3),UNITS=$P($G(^AUPNVLAB(RIEN,11)),U,1)
 . S RLOW=$P($G(^AUPNVLAB(RIEN,11)),U,4),RHIGH=$P($G(^AUPNVLAB(RIEN,11)),U,5)
 . S RESULT=$P(^AUPNVLAB(RIEN,0),U,4)
 . S ABN=$P(^AUPNVLAB(RIEN,0),U,5)
 . I SITE="" D  Q
 .. S $P(RECORD,DELIM,25)=LAB_"^"_$P(^LAB(60,LAB,0),U,1)_"^99"_$P(^AUTTLOC(ASUN,0),U,7)_"="_RESULT
 .. S $P(RECORD,DELIM,31)=UNITS,$P(RECORD,DELIM,32)=RLOW_"^"_RHIGH,$P(RECORD,DELIM,33)=ABN
 . I SITE'="" D
 .. S LCP=$P($G(^LAB(60,LAB,1,SITE,95.3)),U,1)
 .. I LCP="" D  Q
 ... S $P(RECORD,DELIM,25)=LAB_"^"_$P(^LAB(60,LAB,0),U,1)_"^99"_$P(^AUTTLOC(ASUN,0),U,7)_"="_RESULT
 ... S $P(RECORD,DELIM,31)=UNITS,$P(RECORD,DELIM,32)=RLOW_"^"_RHIGH,$P(RECORD,DELIM,33)=ABN
 .. S LOINC=LCP_"-"_$P(^LAB(95.3,LCP,0),U,15)
 .. S $P(RECORD,DELIM,25)=LOINC_"^"_$P(^LAB(60,LAB,0),U,1)_"^LN="_RESULT_"^^"_$P($G(^LAB(95.3,LCP,80)),U,1)
 .. S $P(RECORD,DELIM,31)=UNITS,$P(RECORD,DELIM,32)=RLOW_"^"_RHIGH,$P(RECORD,DELIM,33)=ABN
 . ; for NTE
 . S $P(RECORD,DELIM,30)=VFILE_":"_RIEN
 I VFILE=9000010.25 D
 . S SITE=$P($G(^AUPNVMIC(RIEN,11)),U,3),UNITS=$P($G(^AUPNVMIC(RIEN,11)),U,1)
 . S RLOW=$P($G(^AUPNVMIC(RIEN,11)),U,4),RHIGH=$P($G(^AUPNVMIC(RIEN,11)),U,5)
 . S RESULT=$P(^AUPNVMIC(RIEN,0),U,7),ABN=""
 . I SITE="" D  Q
 .. S $P(RECORD,DELIM,25)=LAB_"^"_$P(^LAB(60,LAB,0),U,1)_"^99"_$P(^AUTTLOC(ASUN,0),U,7)_"="_RESULT
 .. S $P(RECORD,DELIM,31)=UNITS,$P(RECORD,DELIM,32)=RLOW_"^"_RHIGH,$P(RECORD,DELIM,33)=ABN
 . I SITE'="" D
 .. S LCP=$P($G(^LAB(60,LAB,1,SITE,95.3)),U,1)
 .. I LCP="" D  Q
 ... S $P(RECORD,DELIM,25)=LAB_"^"_$P(^LAB(60,LAB,0),U,1)_"^99"_$P(^AUTTLOC(ASUN,0),U,7)_"="_RESULT
 ... S $P(RECORD,DELIM,31)=UNITS,$P(RECORD,DELIM,32)=RLOW_"^"_RHIGH,$P(RECORD,DELIM,33)=ABN
 .. S LOINC=LCP_"-"_$P(^LAB(95.3,LCP,0),U,15)
 .. S $P(RECORD,DELIM,25)=LOINC_"^"_$P(^LAB(60,LAB,0),U,1)_"^LN="_RESULT_"^^"_$P($G(^LAB(95.3,LCP,80)),U,1)
 .. S $P(RECORD,DELIM,31)=UNITS,$P(RECORD,DELIM,32)=RLOW_"^"_RHIGH,$P(RECORD,DELIM,33)=ABN
 . ; for NTE
 . S $P(RECORD,DELIM,30)=VFILE_":"_RIEN
 ; Highest Temperature for OBX
 ;I VDATE'="",VFILE=9000010 D
 I VDATE'="" D
 . NEW TMN,RVDT,IEN,ZZ,RESULT
 . S TMN=$O(^AUTTMSR("B","TMP","")) I TMN="" Q
 . S RVDT=9999999-VDATE
 . S IEN=""
 . F  S IEN=$O(^AUPNVMSR("AA",DFN,TMN,RVDT,IEN)) Q:IEN=""  D
 .. S RESULT=$P($G(^AUPNVMSR(IEN,0)),"^",4) I RESULT="" Q
 .. S ZZ(RESULT)=""
 . S $P(RECORD,DELIM,23)=$O(ZZ(""),-1)
 ; Vitals for OBX
 I VFILE[9000010 D
 . NEW VITALS,BMI,IEN,TYP,RESULT,MEAS,XX,UID
 . S VITALS="",UID=$J
 . S BMI=$P($$PBMI^APCLV(DFN,DT),"^",1)
 . I BMI'="" S VITALS=VITALS_"BMI="_BMI_";"
 . S IEN=""
 . F  S IEN=$O(^AUPNVMSR("AD",VISIT,IEN)) Q:IEN=""  D
 .. S TYP=$P($G(^AUPNVMSR(IEN,0)),"^",1) I TYP="" Q
 .. S MEAS=$P(^AUTTMSR(TYP,0),"^",1),RESULT=$P(^AUPNVMSR(IEN,0),"^",4)
 .. I $P($G(^AUPNVMSR(IEN,2)),U,1)=1 Q
 .. S XX="BP,RS,PU,WT,HT"
 .. I '$F(XX,MEAS) Q
 .. S VITALS=VITALS_MEAS_"="_RESULT_";"
 . S $P(RECORD,DELIM,24)=$$TKO^BQIUL1(VITALS,";")
 ;
 S IN=IN+1,^BQIDATA($J,IN)=RECORD
 Q
 ;
UID(BQIDFN) ;EP - Given DFN return unique patient record id.
 I $G(BQIDFN)="" Q ""
 I $G(^AUPNPAT(BQIDFN,0))="" Q ""
 I $G(^DPT(BQIDFN,0))="" Q ""
 Q $$GET1^DIQ(9999999.06,$P(^AUTTSITE(1,0),U),.32)_$E("0000000000",1,10-$L(BQIDFN))_BQIDFN
 ;
JDATE(DATE) ;EP - Format the date
 I $G(DATE)="" Q ""
 NEW A
 S A=$$FMTE^XLFDT(DATE)
 Q $E(DATE,6,7)_$$UP^XLFSTR($P(A," ",1))_(1700+$E(DATE,1,3))
 ;
DATE(D) ;
 Q (1700+$E(D,1,3))_$E(D,4,5)_$E(D,6,7)
 ;
 ;send file
WRITE ; use XBGSAVE to save the temp global (BQIDATA) to a file that is exported
 ;
 NEW XBGL,XBQ,XBQTO,XBNAR,XBMED,XBFLT,XBUF,XBFN
 S XBMED="F",XBQ="N",XBFLT=1,XBF=$J,XBE=$J
 S XBGL=$S(FRM="D":"BQIDATA",1:"BQIHL7")
 S XBNAR="CANE SURVEILLANCE EXPORT"
 S ASUFAC=$P($G(^AUTTLOC($P(^AUTTSITE(1,0),U),0)),U,10)  ;asufac for file name
 S XBFN="CANE3_"_ASUFAC_"_"_$$DATE(DT)_".txt"
 S XBS1="CANE SURVEILLANCE SEND"
 S XBUF=$P($G(^AUTTSITE(1,1)),"^",2)
 I XBUF="" S XBUF=$P($G(^XTV(8989.3,1,"DEV")),"^",1)
 ;
 D ^XBGSAVE
 ;
 K ^BQIDATA($J),^BQIHL7($J)
 K HLSTATE,XBFLG
 Q
