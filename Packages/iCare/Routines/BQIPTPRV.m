BQIPTPRV ;APTIV/HC/ALA-Add/Edit Designated Providers ; 07 Feb 2008  11:24 AM
 ;;2.2;ICARE MANAGEMENT SYSTEM;;Jul 28, 2011;Build 37
 ;
UPD(DATA,DFN,PROV,PRCAT,PARMS) ;EP - BQI UPDATE DESIGNATED PROVIDER
 ; Input
 ;   DFN   - Patient IEN
 ;   PROV  - Provider IEN (if deleting, should be an '@'
 ;   PRCAT - Provider category name
 ;   PARMS - Parameters (NAME=VALUE)
 ;
 NEW UID,II,RESULT,BDPLINKI
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIPTPRV",UID))
 S PROV=$G(PROV,"") I PROV="" S PROV="@"
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIPTPRV D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="I00010RESULT^T00100MSG"_$C(30)
 ;
 ;I PRCAT?.N S PRCAT=$$GET1^DIQ(90360.3,PRCAT_",",.01,"E")
 ;
 ; Call to provided API in DSPM package
 S BDPLINKI=1
 I PROV'="@" D AEDAP^BDPAPI(DFN,"@",PRCAT,.RESULT)
 D AEDAP^BDPAPI(DFN,PROV,PRCAT,.RESULT)
 I $P(RESULT,U,1)=0 S $P(RESULT,U,1)=-1
 S II=II+1,@DATA@(II)=$P(RESULT,U,1)_U_$P(RESULT,U,2)_$C(30)
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
