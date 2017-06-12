BPHR21P1 ;GDHD/HC/ALA-Version 2.1 Patch 1 ; 28 Jun 2016  3:35 PM
 ;;2.1;IHS PERSONAL HEALTH RECORD;**1**;Apr 01, 2014;Build 23
 ;
ENV ;EP - Environment check
 NEW VERSION
 ; Add code to check for Ensemble version greater or equal to 2012
 S VERSION=$$VERSION^%ZOSV
 I VERSION<2012 D BMES^XPDUTL("Ensemble 2012 or later is required!") S XPDQUIT=2
 Q
 ;
EN ;EP - Postinstall
 ; Check SSL
 D EN^BPHRSSL
 ;Delete existing BPHR classes
 S EXEC="DO $SYSTEM.OBJ.DeletePackage(""BPHR"")" X EXEC
 ;
 ; Import BPHR classes
 K ERR
 D IMPORT^BPHRCLAS(1,.ERR)
 I $G(ERR) Q
 Q
 ;
PRE ;EP - Preinstall
 NEW DA,DIK
 S DIK="^BPHR(90670.2,"
 S DA=0 F  S DA=$O(^BPHR(90670.2,DA)) Q:'DA  D ^DIK
 ;
 S DIK="^BPHRCLS("
 S DA=0 F  S DA=$O(^BPHRCLS(DA)) Q:'DA  D ^DIK
 Q
