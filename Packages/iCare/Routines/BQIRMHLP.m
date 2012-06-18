BQIRMHLP ;PRXM/HC/ALA-Reminders Help ; 20 Feb 2007  2:15 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 Q
 ;
GET(DATA,REM) ;EP -- BQI GET REMINDERS HELP TEXT
 ; Input
 ;   REM - A reminder IEN if wanting the help text for a specific reminder
 ;         otherwise if it is null, then retrieves the help text for all
 ;         reminders
 ; 
 NEW UID,II,RIEN,BQIRM,REMNM,BQISORT
 ;
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIRMHLP",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIRMHLP D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S REM=$G(REM,"")
 ;
 S BQIRM=$$FIND1^DIC(9001015,"","","ALL REMINDERS","B","","")
 I 'BQIRM S BMXSEC="'ALL REMINDERS' Health Summary Type not found." Q
 ;
 S @DATA@(II)="I00010MEAS_IEN^T00050REM_NAME^T00015CODE^T00030CATEGORY^T00030CLIN_GROUP^T00030STATUS^T01024REPORT_TEXT^T01024SUMM_LIST"_$C(30)
 I REM'="" D GETDATA(REM) G DONE
 S RIEN=0
 F  S RIEN=$O(^BQI(90506.1,"AC","R",RIEN)) Q:RIEN=""  D
 . I $$GET1^DIQ(90506.1,RIEN_",",.1,"I")=1 Q
 . S REMNM=$P(^BQI(90506.1,RIEN,0),U,3)
 . S BQISORT(REMNM,RIEN)=""
 S REMNM=""
 F  S REMNM=$O(BQISORT(REMNM)) Q:REMNM=""  D
 . S RIEN=""
 . F  S RIEN=$O(BQISORT(REMNM,RIEN)) Q:RIEN=""  D
 .. D GETDATA(RIEN)
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
GETDATA(RIEN) ;EP - Get the reminder help text
 NEW NAME,CODE,HIEN,IEN,CAT,CLIN,STATUS
 S NAME=$P(^BQI(90506.1,RIEN,0),U,3),CODE=$P(^(0),U,1)
 S CAT=$$GET1^DIQ(90506.1,RIEN_",",3.03,"E")
 S CLIN=$$GET1^DIQ(90506.1,RIEN_",",3.02,"E")
 S HIEN=$P(CODE,"_",2)
 I $P(CODE,"_",1)="AUTTIMM" D
 . S NAME="IMMUNIZATIONS"
 . S HIEN=$$FIND1^DIC(9001018,"","Q",NAME,"B","","ERROR")
 I $P(CODE,"_",1)="COLO" D
 . S NAME="COLORECTAL CA-SCOPE/XRAY"
 . S HIEN=$$FIND1^DIC(9001018,"","Q",NAME,"B","","ERROR")
 ;
 I $P(CODE,"_",1)="REG" D
 . NEW DA,IENS
 . S (DA(1),RGIEN)=$P(CODE,"_",2),(DA,HIEN)=$P(CODE,"_",3)
 . S IENS=$$IENS^DILF(.DA)
 . S NAME=$$GET1^DIQ(90507.015,IENS,.01,"E")
 . S STATUS=$$GET1^DIQ(90507.015,IENS,.03,"E")
 . S II=II+1,@DATA@(II)=RIEN_"^"_$P(^BQI(90506.1,RIEN,0),U,3)_"^"_CODE_"^"_CAT_"^"_CLIN_"^"_STATUS_"^"
 . S IEN=0
 . F  S IEN=$O(^BQI(90507,RGIEN,15,HIEN,13,IEN)) Q:'IEN  D
 .. S II=II+1,@DATA@(II)=^BQI(90507,RGIEN,15,HIEN,13,IEN,0)_$C(10)
 . S II=II+1,@DATA@(II)=U
 ;
 I $P(CODE,"_",1)="CMET" D
 . S STATUS=$S($P(^BQI(90506.1,RIEN,0),U,10)=1:"INACTIVE",1:"ACTIVE")
 . S II=II+1,@DATA@(II)=RIEN_"^"_$P(^BQI(90506.1,RIEN,0),U,3)_"^"_CODE_"^"_CAT_"^"_CLIN_"^"_STATUS_"^"
 . S IEN=0
 . F  S IEN=$O(^BQI(90506.1,RIEN,4,IEN)) Q:'IEN  D
 .. S II=II+1,@DATA@(II)=^BQI(90506.1,RIEN,4,IEN,0)_$C(10)
 . S II=II+1,@DATA@(II)=U
 ;
 I $P(CODE,"_",1)="EHR" D
 . S STATUS=$S($P(^BQI(90506.1,RIEN,0),U,10)=1:"INACTIVE",1:"ACTIVE")
 . S II=II+1,@DATA@(II)=RIEN_"^"_$P(^BQI(90506.1,RIEN,0),U,3)_"^"_CODE_"^"_CAT_"^"_CLIN_"^"_STATUS_"^"
 . S IEN=0
 . F  S IEN=$O(^BQI(90506.1,RIEN,4,IEN)) Q:'IEN  D
 .. S II=II+1,@DATA@(II)=^BQI(90506.1,RIEN,4,IEN,0)_$C(10)
 . S II=II+1,@DATA@(II)=U
 ;
 I $P(CODE,"_",1)'="REG",$P(CODE,"_",1)'="CMET",$P(CODE,"_",1)'="EHR" D
 . S STATUS=$$GET1^DIQ(9001018,HIEN_",",.03,"E")
 . S II=II+1,@DATA@(II)=RIEN_"^"_$P(^BQI(90506.1,RIEN,0),U,3)_"^"_CODE_"^"_CAT_"^"_CLIN_"^"_STATUS_"^"
 . S IEN=0
 . F  S IEN=$O(^APCHSURV(HIEN,13,IEN)) Q:'IEN  D
 .. S II=II+1,@DATA@(II)=^APCHSURV(HIEN,13,IEN,0)_$C(10)
 . S IEN=0
 . I $O(^APCHSURV(HIEN,11,0)) S II=II+1,@DATA@(II)="Currently Defined Criteria in Use at this Facility:"_$C(10)
 . F  S IEN=$O(^APCHSURV(HIEN,11,IEN)) Q:'IEN  D
 .. NEW DA,IENS,AIEN
 .. S DA(1)=HIEN,DA=IEN,IENS=$$IENS^DILF(.DA)
 .. S II=II+1,@DATA@(II)="    Sex: "_$$GET1^DIQ(9001018.11,IENS,.01,"E")_$C(10)
 .. S AIEN=0
 .. F  S AIEN=$O(^APCHSURV(HIEN,11,IEN,11,AIEN)) Q:'AIEN  D
 ... NEW DA,IENS
 ... S DA(2)=HIEN,DA(1)=IEN,DA=AIEN,IENS=$$IENS^DILF(.DA)
 ... S II=II+1,@DATA@(II)="        Min. Age: "_$$GET1^DIQ(9001018.1111,IENS,.01,"E")_"  Max. Age: "_$$GET1^DIQ(9001018.1111,IENS,.02,"E")_"  Frequency: "_$$GET1^DIQ(9001018.1111,IENS,.03,"E")_$C(10)
 . S II=II+1,@DATA@(II)="^"_$$SLST(HIEN)
 S II=II+1,@DATA@(II)=$C(30)
 Q
 ;
SLST(SHIEN) ; List of summaries that the reminder is on
 NEW LIST,SIEN,SP
 S SIEN=0,LIST=""
 F  S SIEN=$O(^APCHSCTL(SIEN)) Q:'SIEN  D
 . S SP=0
 . F  S SP=$O(^APCHSCTL(SIEN,5,SP)) Q:'SP  D
 .. I $P(^APCHSCTL(SIEN,5,SP,0),U,2)'=SHIEN Q
 .. S LIST=LIST_$P(^APCHSCTL(SIEN,0),U,1)_$C(10)
 S LIST=$$TKO^BQIUL1(LIST,$C(10))
 Q LIST
 ;
GLS(DATA,FAKE) ; EP - BQI GET REMINDERS GLOSSARY
 NEW UID,II,RIEN,BQIRM,REMNM,BQISORT
 ;
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIRMHLP",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIRMHLP D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S BQIRM=$$FIND1^DIC(9001015,"","","ALL REMINDERS","B","","")
 I 'BQIRM S BMXSEC="'ALL REMINDERS' Health Summary Type not found." Q
 ;
 S @DATA@(II)="T00050REM_NAME^T00050CATEGORY^T00050CLIN_GROUP^T00030STATUS^T02048REPORT_TEXT"_$C(30)
 S RIEN=0
 F  S RIEN=$O(^BQI(90506.1,"AC","R",RIEN)) Q:RIEN=""  D
 . I $$GET1^DIQ(90506.1,RIEN_",",.1,"I")=1 Q
 . S REMNM=$P(^BQI(90506.1,RIEN,0),U,3)
 . S BQISORT(REMNM,RIEN)=""
 S REMNM=""
 F  S REMNM=$O(BQISORT(REMNM)) Q:REMNM=""  D
 . S RIEN=""
 . F  S RIEN=$O(BQISORT(REMNM,RIEN)) Q:RIEN=""  D
 .. D GETGLS(RIEN)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
GETGLS(RIEN) ;EP - Get the reminder description
 NEW NAME,CODE,HIEN,IEN,CAT,CLIN,STATUS
 S NAME=$P(^BQI(90506.1,RIEN,0),U,3),CODE=$P(^(0),U,1)
 S CAT=$$GET1^DIQ(90506.1,RIEN_",",3.03,"E")
 S CLIN=$$GET1^DIQ(90506.1,RIEN_",",3.02,"E")
 S HIEN=$P(CODE,"_",2)
 I $P(CODE,"_",1)="AUTTIMM" D
 . S NAME="IMMUNIZATIONS"
 . S HIEN=$$FIND1^DIC(9001018,"","Q",NAME,"B","","ERROR")
 I $P(CODE,"_",1)="COLO" D
 . S NAME="COLORECTAL CA-SCOPE/XRAY"
 . S HIEN=$$FIND1^DIC(9001018,"","Q",NAME,"B","","ERROR")
 ;
 I $P(CODE,"_",1)="REG" D
 . NEW DA,IENS
 . S (DA(1),RGIEN)=$P(CODE,"_",2),(DA,HIEN)=$P(CODE,"_",3)
 . S IENS=$$IENS^DILF(.DA)
 . S NAME=$$GET1^DIQ(90507.015,IENS,.01,"E")
 . S STATUS=$$GET1^DIQ(90507.015,IENS,.03,"E")
 . S II=II+1,@DATA@(II)=$P(^BQI(90506.1,RIEN,0),U,3)_"^"_CAT_"^"_CLIN_"^"_STATUS_"^"
 . S IEN=0
 . F  S IEN=$O(^BQI(90507,RGIEN,15,HIEN,1,IEN)) Q:'IEN  D
 .. S II=II+1,@DATA@(II)=^BQI(90507,RGIEN,15,HIEN,1,IEN,0)_$C(10)
 ;
 I $P(CODE,"_",1)="CMET" D
 . S STATUS=$S($P(^BQI(90506.1,RIEN,0),U,10)=1:"INACTIVE",1:"ACTIVE")
 . S II=II+1,@DATA@(II)=$P(^BQI(90506.1,RIEN,0),U,3)_"^"_CAT_"^"_CLIN_"^"_STATUS_"^"
 . S IEN=0,II=II+1,@DATA@(II)="Category: "_CAT_$C(10)
 . F  S IEN=$O(^BQI(90506.1,RIEN,4,IEN)) Q:'IEN  D
 .. S II=II+1,@DATA@(II)=^BQI(90506.1,RIEN,4,IEN,0)_$C(10)
 ;
 I $P(CODE,"_",1)="EHR" D
 . S STATUS=$S($P(^BQI(90506.1,RIEN,0),U,10)=1:"INACTIVE",1:"ACTIVE")
 . S II=II+1,@DATA@(II)=$P(^BQI(90506.1,RIEN,0),U,3)_"^"_CAT_"^"_CLIN_"^"_STATUS_"^"
 . S IEN=0,II=II+1,@DATA@(II)="Category: "_CAT_$C(10)
 . F  S IEN=$O(^BQI(90506.1,RIEN,4,IEN)) Q:'IEN  D
 .. S II=II+1,@DATA@(II)=^BQI(90506.1,RIEN,4,IEN,0)_$C(10)
 ;
 I $P(CODE,"_",1)'="REG",$P(CODE,"_",1)'="CMET",$P(CODE,"_",1)'="EHR" D
 . S STATUS=$$GET1^DIQ(9001018,HIEN_",",.03,"E")
 . S II=II+1,@DATA@(II)=$P(^BQI(90506.1,RIEN,0),U,3)_"^"_CAT_"^"_CLIN_"^"_STATUS_"^"
 . S IEN=0,II=II+1,@DATA@(II)="Category: "_CAT_$C(10)
 . F  S IEN=$O(^APCHSURV(HIEN,1,IEN)) Q:'IEN  D
 .. S II=II+1,@DATA@(II)=^APCHSURV(HIEN,1,IEN,0)_$C(10)
 . S IEN=0
 . I $O(^APCHSURV(HIEN,11,0)) S II=II+1,@DATA@(II)="Currently Defined Criteria in Use at this Facility:"_$C(10)
 . F  S IEN=$O(^APCHSURV(HIEN,11,IEN)) Q:'IEN  D
 .. NEW DA,IENS,AIEN
 .. S DA(1)=HIEN,DA=IEN,IENS=$$IENS^DILF(.DA)
 .. S II=II+1,@DATA@(II)="    Sex: "_$$GET1^DIQ(9001018.11,IENS,.01,"E")_$C(10)
 .. S AIEN=0
 .. F  S AIEN=$O(^APCHSURV(HIEN,11,IEN,11,AIEN)) Q:'AIEN  D
 ... NEW DA,IENS
 ... S DA(2)=HIEN,DA(1)=IEN,DA=AIEN,IENS=$$IENS^DILF(.DA)
 ... S II=II+1,@DATA@(II)="        Min. Age: "_$$GET1^DIQ(9001018.1111,IENS,.01,"E")_"  Max. Age: "_$$GET1^DIQ(9001018.1111,IENS,.02,"E")_"  Frequency: "_$$GET1^DIQ(9001018.1111,IENS,.03,"E")_$C(10)
 S II=II+1,@DATA@(II)=$C(30)
 Q
