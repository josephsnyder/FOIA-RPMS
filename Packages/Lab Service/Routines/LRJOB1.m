LRJOB1 ;SLC/DCM,RWF - STATUS OF AUTOMATED LAB ROUTINES ;7/11/89  10:29 ;
 ;;V~5.0~;LAB;;02/27/90 17:09
A S U="^" I '$D(IOM) S IOP="HOME" D ^%ZIS
LA2 W !! D DASH^LRX W !?30,"LSI INTERFACE STATUS" D DASH^LRX
 W !,?5,"LSI",?15,"INST.",?33,"DATA",?42,"DATA",?51,"++  PROGRAM STATUS ++"
 W !?5,"PORT #",?15,"NAME",?33,"IN LA?",?42,"IN LAH?",?51,"NAME",?62,"ACTIVE",?70,"$J"
 D DASH^LRX
 F I=0:0 S I=$N(^LAB(62.4,I)) Q:I<1!(I>99)  S X=^LAB(62.4,I,0) D LINE
 W !!
END K I,J,L,Y,X Q
 Q
LINE W !?6,I,?15,$E($P(X,U,1),1,15),?34,$S($D(^LA(I,"I")):"Yes",1:"No")
 S L=$P(X,U,4),Y=0 I L>0 F J=0:0 S J=$O(^LAH(L,1,J)) Q:J<1  I $O(^LAH(L,1,J,1)) S Y=Y+1 Q:Y>5
 W ?45,$S(Y>2:"Yes",1:"No"),?51,$P(X,U,3),?62,$S($D(^LA("LOCK",I)):"Lock",1:"No"),?70,$S($D(^LA("LOCK",I)):^(I),1:"")
 Q
