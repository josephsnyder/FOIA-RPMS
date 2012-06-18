ABPVRX03 ;PRINT RX BILLING SUMMARY; [ 06/02/91  9:44 AM ]
 ;;2.0;FACILITY PVT-INS TRACKING;*0*;IHS-OKC/KJR;AUGUST 7, 1991
START ;
 S ZTSK=ABPV("TASK"),ABPVSD=ABPV("BEG"),ABPVFD=ABPV("END")
 I '$D(DT) S X="T" D ^%DT S DT=Y
 S $P(ABPV80D,"-",80)="" ;80 DASHES
 S Y=ABPVSD X ^DD("DD") S ABPVSDY=Y S Y=ABPVFD X ^DD("DD") S ABPVFDY=Y S Y=DT X ^DD("DD") S ABPVDTP=Y
 S ABPVFEE=4.5,ABPVRXZM=0,ZFL1=""
 S ABPVPG=0,ZDFNS=0
 S ABPVDFN=0 F I=0:0 S ABPVDFN=$O(^%ZTSK(ZTSK,"RX",ABPVDFN)) G:ABPVDFN="" DONE D C1
C1 S ABPVHRN=$P(ABPVDFN,"."),DFN=$P(ABPVDFN,".",2)
 S ABPVDPT=^DPT(DFN,0),ABPVNAME=$P(ABPVDPT,"^"),Y=$P(ABPVDPT,"^",3) X ^DD("DD")
 ;
 D HEAD:ABPVDFN'=ZDFNS
 S ZDFNS=ABPVDFN
 W !!,$J(ABPVHRN,6),?8,ABPVNAME,?40,Y
SCRIP S ABPVDT="" F K=0:0 S ABPVDT=$O(^%ZTSK(ZTSK,"RX",ABPVDFN,ABPVDT)) Q:ABPVDT'=+ABPVDT  D C2
 D SCRIPSUM Q
C2 S ABPVPRVI=0 F J=0:0 S ABPVPRVI=$O(^AUPNPRVT(DFN,11,ABPVPRVI)) Q:ABPVPRVI'=+ABPVPRVI  D PI
 D:ZFL1'=ABPVDFN SUBHD
 S ABPVPDFN="" F L=0:0 S ABPVPDFN=$O(^%ZTSK(ZTSK,"RX",ABPVDFN,ABPVDT,ABPVPDFN)) Q:ABPVPDFN'=+ABPVPDFN  D PRNT
 Q
PI Q:ZFL1=ABPVDFN  S ABPVPRV=^AUPNPRVT(DFN,11,ABPVPRVI,0)
 S ABPVPRVE=$P(ABPVPRV,"^",7),ABPVPRVS=$P(ABPVPRV,"^",6) I ABPVPRVE]"",ABPVPRVE<ABPVDT Q
 Q:ABPVPRVS>ABPVDT
 I '$D(^AUTNINS(+ABPVPRV,0)) S ZINSNM="UNKNOWN" G PI4
 S ZINSNM=$P(^AUTNINS(+ABPVPRV,0),"^",1)
PI4 W !!,?8,ZINSNM,?40,$P(ABPVPRV,"^",2)
 W !,?8,$P(ABPVPRV,"^",4) I $P(ABPVPRV,"^",5)]"" W ?40,$P(^AUTTRLSH($P(ABPVPRV,"^",5),0),"^")
 W ! Q
SCRIPSUM ;PRINT SUM OF DRUG COST
 W !,?13,"****  TOTAL  DRUG  COST  **** =  ",?42,$J(ABPVRXZM,6,2),! S ABPVRXZM=0 Q
PRNT I $Y>(IOSL-10) W @IOF D SUBHD
 S ABPVN0=^PSRX(ABPVPDFN,0),ABPVDDFN=$P(ABPVN0,"^",6),ABPVQTY=$P(ABPVN0,"^",7)
 S Y=ABPVDT X ^DD("DD")
 W !,Y
 W ?13,$P(^PSDRUG(ABPVDDFN,0),"^")
 I $D(^PSDRUG(ABPVDDFN,2)) S ABPVNDC=$P(^(2),"^",4) W ?42,ABPVNDC
 S ABPVDU=$S($D(^PSDRUG(ABPVDDFN,660)):$P(^(660),"^",8),1:"")
 W !,?13,ABPVQTY_" "_ABPVDU
 S ZUPDATE="" I $D(^PSDRUG(ABPVDDFN,9999999))=1!($D(^PSDRUG(ABPVDDFN,9999999))=11) S ZUPDATE=$P(^PSDRUG(ABPVDDFN,9999999),"^",2)
 I +ZUPDATE=0 W ?56,"PRICING INFO NOT CURRENT",! G PRNTENDZ
 S ABPVPPDU=$P(^PSDRUG(ABPVDDFN,660),"^",6)
 I +ABPVPPDU=0 W ?56,"PRICING INFO NOT ON FILE",! G PRNTENDZ
 S ABPVCST=ABPVQTY*ABPVPPDU,ABPVBILL=ABPVFEE+ABPVCST
 W " at $"_$J(ABPVPPDU,6,3)_" each",?56,$J(ABPVCST,6,2),?64,$J(ABPVFEE,6,2),?72,$J(ABPVBILL,6,2),!
PRNTEND S ABPVRXZM=ABPVRXZM+ABPVBILL
PRNTENDZ S ZFL1=ABPVDFN Q
HEAD S ABPVPG=ABPVPG+1 G:ABPVPG=1 HEAD1
 ;
HEAD1 W @IOF
 W $P(^DIC(4,ABPV("SITE"),0),"^"),?57,ABPVDTP,?70,"Page ",ABPVPG,!
 W !,"Prescriptions between "_ABPVSDY_" and "_ABPVFDY_" for Prvt. Insurance Eligibles."
 W !!,?2,"HRCN",?8,"Patient Name",?40,"DOB",!!,?8,"Insurer",?40,"Policy Number",!,?8,"Name of Insured",?40,"Relationship"
 W !,ABPV80D
 Q
SUBHD ;
 W !,"Fill Date",?13,"Drug",?42,"NDC Code",?58,"Cost",?66,"Fee",?73,"Total",!,"-----------",?13,"---------------------------",?42,"------------",?58,"------",?64,"------",?72,"------"
 Q
DONE W @IOF X ^%ZIS("C")
 K ABPVD0D,ABPVBILL,ABPVCST,ABPVDDFN,ABPVDFN,ABPVDPT,ABPVDT,ABPVDTP,ABPVDU,ABPVFD,ABPVFDY,ABPVFEE,ABPVHRN,ABPVPRVE,ABPVPRIV,ABPVPRVS,ABPVQTY,ABPVRXZM,ABPVS,J,K,L,X,Y,ZDFNS,ZFL1,ZINSNM,ZTSK,ZUPDATE
 Q
