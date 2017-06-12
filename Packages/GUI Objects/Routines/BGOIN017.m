BGOIN017 ; IHS/MSC/PLS - BGO*1.1*17 ;18-Nov-2015 11:59;PLS
 ;;1.1;BGO COMPONENTS;**17**;Mar 20, 2007
EC Q
 ; Preinit
PRE ;
 Q
 ; Postinit
POST ;
 ; Register RPCs
 D REGNMSP^CIAURPC("BGO","CIAV VUECENTRIC")
 ; Update BGO component versions
 N VER,FDA,PID,IEN,X
 D BMES^XPDUTL("Updating version numbers...")
 F VER=0:1 S X=$P($T(VER+VER),";;",2) Q:'$L(X)  D
 .S PID=$$PRGID^CIAVMCFG($P(X,";"))
 .S:PID FDA(19930.2,PID_",",2)=$P(X,";",2),FDA(19930.2,PID_",",7)=$P(X,";",3)
 D:$D(FDA) FILE^DIE(,"FDA")
 D UPDCHM
 Q
 ;
UPDCHM ;EP-
 N CHM,PID
 F CHM=0:1 S X=$P($T(CHM+CHM),";;",2) Q:'$L(X)  D
 .S PID=$$PRGID^CIAVMCFG($P(X,";"))
 .D AECHM(PID,$P(X,";",2,99))
 W !!
 Q
UPDBUSA ;EP-
 N RPC,RPCIEN,FDA,VAL
 S VAL="S X=$P(X,U)"
 F RPC=0:1 S X=$P($T(BUSARPC+RPC),";;",2) Q:'$L(X)  D
 .S RPCIEN=$$FIND1^DIC(9002319.03,"","MX",X)
 .Q:'RPCIEN
 .S FDA(9002319.03,RPCIEN_",",2.02)=VAL
 I $D(FDA) D
 .D FILE^DIE(,"FDA")
 Q
PARS ;Store system levels of new parameter
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",1,"DISEASE PROCESS")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",2,"NUTRITION")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",3,"EXERCISE")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",4,"LIFESTYLE ADAPTATION")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",5,"MEDICATIONS")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",6,"PREVENTION")
 Q
PARS1 ;EP - Cleanup old parameter values for location
 N PAR,ENT,ERR
 S PAR="" S PAR=$O(^XTV(8989.51,"B","BGO PROBLEM EDUCATION",PAR))
 Q:'+PAR
 S ENT="" F  S ENT=$O(^XTV(8989.5,"AC",PAR,ENT)) Q:ENT=""  D
 .Q:$P(ENT,";",2)'="SC("
 .S ERR=0
 .D NDEL^XPAR(ENT,PAR,.ERR)
 N LIEN
 S LIEN="" S LIEN=$O(^XTV(8989.51,PAR,30,"B",100,LIEN))
 Q:LIEN=""
 S DA(1)=PAR,DA=LIEN
 S DIK="^XTV(8989.51,PAR,30,"
 D ^DIK
 Q
 ; Set DISABLED field of OBJ to VAL
DISABLED(OBJ,VAL) ;
 N PID,FDA
 S VAL=$G(VAL,0)
 S PID=$$PRGID^CIAVMCFG($G(OBJ))
 Q:'PID
 S FDA(19930.2,PID_",",13)=VAL
 D FILE^DIE(,"FDA")
 Q
PICK ;Install the national pick lists
 D UPDATE^BGOSNLK
 Q
 N LP,NAME,SNO,BSTS,RET
 F LP=0:1 S NAME=$P($T(LIST+LP),";;",2) Q:'$L(NAME)  D
 .S BSTS=$P(NAME,"^",1)
 .S SNO=$P(NAME,"^",2)
 .D IMPORT^BGOSNLK(.RET,BSTS,SNO)
 Q
 ;National pick lists
LIST ;;PICK ABNORMAL FINDINGS^ABNORMAL FINDINGS
 ;;PICK CQM Problems^CQM PROBLEMS
 ;;PICK Case Management^CASE MANAGEMENT
 ;;PICK Diabetic Retinopathy^DIABETIC RETINOPATHY
 ;;PICK Eye General^EYE GENERAL
 ;;PICK Immunizations^IMMUNIZATIONS
 ;;PICK NIST Problems^NIST PROBLEMS
 ;;PICK Nutrition^NUTRITION
 ;;PICK Prenatal - Care^PRENATAL CARE
 ;;PICK Prenatal - Problem Fetus^PRENATAL PROBLEM FETUS
 ;;PICK Prenatal - Problem Pregnancy^PRENATAL PROBLEM PREGNANCY
 ;;PICK Prenatal - Risk^PRENATAL RISK
 ;;PICK Public Health Nursing^PUBLIC HEALTH NURSING
 ;;PICK Womens Health^WOMENS HEALTH
 ;;
AECHM(PID,VAL) ;EP-
 N LN,FN,IDX,TXT,ARY,CNT,IENS
 S FN=$P(VAL,";"),CNT=0
 S LN=0 F  S LN=$O(^CIAVOBJ(19930.2,PID,6,LN)) Q:'LN  D  Q:$G(IDX)
 .S TXT=^CIAVOBJ(19930.2,PID,6,LN,0)
 .S ARY(LN,0)=TXT,CNT=CNT+1
 .I $$UP^XLFSTR(TXT)[$$UP^XLFSTR($P(VAL,";")) S IDX=LN
 I $G(IDX) D
 .S ^CIAVOBJ(19930.2,PID,6,IDX,0)=VAL
 E  D
 .S ARY($S('CNT:1,1:CNT+1),0)=VAL
 .S IENS=PID_","
 .S FDA(19930.2,IENS,10)="ARY"
 .D FILE^DIE(,"FDA")
 Q
 ;
CLNMNU ;
 ; Remove option from menu
 N OPTION,MENU,DA,DIK,PAR,ERR,X
 S (OPTION,MENU)=""
 S OPTION="BGO IMM STOP ADDING CPT CODES"
 S MENU="BGOIMM MAIN"
 S X=$$DELETE^XPDMENU(MENU,OPTION)
 Q:'+X
 ;Inactivate the option
 D OUT^XPDMENU(OPTION,"No longer used")
 ;Clean out the parameter
 S PAR=""
 S PAR=$O(^XTV(8989.51,"B","BGO IMM STOP ADDING CPT CODES",PAR))
 Q:'+PAR
 S ERR=0
 D NDEL^XPAR("USR",PAR,.ERR)
 Q:ERR>0
 D NDEL^XPAR("DIV",PAR,.ERR)
 Q:ERR>0
 D NDEL^XPAR("PKG",PAR,.ERR)
 Q:ERR>0
 ;Delete the parameter
 S DA=PAR,DIK="^XTV(8989.51," D ^DIK
 Q
VER ;;BEHIPL.IPL;1.1.0.21636;65481D3F352F3533FDD722AF68443D42
 ;;IHSBGOSKINTEST.IHSBGOSK;1.2.0.170;D5B409EEFF438F3F732B8E9C5BA633FF
 ;;IHSBGOSUPERBILL.BGOSUPERBILL;1.1.0.53;63353E49CC71CF4F0141871D2EDB644D
CHM ;;
 ;;
BUSARPC ;;BGOCC SET
 ;;
