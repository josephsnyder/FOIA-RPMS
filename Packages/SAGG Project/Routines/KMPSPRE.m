KMPSPRE ;SF/KAK - SAGG Pre Install ;05 MAR 98 6:51 pm
 ;;1.8;SAGG PROJECT;;Apr 27, 1998
 ;
EN ;
 D PACK,MAIL,TASK
 K KMPSTSK
 Q
 ;
PACK ; Change PREFIX of SAGG PROJECT package to KMPS
 ;
 D BMES^XPDUTL("   Changing PREFIX of SAGG PROJECT package to KMPS ...")
 N DA,DIE,DR
 S DA=+$O(^DIC(9.4,"B","SAGG PROJECT",0)) Q:'DA
 S DIE="^DIC(9.4,",DR="1///KMPS" D ^DIE
 K DA,DIE,DR
 Q
 ;        
MAIL ; Change mail-group A1B5-SAGG to KMPS-SAGG
 ;
 D BMES^XPDUTL("   Changing mail-group A1B5-SAGG to KMPS-SAGG ...")
 N DA,DIE,DR
 S DA=+$O(^XMB(3.8,"B","A1B5-SAGG",0)) Q:'DA
 S DIE="^XMB(3.8,",DR=".01///KMPS-SAGG" D ^DIE
 K DA,DIE,DR
 Q
 ;
TASK ; Change option A1B5 SAGG REPORT to KMPS SAGG REPORT
 ;
 D BMES^XPDUTL("   Changing option A1B5 SAGG REPORT to KMPS SAGG REPORT ...")
 N DA,DIE,DR
 S DA=$O(^DIC(19,"B","A1B5 SAGG REPORT",0)) Q:'DA
 S DIE="^DIC(19,",DR=".01///KMPS SAGG REPORT" D ^DIE
 K DA,DIE,DR
 Q
 ;