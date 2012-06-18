GMRVLWT1 ;HIRMFO/YH,FT-DOT MATRIX PATIENT WEIGHT GRAPH - 2 ;6/13/01  15:00
 ;;4.0;Vitals/Measurements;**1,13**;Apr 25, 1997
 ;
 ; This routine uses the following IAs:
 ; #10061  ^VADPT calls     (supported)
 ;
VAF ;WEIGHT GRAPH
 D DEM^VADPT,INP^VADPT S GMRBTH=$P(VADM(3),"^",2),GMRNAM=VADM(1)
 F GMRK="W","H" D GMRDT
 S (GMRTNM,GMRI)=0 I $D(^TMP($J,"GMRDT")) F  S GMRI=$O(^TMP($J,"GMRDT",GMRI)) Q:GMRI'>0  S GMRTNM=GMRTNM+1
 D GRAPH K GMR3,GMRDAT,GMREN,GMRHDR1,GMRHDR11,GMRHDR10,GMRHDR2,GMRHT,GMRI,GMRJ,GMRK,GMRLINE,GDATA,GMROLD,GMRW,GMRWDIF,GMRPG,GMRPGC,GMRPGS,GMRWHI,GMRWLO,GMRWOFF,GMRSITE,GMRTNM
 K GMRWT,GLPRNTR,GMRTY,GMRNM,GMRVX,GMRVX1,GMRVX2,^TMP($J,"GMRDT"),^TMP($J,"GMRG"),^TMP($J,"GMRVG")
 Q
GRAPH ;
 S:'$D(GFLAG) GFLAG=0 S GMRPGC=0,GMRX1="" F X=1:1:10 S GMRX1=GMRX1_"          "_"|"
 S (GMRX,GMRX2)=GMRX1 F X=1:1:10 S $P(GMRX,"|",X)="__________",$P(GMRX2,"|",X)="----------"
 S GMRPG=$S(GMRTNM=0:1,1:GMRTNM\10+$S(GMRTNM#10>0:1,1:0)) F GMRPGS=1:1:GMRPG S GMRWT=$G(GWT(1))+14.165,GMRWT(1)=9,GMRWT(2)=1 D PAGE Q:GMROUT  ;GMRWT = WEIGHT VALUE WHEN $Y=1
 Q
PAGE ;
 K GMRQUAL W:'($E(IOST)'="C"&'GFLAG) @IOF S GFLAG=1,GMRPGC=GMRPGC+1 W !
 I '$D(^TMP($J,"GMRVG")) W !!!!!!!!,?5,"THERE  IS  NO  DATA  FOR  THIS  PERIOD" X "F Y=$Y:1:(IOSL-6) W !" D FOOTER^GMRVLWT3 Q
 W ! D DATES^GMRVVS2 W !,?6,"Pounds/Kgs",?17,"|",?18,GMRX
 F GMRI=0:0 Q:$Y>55  W ! D SETHD^GMRVLWT2 W ?5,GMRHDR10,?16,$S(GMR3:"-",1:""),?17,"|" D DATAPRT^GMRVLWT2
 W !,?17,"|",GMRX2 F GMRI="W","W1","WQUAL","H","H1","HQUAL","BMI" S GMRLINE(GMRI)=GMRX1
 S GMRNM=0 F GMRDT=0:0 S GMRDT=$O(^TMP($J,"GMRDT",GMRDT)) Q:GMRDT'>0  S GMRNM=GMRNM+1 Q:GMRNM>10  F GMRI="W","H" D:$D(^TMP($J,"GMRVG",GMRI,GMRDT)) STLNP^GMRVLWT3
 F GMRI="W","W1","WQUAL","BMI","H","H1","HQUAL" D
 .S G=$S(GMRI="W":"Weight (lb)",GMRI="W1":"       (kg)",GMRI="WQUAL":"Qualifier",GMRI="H":"Height (in)",GMRI="H1":"       (cm)",GMRI="HQUAL":"Qualifier",GMRI="BMI":"Body Mass Index",1:"")
 . W !,G,?17,"|",GMRLINE(GMRI)
 I 'GMROUT W !,?17,$$REPEAT^XLFSTR("-",111)
 W !,"W: Weight     ** - Abnormal value off of graph"
 W ! I $D(GMRQUAL) S GLPRNTR=1 D LEGEND^GMRVLGQU F I=1:1:5 W !,GLINE(I)
 I IOSL'<($Y+10) F X=1:1 W ! Q:IOSL<($Y+10)
 D FOOTER^GMRVLWT3 S GMRDT="" F GMRNM=1:1:10 S GMRDT=$O(^TMP($J,"GMRDT",GMRDT)) Q:GMRDT'>0  K ^TMP($J,"GMRDT",GMRDT)
 K GG,GI,GMRVJ,GSYNO Q
GMRDT S GMRTNM(GMRK)=0 F GMRI=0:0 S GMRI=$O(^TMP($J,"GMRVG",GMRK,GMRI)) Q:GMRI'>0  S GMRJ="" F X=0:0 S GMRJ=$O(^TMP($J,"GMRVG",GMRK,GMRI,GMRJ)) Q:GMRJ=""  S GMRTNM(GMRK)=GMRTNM(GMRK)+1 S:GMRK'="XI1" ^TMP($J,"GMRDT",GMRI)=""
 Q
