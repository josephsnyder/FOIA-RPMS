BPXRM201 ; IHS/MSC/MGH - Version 2.0 Patch 1 post routine. ;10-Dec-2013 13:12;DU
 ;;2.0;CLINICAL REMINDERS;**1001**;Feb 04, 2005;Build 21
 ;
ENV ;EP environment check
 N IN,INSTDA,STAT
 ;Check for the installation of Reminders 2.0
 S IN="CLINICAL REMINDERS 2.0",INSTDA=""
 I '$D(^XPD(9.7,"B",IN)) D  Q
 .W !,"You must first install CLINICAL REMINDERS 2.0 before this patch" S XPDQUIT=2
 S INSTDA=$O(^XPD(9.7,"B",IN,INSTDA),-1)
 S STAT=+$P($G(^XPD(9.7,INSTDA,0)),U,9)
 I STAT'=3 D  Q
 .W !,"CLINICAL REMINDERS 2.0 must be completely installed before installing this patch." S XPDQUIT=2
 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 ;===============================================================
PRE ;EP pre-init
 ;Delete exchange file entries put in by patches
 D DELEI
 ;delete the DDs for files with Variable pointers
 D DELDD
 Q
 ;===============================================================
POST ;Post-install
 D TYPE
 D UPDATE
 Q
 ;
ARRAY(ARRAY) ;List of exchange entries used by delete and install
 ;Patch 1 reminders
 S ARRAY(1,1)="VA-WH MAMMOGRAM REVIEW RESULTS"
 S ARRAY(2,1)="VA-WH MAMMOGRAM SCREENING"
 S ARRAY(3,1)="VA-WH PAP SMEAR REVIEW RESULTS"
 S ARRAY(4,1)="VA-WH PAP SMEAR SCREENING"
 ;Patch 3 reminders
 S ARRAY(5,1)="VA-MHV BMI > 25.0"
 S ARRAY(6,1)="VA-MHV CERVICAL CANCER SCREEN"
 S ARRAY(7,1)="VA-MHV COLORECTAL CANCER SCREEN"
 S ARRAY(8,1)="VA-MHV DIABETES FOOT EXAM"
 S ARRAY(9,1)="VA-MHV DIABETES HGBA1C"
 S ARRAY(10,1)="VA-MHV DIABETES RETINAL EXAM"
 S ARRAY(11,1)="VA-MHV HYPERTENSION"
 S ARRAY(12,1)="VA-MHV INFLUENZA VACCINE"
 S ARRAY(13,1)="VA-MHV LDL CONTROL"
 S ARRAY(14,1)="VA-MHV LIPID MEASUREMENT"
 S ARRAY(15,1)="VA-MHV MAMMOGRAM SCREENING"
 S ARRAY(16,1)="VA-MHV PNEUMOVAX"
 ;Patch 5 reminder
 S ARRAY(17,1)="VA-IRAQ & AFGHAN POST-DEPLOY SCREEN"
 ;Patch 4 reminder
 S ARRAY(18,1)="VA-WH BILATERAL MASTECTOMY"
 S ARRAY(19,1)="VA-WH HYSTERECTOMY W/CERVIX REMOVED"
 S ARRAY(20,1)="VA-MST SCREENING"
 S ARRAY(21,1)="VA-GEC REFERRAL CARE RECOMMENDATION"
 S ARRAY(22,1)="VA-MHV INFLUENZA VACCINE"
 S ARRAY(23,1)="VA-*QUERI LIST RULE UPDATES"
 S ARRAY(24,1)="VA-GEC REFERRAL NURSING ASSESSMENT"
 S ARRAY(25,1)="VA-*QUERI LIST RULE UPDATES"
 S ARRAY(26,1)="VA-HTN ASSESSMENT BP >=140/90"
 S ARRAY(27,1)="VA-HTN ASSESSMENT BP >=160/100"
 ;Patch 8 reminder
 S ARRAY(28,1)="VA-TBI SCREENING"
 ;Patch 10 Reminders
 S ARRAY(29,1)="VA-VANOD SKIN ASSESSMENT"
 S ARRAY(30,1)="VA-VANOD SKIN REASSESSMENT"
 S ARRAY(31,1)="GMTS SKIN RISK HS OBJECTS"
 S ARRAY(32,1)="GMTS SKIN RISK HS TYPES"
 ;Patch 6
 S ARRAY(33,1)="PXRM*2*6 TAXONOMY UPDATES"
 S ARRAY(34,1)="VA-MH TERM UPDATE"
 ;Patch 11 reminders
 S ARRAY(35,1)="VA-ALCOHOL AUDIT-C POSITIVE F/U"
 S ARRAY(36,1)="VA-ALCOHOL USE SCREEN (AUDIT-C"
 S ARRAY(37,1)="VA-BL ALCOHOL SCREEN"
 S ARRAY(38,1)="VA-BL ALCOHOL WITHIN SAFE LIMIT"
 S ARRAY(39,1)="VA-BL DEPRESSION SCREEN"
 S ARRAY(40,1)="VA-BL PTSD SCREEN"
 S ARRAY(41,1)="VA-BL OEF/OIF EMBEDDED FRAGMENTS"
 S ARRAY(42,1)="VA-BL OEF/OIF FEVER"
 S ARRAY(43,1)="VA-BL OEF/OIF GI SX"
 S ARRAY(44,1)="VA-BL OEF/OIF SKIN SX"
 S ARRAY(45,1)="VA-BL OEF/OIF OTHER SX"
 S ARRAY(46,1)="VA-BL OEF/OIF SERVICE INFO ENTERED"
 S ARRAY(47,1)="VA-CV ELIG W/HF FOR NO SERVICE"
 S ARRAY(48,1)="VA-CV INELG W/HF FOR SERVICE"
 S ARRAY(49,1)="VA-DEPRESSION SCREENING"
 S ARRAY(50,1)="VA-IRAQ & AFGHAN POST-DEPLOY SCREEN"
 S ARRAY(51,1)="VA-MHV CERVICAL CANCER SCREEN"
 S ARRAY(52,1)="VA-MHV COLORECTAL CANCER SCREEN"
 S ARRAY(53,1)="VA-MHV DIABETES FOOT EXAM"
 S ARRAY(54,1)="VA-MHV DIABETES RETINAL EXAM"
 S ARRAY(55,1)="VA-MHV HYPERTENSION"
 S ARRAY(56,1)="VA-MHV INFLUENZA VACCINE"
 S ARRAY(57,1)="VA-MHV MAMMOGRAM SCREENING"
 S ARRAY(58,1)="VA-MHV PNEUMOVAX"
 S ARRAY(59,1)="VA-OEF/OIF MONITOR REPORTING"
 S ARRAY(60,1)="VA-PTSD SCREENING"
 S ARRAY(61,1)="VA-TBI SCREENING"
 S ARRAY(62,1)="PATCH 11 ITEMS"
 S ARRAY(63,1)="PATCH 11 LOCATION LIST"
 ;Patch 15 reminder
 S ARRAY(64,1)="VA-TBI/POLYTRAUMA REHAB/REINTEGRATION PLAN OF CARE"
 ;OTHER
 S ARRAY(65,1)="PXRM RESULT GROUP UPDATE REMINDER"
 S ARRAY(66,1)="VA-MHV DIABETES HBA1C"
 Q
 ;
 ;===============================================================
CNAK ;Make sure all "NAK" characters are converted back to "^" in
 ;the Exchange File.
 N IEN,TEXT
 D BMES^XPDUTL("Clean up Exchange File entries")
 S IEN=0
 F  S IEN=+$O(^PXD(811.8,IEN)) Q:IEN=0  D
 . S TEXT=" Working on Exchange File entry "_IEN
 . D BMES^XPDUTL(TEXT)
 . D POSTKIDS^PXRMEXU5(IEN)
 Q
 ;
 ;===============================================================
DELEI ;If the Exchange File entry already exists delete it.
 N ARRAY,IC,IND,LIST,LUVALUE,NUM
 D ARRAY(.ARRAY)
 S IC=0
 F  S IC=$O(ARRAY(IC)) Q:'IC  D
 .S LUVALUE(1)=ARRAY(IC,1)
 .D FIND^DIC(811.8,"","","U",.LUVALUE,"","","","","LIST")
 .I '$D(LIST) Q
 .S NUM=$P(LIST("DILIST",0),U,1)
 .I NUM'=0 D
 ..F IND=1:1:NUM D
 ... N DA,DIK
 ... S DIK="^PXD(811.8,"
 ... S DA=LIST("DILIST",2,IND)
 ... D ^DIK
 Q
 ;
 ;===============================================================
DELDD ;Delete the old data dictionaries.
 N DIU,TEXT
 D EN^DDIOL("Removing old data dictionaries.")
 S DIU(0)=""
 F DIU=801.41,811.5,811.9 D
 . S TEXT=" Deleting data dictionary for file # "_DIU
 . D EN^DDIOL(TEXT)
 . D EN^DIU2
 Q
TYPE ;==========================================================
 ;Remove add to problem list from ICD finding type
 N IEN,MSG,TYP,PMT,IENS,STA
 S IEN=$O(^PXRMD(801.41,"B","PXRM ADD TO PROBLEM LIST",""))
 S TYP=$$FIND1^DIC(801.45,,,"POV",,,"MSG")
 I $D(MSG) D  Q
 . W !!,"The following error message was returned:",!!
 . S MSG="" F  S MSG=$O(MSG("DIERR",1,"TEXT",MSG)) Q:MSG=""  W MSG("DIERR",1,"TEXT",MSG),!
 . W !!,"Unable to find the POV FINDING TYPE"
 I '$D(MSG) D POV
 Q
POV ;Remove the prompt
 S IENS=","_TYP_","
 S STA=$$FIND1^DIC(801.451,IENS,,"DONE AT ENCOUNTER",,,.MSG)
 S PMT=$O(^PXRMD(801.45,TYP,1,STA,5,"B",IEN,""))
 I +PMT D DELETE(TYP,STA,PMT)
 S STA=$$FIND1^DIC(801.451,IENS,,"DONE ELSEWHERE (HISTORICAL)",,,.MSG)
 S PMT=$O(^PXRMD(801.45,TYP,1,STA,5,"B",IEN,""))
 I +PMT D DELETE(TYP,STA,PMT)
 Q
 ;Delete the subnodes
DELETE(TYP,STA,PMT) ;DELETE
 N DA,DIK
 S DA(2)=TYP,DA(1)=STA,DA=PMT
 S DIK="^PXRMD(801.45,"_TYP_",1,"_STA_",5,"
 D ^DIK
 Q
UPDATE ;Remove all findings and additional findings that are ICD
 ;Taxonomies that contain ICD will be made inactive
 N IEN,TYPE,NLINES,SUB,SUBT
 S NLINES=0
 S IEN=0
 F  S IEN=$O(^PXRMD(801.41,IEN)) Q:'+IEN  D
 .Q:$$GET1^DIQ(801.41,IEN,3)'=""
 .S TYPE=$P($G(^PXRMD(801.41,IEN,1)),U,5)
 .I $P(TYPE,";",2)="ICD9(" S TAX=$P(TYPE,";",1) D DELF(IEN)
 .I $P(TYPE,";",2)="PXD(811.2," D TAX(IEN,$P(TYPE,";",1))
 .S SUB=0 F  S SUB=$O(^PXRMD(801.41,IEN,3,SUB)) Q:'+SUB  D
 ..S SUBT=$P($G(^PXRMD(801.41,IEN,3,SUB,0)),U,1)
 ..I $P(SUBT,";",2)="ICD9(" D DELSUB(IEN,SUB,$P(SUBT,";",1))
 I NLINES>0 D SEND^PXRMMSG("Reminder items deleted or inactivated")
 Q
DELF(IEN) ;Delete the item
 N FDA,ERR,NAME
 S FDA(801.41,IEN_",",15)="@"
 D FILE^DIE("","FDA","ERR")
 S NAME=$$GET1^DIQ(801.41,IEN,.01)
 S NLINES=NLINES+1,^TMP("PXRMXMZ",$J,NLINES,0)="Dialog "_NAME_" had finding item deleted."
 Q
TAX(IEN,TAX) ;Check for 80 nodes and inactivate
 N FDA,ERR
 I $D(^PXD(811.2,TAX,80)) D
 .S FDA(811.2,TAX_",",1.6)=1
 .D FILE^DIE("","FDA","ERR")
 .S NAME=$$GET1^DIQ(811.2,TAX,.01)
 .S NLINES=NLINES+1,^TMP("PXRMXMZ",$J,NLINES,0)="Taxonomy "_NAME_" was inactivated."
 Q
DELSUB(IEN,SUB,ICD) ;Delete sub-file
 N DA,DIK
 S DA(1)=IEN,DA=SUB
 S DIK="^PXRMD(801.41,"_IEN_",3,"
 D ^DIK
 S NAME=$$GET1^DIQ(801.41,IEN,.01)
 S NLINES=NLINES+1,^TMP("PXRMXMZ",$J,NLINES,0)="Dialog "_NAME_" had an additional finding deleted."
 Q
