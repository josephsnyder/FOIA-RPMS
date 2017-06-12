BWPROC ;IHS/ANMC/MWR/CIA - BW ADD/EDIT BW PROCEDURE;23-Jan-2009 10:35;DU
 ;;2.0;WOMEN'S HEALTH;**8,9,11,12,13**;APR 19, 1996;Build 9
 ;;* MICHAEL REMILLARD, DDS * ALASKA NATIVE MEDICAL CENTER *
 ;;  CALLED BY VARIOUS OPTIONS TO ADD/EDIT PROCEDURES.
 ;
 ;
ADDNEW ;EP
 ;---> CALLED BY OPTION: "BW ADD A NEW PROCEDURE".
 D SETVARS^BWUTL5 S BWPOP1=0
 N DA,DIC,DIE,Y
 F  D  Q:BWPOP1
 .D NEW
 .Q:BWPOP
 .Q:'$G(DA)
 .D EDIT2^BWPROC1(DA,.BWPOP)
 .Q:BWPOP
 .D FOLLOWUP^BWPROC1(DA)
 D EXIT
 Q
 ;
EXIT ;EP
 D KILLALL^BWUTL8
 Q
 ;
 ;
NEW ;EP
 ;---> SELECT A PATIENT.
 D SETVARS^BWUTL5 K DIC
 D TITLE^BWUTL5("ADD A NEW PROCEDURE")
NEWNT ;EP
 ;---> ENTER NEW WITHOUT A TITLE (ALLOWS OTHER TITLES, E.G., HISTORICAL)
 ;---> LOOKUP AND SELECT PATIENT FROM BW PATIENT FILE.
 D PATLKUP^BWUTL8(.Y,"ADD")
 I Y<0 S (BWPOP,BWPOP1)=1 Q
 S BWDFN=+Y
 ;
NEW1 ;EP
 ;---> ADD A NEW PROCEDURE.
 ;---> PATIENT SELECTED ALREADY BUT NOT PROCEDURE.
 ;---> REQUIRED VARIABLE: BWDFN
 ;
 ;---> NOW SELECT PROCEDURE TYPE FROM BW PROCEDURE TYPE FILE.
 N A,BWPCDN,S
 S A="   Select PROCEDURE: "
 ;---> SCREEN: ACTIVE FIELD CAN BE "YES" OR NULL, BUT NOT "NO".
 ; Wise Woman and Mammography Project procedures are not available using this function.
 S S="I (Y'=39&(Y'=44))&($P($G(^BWSITE(DUZ(2),Y)),U)'=0)"
 D DIC^BWFMAN(9002086.2,"QEMA",.Y,A,"",S,"",.BWPOP)
 Q:Y<0
 ;---> BWPCDN=IEN OF PROCEDURE TYPE, FILE 9002086.2.
 S BWPCDN=+Y
 ;
 ;---> IF IT'S A UNILATERAL MAMMOGRAM, PROMPT FOR LEFT OR RIGHT.
 S BWLFRT=""
 I BWPCDN=26 D  I $D(DIRUT) S BWPOP=1 Q
 .N DIR
 .S DIR("?")="   Select LEFT or RIGHT for this Unilateral Mammogram."
 .S DIR(0)="SAM^l:LEFT;r:RIGHT",DIR("A")="   LEFT OR RIGHT: "
 .D ^DIR K DIR
 .Q:$D(DIRUT)
 .S BWLFRT=Y
 ;
 ; If procedure is a Colposcopy (BX or Impression), or HPV Screen prompt for PAP that initiated it.
 S BWPPAP=""
 I BWPCDN=2!(BWPCDN=37)!(BWPCDN=40) D  Q:BWPOP
 .W !!?3,"Select the PAP Smear that initiated this "_$S(BWPCDN=40:"HPV Screening.",1:"Colposcopy.")
 .N A,S
 .S DIC("?",1)="If a previous abnormal PAP Smear was the reason for"
 .S DIC("?")="this Colposcopy or HPV Screening, enter the Accession# of that PAP here."
 .S A="   PAP Smear: ",S="D PAPSCRN^BWUTL2"
 .D DIC^BWFMAN(9002086.1,"QEMA",.Y,A,"",S,"",.BWPOP)
 .Q:Y<0
 .;---> BWPPAP=IEN OF PREVIOUS PAP IN BW PROCEDURE FILE 9002086.1.
 .S BWPPAP=+Y
 ;
 ;---> ASK DATE, CHECK FOR DUPLICATE PROCEDURE ON SAME DATE.
 D DATECHK Q:BWPOP
 D NEW2(BWDFN,BWPCDN,BWPCDT,"",BWPPAP,.DA,.BWERROR)
 Q
 ;
NEW2(DFN,PCDIEN,DATE,DRSTRG,PREVPAP,DA,ERROR) ;EP
 ;---> ADD A NEW PROCEDURE.
 ;---> PATIENT AND PROCEDURE ALREADY SELECTED.
 ;---> NOW GENERATE ACCESSION# FOR BW PROCEDURE FILE ENTRY.
 ;---> REQUIRED VARIABLES: DFN=IEN IN BW PATIENT FILE
 ;--->                     PCDIEN=IEN OF PROCEDURE TYPE (#9002086.2).
 ;
 S X=$$ACCSSN^BWUTL5(PCDIEN) N DIC
 I X']"" D  Q
 .W !!?5,*7,"UNABLE TO GENERATE ACCESSION#. CONTACT YOUR SITE MANAGER."
 .S ERROR=-1 D DIRZ^BWUTL3
 ;
 I $G(DRSTRG)']"" D
 .;---> DEFAULTS: DATE OF PROCURE IS TODAY, STATUS IS OPEN.
 .S DRSTRG=".02////"_DFN_";.04////"_PCDIEN
 .S DRSTRG=DRSTRG_";.09///"_$S($D(BWLFRT):BWLFRT,1:"")_";.12///"_DATE
 .;---> NEXT LINE FLAGS THIS PROCEDURE FOR CDC EXPORT IF NECESSARY.
 .;---> * !NOT CURRENTLY USED, SAVE IN CASE IMS SWITCHES BACK.
 .;--->    FOR NOW THEY WANT ALL PROCEDURES EXPORTED EACH TIME.
 .;S DRSTRG=DRSTRG_";.14///o;.17////"_$$CDCEXP^BWUTL5(PCDIEN,DUZ(2))
 .S DRSTRG=DRSTRG_";.14///o"
 .S DRSTRG=DRSTRG_";.18////"_DUZ_";.19///T;.3////"_$G(PREVPAP)
 .S DRSTRG=DRSTRG_";.34////"_$G(DUZ(2))
 .; Stuff default specimen type if procedure is a PAP Smear
 .S:PCDIEN=1 DRSTRG=DRSTRG_";.302////"_$$PAPST(DATE)
 ;
 D FILE^BWFMAN(9002086.1,DRSTRG,"ML",X,9002086,.Y)
 ;---> IF Y<0, CHECK PERMISSIONS.
 I Y<0 D  Q
 .S ERROR=Y W !?5,*7,"UNABLE TO CREATE NEW PROCEDURE."
 .D DIRZ^BWUTL3 S BWPOP=1
 S DA=+Y
 Q
 ;
 ;
EDIT ;EP
 ;---> CALLED BY OPTION: "BW EDIT PROCEDURE".
 ;---> EDIT AN EXISTING PROCEDURE.
 D TITLE^BWUTL5("EDIT A PROCEDURE")
 D LKUPPCD(.Y)
 Q:Y<0
 ;---> DA=IEN OF PROCEDURE IN PROCEDURE FILE 9002086.1.
 S DA=+Y
 D EDIT2^BWPROC1(DA,.BWPOP) Q:BWPOP!($D(BWNOFOL))
 D FOLLOWUP^BWPROC1(DA)
 D EXIT
 Q
 ;
 ;
HISTORIC ;EP
 ;---> CALLED BY OPTION: "BW ADD AN HISTORICAL PROCEDURE".
 ;---> ADD HISTORICAL PROCEDURES (NO PROVIDER, WARD/CLINIC, FACILITY).
 D SETVARS^BWUTL5 S BWPOP1=0 N DA,DIE,Y
 F  D  Q:BWPOP1
 .D TITLE^BWUTL5("ENTER HISTORICAL DATA")
 .D NEWNT W !
 .Q:(BWPOP!('$G(DA)))
 .S BWPN=$P(^BWPCD(DA,0),U,4)
 .S DR=".05;.08;.1;.14////c"
 .D DIE^BWFMAN(9002086.1,DR,DA,.BWPOP)
 D EXIT
 Q
 ;
 ;
CDCUPDT(DA) ;EP
 ;---> WHEN A RECORD IS EXPORTED, UPDATE CDC EXPORT DATE AND STATUS.
 ;---> DA=IEN IN BW PROCEDURE FILE.
 Q:'$G(DA)
 ;---> * !!FLAG NOT CURRENLY DELETED.  RETAINED IN CASE IMS CHANGES.
 ;S DR=".16////"_DT_";.17////@"
 S DR=".16////"_DT
 D DIE^BWFMAN(9002086.1,DR,DA)
 Q
 ;
 ;
LABEDIT ;EP
 ;---> CALLED BY OPTION: "BW LAB EDIT PROCEDURE".
 S BWNOFOL=1 D EDIT,EXIT
 Q
 ;
 ;
ADDCBE(DFN,BWPAPDA) ;EP
 ;---> ADD CBE (CLINICAL BREAST EXAM), FROM PROCEDURE FOLLOW-UP MENU.
 ;---> REQUIRED VARIABLE: DFN=IEN IN BW PATIENT FILE.
 ;---> NOTE: PROCEDURE TYPE CBE HAS IEN=27 IN ^BWPN (#9002086.2).
 N BWPCDN,BWPCDT,BWTITLE,DA
 S BWPCDN=27
 W !!?3,"Enter the date on which this Breast Exam was performed."
 D DATECHK Q:BWPOP
 D NEW2(DFN,27,BWPCDT,"","",.DA,.BWERROR)
 Q:$G(BWERROR)<0  D EDIT2^BWPROC1(DA)
 ;
 ;---> THE REMAINDER OF THIS CALL IS PURELY FOR CDC PURPOSES.
 ;---> AT THE REQUEST OF CDC/IMS, CBE'S ADDED FROM THE PROCEDURE
 ;---> FOLLOW-UP MENU FOR A PAP, SHOULD BE STORED (AND EXPORTED) WITH
 ;---> THE PAP.
 ;---> QUIT IF THE PROCEDURE WAS NOT A PAP.
 Q:'+BWPAPDA  Q:$D(^BWPCD(BWPAPDA,0))
 Q:$P(^BWPCD(BWPAPDA,0),U,4)'=1
 ;---> QUIT IF NOT EXPORTING TO CDC.
 Q:'$$CDC^BWUTL5(DUZ(2))
 D ADDCBE1(DA,BWPAPDA)
 ;---> STORE IEN OF PAP INTO WHICH THIS CBE WAS STUFFED.
 D DIE^BWFMAN(9002086.1,"2.36////"_BWPAPDA,DA)
 Q
 ;
ADDCBE1(BWCBEDA,BWPAPDA) ;EP
 ;---> THIS CALL IS PURELY FOR CDC PURPOSES.
 ;---> STORE RESULT AND DATE OF THIS CBE IN A PAP (IF THE CBE WAS
 ;---> ENTERED FROM THE PROCEDURE FOLLOW-UP MENU FOR A PAP).
 Q:'$G(BWCBEDA)  Q:'$G(BWPAPDA)
 N BWDT,BWDX,DR,Y
 ;---> SET Y=ZERO NODE OF THE CBE.
 S Y=^BWPCD(BWCBEDA,0)
 ;---> GET RESULT OF THIS CBE.
 S BWDX=$P(Y,U,5),BWDT=$P(Y,U,12)
 ;---> IF RESULT IS "ERROR/DISREGARD", DELETE CBE FIELDS IN PAP.
 S:BWDX=8 (BWDT,BWDX)="@"
 ;---> GET CDC EQUIVALENT CBE RESULT/DIAGNOSIS.
 S BWDX=$S(BWDX:$P(^BWDIAG(BWDX,0),U,27),1:"@")
 ;---> STUFF CBE RESULT AND DATE UNDER THIS PAP (PER IMS/CDC REQUEST).
 S DR="2.32////"_BWDX_";2.33////"_BWDT
 D DIE^BWFMAN(9002086.1,DR,BWPAPDA,"",1)
 Q
 ;
 ;
RADMOD(DA,MSG) ;EP
 ;---> MODIFY A PROCEDURE THAT WAS IMPORTED FROM IHS RADIOLOGY AND
 ;---> HAS BEEN CHANGED.
 ;---> DA=IEN OF PROCEDURE IN BW PROCEDURE FILE #9002086.1.
 ;---> MSG=MESSAGE TO BE ADDED TO CLINICAL HISTORY.
 Q:'$G(DA)
 S DR=".13////"_DT_";.14////o;3.01////"_$G(MSG)
 D DIE^BWFMAN(9002086.1,DR,DA,.BWPOP)
 Q
 ;
 ;
LKUPPCD(Y) ;EP
 ;---> LOOKUP A PROCEDURE.
 N A,SCRN
 D SETVARS^BWUTL5
 S A="Select ACCESSION# or PATIENT NAME: "
 S SCRN="I ""^39^44^""'[$P(^(0),U,4)"
 D DIC^BWFMAN(9002086.1,"QEMA",.Y,A,"",SCRN,"",.BWPOP)
 Q
 ;
DATECHK ;EP
 ;---> PROMPT FOR DATE, CHECK FOR DUPLICATE PROCEDURE ON SAME DATE.
 N BWNEW,DIR,DIRUT,N,Y S BWPOP=0
 S DIR("?",1)="   Enter the date on which this procedure was performed:"
 S DIR("?")="   (NOTE: Dates in the future may NOT be entered.)"
 S DIR(0)="DA^0:DT:EX",DIR("A")="   Select DATE:      ",DIR("B")="TODAY"
 D ^DIR K DIR
 I Y<1 S BWPOP=1 Q
 S BWPCDT=Y D DD^%DT W "  ",Y
 S N=0,BWNEW=0
 F  S N=$O(^BWPCD("C",BWDFN,N)) Q:('N)!(BWPOP)!(BWNEW)  D
 .S Y=^BWPCD(N,0)
 .;---> QUIT IF NOT THE SAME PROCEDURE TYPE.
 .Q:$P(Y,U,4)'=BWPCDN
 .;---> QUIT IF NOT THE SAME PROCEDURE DATE.
 .Q:$P(Y,U,12)'=BWPCDT
 .;---> QUIT IF THIS PROCEDURE HAS A RESULT/DIAG OF "ERROR/DISREGARD".
 .Q:$P(Y,U,5)=8
 .N BWPN S BWPN=$P(^BWPN($P(Y,U,4),0),U)
 .W !!?5,"A ",BWPN," already exists for this patient on this date,"
 .W !?5,"with an Accession# of ",$P(Y,U)
 .W ".  You may edit that procedure by"
 .W !?5,"calling up ",$P(Y,U)," under the ""Edit a Procedure"" option."
 .W !?5,"Or you may enter another ",BWPN," for this patient"
 .W !?5,"on this date."
 .W !!?5,"Do you REALLY want to add another ",BWPN," for this patient"
 .W !?5,"on this date?"
 .S DIR("?")="       Enter NO to avoid adding another "_BWPN
 .S DIR("?")=DIR("?")_" on this date."
 .S DIR(0)="Y",DIR("A")="     Enter Yes or No",DIR("B")="NO"
 .D ^DIR K DIR
 .I $D(DIRUT)!('Y) S BWPOP=1 Q
 .S BWNEW=1
 Q
 ;
ERROR1 ;EP
 W !!?10,*7,"NEW PROCEDURE ENTRY FOR THIS PATIENT FAILED."
 Q
 ; Return Specimen Type for default
PAPST(DATE) ;
 N DEF,BTSDT
 S DEF=$$GET1^DIQ(9002086.02,$G(DUZ(2)),.24,"I")
 S BTSDT=+$$GET1^DIQ(9002086.02,$G(DUZ(2)),.52,"I")
 Q:'BTSDT ""
 Q $S(DATE>$$FMADD^XLFDT(BTSDT,-1):DEF,1:"")
