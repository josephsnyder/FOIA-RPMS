LRMIEDZ4 ; IHS/HQT/MJL - CONTINU MICROBIOLOGY EDIT ;  [ 07/22/2002  1:24 PM ]
 ;;5.2;LR;**1010,1013**;JUL 15, 2002
 ;
 ;;5.2;LAB SERVICE;;Sep 27, 1994
 ;Formerly apart of LRMIEDZ2
EC K LRTX S LRAN=$P($P(LRBG0,U,6)," ",3),LRLLOC=$P(LRBG0,U,8)
 S LRODT=$P(^LRO(68,LRAA,1,LRAD,1,LRAN,0),U,4),LRSN=$P(^(0),U,5) I $D(^LRO(69,+LRODT,1,+LRSN,0)) S DIC="^LRO(69,"_LRODT_",1,",DA=LRSN,DR=6 D:DA>0 EN^DIQ S:$D(DTOUT)!($D(DUOUT)) LREND=1 Q:$G(LREND)
 K LRNPTP S N=0
 S LRI=0 F  S LRI=+$O(^LRO(68,LRAA,1,LRAD,1,+LRAN,4,LRI)) Q:LRI<.5  S N=N+1,LRTS(N)=+^(LRI,0) I LRTS(N) S LRTX(N)=$S($L($P(^LAB(60,LRTS(N),0),U,14)):^LAB(62.07,$P(^(0),U,14),.1),1:"W !,""EDIT CODE IN FILE 60 NOT DEFINED.""") I LRTS(N)=LRPTP S LRNPTP=N Q
 I '$D(LRNPTP),LRPTP>0 W !,"Nothing matches with the test you preselected." Q
 I $D(LRNPTP) S LRI=LRNPTP
 I '$D(LRNPTP),N>0 F J=1:1:N I LRTS(J) W !,?3,J,?8,$P(^LAB(60,LRTS(J),0),U) S Y=$P(^LRO(68,LRAA,1,LRAD,1,+LRAN,4,LRTS(J),0),U,5) D:Y>0 DD^LRX W:Y'="" " completed ",Y
 Q
