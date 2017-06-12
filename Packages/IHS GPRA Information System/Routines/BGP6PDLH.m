BGP6PDLH ; IHS/CMI/LAB - cover page ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 S X="" D SET(X,1,1)
 S X="Cover Page" D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPAREAA) G AREACP
 I BGPRTYPE=4,$G(BGPYRPTH)="C" S X="*** IHS 2016 Selected Measures with Community Specified Report ***" D SET(X,1,1)
 I BGPRTYPE=4,$G(BGPYRPTH)="A" S X="*** IHS 2016 Selected Measures with All Communities Report ***" D SET(X,1,1)
 I BGPRTYPE=4,$G(BGPYRPTH)="P" S X="*** IHS 2016 Selected Measures with Patient Panel Population Report ***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGPNGR09) S X="*** IHS 2016 National GPRA/GPRAMA Report, Run Using 2016 Logic ***" D SET(X,1,1) G N
 I BGPRTYPE=1,$G(BGPDESGP) S X="*** IHS 2016 National GPRA/GPRAMA Report by Designated Provider ***" D SET(X,1,1) G N
 I BGPRTYPE=1,'$G(BGPYGPU),'$G(BGPSUMON) S X="*** IHS 2016 National GPRA/GPRAMA Report ***" D SET(X,1,1)
 I BGPRTYPE=1,'$G(BGPYGPU),$G(BGPSUMON) S X="*** IHS 2016 National GPRA/GPRAMA Report Clinical Performance Summaries ***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGPYGPU) S X="*** IHS 2016 GPRA/GPRAMA Report ***" D SET(X,1,1)
 I BGPRTYPE=7 S X="*** IHS 2016 Other National Measures Report ***" D SET(X,1,1)
 I BGPRTYPE=6,'$G(BGPEDPP) S X="*** IHS 2016 Patient Education with Community Specified Report ***" D SET(X,1,1)
 I BGPRTYPE=6,$G(BGPEDPP) S X="*** IHS 2016 Patient Education with Patient Panel Population Report ***" D SET(X,1,1)
N ;
 I $G(BGPCPPL) S X="** Including Comprehensive Patient List **" D SET(X,1,1)
 S X=$$RPTVER^BGP6BAN D SET(X,1,1)
 S X="Date Report Run: "_$$FMTE^XLFDT(DT) D SET(X,1,1)
 S X="Site where Run: "_$P(^DIC(4,DUZ(2),0),U) D SET(X,1,1)
 S X="Report Generated by: "_$$USR D SET(X,1,1)
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D SET(X,1,1)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) D SET(X,1,1)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I BGPRTYPE=6 S X="Measures: Patient Education Performance Measures" D SET(X,1,1)
 I BGPRTYPE=4 S X="Measures: "_$P($T(@BGPINDM),";;",2) D SET(X,1,1)
 I BGPRTYPE=1 S X="Measures: GPRA Developmental, GPRA and PART Denominators and Numerators and " D SET(X,1,1) S X="Selected Other Clinical Denominators and Numerators" D SET(X,1,1)
 I BGPRTYPE=7 S X="Measures: Key Clinical Denominators and Numerators for Non-GPRA National Reporting" D SET(X,1,1)
 I '$G(BGPSEAT) S X="Population: "_$S(BGPBEN=1:"AI/AN Only (Classification 01)",BGPBEN=2:"non AI/AN Only (Classification NOT 01)",BGPBEN=3:"All (Both AI/AN and non AI/AN)",1:"") D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPSEAT) S X="Patient Panel Population:  "_$P(^DIBT(BGPSEAT,0),U) D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPDESGP) S X="Designated Provider: "_$P(^VA(200,BGPDESGP,0),U) D SET(X,1,1),SET(" ",1,1)
 D ENDTIME
 I BGPRTYPE=4,BGPYRPTH="C" D COMHDR
 I BGPRTYPE=4,BGPYRPTH="P" D PPHDR
 I BGPRTYPE=4,BGPYRPTH="A" D ALLHDR
 I BGPRTYPE=1,'$G(BGPYGPU),'$G(BGPSUMON) D GPRAHDR
 I BGPRTYPE=1,'$G(BGPYGPU),$G(BGPSUMON) D GPRAHDRS
 I BGPRTYPE=1,$G(BGPYGPU) D COMHDR
 I BGPRTYPE=7 D ONMHDR
 I BGPRTYPE=6 D PEHDR
 I $G(BGPEXPT),BGPRTYPE=1 D
 .S X="A file will be created called BG161"_$P(^AUTTLOC(DUZ(2),0),U,10)_"."_BGPRPT_"." D SET(X,1,1)
 .S X="It will reside in the public/export directory." D SET(X,1,1)
 .S X="This file should be sent to your Area Office." D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPEXPT),BGPRTYPE=7 D
 .S X="A file will be created called BG161"_$P(^AUTTLOC(DUZ(2),0),U,10)_".ONM"_BGPRPT_"." D SET(X,1,1)
 .S X="It will reside in the public/export directory." D SET(X,1,1)
 .S X="This file should be sent to your Area Office." D SET(X,1,1)
 I BGPRTYPE=6,$G(BGPPEEXP) D
 .S X="A file will be created called BG161"_$P(^AUTTLOC(DUZ(2),0),U,10)_".PED"_BGPRPT_"." D SET(X,1,1)
 .S X="This file will reside in the public/export directory." D SET(X,1,1)
 .S X="This file should be sent to your Area Office." D SET(X,1,1)
 .S X=" " D SET(X,1,1)
 I BGPROT'="P" D
 .Q:$D(BGPGUI)
 .S X="A delimited output file called "_BGPDELF D SET(X,1,1) S X="has been placed in the "_$$GETDEDIR^BGP6UTL2()_" directory for your use in Excel or some" D SET(X,1,1) S X="other software package." D SET(X,1,1)
 .S X="See your site manager to access this file." D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I BGPYRPTH="P" K BGPX,BGPQUIT Q
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
 K BGPX,BGPQUIT
 S X=" " D SET(X,1,1)
 I BGPRTYPE'=6 D SET("ENDCOVERPAGE",1,1)
 Q
PEHDR ;EP
 D PEHDR^BGP6PDH1
 Q
COMHDR ;
 D COMHDR^BGP6PDH1
 Q
ONMHDR ;
 S X=" " D SET(X,1,1)
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
 D PPHDR^BGP6PDH1
 Q
ALLHDR ;
 D ALLHDR^BGP6PDH1
 Q
GPRAHDRS ;
 D GPRAHDRS^BGP6PDH1
 Q
DENOMHDR ;
 D DENOMHDR^BGP6PDH1
 Q
AREAHDR ;
 S X=" " D SET(X,1,1)
 S BGPX=$O(^BGPCTRL("B",2016,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,15,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,15,BGPY,0) D SET(X,1,1)
 .Q
 Q
GPRAHDR ;
 S X=" " D SET(X,1,1)
 S BGPNODEP=14
 S BGPX=$O(^BGPCTRL("B",2016,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,BGPNODEP,BGPY,0) D SET(X,1,1)
 .Q
 Q
GPRAHDRA ;
 S X=" " D SET(X,1,1)
 S BGPX=$O(^BGPCTRL("B",2016,0))
 S BGPNODEP=14
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,BGPNODEP,BGPY,0) D SET(X,1,1)
 .Q
 Q
COMHDRA ;
 S X=" " D SET(X,1,1)
 S BGPX=$O(^BGPCTRL("B",2016,0))
 S BGPNODEP=17
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,BGPNODEP,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,BGPNODEP,BGPY,0) D SET(X,1,1)
 .Q
 I $G(BGPYGPU) D SET("See last pages of this report for Performance Summaries.",1,1) D SET(" ",1,1)
 Q
ENDTIME ;
 I $D(BGPET) S BGPTS=(86400*($P(BGPET,",")-$P(BGPBT,",")))+($P(BGPET,",",2)-$P(BGPBT,",",2)),BGPHR=$P(BGPTS/3600,".") S:BGPHR="" BGPHR=0 D
 .S BGPTS=BGPTS-(BGPHR*3600),BGPM=$P(BGPTS/60,".") S:BGPM="" BGPM=0 S BGPTS=BGPTS-(BGPM*60),BGPS=BGPTS S X="RUN TIME (H.M.S): "_BGPHR_"."_BGPM_"."_BGPS D SET(X,1,1)
 Q
AREACP ;EP
 I BGPRTYPE=6 S X="*** IHS 2016 Patient Education with Community Specified Report***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGPNGR09) S X="*** IHS 2016 National GPRA/GPRAMA Report, Run Using 2016 Logic ***" D SET(X,1,1) G NA
 I BGPRTYPE=1,'$G(BGPYGPU),'$G(BGPSUMON) S X="*** IHS 2016 National GPRA/GPRAMA Report ***" D SET(X,1,1)
 I BGPRTYPE=1,'$G(BGPYGPU),$G(BGPSUMON) S X="*** IHS 2016 National GPRA/GPRAMA Report Clinical Performance Summaries ***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGPYGPU) S X="*** IHS 2016 GPRA/GPRAMA Performance Report ***" D SET(X,1,1)
 I BGPRTYPE=7 D SET("*** IHS 2016 Other National Measures Report ***",1,1)
NA S X="AREA AGGREGATE" D SET(X,1,1)
 S X=$$RPTVER^BGP6BAN D SET(X,1,1)
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
 I BGPRTYPE=1,'$G(BGPYGPU) D GPRAHDRA
 I BGPRTYPE=1,$G(BGPYGPU) D COMHDRA
 I BGPRTYPE=7 D ONMHDR
 I BGPROT'="P",'$D(BGPGUI) D
 .S X="A delimited output file called "_BGPDELF D SET(X,1,1)
 .S X="has been placed in the "_$$GETDEDIR^BGP6UTL2()_" directory for your use in Excel or some" D SET(X,1,1) S X="other software package.  See your site manager to access this file." D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPEXCEL),'$G(BGPYGPU),BGPRTYPE=1 D
 .S X="National GPRA Filenames:  " D SET(X,1,1) S X=BGPFGNT1 D SET(X,1,1) S X=BGPFGNT2 D SET(X,1,1) S X=BGPFGNT3 D SET(X,1,1) S X=BGPFGNT4 D SET(X,1,1)  ;S X=BGPFN2 D SET(X,1,1) S X=" " D SET(X,1,1)
 I BGPRTYPE=7 D
 .S X="Other National Reporting Filenames:  "_$G(BGPFONN1) D SET(X,1,1) S X="^"_BGPFONN2 D SET(X,1,1) S X="^"_BGPFONN3 D SET(X,1,1) S X=" " D SET(X,1,1)
 S X="Report includes data from the following facilities:" D SET(X,1,1)
 NEW BGPX
 S BGPX="",BGPC=0 F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .S X=$P(^BGPGPDCM(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .S BGPC=BGPC+1,X=BGPC_".  "_$S($P(^BGPGPDCM(BGPX,0),U,17):"*",1:"")_X D SET(X,1,1)
 .Q
 S X=" " D SET(X,1,1)
 S X="The following communities are included in this report:" D SET(X,1,1)
 S BGPX="",BGPC=0 F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .S X=$P(^BGPGPDCM(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .S BGPC=BGPC+1,X=BGPC_".  "_$S($P(^BGPGPDCM(BGPX,0),U,17):"*",1:"")_X D SET(X,1,1)
 .S X="Community Taxonomy Name: "_$P(^BGPGPDCM(BGPX,0),U,18) D SET(X,1,1)
 .S X=0,N=0,Y="",Z="" F  S X=$O(^BGPGPDCM(BGPX,9999,X)) Q:X'=+X  S N=N+1,Y=Y_$S(N=1:"",1:";")_$P(^BGPGPDCM(BGPX,9999,X,0),U)
 .S X=0,C=0 F X=1:3:N S Z=$E($P(Y,";",X),1,20),$P(Z,U,2)=$E($P(Y,";",(X+1)),1,20),$P(Z,U,3)=$E($P(Y,";",(X+2)),1,20) D SET(Z,1,1)
 .S X=" " D SET(X,1,1)
 .Q
 S X="ENDCOVERPAGE" D SET(X,1,1)
 K BGPX,BGPQUIT
 Q
PEDCP ;
 D PEDCP^BGP6PDH1
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
A ;;Asthma Related Measures
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
