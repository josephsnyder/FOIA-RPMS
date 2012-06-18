IBOBL	;ALB/AAS - LIST ALL BILLS FOR AN EPISODE OF CARE ; 25-MAY-90
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	;
	;MAP TO DGCROBL
	;
%	S U="^"
	;
ASK	;
	;***
	;I $D(XRT0) S:'$D(XRTN) XRTN="IBOBL" D T1^%ZOSV ;stop rt clock
	;S XRTL=$ZU(0),XRTN="IBOBL-1" D T0^%ZOSV ;start rt clock
	;
	S DIC="^DGCR(399,",DIC(0)="AEMQZ" D ^DIC K DIC Q:Y<1  S DGIFN=+Y,DGIFN1=$P(Y(0),"^",17),DFN=$P(Y(0),"^",2),DGEVDT=$P(Y(0),"^",3) G:+DGIFN1<1 END
	;
DEV	; -- ask device
	S %ZIS="QM" D ^%ZIS G:POP END
	I $D(IO("Q")) K IO("Q") D  G END
	.S ZTRTN="START^IBOBL",ZTSAVE("DFN")="",ZTSAVE("DG*")="",ZTDESC="IB - List all Bills for an Episode"
	.D ^%ZTLOAD K ZTSK D HOME^%ZIS
	;
	U IO
	;
	;***
	;I $D(XRT0) S:'$D(XRTN) XRTN="IBOBL" D T1^%ZOSV ;stop rt clock
START	;entry from DQing
	;***
	;S XRTL=$ZU(0),XRTN="IBOBL-2" D T0^%ZOSV ;start rt clock
	S Y=DGEVDT X ^DD("DD") S DGEVDT=Y,IBQUIT=0,DGLINE="",$P(DGLINE,"-",IOM)="",DGPAG=0 S X="NOW",%DT="T" D ^%DT X ^DD("DD") S DGDATE=Y D HDR1
	;
LOOP	S IBIFN=""
	F I=0:0 S IBIFN=$O(^DGCR(399,"AC",DGIFN1,IBIFN)) Q:'IBIFN!(IBQUIT)  D ONE I $D(^DGCR(399,"AC",IBIFN)),IBIFN'=DGIFN1 D LOOP2
	D PAUSE:'IBQUIT G END
	;
	;print bills who's primary bill field point to secondary bill for this episode
LOOP2	S IBIFN2=IBIFN,IBIFN="",DGIFN2=DGIFN1,DGIFN1=IBIFN2
	F J=0:0 S IBIFN=$O(^DGCR(399,"AC",DGIFN1,IBIFN)) Q:'IBIFN!(IBQUIT)  D ONE
	S DGIFN=DGIFN2,IBIFN=IBIFN2
	Q
ONE	D GVAR^IBCBB
	D:($Y>(IOSL-5)) HDR Q:IBQUIT
	W !,IBBNO,?12,$S(IBAT']"":"",$D(^DGCR(399.3,IBAT,0)):$P(^(0),"^"),1:"")
	W ?34,$S(IBCL=1:"INPATIENT",IBCL=2:"HUMANITARIAN (INPT.).",IBCL=3:"OUTPATIENT",IBCL=4:"HUMANITARIAN (OPT.)",1:""),?57
	F I=IBEVDT,IBFDT,IBTDT W $E(I,4,5)_"/"_$E(I,6,7)_"/"_$E(I,2,3),"    "
	W $S(IBST=1:"ENTERED/NOT REV.",IBST=2:"REVIEWED",IBST=3:"AUTHORIZED",IBST=4:"PRINTED",IBST=7:"CANCELLED",1:"")
	W ?112,$P("NON-PAYMENT/ZERO^ADMIT - DISCHARGE^INTERIM - FIRST^INTERIM - CONTINUING^INTERIM - LAST^LATE CHARGE(S) ONLY^ADJUSTMENT OF PRIOR^REPLACEMENT OF PRIOR","^",(IBTF+1))
	W !?4,"PAYOR: ",$S(IBWHO="i":"Insurance Co.",IBWHO="p":"Patient",1:"Institution")," - "
	S DGPAYOR="UNKNOWN"
	I IBWHO="i",+IBNDM,$D(^DIC(36,+IBNDM,0)) S DGPAYOR=$P(^(0),"^")
	I IBWHO="o",$P(IBNDM,"^",11),$D(^DIC(11,$P(IBNDM,"^",11),0)) S DGPAYOR=$P(^(0),"^")
	I IBWHO="p",+DFN,$D(^DPT(DFN,0)) S DGPAYOR=$P(^(0),"^")
	W DGPAYOR K DGPAYOR
	Q
	;
HDR	I $E(IOST,1,2)["C-" D PAUSE Q:IBQUIT
HDR1	I $E(IOST,1,2)["C-"!(DGPAG) W @IOF
	S DGPAG=DGPAG+1 W "LIST OF ALL BILLS FOR AN EPISODE OF CARE",?(IOM-30),DGDATE,"  PAGE ",DGPAG
	W !,"FOR PATIENT: ",$P(^DPT(DFN,0),"^"),"  EVENT DATE: ",DGEVDT
	W !?68,"STATEMENT   STATEMENT"
	W !,"BILL NO.    RATE TYPE             CLASSIFICATION        EVENT DATE  FROM DATE    TO DATE     STATUS             TIMEFRAME OF BILL"
	W !,DGLINE
	Q
PAUSE	S IBX1="" R:$E(IOST,1,2)["C-" !,"Enter ""^"" to quit display, return to continue",IBX1:DTIME S IBQUIT=$S(IBX1["^":1,1:0) Q
	;
END	;
	;***
	;I $D(XRT0) S:'$D(XRTN) XRTN="IBOBL" D T1^%ZOSV ;stop rt clock
	I $D(ZTQUEUED) S ZTREQ="@" Q
	D END^IBCBB1
	K %DT,DGIFN,DGIFN1,IBIFN1,IBQUIT,IBX1,IBCNT,DFN,IBIFN,DGDATE,DGEVDT,DGLINE,DGPAG,^UTILITY($J)
	D ^%ZISC G ASK
