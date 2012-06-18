BKMVSUP6 ;PRXM/HC/WOM - Continuation of BKMVSUP, HIV SUPPLEMENT; [ 1/19/2005 7:16 PM ] ; 10 Jun 2005  12:31 PM
 ;;2.1;HIV MANAGEMENT SYSTEM;;Feb 07, 2011
 Q
HEADER(PAGE,XNOW) ; EP - Print the header
 W @IOF
 ;I PAGE=1 S $X=0
 ;E  W @IOF
 W !?1,$$CONF(""),!?(IOM-41\2),"****** HMS PATIENT CARE SUPPLEMENT ******"
 W !!?1,"Report Date: ",XNOW,?69,"Page: ",PAGE,!!
 Q
 ;
PAUSE() ; EP - For screen displays pause and allow user to stop
 ; Returns a 1 if the user elected to stop
 ; Matches Health Summary
 I IOST'["C-" Q 0
 N READ
 R !,"<>",READ:DTIME I '$T Q 1
 I READ="^" Q 1
 Q 0
 ;
CONF(END) ; EP - Print confidential message
 ; END is set if final page and ending message is being printed.
 N X,Y,TIM,AP,HDR
 S Y=$$FMTE^XLFDT($$NOW^XLFDT()) S TIM=$P(Y,"@",2)
 S AP="AM" S:+TIM=12 AP="PM"
 S:+TIM>12 TIM=TIM-12_":"_$P(TIM,":",2),AP="PM" S TIM=TIM_" "_AP
 ; ***** CONFIDENTIAL PATIENT INFORMATION --  DATE/TIME **************
 S HDR="CONFIDENTIAL PATIENT INFORMATION -- "_$$FMTE^XLFDT(DT,"5Z")_" "_$J(TIM,9)_"  ["_$P(^VA(200,DUZ,0),U,2)_"]"
 S X="",$P(X,"*",((IOM-6-$L(HDR))\2)+1)="*"
 S HDR=$S($G(END):$E("**** END *",$L(X)-4,12),1:X)_" "_HDR_" "_X
 Q HDR
 ;
GETALL(DFN) ; EP - Gather patient information
 ; Code taken from BKMVC6 but revised to limit search to Problem List and to capture problem status
 NEW IENDA0,IENDA,IENS,TARGET,HTARGET
 NEW ATAX,ATAX1,STAT,OTHERDT,DATE,ICD9,POVDATE,REVDATE,VPOV
 K ICD9S
 S ATAX=$O(^ATXAX("B","BKMV AIDS DEF ILL DXS",""))   ; DX.1
 S ATAX1=$O(^ATXAX("B","BKMV HIV OPP INF DXS",""))   ; DX.8
 ; Modified code to return unique ICDs for a given date.
 ;S REVDATE=""
 ;F  S REVDATE=$O(^AUPNVPOV("AA",DFN,REVDATE)) Q:REVDATE=""  D
 ;. S VPOV=""
 ;. F  S VPOV=$O(^AUPNVPOV("AA",DFN,REVDATE,VPOV)) Q:VPOV=""  D
 ;. . S IENS=$$IENS^DILF(VPOV)
 ;. . S ICD9=$$GET1^DIQ(9000010.07,IENS,.01,"I")
 ;. . I ICD9="" Q
 ;. . I $$ICD^BKMIXX5(ICD9,ATAX,9)=0,$$ICD^BKMIXX5(ICD9,ATAX1,9)=0 Q
 ;. . S NAR=$$GET1^DIQ(9000010.07,IENS,.04,"E")
 ;. . S ICD9S(REVDATE,ICD9)=NAR
 S VPOV=""
 F  S VPOV=$O(^AUPNPROB("AC",DFN,VPOV)) Q:VPOV=""  D
 . S IENS=$$IENS^DILF(VPOV)
 . S POVDATE=$$PROB^BKMVUTL(IENS)
 . Q:POVDATE'?1.N
 . S REVDATE=9999999-POVDATE
 . S ICD9=$$GET1^DIQ(9000011,IENS,.01,"I")
 . I ICD9="" Q
 . I $$ICD^BKMIXX5(ICD9,ATAX,9)=0,$$ICD^BKMIXX5(ICD9,ATAX1,9)=0 Q
 . S NAR=$$GET1^DIQ(9000011,IENS,.05,"E")
 . S STAT=$$GET1^DIQ(9000011,IENS,.12,"E")
 . S DATE=REVDATE,OTHERDT="" ;ICD9S(REVDATE,ICD9)=STAT_U_NAR
 . ;List date entered/last modified if different from date of onset
 . I POVDATE'=$$GET1^DIQ(9000011,IENS,.13,"I") D
 ..  ;N OTHERDT
 ..  S OTHERDT=$$GET1^DIQ(9000011,IENS,.13,"I")
 ..  ;I OTHERDT="" S OTHERDT=$$GET1^DIQ(9000011,IENS,.03,"I")
 ..  Q:POVDATE=OTHERDT!(OTHERDT="")
 ..  S DATE=9999999-OTHERDT
 ..  ;S ICD9S(REVDATE,ICD9)=STAT_U_NAR_U_OTHERDT
 . I OTHERDT=POVDATE S POVDATE=""
 . S ICD9S(DATE,ICD9)=STAT_U_NAR_U_POVDATE
 QUIT
 ;
LIPID(DFN) ; EP - Retrieve Lipid taxonomies
 N LAST,GLOBAL
 N CPTTAX,LOINTAX,SITETAX
 S LINE=" Lipid Profile:"
 ;D UPD^BKMVSUP
 K BKMT("LIP"),BKMT("LIPID")
 S GLOBAL="BKMT(""LIP"",VSTDT,TEST,""LAB"")"
 S CPTTAX="BGP LIPID PROFILE CPTS"
 S LOINTAX="BGP LIPID PROFILE LOINC CODES"
 S SITETAX="DM AUDIT LIPID PROFILE TAX"
 D LIPPRO(LOINTAX,DFN,"","",GLOBAL)
 D LIPPRO(SITETAX,DFN,"","",GLOBAL)
 D CPTTAX^BKMIXX(DFN,CPTTAX,"","",GLOBAL)
 I $D(BKMT("LIP")) D  Q
 . S LAST=$O(BKMT("LIP",""),-1)
 . M BKMT("LIPID",LAST)=BKMT("LIP",LAST) K BKMT("LIP")
 . D LTAXPRT^BKMVSUP1("LIPID",1000,1)
 S GLOBAL="BKMT(""LIPID"",VSTDT,TEST,""LAB"")"
 D REFUSAL^BKMIXX2(DFN,60,LOINTAX,"","",GLOBAL)
 D REFUSAL^BKMIXX2(DFN,60,SITETAX,"","",GLOBAL)
 ; Print results
 D LTAXPRT^BKMVSUP1("LIPID",1,1,1)
 I LINE'="" D UPD^BKMVSUP
 Q
LIPPRO(TAX,DFN,EDATE,SDATE,TARGET) ; EP
 ; Get lab result associated with a lipid profile for a patient
 ;
 N RESULT,LAB,LB,IEN,TEST,VISIT,VSTDT
 S RESULT=""
 D BLDTAX^BKMIXX5(TAX,"LAB")
 S LAB=""
 F  S LAB=$O(LAB(LAB)) Q:LAB=""  D  ;I $O(^LAB(60,LAB,2)) D
 . S IEN=0
 . F  S IEN=$O(^LAB(60,LAB,2,IEN)) Q:'IEN  S LB=$G(^(IEN,0)) I LB'="" S LAB(LB)=""
 S TEST="" ;,LDATE=$G(LDATE,""),LIEN=$G(LIEN,"")
 F  S TEST=$O(^AUPNVLAB("AC",DFN,TEST),-1) Q:TEST=""  D
 .S LAB=$$GET1^DIQ(9000010.09,TEST,.01,"I")
 .I LAB="" Q
 .I '$D(LAB(LAB)) Q
 .S VISIT=$$GET1^DIQ(9000010.09,TEST,.03,"I")
 .S VSTDT=$$GET1^DIQ(9000010,VISIT_",",.01,"I") Q:VSTDT=""
 .I $G(SDATE)'="",(VSTDT<SDATE) Q
 .I $G(EDATE)'="",(VSTDT\1>EDATE) Q
 .;I VSTDT>LDATE S LDATE=VSTDT,LIEN=TEST
 .;I VSTDT=LDATE,TEST>LIEN S LDATE=VSTDT,LIEN=TEST
 .S RESULT=$$GET1^DIQ(9000010.09,TEST,.04,"I")
 .I $G(TARGET)]"" S @TARGET=RESULT
 Q
 ;
HIVTAG(DFN) ;Retrieve HIV/AIDS Diagnostic Tag Information
 N DCIEN,TAGIEN,TAG,TAGDT
 S TAG=""
 S DCIEN=$O(^BQI(90506.2,"B","HIV/AIDS",""))
 I DCIEN'="" D
 . S TAGIEN=$O(^BQIREG("C",DFN,DCIEN,""))
 . I TAGIEN'="" D
 .. S TAG=$$GET1^DIQ(90509,TAGIEN_",",.03,"E")
 .. S TAG=$$LOWER^VALM1(TAG) ;Change to mixed case
 .. S TAGDT=$$GET1^DIQ(90509,TAGIEN_",",.04,"I")
 .. I TAGDT S TAG=TAG_"  "_$$FMTE^XLFDT(TAGDT\1,"5Z")
 Q TAG
 ;
XIT ; QUIT POINT
 Q
