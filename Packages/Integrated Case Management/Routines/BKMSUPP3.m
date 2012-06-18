BKMSUPP3 ;PRXM/HC/WOM - Continuation of BKMSUPP, HIV SUPPLEMENT; [ 1/19/2005 7:16 PM ] ; 10 Jun 2005  12:46 PM
 ;;2.1;HIV MANAGEMENT SYSTEM;;Feb 07, 2011
 Q
RET(DFN) ;EP - Retrieve Eye taxonomies (P.03)
 ; Several calls below used to use $H-360.
 ; Replaced with BKMCKDT (FileMan format date).
 N BKMCKDT,PRV,CLN
 S BKMCKDT=$$FMADD^XLFDT(DT,-360)
 K BKMT("EYE")
 S GLOBAL="BKMT(""EYE"",VSTDT,TEST,""CPT"")"
 D CPTTAX^BKMIXX(DFN,"BGP EYE EXAM CPTS","",BKMCKDT,GLOBAL)
 S GLOBAL="BKMT(""EYE"",VSTDT,TEST,""EXAM"")"
 D EXAMTAX^BKMIXX1(DFN,"03","",BKMCKDT,GLOBAL)
 ;Added provider and clinic code checks
 S GLOBAL="BKMT(""EYE"",VSTDT,TEST,""PRV"")"
 ;Check provider codes
 F PRV="79","24","08" D
 . D PRVTAX^BKMIXX2(DFN,PRV,"",BKMCKDT,GLOBAL)
 S GLOBAL="BKMT(""EYE"",VSTDT,TEST,""CLN"")"
 ;Check clinic codes
 F CLN="17","18","64","A2" D
 . D CLNTAX^BKMIXX2(DFN,CLN,"",BKMCKDT,GLOBAL)
 ;Print results
 W ?1,"Dilated eye exam: "
 D LTAXPRT^BKMSUPP1("EYE",1)
 I $D(BKMT("EYE")) K BKMT("EYE") W ! Q
 ;If no eye exams found check refusals
 ;The following has been replaced with D REFUSAL^BKMIXX2 call
 ;S EXIEN=$O(^AUTTEXAM("C","03",""))
 ;I EXIEN S TST(EXIEN)="" W $$REF^BKMSUPP2(DFN,9999999.15,.TST)
 D REFUSAL^BKMIXX2(DFN,9999999.15,"03","",BKMCKDT,GLOBAL)
 ;Print results
 D LTAXPRT^BKMSUPP1("EYE",1,1,1)
 I '$D(BKMT("EYE")) W ?24,"Date:"
 W !
 I $Y>MAXCT S QUIT=$$PAUSE^BKMSUPP3() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 Q
MAM(DFN) ;EP - Retrieve mammogram taxonomies
 ; Several calls below used to use $H-360.
 ; Replaced with BKMCKDT (FileMan format date).
 N BKMCKDT
 S BKMCKDT=$$FMADD^XLFDT(DT,-360)
 ; *** Examine V Rad and V CPT; if others are needed will have to add
 ;Q:$P(^DPT(DFN,0),U,2)'="F"  ; - removed and replaced with N/A as per IHS
 W ?1,"Mammogram: "
 I $P(^DPT(DFN,0),U,2)'="F" W "Not Applicable" Q  ;Females only
 K BKMT("MAM")
 S GLOBAL="BKMT(""MAM"",VSTDT,TEST,""PROC"")"
 D PRCTAX^BKMIXX1(DFN,"BGP MAMMOGRAM PROCEDURES","",BKMCKDT,GLOBAL)
 S GLOBAL="BKMT(""MAM"",VSTDT,TEST,""ICD"")"
 D ICDTAX^BKMIXX1(DFN,"BGP MAMMOGRAM ICDS","",BKMCKDT,GLOBAL)
 S GLOBAL="BKMT(""MAM"",VSTDT,TEST,""CPT"")"
 D CPTTAX^BKMIXX(DFN,"BGP CPT MAMMOGRAM","",BKMCKDT,GLOBAL)
 ;Additional check of V-Rad file for mammography.
 S GLOBAL="BKMT(""MAM"",VSTDT,TEST,""RAD"")"
 D RADTAX^BKMIXX1(DFN,"BGP CPT MAMMOGRAM","",BKMCKDT,GLOBAL)
 ;** OLD VERSION **
 ;D LTAXPRT^BKMSUPP1("MAM",1)
 ;If no mammograms found check refusals
 ;I $D(BKMT("MAM")) K BKMT("MAM") W !! Q
 ;W $$REF^BKMSUPP2(DFN,71,.TST) W !! Q
 ;S Y=BKMMDT,Y=$$FMTE^XLFDT(Y,"5Z")
 ;W ?24,$P(Y,"@"),!!
 ;I $Y>MAXCT S QUIT=$$PAUSE^BKMSUPP3() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 I $D(BKMT("MAM")) D LTAXPRT^BKMSUPP1("MAM",1) K BKMT("MAM") Q
 D REFUSAL^BKMIXX2(DFN,71,"BGP CPT MAMMOGRAM","",BKMCKDT,GLOBAL)
 ;Print results
 D LTAXPRT^BKMSUPP1("MAM",1,1,1)
 I '$D(BKMT("MAM")) W ?24,"Date:"
 K BKMT("MAM")
 Q
DEN(DFN) ;EP - Dental exam
 ; Several calls below used to use $H-360.
 ; Replaced with BKMCKDT (FileMan format date).
 N BKMCKDT
 S BKMCKDT=$$FMADD^XLFDT(DT,-360)
 K BKMT("DEN")
 S GLOBAL="BKMT(""DEN"",VSTDT,TEST,""PRC"")"
 D ICDTAX^BKMIXX1(DFN,"BKM DENTAL EXAMINATION","",BKMCKDT,GLOBAL)
 S GLOBAL="BKMT(""DEN"",VSTDT,TEST,""ADA"")"
 D ADATAX^BKMIXX(DFN,"BGP DENTAL EXAM DENTAL CODE","",BKMCKDT,GLOBAL)
 S GLOBAL="BKMT(""DEN"",VSTDT,TEST,""EXAM"")"
 D EXAMTAX^BKMIXX1(DFN,"30","",BKMCKDT,GLOBAL)
 ;Print results
 W ?1,"Dental exam: "
 D LTAXPRT^BKMSUPP1("DEN",1)
 I $D(BKMT("DEN")) K BKMT("DEN") W ! Q
 ;If no dental exams found check refusals
 ;The following has been replaced with D REFUSAL^BKMIXX2 call
 ;S EXIEN=$O(^AUTTEXAM("C","30",""))
 ;I EXIEN S TST(EXIEN)="" W $$REF^BKMSUPP2(DFN,9999999.15,.TST)
 D REFUSAL^BKMIXX2(DFN,9999999.15,"30","",BKMCKDT,GLOBAL)
 ;Print results
 D LTAXPRT^BKMSUPP1("DEN",1,1,1)
 I '$D(BKMT("DEN")) W ?24,"Date:"
 W !
 I $Y>MAXCT S QUIT=$$PAUSE^BKMSUPP3() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 Q
DRUGS(DFN) ;EP - Get medications
 D HAART(DFN) Q:QUIT
 D MAC(DFN) Q:QUIT
 D PCP(DFN) Q:QUIT
 D PRTMP(DFN) Q:QUIT  ;***
 D NEW(DFN)
 F TYPE="MAC","PCP","NEW" K ^TMP("BKMSUPP",$J,TYPE)
 Q
HAART(DFN) ;GATHER HAART DRUG DATA (using Taxonomy)
 N MEDDT,MEDIEN,DISC,STDT,SIG,QTY,DISPDT,RXNAME
 K ^TMP("BKMSUPP",$J,"HAART"),^TMP("BKMSUPP",$J,"HAARTD")
 W ?1,"Current ARV Medications (past 6 months): ",!
 S GLOBAL="^TMP(""BKMSUPP"",$J,""HAART"",VSTDT,TEST)"
 D NDCTAX^BKMIXX1(DFN,"BKMV EI MED NDCS","","",GLOBAL)
 D MEDTAX^BKMIXX(DFN,"BKMV EI MEDS","","",GLOBAL)
 D NDCTAX^BKMIXX1(DFN,"BKMV NNRTI MED NDCS","","",GLOBAL)
 D MEDTAX^BKMIXX(DFN,"BKMV NNRTI MEDS","","",GLOBAL)
 D NDCTAX^BKMIXX1(DFN,"BKMV NRTI MED NDCS","","",GLOBAL)
 D MEDTAX^BKMIXX(DFN,"BKMV NRTI MEDS","","",GLOBAL)
 D NDCTAX^BKMIXX1(DFN,"BKMV PI MED NDCS","","",GLOBAL)
 D MEDTAX^BKMIXX(DFN,"BKMV PI MEDS","","",GLOBAL)
 ;*** separate list into active and discontinued
 ;*** NOTE: last 6 months for active HAART; **ALL** disc'd HAART
 S MEDDT=""
 F  S MEDDT=$O(^TMP("BKMSUPP",$J,"HAART",MEDDT)) Q:MEDDT=""  D
 .S MEDIEN="" F  S MEDIEN=$O(^TMP("BKMSUPP",$J,"HAART",MEDDT,MEDIEN)) Q:MEDIEN=""  D
 ..S DISC=$$GET1^DIQ(9000010.14,MEDIEN,.08,"I")
 ..I DISC D
 ...S BKMT("HAARTD",DISC,MEDDT,MEDIEN)="" ;Needed for flow sheet
 ...S ^TMP("BKMSUPP",$J,"HAARTD",MEDDT,MEDIEN)=^TMP("BKMSUPP",$J,"HAART",MEDDT,MEDIEN)
 ...K ^TMP("BKMSUPP",$J,"HAART",MEDDT,MEDIEN)
 D DRPRT("HAART",$$FMADD^XLFDT(DT,-183))
 Q:QUIT
 I '$D(^TMP("BKMSUPP",$J,"HAART")) D
 .;Check refusals
 .S GLOBAL="BKMT(""HAART"",VSTDT,TEST)"
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV EI MED NDCS","","",GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV EI MEDS","","",GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV NNRTI MED NDCS","","",GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV NNRTI MEDS","","",GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV NRTI MED NDCS","","",GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV NRTI MEDS","","",GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV PI MED NDCS","","",GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV PI MEDS","","",GLOBAL)
 .;Print results
 .D DRFPRT("HAART",1) K BKMT("HAART")
 W !?1,"Discontinued ARV Medications: [Data not currently available]",!
 ;D DRPRT("HAARTD") ;inactivated print as per IHS
 ;keep drugs to identify "other" drugs
 Q
MAC(DFN) ;GATHER MAC Prophylaxis DRUG DATA (using Taxonomy)
 ; Several calls below used to use $H-183.
 ; Replaced with BKMCKDT (FileMan format date).
 N BKMCKDT
 S BKMCKDT=$$FMADD^XLFDT(DT,-183)
 I $Y>MAXCT S QUIT=$$PAUSE() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 S GLOBAL="^TMP(""BKMSUPP"",$J,""MAC"",VSTDT,TEST)"
 D NDCTAX^BKMIXX1(DFN,"BKMV MAC PROPH MED NDCS","",BKMCKDT,GLOBAL)
 D MEDTAX^BKMIXX(DFN,"BKMV MAC PROPH MEDS","",BKMCKDT,GLOBAL)
 I '$D(^TMP("BKMSUPP",$J,"MAC")) D
 .;Check refusals
 .S GLOBAL="BKMT(""MAC"",VSTDT,TEST)"
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV MAC PROPH MED NDCS","","",GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV MAC PROPH MEDS","","",GLOBAL)
 Q:QUIT
 ;keep drugs to identify "other" drugs
 I $Y>MAXCT S QUIT=$$PAUSE() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 Q
PCP(DFN) ;GATHER PCP Prophylaxis DRUG DATA (using Taxonomy)
 ; Several calls below used to use $H-183.
 ; Replaced with BKMCKDT (FileMan format date).
 N BKMCKDT
 S BKMCKDT=$$FMADD^XLFDT(DT,-183)
 S GLOBAL="^TMP(""BKMSUPP"",$J,""PCP"",VSTDT,TEST)"
 D NDCTAX^BKMIXX1(DFN,"BKMV PCP PROPH MED NDCS","",BKMCKDT,GLOBAL)
 D MEDTAX^BKMIXX(DFN,"BKMV PCP PROPH MEDS","",BKMCKDT,GLOBAL)
 I '$D(^TMP("BKMSUPP",$J,"PCP")) D
 .;Check refusals
 .S GLOBAL="BKMT(""PCP"",VSTDT,TEST)"
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV PCP PROPH MED NDCS","","",GLOBAL)
 .D REFUSAL^BKMIXX2(DFN,50,"BKMV PCP PROPH MEDS","","",GLOBAL)
 Q:QUIT
 ;keep drugs to identify "new" drugs
 I $Y>MAXCT S QUIT=$$PAUSE() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 Q
PRTMP(DFN) ;Combine MAC and PCP results for printing purposes
 K ^TMP("BKMSUPP",$J,"MACPCP"),BKMT("MACPCP")
 M ^TMP("BKMSUPP",$J,"MACPCP")=^TMP("BKMSUPP",$J,"MAC")
 M ^TMP("BKMSUPP",$J,"MACPCP")=^TMP("BKMSUPP",$J,"PCP")
 W !?1,"Prophylaxis Medications for MAC and/or PCP (past 6 months): ",!
 I $D(^TMP("BKMSUPP",$J,"MACPCP")) D DRPRT("MACPCP",$$FMADD^XLFDT(DT,-183))
 I '$D(^TMP("BKMSUPP",$J,"MACPCP")) D
 .M BKMT("MACPCP")=BKMT("MAC")
 .M BKMT("MACPCP")=BKMT("PCP")
 .D DRFPRT("MACPCP",1)
 .K BKMT("PCP"),BKMT("MAC"),BKMT("MACPCP")
 K ^TMP("BKMSUPP",$J,"MACPCP")
 Q
NEW(DFN) ;GATHER "New" DRUG DATA (drugs dispensed during last 6 mos excluding previously listed drugs)
 N TEST,VISIT,VSTDT,OLD,TYPE
 S TEST=""
 F  S TEST=$O(^AUPNVMED("AC",DFN,TEST)) Q:TEST=""  D
 .S VISIT=$$GET1^DIQ(9000010.14,TEST,.03,"I")
 .S VSTDT=$$GET1^DIQ(9000010,VISIT_",",.01,"I")
 .S OLD=""
 .F TYPE="HAART","HAARTD","MAC","PCP" I $D(^TMP("BKMSUPP",$J,TYPE,VSTDT,TEST)) S OLD=1 Q
 .Q:OLD
 .; Build same data string as BKMIXX* routines used in other sections.
 .N MED,SIG,QTY,DAY
 .S MED=$$GET1^DIQ(9000010.14,TEST,.01,"E")
 .S SIG=$$GET1^DIQ(9000010.14,TEST,.05,"E")
 .S QTY=$$GET1^DIQ(9000010.14,TEST,.06,"E")
 .S DAY=$$GET1^DIQ(9000010.14,TEST,.07,"E")
 .S ^TMP("BKMSUPP",$J,"NEW",VSTDT,TEST)=MED_U_SIG_U_QTY_U_DAY
 W !?1,"Any Other Medications prescribed (past 6 months): ",!
 D DRPRT("NEW",$$FMADD^XLFDT(DT,-183))
 Q:QUIT
 I $Y>MAXCT S QUIT=$$PAUSE() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 Q
DRPRT(TYPE,STDT) ;Print Drugs
 Q:'$D(^TMP("BKMSUPP",$J,TYPE))
 N MEDDT,DISPDT,MEDIEN,SIG,QTY,RXIEN,RXNAME
 S STDT=$G(STDT)
 I STDT,'$O(^TMP("BKMSUPP",$J,TYPE,STDT-.01)) Q
 I $Y>(MAXCT-2) S QUIT=$$PAUSE() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 W !?6,"[Date]",?18,"[Med Name]",?50,"[SIG]",?66,"[Qty]"
 S MEDDT="" F  S MEDDT=$O(^TMP("BKMSUPP",$J,TYPE,MEDDT),-1) Q:MEDDT<STDT!'MEDDT  D  Q:QUIT
 .;PRXM/HC/BHS - 11/01/2005 - Modified external date format to MM/DD/CCYY to eliminate time
 .S DISPDT=$$FMTE^XLFDT(MEDDT\1,"5Z")
 .S MEDIEN="" F  S MEDIEN=$O(^TMP("BKMSUPP",$J,TYPE,MEDDT,MEDIEN)) Q:MEDIEN=""  D  Q:QUIT
 ..N TEMP
 ..S TEMP=^TMP("BKMSUPP",$J,TYPE,MEDDT,MEDIEN)
 ..S RXNAME=$P(TEMP,U,1),SIG=$P(TEMP,U,2),QTY=$P(TEMP,U,3)
 ..W !?6,DISPDT,?18,$E(RXNAME,1,30),?50,$E(SIG,1,14),?66,QTY
 ..I $Y>MAXCT S QUIT=$$PAUSE() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 Q:QUIT
 W ! I $Y>MAXCT S QUIT=$$PAUSE() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 Q
 ;
DRFPRT(TYP,MAX) ;Print Drug Refusals
 ;TYP = Type of test (subscript in BKMT array)
 ;MAX = Maximum number of results to print
 N DDT,CNT,Y,TST
 S MAX=$G(MAX,1)
 S (DDT,CNT)=""
 F  S DDT=$O(BKMT(TYP,DDT),-1) Q:'DDT  D  Q:CNT>MAX!QUIT
 .S Y=$P($$FMTE^XLFDT(DDT,"5Z"),"@")
 .S TST=""
 .F  S TST=$O(BKMT(TYP,DDT,TST)) Q:TST=""  D  Q:CNT>MAX!QUIT
 ..W ?1,"Date: ",Y,?22,"[Refusal Type: ",$P(BKMT(TYP,DDT,TST),U),"]"
 ..S CNT=CNT+1
 ..W !
 ..I $Y>MAXCT S QUIT=$$PAUSE^BKMSUPP3() Q:QUIT  D HEADER^BKMSUPP1(.PAGE,XNOW)
 Q
 ;
PAUSE() ;EP - For screen displays pause and allow user to stop
 ; Returns a 1 if the user elected to stop
 ; Matches Health Summary
 I IOST'["C-" Q 0
 Q $$PAUSE^BKMIXX3()
 ;N READ
 ;R !,"<>",READ:DTIME I '$T Q 1
 ;I READ="^" Q 1
 ;Q 0
 ;
XIT ;QUIT POINT
 Q
