BSDAMR4 ;cmi/anch/maw - BSD Appointment Management Reports Cancelled Appointment Listing 2/12/2007 1:22:04 PM
 ;;5.3;PIMS;**1007**;DEC 01, 2006
 ;
 ;cmi/anch/maw new report for PATCH 1007 item 1007.19
 ;
ASK ; -- ask user questions
 NEW VAUTC,VAUTD,POP,BSDBD,BSDED,BSDSUB,BSDTT,BSDSTAT,BSDSTE
 D EXIT
 ;
 S BSDSUB="Clinic"
 ;
 ; get clinic arrays based on subtotal category
 D CLINIC^BSDU(2) Q:$D(BSDQ)
 ;
 S BSDBD=$$READ^BDGF("DO^::EX","Select First Date to Search") Q:'BSDBD
 S BSDED=$$READ^BDGF("DO^::EX","Select Last Date to Search") Q:'BSDED
 ;
 S BSDSTAT=$$READ^BDGF("S^C:Clinic;P:Patient","Cancelled By","Clinic")
 I BSDSTAT="C" S BSDSTAT("CA")="",BSDSTAT("PCA")="",BSDSTE="Clinic"
 I BSDSTAT="P" S BSDSTAT("C")="",BSDSTAT("PC")="",BSDSTE="Patient"
 ;
 ;
 S Y=$$BROWSE^BDGF Q:"PB"'[Y  I Y="B" D EN Q  ;browse in list mgr mode
 D ZIS^BDGF("PQ","START^BSDAMR4","APPT CAN","BSDSUB;BSDBD;BSDED;BSDSTE;.BSDSTAT;VAUTC*;VAUTD*")
 Q
 ;
START ;EP; -- re-entry for printing to paper
 D INIT,PRINT Q
 ;
EN ; -- main entry point for BSDRM APPT MGT NO ACTION
 NEW VALMCNT D TERM^VALM0,CLEAR^VALM1
 D EN^VALM("BSDRM APPT MGT CAN")
 D CLEAR^VALM1
 Q
 ;
HDR ; -- header code
 S VALMHDR(1)=$$SP(15)_$$CONF^BSDU
 S VALMHDR(2)=$$SP(20)_"For dates: "_$$RANGE^BDGF(BSDBD,BSDED)
 S VALMHDR(3)=$$SP(30)_"Cancelled by: "_BSDSTE
 Q
 ;
INIT ; -- init variables and list array
 S VALMCNT=0 K ^TMP("BSDAMR4",$J),^TMP("BSD",$J)
 NEW BSDAR S BSDAR=$S(VAUTC:"^SC",1:"VAUTC")
 ;
 ; -- loop by clinic
 NEW BSDDFN,CLN,NAME,SUB,APPT,PAT,END,LINE,BSDREAI,BSDCANR
 S BSDDFN=0
 F  S BSDDFN=$O(^DPT(BSDDFN)) Q:'BSDDFN  D
 . N BSDIEN
 . S BSDIEN=0 F  S BSDIEN=$O(^DPT(BSDDFN,"S",BSDIEN)) Q:BSDIEN=""  D
 .. Q:BSDIEN<(BSDBD-.0001)  ;quit if date is before selected
 .. Q:BSDIEN>(BSDED+.9999)  ;quit if date is after selected
 .. S CLN=$P($G(^DPT(BSDDFN,"S",BSDIEN,0)),U)  ;get clinic ien
 .. Q:'$D(@BSDAR@(CLN))                  ;quit if clinic wasn't picked
 .. Q:$D(^SC("AIHSPC",CLN))               ;quit if principal clinic
 .. N BSDST
 .. S BSDST=$P($G(^DPT(BSDDFN,"S",BSDIEN,0)),U,2)
 .. Q:$G(BSDST)=""
 .. Q:'$D(BSDSTAT(BSDST))               ;quit if they do not select the type of cancellation by clinic or patient
 .. S NAME=$$GET1^DIQ(44,CLN,.01)         ;set clinic's name
 .. S SUB=$$SUB1^BSDWKR1(CLN,NAME)        ;get subcategory for clinic
 .. I '$G(VAUTD) Q:'$D(VAUTD(+$P($G(^SC(CLN,0)),U,15)))  ;cmi/anch/maw 11/22/06 added to screen on division item 1007.17 patch 1007
 .. S BSDREAI=$P($G(^DPT(BSDDFN,"S",BSDIEN,0)),U,15)
 .. I $G(BSDREAI) S BSDREA=$$GET1^DIQ(409.2,BSDREAI,.01)
 .. S BSDCANR=$G(^DPT(BSDDFN,"S",BSDIEN,"R"))
 .. I BSDCANR]"" S BSDCANR="("_BSDCANR_")"
 .. S PAT=BSDDFN
 .. ; put appts into display array
 .. S LINE=$$PAD($E($$GET1^DIQ(2,PAT,.01),1,18),18)          ;patient name
 .. S LINE=LINE_$J($$HRCN^BDGF2(PAT,$$FAC^BSDU(CLN)),7)   ;chart#
 .. S LINE=$$PAD(LINE,27)_$$GET1^DIQ(2,PAT,.131)       ;phone
 .. S LINE=$$PAD(LINE,42)_$$FMTE^XLFDT(BSDIEN)            ;appt date
 .. S LINE=$$PAD(LINE,62)_$S($G(BSDREA)]"":BSDREA_" "_BSDCANR,1:"")         ;reason for appoinTment
 .. S ^TMP("BSD",$J,SUB,NAME,BSDIEN)=LINE  ;sort by category,clinic,date
 ;
 ; put sorted list into display array
 NEW S1,S2,S3
 S S1=0 F  S S1=$O(^TMP("BSD",$J,S1)) Q:S1=""  D
 . D SET(S1,.VALMCNT)
 . S S2=0 F  S S2=$O(^TMP("BSD",$J,S1,S2)) Q:S2=""  D
 .. I S1'=S2 D SET($$SP(2)_S2,.VALMCNT)
 .. S S3=0 F  S S3=$O(^TMP("BSD",$J,S1,S2,S3)) Q:S3=""  D
 ... D SET(^TMP("BSD",$J,S1,S2,S3),.VALMCNT)
 .. I S1'=S2 D SET("",.VALMCNT)
 . D SET("",.VALMCNT)
 ;
 K ^TMP("BSD",$J)
 Q
 ;
SET(LINE,NUM) ; set line into display array
 S NUM=NUM+1
 S ^TMP("BSDAMR4",$J,NUM,0)=LINE
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 K ^TMP("BSDAMR2",$J)
 Q
 ;
EXPND ; -- expand code
 Q
 ;
PRINT ; print report to paper
 U IO D HDG
 NEW X S X=0 F  S X=$O(^TMP("BSDAMR2",$J,X)) Q:'X  D
 . I $Y>(IOSL-4) D HDG
 . W !,^TMP("BSDAMR2",$J,X,0)
 D ^%ZISC,EXIT
 Q
 ;
HDG ; heading for paper report
 D HDR W @IOF,?33,"Cancelled Appointment Listing"
 F I=1:1 Q:'$D(VALMHDR(I))  W !,VALMHDR(I)
 W !,$$REPEAT^XLFSTR("-",80)
 W !,"Patient Name",?20,"HRCN",?28,"Phone",?43,"Appt Date",?63,"Reason"
 W !,$$REPEAT^XLFSTR("=",80)
 Q
 ;
PAD(D,L) ;EP -- SUBRTN to pad length of data
 ; -- D=data L=length
 Q $E(D_$$REPEAT^XLFSTR(" ",L),1,L)
 ;
SP(N) ; -- SUBRTN to pad N number of spaces
 Q $$PAD(" ",N)
