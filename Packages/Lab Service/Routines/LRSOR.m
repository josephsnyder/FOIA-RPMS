LRSOR ; IHS/DIR/AAB - SOME SPECIAL OUTPUT ROUTINES 2/6/91 15:19 ; [ 11/13/97 9:46 AM ]
 ;;5.2;LR;**1003**;JUN 01, 1998
 ;;5.2;LAB SERVICE;**121**;Sep 27, 1994
 D ^LRDPA G DONE:LRDFN<1 G LRA
LRC ;NON SMAC CHEMISTRIES
 I LRDFN<1 W !,"NO DATA",! Q
 R !,"DO YOU WANT (R)IA TESTS, (N)ON SMAC TESTS, (H)EMA other than CBC: ",X:DTIME
 Q:"RNH"'[$E(X,1)  G HEM:$E(X,1)="H",LRR:$E(X,1)="R"
LRCC D LPA G DONE:POP S DIC=DIC_Q_"CH"","
 S LRIDT=0 F  S LRIDT=$O(^LR(LRDFN,"CH",LRIDT)) Q:LRIDT<1  S LRMETH=$P(^(LRIDT,0),U,8) D LROK IF LROK,'(LRMETH="ASTRA"!(LRMETH="SMAC"))!$L($S($D(^(40)):^(40),1:"")) S DA=LRIDT,DR="0:99999999" D EN^LRDIQ D WAIT Q:LREND  W !!
 G DONE
LROK S LROK=0 Q:'$P(^LR(LRDFN,"CH",LRIDT,0),U,3)  S LRZX=$O(^LR(LRDFN,"CH",LRIDT,21)) S:LRZX>0&(LRZX<384) LROK=1 Q
LPA ;
 I $D(LRPRETTY) S DIC="^LR("_LRDFN_",",Q="""",LREND=0,LRIDTE=LRSDT,LRIDTS=LREDT Q
 S POP=1 W:LRDFN<1 !,"NO DATA",! Q:LRDFN<1
LPT R !,"Starting Date: N//",X:DTIME Q:X["^"  S:X="" X="N" S %DT="ETX" D ^%DT G LPT:Y<1
 S Y=9999999-Y,Y=$O(^LR(LRDFN,"CH",Y-.00001)),X=9999999-Y,LRIDTE=Y-.00001
 W !,"First data of any kind on ",$E(X,4,5),"/",$E(X,6,7),"/",$E(X,2,3)
LPT1 R !,"Number of days to check for data: 20//",X:DTIME Q:X["^"  S:X="" X=20 I +X'=X!(X>99999)!(X<1)!(X?.E1"."1N.N) W !,"Type a number between 1 and 99999." G LPT1
 S X="T-"_X,%DT="E" D ^%DT S LRIDTS=9999999-Y G LPT1:Y<1
 K %ZIS D ^%ZIS Q:POP
 U IO S LRDPF=$P(^LR(LRDFN,0),U,2),DFN=$P(^(0),U,3) D DT^LRX,PT^LRX D HEAD S DIC="^LR("_LRDFN_",",Q="""",LREND=0 Q
LPB Q:LRDFN<1  S DIC=DIC_Q_LRSS_Q_"," S LRIDT=LRIDTE F  S LRIDT=$O(^LR(LRDFN,LRSS,LRIDT)) Q:LRIDT<1  Q:LRIDT>LRIDTS  IF $P(^LR(LRDFN,LRSS,LRIDT,0),U,3) D LPC Q:LREND  W !
 G DONE
LPC S LRDR=$O(^LR(LRDFN,LRSS,LRIDT,LRDR1-1)) I LRDR>LRDR2!(LRDR<1) Q
 S DA=LRIDT,Z=^LR(LRDFN,LRSS,LRIDT,0),Y=+Z,X=$P(Z,U,5) D DD^LRX
 W !,"DATE&TIME: ",Y W:$L($P(Z,U,8)) ?35,"METHOD/SITE: ",$P(Z,U,8) W ?55,"ACC: ",$P(Z,U,6)
 W !,"SPECIMEN: ",$S($D(^LAB(61,+X,0)):$P(^(0),U,1),1:"??"),!?2
 S DR="0:9999999" K DX D EN^LRDIQ,WAIT Q
WAIT ;I $E(IOST,1,2)="C-" W !,PNM,"  ",SSN,"  PRESS '^' TO STOP " R X:DTIME S:$L(X) LREND=".^"[X Q
 I $E(IOST,1,2)="C-" W !,PNM,"  ",HRCN,"  PRESS '^' TO STOP " R X:DTIME S:$L(X) LREND=".^"[X Q  ;IHS/ANMC/CLS 08/18/96
 Q:$Y+6<IOSL  W !! W:$E(IOST)="P" @IOF
HEAD ;W !!,"WORK COPY ONLY - DO NOT FILE",!,PNM,?30,SSN,?50,LRDT0,! Q
 W !!,"WORK COPY ONLY - DO NOT FILE",!,PNM,?30,HRCN,?50,LRDT0,! Q  ;IHS/ANMC/CLS 08/18/96
LRR ;RADIO IMMUNO ASSAY / NUCLEAR ENDOCRINOLOGY
 D LPA G DONE:POP S LRSS="CH",LRDR1=734,LRDR2=774 G LPB
LRP ;SURGICAL PATHOLOGY
 D LPA G DONE:POP S LRSS="SP" G LPB
MIC ;MICROBIOLOGY
 D LPA G DONE:POP S LRSS="MI" G LPB
HIS ;HISTOLOGY & CYTOLOGY
 D LPA G DONE:POP S LRSS="HI" G LPB
SER ;SEROLOGY
 D LPA G DONE:POP S LRSS="CH",LRDR1=541,LRDR2=680 G LPB
LUR ;URINALYSIS
 D LPA G DONE:POP S LRSS="CH",LRDR1=683,LRDR2=733 G LPB
HEM ;HEMATOLOGY
 D LPA G DONE:POP S LRSS="CH",LRDR1=384,LRDR2=540 G LPB
DIFF ;DIFFERENTIAL
 D LPA G DONE:POP S LRSS="CH",LRDR1=394,LRDR2=404 G LPB
LRA ;LISTS ALL LAB RESULTS
 D LPA G DONE:POP S LRSS="CH",LRDR1=1,LRDR2=1000000 G LPB
DONE D ^%ZISC K LRDR,LRDR1,LRDR2,LRIDTE,LRIDTS Q
