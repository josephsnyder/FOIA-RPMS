LRLL2 ; IHS/DIR/FJE - LOAD LIST BUILD 2/6/91 07:45 ;
 ;;5.2;LR;;NOV 01, 1997
 ;
 ;;5.2;LAB SERVICE;**99,116**;Sep 27, 1994
A W " BUILDING",! S LRTRACNT=$S(LRTYPE:LRTRAY,1:LRCUP+1)+LRTRACNT,LREND=0 F LRUS=0:0 S LRUS=$O(^TMP($J,-1,LRUS)) Q:LRUS=""!LREND  F LRAN=0:0 S LRAN=$O(^TMP($J,-1,LRUS,LRAN)) Q:LRAN=""!LREND  D FILL
 S LRPTRAY=LRTRAY,LRPCUP=LRCUP F LRTI=0:0 X LRTRANS Q:'$D(LRCTRL(LRTRAY,LRCUP))!(LRPTRAY'=LRTRAY)  D CONTROL^LRLL4 S LRTI=1
 S:'LRTI LRTRAY=LRPTRAY,LRCUP=LRPCUP
 F LRIIX=0:0 S LRIIX=$O(^LRO(68.2,LRINST,10,LRPROF,5,LRIIX)) Q:LRIIX<1  S LRIFN=+^(LRIIX,0),LRCT=LRIFN D CTRLTST^LRLL3 S LRTST=$P(X,U,2,99) D GNCUP,LRCTRL^LRLL4
 D MOVE:'LRFULL!((LRCUP=LRMAXCUP)!(LRCUP<LRPCUP)) W !,"BUILD DONE"
 ;F LRAA=0:0 S LRAA=$O(LRAA(LRAA)) Q:LRAA'>0  S ^LRO(68,LRAA,.7)=0
 Q
GNCUP ;from LRLL1
 X LRTRANS S:$S(LRTYPE:LRTRAY,1:LRCUP)'<LRTRACNT LREND=1 G GNCUP:$D(^TMP($J,LRTRAY,LRCUP))!$D(^LRO(68.2,LRINST,1,LRTRAY,1,LRCUP,0)) ;GET NEXT LRCUP
 Q
FILL D GNCUP Q:LREND  I LRCUP<LRPCUP D MOVE
 I $D(LRCTRL(LRTRAY,LRCUP)) D CONTROL^LRLL4 S LRPCUP=LRCUP G FILL
 W "." S ^TMP($J,LRTRAY,LRCUP)=^TMP($J,-1,LRUS,LRAN)
 F I=0:0 S I=$O(^TMP($J,-1,LRUS,LRAN,I)) Q:I=""  S ^TMP($J,LRTRAY,LRCUP,I)=^TMP($J,-1,LRUS,LRAN,I)
 S LRPCUP=LRCUP Q
MOVE S LRLL1=$O(^TMP($J,0)) Q:LRLL1=""  S LRCNT=LRCNT+1
 S ^LRO(68.2,LRINST,1,0)="^68.21^"_LRLL1_U_LRLL1,^(LRLL1,0)=LRLL1_U_DT_U_DUZ_U_LRAA
 S ^LRO(68.2,LRINST,1,LRLL1,1,0)="^68.22PA^1^1"
 F LRLL2=0:0 S LRLL2=$O(^TMP($J,LRLL1,LRLL2)) Q:LRLL2=""  S LRLLX=^(LRLL2) D MV1
 K ^TMP($J,LRLL1) S LRPCUP=LRCUP W !,"B" Q
MV1 S ^LRO(68.2,LRINST,1,LRLL1,1,LRLL2,0)=LRLLX
 F LRLL3=0:0 S LRLL3=$O(^TMP($J,LRLL1,LRLL2,LRLL3)) Q:LRLL3=""  S LRTX=^(LRLL3) D MV2
 K ^TMP($J,LRLL1,LRLL2) Q
MV2 Q:'LRAD  S ^LRO(68.2,LRINST,1,LRLL1,1,LRLL2,1,0)="^68.222^"_LRLL3_"^1",^(LRLL3,0)=LRTX,$P(^LRO(68,LRAA,1,LRAD,1,$P(LRLLX,U,3),4,LRLL3,0),U,3)=LRINST_";"_LRLL1_";"_LRLL2
 Q
TC1 IF '$P(T1,U,3),'$P(T1,U,5),$D(LRTP(+T1)),(LRTP(+T1)=LRSP!(LRTP(+T1)=""))
 S:'$T&('LRSPLIT) E=1 I $T S LRTSL(I1)=T1,LRUS=$S(LRUS>$P(T1,U,2):+$P(T1,U,2),1:LRUS) Q
 Q
TCHK ;check that test ordered is in profile, from LRLL4
 Q:'$D(^LRO(68,LRAA,1,LRAD,1,LRAN,3))  I 'LRLLP(1) Q:'$P(^(3),U,3)
 K LRTSL S E=0,LRUS=$S($P(^LRO(68,LRAA,1,LRAD,1,LRAN,0),U,3)'=LRAD:LRHOLD,1:99),LRSP=$S($D(^(5,1,0)):+^(0),1:0) Q:$D(LRDSPEC(LRSP))
 S I1=0 F  S I1=$O(^LRO(68,LRAA,1,LRAD,1,LRAN,4,I1)) Q:I1<1  S T1=^(I1,0) D TC1 Q:E
 Q:'$D(LRTSL)!E  X LRURX I $T S ^TMP($J,-1,LRUS,LRAN)=LRAA_U_LRAD_U_LRAN_U_LRPROF S I=0 F  S I=$O(LRTSL(I)) Q:I<1  S ^TMP($J,-1,LRUS,LRAN,I)=LRTSL(I)
 Q
AC S LRTK=LRSTAR-.00001 F  S LRTK=$O(^LRO(68,LRAA,1,LRAD,1,"E",LRTK)) Q:LRTK<1!(+LRLST>1&(LRTK\1>+LRLST))  D AC1
 Q
AC1 S LRAN=0 F  S LRAN=$O(^LRO(68,LRAA,1,LRAD,1,"E",LRTK,LRAN)) Q:LRAN<1  I $D(^LRO(68,LRAA,1,LRAD,1,LRAN,0))#2 S LRADD=1,LRDFN=+^(0),LRDPF=$P(^(0),U,2),LRIDT=9999999-$S($D(^(3)):^(3),1:0) D TCHK
 Q
