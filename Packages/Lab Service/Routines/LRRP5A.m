LRRP5A ; IHS/DIR/AAB - COLLECTION REPORT-PRINT 10/20/92 ;  [ 07/22/2002  1:39 PM ]
 ;;5.2;LR;**1006,1013**;JUL 15, 2002
 ;
 ;;5.2;LAB SERVICE;**201**;Sep 27, 1994
EN ;
PRINT ;
 W:$E(IOST,1,2)="C-" @IOF
 I LRRPT=1 D
 .D DET
 .Q:LREND
 .D:$E(IOST,1,2)="C-" PAUSE Q:LREND  W @IOF
 Q:LREND
 D SUM Q:LREND
 W !!?23,"***  END OF REPORT  ***"
 Q
DET ;
 F I=1:1:80 S $P(LRBLANK," ",80)=" "
 D HDR
 S LRPAT="",LRPATCNT=0
 F  S LRPAT=$O(^TMP($J,"PAT",LRPAT)) Q:(LRPAT="")!(LREND)  D
 .S LRSSN=""
 .F  S LRSSN=$O(^TMP($J,"PAT",LRPAT,LRSSN)) Q:(LRSSN="")!(LREND)  D
 ..S LRLCNT=0 K LRBUF
 ..S LRORD="",LRPATCNT=LRPATCNT+1,LRTGLNAM=1
 ..F  S LRORD=$O(^TMP($J,"PAT",LRPAT,LRSSN,LRORD)) Q:(LRORD="")!(LREND)  D
 ...S LRCS1="",LRTGLORD=1
 ...F  S LRCS1=$O(^TMP($J,"PAT",LRPAT,LRSSN,LRORD,LRCS1)) Q:(LRCS1="")!(LREND)  D
 ....S LRLOC=$P(^TMP($J,"PAT",LRPAT,LRSSN,LRORD,LRCS1,0),U,2)
 ....S LRCLCTD=$P(^TMP($J,"PAT",LRPAT,LRSSN,LRORD,LRCS1,0),U,3)
 ....I LRTGLNAM D
 .....S LRLCNT=LRLCNT+1,LRBUF(LRLCNT)=$E(LRPAT_LRBLANK,1,18)_"  "_LRSSN
 .....S LRTGLNAM=0
 ....S LRLCNT=LRLCNT+1
 ....I LRTGLORD D
 .....S LRBUF(LRLCNT)="  "_$E(LRORD_LRBLANK,1,9)
 .....S LRTGLORD=0
 ....E  S LRBUF(LRLCNT)=$E(LRBLANK,1,11)
 ....S LRBUF(LRLCNT)=LRBUF(LRLCNT)_$E(LRLOC_LRBLANK,1,7)_"  "
 ....S LRBUF(LRLCNT)=LRBUF(LRLCNT)_$E(LRCS1_LRBLANK,1,10)_" "_LRCLCTD
 ....S LRTAB="",LRTN=0
 ....F  S LRTN=$O(^TMP($J,"PAT",LRPAT,LRSSN,LRORD,LRCS1,LRTN)) Q:(LRTN="")!(LREND)  D
 .....S LRTST=$E((^TMP($J,"PAT",LRPAT,LRSSN,LRORD,LRCS1,LRTN)_"      "),1,10)
 .....I $L(LRBUF(LRLCNT))>70 D
 ......S LRLCNT=LRLCNT+1,LRBUF(LRLCNT)=""
 ......S LRTAB=$E(LRBLANK,1,22)
 .....S LRBUF(LRLCNT)=LRBUF(LRLCNT)_LRTAB_LRTST
 .....S LRTAB="  "
 ..D PRNTBUF
 ..Q:LREND
 Q:LREND
 I ($Y>(IOSL-7)) D:$E(IOST,1,2)="C-" PAUSE Q:LREND  W @IOF D HDR
 F I=$Y:1:(IOSL-6) W !
 W "NUMBER OF PATIENTS LISTED :  ",LRPATCNT
 Q
PRNTBUF ;
 I ((LRLCNT+$Y)>(IOSL-6))&($Y>7) D
 .D:$E(IOST,1,2)="C-" PAUSE Q:LREND
 .W @IOF D HDR
 Q:LREND
 F L=1:1:LRLCNT Q:LREND  D
 .I ($Y>(IOSL-6)) D
 ..D:$E(IOST,1,2)="C-" PAUSE Q:LREND  W @IOF D HDR
 ..W !,$E(LRPAT,1,18),?20,LRSSN,?35,"*CONT*"
 .Q:LREND
 .W !,LRBUF(L)
 Q:LREND
 W !
 Q
SUM ;
 N LRN,LRC,LRU,LRP,LRREC,LRLOC,LRGN,LRGC,LRGU,LRGP,I
 S (LRGN,LRGC,LRGU,LRGP)=0
 D SUMHDR
 S LRLOC=""
 F  S LRLOC=$O(^TMP($J,"LOCTOT",LRLOC)) Q:(LRLOC="")!(LREND)  D
 .S LRREC=$G(^TMP($J,"LOCTOT",LRLOC,0))
 .Q:'$L(LRREC)
 .S LRN=+$P(LRREC,U),LRC=+$P(LRREC,U,2)
 .S LRU=+$P(LRREC,U,3),LRP=+$P(LRREC,U,4)
 .S LRGN=LRGN+LRN,LRGC=LRGC+LRC,LRGU=LRGU+LRU,LRGP=LRGP+LRP
 .I ($Y>(IOSL-6)) D
 ..D:$E(IOST,1,2)="C-" PAUSE Q:LREND  W @IOF D SUMHDR
 .Q:LREND
 .W LRLOC,?10,$J(LRN,8),?20,$J(LRC,9),?31,$J(LRU,11),?44,$J(LRP,11),!
 Q:LREND
 F I=1:1:80 W "-"
 W !
 W "TOTAL",?10,$J(LRGN,8),?20,$J(LRGC,9)
 W ?31,$J(LRGU,11),?44,$J(LRGP,11),!
 Q
SUMHDR ;
 N I
 ;S LRPAG=LRPAG+1 F I=1:1:80 W "-"
 S LRPAG=LRPAG+1 ;F I=1:1:80 W "-"  ;IHS/ANMC/CLS 08/18/96
 W !,"LAB ORDERS BY COLLECTION TYPE"
 W !,LRRCNAM," ORDERS ON "
 W LRODAT," -- SUMMARY",?62,LRDAT,?72," PAGE ",LRPAG,!
 W !?44,"Partially",!
 W "Location",?10,"Patients",?20,"Collected",?31,"Uncollected"
 W ?44,"Collected",!
 F I=1:1:80 W "-"
 W !
 Q
HDR ;
 ;S (LRTGLNAM,LRTGLORD)=1,LRPAG=LRPAG+1 F I=1:1:80 W "-"
 S (LRTGLNAM,LRTGLORD)=1,LRPAG=LRPAG+1 ;F I=1:1:80 W "-"  ;IHS/ANMC/CLS 08/18/96
 W !,"LAB ORDERS BY COLLECTION TYPE"
 W !,LRRCNAM," ORDERS ON "
 W LRODAT,?(62),LRDAT,?(72)," PAGE ",LRPAG
 ;W !!,"Name",?20,"SSN",!?2,"Order #",?11,"Location",?20,"Coll Sample"
 W !!,"Name",?20,"HRCN",!?2,"Order #",?11,"Location",?20,"Coll Sample"  ;IHS/ANMC/CLS 08/18/96
 W ?34,"Tests",! F I=1:1:80 W "-"
 Q
PAUSE ;
 K DIR S DIR(0)="E" D ^DIR
 S:($D(DTOUT)#2)!($D(DUOUT)#2)!($D(DIRUT)#2) LREND=1
 Q
