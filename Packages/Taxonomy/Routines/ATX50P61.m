ATX50P61 ; IHS/OHPRD/LAB - POST INIT PATCH 6 [ 09/07/04  12:03 PM ]
 ;;5.1;TAXONOMY;**6**;FEB 04, 1997
 ;
 ;
LAB ;EP
 S ATXPNSP=""
 F ATXPNSP="ACD","ABM","ACHS","ACPT","ADE","AICD","AMH","AMQQ","APCD","APCH","APCL","APCP","APMF","AQAC","AQAJ","AQAO","AQAQ","ATS","ATX","AUPN","BAT","BCH","BCM","BDW","BGP","BI","BMC","BQC","BUD","BW","CIMY","CIMB","CIMG" D SET
 S ATXTEXT="TAX" F ATXX=1:1 S ATXDATA=$P($T(@ATXTEXT+ATXX),";;",2) Q:ATXDATA=""  D
 .S ATXDA=$O(^ATXLAB("B",$P(ATXDATA,"|"),0))
 .Q:ATXDA=""
 .S $P(^ATXLAB(ATXDA,0),U,4)="n" W !,$P(ATXDATA,"|")  ;SET NO DELETE
 .S $P(^ATXLAB(ATXDA,0),U,22)=$P(ATXDATA,"|",2) ;set read only
 .;set packages in multiple
 .K DIC,DA,DR
 .S ATXP=$P(ATXDATA,"|",3)
 .F ATXN=1:1 S ATXPP=$P(ATXP,"*",ATXN) Q:ATXPP=""  D
 ..S ATXPI=$O(^DIC(9.4,"C",ATXPP,0))
 ..Q:ATXPI=""  ;NO PACKAGE
 ..S X="`"_ATXPI,DIC="^ATXLAB("_ATXDA_",41,",DIC(0)="L",DIC("P")=$P(^DD(9002228,4101,0),U,2),DA(1)=ATXDA
 ..D ^DIC
 ..I Y=-1 W !,"updating package multiple for ",ATXPP," entry ",$P(^ATXLAB(ATXDA,0),U)," failed"
 ..K DIC,DA,Y,X
 .Q
 Q
SET ;
 S X=0 F  S X=$O(^ATXLAB(X)) Q:X'=+X  D
 .S Y=$P(^ATXLAB(X,0),U)
 .S L=$L(ATXPNSP)
 .I $E(Y,1,L)=ATXPNSP S $P(^ATXLAB(X,0),U,4)="n" W !,Y
 .Q
 Q
 ;
TAX ;
 ;;APCH FECAL OCCULT BLOOD|0|APCH
 ;;APCH HCT/HGB TESTS|0|APCH
 ;;APCP PAP SMEAR LAB TESTS|0|APCP
 ;;APCP PAP SMEAR TESTS|0|APCP
 ;;APCP PSA TESTS TAX|0|APCP
 ;;AQAJ CREATININE CLEARANCE|0|AQAJ
 ;;BDR ALBUMIN TAX|0|BDR
 ;;BDR BICARBONATE TAX|0|BDR
 ;;BDR CALCIUM TAX|0|BDR
 ;;BDR CHOLESTEROL TAX|0|BDR
 ;;BDR HDL TAX|0|BDR
 ;;BDR HEMOGLOBIN TAX|0|BDR
 ;;BDR PHOSPHATES TAX|0|BDR
 ;;BDW PAP SMEAR LAB TESTS|0|BDW
 ;;BDW PSA TESTS TAX|0|BDW
 ;;BGP CD4 TAX|0|BGP
 ;;BGP CHLAMYDIA TESTS TAX|0|BGP
 ;;BGP GPRA ESTIMATED GFR TAX|0|BGP*APCH
 ;;BGP GPRA FOB TESTS|0|BGP
 ;;BGP HIV TEST TAX|0|BGP
 ;;BGP HIV VIRAL LOAD TAX|0|BGP
 ;;BGP PAP SMEAR TAX|0|BGP
 ;;BUD PAP SMEAR TAX|0|BUD
 ;;CIMG GPRA FOB TESTS|0|
 ;;CIMG GPRA PSA TESTS|0|
 ;;DM AUDIT 2 HR GTT TAX|0|APCL*BDM
 ;;DM AUDIT ALT TAX|0|APCL*BDM
 ;;DM AUDIT AST TAX|0|APCL*BDM
 ;;DM AUDIT CHOLESTEROL TAX|0|APCL*BDM*BGP
 ;;DM AUDIT CREATININE TAX|0|APCL*BDM*BGP
 ;;DM AUDIT GLUCOSE TESTS TAX|0|APCL*BDM
 ;;DM AUDIT HDL TAX|0|APCL*BDM*BGP
 ;;DM AUDIT HGB A1C TAX|0|APCL*BDM*BGP
 ;;DM AUDIT LDL CHOLESTEROL TAX|0|APCL*BDM*BGP
 ;;DM AUDIT LIPID PROFILE TAX|0|APCL*BDM*BGP
 ;;DM AUDIT MICROALBUMINURIA TAX|0|APCL*BDM*BGP
 ;;DM AUDIT PAP SMEAR TAX|0|APCL*BDM
 ;;DM AUDIT TRIGLYCERIDE TAX|0|APCL*BDM*BGP
 ;;DM AUDIT URINALYSIS TAX|0|APCL*BDM
 ;;DM AUDIT URINE PROTEIN TAX|0|APCL*BDM*BGP
 ;;
 ;;
 ;;
