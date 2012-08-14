ACDPDIF ;IHS/ADC/EDE/KML - DISPLAY DEMOGRAPHIC DIFFERENCE; 
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
 ;
 ; This routine shows the user the differences in demographic data
 ; between Patient Registration and CDMIS.
 ;
START ;
 D MAIN
 D EOJ
 Q
 ;
MAIN ; PROCESS PATIENTS UNTIL NO MORE WANTED
 F  D GETPAT Q:ACDQ  D PATIENT
 Q
 ;
GETPAT ; GET CLIENT/PATIENT
 S ACDQ=1
 S AUPNLK("ALL")=1
 S DIC="^AUPNPAT(",DIC(0)="AEMQ",DIC("S")="I $D(^ACDVIS(""D"",+Y))" D DIC^ACDFMC
 K AUPNLK("ALL")
 Q:Y<0
 S ACDDFNP=+Y,ACDDFN=$P(^DPT(ACDDFNP,0),U)
 S ACDQ=0
 Q
 ;
PATIENT ; PROCESS ONE PATIENT
 D GETREG^ACDDEGP2
 S ACDY=0
 D GETCDMIS^ACDDEGP2
 I 'ACDY W !,"----------",!,"Not a CDMIS patient!",!,"----------",! Q
 S ACDAGE=$P(^ACDVIS(ACDY,0),U,16) ;    I don't like this but expediant
 D DSPDIFF
 Q:'ACDY
 D DEV^ACDDEU Q:ACDQ
 I $D(ACDSLAVE)!(IO'=IO(0)) D DSPDIFF
 K ACDSLAVE S IO=IO(0)
 Q
 ;
DSPDIFF ; DISPLAY DIFFERENCES IN DEMO DATA VALUES  
 I $D(IO("Q")) D  Q
 . S ZTRTN="DSPDIFFQ^ACDPDIF",ZTDESC="CDMIS DEMO DIFFERENCES",ZTDTH=$H,ZTSAVE("ACD*")=""
 . D ^%ZTLOAD
 . Q
 D DSPDIFFQ
 U 0
 I 'ACDY W !,"No differences found",!
 Q
 ;
DSPDIFFQ ; EP - FOR TASKMAN
 I $D(ACDSLAVE) S IOP=ACDSLAVE D ^%ZIS
 U IO
 W:IO'=IO(0) @IOF
 W !!
 S ACDY=0 F X="ACDSEX","ACDAGE","ACDVET","ACDSTANM","ACDTRBN" D
 . S Y=$S(X="ACDSEX":1,X="ACDAGE":2,X="ACDVET":3,X="ACDSTANM":4,1:5)
 . I @X'=ACDPRD(X) D:'ACDY  W ?8,$S(Y=1:"SEX",Y=2:"AGE",Y=3:"IS CLIENT A VET (Y/N)",Y=4:"RESIDENT STATE",1:"TRIBE"),": ",ACDPRD(X)," versus our ",$S(@X="":"NULL",1:@X),!
 .. D:$E(IOST,1,2)="P-" CONF^ACDDEU
 .. W !,"PATIENT: ",ACDDFN,!,?4,"PATIENT REGISTRATION DATA DIFFERS FOR THE FOLLOWING ITEMS:",!
 .. S ACDY=1
 .. Q
 . Q
 I $D(ACDSLAVE) W @IOF D ^%ZISC
 I $D(ZTQUEUED) D EOJ S ZTREQ="@"
 Q
 ;
EOJ ;
 D ^%ZISC
 D ^ACDKILL
 Q