APCLDE1P ; IHS/CMI/LAB - list refusals ; 
 ;;2.0;IHS PCC SUITE;**2**;MAY 14, 2009
 ;
 ;
PRINT ;EP - called from xbdbque
 D PRINT1
 D DONE
 Q
PRINT1 ;
 S APCLPG=0 K APCLQUIT
 K APCLLSTP
 I '$D(^XTMP("APCLDE1",APCLJ,APCLH)) D HEADER W !!,"No data to report.",! G DONE
 D HEADER
 S APCLTOT=$$TOT
 W !,"     Total Number of Patients screened",?40,$J($$COM(APCLTOT,0),8)
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
 ;D MH
 Q:$$END
 ;D SS
 Q:$$END
 ;D CD
 Q:$$END
 K ^TMP($J)
 I APCLLIST D LIST
 Q
RES ;
 Q:'$D(APCLTALL(1))
 ;TALLY BY RESULT FIRST
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,2) S R=$P(R,";")_"  "_$P(R,";",2) S:R="" R="NO RESULT RECORDED" S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"                              By Result",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .S Y=$L(APCLX),Y=38-Y W !?Y,APCLX,?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 Q
GENDER ;
 Q:'$D(APCLTALL(2))
 ;TALLY BY GENDER OF PATIENT
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,3) S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"                              By Gender",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L(APCLX),Y=38-Y W !?Y,APCLX,?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 .Q
 Q
AGE ;
 Q:'$D(APCLTALL(3))
 ;TALLY BY age OF PATIENT
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,4) S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"                                By Age",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L(APCLX_" yrs"),Y=38-Y W !?Y,APCLX," yrs",?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 Q
PRVSC ;
 Q:'$D(APCLTALL(4))
 ;TALLY BY PRIMARY provider OF service
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,5) S:R="" R="UNKNOWN" S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"              By Provider who screened",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L(APCLX),Y=38-Y W !?Y,APCLX,?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 Q
PRVV ;
 Q:'$D(APCLTALL(7))
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,7) S:R="" R="UNKNOWN" S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"           By Primary Provider of Visit",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L(APCLX),Y=38-Y W !?Y,APCLX,?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 Q
DESPRV ;
 Q:'$D(APCLTALL(11))
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,11) S:R="" R="UNKNOWN" S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"     By Designated Primary Care Provider",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L(APCLX),Y=38-Y W !?Y,APCLX,?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 Q
MH ;
 Q:'$D(APCLTALL(8))
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,8) S:R="" R="UNKNOWN" S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"     By Designated Mental Health Provider",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L(APCLX),Y=38-Y W !?Y,APCLX,?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 Q
SS ;
 Q:'$D(APCLTALL(9))
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,9) S:R="" R="UNKNOWN" S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"    By Designated Social Services Provider",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L(APCLX),Y=38-Y W !?Y,APCLX,?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 Q
CD ;
 Q:'$D(APCLTALL(10))
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,10) S:R="" R="UNKNOWN" S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"     By Designated A/SA Provider",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L(APCLX),Y=38-Y W !?Y,APCLX,?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 Q
CLINIC ;
 Q:'$D(APCLTALL(5))
 ;TALLY BY clinic
 K APCLRES S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,6) S:R="" R="UNKNOWN" S APCLRES(R)=$G(APCLRES(R))+1
 W !
 W !,"                              By Clinic",!
 S APCLX="" F  S APCLX=$O(APCLRES(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L(APCLX),Y=38-Y W !?Y,APCLX,?40,$J($$COM($G(APCLRES(APCLX)),0),8),?55,$$PER(APCLRES(APCLX),APCLTOT) K APCLRES(APCLX)
 Q
DATE ;
 Q:'$D(APCLTALL(6))
 ;TALLY BY date OF service
 K ^TMP($J) S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  D
 .S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)  ;S D=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,""),-1) S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X,D)
 .S R=$P(APCLY,U,1) S ^TMP($J,R)=$G(^TMP($J,R))+1
 W !
 W !,"                               By Date",!
 S APCLX="" F  S APCLX=$O(^TMP($J,APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 .Q:$$END
 .S Y=$L($$FMTE^XLFDT(APCLX)),Y=38-Y W !?Y,$$FMTE^XLFDT(APCLX),?40,$J($$COM($G(^TMP($J,APCLX)),0),8),?55,$$PER(^TMP($J,APCLX),APCLTOT) K ^TMP($J,APCLX)
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
 I $D(APCLQUIT) Q 1
 Q 0
ENDL() ;
 I $Y<(IOSL-8) Q 0
 D HEADER
 I $D(APCLQUIT) Q 1
 Q 0
TOT() ;
 NEW C,X
 S C=0
 S X=0 F  S X=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",X)) Q:X'=+X  S C=C+1
 Q C
HEADER ;EP
 G:'APCLPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLQUIT="" Q
HEADER1 ;
 W:$D(IOF) @IOF S APCLPG=APCLPG+1
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",APCLPG,!
 W !,$$CTR("***  DEPRESSION SCREENING PATIENT TALLY"_$S(APCLLIST:" AND PATIENT LISTING",1:"")_"  ***",80),!
 S X="Screening Dates: "_$$FMTE^XLFDT(APCLBD)_" to "_$$FMTE^XLFDT(APCLED) W $$CTR(X,80),!
 I APCLEXPC S X="This report includes data from the BH Clinics" W $$CTR(X,80),!
 I 'APCLEXPC S X="This report excludes data from the BH Clinics" W $$CTR(X,80),!
 I $G(APCLLSTP) W !?35,"DATE",!,"PATIENT NAME",?22,"HRN",?29,"AGE",?35,"SCREENED",?55,"CLINIC"
 W !,$TR($J("",80)," ","-")
 I '$G(APCLLSTP) W !?46,"#",?53,"% of patients"
 Q
DONE ;
 K ^TMP($J)
 K ^XTMP("APCLDE1",APCLJ,APCLH)
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
 S APCLPG=0 K APCLQUIT
 S APCLLSTP=1
 D HEADER
 K ^TMP($J)
 ;resort by sort item
 S DFN=0 F  S DFN=$O(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",DFN)) Q:DFN'=+DFN  S APCLY=^XTMP("APCLDE1",APCLJ,APCLH,"PTS",DFN) D
 .D @APCLSORT
 .I APCLSORV="" S APCLSORV="--"
 .S ^TMP($J,"PTS",APCLSORV,DFN)=APCLY
 .Q
 S APCLSORV="" F  S APCLSORV=$O(^TMP($J,"PTS",APCLSORV)) Q:APCLSORV=""!($D(APCLQUIT))  D
 .S DFN=0 F  S DFN=$O(^TMP($J,"PTS",APCLSORV,DFN)) Q:DFN'=+DFN!($D(APCLQUIT))  D
 ..Q:$$ENDL
 ..S APCLY=^TMP($J,"PTS",APCLSORV,DFN)
 ..W !!,$E($P(^DPT(DFN,0),U),1,20),?22,$$HRN^AUPNPAT(DFN,DUZ(2)),?29,$P(APCLY,U,4),?33,$P(^DPT(DFN,0),U,2),?35,$$DT($P(APCLY,U,1)),?55,$E($P(APCLY,U,6),1,20)
 ..W !?3,"Type/Result: ",$P($P(APCLY,U,2),";")_"  "_$P($P(APCLY,U,2),";",2)
 ..I $P(APCLY,U,12)]"" W !?3,"Comment: ",$P(APCLY,U,12)
 ..I $P(APCLY,U,20)="PCC" S APCLV=$P(APCLY,U,14) I APCLV,$D(^AUPNVPOV("AD",APCLV)) D
 ...S APCLC=0 W !?3,"DXs: "
 ...S APCLX=0 F  S APCLX=$O(^AUPNVPOV("AD",APCLV,APCLX)) Q:APCLX'=+APCLX!($D(APCLQUIT))  D
 ....S APCLC=APCLC+1
 ....W:APCLC'=1 ! W ?8,$$VAL^XBDIQ1(9000010.07,APCLX,.01),?17,$E($$VAL^XBDIQ1(9000010.07,APCLX,.04),1,60)
 ..I $P(APCLY,U,20)="BH" S APCLV=$P(APCLY,U,15) I APCLV,$D(^AMHRPRO("AD",APCLV)) D
 ...S APCLC=0 W !?3,"DXs: "
 ...S APCLX=0 F  S APCLX=$O(^AMHRPRO("AD",APCLV,APCLX)) Q:APCLX'=+APCLX!($D(APCLQUIT))  D
 ....S APCLC=APCLC+1
 ....W:APCLC'=1 ! W ?8,$$VAL^XBDIQ1(9002011.01,APCLX,.01),?17,$E($$VAL^XBDIQ1(9002011.01,APCLX,.04),1,60)
 ..W !?3,"Primary Provider on Visit: ",?31,$P(APCLY,U,7)
 ..W !?3,"    Provider who screened: ",?31,$P(APCLY,U,5)
 ..I 'APCLDP W ! Q
 ..K APCLX S X=$$VAL^XBDIQ1(9002011.55,DFN,.02) I X]"" S APCLX("MENTAL HEALTH")=X
 ..S X=$$VAL^XBDIQ1(9002011.55,DFN,.03) I X]"" S APCLX("SOCIAL SERVICES")=X
 ..S X=$$VAL^XBDIQ1(9002011.55,DFN,.04) I X]"" S APCLX("CHEMICAL DEPENDENCY")=X
 ..S X=$$VAL^XBDIQ1(9000001,DFN,.14) I X]"" S APCLX("DESIGNATED PRIMARY PROVIDER")=X
 ..S APCLXX=0 F  S APCLXX=$O(^BDPRECN("C",DFN,APCLXX)) Q:APCLXX'=+APCLXX  D
 ...S A=$$VAL^XBDIQ1(90360.1,APCLXX,.01) I '$D(APCLX(A)) S APCLX(A)=$$VAL^XBDIQ1(90360.1,APCLXX,.03)
 ..Q:'$D(APCLX)
 ..W !?3,"     Designated Providers: "
 ..S APCLX="",APCLC=0 F  S APCLX=$O(APCLX(APCLX)) Q:APCLX=""!($D(APCLQUIT))  D
 ...Q:$$END
 ...S APCLC=APCLC+1
 ...W:APCLC'=1 ! W ?31,$S(APCLX="DESIGNATED PRIMARY PROVIDER":"PRIMARY CARE",1:APCLX),": ",APCLX(APCLX)
 Q
H ;
 S APCLSORV=$$HRN^AUPNPAT(DFN,DUZ(2))
 Q
N ;
 S APCLSORV=$P(^DPT(DFN,0),U)
 Q
P ;
 S APCLSORV=$P(APCLY,U,5)
 Q
R ;
 S APCLSORV=$P($P(APCLY,U,2),";")_"  "_$P($P(APCLY,U,2),";",2)
 Q
D ;
 S APCLSORV=$P(APCLY,U,1)
 Q
A S APCLSORV=$P(APCLY,U,4)
 Q
G ;
 S APCLSORV=$P(APCLY,U,3)
 Q
C ;
 S APCLSORV=$P(APCLY,U,6)
 Q
T ;
 S %=$$HRN^AUPNPAT(DFN,DUZ(2))
 S %=%+10000000,%=$E(%,7,8)_"-"_+$E(%,2,8)
 S APCLSORV=%
 Q
DT(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
 ;
