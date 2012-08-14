PSUAR0 ; BIR/PDW - Master Routine for AW/WS PBMS Extraction ;25 AUG 1998
 ;;3.0;PHARMACY BENEFITS MANAGEMENT;**19**;Oct 15, 1998
EN ; EP ENTRY FROM PSUCP
PULL ; pull variables from ^XTMP
 ;PSUJOB must exist and must be the job number used to store the data desired for this session.
 I '$D(PSUJOB) S PSUJOB=$J
 S PSUVARS="PSUSDT,PSUEDT,PSUMON,PSUDUZ,PSUMASF,PSUPBMG,PSUSMRY,ZTIO,PSUSNDR,PSUOPTS"
 F I=1:1:$L(PSUVARS,",") S @$P(PSUVARS,",",I)=$P(^XTMP("PSU_"_PSUJOB,1),U,I)
 ;
 I '$D(PSUJOB) S PSUJOB=$J
 S PSUVARS="PSUSDT,PSUEDT,PSUMON,PSUDUZ,PSUMASF,PSUPBMG,PSUSMRY,ZTIO,PSUSNDR,PSUOPTS"
 F I=1:1:$L(PSUVARS,",") S @$P(PSUVARS,",",I)=$P(^XTMP("PSU_"_PSUJOB,1),U,I)
COMPUTE ;EP for Compute Cycle of AR/WS Extract
 S PSUARJOB=PSUJOB
 S PSUARSUB="PSUAR_"_PSUARJOB
 K ^XTMP(PSUARSUB)
 S X1=DT,X2=6 D C^%DTC
 S ^XTMP(PSUARSUB,0)=X_U_DT_"^  Storage for PBMS AR/WS Extract Data"
 ;
 ;    Save Important Variables
 S X="PSUSDT,PSUEDT,PSUMON,PSUDUZ,PSUMASF,PSUPBMG,PSUSMRY,PSUSNDR,PSUPRSUB,PSUPRJOB,PSUJOB,PSUOPTN,PSURTN"
 F I=1:1 S Y=$P(X,",",I) Q:Y=""  I $D(@Y) S X(Y)=@Y
 M ^XTMP(PSUARSUB,"SAVE")=X
 ;
 D EN^PSUAR1          ; Gather Data
 D EN^PSUAR2          ; Build Records from Data
 D EN^PSUAR3(.PSUARM) ; Mail Message Generator
 S PSUSUB="PSU_"_PSUJOB
 I $D(^XTMP(PSUSUB)),PSUMASF M ^XTMP(PSUSUB,"CONFIRM")=PSUARM
 I $D(^XTMP(PSUSUB)),PSUPBMG M ^XTMP(PSUSUB,"CONFIRM")=PSUARM
 D EN^PSUAR4          ; Summary Messages
 Q
 ;
PRINT ;EP for Print Cycle
 D EN^PSUAR5
 Q
EXIT ;EP for Cleaning up & Restoring variables
 M Z=^XTMP(PSUARSUB,"SAVE")
 K ^XTMP(PSUARJOB)
 ; Kill PSU Variables
 D VARKILL^PSUTL
 ;      Restore Important Variables
 S Y="" F  S Y=$O(Z(Y)) Q:Y=""  S @Y=Z(Y)
 K Z
 Q