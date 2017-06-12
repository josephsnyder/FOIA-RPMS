BMCRR2P ; IHS/PHXAO/TMJ - PRNT BILL VSTS;INPATIENT REF LOG REPORT ;       [ 09/27/2006  2:07 PM ]
 ;;4.0;REFERRED CARE INFO SYSTEM;**1,2,3,9**;JAN 09, 2006;Build 51
 ;IHS/ITSC/FCJ ADDED PRINTING OF SECONDARY REF
 ;4.0*1 3.8.06 IHS/OIT/FCJ ADDED RUN DATE TO REPORT
 ;4.0*3 10.30.2007 IHS/OIT/FCJ ADDED CSV CHANGES
 ;4.0*9 11.11.2012 IHS.OIT.FCJ ADDED ICD-10 CHANGE
 ;
START ;
 S BMC80E="==============================================================================="
 S BMC80D="-------------------------------------------------------------------------------"
 S BMC132D="--------------------------------------------------------------------------------------------------------------"
 S BMC132E="=============================================================================================================="
 S BMCPG=0 D @("HEAD"_(2-($E(IOST,1,2)="C-"))) I '$D(^XTMP("BMCRR2",BMCJOB,BMCBT)) W !,"No referrals to report",! G DONE
 S BMCSORT="" K BMCQUIT
 F  S BMCSORT=$O(^XTMP("BMCRR2",BMCJOB,BMCBT,"DATA HITS",BMCSORT)) Q:BMCSORT=""!($D(BMCQUIT))  D PRINT
 G:$D(BMCQUIT) DONE
 I $Y>(IOSL-6) D HEAD G:$D(BMCQUIT) DONE
DONE ;
 K DX,BMCSTST,^XTMP("BMCRR2",BMCJOB,BMCBT)
 D DONE^BMCRLP2
 Q
PRINT ;print one referral
 I $G(BMCSPAGE),BMCPG'=1 D HEAD Q:$D(BMCQUIT)
 I $Y>(IOSL-10) D HEAD Q:$D(BMCQUIT)
 I BMCSTYPE'="P" W !!,$S(BMCSTYPE="F":"FACILITY REFERRED TO:  ",BMCSTYPE="C":"CASE MANAGER:  ",BMCSTYPE="P":"PATIENT NAME:  ",1:"???:  "),BMCSORT,!
 S BMCREF=0 F  S BMCREF=$O(^XTMP("BMCRR2",BMCJOB,BMCBT,"DATA HITS",BMCSORT,BMCREF)) Q:BMCREF'=+BMCREF!($D(BMCQUIT))  S BMCRREC=^BMCREF(BMCREF,0),DFN=$P(BMCRREC,U,3) D
 .;BMC*4.1 4/19/06 IHS.OIT.FCJ CHANGED NEXT LINE TO TEST FOR 1
 .I $P($G(^BMCREF(BMCREF,1)),U)'="",BMCTYPR'=1 Q
 .I BMCOUTP="S" D PRINT2
 .E  D PRINT1
 Q
PRINT1 ;
 I $Y>(IOSL-5) D HEAD Q:$D(BMCQUIT)
 S BMCHRN="????" I $D(^AUPNPAT(DFN,41,DUZ(2))) S BMCHRN=$P(^AUTTLOC(DUZ(2),0),U,7)_$P(^AUPNPAT(DFN,41,DUZ(2),0),U,2)
 W !,"Name:",?12,$E($P(^DPT(DFN,0),U),1,20),?34,"HRN:",?39,BMCHRN,?50,"DOB:  ",$$DOB^AUPNPAT(DFN,"E"),"   ",$$AGE^AUPNPAT(DFN,DT,"R")
 W !,"Tribe:",?12,$E($$TRIBE^AUPNPAT(DFN,"E"),1,20),?34,"3RD Party Elig:"
 W ?48,$S($$MCR^AUPNPAT(DFN,$S($$AVDOS^BMCRLU(BMCREF,"I")]"":$$AVDOS^BMCRLU(BMCREF,"I"),1:DT)):"MEDICARE",1:"")
 W "  ",$S($$MCD^AUPNPAT(DFN,$S($$AVDOS^BMCRLU(BMCREF,"I")]"":$$AVDOS^BMCRLU(BMCREF,"I"),1:DT)):"MEDICAID",1:"")
 W "  ",$S($$PI^AUPNPAT(DFN,$S($$AVDOS^BMCRLU(BMCREF,"I")]"":$$AVDOS^BMCRLU(BMCREF,"I"),1:DT)):"PRVT INS",1:"")
 W !,"Case Man: ",?11,$E($$VAL^XBDIQ1(90001,BMCREF,.19),1,20),?34,"Nxt Rev Dt:",?40,$$VAL^XBDIQ1(90001,BMCREF,.31)
 ;
 S BMCRNUMB=$P(^BMCREF(BMCREF,0),U,2)
 W !,"Referral #: " W ?12,BMCRNUMB,$P($G(^BMCREF(BMCREF,1)),U)
 W ?34,"Ref Phy: " W ?40,$$VAL^XBDIQ1(90001,BMCREF,.06)
 I $Y>(IOSL-5) D HEAD Q:$D(BMCQUIT)
SECREF ;Secondary Referral
 S BMCSTST=$P($G(^BMCREF(BMCREF,1)),U)
 D SECREF2^BMCRUTL
 W !,"Facility:",?12,$E($$FACREF^BMCRLU(BMCREF),1,20),?34,"Provider:  ",$$VAL^XBDIQ1(90001,BMCREF,.09)
 W !,"Adm Date:",?12,$$AVDOS^BMCRLU(BMCREF,"C"),?34,"LOS:",?39,$$AVLOS^BMCRLU(BMCREF,"C"),?50,"LOS to date:  ",$$VAL^XBDIQ1(90001,BMCREF,.1499)
PURPOSE ;
 I $Y>(IOSL-5) D HEAD Q:$D(BMCQUIT)
 K BMCP W !,"Purpose:"
 S BMCP=$$GET1^DIQ(90001,BMCREF,1201,"","BMCP")
 S DIWL=1,DIWF="C66" S X=BMCP D ^DIWP
 S (C,Z)=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z!($D(BMCQUIT))  S C=C+1 D:$Y>(IOSL-4) HEAD Q:$D(BMCQUIT)  W:C'=1 ! W ?12,^UTILITY($J,"W",DIWL,Z,0)
 K DIWL,DIWR,DIWF,Z,^UTILITY($J,"W"),BMCNODE,BMCFILE,BMCG,BMCCOL
DX ;
 I $Y>(IOSL-5) D HEAD Q:$D(BMCQUIT)
 I $D(^BMCDX("AD",BMCREF)) D  I 1
 .W !,"Dx:"
 .S BMCDOS=$$AVDOS^BMCRLU(BMCREF,"N")            ;BMC*4.0*9
 .S (C,DX)=0 F  S DX=$O(^BMCDX("AD",BMCREF,DX)) Q:DX'=+DX!($D(BMCQUIT))  D
 ..;4.0*3 10.30.2007 IHS/OIT/FCJ ADDED CSV CHANGES NXT 2 LINES;4.0*3 11.11.2007 IHS/OIT/FCJ ADDED CSV CHANGES
 ..;S C=C+1,BMCD=+^BMCDX(X,0) D:$Y>(IOSL-4) HEAD Q:$D(BMCQUIT)  W:C'=1 ! W ?12,$P(^ICD9(BMCD,0),U),?19," - ",$E($P(^ICD9(BMCD,0),U,3),1,50)
 ..;S C=C+1,BMCD=+^BMCDX(X,0) D:$Y>(IOSL-4) HEAD Q:$D(BMCQUIT)  W:C'=1 ! W ?12,$P($$ICDDX^ICDCODE(BMCD,0),U,2),?19," - ",$E($P($$ICDDX^ICDCODE(BMCD,0),U,4),1,50)
 ..S C=C+1,BMCD=+^BMCDX(DX,0) D:$Y>(IOSL-4) HEAD Q:$D(BMCQUIT)  W:C'=1 ! W ?12,$P($$ICDDX^ICDEX(BMCD,BMCDOS,,"I"),U,2),?19," - ",$E($P($$ICDDX^ICDEX(BMCD,BMCDOS,,"I"),U,4),1,50)
 E  W !,"Dx Cat:",?12,$$GET1^DIQ(90001,BMCREF,.12)
PROC ;
 I $Y>(IOSL-5) D HEAD Q:$D(BMCQUIT)
 I $D(^BMCPX("AD",BMCREF)) D  I 1
 .W !,"Proc:"
 .S (C,X)=0
 .;4.0*3 10.30.2007 IHS/OIT/FCJ ADDED CSV CHANGES
 .;F  S X=$O(^BMCPX("AD",BMCREF,X)) Q:X'=+X!($D(BMCQUIT))  S C=C+1,BMCD=+^BMCPX(X,0) D:$Y>(IOSL-4) HEAD Q:$D(BMCQUIT)  W:C'=1 ! W ?12,$P(^ICPT(BMCD,0),U),?19," - ",$E($P(^ICPT(BMCD,0),U,2),1,50)
 .F  S X=$O(^BMCPX("AD",BMCREF,X)) Q:X'=+X!($D(BMCQUIT))  S C=C+1,BMCD=+^BMCPX(X,0) D:$Y>(IOSL-4) HEAD Q:$D(BMCQUIT)  W:C'=1 ! W ?12,$P($$CPT^ICPTCOD(BMCD,0),U,2),?19," - ",$E($P($$CPT^ICPTCOD(BMCD,0),U,3),1,50)
 E  W !,"Srv Cat:",?12,$$GET1^DIQ(90001,BMCREF,.13)
 W !,"--------------------",!
 Q
HEAD ;ENTRY POINT
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BMCQUIT="" Q
HEAD1 ;
 W:$D(IOF) @IOF
HEAD2 ;
 S BMCPG=BMCPG+1
 W !?13,"********** CONFIDENTIAL PATIENT INFORMATION **********"
 W !?(80-$L($P(^DIC(4,DUZ(2),0),U))/2),$P(^DIC(4,DUZ(2),0),U),?72,"Page ",BMCPG,!
 W ?29,"INPATIENT REFERRAL LOG"
 W !!,"Report Run Date: ",$$FMTE^XLFDT($$HTFM^XLFDT($H),"1P") ;4.0*1 3.8.06 IHS/OIT/FCJ ADDED RUN DATE TO REPORT
 I BMCOUTP="S" D
 .W !!,"Patient Name",?17,"Hlth Rec",?30,"DOB",?41,"Fac Referred",?60,"Provider",?72,"Admit Dt",?85,"Purpose of Referral",!
 W !,$S(BMCOUTP="S":BMC132D,1:BMC80D)
 Q
 ;
PRINT2 ;Print for Summary Report Listing Only
 I $Y>(IOSL-4) D HEAD Q:$D(BMCQUIT)
 ;BMC*4.0*9;OIT.FCJ COMBINED NXT TO LINES
 S BMCHRN="????" I $D(^AUPNPAT(DFN,41,DUZ(2))) S BMCHRN=$P(^AUTTLOC(DUZ(2),0),U,7)_$P(^AUPNPAT(DFN,41,DUZ(2),0),U,2)
 ;
 W !,$E($P(^DPT(DFN,0),U),1,15),?17,BMCHRN,?27,$$DOB^AUPNPAT(DFN,"E"),?41,$E($$FACREF^BMCRLU(BMCREF),1,15),?58,$$VAL^XBDIQ1(90001,BMCREF,.09),?70,$$AVDOS^BMCRLU(BMCREF,"C")
 S BMCPURP=$P($G(^BMCREF(BMCREF,12)),U)
 S BMCPURPP=$S(BMCPURP'="":BMCPURP,1:"None Recorded")
 W ?83,$E(BMCPURPP,1,35)
 Q  ;BMC 4.0*2 8/15/06 IHS/OIT/FCJ ADDED Q STATEMENT
