APCLOSP2 ; IHS/CMI/LAB - PRINT AMB. SECTION ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
AMB ;
 I $Y>(IOSL-10) D HEAD^APCLOSP Q:$D(APCLQUIT)
 W !!,"AMBULATORY CARE VISITS"
 I '$D(^XTMP("APCLOS",APCLJOB,APCLBTH,"AMBVCOUNT")),'$D(^XTMP("APCLOSP",APCLJOB,APCLBTH,"AMBVCOUNT")) W !?10,"[ NO AMBULATORY CARE VISITS TO REPORT ]",! Q
 S X=$S($D(^XTMP("APCLOS",APCLJOB,APCLBTH,"AMBVCOUNT")):^("AMBVCOUNT"),1:0),Y=$S($D(^XTMP("APCLOSP",APCLJOB,APCLBTH,"AMBVCOUNT")):^("AMBVCOUNT"),1:0) D CALC^APCLOSUT
 W !!,"There were a total of ",X," ambulatory visits (",Z,") during the period for",!,"all visit types except CHS.",!
 W !,"They are broken down below by Type, Location, Service Category, Clinic,",!,"Provider Discipline and leading Diagnoses.  These do not equate to 'official'",!,"APC Visits which are identified in other PCC Reports.",!
TYPE ;
 S APCLPTR=0,APCLT="By Type:",APCL1="AMBTYPE",APCL2="AMBTYPEC",APCLTOT=0,APCLWC=0
 D PROC Q:$D(APCLQUIT)
LOC ;
 S APCLPTR=1,APCLT="By Location:",APCL1="AMBLOC",APCL2="AMBLOCC",APCLTOT=0,APCLWC=0,APCLGLOB="^DIC(4,",APCLPIEC=1
 D PROC Q:$D(APCLQUIT)
CAT ;
 S APCLPTR=0,APCLT="By Service Category:",APCL1="AMBCAT",APCL2="AMBCATC",APCLTOT=0,APCLWC=0
 D PROC Q:$D(APCLQUIT)
CLINIC ;
 S APCLPTR=0,APCLT="By Clinic Type:",APCL1="AMBCLIN",APCL2="AMBCLINC",APCLTOT=0,APCLWC=0
 D PROC Q:$D(APCLQUIT)
PROV ;
 S APCLPTR=0,APCLT="By Provider Type (Primary and Secondary Providers):",APCL1="AMBPROV",APCL2="AMBPROVC",APCLTOT=0,APCLWC=0
 D PROC Q:$D(APCLQUIT)
 D ^APCLOSP3
EOJ ;ENTRY POINT
 K APCL1,APCL2,APCL3,APCLX,APCLTOTO,APCLTOTC,APCLLC,APCLT
 Q
GETLINE ;
 S (APCLX,APCLTOTO,APCLTOTC,APCLLC)=0 F  S APCLX=$O(^XTMP("APCLOS",APCLJOB,APCLBTH,APCL1,APCLX)) Q:APCLX=""  S APCLLC=APCLLC+1,APCLTOTC=^XTMP("APCLOS",APCLJOB,APCLBTH,APCL1,APCLX)+APCLTOTC
 S APCLX=0 F  S APCLX=$O(^XTMP("APCLOSP",APCLJOB,APCLBTH,APCL1,APCLX)) Q:APCLX=""  S APCLTOTO=APCLTOTO+^XTMP("APCLOSP",APCLJOB,APCLBTH,APCL1,APCLX)
 Q
PROC ;
 D GETLINE
 I $Y>(IOSL-9) D HEAD^APCLOSP Q:$D(APCLQUIT)
 W !!?10,APCLT
 S APCLN=0 F  S APCLN=$O(^XTMP("APCLOS",APCLJOB,APCLBTH,APCL2,APCLN)) Q:APCLN=""!($D(APCLQUIT))  D PROC1
 D:APCLTOT=1 TOTAL
 Q
PROC1 ;
 S APCLD=0 F  S APCLD=$O(^XTMP("APCLOS",APCLJOB,APCLBTH,APCL2,APCLN,APCLD)) Q:APCLD=""  D PRNT
 Q
PRNT ;
 I $Y>(IOSL-5) D HEAD^APCLOSP Q:$D(APCLQUIT)  W !?10,APCLT W:APCLWC>0 " (cont.)"
 S X=^XTMP("APCLOS",APCLJOB,APCLBTH,APCL2,APCLN,APCLD),Y=$S($D(^XTMP("APCLOSP",APCLJOB,APCLBTH,APCL1,APCLD)):^(APCLD),1:0) D CALC^APCLOSUT
 I APCLPTR=1 D PRNTPTR Q
 W !?13,APCLD,?45,$J(X,7),?55,"(",Z,")" S APCLWC=APCLWC+1
 Q
PRNTPTR ;
 S G=APCLGLOB_APCLD_")"
 W !?13,$P(@G@(0),U,APCLPIEC),?45,$J(X,7),?55,"(",Z,")" S APCLWC=APCLWC+1
 Q
TOTAL ;
 S X=APCLTOTC,Y=APCLTOTO D CALC^APCLOSUT
 W !?15,"TOTAL:",?45,$J(APCLTOTC,8),?55,"(",Z,")"
 Q
