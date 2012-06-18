BQIVFCHC ;PRXM/HC/ALA-Return 'Choice' values for the GUI ; 09 Apr 2007  4:33 PM
 ;;2.2;ICARE MANAGEMENT SYSTEM;;Jul 28, 2011;Build 37
 Q
 ;
EN(DATA,VFILE,CODE) ;EP -- BQI GET VFILE CHOICE
 ;
 ;Input
 ;  VFILE - The vfile number or name
 ;  CODE  - The parameter name
 ;
 NEW UID,II,HDR,IEN,VALUE,HELP,VFIEN,HN
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIVFCHC",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIVFCHC D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S VFILE=$G(VFILE,"") I VFILE="" S BMXSEC="No Vfile selected" Q
 S VFIEN=$$FIND1^DIC(90506.3,"","M",VFILE,"","","ERROR")
 S CODE=$G(CODE,"") I CODE="" S BMXSEC="No code given" Q
 I $O(^BQI(90506.3,VFIEN,10,"AC",CODE,""))="" S BMXSEC="Code does not exist for this Vfile" Q
 NEW DA,IENS
 S DA(2)=VFIEN
 NEW CIEN
 S CIEN=""
 F  S CIEN=$O(^BQI(90506.3,VFIEN,10,"AC",CODE,CIEN)) Q:CIEN=""  D
 . I $P(^BQI(90506.3,VFIEN,10,CIEN,0),U,11)=1 Q
 . S DA(1)=CIEN
 ;
 S HDR="T00020CHOICE_TEXT^T00005CHOICE_CODE^T00001VALIDATION^T00008HELP_ASSOC^T01024CHOICE_HELP"_$C(30)
 S @DATA@(II)=HDR
 ;
 I $O(^BQI(90506.3,VFIEN,10,DA(1),5,"AC",""))="" D STD
 I $O(^BQI(90506.3,VFIEN,10,DA(1),5,"AC",""))'="" D NST
 ;
DONE ;
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
 ;
NST ; Sort in designated order
 NEW ORD
 S ORD=""
 F  S ORD=$O(^BQI(90506.3,VFIEN,10,DA(1),5,"AC",ORD)) Q:ORD=""  D
 . S IEN=""
 . F  S IEN=$O(^BQI(90506.3,VFIEN,10,DA(1),5,"AC",ORD,IEN)) Q:IEN=""  D REC
 Q
 ;
STD ; Sort in standard order
 S IEN=0
 F  S IEN=$O(^BQI(90506.3,VFIEN,10,DA(1),5,IEN)) Q:'IEN  D REC
 Q
 ;
REC ; Get record values
 I $P(^BQI(90506.3,VFIEN,10,DA(1),5,IEN,0),U,5)=1 Q
 S DA=IEN,IENS=$$IENS^DILF(.DA),VALUE=""
 S VALUE=VALUE_$$GET1^DIQ(90506.315,IENS,.01,"E")_U_$$GET1^DIQ(90506.315,IENS,.02,"E")_U_$$GET1^DIQ(90506.315,IENS,.03,"I")_U
 S VALUE=VALUE_$$GET1^DIQ(90506.315,IENS,.04,"E")_U
 S HN=0,HELP=""
 F  S HN=$O(^BQI(90506.3,VFIEN,10,DA(1),5,IEN,1,HN)) Q:'HN  D
 . S HELP=HELP_^BQI(90506.3,VFIEN,10,DA(1),5,IEN,1,HN,0)_$C(10)
 S HELP=$$TKO^BQIUL1(HELP,$C(10))
 S VALUE=VALUE_HELP_$C(30)
 S II=II+1,@DATA@(II)=VALUE
 Q
 ;
CMET(DATA,FAKE) ;EP -- BQI GET CMET CHOICE
 NEW UID,II,HDR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQICMETCH",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIVFCHC D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S HDR="T00020CHOICE_TEXT^T00005CHOICE_CODE"
 S @DATA@(II)=HDR_$C(30)
 S TEXT=$P(^DD(90505,.09,0),U,3)
 F BQ=1:1:$L(TEXT,";") S VAL=$P(TEXT,";",BQ) Q:VAL=""  D
 . S II=II+1,@DATA@(II)=$P(VAL,":",2)_U_$P(VAL,":",1)_$C(30)
 G DONE
 ;
MU(DATA,FAKE) ;EP -- BQI GET MU CHOICE
 NEW UID,II,HDR,TEXT,BQ,VAL
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMUCH",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIVFCHC D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S HDR="T00020CHOICE_TEXT^T00005CHOICE_CODE"
 S @DATA@(II)=HDR_$C(30)
 S TEXT=$P(^DD(90505,.16,0),U,3)
 F BQ=1:1:$L(TEXT,";") S VAL=$P(TEXT,";",BQ) Q:VAL=""  D
 . S II=II+1,@DATA@(II)=$P(VAL,":",2)_U_$P(VAL,":",1)_$C(30)
 G DONE
