ADGLOS ; IHS/ADC/PDW/ENM - length of stay ; [ 03/25/1999  11:48 AM ]
 ;;5.0;ADMISSION/DISCHARGE/TRANSFER;;MAR 25, 1999
 ;
 ; * returns Length of Stay with ward/service
 ;   DGPMDA - patient movement ifn   required
 ;
DW() ; -- discharge ward los
 N X,X1,X2,DGPMID,DGPMCA,DGPMN0,DG3
 I '$D(DGPMDA) Q 0
 S DGPMN0=^DGPM(DGPMDA,0),DGPMCA=$P(DGPMN0,U,14),DFN=$P(DGPMN0,U,3)
 S DG3=$P(^DGPM(DGPMCA,0),U,17) Q:'DG3 0
 S X1=+^DGPM(DG3,0),DGPMID=9999999.9999999-X1
 S DGPMID=$O(^DGPM("APMV",DFN,DGPMCA,DGPMID))
 S X=$O(^DGPM("APMV",DFN,DGPMCA,DGPMID,0))
 S X2=+^DGPM(+X,0) D ^%DTC
 Q $S(X:X,1:1)
 ;
DS() ; -- discharge service los
 N X,X1,X2,DGPMID,DGPMCA,DGPMN0,DG3
 I '$D(DGPMDA) Q 0
 S DGPMN0=^DGPM(DGPMDA,0),DGPMCA=$P(DGPMN0,U,14),DFN=$P(DGPMN0,U,3)
 S DG3=$P(^DGPM(DGPMCA,0),U,17) Q:'DG3 0
 S X1=+^DGPM(DG3,0),DGPMID=9999999.9999999-X1
 S DGPMID=$O(^DGPM("ATS",DFN,DGPMCA,DGPMID))
 S X=$O(^DGPM("ATS",DFN,DGPMCA,DGPMID,0))
 S X2=$O(^DGPM("ATS",DFN,DGPMCA,DGPMID,X,0))
 S X2=+^DGPM(+X2,0) D ^%DTC
 Q $S(X:X,1:1)
 ;
W() ; -- previous ward los
 N X,X1,X2,DGPMID,DGPMCA,DGPMN0
 I '$D(DGPMDA) Q 0
 S DGPMN0=^DGPM(DGPMDA,0),DGPMCA=$P(DGPMN0,U,14),DFN=$P(DGPMN0,U,3)
 Q:"^2^3^"'[("^"_$P(DGPMN0,U,2)_"^") 0
 S X1=+DGPMN0,DGPMID=9999999.9999999-X1
 S DGPMID=$O(^DGPM("APMV",DFN,DGPMCA,DGPMID))
 S X=$O(^DGPM("APMV",DFN,DGPMCA,DGPMID,0))
 S X2=+^DGPM(+X,0) D ^%DTC
 Q $S(X:X,1:1)
 ;
S() ; -- previous service los
 N X,X1,X2,DGPMID,DGPMCA,DGPMN0
 I '$D(DGPMDA) Q 0
 S DGPMN0=^DGPM(DGPMDA,0)
 Q:"^2^3^"'[("^"_$P(DGPMN0,U,2)_"^") 0
 I $P(DGPMN0,U,2)=3 Q $$DS
 S X=$O(^DGPM("APHY",DGPMDA,0)) Q:'X 0
 S DGPMN0=^DGPM(X,0),DGPMCA=$P(DGPMN0,U,14),DFN=$P(DGPMN0,U,3)
 S X1=+DGPMN0,DGPMID=9999999.9999999-X1
 S DGPMID=$O(^DGPM("ATS",DFN,DGPMCA,DGPMID))
 S X=$O(^DGPM("ATS",DFN,DGPMCA,DGPMID,0))
 S X2=$O(^DGPM("ATS",DFN,DGPMCA,DGPMID,X,0))
 S X2=+^DGPM(+X2,0) D ^%DTC
 Q $S(X:X,1:1)