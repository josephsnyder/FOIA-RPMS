BSDWKR2 ; IHS/ANMC/LJF - WORKLOAD LISTING ;  [ 04/12/2004  3:24 PM ]
 ;;5.3;PIMS;**1007**;APR 26, 2002
 ;
ASK ; -- ask user questions
 NEW VAUTC,VAUTD,POP,BSDBD,BSDED,BSDSUB,BSDTT
 ;
 S BSDSUB=$$READ^BDGF("SO^C:Clinic;P:Principal Clinic;V:Provider;T:Team","Subtotal Report by","","^D HELP1^BSDWKR1")
 Q:BSDSUB=""  Q:BSDSUB=U
 ;
 ; get clinic arrays based on subtotal category
 I (BSDSUB="C")!(BSDSUB="P") D CLINIC^BSDU(2) Q:$D(BSDQ)
 I (BSDSUB="V")!(BSDSUB="T") D PCASK^BSDU(2,BSDSUB) Q:$D(BSDQ)
 ;
 S BSDBD=$$READ^BDGF("DO^::EX","Select First Date to Search") Q:'BSDBD
 S BSDED=$$READ^BDGF("DO^"_BSDBD_"::EX","Select Last Date to Search") Q:'BSDED  ;cmi/anch/maw 3/16/2007 added for end date cannot be before begin date patch 1007
 ;
 S Y=$$BROWSE^BDGF Q:"PB"'[Y  I Y="B" D EN Q  ;browse in list mgr mode
 D ZIS^BDGF("PQ","START^BSDWKR2","WORKLOAD LISTINGS","BSDSUB;BSDBD;BSDED;VAUTC*;VAUTD*")
 Q
 ;
START ;EP; -- re-entry for printing to paper
 D INIT,PRINT Q
 ;
EN ; -- main entry point for BSDRM WORKLOAD LIST
 NEW VALMCNT D TERM^VALM0,CLEAR^VALM1
 D EN^VALM("BSDRM WORKLOAD LIST")
 D CLEAR^VALM1
 Q
 ;
HDR ; -- header code
 S VALMHDR(1)=$$SP(18)_$$CONF^BSDU
 S VALMHDR(2)=$$SP(25)_"Appointments by Clinic and Date"
 S VALMHDR(3)=$$SP(20)_"(does not include no-shows or cancellations)"
 S VALMHDR(4)=$$SP(22)_"For dates: "_$$RANGE^BDGF(BSDBD,BSDED)
 Q
 ;
INIT ; -- init variables and list array
 S VALMCNT=0 K ^TMP("BSDWKR2",$J),^TMP("BSD",$J)
 NEW BSDAR S BSDAR=$S(VAUTC:"^SC",1:"VAUTC")
 ;
 ; -- loop by clinic
 NEW CLN,NAME,SUB,APPT,APPN,PAT,STATUS,TYPE,END,LINE
 S CLN=0 F  S CLN=$O(@BSDAR@(CLN)) Q:'CLN  D
 . Q:$D(^SC("AIHSPC",CLN))               ;quit if principal clinic
 . S NAME=$$GET1^DIQ(44,CLN,.01)         ;set clinic's name
 . S SUB=$$SUB1^BSDWKR1(CLN,NAME)        ;get subcategory for clinic
 . ;
 . ; -- then by appt date (within range)
 . S APPT=BSDBD,END=BSDED+.2400
 . F  S APPT=$O(^SC(CLN,"S",APPT)) Q:'APPT!(APPT>END)  D
 .. ;
 .. ; -- then find appts to count
 .. S APPN=0
 .. F  S APPN=$O(^SC(CLN,"S",APPT,1,APPN)) Q:'APPN  D
 ... S PAT=+^SC(CLN,"S",APPT,1,APPN,0)                ;patient ien
 ... S STATUS=$$VAL^XBDIQ1(2.98,PAT_","_APPT,100)     ;current status
 ... Q:STATUS["NO-SHOW"  Q:STATUS["CANCEL"  Q:STATUS="FUTURE"
 ... Q:STATUS="NON-COUNT"  Q:STATUS="DELETED"
 ... S TYPE=$$TYPE(CLN,APPT,APPN,PAT,STATUS)          ;type of appt
 ... ;
 ... ; put appts into display array
 ... S LINE=$$PAD($$FMTE^XLFDT(APPT),22)                   ;appt date
 ... S LINE=$$PAD(LINE_TYPE,33)                            ;appt type
 ... S LINE=LINE_$J($$HRCN^BDGF2(PAT,$$FAC^BSDU(CLN)),7)   ;chart#
 ... S LINE=$$PAD(LINE,43)_$$GET1^DIQ(2,PAT,.02,"I")       ;sex
 ... S LINE=$$PAD(LINE,48)_$$GET1^DIQ(2,PAT,.033)          ;age
 ... S LINE=$$PAD(LINE,57)_STATUS                          ;appt status
 ... S ^TMP("BSD",$J,SUB,NAME,APPT)=LINE  ;sort by category,clinic,date
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
TYPE(C,D,N,P,S) ; return type of appt
 ; returns sched, same day, walk-in, overbook, inpt
 I S["INPAT" Q "Inpatient"
 I $G(^SC(C,"S",D,1,N,"OB"))="O" Q "Overbook"
 NEW X S X=$$VALI^XBDIQ1(2.98,P_","_D,9) I X=4 Q "Walkin"
 I X=3,(D\1)=($P($G(^DPT(P,"S",D,0)),U,19)\1) Q "Same Day"
 I X=3 Q "Scheduled"
 Q "??"    ;error in case one slips thru
 ;
SET(LINE,NUM) ; set line into display array
 S NUM=NUM+1
 S ^TMP("BSDWKR2",$J,NUM,0)=LINE
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 K ^TMP("BSDWKR2",$J)
 Q
 ;
EXPND ; -- expand code
 Q
 ;
PRINT ; print report to paper
 U IO D HDG
 NEW LINE
 S LINE=0 F  S LINE=$O(^TMP("BSDWKR2",$J,LINE)) Q:'LINE  D
 . I $Y>(IOSL-4) D HDG
 . W !,^TMP("BSDWKR2",$J,LINE,0)
 D ^%ZISC,EXIT
 Q
 ;
HDG ; heading for paper report
 D HDR W @IOF,?30,"Workload Listings"
 NEW I F I=1:1 Q:'$D(VALMHDR(I))  W !,VALMHDR(I)
 W !,$$REPEAT^XLFSTR("-",80)
 W !,"Appt Date",?22,"Type",?33,"Chart #",?43,"Sex",?48,"Age",?57,"Status"
 W !,$$REPEAT^XLFSTR("=",80)
 Q
 ;
PAD(D,L) ;EP -- SUBRTN to pad length of data
 ; -- D=data L=length
 Q $E(D_$$REPEAT^XLFSTR(" ",L),1,L)
 ;
SP(N) ; -- SUBRTN to pad N number of spaces
 Q $$PAD(" ",N)
