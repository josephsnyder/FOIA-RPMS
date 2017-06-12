BGP6BAN ; IHS/CMI/LAB - BANNER FOR CRS 14 13 Aug 2010 11:31 AM 01 Mar 2016 2:30 PM ; 05 Jan 2016  7:58 AM
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;
BANNER ;EP
V ; GET VERSION
 NEW BGPV,BGPL,BGPJ,BGPX
 S BGPV="16.1"
 I $G(BGPTEXT)="" S BGPTEXT="TEXT",BGPL=3 G PRINT
 S BGPTEXT="TEXT"_BGPTEXT
 F BGPJ=1:1 S BGPX=$T(@BGPTEXT+BGPJ),BGPX=$P(BGPX,";;",2) Q:BGPX="QUIT"!(BGPX="")  S BGPL=BGPJ
PRINT W:$D(IOF) @IOF
 F BGPJ=1:1:BGPL S BGPX=$T(@BGPTEXT+BGPJ),BGPX=$P(BGPX,";;",2) W !,$$CTR(BGPX,80)
 W !,$$CTR("Version "_BGPV,80)
SITE W !!,$$CTR($$LOC,80)
 K BGPTEXT
 Q
RPTVER() ;EP
 Q "CRS 2016, Version 16.1"
TEXT ;
 ;;****************************************************
 ;;**    IHS/RPMS CLINICAL REPORTING SYSTEM (CRS)    **
 ;;****************************************************
 ;;QUIT
 ;
TEXTN ;
 ;;*********************************
 ;;**      IHS/RPMS CRS 2016      **
 ;;**    National GPRA Reports    **
 ;;*********************************
 ;;QUIT
 ;
TEXTL ;
 ;;******************************************************
 ;;**                IHS/RPMS CRS 2016                 **
 ;;**   Reports for Local Use: IHS Clinical Measures   **
 ;;******************************************************
 ;;QUIT
 ;
TEXTO ;
 ;;*********************************
 ;;**      IHS/RPMS CRS 2016      **
 ;;**    Other National Reports   **
 ;;*********************************
 ;;QUIT
 ;
TEXT6 ;
 ;;*********************************
 ;;**      IHS/RPMS CRS 2016      **
 ;;**  Clinical Reporting System  **
 ;;*********************************
 ;;QUIT
 ;
TEXTA ;;
 ;;***************************
 ;;**   IHS/RPMS CRS 2016   **
 ;;**   Report Automation   **
 ;;***************************
 ;;QUIT
 ;
TEXTR ;
 ;;**************************
 ;;**   IHS/RPMS CRS 2016  **
 ;;**     Reports Menu     **
 ;;**************************
 ;;QUIT
TEXTX ;;
 ;;***************************
 ;;**   IHS/RPMS CRS 2016   **
 ;;**  Area Office Options  **
 ;;***************************
 ;;QUIT
 ;
TEXTS ;;
 ;;**************************
 ;;**   IHS/RPMS CRS 2016  **
 ;;**       Setup Menu     **
 ;;**************************
 ;;QUIT
 ;
TEXTT ;;
 ;;***************************
 ;;**   IHS/RPMS CRS 2016   **
 ;;**  Taxonomy Setup Menu  **
 ;;***************************
 ;;QUIT
 ;
TEXTZ ;;
 ;;***************************
 ;;**   IHS/RPMS CRS 2016   **
 ;;**  Taxonomy Check Menu  **
 ;;***************************
 ;;QUIT
 ;
TEXTU ;;
 ;;*****************************
 ;;**    IHS/RPMS CRS 2016    **
 ;;**  Taxonomy Reports Menu  **
 ;;*****************************
 ;;QUIT
 ;;
TEXTG ;;
 ;;*********************************
 ;;**      IHS/RPMS CRS 2016      **
 ;;**  Lab Taxonomy Reports Menu  **
 ;;*********************************
 ;;QUIT
 ;;
TEXTP ;;
 ;;**************************************
 ;;**        IHS/RPMS CRS 2016         **
 ;;**  Patient Education Reports Menu  **
 ;;**************************************
 ;;QUIT
TEXTM ;;
 ;;****************************************
 ;;**          IHS/RPMS CRS 2016         **
 ;;**  Medication Taxonomy Reports Menu  **
 ;;****************************************
 ;;QUIT
TEXTMU ;
 ;;***********************************
 ;;**       IHS/RPMS CRS 2016       **
 ;;**  Meaningful Use Reports Menu  **
 ;;***********************************
 ;;QUIT
 ;;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
XTMP(N,D) ;EP - set xtmp 0 node
 Q:$G(N)=""
 S ^XTMP(N,0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^"_$G(D)
 Q
