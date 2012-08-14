AMHLETP ; IHS/CMI/LAB - DISPLAY/EDIT TREATMENT NOTES ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
 ;
 ;
 ;
 ;; ;
START ; Write Header
 D EN^AMHEKL ; -- kill all vars before starting
 W:$D(IOF) @IOF
 F J=1:1:5 S X=$P($T(TEXT+J),";;",2) W !?80-$L(X)\2,X
 K X,J
 W !!
 D ^AMHLEIN ;Initialize vars, etc.
 ;loop through until user wants to quit
 S DFN="" D GETPAT
 I DFN D EN,FULL^VALM1,EXIT
 D EOJ
 Q
 ;
GETPAT ;get patient
 S DFN="",AMHPAT=""
 W !
 S DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC
 Q:Y<0
 S (DFN,AMHPAT)=+Y
 I AMHPAT,'$$ALLOWP^AMHUTIL(DUZ,AMHPAT) D NALLOWP^AMHUTIL D PAUSE^AMHLEA G GETPAT
 I $G(AUPNDOD)]"" W !!?10,"***** PATIENT'S DATE OF DEATH IS ",$$FMTE^XLFDT(AUPNDOD),!! H 2
 Q
EOJ ;EOJ CLEANUP
 D CLEAR^VALM1
 D EN^AMHEKL
 Q
ALLOWTP(S,R) ;EP - CAN THIS USER SEE THIS TREATMENT PLAN?
 ;S is duz, R is TREATMENT PLAN ien
 I '$G(S) Q 0
 I '$G(R) Q 0
 I '$D(^AMHPTXP(R,0)) Q 0
 NEW P
 S P=$P($G(^AMHPTXP(R,0)),U,2)
 I 'P Q 0
 I $D(^AMHSITE(DUZ(2),16,S)) Q 1  ;Q $$ALLOWP^AMHUTIL(S,P)  ;allow all with access
 I $P(^AMHPTXP(R,0),U,4)=S Q 1  ;designated  Q $$ALLOWP^AMHUTIL(S,P)   ;allow your own
 I $P(^AMHPTXP(R,0),U,5)=S Q 1  ;supervisor
 NEW X,Y,G
 S G=0
 S X=0 F  S X=$O(^AMHPTXP(R,41,X)) Q:X'=+X!(G)  D
 .I $P($G(^AMHPTXP(R,41,X,0)),U,3)=S S G=1
 .I $P($G(^AMHPTXP(R,41,X,0)),U,4)=S S G=1
 I G Q 1
 Q 0
 ;
EP1(DFN) ;EP CALLED FROM PROTOCOL
 Q:'$G(DFN)
 Q:'$D(^DPT(DFN))
 Q:$P(^DPT(DFN,0),U,19)
 NEW APCHSTYP,APCHSPAT
 D EN
 D FULL^VALM1
 K VALMHDR
 K X,Y
 Q
EN ; EP -- main entry point for AMH UPDATE ACTIVITY RECORDS
 S VALMCC=1
 I $G(AMHDISP) D EN^VALM("AMH DISP/PRINT TREATMENT PLAN"),CLEAR^VALM1 Q
 D EN^VALM("AMH UPDATE PATIENT TX PLAN")
 D CLEAR^VALM1
 Q
 ;
GATHER ;EP - called from AMHUAR
 K AMHQUIT,AMHPTP S AMHRCNT=0,AMHLINE=0
 I '$D(^AMHPTXP("AC",DFN)) S AMHPTP(1,0)="No Treatment Plans currently on file"  S AMHRCNT=1 Q
 S AMHD=0 F  S AMHD=$O(^AMHPTXP("AA",DFN,AMHD)) Q:AMHD'=+AMHD  S AMHE=0 F  S AMHE=$O(^AMHPTXP("AA",DFN,AMHD,AMHE)) Q:AMHE'=+AMHE  D
 .Q:'$$ALLOWTP(DUZ,AMHE)
 .S AMHRCNT=AMHRCNT+1,AMHLINE=AMHLINE+1,AMHPTP("IDX",AMHRCNT,AMHLINE)=AMHE
 .S AMHX=AMHRCNT_")  Program:  "_$$VAL^XBDIQ1(9002011.56,AMHE,.17),$E(AMHX,42)="Responsible Provider:  "_$S($P(^AMHPTXP(AMHE,0),U,4):$P(^VA(200,$P(^AMHPTXP(AMHE,0),U,4),0),U),1:"<<not recorded>>"),AMHPTP(AMHLINE,0)=AMHX
 .S AMHLINE=AMHLINE+1,AMHX="     Date Established:  "_$$FTIME^VALM1($P(^AMHPTXP(AMHE,0),U)),$E(AMHX,42)="Next Review Date:  "_$$FTIME^VALM1($P(^AMHPTXP(AMHE,0),U,9))
 .S AMHPTP(AMHLINE,0)=AMHX
 .S AMHLINE=AMHLINE+1,AMHX="     Date Resolved:  "_$$FTIME^VALM1($P(^AMHPTXP(AMHE,0),U,12)),AMHPTP(AMHLINE,0)=AMHX
 .S AMHLINE=AMHLINE+1,AMHX="     Problem: "_$E($G(^AMHPTXP(AMHE,11)),1,65),AMHPTP(AMHLINE,0)=AMHX
 .S (X,C)=0 F  S X=$O(^AMHPTXP(AMHE,11,X)) Q:X'=+X  S C=C+1 D
 ..S AMHLINE=AMHLINE+1,AMHPTP(AMHLINE,0)="     Problem #"_C_": "_$P(^AMHPTXP(AMHE,11,X,0),U)
 ..Q
 .S AMHLINE=AMHLINE+1,AMHPTP(AMHLINE,0)=""
 Q  ;**** new format
HDR ;EP -- header code
 S VALMHDR(1)="Patient Name:  "_$P(^DPT(DFN,0),U)_"     DOB:  "_$$FTIME^VALM1($P(^DPT(DFN,0),U,3))_"   Sex:  "_$P(^DPT(DFN,0),U,2)
 I $E($G(AMHPTP(1,0)))="N" S AMHRCNT=0,VALMHDR(2)=AMHPTP(1,0) K AMHPTP
 E  S VALMHDR(2)="                        TREATMENT PLANS CURRENTLY ON FILE"
 Q
 ;
INIT ;EP -- init variables and list array
 D GATHER ;gather up all records for display
 S VALMCNT=AMHLINE
 Q
 ;
HELP ;EP -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 K AMHRCNT,AMHPTP,AMHE,AMHLINE,AMHLEL,AMHLETXT,AMHGNUM,AMHTPN,AMHCOL
 K VALMCC,VALMHDR
 Q
 ;
EXPND ; -- expand code
 Q
 ;
TEXT ;
 ;;Behavioral Health Module
 ;;
 ;;****************************************
 ;;* Update BH Patient Treatment Plans *
 ;;****************************************
 ;;
 Q
GETTXT ;EP - GENERALIZED TEXT PRINTER
 S AMHLETP("DLT")=1,AMHLETP("ILN")=$S($G(AMHLETP("LGTH")):AMHLETP("LGTH"),1:80)-AMHLETP("ICL")-1
 F AMHLETP("Q")=0:0 S:AMHLETP("NRQ")]""&(($L(AMHLETP("NRQ"))+$L(AMHLETP("TXT"))+2)<255) AMHLETP("TXT")=$S(AMHLETP("TXT")]"":AMHLETP("TXT")_"; ",1:"")_AMHLETP("NRQ"),AMHLETP("NRQ")="" Q:AMHLETP("TXT")=""  D GETTXT2
 K AMHLETP("ILN"),AMHLETP("DLT"),AMHLETP("F"),AMHLETP("C"),AMHLETP("TXT")
 Q
GETTXT2 D GETFRAG S AMHLEC=AMHLEC+1,AMHLETXT(AMHLEC)="" F X=1:1:AMHLETP("ICL") S AMHLETXT(AMHLEC)=AMHLETXT(AMHLEC)_" "
 S AMHLETXT(AMHLEC)=AMHLETXT(AMHLEC)_AMHLETP("F"),AMHLETP("ICL")=AMHLETP("ICL")+AMHLETP("DLT"),AMHLETP("ILN")=AMHLETP("ILN")-AMHLETP("DLT"),AMHLETP("DLT")=0
 Q
GETFRAG I $L(AMHLETP("TXT"))<AMHLETP("ILN") S AMHLETP("F")=AMHLETP("TXT"),AMHLETP("TXT")="" Q
 F AMHLETP("C")=AMHLETP("ILN"):-1:1 Q:$E(AMHLETP("TXT"),AMHLETP("C"))=" "
 S AMHLETP("F")=$E(AMHLETP("TXT"),1,AMHLETP("C")-1),AMHLETP("TXT")=$E(AMHLETP("TXT"),AMHLETP("C")+1,255)
 Q
 ;