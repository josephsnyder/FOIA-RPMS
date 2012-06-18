BGP1PDLH ; IHS/CMI/LAB - cover page;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
 S X="" D SET(X,1,1)
 S X="Cover Page" D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPAREAA) G AREACP
 I BGPRTYPE=4,$G(BGP1RPTH)="C" S X="*** IHS 2011 Selected Measures with Community Specified Report ***" D SET(X,1,1)
 I BGPRTYPE=4,$G(BGP1RPTH)="A" S X="*** IHS 2011 Selected Measures with All Communities Report ***" D SET(X,1,1)
 I BGPRTYPE=4,$G(BGP1RPTH)="P" S X="*** IHS 2011 Selected Measures with Patient Panel Population Report ***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGPNGR09) S X="*** IHS 2012 National GPRA & PART Report, Run Using 2011 Logic ***" D SET(X,1,1) G N
 I BGPRTYPE=1,$G(BGPDESGP) S X="*** IHS 2011 National GPRA & PART Report by Designated Provider ***" D SET(X,1,1) G N
 I BGPRTYPE=1,'$G(BGP1GPU),'$G(BGPSUMON) S X="*** IHS 2011 National GPRA & PART Report ***" D SET(X,1,1)
 I BGPRTYPE=1,'$G(BGP1GPU),$G(BGPSUMON) S X="*** IHS 2011 National GPRA & PART Report Clinical Performance Summaries ***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGP1GPU) S X="*** IHS 2011 GPRA Performance & PART Report ***" D SET(X,1,1)
 I BGPRTYPE=7 S X="*** IHS 2011 Other National Measures Report ***" D SET(X,1,1)
 I BGPRTYPE=6,'$G(BGPEDPP) S X="*** IHS 2011 Patient Education with Community Specified Report ***" D SET(X,1,1)
 I BGPRTYPE=6,$G(BGPEDPP) S X="*** IHS 2011 Patient Education with Patient Panel Population Report ***" D SET(X,1,1)
N ;
 I $G(BGPCPPL) S X="** Including Comprehensive Patient List **" D SET(X,1,1)
 S X=$$RPTVER^BGP1BAN D SET(X,1,1)
 S X="Date Report Run: "_$$FMTE^XLFDT(DT) D SET(X,1,1)
 S X="Site where Run: "_$P(^DIC(4,DUZ(2),0),U) D SET(X,1,1)
 S X="Report Generated by: "_$$USR D SET(X,1,1)
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D SET(X,1,1)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) D SET(X,1,1)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I BGPRTYPE=6 S X="Measures: Patient Education Performance Measures" D SET(X,1,1)
 I BGPRTYPE=4 S X="Measures: "_$P($T(@BGPINDB),";;",2) D SET(X,1,1)
 I BGPRTYPE=1 S X="Measures: GPRA Developmental, GPRA and PART Denominators and Numerators and " D SET(X,1,1) S X="Selected Other Clinical Denominators and Numerators" D SET(X,1,1)
 I BGPRTYPE=7 S X="Measures: Key Clinical Denominators and Numerators for Non-GPRA National Reporting" D SET(X,1,1)
 I '$G(BGPSEAT) S X="Population: "_$S(BGPBEN=1:"AI/AN Only (Classification 01)",BGPBEN=2:"non AI/AN Only (Classification NOT 01)",BGPBEN=3:"All (Both AI/AN and non AI/AN)",1:"") D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPSEAT) S X="Patient Panel Population:  "_$P(^DIBT(BGPSEAT,0),U) D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPDESGP) S X="Designated Provider: "_$P(^VA(200,BGPDESGP,0),U) D SET(X,1,1),SET(" ",1,1)
 D ENDTIME
 I BGPRTYPE=4,BGP1RPTH="C" D COMHDR
 I BGPRTYPE=4,BGP1RPTH="P" D PPHDR
 I BGPRTYPE=4,BGP1RPTH="A" D ALLHDR
 I BGPRTYPE=1,'$G(BGP1GPU),'$G(BGPSUMON) D GPRAHDR
 I BGPRTYPE=1,'$G(BGP1GPU),$G(BGPSUMON) D GPRAHDRS
 I BGPRTYPE=1,$G(BGP1GPU) D COMHDR
 I BGPRTYPE=7 D ONMHDR
 I BGPRTYPE=6 D PEHDR
 I $G(BGPEXPT),BGPRTYPE=1 D
 .S X="A file will be created called BG11"_$P(^AUTTLOC(DUZ(2),0),U,10)_"."_BGPRPT_"." D SET(X,1,1)
 .S X="It will reside in the public/export directory." D SET(X,1,1)
 .S X="This file should be sent to your Area Office." D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPEXPT),BGPRTYPE=7 D
 .S X="A file will be created called BG11"_$P(^AUTTLOC(DUZ(2),0),U,10)_".ONM"_BGPRPT_"." D SET(X,1,1)
 .S X="It will reside in the public/export directory." D SET(X,1,1)
 .S X="This file should be sent to your Area Office." D SET(X,1,1)
 I $G(BGPYWCHW)=2 S X="HT/WT Filename:  "_BGPFN D SET(X,1,1) S X=" " D SET(X,1,1)
 I BGPRTYPE=6,$G(BGPPEEXP) D
 .S X="A file will be created called BG11"_$P(^AUTTLOC(DUZ(2),0),U,10)_".PED"_BGPRPT_"." D SET(X,1,1)
 .S X="This file will reside in the public/export directory." D SET(X,1,1)
 .S X="This file should be sent to your Area Office." D SET(X,1,1)
 .S X=" " D SET(X,1,1)
 I BGPROT'="P" D
 .Q:$D(BGPGUI)
 .S X="A delimited output file called "_BGPDELF D SET(X,1,1) S X="has been placed in the "_$$GETDEDIR^BGP1UTL2()_" directory for your use in Excel or some" D SET(X,1,1) S X="other software package." D SET(X,1,1)
 .S X="See your site manager to access this file." D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I BGP1RPTH="P" K BGPX,BGPQUIT Q
 I $G(BGPALLPT) S X="All Communities Included." D SET(X,1,1)
 I '$G(BGPALLPT),'$G(BGPSEAT) S X="Community Taxonomy Name: "_$P(^ATXAX(BGPTAXI,0),U) D SET(X,1,1)
 I '$G(BGPALLPT),'$G(BGPSEAT) S X="The following communities are included in this report:" D SET(X,1,1) D
 .S BGPZZ="",N=0,Y="" F  S BGPZZ=$O(BGPTAX(BGPZZ)) Q:BGPZZ=""  S N=N+1,Y=Y_$S(N=1:"",1:";")_BGPZZ
 .S BGPZZ=0,C=0 F BGPZZ=1:3:N D
 ..S X=$E($P(Y,";",BGPZZ),1,20),$P(X,U,2)=$E($P(Y,";",(BGPZZ+1)),1,20),$P(X,U,3)=$E($P(Y,";",(BGPZZ+2)),1,20) D SET(X,1,1)
 ..S X=$E($G(BGPTAX(BGPZZ)),1,20),$P(X,U,2)=$E($G(BGPTAX(BGPZZ+1)),1,20),$P(X,U,4)=$E($G(BGPTAX(BGPZZ+2)),1,20) D SET(X,1,1)
 ..Q
 S X=" " D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPMFITI) S X="MFI Location Taxonomy Name: "_$P(^ATXAX(BGPMFITI,0),U) D SET(X,1,1)
 I $G(BGPMFITI) S X="The following locations are used for patient visits in this report:" D SET(X,1,1) D
 .S BGPZZ="",N=0,Y="" F  S BGPZZ=$O(^ATXAX(BGPMFITI,21,"B",BGPZZ)) Q:BGPZZ=""  S N=N+1,Y=Y_$S(N=1:"",1:";")_$P($G(^DIC(4,BGPZZ,0)),U)
 .S BGPZZ=0,C=0 F BGPZZ=1:3:N D
 ..S X=$E($P(Y,";",BGPZZ),1,20),$P(X,U,2)=$E($P(Y,";",(BGPZZ+1)),1,20),$P(X,U,3)=$E($P(Y,";",(BGPZZ+2)),1,20) D SET(X,1,1)
 ..Q
 K BGPX,BGPQUIT
 S X=" " D SET(X,1,1)
 I BGPRTYPE'=6 D SET("ENDCOVERPAGE",1,1)
 Q
PEHDR ;EP
 D PEHDR^BGP1PDH1
 Q
COMHDR ;
 D COMHDR^BGP1PDH1
 Q
ONMHDR ;
 S X=" " D SET(X,1,1)
 I BGPCHSO G ONMHDRC
 S BGPTEXT="ONH1" F BGPJ1=1:1 S BGPX=$T(@BGPTEXT+BGPJ1) Q:$P(BGPX,";;",2)="QUIT"  D
 .S BGPT=$P(BGPX,";;",2)
 .D SET(BGPT,1,1)
 I BGPRTC="U" D
 .D SET("3. User defines population: a) Indian/Alaska Natives Only - based on",1,1)
 .D SET("Classification of 01; b) Non AI/AN (not 01); or c) Both.",1,1)
 I BGPRTC="H" D
 .D SET("3. Indian/Alaska Natives Only - based on Classification of 01.",1,1)
 S BGPTEXT="ONH2" F BGPJ1=1:1 S BGPX=$T(@BGPTEXT+BGPJ1) Q:$P(BGPX,";;",2)="QUIT"  D
 .S BGPT=$P(BGPX,";;",2)
 .D SET(BGPT,1,1)
 D SET(" ",1,1)
 Q
ONMHDRC ;
 S BGPTEXT="ONH1" F BGPJ1=1:1 S BGPX=$T(@BGPTEXT+BGPJ1) Q:$P(BGPX,";;",2)="QUIT"  D
 .S BGPT=$P(BGPX,";;",2)
 .D SET(BGPT,1,1)
 I BGPRTC="U" D
 .D SET("3. User defines population: a) Indian/Alaska Natives Only - based on",1,1)
 .D SET("Classification of 01; b) Non AI/AN (not 01); or c) Both.",1,1)
 I BGPRTC="H" D
 .D SET("3. Indian/Alaska Natives Only - based on Classification of 01.",1,1)
 S BGPTEXT="ONH2C" F BGPJ1=1:1 S BGPX=$T(@BGPTEXT+BGPJ1) Q:$P(BGPX,";;",2)="QUIT"  D
 .S BGPT=$P(BGPX,";;",2)
 .D SET(BGPT,1,1)
 D SET(" ",1,1)
 Q
PPHDR ;
 D PPHDR^BGP1PDH1
 Q
ALLHDR ;
 D ALLHDR^BGP1PDH1
 Q
GPRAHDRS ;
 D GPRAHDRS^BGP1PDH1
 Q
DENOMHDR ;
 D DENOMHDR^BGP1PDH1
 Q
AREAHDR ;
 S X=" " D SET(X,1,1)
 S BGPX=$O(^BGPCTRL("B",2011,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,15,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,15,BGPY,0) D SET(X,1,1)
 .Q
 Q
GPRAHDR ;
 S X=" " D SET(X,1,1)
 S BGPNODEP=$S(BGPCHSO:23,1:14)
 S BGPX=$O(^BGPCTRL("B",2011,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,BGPNODEP,BGPY,0) D SET(X,1,1)
 .Q
 Q
GPRAHDRA ;
 S X=" " D SET(X,1,1)
 S BGPX=$O(^BGPCTRL("B",2011,0))
 S BGPNODEP=$S(BGPCHSO&('BGPCHSN):23,(BGPCHSO+BGPCHSN)=2:29,1:14)
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,BGPNODEP,BGPY,0) D SET(X,1,1)
 .Q
 Q
COMHDRA ;
 S X=" " D SET(X,1,1)
 S BGPX=$O(^BGPCTRL("B",2011,0))
 S BGPNODEP=$S(BGPCHSO&('BGPCHSN):24,(BGPCHSO+BGPCHSN)=2:31,1:17)
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,BGPNODEP,BGPY,0) D SET(X,1,1)
 .Q
 I $G(BGP1GPU) D SET("See last pages of this report for Performance Summaries.",1,1) D SET(" ",1,1)
 Q
ENDTIME ;
 I $D(BGPET) S BGPTS=(86400*($P(BGPET,",")-$P(BGPBT,",")))+($P(BGPET,",",2)-$P(BGPBT,",",2)),BGPHR=$P(BGPTS/3600,".") S:BGPHR="" BGPHR=0 D
 .S BGPTS=BGPTS-(BGPHR*3600),BGPM=$P(BGPTS/60,".") S:BGPM="" BGPM=0 S BGPTS=BGPTS-(BGPM*60),BGPS=BGPTS S X="RUN TIME (H.M.S): "_BGPHR_"."_BGPM_"."_BGPS D SET(X,1,1)
 Q
AREACP ;EP
 I BGPRTYPE=6 S X="*** IHS 2011 Patient Education with Community Specified Report***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGPNGR09) S X="*** IHS 2012 National GPRA & PART Report, Run Using 2011 Logic ***" D SET(X,1,1) G NA
 I BGPRTYPE=1,'$G(BGP1GPU),'$G(BGPSUMON) S X="*** IHS 2011 National GPRA & PART Report ***" D SET(X,1,1)
 I BGPRTYPE=1,'$G(BGP1GPU),$G(BGPSUMON) S X="*** IHS 2011 National GPRA & PART Report Clinical Performance Summaries ***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGP1GPU) S X="*** IHS 2011 GPRA & PART Performance Report ***" D SET(X,1,1)
 I BGPRTYPE=7 D SET("*** IHS 2011 Other National Measures Report ***",1,1)
NA S X="AREA AGGREGATE" D SET(X,1,1)
 S X=$$RPTVER^BGP1BAN D SET(X,1,1)
 S X="Date Report Run:  "_$$FMTE^XLFDT(DT) D SET(X,1,1)
 S X="Site where Run:  "_$$VAL^XBDIQ1(9999999.06,DUZ(2),.04) D SET(X,1,1)
 S X="Report Generated by: "_$$USR D SET(X,1,1)
 S X="Report Period:  "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D SET(X,1,1)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) D SET(X,1,1)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I BGPRTYPE=6 S X="Measures: Patient Education Performance Measures" D SET(X,1,1)
 I BGPRTYPE=1 S X="Measures: GPRA, GPRA Developmental, and PART Denominators and Numerators and " D SET(X,1,1) S X="Selected Other Clinical Denominators and Numerators" D SET(X,1,1)
 I BGPRTYPE=7 D SET("Measures: Key Clinical Denominators and Numerators for Non-GPRA National Reporting",1,1)
 I BGPRTYPE=1!(BGPRTYPE=6)!(BGPRTYPE=7) S X="Population: "_$S(BGPBEN=1:"AI/AN Only (Classification 01)",BGPBEN=2:"non AI/AN Only (Classification NOT 01)",BGPBEN=3:"All (Both AI/AN and non AI/AN)",1:"") D SET(X,1,1)
 S X=" " D SET(X,1,1)
 D ENDTIME
 S X=" " D SET(X,1,1)
 I BGPRTYPE=6 D PEDCP Q
 S BGPCHSO="",X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  I $P(^BGPGPDCB(X,0),U,17) S BGPCHSO=1
 S BGPCHSN="",X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  I '$P(^BGPGPDCB(X,0),U,17) S BGPCHSN=1
 I BGPRTYPE=1,'$G(BGP1GPU) D GPRAHDRA
 I BGPRTYPE=1,$G(BGP1GPU) D COMHDRA
 I BGPRTYPE=7 D ONMHDR
 I BGPROT'="P",'$D(BGPGUI) D
 .S X="A delimited output file called "_BGPDELF D SET(X,1,1)
 .S X="has been placed in the "_$$GETDEDIR^BGP1UTL2()_" directory for your use in Excel or some" D SET(X,1,1) S X="other software package.  See your site manager to access this file." D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPEXCEL),'$G(BGP1GPU),BGPRTYPE=1 D
 .S X="National GPRA Filenames:  " D SET(X,1,1) S X=BGPFGNT1 D SET(X,1,1) S X=BGPFGNT2 D SET(X,1,1) ;S X=BGPFGNT3 D SET(X,1,1) S X=BGPFGNT4 D SET(X,1,1)  ;S X=BGPFN2 D SET(X,1,1) S X=" " D SET(X,1,1)
 I BGPRTYPE=7 D
 .S X="Other National Reporting Filenames:  "_$G(BGPFONN1) D SET(X,1,1) S X="^"_BGPFONN2 D SET(X,1,1) S X="^"_BGPFONN3 D SET(X,1,1) S X=" " D SET(X,1,1)
 S X="Report includes data from the following facilities:" D SET(X,1,1)
 NEW BGPX
 S BGPX="",BGPC=0 F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .S X=$P(^BGPGPDCB(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .S BGPC=BGPC+1,X=BGPC_".  "_$S($P(^BGPGPDCB(BGPX,0),U,17):"*",1:"")_X D SET(X,1,1)
 .Q
 S X=" " D SET(X,1,1)
 S X="The following communities are included in this report:" D SET(X,1,1)
 S BGPX="",BGPC=0 F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .S X=$P(^BGPGPDCB(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .S BGPC=BGPC+1,X=BGPC_".  "_$S($P(^BGPGPDCB(BGPX,0),U,17):"*",1:"")_X D SET(X,1,1)
 .S X="Community Taxonomy Name: "_$P(^BGPGPDCB(BGPX,0),U,18) D SET(X,1,1)
 .S X=0,N=0,Y="",Z="" F  S X=$O(^BGPGPDCB(BGPX,9999,X)) Q:X'=+X  S N=N+1,Y=Y_$S(N=1:"",1:";")_$P(^BGPGPDCB(BGPX,9999,X,0),U)
 .S X=0,C=0 F X=1:3:N S Z=$E($P(Y,";",X),1,20),$P(Z,U,2)=$E($P(Y,";",(X+1)),1,20),$P(Z,U,3)=$E($P(Y,";",(X+2)),1,20) D SET(Z,1,1)
 .I $O(^BGPGPDCB(BGPX,1111,0))  D
 ..S X=" " D SET(X,1,1)
 ..S X="MFI Site: Locations for visits: " D SET(X,1,1) S X=0,N=0,Y="",Z="" F  S X=$O(^BGPGPDCB(BGPX,1111,X)) Q:X'=+X  S N=N+1,Y=Y_$S(N=1:"",1:";")_$P(^BGPGPDCB(BGPX,1111,X,0),U)
 ..S X=0,C=0 F X=1:3:N S Z=$E($P(Y,";",X),1,20),$P(Z,U,2)=$E($P(Y,";",(X+1)),1,20),$P(Z,U,3)=$E($P(Y,";",(X+2)),1,20) D SET(Z,1,1)
 ..Q
 .S X=" " D SET(X,1,1)
 .Q
 S X="ENDCOVERPAGE" D SET(X,1,1)
 I BGPCHSO D
 .S X=" " D SET(X,1,1) S X="* CHS-only site.  Uses Active Clinical CHS Population definition vs. Active Clinical." D SET(X,1,1)
 K BGPX,BGPQUIT
 Q
PEDCP ;
 D PEDCP^BGP1PDH1
 Q
SET(Y,F,P) ;
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
CTR(X,Y) ;
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
 ;;
E ;;Elder Care-Related Measures
G ;;GPRA Measures (All)
A ;;AREA Director Performance Measures (All)
H ;;HEDIS Measures (All)
D ;;Diabetes-Related Measures
C ;;Cardiovascular Disease Prevention for At-Risk Patients
S ;;Selected Measures (User Defined)
W ;;Women's Health-Related Measures
 ;
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
 ;;
ONH2C ;;
 ;;4. Must have 2 CHS visits in the 3 years prior to the end of the Report period.
 ;;
 ;;USER POPULATION:
 ;;1. Definitions 1-3 above.
 ;;2. Must have been seen at least once in the 3 years prior to the end of
 ;;the Report period, regardless of the clinic type.
 ;;
 ;;See last pages of this report for Performance Summary.
 ;;QUIT
 ;;
