IBDFPE ;MAF/ALB - ENCOUNTER FORMS QUEUEING PARAMETERS DISPLAY 1 31 94
 ;;3.0;AUTOMATED INFO COLLECTION SYS;;APR 24, 1997
EN ; -- main entry point for IBDF EF QUEUE PARMS
 D EN^VALM("IBDF EF QUEUE PARMS")
 Q
 ;
HDR ; -- header code
 S VALMHDR(1)="This is the list of Print Manager's Queuing Parameters (PMQP) for your facility"
 S VALMHDR(2)="You may enter new ones or edit those already set up."
 Q
 ;
 ;
INIT ; -- init variables and list array
 N IBFASTXT
 S (IBDCAT,IBDNME,IBDTYPE,VALMCNT,IBDCNT,IBDCNT1,IBFASTXT)=0
 K ^TMP("IBDRPT",$J),^TMP("IBDIDX",$J)
 F IBDNUM=0:0 S IBDNUM=$O(^IBD(357.09,IBDNUM)) Q:'IBDNUM  F IBDNAME=0:0 S IBDNME=$O(^IBD(357.09,IBDNUM,"Q","B",IBDNME)) Q:IBDNME=""  F IBDIFN=0:0 S IBDIFN=$O(^IBD(357.09,IBDNUM,"Q","B",IBDNME,IBDIFN)) Q:IBDIFN']""  D SET1
 I '$D(^TMP("IBDRPT",$J)) D NUL
 Q
 ;
 ;
SET1 ; -- Set up List
 S IBDNODE=$G(^IBD(357.09,1,"Q",IBDIFN,0))
 S IBDCNT1=IBDCNT1+1
 S X="",X=$$SETSTR^VALM1(IBDCNT1_")",X,1,3)
 S X=$$SETSTR^VALM1($P(IBDNODE,"^",1),X,30,40) D TMP,CNTRL^VALM10(VALMCNT,1,80,IOINHI,IOINORM,0)
 S IBDCAT($P(IBDNODE,"^",1))=IBDCNT,IBDTYPE(IBDCNT1)=IBDIFN_"^"_IBDNUM
 S X="",X=$$SETSTR^VALM1($$LOWER^VALM1("  STARTING DATE/TIME: "),X,1,22)
 S IBDVAL=$S($P(IBDNODE,"^",2)]"":$$FDTTM^VALM1($P(IBDNODE,"^",2)),1:"")
 S X=$$SETSTR^VALM1(IBDVAL,X,23,17)
 S IBDVAL=$S($P(IBDNODE,"^",7)]"":$P(IBDNODE,"^",7),1:"")
 S X=$$SETSTR^VALM1($$LOWER^VALM1("DAYS TO PRINT AHEAD: "),X,40,21)
 S X=$$SETSTR^VALM1($J(IBDVAL,5),X,65,5) D TMP
 S X="",X=$$SETSTR^VALM1($$LOWER^VALM1("    ENDING DATE/TIME: "),X,1,22)
 S IBDVAL=$S($P(IBDNODE,"^",3)]"":$$FDTTM^VALM1($P(IBDNODE,"^",3)),1:"")
 S X=$$SETSTR^VALM1(IBDVAL,X,23,17)
 S IBDVAL=$P(IBDNODE,"^",5)
 S X=$$SETSTR^VALM1($$LOWER^VALM1("       ADD ONS ONLY: "),X,40,21)
 S X=$$SETSTR^VALM1($J($S(IBDVAL=1:"YES",1:"NO"),5),X,65,5) D TMP
 S X="",X=$$SETSTR^VALM1($$LOWER^VALM1("       CLINIC GROUPS: "),X,1,22)
 S IBDVAL=$P($G(^IBD(357.99,+$P(IBDNODE,"^",6),0)),"^",1)
 S X=$$SETSTR^VALM1(IBDVAL,X,23,17)
 S X=$$SETSTR^VALM1($$LOWER^VALM1("  LAST DATE PRINTED: "),X,40,21)
 S IBDVAL=$S($P(IBDNODE,"^",12)]"":$$FDTTM^VALM1($P(IBDNODE,"^",12)),1:"")
 S X=$$SETSTR^VALM1(IBDVAL,X,62,17) D TMP
 S IBDVAL=$P(IBDNODE,"^",4)
 S IBDVAL=$$LOWER^VALM1($S(IBDVAL=2:"DIV/TERM DIG",IBDVAL=3:"DIV/CLIN/TERM DIG",1:"DIV/CLIN/PATIENT"))
 S X="",X=$$SETSTR^VALM1($$LOWER^VALM1("             SORT BY: "),X,1,22)
 S X=$$SETSTR^VALM1(IBDVAL,X,23,18)
 S IBDVAL=$S($P(IBDNODE,"^",10)]"":$P(IBDNODE,"^",10),1:"")
 S X=$$SETSTR^VALM1($$LOWER^VALM1("     PRINT PRIORITY: "),X,40,21)
 S X=$$SETSTR^VALM1($J(IBDVAL,5),X,65,5) D TMP
 S IBDVAL=$P(IBDNODE,"^",8)
 S IBDVAL=$$LOWER^VALM1($S(IBDVAL="R":"RUN REGARDLESS",IBDVAL="I":"IGNORE HOLIDAYS/WEEKENDS",IBDVAL="H":"IGNORE HOLIDAYS",IBDVAL="W":"IGNORE WEEKENDS",IBDVAL="N":"NOT ACTIVE",1:"RUN TODAY"))
 S X="",X=$$SETSTR^VALM1($$LOWER^VALM1("SPECIAL INSTRUCTIONS: "),X,1,22)
 S X=$$SETSTR^VALM1(IBDVAL,X,23,30)
 S X=$$SETSTR^VALM1($$LOWER^VALM1("DEVICE/TIME QUEUED: "),X,41,21)
 S IBDVAL=$$LOWER^VALM1($E($P(IBDNODE,"^",9),1,12))_$S($P(IBDNODE,"^",13)="0000":" @",$P(IBDNODE,"^",13):" @",1:"")_$S($P(IBDNODE,"^",13)="0000":"0000",$P(IBDNODE,"^",13):$P(IBDNODE,"^",13),1:"")
 S X=$$SETSTR^VALM1(IBDVAL,X,62,18) D TMP
 S X="",X=$$SETSTR^VALM1(X,X,1,80) D TMP
 Q
 ;
 ;
TMP ; -- Set up Array
 S IBDCNT=IBDCNT+1,VALMCNT=VALMCNT+1
 S ^TMP("IBDRPT",$J,IBDCNT,0)=X,^TMP("IBDRPT",$J,"IDX",VALMCNT,IBDCNT1)=""
 S ^TMP("IBDIDX",$J,IBDCNT)=VALMCNT_"^"_IBDIFN
 Q
 ;
 ;
JUMP ; -- Jump to a Specific Parameter Set
 D FULL^VALM1
 I $D(XQORNOD(0)),$P(XQORNOD(0),"^",4)]"" S X=$P(XQORNOD(0),"^",4) S X=$P(X,"=",2) I X]"" D:X?1.6N JSEL S DA(1)=1,DIC="^IBD(357.09,"_DA(1)_","_"""Q"""_",",DIC(0)="QEZ" D ^DIC G:Y<0 JMP S Y=+Y D JUMP1 Q
JMP S DA(1)=1,DIC="^IBD(357.09,"_DA(1)_","_"""Q"""_",",DIC(0)="AEMN",DIC("A")="Select Parameter Group you wish to move to: " D ^DIC K DIC
 I X["^" S VALMBG=1,VALMBCK="R" Q
JUMP1 I Y<0 G JUMP
 N IBDXCAT
 S IBDXCAT=$P(^IBD(357.09,DA(1),"Q",+Y,0),"^",1)
 I '$D(IBDCAT(IBDXCAT)) W !!,"There is no data listed for this Parameter Group" G JMP
 S VALMBG=IBDCAT(IBDXCAT) S VALMBCK="R" K DA(1) Q
 Q
 ;
 ;
JSEL ; -- Convert number selected to name
 S IBDVALM=X,X=$S($D(IBDTYPE(IBDVALM)):$P(IBDTYPE(IBDVALM),"^",1),1:"") I X]"" S DA(1)=1,X=$P(^IBD(357.09,DA(1),"Q",X,0),"^",1)
 Q
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
 ;
EXIT ; -- exit code
 K IBDCAT,IBDNME,IBDTYPE,VALMCNT,IBDCNT,IBDCNT1,IBDNAME,IBDNUM,IBDNME,IBDIFN,IBDVAL,IBDNODE,IBFASTXT
 K ^TMP("IBDRPT",$J),^TMP("IBDIDX",$J)
 Q
 ;
NUL ; -- NULL MESSAGE
 S ^TMP("IBDRPT",$J,1,0)=" ",^TMP("IBDRPT",$J,2,0)="There are no PARAMETER GROUPS listed.",^TMP("IBDIDX",$J,1)=1,^TMP("IBDIDX",$J,2)=2
 Q
