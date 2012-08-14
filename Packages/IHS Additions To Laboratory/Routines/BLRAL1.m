BLRAL1 ;MTK/CR-ListMan program for Lab Results 
 ;;5.2T9;LR;**1018**;Nov 17, 2004
 ;;5.2;LR;**1013,1015**;Nov 18, 2002
 ;; ;
EN ;EP
 ; -- main entry point for BLRA LAB RESULTS LIST
 D EN^VALM("BLRA LAB RESULTS LIST")
 Q
 ;
HDR ; -- header code
 S VALMHDR(1)=$G(BLRAHDR)_" "
 S VALMHDR(2)=" "
 S VALMHDR(3)="WARNING: RESTRICTED GOVERNMENT DATA, UNAUTHORIZED ENTRY/USE IS A FEDERAL CRIME"
 Q
 ;
INIT ;EP
 ;  -- init variables and list array
 D CLEAN^VALM10    ;Clears screen before display of list
 ;GET/SETUP THE REVERSE VIDEO FOR THE STATUS FIELD
 S X="IORVON;IORVOFF;IOIL;IOSTBM;IOSC;IORC;IOEDEOP;IOINHI;IOINORM;IOUON;IOUOFF" D ENDR^%ZISS
RBLD S BLRALNUM="",BLRADT="",BLRALINE=0,BLRALVAR=""
 S TYP=""
 F  S TYP=$O(^TMP("BLRA",$J,TYP)) Q:TYP=""  D
 . S BLRADT=""
 . F  S BLRADT=$O(^TMP("BLRA",$J,TYP,BLRADT)) Q:BLRADT=""  D
 .. S BLRAP=""
 .. F  S BLRAP=$O(^TMP("BLRA",$J,TYP,BLRADT,BLRAP)) Q:BLRAP=""  D
 ... ;----- BEGIN IHS MODIFICATIONS LR*5.2*1018
 ... S BLRSS=""
 ... F  S BLRSS=$O(^TMP("BLRA",$J,TYP,BLRADT,BLRAP,BLRSS)) Q:BLRSS=""  D
 .... ;----- END IHS MODIFICATIONS
 ....S BLRALINE=BLRALINE+1,BLRALVAR=""
 ....S BLRADATA=$G(^TMP("BLRA",$J,TYP,BLRADT,BLRAP,BLRSS))
 ....S PID=$P($G(^TMP("BLRA",$J,TYP,BLRADT,BLRAP,BLRSS)),U,4)
 ....S DATE=$P($G(^TMP("BLRA",$J,TYP,BLRADT,BLRAP,BLRSS)),U,3)
 ....S DATE=$$FMTE^XLFDT(DATE,2)
 ....S PNAM=$$GET1^DIQ(200,PID,.01,"E")
 ....S BLRALVAR=$$SETFLD^VALM1(BLRALINE,BLRALVAR,"LINE NUMBER")
 ....S BLRALVAR=$$SETFLD^VALM1($P(BLRADATA,U,1),BLRALVAR,"ACC#")
 ....S BLRALVAR=$$SETFLD^VALM1($P(BLRADATA,U,2),BLRALVAR,"PATIENT")
 ....S BLRALVAR=$$SETFLD^VALM1(DATE,BLRALVAR,"DATE")
 ....S BLRALVAR=$$SETFLD^VALM1(PNAM,BLRALVAR,"PROVIDER")
 ....S BLRALVAR=$$SETFLD^VALM1($P(BLRADATA,U,5),BLRALVAR,"STATUS")
 ....S BLRALVAR=$$SETFLD^VALM1($P(BLRADATA,U,6),BLRALVAR,"COMPLETE")
 ....D SET^VALM10(BLRALINE,BLRALVAR)
 ....S $P(^TMP("BLRA",$J,TYP,BLRADT,BLRAP,BLRSS),U,7)=BLRALINE
 ....I $P(BLRADATA,U,5)="ABN" D CNTRL^VALM10(BLRALINE,63,3,IORVON,IORVOFF)
 .... I $P(BLRADATA,U,5)="CRIT" D CNTRL^VALM10(BLRALINE,63,4,IORVON,IORVOFF)
 S VALMCNT=BLRALINE   ;IF LINE CNTER IS NULL THEN THERE WERE NO RESULTS
 I BLRALINE=0 S VALMSG="No Lab Results to Review at this time"
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 K ^TMP("BLRALST1",$J),^TMP("BLRA",$J)
 S VALMBCK=""
 Q
 ;
EXPND ; -- expand code
 Q
 ;