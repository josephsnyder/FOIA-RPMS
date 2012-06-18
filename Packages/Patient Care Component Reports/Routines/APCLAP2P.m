APCLAP2P ; IHS/CMI/LAB - print all visit report ;
 ;;2.0;IHS PCC SUITE;**7**;MAY 14, 2009
START ;
 S APCL80S="-------------------------------------------------------------------------------"
 D NOW^%DTC S Y=X D DD^%DT S APCLDT=Y
 S Y=APCLBD D DD^%DT S APCLBDD=Y S Y=APCLED D DD^%DT S APCLEDD=Y
 S (APCLTOT,APCLPG,APCLVLOC)=0 D HEAD
 K APCLQUIT
 F  S APCLVLOC=$O(^XTMP("APCLAP2",APCLJOB,APCLBTH,"LOCTOT",APCLVLOC)) Q:APCLVLOC=""!($D(APCLQUIT))  D SORT
 I APCLTOTL D
 .S APCLGTOT=0
 .S APCLLTT="ALL LOCATIONS COMBINED"
 .I $Y>(IOSL-6) D HEAD Q:$D(APCLQUIT)
 .W !,APCLLTT W:APCLPROC'="LOS" !
 .S APCLSORT="" F  S APCLSORT=$O(^XTMP("APCLAP2",APCLJOB,APCLBTH,"ALLLOC",APCLSORT)) Q:APCLSORT=""!($D(APCLQUIT))  D
 ..S APCLSRT2="" F  S APCLSRT2=$O(^XTMP("APCLAP2",APCLJOB,APCLBTH,"ALLLOC",APCLSORT,APCLSRT2)) Q:APCLSRT2=""!($D(APCLQUIT))  D
 ...I $Y>(IOSL-5) D HEAD Q:$D(APCLQUIT)
 ...S APCLPRNT=APCLSORT I APCLPROC="DATE" S Y=APCLPRNT D DD^%DT S APCLPRNT=Y
 ...W:APCLPROC'="LOS" !?5,$E(APCLPRNT,1,25) W ?35,$E(APCLSRT2,1,20),?60,$J(^XTMP("APCLAP2",APCLJOB,APCLBTH,"ALLLOC",APCLSORT,APCLSRT2),8)
 ...S APCLGTOT=APCLGTOT+^XTMP("APCLAP2",APCLJOB,APCLBTH,"ALLLOC",APCLSORT,APCLSRT2)
 .Q:APCLPROC="LOS"
 .;W !?60,"--------",!
 .;W ?50,"TOTAL:",?60,$J(APCLGTOT,8),!
 G:$D(APCLQUIT) DONE
 I $Y>(IOSL-5) D HEAD G:$D(APCLQUIT) DONE
 W !?60,"--------",!
 W ?52,"Total:",?60,$J(APCLTOT,8),!
DONE ;
 D DONE^APCLOSUT
 K ^XTMP("APCLAP2",APCLJOB,APCLBTH)
 Q
SORT ;
 I $Y>(IOSL-6) D HEAD Q:$D(APCLQUIT)
 W !,$P(^DIC(4,APCLVLOC,0),U) W:APCLPROC'="LOS" !
 S APCLSORT="" F  S APCLSORT=$O(^XTMP("APCLAP2",APCLJOB,APCLBTH,"LOCTOT",APCLVLOC,APCLSORT)) Q:APCLSORT=""!($D(APCLQUIT))  D P
 Q:APCLPROC="LOS"
 W !?60,"--------",!
 W ?50,"Subtotal:",?60,$J(^XTMP("APCLAP2",APCLJOB,APCLBTH,"SUBTOTAL",APCLVLOC),8),!
 Q
P ;
 S APCLSRT2="" F  S APCLSRT2=$O(^XTMP("APCLAP2",APCLJOB,APCLBTH,"LOCTOT",APCLVLOC,APCLSORT,APCLSRT2)) Q:APCLSRT2=""!($D(APCLQUIT))  D
 .S:'$D(^XTMP("APCLAP2",APCLJOB,APCLBTH,"SUBTOTAL",APCLVLOC)) ^XTMP("APCLAP2",APCLJOB,APCLBTH,"SUBTOTAL",APCLVLOC)=0
 .I $Y>(IOSL-5) D HEAD Q:$D(APCLQUIT)
 .;S APCLSRT2=$O(^XTMP("APCLAP2",APCLJOB,APCLBTH,"LOCTOT",APCLVLOC,APCLSORT,""))
 .S APCLPRNT=APCLSORT I APCLPROC="DATE" S Y=APCLPRNT D DD^%DT S APCLPRNT=Y
 .W:APCLPROC'="LOS" !?5,$E(APCLPRNT,1,25) W ?35,$E(APCLSRT2,1,20),?60,$J(^XTMP("APCLAP2",APCLJOB,APCLBTH,"LOCTOT",APCLVLOC,APCLSORT,APCLSRT2),8)
 .S APCLTOT=APCLTOT+^XTMP("APCLAP2",APCLJOB,APCLBTH,"LOCTOT",APCLVLOC,APCLSORT,APCLSRT2)
 .S ^XTMP("APCLAP2",APCLJOB,APCLBTH,"SUBTOTAL",APCLVLOC)=^XTMP("APCLAP2",APCLJOB,APCLBTH,"SUBTOTAL",APCLVLOC)+^XTMP("APCLAP2",APCLJOB,APCLBTH,"LOCTOT",APCLVLOC,APCLSORT,APCLSRT2)
 Q
HEAD I 'APCLPG G HEAD1
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLQUIT="" Q
HEAD1 ;
 W:$D(IOF) @IOF S APCLPG=APCLPG+1
 W !
 W ?58,APCLDT,?72,"Page ",APCLPG,!
 S APCLLENG=31+$L(APCLTITL)
 W ?((80-APCLLENG)/2),"NUMBER OF AMBULATORY VISITS BY ",APCLTITL,!
 S APCLLOCT=$S(APCLLOC=0:"ALL",1:"SELECTED")
 S APCLLENG=21+$L(APCLLOCT)
 W ?((80-APCLLENG)/2),"LOCATION OF VISITS:  ",APCLLOCT,!
 S X="Chart Reviews are "_$S('APCLCRYN:"not ",1:"")_"included." W $$CTR(X,80),!
 W ?18,"VISIT DATES:  ",APCLBDD,"  TO  ",APCLEDD,!
 W !,"LOCATION OF VISIT"
 W !?5,APCLHD1,?35,APCLHD2,?60,"# VISITS",!
 W APCL80S,!
 Q
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
