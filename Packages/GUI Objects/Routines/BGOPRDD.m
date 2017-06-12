BGOPRDD ; IHS/BAO/TMD - Problem Details ;23-Jun-2016 08:38;du
 ;;1.1;BGO COMPONENTS;**13,14,20,21**;Mar 20, 2007;Build 6
 ;---------------------------------------------
DETAIL(RET,IEN,DFN,ACT,NUM,VIEN) ;Get a detail report on one problem
 N ZERO,CNT,PROB,CLASS,STATUS,ACLASS,PIP,ONSET,SNOMED,DESC,IN,OUT,LAT,LATEXT
 S VIEN=$G(VIEN)
 S ZERO=$G(^AUPNPROB(IEN,0))
 S ACT=$G(ACT),NUM=$G(NUM)
 S RET=$$TMPGBL,CNT=0
 D ADD2(""),ADD2("PROBLEM DATA")
 D ADD1($$GET1^DIQ(9000011,IEN,.07),"  ID:")
 S PROB=$$GET1^DIQ(9000011,IEN,.05)
 D ADD1(PROB,"Problem:")
 D CHANGED^BGOPAUD(IEN,.05)
 D ADD1($$GET1^DIQ(9000011,IEN,.01)," - Mapped ICD:")
 D CHANGED^BGOPAUD(IEN,.01)
 S CLASS=$$GET1^DIQ(9000011,IEN,.04)
 S STATUS=$$GET1^DIQ(9000011,IEN,.12)
 I CLASS'="" S STATUS=STATUS_" - Class: "_CLASS
 D ADD1(STATUS," - Status:")
 D CHANGED^BGOPAUD(IEN,.12)
 I $$GET1^DIQ(9000011,IEN,.13)="" S ONSET="UNKNOWN"
 E  S ONSET=$$GET1^DIQ(9000011,IEN,.13)
 D ADD1(ONSET," - Date of Onset:")
 D ADD1($$GET1^DIQ(9000011,IEN,.08)," - Date Entered:")
 D ADD1($$GET1^DIQ(9000011,IEN,1.04)," - Recorded By:")
 D ADD1($$GET1^DIQ(9000011,IEN,.03)," - Last Modified:")
 D ADD1($$GET1^DIQ(9000011,IEN,.14)," - Modified User:")
 S ACLASS=$$GET1^DIQ(9000011,IEN,.15)
 I ACLASS'="" D ADD1(ACLASS," - Asthma Class:")
 D CHANGED^BGOPAUD(IEN,.15)
 S PIP=$$GET1^DIQ(9000011,IEN,.19,"I")
 I PIP=1 D ADD1(PIP," - Pregnancy DX:")
 S SNOMED=$P($G(^AUPNPROB(IEN,800)),U,1)
 D ADD1(SNOMED," - Concept CT:")
 D CHANGED^BGOPAUD(IEN,80001)
 S DESC=$P($G(^AUPNPROB(IEN,800)),U,2)
 D ADD1(DESC," - Desc CT: ")
 D CHANGED^BGOPAUD(IEN,80002)
 ;IHS/MSC/MGH added laterality
 S LAT=$P($G(^AUPNPROB(IEN,0)),U,22)
 I LAT'="" D
 .S LATEXT=$$CVPARM^BSTSMAP1("LAT",$P(LAT,"|",2))
 .D ADD1(LATEXT," - Laterality: ")
 D ADD2("")
 D NOTES
 D ICD(IEN)
 D QUAL(IEN)
 I VIEN="" D POV(IEN),ADD2("")
 D INPT(IEN)
 D CARE(IEN,DFN,ACT)
 D VISIT(IEN,DFN,NUM,VIEN)
 D OB(IEN,DFN,NUM,VIEN)
 D VTREAT(IEN,DFN,NUM,VIEN)
 I VIEN="" D CONSULT(IEN,DFN,NUM)
 D REFERRAL(IEN,DFN,NUM,VIEN)
 D EDU(IEN,DFN,NUM,VIEN)
 I VIEN="" D RECON(IEN)
 Q
NOTES ; Get the notes for this problem
 N AIEN,IEN2,BY,WHEN,NUM,FAC,NARR,I,NOTES
 D NOTES^BGOPRBN(.NOTES,IEN,1)
 I $D(NOTES)>1 D ADD2("          NOTES")
 S I="" F  S I=$O(NOTES(I)) Q:I=""  D
 .S FAC=$P(NOTES(I),U,1)
 .S FAC=$$GET1^DIQ(9999999.06,FAC,.01)
 .D CHANGED^BGOPAUD(IEN,"9000011.11,.01")
 .S NUM=$P(NOTES(I),U,3)
 .S STAT=$P(NOTES(I),U,5) I STAT="A" S STATUS="ACTIVE"
 .S BY=$P(NOTES(I),U,7)
 .S BY=$$GET1^DIQ(200,BY,.01)
 .S WHEN=$$FMTE^XLFDT($P(NOTES(I),U,6))
 .S NARR=$P(NOTES(I),U,4)
 .D ADD2("Site: "_FAC_"  Number: "_NUM_" Status: "_STAT)
 .D ADD2("Entered By: "_BY_"   On: "_WHEN)
 .D ADD2(NARR)
 .D ADD2("")
 Q
ICD(IEN) ;Get any additional ICD codes for this problem
 N AIEN,IEN2
 I $D(^AUPNPROB(IEN,12)) D ADD2("     Additional ICD Codes")
 S IEN2=0 F  S IEN2=$O(^AUPNPROB(IEN,12,IEN2)) Q:'+IEN2  D
 .S AIEN=IEN2_","_IEN_","
 .D ADD2($$GET1^DIQ(9000011.12,AIEN,.01))
 Q
QUAL(IEN) ;Get any qualifiers for this problem
 N AIEN,IEN2,BY,WHEN,X,FNUM,Q
 I $D(^AUPNPROB(IEN,13))!($D(^AUPNPROB(IEN,17)))!($D(^AUPNPROB(IEN,18))) D ADD2("     QUALIFIERS")
 F X=13,17,18 D
 .S FNUM=$S(X=13:9000011.13,X=17:9000011.17,X=18:9000011.18)
 .S IEN2=0 F  S IEN2=$O(^AUPNPROB(IEN,X,IEN2)) Q:'+IEN2  D
 ..S AIEN=IEN2_","_IEN_","
 ..S Q=$$GET1^DIQ(FNUM,AIEN,.01)
 ..S Q=$$CONCEPT^BGOPAUD(Q)
 ..D ADD2(Q)
 ..I X=13 D
 ...S BY=$$GET1^DIQ(FNUM,AIEN,.02)
 ...S WHEN=$$GET1^DIQ(FNUM,AIEN,.03)
 ...D ADD2("Entered by: "_BY_"    On: "_WHEN)
 Q
POV(IEN) ;See if this problem has been used as a POV
 N AIEN,IEN2,BY,WHEN
 I $D(^AUPNPROB(IEN,14)) D ADD2("") D ADD2("     POV VISITS")
 S IEN2=0 F  S IEN2=$O(^AUPNPROB(IEN,14,IEN2)) Q:'+IEN2  D
 .S AIEN=IEN2_","_IEN_","
 .D ADD2($$GET1^DIQ(9000011.14,AIEN,.01))
 Q
INPT(IEN) ;See if this problem has been used for inpt visits
 N AIEN,IEN2,BY,WHEN
 I $D(^AUPNPROB(IEN,15))>9 D ADD2("     USED FOR INPT VISITS")
 S IEN2=0 F  S IEN2=$O(^AUPNPROB(IEN,15,IEN2)) Q:'+IEN2  D
 .S AIEN=IEN2_","_IEN_","
 .D ADD2($$GET1^DIQ(9000011.15,AIEN,.01))
 Q
 ;Find the latest number of entries for each section using the
 ;parameter and return them to the calling program
 ;Input is IEN of Problem
 ;         DFN of Patient
CARE(IEN,DFN,ACT) ;EP
 ;Start with all the goals
 N DATA,STR
 S DATA=""
 I $G(ACT)="" S ACT="A"
 D GET^BGOCPLAN(.DATA,IEN,DFN,"G",ACT,"")
 I $D(^TMP("BGOPLAN",$J)) D
 .D ADD2("")
 .D ADD2("     GOALS")
 .D PLAN
 .K ^TMP("BGOPLAN",$J)
 ;Then do all the care plans
 N DATA,STR
 S DATA=""
 I $G(ACT)="" S ACT="C"
 D GET^BGOCPLAN(.DATA,IEN,DFN,"C",ACT,"")
 I $D(^TMP("BGOPLAN",$J)) D
 .D ADD2("")
 .D ADD2("     CARE PLANS")
 .D PLAN
 .K ^TMP("BGOPLAN",$J)
 Q
VISIT(IEN,DFN,NUM,VIEN) ;visit instructions
 ;Next get all the visit instructions
 N DATA,STR
 S DATA=""
 I $G(NUM)="" S NUM=99999
 D GET^BGOVVI(.DATA,DFN,IEN,NUM,"",.VIEN)
 Q:'$D(^TMP("BGOVIN",$J))
 D ADD2("")
 D ADD2("     VISIT INSTRUCTIONS")
 D VST
 Q
OB(IEN,DFN,NUM,VIEN) ;OB notes
 ;Next get all the OB NOTES
 N DATA,STR
 S DATA=""
 I $G(NUM)="" S NUM=99999
 D GET^BGOVOB(.DATA,DFN,IEN,NUM,"",.VIEN)
 Q:'$D(^TMP("BGOVOB",$J))
 D ADD2("")
 D ADD2("     OB NOTES")
 D VOB
 Q
VTREAT(IEN,DFN,NUM,VIEN) ;Then do all the treatment/regimen entries
 N DATA,STR,CT2
 S DATA="",CT2=0
 I $G(NUM)="" S NUM=99999
 D GET^BGOVTR(.DATA,DFN,IEN,NUM,"",.VIEN)
 Q:'$D(^TMP("BGOVIN",$J))
 D ADD2("")
 D ADD2("     TREATMENT/REGIMENS")
 D TREAT
 Q
 ;Get all the consults
CONSULT(IEN,DFN,NUM) ;FIND consults
 N DATA,STR,CT2,SER,SDATE,SSTAT
 S DATA=""
 I $G(NUM)="" S NUM=99999
 D GETCON^BGOVTR(.DATA,DFN,IEN,NUM,"")
 Q:'$D(^TMP("BGOVIN",$J))
 D ADD2("")
 D ADD2("     CONSULTS")
 S CT2=0
 F  S CT2=$O(^TMP("BGOVIN",$J,CT2)) Q:'+CT2  D
 .S STR=$G(^TMP("BGOVIN",$J,CT2))
 .S SER=$P(STR,U,2),SDATE=$P(STR,U,3),SSTAT=$P(STR,U,4)
 .D ADD2(" - CONSULT: "_SER)
 .D ADD2(" - Date Ordered: "_SDATE_"  Status: "_SSTAT)
 Q
 ;Get all the consults
REFERRAL(IEN,DFN,NUM,VIEN) ;FIND referrals
 N DATA,STR,CT2,SER,SDATE,SSTAT
 S DATA=""
 I $G(NUM)="" S NUM=99999
 D GETREF^BGOVTR(.DATA,DFN,IEN,NUM,.VIEN)
 Q:'$D(^TMP("BGOVIN",$J))
 D ADD2("")
 D ADD2("     REFERRALS")
 S CT2=0
 F  S CT2=$O(^TMP("BGOVIN",$J,CT2)) Q:'+CT2  D
 .S STR=$G(^TMP("BGOVIN",$J,CT2))
 .S SER=$P(STR,U,2),SDATE=$P(STR,U,3),SSTAT=$P(STR,U,4)
 .D ADD2(" - REFERRAL: "_SER)
 .D ADD2(" - Date Ordered: "_SDATE_"  Status: "_SSTAT)
 Q
EDU(IEN,DFN,NUM,VIEN) ;Find education
 N DATA,STR,CT2,SER,SDATE,SSTAT,SNO,EIEN
 S DATA=""
 I $G(NUM)="" S NUM=99999
 D GETEDU^BGOVTR(.DATA,DFN,IEN,NUM,.VIEN)
 Q:'$D(^TMP("BGOVIN",$J))
 D ADD2("")
 D ADD2("     EDUCATION")
 S CT2=0
 F  S CT2=$O(^TMP("BGOVIN",$J,CT2)) Q:'+CT2  D
 .S STR=$G(^TMP("BGOVIN",$J,CT2))
 .S EIEN=$P(STR,U,6)
 .S SER=$P(STR,U,2),SDATE=$P(STR,U,3)
 .D ADD2("TOPIC: "_SER)
 .D ADD2(" - Date Ordered: "_SDATE)
 .S SNO=""  F  S SNO=$O(^AUPNVPED(EIEN,26,"B",SNO)) Q:SNO=""  D
 ..D ADD2(" - SNOMED: "_SNO)
 .S SNO=$P(STR,U,7)
 .D ADD2(" - SNOMED: "_SNO)
 Q
PLAN ;GET ALL CARE PLANNING DATA
 N CT2,STR,STAT,SIGNED,CPIEN,SIGNBY,SIGNDT
 S CT2=0
 F  S CT2=$O(^TMP("BGOPLAN",$J,CT2)) Q:'+CT2  D
 .S STR=$G(^TMP("BGOPLAN",$J,CT2))
 .I $P(STR,U,1)="~t" D
 ..D ADD2($P(STR,U,2))
 .E  D
 ..S BY=$P(STR,U,4),WHEN=$P(STR,U,5)
 ..D ADD2(" - Entered by: "_BY_"    On: "_WHEN)
 ..S STAT=$P(STR,U,6)
 ..S STAT=$S(STAT="A":"Active",STAT="I":"Inactive",STAT="R":"Replaced",1:STAT)
 ..D ADD2(" - Status: "_STAT)
 ..S SIGNED=$P(STR,U,7)
 ..I SIGNED=1 D
 ...S CPIEN=$P(STR,U,2)
 ...S SIGNBY=$$GET1^DIQ(9000092,CPIEN,.07)
 ...S SIGNDT=$$GET1^DIQ(9000092,CPIEN,.08)
 ...D ADD2(" - Signed by: "_SIGNBY_"    on: "_SIGNDT)
 Q
VST ;GET ALL VISIT INSTRUCTIONS
 N CT2,STR,STAT,SIGNED,VIIEN,SIGNBY,SIGNDT,FAC,VDT,VCAT,EVDT,PRV,ENTBY,ENTDT,MODBY,MODDT
 S CT2=0
 F  S CT2=$O(^TMP("BGOVIN",$J,CT2)) Q:'+CT2  D
 .S STR=$G(^TMP("BGOVIN",$J,CT2))
 .I $P(STR,U,1)="~t" D
 ..D ADD2($P(STR,U,2))
 .E  D
 ..S VIIEN=$P(STR,U,2)
 ..S VDT=$P(STR,U,4)
 ..S VCAT=$P(STR,U,10)
 ..D ADD2(" - Visit Date: "_VDT_"  Category:"_VCAT)
 ..S FAC=$P(STR,U,5)
 ..D ADD2(" - Facility: "_FAC)
 ..S EVDT=$P(STR,U,8)
 ..S PRV=$P(STR,U,12)
 ..D ADD2(" - Provider: "_PRV)
 ..D ADD2(" - Event Date: "_EVDT)
 ..S SIGNBY=$$GET1^DIQ(9000010.58,VIIEN,.04)
 ..S ENTBY=$$GET1^DIQ(9000010.58,VIIEN,1217)
 ..S ENTDT=$$GET1^DIQ(9000010.58,VIIEN,1216)
 ..S MODBY=$$GET1^DIQ(9000010.58,VIIEN,1219)
 ..S MODDT=$$GET1^DIQ(9000010.58,VIIEN,1218)
 ..D ADD2(" - Entered by: "_ENTBY_"    On: "_ENTDT)
 ..D ADD2(" - Last Modified by: "_MODBY_"  On: "_MODDT)
 ..S SIGNDT=$P(STR,U,13)
 ..I SIGNDT'="" D ADD2(" - Signed by: "_SIGNBY_"    on: "_SIGNDT)
 Q
VOB ;GET ALL V OB NOTES
 N CT2,STR,STAT,SIGNED,OBIEN,SIGNBY,SIGNDT,FAC,VDT,VCAT,EVDT,PRV,ENTBY,ENTDT,MODBY,MODDT
 S CT2=0
 F  S CT2=$O(^TMP("BGOVOB",$J,CT2)) Q:'+CT2  D
 .S STR=$G(^TMP("BGOVOB",$J,CT2))
 .I $P(STR,U,1)="~t" D
 ..D ADD2($P(STR,U,2))
 .E  D
 ..S OBIEN=$P(STR,U,2)
 ..S VDT=$P(STR,U,4)
 ..S VCAT=$P(STR,U,10)
 ..D ADD2(" - Visit Date: "_VDT_"  Category:"_VCAT)
 ..S FAC=$P(STR,U,5)
 ..D ADD2(" - Facility: "_FAC)
 ..S EVDT=$P(STR,U,8)
 ..S PRV=$P(STR,U,12)
 ..D ADD2(" - Provider: "_PRV)
 ..D ADD2(" - Event Date: "_EVDT)
 ..S SIGNBY=$$GET1^DIQ(9000010.43,OBIEN,.04)
 ..S ENTBY=$$GET1^DIQ(9000010.43,OBIEN,1217)
 ..S ENTDT=$$GET1^DIQ(9000010.43,OBIEN,1216)
 ..S MODBY=$$GET1^DIQ(9000010.43,OBIEN,1219)
 ..S MODDT=$$GET1^DIQ(9000010.43,OBIEN,1218)
 ..D ADD2(" - Entered by: "_ENTBY_"    On: "_ENTDT)
 ..D ADD2(" - Last Modified by: "_MODBY_"  On: "_MODDT)
 ..S SIGNDT=$P(STR,U,13)
 ..I SIGNDT'="" D ADD2(" - Signed by: "_SIGNBY_"    on: "_SIGNDT)
 Q
TREAT ; GET THE TREATMENT DATA
 N CT,STR,VIIEN,SNOMED,VDT,VCAT,FAC,EVDT,PRV,ENTBY,ENTDT,MODBY,MODDT,IN,X,TXT
 F  S CT2=$O(^TMP("BGOVIN",$J,CT2)) Q:'+CT2  D
 .S STR=$G(^TMP("BGOVIN",$J,CT2))
 .S VIIEN=$P(STR,U,2)
 .S SNOMED=$P(STR,U,3)
 .S VDT=$P(STR,U,5)
 .S VCAT=$P(STR,U,11)
 .S IN=SNOMED_U_U_VDT_U_1
 .S X=$$CONC^BSTSAPI(IN)
 .S TXT=$P(X,U,4)
 .S SNOMED=TXT_" ("_SNOMED_")"
 .D ADD2("SNOMED TERM: "_SNOMED)
 .D ADD2(" - Visit Date: "_VDT_"  Category:"_VCAT)
 .S FAC=$P(STR,U,6)
 .D ADD2(" - Facility: "_FAC)
 .S EVDT=$P(STR,U,9)
 .S PRV=$P(STR,U,13)
 .D ADD2(" - Provider: "_PRV)
 .D ADD2(" - Event Date: "_EVDT)
 .S ENTBY=$$GET1^DIQ(9000010.61,VIIEN,1217)
 .S ENTDT=$$GET1^DIQ(9000010.61,VIIEN,1216)
 .S MODBY=$$GET1^DIQ(9000010.61,VIIEN,1219)
 .S MODDT=$$GET1^DIQ(9000010.61,VIIEN,1218)
 .D ADD2(" - Entered by: "_ENTBY_"    On: "_ENTDT)
 .D ADD2(" - Last Modified by: "_MODBY_"  On: "_MODDT)
 Q
LOOK(SNOMED) ;LOOKUP CODE
 N RET
 S RET=$P($$DESC^BSTSAPI(SNOMED_"^^1"),U,2)
 Q RET
RECON(IEN) ;Display the reconciliation data for this problem
 N REC,AIEN,WHEN,BY,RIEN
 S REC=""
 I $D(^BEHOCIR("G","P",IEN)) D
 .D ADD2("")
 .D ADD2("     RECONCILATION DATA")
 .F  S REC=$O(^BEHOCIR("G","P",IEN,REC)) Q:REC=""  D
 ..S RIEN="" F  S RIEN=$O(^BEHOCIR("G","P",IEN,REC,RIEN)) Q:RIEN=""  D
 ...S AIEN=RIEN_","_REC_","
 ...S WHEN=$$GET1^DIQ(90461.632,AIEN,.01)
 ...S BY=$$GET1^DIQ(90461.632,AIEN,.02)
 ...D ADD2(" - Reconciled on: "_WHEN_" by "_BY)
 Q
ADD1(TXT,LBL) ;
 S CNT=CNT+1 S @RET@(CNT)=$S($D(LBL):$$LJ^XLFSTR(LBL,20),1:"")_$G(TXT),LBL=""
 Q
ADD2(TXT) ;
 S CNT=CNT+1 S @RET@(CNT)=TXT
 Q
TMPGBL(X) ;EP
 K ^TMP("BGOPRDD",$J) Q $NA(^($J))
