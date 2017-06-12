ABMENVCK ;IHS/SD/SDR - ENVIRONMENT CHECKER ;   
 ;;2.6;IHS Third Party Billing;**1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20**;NOV 12, 2009;Build 317
 ;IHS/SD/SDR - 2.6*14 - updated checker to look for patches after 8 (meaning 9 thru 13)
 ;IHS/SD/SDR - 2.6*16 - Updated patches for patch 16
 ;IHS/SD/SDR - 2.6*17 - Updated to check for patch 16
 ;IHS/SD/SDR - 2.6*18 - Check for patch 17
 ;IHS/SD/SDR - 2.6*19 - Check for patch 18
 ;IHS/SD/SDR - 2.6*20 - Check for patch 19
 ;
 ;
 I '$G(DUZ) W !,"DUZ UNDEFINED OR 0." D SORRY(2) Q
 ;
 I '$L($G(DUZ(0))) W !,"DUZ(0) UNDEFINED OR NULL." D SORRY(2) Q
 ;
 S X=$P(^VA(200,DUZ,0),U)
 W !!,$$CJ^XLFSTR("Hello, "_$P(X,",",2)_" "_$P(X,","),IOM)
 W !!,$$CJ^XLFSTR("Checking Environment for "_$P($T(+2),";",4)_" V "_$P($T(+2),";",3)_" Patch "_$P($T(+2),";",5)_".",IOM),!
 ;
 S XPDQUIT=0
 ;
 I '$$VCHK("DI","22.0",2) S XPDQUIT=2  ;abm*2.6*2
 ;AUM*9.1*4 needed for new clinic code mapping
 S X=$$PATCH^XPDUTL("AUM*9.1*4")  ;abm*2.6*4
 I X'=1 W !,$$CJ^XLFSTR("AUM v9.1 Patch 4 NOT INSTALLED",IOM) S XPDQUIT=2  ;abm*2.6*4
 I X=1 W !,$$CJ^XLFSTR("AUM v9.1 Patch 4 installed.",IOM)  ;abm*2.6*4
 I '$$VCHK("AUM","10.1",2) S XPDQUIT=2  ;abm*2.6*2
 ;
 I '$$VCHK("ABM","2.6",2) S XPDQUIT=2  ;abm*2.6*1
 ;start old code abm*2.6*7
 ;;start new code abm*2.6*2
 ;K X
 ;S X=$$PATCH^XPDUTL("ABM*2.6*4")
 ;I X'=1 W !,$$CJ^XLFSTR("ABM v2.6 Patch 4 NOT INSTALLED",IOM) S XPDQUIT=2
 ;I X=1 W !,$$CJ^XLFSTR("ABM v2.6 Patch 4 installed.",IOM)
 ;;end new code abm*2.6*2
 ;end old code start new code abm*2.6*7
 N X,ABM,I
 S ABM=1
 ;F I=1:1:6 D  ;abm*2.6*9
 ;F I=1:1:8 D  ;abm*2.6*9  ;ABM*2.6*14
 ;F I=1:1:13 D  ;abm*2.6*14  ;abm*2.6*15
 ;F I=1:1:14 D  ;abm*2.6*14  ;abm*2.6*15  ;abm*2.6*17
 ;F I=1:1:16 D  ;abm*2.6*17  ;abm*2.6*18
 ;F I=1:1:18 D  ;abm*2.6*17  ;abm*2.6*19
 F I=1:1:19 D  ;abm*2.6*17  ;abm*2.6*18
 .S X=$$PATCH^XPDUTL("ABM*2.6*"_I)
 .I X'=1 S ABM=0 W !,$$CJ^XLFSTR("Need Third Party Billing v2.6 Patch "_I_"..... "_$S(ABM=0:"NOT ",1:"")_"Present",IOM)
 I ABM=0 S XPDQUIT=2
 ;end new code abm*2.6*7
 ;
 I '$$VCHK("AUT","98.1",2) S XPDQUIT=2
 ;
 S X=$$LAST^ABMENVCK("IHS DICTIONARIES (POINTERS)","98.1")
 I $P(X,U,1)'=14&($P(X,U,1)'>14) W !,$$CJ^XLFSTR("AUT v98.1 Patch 14 NOT INSTALLED",IOM) S XPDQUIT=2
 ;
 I '$$VCHK("XU","8.0",2) S XPDQUIT=2
 K X
 S X=$$PATCH^XPDUTL("XU*8.0*1013")
 I X'=1 W !,$$CJ^XLFSTR("KERNEL v8.0 Patch 1013 NOT INSTALLED",IOM) S XPDQUIT=2
 I X=1 W !,$$CJ^XLFSTR("XU Patch 1013 installed.",IOM)
 K X
 S X=$$PATCH^XPDUTL("XU*8.0*1014")
 I X'=1 W !,$$CJ^XLFSTR("KERNEL v8.0 Patch 1014 NOT INSTALLED",IOM) S XPDQUIT=2
 I X=1 W !,$$CJ^XLFSTR("XU Patch 1014 installed.",IOM)
 ;
 ;start new code abm*2.6*10
 N X,ABM,I
 S ABM=1
 F I=1:1:3 D
 .S X=$$PATCH^XPDUTL("BCSV*1.0*"_I)
 .I X'=1 S ABM=0 W !,$$CJ^XLFSTR("Need BCSV IHS Code Set Versioning v1.0 Patch "_I_"..... "_$S(ABM=0:"NOT ",1:"")_"Present",IOM)
 I ABM=0 S XPDQUIT=2
 ;end new code abm*2.6*10
 ;
 NEW DA,DIC
 S X="ABM",DIC="^DIC(9.4,",DIC(0)="",D="C"
 D IX^DIC
 I Y<0,$D(^DIC(9.4,"C","ABM")) D  S XPDQUIT=2
 .W !!,*7,*7,$$CJ^XLFSTR("You Have More Than One Entry In The",IOM),!,$$CJ^XLFSTR("PACKAGE File with an ""ABM"" prefix.",IOM)
 .W !,$$CJ^XLFSTR("One entry needs to be deleted.",IOM)
 .W !,$$CJ^XLFSTR("FIX IT! Before Proceeding.",IOM),!!,*7,*7,*7
 .Q
 ;
 I $G(XPDENV)=1 D
 .; The following line prevents the "Disable Options..." and "Move
 .; Routines..." questions from being asked during the install.
 .S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 .D OPTSAV("ABMMENU")
 .Q
 ;
 I XPDQUIT D SORRY(XPDQUIT) Q
 ;
 W !!,$$CJ^XLFSTR("ENVIRONMENT OK.",IOM)
 ;
 I '$$DIR^XBDIR("E","","","","","",1) D SORRY(2) Q
 Q
 ;
SORRY(X) ;
 KILL DIFQ
 S XPDQUIT=X
 W:'$D(ZTQUEUED) *7,!,$$CJ^XLFSTR("Sorry....",IOM),$$DIR^XBDIR("E","Press RETURN")
 Q
 ;
VCHK(ABMPRE,ABMVER,ABMQUIT) ; Check versions needed.
 ;  
 NEW ABMV
 S ABMV=$$VERSION^XPDUTL(ABMPRE)
 W !,$$CJ^XLFSTR("Need at least "_ABMPRE_" v "_ABMVER_"....."_ABMPRE_" v "_ABMV_" Present",IOM)
 I ABMV<ABMVER W *7,!,$$CJ^XLFSTR("^^^^**NEEDS FIXED**^^^^",IOM) Q 0
 Q 1
 ;
OPTSAV(ABMM) ;
 D BMES^XPDUTL("Saving the configuration of option '"_ABMM_"'...")
 I $D(^XTMP("ABMENVCK",7.2,"OPTSAV",ABMM)) D BMES^XPDUTL("NOT SAVED.  Option '"_ABMM_"' has previously been saved.") Q
 I '$D(^XTMP("ABMENVCK")) S ^XTMP("ABMENVCK",0)=$$FMADD^XLFDT(DT,30)_U_DT_U_"ABMENVCK - SAVE OPTION CONFIGURATIONS."
 NEW I,A
 S I=$O(^DIC(19,"B",ABMM,0))
 I 'I D BMES^XPDUTL("NOT SAVED.  Option '"_ABMM_"' not found in OPTION file.") Q
 S A=0
 F  S A=$O(^DIC(19,I,10,A)) Q:'A  S ^XTMP("ABMENVCK",7.2,"OPTSAV",ABMM,A)=$P(^DIC(19,+^DIC(19,I,10,A,0),0),U,1)_U_$P(^DIC(19,I,10,A,0),U,2,3)
 Q
 ;
INSTALLD(ABMINSTL) ;EP - Determine if patch ABMINSTL was installed, where ABMINSTL is
 ; the name of the INSTALL.  E.g "ABM*2.5*6".
 ;;^DIC(9.4,D0,22,D1,PAH,D2,0)=
 ;;(#.01) PATCH APPLICATION HISTORY [1F] ^ (#.02)DATE APPLIED [2D] ^ (#.03) APPLIED BY [3P] ^ 
 NEW DIC,X,Y
 S X=$P(ABMINSTL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 Q 0
 S DIC=DIC_+Y_",22,",X=$P(ABMINSTL,"*",2)
 D ^DIC
 I Y<1 Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(ABMINSTL,"*",3)
 D ^DIC
 Q $S(Y<1:0,1:1)
 ;
LAST(PKG,VER) ;EP - returns last patch applied for a Package, PATCH^DATE
 ;        Patch includes Seq # if Released
 N PKGIEN,VERIEN,LATEST,PATCH,SUBIEN
 I $G(VER)="" S VER=$$VERSION^XPDUTL(PKG) Q:'VER -1
 S PKGIEN=$O(^DIC(9.4,"B",PKG,"")) Q:'PKGIEN -1
 S VERIEN=$O(^DIC(9.4,PKGIEN,22,"B",VER,"")) Q:'VERIEN -1
 S LATEST=-1,PATCH=-1,SUBIEN=0
 F  S SUBIEN=$O(^DIC(9.4,PKGIEN,22,VERIEN,"PAH",SUBIEN)) Q:SUBIEN'>0  D
 . I $P(^DIC(9.4,PKGIEN,22,VERIEN,"PAH",SUBIEN,0),U,2)>LATEST S LATEST=$P(^(0),U,2),PATCH=$P(^(0),U)
 . I $P(^DIC(9.4,PKGIEN,22,VERIEN,"PAH",SUBIEN,0),U,2)=LATEST,$P(^(0),U)>PATCH S PATCH=$P(^(0),U)
 Q PATCH_U_LATEST
