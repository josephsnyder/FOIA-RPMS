AMHRAS2P ; IHS/CMI/LAB - list refusals ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
 ;
 ;
PRINT ;EP - called from xbdbque
 D PRINT1
 D DONE
 Q
PRINT1 ;
 S AMHRPG=0 K AMHRQUIT
 K AMHRLSTP
 I '$D(^XTMP("AMHRAS2",AMHRJ,AMHRH)) D HEADER W !!,"No data to report.",! G DONE
 D HEADER
 S AMHRTOT=AMHRCNT
 S AMHRPTOT=$$PTOT
 W !," Total Number of Visits with Screening",?40,$J($$COM(AMHRTOT,0),8)
 W !,"     Total Number of Patients screened",?40,$J($$COM(AMHRPTOT,0),8)
 D RES
 Q:$$END
 D GENDER
 Q:$$END
 D AGE
 Q:$$END
 D PRVSC
 Q:$$END
 D PRVV
 Q:$$END
 D DESPRV
 Q:$$END
 D CLINIC
 Q:$$END
 D DATE
 Q:$$END
 D MH
 Q:$$END
 D SS
 Q:$$END
 D CD
 Q:$$END
 K ^TMP($J)
 I AMHRLIST D LIST
 Q
RES ;
 Q:'$D(AMHRTALL(1))
 ;TALLY BY RESULT FIRST
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,2) S R=$P(R,";")_"  "_$P(R,";",2) S:R="" R="NO RESULT RECORDED" S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"                              By Result",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .S Y=$L(AMHRX),Y=38-Y W !?Y,AMHRX,?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 Q
GENDER ;
 Q:'$D(AMHRTALL(2))
 ;TALLY BY GENDER OF PATIENT1
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,3) S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"                              By Gender",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L(AMHRX),Y=38-Y W !?Y,AMHRX,?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 .Q
 Q
AGE ;
 Q:'$D(AMHRTALL(3))
 ;TALLY BY age OF PATIENT
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,4) S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"                                By Age",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L(AMHRX_" yrs"),Y=38-Y W !?Y,AMHRX," yrs",?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 Q
PRVSC ;
 Q:'$D(AMHRTALL(4))
 ;TALLY BY PRIMARY provider OF service
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,5) S:R="" R="UNKNOWN" S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"              By Provider who screened",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L(AMHRX),Y=38-Y W !?Y,AMHRX,?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 Q
PRVV ;
 Q:'$D(AMHRTALL(7))
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,7) S:R="" R="UNKNOWN" S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"           By Primary Provider of Visit",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L(AMHRX),Y=38-Y W !?Y,AMHRX,?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 Q
DESPRV ;
 Q:'$D(AMHRTALL(11))
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,11) S:R="" R="UNKNOWN" S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"     By Designated Primary Care Provider",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L(AMHRX),Y=38-Y W !?Y,AMHRX,?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 Q
MH ;
 Q:'$D(AMHRTALL(8))
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,8) S:R="" R="UNKNOWN" S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"     By Designated Mental Health Provider",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L(AMHRX),Y=38-Y W !?Y,AMHRX,?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 Q
SS ;
 Q:'$D(AMHRTALL(9))
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,9) S:R="" R="UNKNOWN" S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"    By Designated Social Services Provider",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L(AMHRX),Y=38-Y W !?Y,AMHRX,?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 Q
CD ;
 Q:'$D(AMHRTALL(10))
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,10) S:R="" R="UNKNOWN" S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"     By Designated A/SA Provider",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L(AMHRX),Y=38-Y W !?Y,AMHRX,?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 Q
CLINIC ;
 Q:'$D(AMHRTALL(5))
 ;TALLY BY clinic
 K AMHRRES S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,6) S:R="" R="UNKNOWN" S AMHRRES(R)=$G(AMHRRES(R))+1
 W !
 W !,"                              By Clinic",!
 S AMHRX="" F  S AMHRX=$O(AMHRRES(AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L(AMHRX),Y=38-Y W !?Y,AMHRX,?40,$J($$COM($G(AMHRRES(AMHRX)),0),8),?55,$$PER(AMHRRES(AMHRX),AMHRTOT) K AMHRRES(AMHRX)
 Q
DATE ;
 Q:'$D(AMHRTALL(6))
 ;TALLY BY date OF service
 K ^TMP($J) S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  D
 .S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)
 .S R=$P(AMHRY,U,1) S ^TMP($J,R)=$G(^TMP($J,R))+1
 W !
 W !,"                               By Date",!
 S AMHRX="" F  S AMHRX=$O(^TMP($J,AMHRX)) Q:AMHRX=""!($D(AMHRQUIT))  D
 .Q:$$END
 .S Y=$L($$FMTE^XLFDT(AMHRX)),Y=38-Y W !?Y,$$FMTE^XLFDT(AMHRX),?40,$J($$COM($G(^TMP($J,AMHRX)),0),8),?55,$$PER(^TMP($J,AMHRX),AMHRTOT) K ^TMP($J,AMHRX)
 Q
 ;
PER(N,D) ;return % of n/d
 I 'D Q "0%"
 NEW Z
 S Z=N/D,Z=Z*100,Z=$J(Z,5,1)
 Q $$STRIP^XLFSTR(Z," ")_"%"
COM(X,X2,X3) ;
 D COMMA^%DTC
 Q $$STRIP^XLFSTR(X," ")
END() ;
 I $Y<(IOSL-3) Q 0
 D HEADER
 I $D(AMHRQUIT) Q 1
 Q 0
ENDL() ;
 I $Y<(IOSL-8) Q 0
 D HEADER
 I $D(AMHRQUIT) Q 1
 Q 0
PTOT() ;
 NEW C,X
 S C=0
 S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"PTS",X)) Q:X'=+X  S C=C+1
 Q C
TOT() ;
 NEW C,X
 S C=0
 S X=0 F  S X=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",X)) Q:X'=+X  S C=C+1
 Q C
HEADER ;EP
 G:'AMHRPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S AMHRQUIT="" Q
HEADER1 ;
 W:$D(IOF) @IOF S AMHRPG=AMHRPG+1
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",AMHRPG,!
 W !,$$CTR("***  ALCOHOL SCREENING VISIT TALLY"_$S(AMHRLIST:" AND VISIT LISTING",1:"")_"  ***",80),!
 S X="Screening Dates: "_$$FMTE^XLFDT(AMHRBD)_" to "_$$FMTE^XLFDT(AMHRED) W $$CTR(X,80),!
 I AMHREXPC S X="This report includes PCC Clinics" W $$CTR(X,80),!
 I 'AMHREXPC S X="This report excludes PCC Clinics" W $$CTR(X,80),!
 I $G(AMHRLSTP) W !?35,"DATE",!,"PATIENT NAME",?22,"HRN",?29,"AGE",?35,"SCREENED",?55,"CLINIC"
 W !,$TR($J("",80)," ","-")
 I '$G(AMHRLSTP) W !?46,"#",?53,"% of patients"
 Q
DONE ;
 K ^TMP($J)
 K ^XTMP("AMHRAS2",AMHRJ,AMHRH)
 D EOP
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:IO'=IO(0)
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 W !
 S DIR("A")="End of Report.  Press Enter",DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
LIST ;EP - called from xbdbque
 S AMHRPG=0 K AMHRQUIT
 S AMHRLSTP=1
 D HEADER
 K ^TMP($J)
 ;resort by sort item
 S AMHRX=0 F  S AMHRX=$O(^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",AMHRX)) Q:AMHRX'=+AMHRX  S AMHRY=^XTMP("AMHRAS2",AMHRJ,AMHRH,"VSTS",AMHRX) D
 .S DFN=$P(AMHRY,U,15)
 .D @AMHRSORT
 .I AMHRSORV="" S AMHRSORV="--"
 .S ^TMP($J,"VSTS",AMHRSORV,AMHRX)=AMHRY
 .Q
 S AMHRSORV="" F  S AMHRSORV=$O(^TMP($J,"VSTS",AMHRSORV)) Q:AMHRSORV=""!($D(AMHRQUIT))  D
 .S AMHRZ=0 F  S AMHRZ=$O(^TMP($J,"VSTS",AMHRSORV,AMHRZ)) Q:AMHRZ'=+AMHRZ!($D(AMHRQUIT))  D
 ..Q:$$ENDL
 ..S AMHRY=^TMP($J,"VSTS",AMHRSORV,AMHRZ),DFN=$P(AMHRY,U,15)
 ..W !!,$E($P(^DPT(DFN,0),U),1,20),?22,$$HRN^AUPNPAT(DFN,DUZ(2)),?29,$P(AMHRY,U,4),?33,$P(^DPT(DFN,0),U,2),?35,$$DT($P(AMHRY,U,1)),?55,$E($P(AMHRY,U,6),1,20)
 ..W !?3,"Type/Result: ",$P($P(AMHRY,U,2),";")_"  "_$P($P(AMHRY,U,2),";",2)
 ..I $P(AMHRY,U,12)]"" W !?3,"Comment: ",$P(AMHRY,U,12)
 ..I $P(AMHRY,U,20)="PCC" S AMHRV=$P(AMHRY,U,14) I AMHRV,$D(^AUPNVPOV("AD",AMHRV)) D
 ...S AMHRC=0 W !?3,"DXs: "
 ...S AMHRX=0 F  S AMHRX=$O(^AUPNVPOV("AD",AMHRV,AMHRX)) Q:AMHRX'=+AMHRX!($D(AMHRQUIT))  D
 ....S AMHRC=AMHRC+1
 ....W:AMHRC'=1 ! W ?8,$$VAL^XBDIQ1(9000010.07,AMHRX,.01),?17,$E($$VAL^XBDIQ1(9000010.07,AMHRX,.04),1,60)
 ..I $P(AMHRY,U,20)="BH" S AMHRV=$P(AMHRY,U,15) I AMHRV,$D(^AMHRPRO("AD",AMHRV)) D
 ...S AMHRC=0 W !?3,"DXs: "
 ...S AMHRX=0 F  S AMHRX=$O(^AMHRPRO("AD",AMHRV,AMHRX)) Q:AMHRX'=+AMHRX!($D(AMHRQUIT))  D
 ....S AMHRC=AMHRC+1
 ....W:AMHRC'=1 ! W ?8,$$VAL^XBDIQ1(9002011.01,AMHRX,.01),?17,$E($$VAL^XBDIQ1(9002011.01,AMHRX,.04),1,60)
 ..W !?3,"Primary Provider on Visit: ",?31,$P(AMHRY,U,7)
 ..W !?3,"    Provider who screened: ",?31,$P(AMHRY,U,5)
 Q
H ;
 S AMHRSORV=$$HRN^AUPNPAT(DFN,DUZ(2))
 Q
N ;
 S AMHRSORV=$P(^DPT(DFN,0),U)
 Q
P ;
 S AMHRSORV=$P(AMHRY,U,5)
 Q
R ;
 S AMHRSORV=$P($P(AMHRY,U,2),";")_"  "_$P($P(AMHRY,U,2),";",2)
 Q
D ;
 S AMHRSORV=$P(AMHRY,U,1)
 Q
A S AMHRSORV=$P(AMHRY,U,4)
 Q
G ;
 S AMHRSORV=$P(AMHRY,U,3)
 Q
C ;
 S AMHRSORV=$P(AMHRY,U,6)
 Q
T ;
 S %=$$HRN^AUPNPAT(DFN,DUZ(2))
 S %=%+10000000,%=$E(%,7,8)_"-"_+$E(%,2,8)
 S AMHRSORV=%
 Q
DT(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
 ;
