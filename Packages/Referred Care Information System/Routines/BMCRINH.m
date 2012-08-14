BMCRINH ; IHS/ITSC/FCJ - IN-HOUSE REPORT;    
 ;;4.0;REFERRED CARE INFO SYSTEM;;JAN 09, 2006
 ;
 ;IHS/ITSC/FCJ Referral number was not printing
 ; This routine lists active In-house referrals,
 ; User can select date range, will sort by date initiated and clinic
 ;
START ;
 W !!,"This report prints out a list of all Active In-House referrals. ",!,"The user can select a date range by Date initiated and Status of Referral.",!
 W "Report will include both Primary and Secondary Referrals.",!!
 D INIT
 Q:BMCQ
 D GETDATES^BMCRUTL Q:$D(DIRUT)!$D(DTOUT)
 D DBQUE
 Q
 ;
INIT ; INITIALIZAION
 S BMCQ=0
 D:$G(BMCPARM)="" PARMSET^BMC
 S BMCJOB=$J
 F  D  Q:BMCBT]""
 . S BMCBT=$H
 . LOCK +^XTMP("BMCRINH",BMCJOB,BMCBT):1
 . E  S BMCBT=""
 . Q
 K ^XTMP("BMCRINH",BMCJOB,BMCBT)
 Q
 ;
DBQUE ;call to XBDBQUE
 K BMCOPT
 W ! S DIR(0)="S^P:PRINT Output;B:BROWSE Output on Screen",DIR("A")="Do you wish to",DIR("B")="P" K DA D ^DIR K DIR
 I $D(DIRUT) S BMCQUIT=1 Q
 S BMCOPT=Y
 I $G(BMCOPT)="B" D BROWSE Q
 S XBRP="REFPRT^BMCRINH",XBRC="REFCHK^BMCRINH",XBRX="EOJ^BMCRINH",XBNS="BMC"
 D ^XBDBQUE
 Q
 ;
BROWSE ;
 S XBRP="VIEWR^XBLM(""REFPRT^BMCRINH"")"
 S XBRC="REFCHK^BMCRINH",XBRX="EOJ^BMCRINH",XBNS="BMC",XBIOP=0
 D ^XBDBQUE
 Q
 ;
REFCHK ; CHECK EACH ACTIVE/CHS REFERRAL
 S BMCCL="",BMCBDT=BMCBD-1
 F  S BMCBDT=$O(^BMCREF("B",BMCBDT)) Q:('BMCBDT)!(BMCBDT>BMCED)  D
 .S BMCRIEN=0
 .F  S BMCRIEN=$O(^BMCREF("B",BMCBDT,BMCRIEN)) Q:'BMCRIEN  D
 .. S X=^BMCREF(BMCRIEN,0)
 .. Q:$P(X,U,15)'="A"
 .. I $P(X,U,4)="N" D
 ...S BMCCL=$S($P(X,U,23)?1N.N:$P(^DIC(40.7,$P(X,U,23),0),U),1:"UNKNOWN")
 ...S ^XTMP("BMCRINH",BMCJOB,BMCBT,"DATA HITS",BMCCL,BMCRIEN)=""
 Q
 ;
REFPRT ; PRINT REFERRALS SELECTED
 S $P(BMC80E,"=",80)=""
 S $P(BMC80D,"-",80)=""
 D REFPRT2
 K ^XTMP("BMCRINH",BMCJOB,BMCBT)
 Q
 ;
REFPRT2 ;
 S BMCPG=0 D @("HEAD"_(2-($E(IOST,1,2)="C-"))) I '$D(^XTMP("BMCRINH",BMCJOB,BMCBT)) W !,"No referrals to report",! D PAUSE^BMC Q
 S BMCCL=""
 F  S BMCCL=$O(^XTMP("BMCRINH",BMCJOB,BMCBT,"DATA HITS",BMCCL)) Q:BMCCL=""!($D(BMCQUIT))  D
 .W !,"CLINIC REFERRED TO:  ",BMCCL,!
 .S BMCRIEN=0 K BMCQUIT
 .F  S BMCRIEN=$O(^XTMP("BMCRINH",BMCJOB,BMCBT,"DATA HITS",BMCCL,BMCRIEN)) Q:BMCRIEN=""!($D(BMCQUIT))  D PRINT
 Q:$D(BMCQUIT)
 D PAUSE^BMC
 Q
 ;
PRINT ;print one referral
 S BMCRREC=^BMCREF(BMCRIEN,0)
 S Y=BMCRIEN
 D ^BMCREF
 I $Y>(IOSL-5) D HEAD Q:$D(BMCQUIT)
 W $$FMTE^XLFDT($P(BMCRREC,U),"5D")  ;DATE OF REF
 W ?11
 I $P(^BMCREF(BMCRIEN,11),U,6)="" W $$FMTE^XLFDT($P(^BMCREF(BMCRIEN,11),U,5),"5D")  ;EST DOS
 E  W $$FMTE^XLFDT($P(^BMCREF(BMCRIEN,11),U,6),"5D")  ;ACT DOS
 W ?23,$P(^BMCREF(BMCRIEN,0),U,2)
 W $P($G(^BMCREF(BMCRIEN,1)),U) ;BMC*4.0 6.6.05 IHS/ITSC/FCJ PRT SUF
 W ?39,$E(BMCREC("PAT NAME"),1,24)
 S BMCHRN="????" I $D(^AUPNPAT(BMCDFN,41,DUZ(2))) S BMCHRN=$P(^AUTTLOC(DUZ(2),0),U,7)_$P(^AUPNPAT(BMCDFN,41,DUZ(2),0),U,2)
 W ?65,BMCHRN
 W ?73,$S($P(BMCRREC,U,6):$$PROVINI^XBFUNC1($P(BMCRREC,U,6)),1:"--")
 W !
 Q
 ;
HEAD ;
 D PAUSE^BMC
 I $D(DIRUT) S BMCQUIT="" Q
 D HEAD1
 Q
 ;
HEAD1 ;
 W:$D(IOF) @IOF
HEAD2 ; WRITE HEADER
 S BMCPG=BMCPG+1
 W !?13,"********** CONFIDENTIAL PATIENT INFORMATION **********"
 W !?(80-$L($P(^DIC(4,DUZ(2),0),U))/2),$P(^DIC(4,DUZ(2),0),U),?72,"Page ",BMCPG,!
 W $$CTR^BMC("ACTIVE IN HOUSE REFFERALS BY CLINIC REFERRED TO",80),!
 S Y=BMCBD D DD^%DT W ?17,"BEG DATE: "_Y
 S Y=BMCED D DD^%DT W ?40,"END DATE: "_Y,!
 W !,"REF DATE",?14,"DOS",?24,"REFERRAL #",?39,"PATIENT",?65,"HRN",?73,"PROV"
 W !,BMC80D
 W !
 Q
 ;
EOJ ; END OF JOB
 LOCK -^XTMP("BMCRINH",BMCJOB,BMCBT)
 K ^XTMP("BMCRINH",BMCJOB,BMCBT)
 D ^BMCKILL
 K BMC80E,BMC80D,BMCBD,BMCBDD,BMCBDT,BMCBT,BMCHRN,BMCOPT,BMCPG,BMCJOB
 K BMCCL,BMCED,BMCEDD,BMCREC,BMCSD,BMCRREC,BMCRSTAT
 Q