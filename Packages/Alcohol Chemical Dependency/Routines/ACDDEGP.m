ACDDEGP ;IHS/ADC/EDE/KML - GET PATIENT;
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
 ;
GETPAT ; EP - GET CLIENT/PATIENT
 S ACDQ=1
 S AUPNLK("ALL")=1
 S DIC="^AUPNPAT(",DIC(0)="AEMQ" D DIC^ACDFMC
 K AUPNLK("ALL")
 Q:Y<0
 S ACDDFNP=+Y,ACDDFN=$P(^DPT(ACDDFNP,0),U)
 I $D(^TMP("ACD",$J,"PAT",ACDDFNP,"ACDDFNP")) D SETDEMO I 1
 E  D GETDEMO
 Q:ACDQ  ; ACDQ set to 0 by SETDEMO or GETDEMO if all ok
 I ACDAGE,ACDAGER Q
 W !!,IORVON,"No AGE and/or AGE RANGE for selected patient.  Cannot continue.",IORVOFF,!!
 D PAUSE^ACDDEU
 S ACDQ=1
 Q
 ;
SETDEMO ; EP - SET CLIENT/PATIENT DEMO VARIABLES
 I $D(^TMP("ACD",$J,"PAT",ACDDFNP,"FLG","AGE CHG")) D GETREG
 S X=""
 F  S X=$O(^TMP("ACD",$J,"PAT",ACDDFNP,X)) Q:X=""  S:X'="FLG" @X=^(X)
 I ACDAGE D ^ACDAGRG ;        set age and age range as of visit date
 I $D(^TMP("ACD",$J,"PAT",ACDDFNP,"FLG","AGE CHG")) W !!,"You previously changed this patient's age so you must edit the",!,"demographic data each time this patient is selected." D DSPDEMO I 1
 E  W !
 S ACDQ=0
 Q
 ;
GETDEMO ; EP - GET CLIENT/PATIENT DEMOGRAPHIC INFO
 D GETREG ;       get patient registration info
 ;D GETCDMIS ;     get last cdmis info for same patient
 ;D DSPDEMO ;      display and allow change of demographic info
 ;Q:ACDQ
 D SVDEMO ;       save demographic info
 S ACDQ=0
 Q
 ;
GETREG ; GET PATIENT REGISTRATION INFO
 D GETREG^ACDDEGP2
 Q
 ;
GETCDMIS ; GET LAST CDMIS INFO FOR PATIENT
 D GETCDMIS^ACDDEGP2
 Q
 ;
DSPDEMO ; DISPLAY AND ALLOW CHANGE OF DEMOGRAPHIC INFO
 S $P(ACDDL,"-",79)=""
 S ACDLC=0
 F  D DSPPAT Q:ACDQ
 W !
 D DSPDIFF
 S ACDQ=0
 Q
 ;
DSPPAT ; DISPLAY CLIENT/PATIENT DATA
 W !!
 W "PATIENT NAME: ",ACDDFN,!
 I 'ACDLC D DSPDIFF
 S ACDLC=ACDLC+1
 W ACDDL,!
 W "1.                         SEX: ",ACDSEX,!
 I ACDPRD("ACDSEX")'=ACDSEX W ?32,@ACDRVON,ACDPRD("ACDSEX"),@ACDRVOF,!
 W "2.                         AGE: ",ACDAGE,!
 I ACDPRD("ACDAGE")'=ACDAGE W ?32,@ACDRVON,ACDPRD("ACDAGE"),@ACDRVOF,!
 W "                     AGE RANGE: ",ACDAGER,"  (",$P($T(ART+ACDAGER),";;",2),")",!
 W "3.   IS CLIENT A VETERAN (Y/N): ",ACDVET,!
 I ACDPRD("ACDVET")'=ACDVET W ?32,@ACDRVON,ACDPRD("ACDVET"),@ACDRVOF,!
 W "4.              RESIDENT STATE: ",ACDSTANM,!
 I ACDPRD("ACDSTANM")'=ACDSTANM W ?32,@ACDRVON,ACDPRD("ACDSTANM"),@ACDRVOF,!
 W "5.                       TRIBE: ",ACDTRBN,!
 I ACDPRD("ACDTRBN")'=ACDTRBN W ?32,@ACDRVON,ACDPRD("ACDTRBN"),@ACDRVOF,!
 W ACDDL,!
 S ACDQ=1
 S DIR(0)="NO^1:5:0",DIR("A")="Change which item? " K DA D ^DIR K DIR
 Q:$D(DIRUT)
 S ACDQ=0
 W !
 D @("CHG"_X)
 Q
 ;
DSPDIFF ; DISPLAY DIFFERENCES IN DEMO DATA VALUES  
 S ACDY=0 F X="ACDSEX","ACDAGE","ACDVET","ACDSTANM","ACDTRBN" D
 . S Y=$S(X="ACDSEX":1,X="ACDAGE":2,X="ACDVET":3,X="ACDSTANM":4,1:5)
 . I @X'=ACDPRD(X) D
 .. W:'ACDY !,?4,@ACDRVON,"PATIENT REGISTRATION DATA DIFFERS FOR THE FOLLOWING ITEMS:",@ACDRVOF,!
 .. S ACDY=1
 .. W ?8,@ACDRVON,Y,".  ",$S(Y=1:"SEX",Y=2:"AGE",Y=3:"IS CLIENT A VET (Y/N)",Y=4:"RESIDENT STATE",1:"TRIBE"),": ",ACDPRD(X),@ACDRVOF,!
 .. Q
 . Q
 Q
 ;
CHG1 ; CHANGE SEX
 S DIR(0)="9002172.1,103",DIR("B")=$S($E(ACDSEX)="M":"FEMALE",1:"MALE") K DA D ^DIR K DIR
 Q:$D(DIRUT)
 S ACDSEX=Y(0)
 Q
 ;
CHG2 ; CHANGE AGE
 S DIR(0)="9002172.1,107" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 S ACDAGE=Y
 D SETRG^ACDAGRG ;                 get age range
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"FLG","AGE CHG")=1
 Q
 ;
CHG3 ; CHANGE VETERAN STATUS
 S DIR(0)="9002172.1,104" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 S ACDVET=Y(0)
 Q
 ;
CHG4 ; CHANGE STATE
 S DIR(0)="P^5:EMZ" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 S ACDSTA=Y
 S ACDSTACD=$P(Y(0),U,3)
 S ACDSTANM=$P(Y(0),U)
 Q
 ;
CHG5 ; CHANGE TRIBE
 S DIR(0)="P^9999999.03:EMZ" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 S ACDTRB=Y
 S ACDTRBCD=$P(Y(0),U,2)
 S ACDTRBN=$P(Y(0),U)
 Q
 ;
SVDEMO ; SAVE DEMOGRAPHIC INFO
 ;---------- save demographic info
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDAGER")=ACDAGER
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDAGE")=ACDAGE
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDCOMM")=ACDCOMM
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDDFN")=ACDDFN
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDDFNP")=ACDDFNP
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDSEX")=ACDSEX
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDSTA")=ACDSTA
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDSTACD")=ACDSTACD
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDSTANM")=ACDSTANM
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDTRB")=ACDTRB
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDTRBCD")=ACDTRBCD
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDTRBN")=ACDTRBN
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"ACDVET")=ACDVET
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"AUPNDAYS")=AUPNDAYS
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"AUPNDOB")=AUPNDOB
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"AUPNDOD")=AUPNDOD
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"AUPNPAT")=AUPNPAT
 S ^TMP("ACD",$J,"PAT",ACDDFNP,"AUPNSEX")=AUPNSEX
 Q
 ;
ART ; AGE RANGE TABLE
 ;;0-12
 ;;13-18
 ;;19-24
 ;;25-34
 ;;35-44
 ;;45-54
 ;;55-64
 ;;65-74
 ;;75+