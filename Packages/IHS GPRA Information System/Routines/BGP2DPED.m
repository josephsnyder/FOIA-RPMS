BGP2DPED ; IHS/CMI/LAB - IHS gpra print ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
 ;
PRINT ;
DEL ;EP - create delimited output file
 S BGPRTYPE=6,BGPRPTH=""
 K ^TMP($J)
 S ^TMP($J,"BGPDEL",0)=0
 D ^BGP2PDLH
 K BGPSUMP
 D DEL1
 D ^BGP2DPEE ;print lists to delimited file
 ;if screen selected do screen
 I BGPDELT="S" D SCREEN,EXIT Q
 ;call xbgsave to create output file
 S XBGL="BGPDATA"
 L +^BGPDATA:300 E  W:'$D(ZTQUEUED) "Unable to lock global" Q
 K ^BGPDATA ;global for saving
 S X=0 F  S X=$O(^TMP($J,"BGPDEL",X)) Q:X'=+X  S ^BGPDATA(X)=^TMP($J,"BGPDEL",X)
 I '$D(BGPGUI) D
 .;S XBUF=BGPUF
 .S XBFLT=1,XBFN=BGPDELF_".txt",XBMED="F",XBTLE="GPRA 10 DELIMITED PT ED OUTPUT",XBQ="N",XBF=0
 .D ^XBGSAVE
 .K XBFLT,XBFN,XBMED,XBTLE,XBE,XBF
 I $D(BGPGUI) D
 .S (C,X)=0 F  S X=$O(^BGPDATA(X)) Q:X'=+X  S C=C+1,^BGPGUIW(BGPGIEN,12,C,0)=^BGPDATA(X)
 .S ^BGPGUIW(BGPGIEN,12,0)="^90546.1912^"_C_"^"_C_"^"_DT
 L -^BGPDATA
 K ^BGPDATA ;export global
 D EXIT
 Q
 ;
SCREEN ;
 S X=0 F  S X=$O(^TMP($J,"BGPDEL",X)) Q:X'=+X  W !,^TMP($J,"BGPDEL",X)
 Q
DEL1 ;EP
 S BGPIC=0 F  S BGPIC=$O(BGPIND(BGPIC)) Q:BGPIC=""  D
 .;now print individual measure
 .D S(" ",1,1),S(" ",1,1)
 .S X=$P(^BGPPEIW(BGPIC,0),U,2) D S(X,1,1)
 .D S(" ",1,1)
 .S X="Denominator(s):" D S(X,1,1)
 .S BGPX=0 F  S BGPX=$O(^BGPPEIW(BGPIC,61,"B",BGPX)) Q:BGPX'=+BGPX  D
 ..S BGPY=0 F  S BGPY=$O(^BGPPEIW(BGPIC,61,"B",BGPX,BGPY)) Q:BGPY'=+BGPY  D
 ...S BGPZ=0 F  S BGPZ=$O(^BGPPEIW(BGPIC,61,BGPY,11,BGPZ)) Q:BGPZ'=+BGPZ  D
 ....S Y=^BGPPEIW(BGPIC,61,BGPY,11,BGPZ,0) S:BGPZ=1 Y=" - "_Y D S(Y,1,1)
 ....Q
 ...Q
 ..Q
 .D S(" ",1,1)
 .S X="Numerator(s):" D S(X,1,1)
 .S BGPX=0 F  S BGPX=$O(^BGPPEIW(BGPIC,62,"B",BGPX)) Q:BGPX'=+BGPX  D
 ..S BGPY=0 F  S BGPY=$O(^BGPPEIW(BGPIC,62,"B",BGPX,BGPY)) Q:BGPY'=+BGPY  D
 ...S BGPZ=0 F  S BGPZ=$O(^BGPPEIW(BGPIC,62,BGPY,11,BGPZ)) Q:BGPZ'=+BGPZ  D
 ....S X=^BGPPEIW(BGPIC,62,BGPY,11,BGPZ,0) S:BGPZ=1 X=" - "_X D S(X,1,1)
 ....Q
 ...Q
 ..Q
 .D S(" ",1,1)
 .S BGPNODE=11
 .S BGPX=0 F  S BGPX=$O(^BGPPEIW(BGPIC,BGPNODE,BGPX)) Q:BGPX'=+BGPX  D
 ..S X=^BGPPEIW(BGPIC,BGPNODE,BGPX,0) D S(X,1,1)
 .D @BGPIC
 Q
EXIT ;
 K ^TMP($J)
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
S(Y,F,P) ;EP set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
 ;
1 ;
 D S(" ",1,1) ;S X=$P(^BGPPEIW(BGPIC,0),U,2) D S(X,1,1)
 D H1^BGP2PDL1
 D S(" ",1,1)
 S BGPCYD=$$V(1,BGPRPT,11,1)
 S BGPPRD=$$V(2,BGPRPT,11,1)
 S BGPBLD=$$V(3,BGPRPT,11,1)
 I $G(BGPSEAT) S X=$P(^DIBT(BGPSEAT,0),U,1)_" Population" D S(X,1,1)
 I '$G(BGPSEAT) S X="User Pop" D S(X,1,1)
 S Y=BGPCYD_"^^"_BGPPRD_"^^^"_BGPBLD D S(Y,,2)
 D S(" ",1,1)
 S N=11,P=2 D SETN
 S X="# w/ patient ed" D S(X,1,1)
 D H2^BGP2PDL1
 Q
2 ;
 D S(" ",1,1) D S(" ",1,1) ;S X=$P(^BGPPEIW(BGPIC,0),U,2) D S(X,1,1)
 D H1^BGP2PDL1
 D S(" ",1,1)
 S BGPCYD=$$V(1,BGPRPT,11,7)
 S BGPPRD=$$V(2,BGPRPT,11,7)
 S BGPBLD=$$V(3,BGPRPT,11,7)
 I $G(BGPSEAT) S X=$P(^DIBT(BGPSEAT,0),U,1)_" Population" D S(X,1,1)
 S X="Total Time Spent" D S(X,1,1) S X="Providing Education (mins)" D S(X,1,1)
 S Y=BGPCYD_"^^"_BGPPRD_"^^^"_BGPBLD D S(Y,,2)
 D S(" ",1,1)
 K BGPPROVS
 S N=12 D SETNM
 K BGPX
 S X="",C=0 F  S X=$O(BGPPROVS(X)) Q:X=""  S Y="" F  S Y=$O(BGPPROVS(X,Y)) Q:Y=""  S C=C+1 S BGPX((9999999-$P(BGPPROVS(X,Y),U,1)),C)=X_U_Y_U_BGPPROVS(X,Y)
 S BGP1=0,BGPCNT=0 F  S BGP1=$O(BGPX(BGP1)) Q:BGP1'=+BGP1  D
 .S BGP2=0 F  S BGP2=$O(BGPX(BGP1,BGP2)) Q:BGP2'=+BGP2  D
 ..S X=$P(BGPX(BGP1,BGP2),U,2) D S(X,1,1)
 ..S BGPCYN=$P(BGPX(BGP1,BGP2),U,3)
 ..S BGPPRN=$P(BGPX(BGP1,BGP2),U,4)
 ..S BGPBLN=$P(BGPX(BGP1,BGP2),U,5)
 ..S BGPCYP=$P(BGPX(BGP1,BGP2),U,6)
 ..S BGPPRP=$P(BGPX(BGP1,BGP2),U,7)
 ..S BGPBLP=$P(BGPX(BGP1,BGP2),U,8)
 ..D H2^BGP2PDL1
 I '$G(BGPAREAA) D
 .S BGPAA=$$V(1,BGPRPT,11,7)
 .S BGPAB=$$V(2,BGPRPT,11,7)
 .S BGPAC=$$V(3,BGPRPT,11,7)
 .S BGPCYN=$$V(1,BGPRPT,11,6)
 .S BGPPRN=$$V(2,BGPRPT,11,6)
 .S BGPBLN=$$V(3,BGPRPT,11,6)
 .S BGPCYD=$$V(1,BGPRPT,11,3)
 .S BGPPRD=$$V(2,BGPRPT,11,3)
 .S BGPBLD=$$V(3,BGPRPT,11,3)
 I $G(BGPAREAA) D
 .S BGPAA=$$V(1,BGPRPT,11,7)
 .S BGPAB=$$V(2,BGPRPT,11,7)
 .S BGPAC=$$V(3,BGPRPT,11,7)
 .S BGPCYN=$$V(1,BGPRPT,11,6)
 .S BGPPRN=$$V(2,BGPRPT,11,6)
 .S BGPBLN=$$V(3,BGPRPT,11,6)
 .S BGPCYD=$S(BGPAA:BGPAA/BGPCYN,1:0)
 .S BGPPRD=$S(BGPAB:BGPAB/BGPPRN,1:0)
 .S BGPBLD=$S(BGPAC:BGPAC/BGPBLN,1:0)
 S X="" D S(X,1,1)
 D S("Total # of Minutes recorded",1,1) D S("for All Providers",1,1)
 S Y=BGPAA_"^^"_BGPAB_"^^^"_BGPAC D S(Y,,2)
 D S("Total # of Pt Ed Codes with Provider",1,1) D S("and minutes recorded",1,1)
 S Y=BGPCYN_"^^"_BGPPRN_"^^^"_BGPBLN D S(Y,,2)
 D S(" ",1,1)
 S X="Average Time Spent" D S(X,1,1) S X="All Providers (minutes)" D S(X,1,1)
 S Y=$$SL(BGPCYD)_"^^"_$$SL(BGPPRD)_"^^^"_$$SL(BGPBLD) D S(Y,,2)
 I '$G(BGPAREAA) D
 .S BGPCYD=$$V(1,BGPRPT,11,4)
 .S BGPPRD=$$V(2,BGPRPT,11,4)
 .S BGPBLD=$$V(3,BGPRPT,11,4)
 I $G(BGPAREAA) D
 .S BGPCYD=999999999,BGPBLD=999999999,BGPPRD=999999999
 .S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..I $P($G(^BGPPEDCW(X,11)),U,4)]"",$P(^BGPPEDCW(X,11),U,4)<BGPCYD S BGPCYD=$P(^BGPPEDCW(X,11),U,4)
 ..I $P($G(^BGPPEDPW(X,11)),U,4)]"",$P(^BGPPEDPW(X,11),U,4)<BGPPRD S BGPPRD=$P(^BGPPEDPW(X,11),U,4)
 ..I $P($G(^BGPPEDBW(X,11)),U,4)]"",$P(^BGPPEDBW(X,11),U,4)<BGPBLD S BGPBLD=$P(^BGPPEDBW(X,11),U,4)
 .I BGPCYD=999999999 S BGPCYD=""
 .I BGPBLD=999999999 S BGPBLD=""
 .I BGPPRD=999999999 S BGPPRD=""
 S X="" D S(X,1,1)
 S X="Minimum Time Spent" D S(X,2,1) S X="All Provders (minutes)" D S(X,1,1)
 S Y=BGPCYD_"^^"_BGPPRD_"^^^"_BGPBLD D S(Y,,2)
 I '$G(BGPAREAA) D
 .S BGPCYD=$$V(1,BGPRPT,11,5)
 .S BGPPRD=$$V(2,BGPRPT,11,5)
 .S BGPBLD=$$V(3,BGPRPT,11,5)
 I $G(BGPAREAA) D
 .S (BGPCYD,BGPPRD,BGPBLD)=""
 .S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..I $P($G(^BGPPEDCW(X,11)),U,5)>BGPCYD S BGPCYD=$P(^BGPPEDCW(X,11),U,5)
 ..I $P($G(^BGPPEDPW(X,11)),U,5)>BGPPRD S BGPPRD=$P(^BGPPEDPW(X,11),U,5)
 ..I $P($G(^BGPPEDBW(X,11)),U,5)>BGPBLD S BGPBLD=$P(^BGPPEDBW(X,11),U,5)
 S X="" D S(X,1,1)
 S X="Maximum Time Spent" D S(X,1,1) S X="All Providers (minutes)" D S(X,1,1)
 S Y=BGPCYD_"^^"_BGPPRD_"^^^"_BGPBLD D S(Y,,2)
 Q
3 ;
 S X=""
 D S("  ",1,1) D S("  ",1,1) ;S X=$P(^BGPPEIW(BGPIC,0),U,2) D S(X,1,1)
 D H1^BGP2PDL1
 D S(" ",1,1)
 S BGPCYD=$$V(1,BGPRPT,11,8)
 S BGPPRD=$$V(2,BGPRPT,11,8)
 S BGPBLD=$$V(3,BGPRPT,11,8)
 I $G(BGPSEAT) S X=$P(^DIBT(BGPSEAT,0),U,1)_" Population" D S(X,1,1)
 S X="Total # Education Codes" D S(X,1,1)
 S Y=BGPCYD_"^^"_BGPPRD_"^^^"_BGPBLD D S(Y,,2)
 D S(" ",1,1)
 K BGPPROVS
 S N=13 D SETNM
 K BGPX
 S BGPCNT=0
 S X="",C=0 F  S X=$O(BGPPROVS(X)) Q:X=""  S Y="" F  S Y=$O(BGPPROVS(X,Y)) Q:Y=""  S C=C+1 S BGPX((9999999-$P(BGPPROVS(X,Y),U,1)),C)=X_U_Y_U_BGPPROVS(X,Y)
 S BGP1=0 F  S BGP1=$O(BGPX(BGP1)) Q:BGP1'=+BGP1!(BGPCNT>24)  D
 .S BGPCNT=BGPCNT+1 S BGP2=0 F  S BGP2=$O(BGPX(BGP1,BGP2)) Q:BGP2'=+BGP2  D
 ..S X=BGPCNT_".  "_$P(BGPX(BGP1,BGP2),U,2) D S(X,1,1)
 ..S BGPCYN=$P(BGPX(BGP1,BGP2),U,3)
 ..S BGPPRN=$P(BGPX(BGP1,BGP2),U,4)
 ..S BGPBLN=$P(BGPX(BGP1,BGP2),U,5)
 ..S BGPCYP=$P(BGPX(BGP1,BGP2),U,6)
 ..S BGPPRP=$P(BGPX(BGP1,BGP2),U,7)
 ..S BGPBLP=$P(BGPX(BGP1,BGP2),U,8)
 ..D H2^BGP2PDL1
 Q
4 ;
 S X=""
 D S(" ",1,1) D S(" ",1,1) ;S X=$P(^BGPPEIW(BGPIC,0),U,2) D S(X,1,1)
 D H1^BGP2PDL1
 D S(" ",1,1)
 S BGPCYD=$$V(1,BGPRPT,11,9)
 S BGPPRD=$$V(2,BGPRPT,11,9)
 S BGPBLD=$$V(3,BGPRPT,11,9)
 I $G(BGPSEAT) S X=$P(^DIBT(BGPSEAT,0),U,1)_" Population" D S(X,1,1)
 S X="Total # Education Codes" D S(X,1,1)
 S Y=BGPCYD_"^^"_BGPPRD_"^^^"_BGPBLD D S(Y,,2)
 D S(" ",1,1)
 K BGPPROVS
 S N=14 D SETNM
 K BGPX
 S BGPCNT=0
 S X="",C=0 F  S X=$O(BGPPROVS(X)) Q:X=""  S Y="" F  S Y=$O(BGPPROVS(X,Y)) Q:Y=""  S C=C+1 S BGPX((9999999-$P(BGPPROVS(X,Y),U,1)),C)=X_U_Y_U_BGPPROVS(X,Y)
 S BGP1=0 F  S BGP1=$O(BGPX(BGP1)) Q:BGP1'=+BGP1!(BGPCNT>24)  D
 .S BGPCNT=BGPCNT+1 S BGP2=0 F  S BGP2=$O(BGPX(BGP1,BGP2)) Q:BGP2'=+BGP2  D
 ..S X=BGPCNT_".  "_$P(BGPX(BGP1,BGP2),U,2) D S(X,1,1)
 ..S BGPCYN=$P(BGPX(BGP1,BGP2),U,3)
 ..S BGPPRN=$P(BGPX(BGP1,BGP2),U,4)
 ..S BGPBLN=$P(BGPX(BGP1,BGP2),U,5)
 ..S BGPCYP=$P(BGPX(BGP1,BGP2),U,6)
 ..S BGPPRP=$P(BGPX(BGP1,BGP2),U,7)
 ..S BGPBLP=$P(BGPX(BGP1,BGP2),U,8)
 ..D H2^BGP2PDL1
 Q
5 ;
 S X=""
 D S(" ",1,1) D S(" ",1,1) ;S X=$P(^BGPPEIW(BGPIC,0),U,2) D S(X,1,1)
 D H1^BGP2PDL1
 D S(" ",1,1)
 S BGPCYD=$$V(1,BGPRPT,11,10)
 S BGPPRD=$$V(2,BGPRPT,11,10)
 S BGPBLD=$$V(3,BGPRPT,11,10)
 I $G(BGPSEAT) S X=$P(^DIBT(BGPSEAT,0),U,1)_" Population" D S(X,1,1)
 S X="Total # Education Codes" D S(X,1,1)
 S Y=BGPCYD_"^^"_BGPPRD_"^^^"_BGPBLD D S(Y,,2)
 D S(" ",1,1)
 K BGPPROVS
 S N=15 D SETNM
 K BGPX
 S BGPCNT=0
 S X="",C=0 F  S X=$O(BGPPROVS(X)) Q:X=""  S Y="" F  S Y=$O(BGPPROVS(X,Y)) Q:Y=""  S C=C+1 S BGPX((9999999-$P(BGPPROVS(X,Y),U,1)),C)=X_U_Y_U_BGPPROVS(X,Y)
 S BGP1=0 F  S BGP1=$O(BGPX(BGP1)) Q:BGP1'=+BGP1!(BGPCNT>15)  D
 .S BGPCNT=BGPCNT+1 S BGP2=0 F  S BGP2=$O(BGPX(BGP1,BGP2)) Q:BGP2'=+BGP2  D
 ..S X=BGPCNT_".  "_$P(BGPX(BGP1,BGP2),U,2) D S(X,1,1)
 ..S BGPCYN=$P(BGPX(BGP1,BGP2),U,3)
 ..S BGPPRN=$P(BGPX(BGP1,BGP2),U,4)
 ..S BGPBLN=$P(BGPX(BGP1,BGP2),U,5)
 ..S BGPCYP=$P(BGPX(BGP1,BGP2),U,6)
 ..S BGPPRP=$P(BGPX(BGP1,BGP2),U,7)
 ..S BGPBLP=$P(BGPX(BGP1,BGP2),U,8)
 ..D H2^BGP2PDL1
 Q
6 ;
 S X=""
 D S(" ",1,1) D S(" ",1,1) ;S X=$P(^BGPPEIW(BGPIC,0),U,2) D S(X,1,1)
 D H1^BGP2PDL1
 D S(" ",1,1)
 S BGPCYD=$$V(1,BGPRPT,11,12)
 S BGPPRD=$$V(2,BGPRPT,11,12)
 S BGPBLD=$$V(3,BGPRPT,11,12)
 I $G(BGPSEAT) S X=$P(^DIBT(BGPSEAT,0),U,1)_" Population" D S(X,1,1)
 S X="Total # Education Codes" D S(X,1,1)
 S Y=BGPCYD_"^^"_BGPPRD_"^^^"_BGPBLD D S(Y,,2)
 D S(" ",1,1)
 S X="Patient Understanding" D S(X,1,1)
 S N=11,P=15 D SETN
 S X="Good" D S(X,1,1)
 D H2^BGP2PDL1
 S N=11,P=14 D SETN
 S X="Fair" D S(X,1,1)
 D H2^BGP2PDL1
 S N=11,P=13 D SETN
 S X="Poor" D S(X,1,1)
 D H2^BGP2PDL1
 S N=11,P=16 D SETN
 S X="Refused" D S(X,1,1)
 D H2^BGP2PDL1
 S N=11,P=17 D SETN
 S X="Group-No Assessment" D S(X,1,1)
 D H2^BGP2PDL1
 S N=11,P=18 D SETN
 S X="Blank (Not recorded)" D S(X,1,1)
 D H2^BGP2PDL1
 Q
7 ;
 D 7^BGP2DPEF
 Q
KITM ;
 K ^TMP($J)
 K ^XTMP("BGP2PE",BGPJ,BGPH)
 Q
SETNM ;
 K BGPPROVS
 I $G(BGPAREAA) D SETNMA Q
 S X=0 F  S X=$O(^BGPPEDCW(BGPRPT,N,X)) Q:X'=+X  D
 .S C=$P(^BGPPEDCW(BGPRPT,N,X,0),U),L=$P(^BGPPEDCW(BGPRPT,N,X,0),U,2),M=$P(^BGPPEDCW(BGPRPT,N,X,0),U,3)
 .I $D(BGPPROVS(C,L)) S $P(BGPPROVS(C,L),U,1)=M Q
 .S $P(BGPPROVS(C,L),U,1)=M
 S X=0 F  S X=$O(^BGPPEDPW(BGPRPT,N,X)) Q:X'=+X  D
 .S C=$P(^BGPPEDPW(BGPRPT,N,X,0),U),L=$P(^BGPPEDPW(BGPRPT,N,X,0),U,2),M=$P(^BGPPEDPW(BGPRPT,N,X,0),U,3)
 .I $D(BGPPROVS(C,L)) S $P(BGPPROVS(C,L),U,2)=M Q
 .S $P(BGPPROVS(C,L),U,2)=M
 S X=0 F  S X=$O(^BGPPEDBW(BGPRPT,N,X)) Q:X'=+X  D
 .S C=$P(^BGPPEDBW(BGPRPT,N,X,0),U),L=$P(^BGPPEDBW(BGPRPT,N,X,0),U,2),M=$P(^BGPPEDBW(BGPRPT,N,X,0),U,3)
 .I $D(BGPPROVS(C,L)) S $P(BGPPROVS(C,L),U,3)=M Q
 .S $P(BGPPROVS(C,L),U,3)=M
 ;set %ages
 S X="" F  S X=$O(BGPPROVS(X)) Q:X=""  S Y="" F  S Y=$O(BGPPROVS(X,Y)) Q:Y=""  D
 .F Z=1:1:3 I $P(BGPPROVS(X,Y),U,Z)="" S $P(BGPPROVS(X,Y),U,Z)=0
 .S A=$P(BGPPROVS(X,Y),U,1),$P(BGPPROVS(X,Y),U,4)=$S(BGPCYD:((A/BGPCYD)*100),1:"")
 .S B=$P(BGPPROVS(X,Y),U,2),$P(BGPPROVS(X,Y),U,5)=$S(BGPPRD:((B/BGPPRD)*100),1:"")
 .S C=$P(BGPPROVS(X,Y),U,3),$P(BGPPROVS(X,Y),U,6)=$S(BGPBLD:((C/BGPBLD)*100),1:"")
 .Q
 Q
SETNMA ;
 NEW X,V,C S Z=0,C="" F  S Z=$O(BGPSUL(Z)) Q:Z'=+Z  D SETNMA1
 ;set %ages
 S X="" F  S X=$O(BGPPROVS(X)) Q:X=""  S Y="" F  S Y=$O(BGPPROVS(X,Y)) Q:Y=""  D
 .F Z=1:1:3 I $P(BGPPROVS(X,Y),U,Z)="" S $P(BGPPROVS(X,Y),U,Z)=0
 .S A=$P(BGPPROVS(X,Y),U,1),$P(BGPPROVS(X,Y),U,4)=$S(BGPCYD:((A/BGPCYD)*100),1:"")
 .S B=$P(BGPPROVS(X,Y),U,2),$P(BGPPROVS(X,Y),U,5)=$S(BGPPRD:((B/BGPPRD)*100),1:"")
 .S C=$P(BGPPROVS(X,Y),U,3),$P(BGPPROVS(X,Y),U,6)=$S(BGPBLD:((C/BGPBLD)*100),1:"")
 .Q
 Q
SETNMA1 ;
 S X=0 F  S X=$O(^BGPPEDCW(Z,N,X)) Q:X'=+X  D
 .S C=$P(^BGPPEDCW(Z,N,X,0),U),L=$P(^BGPPEDCW(Z,N,X,0),U,2),M=$P(^BGPPEDCW(Z,N,X,0),U,3)
 .;I $D(BGPPROVS(C,L)) S $P(BGPPROVS(C,L),U,1)=M Q
 .S $P(BGPPROVS(C,L),U,1)=$P($G(BGPPROVS(C,L)),U,1)+M
 S X=0 F  S X=$O(^BGPPEDPW(Z,N,X)) Q:X'=+X  D
 .S C=$P(^BGPPEDPW(Z,N,X,0),U),L=$P(^BGPPEDPW(Z,N,X,0),U,2),M=$P(^BGPPEDPW(Z,N,X,0),U,3)
 .;I $D(BGPPROVS(C,L)) S $P(BGPPROVS(C,L),U,2)=M Q
 .S $P(BGPPROVS(C,L),U,2)=$P($G(BGPPROVS(C,L)),U,2)+M
 S X=0 F  S X=$O(^BGPPEDBW(Z,N,X)) Q:X'=+X  D
 .S C=$P(^BGPPEDBW(Z,N,X,0),U),L=$P(^BGPPEDBW(Z,N,X,0),U,2),M=$P(^BGPPEDBW(Z,N,X,0),U,3)
 .;I $D(BGPPROVS(C,L)) S $P(BGPPROVS(C,L),U,3)=M Q
 .S $P(BGPPROVS(C,L),U,3)=$P($G(BGPPROVS(C,L)),U,3)+M
 .Q
 Q
SETN ;EP - set numerator fields
 S BGPCYN=$$V(1,BGPRPT,N,P,2) ;SPDX
 S BGPPRN=$$V(2,BGPRPT,N,P,2) ;SPDX
 S BGPBLN=$$V(3,BGPRPT,N,P,2) ;SPDX
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
 Q
SL(V) ;
 I V="" S V=0
 Q $$STRIP^XLFSTR($J(V,7,0)," ")
V(T,R,N,P,ND) ;EP ;SPDX
 I $G(BGPAREAA) G VA
 NEW X
 I T=1 S X=$P($G(^BGPPEDCW(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=2 S X=$P($G(^BGPPEDPW(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=3 S X=$P($G(^BGPPEDBW(R,N)),U,P) Q $S(X]"":X,1:0)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPPEDCW(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPPEDPW(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPPEDBW(X,N)),U,P)
 .Q
 Q $S(C]"":C,1:0)
