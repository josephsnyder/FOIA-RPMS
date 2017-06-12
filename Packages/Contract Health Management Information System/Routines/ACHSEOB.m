ACHSEOB ;IHS/ITSC/PMF - PROCESS EOBRS (1/6) - READ IN, PROCESS ; 22 Feb 2016  11:50 AM
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**5,6,21,22,23**;JUNE 11, 2001;Build 37
 ;IHS/SET/GTH ACHS*3.1*5 12/06/2002 - Remove $ETRAP; direct ref to ^%ZIS(1.
 ;IHS/SET/JVK ACHS*3.1*6 4/9/2003 - CHECK FOR ACTIVE CHS JOBS
 ;Why do some of our errors record and others do not?  The
 ;ACHS routines do not set $ZT or $ETRAP, nor do our options,
 ;but sometimes the error trapping program ^%ZTER gets run
 ;and sometimes not.
 ;
 ;Until now.  This is the first set of $etrap within these
 ;routines.    2/28/01    pmf
 ;S $ETRAP="D ERR^ZU Q:$QUIT 0 Q";IHS/SET/GTH ACHS*3.1*5 12/06/2002
 ;
 I $G(ACHSISAO) G A3        ;IF IS AREA OFFICE SKIP REGISTER CHECK
 ;
 I $D(^ACHS(9,DUZ(2),"FY",ACHSCFY,"W",+ACHSFYWK(DUZ(2),ACHSCFY),0)),+$P(^(0),U,2)>0 W *7,!?10,"CHS Registers are Closed -- EOBR Posting CANCELLED",! D RTRN^ACHS G ENDX
 ;
A3 ;
 ;IF IS AREA OFFICE USE 'PRINT CANCEL DOCUMENTS'
 ;OTHERWISE USE 'PRINT EOBRS'
 ;ACHS*3.1*22  FACILITY PAR DOES NOT WORK SHOULD ALWAYS BE NO
 ;S ACHSPAR=$S(ACHSISAO=0:$$PARM^ACHS(2,14),ACHSISAO=1:$$AOP^ACHS(2,6))
 S ACHSPAR=$S(ACHSISAO=0:"N",ACHSISAO=1:$$AOP^ACHS(2,6))
 ;
A3A ;
 W !!,"Your PRINT EOBR parameter is: ",ACHSPAR,"."
 I ACHSISAO,ACHSPAR="Y" W ! S %ZIS("A")="Print EOBRs on what device:" D ^%ZIS I POP D HOME^%ZIS G ENDX
 ;
 S ACHSEOIO=IO
 ;
 ;IF NOT IS AREA OFFICE RESET TO 'UPDATE DOCUMENT FROM EOBR'
 S ACHSPAR=$S('ACHSISAO:$$PARM^ACHS(2,15),ACHSISAO=1:"")
 I 'ACHSISAO W !!,"Your UPDATE DOCUMENT FROM EOBR parameter is :  ",ACHSPAR,".",!  ;ACHS*3.1*21 ADDED TEST FOR AREA
 ;
 ;GET THE LAST EOBR FILE SEQ. NUMBER
 S ACHSFCSQ=+$P($G(^ACHSF(DUZ(2),2)),U,21)
 ;
S0 ;
 ;IF THERE IS A WORK GLOBAL THERE WARN
 I '$O(^ACHSEOBR("0"))!('ACHSISAO) G S1
 W *7,!!,"The '^ACHSEOBR(' work global is about to be killed.",!!,"Are you sure previously processed EOBRs were sent to your facilities",!,"via the EOBR OUT Area option?"
 S Y=$$DIR^XBDIR("Y","","N")
 ;ACHS*3.1*22; REMOVED ACHSAEND="" FRM NEXT LINE
 I $D(DUOUT)!$D(DTOUT)!('Y) S ACHSISAC=1 D ENDX Q  ;ACHS*3.1*21 ADDED ACHSISAC AND ACHSAEND
S1 ;
 W !
 ;
 ;IF IS AREA OFFICE GO ON TO PRESENT MENU OF WHAT REPORTS YOU WANT
 I ACHSISAO D REPORT^ACHSEOB0 G ENDX:$D(DUOUT)!$D(DTOUT)!$D(DIRUT),S2
 ;
 S %ZIS="OPQ",%ZIS("A")="SELECT PRINTER FOR PROCESSING REPORT AND EOBR'S:"   ;ACHS*3.1*21 ADDED "AND EOBR'S"
 D ^%ZIS
 S:$D(IO("Q")) ACHSIO("Q")=IO("Q")
 I POP D HOME^%ZIS G ENDX
 S ACHSEOIO=IO   ;ACHS*3.1*21
 ;I ^%ZIS(1,IOS,"TYPE")="HFS",$L($G(IOPAR)) S ZTIO("IOPAR")=IOPAR;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 I $$GET1^DIQ(3.5,IOS,2)="HFS",$L($G(IOPAR)) S ZTIO("IOPAR")=IOPAR ;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 S ACHSERPT="D",ZTIO=ION_";"_IOST_";"_IOM_";"_IOSL
 D HOME^%ZIS
 U IO
 ;
S2 ;
 I 'ACHSISAO S ACHSMEDY="F",ACHSMEDA="EB"_$$ASF^ACHS(DUZ(2))_"." G SUF
 S ACHSMEDY="F",ACHSAEND=""
 ;
 D ^ACHSEOBS                       ;ALLOW SELECTION OF EOBR FILE TO
                                   ;PROCESS FOR AREA
 G ABEND:ACHSAEND=1,ENDX:ACHSAEND=2
 K ACHSAEND
 G CONT1
 ;
SUF ;
 D FACSRCH^ACHSEOBB          ;GETS LISTING OF FILES AVAILABLE THIS SITE
 U IO(0)
 I '$O(ACHSUFLS(0)) W !!,*7,"No EOBR Files Available for Processing",! D RTRN^ACHS G ENDX
 S Y=$$DIR^XBDIR("NO^1:"_$O(ACHSUFLS(9999),-1)_":3","Enter the Number of the Facility EOBR File you want to Process","","","","",1)
 G ENDX:$D(DUOUT)!($D(DIRUT))!('Y)
 ;CHECK LAST EOBR FILE SEQ. NUMBER
 S ACHSEOSQ=+$$PARM^ACHS(2,21)
 ;
 I +ACHSEOSQ=0 G SEQOK
 ;
 ;RESET SEQ #  ;ACHS*3.1*21 SET TO "" INSTEAD OF 0 IN NEXT LINE
 I +ACHSEOSQ=999 S $P(^ACHSF(DUZ(2),2),U,21)=""
 ;
 ;LAST EOBR FILE SEQ. NUMBER MUST BE ONE LESS THAN THAT FOUND IN THE
 ;FILE TO BE PROCESSED. LOOK AT SECOND LINE OF unix file EB*.JJJ P^2
 ;ACHS*3.1*23 MULT CHANGE IN NXT SECTION TO ALLOW REPROCESSING OF FILE
 S ACHSREP=0
 I ACHSEOSQ+1=+$P(ACHSUFLS(ACHSK(Y))," ",3) G SEQOK
 U IO(0)
 ;W !!,*7,$G(IORVON),"Sequence numbers are out of sequence!",$G(IORVOFF)
 W !!,*7,$G(IORVON),"FILE selected is out of sequence!",$G(IORVOFF)
 ;ACHS*3.1*21 REMOVED REF TO UNIX
 W !!,"Current EOBR file selected: "
 W $P(ACHSUFLS(ACHSK(Y))," ")," file is ",+$P(ACHSUFLS(ACHSK(Y))," ",3)
 ;W !!,"Last sequence number found in CHS FACILITY file is ",ACHSEOSQ
 W !!,"Last sequence number processed in CHS FACILITY file is ",ACHSEOSQ
 ;W !,"If you wish to re-process this global"
 ;W !,"call the Help desk at 505-248-4371"
 W !!
 I +$P(ACHSUFLS(ACHSK(Y))," ",3)<(ACHSEOSQ+1) D  G:+ACHSREP>0 CONT
 .W !,"This file has already been processed."
 .NEW Y S ACHSREP=$$DIR^XBDIR("Y","Do you wish to reprocess the file","N") NEW
 ;ACHS*3.1*23 END CHANGES
 G ENDX:$$DIR^XBDIR("E"),SUF
SEQOK ;
 S ACHSEOBD=$P(ACHSUFLS(ACHSK(Y))," ",2)
 S ACHSSEQN=+$P(ACHSUFLS(ACHSK(Y))," ",3)
SEQOK1 ;
 ;CLEAR THIS X-REF DATE OUT IF YOU WANT TO REPROCESS A FILE
 ;ALSO SET THE SEQUENCE NUMBER AT ^ACHSF(DUZ(2),2),U,21) TO -1
 ;OF THE ONE FOUND IN THE FILE ITSELF
 ;ACHS*3.1*22 ADDED E TEST FOR CONT WITH PROC THE FI-ICD-9 FILE
 ;I '$D(^ACHSF(DUZ(2),17,"B",ACHSEOBD)) G CONT
 I '$D(^ACHSF(DUZ(2),17,"B",ACHSEOBD)) G CONT
 E  G:ACHSUFLS(ACHSK(Y))["ICD" CONT
 U IO(0)
 W *7,!
 I $$DIR^XBDIR("E","FI EOBR FILE has already been PROCESSED -- ENTER <RETURN> to Continue")
 D CLOSEALL^ACHS
 G SUF
 ;
CONT ;
 ;
 S ACHSMEDA=$P(ACHSUFLS(ACHSK(Y))," ",1)
 S Y=$$DIR^XBDIR("Y","Process file '"_$$IM^ACHS_ACHSMEDA_"' (Y/N)","N","","","",1)
 G ENDX:+Y=0!($D(DUOUT))!($D(DIRUT))!($D(DTOUT))
CONT1 ;
 ;
 ;IF WE ENTERED FROM OPTION 'ACHSFEOBR' AND FIELD 'UPDATE DOCUMENT FROM
 ;EOBR' = YES
 ;THE IF DO BELOW IS TRYING TO ENSURE THAT DOCUMENTS ARE NOT BEING
 ;UPDATED BY MENU OPTIONS AT THE SAME TIME THIS EOBR PROCESSING IS
 ;UPDATING DOCUMENTS AS WELL. IS IT  LOCKING AT THE APPROPRIATE
 ;TIME???????
 ;IHS/SET/JVK ACHS*3.1*5 CHANGED LINE BELOW TO CHECK FOR ACTIVE CHS JOBS
 ;I 'ACHSISAO,$$PARM^ACHS(2,15)="Y" D  G:'Y ENDX
 I 'ACHSISAO,$$PARM^ACHS(2,15)="Y",$$E^ACHSJCHK("ACHS") D  G:'Y ENDX
 . U IO(0)
 . W !!!!,*7,$$C^XBFUNC("The compiled menu indicates CHS Users are Active -- EOBR'S CANNOT BE POSTED")
 . W !!,$$C^XBFUNC("You can Exercise the"),!,$$C^XBFUNC("'Clean old Job Nodes in XUTL'"),!
 . W $$C^XBFUNC("option (usually) on the site mgr's menu and try again."),!!
 . S DIR(0)="Y",DIR("A")="OR, if you're sure no CHS users are active, you can continue",DIR("B")="N",DIR("?")="You must enter 'Y' to continue."
 . D ^DIR
 . K DIR
 ;ACHS*3.1*23 NEW LINE TO LOCK FILE
 I 'ACHSISAO,'$$LOCK^ACHS("^ACHSF(DUZ(2),""D"")","+") W !!,"CHS file lock failed, make sure all CHS user's are logged off." G ENDX
 S ^ACHSUSE("EOBR")=""         ;SET THE EOBR IN USE GLOBAL FLAG
 ;12/27/00 pmf  change direct kill of work global
 S ^ACHSEOBR="" F  S ^ACHSEOBR=$O(^ACHSEOBR(^ACHSEOBR)) Q:^ACHSEOBR=""  K ^ACHSEOBR(^ACHSEOBR)
 S ^ACHSEOBR("0")="",(ACHSCTR,ACHSCTR(1))=0
 ;
 ;FIND
 I $$OPEN^%ZISH($S(ACHSISAO:$$AOP^ACHS(2,1),1:$$IM^ACHS),ACHSMEDA,"R") S ACHSEMSG="M10" D ERROR^ACHSTCK1 G ENDX    ;M10 OPEN FAILURE ON HFS FILE
 I 'ACHSISAO D SAVDCR("B")
 U IO(0)
 W !
RDHDR ;EP
 D ^ACHSEOB1                             ;READ IN FILE TO PROCESS
 G:ACHSTERR ABEND
 I ACHSISAO D AREA^ACHSEOBB G XIT        ;IS AREA OFFICE
 ;I 'ACHSISAO D FAC^ACHSEOBB,SAVDCR("E")  ;NOT AREA OFFICE ;ACHS*23
 I 'ACHSISAO D:$G(ACHSREP)<1 FAC^ACHSEOBB D SAVDCR("E")  ;NOT AREA OFFICE  ;ACHS*23
 ;
XIT ;
 S ACHSRPT=2
 I ACHSISAO S ACHSRPT=1
 G ENDX:ACHSERPT="N"
 ;
 ;IS THERE A SUMMARY REPORT?
 I ACHSERPT="S" D REPORT^ACHSEOBC G:ACHSERR ABEND D HOME^%ZIS U IO G ENDX
 ;
 ;DO ERROR REPORT
 I '$D(ACHSIO("Q")) S (ACHSEOIO,IOP)=ZTIO S:$L($G(ZTIO("IOPAR"))) %ZIS("IOPAR")=ZTIO("IOPAR") K ZTIO D ^%ZIS,START^ACHSEOB6,HOME^%ZIS U IO G ENDX
 ;
 S %DT="R",X="NOW"
 D ^%DT
 S ZTDTH=Y+.0002
 S:$L($G(ZTIO("IOPAR"))) IOPAR=ZTIO("IOPAR")
 S ZTRTN="START^ACHSEOB6",ZTDESC="CHS EOBR Processing Report, for "_$P(^AUTTLOC(DUZ(2),0),U,2)_"."
 F %="ACHSRPT","ACHSEOBD","ACHSISAO" S ZTSAVE(%)=""
 D ^%ZTLOAD
 G:'$D(ZTSK) ABEND
ENDX ;EP
 ;ACHS*3.1*21
 S IONOFF=""
 ;ACHS*3.1*23 NEW LINE TO LOCK FILE
 I 'ACHSISAO,'$$LOCK^ACHS("^ACHSF(DUZ(2),""D"")","-") W !,"Unlock of CHS Global failed, log out of CHS"
 D CLOSEALL^ACHS,KILL^ACHSEOBB
 K DIR,CONT
 W !!
 D RTRN^ACHS
 I ACHSISAO,'$D(ACHSAEND),$G(ACHSISAC) D ^ACHSEOB8 ;ACHS*3.1*21
 Q
 ;
ABEND ;EP
 G ENDX
 ;
SAVDCR(S) ;EP - Save DCR amounts for EOB Summary Report
 ; S = "B" for begin values, "E" for end values.
 N Y
 S Y=0
 F  S Y=$O(ACHSFYWK(DUZ(2),Y)) Q:'Y  S ^ACHSEOBR("DCR",Y,S)=$G(^ACHS(9,DUZ(2),"FY",Y,"W",ACHSFYWK(DUZ(2),Y),1))
 Q
 ;
