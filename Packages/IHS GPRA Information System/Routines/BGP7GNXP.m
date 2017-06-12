BGP7GNXP ; IHS/CMI/LAB - IHS Diabetes Audit 2003 27 Apr 2010 10:56 PM ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
TESTNTL ;
 S ERR=""
 D EP(.ERR,1,2522,"BGP 17 NATL EXPORT",597,1,1,,$$NOW^XLFDT)
 W !,ERR
 Q
EP(BGPRET,BGPUSER,BGPDUZ2,BGPOPTN,BGPTAXI,BGPEXPT,BGPLOCAL,BGPMFITI,BGPRTIME) ;EP - called from GUI to produce national gpra report (NTL-GP)
 ;  BGPUSER - DUZ
 ;  BGPDUZ2 - DUZ(2)
 ;  BGPOPTN - OPTION NAME
 ;  BGPTAXI - IEN OF COMMUNITY TAXONOMY NAME
 ;  BGPEXPT - EXPORT TO AREA?  1 IS YES, 0 IS NO
 ;  BGPLOCAL - create local files 1 is yes, 0 is NO
 ;  BGPMFITI - location taxonomy ien if MFI site
 ;  BGPRTIME - report will be queued automatically, this variable
 ;             contains the time it will run, internal fileman format
 ;             must be date and time
 ;
 ;  BGPRET - return value is ien^error message^export file name. a zero (0) is
 ;  passed as ien if error occurred, display the filename back to the user
 ;  if they chose to export to area
 ;
 ;create entry in gui output file
 ;queue report to run with/GUIR
 D EP1
 S Y=BGPRET
 ;D EN^XBVK("BGP") S:$D(ZTQUEUED) ZTREQ="@"
 S BGPRET=Y
 Q
EP1 ;
 S U="^"
 I $G(BGPUSER)="" S BGPRET=0_"^USER NOT PASSED" Q
 I $G(BGPDUZ2)="" S BGPRET=0_"^DUZ(2) NOT PASSED" Q
 I $G(BGPOPTN)="" S BGPRET=0_"^OPTION NAME NOT PASSED" Q
 I $G(BGPTAXI)="" S BGPRET=0_"^IEN OF COMMUNITY TAXONOMY NOT PASSED" Q
 I '$D(^ATXAX(BGPTAXI)) S BGPRET=0_"^INVALID COMMUNITY TAXONOMY IEN PASSED" Q
 I $G(BGPEXPT)="" S BGPRET=0_"^AREA EXPORT VALUE NOT PASSED" Q
 I $G(BGPLOCAL)="" S BGPLOCAL=0
 S BGPRTIME=$G(BGPRTIME)
 S BGPMFITI=$G(BGPMFITI)
 I 'BGPLOCAL,'BGPEXPT S BGPRET=0_"^You have chosen not to create any files.....exiting" Q
 ;S DUZ=BGPUSER
 S DUZ(2)=BGPDUZ2
 S:'$D(DT) DT=$$DT^XLFDT
 D ^XBKVAR
 S BGPGUI=1
 S IOM=80,BGPIOSL=55
 S BGPXPFYC=$O(^BGPCTRL("B",2007,0))
 S BGPRTYPE=1,BGPXPRP=1,BGPXPFYY=2015,BGPXPFYI=312
 S BGPXPHD=3130701,BGPXPEDT=3140630
 K BGPTAX S X=0
 F  S X=$O(^ATXAX(BGPTAXI,21,X)) Q:'X  D
 .S BGPTAX($P(^ATXAX(BGPTAXI,21,X,0),U))=""
 .Q
 S BGPHOME=$P($G(^BGPSITE(DUZ(2),0)),U,2)
 S BGPBEN=1
HOME ;
 S BGPUF=""
 S BGPXPDR=DT
 S BGPNOW=$$NOW^XLFDT
 S BGPUF=$$GETDIR^BGP7UTL2()
 ;I ^%ZOSF("OS")["PC"!(^%ZOSF("OS")["NT")!($P($G(^AUTTSITE(1,0)),U,21)=2) S BGPUF=$S($P($G(^AUTTSITE(1,1)),U,2)]"":$P(^AUTTSITE(1,1),U,2),1:"C:\EXPORT")
 ;I $P(^AUTTSITE(1,0),U,21)=1 S BGPUF="/usr/spool/uucppublic/"
 S BGPFN="CRSCNT"_$P(^AUTTLOC(DUZ(2),0),U,10)_$$D^BGP7UTL(BGPXPHD)_$$D^BGP7UTL(BGPXPEDT)_$$D^BGP7UTL(BGPNOW)_"_001_of_001.TXT"
 ;CREATE REPORT ENTRY
 K DIC S X=$P(^VA(200,DUZ,0),U)_"-"_$$D^BGP7UTL(BGPNOW),DIC(0)="L",DIC="^BGPXPA(",DLAYGO=90530.11,DIADD=1
 S DIC("DR")=".02////"_BGPXPHD_";.03////"_BGPXPEDT_";.04////"_$P(^ATXAX(BGPTAXI,0),U)_";.05////"_$S(BGPMFITI:$P(^ATXAX(BGPMFITI,0),U),1:"")
 D ^DIC K DIC,DA,DR,DIADD,DLAYGO I Y=-1 S BGPERR="UNABLE TO CREATE REPORT FILE ENTRY!" H 4 D XIT Q
 S BGPXPRPT=+Y
 K ^BGPXPA(BGPXPRPT,13)
 S C=0,X="" F  S X=$O(BGPTAX(X)) Q:X=""  S C=C+1 S ^BGPXPA(BGPXPRPT,13,C,0)=X,^BGPXPA(BGPXPRPT,13,"B",X,C)=""
 S ^BGPXPA(BGPXPRPT,13,0)="^90530.111301A^"_C_"^"_C
 K ^BGPXPA(BGPXPRPT,14)
 I $G(BGPMFITI) S C=0,X="" F  S X=$O(^ATXAX(BGPMFITI,21,"B",X)) Q:X=""  S C=C+1,Y=$P($G(^DIC(4,X,0)),U) S ^BGPXPA(BGPXPRPT,14,C,0)=Y,^BGPXPA(BGPXPRPT,14,"B",Y,C)=""
 S ^BGPXPA(BGPXPRPT,14,0)="^90530.111401A^"_C_"^"_C
 ;create entry in GUI file
 D ^XBFMK
 S X=BGPUSER_$$NOW^XLFDT
 S BGPGFNM=X
 S DIC="^BGPGUIA(",DIC(0)="L",DIADD=1,DLAYGO=90558.19,DIC("DR")=".02////"_BGPUSER_";.03////"_$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT)_";.05///"_BGPOPTN_";.06///R;.07///P"
 K DD,D0,DO D FILE^DICN K DLAYGO,DIADD,DD,D0,DO
 I Y=-1 S BGPRET=0_"^UNABLE TO CREATE ENTRY IN GUI OUTPUT FILE" Q
 S BGPGIEN=+Y
 ;SEND THE REPORT PROCESS OFF TO THE BACKGROUND USING TASKMAN CALL
 D TSKMN
 S BGPRET=BGPGIEN
 Q
 ;
TSKMN ;
 S ZTIO=""
 K ZTSAVE S ZTSAVE("*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="NTXP^BGP7GNXP",ZTDTH=$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT),ZTDESC="GUI NATIONAL GPRA EXPORT 15" D ^%ZTLOAD
 D UPLOG^BGP7GUA(BGPGIEN,ZTSK)
 Q
NTXP ;
 D PROC^BGP7DNE1
 K ^TMP($J,"BGPGUI")
 S IOM=80,BGPIOSL=55
 D GUIR^BGPXBLM("PRINT^BGP7DNE1","^TMP($J,""BGPGUI"",")
 S X=0,C=0 F  S X=$O(^TMP($J,"BGPGUI",X)) Q:X'=+X  D
 . S C=C+1
 . N BGPDATA
 . S BGPDATA=$G(^TMP($J,"BGPGUI",X))
 . I BGPDATA="ZZZZZZZ" S BGPDATA=$C(12)
 . S ^BGPGUIA(BGPGIEN,11,C,0)=BGPDATA
 S ^BGPGUIA(BGPGIEN,11,0)="^90558.1911^"_C_"^"_C_"^"_DT
 K ^TMP($J,"BGPGUI")
 D ENDLOG
 D XIT
 Q
 ;
XIT ;
 K ^TMP($J)
 D EN^XBVK("BGP") S:$D(ZTQUEUED) ZTREQ="@"
 K DIRUT,DUOUT,DIR,DOD
 K DIADD,DLAYGO
 D KILL^AUPNPAT
 K X,X1,X2,X3,X4,X5,X6
 K A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,V,W,X,Y,Z
 K N,N1,N2,N3,N4,N5,N6
 K BD,ED
 D KILL^AUPNPAT
 D ^XBFMK
 L -^BGPDATA
 Q
 ;
ENDLOG ;-- UPDATE LOG AT END
 S DIE="^BGPGUIA(",DA=BGPGIEN,DR=".04////"_$$NOW^XLFDT_";.06///C"
 D ^DIE
 K DIE,DR,DA
 Q
