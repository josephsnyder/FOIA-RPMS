ATX6ENV ; IHS/CMI/LAB - PCC Suite v1.0 patch 1 environment check ; 15 May 2013  2:57 PM
 ;;5.1;TAXONOMY;**11,16**;FEB 04, 1997;Build 26
 ;
 ;
 ; The following line prevents the "Disable Options..." and "Move
 ; Routines..." questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0
 I '$$INSTALLD("BJPC*2.0*10") D SORRY(2)
 I +$$VERSION^XPDUTL("AICD")<4 D MES^XPDUTL($$CJ^XLFSTR("Version 4.0 of AICD is required.  Not installed",80)) D SORRY(2) I 1
 E  D MES^XPDUTL($$CJ^XLFSTR("Requires AICD V4.0....Present.",80))
 ;
 Q
 ;
PRE ;
 ;RENAME BQI ROCKEY MTN FEVER DXS TO BQI ROCKY MTN FEVER DXS
 S DA=$O(^ATXAX("B","BQI ROCKEY MTN FEVER DXS",0))
 I DA S ATXFLG=1,DIE="^ATXAX(",DR=".01///BQI ROCKY MTN FEVER DXS" D ^DIE K DA,DR,DIE
 Q
POST ;
 ;SET FILE 60 IN ALL LAB TAXONOMEIS
 ;SET NDC FILE if needed
 ;set read only
 ;set no delete
 ;SET ICD9 INTO TAXONOMIES
 D SETTAXF  ;set file 60 into file field of ^ATXLAB if it is missing.
 D SETCS
 D ^ATXD1
 D ^ATXD2
 D ^ATXD3
 D ^ATXD4
 D ^ATXD5
 D ^ATXD6
 D ^ATXD7
 D ^ATXD8
 D ^ATXD9
 D ^ATXDA
 D ^ATXDB
 D ^ATXDC
 D ^ATXX
 D ^ATXO1
 D ^ATXO3
 D ^ATXO4
 D ^ATXO5
 D SETTAXRN
 D SETNDC
 D SETCLASS
 ;
 S DIK="^ATXTYPE(",DIK(1)=".02^C" D ENALL^DIK K DIC
 S DIK="^ATXAX(",DIK(1)=".15^AD" D ENALL^DIK K DIC
 ;CHANGE ROUTINE IN APCL TAXONOMY SETUP TO ATXTAXG
 S DA=$O(^DIC(19,"B","APCL TAXONOMY SETUP",0))
 I DA S DIE="^DIC(19,",DR="25////ATXTAXG" D ^DIE K DIE,DA,DR
 D DELOPT
BULL ;modify bulletins
 S ATXX="ATX" F  S ATXX=$O(^XMB(3.6,"B",ATXX)) Q:ATXX]"ATXZ"  D
 .S X=0 F  S X=$O(^XMB(3.6,"B",ATXX,X)) Q:X'=+X  D
 ..S Y=0 F  S Y=$O(^XMB(3.6,X,1,Y)) Q:Y'=+Y  D
 ...I $G(^XMB(3.6,X,1,Y,0))["ICD9" S ^XMB(3.6,X,1,Y,0)=$TR(^XMB(3.6,X,1,Y,0),"ICD9","ICD")
 ..S Y=0 F  S Y=$O(^XMB(3.6,X,4,Y)) Q:Y'=+Y  D
 ...I $G(^XMB(3.6,X,4,Y,0))["ICD9" S ^XMB(3.6,X,4,Y,0)=$TR(^XMB(3.6,X,4,Y,0),"ICD9","ICD")
 ...S Z=0 F  S Z=$O(^XMB(3.6,X,4,Y,1,Z)) Q:Z'=+Z  D
 ....I $G(^XMB(3.6,X,4,Y,1,Z,0))["ICD9" S ^XMB(3.6,X,4,Y,1,Z,0)=$TR(^XMB(3.6,X,4,Y,1,Z,0),"ICD9","ICD")
 S ATXX="APCL" F  S ATXX=$O(^XMB(3.6,"B",ATXX)) Q:ATXX]"APCLZ"  D
 .S X=0 F  S X=$O(^XMB(3.6,"B",ATXX,X)) Q:X'=+X  D
 ..S Y=0 F  S Y=$O(^XMB(3.6,X,1,Y)) Q:Y'=+Y  D
 ...I $G(^XMB(3.6,X,1,Y,0))["ICD9" S ^XMB(3.6,X,1,Y,0)=$TR(^XMB(3.6,X,1,Y,0),"ICD9","ICD")
 ..S Y=0 F  S Y=$O(^XMB(3.6,X,4,Y)) Q:Y'=+Y  D
 ...I $G(^XMB(3.6,X,4,Y,0))["ICD9" S ^XMB(3.6,X,4,Y,0)=$TR(^XMB(3.6,X,4,Y,0),"ICD9","ICD")
 ...S Z=0 F  S Z=$O(^XMB(3.6,X,4,Y,1,Z)) Q:Z'=+Z  D
 ....I $G(^XMB(3.6,X,4,Y,1,Z,0))["ICD9" S ^XMB(3.6,X,4,Y,1,Z,0)=$TR(^XMB(3.6,X,4,Y,1,Z,0),"ICD9","ICD")
 Q
 ;
SETCS ;EP
 ;set coding system to ICD9 for any file 80 or 80.1 taxonomy by checking 1st code in the list.
 ;if code is not found then set ICD9
 ;S VARS TO CODING SYSTEM IEN
 S ATXDX9CS=$O(^ICDS("B","ICD-9-CM",0))
 S ATXPC9CS=$O(^ICDS("B","ICD-9 Proc",0))
 S ATXDX1CS=$O(^ICDS("B","ICD-10-CM",0))
 S ATXPC1CS=$O(^ICDS("B","ICD-10-PCS",0))
 ;
 S ATXX=0 F  S ATXX=$O(^ATXAX(ATXX)) Q:ATXX'=+ATXX  D
 .S F=$P($G(^ATXAX(ATXX,0)),U,15)
 .I F=80 D DXS
 .I F=80.1 D PROCS
 .Q
 Q
DXS ;EP
 NEW X,Y,Z
 S ATXY=0 F  S ATXY=$O(^ATXAX(ATXX,21,ATXY)) Q:ATXY'=+ATXY  D
 .Q:$P(^ATXAX(ATXX,21,ATXY,0),U,3)]""  ;ALREADY TAGGED
 .;get first code in range
 .W !,^ATXAX(ATXX,0)
 .S Y=$P(^ATXAX(ATXX,21,ATXY,0),U,1)
 .S Y=$$STRIP^XLFSTR(Y," ")  ;take all spaces out
 .I Y["*" S $P(^ATXAX(ATXX,21,ATXY,0),U,3)=ATXDX1CS Q  ;it must be icD10 if has a wildcard
 .S %=$$ICDDX^ICDEX(Y)
 .I $P(%,U,20)=ATXDX1CS S $P(^ATXAX(ATXX,21,ATXY,0),U,3)=ATXDX1CS Q  ;if it is a 10 set it, otherwise assume it is an ICD9
 .;I am assuming it is an ICD9 if it is not an ICD10 as all of our existing taxonomies should be ICD9
 .S $P(^ATXAX(ATXX,21,ATXY,0),U,3)=ATXDX9CS
 .Q
 Q
PROCS ;EP
 NEW X,Y,Z
 S ATXY=0 F  S ATXY=$O(^ATXAX(ATXX,21,ATXY)) Q:ATXY'=+ATXY  D
 .Q:$P(^ATXAX(ATXX,21,ATXY,0),U,3)]""  ;ALREADY TAGGED
 .;get first code in range
 .;W !,^ATXAX(ATXX,0)
 .S Y=$P(^ATXAX(ATXX,21,ATXY,0),U,1)
 .S Y=$$STRIP^XLFSTR(Y," ")  ;take all spaces out
 .I Y["*" S $P(^ATXAX(ATXX,21,ATXY,0),U,3)=ATXPC1CS Q  ;it must be icD10 if has a wildcard
 .S %=$$ICDOP^ICDEX(Y,,,"E")
 .I $P(%,U,15)=ATXPC1CS S $P(^ATXAX(ATXX,21,ATXY,0),U,3)=ATXPC1CS Q  ;if it is a 10 set it, otherwise assume it is an ICD9
 .S $P(^ATXAX(ATXX,21,ATXY,0),U,3)=ATXPC9CS
 .Q
 Q
SETTAXF ;EP
 S X=0 F  S X=$O(^ATXLAB(X)) Q:X'=+X  D
 .Q:$P(^ATXLAB(X,0),U,9)]""
 .S $P(^ATXLAB(X,0),U,9)=60
 .Q
 Q
SETTAXRN ;EP
 ;set read only and no delete for selected taxonomies
 S ATXTFI="" F  S ATXTFI=$O(^ATXAX("B",ATXTFI)) Q:ATXTFI=""  D
 .S ATXTDA=$O(^ATXAX("B",ATXTFI,0))
 .Q:'ATXTDA  ;did not find taxonomy
 .Q:'$$NS(ATXTFI)
 .S $P(^ATXAX(ATXTDA,0),U,4)="n"  ;set no delete
 .S F=$P(^ATXAX(ATXTDA,0),U,15)
 .I $$RO(F,ATXTFI) S $P(^ATXAX(ATXTDA,0),U,22)=1  ;SET READ ONLY
 .Q
 Q
RO(T,S) ;
 I T=81 Q 1   ;CPT
 I T=80 Q 1   ;ICD DX
 I T=80.1 Q 1  ;ICD OP
 I T=9999999.31 Q 1  ;
 I T=9999999.64 Q 1  ;HEALTH FACTORS
 I T=95.3 Q 1  ;LAB LOINC
 I S[" NDC" Q 1  ;NDC taxonomies  -  not perfect logic by no tax had " NDC " but NDC taxonomies
 Q 0
DELOPT ;DELETE OBSOLETE OPTIONS
 D MES^XPDUTL("Deleting old, obsolete ATX options")
 S ATXY=0
 F ATXX="ATXBULL","ATXEARCH","ATXENTPTS","ATXMAINT","ATXMODIFY","ATXMSEARCH","ATXPOVSEARCH","ATXPTAXDEL","ATXRCHDEL" D
 .D MES^XPDUTL(ATXX)
 .S DA=$O(^DIC(19,"B",ATXX,0))
 .I 'DA Q
 .S DIK="^DIC(19," D ^DIK S ATXY=1
 Q:'ATXY
 D MES^XPDUTL("Cleaning up dangling pointers in option file for these options")
 D OFIX^XBDANGLE
 Q
NS(T,L) ;
 I T["DIABETES REG" Q 0
 I $E(T,1,4)="APCD" Q 1
 I $E(T,1,3)="BGP" Q 1
 I $E(T,1,7)="SURVEIL" Q 1
 I $E(T,1,4)="APCH" Q 1
 I $E(T,1,4)="APCL" Q 1
 I $E(T,1,3)="ATX" Q 1
 I $E(T,1,3)="BAT" Q 1
 I $E(T,1,3)="BDR" Q 1
 I $E(T,1,3)="BI " Q 1
 I $E(T,1,4)="BJPC" Q 1
 I $E(T,1,3)="BUD" Q 1
 I $E(T,1,8)="DM AUDIT" Q 1
 Q 0
 ;
SETNDC ;
 S ATXTEXT="NDC" F ATXX=1:1 S ATXTX=$P($T(@ATXTEXT+ATXX),";;",2) Q:ATXTX=""  D
 .S ATXDA=$O(^ATXAX("B",ATXTX,0))
 .Q:'ATXDA
 .Q:'$D(^ATXAX(ATXDA,0))
 .Q:$P(^ATXAX(ATXDA,0),U,15)]""  ;already has a file
 .S $P(^ATXAX(ATXDA,0),U,15)=50.67
 .Q
 S X=0 F  S X=$O(^ATXAX(X)) Q:X'=+X  D
 .Q:$P(^ATXAX(X,0),U,1)'["NDC"
 .Q:$P(^ATXAX(X,0),U,1)'["BGP"
 .Q:$P(^ATXAX(X,0),U,15)]""  ;already has a file
 .S $P(^ATXAX(X,0),U,15)=50.67
 Q
SETCLASS ;
 S ATXTEXT="CLASS" F ATXX=1:1 S ATXTX=$P($T(@ATXTEXT+ATXX),";;",2) Q:ATXTX=""  D
 .S ATXDA=$O(^ATXAX("B",ATXTX,0))
 .Q:'ATXDA
 .Q:'$D(^ATXAX(ATXDA,0))
 .Q:$P(^ATXAX(ATXDA,0),U,15)]""  ;already has a file
 .S $P(^ATXAX(ATXDA,0),U,15)=50.605
 .Q
 Q
INSTALLD(ATXSTAL) ;EP - Determine if patch ATXSTAL was installed, where
 ; ATXSTAL is the name of the INSTALL.  E.g "AG*6.0*11".
 ;
 NEW ATXY,DIC,X,Y
 S X=$P(ATXSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(ATXSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(ATXSTAL,"*",3)
 D ^DIC
 S ATXY=Y
 D IMES
 Q $S(ATXY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_ATXSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" installed.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
FIX ;
 S X=0
 F  S X=$O(^ATXAX(X)) Q:X'=+X  D
 .Q:$P(^ATXAX(X,0),U,15)'=80.1
 .S Y=0 F  S Y=$O(^ATXAX(X,21,Y)) Q:Y'=+Y  D
 ..I $P(^ATXAX(X,21,Y,0),U,3)="" W !,X," ",$P(^ATXAX(X,0),U,1)," ",Y
 Q
NDC ;
 ;;BAT ASTHMA CONTROLLER NDC
 ;;BAT ASTHMA INHLD STEROIDS NDC
 ;;BAT ASTHMA LEUKOTRIENE NDC
 ;;BAT ASTHMA SHRT ACT INHLR NDC
 ;;BAT ASTHMA SHRT ACT RELV NDC
 ;;BGP ASTHMA CONTROLLER NDC
 ;;BGP ASTHMA INHALED STEROID NDC
 ;;BGP ASTHMA LABA NDC
 ;;BGP ASTHMA LEUKOTRIENE NDC
 ;;BGP CMS BETA BLOCKER NDC
 ;;BGP CMS SMOKING CESSATION NDC
 ;;BGP HEDIS AMPHETAMINE NDC
 ;;BGP HEDIS ANALGESIC NDC
 ;;BGP HEDIS ANTIANXIETY NDC
 ;;BGP HEDIS ANTIBIOTICS NDC
 ;;BGP HEDIS ANTIDEPRESSANT NDC
 ;;BGP HEDIS ANTIEMETIC NDC
 ;;BGP HEDIS ANTIHISTAMINE NDC
 ;;BGP HEDIS ANTIPSYCHOTIC NDC
 ;;BGP HEDIS ARB NDC
 ;;BGP HEDIS ASTHMA INHALED NDC
 ;;BGP HEDIS ASTHMA LEUK NDC
 ;;BGP HEDIS ASTHMA NDC
 ;;BGP HEDIS BARBITURATE NDC
 ;;BGP HEDIS BELLADONNA ALKA NDC
 ;;BGP HEDIS BENZODIAZEPINE NDC
 ;;BGP HEDIS BETA BLOCKER NDC
 ;;BGP HEDIS CALCIUM CHANNEL NDC
 ;;BGP HEDIS GASTRO ANTISPASM NDC
 ;;BGP HEDIS NARCOTIC NDC
 ;;BGP HEDIS ORAL ESTROGEN NDC
 ;;BGP HEDIS ORAL HYPOGLYCEMIC ND
 ;;BGP HEDIS OSTEOPOROSIS NDC
 ;;BGP HEDIS OSTEOPOROSIS NDC
 ;;BGP HEDIS OTHER BENZO NDC
 ;;BGP HEDIS OTHER NDC AVOID ELD
 ;;BGP HEDIS PRIMARY ASTHMA NDC
 ;;BGP HEDIS SKL MUSCLE RELAX NDC
 ;;BGP HEDIS STATIN NDC
 ;;BGP HEDIS VASODILATOR NDC
 ;;BGP PQA ACEI ARB NDC
 ;;BGP PQA ANTIRETROVIRAL NDC
 ;;BGP PQA BETA BLOCKER NDC
 ;;BGP PQA BIGUANIDE NDC
 ;;BGP PQA CCB NDC
 ;;BGP PQA CONTROLLER NDC
 ;;BGP PQA DIABETES ALL CLASS NDC
 ;;BGP PQA DPP IV NDC
 ;;BGP PQA RASA NDC
 ;;BGP PQA SABA NDC
 ;;BGP PQA STATIN NDC
 ;;BGP PQA SULFONYLUREA NDC
 ;;BGP PQA THIAZOLIDINEDIONE NDC
 ;;BGP RA AZATHIOPRINE NDC
 ;;BGP RA CYCLOSPORINE NDC
 ;;BGP RA IM GOLD NDC
 ;;BGP RA LEFLUNOMIDE NDC
 ;;BGP RA METHOTREXATE NDC
 ;;BGP RA MYCOPHENOLATE NDC
 ;;BGP RA OA NSAID NDC
 ;;BGP RA PENICILLAMINE NDC
 ;;BGP RA SULFASALAZINE NDC
 ;;BGPMU ANTICOAG NDCS
 ;;BGPMU ANTIPLATELET NDCS
 ;;BGPMU ANTITHROMBOTIC NDCS
 ;;BGPMU BETABLOCKER NDCS
 ;;BGPMU GONODOTROPIN NDCS
 ;;BGPMU LIPID LOWERING NDCS
 ;;BGPMU PHARYNGITIS MEDS NDCS
 ;;BGPMU STATIN NDCS
 ;;BGPMU TAMOXIFEN AROMATASE NDCS
 ;;BGPMU TPA NDC CODES
 ;;BGPMU UFH THERAPY NDCS
 ;;BGPMU VTE ANTICOAG NDCS
 ;;BGPMU VTE PROPHYLAXIS
 ;;BGPMU WARFARIN NDCS
 ;;BKM TB MED NDCS
 ;;BKMV EI MED NDCS
 ;;BKMV II MED NDCS
 ;;BKMV MAC PROPH MED NDCS
 ;;BKMV NNRTI MED NDCS
 ;;BKMV NRTI COMBO MED NDCS
 ;;BKMV NRTI MED NDCS
 ;;BKMV NRTI/NNRTI MED NDCS
 ;;BKMV PCP PROPH MED NDCS
 ;;BKMV PI BOOSTER MED NDCS
 ;;BKMV PI MED NDCS
 ;;BQI STATIN NDC
 ;;BUD DIABETES MEDS NDC
 ;;
CLASS ;;
 ;;DM AUDIT ACE INHIB CLASS
 ;;BGP ANTIDEPRESSANT VA CLASS
 ;;BGP THROMBOLYTIC AGENT CLASS
 ;;BGP RA GLUCOCORTICOIDS CLASS
 ;;BGP OA GLUCOCORTICOIDS CLASS
 ;;BGP CMS ACEI MEDS CLASS
 ;;BGP CMS ANTI-PLATELET CLASS
 ;;BGP CMS ANTIBIOTICS MEDS CLASS
 ;;BGP CMS ARB MEDS CLASS
 ;;BGP CMS BETA BLOCKER CLASS
 ;;
