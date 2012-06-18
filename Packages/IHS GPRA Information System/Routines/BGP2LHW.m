BGP2LHW ; IHS/CMI/LAB - IHS Diabetes Audit 2003 27 Apr 2010 10:56 PM 13 Dec 2006 7:35 AM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
 ;
TESTNTL ;
 S ERR=""
 D EP(.ERR,1,2582,"BGP 12 LOCAL HT/WT",597,0,"B",$$NOW^XLFDT,,0)
 W !,ERR
 Q
EP(BGPRET,BGPUSER,BGPDUZ2,BGPOPTN,BGPTAXI,BGPMFITI,BGPONEF,BGPROT,BGPRTIME,BGPFILE) ;EP - called from GUI to produce national gpra report (NTL-GP)
 ;  BGPUSER - DUZ
 ;  BGPDUZ2 - DUZ(2)
 ;  BGPOPTN - OPTION NAME
 ;  BGPTAXI - IEN OF COMMUNITY TAXONOMY NAME
 ;  BGPROT - type of output  P for printed, D For Delimited, B for both
 ;  BGPRTIME - report will be queued automatically, this variable
 ;             contains the time it will run, internal fileman format
 ;             must be date and time
 ;  BGPONEF - one or multiple files of height/weight
 ;  BGPFN - printed output filename
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
 I "PDB"'[$G(BGPROT) S BGPRET=0_"^REPORT OUTPUT TYPE NOT PASSED" Q
 S BGPRTIME=$G(BGPRTIME)
 S BGPFILE=$G(BGPFILE)
 S BGPONEF=$G(BGPONEF) I BGPONEF="" S BGPRET=0_"^one or multiple not passed" Q
 ;S DUZ=BGPUSER
 S DUZ(2)=BGPDUZ2
 S:'$D(DT) DT=$$DT^XLFDT
 D ^XBKVAR
 S BGPGUI=1
 S IOM=80,BGPIOSL=55
 S BGPRTYPE=1,BGPYRPTH=""
 S X=$O(^BGPCTRL("B",2012,0))
 S Y=^BGPCTRL(X,0)
 S BGPBD=$P(Y,U,8),BGPED=$P(Y,U,9)
 S BGPPBD=$P(Y,U,10),BGPPED=$P(Y,U,11)
 S BGPBBD=$P(Y,U,12),BGPBED=$P(Y,U,13)
 S BGPPER=$P(Y,U,14),BGPQTR=3
 S BGPBEN=1
 G NT
 S BGPBD=3030101,BGPED=3031231
 S BGPBBD=3000101,BGPBED=3001231
 S BGPPBD=3020101,BGPPED=3021231
 S BGPPER=3030000,BGPQTR=3,BGPBEN=1
NT ;
 K BGPTAX S X=0
 F  S X=$O(^ATXAX(BGPTAXI,21,X)) Q:'X  D
 .S BGPTAX($P(^ATXAX(BGPTAXI,21,X,0),U))=""
 .Q
 S BGPHOME=$P($G(^BGPSITE(DUZ(2),0)),U,2)
 S X=0 F  S X=$O(^BGPINDW("GPRA",1,X)) Q:X'=+X  S BGPIND(X)=""
 S BGPINDW="G",BGPHWNOW=$$NOW^XLFDT
 S BGPEXCEL=""
 I BGPYWCHW="",BGPEXPT S BGPYWCHW=$S($P($G(^BGPSITE(DUZ(2),0)),U,11)=0:0,1:1)
 S BGPUF=$$GETDIR^BGP2UTL2()
 ;I ^%ZOSF("OS")["PC"!(^%ZOSF("OS")["NT")!($P($G(^AUTTSITE(1,0)),U,21)=2) S BGPUF=$S($P($G(^AUTTSITE(1,1)),U,2)]"":$P(^AUTTSITE(1,1),U,2),1:"C:\EXPORT")
 ;I $P(^AUTTSITE(1,0),U,21)=1 S BGPUF="/usr/spool/uucppublic/"
 D REPORT^BGP2UTL
 I $G(BGPQUIT) S BGPRET=0_"^COULD NOT CREATE REPORT ENTRY" Q
 I BGPRPT="" S BGPRET=0_"^COULD NOT CREATE REPORT ENTRY" Q
 ;create entry in GUI file
 D ^XBFMK
 ;S X=BGPUSER_$$NOW^XLFDT
 S X=BGPFILE
 S BGPGFNM=X
 S DIC="^BGPGUIW(",DIC(0)="L",DIADD=1,DLAYGO=90546.19,DIC("DR")=".02////"_BGPUSER_";.03////"_$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT)_";.05///"_BGPOPTN_";.06///R;.07///"_$G(BGPROT)_";.08///"_BGPFILEN
 K DD,D0,DO D FILE^DICN K DLAYGO,DIADD,DD,D0,DO
 I Y=-1 S BGPRET=0_"^UNABLE TO CREATE ENTRY IN GUI OUTPUT FILE" Q
 S BGPGIEN=+Y
 ;SEND THE REPORT PROCESS OFF TO THE BACKGROUND USING TASKMAN CALL
 D TSKMN
 S BGPRET=BGPGIEN
 I BGPEXPT S $P(BGPRET,U,3)=BGPFILEN
 I BGPYWCHW=2 S $P(BGPRET,U,4)=BGPFN
 Q
 ;
TSKMN ;
 S ZTIO=""
 K ZTSAVE S ZTSAVE("*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="NTLGP^BGP2LHW",ZTDTH=$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT),ZTDESC="GUI LOCAL HT/WT FILE" D ^%ZTLOAD Q
 Q
NTLGP ;
 D ^BGP2D1
 K ^TMP($J,"BGPGUI")
 S IOM=80,BGPIOSL=55
 ;cmi/anch/maw added 5/12/2009 for word output
 D GUIR^XBLM("^BGP2DP","^TMP($J,""BGPGUI"",")
 S X=0,C=0 F  S X=$O(^TMP($J,"BGPGUI",X)) Q:X'=+X  D
 . S C=C+1
 . N BGPDATA
 . S BGPDATA=$G(^TMP($J,"BGPGUI",X))
 . I BGPDATA="ZZZZZZZ" S BGPDATA=$C(12)
 . S ^BGPGUIW(BGPGIEN,11,C,0)=BGPDATA
 S ^BGPGUIW(BGPGIEN,11,0)="^90546.1911^"_C_"^"_C_"^"_DT
 K ^TMP($J,"BGPGUI")
 ;cmi/anch/maw end of mods
 I BGPEXPT D GS^BGP2UTL
 I $G(BGPYWCHW)=2 D HWSF^BGP2DHW
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
 S DIE="^BGPGUIW(",DA=BGPGIEN,DR=".04////"_$$NOW^XLFDT_";.06///C"
 D ^DIE
 K DIE,DR,DA
 Q
