BGP5SDPO ; IHS/CMI/LAB - IHS summary page ; 17 May 2015  9:52 AM
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 I '$G(BGPAREAA) Q
 I BGPRTYPE'=7 Q
 S BGPQUIT="",BGPGPG=0
 D HEADER
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC)) Q:BGPC'=+BGPC!(BGPQUIT)  D
 .I BGPPTYPE-"P" I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .S BGPC1=$O(^BGPSCAT("D",BGPC,0))
 .D W^BGP5DP("",0,1,BGPPTYPE)
 .D W^BGP5DP($P(^BGPSCAT(BGPC1,0),U),0,1,BGPPTYPE)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO)) Q:BGPO=""!(BGPQUIT)  D
 ..S BGPPC=$O(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,0))
 ..I BGPPTYPE="P" D
 ...I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ...D W^BGP5DP($P(^BGPINDKC(BGPPC,19),U,4),0,2,BGPPTYPE)
 ...I $P(^BGPINDKC(BGPPC,19),U,7)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,19),U,7),0,1,BGPPTYPE)
 ...I $P(^BGPINDKC(BGPPC,19),U,12)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,19),U,12),0,1,BGPPTYPE)
 ...S F=$O(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,0))
 ...S F=$P(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,F),U,4)
 ...D W^BGP5DP(F_$S($P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.1")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.5")!($P($G(^BGPINDKC(BGPPC,19)),U,13)):"",1:"%"),0,0,BGPPTYPE,,46)
 ...D W^BGP5DP($P(^BGPINDKC(BGPPC,19),U,2),0,0,BGPPTYPE,,55)
 ...;D W^BGP5DP($P(^BGPINDKC(BGPPC,19),U,3),0,0,BGPPTYPE,,65)
 ...I $P(^BGPINDKC(BGPPC,19),U,9)]""!($P(^BGPINDKC(BGPPC,19),U,10)]"")!($P(^BGPINDKC(BGPPC,19),U,11)]"") D
 ....D W^BGP5DP($TR($P(^BGPINDKC(BGPPC,19),U,10),"$","^"),0,0,BGPPTYPE,,55) ;,W^BGP5DP($P(^BGPINDKC(BGPPC,19),U,11),0,0,BGPPTYPE,,65)
 ...S BGPSN=0 F  S BGPSN=$O(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN)) Q:BGPSN'=+BGPSN!(BGPQUIT)  D
 ....S BGPSASU=$P(^BGPGPDCK(BGPSN,0),U,9),X=$O(^AUTTLOC("C",BGPSASU,0)) S BGPSNAM=$S(X:$P(^DIC(4,X,0),U),1:"?????"),BGPSNAM=$S($P(^BGPGPDCK(BGPSN,0),U,17):"+"_BGPSNAM,1:BGPSNAM)
 ....I $P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.1")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.5")!($P($G(^BGPINDKC(BGPPC,19)),U,13)) D  I 1
 .....I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .....D W^BGP5DP(BGPSASU,0,1,BGPPTYPE,,2),W^BGP5DP($E(BGPSNAM,1,12),0,0,BGPPTYPE,,8)
 .....D W^BGP5DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U),7,0),0,0,BGPPTYPE,,20)
 .....D W^BGP5DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,2),7,0),0,0,BGPPTYPE,,29)
 .....D W^BGP5DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,3),7,0),0,0,BGPPTYPE,,38)
 ....E  D
 .....I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .....D W^BGP5DP(BGPSASU,0,1,BGPPTYPE,,2),W^BGP5DP($E(BGPSNAM,1,12),0,0,BGPPTYPE,,8)
 .....D W^BGP5DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U),7,1)_"%",0,0,BGPPTYPE,,20)
 .....D W^BGP5DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,2),7,1)_"%",0,0,BGPPTYPE,,29)
 .....D W^BGP5DP($J($P(^TMP($J,"SUMMARY DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,3),7,1)_"%",0,0,BGPPTYPE,,38)
 ..I BGPPTYPE="D" D
 ...D W^BGP5DP("",0,1,BGPPTYPE)
 ...S XX=" "_$P(^BGPINDKC(BGPPC,19),U,4)
 ...I $P(^BGPINDKC(BGPPC,19),U,7)]"" D W^BGP5DP(XX,0,1,BGPPTYPE) S XX=" "_$P(^BGPINDKC(BGPPC,19),U,7)
 ...I $P(^BGPINDKC(BGPPC,19),U,12)]"" D W^BGP5DP(XX,0,1,BGPPTYPE) S XX=" "_$P(^BGPINDKC(BGPPC,19),U,12)
 ...S F=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,0))
 ...S F=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,F),U,4)
 ...S $P(XX,U,5)=F_$S($P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.1")!($P($G(^BGPINDKC(BGPPC,19)),U,13)):"",1:"%")
 ...S $P(XX,U,6)=$P(^BGPINDKC(BGPPC,19),U,2) ;,$P(XX,U,7)=$P(^BGPINDKC(BGPPC,19),U,3)
 ...S BGPSN=0,BGPCNT=0 F  S BGPSN=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN)) Q:BGPSN'=+BGPSN  S BGPCNT=BGPCNT+1 D
 ....S BGPSASU=$P(^BGPGPDCK(BGPSN,0),U,9),X=$O(^AUTTLOC("C",BGPSASU,0)),BGPSNAM=$S(X:$P(^DIC(4,X,0),U),1:"?????"),BGPSNAM=$S($P(^BGPGPDCK(BGPSN,0),U,17):"+"_BGPSNAM,1:BGPSNAM)
 ....I $P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.1")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.5")!($P($G(^BGPINDKC(BGPPC,19)),U,13)) D  I 1
 .....S X="",$P(X,U,1)=BGPSASU_" "_BGPSNAM
 .....S $P(X,U,2)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U)
 .....S $P(X,U,3)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,2)
 .....S $P(X,U,4)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,3)
 .....;S $P(X,U,5)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,4)
 ....E  D
 .....S $P(X,U,1)=BGPSASU_" "_BGPSNAM
 .....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U)_"%"
 .....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,2)_"%"
 .....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,3)_"%"
 ....I BGPCNT=1 D W^BGP5DP(XX,0,1,BGPPTYPE,1)
 ....;S Y="" I $P(^BGPINDKC(BGPPC,19),U,9)]""!($P(^BGPINDKC(BGPPC,19),U,10)]"") S $P(Y,U,6)=$TR($P(^BGPINDKC(BGPPC,19),U,9),"$","^"),$P(Y,U,7)=$TR($P(^BGPINDKC(BGPPC,19),U,10),"$","^")
 ....S Y="" I $P(^BGPINDKC(BGPPC,19),U,9)]""!($P(^BGPINDKC(BGPPC,19),U,10)]"")!($P(^BGPINDKC(BGPPC,19),U,11)]"") S $P(Y,U,6)=$TR($P(^BGPINDKC(BGPPC,19),U,9),"$","^") D
 .....;S $P(Y,U,8)=$P(^BGPINDKC(BGPPC,19),U,11)
 ....I Y]"" D W^BGP5DP(Y,0,1,BGPPTYPE,1)  ;D S(Y,1,1)
 ....D W^BGP5DP(X,0,1,BGPPTYPE,1)  ;D S(X,1,1)
 ..;D W^BGP5DP(" ",0,1,BGPPTYPE)  ;S X=" " D S(X,1,1)
 I BGPPTYPE="P",$Y>(BGPIOSL-2) D HEADER Q:BGPQUIT
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
 ;
HEADER ;EP
 D HEADER^BGP5DPH
 D H1
 Q
H1 ;
 S X="SELECTED OTHER NATIONAL MEASURES CLINICAL PERFORMANCE DETAIL" D W^BGP5DP(X,0,1,BGPPTYPE)
 D W^BGP5DP("Site",0,1,BGPPTYPE,2,21),W^BGP5DP("Site",0,0,BGPPTYPE,3,32),W^BGP5DP("Site",0,0,BGPPTYPE,4,40),W^BGP5DP("Area",0,0,BGPPTYPE,5,46),W^BGP5DP("Nat'l",0,0,BGPPTYPE,6,55) ;,W^BGP5DP("2014",0,0,BGPPTYPE,7,66)
 D W^BGP5DP("Current",0,1,BGPPTYPE,2,22),W^BGP5DP("Prev",0,0,BGPPTYPE,3,32),W^BGP5DP("Base",0,0,BGPPTYPE,4,40),W^BGP5DP("Current",0,0,BGPPTYPE,5,46),W^BGP5DP("2014",0,0,BGPPTYPE,6,55) ;,W^BGP5DP("Target",0,0,BGPPTYPE,8,66)
 D W^BGP5DP($TR($J("",80)," ","-"),0,1,BGPPTYPE)
 Q
