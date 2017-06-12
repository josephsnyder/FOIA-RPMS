BGP5DH1 ; IHS/CMI/LAB - cover page for gpra 28 Apr 2010 11:30 AM 02 Jul 2010 8:28 AM ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;
ONMHDR ;EP
 D W^BGP5DP("",0,1,BGPPTYPE)
 S BGPTEXT="ONH1" F BGPJ1=1:1 S BGPX=$T(@BGPTEXT+BGPJ1) Q:$P(BGPX,";;",2)="QUIT"  D
 .S BGPT=$P(BGPX,";;",2)
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D HDR^BGP5DH I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP(BGPT,0,1,BGPPTYPE)
 I BGPPTYPE="P" Q:BGPQHDR
 I BGPRTC="U" D  I BGPPTYPE="P" Q:BGPQHDR
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D HDR^BGP5DH I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP("3. User defines population: a) Indian/Alaska Natives Only - based on",0,1,BGPPTYPE)
 .D W^BGP5DP("Classification of 01; b) Non AI/AN (not 01); or c) Both.",0,1,BGPPTYPE)
 I BGPRTC="H" D  I BGPPTYPE="P" Q:BGPQHDR
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D  I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP("3. Indian/Alaska Natives Only - based on Classification of 01.",0,1,BGPPTYPE)
 I BGPPTYPE="P" Q:BGPQHDR
 S BGPTEXT="ONH2" F BGPJ1=1:1 S BGPX=$T(@BGPTEXT+BGPJ1) Q:$P(BGPX,";;",2)="QUIT"  D
 .S BGPT=$P(BGPX,";;",2)
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D HDR^BGP5DH I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP(BGPT,0,1,BGPPTYPE)
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
PEHDR ;EP
 D W^BGP5DP("",0,1,BGPPTYPE)
 ;Q:$G(BGPSEAT)
 S BGPNODEP=$S($G(BGPSEAT):75,1:34)
 S BGPX=$O(^BGPCTRL("B",2015,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY!(BGPQHDR)  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D HDR^BGP5DH I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP(^BGPCTRL(BGPX,BGPNODEP,BGPY,0),0,1,BGPPTYPE)
 .Q
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
AHDR ;EP
 ;
 I BGPPTYPE'="P" G AHDR10
 I BGPPTYPE="P",'BGPHPG G AHDR1
 I $E(IOST)="C",IO=IO(0) D W^BGP5DP("",0,1,BGPPTYPE) S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BGPQHDR=1 Q
AHDR1 ;
 S BGPHPG=BGPHPG+1 I BGPHPG'=1 W:$D(IOF) @IOF
 I $G(BGPGUI),BGPPTYPE="P",BGPHPG'=1 D W^BGP5DP("ZZZZZZZ",0,0,BGPPTYPE),W^BGP5DP("",0,1,BGPPTYPE)  ;GUI
AHDR10 D W^BGP5DP("Cover Page "_$S(BGPPTYPE="P":BGPHPG,1:""),1,1,BGPPTYPE)
 I $G(BGPDASH) D W^BGP5DP("*** IHS 2015 National GPRA Dashboard ***",1,2,BGPPTYPE) G N
 I BGPRTYPE=1,$G(BGPNGR09) D W^BGP5DP("*** IHS 2015 National GPRA/GPRAMA Report, Run Using 2015 Logic ***",1,2,BGPPTYPE) G N
 I BGPRTYPE=1,'$G(BGPYGPU),'$G(BGPSUMON) D W^BGP5DP("*** IHS 2015 National GPRA/GPRAMA Report ***",1,2,BGPPTYPE)
 I BGPRTYPE=1,'$G(BGPYGPU),$G(BGPSUMON) D W^BGP5DP("*** IHS 2015 National GPRA/GPRAMA Report Clinical Performance Summaries ***",1,2,BGPPTYPE)
 I BGPRTYPE=6 D W^BGP5DP("*** IHS 2015 Patient Education Report with Community Specified ***",1,2,BGPPTYPE)
 I BGPRTYPE=1,$G(BGPYGPU) D W^BGP5DP("*** IHS 2015 GPRA/GPRAMA Performance Report ***",1,2,BGPPTYPE)
 I BGPRTYPE=7 D W^BGP5DP("*** IHS 2015 Other National Measures Report ***",1,2,BGPPTYPE)
N D W^BGP5DP("AREA AGGREGATE",1,1,BGPPTYPE)
 D W^BGP5DP($$RPTVER^BGP5BAN,1,1,BGPPTYPE)
 S X="Date Report Run:  "_$$FMTE^XLFDT(DT) D W^BGP5DP(X,1,1,BGPPTYPE)
 S X="Site where Run:  "_$$VAL^XBDIQ1(9999999.06,DUZ(2),.04) D W^BGP5DP(X,1,1,BGPPTYPE)
 D W^BGP5DP("Report Generated by: "_$$USR^BGP5DH,1,1,BGPPTYPE)
 S X="Report Period:  "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D W^BGP5DP(X,1,1,BGPPTYPE)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) D W^BGP5DP(X,1,1,BGPPTYPE)
 I '$G(BGPDASH) S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) D W^BGP5DP(X,1,1,BGPPTYPE)
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
COMHDR ;EP
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q:$G(BGPSEAT)
 S BGPNODEP=17
 S BGPX=$O(^BGPCTRL("B",2015,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY!(BGPQHDR)  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D HDR^BGP5DH I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP(^BGPCTRL(BGPX,BGPNODEP,BGPY,0),0,1,BGPPTYPE)
 .Q
 I $G(BGPYGPU) D W^BGP5DP("See last pages of this report for Performance Summaries.",0,2,BGPPTYPE)
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
GPRAHDRS ;EP
 D W^BGP5DP("",0,1,BGPPTYPE)
 S BGPNODEP=76
 S BGPX=$O(^BGPCTRL("B",2015,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY!(BGPQHDR)  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D HDR^BGP5DH I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP(^BGPCTRL(BGPX,BGPNODEP,BGPY,0),0,1,BGPPTYPE)
 .Q
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
PPHDR ;EP
 D W^BGP5DP("",0,1,BGPPTYPE)
 S BGPX=$O(^BGPCTRL("B",2015,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,18,BGPY)) Q:BGPY'=+BGPY!(BGPQHDR)  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D HDR^BGP5DH I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP(^BGPCTRL(BGPX,18,BGPY,0),0,1,BGPPTYPE)
 .Q
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
GPUPPHDR ;EP
 D W^BGP5DP("",0,1,BGPPTYPE)
 S BGPX=$O(^BGPCTRL("B",2015,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,83,BGPY)) Q:BGPY'=+BGPY!(BGPQHDR)  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D HDR^BGP5DH I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP(^BGPCTRL(BGPX,83,BGPY,0),0,1,BGPPTYPE)
 .Q
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
ALLHDR ;EP
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q:$G(BGPSEAT)
 S BGPNODEP=19
 S BGPX=$O(^BGPCTRL("B",2015,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY!(BGPQHDR)  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-2) D HDR^BGP5DH I BGPPTYPE="P" Q:BGPQHDR
 .D W^BGP5DP(^BGPCTRL(BGPX,BGPNODEP,BGPY,0),0,1,BGPPTYPE)
 .Q
 D W^BGP5DP("",0,1,BGPPTYPE)
 Q
AREACP ;EP
 S BGPQHDR=0,BGPHPG=0
 D AHDR
 I BGPPTYPE="P" Q:BGPQHDR
 D MD^BGP5DH
 D PD^BGP5DH
 D ENDTIME^BGP5DH
 I BGPRTYPE=6 D PEDCP^BGP5DH Q
 I $G(BGPDASH) D DASHHDRA^BGP5DH2 G N1
 I BGPRTYPE=1,'$G(BGPYGPU),'$G(BGPSUMON) D GPRAHDRA^BGP5DH2
 I BGPRTYPE=1,$G(BGPYGPU) D GPRAHDRA^BGP5DH2
 I BGPRTYPE=1,'$G(BGPYGPU),$G(BGPSUMON) D GPRAHDRS
 I BGPRTYPE=7 D ONMHDRA^BGP5DH2
N1 I $G(BGPEXCEL),'$G(BGPYGPU),BGPRTYPE=1 D
 .D W^BGP5DP("GPRA Developmental filenames:  ",0,2,BGPPTYPE),W^BGP5DP(BGPFDEV1,0,1,BGPPTYPE,1,15),W^BGP5DP(BGPFDEV2,0,1,BGPPTYPE,1,15),W^BGP5DP(BGPFDEV3,0,1,BGPPTYPE,1,15),W^BGP5DP(BGPFDEV4,0,1,BGPPTYPE,1,15)
 .D W^BGP5DP("National GPRA filenames:  ",0,2,BGPPTYPE),W^BGP5DP(BGPFGNT1,0,1,BGPPTYPE,1,15),W^BGP5DP(BGPFGNT2,0,1,BGPPTYPE,1,15),W^BGP5DP(BGPFGNT3,0,1,BGPPTYPE,1,15),W^BGP5DP(BGPFGNT4,0,1,BGPPTYPE,1,15)
 I $G(BGPEXCEL),BGPRTYPE=7 D W^BGP5DP("Other National Measures filenames: ",0,1,BGPPTYPE),W^BGP5DP(BGPFONN1,0,1,BGPPTYPE,1,15),W^BGP5DP(BGPFONN2,0,1,BGPPTYPE,1,15),W^BGP5DP(BGPFONN3,0,1,BGPPTYPE,1,15),W^BGP5DP(BGPFONN4,0,1,BGPPTYPE,1,15) D
 .;D W^BGP5DP(BGPFONN5,0,1,BGPPTYPE,1,15)
 I BGPROT'="P",'$D(BGPGUI),BGPDELT="F" D W^BGP5DP("A delimited output file called "_BGPDELF,0,2,BGPPTYPE) D
 .D W^BGP5DP("has been placed in the "_$$GETDEDIR^BGP5UTL2()_" directory for your use in Excel or some",0,1,BGPPTYPE)
 .D W^BGP5DP("other software package.",0,1,BGPPTYPE)
 .D W^BGP5DP("See your site manager to access this file.",0,1,BGPPTYPE)
 .D W^BGP5DP("",0,1,BGPPTYPE)
 ;I BGPROT'="P",'$D(BGPGUI) W !!,"A delimited output file called ",BGPDELF,!,"has been placed in the "_$$GETDEDIR^BGP5UTL2()_" directory for your use in Excel or some",!,"other software package.  See your site manager to access this file.",!
 ;W !!?1,"Report includes data from the following facilities:"
 D W^BGP5DP("Report includes data from the following facilities: ",0,2,BGPPTYPE)
 NEW BGPX
 S BGPX="",BGPC=0 F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .S X=$P(^BGPGPDCK(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .S BGPC=BGPC+1,X=BGPC_".  "_$S($P(^BGPGPDCK(BGPX,0),U,17):"*",$P(^BGPGPDCK(BGPX,0),U,19):"**",1:"")_X D W^BGP5DP(X,0,1,BGPPTYPE,1,3)
 .Q
 S X=" " D W^BGP5DP(X,0,1,BGPPTYPE)
 S X="The following communities are included in this report:" D W^BGP5DP(X,0,1,BGPPTYPE,1,1)
 S BGPX="",BGPC=0 F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .S X=$P(^BGPGPDCK(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .S BGPC=BGPC+1,X=BGPC_".  "_$S($P(^BGPGPDCK(BGPX,0),U,17):"*",1:"")_X D W^BGP5DP(X,0,1,BGPPTYPE,1,3)
 .;S X="Communities: " D W^BGP5DP(X,0,1,BGPPTYPE,1,5)
 .S X="Community Taxonomy Name: "_$P(^BGPGPDCK(BGPX,0),U,18) D W^BGP5DP(X,0,1,BGPPTYPE,1,5)
 .S BGPXX=0,BGPXN=0,BGPXY="" F  S BGPXX=$O(^BGPGPDCK(BGPX,9999,BGPXX)) Q:BGPXX'=+BGPXX  S BGPXN=BGPXN+1,BGPXY=BGPXY_$S(BGPXN=1:"",1:";")_$P(^BGPGPDCK(BGPX,9999,BGPXX,0),U)
 .S BGPX1=0,C=0 F BGPX1=1:3:BGPXN D
 ..D W^BGP5DP($E($P(BGPXY,";",BGPX1),1,20),0,1,BGPPTYPE,1,10)
 ..D W^BGP5DP($E($P(BGPXY,";",(BGPX1+1)),1,20),0,0,BGPPTYPE,2,30)
 ..D W^BGP5DP($E($P(BGPXY,";",(BGPX1+2)),1,20),0,0,BGPPTYPE,3,60)
 ..Q
 .Q
 D W^BGP5DP(" ",0,1,BGPPTYPE)
 S X=" " D W^BGP5DP(X,0,1,BGPPTYPE)
 I BGPPTYPE="D" D W^BGP5DP("ENDCOVERPAGE",0,1,BGPPTYPE)
 K BGPX,BGPQUIT
 Q
ONH1 ;;
 ;;Denominator Definitions used in this Report:
 ;;
 ;;ACTIVE CLINICAL POPULATION:
 ;;1. Must reside in a community specified in the community taxonomy used for
 ;;this report.
 ;;2. Must be alive on the last day of the Report period.
 ;;QUIT
 ;
ONH2 ;;
 ;;4. Must have 2 visits to medical clinics in the 3 years prior to the end
 ;;of the Report period. At least one visit must include: 01 General,
 ;;06 Diabetic, 10 GYN, 12 Immunization, 13 Internal Med, 20 Pediatrics, 24
 ;;Well Child, 28 Family Practice, 57 EPSDT, 70 Women's Health, 80 Urgent, 89
 ;;Evening.  See User Manual for complete description of medical clinics.
 ;;
 ;;USER POPULATION:
 ;;1. Definitions 1-3 above.
 ;;2. Must have been seen at least once in the 3 years prior to the end of
 ;;the Report period, regardless of the clinic type.
 ;;
 ;;See last pages of this report for Performance Summary.
 ;;QUIT
