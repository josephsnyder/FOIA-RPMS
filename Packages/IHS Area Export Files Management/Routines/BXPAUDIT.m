BXPAUDIT ;IHS/OIT/FBD - PARAMETER AUDIT UTILITY ;
 ;;1.0;IHS EXTENSIONS TO KERNEL TOOLKIT;;Dec 19, 2013;Build 12
 ;
 Q  ;NO TOP-LEVEL ENTRY
 ;
 ;XPAR Add/Change/Delete Parameters:
 ;  ENT: entity, required (internal or external form)
 ;  PAR: parameter, required (internal or external form)
 ; INST: instance, defaults to 1 (external or `internal)
 ;  VAL: value, defaults to "" (external or 'internal)
 ;
 ;
LOG(OP,PAR,ENT,INST,PREVAL,POSTVAL) ;PEP-CREATE AN AUDIT LOG ENTRY FOR A PARAMETER INSTANCE
 ;INPUT VARIABLES:
 ;      OP: operation type - (A)dd, (C)hange, (D)elete, (R)eplace, or (B)aseline
 ;     PAR: parameter, required (external form)
 ;     ENT: entity, required (internal form)
 ;    INST: instance (external or internal)
 ;  PREVAL: pre-change value of instance (external)
 ; POSTVAL: post-change value of instance
 ;BXPAOVER: override parameter audit validity check (used when creating baseline)
 ;
 Q:PREVAL=POSTVAL  ;NO SENSE IN CREATING AN AUDIT RECORD IF THE FIELD VALUE DIDN'T CHANGE
 N CURRSTAT,DO,DA,DIC,ENABLED,INAME,PARIEN,PNAME,QFL
 S ENABLED=1  ;'AUDIT ENABLED' FLAG
 S PNAME=$P(^XTV(8989.51,PAR,0),U,1)  ;EXTRACT TEXT NAME OF PARAMETER
 Q:'$D(^BXPA(9002026.02,"B",PNAME))&'$D(BXPAOVER)  ;AND QUIT IF IT'S NOT ON THE AUDIT LIST
 S:'$D(BXPAOVER) PARIEN=$O(^BXPA(9002026.02,"B",PNAME,""))  ;ALSO PULL UP THE PARAMETER RECORD,
 S:'$D(BXPAOVER) CURRSTAT=+$P(^BXPA(9002026.02,PARIEN,0),U,5)  ;CHECK ITS CURRENT AUDIT STATUS,
 Q:($G(CURRSTAT)'=ENABLED)&'$D(BXPAOVER)  ;AND QUIT IF AUDIT NOT CURRENTLY ENABLED
 S INAME=$$EXT^XPARDD(INST,PAR,"I")  ;PRINTABLE NAME OF INSTANCE
 S X=$$NOW^XLFDT()
 ;Check for entry previously done but no changes made
 S QFL=0
 I $D(^BXPA(9002026.01,"ABASE",PNAME,ENT,INAME,OP)) D
 .NEW IEN
 .S IEN=$O(^BXPA(9002026.01,"ABASE",PNAME,ENT,INAME,OP,""),-1) I IEN="" Q
 .I $P(^BXPA(9002026.01,IEN,0),U,8)=PREVAL,$P(^BXPA(9002026.01,IEN,0),U,9)=POSTVAL S QFL=1
 Q:QFL
 ;
 S DIC(0)="L",DLAYGO=9002026.01,DIC=9002026.01
 D FILE^DICN
 S DA=+Y
 NEW FILE,BXPAUPD,IEN
 S FILE=9002026.01,IEN=DA_","
 S BXPAUPD(FILE,IEN,1)=DUZ,BXPAUPD(FILE,IEN,3)=OP,BXPAUPD(FILE,IEN,5)=ENT,BXPAUPD(FILE,IEN,6)=INAME
 S BXPAUPD(FILE,IEN,2)=DUZ(2),BXPAUPD(FILE,IEN,4)=PNAME
 S:PREVAL]"" BXPAUPD(FILE,IEN,7)=PREVAL
 S:POSTVAL]"" BXPAUPD(FILE,IEN,8)=POSTVAL
 D FILE^DIE("","BXPAUPD","ERROR")
 Q
 ;
 ;
VAL(PAR,ENT,INST) ;GET VALUE FOR THE SPECIFIED PARAMETER INSTANCE
 N VAL
 S VAL=$G(^XTV(8989.5,"AC",PAR,ENT,INST))
 S:$L(VAL) VAL=$$EXT^XPARDD(VAL,PAR)
 Q VAL
 ;
 ;
PARADD ;ADD A NEW ENTRY TO THE AUDITED PARAMETER DEFINITIONS LIST
 ; 1. PERFORMS LOOKUP ON THE PARAMETER DEFINITIONS FILE (#8989.51)
 ; 2. CHECKS IF AN AUDIT CONTROL RECORD ALREADY EXISTS FOR THAT PARAMETER DEFINITION.
 ;    2a. IF SO, KICK IT - MODS TO EXISTING ENTRIES SHOULD GO THROUGH THE EDIT MODULE.
 ;    2b. IF NOT, CREATES A TEXT ENTRY CORRESPONDING TO THE NAME OF THE SELECTED
 ;        PARAMETER DEF IN PARAMETER AUDIT LIST FILE (#9002026.02) AND TIMESTAMP IT
 ;        AS AUDIT ENABLED.
 N DIC,DIR,DLAYGO,NAME,MSG,PTR
 F  D  Q:+Y'>0
 .S DIC="^XTV(8989.51,",DIC(0)="AEMQ"
 .S DIC("A")="Select the parameter to be audited: "
 .D ^DIC K DIC
 .Q:+Y'>0  ;EXIT IF NO SELECTION
 .S PTR=+Y
 .S NAME=$P(Y,U,2)  ;EXTRACT NAME FROM SELECTION
 .I $D(^BXPA(9002026.02,"B",NAME)) D  ;IF NAME ALREADY EXISTS IN AUDIT LIST,
 ..S MSG(1)=""
 ..S MSG(2)="An audit entry already exists for this parameter."
 ..S MSG(3)="Use the Edit function if you want to change the parameter's audit status."
 ..S MSG(4)=""
 ..D EN^DDIOL(.MSG) K MSG
 ..I 1  ;ENSURE $T (SYSTEM'S BOOLEAN FLAG) SET TO 'TRUE' BEFORE EXITING (MAY HAVE BEEN RESET IN EN^DDIOL CALL)
 .E  D  ;IF NAME DOES NOT ALREADY EXIST IN AUDIT LIST, CONFIRM IT.  IF CONFIRMED, ADD IT.
 ..S DIR(0)="YA",DIR("A")="Do you want to add this parameter to the audit list (Y/N)? ",DIR("B")="Y"
 ..D ^DIR I +Y=0 S Y=1 Q  ;IF ANSWER IS 'NO', RESET Y VALUE TO CONTINUE LOOPING
 ..K DA,DIC
 ..S DIC="^BXPA(9002026.02,",DIC(0)="ML",DLAYGO=9002026.02
 ..S DIC("DR")="3///`"_PTR
 ..S X=NAME
 ..D FILE^DICN K DIC
 ..S DA=+Y
 ..S MSG(1)=""
 ..S MSG(2)="Parameter "_NAME_" added to list of audited parameters."
 ..D EN^DDIOL(.MSG) K MSG
 ..D HIST(+Y,"ENABLED")  ;CREATE INITIAL HISTORY LOG ENTRY FOR THIS PARAMETER
 ..S UPD(9002026.02,DA_",",4)=1
 ..D FILE^DIE("","UPD","ERROR")
 ..S MSG(1)="Audit enabled for this parameter."
 ..S MSG(2)=""
 ..D EN^DDIOL(.MSG) K MSG
 ..;D PBASE(PTR)
 ..;S MSG(1)="Baseline established for this parameter."
 ..;D EN^DDIOL(.MSG) K MSG
 Q
 ;
HIST(PARIEN,STATUS) ;UPDATE AUDIT HISTORY LOG FOR A SPECIFIED PARAMETER AUDIT RECORD
 ;INPUT VARIABLES:
 ;   PARIEN = PARAMETER AUDIT LIST FILE (#9002026.02) IEN FOR RECORD BEING UPDATED
 ;   STATUS = AUDIT STATUS TO BE RECORDED ("ENABLE" OR DISABLE")
 ;
 N DO,DA,DIC
 D NOW^%DTC S X=%
 S DA(1)=PARIEN
 S DIC="^BXPA(9002026.02,"_DA(1)_",11,"
 S DIC(0)="L"
 S DIC("DR")="1///"_$S(STATUS="DISABLED":0,1:1)
 D FILE^DICN
 Q
 ;
 ;
PARCHG ;CHANGE THE AUDIT STATUS FOR AN ENTRY TO THE AUDITED PARAMETER DEFINITIONS LIST
 ;
 ; 1. LOOK UP AN ENTRY IN THE PARAMETER AUDIT LIST FILE (#9002026.02).
 ; 2. RETRIEVE AND DISPLAY THE CURRENT STATUS OF THE ENTRY.
 ; 3. IF USER CONFIRMS THE CHANGE, TOGGLE THE CURRENT STATUS OF THE ENTRY.
 ;
 N CURRSTAT,DA,DIC,DIR,MSG,NAME,NEWSTAT,PTR,STATP,Y,UPD
 S STATP(0)="DISABLED",STATP(1)="ENABLED"  ;PRINTABLE NAMES OF STATUS CODES
 S DIC="^BXPA(9002026.02,",DIC(0)="AEMQ"
 S DIC("A")="Select the parameter to be changed: "
 D ^DIC K DIC
 Q:+Y'>0  ;EXIT IF NO SELECTION
 S PTR=+Y
 S NAME=$P(Y,U,2)  ;EXTRACT NAME FROM SELECTION
 S CURRSTAT=+$P(^BXPA(9002026.02,PTR,0),U,5)  ;CURRENT STATUS
 S NEWSTAT=(CURRSTAT+1)#2  ;TOGGLE 0/1 VALUE OF CURRENT STATUS FOR NEW STATUS
 S MSG(1)=""
 S MSG(2)="Current audit status of "_NAME_" is "_STATP(CURRSTAT)_"."
 D EN^DDIOL(.MSG)
 S DIR(0)="YA",DIR("A")="Do you wish to change this status to "_STATP(NEWSTAT)_" (Y/N)? ",DIR("B")="Y"
 D ^DIR S DA=+Y
 I +Y D  ;IF ANSWER IS 'YES', CHANGE THE STATUS
 .D HIST(PTR,STATP(NEWSTAT))
 .S UPD(9002026.02,DA_",",4)=NEWSTAT
 .D FILE^DIE("","UPD","ERROR")
 Q
 ;
 ;
BASE ;ESTABLISH BASELINE AUDIT ENTRIES FOR ALL PARAMETERS
 N MSG,PAR
 S MSG(1)=""
 S MSG(2)="Initiating baseline generation procedure..."
 D EN^DDIOL(.MSG) K MSG
 K ^XTV(8989.5,"AC",0)  ;PRE-RUN CLEANUP OF POTENTIALLY CORRUPT XREF ENTRIES
 S PAR=""
 F  S PAR=$O(^XTV(8989.5,"AC",PAR)) Q:PAR=""  D  ;CYCLE THROUGH ALL PARAMETERS
 .Q:PAR=0
 .D PBASE(PAR)
 S MSG(1)="Baseline procedure complete."
 D EN^DDIOL(.MSG) K MSG
 Q
 ;
 ;
PBASE(PAR) ;ESTABLISH A BASELINE AUDIT ENTRY FOR ALL INSTANCES OF A SINGLE PARAMETER
 N ENT,INST
 S ENT=""
 F  S ENT=$O(^XTV(8989.5,"AC",PAR,ENT)) Q:ENT=""  D  ;CYCLE THROUGH ALL ENTITIES
 .S INST=""
 .F  S INST=$O(^XTV(8989.5,"AC",PAR,ENT,INST)) Q:INST=""  D  ;CYCLE THROUGH ALL INSTANCES
 ..D IBASE(PAR,ENT,INST)
 Q
 ;
 ;
IBASE(PAR,ENT,INST) ;ESTABLISH A BASELINE AUDIT ENTRY FOR A SINGLE PARAMETER INSTANCE
 N OP,PREVAL,POSTVAL,PNAME,INAME
 S OP="B",PREVAL=""
 S POSTVAL=^XTV(8989.5,"AC",PAR,ENT,INST)
 S BXPAOVER=1  ;SET OVERRIDE FLAG TO CREATE BASELINE RECORD EVEN IF PARAMETER ISN'T IN AUDIT LIST
 S PNAME=$P(^XTV(8989.51,PAR,0),U,1)
 S INAME=$$EXT^XPARDD(INST,PAR,"I")
 I '$D(^BXPA(9002026.01,"ABASE",PNAME,ENT,INAME,OP)) D  ;CREATE RECORD IF NOT ALREADY ON FILE
 .D LOG(OP,PAR,ENT,INST,PREVAL,POSTVAL)
 K BXPAOVER  ;CLEAR OVERRIDE FLAG
 Q
