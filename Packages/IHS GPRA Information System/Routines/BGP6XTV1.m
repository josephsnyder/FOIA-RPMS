BGP6XTV1 ; IHS/CMI/LAB - DISPLAY IND LISTS ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;; ;
EP(BGPTAXI,BGPTYPE,BGPFIEN) ;EP - CALLED FROM OPTION
 NEW BGPRPTTT,BGPRPTT1,BGPRPTT2
 D EN
 Q
EOJ ;EP
 D EN^XBVK("BGP")
 Q
 ;; ;
EN ;EP -- main entry point for 
 D TERM^VALM0
 D EN^VALM("BGP 16 TAXONOMY VIEW ONE")
 D CLEAR^VALM1
 D FULL^VALM1
 W:$D(IOF) @IOF
 D EOJ
 Q
 ;
HDR ; -- header code
 S VALMHDR(1)="Display of the "_$$NAME(BGPTAXI,BGPTYPE)_" taxonomy"
 S VALMHDR(2)="* View Taxonomies"
 Q
 ;
NAME(I,T) ;
 I T="L" Q $P(^ATXLAB(I,0),U)
 I T'="L" Q $P(^ATXAX(I,0),U)
 Q ""
INIT ; -- init variables and list array
 ;
 S VALMSG="Select the Appropriate Action   Q to Quit"
 I BGPTYPE="L" S BGPFILE=60
 I BGPTYPE'="L" S BGPFILE=$P(^ATXAX(BGPTAXI,0),U,15)
 I BGPTYPE="L" D LAB Q
 I BGPTYPE="A"!(BGPTYPE="N") D CANDISP Q
 I $P(^ATXAX(BGPTAXI,0),U,13) D CANDISP Q
 K BGPITEM S BGPHIGH="",C=0
 S BGPX=0 F  S BGPX=$O(^ATXAX(BGPTAXI,21,"B",BGPX)) Q:BGPX=""  D
 .S BGPY=$O(^ATXAX(BGPTAXI,21,"B",BGPX,0)) Q:BGPY'=+BGPY  D
 ..S C=C+1
 ..S BGPITMI=$P(^ATXAX(BGPTAXI,21,BGPY,0),U)
 ..I BGPFILE=9999999.05 S BGPITEM(C,0)=C_")  "_BGPITMI I 1
 ..E  S BGPITEM(C,0)=C_")  "_$$VAL^XBDIQ1($P(^ATXAX(BGPTAXI,0),U,15),BGPITMI,.01)
 ..S BGPITEM("IDX",C,C)=BGPITMI
 .Q
 S (VALMCNT,BGPHIGH)=C
 Q
CANDISP ;
 K BGPITEM S BGPHIGH="",C=0
 S BGPX=0 F  S BGPX=$O(^ATXAX(BGPTAXI,21,"B",BGPX)) Q:BGPX=""  D
 .S BGPY=0 F  S BGPY=$O(^ATXAX(BGPTAXI,21,"B",BGPX,BGPY)) Q:BGPY=""  D
 ..S C=C+1
 ..S BGPITEM(C,0)=C_")  "_$P(^ATXAX(BGPTAXI,21,BGPY,0),U)_" through  "_$P(^ATXAX(BGPTAXI,21,BGPY,0),U,2) I $P(^ATXAX(BGPTAXI,21,BGPY,0),U,3) S $E(BGPITEM(C,0),40)=$P(^ICDS($P(^ATXAX(BGPTAXI,21,BGPY,0),U,3),0),U,1)
 ..S BGPITEM("IDX",C,C)=BGPX
 .Q
 S (VALMCNT,BGPHIGH)=C
 Q
LAB ;
 K BGPITEM S BGPHIGH="",C=0
 S BGPX=0 F  S BGPX=$O(^ATXLAB(BGPTAXI,21,BGPX)) Q:BGPX'=+BGPX  D
 .S C=C+1
 .S BGPITMI=$P(^ATXLAB(BGPTAXI,21,BGPX,0),U)
 .S BGPITEM(C,0)=C_")  "_$P($G(^LAB(60,BGPITMI,0)),U)
 .S BGPITEM("IDX",C,C)=BGPITMI
 .Q
 S (VALMCNT,BGPHIGH)=C
 Q
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 Q
 ;
EXPND ; -- expand code
 Q
 ;
BACK ;go back to listman
 D TERM^VALM0
 S VALMBCK="R"
 D INIT
 D HDR
 K DIR
 K X,Y,Z,I
 Q
