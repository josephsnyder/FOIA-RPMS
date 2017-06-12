TIUSRVP ; SLC/JER - RPCs for CREATE & UPDATE ;02-Dec-2014 15:13;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1,7,19,28,47,89,104,100,115,109,167,1003,1007,113,112,175,157,1009,184,1010,239,1013**;Jun 20, 1997;Build 33
 ;IHS/ITSC/LJF 02/27/2003 added call for V note entry
 ;IHS/CIA/MGH 08/31/2005 added fix for visit info
 ;IHS/CIA/MGH Patch 9 added parameters to make historical visit
 ;IHS/CIA/MGH Patch 10 added lookup for GUI when visit not created
MAKE(SUCCESS,DFN,TITLE,VDT,VLOC,VSIT,TIUX,VSTR,SUPPRESS,NOASF) ; New Document
 ; SUCCESS = (by ref) TIU DOCUMENT # (PTR to 8925)
 ;         = 0^Explanatory message if no SUCCESS
 ; DFN     = Patient (#2)
 ; TITLE   = TIU Document Definition (#8925.1)
 ; [VDT]   = Date(/Time) of Visit
 ; [VLOC]  = Visit Location (HOSPITAL LOCATION)
 ; [VSIT]  = Visit file ien (#9000010)
 ; [VSTR]  = Visit string (i.e., VLOC;VDT;VTYPE)
 ; [NOASF] = if 1=Do Not Set ASAVE cross-reference
 ; TIUX    = (by ref) array containing field data and document body
 ;
 N TIU,TIUDA,LDT,NEWREC,CAT
 S SUCCESS=0,CAT=""
 ;IHS/MSC/MGH Patch 10 Check to see if a visit made in Vuecentric
 S EHRVST=$G(CIA("UID"))
 I $G(TIUX("VISIT"))="@" K TIUX("VISIT")
 I +$G(VSIT) D
 .S VSTR=$$VSTRBLD(+VSIT)
 .;IHS/CIA/MGH added set for visit connection on dictated notes
 .S TIUX("VISIT")=+VSIT   ;PATCH 1003
 ;I +$G(VSIT) S VSTR=$$VSTRBLD(+VSIT)
 ;End IHS mods
 I $L($G(VSTR)) D
 . S VDT=$S(+$G(VDT):+$G(VDT),1:$P(VSTR,";",2))
 . S LDT=$S(+$G(VDT):$$FMADD^XLFDT(VDT,"","",1),1:"")
 . S VLOC=$S(+$G(VLOC):+$G(VLOC),1:$P(VSTR,";"))
 . ; If note is for Ward Location, call MAIN^TIUMOVE
 . I $P($G(^SC(+VLOC,0)),U,3)="W" D MAIN^TIUMOVE(.TIU,DFN,"",VDT,LDT,1,"LAST",0,+VLOC) Q
 . ; Otherwise, call PATVADPT^TIULV
 . D PATVADPT^TIULV(.TIU,DFN,"",VSTR)
 ;IHS/MSC/MGH This is for R&S notes without a visit string
 I '+$G(VSIT),'$L($G(VSTR)),+$G(VDT),+$G(VLOC) D
 . S VDT=$G(VDT),LDT=$S(+$G(VDT):$$FMADD^XLFDT(VDT,"","",1),1:"")
 . ; If note is for Ward Location, call MAIN^TIUMOVE
 . I $P($G(^SC(+VLOC,0)),U,3)="W" D MAIN^TIUMOVE(.TIU,DFN,"",VDT,LDT,1,"LAST",0,+VLOC) Q
 . ; Otherwise, call MAIN^TIUVSIT
 . D MAIN^TIUVSIT(.TIU,DFN,"",VDT,LDT,"LAST",0,VLOC)
 ;IHS/MSC/MGH Patch 10 This is for EHR Notes with a visit string but no visit
 I '+$G(VSIT),$L($G(VSTR)),+$G(VDT),+$G(VLOC),+$G(EHRVST) D
 . S VDT=$G(VDT),LDT=$S(+$G(VDT):$$FMADD^XLFDT(VDT,"","",1),1:"")
 . ; If note is for Ward Location, call MAIN^TIUMOVE
 . I $P($G(^SC(+VLOC,0)),U,3)="W" D MAIN^TIUMOVE(.TIU,DFN,"",VDT,LDT,1,"LAST",0,+VLOC) Q
 . ; Otherwise, call MAIN^TIUVSIT
 . D MAIN^TIUVSIT(.TIU,DFN,"",VDT,LDT,"LAST",0,VLOC,"","",CAT)
 ;I '+$G(TIU("VSTR")) D
 ;IHS/MSC/MGH add date/time and location to call to make historical visit
 I '+$G(VSIT),+$G(VDT),+$G(VLOC),'+$G(EHRVST) D
 . D EVENT^TIUSRVP1(.TIU,DFN)
 I (+TIU("LOC")=0)&($P($G(^SC(+VLOC,0)),U,3)="W") D PATVADPT^TIULV(.TIU,DFN,"",VSTR)
 S TIU("INST")=$$DIVISION^TIULC1(+TIU("LOC"))
 I $S($D(TIU)'>9:1,+$G(DFN)'>0:1,1:0) S SUCCESS="0^"_$$EZBLD^DIALOG(89250001) Q
 ;
 S TIUDA=$$GETREC(DFN,.TIU,TITLE,.NEWREC)
 I +TIUDA'>0 S SUCCESS="0^"_$$EZBLD^DIALOG(89250002) Q
 S SUCCESS=+TIUDA
 D STUFREC^TIUSRVP1(+TIUDA,.TIUX,DFN,,TITLE,.TIU)
 S:'+$G(NOASF) ^TIU(8925,"ASAVE",DUZ,TIUDA)=""
 K ^TIU(8925,+TIUDA,"TEMP")
 M ^TIU(8925,+TIUDA,"TEMP")=TIUX("TEXT") K TIUX("TEXT")
 D SETXT0(TIUDA)
 D FILE(.SUCCESS,+TIUDA,.TIUX,+$G(SUPPRESS))
 I +SUCCESS'>0 D DIK^TIURB2(TIUDA) Q
 I +$O(^TIU(8925,+TIUDA,"TEMP",0)) D MERGTEXT^TIUEDI1(+TIUDA,.TIU)
 I +$G(TIU("STOP")) D DEFER^TIUVSIT(TIUDA,TIU("STOP")) I 1
 E  D QUE^TIUPXAP1 D VNOTE^BTIUPCC(TIUDA,$P(^TIU(8925,+TIUDA,0),U,3),DFN,"ADD") ;IHS/ITSC/LJF 02/27/2003 update V node
 ;E  D QUE^TIUPXAP1
 I '+$G(SUPPRESS) D
 . D RELEASE^TIUT(TIUDA,1)
 . D UPDTIRT^TIUDIRT(.TIU,TIUDA)
 K ^TIU(8925,+TIUDA,"TEMP")
 Q
VSTRBLD(VSIT) ; Given Visit ien, build Visit-Descriptor String
 N TIUY,VSIT0,VLOC,VDT,VSVCAT
 S VSIT0=$G(^AUPNVSIT(+VSIT,0)),VDT=+$P(VSIT0,U),VLOC=+$P(VSIT0,U,22)
 S VSVCAT=$P(VSIT0,U,7)
 S TIUY=VLOC_";"_VDT_";"_VSVCAT
 Q TIUY
SETXT0(TIUDA) ; Set root node of "TEMP" WP-field
 N TIUC,TIUI S (TIUC,TIUI)=0
 F  S TIUI=$O(^TIU(8925,TIUDA,"TEMP",TIUI)) Q:+TIUI'>0  D
 . S:$D(^TIU(8925,TIUDA,"TEMP",TIUI,0)) TIUC=TIUC+1
 S ^TIU(8925,TIUDA,"TEMP",0)="^^"_TIUC_U_TIUC_U_DT_"^^"
 Q
MAKEADD(TIUDADD,TIUDA,TIUX,SUPPRESS) ; Create addendum
 ; For backward compatibility
 ; Use MAKEADD^TIUSRVP2 now, please
 D MAKEADD^TIUSRVP2(.TIUDADD,TIUDA,.TIUX,+$G(SUPPRESS))
 Q
UPDATE(SUCCESS,TIUDA,TIUX,SUPPRESS) ; Update existing Document
 N TIU,TIUI,TIUC,TIUD0,TIUD12,TIUD14,TIUD15,TIUCPF,TITLE,PRFUNLNK,TIUY,TIUCC,TIUFLAG S TIUFLAG=0
 I $S(+$G(TIUDA)'>0:1,'$D(^TIU(8925,+TIUDA,0)):1,1:0) D  Q
 . S SUCCESS="0^ Cannot update a non-existent document..."
 I +$P($G(^TIU(8925,+TIUDA,0)),U,5)>6 D  Q
 . S SUCCESS="0^ TIU Document #"_TIUDA_" is already signed..."
 I $D(TIUX("TEXT")) D
 . K ^TIU(8925,+TIUDA,"TEMP")
 . M ^TIU(8925,+TIUDA,"TEMP")=TIUX("TEXT")
 . S (TIUC,TIUI)=0
 . F  S TIUI=$O(^TIU(8925,+TIUDA,"TEMP",TIUI)) Q:+TIUI'>0  D
 . . S TIUC=TIUC+1
 . I +TIUC>0 S ^TIU(8925,+TIUDA,"TEMP",0)="^^"_TIUC_U_TIUC_U_DT_"^^"
 . K TIUX("TEXT")
 I +$O(TIUX(""))'>0 S:+$G(SUPPRESS) SUCCESS=+TIUDA Q
 S TIUD0=$G(^TIU(8925,TIUDA,0)),TIUD12=$G(^(12)),TIUD14=$G(^(14)),TITLE=+TIUD0
 ;Set a flag to indicate whether or not a Title is a member of the
 ;Clinical Procedures Class (1=Yes and 0=No)
 S TIUCPF=+$$ISA^TIULX(TITLE,+$$CLASS^TIUCP)
 D SETCOS^TIUSRVP2(TIUDA,.TIUX,TIUD0,TIUD12)
 ; Consult association changed?  If so, rollback to Active status.    VM/RJT - *239
 S TIUCC=$P($G(TIUD14),"^",5)
 I +$G(TIUX("1405"))>0,+$G(TIUCC)>0,(+$G(TIUX("1405"))'=+TIUCC) D ROLLBACK^TIUCNSLT(TIUDA) S TIUFLAG=1
 ; Title changed? Refile DC
 I +$G(TIUX(.01))>0,(+$G(TIUX(.01))'=+TIUD0) D
 . S TIUX(.04)=$$DOCCLASS^TIULC1(+$G(TIUX(.01)))
 . S TIUY=0 D ISCNSLT^TIUCNSLT(.TIUY,TITLE)
 . I $G(TIUY),TIUFLAG=0 D ROLLBACK^TIUCNSLT(TIUDA) ;  if changed to Non-Consult title - VMP/RJT - *239
 . ; If change title from PRF to nonPRF, set flg to unlink note:
 . I $$ISPFTTL^TIUPRFL(TITLE),'$$ISPFTTL^TIUPRFL(+$G(TIUX(.01))) S PRFUNLNK=1
 D FILE(.SUCCESS,+TIUDA,.TIUX,+$G(SUPPRESS),TIUCPF)
 I +SUCCESS'>0 K ^TIU(8925,+TIUDA,"TEMP") Q
 I $G(PRFUNLNK) D UNLINK^TIUPRF1(TIUDA)
 D GETTIU^TIULD(.TIU,TIUDA)
 I $D(^TIU(8925,+TIUDA,"TEMP")) D
 . K ^TIU(8925,+TIUDA,"TEXT")
 . D MERGTEXT^TIUEDI1(+TIUDA,.TIU)
 . K ^TIU(8925,+TIUDA,"TEMP")
 . S:'+$G(SUCCESS) SUCCESS=+TIUDA
 ; If signed, re-file /ES/
 S TIUD15=$G(^TIU(8925,+TIUDA,15))
 I +TIUD15 D
 . N TIUBY,DR,DIE,DA,X,Y S TIUBY=$P(TIUD15,U,2) Q:+TIUBY'>0
 . S DR="1503///^S X=$$SIGNAME^TIULS("_TIUBY_");1504///^S X=$$SIGTITL^TIULS("_TIUBY_")"
 . S DA=TIUDA,DIE=8925 D ^DIE
 ; send alerts
 I '+$G(SUPPRESS) D
 . I +$P(TIUD0,U,5)<5,'$D(TIUX(.05)) D UPDSTAT(TIUDA,+$G(TIUD0))
 . D SEND^TIUALRT(TIUDA),SENDID^TIUALRT1(TIUDA):+$G(^TIU(8925,+TIUDA,21))
 . D UPDTIRT^TIUDIRT(.TIU,TIUDA)
 Q
SETCOS(TIUDA,TIUX,TIUD0,TIUD12) ; set cosig req
 ; For backward compatibility
 ; Use SETCOS^TIUSRVP2 now, please
 D SETCOS^TIUSRVP2(TIUDA,.TIUX,TIUD0,TIUD12)
 Q
UPDSTAT(DA,TITLE) ; Update status on commit
 N DR,DIE S DR=".05////"_$$STATUS^TIUSRVP1(DA,0,TITLE)
 I '+$P($G(^TIU(8925,DA,13)),U,4) S DR=DR_";1304////^S X=$$NOW^XLFDT"
 S DIE=8925
 D ^DIE
 Q
GETREC(DFN,TIU,TITLE,TIUNEW) ; Get/create document record
 N DA,DIC,DIE,DLAYGO,DR,X,Y,TIUDPRM,TIUFPRIV,TIUHIT,TIUSCAT
 S (TIUHIT,DA)=0,TIUFPRIV=1
 S (DIC,DLAYGO)=8925,DIC(0)="FL"
 S X=""""_"`"_+TITLE_"""" D ^DIC K DIC("S")
 I +Y'>0 Q Y_U_" Insufficient data to create a new record."
 S DA=+Y,TIUNEW=+$P(Y,U,3)
 N DIE,DR,TIUVISIT S DIE=8925
 S TIUVISIT=$S(+$G(TIU("VISIT")):+$G(TIU("VISIT")),1:"")
 S TIUSCAT=$S(+$L($P($G(TIU("CAT")),U)):$P($G(TIU("CAT")),U),+$L($P($G(TIU("VSTR")),";",3)):$P($G(TIU("VSTR")),";",3),1:"")
 S DR=".04////"_$$DOCCLASS^TIULC1(+$P(Y,U,2))_";.13////"_TIUSCAT_";1205////"_$P($G(TIU("LOC")),U)_";1211////"_$P($G(TIU("VLOC")),U)_";1212////"_$P($G(TIU("INST")),U)
 D ^DIE
 Q +$G(DA)
FILE(SUCCESS,TIUDA,TIUX,SUPPRESS,TIUCPF) ; Call FM Filer & commit
 N FDA,FDARR,IENS,FLAGS,TIUMSG,TIUCMMTX
 S IENS=""""_TIUDA_",""",FDARR="FDA(8925,"_IENS_")",FLAGS=""
 I +$G(TIUX(1202)) S TIUX(1204)=+$G(TIUX(1202))
 I +$G(TIUX(1209)) S TIUX(1208)=+$G(TIUX(1209))
 ;If the document is a member of the Clinical Procedures Class, set the
 ;Entered By field to the Author/Dictator field
 I $G(TIUCPF),+$G(TIUX(1202)) S TIUX(1302)=+$G(TIUX(1202))
 M @FDARR=TIUX
 D FILE^DIE(FLAGS,"FDA","TIUMSG") ; File record
 I $D(TIUMSG)>9 S SUCCESS=0_U_$G(TIUMSG("DIERR",1,"TEXT",1)) Q
 S SUCCESS=TIUDA
 I '+$G(SUPPRESS) D
 . N DA
 . S DA=TIUDA
 . S TIUCMMTX=$$COMMIT^TIULC1(+$G(^TIU(8925,+TIUDA,0)))
 . I TIUCMMTX]"" X TIUCMMTX
 . K ^TIU(8925,"ASAVE",DUZ,TIUDA)
 Q
SIGN(ERR,TIUDA,TIUX) ; API for /es/
 ; For backward compatibility
 ; Use SIGN^TIUSRVP2 now, please
 D SIGN^TIUSRVP2(.ERR,TIUDA,.TIUX)
 Q
DELETE(ERR,TIUDA,TIURSN,OVRRIDE) ; delete document
 N TIUDEL,TIUD0 S ERR=0
 I '+$G(OVRRIDE) D  Q:+$G(TIUDEL)'>0
 . S TIUDEL=$$CANDO^TIULP(TIUDA,"DELETE RECORD")
 . I TIUDEL'>0 S ERR="89250003^"_$$EZBLD^DIALOG(89250003)
 S TIUD0=$G(^TIU(8925,+TIUDA,0))
 I +$P(TIUD0,U,5)'<6 D  Q
 . S TIURSN=$G(TIURSN,"A")
 . D DELTEXT^TIURB2(TIUDA,TIURSN)
 D DIK^TIURB2(TIUDA)
 D DELAUDIT^TIUEDI1(TIUDA)
 Q
LOCK(ERR,TIUDA) ; Bid for lock on a TIU Document record
 L +^TIU(8925,+TIUDA):1 I  S ERR=0
 E  S ERR="1^ Another session has this record locked."
 Q
UNLOCK(ERR,TIUDA) ; Decrement Lock on a TIU Document record
 L -^TIU(8925,+TIUDA) S ERR=0
 Q
