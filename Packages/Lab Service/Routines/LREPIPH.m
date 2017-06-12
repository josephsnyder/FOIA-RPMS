LREPIPH ;VA/DALOI/RLM-EMERGING PATHOGENS HL7 SEGMENT BUILDER ; 17-Oct-2014 09:22 ; MKK
 ;;5.2;LAB SERVICE;**260,281,1030,1034**;NOV 01, 1997;Build 88
 ; Reference to ^ICD9 supported by IA #10082
 ; Reference to ^PXD(811.9 supported by IA #1256
 ; Reference to ^PSDRUG supported by IA #221-A
 ; Reference to FIDATA^PXRM supported by IA #2182
 Q
RXNT ;Findings Data
 K FINDINGS S LRNTE1=1,(LRDRSQ1,LRDRSEQ)=0
 S LRDRSEQ=LRDRSEQ+1
 M FINDINGS=^TMP("LREPISRCH",$J,DFN,"FIND")
 S LRFIND=0 F  S LRFIND=$O(FINDINGS(LRFIND)) Q:'LRFIND  D
  . ;S LRENDTX=$G(FINDINGS(LRFIND,"DATE"))
  . ;D PV1
  . I $D(FINDINGS(LRFIND,"DRUG")) S LRDRSQ1=LRDRSEQ D DRUG
  . I $D(FINDINGS(LRFIND,"FINDING")) D FIND
  . S LRDRSQ1=0 Q
 K FINDINGS,^TMP("LREPISRCH",$J,DFN) S LRPVVV=0 Q
DRUG ;
 D PV1
 S LRDRUG=+FINDINGS(LRFIND,"FINDING")
 S LRDRGC=$P($G(^PSDRUG(LRDRUG,2)),"^",4)
 S LRDATA="ZXE"_HLFS_LRDRGC_HLFS_FINDINGS(LRFIND,"DRUG")_LRCS_"NDC"_HLFS_FINDINGS(LRFIND,"DSUP")_HLFS_$$HLDATE^HLFNC($G(FINDINGS(LRFIND,"RDATE")))_HLFS_$$HLDATE^HLFNC($G(FINDINGS(LRFIND,"DATE")))_HLFS
 S LRDATA=LRDATA_$$HLDATE^HLFNC($G(FINDINGS(LRFIND,"STOPDATE")))_HLFS_+LRDRSQ1
 ;S LRDATA="RXO"_HLFS_LRDRGC_LRCS_FINDINGS(LRFIND,"DRUG")_LRCS_"NDC"_HLFS_LRDRGC_HLFS_HLFS_FINDINGS(LRFIND,"DSUP")_HLFS_HLFS_HLFS_HLFS_HLFS_HLFS_HLFS_HLFS_HLFS_+LRDRSQ1
 S LRCNT=LRCNT+1,^TMP("HLS",$J,LRCNT)=$$UP^XLFSTR(LRDATA),LRMSGSZ=LRMSGSZ+$L(LRDATA)
 S ^TMP("LREPIREP",$J,LRCNT)=$$UP^XLFSTR(LRDATA)
 K LRDRGC S LRDRSEQ=LRDRSEQ+1 Q  ;S LRPVVV=0 Q
FIND ;
 ;Q:$D(FINDINGS(LRFIND,"RDATE"))  ;Don't send DSP if RX data is sent.
 D PV1
 S LRTRM=$P($G(FINDINGS(LRFIND,"TERM")),"^")
 S LRTOLD=$G(FINDINGS(LRFIND,"ALTTRM")) I LRTOLD'?1.N S LRTOLD="00"
 S LRDATA="DSP"_HLFS_LRNTE1_HLFS_HLFS_$$HLDATE^HLFNC(FINDINGS(LRFIND,"DATE"),"TS")_LRCS_LRTRM_LRCS_LRTOLD_LRCS_$G(FINDINGS(LRFIND,"RESULT"))_LRCS_$G(FINDINGS(LRFIND,"S/N"))_HLFS_HLFS_+LRDRSQ1
 S ^TMP($J,"HEP",LRTOLD)=$G(^TMP($J,"HEP",LRTOLD))+1
 S LRNTE1=LRNTE1+1,LRCNT=LRCNT+1,^TMP("HLS",$J,LRCNT)=$$UP^XLFSTR(LRDATA),LRMSGSZ=LRMSGSZ+$L(LRDATA)
 S ^TMP("LREPIREP",$J,LRCNT)=$$UP^XLFSTR(LRDATA)
 Q  ;S LRPVVV=0 Q
PV1 ;Build PV1
 Q:$G(LRPVVV)
 S LRPTY=$P(^TMP($J,LRPROT,DFN,LRENDT),U)
 S:$P(^TMP($J,LRPROT,DFN,LRENDT),U,3)="UPDT" LRPTY="U"
 I $P($G(FINDINGS(LRFIND)),"^",2)]"",$P($G(FINDINGS(LRFIND)),"^",2)'="U" S LRPTY=$P($G(FINDINGS(LRFIND)),"^",2)
 I LRPTY'="I",LRPTY'="O",LRPTY'="U" S LRPTY="U"
 S LRDATA="PV1|"_LRPV1_"|"_LRPTY_"||||||||||||||||||||||||||||||||||||||||||"_$$HLDATE^HLFNC(LRENDT)
 S LRCNT=LRCNT+1,^TMP("HLS",$J,LRCNT)=$$UP^XLFSTR(LRDATA),LRMSGSZ=LRMSGSZ+$L(LRDATA),LRPV1=LRPV1+1
 S ^TMP("LREPIREP",$J,LRCNT)=$$UP^XLFSTR(LRDATA)
 S LRPVVV=1
 Q
ZEOR ;LREPIPH
