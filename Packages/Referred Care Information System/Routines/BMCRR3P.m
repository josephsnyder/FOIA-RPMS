BMCRR3P ; IHS/PHXAO/TMJ - PRNT BILL VSTS ;     [ 09/27/2006  2:14 PM ]
 ;;4.0;REFERRED CARE INFO SYSTEM;**1**;JAN 09, 2006;Build 51
 ;4.0*1 3.8.06 IHS/OIT/FCJ PRINT BEG AND END DT
START ;
 S BMC80E="==============================================================================="
 S BMC80D="-------------------------------------------------------------------------------"
 S BMCPG=0 D @("HEAD"_(2-($E(IOST,1,2)="C-"))) I '$D(^XTMP("BMCRR3",BMCJOB,BMCBT)) W !,"No patientss to report",! G DONE
 S BMCPN=0 K BMCQUIT
 F  S BMCPN=$O(^XTMP("BMCRR3",BMCJOB,BMCBT,"DATA HITS",BMCPN)) Q:BMCPN=""!($D(BMCQUIT))  D DFN
DONE ;
 K ^XTMP("BMCRR3",BMCJOB,BMCBT)
 D DONE^BMCRLP2
 Q
DFN ;
 S DFN="" F  S DFN=$O(^XTMP("BMCRR3",BMCJOB,BMCBT,"DATA HITS",BMCPN,DFN)) Q:DFN=""!($D(BMCQUIT))  D PRINT
 Q
PRINT ;print one referral
 Q:$P(^XTMP("BMCRR3",BMCJOB,BMCBTH,"DATA HITS",BMCPN,DFN),U,2)<BMCAMT
 I $Y>(IOSL-5) D HEAD Q:$D(BMCQUIT)
 W !,$E(BMCPN,1,25)
 S BMCHRN="????" I $D(^AUPNPAT(DFN,41,DUZ(2))) S BMCHRN=$P(^AUTTLOC(DUZ(2),0),U,7)_$P(^AUPNPAT(DFN,41,DUZ(2),0),U,2)
 W ?28,BMCHRN
 W ?40,$$FMTE^XLFDT($P(^DPT(DFN,0),U,3),"5D")
 W ?52,$P(^DPT(DFN,0),U,2)
 W ?56,$J($P(^XTMP("BMCRR3",BMCJOB,BMCBTH,"DATA HITS",BMCPN,DFN),U),5)
 S X=$P(^XTMP("BMCRR3",BMCJOB,BMCBTH,"DATA HITS",BMCPN,DFN),U,2),X2="2$" D COMMA^%DTC W ?64,X
 Q
HEAD ;ENTRY POINT
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BMCQUIT="" Q
HEAD1 ;
 W:$D(IOF) @IOF
HEAD2 ;
 S BMCPG=BMCPG+1
 W !?13,"********** CONFIDENTIAL PATIENT INFORMATION **********"
 W !?21,"******** PRIMARY REFERRALS *******"
 W !?(80-$L($P(^DIC(4,DUZ(2),0),U))/2),$P(^DIC(4,DUZ(2),0),U),?72,"Page ",BMCPG,!
 W ?22,"HIGH COST USERS - "_$S(BMCCOST="I":"using IHS COST",1:"using TOTAL COST"),!
 ;4.0*1 3.8.06 IHS/OIT/FCJ ADDED NXT 2 LINES TO PRT BEG AND END DT
 S Y=BMCBD D DD^%DT W ?17,"BEG DATE: "_Y
 S Y=BMCED D DD^%DT W ?40,"END DATE: "_Y,!
0 W !,"PATIENT NAME",?28," HRN",?40,"DOB",?51,"SEX",?56,"# REFS",?64,"TOTAL COST"
 W !,BMC80D
 Q
