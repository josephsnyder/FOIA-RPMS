BGPMUG03 ; IHS/MSC/MMT - MI measure NQF0001 ;20-Aug-2011 14:56;DU
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;Code to collect meaningful use report for Asthma Assessment
ENTRY ;EP
 N START,END,BGPNUM,BGPDEN,STRING,STRING2
 N IEN,INV,VISIT,DATA,VDATE,VALUE,FIRST,VIEN,RESULT
 N CNT,NUM,ASTHENC,ASTHMA,ASTDT,ASTDX,ASTPL,LASTVDT
 S (BGPDEN,BGPNUM,NUM,RESULT)=0
 S START=9999999-BGPBDATE,END=9999999-BGPEDATE,VALUE=0
 S START=START_".2359"
 ;Pts must be between 5 and 40 years
 ;No need to check further if no age match
 Q:BGPAGEE<5!(BGPAGEE>40)
 ;First check for Asthma Dx since this will eliminate many pts
 S ASTHMA=$$ASTHMA(DFN,BGPEDATE)
 Q:'ASTHMA
 S CNT=0
 S FIRST=END-0.1 F  S FIRST=$O(^AUPNVSIT("AA",DFN,FIRST)) Q:FIRST=""!($P(FIRST,".",1)>START)  D
 .S IEN=0 F  S IEN=$O(^AUPNVSIT("AA",DFN,FIRST,IEN)) Q:'+IEN  D
 ..;Check provider, Only visits for chosen provider
 ..Q:'$$PRV^BGPMUUT1(IEN,BGPPROV)
 ..S ASTENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU ASTHMA ENCOUNT EM")
 ..I +ASTENC D VSTSTORE Q
 Q:CNT<2
 ;check to see if they are in the numerator
 S NUM=$$NUM(DFN,$P(VIEN(CNT),U,2),$P(VIEN(1),U,2),ASTHMA)
 D TOTAL(DFN,ASTHMA,NUM)
 Q
VSTSTORE ;Store compliant visit into array
 S CNT=CNT+1
 S VDATE=$P($G(^AUPNVSIT(IEN,0)),U,1)
 S VIEN(CNT)=IEN_U_VDATE
 S STRING(CNT)=$$DATE^BGPMUUTL(VDATE)
 Q
TOTAL(DFN,ASTHMA,NUM) ;See where this patient ends up
 N PTCNT,DENCT,NUMCT,NOTNUM,TOTALS,DEN,DXTIME
 S TOTALS=$G(^TMP("BGPMU0001",$J,BGPMUTF,"TOT"))
 S DENCT=+$G(^TMP("BGPMU0001",$J,BGPMUTF,"DEN"))
 S NUMCT=+$G(^TMP("BGPMU0001",$J,BGPMUTF,"NUM"))
 S NOTNUM=+$G(^TMP("BGPMU0001",$J,BGPMUTF,"NOT"))
 S PTCNT=TOTALS
 S PTCNT=PTCNT+1
 S DENCT=DENCT+1 S ^TMP("BGPMU0001",$J,BGPMUTF,"DEN")=DENCT
 S DEN="AST:"_$$DATE^BGPMUUTL($P(ASTHMA,U,3))
 I $D(STRING(1)) S DEN=DEN_";EN:"_STRING(1)
 I $D(STRING(2)) S DEN=DEN_";EN:"_STRING(2)
 I +NUM D
 .S NUMCT=NUMCT+1 S ^TMP("BGPMU0001",$J,BGPMUTF,"NUM")=NUMCT
 .I BGPMUTF="C" S ^TMP("BGPMU0001",$J,"PAT",BGPMUTF,"NUM",PTCNT)=DFN_U_DEN_U_"M:"_$P(NUM,U,2)
 I +NUM=0 D
 .S NOTNUM=NOTNUM+1 S ^TMP("BGPMU0001",$J,BGPMUTF,"NOT")=NOTNUM
 .I BGPMUTF="C" S ^TMP("BGPMU0001",$J,"PAT",BGPMUTF,"NOT",PTCNT)=DFN_U_DEN_U_"NM:"
 S ^TMP("BGPMU0001",$J,BGPMUTF,"TOT")=PTCNT
 ;Setup iCare array for patient
 S BGPICARE("MU.EP.0001.1",BGPMUTF)=1_U_+NUM_U_""_U_DEN_";"_$P(NUM,U,2)_";"_$P(NUM,U,3)
 Q
ASTHMA(DFN,EDATE) ;Find if patient had a PROBLEM or POV of Asthma on or before the end date
 N ASTHMA
 S ASTHMA=0
 S ASTPL=$$PLTAX^BGPMUUT1(DFN,"BGPMU ASTHMA DX ICD","C",EDATE)
 ;check date of problem
 I +ASTPL S ASTHMA=1_U_$P(ASTPL,U,2,3) Q ASTHMA
 S BGPBIRTH=$$DOB^AUPNPAT(DFN)
 S ASTDX=$$LASTDX^BGPMUUT2(DFN,BGPBIRTH,EDATE,"BGPMU ASTHMA DX ICD")
 I +ASTDX S ASTHMA=2_U_$P(ASTDX,U,2,3) Q ASTHMA
 Q ASTHMA
NUM(DFN,BDATE,EDATE,ASTHMA) ;Look for documentation of Asthma assessment
 N FOUND,D,G,S,I,ACONTROL
 S FOUND=0
 ;check for documentation in the ASTHMA package
 S D=9999999-EDATE-1,G="",S=9999999-BDATE
 S D=$O(^AUPNVAST("AS",DFN,D)) I D]""!(D>S)  D
 .S I="" F  S I=$O(^AUPNVAST("AS",DFN,D,I)) Q:I'=+I!(+FOUND)  D
 ..S ACONTROL=$P(^AUPNVAST(I,0),U,14)
 ..I ACONTROL'="" S FOUND=1_U_"AC "_$$DATE^BGPMUUTL($P($P($G(^AUPNVSIT($P(^AUPNVAST(I,0),U,3),0)),U,1),"."))
 Q:+FOUND FOUND
 ;check for documentation in the PROBLEM record
 I $P(ASTHMA,U)=1 D
 .S CLASS=$P($G(^AUPNPROB($P(ASTPL,U,4),0)),U,15)
 .I CLASS=1!(CLASS=2)!(CLASS=3)!(CLASS=4) D  ; YES, this is ALL of the possible values, CLASS=1 MAY be removed later
 .S FOUND=1_U_"CL "_$$DATE^BGPMUUTL($P(ASTHMA,U,3))
 Q:+FOUND FOUND
 ;check for CPT code documented
 S ASTCPT=$$CPT^BGPMUUT1(DFN,BDATE,EDATE,"BGPMU ASTHMA EVAL CPT")
 S:+ASTCPT FOUND=1_U_$P(ASTCPT,U,2)_" "_$$DATE^BGPMUUTL($P(ASTCPT,U,3))
 Q FOUND