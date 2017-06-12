BGP5DSP ; IHS/CMI/LAB - IHS summary page 16 Nov 2010 7:12 AM ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 I BGPRTYPE'=1 Q
 I $G(BGPNPL) Q  ;not on gpra pat list
 I $G(BGPCPPL) Q  ;not on comp list
 S BGPQUIT=""
 D HEADER
 NEW P8,P4,P7,P12
 S P8=$S('$G(BGPNGR09):8,1:8)  ;CHANGE 1:8 TO 1:13
 S P4=$S('$G(BGPNGR09):4,1:4)  ;CHANGE 1:4 TO 1:14
 S P7=$S('$G(BGPNGR09):7,1:7)  ;CHANGE 1:7 TO 1:15
 S P12=$S('$G(BGPNGR09):12,1:12) ;CHANGE 1:12 TO 1:16
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARY",BGPC)) Q:BGPC'=+BGPC!(BGPQUIT)  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .S BGPC1=$O(^BGPSCAT("C",BGPC,0))
 .D W^BGP5DP("",0,1,BGPPTYPE)
 .D W^BGP5DP($P(^BGPSCAT(BGPC1,0),U),0,1,BGPPTYPE)  ;W !,$P(^BGPSCAT(BGPC1,0),U)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARY",BGPC,BGPO)) Q:BGPO=""!(BGPQUIT)  D
 ..S BGPPC=$O(^TMP($J,"SUMMARY",BGPC,BGPO,0))
 ..Q:$P($G(^BGPINDKC(BGPPC,22)),U,13)  ;part measure displays last
 ..I BGPPTYPE="P" D
 ...I $Y>(BGPIOSL-4) D HEADER Q:BGPQUIT
 ...I $P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.1")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.5")!($P($G(^BGPINDKC(BGPPC,19)),U,13)) D  I 1
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P4),0,1,BGPPTYPE)
 ....I $P(^BGPINDKC(BGPPC,14),U,P7)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P7),0,1,BGPPTYPE)
 ....I $P(^BGPINDKC(BGPPC,14),U,P12)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P12),0,1,BGPPTYPE)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U),7,0),0,0,BGPPTYPE,2,26)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U,2),7,0),0,0,BGPPTYPE,3,34)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U,3),7,0),0,0,BGPPTYPE,4,41)
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P8),0,0,BGPPTYPE,5,53)
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,2),0,0,BGPPTYPE,6,64)
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,3),0,0,BGPPTYPE,7,73)
 ...E  D
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P4),0,1,BGPPTYPE,1)
 ....I $P(^BGPINDKC(BGPPC,14),U,P7)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P7),0,1,BGPPTYPE)  ;W !,$P(^BGPINDKC(BGPPC,14),U,P7)
 ....I $P(^BGPINDKC(BGPPC,14),U,P12)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P12),0,1,BGPPTYPE)  ;W !,$P(^BGPINDKC(BGPPC,14),U,P12)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U),7,1)_"%",0,0,BGPPTYPE,2,26)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U,2),7,1)_"%",0,0,BGPPTYPE,3,34)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U,3),7,1)_"%",0,0,BGPPTYPE,4,41)
 ....D W^BGP5DP($TR($P(^BGPINDKC(BGPPC,14),U,P8),"$","^"),0,0,BGPPTYPE,5,53)
 ....D W^BGP5DP($TR($P(^BGPINDKC(BGPPC,14),U,2),"$","^"),0,0,BGPPTYPE,6,64)
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,3),0,0,BGPPTYPE,7,73)
 ....I $P(^BGPINDKC(BGPPC,14),U,9)]""!($P(^BGPINDKC(BGPPC,14),U,10)]"")!($P(^BGPINDKC(BGPPC,14),U,11)]"") D
 .....D W^BGP5DP($TR($P(^BGPINDKC(BGPPC,14),U,9),"$","^"),0,1,BGPPTYPE,5,53),W^BGP5DP($TR($P(^BGPINDKC(BGPPC,14),U,10),"$","^"),0,0,BGPPTYPE,6,64),W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,11),0,0,7,73)
 ..I BGPPTYPE="D" D
 ...S X=""
 ...I $P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.1")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.5")!($P($G(^BGPINDKC(BGPPC,19)),U,13)) D  I 1
 ....S X=$P(^BGPINDKC(BGPPC,14),U,P4)
 ....I $P(^BGPINDKC(BGPPC,14),U,P7)]"" D W^BGP5DP(X,0,1,BGPPTYPE) S X=$P(^BGPINDKC(BGPPC,14),U,P7)
 ....I $P(^BGPINDKC(BGPPC,14),U,P12)]"" D W^BGP5DP(X,0,1,BGPPTYPE) S X=$P(^BGPINDKC(BGPPC,14),U,P12)
 ....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U)
 ....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U,2)
 ....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U,3)
 ....S $P(X,U,5)=$P(^BGPINDKC(BGPPC,14),U,P8)
 ....S $P(X,U,6)=$P(^BGPINDKC(BGPPC,14),U,2),$P(X,U,7)=$P(^BGPINDKC(BGPPC,14),U,3)
 ....D W^BGP5DP(X,0,1,BGPPTYPE)
 ...E  D
 ....S X=$P(^BGPINDKC(BGPPC,14),U,P4)
 ....I $P(^BGPINDKC(BGPPC,14),U,P7)]"" D W^BGP5DP(X,0,1,BGPPTYPE) S X=$P(^BGPINDKC(BGPPC,14),U,P7)
 ....I $P(^BGPINDKC(BGPPC,14),U,P12)]"" D W^BGP5DP(X,0,1,BGPPTYPE) S X=$P(^BGPINDKC(BGPPC,14),U,P12)
 ....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U)_"%"
 ....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U,2)_"%"
 ....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U,3)_"%"
 ....S $P(X,U,5)=$TR($P(^BGPINDKC(BGPPC,14),U,P8),"$","^")
 ....S $P(X,U,6)=$TR($P(^BGPINDKC(BGPPC,14),U,2),"$","^"),$P(X,U,7)=$P(^BGPINDKC(BGPPC,14),U,3)
 ....D W^BGP5DP(X,0,1,BGPPTYPE)
 ....S X="" I $P(^BGPINDKC(BGPPC,14),U,9)]""!($P(^BGPINDKC(BGPPC,14),U,10)]"")!($P(^BGPINDKC(BGPPC,14),U,11)]"") S $P(X,U,5)=$TR($P(^BGPINDKC(BGPPC,14),U,9),"$","^"),$P(X,U,6)=$TR($P(^BGPINDKC(BGPPC,14),U,10),"$","^") D
 .....S $P(X,U,7)=$P(^BGPINDKC(BGPPC,14),U,11)
 .....I X]"" D W^BGP5DP(X,0,1,BGPPTYPE)
 I BGPPTYPE="P" I $Y>(BGPIOSL-9) D HEADER Q:BGPQUIT
 D W^BGP5DP(" * Measure definition changed in 2013.",0,2,BGPPTYPE)
 D W^BGP5DP("** Measure definition changed in 2014.",0,1,BGPPTYPE)
 ;D W^BGP5DP(" + Site Previous and Site Baseline values are not applicable for this measure.",0,1,BGPPTYPE)
 D W^BGP5DP("",0,1,BGPPTYPE)
 ;D PART
 Q
 ;
HEADER ;EP
 D HEADER^BGP5DPH
 D H1
 Q
H1 ;
 S X="OFFICIAL GPRA/GPRAMA MEASURES CLINICAL PERFORMANCE SUMMARY" D W^BGP5DP(X,1,1,BGPPTYPE)
 I $G(BGPAREAA) D W^BGP5DP("Area",0,1,BGPPTYPE,2,27),W^BGP5DP("Area",0,0,BGPPTYPE,3,35) D
  .D W^BGP5DP("Area",0,0,BGPPTYPE,4,44),W^BGP5DP($S('$G(BGPNGR09):"GPRA",1:"GPRA"),0,0,BGPPTYPE,5,53),W^BGP5DP("Nat'l",0,0,BGPPTYPE,6,64),W^BGP5DP("2020",0,0,BGPPTYPE,7,73)  ;CHANGE 1:"GPRA" TO 1:"GPRA"
 I '$G(BGPAREAA) D W^BGP5DP("Site",0,1,BGPPTYPE,2,27),W^BGP5DP("Site",0,0,BGPPTYPE,3,35) D
  .D W^BGP5DP("Site",0,0,BGPPTYPE,4,44),W^BGP5DP($S('$G(BGPNGR09):"GPRA",1:"GPRA"),0,0,BGPPTYPE,5,53),W^BGP5DP("Nat'l",0,0,BGPPTYPE,6,64),W^BGP5DP("2020",0,0,BGPPTYPE,7,73)  ;CHANGE 1:"GPRA" TO 1:"GPRA"
 D W^BGP5DP("Current",0,1,BGPPTYPE,2,26),W^BGP5DP("Previous",0,0,BGPPTYPE,3,34) D
  .D W^BGP5DP("Baseline",0,0,BGPPTYPE,4,43),W^BGP5DP("Target"_$S($G(BGPNGR09):"",1:""),0,0,BGPPTYPE,5,53),W^BGP5DP("2014",0,0,BGPPTYPE,6,64),W^BGP5DP("Target",0,0,BGPPTYPE,7,73)  ;CHANGE 09 TO "*" IF NEEDED
 D W^BGP5DP($TR($J("",80)," ","-"),0,1,BGPPTYPE)
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
 S P1=$S($G(BGPNGR09):8,1:8)  ;CHANGE 1:14 TO 1:8
 S BGPC=0 F  S BGPC=$O(^TMP($J,"SUMMARY",BGPC)) Q:BGPC'=+BGPC!(BGPQUIT)  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADERP Q:BGPQUIT
 .S BGPC1=$O(^BGPSCAT("C",BGPC,0))
 .;W !
 .;W !,$P(^BGPSCAT(BGPC1,0),U)
 .S BGPO="" F  S BGPO=$O(^TMP($J,"SUMMARY",BGPC,BGPO)) Q:BGPO=""!(BGPQUIT)  D
 ..S BGPPC=$O(^TMP($J,"SUMMARY",BGPC,BGPO,0))
 ..Q:'$P($G(^BGPINDKC(BGPPC,22)),U,13)  ;part measures only
 ..I BGPPTYPE="P" D
 ...I BGPPTYPE,$Y>(BGPIOSL-4) D HEADERP Q:BGPQUIT
 ...I $P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.1")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.5")!($P($G(^BGPINDKC(BGPPC,19)),U,13)) D  I 1
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P4),0,1,BGPPTYPE)
 ....I $P(^BGPINDKC(BGPPC,14),U,P7)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P7),0,1,BGPPTYPE)
 ....I $P(^BGPINDKC(BGPPC,14),U,P12)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P12),0,1,BGPPTYPE)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U),7,0),0,0,BGPPTYPE,2,26)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U,2),7,0),0,0,BGPPTYPE,3,34)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U,3),7,0),0,0,BGPPTYPE,4,44)
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P8),0,0,BGPPTYPE,5,53)
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,2),0,0,BGPPTYPE,6,64)
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,3),0,0,BGPPTYPE,7,73)
 ...E  D
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P4),0,1,BGPPTYPE,1)
 ....I $P(^BGPINDKC(BGPPC,14),U,P7)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P7),0,1,BGPPTYPE)  ;W !,$P(^BGPINDKC(BGPPC,14),U,P7)
 ....I $P(^BGPINDKC(BGPPC,14),U,P12)]"" D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,P12),0,1,BGPPTYPE)  ;W !,$P(^BGPINDKC(BGPPC,14),U,P12)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U),7,1)_"%",0,0,BGPPTYPE,2,26)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U,2),7,1)_"%",0,0,BGPPTYPE,3,34)
 ....D W^BGP5DP($J($P(^TMP($J,"SUMMARY",BGPC,BGPO,BGPPC),U,3),7,1)_"%",0,0,BGPPTYPE,4,44)
 ....D W^BGP5DP($TR($P(^BGPINDKC(BGPPC,14),U,P8),"$","^"),0,0,BGPPTYPE,5,53)
 ....D W^BGP5DP($TR($P(^BGPINDKC(BGPPC,14),U,2),"$","^"),0,0,BGPPTYPE,6,64)
 ....D W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,3),0,0,BGPPTYPE,7,73)
 ....I $P(^BGPINDKC(BGPPC,14),U,9)]""!($P(^BGPINDKC(BGPPC,14),U,10)]"")!($P(^BGPINDKC(BGPPC,14),U,11)]"") D
 .....D W^BGP5DP($TR($P(^BGPINDKC(BGPPC,14),U,9),"$","^"),0,1,BGPPTYPE,5,53),W^BGP5DP($TR($P(^BGPINDKC(BGPPC,14),U,10),"$","^"),0,0,BGPPTYPE,6,64),W^BGP5DP($P(^BGPINDKC(BGPPC,14),U,11),0,0,7,73)
 ..I BGPPTYPE="D" D
 ...S X=""
 ...I $P(^BGPINDKC(BGPPC,0),U,4)["014.A"!($P(^BGPINDKC(BGPPC,0),U,4)["023.")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.1")!($P(^BGPINDKC(BGPPC,0),U,4)="016.A.5")!($P($G(^BGPINDKC(BGPPC,19)),U,13)) D  I 1
 ....S X=$P(^BGPINDKC(BGPPC,14),U,P4)
 ....I $P(^BGPINDKC(BGPPC,14),U,P7)]"" D W^BGP5DP(X,0,1,BGPPTYPE) S X=$P(^BGPINDKC(BGPPC,14),U,P7)
 ....I $P(^BGPINDKC(BGPPC,14),U,P12)]"" D W^BGP5DP(X,0,1,BGPPTYPE) S X=$P(^BGPINDKC(BGPPC,14),U,P12)
 ....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U)
 ....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U,2)
 ....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U,3)
 ....S $P(X,U,5)=$P(^BGPINDKC(BGPPC,14),U,P8)
 ....S $P(X,U,6)=$P(^BGPINDKC(BGPPC,14),U,2),$P(X,U,7)=$P(^BGPINDKC(BGPPC,14),U,3)
 ....D W^BGP5DP(X,0,1,BGPPTYPE)
 ...E  D
 ....S X=$P(^BGPINDKC(BGPPC,14),U,P4)
 ....I $P(^BGPINDKC(BGPPC,14),U,P7)]"" D W^BGP5DP(X,0,1,BGPPTYPE) S X=$P(^BGPINDKC(BGPPC,14),U,P7)
 ....I $P(^BGPINDKC(BGPPC,14),U,P12)]"" D W^BGP5DP(X,0,1,BGPPTYPE) S X=$P(^BGPINDKC(BGPPC,14),U,P12)
 ....S $P(X,U,2)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U)_"%"
 ....S $P(X,U,3)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U,2)_"%"
 ....S $P(X,U,4)=$P(^TMP($J,"SUMMARYDEL",BGPC,BGPO,BGPPC),U,3)_"%"
 ....S $P(X,U,5)=$TR($P(^BGPINDKC(BGPPC,14),U,P8),"$","^")
 ....S $P(X,U,6)=$TR($P(^BGPINDKC(BGPPC,14),U,2),"$","^"),$P(X,U,7)=$P(^BGPINDKC(BGPPC,14),U,3)
 ....D W^BGP5DP(X,0,1,BGPPTYPE)
 ....S X="" I $P(^BGPINDKC(BGPPC,14),U,9)]""!($P(^BGPINDKC(BGPPC,14),U,10)]"")!($P(^BGPINDKC(BGPPC,14),U,11)]"") S $P(X,U,5)=$TR($P(^BGPINDKC(BGPPC,14),U,9),"$","^"),$P(X,U,6)=$TR($P(^BGPINDKC(BGPPC,14),U,10),"$","^") D
 .....S $P(X,U,7)=$P(^BGPINDKC(BGPPC,14),U,11)
 .....I X]"" D W^BGP5DP(X,0,1,BGPPTYPE)
 I BGPPTYPE="P",$Y>(BGPIOSL-9) D HEADERP Q:BGPQUIT
 D W^BGP5DP("",0,1,BGPPTYPE)
 D W^BGP5DP($S($G(BGPNGR09):"*",1:"*")_" Federally Administered Activities measure.  National 2014 rate is for federal",0,1,BGPPTYPE)  ;CHANGE NGR09 TO "**"
 D W^BGP5DP("sites only.",0,1,BGPPTYPE)
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
 ;
HEADERP ;EP
 D HEADER^BGP5DPH
 D H1P
 Q
H1P ;
 S X="OFFICIAL GPRA/GPRAMA MEASURES CLINICAL PERFORMANCE SUMMARY" D W^BGP5DP(X,1,1,BGPPTYPE)
 I $G(BGPAREAA) D W^BGP5DP("Area",0,1,BGPPTYPE,2,27),W^BGP5DP("Area",0,0,BGPPTYPE,3,35) D
  .D W^BGP5DP("Area",0,0,BGPPTYPE,4,44),W^BGP5DP($S('$G(BGPNGR09):"PART",1:"PART"),0,0,BGPPTYPE,5,53),W^BGP5DP("Nat'l",0,0,BGPPTYPE,6,63),W^BGP5DP("2020",0,0,BGPPTYPE,7,73)
 I '$G(BGPAREAA) D W^BGP5DP("Site",0,1,BGPPTYPE,2,27),W^BGP5DP("Site",0,0,BGPPTYPE,3,35) D
  .D W^BGP5DP("Site",0,0,BGPPTYPE,4,44),W^BGP5DP($S('$G(BGPNGR09):"PART",1:"PART"),0,0,BGPPTYPE,5,53),W^BGP5DP("Nat'l",0,0,BGPPTYPE,6,63),W^BGP5DP("2020",0,0,BGPPTYPE,7,73)
 D W^BGP5DP("Current",0,1,BGPPTYPE,2,26),W^BGP5DP("Previous",0,0,BGPPTYPE,3,34) D
 .D W^BGP5DP("Baseline",0,0,BGPPTYPE,4,43),W^BGP5DP("Target"_$S($G(BGPNGR09):"",1:""),0,0,BGPPTYPE,5,53),W^BGP5DP("2014",0,0,BGPPTYPE,6,63),W^BGP5DP("Target",0,0,BGPPTYPE,7,73)
 D W^BGP5DP($TR($J("",80)," ","-"),0,1,BGPPTYPE)
 D W^BGP5DP("PART MEASURE",0,2,BGPPTYPE)
 D W^BGP5DP("------------",0,1,BGPPTYPE)
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
