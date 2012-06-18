BQIMUTAB ;VNGT/HS/ALA-MU Tables ; 25 Feb 2011  1:09 PM
 ;;2.2;ICARE MANAGEMENT SYSTEM;;Jul 28, 2011;Build 37
 ;
 ;
ITM(DATA,TYPE) ; EP -- BQI GET MU MEASURES
 ; Input Parameters
 ;   TYPE = E for Provider, H for Hospital, null for both
 NEW UID,II,MN,MDATA,TIP,TP
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMUITM",UID))
 K @DATA
 S II=0,TYPE=$G(TYPE,"")
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMUTAB D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S HDR="T00030ID^T00001TYPE^T00050NAME^T00001MEASTYPE^T00001SET^T01024TOOLTIP"
 S @DATA@(II)=HDR_$C(30)
 S MN=0
 F  S MN=$O(^APCMMUM(MN)) Q:'MN  D
 . I TYPE'="",$P(^APCMMUM(MN,0),U,2)'=TYPE Q
 . S MDATA=^APCMMUM(MN,0)
 . I $P(MDATA,U,6)'="R" Q
 . S TIP="",TP=0
 . F  S TP=$O(^APCMMUM(MN,23,TP)) Q:'TP  S TIP=TIP_^APCMMUM(MN,23,TP,0)_$C(10)
 . S II=II+1,@DATA@(II)=$P(MDATA,U,1)_U_$P(MDATA,U,2)_U_$P(MDATA,U,5)_U_$P(MDATA,U,6)_U_$P(MDATA,U,3)_U_TIP_$C(30)
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
MUDT(DATA,FAKE) ;EP -- BQI GET MU DATES
 NEW UID,II
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMUDT",UID))
 K @DATA
 S II=0,TYPE=$G(TYPE,"")
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMUTAB D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S HDR="T00010ID^T00030"
 S @DATA@(II)=HDR_$C(30)
 S II=II+1,@DATA@(II)="90^90 Days"_$C(30)
 S II=II+1,@DATA@(II)="12^1 year"_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
CQM(DATA,TYPE) ; EP -- BQI GET MU CQ MEASURES
 ; Input Parameters
 ;   TYPE = E for Provider, H for Hospital, null for both
 NEW UID,II,MN,MDATA,TIP,TP
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMUCQM",UID))
 K @DATA
 S II=0,TYPE=$G(TYPE,"")
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMUTAB D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S HDR="T00030ID^T00001TYPE^T00050NAME^T01024TOOLTIP"
 S @DATA@(II)=HDR_$C(30)
 S MSN=0 D
 . F  S MSN=$O(^BGPMUIND(90595.11,MSN)) Q:'MSN  D
 .. I $P(^BGPMUIND(90595.11,MSN,0),U,4)'="H" Q
 .. S MDATA=^BGPMUIND(90595.11,MSN,0)
 .. S II=II+1,@DATA@(II)=$P(MDATA,U,1)_U_$$GET1^DIQ(90595.11,MSN_",",.04,"E")_U_$P(MDATA,U,3)_U_$C(30)
 S MN=0
 F  S MN=$O(^BGPMUIND(90596.11,MN)) Q:'MN  D
 . I TYPE'="" S QFL=0 D  Q:QFL
 .. S MSN=$P(^BGPMUIND(90596.11,MN,0),U,1)
 .. I $G(^BGPMUIND(90595.11,MSN,0))="" Q
 .. I TYPE="E",$P(^BGPMUIND(90595.11,MSN,0),U,4)="H" S QFL=1 Q
 .. I TYPE="H",$P(^BGPMUIND(90595.11,MSN,0),U,4)'="H" S QFL=1 Q
 . ;
 . S MDATA=^BGPMUIND(90596.11,MN,0)
 . S MSN=$P(^BGPMUIND(90596.11,MN,0),U,1)
 . I $G(^BGPMUIND(90595.11,MSN,0))="" Q
 . S MTYPE=$$GET1^DIQ(90595.11,MSN_",",.04,"E")
 . S BQIDATA=$G(^BGPMUIND(90596.11,MN,17)) I BQIDATA="" Q
 . S TIP="",TP=0
 . F  S TP=$O(^BGPMUIND(90596.11,MN,18,TP)) Q:'TP  S TIP=TIP_^BGPMUIND(90596.11,MN,18,TP,0)_$C(10)
 . S II=II+1,@DATA@(II)=$P(MDATA,U,4)_U_MTYPE_U_$P(BQIDATA,U,3)_U_TIP_$C(30)
  S II=II+1,@DATA@(II)=$C(31)
  Q
