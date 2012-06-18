BQIMSLST ;PRXM/HC/ALA-Get list of My Measure values ; 04 May 2007  2:27 PM
 ;;2.2;ICARE MANAGEMENT SYSTEM;;Jul 28, 2011;Build 37
 ;
 Q
 ;
EN(DATA,TYPE) ;EP -- BQI GET MEASURES LIST
 ;
 ; Input
 ;   TYPE - type of measures to list
 ;          'D' for demographics only
 ;          'G' for GPRA only
 ;          'R' for Reminders only
 ;          'H' for HIV/AIDS
 ;          null for all
 ;
 NEW UID,II,TTYPE,SCAT,SCLIN,BQMEAS,CAT,CLIN,TITLE,SDIR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMSLST",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMSLST D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S TYPE=$G(TYPE,"")
 S @DATA@(II)="I00010MEAS_IEN^T00030TYPE^T00030CATEGORY^T00030CLIN_GROUP^T00050DISPLAY_NAME^T00015CODE^T00001VIEW^T00001PER_DIRECT^T00001EXCEPT^I00003SIZE^"
 S @DATA@(II)=@DATA@(II)_"T00003EDIT^T00003BATCH^T00001DEFAULT_SORT^T00001IPC_CAT"_$C(30)
 ;
 K BQISORT
 I TYPE'="" S TTYPE=TYPE D RET G DONE
 ;
 S TTYPE=$G(TYPE,"") S:TTYPE="" TTYPE="M"
 F  S TYPE=$O(^BQI(90506.1,"AC",TYPE)) Q:TYPE=""  D RET
 ;
DONE ;
 S CAT=""
 F  S CAT=$O(BQISORT(CAT)) Q:CAT=""  D
 . S CLIN=""
 . F  S CLIN=$O(BQISORT(CAT,CLIN)) Q:CLIN=""  D
 .. S TITLE=""
 .. F  S TITLE=$O(BQISORT(CAT,CLIN,TITLE)) Q:TITLE=""  D
 ... S BQMEAS=""
 ... F  S BQMEAS=$O(BQISORT(CAT,CLIN,TITLE,BQMEAS)) Q:BQMEAS=""  D
 .... S II=II+1,@DATA@(II)=BQISORT(CAT,CLIN,TITLE,BQMEAS)
 S II=II+1,@DATA@(II)=$C(31)
 K BQISORT
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
RET ; Data retrieval
 NEW IEN,FDATA,SRC,GCAT,RCAT,DCAT,GCLIN,RCLIN,GVIEW,DVIEW,VIEW,DCLIN
 NEW CAT,CLIN,RVIEW,MVIEW,PDIR,EXCEPT,SIZE,IPCAT
 S IEN=""
 F  S IEN=$O(^BQI(90506.1,"AC",TYPE,IEN)) Q:IEN=""  D
 . S FDATA=$G(^BQI(90506.1,IEN,0)),EXCEPT="",SIZE=""
 . I $$GET1^DIQ(90506.1,IEN_",",.1,"I")=1 Q
 . I $$GET1^DIQ(90506.1,IEN_",",3.07,"I")=1 Q
 . S SRC=$$GET1^DIQ(90506.1,IEN_",",3.01,"E")
 . S PDIR=$$GET1^DIQ(90506.1,IEN_",",.14,"I")
 . S SIZE=$$GET1^DIQ(90506.1,IEN_",",.15,"E")
 . S EDIT=+$$GET1^DIQ(90506.1,IEN_",",.16,"I")
 . S EDIT=$S(EDIT=1:"YES",1:"NO")
 . S BATCH=+$$GET1^DIQ(90506.1,IEN_",",.17,"I")
 . S BATCH=$S(BATCH=1:"YES",1:"NO")
 . S SDIR=$$GET1^DIQ(90506.1,IEN_",",3.08,"I")
 . S:SDIR="" SDIR="A"
 . S VIEW=$$GET1^DIQ(90506.1,IEN_",",3.04,"I")
 . S:VIEW="" VIEW="O"
 . S DCLIN=""
 . S CAT=$$GET1^DIQ(90506.1,IEN_",",3.03,"E")
 . S CLIN=$$GET1^DIQ(90506.1,IEN_",",3.02,"E")
 . S IPCAT="N"
 . I TYPE="G" D
 .. NEW CODE,BQIH,BQIYR,BQMEAS,VER
 .. S CODE=$P(FDATA,U,1),YEAR=$P(CODE,"_",1)
 .. S BQMEAS=$P(CODE,"_",2)
 .. S BQIH=$$SPM^BQIGPUTL()
 .. S BQIYR=$$LKP^BQIGPUTL(YEAR)
 .. S VER=$$VERSION^XPDUTL("BGP")
 .. I VER>7.0 D
 ... D GFN^BQIGPUTL(BQIH,BQIYR)
 ... S EXCEPT=$$GET1^DIQ(BQIMEASF,BQMEAS_",",1704,"I")
 ... S EXCEPT=$S(EXCEPT="Y":"C",1:"N")
 ... S PDIR=$$GET1^DIQ(BQIMEASF,BQMEAS_",",1705,"E")
 ... S IPCAT=$$GET1^DIQ(BQIMEASF,BQMEAS_",",1707,"I"),IPCAT=$S(IPCAT=1:"Y",1:"N")
 . S SCAT=$S(CAT="":"@",1:CAT),SCLIN=$S(CLIN="":"@",1:CLIN)
 . S BQISORT(SCAT,SCLIN,$P(FDATA,U,3),IEN)=IEN_U_SRC_U_CAT_U_CLIN_U_$P(FDATA,U,3)_U_$P(FDATA,U,1)_U_VIEW_U_$G(PDIR)_U_$G(EXCEPT)_U_SIZE_U_EDIT_U_BATCH_U_SDIR_U_IPCAT_$C(30)
 Q
