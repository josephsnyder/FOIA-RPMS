BUD1RPTP ; IHS/CMI/LAB - UDS REPORT PRINT 30 Dec 2011 10:44 AM 22 Oct 2011 12:16 PM ; 
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
PRINT ;EP
 ;IF TABLE 9D (DELIMITED) WRITE OUT FILE
 S BUDPG=0,BUDTPG=0
 S BUDQUIT=0
 S BUD80L="",$P(BUD80L,"_",79)="_"
 I $G(BUDTZ) D TZ G:BUDQUIT EOJ
 I $G(BUDT3A) D T3A G:BUDQUIT EOJ
 I $G(BUDT3B) D T3B G:BUDQUIT EOJ
 I $G(BUDT4) D T4 G:BUDQUIT EOJ
 I $G(BUDT5) D T5 G:BUDQUIT EOJ
 I $G(BUDT6) D T6 G:BUDQUIT EOJ
 I $G(BUDT6B) D T6B G:BUDQUIT EOJ
 I $G(BUDT7) D T7 G:BUDQUIT EOJ
 I $G(BUDT9) D T9 G:BUDQUIT EOJ
 D PATLISTS
 D ^%ZISC
 I $G(BUDT9D) D WDEL^BUD1RPTD
 D EOJ
 Q
 ;
EOJ ;
 K ^TMP($J)
 K ^XTMP("BUD1RPT1",BUDJ,BUDH)
 K ^XTMP("BUD1RPT9DEL",BUDJ,BUDH)
 Q
T9 ;
 D T9^BUD1RPP2
 Q
T4 ;
 D T4^BUD1RPP2
 Q
T3A ;
 I $G(BUDSTMP) D STEMP^BUD1RPTS
 S BUDPG=0
 D HEADER Q:BUDQUIT  D T3ASH
 ;print out each line
 S BUDZ=0 F  S BUDZ=$O(^BUDLTTA("AC",BUDZ)) Q:BUDZ>38!(BUDQUIT)  D
 .S BUDC=$O(^BUDLTTA("AC",BUDZ,0))
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T3ASH
 .S BUDY=^BUDLTTA(BUDC,0)
 .S BUDX=$P(BUDY,U,2)  ;column one End control
 .W !
 .I BUDX<10 W " "
 .W $P(BUDY,U,2),?5,$P(BUDY,U,3)
 .;I +BUDX=0 Q
 .W ?35,$$C($P(BUDTOT("M"),U,BUDX)),?50,$$C($P(BUDTOT("F"),U,BUDX)),?68,$$C($P(BUDTOT("ALL"),U,BUDX))
 .I BUDX=20 D
 ..I $Y>(IOSL-4) D HEADER Q:BUDQUIT  D T3ASH
 ..W !!?10,"SUBTOTAL 0-19",?35,$$C(BUD019("M")),?50,$$C(BUD019("F")),?68,$$C(BUD019("ALL")),!
 S BUDC=$O(^BUDLTTA("B",43,0))
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T3ASH
 W !,$P(^BUDLTTA(BUDC,0),U,2),?5,$P(^BUDLTTA(BUDC,0),U,3)
 S BUDC=$O(^BUDLTTA("AC",39,0))
 I $Y>(IOSL-2) D HEADER Q:BUDQUIT  D T3ASH
 S BUDY=^BUDLTTA(BUDC,0)
 S BUDX=$P(BUDY,U,2)  ;column one End control
 W !
 W $P(BUDY,U,2),?5,$P(BUDY,U,3)
 W ?35,$$C($P(BUDTOT("M"),U,BUDX)),?50,$$C($P(BUDTOT("F"),U,BUDX)),?68,$$C($P(BUDTOT("ALL"),U,BUDX))
 W !
 Q
T3ASH ;
 W !,$$CTR($G(^BUDLTTA(1,11)),80),!
 F Y=2:1:4 S X=$O(^BUDLTTA("B",Y,0)) W !,$P(^BUDLTTA(X,0),U,2),?5,$P(^BUDLTTA(X,0),U,3),?33,$P(^BUDLTTA(X,0),U,4),?50,$P(^BUDLTTA(X,0),U,5),?68,$P(^BUDLTTA(X,0),U,6)
 W !,$TR($J("",80)," ","-")
 Q
T3BSH ;
 W !!,$$CTR("TABLE 3B -",80)
 W !,$$CTR("PATIENTS BY HISPANIC OR LATINO IDENTITY/RACE/LANGUAGE",80),!,BUD80L
 ;W !!,BUD80L
 Q:$G(BUDLANG)
 W !?41,"NOT",?53,"UNREPORTED/"
 W !?25,"HISPANIC/",?39,"HISPANIC/",?53,"REFUSED TO",?70,"TOTAL"
 W !?3,"PATIENTS BY RACE",?26,"LATINO",?40,"LATINO",?54,"REPORT",?70,"(d)"
 W !?28,"(a)",?41,"(b)",?56,"(c)"
 W !,BUD80L
 W !,"NUMBER OF PATIENTS",!,BUD80L
 Q
TZSH ;
 W !!,$$CTR("PATIENTS BY ZIP CODE",80)
 W !,$TR($J("",80)," ","-")
 W !!?5,"ZIP CODE",?40,"PATIENTS"
 W !,$TR($J("",80)," ","-")
 Q
PATLISTS ;
 D ^BUD1RPTL
 Q
T3B ;
 S BUDPG=0
 D HEADER Q:BUDQUIT  D T3BSH
 ;print out each line
 ;
 I $Y>(IOSL-6) D HEADER Q:BUDQUIT  D T3BSH
 F BUDX="1","2A","2B","2",3,4,5,6,7,8 Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T3BSH
 .W !?2,$P(BUDRACET(BUDX),U),?6,$P(BUDRACET(BUDX),U,2)
 .I $P(BUDRACET(BUDX),U,7)]"" W !?6,$P(BUDRACET(BUDX),U,7)
 .I $P(BUDRACET(BUDX),U,8)]"" W !?6,$P(BUDRACET(BUDX),U,8)
 .I $P(BUDRACET(BUDX),U,3)]"" W ?25,$$C($P(BUDRACET(BUDX),U,3))
 .I $P(BUDRACET(BUDX),U,4)]"" W ?39,$$C($P(BUDRACET(BUDX),U,4))
 .I $P(BUDRACET(BUDX),U,5)]"" W ?53,$$C($P(BUDRACET(BUDX),U,5))
 .I $P(BUDRACET(BUDX),U,6)]"" W ?67,$$C($P(BUDRACET(BUDX),U,6))
 .W !,BUD80L
 S BUDLANG=1
 I $Y>(IOSL-6) D HEADER Q:BUDQUIT  D T3BSH
 W !!,BUD80L,!?66,"NUMBER"
 W !,"PATIENTS BY LANGUAGE",?67,"(a)",!,BUD80L
 W !,"NUMBER OF PATIENTS",!,BUD80L
 W !?2,"9",?8,"PATIENTS BEST SERVED IN A LANGUAGE OTHER THAN ",!?2,"ENGLISH",!,BUD80L
 W !
 K BUDLANG
 Q
TZ ;
 D HEADER Q:BUDQUIT  D TZSH
 ;print out each line
 S BUDZTOT=0
 ;S ^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP","OTHER ZIP CODES")=0
 ;GET TOTAL
 S BUDZ="" F  S BUDZ=$O(^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP",BUDZ)) Q:BUDZ=""  D
 .S BUDY=^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP",BUDZ)
 .S BUDZTOT=BUDZTOT+BUDY
 ;CALCULATE "OTHER"
 ;RESET BY TOTAL #
 S BUDZ="" F  S BUDZ=$O(^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP",BUDZ)) Q:BUDZ=""  D
 .;Q:BUDZ["OTHER"
 .Q:BUDZ["Unknown"
 .S BUDY=^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP",BUDZ)
 .S BUDYY=9999999-BUDY
 .;S X=BUDY/BUDZTOT I X<.001 K ^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP",BUDZ) S ^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP","OTHER ZIP CODES")=^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP","OTHER ZIP CODES")+BUDY D
 .S ^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIPORDER",(9999999-BUDY),BUDZ)=BUDY
 .D
 ..;now reset the list so the others collate at the end
 ..S BUDCOM="" F  S BUDCOM=$O(^XTMP("BUD1RPT1",BUDJ,BUDH,"Z",BUDZ,BUDCOM)) Q:BUDCOM=""  D
 ...S BUDSEX="" F  S BUDSEX=$O(^XTMP("BUD1RPT1",BUDJ,BUDH,"Z",BUDZ,BUDCOM,BUDSEX)) Q:BUDSEX=""  D
 ....S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUD1RPT1",BUDJ,BUDH,"Z",BUDZ,BUDCOM,BUDSEX,BUDNAME)) Q:BUDNAME=""  D
 .....S DFN=0 F  S DFN=$O(^XTMP("BUD1RPT1",BUDJ,BUDH,"Z",BUDZ,BUDCOM,BUDSEX,BUDNAME,DFN)) Q:DFN'=+DFN  D
 ......S X=0 F  S X=$O(^XTMP("BUD1RPT1",BUDJ,BUDH,"Z",BUDZ,BUDCOM,BUDSEX,BUDNAME,DFN,X)) Q:X'=+X  D
 .......S ^XTMP("BUD1RPT1",BUDJ,BUDH,"ZNEW",BUDYY,BUDZ,BUDCOM,BUDSEX,BUDNAME,DFN,X)=""
 .......K ^XTMP("BUD1RPT1",BUDJ,BUDH,"Z",BUDZ,BUDCOM,BUDSEX,BUDNAME,DFN,X)
 S BUDYY=0 F  S BUDYY=$O(^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIPORDER",BUDYY)) Q:BUDYY=""  D
 .S BUDZ="" F  S BUDZ=$O(^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIPORDER",BUDYY,BUDZ)) Q:BUDZ=""!(BUDQUIT)  D
 ..I $Y>(IOSL-4) D HEADER Q:BUDQUIT  D TZSH
 ..S BUDY=^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP",BUDZ)
 ..W !?8,BUDZ,?40,$$C(BUDY),!,BUD80L
 Q:BUDQUIT
 W !?8,"Unknown Residence",?40,$$C($G(^XTMP("BUD1RPT1",BUDJ,BUDH,"ZIP","Unknown Residence")))
 W !!?8,"TOTAL",?40,$$C(BUDZTOT),!
 Q
T5 ;print table 5
 S BUDPG=0 D HEADER Q:BUDQUIT  D T5SH
 ;lines 1-8
 F BUDL=1:1:7 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .Q:'BUDY
 .W !
 .I +BUDL<10 W " "
 .W BUDL,".",?6,$P(^BUDLTFIV(BUDY,0),U,2)
 .I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .I $P($G(BUDTAB5(BUDL)),U,1)]"" W ?60,$$C($P(BUDTAB5(BUDL),U,1),$S(BUDL=6:2,1:0)),?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 W !," 8.",?10,"Total Physicians",!?8,"(Lines 1 - 7)",?60,$$C($P(BUDTAB5(8),U,1)),?71,$$C($P(BUDTAB5(8),U,2),2),!,BUD80L
 ;print out lines 9-15
 F BUDL="9A","9B",10 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !
 .I +BUDL<10 W " "
 .W $$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2)
 .I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),0)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 W !,"10a.",?10,"Total NP, PA, CNMs",!?10,"(Lines 9a - 10)",?60,$$C($P(BUDTAB5("10A"),U,1)),?71,$$C($P(BUDTAB5("10A"),U,2),2),!,BUD80L
 F BUDL=11:1:14 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),$S(BUDL=11:0,1:2))
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 W !,"15.",?10,"Total Medical Care",!?10,"(Lines 8 + 10a through 14)",?60,$$C($P(BUDTAB5(15),U,1)),?71,$$C($P(BUDTAB5(15),U,2)),!,BUD80L
 F BUDL=16:1:17 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),0)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
T518 F BUDL=18 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),2)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 W !,"19.",?10,"Total Dental Services",!?10,"(Lines 16 - 18)",?60,$$C($P(BUDTAB5(19),U,1)),?71,$$C($P(BUDTAB5(19),U,2)),!,BUD80L
 ;D HEADER Q:BUDQUIT  D T5SH  ;force page break before line 20
 F BUDL="20A","20A1","20A2","20B","20C" S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2)
 .I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .I $P(^BUDLTFIV(BUDY,0),U,4)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,4)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),0)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 W !,"20.",?10,"Mental Health Services",!?10,"(Lines 20a - c)",?60,$$C($P(BUDTAB5(20),U,1)),?71,$$C($P(BUDTAB5(20),U,2)),!,BUD80L
 F BUDL=21 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),0)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),0)
 .W !,BUD80L
 F BUDL=22 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?8,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?8,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),0)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),0)
 .W !,BUD80L
 F BUDL="22A","22B","22C" S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2)
 .I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .I $P(^BUDLTFIV(BUDY,0),U,4)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,4)
 .I BUDL'="22C" W ?60,$$C($P(BUDTAB5(BUDL),U,1),1)
 .I BUDL="22C" W ?60,$$C($P(BUDTAB5(BUDL),U,1),2)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 W !,"22d.",?10,"Total Vision Services",!?10,"(Lines 22a-c)",?60,$$C($P(BUDTAB5("22D"),U,1)),?71,$$C($P(BUDTAB5("22D"),U,2)),!,BUD80L
 F BUDL=23 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),2)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 F BUDL=24:1:25 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),0)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 F BUDL=26,27,"27a","27b",28 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),2),?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .;W ?60,$$C($P(BUDTAB5(BUDL),U,1),2)
 .;W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 W !,"29.",?10,"Total Enabling Services",!?10,"(Lines 24 - 28)",?60,$$C($P(BUDTAB5(29),U,1)),?71,$$C($P(BUDTAB5(29),U,2)),!,BUD80L
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 W !,"29a.",?10,"Other Programs/ Services",!?10,"(specify__)",?60,$$C($P(BUDTAB5(29),U,1),2),?71,$$C($P(BUDTAB5(29),U,2),2),!,BUD80L
 F BUDL="30A","30B","30C" S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),2)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 W !,"30.",?10,"Total Administrative Staff",!?10,"(Lines 30a-30c)"
 W ?60,$$C($P(BUDTAB5(33),U,1),2),?71,$$C($P(BUDTAB5(33),U,2),2),!,BUD80L
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
  F BUDL=31,32 S BUDY=$O(^BUDLTFIV("B",BUDL,0)) Q:BUDQUIT  D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !,$$LOW^XLFSTR(BUDL),".",?6,$P(^BUDLTFIV(BUDY,0),U,2) I $P(^BUDLTFIV(BUDY,0),U,3)]"" W !?6,$P(^BUDLTFIV(BUDY,0),U,3)
 .W ?60,$$C($P(BUDTAB5(BUDL),U,1),2)
 .W ?71,$$C($P(BUDTAB5(BUDL),U,2),2)
 .W !,BUD80L
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 W !,"33.",?10,"TOTAL ADMINISTRATION AND FACILITY",!?10,"(TOTAL LINES 30+31+32)"
 W ?60,$$C($P(BUDTAB5(33),U,1),2),?71,$$C($P(BUDTAB5(33),U,2),2),!,BUD80L
 I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 W !,"34.",?10,"Total (Lines ",!?10,"15+19+20+21+22+22d+23+29+29a+33)"
 S Y=0 F X=15,19,20,21,22,"22D",29 S Y=Y+$P(BUDTAB5(X),U)
 W ?60,$$C(Y),?71,$$C(Y,2),!,BUD80L
 I $P(BUDTAB5(35),U) D
 .I $Y>(IOSL-3) D HEADER Q:BUDQUIT  D T5SH
 .W !!,$P(BUDTAB5(35),U)," visits did not fit into any of the above categories",!
 W !
 Q
T5SH ;
 W !,$$CTR("TABLE 5 - STAFFING AND UTILIZATION",80)
 ;W !,$$CTR("STAFFING AND UTILIZATION",80),!
 W !,$TR($J("",80)," ","-")
 W !,?54,"FTEs",?60,"CLINIC",?71,"PATIENTS"
 W !?60,"VISITS"
 W !,"PERSONNEL BY MAJOR SERVICE CATEGORY",?54,"(a)",?64,"(b)",?73,"(c)"
 W !,$TR($J("",80)," ","-")
 Q
T6 ;
 D T6^BUD1RPP1
 Q
T6B ;
 D PRINT^BUD1RP6B
 Q
T7 ;
 D PRINT^BUD1RP7
 Q
HEADER ;EP
 G:'BUDPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
HEADER1 ;
 I $G(BUDTPG)=0 G HEADER2
 ;I BUDPG=0,'$G(BUDFNP) G HEADER2
 I $G(BUDTPG)!($G(BUDFNP)) W:$D(IOF) @IOF
 ;W:$D(IOF) @IOF
HEADER2 S BUDPG=BUDPG+1,BUDTPG=$G(BUDTPG)+1
 S X=$$CTR($P(^DIC(4,BUDSITE,0),U),60),$E(X,3)=$P(^VA(200,DUZ,0),U,2),$E(X,10)="UDS 2011",$E(X,70)="Page ",$E(X,75)=BUDPG W !,X
 ;W !?3,$P(^VA(200,DUZ,0),U,2),?10,"UDS 2011",$$CTR($P(^DIC(4,BUDSITE,0),U),80),?70,"Page ",BUDPG
 ;W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 W !,"UDS No.  ",$P(^BUDLSITE(BUDSITE,0),U,2),?50,"Date Run: ",$$FMTE^XLFDT(DT)
 W !,"Reporting Period:  ",$$FMTE^XLFDT(BUDBD)," through ",$$FMTE^XLFDT(BUDED)
 W !,"Population:  ",$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"")
 W !
 Q
C(X,Y) ;
 I $G(Y)=1,+X=0 Q ""
 I $G(Y)=2 Q "********"
 S X2=0,X3=8
 D COMMA^%DTC
 Q X
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
