BWBRPCD2 ;IHS/ANMC/MWR - BROWSE PROCEDURES;15-Feb-2003 21:49;PLS
 ;;2.0;WOMEN'S HEALTH;**8**;MAY 16, 1996
 ;;* MICHAEL REMILLARD, DDS * ALASKA NATIVE MEDICAL CENTER *
 ;;  PROMPTS FOR SELECTION CRITERIA IN BROWSING PROCEDURES.
 ;;  CALLED BY BWBRPCD.
 ;
 D TITLE^BWUTL5("BROWSE PROCEDURES")
 D ONEALL Q:BWPOP
 D SELECT Q:BWPOP
 D DATES  Q:BWPOP
 D STATUS Q:BWPOP
 D RESULT Q:BWPOP
 D CMGR   Q:BWPOP
 D ORDER  Q:BWPOP
 D DEVICE Q:BWPOP
 Q
 ;
ONEALL ;EP
 ;---> SELECT ONE PATIENT OR ALL PATIENTS.
 N DIR,DIRUT,Y
 W !!?3,"Browse Procedures for ONE individual patient,"
 W !?3,"or browse Procedures for ALL patients?"
 S DIR("A")="   Select ONE or ALL: ",DIR("B")="ALL"
 S DIR(0)="SAM^o:ONE;a:ALL" D HELP2^BWBRPCD3
 D ^DIR
 I Y=-1!($D(DIRUT)) S BWPOP=1 Q
 ;---> IF ALL PATIENTS, S BWA=1 AND QUIT.
 I Y="a" S BWA=1 Q
 ;
 W !!,"   Select the patient whose Procedures you wish to browse."
 D PATLKUP^BWUTL8(.Y)
 I Y<0 S BWPOP=1 Q
 ;---> FOR ONE PATIENT, SET BWA=0 AND BWDFN=PATIENT DFN, QUIT.
 S BWDFN=+Y,BWA=0,BWCMGR=$P(^BWP(BWDFN,0),U,10)
 Q
 ;
SELECT ;EP
 ;---> SELECT THE PROCEDURES TO BROWSE.
 D SELECT^BWSELECT("Procedure Type",9002086.2,"BWARR","","PAP",.BWPOP)
 Q
 ;
DATES ;EP
 ;---> ASK DATE RANGE.  RETURN DATES IN BWBEGDT AND BWENDDT.
 ;---> IF LOOKING AT ONLY ONE PATIENT, SET DEFAULT BEGIN DATE=T-365.
 S BWBEGDF=$S(BWA:"T-30",1:"T-365")
 D ASKDATES^BWUTL3(.BWBEGDT,.BWENDDT,.BWPOP,BWBEGDF,"T")
 Q
 ;
STATUS ;EP
 ;---> GET XREF: OPEN OR ALL
 N DIR,DIRUT,Y W !!?3
 W "Do you wish to browse DELINQUENT, NEW, OPEN, or ALL Procedures?"
 S DIR("A")="   Select DELINQUENT, NEW, OPEN or ALL: ",DIR("B")="OPEN"
 S DIR(0)="SAM^d:DELINQUENT;n:NEW;o:OPEN;a:ALL" D HELP4^BWBRPCD3
 D ^DIR
 I Y=-1!($D(DIRUT)) S BWPOP=1 Q
 S BWB=Y
 Q
 ;
RESULT ;EP
 ;---> GET XREF: ABNORMAL OR ALL
 N DIR,DIRUT,Y
 W !!?3,"Do you wish to browse only Procedures with ABNORMAL results, "
 W !?3,"or both ABNORMAL and NORMAL?"
 S DIR("A")="   Select ABNORMAL or BOTH: "
 S DIR("B")="ABNORMAL ONLY" D HELP1^BWBRPCD3
 S DIR(0)="SAM^a:ABNORMAL ONLY;b:BOTH ABNORMAL AND NORMAL"
 D ^DIR
 I Y=-1!($D(DIRUT)) S BWPOP=1 Q
 S BWD=$S(Y="a":0,1:1)
 Q
 ;
CMGR ;EP
 ;---> SELECT CASES FOR ONE CASE MANAGER OR ALL.
 ;---> DO NOT PROMPT FOR CASE MANAGER IF SITE PARAMETERS SAY NOT TO,
 ;---> OR IF LOOKING AT PROCEDURES FOR ONLY ONE PATIENT.
 N DIR,DIRUT,Y
 I '$D(^BWSITE(DUZ(2),0)) S BWE=1 Q
 I '$P(^BWSITE(DUZ(2),0),U,5)!('BWA) S BWE=1 Q
 W !!?3,"Browse Procedures for ONE particular Case Manager,"
 W !?3,"or browse Procedures for ALL Case Managers?"
 S DIR("A")="   Select ONE or ALL: ",DIR("B")="ALL"
 S DIR(0)="SAM^o:ONE;a:ALL" D HELP5^BWBRPCD3
 D ^DIR
 I Y=-1!($D(DIRUT)) S BWPOP=1 Q
 ;---> IF ALL CASE MANAGERS, S BWE=1 AND QUIT.
 I Y="a" S BWE=1 Q
 N DIC
 W !!,"   Select the Case Manager whose patients you wish to browse."
 D DIC^BWFMAN(9002086.01,"QEMA",.Y,"   Select CASE MANAGER: ")
 I Y<0 S BWPOP=1 Q
 ;---> FOR ONE CASE MANAGER, SET BWE=0 AND BWCMGR=^VA(200 DFN, QUIT.
 S BWCMGR=+Y,BWE=0
 Q
 ;
ORDER ;EP
 ;---> ASK ORDER BY DATE OR BY PATIENT OR BY PRIORITY.
 ;---> IF LOOKING AT ONLY ONE PATIENT, ORDER BY DATE AND QUIT.
 I 'BWA S BWC=1 D TITLE Q
 ;
 ;---> SORT SEQUENCE IN BWC:  1=DATE, PATIENT, PRIORITY
 ;--->                        2=PATIENT, DATE, PRIORITY
 ;--->                        3=PRIORITY, DATE, PATIENT
 ;
 N DIR,DIRUT,Y
 W !!?3,"Display Procedures in order of:"
 W ?37,"1) DATE OF PROCEDURE (earliest first)"
 W !?37,"2) NAME OF PATIENT (alphabetically)"
 W !?37,"3) PRIORITY (most urgent being highest)"
 S DIR("A")="   Select 1, 2, or 3: ",DIR("B")=1
 S DIR(0)="SAM^1:DATE;2:NAME;3:PRIORITY" D HELP3^BWBRPCD3
 D ^DIR
 I Y=-1!($D(DIRUT)) S BWPOP=1 Q
 S BWC=Y D TITLE
 Q
 ;
TITLE ;EP
 ;---> SET TITLE OF REPORT BASED ON ORDER SELECTED ABOVE.
 N Y S Y=$S(BWC=1:"DATE",BWC=2:"PATIENT",BWC=3:"DIAGNOSIS",1:"?")
 S BWTITLE="* * *  PROCEDURES LISTED BY "_Y_"  * * *"
 S BWCODE="D EDIT^BWBRPCD1,SORT^BWBRPCD,COPYGBL^BWBRPCD"
 S BWHEADER="HEADER1"
 Q
 ;
DEVICE ;EP
 ;---> GET DEVICE AND POSSIBLY QUEUE TO TASKMAN.
 S ZTRTN="DEQUEUE^BWBRPCD"
 F BWSV="A","B","C","CODE","D","E","CMGR" D
 .I $D(@("BW"_BWSV)) S ZTSAVE("BW"_BWSV)=""
 F BWSV="DFN","BEGDT","ENDDT","HEADER","TITLE" D
 .I $D(@("BW"_BWSV)) S ZTSAVE("BW"_BWSV)=""
 ;---> SAVE THE SELECTED PROCEDURES ARRAY.
 I $D(BWARR) N N S N=0 F  S N=$O(BWARR(N)) Q:N=""  D
 .S ZTSAVE("BWARR("""_N_""")")=""
 D ZIS^BWUTL2(.BWPOP,1,"HOME")
 Q
