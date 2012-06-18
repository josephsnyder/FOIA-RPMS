AGGPTRGO ;VNGT/HS/BEE-Other Patient Data Triggers ; 09 Apr 2010  7:57 AM
 ;;1.0;PATIENT REGISTRATION GUI;;Nov 15, 2010
 ;
 Q
 ;
INIT(DATA,DFN) ; EP -- AGG OTHER PATIENT INIT TRG
 ; Input
 ;   DFN      - Patient IEN
 ;
 NEW UID,II,VALUE,SOURCE,IEN,HELP,TYPE,ABLE,AGGECREL,VISIBLE,EFND,EIEN,VAR,LIEN,LDT,AGOPT,HDR,HIN
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGPTRGO",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTRGO D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR
 S @DATA@(II)=HDR_$C(30)
 ;
 ;Method of Collection (disabled if Ethnicity is blank)
 I $$ETHN^AGGPTDMG(DFN,.01)="" S SOURCE="AGMETH",ABLE="N",TYPE="T",CLEAR="",CLFLAG="",VALUE="",HELP="",REQ="O",VISIBLE="" D UP
 ;
 ;Other Languages
 S SOURCE="OTHLNG",ABLE="Y",TYPE="M",CLEAR="",VALUE="",HELP="",REQ="O",VISIBLE="",CLFLAG="" D UP
 ;
 ;Interpreter Required? (disabled if Primary Language is English)
 I $$MUL^AGGWDISP(DFN,9000001,8601,.02,"E")="ENGLISH" S SOURCE="AGGINTRP",ABLE="N",TYPE="C",CLEAR="",VALUE="",HELP="",REQ="O",VISIBLE="",CLFLAG="",CLFLAG="",CLFLAG="" D UP
 ;
 ;English Proficiency (disabled if Primary Language or Other Languages not English)
 S LIEN="",LDT=$O(^AUPNPAT(DFN,86,"B",""),-1)
 I LDT]"" S LIEN=$O(^AUPNPAT(DFN,86,"B",LDT,""),-1)
 D GETS^DIQ(9000001.86,LIEN_","_DFN_",",".05*","E","VAR") ;Pull Other Languages
 S EFND=0,EIEN="" F  S EIEN=$O(VAR(9000001.8605,EIEN)) Q:EIEN=""  I $G(VAR(9000001.8605,EIEN,".01","E"))="ENGLISH" S EFND=1 Q
 I $$MUL^AGGWDISP(DFN,9000001,8601,.02,"E")'="ENGLISH",EFND=0 S SOURCE="AGGLGEPF",ABLE="N",TYPE="C",CLEAR="",VALUE="",HELP="",REQ="O",VISIBLE="",CLFLAG="" D UP   ;NEED TO ADD IN CHECK FOR OTHER LANGUAGE
 ;
 ;Migrant Worker Type (disabled if Migrant Status is not 'Yes')
 I $$MUL^AGGWDISP(DFN,9000001,8401,.02,"I")'="Y" S SOURCE="AGGMGTYP",ABLE="N",TYPE="C",CLEAR="",VALUE="",HELP="",REQ="O",VISIBLE="",CLFLAG="" D UP
 ;
 ;Homeless Type (disabled if Homeless Status is not 'Yes')
 I $$MUL^AGGWDISP(DFN,9000001,8501,.02,"I")'="Y" S SOURCE="AGGHMTYP",ABLE="N",TYPE="C",CLEAR="",VALUE="",HELP="",REQ="O",VISIBLE="",CLFLAG="" D UP
 ;
 ;Household Income
 S HIN=$$GET1^DIQ(9000001,DFN_",",.36,"E") I HIN>0 S HIN=$$NUMB(HIN),SOURCE="AGGTHINC",ABLE="Y",TYPE="T",CLEAR="",VALUE=HIN,HELP="",REQ="O",VISIBLE="",CLFLAG="" D UP
 ;
 ;Household Income Period
 I $$GET1^DIQ(9000001,DFN_",",.36,"E")'>0 S SOURCE="AGGHINP",ABLE="N",TYPE="C",CLEAR="",VALUE="",HELP="",REQ="O",VISIBLE="",CLFLAG="" D UP
 ;
 ;Enable Internet Access Where Field
 I $$MUL^AGGWDISP(DFN,9000001,8101,.02,"I")=1 S SOURCE="AGGWEBF",VALUE="",HELP="",ABLE="Y",REQ="O",CLEAR="",CLFLAG="",TYPE="C",VISIBLE="",CLFLAG="" D UP
 I $$MUL^AGGWDISP(DFN,9000001,8101,.02,"I")'=1 S SOURCE="AGGWEBF",VALUE="",HELP="",ABLE="N",REQ="O",CLEAR="AGGWEBF",CLFLAG="Y",TYPE="C",VISIBLE="",CLFLAG="" D UP
 ;
 D ^AGVAR
 I AGOPT(22)="N" D
 . S SOURCE="AGRACE",VALUE=$$RCE^AGGPTDMG(DFN,.01),ABLE="N",TYPE="T",CLEAR="",HELP="",REQ="O",VISIBLE="N",CLFLAG="" D UP
 . S SOURCE="AGGTHNUM",VALUE=$$GET1^DIQ(9000001,DFN_",",.35,"E"),ABLE="N",TYPE="X",CLEAR="",HELP="",REQ="O",VISIBLE="N",CLFLAG="" D UP
 . S SOURCE="AGGTHINC",VALUE=$$GET1^DIQ(9000001,DFN_",",.36,"E"),ABLE="N",TYPE="X",CLEAR="",HELP="",REQ="O",VISIBLE="N",CLFLAG="" D UP
 . S SOURCE="AGGHINP",VALUE=$$GET1^DIQ(9000001,DFN_",",8701,"E"),ABLE="N",TYPE="C",CLEAR="",HELP="",REQ="O",VISIBLE="N",CLFLAG="" D UP
 ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ETH(DATA,AGETH) ; EP -- AGG OTH PAT ETH TRG
 ; Input
 ;   DFN      - Patient IEN
 ;
 NEW UID,II,VALUE,SOURCE,IEN,HELP,TYPE,ABLE,AGGECREL,HDR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGPTRGO",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTRGO D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR
 S @DATA@(II)=HDR_$C(30)
 ;
 ;Enable Method of Collection
 I $G(AGETH)]"" S SOURCE="AGMETH",VALUE="",HELP="",ABLE="Y",REQ="R",CLEAR="",CLFLAG="",TYPE="T",VISIBLE="" D UP
 I $G(AGETH)="" S SOURCE="AGMETH",VALUE="",HELP="",ABLE="N",REQ="O",CLEAR="",CLFLAG="",TYPE="T",VISIBLE="" D UP
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
PLNG(DATA,AGGLGPRI,AGGINTRP,AGGLGEPF,OTHLNG) ; EP -- AGG OTH PAT PRM TRG
 ; Input
 ;   DFN      - Patient IEN
 ;
 NEW UID,II,VALUE,SOURCE,IEN,HELP,TYPE,ABLE,AGGECREL,AGGLGOTH,BQ,ENGIEN,EFND,HDR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGPTRGO",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTRGO D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR
 S @DATA@(II)=HDR_$C(30)
 ;
 ;Determine the English IEN
 S ENGIEN=$O(^AUTTLANG("B","ENGLISH",""))
 ;
 ;Parse Other Language Multiple
 S AGGLGOTH="",EFND=0
 F BQ=1:1:$L(OTHLNG,$C(28)) D
 . N PDATA,NAME,VALUE,BP,BV
 . S PDATA=$P(OTHLNG,$C(28),BQ) Q:PDATA=""
 . S NAME=$P(PDATA,"=",1)
 . S VALUE=$P(PDATA,"=",2,99) Q:VALUE=""
 . F BP=1:1:$L(VALUE,$C(29)) S BV=$P(VALUE,$C(29),BP),@NAME=$G(@NAME)_$S(BP=1:"",1:$C(29))_BV
 ;
 ;Look for English in the Other Languages
 I AGGLGOTH]"" D
 . N I,VAL,CVAL
 . S CVAL="" F I=1:1:$L(AGGLGOTH,$C(29)) S CVAL=$P($G(AGGLGOTH),$C(29),I) I CVAL]"",CVAL=ENGIEN S EFND=1
 ;
 ;Enable/Disable Interpreter Required
 I $G(AGGLGPRI)]"",AGGLGPRI'=ENGIEN D
 . S SOURCE="AGGINTRP",VALUE=$G(AGGINTRP),HELP="",ABLE="Y",REQ="R",CLEAR="",CLFLAG="",TYPE="T",VISIBLE="" D UP
 I $G(AGGLGPRI)]"",AGGLGPRI=ENGIEN D
 . S SOURCE="AGGINTRP",VALUE="",HELP="",ABLE="N",REQ="R",CLEAR="",CLFLAG="",TYPE="T",VISIBLE="" D UP
 ;
 ;Enable/Disable English Proficiency
 I (($G(AGGLGPRI)="")!(($G(AGGLGPRI)]"")&(AGGLGPRI'=ENGIEN)))&(EFND=0) D
 . S SOURCE="AGGLGEPF",VALUE="",HELP="",ABLE="N",REQ="O",CLEAR="",CLFLAG="",TYPE="C",VISIBLE="" D UP
 I ($G(AGGLGPRI)]""&(AGGLGPRI=ENGIEN))!(EFND=1) D
 . S SOURCE="AGGLGEPF",VALUE=$G(AGGLGEPF),HELP="",ABLE="Y",REQ="R",CLEAR="",CLFLAG="",TYPE="C",VISIBLE="" D UP
 ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
MSTS(DATA,AGGMGSTS,AGGMGTYP) ; EP -- AGG MIGRNT TRIGGER
 ; Input
 ;   AGGMGSTS - Migrant Status (Y/N)
 ;   AGGMGTYP - Migrant Type (S/M)
 ;
 NEW UID,II,VALUE,SOURCE,HELP,TYPE,ABLE,REQ,CLEAR,CLFLAG,HDR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGPTRGO",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTRGO D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR
 S @DATA@(II)=HDR_$C(30)
 ;
 ;Enable Migrant Type Field
 I $G(AGGMGSTS)="Y" S SOURCE="AGGMGTYP",VALUE=$G(AGGMGTYP),HELP="",ABLE="Y",REQ="R",CLEAR="",CLFLAG="",TYPE="C",VISIBLE="" D UP
 I $G(AGGMGSTS)'="Y" S SOURCE="AGGMGTYP",VALUE="",HELP="",ABLE="N",REQ="O",CLEAR="",CLFLAG="",TYPE="C",VISIBLE="" D UP
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
HSTS(DATA,AGGHMSTS,AGGHMTYP) ; EP -- AGG HOMELESS TRIGGER
 ; Input
 ;   AGGHMSTS - Homeless Status (Y/N)
 ;   AGGHMTYP - Homeless Type (H/T/D/S/U)
 ;
 NEW UID,II,VALUE,SOURCE,IEN,HELP,TYPE,ABLE,REQ,CLEAR,CLFLAG,HDR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGPTRGO",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTRGO D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR
 S @DATA@(II)=HDR_$C(30)
 ;
 ;Enable Homeless Type Field
 I $G(AGGHMSTS)="Y" S SOURCE="AGGHMTYP",VALUE=$G(AGGHMTYP),HELP="",ABLE="Y",REQ="R",CLEAR="",CLFLAG="",TYPE="C",VISIBLE="" D UP
 I $G(AGGHMSTS)'="Y" S SOURCE="AGGHMTYP",VALUE="",HELP="",ABLE="N",REQ="O",CLEAR="",CLFLAG="",TYPE="C",VISIBLE="" D UP
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
HINC(DATA,AGGHINC,AGGHINP) ; EP -- AGG HSHLD INCOME TRIGGER
 ; Input
 ;   AGGHINC - Household Income
 ;   AGGHINP - Household Income Period (Y/M/W/B)
 ;
 NEW UID,II,VALUE,SOURCE,IEN,HELP,TYPE,ABLE,REQ,CLEAR,CLFLAG,HDR,HIN
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGPTRGO",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTRGO D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR
 S @DATA@(II)=HDR_$C(30)
 ;
 ;Add comma to Household Income
 I $TR($G(AGGHINC),",")>0 S HIN=$$NUMB(AGGHINC),SOURCE="AGGTHINC",ABLE="Y",TYPE="T",CLEAR="",VALUE=HIN,HELP="",REQ="O",VISIBLE="" D UP
 ;
 ;Enable Household Income Period Field
 I $TR($G(AGGHINC),",")>0 S SOURCE="AGGHINP",VALUE="",HELP="",ABLE="Y",REQ="R",CLEAR="",CLFLAG="",TYPE="C",VISIBLE="" D UP
 I $TR($G(AGGHINC),",")'>0 S SOURCE="AGGHINP",VALUE="",HELP="",ABLE="N",REQ="O",CLEAR="",CLFLAG="",TYPE="C",VISIBLE="" D UP
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
INTR(DATA,AGGINTNT,AGGWEBF) ; EP -- AGG INTERNET ACCESS TRIGGER
 ; Input
 ;   AGGINTNT - Internet Access (Y/N)
 ;   AGGWEBF - Access Internet From (H/W/S/HC/L/T/M)
 ;
 NEW UID,II,VALUE,SOURCE,IEN,HELP,TYPE,ABLE,REQ,CLEAR,CLFLAG,HDR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGPTRGO",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTRGO D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR
 S @DATA@(II)=HDR_$C(30)
 ;
 ;Enable Internet Access Where Field
 I $G(AGGINTNT)=1 S SOURCE="AGGWEBF",VALUE="",HELP="",ABLE="Y",REQ="O",CLEAR="",CLFLAG="N",TYPE="C",VISIBLE="" D UP
 I $G(AGGINTNT)'=1 S SOURCE="AGGWEBF",VALUE="",HELP="",ABLE="N",REQ="O",CLEAR="AGGWEBF",CLFLAG="Y",TYPE="C",VISIBLE="" D UP
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR      ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
UP ;
 S II=II+1,@DATA@(II)=SOURCE_U_TYPE_U_VALUE_U_ABLE_U_$G(CLEAR)_U_HELP_U_REQ_U_$G(VISIBLE)_U_$G(CLFLAG)_$C(30)
 Q
 ;
NUMB(X) ;Format number with commas
 N Y,I
 S X=$TR(X,",")
 I X'?4N.N Q X
 S Y=""
 F I=0:1:($L(X)-1) S Y=$E(X,$L(X)-I)_$S(((I>0)&(I#3=0)):",",1:"")_Y
 Q Y
 ;
HDR ;
 S HDR="T00008SOURCE^T00001CODE_TYPE^T01024PARMS^T00001ABLE_FLAG^T00100CLEAR_FIELDS^T00200HELP_TEXT^T00001REQ_OPT^T00001VISIBLE^T00001CLEAR_FLAG"
 Q
