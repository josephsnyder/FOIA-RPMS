BQITRUT1 ;VNGT/HS/ALA-Treatment Prompt Utility Program ; 03 Sep 2008  8:55 AM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
NEX(BQDFN,TMFRAME) ;EP - No Exercise API
 NEW X,MEET,DESC
 S MEET=0,DESC=""
 D
 . S X=$$DX^BQITRUTL($$DATE^BQIUL1(TMFRAME),BQDFN,"V65.41")
 . I $P(X,U,1)=1 S MEET=0,DESC="Has DX for V65.41-EXERCISE COUNSELING" Q
 . S X=$$FED^BQITREDU($$DATE^BQIUL1(TMFRAME),BQDFN,"-EX")
 . I $P(X,U,1)=1 S MEET=0,DESC="Has Education Topic: "_$$GET1^DIQ(9000010.16,$P(X,U,5)_",",.01,"E")_" "_$$FMTE^BQIUL1($P(X,U,2)) Q
 . ;S X=$$FED^BQITREDU($$DATE^BQIUL1(TMFRAME),BQDFN,"-LA")
 . ;I $P(X,U,1)=1 S MEET=0,DESC="Has Education Topic: "_$$GET1^DIQ(9000010.16,$P(X,U,5)_",",.01,"E")_" "_$$FMTE^BQIUL1($P(X,U,2)) Q
 . S MEET=1,DESC="Has no exercise education topics or diagnosis"
 Q MEET_U_DESC
 ;
NNU(BQDFN,TMFRAME) ;EP - No Nutrition API
 NEW X,MEET,DESC
 S MEET=0,DESC=""
 D
 . S X=$$DX^BQITRUTL($$DATE^BQIUL1(TMFRAME),BQDFN,"V65.3")
 . I $P(X,U,1)=1 S MEET=0,DESC="Has DX for V65.3-DIETARY SURVEIL/COUNSEL" Q
 . ;S X=$$FED^BQITREDU($$DATE^BQIUL1(TMFRAME),BQDFN,"-NU")
 . S X=$$TOP($$DATE^BQIUL1(TMFRAME),BQDFN,"-N","NUTRITION")
 . I $P(X,U,1)=1 S MEET=0,DESC="Has Education topic: "_$$GET1^DIQ(9000010.16,$P(X,U,5)_",",.01,"E")_" "_$$FMTE^BQIUL1($P(X,U,2)) Q
 . S X=$$FED^BQITREDU($$DATE^BQIUL1(TMFRAME),BQDFN,"-MNT")
 . I $P(X,U,1)=1 S MEET=0,DESC="Has Education topic: "_$$GET1^DIQ(9000010.16,$P(X,U,5)_",",.01,"E")_" "_$$FMTE^BQIUL1($P(X,U,2)) Q
 . S MEET=1,DESC="Has no nutrition education topics or diagnosis"
 Q MEET_U_DESC
 ;
TAX(BQDFN,TMFRAME,TAX,FREF) ;EP - Documented value from a taxonomy
 NEW MEET,DESC,EDATE,GREF,TREF,IEN,QFL,TIEN,VISIT,VSDTM
 S MEET=0,DESC=""
 S TMFRAME=$G(TMFRAME,""),TAX=$G(TAX,"")
 I TMFRAME'="" S EDATE=$$DATE^BQIUL1(TMFRAME)
 S GREF=$$ROOT^DILFD(FREF,"",1),TREF=$NA(^TMP("BQITAX",UID))
 ;  Build the taxonomy reference
 K @TREF
 Q:TAX=""
 D BLD^BQITUTL(TAX,TREF)
 S IEN="",QFL=0
 F  S IEN=$O(@GREF@("AC",BQDFN,IEN),-1) Q:IEN=""  D  Q:QFL
 . S TIEN=$$GET1^DIQ(FREF,IEN_",",.01,"I") I TIEN="" Q
 . I '$D(@TREF@(TIEN)) Q
 . S VISIT=$$GET1^DIQ(FREF,IEN_",",.03,"I") I VISIT="" Q
 . I $$GET1^DIQ(9000010,VISIT_",",.11,"I")=1 Q
 . S VSDTM=$$GET1^DIQ(9000010,VISIT_",",.01,"I")\1 I VSDTM=0 Q
 . I $G(TMFRAME)'="",VSDTM<EDATE Q
 . S MEET=1,DESC="Has value from taxonomy "_TAX
 Q MEET_U_DESC
 ;
EKG(BQDFN,TMFRAME) ;EP
 NEW RETURN
 S RETURN=$$TAX^BQITRUT1(BQDFN,TMFRAME,"BQI EKG PROCEDURES",9000010.08)
 I $P(RETURN,U,1)=0 S MEET=1,DESC="Does not have EKG procedure in past year"
 I $P(RETURN,U,1)=1 S MEET=0,DESC=$P(RETURN,U,2)
 Q MEET_U_DESC
 ;
TOP(DATE,BQDFN,CODE,TEXT) ;Build the topic data
 S TREF=$NA(^TMP("BQITOPIC",UID)),RES=0
 S DATE=$G(DATE,""),TEXT=$G(TEXT,"")
 K @TREF
 D EDTP^BQITRUTL(TREF,CODE)
 S IEN=""
 F  S IEN=$O(@TREF@(IEN)) Q:IEN=""  D
 . I TEXT="" Q
 . I @TREF@(IEN)'[TEXT K @TREF@(IEN)
 S IEN=""
 F  S IEN=$O(^AUPNVPED("AC",BQDFN,IEN)) Q:IEN=""  D
 . S TIEN=$P($G(^AUPNVPED(IEN,0)),U,1) I TIEN="" Q
 . I '$D(@TREF@(TIEN)) Q
 . S VIEN=$P(^AUPNVPED(IEN,0),U,3) I VIEN="" Q
 . S VSDTM=$P($G(^AUPNVSIT(VIEN,0)),U,1)\1 I VSDTM=0 Q
 . I DATE'="",VSDTM<DATE Q
 . S RES=1_U_VSDTM_U_U_VIEN_U_IEN
 K @TREF
 Q RES
