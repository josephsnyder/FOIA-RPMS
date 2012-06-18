BAR50ICN ; IHS/SD/TPF - AR ERA FILE ICN (PAYER CLAIM CONTROL NUMBER) CHECKER ; 
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**5,21**;OCT 26,2005
 ;
 ;
 ;THIS REPORT WILL BE USED TO SEE IF THERE IS A "PATTERN" IN THE USE OF THE
 ;CLP07 ELEMENT OR 'PAYER CLAIM CONTROL NUMBER' OR ICN BY PAYORS
 ;
 Q
LOOPERA ;EP - LOOP ERA FILE
 K ^XTMP("BAREDICN",$J)
 N ICN,IMPDA,CLMDA,ERACHECK,ERABILL,ERAFILE,ERAPAT,IMPORTS,CLAIMS,PAYMENT,DUPIMP,TOTALIMP
 S (IMPDA,CLAIMS,IMPORTS,DUPIMP,TOTALIMP)=0
 F  S IMPDA=$O(^BAREDI("I",DUZ(2),IMPDA)) Q:'IMPDA  D
 .S TOTALIMP=TOTALIMP+1
 .S FILENAME=$P($G(^BAREDI("I",DUZ(2),IMPDA,0)),U,5)
 .S ARIMPORT=$P($G(^BAREDI("I",DUZ(2),IMPDA,0)),U)
 .I $D(^XTMP("BAREDICN",$J,"FILES ALREADY DONE",FILENAME)) D  Q  ;DON'T PROCESS THE SAME FILE TWICE, IF IMPORTED > ONCE
 ..W !,"FILE ",FILENAME," IMPORTED MORE THAN ONCE"
 ..S DUPIMP=DUPIMP+1
 .S IMPORTS=IMPORTS+1
 .S ^XTMP("BAREDICN",$J,"FILES ALREADY DONE",FILENAME,ARIMPORT)=""
 .S CLMDA=0
 .F  S CLMDA=$O(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA)) Q:'CLMDA  D
 ..S CLAIMS=CLAIMS+1
 ..D GETDATA(IMPDA,CLMDA)
 S ^XTMP("BAREDICN",$J,"CLAIMS")=CLAIMS
 S ^XTMP("BAREDICN",$J,"IMPORTS")=IMPORTS
 S ^XTMP("BAREDICN",$J,"DUPE IMPORTS")=DUPIMP
 D REPORT
 Q
 ;
GETDATA(IMPDA,CLMDA) ;EP - GET DATA FROM ERA FILE
 S ERAFILE=$P($G(^BAREDI("I",DUZ(2),IMPDA,0)),U)
 S ERABILL=$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,0)),U)
 S FLATFILE=$P($G(^BAREDI("I",DUZ(2),IMPDA,0)),U,5)
 S ERAPAT=$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,0)),U,6)
 S ERACHECK=$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,2)),U)
 S PAYMENT=$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,0)),U,4)
 S PAYTYPE=$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,0)),U,11)
 S ICN=$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,3)),U,2)
 I ICN[("R") S ICN=$TR(ICN,"R","")
 S:ERAFILE="" ERAFILE="UNDEF ERAFILE"
 S:ERABILL="" ERABILL="UNDEF ERABILL"
 S:ERAPAT="" ERAPAT="UNDEF ERA PATIENT"
 S:ERACHECK="" ERACHECK="UNDEF ERACHECK"
 S:ICN="" ICN="UNDEF ICN"
 S ^XTMP("BAREDICN",$J,ICN,CLAIMS,ERABILL,ERACHECK,ERAFILE,ERAPAT)=PAYMENT_U_PAYTYPE_U_FLATFILE
 Q
REPORT ;EP- REPORT ON FINDINGS
 N ICN,CLAIMS,CLMCNT,ERABILL,ERACHECK,ERAFILE,ERAPAT,CLMS
 W @IOF
 W !!,"THERE ARE A TOTAL OF ",TOTALIMP," ENTRIES IN THE A/R EDI IMPORT FILE"
 W !,"OF THESE ",^XTMP("BAREDICN",$J,"IMPORTS")," WERE PROCESSED AND CONTAINED ",^XTMP("BAREDICN",$J,"CLAIMS")," CLAIMS."
 W !,^XTMP("BAREDICN",$J,"DUPE IMPORTS")_" IMPORT ENTRIES WERE SKIPPED BECAUSE THE FILE WAS DOWNLOADED MORE THAN ONCE."
 W !!,"POSSIBLE ICN MATCHES:"
 S ICN=""
 F  S ICN=$O(^XTMP("BAREDICN",$J,ICN)) Q:ICN=""!(ICN="CLAIMS")  D
 .S CLAIMS=""
 .F CLMCNT=1:1 S CLAIMS=$O(^XTMP("BAREDICN",$J,ICN,CLAIMS)) Q:CLAIMS=""
 .I CLMCNT>2 D
 ..W !!,"MULITPLE ICN ENTRIES FOR: ",ICN
 ..S CLMS=""
 ..F  S CLMS=$O(^XTMP("BAREDICN",$J,ICN,CLMS)) Q:CLMS=""  D
 ...S ERABILL=""
 ...F  S ERABILL=$O(^XTMP("BAREDICN",$J,ICN,CLMS,ERABILL)) Q:ERABILL=""  D
 ....S ERACHECK=""
 ....F  S ERACHECK=$O(^XTMP("BAREDICN",$J,ICN,CLMS,ERABILL,ERACHECK)) Q:ERACHECK=""  D
 .....S ERAFILE=""
 .....F  S ERAFILE=$O(^XTMP("BAREDICN",$J,ICN,CLMS,ERABILL,ERACHECK,ERAFILE)) Q:ERAFILE=""  D
 ......S ERAPAT=""
 ......F  S ERAPAT=$O(^XTMP("BAREDICN",$J,ICN,CLMS,ERABILL,ERACHECK,ERAFILE,ERAPAT)) Q:ERAPAT=""  D
 .......W !!?10,"CLAIM CNT: ",CLMS
 .......W !?10,"835 FILE: ",$P(^XTMP("BAREDICN",$J,ICN,CLMS,ERABILL,ERACHECK,ERAFILE,ERAPAT),U,3)
 .......W !?10,"ERA BILL: ",ERABILL
 .......W !?10,"ERA CHECK: ",ERACHECK
 .......W !?10,"A/R IMPORT FILE: ",ERAFILE
 .......W !?10,"ERA PATIENT: ",ERAPAT
 .......W !?10,"PAYMENT TYPE: ",$P(^XTMP("BAREDICN",$J,ICN,CLMS,ERABILL,ERACHECK,ERAFILE,ERAPAT),U,2)
 .......W !?10,"PAYMENT: ",$P(^XTMP("BAREDICN",$J,ICN,CLMS,ERABILL,ERACHECK,ERAFILE,ERAPAT),U)
 Q
