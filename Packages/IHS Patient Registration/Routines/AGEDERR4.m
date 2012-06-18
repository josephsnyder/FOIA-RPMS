AGEDERR4 ; VNGT/HS/BEE - EDIT CHECK CALLS ; MAR 19, 2010 
 ;;7.1;PATIENT REGISTRATION;**8,9**;AUG 25, 2005
 Q
 ;EDIT CHK #44 - AOB MISSING
 ;ERROR VERSION (SEE EDIT CHK #1 FOR WARNING VERSION)
AOBMISS(DFN) ;EP
  ;
 ;Quit if AOB not required
 I '$$RQAOB(DUZ(2)) Q 0
 ;
 Q:DFN="" 1
 N X
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 I '$$CURRUPD^AGEDERR2(DFN,365) Q 0
 I '$$HASELIG^AGEDERR2(DFN) Q 0
 I '$$ISDEPEND^AGEDERR2(DFN) Q 0
 ;AOB CHECKED FOR PATIENTS W/ PRVT ONLY
 Q:'$D(^AUPNPRVT("B",DFN))
 S X=1_U_"PVT"_U
 Q:'$$ACTELIG^AGEDERR2(DFN,X)_U_X 0
 ;END NEW
 I $G(AGOPT("VERSION"))<7.1 Q $P($G(^AUPNPAT(DFN,0)),U,17)=""
 Q $O(^AUPNPAT(DFN,71,0))=""
 ;EDIT CHK #45 - AOB COMP
 ;ERROR VERSION (SEE EDIT CHK #3 FOR WARNING VERSION)
 ;LAST DATE IS OLDER THAN ONE YEAR OR BEFORE AN ACTIVE BEGIN DATE
AOBDUE(DFN) ;EP
 ;
 ;Quit if AOB not required
 I '$$RQAOB(DUZ(2)) Q 0
 ;
 Q:DFN="" 1
 N TARDT,X,X1,X2,X3
 ;1/20/05
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 I '$$CURRUPD^AGEDERR2(DFN,1095) Q 0
 I '$$HASELIG^AGEDERR2(DFN) Q 0
 ;END NEW
 ;ADRIAN 6/16/2005
 ;AOB SHOULD BE CHECKED FOR PRVT INS. ONLY
 Q:'$D(^AUPNPRVT("B",DFN)) 0
 S X=1_U_"PVT"_U
 Q:'$$ACTELIG^AGEDERR2(DFN,X)_U_X 0
 S TARDT=$$AOBCHEK^AGEDERR2(DFN)
 ;END
 I $G(AGOPT("VERSION"))<7.1 Q $$AOBDUE7(DFN)
 ;DON'T CHK IF NO AOB ENTRIES
 ;S X3=$O(^AUPNPAT(DFN,71,"B",""),-1)
 ;Q:X3="" 0
 S X2=$O(^AUPNPAT(DFN,71,"B",""),-1)
 Q:X2="" 0     ;DO NOT REPORT ON MISSING THATS FOR ERROR #1
 Q:X2<TARDT 1  ;AOB
 S X1=DT
 D ^%DTC
 Q X>365
 ;7.0 CHK FOR AOB OVERDUE
AOBDUE7(DFN) ;EP
 I $P($G(^AUPNPAT(DFN,0)),U,17)="" Q 1
 S X2=$P($G(^AUPNPAT(DFN,0)),U,17)
 S X1=DT
 D ^%DTC
 Q X>365
 ;
 ;EDIT CHK #46 - ROI MISSING
 ;ERROR VERSION (SEE EDIT CHK #13 FOR WARNING VERSION)
 ;
ROIMISS(DFN) ;EP
 ;
 ;Quit if ROI not required
 I '$$RQROI(DUZ(2)) Q 0
 ;
 Q:DFN="" 1
 ;
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 I '$$CURRUPD^AGEDERR2(DFN,1095) Q 0
 I '$$HASELIG^AGEDERR2(DFN) Q 0
 ;
 I '$$ISDEPEND^AGEDERR2(DFN) Q 0
 I '$$CURRUPD^AGEDERR2(DFN,365) Q 0
 ;
 I $G(AGOPT("VERSION"))<7.1 Q $P($G(^AUPNPAT(DFN,0)),U,4)=""
 Q $O(^AUPNPAT(DFN,36,"B",""),-1)=""
 ;
 ;EDIT CHK #14 - ROI EXPIRED
 ;RTNS T IF EXPIRED
ROIEXP(DFN) ;EP
 ;
 ;Quit if ROI not required
 I '$$RQROI(DUZ(2)) Q 0
 ;
 Q:DFN="" 1
 ;1/20/05
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 I '$$CURRUPD^AGEDERR2(DFN,1095) Q 0
 I '$$HASELIG^AGEDERR2(DFN) Q 0
 ;END
 I $G(AGOPT("VERSION"))<7.1 Q $$ROIEXP7(DFN)  ;DO PRE 7.1 CHK
 ;DON'T CHK IF NO ROI ENTRY
 N X3
 S X3=$O(^AUPNPAT(DFN,36,"B",""),-1)
 Q:X3="" 0
 N X,X1,X2
 S X2=$O(^AUPNPAT(DFN,36,"B",""),-1)
 Q:X2="" 1
 S X1=DT
 D ^%DTC
 Q X>365
 ;PRE 7.1 CHK FOR EXPIRED ROI
ROIEXP7(DFN) ;EP
 N X1,X2
 S X2=$P($G(^AUPNPAT(DFN,0)),U,4)
 S X1=DT
 D ^%DTC
 Q X>365
 ;
 ;EDIT CHK #48 - COMMUNITY MISSING
 ;ERROR CHECK
COMM(DFN) ;EP
 ;
 Q:DFN="" 1
 N X
 I $$DECEASED^AGEDERR2(DFN) Q 0
 I '$$PTACTIVE^AGEDERR2(DFN) Q 0
 I '$$CURRUPD^AGEDERR2(DFN,365) Q 0
 ;
 I $$GET1^DIQ(9000001,DFN_",",1118,"E")="" Q 1
 Q 0
 ;
RQROI(FAC) ;Determine whether ROI is required
 N FLIEN,ROIEN,RQROI
 S FLIEN=$O(^AGFAC(FAC,11,"B",9000001,"")) I FLIEN="" Q 0
 S ROIEN=$O(^AGFAC(FAC,11,FLIEN,1,"B","RELEASE OF INFORMATION",""))
 S RQROI=$$GET1^DIQ(9009061.1101,ROIEN_","_FLIEN_","_FAC_",",.02,"I")
 Q RQROI
 ;
RQAOB(FAC) ;Determine whether AOB is required
 N FLIEN,AOBIEN,RQAOB
 S FLIEN=$O(^AGFAC(FAC,11,"B",9000001,"")) I FLIEN="" Q 0
 S AOBIEN=$O(^AGFAC(FAC,11,FLIEN,1,"B","ASSIGN BENEFITS OBTAINED DATE",""))
 S RQAOB=$$GET1^DIQ(9009061.1101,AOBIEN_","_FLIEN_","_FAC_",",.02,"I")
 Q RQAOB
 ;
RQPRM(FAC) ;Determine whether Primary Language is required - AG*7.1*9
 N FLIEN,PRMIEN,RQPRM
 S FLIEN=$O(^AGFAC(FAC,11,"B",9000001,"")) I FLIEN="" Q 0
 S PRMIEN=$O(^AGFAC(FAC,11,FLIEN,1,"B","PRIMARY LANGUAGE",""))
 S RQPRM=$$GET1^DIQ(9009061.1101,PRMIEN_","_FLIEN_","_FAC_",",.02,"I")
 Q RQPRM
 ;
RQPRF(FAC) ;Determine whether Preferred Language is required - AG*7.1*9
 N FLIEN,PRFIEN,RQPRF
 S FLIEN=$O(^AGFAC(FAC,11,"B",9000001,"")) I FLIEN="" Q 0
 S PRFIEN=$O(^AGFAC(FAC,11,FLIEN,1,"B","PREFERRED LANGUAGE",""))
 S RQPRF=$$GET1^DIQ(9009061.1101,PRFIEN_","_FLIEN_","_FAC_",",.02,"I")
 Q RQPRF
 ;
RQETH(FAC) ;Determine whether Ethnicity is required - AG*7.1*9
 N FLIEN,ETHIEN,RQETH
 S FLIEN=$O(^AGFAC(FAC,11,"B",2,"")) I FLIEN="" Q 0
 S ETHIEN=$O(^AGFAC(FAC,11,FLIEN,1,"B","ETHNICITY INFORMATION",""))
 S RQETH=$$GET1^DIQ(9009061.1101,ETHIEN_","_FLIEN_","_FAC_",",.02,"I")
 Q RQETH
 ;
RQRACE(FAC) ;Determine whether Race is required - AG*7.1*9
 N FLIEN,RACEIEN,RQRACE
 S FLIEN=$O(^AGFAC(FAC,11,"B",2,"")) I FLIEN="" Q 0
 S RACEIEN=$O(^AGFAC(FAC,11,FLIEN,1,"B","RACE",""))
 S RQRACE=$$GET1^DIQ(9009061.1101,RACEIEN_","_FLIEN_","_FAC_",",.02,"I")
 Q RQRACE
