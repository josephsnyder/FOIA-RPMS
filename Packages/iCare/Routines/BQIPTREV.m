BQIPTREV ;APTIV/HC/ALA-Get Patient's Last Routine Events ; 18 Jan 2008  5:49 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 ;
EN(DATA,DFN) ;EP - BQI GET PATIENT ROUTINE EVENTS
 ;Description - all the routine events that a patient has
 ;
 ;Input
 ;  DFN - Patient internal entry number
 ;
 NEW UID,II,BQNM,IEN,BQEVNT,HIEN,CALL,TAG,CODE,BQREM,RIEN,BQIX,BQLDT,CAT
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIPTREV",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIPTREV D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S HDR="T00050LASTROUT^D00015LASTDATE^T00030CATEGORY^I00010VISIT_IEN"
 S @DATA@(II)=HDR_$C(30)
 S BQNM=""
 F  S BQNM=$O(^BQI(90507.3,"B",BQNM)) Q:BQNM=""  D
 . S IEN=""
 . F  S IEN=$O(^BQI(90507.3,"B",BQNM,IEN)) Q:IEN=""  D
 .. S BQEVNT=$P(^BQI(90507.3,IEN,0),U,1),BQREM=$P(^(0),U,2)
 .. S HIEN=$$FIND1^DIC(9001018,"","X",BQREM,"B","","ERROR")
 .. ; if it didn't find the corresponding reminder, quit
 .. I HIEN=0 Q
 .. I $P(^APCHSURV(HIEN,0),U,3)'=1 Q
 .. S CALL=$P(^APCHSURV(HIEN,0),U,2),TAG=$P(CALL,";",1)
 .. S CAT=$$GET1^DIQ(9001018,HIEN_",",.05,"E")
 .. I TAG="" Q
 .. S CODE=TAG_"_"_HIEN
 .. S RIEN=$O(^BQIPAT(DFN,40,"B",CODE,""))
 .. I RIEN="" Q
 .. S BQIX=^BQIPAT(DFN,40,RIEN,0)
 .. S CT=0 F BI=2:1:3 I $P(BQIX,U,BI)'="" S CT=CT+1
 .. I CT=0 Q
 .. S BQLDT=$P(BQIX,U,2),VISIT=$P(BQIX,U,6)
 .. ;
 .. I BQREM="COLORECTAL CA-SCOPE/XRAY" D
 ... S BQLDT=""
 ... S X=$$GVHMR^APCHSMU(DFN,HIEN)
 ... I X'["|" S BQVAL=$P(X,U,4) D  Q
 .... I BQVAL'[$$UP^XLFSTR(BQEVNT) Q
 .... S BQLDT=$P(X,U,2),VISIT=$P(X,U,6)
 ... F BQJ=1:1:$L(X,"|") D
 .... S BQVAL=$P(X,"|",BQJ)
 .... I $P(BQVAL,U,1)'=$$UP^XLFSTR(BQEVNT) Q
 .... S BQLDT=$P(BQVAL,U,2),VISIT=$P(BQIX,U,6)
 .. S BQLDT=$$FMTE^BQIUL1(BQLDT)
 .. ;I BQLDT="" S BQLDT="01/01/0001 12:00:00 AM"
 .. S II=II+1,@DATA@(II)=BQEVNT_U_BQLDT_U_CAT_U_VISIT_$C(30)
 ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,@DATA@(II)=$C(31)
 Q
