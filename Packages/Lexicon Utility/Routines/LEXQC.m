LEXQC ;ISL/KER - Query - Changes - Extract ;04/21/2014
 ;;2.0;LEXICON UTILITY;**62,80**;Sep 23, 1996;Build 10
 ;               
 ; Global Variables
 ;    ^DIC(81.3,          ICR   4492
 ;    ^ICPT(              ICR   4489
 ;    ^ICPT(0)            ICR   4489
 ;    ^TMP("LEXQC")       SACC 2.3.2.5.1
 ;    ^TMP("LEXQCO")      SACC 2.3.2.5.1
 ;               
 ; External References
 ;    HOME^%ZIS           ICR  10086
 ;    $$ROOT^ICDEX        ICR   5747
 ;    $$FMADD^XLFDT       ICR  10103
 ;               
EN ; Main Entry Point
 N LEXENV S LEXENV=$$EV^LEXQM Q:+LEXENV'>0
 K ^TMP("LEXQCO",$J),^TMP("LEXQC",$J)
 N LEXCDT,LEXEDT,LEXEXIT S LEXCDT=$$CSD^LEXQM Q:'$L(LEXCDT)
 Q:+($G(LEXEXIT))>0  S LEXEDT=$P(LEXCDT,"^",1),LEXCDT=$P(LEXCDT,"^",2)
 Q:LEXCDT'?7N  D TASK
 Q
TASK ; Task Re-indexing
 N X,Y,ZTSK,ZTDESC,ZTDTH,ZTIO,ZTRTN,ZTSAVE,ZTQUEUED,ZTREQ
 S LEXCDT=+($G(LEXCDT)) Q:LEXCDT'?7N  S LEXEDT=$G(LEXEDT) Q:'$L(LEXEDT)
 S ZTRTN="SEARCH^LEXQC",ZTSAVE("LEXCDT")="",ZTIO="",ZTDTH=$H
 S ZTDESC="Search for CSV Changes on "_LEXEDT
 D @ZTRTN D HOME^%ZIS S X=+($G(ZTSK))
 W:+X>0 !!,"   A search for CSV changes on ",LEXEDT
 W:+X>0 " has been queued (task ",+X,")",!
 K Y,ZTSK,ZTDESC,ZTDTH,ZTIO,ZTRTN
 Q
SEARCH ; Search for CSV changes
 S:$D(ZTQUEUED) ZTREQ="@" S LEXCDT=$G(LEXCDT) Q:LEXCDT'?7N
 N LEXBDT,LEXADT,LEXRT,LEXQTOT,LEXQLEN,LEXQSTR
 S LEXBDT=$$FMADD^XLFDT(LEXCDT,-1),LEXADT=$$FMADD^XLFDT(DT,+1)
 Q:LEXBDT'?7N  Q:LEXADT'?7N  K ^TMP("LEXQC",$J) W !!,"   "
 S LEXQTOT=$P($G(^ICPT(0)),"^",4)
 S LEXRT=$$ROOT^ICDEX(80) S LEXQTOT=LEXQTOT+$P($G(@(LEXRT_"0)")),"^",4)
 S LEXRT=$$ROOT^ICDEX(80.1) S LEXQTOT=LEXQTOT+$P($G(@(LEXRT_"0)")),"^",4)
 S LEXQTOT=LEXQTOT+$P($G(^DIC(81.3,0)),"^",4)
 S LEXQLEN=68,LEXQSTR=+(LEXQTOT\LEXQLEN) S:LEXQSTR=0 LEXQSTR=1
 D D09^LEXQC3,P09^LEXQC3,D10^LEXQC3,P10^LEXQC3,CPT^LEXQC4,MOD^LEXQC4
 D EN^LEXQC2 D:$D(^TMP("LEXQCO",$J)) DSP^LEXQO("LEXQCO")
 Q
