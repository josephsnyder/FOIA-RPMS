BQISYWEB ;APTIV/HC/ALA-iCare Web Links ; 11 Apr 2008  6:26 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
GET(DATA,FAKE) ;EP -- BQI GET ICARE WEB LINKS
 ; Get the iCare Web links
 NEW UID,II,IEN
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQISYWEB",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQISYWEB D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="T00025CATEGORY^T00200LINK^T00100TOPIC"_$C(30)
 ;
 S IEN=0
 F  S IEN=$O(^BQI(90507.1,IEN)) Q:'IEN  D
 . S II=II+1,@DATA@(II)=$$GET1^DIQ(90507.1,IEN_",",.02,"E")_U_$$GET1^DIQ(90507.1,IEN_",",.01,"E")_U_$$GET1^DIQ(90507.1,IEN_",",.03,"E")_$C(30)
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
