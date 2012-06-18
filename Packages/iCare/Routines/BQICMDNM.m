BQICMDNM ;VNGT/HS/ALA - Get Care Management Denominator ; 25 Sep 2008  2:41 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 Q
 ;
EN(DATA,DFN,CARE) ;EP -- BQI GET CARE MGMT DENOMINATOR
 ;
 ; Input
 ;   DFN  - Patient internal entry number
 ;   CARE - A specific care management
 ;
 NEW UID,II
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQICMDNM",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQICMDNM D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S CARE=$G(CARE,"")
 S HDR="T01024DENOMINATOR",VALUE=""
 S @DATA@(II)=HDR_$C(30)
 ;
 I CARE'="" D
 . I CARE'?.N S CMN=$$FIND1^DIC(90506.5,"","B",CARE,"","","ERROR")
 . I CARE?.N S CMN=CARE
 . D DEF(CMN)
 . ;
 I CARE="" D
 . S CMN=0
 . F  S CMN=$O(^BQI(90506.5,CMN)) Q:'CMN  D DEF(CMN)
 ;
 S VALUE=$$TKO^BQIUL1(VALUE,$C(28))
 S II=II+1,@DATA@(II)=VALUE_$C(30)
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
NRPC(DFN,CARE) ;EP - Return denominator as a flag in non RPC call
 I CARE'?.N S CMN=$$FIND1^DIC(90506.5,"","B",CARE,"","","ERROR")
 I CARE?.N S CMN=CARE
 Q $$DEFA(CMN)
 ;
DEF(CMN) ; Definition
 S VAL="N"
 I $P(^BQI(90506.5,CMN,0),U,4)'=1 Q
 S EXEC=$G(^BQI(90506.5,CMN,1)) I EXEC="" Q
 X EXEC
 S TIT=$P(^BQI(90506.5,CMN,0),U,1)
 I $G(VAL)="" Q
 S VALUE=VALUE_TIT_"="_$G(VAL)_$C(28)
 Q
 ;
DEFA(CMN) ; EP - Denominator API
 S VAL=0
 I $P(^BQI(90506.5,CMN,0),U,4)'=1 Q VAL
 S EXEC=$G(^BQI(90506.5,CMN,1)) I EXEC="" Q VAL
 X EXEC
 Q $S(VAL="Y":1,1:0)
 ;
HIV(BQDFN,CMN) ; EP
 NEW RESULT,REG,TAG,ACT,BKMIEN,BKMREG,DA,BKMIENS,DXCAT
 S RESULT="N"
 S REG=$P(^BQI(90506.5,CMN,0),U,3) I REG="" Q RESULT
 S TAG=$O(^BQI(90506.2,"AD",REG,"")) I TAG="" Q RESULT
 S ACT=$$ATAG^BQITDUTL(BQDFN,TAG)
 ;
 S BKMIEN=$$BKMIEN^BKMIXX3(BQDFN)
 S BKMREG=$$BKMREG^BKMIXX3(BKMIEN)
 S DA(1)=BKMIEN,DA=BKMREG
 S BKMIENS=$$IENS^DILF(.DA)
 S DXCAT=$$GET1^DIQ(90451.01,BKMIENS,2.3,"I")
 I ACT Q "Y"
 I DXCAT="H"!(DXCAT="A") Q "Y"
 Q RESULT
