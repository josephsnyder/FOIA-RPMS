BGP5PDLH ; IHS/CMI/LAB - cover page for gpra del ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
 S X="" D SET(X,1,1)
 S X="Cover Page" D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPAREAA) G AREACP
 I BGPRTYPE=4 S X="*** IHS 2005 Clinical Performance Report ***" D SET(X,1,1)
 I BGPRTYPE=1,'$G(BGP5GPU) S X="*** IHS 2005 National GPRA Clinical Performance Indicators ***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGP5GPU) S X="*** IHS GPRA Performance Report ***" D SET(X,1,1)
 S X="CRS 2005, Version 5.1" D SET(X,1,1)
 I $G(BGPALLPT) S X="*** ALL PATIENTS INCLUDED, REGARDLESS OF COMMUNITY OF RESIDENCE ***" D SET(X,1,1)
 I $G(BGPSEAT) S X="*** SEARCH TEMPLATE OF PATIENTS: "_$P(^DIBT(BGPSEAT,0),U)_" ***" D SET(X,1,1)
 S X=" " D SET(X,1,1)
 S X="Date Report Run: "_$$FMTE^XLFDT(DT) D SET(X,1,1)
 S X="Site where Run: "_$P(^DIC(4,DUZ(2),0),U) D SET(X,1,1)
 S X="Report Generated by: "_$$USR D SET(X,1,1)
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D SET(X,1,1)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) D SET(X,1,1)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I BGPRTYPE=4 S X="Indicators: "_$P($T(@BGPINDT),";;",2) D SET(X,1,1)
 I BGPRTYPE=1 S X="Indicators: GPRA Denominators and Numerators and Selected Other " D SET(X,1,1) S X="Clinical Denominators and Numerators" D SET(X,1,1)
 I BGPRTYPE=3 S X="Indicators: HEDIS Indicators" D SET(X,1,1)
 I '$G(BGPSEAT) S X="Population: "_$S(BGPBEN=1:"AI/AN Only (Classification 01)",BGPBEN=2:"non AI/AN Only (Classification NOT 01)",BGPBEN=3:"All (Both AI/AN and non AI/AN)",1:"") D SET(X,1,1)
 S X=" " D SET(X,1,1)
 D ENDTIME
 I BGPRTYPE=4,BGP5RPTH="C" D COMHDR
 I BGPRTYPE=4,BGP5RPTH="P" D PPHDR
 I BGPRTYPE=4,BGP5RPTH="A" D ALLHDR
 I BGPRTYPE=1,'$G(BGP5GPU) D GPRAHDR
 I BGPRTYPE=1,$G(BGP5GPU) D COMHDR
 I $G(BGPEXPT) D
 .S X="A file will be created called BG05"_$P(^AUTTLOC(DUZ(2),0),U,10)_"."_BGPRPT_"." D SET(X,1,1) S X="It will reside in the public/export directory." D SET(X,1,1) S X="This file should be sent to your Area Office." D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPEXCEL) S X="EISS/Excel Filename:  "_BGPFN D SET(X,1,1) S X=" " D SET(X,1,1)
 I BGPROT'="P" D
 .Q:$D(BGPGUI)
 .S X="A delimited output file called "_BGPDELF D SET(X,1,1) S X="has been placed in the public directory for your use in Excel or some" D SET(X,1,1) S X="other software package." D SET(X,1,1)
 .S X="See your site manager to access this file." D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I BGP5RPTH="P" K BGPX,BGPQUIT Q
 I $G(BGPALLPT) S X="All Communities Included." D SET(X,1,1)
 I '$G(BGPALLPT),'$G(BGPSEAT) S X="Community Taxonomy Name: "_$P(^ATXAX(BGPTAXI,0),U) D SET(X,1,1)
 I '$G(BGPALLPT),'$G(BGPSEAT) S X="The following communities are included in this report:" D SET(X,1,1) D
 .S BGPZZ="",N=0,Y="" F  S BGPZZ=$O(BGPTAX(BGPZZ)) Q:BGPZZ=""  S N=N+1,Y=Y_$S(N=1:"",1:";")_BGPZZ
 .S BGPZZ=0,C=0 F BGPZZ=1:3:N D
 ..S X=$E($P(Y,";",BGPZZ),1,20),$P(X,U,2)=$E($P(Y,";",(BGPZZ+1)),1,20),$P(X,U,3)=$E($P(Y,";",(BGPZZ+2)),1,20) D SET(X,1,1)
 ..Q
 K BGPX,BGPQUIT
 S X=" " D SET(X,1,1)
 S X=" " D SET(X,1,1)
 Q
COMHDR ;
 S X=" " D SET(X,1,1)
 Q:$G(BGPSEAT)
 S BGPX=$O(^BGPCTRL("B",2005,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,17,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,17,BGPY,0) D SET(X,1,1)
 .Q
 S X=" " D SET(X,1,1)
 Q
PPHDR ;
 S X=" " D SET(X,1,1)
 Q:$G(BGPSEAT)
 S BGPX=$O(^BGPCTRL("B",2005,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,18,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,18,BGPY,0) D SET(X,1,1)
 .Q
 S X=" " D SET(X,1,1)
 Q
ALLHDR ;
 S X=" " D SET(X,1,1)
 Q:$G(BGPSEAT)
 S BGPX=$O(^BGPCTRL("B",2005,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,19,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,19,BGPY,0) D SET(X,1,1)
 .Q
 S X=" " D SET(X,1,1)
 Q
DENOMHDR ;
 S X=" " D SET(X,1,1)
 Q:$G(BGPSEAT)
 S BGPX=$O(^BGPCTRL("B",2005,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,13,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,13,BGPY,0) D SET(X,1,1)
 .Q
 S X=" " D SET(X,1,1)
 Q
AREAHDR ;
 S X=" " D SET(X,1,1)
 S BGPX=$O(^BGPCTRL("B",2005,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,15,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,15,BGPY,0) D SET(X,1,1)
 .Q
 Q
GPRAHDR ;
 S X=" " D SET(X,1,1)
 S BGPX=$O(^BGPCTRL("B",2005,0))
 S BGPY=0 F  S BGPY=$O(^BGPCTRL(BGPX,14,BGPY)) Q:BGPY'=+BGPY  D
 .S X=^BGPCTRL(BGPX,14,BGPY,0) D SET(X,1,1)
 .Q
 Q
ENDTIME ;
 I $D(BGPET) S BGPTS=(86400*($P(BGPET,",")-$P(BGPBT,",")))+($P(BGPET,",",2)-$P(BGPBT,",",2)),BGPHR=$P(BGPTS/3600,".") S:BGPHR="" BGPHR=0 D
 .S BGPTS=BGPTS-(BGPHR*3600),BGPM=$P(BGPTS/60,".") S:BGPM="" BGPM=0 S BGPTS=BGPTS-(BGPM*60),BGPS=BGPTS S X="RUN TIME (H.M.S): "_BGPHR_"."_BGPM_"."_BGPS D SET(X,1,1)
 Q
AREACP ;EP - area cover page
 ;
 I BGPRTYPE=4 S X="*** IHS 2005 Clinical Performance Report ***" D SET(X,1,1)
 I BGPRTYPE=1,'$G(BGP5GPU) S X="*** IHS 2005 National GPRA Clinical Performance Report ***" D SET(X,1,1)
 I BGPRTYPE=1,$G(BGP5GPU) S X="*** IHS GPRA Performance Report ***" D SET(X,1,1)
 S X=$S(BGPSUCNT=1:BGPSUNM,1:"AREA AGGREGATE") D SET(X,1,1)
 S X="CRS 2005, Version 5.1" D SET(X,1,1)
 S X="Date Report Run:  "_$$FMTE^XLFDT(DT) D SET(X,1,1)
 S X="Site where Run:  "_$$VAL^XBDIQ1(9999999.06,DUZ(2),.04) D SET(X,1,1)
 S X="Report Period:  "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D SET(X,1,1)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) D SET(X,1,1)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I BGPRTYPE=1 S X="Indicators: GPRA Denominators and Numerators and Selected Other " D SET(X,1,1) S X="Clinical Denominators and Numerators" D SET(X,1,1)
 I BGPRTYPE=1 S X="Population: "_$S(BGPBEN=1:"AI/AN Only (Classification 01)",BGPBEN=2:"non AI/AN Only (Classification NOT 01)",BGPBEN=3:"All (Both AI/AN and non AI/AN)",1:"") D SET(X,1,1)
 S X=" " D SET(X,1,1)
 D ENDTIME
 S X=" " D SET(X,1,1)
 I BGPRTYPE=1,'$G(BGP5GPU) D GPRAHDR
 I BGPRTYPE=1,$G(BGP5GPU) D COMHDR
 I BGPROT'="P",'$D(BGPGUI) D
 .S X="A delimited output file called "_BGPDELF D SET(X,1,1)
 .S X="has been placed in the public directory for your use in Excel or some" D SET(X,1,1) S X="other software package.  See your site manager to access this file." D SET(X,1,1)
 S X=" " D SET(X,1,1)
 I $G(BGPEXCEL) D
 .S X="National GPRA Filename:  "_$G(BGPFN) D SET(X,1,1) S X=" " D SET(X,1,1)
 .S X="EISS Filename:  "_$G(BGPFNEIS) D SET(X,1,1) S X=" " D SET(X,1,1)
 S X="Report includes the following facility data:" D SET(X,1,1)
 NEW BGPX
 S BGPX="" F  S BGPX=$O(BGPSUL(BGPX)) Q:BGPX=""  D
 .S X=$P(^BGPGPDCV(BGPX,0),U,9),X=$O(^AUTTLOC("C",X,0)) S X=$S(X:$P(^DIC(4,X,0),U),1:"?????")
 .D SET(X,1,1)
 .S X="Communities: " S X=0,N=0,Y="",Z="" F  S X=$O(^BGPGPDCV(BGPX,9999,X)) Q:X'=+X  S N=N+1,Y=Y_$S(N=1:"",1:";")_$P(^BGPGPDCV(BGPX,9999,X,0),U)
 .S X=0,C=0 F X=1:3:N S Z=$E($P(Y,";",X),1,20),$P(Z,U,2)=$E($P(Y,";",(X+1)),1,20),$P(Z,U,3)=$E($P(Y,";",(X+2)),1,20) D SET(Z,1,1)
 .Q
 S X=" " D SET(X,1,1)
 K BGPX,BGPQUIT
 Q
SET(Y,F,P) ;set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
 ;;
E ;;Elder Care-Related Indicators
G ;;GPRA Indicators (All)
A ;;AREA Director Performance Indicators (All)
H ;;HEDIS Indicators (All)
D ;;Diabetes-Related Indicators
C ;;Cardiovascular Disease Prevention for At-Risk Patients
S ;;Selected Indicators (User Defined)
W ;;Women's Health-Related Indicators
P ;;Prevention Related Indictors
