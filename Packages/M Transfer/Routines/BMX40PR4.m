BMX40PR4 ;GDIT/HS/BEE - BMX 4.0 Patch 4 PRE-INSTALL ROUTINE ; 8 Feb 2013 9:53 AM
 ;;4.0;BMX;**4**;JUN 28, 2010;Build 4
 ;
 ;PRE-INSTALL ROUTINE FOR BMX 4.0 Patch 4
 ;
 Q
 ;
PRE ; Pre-install
 NEW DA,DIK
 S DIK="^BMXADO(",DA=0
 F  S DA=$O(^BMXADO(DA)) Q:'DA  D ^DIK
 Q
