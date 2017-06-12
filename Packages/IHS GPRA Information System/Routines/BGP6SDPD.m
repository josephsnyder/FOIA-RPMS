BGP6SDPD ; IHS/CMI/LAB - IHS summary page ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 I '$G(BGPAREAA) Q
 I BGPRTYPE'=1 Q
 S BGPQUIT=""
 D HEADER
 D W^BGP6DP("GPRA DEVELOPMENTAL MEASURES",0,2,BGPPTYPE)
 D W^BGP6DP("---------------------------",0,1,BGPPTYPE)
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC)) Q:BGPC'=+BGPC!(BGPQUIT)  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .S BGPC1=$O(^BGPSCAT("C",BGPC,0))
 .D W^BGP6DP("",0,1,BGPPTYPE)
 .D W^BGP6DP($P(^BGPSCAT(BGPC1,0),U),0,1,BGPPTYPE)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO)) Q:BGPO=""!(BGPQUIT)  D
 ..S BGPPC=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,0))
 ..;Q:$P($G(^BGPINDMC(BGPPC,22)),U,13)  ;part measure displays last
 ..I BGPPTYPE="P",$Y>(BGPIOSL-4) D HEADER Q:BGPQUIT
 ..I BGPPTYPE="P" D
 ...D W^BGP6DP($P(^BGPINDMC(BGPPC,22),U,4),0,2,BGPPTYPE,1,1)
 ...I $P(^BGPINDMC(BGPPC,22),U,7)]"" D W^BGP6DP($P(^BGPINDMC(BGPPC,22),U,7),0,1,BGPPTYPE,1,1)  ;W !?1,$P(^BGPINDMC(BGPPC,22),U,7)
 ...I $P(^BGPINDMC(BGPPC,22),U,12)]"" D W^BGP6DP($P(^BGPINDMC(BGPPC,22),U,12),0,1,BGPPTYPE,1,1)
 ...S F=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,0))
 ...S F=$P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,F),U,4)
 ...D W^BGP6DP(F_$S($P(^BGPINDMC(BGPPC,0),U,4)["014.A"!($P(^BGPINDMC(BGPPC,0),U,4)["023.")!($P(^BGPINDMC(BGPPC,0),U,4)="016.A.1")!($P(^BGPINDMC(BGPPC,0),U,4)="016.A.5")!($P($G(^BGPINDMC(BGPPC,19)),U,13)):"",1:"%"),0,0,BGPPTYPE,5,50)
 ...D W^BGP6DP($P(^BGPINDMC(BGPPC,22),U,2),0,0,BGPPTYPE,6,60)  ;,?65,$P(^BGPINDMC(BGPPC,22),U,3)
 ...I $P(^BGPINDMC(BGPPC,22),U,9)]""!($P(^BGPINDMC(BGPPC,22),U,10)]"")!($P(^BGPINDMC(BGPPC,22),U,11)]"") D W^BGP6DP($TR($P(^BGPINDMC(BGPPC,22),U,10),"$","^"),0,1,BGPPTYPE,6,60)
 ...S BGPSN=0 F  S BGPSN=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN)) Q:BGPSN'=+BGPSN!(BGPQUIT)  D
 ....S BGPSASU=$P(^BGPGPDCM(BGPSN,0),U,9),X=$O(^AUTTLOC("C",BGPSASU,0)) S BGPSNAM=$S(X:$P(^DIC(4,X,0),U),1:"?????"),BGPSNAM=$S($P(^BGPGPDCM(BGPSN,0),U,17):"+"_BGPSNAM,1:BGPSNAM)
 ....I $P(^BGPINDMC(BGPPC,0),U,4)["014.A"!($P(^BGPINDMC(BGPPC,0),U,4)["023.")!($P(^BGPINDMC(BGPPC,0),U,4)="016.A.1")!($P($G(^BGPINDMC(BGPPC,19)),U,13)) D  I 1
 .....I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .....D W^BGP6DP(BGPSASU,0,1,BGPPTYPE,1,2)
 .....D W^BGP6DP($E(BGPSNAM,1,12),0,0,BGPPTYPE,2,8)
 .....D W^BGP6DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U),7,0),0,0,BGPPTYPE,2,20)
 .....D W^BGP6DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2),7,0),0,0,BGPPTYPE,3,29)
 .....D W^BGP6DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3),7,0),0,0,BGPPTYPE,4,38)
 ....E  D
 .....I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .....D W^BGP6DP(BGPSASU,0,1,BGPPTYPE,1,2)
 .....D W^BGP6DP($E(BGPSNAM,1,12),0,0,BGPPTYPE,2,8)
 .....D W^BGP6DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U),7,1)_"%",0,0,BGPPTYPE,2,20)
 .....D W^BGP6DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2),7,1)_"%",0,0,BGPPTYPE,3,29)
 .....D W^BGP6DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3),7,1)_"%",0,0,BGPPTYPE,4,38)
 ..I BGPPTYPE="D" D
 ...D W^BGP6DP("",0,1,BGPPTYPE)
 ...S XX=" "_$P(^BGPINDMC(BGPPC,22),U,4)
 ...I $P(^BGPINDMC(BGPPC,22),U,7)]"" D W^BGP6DP(XX,0,1,BGPPTYPE,1) S XX=" "_$P(^BGPINDMC(BGPPC,22),U,7)
 ...I $P(^BGPINDMC(BGPPC,22),U,12)]"" D W^BGP6DP(XX,0,1,BGPPTYPE,1) S XX=" "_$P(^BGPINDMC(BGPPC,22),U,12)
 ...S F=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,0))
 ...S F=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,F),U,4)
 ...S $P(XX,U,5)=F_$S($P(^BGPINDMC(BGPPC,0),U,4)["014.A"!($P(^BGPINDMC(BGPPC,0),U,4)["023.")!($P(^BGPINDMC(BGPPC,0),U,4)="016.A.1")!($P($G(^BGPINDMC(BGPPC,19)),U,13)):"",1:"%")
 ...S $P(XX,U,6)=$P(^BGPINDMC(BGPPC,22),U,2) ;,$P(XX,U,7)=$P(^BGPINDMC(BGPPC,22),U,3)
 ...S BGPSN=0,BGPCNT=0 F  S BGPSN=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN)) Q:BGPSN'=+BGPSN  S BGPCNT=BGPCNT+1 D
 ....S BGPSASU=$P(^BGPGPDCM(BGPSN,0),U,9),X=$O(^AUTTLOC("C",BGPSASU,0)),BGPSNAM=$S(X:$P(^DIC(4,X,0),U),1:"?????"),BGPSNAM=$S($P(^BGPGPDCM(BGPSN,0),U,17):"+"_BGPSNAM,1:BGPSNAM)
 ....I $P(^BGPINDMC(BGPPC,0),U,4)["014.A"!($P(^BGPINDMC(BGPPC,0),U,4)["023.")!($P(^BGPINDMC(BGPPC,0),U,4)="016.A.1")!($P(^BGPINDMC(BGPPC,0),U,4)="016.A.5")!($P($G(^BGPINDMC(BGPPC,19)),U,13)) D  I 1
 .....S X="",$P(X,U,1)=BGPSASU_" "_BGPSNAM
 .....S $P(X,U,2)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U)
 .....S $P(X,U,3)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2)
 .....S $P(X,U,4)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3)
 .....;S $P(X,U,5)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,4)
 ....E  D
 .....S $P(X,U,1)=BGPSASU_" "_BGPSNAM
 .....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U)_"%"
 .....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2)_"%"
 .....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3)_"%"
 .....;S $P(X,U,5)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,4)_"%"
 .....;S $P(X,U,5)=$P(^BGPINDMC(BGPPC,22),U,2),$P(X,U,6)=$P(^BGPINDMC(BGPPC,22),U,3)
 .....;I BGPCNT=1 D S(XX,1,1) D
 ....I BGPCNT=1 D W^BGP6DP(XX,0,1,BGPPTYPE,1)
 ....S Y="" I $P(^BGPINDMC(BGPPC,22),U,9)]""!($P(^BGPINDMC(BGPPC,22),U,10)]"")!($P(^BGPINDMC(BGPPC,22),U,11)]"") S $P(Y,U,6)=$TR($P(^BGPINDMC(BGPPC,22),U,9),"$","^") D
 .....S $P(Y,U,8)=$P(^BGPINDMC(BGPPC,22),U,11)
 ....I Y]"" D W^BGP6DP(Y,0,1,BGPPTYPE,1)  ;D S(Y,1,1)
 ....D W^BGP6DP(X,0,1,BGPPTYPE,1)  ;D S(X,1,1)
 D W^BGP6DP(" ",0,1,BGPPTYPE)  ;S X=" " D S(X,1,1)
 I BGPPTYPE="P",$Y>(BGPIOSL-2) D HEADER Q:BGPQUIT
 D W^BGP6DP("* Not GPRA Developmental measure but included to show percentage of",0,2,BGPPTYPE)
 D W^BGP6DP("refusals with respect to GPRA Developmental measure.",0,1,BGPPTYPE)
 D W^BGP6DP("",0,1,BGPPTYPE)
 Q
 ;
HEADER ;EP
 D HEADER^BGP6DPH
 D H1
 Q
H1 ;
 S X="GPRA DEVELOPMENTAL MEASURES CLINICAL PERFORMANCE DETAIL" D W^BGP6DP(X,1,1,BGPPTYPE)
 D W^BGP6DP("Site",0,1,BGPPTYPE,2,21),W^BGP6DP("Site",0,0,BGPPTYPE,3,32),W^BGP6DP("Site",0,0,BGPPTYPE,4,40),W^BGP6DP("Area",0,0,BGPPTYPE,5,50) ;,W^BGP6DP("Nat'l",0,0,BGPPTYPE,6,60)
 D W^BGP6DP("Current",0,1,BGPPTYPE,2,22),W^BGP6DP("Prev",0,0,BGPPTYPE,3,32),W^BGP6DP("Base",0,0,BGPPTYPE,4,40),W^BGP6DP("Current",0,0,BGPPTYPE,5,50) ;W^BGP6DP("2015",0,0,BGPPTYPE,6,60)
 D W^BGP6DP($TR($J("",80)," ","-"),0,1,BGPPTYPE)
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
PART ;
 D HEADERP
 S P1=$S($G(BGPNGR09):8,1:8)
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC)) Q:BGPC'=+BGPC!(BGPQUIT)  D
 .I $Y>(BGPIOSL-3) D HEADERP Q:BGPQUIT
 .S BGPC1=$O(^BGPSCAT("C",BGPC,0))
 .;W !
 .;W !,$P(^BGPSCAT(BGPC1,0),U)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO)) Q:BGPO=""!(BGPQUIT)  D
 ..S BGPPC=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,0))
 ..Q:'$P($G(^BGPINDMC(BGPPC,22)),U,13)
 ..I $Y>(BGPIOSL-3) D HEADERP Q:BGPQUIT
 ..W !!?1,$P(^BGPINDMC(BGPPC,22),U,4)
 ..I $P(^BGPINDMC(BGPPC,22),U,7)]"" W !,$P(^BGPINDMC(BGPPC,22),U,7)
 ..I $P(^BGPINDMC(BGPPC,22),U,12)]"" W !,$P(^BGPINDMC(BGPPC,22),U,12)
 ..S F=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,0))
 ..S F=$P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,F),U,4)
 ..W ?50,F,$S($P(^BGPINDMC(BGPPC,0),U,4)["014.A"!($P(^BGPINDMC(BGPPC,0),U,4)["023.")!($P(^BGPINDMC(BGPPC,0),U,4)="016.A.1"):"",1:"%"),?60,$P(^BGPINDMC(BGPPC,22),U,P1),?65,$P(^BGPINDMC(BGPPC,22),U,2),?74,$P(^BGPINDMC(BGPPC,22),U,3)
 ..I $P(^BGPINDMC(BGPPC,22),U,9)]""!($P(^BGPINDMC(BGPPC,22),U,10)]"")!($P(^BGPINDMC(BGPPC,22),U,11)]"") W !?60,$TR($P(^BGPINDMC(BGPPC,22),U,9),"$","^"),?64,$TR($P(^BGPINDMC(BGPPC,22),U,10),"$","^"),?73,$P(^BGPINDMC(BGPPC,22),U,11)
 ..S BGPSN=0 F  S BGPSN=$O(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN)) Q:BGPSN'=+BGPSN!(BGPQUIT)  D
 ...S BGPSASU=$P(^BGPGPDCM(BGPSN,0),U,9),X=$O(^AUTTLOC("C",BGPSASU,0)) S BGPSNAM=$S(X:$P(^DIC(4,X,0),U),1:"?????"),BGPSNAM=$S($P(^BGPGPDCM(BGPSN,0),U,17):"+"_BGPSNAM,1:BGPSNAM)
 ...I $P(^BGPINDMC(BGPPC,0),U,4)["014.A"!($P(^BGPINDMC(BGPPC,0),U,4)["023.")!($P(^BGPINDMC(BGPPC,0),U,4)="016.A.1") D  I 1
 ....I $Y>(BGPIOSL-3) D HEADERP Q:BGPQUIT
 ....W !?2,BGPSASU,?8,$E(BGPSNAM,1,12)
 ....W ?20,$J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U),7,0)
 ....W ?29,$J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2),7,0)
 ....W ?38,$J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3),7,0)
 ...E  D
 ....I $Y>(BGPIOSL-3) D HEADERP Q:BGPQUIT
 ....W !?2,BGPSASU,?8,$E(BGPSNAM,1,12)
 ....W ?20,$J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U),7,1),"%"
 ....W ?29,$J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,2),7,1),"%"
 ....W ?38,$J($P(^TMP($J,"SUMMARY DETAIL PAGE DEVEL",BGPC,BGPO,BGPPC,BGPSN),U,3),7,1),"%"
 I $Y>(BGPIOSL-5) D HEADERP Q:BGPQUIT
 W !
 ;I $G(BGPNGR09) D
 ;.W !," * PART 2016 target represented here is a preliminary target since it will be"
 ;.W !,"adjusted for FY 2016 actual results and FY 2016 appropriations."
 W !,$S($G(BGPNGR09):"*",1:"*")," Federally Administered Activities measure.  National 2015 rate is for federal"
 W !,"sites only."
 W ! Q
 Q
 ;
HEADERP ;EP
 D HEADER^BGP6DPH
 D H1P
 Q
H1P ;
 I BGPRTYPE=1 S X="GPRA DEVELOPMENTAL & PART MEASURES CLINICAL PERFORMANCE DETAIL" W !,$$CTR(X,80)
 W !?22," Site",?32,"Site",?40,"Site",?50,"Area",?60,$S($G(BGPNGR09):"PART10",1:"PART09"),?64,"Nat'l",?74,"2015"
 W !?22,"Current",?32,"Prev",?40,"Base",?50,"Current",?60,"Target"_$S($G(BGPNGR09):"*",1:""),?65,"2015",?74,"Target"
 W !,$TR($J("",80)," ","-")
 W !!,"PART MEASURE"
 W !,"------------"
 Q
