SROSRPT ;TAMPA/CFB - SURGEONS REPORT ; 27 Jan 1989  8:15 AM
 ;;3.0; Surgery ;;24 Jun 93
 I '$D(SRSITE) D ^SROVAR S SRSITE("KILL")=1 I '$D(SRSITE) G END
 I '$D(SRTN) K SRNEWOP D ^SROPS G:'$D(SRTN) END
 Q:'$D(SRTN)
EN2 ; entry from transcriptionists menu
 K %ZIS,IO("Q") S %ZIS="Q" D ^%ZIS G:POP END I $D(IO("Q")) K IO("Q") S ZTDESC="Operation Report",ZTRTN="RPT^SROSRPT",ZTSAVE("SRSITE(")="",ZTSAVE("SRTN")=SRTN,ZTSAVE("SRT")="UL" D ^%ZTLOAD G END
 G RPT
RPT ; entry when queued
 S SRSOUT=0,UL="Q" S:IOST["P" SRT="UL" S Q(1)=0 G ^SROSRPT0
HDR I $D(ZTQUEUED) D ^SROSTOP I SRHALT S SRSOUT=1 Q
 S:'($D(SRT)#2) SRT="Q" S Q(1)=Q(1)+1 W:$Y @IOF W !!!! D UL W !,?5,"MEDICAL RECORD                        OPERATION REPORT    PAGE ",Q(1) D UL W !,?30,"CASE #:",SRTN D UL
 Q
FOOT Q:SRSOUT  W ! D UL W !!,"SURGEON'S SIG: ",?50 D NOW^%DTC S Y=% D D^DIQ S SROPDT=$P(Y,"@")_"  "_$E($P(Y,"@",2),1,5) W SROPDT
 D UL S DFN=$P(^SRF(SRTN,0),"^") D DEM^VADPT
 W !,VADM(1),?50,"AGE: "_VADM(4),?60,"ID#: "_VA("PID"),!,"WARD: ",$S($D(^DPT(DFN,.1)):^(.1),1:""),?50,"ROOM-BED: ",$S($D(^DPT(DFN,.101)):^(.101),1:"")
 D UL W !,"VAMC: "_SRSITE("SITE"),?50,"REPLACEMENT FORM 516",! I SRT="Q" R !,"Press RETURN to continue  ",X:DTIME S:'$T X="^" S:X="^" SRSOUT=1 Q:SRSOUT
 Q
UL Q:SRT'="UL"!(SRSOUT)  I '$D(SRNIGHT),IO(0)=IO,'$D(ZTQUEUED) W !
 W $C(13) F X=1:1:79 W "_"
Q Q
END D ^%ZISC W ! I $D(SRSITE("KILL")) K SRSITE
 Q