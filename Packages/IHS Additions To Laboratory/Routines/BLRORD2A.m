BLRORD2A ;SLC/FHS/TPF - CHECK FOR MAX FREQ OF ORDERS ;2/6/91  13:00 [ 08/01/2002  8:21 AM ]
 ;;5.2;LR;**1013**;JUL 30,2002
 ;
 ;;5.2;LAB SERVICE;**56,100**;Sep 27, 1994
SING ;
 K LRZX S LRSAMP=0 F  S LRSAMP=$O(LROT(LRSAMP)) Q:LRSAMP<1  S LRSPEC=0 F  S LRSPEC=$O(LROT(LRSAMP,LRSPEC)) Q:LRSPEC<1  S LRSPN=0 F  S LRSPN=$O(LROT(LRSAMP,LRSPEC,LRSPN)) Q:LRSPN<1  S LRTY=+LROT(LRSAMP,LRSPEC,LRSPN) D MAX
 Q
MAX ;Check max in a single day
 Q:'LRTY!('$D(^LAB(60,LRTY,3,"B",LRSAMP)))  S LRMAXX=^LAB(60,LRTY,3,$O(^LAB(60,LRTY,3,"B",LRSAMP,0)),0)
CHK S LRMAX1=+$P(LRMAXX,U,7) I LRMAX1,$D(TT(LRTY,LRSPEC)),TT(LRTY,LRSPEC)'<LRMAX1 D EN1^LRORDD I %'["Y" D SCRUB Q:LREND
 S LRMAX2=+$P(LRMAXX,U,5) D:LRMAX2 NEW
 Q
NEW ;Check max for number of days
 K LRDAX S X1=$O(^LRO(69,"AT",LRDFN,LRTY,LRSPEC,LRODT-1)),Y=$O(^(-LRODT-1))
 I X1 S X2=LRODT D ^%DTC S:X<LRMAX2 LRDAX(2)=X
 I Y S X2=-Y,X1=LRODT D ^%DTC S:X<LRMAX2 LRDAX(1)=X
 Q:'$D(LRDAX)  W !!,$P(^LAB(60,LRTY,0),U)," Exceeds maximum order FREQUENCY of 1 every ",LRMAX2," day(s)."
 D SETT
 W !,"Do You really want another  N// " D % Q:%["Y"
SCRUB ;
 I %'["Y",$D(LRTEST),$D(LRTSTN) K LRTEST(LRTSTN),X3 Q
 I %'["Y",$D(LRZX(1)) S LREND=1 Q
 I %'["Y" K LROT(LRSAMP,LRSPEC,LRSPN),J(LRSPN) S LRM=LRM-1 Q
 Q
SETT ;
 S LRODT2=LRODT
 NEW LRODT
 S X2=-LRMAX2,X1=LRODT2 D C^%DTC S LRODT=X
 S X2=LRMAX2,X1=LRODT2 D C^%DTC S LRODT1=X
 F LRX=0:0 S LRODT=$O(^LRO(69,"AT",LRDFN,LRTY,LRSPEC,LRODT)) Q:LRODT=""!(LRODT>LRODT1)  D
 . S LRSN=0 F  S LRSN=$O(^LRO(69,LRODT,1,"AA",LRDFN,LRSN)) Q:LRSN<1  D
 .. D ORDER^LROS
 K LRODT1,LRX,LRODT2
 Q
% R %:DTIME S:'$T %="N" Q:%=""!($E(%)="Y")!($E(%)="N")  W !,"Answer  'Y' or 'N' " G %
