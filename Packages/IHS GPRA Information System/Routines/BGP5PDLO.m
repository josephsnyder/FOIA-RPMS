BGP5PDLO ; IHS/CMI/LAB - IHS gpra print ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
S(Y,F,P) ;EP set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
OTHSUM ;EP
 I BGPRTYPE'=7 Q  ;national gpra only
 Q:$G(BGPCPPL)
 I $G(BGPNPL) Q  ;not on lists
 S BGPQUIT="",BGPGPG=0
 S BGPSUMP=1
 D HEADER^BGP5PDL
 D:'$G(BGPSUMON) H1
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARYDEL OTHER",BGPC)) Q:BGPC'=+BGPC  D
 .S X=" " D S(X,1,1)
 .S BGPC1=$O(^BGPSCAT("D",BGPC,0))
 .S X=$P(^BGPSCAT(BGPC1,0),U,1) D S(X,1,1)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARYDEL OTHER",BGPC,BGPO)) Q:BGPO=""  D
 ..S BGPPC=$O(^TMP($J,"SUMMARYDEL OTHER",BGPC,BGPO,0))
 ..S X=""
 ..I $P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)["016")!($P($G(^BGPINDKC(BGPPC,19)),U,13)) D  I 1
 ...S X=" "_$P(^BGPINDKC(BGPPC,19),U,4)
 ...I $P(^BGPINDKC(BGPPC,19),U,7)]"" D S(X,1,1) S X=" "_$P(^BGPINDKC(BGPPC,19),U,7)
 ...S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL OTHER",BGPC,BGPO,BGPPC),U)
 ...S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL OTHER",BGPC,BGPO,BGPPC),U,2)
 ...S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL OTHER",BGPC,BGPO,BGPPC),U,3)
 ...S $P(X,U,5)=$P(^BGPINDKC(BGPPC,19),U,2),$P(X,U,6)=$P(^BGPINDKC(BGPPC,19),U,3)
 ...D S(X,1,1)
 ..E  D
 ...S X=" "_$P(^BGPINDKC(BGPPC,19),U,4)
 ...I $P(^BGPINDKC(BGPPC,19),U,7)]"" D S(X,1,1) S X=" "_$P(^BGPINDKC(BGPPC,19),U,7)
 ...S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL OTHER",BGPC,BGPO,BGPPC),U)_"%"
 ...S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL OTHER",BGPC,BGPO,BGPPC),U,2)_"%"
 ...S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL OTHER",BGPC,BGPO,BGPPC),U,3)_"%"
 ...S $P(X,U,5)=$TR($P(^BGPINDKC(BGPPC,19),U,2),"$","^"),$P(X,U,6)=$P(^BGPINDKC(BGPPC,19),U,3)
 ...D S(X,1,1)
 ...S X="" I $P(^BGPINDKC(BGPPC,19),U,9)]""!($P(^BGPINDKC(BGPPC,19),U,10)]"")!($P(^BGPINDKC(BGPPC,19),U,11)]"") S $P(X,U,5)=$TR($P(^BGPINDKC(BGPPC,19),U,10),"$","^") D
 ....S $P(X,U,6)=$P(^BGPINDKC(BGPPC,19),U,11)
 ...I X]"" D S(X,1,1)
 D SDP
 Q
 ;
H1 ;
 S X=" " D S(X,2,1)
 S X="SELECTED OTHER NATIONAL MEASURES CLINICAL PERFORMANCE SUMMARY" D S(X,3,1)
 I $G(BGPAREAA) S X="",$P(X,U,2)=" Area",$P(X,U,3)=" Area",$P(X,U,4)=" Area",$P(X,U,5)="Nat'l",$P(X,U,6)="2014" D S(X,1,1)
 I '$G(BGPAREAA) S X="",$P(X,U,2)=" Site",$P(X,U,3)=" Site",$P(X,U,4)=" Site",$P(X,U,5)="Nat'l",$P(X,U,6)="2014" D S(X,1,1)
 S X="",$P(X,U,2)="Current",$P(X,U,3)="Previous",$P(X,U,4)="Baseline",$P(X,U,5)="2014",$P(X,U,6)="Target" D S(X,1,1)
 S X=$TR($J("",80)," ","-") D S(X,1,1)
 Q
H2 ;
 S X=" " D S(X,2,1)
 S X="SELECTED OTHER NATIONAL MEASURES CLINICAL PERFORMANCE DETAIL" D S(X,2,1)
 S X="",$P(X,U,2)=" Site",$P(X,U,3)=" Site",$P(X,U,4)=" Site",$P(X,U,5)="Area",$P(X,U,6)="National",$P(X,U,7)="2014" D S(X,1,1)
 S X="",$P(X,U,2)="Current",$P(X,U,3)="Previous",$P(X,U,4)="Baseline",$P(X,U,5)="Current",$P(X,U,6)="2014",$P(X,U,7)="Target" D S(X,1,1)
 S X=$TR($J("",80)," ","-") D S(X,1,1)
 Q
SDPX ;
 I BGPRTYPE'=7 Q  ;national gpra only
 I '$G(BGPAREAA) Q
 S BGPQUIT="",BGPGPG=0
 S BGPSUMP=1
 S X=" " D S(X,2,1)
 D HEADER^BGP5PDL
 D H2
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC)) Q:BGPC'=+BGPC  D
 .S X=" " D S(X,1,1)
 .S BGPC1=$O(^BGPSCAT("D",BGPC,0))
 .S X=$P(^BGPSCAT(BGPC1,0),U,1) D S(X,1,1)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO)) Q:BGPO=""  D
 ..S BGPPC=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,0))
 ..S X=" " D S(X,1,1)
 ..S XX=" "_$P(^BGPINDKC(BGPPC,19),U,4)
 ..I $P(^BGPINDKC(BGPPC,19),U,7)]"" D S(XX,1,1) S XX=" "_$P(^BGPINDKC(BGPPC,19),U,7)
 ..I $P(^BGPINDKC(BGPPC,19),U,12)]"" D S(XX,1,1) S XX=" "_$P(^BGPINDKC(BGPPC,19),U,12)
 ..S F=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,0))
 ..S F=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,F),U,4)
 ..S $P(XX,U,5)=$P(^BGPINDKC(BGPPC,19),U,2),$P(XX,U,6)=$P(^BGPINDKC(BGPPC,19),U,3)
 ..S BGPSN=0,BGPCNT=0 F  S BGPSN=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN)) Q:BGPSN'=+BGPSN  S BGPCNT=BGPCNT+1 D
 ...S BGPSASU=$P(^BGPGPDCK(BGPSN,0),U,9),X=$O(^AUTTLOC("C",BGPSASU,0)),BGPSNAM=$S(X:$P(^DIC(4,X,0),U),1:"?????"),BGPSNAM=$S($P(^BGPGPDCK(BGPSN,0),U,17):"+"_BGPSNAM,1:BGPSNAM)
 ...I $P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)["016")!($P($G(^BGPINDKC(BGPPC,19)),U,13)) D  I 1
 ....S X="",$P(X,U,1)=BGPSASU_" "_BGPSNAM
 ....S $P(X,U,2)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U)
 ....S $P(X,U,3)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,2)
 ....S $P(X,U,4)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,3)
 ...E  D
 ....S $P(X,U,1)=BGPSASU_" "_BGPSNAM
 ....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U)_"%"
 ....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,2)_"%"
 ....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,3)_"%"
 ...I BGPCNT=1 D S(XX,1,1) D
 ....S Y="" I $P(^BGPINDKC(BGPPC,19),U,9)]""!($P(^BGPINDKC(BGPPC,19),U,10)]"")!($P(^BGPINDKC(BGPPC,19),U,11)]"") S $P(Y,U,6)=$TR($P(^BGPINDKC(BGPPC,19),U,9),"$","^"),$P(Y,U,7)=$TR($P(^BGPINDKC(BGPPC,19),U,10),"$","^") D
 .....S $P(Y,U,8)=$P(^BGPINDKC(BGPPC,19),U,11)
 ....I Y]"" D S(Y,1,1)
 ...D S(X,1,1)
 Q
SDP ;
 I BGPRTYPE'=7 Q
 I '$G(BGPAREAA) Q  ;area only
 S BGPQUIT="",BGPGPG=0
 S BGPSUMP=1
 S X=" " D S(X,2,1)
 D HEADER^BGP5PDL
 D H2
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC)) Q:BGPC'=+BGPC  D
 .S X=" " D S(X,1,1)
 .S BGPC1=$O(^BGPSCAT("D",BGPC,0))
 .S X=$P(^BGPSCAT(BGPC1,0),U,1) D S(X,1,1)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO)) Q:BGPO=""  D
 ..S BGPPC=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,0))
 ..S X=" " D S(X,1,1)
 ..S XX=" "_$P(^BGPINDKC(BGPPC,19),U,4)
 ..I $P(^BGPINDKC(BGPPC,19),U,7)]"" D S(XX,1,1) S XX=" "_$P(^BGPINDKC(BGPPC,19),U,7)
 ..I $P(^BGPINDKC(BGPPC,19),U,12)]"" D S(XX,1,1) S XX=" "_$P(^BGPINDKC(BGPPC,19),U,12)
 ..S F=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,0))
 ..S F=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,F),U,4)
 ..S $P(XX,U,5)=F_$S($P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.1")!($P($G(^BGPINDKC(BGPPC,19)),U,13)):"",1:"%")
 ..S $P(XX,U,6)=$P(^BGPINDKC(BGPPC,19),U,2),$P(XX,U,7)=$P(^BGPINDKC(BGPPC,19),U,3)
 ..S BGPSN=0,BGPCNT=0 F  S BGPSN=$O(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN)) Q:BGPSN'=+BGPSN  S BGPCNT=BGPCNT+1 D
 ...S BGPSASU=$P(^BGPGPDCK(BGPSN,0),U,9),X=$O(^AUTTLOC("C",BGPSASU,0)),BGPSNAM=$S(X:$P(^DIC(4,X,0),U),1:"?????"),BGPSNAM=$S($P(^BGPGPDCK(BGPSN,0),U,17):"+"_BGPSNAM,1:BGPSNAM)
 ...I $P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)["016")!($P($G(^BGPINDKC(BGPPC,19)),U,13)) D  I 1
 ....S X="",$P(X,U,1)=BGPSASU_" "_BGPSNAM
 ....S $P(X,U,2)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U)
 ....S $P(X,U,3)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,2)
 ....S $P(X,U,4)=+$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,3)
 ....;S $P(X,U,5)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,4)
 ...E  D
 ....S $P(X,U,1)=BGPSASU_" "_BGPSNAM
 ....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U)_"%"
 ....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,2)_"%"
 ....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,3)_"%"
 ....;S $P(X,U,5)=$P(^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",BGPC,BGPO,BGPPC,BGPSN),U,4)_"%"
 ....;S $P(X,U,5)=$P(^BGPINDKC(BGPPC,19),U,2),$P(X,U,6)=$P(^BGPINDKC(BGPPC,19),U,3)
 ...I BGPCNT=1 D S(XX,1,1) D
 ....;S Y="" I $P(^BGPINDKC(BGPPC,19),U,9)]""!($P(^BGPINDKC(BGPPC,19),U,10)]"") S $P(Y,U,6)=$TR($P(^BGPINDKC(BGPPC,19),U,9),"$","^"),$P(Y,U,7)=$TR($P(^BGPINDKC(BGPPC,19),U,10),"$","^")
 ....S Y="" I $P(^BGPINDKC(BGPPC,19),U,9)]""!($P(^BGPINDKC(BGPPC,19),U,10)]"")!($P(^BGPINDKC(BGPPC,19),U,11)]"") S $P(Y,U,6)=$TR($P(^BGPINDKC(BGPPC,19),U,9),"$","^"),$P(Y,U,7)=$TR($P(^BGPINDKC(BGPPC,19),U,10),"$","^") D
 .....S $P(Y,U,8)=$P(^BGPINDKC(BGPPC,19),U,11)
 ....I Y]"" D S(Y,1,1)
 ...D S(X,1,1)
 Q
