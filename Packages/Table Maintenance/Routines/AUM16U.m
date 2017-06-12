AUM16U ;IHS/OIT/NKD - ICD10 UPDATE FY2016 - 10/16/2015 ;
 ;;16.0;TABLE MAINTENANCE;;OCT 16,2015;Build 1
 ;
 Q
IEN(SYS) ; EP - FIND NEXT AVAILABLE IEN BASED ON SYS
 N ROOT,CNT,IEN
 S ROOT=$$ROOT^ICDEX($G(SYS)),IEN=0
 I +$G(SYS)>2 F CNT=500001:1 Q:IEN  S:'$D(@(ROOT_CNT_")")) IEN=CNT ; STARTING FROM 500001, FIND NEXT AVAILABLE IEN
 E  I +$G(SYS)<30 F CNT=499999:-1 Q:IEN  S:'$D(@(ROOT_CNT_")")) IEN=CNT ; STARTING FROM 499999, FIND NEXT AVAILABLE IEN
 Q IEN
 ;
EXC(IEN) ; EP - EXCLUDE ONE CODE FROM LOOKUP
 N CODE,FDA,CNT,ERR,DIK,DA S IEN=$G(IEN) Q:'IEN "-1^Err:IEN"
 S CODE=$$CODEC^ICDEX(80,IEN) Q:'$L(CODE) "-1^Err:Code"
 M ^AICDZEXC(IEN)=^ICD9(IEN)
 I $D(^ICD9(IEN,-9)) K ^ICD9(IEN,-9)  ; DELETE -9 NODE FROM INCOMPLETE MERGE
 S CNT=0 F  S CNT=$O(^ICD9(IEN,66,CNT)) Q:'CNT  S FDA(80.066,CNT_","_IEN_",",.01)="@"
 I $D(FDA) D FILE^DIE(,"FDA","ERR")
 S DIK="^ICD9(",DA=IEN D IX^DIK
 D ^XBFMK
 Q $S($D(ERR):"-1^Fail:"_$G(ERR("DIERR","1","TEXT",1)),1:"1^Done")
 ;
CMPRE ; EP - ICD10 DIAGNOSIS FILE PRE-TRANSFORM
 ; P1 = CODE    ;P2 = HEADER     ;P3 = SHORT      ;P4 = LONG    ;P5 = MS-DRG     ;P6 = CC/MCC
 ; P7 = PDX CC  ;P8 = AGE LOW    ;P9 = AGE HIGH   ;P10= SEX     ;P11= UNACC PDX
 N AUMC,AUMC2,AUMC3,AUMMDC,AUMTMP
 S:INA P2=0
 S:'P2 INA=1
 S P4=$$UP^XLFSTR(P4)
 ; MDC/MS-DRG EXTRACTOR
 S AUMMDC="" F AUMC=1:1:$L(P5,";") D
 . S AUMMDC=+$P($P(P5,";",AUMC),"|",1) Q:AUMMDC'>0
 . K AUMTMP
 . F AUMC2=1:1:$L($P($P(P5,";",AUMC),"|",2),",") D
 . . S AUMTMP=$P($P($P(P5,";",AUMC),"|",2),",",AUMC2)
 . . Q:($E(AUMTMP,1)?1A)
 . . F AUMC3=$P(AUMTMP,"-",1):1:$S($P(AUMTMP,"-",2)]"":$P(AUMTMP,"-",2),1:$P(AUMTMP,"-",1)) S AUMTMP(AUMC3)=""
 . S AUMC2=0 F  S AUMC2=$O(AUMTMP(AUMC2)) Q:'AUMC2  S P5(AUMMDC)=$G(P5(AUMMDC))_AUMC2_U
 S P5A=$O(P5(0))
 Q
 ;
PCSPRE ; EP - ICD10 OPERATION/PROCEDURE FILE PRE-TRANSFORM
 ; P1 = CODE    ;P2 = HEADER     ;P3 = SHORT      ;P4 = LONG    ;P5 = MS-DRG     ;P6 = N/A
 ; P7 = N/A     ;P8 = N/A        ;P9 = N/A        ;P10= SEX     ;P11= N/A
 N AUMC,AUMC2,AUMC3,AUMMDC,AUMTMP
 S:INA P2=0
 S:'P2 INA=1
 S P4=$$UP^XLFSTR(P4)
 ; MDC/MS-DRG EXTRACTOR
 S AUMMDC="" F AUMC=1:1:$L(P5,";") D
 . S AUMMDC=+$P($P(P5,";",AUMC),"|",1) Q:AUMMDC'>0
 . K AUMTMP
 . F AUMC2=1:1:$L($P($P(P5,";",AUMC),"|",2),",") D
 . . S AUMTMP=$P($P($P(P5,";",AUMC),"|",2),",",AUMC2)
 . . Q:($E(AUMTMP,1)?1A)
 . . F AUMC3=$P(AUMTMP,"-",1):1:$S($P(AUMTMP,"-",2)]"":$P(AUMTMP,"-",2),1:$P(AUMTMP,"-",1)) S AUMTMP(AUMC3)=""
 . S AUMC2=0 F  S AUMC2=$O(AUMTMP(AUMC2)) Q:'AUMC2  S P5(AUMMDC)=$G(P5(AUMMDC))_AUMC2_U
 Q
 ;
CMDRG ; EP - ICD10 DIAGNOSIS FILE DRG UPDATE
 N FDA,NEWIEN,AUMC,AUMC2,AUMD0,AUMU,AUMFR,AUMTO
 ;
 D MD^ICDEX($$SYS^AUM16D(AUMT,4),AUMI,AUMDT,.AUMD0)  ; DRG
 S (AUMC,AUMU,AUMFR,AUMTO)="" F  S AUMC=$O(P5(AUMC)) Q:'AUMC  S AUMTO=AUMTO_P5(AUMC)  ; INCOMING DRGS
 ; DIFF CHECK
 I '$D(AUMD0) D
 . S:AUMTO]"" AUMU=1
 E  D
 . S AUMC=$O(AUMD0("")),AUMC2=$O(AUMD0(AUMC,"")),AUMFR=$P($G(AUMD0(AUMC,AUMC2)),";")
 . S:AUMFR'=AUMTO AUMU=1
 Q:'AUMU
 ; DRG Grouper Effective Date (Versioned) (71)
 K FDA
 S AUMC=0 F  S AUMC=$O(^ICD9(AUMI,3,"B",AUMDT,AUMC)) Q:'AUMC  S FDA(80.071,AUMC_","_AUMI_",",.01)="@"
 I $D(FDA) D FILE^DIE(,"FDA")
 ; ENTRY IS NEEDED (TO ENSURE PROPER BEHAVIOR WHEN DRGs ARE REMOVED)
 K FDA
 S FDA(80.071,"?+1,"_AUMI_",",.01)=AUMDT  ; DRG Grouper Effective Date (.01)
 ; Add new DRGs
 F AUMC=1:1:$L(AUMTO,U) S:$P(AUMTO,U,AUMC)]"" FDA(80.711,"+"_(AUMC+1)_",?+1,"_AUMI_",",.01)=$P(AUMTO,U,AUMC)
 ;
 D RLOG^AUM16D(AUML,"DRG",$TR(AUMFR,U,","),$TR(AUMTO,U,","))
 D UPDATE^DIE(,"FDA",)
 S:(AUMM']"") AUMM="MOD :"
 Q
 ;
PCSDRG ; EP - ICD10 OPERATION/PROCEDURE FILE DRG UPDATE
 N FDA,NEWIEN,AUMC,AUMC2,AUMD0,AUMD1,AUMU,AUMFR,AUMTO
 ;
 D MD^ICDEX($$SYS^AUM16D(AUMT,4),AUMI,AUMDT,.AUMD0)  ; DRG
 S (AUMC,AUMU,AUMFR,AUMTO)="" F  S AUMC=$O(P5(AUMC)) Q:'AUMC  S AUMTO=AUMTO_AUMC_"|"_P5(AUMC)_";"  ; INCOMING DRGS
 ; DIFF CHECK
 I '$D(AUMD0) D
 . S:AUMTO]"" AUMU=1
 E  D
 . S AUMC="" F  S AUMC=$O(AUMD0(AUMC)) Q:'AUMC  S AUMC2="" F  S AUMC2=$O(AUMD0(AUMC,AUMC2)) Q:'AUMC2  S AUMD1(AUMC2)=$P(AUMD0(AUMC,AUMC2),";")
 . S AUMC="" F  S AUMC=$O(AUMD1(AUMC)) Q:'AUMC  S AUMFR=AUMFR_AUMC_"|"_AUMD1(AUMC)_";"
 . S:AUMFR'=AUMTO AUMU=1
 Q:'AUMU
 ; DRG Grouper Effective Date (Versioned) (71)
 K FDA
 S AUMC=0 F  S AUMC=$O(^ICD0(AUMI,2,"B",AUMDT,AUMC)) Q:'AUMC  S FDA(80.171,AUMC_","_AUMI_",",.01)="@"
 I $D(FDA) D FILE^DIE(,"FDA")
 ; ENTRY IS NEEDED (TO ENSURE PROPER BEHAVIOR WHEN DRGs ARE REMOVED)
 K FDA
 S FDA(80.171,"?+1,"_AUMI_",",.01)=AUMDT  ; DRG Grouper Effective Date (.01)
 ; Add new DRGs
 S AUMC=0 F  S AUMC=$O(P5(AUMC)) Q:'AUMC  D
 . S FDA(80.1711,"+"_(AUMC+1)_",?+1,"_AUMI_",",.01)=AUMC
 . F AUMC2=1:1:$L(P5(AUMC),U) S:$P(P5(AUMC),U,AUMC2)]"" FDA(80.17111,"+"_(AUMC+1*1000+AUMC2)_",+"_(AUMC+1)_",?+1,"_AUMI_",",.01)=$P(P5(AUMC),U,AUMC2)
 ;
 D RLOG^AUM16D(AUML,"DRG",$TR($TR(AUMFR,U,","),"|","-"),$TR($TR(AUMTO,U,","),"|","-"))
 D UPDATE^DIE(,"FDA",)
 S:(AUMM']"") AUMM="MOD :"
 Q
 ;
