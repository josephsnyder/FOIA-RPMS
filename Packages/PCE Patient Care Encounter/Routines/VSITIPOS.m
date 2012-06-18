VSITIPOS ;ISL/dee - Visit Post Init ;7/29/96
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**76**;Aug 12, 1996
 ; Patch PX*1*76 changes the 2nd line of all VSIT* routines to reflect
 ; the incorporation of the module into PCE.  For historical reference,
 ; the old (VISIT TRACKING) 2nd line is included below to reference VSIT
 ; patches.
 ;
 ;;2.0;VISIT TRACKING;;Aug 12, 1996;
 ;IHS/ITSC/LJF 5/30/2003 changed set of visit type from VA to what is set in PCC
 ;             2/06/2004 added code to stuff SITE PART IF VISIT ID field
 ;
EN ;
 ;Run post clean up routine
 S PXNEWCP=$$NEWCP^XPDUTL("VSITIPOS","POST^VSITIPOS")
 Q
 ;
POST ;
DEF ; - add the DEFAULT INSTITUTION to VISIT TRACKING PARAMETERS file
 ;
 N DIC,DLAYGO,DA,DR,DIE,X,DINUM
 D:'$D(^DIC(150.9,1,0))
 . S DIC="^DIC(150.9,",DIC(0)="L",(X,DINUM)=1,DLAYGO="150.9"
 . D FILE^DICN K DINUM,DIC,DLAYGO,DD,DO
 K DA,DR,DIC,DLAYGO,X,DINUM
 ;
 D BMES^XPDUTL("Looking at the VISIT TRACKING PRARMETERS file.")
 D:'+$P($G(^DIC(150.9,1,0)),"^",4)
 . D BMES^XPDUTL("I am going to add an entry to the DEFAULT INSTITUTION field #.04")
 . D MES^XPDUTL(" of the VISIT TRACKING PARAMETERS file.")
 . ;
 . S DR=".04///`"_+$$SITE^VASITE
 . S DA=1,DIE="^DIC(150.9," D ^DIE
 K DA,DR,DIE
 ;
 D:'+$P($G(^DIC(150.9,1,0)),"^",3)
 . D BMES^XPDUTL("I am going to add an entry to the DEFAULT TYPE field #.03")
 . D MES^XPDUTL(" of the VISIT TRACKING PARAMETERS file.")
 . ;
 . ;S DR=".03///V"                                             ;IHS/ITSC/LJF 5/30/2003
 . S DR=".03///"_$$GET1^DIQ(9001001.2,+$$SITE^VASITE,.11,"I")  ;IHS/ITSC/LJF 5/30/2003 use same as in PCC
 . S DA=1,DIE="^DIC(150.9," D ^DIE
 ;
 ;IHS/ITSC/LJF 2/6/2004 fill in SITE PART OF VISIT ID field
 I '$P($G(^DIC(150.9,1,4)),U,2),'$O(^VSIT(150.2,0)) D
 . D BMES^XPDUTL("I am going to add an entry to the SITE PART OF VISIT ID field #402")
 . D MES^XPDUTL(" of the VISIT TRACKING PARAMETERS file.")
 . ;
 . NEW X,DIC,DLAYGO,DA,DR,DIE,Y
 . S X="IHS-"_$$GET1^DIQ(9999999.06,+$$SITE^VASITE,.02)  ;IHS-short name
 . S DIC=150.2,DLAYGO=150.2,DIC(0)="L"
 . S CODE=$$GET1^DIQ(9999999.06,+$$SITE^VASITE,.08) I $L(CODE)<3 S CODE=$E(CODE_"XXX",1,3)
 . S DIC("DR")=".02///"_CODE_";.03///1"
 . D ^DIC
 . ;
 . S DR="402///`"_(+Y),DA=1,DIE="^DIC(150.9," D ^DIE
 ;IHS/ITSC/LJF 2/6/2004 end of new code
 ;
 K DA,DR,DIE
 ;
VSITVID ;
 D BMES^XPDUTL("Set the Visit id in the Visit Tracking Parameters file")
 D MES^XPDUTL("if not already set")
 N VSITNODE
 S VSITNODE=$G(^DIC(150.9,1,4))
 I $P(VSITNODE,"^",1)'?4.NU S $P(^DIC(150.9,1,4),"^",1)="10B0"
 ;
PROTOCOL ;
 N PROTNAME
 S DIE="^ORD(101,"
 S DR="2///@"
 D BMES^XPDUTL("Making sure that these protocols are not disabled.")
 F OFFSET=1:1 SET PROTNAME=$P($T(ENABLE+OFFSET),";;",2) Q:PROTNAME=""  D
 . D MES^XPDUTL("  "_PROTNAME)
 . S DA=$O(^ORD(101,"B",PROTNAME,0))
 . I DA>0 D ^DIE
 Q
 ;
ENABLE ;;
 ;;VSIT PATIENT STATUS
 ;;
