BQITAXX ;PRXM/HC/ALA-Enter New Taxonomies ; 16 May 2006  10:27 AM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 Q
 ;
LST(DATA,REG) ; EP -- BQI GET TAXONOMY LIST
 ; Input
 ;  REG - Retrieves taxonomies for a particular registry.  
 ;        If left blank, it retrieves taxonomies for iCare.
 ;
 ;  Gets the list of taxonomies defined for iCare
 ;
 NEW UID,II,TIEN,TTXT,BQIH,TAXV,X,ID,USER,TXIEN,CAT,CN,PROC,TAXNM
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQITXLST",UID))
 K @DATA
 ;
 S REG=$G(REG,"")
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQITAXX D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="T00030TAXONOMY_NAME^T00015TAXONOMY_IEN^T00020TAX_CATEGORY^T00003TAX_SITE_DEFINED^T00030TAX_ID^T00003TAX_ITEMS^T00030REGISTER^T00003USER_EDITABLE"_$C(30)
 ;
 I REG'="" D
 . I REG'?.N S REG=$$FIND1^DIC(90507,"","",REG,"B","","")
 . D RGS
 ;
 I REG="" D
 . D ICARE
 . S REG=0
 . F  S REG=$O(^BQI(90507,REG)) Q:'REG  D
 .. I $P(^BQI(90507,REG,0),U,8)=1 Q
 .. D RGS
 . D CMET^BTPWTAX
 . D ALL^BQITAXX4
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
ICARE ; Get taxonomies for iCare
 S TTXT="",BQIH=$$SPM^BQIGPUTL()
 F  S TTXT=$O(^BQI(90508,BQIH,10,"B",TTXT)) Q:TTXT=""  D
 . S TIEN=""
 . F  S TIEN=$O(^BQI(90508,BQIH,10,"B",TTXT,TIEN)) Q:TIEN=""  D
 .. NEW DA,IENS
 .. S DA(1)=BQIH,DA=TIEN,IENS=$$IENS^DILF(.DA)
 .. S II=II+1
 .. S ID=$$GET1^DIQ(90508.03,IENS,.05,"I")
 .. S USER=$S(ID="CM":"YES",1:"NO")
 .. I ID="CM" S TXIEN=$O(^ATXAX("B",TTXT,"")),USER="NO" I TXIEN'="" S USER=$S(DUZ=$P(^ATXAX(TXIEN,0),U,5):"YES",1:"NO")
 .. S @DATA@(II)=TTXT_"^"_$$GET1^DIQ(90508.03,IENS,.02,"I")_"^"_$$GET1^DIQ(90508.03,IENS,.03,"E")
 .. S @DATA@(II)=@DATA@(II)_"^"_$S($$GET1^DIQ(90508.03,IENS,.04,"I")=1:"YES",1:"NO")_"^"_$$GET1^DIQ(90508.03,IENS,.05,"E")
 .. S @DATA@(II)=@DATA@(II)_"^"_$S($$GET1^DIQ(90508.03,IENS,.02,"I")="":"MIS",$$GET1^DIQ(90508.03,IENS,.07,"I")=1:"YES",'$$ENTRS($$GET1^DIQ(90508.03,IENS,.02,"I")):"NO",1:"YES")_"^^"_USER_$C(30)
 Q
 ;
RGS ; Get taxonomies for registers
 S TTXT=""
 F  S TTXT=$O(^BQI(90507,REG,10,"B",TTXT)) Q:TTXT=""  D
 . S TIEN=""
 . F  S TIEN=$O(^BQI(90507,REG,10,"B",TTXT,TIEN)) Q:TIEN=""  D
 .. NEW DA,IENS
 .. S DA(1)=REG,DA=TIEN,IENS=$$IENS^DILF(.DA)
 .. S II=II+1
 .. S ID=$$GET1^DIQ(90507.01,IENS,.05,"I")
 .. S USER=$S(ID="CM":"YES",1:"NO")
 .. I ID="CM" S TXIEN=$O(^ATXAX("B",TTXT,"")) I TTXT'="" S USER=$S(DUZ=$P(^ATXAX(TXIEN,0),U,5):"YES",1:"NO")
 .. S @DATA@(II)=TTXT_"^"_$$GET1^DIQ(90507.01,IENS,.02,"I")_"^"_$$GET1^DIQ(90507.01,IENS,.03,"E")
 .. S @DATA@(II)=@DATA@(II)_"^"_$S($$GET1^DIQ(90507.01,IENS,.04,"I")=1:"YES",1:"NO")_"^"_$$GET1^DIQ(90507.01,IENS,.05,"E")
 .. S @DATA@(II)=@DATA@(II)_"^"_$S($$GET1^DIQ(90507.01,IENS,.02,"I")="":"MIS",$$GET1^DIQ(90507.01,IENS,.06,"I")=1:"YES",'$$ENTRS($$GET1^DIQ(90507.01,IENS,.02,"I")):"NO",1:"YES")_"^"_$$GET1^DIQ(90507,REG_",",.01,"E")_U_USER_$C(30)
 Q
 ;
ITM(DATA,IVALUE) ; EP -- BQI GET TAXONOMY ITEMS
 ;
 ; Input
 ;   IVALUE - Internal entry number of taxonomy in structure, IEN;FILE REF
 ;            because this is a variable pointer value
 ;
 NEW UID,II,FNAME,FNBR,ROOT,FILE,IEN,FLD,VIEN,FDESC,LIEN,HIEN,BQIH,BQIJ,X,TTXT
 NEW TEXT,HIGH,LOW,DTCRT,DTMOD,ALL,NOREC
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQITXITM",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQITAXX D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S IVALUE=$G(IVALUE,"")
 S ALL=(IVALUE="")
 ;
 I IVALUE="" D
 . S BQIH=$$SPM^BQIGPUTL()
 . S II=II+1
 . S @DATA@(II)="T00030TAXONOMY_NAME^T00015TAXONOMY_IEN^T00020TAX_CATEGORY^T00003TAX_SITE_DEFINED^T00030TAX_ID^T00003TAX_ITEMS^T00030FILE_NAME^"
 . S @DATA@(II)=@DATA@(II)_"I00010FILE_NBR^T00050TAX_DESC^I00010TVAL_IEN^T00063LOW_VALUE^I00010LOW_IEN^T00063HIGH_VALUE^I00010HIGH_IEN^"
 . S @DATA@(II)=@DATA@(II)_"D00015DATE_CREATED^D00015DATE_MODIFIED"_$C(30)
 . S BQIJ=0
 . F  S BQIJ=$O(^BQI(90508,BQIH,10,BQIJ)) Q:'BQIJ  D
 .. NEW DA,IENS,IVALUE,TTXT,TEXT
 .. S IVALUE=$P(^BQI(90508,BQIH,10,BQIJ,0),U,2) Q:IVALUE=""
 .. S DA(1)=BQIH,DA=BQIJ,IENS=$$IENS^DILF(.DA)
 .. S TTXT=$$GET1^DIQ(90508.03,IENS,.01,"E")
 .. S TEXT=TTXT_"^"_$$GET1^DIQ(90508.03,IENS,.02,"I")_"^"_$$GET1^DIQ(90508.03,IENS,.03,"E")
 .. S TEXT=TEXT_"^"_$S($$GET1^DIQ(90508.03,IENS,.04,"I")=1:"YES",1:"NO")_"^"_$$GET1^DIQ(90508.03,IENS,.05,"E")
 .. S TEXT=TEXT_"^"_$S($$GET1^DIQ(90508.03,IENS,.02,"I")="":"MIS",$$GET1^DIQ(90508.03,IENS,.07,"I")=1:"YES",'$$ENTRS(IVALUE):"NO",1:"YES")_"^"
 .. D GET
 ;
 I IVALUE'="" D
 . S @DATA@(II)="T00030FILE_NAME^I00010FILE_NBR^T00050TAX_DESC^I00010TVAL_IEN^T00063LOW_VALUE^I00010LOW_IEN^T00063HIGH_VALUE^I00010HIGH_IEN^"
 . S @DATA@(II)=@DATA@(II)_"D00015DATE_CREATED^D00015DATE_MODIFIED"_$C(30)
 . S TEXT=""
 . D GET
 G DONE
 ;
GET ;
 S IEN=$P(IVALUE,";",1),FILE=$$GREF(IVALUE),ROOT=$$ROOT^DILFD(FILE,"",1)
 I FILE=9002226 S FLD=".15"
 I FILE=9002228 S FLD=".09"
 S FNAME=$$GET1^DIQ(FILE,IEN,FLD,"E")
 S FNBR=$$GET1^DIQ(FILE,IEN,FLD,"I")
 S FDESC=$$GET1^DIQ(FILE,IEN,.02,"E")
 ;
 I FILE=9002226 S DTCRT=$$GET1^DIQ(FILE,IEN,.09,"I"),DTMOD=""
 I FILE=9002228 S DTMOD=$$GET1^DIQ(FILE,IEN,.06,"I"),DTCRT=""
 ;
 S VIEN=0
 ; If there aren't any items (For complete listing only)
 I '$O(@ROOT@(IEN,21,VIEN)) D:$G(ALL)  Q
 . S II=II+1
 . S @DATA@(II)=TEXT_FNAME_"^"_FNBR_"^"_FDESC_"^^^^^^^"_$C(30)
 ; If there are items
 F  S VIEN=$O(@ROOT@(IEN,21,VIEN)) Q:'VIEN  D
 . S II=II+1,NOREC=0
 . NEW DA,IENS
 . S DA(1)=IEN,DA=VIEN,IENS=$$IENS^DILF(.DA)
 . S LOW=$$GET1^DIQ(FILE_".02101",IENS,.01,"E")
 . S LIEN=$$GET1^DIQ(FILE_".02101",IENS,.01,"I")
 . I LOW'="" D
 .. I LIEN=LOW D
 ... ;I FNBR=80!(FNBR=80.1) S LIEN=$$FIND1^DIC(FNBR,,"MP",LOW,"BA")
 ... ;I FNBR'=80,(FNBR'=80.1) S LIEN=$$FIND1^DIC(FNBR,,"MP",LOW)
 ... S LIEN=$$FIND1^DIC(FNBR,,"MP",LOW)
 ... S:LIEN<1 LIEN=LOW
 . S HIGH=$$GET1^DIQ(FILE_".02101",IENS,.02,"E")
 . S HIEN=$$GET1^DIQ(FILE_".02101",IENS,.02,"I")
 . I HIGH="" S HIEN=""
 . I HIGH'="" D
 .. I HIEN=HIGH D
 ... ;I FNBR=80!(FNBR=80.1) S HIEN=$$FIND1^DIC(FNBR,,"X",HIGH,"BA")
 ... ;I FNBR'=80,(FNBR'=80.1) S HIEN=$$FIND1^DIC(FNBR,,"X",HIGH)
 ... S HIEN=$$FIND1^DIC(FNBR,,"MP",HIGH)
 ... S:HIEN<1 HIEN=HIGH
 . I FNBR=9999999.14,FDESC["CVX" S NOREC=0 D
 .. NEW CVXLN,CVXHN
 .. S CVXLN=$O(^AUTTIMM("C",LOW,"")) I CVXLN="" S NOREC=1 Q
 .. S CVXHN=$O(^AUTTIMM("C",HIGH,"")) I CVXHN="" S NOREC=1 Q
 .. S LOW=$$GET1^DIQ(FNBR,CVXLN_",",.01,"E")
 .. S HIGH=$$GET1^DIQ(FNBR,CVXHN_",",.01,"E")
 . I FNBR'=9999999.31,LOW?.N D
 .. I NOREC Q
 .. S LOW=$$GET1^DIQ(FNBR,LOW_",",.01,"E")
 . I FNBR'=9999999.31,HIGH?.N D
 .. I NOREC Q
 .. S HIGH=$$GET1^DIQ(FNBR,HIGH_",",.01,"E")
 . ;
 . I NOREC Q
 . I LOW="",LIEN'="" S LOW=LIEN,LIEN=""
 . I HIGH="",HIEN'="" S HIGH=HIEN,HIEN=""
 . S @DATA@(II)=TEXT_FNAME_"^"_FNBR_"^"_FDESC_"^"_VIEN_"^"_LOW_"^"_LIEN_"^"_HIGH_"^"_HIEN_"^"_$$FMTE^BQIUL1(DTCRT)_"^"_$$FMTE^BQIUL1(DTMOD)_$C(30)
 Q
 ;
ENTRS(TAXV) ;EP - Find if any entries in a taxonomy
 ;
 ;Input
 ;  TAXV - Taxonomy internal entry number
 ;
 NEW IEN,GLOBAL
 I TAXV="" Q 0
 S IEN=$P(TAXV,";",1),GLOBAL="^"_$P(TAXV,";",2)_IEN_")"
 I $O(@GLOBAL@(21,0))'="" Q 1
 Q 0
 ;
GREF(VAL) ; EP - Returns the file number
 NEW GL,FILN
 S GL="^"_$P(VAL,";",2)_"0)"
 S FILN=$P($G(@GL),U,2)
 S FILN=$$STRIP^XLFSTR(FILN,"ABCDEFGHIJKLMNOPQRSTUVWXYZ")
 Q FILN
