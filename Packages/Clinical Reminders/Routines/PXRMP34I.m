PXRMP34I ;SLC/PKR - Inits for PXRM*2.0*34. ;11/06/2013
 ;;2.0;CLINICAL REMINDERS;**34**;Feb 04, 2005;Build 195
 Q
 ;==========================================
PRE ;Pre-init
 ;Disable options and protocols
 D OPTION^PXRMUTIL("DISABLE")
 D PROTOCOL^PXRMUTIL("DISABLE")
 D DELEXE^PXRMEXSI("EXARRAY","PXRMP34E")
 Q
 ;
 ;==========================================
POST ;Post-init
 ;Enable options and protocols
 D OPTION^PXRMUTIL("ENABLE")
 D PROTOCOL^PXRMUTIL("ENABLE")
 D SETPVER^PXRMUTIL("2.0P34")
 ;Install Exchange File entries.
 ;D SMEXINS^PXRMEXSI("EXARRAY","PXRMP34E")
 D RMDGE^PXRMP34I
 D SENDIM^PXRMP34I
 Q
 ;
 ;==========================================
RMDGE ;Remove some VA GENERIC entries from the Reminder Order Check Items
 ;Group.
 N IENS,IND,KFDA,MSG,OCIGIEN,TEXT,VAGEN,VAGENIEN,VAGENL,VP
 S OCIGIEN=+$O(^PXD(801,"B","VA-TERATOGENIC MEDICATIONS (CAT D OR C) GROUP",""))
 I OCIGIEN=0 Q
 D BMES^XPDUTL("Deleting some DG entries from VA-TERATOGENIC MEDICATIONS (CAT D OR C) GROUP")
 S VAGENL("DENOSUMAB")=""
 S VAGENL("EXEMESTANE")=""
 S VAGENL("HYALURONATE SODIUM")=""
 S VAGENL("HYALURONIC ACID")=""
 S VAGENL("HYALURONIDASE")=""
 S VAGENL("TELEVANCIN")=""
 S VAGEN=""
 F  S VAGEN=$O(VAGENL(VAGEN)) Q:VAGEN=""  D
 . S VAGENIEN=$$FIND1^DIC(50.6,"","BX",VAGEN)
 . I VAGENIEN=0 Q
 . S VP=VAGENIEN_";PSNDF(50.6,"
 . S IND=+$O(^PXD(801,OCIGIEN,1.5,"B",VP,""))
 . I IND=0 Q
 . S IENS=IND_","_OCIGIEN_","
 . S TEXT=" Removing DG."_VAGEN_", it is entry number "_IND_"."
 . D MES^XPDUTL(TEXT)
 . S KFDA(801.015,IENS,.01)="@"
 D FILE^DIE("","KFDA","MSG")
 ;
 S OCIGIEN=+$O(^PXD(801,"B","VA-TERATOGENIC MEDICATIONS (CAT X) GROUP",""))
 I OCIGIEN=0 Q
 D BMES^XPDUTL("Deleting some DG entries from VA-TERATOGENIC MEDICATIONS (CAT X) GROUP")
 K VAGENL
 S VAGENL("TELAVANCIN")=""
 S VAGEN=""
 F  S VAGEN=$O(VAGENL(VAGEN)) Q:VAGEN=""  D
 . S VAGENIEN=$$FIND1^DIC(50.6,"","BX",VAGEN)
 . I VAGENIEN=0 Q
 . S VP=VAGENIEN_";PSNDF(50.6,"
 . S IND=+$O(^PXD(801,OCIGIEN,1.5,"B",VP,""))
 . I IND=0 Q
 . S IENS=IND_","_OCIGIEN_","
 . S TEXT=" Removing DG."_VAGEN_", it is entry number "_IND_"."
 . D MES^XPDUTL(TEXT)
 . S KFDA(801.015,IENS,.01)="@"
 D FILE^DIE("","KFDA","MSG")
 Q
 ;
 ;==========================================
SENDIM ;Send install message.
 N FROM,NODE,PARAM,SYSTEM,SUBJECT,TO,VALUE
 S NODE="PXRM*2.0*34"
 K ^TMP(NODE,$J)
 ;DBIA #1131 for ^XMB("NETNAME")
 S FROM="PXRM*2.0*34 Install@"_^XMB("NETNAME")
 ;DBIA #2541
 S SYSTEM=$$KSP^XUPARAM("WHERE")
 I $$PROD^XUPROD(1) S TO("G.CLINICAL REMINDERS SUPPORT@domain.ext")=""
 E  D
 . N MGIEN,MGROUP
 . S MGIEN=$G(^PXRM(800,1,"MGFE"))
 . S MGROUP=$S(MGIEN'="":"G."_$$GET1^DIQ(3.8,MGIEN,.01),1:DUZ)
 . S TO(MGROUP)=""
 S SUBJECT="Install of PXRM*2.0*34"
 S ^TMP(NODE,$J,1,0)="PXRM*2.0*34 has been installed."
 S ^TMP(NODE,$J,2,0)="System is "_SYSTEM
 D SEND^PXRMMSG(NODE,SUBJECT,.TO,FROM)
 Q
 ;
