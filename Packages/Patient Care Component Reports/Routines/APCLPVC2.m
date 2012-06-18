APCLPVC2 ; IHS/CMI/LAB - POV GROUPED BY APC CODES - 6/21/89 10:58 AM ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;SORT AND PRINT APC RECODED PCC AMBULATORY VISIT COUNTS
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning in PRICD1
 ;
 S APCL80D="-------------------------------------------------------------------------------" ;80 DASHES
 S Y=APCLSD X ^DD("DD") S APCLSDY=Y S Y=APCLFD X ^DD("DD") S APCLFDY=Y S Y=DT X ^DD("DD") S APCLDTP=Y
 S APCLSITE=DUZ(2)
 S (APCLPG,APCLCNT)=0
 S APCLAPC=""
 F I=0:0 S APCLAPC=$O(^XTMP("APCLPVC",APCLJOB,APCLBT,APCLAPC)) Q:APCLAPC'=+APCLAPC  D CNT
 D PRNT1 G DONE
CNT S APCLCNT=^XTMP("APCLPVC",APCLJOB,APCLBT,APCLAPC,0)
 S ^XTMP("APCLPVC",APCLJOB,APCLBT,"APCLCNT",-APCLCNT,APCLAPC)=APCLCNT
 S APCLINO=0
 F  S APCLINO=$O(^XTMP("APCLPVC",APCLJOB,APCLBT,APCLAPC,APCLINO)) Q:APCLINO=""  D CNT1
 Q
CNT1 S APCLCNT=^XTMP("APCLPVC",APCLJOB,APCLBT,APCLAPC,APCLINO)
 S ^XTMP("APCLPVC",APCLJOB,APCLBT,"APCLCNT","APCLINO",APCLAPC,-APCLCNT,APCLINO)=APCLCNT
 Q
PRNT1 S APCLCNTR=""
 F  S APCLCNTR=$O(^XTMP("APCLPVC",APCLJOB,APCLBT,"APCLCNT",APCLCNTR)) Q:APCLCNTR'=+APCLCNTR!($D(APCLQUIT))  D PRNT2
 Q
PRNT2 S APCLAPC=""
 F  S APCLAPC=$O(^XTMP("APCLPVC",APCLJOB,APCLBT,"APCLCNT",APCLCNTR,APCLAPC)) Q:APCLAPC'=+APCLAPC!($D(APCLQUIT))  D PRNT3
 Q
PRNT3 S APCLCNT=^XTMP("APCLPVC",APCLJOB,APCLBT,"APCLCNT",APCLCNTR,APCLAPC)
 S APCLAPNM=$O(^AUTTRCD("B",APCLAPC,"")),APCLAPNM=$P(^AUTTRCD(APCLAPNM,0),"^",3)
 I APCLPG=0 D HEAD
 I $Y>(IOSL-8) D HEAD Q:$D(APCLQUIT)
 W !!!,APCLAPC,?7,APCLAPNM,?54,$J(APCLCNT,6),!
 Q:APCLLIM=0
 W !?7,"ICD9",?14,"ICD9 Description",!?7,"------",?14,"------------------------"
 S APCLCNTL=0,APCLCNTI="",APCLLIMC=0 F  S APCLCNTI=$O(^XTMP("APCLPVC",APCLJOB,APCLBT,"APCLCNT","APCLINO",APCLAPC,APCLCNTI)) Q:APCLCNTI=""!(APCLLIMC'<APCLLIM)!($D(APCLQUIT))  D PRICD
 I APCLLIMC'<APCLLIM,APCLCNT>APCLCNTL W !?14,"Other ICD9 Codes",?54,$J(APCLCNT-APCLCNTL,6)
 Q
PRICD S APCLINO=0 F  S APCLINO=$O(^XTMP("APCLPVC",APCLJOB,APCLBT,"APCLCNT","APCLINO",APCLAPC,APCLCNTI,APCLINO)) Q:APCLINO=""!(APCLLIMC'<APCLLIM)!($D(APCLQUIT))  D PRICD1
 Q
PRICD1 S APCLLIMC=APCLLIMC+1
 ;S APCLINM=$P(^ICD9(APCLINO,0),"^",3),APCLICNO=$P(^(0),"^") S APCLICLN=$S($D(^(1)):$P(^(1),"^"),1:"")  ;cmi/anch/maw 9/10/2007 orig line
 S APCLINM=$P($$ICDDX^ICDCODE(APCLINO),"^",4),APCLICNO=$P($$ICDDX^ICDCODE(APCLINO),"^",2) S APCLICLN=$S($D(^ICD9(APCLINO,1)):$P(^ICD9(APCLINO,1),"^"),1:"")  ;cmi/anch/maw 9/10/2007 csv
 I $Y>(IOSL-3) D HEAD Q:$D(APCLQUIT)
 W !?7,APCLICNO,?14,APCLINM,?54,$J(-APCLCNTI,6)
 S APCLCNTL=APCLCNTL-APCLCNTI
 Q
HEAD S APCLPG=APCLPG+1 G:APCLPG=1 HEAD1
 I $E(IOST)="C",IO=IO(0) R X:DTIME I $E(X)="^"!('$T) S APCLQUIT="" Q
HEAD1 W:$D(IOF) @IOF
 W $P(^DIC(4,APCLSITE,0),"^"),?58,APCLDTP,?72,"Page ",APCLPG,!
 W !,"POV Counts for Ambulatory Visits from ",APCLSDY," through ",APCLFDY,"."
 I $D(APCLCOM) W !,"For Patients whose Community of Residence is ",APCLCOM,"."
 W !,"ICD9 Subcounts are restricted to the leading ",APCLLIM," Purposes of Visit.",!
 W !,"APC",?7,"APC Category",?55,"Count"
 W !,APCL80D
 Q
DONE ;
 D DONE^APCLOSUT
 K ^XTMP("APCLPVC",APCLJOB,APCLBT)
 Q
