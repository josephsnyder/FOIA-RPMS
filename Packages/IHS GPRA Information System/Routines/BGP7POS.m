BGP7POS ; IHS/CMI/LAB - NO DESCRIPTION PROVIDED 08 Dec 2010 3:10 PM 04 Aug 2017 2:27 PM ; 26 Aug 2016  2:22 PM
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
 ;SEND OUT BGP TAXONOMIES
 ; The following line prevents the "Disable Options..." and "Move
 ; Routines..." questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0
 ;I '$$INSTALLD("ATX*5.1*14") D MES^XPDUTL($$CJ^XLFSTR("Taxonomy v5.1 patch 14 is required.  Not installed.",80)) D SORRY(2)
 I +$$VERSION^XPDUTL("BGP")<16.1 D MES^XPDUTL($$CJ^XLFSTR("Version 16.1 of the IHS CLINICAL REPORTING is required.  Not installed.",80)) D SORRY(2) I 1
 Q
 ;
PRE ;EP
 ;WIPE OUT CHS AND URBAN PARAMETERS, FIELDS ARE BEING DELETED
 D PRE^BGP7POS2
 Q
POST ;EP - called from kids build
 D ^BGP71
 D ^BGP72
 D DRUGS^BGP7POS1
 D LAB^BGP7POS1
 D BMXPO
 D S17
 Q
S17 ;WIPE OUT ALL 16.0 FILES SO START CLEAN WITH 16.0 FILES
 S BGPX=0 F  S BGPX=$O(^BGPGPDCG(BGPX)) Q:BGPX'=+BGPX  D
 .S DA=BGPX,DIK="^BGPGPDCG(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPGPDPG(BGPX)) Q:BGPX'=+BGPX  D
 .S DA=BGPX,DIK="^BGPGPDPG(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPGPDBG(BGPX)) Q:BGPX'=+BGPX  D
 .S DA=BGPX,DIK="^BGPGPDBG(" D ^DIK
 Q
NDC ;
 S BGPX=0 F  S BGPX=$O(^ATXAX(BGPX)) Q:BGPX'=+BGPX  D
 .Q:$P(^ATXAX(BGPX,0),U,15)]""  ;already has a file
 .Q:$P(^ATXAX(BGPX,0),U,1)'["NDC"
 .Q:$E($P(^ATXAX(BGPX,0),U,1),1,3)'="BGP"
 .S $P(^ATXAX(BGPX,0),U,15)=50.67
 .Q
 Q
BMXPO ;-- update the RPC file
 N BGPRPC
 S BGPRPC=$O(^DIC(19,"B","BGPGRPC",0))
 Q:'BGPRPC
 D CLEAN(BGPRPC)
 D GUIEP^BMXPO(.RETVAL,BGPRPC_"|BGP")
 D GUIEP^BMXPO(.RETVAL,BGPRPC_"|ATX")
 Q
CLEAN(APP) ;-- clean out the RPC multiple first
 S DA(1)=APP
 S DIK="^DIC(19,"_DA(1)_","_"""RPC"""_","
 N BGPDA
 S BGPDA=0 F  S BGPDA=$O(^DIC(19,APP,"RPC",BGPDA)) Q:'BGPDA  D
 . S DA=BGPDA
 . D ^DIK
 K ^DIC(19,APP,"RPC","B")
 Q
 ;
INSTALLD(BGPSTAL) ;EP - Determine if patch BGPSTAL was installed, where
 ; BGPSTAL is the name of the INSTALL.  E.g "AG*6.0*11".
 ;
 NEW BGPY,DIC,X,Y
 S X=$P(BGPSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(BGPSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(BGPSTAL,"*",3)
 D ^DIC
 S BGPY=Y
 D IMES
 Q $S(BGPY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_BGPSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" installed.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
ADA ;
 S ATXFLG=1
 S BGPDA=0 S BGPDA=$O(^ATXAX("B","BGP GEN ANESTHESIA ADA CODES",BGPDA))
 I BGPDA S DIK="^ATXAX(",DA=BGPDA D ^DIK  ;get rid of existing one
 W !,"Creating/Updating DENTAL ANESTHESIA ADA Codes Taxonomy..."
 S X="BGP GEN ANESTHESIA ADA CODES",DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING DENTAL ANESTHISIZ ADA CODES TAX" Q
 S BGPTX=+Y,$P(^ATXAX(BGPTX,0),U,2)="BGP GEN ANESTHESIA ADA CODES",$P(^(0),U,5)=DUZ,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=174,$P(^(0),U,13)=0,$P(^(0),U,15)=9999999.31,^ATXAX(BGPTX,21,0)="^9002226.02101A^0^0"
 S BGPX=0
 F X="9220" S DIC="^AUTTADA(",DIC(0)="M" D ^DIC K DIC,DA,DR,DIADD,DLAYGO,DQ,DI,D1,D0 I $P(Y,U)>0 D
 .S BGPX=BGPX+1
 .S ^ATXAX(BGPTX,21,BGPX,0)=+Y,$P(^ATXAX(BGPTX,21,0),U,3)=BGPX,$P(^(0),U,4)=BGPX,^ATXAX(BGPTX,21,"AA",+Y,BGPX)=""
 .Q
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 ;SSC
 S BGPDA=0 S BGPDA=$O(^ATXAX("B","BGP SSC ADA CODES",BGPDA))
 I BGPDA S DIK="^ATXAX(",DA=BGPDA D ^DIK  ;get rid of existing one
 W !,"Creating/Updating SSC ADA Codes Taxonomy..."
 S X="BGP SSC ADA CODES",DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING SSC ADA CODES TAX" Q
 S BGPTX=+Y,$P(^ATXAX(BGPTX,0),U,2)="BGP SSC ADA CODES",$P(^(0),U,5)=DUZ,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=174,$P(^(0),U,13)=0,$P(^(0),U,15)=9999999.31,^ATXAX(BGPTX,21,0)="^9002226.02101A^0^0"
 S BGPX=0
 F X=2930,2931 S DIC="^AUTTADA(",DIC(0)="M" D ^DIC K DIC,DA,DR,DIADD,DLAYGO,DQ,DI,D1,D0 I $P(Y,U)>0 D
 .S BGPX=BGPX+1
 .S ^ATXAX(BGPTX,21,BGPX,0)=+Y,$P(^ATXAX(BGPTX,21,0),U,3)=BGPX,$P(^(0),U,4)=BGPX,^ATXAX(BGPTX,21,"AA",+Y,BGPX)=""
 .Q
 S DA=BGPTX,DIK="^ATXAX(" D IX1^DIK
 Q
