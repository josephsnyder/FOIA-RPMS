BKMVSSR3 ;PRXM/HC/CLT - STATE SURV. REPORT PRINT ; 31 Mar 2005  3:51 PM
 ;;2.1;HIV MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 ;
EN ;EP - MAIN ROUTINE ENTRY POINT
 S BKMHDR=$P(^BKM(90456,1,0),U,1),BKMHDR1=$P(^BKM(90456,1,0),U,2)
 S BKMPAD=80-$L(BKMHDR)\2
 F BKM=1:1:BKMPAD-2 S BKMHDR="*"_BKMHDR
 F BKM=1:1:BKMPAD-2 S BKMHDR=BKMHDR_"*"
 S BKMHDR1="********** "_BKMHDR1_" **********"
 ;S %DT="",X="T" D ^%DT S BKMNDT=Y S BKMVNDT=$$FMTE^XLFDT(BKMNDT\1,"5Z")
 S BKMVNDT=$$FMTE^XLFDT($$DT^XLFDT(),"5Z")
 S PAGE=0,BKMX=0
 D HDR Q:BKMX
 D HDR1,HDR2,SUBHEAD
 D SECTIONI
 Q
SUBHEAD ;PAGE 1 SUBHEADER
 W !?1
 S DIWF="W",DIWR=77,DIWL=6
 S BKMLINE=0 F  S BKMLINE=$O(^BKM(90456,1,1,BKMLINE)) Q:'BKMLINE  S X=^BKM(90456,1,1,BKMLINE,0) D ^DIWP D:$Y>(IOSL-2) HDR^BKMVSSR3 Q:BKMX
 D ^DIWW
 Q
HDR ;EP - REPORT MAIN HEADER
 I PAGE'=0 S BKMX=$$PAUSE^BKMIXX3 Q:BKMX  W @IOF
 I PAGE=0 S:IOST["P-" $X=0 W:IOST["C-" @IOF
 S PAGE=PAGE+1
 W ?1,BKMVNDT,?70,"Page ",PAGE
 Q
HDR1 ;EP - PAGE 1 HEADER
 W !,?80-$L(BKMHDR)\2,BKMHDR,!?1
 Q
HDR2 ;PAGE 1 ADDITIONAL LINE
 W ?80-$L(BKMHDR1)\2,BKMHDR1,!?1
 Q
SECTIONI ;SECTION I PRINT
 S BKMLINE=$P(^BKM(90456,1,2,1,0),U,2),BKMLINE1=$P(^BKM(90456,1,2,1,0),U,3),BKMSEC=$P(^BKM(90456,1,2,1,0),U,1)
 Q:$P(^BKM(90456,1,2,1,0),U,4)'="Y"
 W !!?1,"SECTION I: ",BKMLINE,!?11,BKMLINE1,!?1
 F BKM=1:1:9 D  Q:BKMX
 .I $Y>(IOSL-4) D HDR^BKMVSSR3 Q:BKMX  D HDR1^BKMVSSR3
 .S BKMLINE=$P(^BKM(90456,1,2,1,1,BKM,0),U,1),BKMLINE1=$P($G(^BKM(90456,1,2,1,1,BKM,1,1,0)),U,1)
 .D LPRINT
 Q
LPRINT ;PRINT A LINE WITH DATA
 W !?1,BKMLINE W:BKMLINE1]"" " ",BKMLINE1 W ": "
 I BKM=1 W $S($G(DFN)]"":$$GET1^DIQ(2,DFN,.01,"E"),1:"")
 I BKM=2 W $S($D(BKMVPHN):BKMVPHN,1:"")
 I BKM=3 W $S($D(BKMVADDL):BKMVADDL,1:"")
 I BKM=4 W $S($D(BKMVHRN):BKMVHRN,1:"")
 I BKM=5 W $S($D(BKMPROV):BKMPROV,1:"")
 I BKM=6 W $S($D(BKMVPPH):BKMVPPH,1:"")
 I BKM=7 W $S($D(BKMVLOC):BKMVLOC,1:"")
 I BKM=8 ; No data to print for this field currently
 I BKM=9 ; No data to print for this field currently
 Q
