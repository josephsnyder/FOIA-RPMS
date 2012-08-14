LRCAPML2 ; IHS/DIR/FJE - WKLD COST REP BY MAJ SCTN @16:04 ; [ 2/6/91 ]
 ;;5.2;LR;;NOV 01, 1997
 ;
 ;;5.2;LAB SERVICE;;Sep 27, 1994
EN ;
TOP ;
 N LRCCNT,LRICNT,LROCNT,LRNCNT,LRACNT,LRCST,LRIST,LROST,LRNST,LRAST
 S LRHDR="WORKLOAD COST REPORT BY MAJOR SECTION"
 S LRHDR2="REPORT DATE RANGE:  "_LRDT1_" - "_LRDT2
 D PRTINIT^LRCAPU
 S (LRGT,LRGTU)=0
 S LRGTREC=$G(^TMP("LR-WL",$J,0))
 I $L(LRGTREC) S LRGT=+$P(LRGTREC,U),LRGTU=+$P(LRGTREC,U,2)
 I $E(IOST,1,2)="C-" W @IOF
 D:'LRSUMM DET
 D:'LREND SUM^LRCAPML3
 D:'LREND PRNTMAN^LRCAPMR1
 D:'LREND COMM^LRCAPMR2
 Q
DET ;Detailed section
 F LRLDIV="AP","CP" D  Q:LREND
 . S LRHDR3=$S(LRLDIV="AP":"ANATOMIC PATHOLOGY",1:"CLINICAL PATHOLOGY")
 . S LRIN=0
 . F  S LRIN=$O(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN)) Q:('LRIN)!(LREND)  D
 . . S LRINN=$S($L($G(^DIC(4,LRIN,0))):$P(^(0),U),1:LRIN)
 . . S (LRIGT,LRIGTU)=0
 . . S LRGTREC=$G(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN,0))
 . . I $L(LRGTREC) S LRIGT=+$P(LRGTREC,U),LRIGTU=+$P(LRGTREC,U,2)
 . . D PRTDET
 . . D:('LREND)&(LRIGTU) INSTSUM
 Q
PRTDET ; PRINT THE REPORT
 D HDR^LRCAPU
 W !,?(80-$L(LRINN)\2),LRINN,!!
 S LRMAA=0
 F  S LRMAA=$O(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA)) Q:(LRMAA="")!($G(LREND))  D
 . S LRLSSA=""
 . F  S LRLSSA=$O(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA)) Q:(LRLSSA)=""!(LREND)  D LSS Q:LREND
 Q:LREND
 I $Y>(IOSL-5) D NPG^LRCAPU Q:LREND  W !,?(80-$L(LRINN)\2),LRINN,!!
 I 'LRIGTU D
 . W !!!,"NO DATA FOR THIS INSTITUTION AND DATE RANGE",!
 E  D
 . W !!!,"GRAND TOTAL",?52,$J(LRIGTU,7),?65,$J(LRIGT,9,2),!
 D:($E(IOST,1,2)="C-")&('LREND) PAUSE^LRCAPU W @IOF
 Q
INSTSUM ;
 S LRLAB="!!,?(80-7\2),""SUMMARY"",!,?(80-$L(LRINN)\2),LRINN,!!,""MAJOR SECTION"",?15,""LAB SUBSECTION"",?31,""UNIT COUNT"",?45,""  %"",?55,""TOTAL COST"",?70,""  %"",!"
 D HDR^LRCAPU W @LRLAB
 S LRMAA=""
 F  S LRMAA=$O(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA)) Q:(LRMAA="")!(LREND)  D
 . S LRLSSA=""
 . F  S LRLSSA=$O(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA)) Q:(LRLSSA="")!(LREND)  D PSUM
 I $Y>(IOSL-4) D NPG^LRCAPU Q:LREND  W @LRLAB
 W !!,"GRAND TOTAL",?31,$J(LRIGTU,7),?55,$J(LRIGT,9,2)
 D:($E(IOST,1,2)="C-")&('LREND) PAUSE^LRCAPU W @IOF
 Q
PSUM ;
 Q:LREND
 S LRX=$G(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA,0))
 Q:'$L(LRX)
 I $Y>(IOSL-3) D NPG^LRCAPU Q:LREND  W @LRLAB
 W !,$E(LRMAN(LRMAA),1,14),?15,$E(LRLSSN(LRLSSA),1,15)
 W ?31,$J($P(LRX,U,2),7),?45,$J($P(LRX,U,2)/LRIGTU*100,5,1)
 W ?55,$J($P(LRX,U,1),9,2)
 W ?70,$J($P(LRX,U)/$S(LRIGT=0:1,1:LRIGT)*100,5,1),!
 Q
LSS ;
 S LRLAB="!!,""MAJOR SECTION:  "",LRMAN(LRMAA),!,""LAB SUBSECTION:  "",LRLSSN(LRLSSA),!!,""CODE"",?11,""PROCEDURE"",?42,""UNIT COST"",?53,""UNIT COUNT"",?65,""TOTAL COST"",?70,""  %"",!"
 I $Y>(IOSL-7) D NPG^LRCAPU Q:LREND  W !,?(80-$L(LRINN)\2),LRINN,!
 W @LRLAB
 S LRX=$G(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA,0))
 S LRST=$P(LRX,U),LRSTU=$P(LRX,U,2)
 S LRCC=0
 F  S LRCC=$O(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA,LRCC)) Q:(LRCC="")!(LREND)  D PCC
 Q:LREND
 I $Y>(IOSL-4) D NPG^LRCAPU Q:LREND  W !,?(80-$L(LRINN)\2),LRINN,!,@LRLAB
 W !,?40,"SUB TOTAL",?52,$J(LRSTU,7),?65,$J(LRST,9,2)
 Q
PCC ;
 S LRX=$G(^TMP("LR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA,LRCC))
 I $Y+3>IOSL D NPG^LRCAPU Q:LREND  W !,?(80-$L(LRINN)\2),LRINN,!,@LRLAB
 W $P(LRX,"^",4),?11,$E(LRCC,1,30),?43,$J(+$P(LRX,"^",3),6,2)_$S($P(LRX,"^",3)["*":"*",1:"")
 W ?52,$J(+$P(LRX,"^"),7),?65,$J(+$P(LRX,"^",2),9,2)
 W ?75,$J($P(LRX,U)/$S(LRSTU=0:1,1:LRSTU)*100,5,1),!
 Q