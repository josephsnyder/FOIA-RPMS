PSOCST5 ;BHAM ISC/SAB - PROVIDER BY DRUG COST ; 10/01/92 16:33
 ;;7.0;OUTPATIENT PHARMACY;**29,31**;DEC 1997
 ;External Ref. to ^PSDRUG is supp. by DBIA# 221
BEG S RP=5 D HDC^PSOCSTX F  D CDT^PSOCSTX Q:$G(CTR)  D PRV^PSOCSTX Q:$G(CTR)  S RP=0 D CTP^PSOCSTX Q:$G(CTR)  I RP=0 D DEV Q
 D EX Q
DEV D DVC^PSOCSTX Q:$G(CTR)
 K PSOION I $D(IO("Q")) S ZTDESC="PROVIDER BY DRUG COST",ZTRTN="START^PSOCST5" D PAS^PSOCSTX
 I  K IO("Q") D ^%ZTLOAD W:$D(ZTSK) !,"REPORT QUEUED TO PRINT !!",! D EX Q
START U IO K ^TMP($J) F PSDT=(BEGDATE-1):0:ENDDATE S PSDT=$O(^PSCST(PSDT)) Q:'PSDT!(PSDT>ENDDATE)  D @$S('IFN:"PHY",1:"DRUG")
 D ZER^PSOCSTX S PHYX="" I $O(^TMP($J,PHYX))']"" D HD1 Q
 F I=0:0 S PHYX=$O(^TMP($J,PHYX)) Q:PHYX=""  D HD Q:$G(CTR)  S DRUGX="" F G=0:0 S DRUGX=$O(^TMP($J,PHYX,DRUGX)) D:DRUGX="" SUB Q:DRUGX=""  D
 .D HD:($Y+4)>IOSL Q:$G(CTR)  S Y=^TMP($J,PHYX,DRUGX),TTX=DRUGX D PRT^PSOCSTX
 I 'IFN,'CTR D TOT^PSOCSTX
EX D EX^PSOCSTX Q
PHY F PHY=0:0 S PHY=$O(^PSCST(PSDT,"P",PHY)) Q:'PHY  D DRUG
 Q
DRUG F DRUG=0:0 S DRUG=$O(^PSCST(PSDT,"P",PHY,"D",DRUG)) Q:'DRUG  I $D(^(DRUG,0)) S X=^(0) D STORE
 Q
STORE S PHYX=$S($D(^VA(200,+PHY,0)):$P(^(0),"^"),1:"UNKNOWN")
 Q:'$D(^PSDRUG(DRUG,0))  S DRUGX=$P(^(0),"^") S:'$D(^TMP($J,PHYX,DRUGX)) ^TMP($J,PHYX,DRUGX)="^0^0^0"
 S UTL=^TMP($J,PHYX,DRUGX),^TMP($J,PHYX,DRUGX)="^"_($P(UTL,"^",2)+$P(X,"^",2))_"^"_($P(UTL,"^",3)+$P(X,"^",3))_"^"_($P(UTL,"^",4)+$P(X,"^",4))
 Q
HD D HD^PSOCSTX Q:$G(CTR)  W !,?5,"Provider: ",PHYX
 Q
SUB D HD:($Y+2)>IOSL D FTU^PSOCSTX W !,"Total for ",PHYX D FTT^PSOCSTX,FTU^PSOCSTX,SUB^PSOCSTX
 Q
HD1 D HD^PSOCSTX,HDN^PSOCSTX Q
