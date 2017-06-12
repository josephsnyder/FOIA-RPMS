BGP6GNTP ; IHS/CMI/LAB - BGP 16 DESIGNATED PROVIDER REPORT 27 Apr 2010 10:56 PM 13 Dec 2006 7:35 AM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;
TESTNTL ;
 S ERR=""
 D EP(.ERR,1,2582,"BGP 16 NATIONAL GPRA REPORT",597,0,"B",$$NOW^XLFDT,,0)
 W !,ERR
 Q
EP(BGPRET,BGPUSER,BGPDUZ2,BGPOPTN,BGPTAXI,BGPEXPT,BGPROT,BGPRTIME,BGPMFITI,BGPYWCHW,BGPONEF,BGPDESGP,BGPFILE,BGPDNT) ;EP - called from GUI to produce national gpra report (NTL-GP)
 ;  BGPUSER - DUZ
 ;  BGPDUZ2 - DUZ(2)
 ;  BGPOPTN - OPTION NAME
 ;  BGPTAXI - IEN OF COMMUNITY TAXONOMY NAME
 ;  BGPEXPT - EXPORT TO AREA?  1 IS YES, 0 IS NO
 ;  BGPROT - type of output  P for printed, D For Delimited, B for both
 ;  BGPRTIME - report will be queued automatically, this variable
 ;             contains the time it will run, internal fileman format
 ;             must be date and time
 ;  BGPONEF - one or multiple files of height/weight
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
 I $G(BGPDESGP)="" S BGPRET=0_"^DESG PROVIDER IEN NOT PASSED" Q
 I $G(BGPEXPT)="" S BGPEXPT=0
 I "PDB"'[$G(BGPROT) S BGPRET=0_"^REPORT OUTPUT TYPE NOT PASSED" Q
 S BGPRTIME=$G(BGPRTIME)
 ;S DUZ=BGPUSER
 S DUZ(2)=BGPDUZ2
 S:'$D(DT) DT=$$DT^XLFDT
 D ^XBKVAR
 S BGPGUI=1
 S IOM=80,BGPIOSL=55
 S BGPRTYPE=1,BGPYRPTH=""
 I $E(BGPDESGP,1,1)="T" D  ;if a taxonomy setup the variable
 . N TAX,TAXDA,PRV
 . S TAX=$P($P(BGPDESGP,"T",2),"*")
 . S BGPDESGP=""
 . S TAXDA=0 F  S TAXDA=$O(^ATXAX(TAX,21,TAXDA)) Q:'TAXDA  D
 .. S PRV=$G(^ATXAX(TAX,21,TAXDA,0))
 .. S BGPDESGP=BGPDESGP_PRV_"*"
 I $G(BGPDESGP)]"" D
 . F I=1:1 D  Q:$P(BGPDESGP,"*",I)=""
 .. N DES
 .. S DES=$P(BGPDESGP,"*",I)
 .. Q:DES=""
 .. S BGPDESGP(DES)=""
 S X=$O(^BGPCTRL("B",2016,0))
 S Y=^BGPCTRL(X,0)
 S BGPBD=$P(Y,U,8),BGPED=$P(Y,U,9)
 S BGPPBD=$P(Y,U,10),BGPPED=$P(Y,U,11)
 S BGPBBD=$P(Y,U,12),BGPBED=$P(Y,U,13)
 S BGPPER=$P(Y,U,14),BGPQTR=3
 S BGPBEN=1
 ;
 ;LORI COMMENT OUT FOR TESTING
 G NT
 S BGPBD=3130101,BGPED=3131231
 S BGPBBD=3100101,BGPBED=3101231
 S BGPPBD=3120101,BGPPED=3121231
 S BGPPER=3030000,BGPQTR=3,BGPBEN=1
NT ;
 K BGPTAX S X=0
 F  S X=$O(^ATXAX(BGPTAXI,21,X)) Q:'X  D
 .S BGPTAX($P(^ATXAX(BGPTAXI,21,X,0),U))=""
 .Q
 S BGPHOME=$P($G(^BGPSITE(DUZ(2),0)),U,2)
 S X=0 F  S X=$O(^BGPINDM("GPRA",1,X)) Q:X'=+X  S BGPIND(X)=""
 S BGPINDM="G",BGPHWNOW=$$NOW^XLFDT
 S BGPEXCEL="",BGPEXPT=""
 S BGPYWCHW=0
 S BGPUF=$$GETDIR^BGP6UTL2()
 ;I ^%ZOSF("OS")["PC"!(^%ZOSF("OS")["NT")!($P($G(^AUTTSITE(1,0)),U,21)=2) S BGPUF=$S($P($G(^AUTTSITE(1,1)),U,2)]"":$P(^AUTTSITE(1,1),U,2),1:"C:\EXPORT")
 ;I $P(^AUTTSITE(1,0),U,21)=1 S BGPUF="/usr/spool/uucppublic/"
 S DESDDA=0 F  S DESDDA=$O(BGPDESGP(DESDDA)) Q:'DESDDA  D
 . D REPORT^BGP6UTL
 . S $P(BGPDESGP(DESDDA),U)=BGPRPT
 . I $G(BGPQUIT) S BGPRET=0_"^COULD NOT CREATE REPORT ENTRY" Q
 . I $G(BGPRPT)="" S BGPRET=0_"^COULD NOT CREATE REPORT ENTRY" Q
 ;D REPORT^BGP6UTL
 S BGPFILEN=""
 S BGPDELT=""
 S BGPYWCHW=0
 D ^XBFMK
 I $G(BGPDESGP)]"" D
 . N DESDA,DESNM
 . S DESDA=0 F  S DESDA=$O(BGPDESGP(DESDA)) Q:'DESDA  D
 .. S DESNM=$P($P($G(^VA(200,DESDA,0)),U),",")
 .. S X=BGPFILE_"_"_DESNM_"_"_DESDA
 .. S BGPGFNM=X
 .. S DIC="^BGPGUIM(",DIC(0)="L",DIADD=1,DLAYGO=90556.19,DIC("DR")=".02////"_BGPUSER_";.03////"_$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT)_";.05///"_BGPOPTN_";.06///R;.07///"_$G(BGPROT)_";1///"_BGPFILEN
 .. K DD,D0,DO D FILE^DICN K DLAYGO,DIADD,DD,D0,DO
 .. I Y=-1 S BGPRET=0_"^UNABLE TO CREATE ENTRY IN GUI OUTPUT FILE" Q
 .. S BGPGIEN=+Y
 .. S $P(BGPDESGP(DESDA),U,3)=BGPGIEN
 I $G(BGPDESGP)="" D
 . S X=BGPFILE
 . S BGPGFNM=X
 . S DIC="^BGPGUIM(",DIC(0)="L",DIADD=1,DLAYGO=90556.19,DIC("DR")=".02////"_BGPUSER_";.03////"_$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT)_";.05///"_BGPOPTN_";.06///R;.07///"_$G(BGPROT)
 . K DD,D0,DO D FILE^DICN K DLAYGO,DIADD,DD,D0,DO
 . I Y=-1 S BGPRET=0_"^UNABLE TO CREATE ENTRY IN GUI OUTPUT FILE" Q
 . S BGPGIEN=+Y
 ;SEND THE REPORT PROCESS OFF TO THE BACKGROUND USING TASKMAN CALL
 D TSKMN
 S BGPRET=BGPGIEN
 I BGPEXPT S $P(BGPRET,U,3)=BGPFILEN
 ;I BGPYWCHW=2 S $P(BGPRET,U,4)=BGPFN
 Q
 ;
TSKMN ;
 S ZTIO=""
 K ZTSAVE S ZTSAVE("*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="NTLGP^BGP6GNTP",ZTDTH=$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT),ZTDESC="GUI NATIONAL GPRA REPORT 15" D ^%ZTLOAD
 D UPLOG^BGP6GUA(BGPGIEN,ZTSK)
 Q
NTLGP ;
 D ^BGP6D1
 I $O(BGPDESGP(0)) D  D XIT Q
 .S BGPDESGP=0 F  S BGPDESGP=$O(BGPDESGP(BGPDESGP)) Q:BGPDESGP'=+BGPDESGP  D
 ..S BGPRPT=$P(BGPDESGP(BGPDESGP),U,1),BGPGIEN=$P(BGPDESGP(BGPDESGP),U,3)
 ..K ^TMP($J,"BGPGUI")
 ..S IOM=80,BGPIOSL=55
 ..D GUIR^BGPXBLM("PRINTN^BGP6DP","^TMP($J,""BGPGUI"",")
 ..S X=0,C=0 F  S X=$O(^TMP($J,"BGPGUI",X)) Q:X'=+X  D
 ... S C=C+1
 ... N BGPDATA
 ... S BGPDATA=$G(^TMP($J,"BGPGUI",X))
 ... I BGPDATA="ZZZZZZZ" S BGPDATA=$C(12)
 ... S ^BGPGUIM(BGPGIEN,11,C,0)=BGPDATA
 ..S ^BGPGUIM(BGPGIEN,11,0)="^90556.1911^"_C_"^"_C_"^"_DT
 ..K ^TMP($J,"BGPGUI")
 ..D ENDLOG
 ..Q
P ;
 K ^TMP($J,"BGPGUI")
 S IOM=80,BGPIOSL=55
 ;cmi/anch/maw added 5/12/2009 for word output
 D GUIR^BGPXBLM("^BGP6DP","^TMP($J,""BGPGUI"",")
 S X=0,C=0 F  S X=$O(^TMP($J,"BGPGUI",X)) Q:X'=+X  D
 . S C=C+1
 . N BGPDATA
 . S BGPDATA=$G(^TMP($J,"BGPGUI",X))
 . I BGPDATA="ZZZZZZZ" S BGPDATA=$C(12)
 . S ^BGPGUIM(BGPGIEN,11,C,0)=BGPDATA
 S ^BGPGUIM(BGPGIEN,11,0)="^90556.1911^"_C_"^"_C_"^"_DT
 K ^TMP($J,"BGPGUI")
 ;cmi/anch/maw end of mods
 ;I BGPEXPT D GS^BGP6UTL
 ;I $G(BGPYWCHW)=2 D HWSF^BGP6DNG
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
 S DIE="^BGPGUIM(",DA=BGPGIEN,DR=".04////"_$$NOW^XLFDT_";.06///C"
 D ^DIE
 K DIE,DR,DA
 Q
