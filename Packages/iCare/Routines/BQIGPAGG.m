BQIGPAGG ;PRXM/HC/ALA-Aggregate GPRA ; 20 Jan 2006  10:57 AM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 Q
 ;
AGG(OWNR,PLIEN) ;EP - Aggregate the GPRA data
 NEW DATA,PLID,BQMEAS,BQIND,DFN,TWTEN,CURR,TITLE,ORDER,CAT
 NEW BQIMEASF,DEN,NUM,VALUE,IEN,NAFLG
 D INP^BQINIGHT
 NEW UID
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIGPAGG",UID))
 K @DATA
 S DFN=0
 F  S DFN=$O(^BQICARE(OWNR,1,PLIEN,40,DFN)) Q:'DFN  D RPT
 Q
 ;
RPT ;  Get the CRS Clinical Performance information
 ;
 S BQIND=0
 F  S BQIND=$O(^BQIPAT(DFN,30,BQIND)) Q:BQIND=""  D
 . S BQMEAS=$P(^BQIPAT(DFN,30,BQIND,0),U,1),VALUE=$P(^(0),U,2),NUM=$P(^(0),U,3),DEN=$P(^(0),U,4)
 . S BQMEAS=$P(BQMEAS,"_",2)
 . S IEN=$O(^BQI(90508,BQIH,20,BQIY,20,"B",BQMEAS,""))
 . S NAFLG=+$P(^BQI(90508,BQIH,20,BQIY,20,IEN,0),"^",4)
 . S TWTEN=$$GET1^DIQ(BQIMEASF,BQMEAS_",",1403,"E")
 . S CURR=$$GET1^DIQ(BQIMEASF,BQMEAS_",",1402,"E")
 . S TITLE=$$GET1^DIQ(BQIMEASF,BQMEAS_",",1404,"E")
 . S ORDER=$$GET1^DIQ(BQIMEASF,BQMEAS_",",1406,"E")
 . S CAT=$$GET1^DIQ(BQIMEASF,BQMEAS_",",1405,"E")
 . ;
 . S @DATA@(ORDER,"NUM")=$G(@DATA@(ORDER,"NUM"))+NUM
 . S @DATA@(ORDER,"DEN")=$G(@DATA@(ORDER,"DEN"))+DEN
 . S @DATA@(ORDER)=CAT_U_TITLE_U_TWTEN_U_CURR
 Q
