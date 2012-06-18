BGPMUG02 ; IHS/MSC/MMT - MI measure NQF0083 ;20-Aug-2011 14:56;DU
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;Code to collect meaningful use report Heart Failure Beta-Blockers
ENTRY ;EP
 N START,END,STRING,STRING2
 N IEN,INV,VISIT,DATA,VDATE,VALUE,EXCEPT,FIRST
 N OUTCNT,NFCNT,DEN,NUM,EXC,OUTENC,NFENC,VIENO,VIENNF,LASTVDT
 S START=9999999-BGPBDATE,END=9999999-BGPEDATE,VALUE=0
 S START=START_".2359"
 S (HFDX,DEN,EXC,NUM)=0
 S (OUTCNT,NFCNT)=0
 ;Pts must be >=18
 ;No need to check further if no age match
 Q:BGPAGEE<18
 S BGPBIRTH=$$DOB^AUPNPAT(DFN)
 S FIRST=END-0.1 F  S FIRST=$O(^AUPNVSIT("AA",DFN,FIRST)) Q:FIRST=""!($P(FIRST,".",1)>START)!(OUTCNT>1)!(NFCNT>1)  D
 .S IEN=0 F  S IEN=$O(^AUPNVSIT("AA",DFN,FIRST,IEN)) Q:'+IEN!(OUTCNT>1)!(NFCNT>1)  D
 ..;Check provider, Only visits for chosen provider
 ..Q:'$$PRV^BGPMUUT1(IEN,BGPPROV)
 ..S OUTENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU BP EM")
 ..I +OUTENC D
 ...S OUTCNT=OUTCNT+1
 ...S VDATE=$P($G(^AUPNVSIT(IEN,0)),U,1)
 ...S VIENO(OUTCNT)=IEN_U_VDATE
 ..S NFENC=$$VSTCPT^BGPMUUT1(DFN,IEN,"BGPMU NURSING FAC EM")
 ..I +NFENC D
 ...S NFCNT=NFCNT+1
 ...S VDATE=$P($G(^AUPNVSIT(IEN,0)),U,1)
 ...S VIENNF(NFCNT)=IEN_U_VDATE
 ..I (+OUTENC!(+NFENC))&($G(LASTVDT)="") S LASTVDT=VDATE
 I OUTCNT>1 S DEN=1,STRING=";EN:"_$$DATE^BGPMUUTL($P(VIENO(1),U,2))_";EN:"_$$DATE^BGPMUUTL($P(VIENO(2),U,2))
 E  I NFCNT>1 S DEN=1,STRING=";EN:"_$$DATE^BGPMUUTL($P(VIENNF(1),U,2))_";EN:"_$$DATE^BGPMUUTL($P(VIENNF(2),U,2))
 Q:'DEN
 ;Next check to see if the patient is in the denominator
 S HFDX=$$HFDX(DFN,BGPBIRTH,LASTVDT)
 I +HFDX D
 .S DENSTR="HF:"_$$DATE^BGPMUUTL($P(HFDX,U,3))_";LVEF:"_$$DATE^BGPMUUTL($P(HFDX,U,5))_STRING
 .;If the patient has Heart Failure, check to see if they are in the numerator
 .S NUM=$$NUM(DFN,BGPBDATE,BGPEDATE)
 .;If not in the numerator,see if they are an exception
 .I +NUM=0 S EXC=$$EXCEPT^BGPMUA06(DFN,BGPBDATE,BGPEDATE)
 .D TOTAL(DFN,HFDX,NUM,EXC)
 Q
TOTAL(DFN,HFDX,NUM,EXC) ;See where this patient ends up
 N PTCNT,EXCCT,DENCT,NUMCT,NOTNUM,TOTALS,DEN,DXTIME
 S TOTALS=$G(^TMP("BGPMU0083",$J,BGPMUTF,"TOT"))
 S DENCT=+$G(^TMP("BGPMU0083",$J,BGPMUTF,"DEN"))
 S NUMCT=+$G(^TMP("BGPMU0083",$J,BGPMUTF,"NUM"))
 S EXCCT=+$G(^TMP("BGPMU0083",$J,BGPMUTF,"EXC"))
 S NOTNUM=+$G(^TMP("BGPMU0083",$J,BGPMUTF,"NOT"))
 S PTCNT=TOTALS
 S PTCNT=PTCNT+1
 S DENCT=DENCT+1 S ^TMP("BGPMU0083",$J,BGPMUTF,"DEN")=DENCT
 I +NUM D
 .S NUMCT=NUMCT+1 S ^TMP("BGPMU0083",$J,BGPMUTF,"NUM")=NUMCT
 .I BGPMUTF="C" S ^TMP("BGPMU0083",$J,"PAT",BGPMUTF,"NUM",PTCNT)=DFN_U_DENSTR_U_"M:MED "_$$DATE^BGPMUUTL($P(NUM,U,3))
 I +EXC D
 .S EXCCT=EXCCT+1 S ^TMP("BGPMU0083",$J,BGPMUTF,"EXC")=EXCCT
 .I BGPMUTF="C" S ^TMP("BGPMU0083",$J,"PAT",BGPMUTF,"EXC",PTCNT)=DFN_U_DENSTR_U_"Excluded"
 I +NUM=0&(EXC=0) D
 .S NOTNUM=NOTNUM+1 S ^TMP("BGPMU0083",$J,BGPMUTF,"NOT")=NOTNUM
 .I BGPMUTF="C" S ^TMP("BGPMU0083",$J,"PAT",BGPMUTF,"NOT",PTCNT)=DFN_U_DENSTR_U_"NM:"
 S ^TMP("BGPMU0083",$J,BGPMUTF,"TOT")=PTCNT
 ;Setup iCare array for patient",BGPMUTF)=1_U_+NUM_U_""
 S BGPICARE("MU.EP.0083.1",BGPMUTF)=1_U_+NUM_U_+EXC_U_DENSTR_";"_$P(NUM,U,2)_";"_$P(NUM,U,3)
 Q
HFDX(DFN,BDATE,EDATE) ;look for Heart Failure Dx AND LVEF < 40%
 N FOUND,DXHF,PLHF,DX1,DX2,CEF,IEN,INV,MTYPE,RESULT,RDATE
 S FOUND=0,DX1=0,DX2=0,CEF=0
 ;Check for the patient having a DX or Problem of Heart Failure (ever)
 S DXHF=$$LASTDX^BGPMUUT2(DFN,BGPBIRTH,EDATE,"BGPMU HEART FAILURE DX")
 I +DXHF S DX1=DXHF
 E  D
 .S PLHF=$$PLTAX^BGPMUUT1(DFN,"BGPMU HEART FAILURE DX","C",EDATE)
 .I +PLHF S DX1=PLHF
 Q:DX1=0 0
 ;Now check for LVEF < 40%
 ;S MTYP="" S MTYP=$O(^AUTTMSR("B","HT",MTYP))  ;ZSAT: for testing; delete this line, keep next line
 S MTYP="" S MTYP=$O(^AUTTMSR("B","CEF",MTYP))
 Q:MTYP="" 0
 S INV=9999999-EDATE
 F  S INV=$O(^AUPNVMSR("AA",DFN,MTYP,INV)) Q:'+INV!(+FOUND)  D
 .S RDATE=9999999-INV
 .S IEN=0 F  S IEN=$O(^AUPNVMSR("AA",DFN,MTYP,INV,IEN)) Q:IEN=""!(+FOUND)  D
 ..S FOUND=1
 ..S RESULT=$P($G(^AUPNVMSR(IEN,0)),U,4)
 ..;I RESULT<80 S CEF=1_U_U_RDATE   ;ZSAT: testing; delete this line; keep next line
 ..I RESULT<40 S CEF=1_U_RESULT_U_RDATE
 I +CEF D
 .S FOUND=1_U_$P(DX1,U,2)_U_$P(DX1,U,3)_U_$P(CEF,U,2)_U_$P(CEF,U,3)
 Q FOUND
NUM(DFN,BGPBDATE,BGPEDATE) ;Look for Beta-blocker MED
 N FOUND,PMED
 S FOUND=0
 S PMED=$$FIND^BGPMUUT8(DFN,"BGPMU BETABLOCKER NDCS",BGPBDATE,"",BGPEDATE)
 I +PMED S FOUND=1_U_$P(PMED,U,2)_U_$P(PMED,U,3)
 Q FOUND
EXCEPT(DFN,BDATE,EDATE) ;See if this patient has exceptions
 N RESULT,ARRY,HYPO,ASTHMA,BRADY,PACE,PACE2,AVBLOCK,MED
 S RESULT=0
 ;Check for arrythmia
 S ARRY=$$DXCK(DFN,"BGPMU ARRHYTHMIA DX",EDATE)
 I +ARRY S RESULT=ARRY Q RESULT
 ;Check for hypotension
 S HYPO=$$DXCK(DFN,"BGPMU HYPOTENSION DX",EDATE)
 I +HYPO S RESULT=HYPO Q RESULT
 ;Check for asthma
 S ASTHMA=$$DXCK(DFN,"BGPMU ASTHMA DX ICD",EDATE)
 I +ASTHMA S RESULT=ASTHMA Q RESULT
 ;Check for bradycardia
 S BRADY=$$DXCK(DFN,"BGPMU BRADYCARDIA DX",EDATE)
 I +BRADY S RESULT=BRADY Q RESULT
 ;Check for av block and NOT on cardiac pacemaker
 S AVBLOCK=$$DXCK(DFN,"BGPMU AV BLOCK DX",EDATE)
 I +AVBLOCK D  Q:+RESULT RESULT
 .S PACE=$$LASTPRC^BGPMUUT2(DFN,"",BGPEDATE,"BGPMU CARDIAC PACER ICD0")
 .S PACE2=$$DXCK(DFN,"BGPMU CARDIAC PACER IN SITU DX",EDATE)
 .I +PACE=0&(+PACE2=0) S RESULT=AVBLOCK
 ;Next check for allergy
 S ALLER=$$ALLER^BGPMUA10("CV100","")
 I +ALLER S RESULT=1_U_$P(ALLER,U,1) Q RESULT
 ;Check for refusal of Betablockers
 S MED=$$MEDREF^BGPMUUT2(DFN,BDATE,EDATE_".2359","BGPMU BETABLOCKER NDCS")
 I +MED S RESULT=MED Q RESULT
 Q RESULT
DXCK(DFN,TAX,CKDATE)  ;Find dx on problem list or POV
 N A1,A2,FOUND
 S FOUND=0
 S A1=$$LASTDX^BGPMUUT2(DFN,"",CKDATE,TAX)
 I +A1 S FOUND=1_U_$P(A1,U,2)_U_$P(A1,U,3) Q FOUND
 S A2=$$PLTAX^BGPMUUT1(DFN,TAX,"C")
 I +A2 S FOUND=1_U_$P(A2,U,2)_U_$P(A2,U,3)
 Q FOUND
