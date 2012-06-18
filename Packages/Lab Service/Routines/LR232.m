LR232 ;DALOI/CKA - LR*5.2*232 PATCH ENVIRONMENT CHECK ROUTINE;31 -AUG-2001
 ;;5.2T8;LR;**1018**;Oct 27, 2004
 ;;5.2;LAB SERVICE;**232**;Sep 27,1994
EN ; Does not prevent loading of the transport global.
 ;Environment check is done only during the install.
 Q:'$D(XPDENV) 
 D BMES^XPDUTL($$CJ^XLFSTR("*** Environment check started ***",80))
 D CHECK
EXIT I $G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("Install Environment Check FAILED",IOM))
 I '$G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("Environment Check is Ok ---",IOM))
 K VER,RN,LN2
 Q
CHECK I $S('$G(IOM):1,'$G(IOSL):1,$G(U)'="^":1,1:0) D BMES^XPDUTL($$CJ^XLFSTR("Terminal Device is not defined",IOM)) S XPDQUIT=2
 I $S('$G(DUZ):1,$D(DUZ)[0:1,$D(DUZ(0))[0:1,1:0) D BMES^XPDUTL($$CJ^XLFSTR("Please Log in to set local DUZ... variables",80)) S XPDQUIT=2
 I '$$ACTIVE^XUSER($G(DUZ)) D BMES^XPDUTL($$CJ^XLFSTR("You are not a valid user on this system",80)) S XPDQUIT=2
 S VER=$$VERSION^XPDUTL("LR")
 I VER'>5.1 D BMES^XPDUTL($$CJ^XLFSTR("You must have LAB V5.2 Installed",IOM)) S XPDQUIT=2
 S VER=$$VERSION^XPDUTL("NLT")
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1018 ALPHA ONLY??
 ;I VER'=5.254 D BMES^XPDUTL($$CJ^XLFSTR("You must have NLT V5.254 Installed",IOM)) S XPDQUIT=2
 ;----- END IHS MODIFICATIONS
 Q
PRE ;Pre-install entry point
 Q:'$D(XPDNM)
 D PTRSAV ;Save pointer information
 N DIU,DIK,DA
 S DIU="^LAB(95.3,",DIU(0)="DST" D EN^DIU2
 K DIU
 S DIU="^LAB(95.31,",DIU(0)="DST" D EN^DIU2
 K DIU
 S DIU="^LAB(64.061,",DIU(0)="DST" D EN^DIU2
 K DIU
 S DIU="^LAB(64.2,",DIU(0)="DST" D EN^DIU2
 K DIU
 S DIU="^LAB(64.3,",DIU(0)="DST" D EN^DIU2
 K DIU
 S DIK="^DD(60,",DA=64.1,DA(1)=60 D ^DIK
 K DIK,DA,DIU
 K ^LAB(95.3),^LAB(95.31),^LAB(64.061),^LAB(64.2),^LAB(64.3)
 D BMES^XPDUTL($$CJ^XLFSTR("*** Preinstall completed ***",80))
 Q
POST ;
 Q
PTRSAV ;Save pointer values into XTMP("LR232" to repointed after install
 Q:$G(^XTMP("LR232",1))  ;indicates pointers already saved.
 D BMES^XPDUTL($$CJ^XLFSTR("** Saving Pointer Values **",80))
 N LRIEN,LRIENSUB,LRPTR,LRDTLB,LRNODE
 S ^XTMP("LR232",0)=$$FMADD^XLFDT(DT,30)_U_DT_U_"LR232 pointer save data"
61 ;Save data from LAB(61
 D BMES^XPDUTL($$CJ^XLFSTR(" Processing ^LAB(61, ",IOM))
 S LRIEN=0 F  S LRIEN=+$O(^LAB(61,LRIEN)) Q:LRIEN<1  I $P($G(^(LRIEN,0)),U,9) D
 . S LRPTR=$P($G(^LAB(61,LRIEN,0)),U,9) Q:'LRPTR
 . S ^XTMP("LR232",61,LRIEN,LRPTR)=$G(^LAB(64.061,LRPTR,0))
6205 ;Save data from LAB(62.05
 D BMES^XPDUTL($$CJ^XLFSTR(" Processing ^LAB(62.05, ",IOM))
 S LRIEN=0 F  S LRIEN=+$O(^LAB(62.05,LRIEN)) Q:LRIEN<.01  I $P($G(^(LRIEN,0)),U,5) D
 . S LRPTR=$P($G(^LAB(62.05,LRIEN,0)),U,5) Q:'LRPTR
 . S ^XTMP("LR232",62.05,LRIEN,LRPTR)=$G(^LAB(64.061,LRPTR,0))
6285 ;Save date from LAHM(62.85
 D BMES^XPDUTL($$CJ^XLFSTR(" Processing ^LAHM(62.85, ",IOM)) W !
 S LRDTLB=$$FMADD^XLFDT(DT,-120)
 S LRIEN=0 F  S LRIEN=+$O(^LAHM(62.85,LRIEN)) Q:LRIEN<1  I $P($G(^(LRIEN,0)),U,5) S LRNODE=^(0) D
 . I '(LRIEN#1000) W "*"
 . I $P(LRNODE,U,3)<LRDTLB Q
 . S LRPTR=$P($G(^LAHM(62.85,LRIEN,0)),U,5) Q:'LRPTR
 . S ^XTMP("LR232",62.85,LRIEN)=$G(^LAB(64.061,LRPTR,0))
696 ;Save data from LRO(69.6
 S LRDTLB=$$FMTHL7^XLFDT($$FMADD^XLFDT(DT,-120)) ;Only save the last three 3 months
 D BMES^XPDUTL($$CJ^XLFSTR(" Processing ^LRO(69.6, ",IOM)) W !
 S LRIEN=0 F  S LRIEN=+$O(^LRO(69.6,LRIEN)) Q:LRIEN<1   S LRNODE=$G(^(LRIEN,0)) D
 . I '(LRIEN#1000) W "*"
 . I +$P($P(LRNODE,U,14),"-",2)<LRDTLB Q
 . D
 . . S LRIENSUB=0
 . . F  S LRIENSUB=+$O(^LRO(69.6,LRIEN,2,LRIENSUB)) Q:LRIENSUB<1  D
 . . . Q:'$P($G(^LRO(69.6,LRIEN,2,LRIENSUB,0)),U,6)  S LRPTR=$P(^(0),U,6)
 . . . S ^XTMP("LR232",69.64,LRIEN,LRIENSUB,LRPTR)=$G(^LAB(64.061,LRPTR,0))
 . S LRPTR=$P($G(^LRO(69.6,LRIEN,0)),U,10) Q:'LRPTR
 . S ^XTMP("LR232",69.6,LRIEN,LRPTR)=$G(^LAB(64.061,LRPTR,0))
682 ;Save data from LRO(68.2,LRIEN,"SUF"
 ;Will repoint using SUF piece 3 (WKLD CODE SUFFIX) number .xxxx
 D BMES^XPDUTL($$CJ^XLFSTR(" Processing ^LRO(68.2 ",IOM))
 S LRIEN=0
 F  S LRIEN=+$O(^LRO(68.2,LRIEN)) Q:LRIEN<1  I $G(^(LRIEN,"SUF")) D
 . S LRPTR=$G(^LRO(68.2,LRIEN,"SUF"))
 . S ^XTMP("LR232",68.2,LRIEN,+LRPTR)=LRPTR
62801 ;Save data from LAB SHIPPING MANIFEST specimen multiple
 D BMES^XPDUTL($$CJ^XLFSTR(" Processing ^LAHM(62.8 ",IOM)) W !
 S LRIEN=0
 F  S LRIEN=+$O(^LAHM(62.8,LRIEN)) Q:LRIEN<1  D
 . I '(LRIEN#500) W "*"
 . S LRIENSUB=0
 . F  S LRIENSUB=+$O(^LAHM(62.8,LRIEN,10,LRIENSUB)) Q:LRIENSUB<1  D
 . . I $D(^LAHM(62.8,LRIEN,10,LRIENSUB,1))#2 S LRSTR=^(1) D S62801(1)
 . . I $D(^LAHM(62.8,LRIEN,10,LRIENSUB,2))#2 S LRSTR=^(2) D S62801(2)
 S ^XTMP("LR232",1)=DT
 Q
S62801(NODE) ; Resolve pointer to external
 K OUT,LRS
 S LRSTRP=$P(LRSTR,U,3) I LRSTRP D
 . S LRSTRP=LRSTRP_","
 . D GETS^DIQ(64.061,LRSTRP,.01,"E","OUT")
 . I $D(OUT(64.061,LRSTRP,.01,"E")) S $P(LRSTR,U,3)=+LRSTRP_"|"_OUT(64.061,LRSTRP,.01,"E"),LRS=1
 K OUT
 S LRSTRP=$S(NODE=2:$P(LRSTR,U,7),NODE=2:$P(LRSTR,U,12),1:$P(LRSTR,U,6)) I LRSTRP D
 . S LRSTRP=LRSTRP_","
 . D GETS^DIQ(64.061,LRSTRP,.01,"E","OUT")
 . I $D(OUT(64.061,LRSTRP,.01,"E")) D
 . . I NODE=1 S $P(LRSTR,U,6)=+LRSTRP_"|"_OUT(64.061,LRSTRP,.01,"E"),LRS=1
 . . I NODE=2 S $P(LRSTR,U,7)=+LRSTRP_"|"_OUT(64.061,LRSTRP,.01,"E"),LRS=1
 . . I NODE=2 S $P(LRSTR,U,12)=+LRSTRP_"|"_OUT(64.061,LRSTRP,.01,"E"),LRS=1
 I $G(LRS) S ^XTMP("LR232",62.8,LRIEN,LRIENSUB,NODE)=LRSTR
 Q
