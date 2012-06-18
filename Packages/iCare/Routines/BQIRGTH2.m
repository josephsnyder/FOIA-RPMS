BQIRGTH2 ;VNGT/HS/ALA - HMS ARV Multiple Trigger ; 16 Jul 2008  10:40 AM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
EN(DATA,ARASTAT) ; EP -- BQI REGISTER ARV TRIGGERS
 ; These are small individual value triggers
 ; Input
 ;   ARSTAT - ARV Appropriate Status (BKMHTAST)
 ;
 NEW UID,II
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIRGTH2",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIRGTH2 D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="T00008SOURCE^T00001ABLE_FLAG^T01024CLEAR_FIELDS"_$C(30)
 ;
 I $G(ARASTAT)="N" S II=II+1,@DATA@(II)="BKMHTNAR^Y^"_$C(30)
 I $G(ARASTAT)'="N" S II=II+1,@DATA@(II)="BKMHTNAR^N^BKMHTNAR"_$C(30)
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
REG(DATA,REGMN) ;EP -- BQI REG ARV REGIMEN TRIGGER
 NEW UID,II
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIRGTH3",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIRGTH2 D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="T00008SOURCE^T00001ABLE_FLAG^T00001REQ_OPT^T01024CLEAR_FIELDS"_$C(30)
 ;
 I $G(REGMN)="N" S II=II+1,@DATA@(II)="BKMHSCOM^Y^R^"_$C(30)
 I $G(REGMN)'="N" S II=II+1,@DATA@(II)="BKMHSCOM^Y^O^"_$C(30)
 G DONE
