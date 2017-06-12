ACHSTUT2 ; IHS/ITSC/TPF/PMF - CHECK/COPY/PURGE 3780.LOG UNIX FILE ;  
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**22**;JUN 11, 2001;Build 37
 ;ACHS*3.1*22 OS test when writing to a directory
 ;
 S ACHSHCMD="cd /usr/bin/3780;ls -l 3780.LOG | awk '{print $5}' > /usr/spool/3780/3780.logsize"
 S ACHSRTCD=$$TERMINAL^ACHSHCMD(ACHSHCMD)
 I $$OPEN^%ZISH("/usr/spool/3780/","3780.logsize","R") S ACHSEMSG="M10" D ERROR^ACHSTCK1 G ABEND
 S ACHSFS1=IO
 U ACHSFS1
 R ACHSLGSZ:1
 G ABEND:'$T
 I $D(ACHSFS1) S IO=ACHSFS1,IONOFF="" D ^%ZISC
 I ACHSLGSZ>50000 D
 .S ACHSHCMD="cd /usr/bin/3780;cp 3780.LOG 3780.LOG.BK;rm 3780.LOG;echo """" > 3780.LOG;cd /usr/mumps"
 .S ACHSRTCD=$$TERMINAL^ACHSHCMD(ACHSHCMD)
ABEND ;
 K ACHSZDEV,ACHSCMD,X,ACHSFS1,ACHSLGSZ
 Q
 ;
PARMCHK ;EP
 K ACHSJFLG
 I '$D(ACHSCCTR) S ACHSEMSG="RECEIVING COMPUTER CENTER NOT DEFINED -- JOB ABORTED" D JCANCEL Q
 I '$D(ACHSPGNM) S ACHSEMSG="APPLICATION DATA TYPE NOT DEFINED -- JOB ABORTED" D JCANCEL Q
 D USRCHK
 I $D(ACHSJFLG) D JCANCEL Q
 I $L(ACHSUXFP)<2 S ACHSEMSG="INVALID COMM. PARAMETER (UNIX FILENAME) -- JOB ABORTED" D JCANCEL Q
 ;S ACHSZDIR="/usr/spool/"_ACHSUXFP_"data"  ;ACHS*3.1*22
 S ACHSZDIR=$S($$OS^ACHS=2:"c:\usr\spool\chsdata",1:"/usr/spool/chsdata") ;ACHS*3.1*22 OIT/IHS.FCJ
 Q:ACHSPGNM?1"Z".E
 I $E($G(ACHSHDNM),1,3)="DHR" G CNVRT
 I ACHSPGNM="ACHS" G A7
 I ACHSPGNM="ACHSN" S ACHSHDNM="nu" G A7
 I ACHSPGNM="AFSL" S ACHSHDNM="lu" G A7
 I ACHSPGNM'="AFSH" S ACHSHDNM="ibm" G A7
 I ACHSPGNM="AFSH",'$D(ACHSHDNM) S ACHSEMSG="FINANCE DATA TYPE NOT DEFINED -- JOB ABORTED" D JCANCEL Q
CNVRT ;
 S X=$S(ACHSHDNM="DHRB":"dhb",ACHSHDNM="DHRP":"dhp",ACHSHDNM="PERP":"perp",ACHSHDNM="CANP":"canp",ACHSHDNM="DHRC":"dhc",1:"")
 I X="" S ACHSEMSG="FINANCE DATA TYPE IS INVALID -- JOB ABORTED" D JCANCEL Q
 S ACHSHDNM=X
 I '$D(^DIC(9.4,ACHSPGPT,0)) S ACHSEMSG="PACKAGE FILE PROBLEM --  JOB ABORTED" D JCANCEL Q
A7 ;
 U IO
 S ACHSTXNM=$P(^DIC(9.4,ACHSPGPT,0),U,1)
 I ACHSPGNM="AFSH" S X=$E(ACHSHDNM,1,2),X=$S(X="dh":"DOCUMENT HISTORY RECORD (DHR)",X="pe":"PERSONNEL C.A.N. CORRECTION",X="ca":"REQUEST FOR C.A.N."),ACHSTXNM="FINANCE "_X
 S ACHSTXNM="FINANCE "_X
 Q
 ;
JCANCEL ;
 U IO(0)
 W *7,!!,ACHSEMSG,!
 I $$DIR^XBDIR("E","ENTER <RETURN> TO EXIT")
 S ACHSJFLG=1
 Q
 ;
USRCHK ; -- Set User-ID & Password for the selected Package.
 K ACHSJFLG
 I ACHSPGNM?1"Z".E,ACHSPGNM="Z638" S ACHSUXFP="chs",ACHSHDNM="638",ACHSTXNM="CHS 638 STAT." Q
 S X=ACHSPGNM,DIC(0)="",D="C",DIC=9.4
 D IX^DIC
 I +Y<0 D SETERR("M14") Q
 I '$D(^AUTTTEL(DUZ(2),4,"B",+Y)) D SETERR("M14") Q
 S ACHSR=""
 S ACHSR=$O(^AUTTTEL(DUZ(2),4,"B",+Y,ACHSR))
 S Y=$G(^AUTTTEL(DUZ(2),4,ACHSR,0))
 F %=2,3,4,6 I $P(Y,U,%)="" D SETERR("M13") Q
 Q:$G(ACHSJFLG)
 I ACHSPGNM'="AFSP",$P(Y,U,5)="" D SETERR("M13") Q
 I ACHSPGNM'="AFSH",$P(Y,U,7)="" D SETERR("M13") Q
 S ACHSUID=$P(Y,U,4),ACHSPSWD=$P(Y,U,3),ACHSJNPF=$P(Y,U,2),ACHSUXFP=$E($P(Y,U,5),1,3),ACHSPKCU=$P(Y,U,6),ACHSFNPF=$P(Y,U,5),ACHSPGPT=+Y,ACHSCTRP="",ACHSCTRP=$O(^AUTTTEL(DUZ(2),1,"B",ACHSCCTR,ACHSCTRP)),ACHSDEST=ACHSCCTR
 I +ACHSCTRP<1 D SETERR("M1") Q
 I '$D(^AUTTTEL(DUZ(2),1,ACHSCTRP,0)) D SETERR("M2") Q
 S ACHSPRRN=$P(^AUTTTEL(DUZ(2),1,ACHSCTRP,0),U,2),ACHSPRPW=$P(^(0),U,3)
 Q
 ;
SETERR(%) ;
 S ACHSEMSG=$P($T(@%^ACHSTCK1),";;",2),ACHSJFLG=1
 Q
 ;
