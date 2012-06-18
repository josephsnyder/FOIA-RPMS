BQIVFTLK ;PRXM/HC/ALA-VFILE TABLE LOOKUP ; 06 Apr 2007  3:47 PM
 ;;2.2;ICARE MANAGEMENT SYSTEM;;Jul 28, 2011;Build 37
 ;
 Q
 ;
LKP(DATA,FNBR,VALUE,SCREEN) ;EP -- BQI VFILE TABLE LOOKUP
 ;
 ;Input
 ;  FNBR   - File number to look up value
 ;  VALUE  - Value to look up in File number
 ;  SCREEN - If this table has special screening logic
 ;
 NEW UID,II,X,DDATA
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIVFTLK",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIVFTLK D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S FNBR=$G(FNBR,""),VALUE=$G(VALUE,"")
 I VALUE="" S BMXSEC="RPC Call Failed: No value to look up" Q
 I FNBR="" S BMXSEC="RPC Call Failed: No file identified to search for value" Q
 ;
 NEW FILE,FIELD,INDEX,FLAGS,NUMB,JJ,IEN,TEXT,DESC
 NEW MAP,HDR,MII,NFLD,TYPE,ERROR,XTLKUT
 S FILE=FNBR,NUMB="*",INDEX=""
 S SCREEN=$G(SCREEN,""),SCREEN=$TR(SCREEN,"~","^")
 S FIELD="FID;-WID"_$$WP(FILE)
 S:FNBR=50 FIELD=FIELD_";31"
 S:FNBR=9999999.06 FIELD="FID;.04;.05;.07;.12",INDEX="B^C",FLAGS="P"
 I FNBR=81,$$VERSION^XPDUTL("BCSV")'="" S FIELD="2"
 ;S FLAGS=$S(FILE=95.3:"P",1:"MP")
 S FLAGS="MP"
 I $E(VALUE,1)="`" S FLAGS="AP"
 I FNBR=9999999.88 S XTLKUT=1,INDEX="B",FLAGS="P"
 ;
 D FIND^DIC(FILE,"",FIELD,FLAGS,VALUE,"",INDEX,SCREEN,"","","ERROR")
 ;
 I $D(ERROR)>0 S BMXSEC="RPC Call Failed: "_$G(ERROR("DIERR",1,"TEXT",1)) Q
 ;
 S DDATA=$NA(^TMP("DILIST",UID))
 S MAP=$G(@DDATA@(0,"MAP"))
 I MAP="" S @DATA@(II)="T00015IEN^T00030TEXT^T00120DESCRIPTION"_$C(30)
 I MAP'="" D
 . S HDR=""
 . F MII=1:1:$L(MAP,"^") D
 .. I $P(MAP,"^",MII)="IEN" S HDR=HDR_"T00015IEN^" Q
 .. I $P(MAP,"^",MII)[".01" D CHK(.01) S HDR=HDR_TYPE_"^" Q
 .. S NFLD=$P(MAP,"^",MII)
 .. I NFLD["FID(" S NFLD=$P($P(NFLD,"FID(",2),")",1) D CHK(NFLD) S HDR=HDR_TYPE_"^" Q
 .. D CHK(NFLD) S HDR=HDR_TYPE_"^"
 . I FILE=80.1!(FILE=80)!(FILE=81) S HDR=HDR_"T00060LOOK_DISPLAY"
 . I FILE=9999999.06 D
 .. S HDR=HDR_"T00120LOOK_DISPLAY"
 .. S HDR=$TR(HDR," ","_")
 . S HDR=$$TKO^BQIUL1(HDR,"^"),HDR=$TR(HDR," ","_")
 . S @DATA@(II)=HDR_$C(30)
 I FNBR=9999999.06 D PRST
 S JJ=0
 F  S JJ=$O(@DDATA@(JJ)) Q:'JJ  D
 . I MAP="" D
 .. S IEN=$P(@DDATA@(JJ,0),U,1)
 .. S TEXT=$P(@DDATA@(JJ,0),U,2)
 .. S DESC=""
 .. S FLD=$S(FNBR=80:3,FNBR=80.1:4,FNBR=81:2,FNBR=81:2,FNBR=9999999.31:.02,1:"")
 .. I FLD'="" S DESC=$$GET1^DIQ(FNBR,IEN,FLD,"E")
 .. S II=II+1,@DATA@(II)=IEN_"^"_TEXT_"^"_DESC_$C(30)
 . I MAP'="" D
 .. NEW IEN,TEXT,DESC,QFL
 .. S IEN=$P(@DDATA@(JJ,0),U,1),QFL=0
 .. S TEXT=$P(@DDATA@(JJ,0),U,2)
 .. I TEXT?.N D
 ... S DESC=$$GET1^DIQ(FNBR,IEN,.01,"E")
 ... S $P(@DDATA@(JJ,0),U,2)=DESC
 .. I FILE=80.1!(FILE=80)!(FILE=81) S @DDATA@(JJ,0)=@DDATA@(JJ,0)_U_$P(@DDATA@(JJ,0),U,2)_"-"_$P(@DDATA@(JJ,0),U,3)
 .. I FILE=9999999.06 D  Q:QFL
 ... I $P($G(^DIC(4,IEN,0)),U,11)="L" S QFL=1 Q
 ... S @DDATA@(JJ,0)=@DDATA@(JJ,0)_U_$P(@DDATA@(JJ,0),U,2)_"-"_$P(@DDATA@(JJ,0),U,3)_"-"_$P(@DDATA@(JJ,0),U,4)
 .. S II=II+1,@DATA@(II)=@DDATA@(JJ,0)_$C(30)
 ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,^TMP("BQIVFTLK",UID,II)=$C(31)
 Q
 ;
CHK(BFLD) ;EP - Check for definition of a field
 NEW DLEN
 D FIELD^DID(FNBR,BFLD,"","TYPE","BQX")
 D FIELD^DID(FNBR,BFLD,"","FIELD LENGTH","BQX")
 D FIELD^DID(FNBR,BFLD,"","LABEL","BQX")
 S TYPE=$S(BQX("TYPE")["DATE":"D",1:"T")
 S DLEN=BQX("FIELD LENGTH")+5
 S TYPE=TYPE_$E("00000",$L(DLEN)+1,5)_DLEN_BQX("LABEL")
 K BQX
 Q
 ;
TAB(DATA,FNBR) ;EP -- BQI GET VFILE TABLE
 ;Input
 ;  FNBR  - File number to look up value
 ;
 NEW UID,II,X
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIVFTLK",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIVFTLK D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S FNBR=$G(FNBR,""),IACT=""
 I FNBR="" S BMXSEC="RPC Call Failed: No file identified to search for value" Q
 ;
 I FNBR=9999999.14 D TBL(.DATA,FNBR,"0;7",1) Q
 ;
 I FNBR=9001001.2 D TBL(.DATA,FNBR,"") Q
 ;
 I FNBR=9999999.09!(FNBR=9999999.28) S IACT="0;3"
 I FNBR=9002084.8 D TBL(.DATA,FNBR,"0;3",0) Q
 I FNBR=9999999.41 D TBL(.DATA,FNBR,"0;3",1) Q
 ;
 I FNBR=9999999.15 D EXM(.DATA,FNBR) Q
 ;
 I FNBR=10 S IACT=".02;1"
 I FNBR=10.2 S IACT=".02;1"
 ;
 I FNBR=40.7 S IACT=""
 I FNBR=9001002.5 S IACT=""
 ;
 I FNBR["9999999.64" D HF(.DATA,FNBR) Q
 ;
 I FNBR["9999999.07" D MS(.DATA,FNBR) Q
 ;
 I FNBR="9001015" D HS(.DATA,FNBR) Q
 ;
 I FNBR="9001022" D SP(.DATA,FNBR) Q
 ;
 I FNBR="90451.7" D CLS(.DATA,FNBR) Q
 ;
 I FNBR="90451.5" D ETI(.DATA,FNBR) Q
 ;
 I FNBR="9999999.88" D MOD(.DATA,FNBR) Q
 ;
 I FNBR="FH80" D FH80^BQIUTB(.DATA) Q
 ;
 I FNBR="FH9999999.36" D FHREL^BQIUTB(.DATA) Q
 ;
 D TBL^BQIUTB(.DATA,FNBR,IACT)
 Q
 ;
HF(DATA,FIL) ;EP - Get Health Factors only
 NEW IEN
 S II=0
 S @DATA@(II)="I00010IEN^T00040"_$C(30)
 S IEN=0,TYP=$E(FNBR,$L(FNBR),$L(FNBR))
 F  S IEN=$O(^AUTTHF(IEN)) Q:'IEN  D
 . I TYP="C" D
 .. I $P($G(^AUTTHF(IEN,0)),U,10)'=TYP Q
 .. I $P($G(^AUTTHF(IEN,0)),U,13)'="" Q
 .. S II=II+1,@DATA@(II)=IEN_U_$P(^AUTTHF(IEN,0),U,1)_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
EXM(DATA,FILE) ;EP - Get Exams
 NEW IEN,NAME
 S II=0,IEN=0
 S @DATA@(II)="I00010IEN^T00040"_$C(30)
 F  S IEN=$O(^AUTTEXAM(IEN)) Q:'IEN  D
 . S NAME=$P(^AUTTEXAM(IEN,0),U,1)
 . I $P(^AUTTEXAM(IEN,0),U,4)'="" Q
 . I $P(^AUTTEXAM(IEN,0),U,2)=40 Q
 . S II=II+1,@DATA@(II)=IEN_U_NAME_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
HS(DATA,FILE) ; EP - Get Health Summary Types
 NEW IEN,NAME,KEY
 S II=0,IEN=0
 S @DATA@(II)="I00010IEN^T00040"_$C(30)
 F  S IEN=$O(^APCHSCTL(IEN)) Q:'IEN  D
 . S NAME=$P(^APCHSCTL(IEN,0),U,1) ;,KEY=$P(^(0),U,2)
 . ;I KEY'="",$$KEYCHK^BQIULSC(KEY,DUZ) Q
 . S II=II+1,@DATA@(II)=IEN_U_NAME_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
CLS(DATA,FILE) ; EP - Get Clinical Classifications
 NEW IEN,NAME,DESC
 S @DATA@(II)="I00010IEN^T00160"_$C(30)
 S IEN=0
 F  S IEN=$O(^BKMV(FILE,IEN)) Q:'IEN  D
 . S NAME=$P(^BKMV(FILE,IEN,0),U,1)
 . S DESC=$P(^BKMV(FILE,IEN,0),U,2)
 . S II=II+1,@DATA@(II)=IEN_U_NAME_"-"_DESC_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ETI(DATA,FILE) ; EP - Get Etiology
 NEW IEN,NAME,DESC
 S @DATA@(II)="I00010IEN^T00160"_$C(30)
 S IEN=0
 F  S IEN=$O(^BKM(FILE,IEN)) Q:'IEN  D
 . S DESC=$P(^BKM(FILE,IEN,0),U,1)
 . S NAME=$P(^BKM(FILE,IEN,0),U,2)
 . S II=II+1,@DATA@(II)=IEN_U_NAME_"-"_DESC_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
MOD(DATA,FILE) ; EP - Get CPT Modifiers
 NEW IEN,NAME,DESC
 S @DATA@(II)="I00010IEN^T01024CODE_DESCRIPTION"_$C(30)
 S IEN=0
 F  S IEN=$O(^AUTTCMOD(IEN)) Q:'IEN  D
 . S NAME=$P(^AUTTCMOD(IEN,0),U,1),DESC=$P(^AUTTCMOD(IEN,0),U,2)
 . S II=II+1,@DATA@(II)=IEN_U_NAME_"-"_DESC_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
SP(DATA,FILE) ; EP - Get Supplements
 NEW IEN,SUPNM,DESC,DN,EXEC,PRGM
 S HDR="I00010IEN^T00030^T00030TAX_CHECK^T01024SUPP_DESC"_$C(30)
 D EN^BQIRSPR(.DATA)
 S @DATA@(0)=HDR
 Q
 ;
 S SUPNM=""
 F  S SUPNM=$O(^APCHSUP("B",SUPNM)) Q:SUPNM=""  D
 . I $E(SUPNM,1,7)="CHRONIC"!($E(SUPNM,1,7)="MEDICAT") Q
 . I SUPNM="ACTION PROFILE" Q
 . S IEN=""
 . F  S IEN=$O(^APCHSUP("B",SUPNM,IEN)) Q:IEN=""  D
 .. S EXEC=$G(^APCHSUP(IEN,11)) I EXEC="" Q
 .. S PRGM=$P(EXEC,"^",2)
 .. I PRGM["(" S PRGM=$P(PRGM,"(",1)
 .. I $T(@("^"_PRGM))="" Q
 .. S DESC="",DN=0
 .. F  S DN=$O(^APCHSUP(IEN,12,DN)) Q:'DN  D
 ... S DESC=DESC_^APCHSUP(IEN,12,DN,0)_$C(10)
 .. S II=II+1,@DATA@(II)=IEN_"^"_SUPNM_"^"_DESC_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
MS(DATA,FILE) ; EP - Get Measurement Types only
 ; excluding the 'ASQ' ones
 NEW IEN,NAME
 S II=0,IEN=0
 S @DATA@(II)="I00010IEN^T00040"_$C(30)
 F  S IEN=$O(^AUTTMSR(IEN)) Q:'IEN  D
 . S NAME=$P(^AUTTMSR(IEN,0),U,1)
 . I $E(NAME,1,3)="ASQ" Q
 . S II=II+1,@DATA@(II)=IEN_U_NAME_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
WP(FILE) ; Exclude identifiers that are word processing fields
 ;
 NEW ID,TYPE,WPFLD
 S ID="",WPFLD=""
 F  S ID=$O(^DD(FILE,0,"ID",ID)) Q:ID=""  D
 . S TYPE=$P($G(^DD(FILE,ID,0)),"^",2) Q:'TYPE
 . I $P($G(^DD(+TYPE,.01,0)),"^",2)["W" S WPFLD=WPFLD_";-"_ID
 Q WPFLD
 ;
TBL(DATA,FILE,INAC,VALS) ;EP - Get table data if generic table lookup cannot
 ;                       be used since inactive field may have length if active
 ;
 ;Input
 ; FILE - FileMan file number where table resides
 ; INAC - Location of inactive field to check, contains
 ;         the node and piece in 'NODE;PIECE' format
 ; VALS - Value(s) that constitute an inactive record (delimited by a comma)
 ; 
 ;Description
 ;  Return the values in a table
 ;
 NEW GLBREF,LENGTH,DLEN,INACFLG,PC,VAL,VFVAL
 ;  
 I '$$VFILE^DILFD(FILE) S BMXSEC="RPC Call Failed: Table doesn't exist in RPMS" Q
 ;
 S GLBREF=$$ROOT^DILFD(FILE,"",1)
 S LENGTH=$$GET1^DID(FILE,.01,"","FIELD LENGTH","TEST1","ERR")
 S DLEN=$E("00000",$L(LENGTH)+1,5)_LENGTH
 S @DATA@(II)="I00010IEN^T"_DLEN_$C(30)
 ;
 I INAC'="" S NODE=$P(INAC,";",1),PEC=$P(INAC,";",2)
 S IEN=0
 F  S IEN=$O(@GLBREF@(IEN)) Q:'IEN  D
 . I $G(@GLBREF@(IEN,0))="" Q
 . I INAC'="" S INACFLG=0 D  Q:INACFLG
 .. S VFVAL=$P($G(@GLBREF@(IEN,NODE)),"^",PEC)
 .. F PC=1:1:$L(VALS,",") S VAL=$P(VALS,",",PC) I VFVAL=VAL S INACFLG=1 Q
 . S II=II+1,@DATA@(II)=IEN_"^"_$$GET1^DIQ(FILE,IEN_",",.01,"E")_$C(30)
 ;
DONE S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
PRST ; Presort results so that matching SERVICE UNIT (and, if possible, AREA) are listed 1st
 NEW SVCUN,DAREA,SEL,ZERO,MAP,CT,AREA,SVCU,NN
 S SVCUN=$$GET1^DIQ(9999999.06,DUZ(2)_",",.05,"E")
 S DAREA=$$GET1^DIQ(9999999.06,DUZ(2)_",",.04,"E")
 S SDATA=$NA(^TMP("BQIVFSORT",UID))
 S SEL=""
 K BQIAS,BQISA,BQISORT
 S JJ=0 F  S JJ=$O(@DDATA@(JJ)) Q:'JJ  D  Q:SEL
 . S AREA=$P(@DDATA@(JJ,0),U,3),SVCU=$P(@DDATA@(JJ,0),U,4)
 . S:AREA="" AREA="unknown" S:SVCU="" SVCU="unknown"
 . S BQIAS(AREA,SVCU,JJ)="",BQISA(SVCU,AREA,JJ)=""
 I DAREA'="",SVCUN'="",$D(BQIAS(DAREA,SVCUN)) D
 . S SEL=$O(BQIAS(DAREA,SVCUN,"")),BQISORT("@",SEL)=@DDATA@(SEL,0)
 I 'SEL,SVCUN'="",$D(BQISA(SVCUN)) D
 . S AREA=$O(BQISA(SVCUN,"")),SEL=$O(BQISA(SVCUN,AREA,"")),BQISORT("@",SEL)=@DDATA@(SEL,0)
 I 'SEL,DAREA'="",$D(BQIAS(DAREA)) D
 . S SVCU=$O(BQIAS(DAREA,"")),SEL=$O(BQIAS(DAREA,SVCU,"")),BQISORT("@",SEL)=@DDATA@(SEL,0)
 I 'SEL,$D(BQIAS) D
 . S AREA=$O(BQIAS("")),SVCU=$O(BQIAS(AREA,"")),SEL=$O(BQIAS(AREA,SVCU,"")),BQISORT("@",SEL)=@DDATA@(SEL,0)
 K BQIAS,BQISA
 S JJ=0,CT=0
 F  S JJ=$O(@DDATA@(JJ)) Q:'JJ  I JJ'=SEL D
 . S CT=CT+1,BQISORT(CT,JJ)=@DDATA@(JJ,0)
 S ZERO=$G(@DDATA@(0))
 S MAP=$G(@DDATA@(0,"MAP"))
 K @DDATA
 S @DDATA@(0)=ZERO
 S @DDATA@(0,"MAP")=MAP
 S CT=0,AREA="@",NN=0
 F  S NN=$O(BQISORT(AREA,NN)) Q:NN=""  D
 . S CT=CT+1,@DDATA@(CT,0)=BQISORT(AREA,NN)
 . K BQISORT(AREA,NN)
 S AREA=""
 F  S AREA=$O(BQISORT(AREA)) Q:AREA=""  D
 . S NN=""
 . F  S NN=$O(BQISORT(AREA,NN)) Q:NN=""  D
 .. S CT=CT+1,@DDATA@(CT,0)=BQISORT(AREA,NN)
 K BQISORT
 Q
