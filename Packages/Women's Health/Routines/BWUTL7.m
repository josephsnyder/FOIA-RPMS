BWUTL7 ;IHS/ANMC/MWR - UTIL: HEADERS & TRAILERS;23-Jan-2009 10:35;DU
 ;;2.0;WOMEN'S HEALTH;**5,6,8,11**;MAY 16, 1996
 ;IHS/CMI/LAB - spacing 4 digit years
 ;;* MICHAEL REMILLARD, DDS * ALASKA NATIVE MEDICAL CENTER *
 ;;  UTILITY: HEADERS AND TRAILERS.
 ;
S(S) ;EP
 ;---> RETURN A VALUE OF SPACES EQUAL IN LENGTH TO THE NUMBER S.
 N I,SP S SP="" F I=1:1:8 S SP=SP_"          "
 Q $E(SP,1,$G(S))
 ;
TOPHEAD ;EP
 ;---> CODE TO SET VARIABLES FOR HEADER.
 N X
 D NOW^%DTC S BWNOW=$$SLDT1^BWUTL5(%)
 S BWLINE="" F I=1:1:8 S BWLINE=BWLINE_"----------"
 S BWPAGE=1
 S BWCRT=$S($E(IOST)="C":1,1:0)
 S BWCONFF="*********************** CONFIDENTIAL PATIENT INFORMATION "
 S BWCONFF=BWCONFF_"***********************"
 S BWTIMLN=$E(BWLINE,1,26)_" printed: "_BWNOW_" "_$E(BWLINE,1,27)
 Q
 ;
 ;
HEADER1 ;EP
 ;---> BROWSE/REPORT HEADER: MULTIPLE PATIENTS, MULTIPLE PROCEDURES.
 ;---> REQUIRED VARIABLES: BWBEGDT,BWCRT,BWENDDT,BWPAGE,BWTITLE,DUZ(2)
 ;---> OPTIONAL VARIABLE:  BWCONF (CONFIDENTIAL), BWSUBH (SUBHEADER).
 N X
 W:BWPAGE>1!BWCRT @IOF,!
 W:$D(BWCONF) BWCONFF,! W:'BWCRT BWTIMLN,!
 W !,BWTITLE W:'BWCRT ?70,"page: ",BWPAGE
 W !!,"Case Mgr: " D
 .I '$D(BWE) W "ALL" Q
 .I BWE W "ALL" Q
 .I '$D(BWCMGR) W "UNKNOWN" Q
 .I BWCMGR="" W "UNKNOWN" Q
 .I '$D(^VA(200,BWCMGR,0)) W "UNKNOWN" Q
 .W $P(^VA(200,BWCMGR,0),U)
 W ?56,"For period: ",$$TXDT^BWUTL5(BWBEGDT)
 W !,"Facility: ",$$INSTTX^BWUTL6(DUZ(2))
 W ?64,"To: ",$$TXDT^BWUTL5(BWENDDT)
 W ! F I=1:1:80 W "="
 I $D(BWSUBH) D @BWSUBH
 Q
 ;
 ;
HEADER2 ;EP
 ;---> PATIENT REPORT HEADER: ONE PATIENT, MULTIPLE PROCEDURES.
 ;---> REQUIRED VARIABLES: BWBEGDT,BWCRT,BWENDDT,BWPAGE,BWTITLE,DUZ(2)
 ;---> OPTIONAL VARIABLE:  BWCONF (CONFIDENTIAL), BWSUBH (SUBHEADER).
 N X
 W:BWPAGE>1!BWCRT @IOF,!
 W:$D(BWCONF) BWCONFF,! W:'BWCRT BWTIMLN,!
 W !,BWTITLE W:'BWCRT ?70,"page: ",BWPAGE
 ;IHS/CMI/THL PATCH 8
 W !!,"Patient Name: ",BWNAMAGE,?55,$$PNLAB^BWUTL5(DUZ(2)),BWCHRT
 W !,"DOB         : ",$$FMTE^XLFDT($$GET1^DIQ(2,BWDFN,.03,"I")),?58,"PCP: ",$E($$GET1^DIQ(9002086,BWDFN,.25),1,16) ; IHS/MSC/BWF - Patch 10
 W !,"Case Manager: ",BWCMGR
 W ?53,"Facility: ",$E($$INSTTX^BWUTL6(DUZ(2)),1,17)
 W !,"Cx Tx Need  : ",BWCNEED
 W ?51,"Inact Date: ",$$SLDT2^BWUTL5($$INACT^BWUTL1(BWDFN))
 ;W ?52,"Period:"                             ;---> XDATES
 ;W ?60,$$SLDT2^BWUTL5(BWBEGDT)," to "        ;---> XDATES
 ;W $$SLDT2^BWUTL5(BWENDDT)                   ;---> XDATES
 W !,"PAP Regimen : ",BWPAPRG
 W ?50,"Income Elig: "
 N X
 S X=$P(^BWP(BWDFN,0),U,29)
 W $S(X=1:"YES",X=2:"NO",X=3:"REFUSED",1:"NOT DETERMINED")
 W !,"Br Tx Need  : ",BWBNEED
 W ?50,"Income Date: "
 N X
 S X=$P(^BWP(BWDFN,0),U,30)
 W $$SLDT2^BWUTL5(X)
 ;W !,"        PCP : "_$$GET1^DIQ(9002086,BWDFN,.25)  ;IHS/CIA/PLS - Patch 11
 ;IHS/CMI/THL END PATCH 8
 W ! F I=1:1:49 W "="
 ;begin Y2K
 W $S(BWEDC]"":BWEDC_"====",1:"===============================") ;IHS/CMI/LAB - format 4 digit year Y2000
 ;end Y2K
 I $D(BWSUBH) D @BWSUBH
 Q
 ;
 ;
HEADER3 ;EP
 ;---> LAB LOG REPORT HEADER: MULTIPLE PATIENTS, MULTIPLE PROCEDURES.
 ;---> REQUIRED VARIABLES: BWBEGDT,BWCRT,BWENDDT,BWPAGE,BWTITLE,DUZ(2)
 ;---> OPTIONAL VARIABLE:  BWCONF (CONFIDENTIAL), BWSUBH (SUBHEADER).
 N X
 W:BWPAGE>1!BWCRT @IOF,!
 W:$D(BWCONF) BWCONFF,! W:'BWCRT BWTIMLN,!
 W !,BWTITLE W:'BWCRT ?70,"page: ",BWPAGE
 W !!,"Facility: ",$$INSTTX^BWUTL6($S($G(BWFAC):BWFAC,1:DUZ(2)))
 ;begin Y2K
 W ?49,"From: ",$$SLDT2^BWUTL5(BWBEGDT) ;IHS/CMI/LAB 53 to 49 Y2000
 ;end Y2K
 W " to ",$$SLDT2^BWUTL5(BWENDDT)
 W ! F I=1:1:80 W "="
 I $D(BWSUBH) D @BWSUBH
 Q
 ;
 ;
HEADER4 ;EP
 ;---> PATIENT REPORT HEADER: ONE PATIENT, ONE PROCEDURE.
 ;---> REQUIRED VARIABLES: BWBEGDT,BWCRT,BWENDDT,BWPAGE,BWTITLE1,DUZ(2)
 ;---> OPTIONAL VARIABLE:  BWCONF (CONFIDENTIAL), BWSUBH (SUBHEADER).
 W:BWPAGE>1!BWCRT @IOF,!
 W BWCONFF W:'BWCRT !,BWTIMLN
 W !!,BWTITLE1,?70,"page: ",BWPAGE S BWPAGE=BWPAGE+1
HEADER41 ;EP
 ;---> CALLED BY BWPROC; BYPASSES FORMFEED, TITLE, ETC.
 W !!,"Patient Name: ",BWNAMAGE,?53,$$PNLAB^BWUTL5(DUZ(2)),BWCHRT
 W !,"Case Manager: ",BWCMGR
 W ?50,"Procedure: ",$E(BWPN,1,19)
 W !,"Cx Tx Need  : ",BWCNEED
 W ?55,"Acc#: ",BWACCN
 W !,"PAP Regimen : ",BWPAPRG
 W !,"Br Tx Need  : ",BWBNEED
 W ?61,$S($$DES^BWUTL1(BWDFN):"*DES DAUGHTER*",1:"")
 W ! F I=1:1:49 W "-"
 W $S(BWEDC]"":BWEDC_"------",1:"-------------------------------")
 Q
 ;
 ;
HEADER5 ;EP
 ;---> DELINQUENT NEEDS REPORT HEADER: MULTIPLE PATIENTS
 ;---> REQUIRED VARIABLES: BWBEGDT,BWCRT,BWENDDT,BWPAGE,BWTITLE,DUZ(2)
 ;---> OPTIONAL VARIABLE:  BWCONF (CONFIDENTIAL), BWSUBH (SUBHEADER).
 N X
 W:BWPAGE>1!BWCRT @IOF,!
 W:$D(BWCONF) BWCONFF,! W:'BWCRT BWTIMLN,!
 W !,BWTITLE W:'BWCRT ?70,"page: ",BWPAGE
 W !!,"Case Mgr: " D
 .I '$D(BWE) W "ALL" Q
 .I BWE W "ALL" Q
 .I $G(BWCMGR)']"" W "UNKNOWN" Q
 .I '$D(^VA(200,BWCMGR,0)) W "UNKNOWN" Q
 .W $P(^VA(200,BWCMGR,0),U)
 W ?46,"Communit" D
 .I $D(BWCC("ALL")) W "ies: ALL" Q
 .N I,N S N=0 F I=0:1 S N=$O(BWCC(N)) Q:'N
 .I I=1 W "y: ",$E($P(^AUTTCOM($O(BWCC(N)),0),U),1,22) Q
 .W "ies: ",$E($P(^AUTTCOM($O(BWCC(N)),0),U),1,18),",..." Q
 W !,"Facility: ",$$INSTTX^BWUTL6(BWFAC)
 W ?46,"Tx Needs Past Due as of ",$$SLDT2^BWUTL5(BWDDATE)
 W ! F I=1:1:80 W "="
 I $D(BWSUBH) D @BWSUBH
 Q
 ;
 ;
HEADER6 ;EP
 ;---> PROGRAM SNAPSHOT HEADER: JUST TITLE AND FACILITY (NO PATIENTS)
 ;---> REQUIRED VARIABLES: BWCRT,BWTITLE,DUZ(2)
 N X
 W:BWPAGE>1!BWCRT @IOF,!
 W:'BWCRT !,BWTIMLN,!
 W !,BWTITLE W:'BWCRT ?70,"page: ",BWPAGE
 W !!,"   Note: This report includes all facilities"
 W " using this database."
 ;W " Facility: ",$$INSTTX^BWUTL6(DUZ(2))
 ;W " (This report is not site specific.)"
 W ! F I=1:1:80 W "="
 Q
 ;
 ;
HEADER7 ;EP
 ;---> AUTOLOAD OF PATIENTS HEADER
 ;---> REQUIRED VARIABLES: BWCRT,BWTITLE,DUZ(2)
 N X
 W:BWPAGE>1!BWCRT @IOF,!
 W:$D(BWCONF) BWCONFF,! W:'BWCRT BWTIMLN,!
 W !,BWTITLE W:'BWCRT ?70,"page: ",BWPAGE S BWPAGE=BWPAGE+1
 W !!,"Facility: ",$$INSTTX^BWUTL6(DUZ(2))
 W ?64,"Cutoff Age: ",BWAGE
 W ! F I=1:1:80 W "="
 W !,?3,"NAME",?30,$$PNLB^BWUTL5(DUZ(2)),?45,"DOB",?60,"STATUS"
 W !,BWLINE
 Q
 ;
 ;
HEADER8 ;EP
 ;---> SCREENING RATES REPORT HEADER: (NO PATIENTS)
 ;---> REQUIRED VARIABLES: BWCRT,BWTITLE,DUZ(2)
 N X
 W:BWPAGE>1!BWCRT @IOF,!
 W:'BWCRT !,BWTIMLN,!
 W !,BWTITLE W:'BWCRT ?70,"page: ",BWPAGE
 W !!?4,"For Age Range: ",$S(BWAGRG=1:"ALL",1:BWAGRG)
 W ?56,"For period: ",$$SLDT2^BWUTL5(BWBEGDT)
 W !?4,"Communit" D
 .I $D(BWCC("ALL")) W "ies: ALL" Q
 .N I,N S N="",I=0 F  S N=$O(BWCC(N)) Q:N=""  S I=I+1
 .I I=1 W "y: ",$E($O(BWCC("")),1,22) Q
 .W "ies: ",$E($O(BWCC("")),1,18),",..." Q
 W ?64,"To: ",$$SLDT2^BWUTL5(BWENDDT)
 W ! F I=1:1:80 W "="
 W !?4,"(Note: This report includes all facilities"
 W " using this database.)",!
 ;I $D(BWSUBH) D @BWSUBH
 Q
 ;
ENDREP(X) ;EP
 ;---> END A REPORT, DO FORMFEED OR "Press <Return>" IF NECESSARY.
 ;---> REQUIRED VARIABLES: BWCRT=1 IF OUTPUT TO SCREEN
 ;--->                     BWPOP=1 IF ESCAPING
 ;---> OPTIONAL VARIABLE:  X=1 IF "End of Report" SHOULD NOT DISPLAY.
 ;
 S BWTITLE="-----  End of Report  -----"
 I '$G(X)&('BWPOP) D CENTERT^BWUTL5(.BWTITLE) W !,BWTITLE
 W:'BWCRT @IOF,!
 I BWCRT&('$D(IO("S")))&('BWPOP) D DIRZ^BWUTL3 W @IOF,!
 D ^%ZISC
 Q