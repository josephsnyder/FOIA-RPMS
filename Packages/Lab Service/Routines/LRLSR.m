LRLSR ; IHS/DIR/FJE - REPORT SORT UTILITY 2/5/91 14:49 ;
 ;;5.2;LR;**1013**;JUL 15, 2002
 ;
 ;;5.2;LAB SERVICE;;Sep 27, 1994
 D LRAN,PRINT,END
LRAN K ^TMP($J) Q:'$D(LRUTL)  S U="^",%DT="AE" D ^%DT S LRAD=Y Q:Y<1
 D LRAA W !,"LOADING" D LOAD Q
LRAA S DIC="^LRO(68,",DIC(0)="AEOQZ" D ^DIC Q:Y<1
 S LRAA=+Y,^TMP($J,0,LRAA)=$P(Y,U,2) G LRAA
LOAD S LRAA=0 F  S LRAA=$O(^TMP($J,0,LRAA)),LRAN=0 Q:LRAA<1  D LO1
 Q
LO1 S LRAN=$O(^LRO(68,LRAA,1,LRAD,1,LRAN)) Q:LRAN<1  S X=$S($D(^(LRAN,0)):^(0),1:"")
 S LRDFN=+X,LRDT=$S($D(^LRO(68,LRAA,1,LRAD,1,LRAN,3)):+^(3),1:0) IF 'LRDFN W !,"BAD LRAN ENTRY: ",LRAN G LO1
 S @LRUTL
 G LO1
PLD S LRUTL="^TMP($J,LRDFN,LRAN,LRDT)=0" G LRAN
LDP S LRUTL="^TMP($J,LRAN,LRDT,LRDFN)=0" G LRAN
LPD S LRUTL="^TMP($J,LRAN,LRDFN,LRDT)=0" G LRAN
DLP S LRUTL="^TMP($J,LRDT,LRAN,LRDFN)=0" G LRAN
PRINT ;
END K ^TMP($J),LRUTL Q
