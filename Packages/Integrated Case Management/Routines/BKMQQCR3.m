BKMQQCR3 ;PRXM/HC/BWF - BKMV Quality of Care Report; [ 1/19/2005  7:16 PM ]
 ;;2.1;HIV MANAGEMENT SYSTEM;;Feb 07, 2011
 ; Quality of Care Audit Report
 Q
TETSTAT ; EP - Tetanus Status
 N TETDT,TETDT1,CVXTAX,ICDTAX,PRCTAX,CPTTAX,GLOBAL,GLOBAL2,REFGLOB,TOTPTS,BKMDFN
 S TETDT=$$FMADD^XLFDT(EDATE,-3650)
 S TETDT1=$$FMADD^XLFDT(EDATE,-365)
 S CVXTAX="BKM TETANUS IZ CVX CODES"
 S ICDTAX="BKM TETANUS IZ DXS"
 S PRCTAX="BKM TETANUS IZ PROCEDURES"
 S CPTTAX="BKM TETANUS IZ CPTS"
 S GLOBAL=$P(GLOB,")")_",""HIVCHK"",BKMDFN,""TET"",VSTDT,TEST)"
 S REFGLOB=$P(GLOB,")")_",""HIVCHK"",BKMDFN,""TETREF"",VSTDT,TEST)"
 S TOTPTS=$P(GLOB,")")_",""HIVCHK"",""TETPTCNT"")"
 S BKMDFN=0,@TOTPTS=0
 F  S BKMDFN=$O(@GLOB@("HIVCHK",BKMDFN)) Q:'BKMDFN  D
 .D ICDTAX^BKMIXX1(BKMDFN,ICDTAX,EDATE,TETDT,GLOBAL)
 .D CPTTAX^BKMIXX(BKMDFN,CPTTAX,EDATE,TETDT,GLOBAL)
 .D PRCTAX^BKMIXX1(BKMDFN,PRCTAX,EDATE,TETDT,GLOBAL)
 .D CVXTAX^BKMIXX1(BKMDFN,CVXTAX,EDATE,TETDT,GLOBAL)
 .; Refusals are only counted from last year.
 .D REFUSAL^BKMIXX2(BKMDFN,9999999.14,CVXTAX,EDATE,TETDT1,REFGLOB)
 .I $D(@GLOB@("HIVCHK",BKMDFN,"TET"))!$D(@GLOB@("HIVCHK",BKMDFN,"TETREF")) S @TOTPTS=@TOTPTS+1 Q
 Q
EYEEXAM ; EP - Eye Exam Status
 N EEXAMDT,CPTTAX,GLOBAL,REFGLOB,TOTPTS,BKMDFN,CLINIC,PROVIDER
 S EEXAMDT=$$FMADD^XLFDT(EDATE,-365)
 S CPTTAX="BGP DM EYE EXAM CPTS"
 S CPTTAX1="BGP RETINAL EXAM CPTS"
 S GLOBAL=$P(GLOB,")")_",""HIVCHK"",BKMDFN,""EYE"",VSTDT,TEST)"
 S REFGLOB=$P(GLOB,")")_",""HIVCHK"",BKMDFN,""EYEREF"",VSTDT,TEST)"
 S TOTPTS=$P(GLOB,")")_",""HIVCHK"",""EYEPTCNT"")"
 S BKMDFN=0,@TOTPTS=0
 F  S BKMDFN=$O(@GLOB@("HIVCHK",BKMDFN)) Q:'BKMDFN  D
 .D CPTTAX^BKMIXX(BKMDFN,CPTTAX,EDATE,EEXAMDT,GLOBAL)
 .D CPTTAX^BKMIXX(BKMDFN,CPTTAX1,EDATE,EEXAMDT,GLOBAL)
 .F CLINIC=17,18,64,"A2" D CLNTAX^BKMIXX2(BKMDFN,CLINIC,EDATE,EEXAMDT,GLOBAL)
 .F PROVIDER=79,24,"08" D PRVTAX^BKMIXX2(BKMDFN,PROVIDER,EDATE,EEXAMDT,GLOBAL)
 .D EXAMTAX^BKMIXX1(BKMDFN,"03",EDATE,EEXAMDT,GLOBAL)
 .D PROCTAX^BKMIXX2(BKMDFN,95.02,EDATE,EEXAMDT,GLOBAL)
 .D POVTAX^BKMIXX2(BKMDFN,"V72.0",EDATE,EEXAMDT,GLOBAL)
 .I $D(@GLOB@("HIVCHK",BKMDFN,"EYE")) S @TOTPTS=@TOTPTS+1 Q
 .D REFUSAL^BKMIXX2(BKMDFN,9999999.15,"03",EDATE,EEXAMDT,REFGLOB)
 .I $D(@GLOB@("HIVCHK",BKMDFN,"EYEREF")) S @TOTPTS=@TOTPTS+1
 Q
DENTEXAM ; EP - Dental Exam Status
 N DEXAMDT,ICDTAX,ADATAX,GLOBAL,REFGLOB,TOTPTS,BKMDFN
 S DEXAMDT=$$FMADD^XLFDT(EDATE,-365)
 S ICDTAX="BKM DENTAL EXAMINATION"
 S ADATAX="BGP DENTAL EXAM DENTAL CODE"
 S GLOBAL=$P(GLOB,")")_",""HIVCHK"",BKMDFN,""DENT"",VSTDT,TEST)"
 S REFGLOB=$P(GLOB,")")_",""HIVCHK"",BKMDFN,""DENTREF"",VSTDT,TEST)"
 S TOTPTS=$P(GLOB,")")_",""HIVCHK"",""DENTPTCNT"")"
 S BKMDFN=0,@TOTPTS=0
 F  S BKMDFN=$O(@GLOB@("HIVCHK",BKMDFN)) Q:'BKMDFN  D
 .D ICDTAX^BKMIXX1(BKMDFN,ICDTAX,EDATE,DEXAMDT,GLOBAL)
 .D ADATAX^BKMIXX(BKMDFN,ADATAX,EDATE,DEXAMDT,GLOBAL)
 .D EXAMTAX^BKMIXX1(BKMDFN,"30",EDATE,DEXAMDT,GLOBAL)
 .I $D(@GLOB@("HIVCHK",BKMDFN,"DENT")) S @TOTPTS=@TOTPTS+1 Q
 .D REFUSAL^BKMIXX2(BKMDFN,9999999.15,"30",EDATE,DEXAMDT,REFGLOB)
 .I $D(@GLOB@("HIVCHK",BKMDFN,"DENTREF")) S @TOTPTS=@TOTPTS+1
 Q
PAP ; EP - Pap Smear Status
 N PAPDT,HISTDT,CPTTAX,ICDTAX,PRCTAX,LOINTAX,SITETAX,CPTTAX1,ICDTAX1
 N GLOBAL,GLOBAL1,REFGLOB,TOTPTS,SEX,AGE,BKMDFN
 S HISTDT=""
 S CPTTAX1="BGP HYSTERECTOMY CPTS"
 S ICDTAX1="BGP HYSTERECTOMY PROCEDURES"
 S GLOBAL1=$P(GLOB,")")_",""HIVCHK"",BKMDFN,""HIST"",VSTDT,TEST)"
 S PAPDT=$$FMADD^XLFDT(EDATE,-365)
 S CPTTAX="BGP CPT PAP"
 S ICDTAX="BGP PAP SMEAR DXS"
 S PRCTAX="BGP PAP PROCEDURES"
 S LOINTAX="BGP PAP LOINC CODES"
 S SITETAX="BGP PAP SMEAR TAX"
 S GLOBAL=$P(GLOB,")")_",""HIVCHK"",BKMDFN,""PAP"",VSTDT,TEST)"
 S REFGLOB=$P(GLOB,")")_",""HIVCHK"",BKMDFN,""PAPREF"",VSTDT,TEST)"
 S TOTPTS=$P(GLOB,")")_",""HIVCHK"",""PAPPTCNT"")"
 S BKMDFN=0,@TOTPTS=0
 F  S BKMDFN=$O(@GLOB@("HIVCHK",BKMDFN)) Q:'BKMDFN  D
 .S SEX=$$GET1^DIQ(2,BKMDFN,.02,"I")
 .;Only interested in female patients
 .I SEX'="F" Q
 .S AGE=$$AGE^BKMIMRP1(BKMDFN)
 .;Only interested in patients between 19 and 64
 .I AGE<19!(AGE>64)!(AGE'?1.N) Q
 .;Only interested in patients with no hysterectomy
 .D ICDTAX^BKMIXX1(BKMDFN,ICDTAX1,EDATE,HISTDT,GLOBAL1)
 .D CPTTAX^BKMIXX(BKMDFN,CPTTAX1,EDATE,HISTDT,GLOBAL1)
 .D POVTAX^BKMIXX2(BKMDFN,618.5,EDATE,HISTDT,GLOBAL1)
 .I $D(@GLOB@("HIVCHK",BKMDFN,"HIST")) Q
 .D ICDTAX^BKMIXX1(BKMDFN,ICDTAX,EDATE,PAPDT,GLOBAL)
 .D CPTTAX^BKMIXX(BKMDFN,CPTTAX,EDATE,PAPDT,GLOBAL)
 .D PRCTAX^BKMIXX1(BKMDFN,PRCTAX,EDATE,PAPDT,GLOBAL)
 .D LABTAX^BKMIXX(BKMDFN,SITETAX,EDATE,PAPDT,GLOBAL)
 .D LOINC^BKMIXX(BKMDFN,LOINTAX,EDATE,PAPDT,GLOBAL)
 .D WHTAX^BKMIXX2(BKMDFN,"PAP SMEAR",EDATE,PAPDT,GLOBAL)
 .D REFUSAL^BKMIXX2(BKMDFN,60,LOINTAX,EDATE,PAPDT,REFGLOB)
 .D REFUSAL^BKMIXX2(BKMDFN,60,SITETAX,EDATE,PAPDT,REFGLOB)
 .I $D(@GLOB@("HIVCHK",BKMDFN,"PAP"))!$D(@GLOB@("HIVCHK",BKMDFN,"PAPREF")) S @TOTPTS=@TOTPTS+1
 Q
