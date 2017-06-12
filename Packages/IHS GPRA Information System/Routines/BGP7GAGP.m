BGP7GAGP ; IHS/CMI/LAB - AREA NATIONAL GPRA REPORT ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
TESTNTL ;
 S ERR=""
 S BGPSUL(1)=""
 S BGPSUL(2)=""
 D EP(.ERR,1,2522,"BGP 17 AREA GPRA","A",.BGPSUL,"B",1,$$NOW^XLFDT)
 W !,ERR
 Q
EP(BGPRET,BGPUSER,BGPDUZ2,BGPOPTN,BGPRPTT,BGPSUL,BGPROT,BGPEXCEL,BGPRTIME,BGPFILE,BGPDNT) ;EP - called from GUI to produce national gpra report (AO-AGP)
 ;SEE ROUTINE BGP7DAR for more info
 ;  BGPUSER - DUZ
 ;  BGPDUZ2 - DUZ(2)
 ;  BGPOPTN - OPTION NAME
 ;  BGPRPTT - A or F depending on whether site wants area or facility report, either way you need to display the entries to the user
 ;            from BGP 17 DATA CURRENT that match the following:
 ;            (SEE BGP7ASL or CALL ME)
 ;  BGPSUL - ARRAY OF IENS FROM THE D GET^BGP7ASL(.BGPSUL,.BGPFILE,1,....... call that the user selected
 ;  BGPROT - type of output  P for printed, D For Delimited, B for both
 ;  BGPRTIME - report will be queued automatically, this variable
 ;             contains the time it will run, internal fileman format
 ;             must be date and time
 ;  BGPEXCEL - if they select facilty in BGPRPTT then ask them if they want an excel file, if so set this to 1
 ;  BGPRET - return value is ien^error message a zero (0)^NAME OF EXCEL FILE IF CHOSEN TO DO SO is
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
 I $G(BGPRPTT)="" S BGPRET=0_"^AREA OR FACILITY VARIABLE NOT PASSED" Q
 I "AF"'[BGPRPTT S BGPRET=0_"^AREA OR FACILTY VARIABLE INVALID" Q
 I "PDB"'[$G(BGPROT) S BGPRET=0_"^REPORT OUTPUT TYPE NOT PASSED" Q
 I '$D(BGPSUL) S BGPRET=0_"^FACILITY ARRAY NOT PASSED" Q
 S X=0,C=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  S C=C+1
 I C=0 S BGPRET=0_"^FACILITY ARRAY NOT PASSED" Q
 S BGPSUCNT=0
 ;S BGPSUCNT=C  ;cmi/maw 4/28/2010 removed to match roll and scroll
 ;I BGPSUCNT=1 S BGPRPTT="F",Y=$O(BGPSUL(0)),X=$P(^BGPGPDCG(Y,0),U,9),X=$O(^AUTTLOC("C",X,0)) I X S BGPSUNM=$P(^DIC(4,X,0),U)
 S BGPRTIME=$G(BGPRTIME)
 ;S DUZ=BGPUSER
 S DUZ(2)=BGPDUZ2
 S:'$D(DT) DT=$$DT^XLFDT
 D ^XBKVAR
 S BGPGUI=1
 S IOM=80,BGPIOSL=55
 S BGPAREAA=1
 S BGPEXCEL=1
 S BGPRPTT="A"  ;maw added 9/22/05
 S BGPRTYPE=1,BGPBEN=1,BGPYRPTH=""
 S X=$O(^BGPCTRL("B",2017,0))
 S Y=^BGPCTRL(X,0)
 S BGPBD=$P(Y,U,8),BGPED=$P(Y,U,9)
 S BGPPBD=$P(Y,U,10),BGPPED=$P(Y,U,11)
 S BGPBBD=$P(Y,U,12),BGPBED=$P(Y,U,13)
 S BGPPER=$P(Y,U,14),BGPQTR=3
 ;LORI COMMENT FOR TESTING
 G NT
 S BGPBD=3130101,BGPED=3131231
 S BGPBBD=3100101,BGPBED=3101231
 S BGPPBD=3120101,BGPPED=3121231
 S BGPPER=3030000,BGPQTR=3,BGPBEN=1
NT ;
 S BGPHOME=$P($G(^BGPSITE(DUZ(2),0)),U,2)
 S X=0 F  S X=$O(^BGPINDG("GPRA",1,X)) Q:X'=+X  S BGPIND(X)=""
 S BGPINDG="G"
 S BGPUF=$$GETDIR^BGP7UTL2()
 I BGPEXCEL D
 .S BGPNOW=$$NOW^XLFDT() S BGPNOW=$$NOW^XLFDT() S BGPNOW=$P(BGPNOW,".")_"."_$$RZERO^BGP7UTL($P(BGPNOW,".",2),6)
 .S BGPC=0,X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  S BGPC=BGPC+1
 .S BGPFGNT1="CRSGPRANT1"_$P(^AUTTLOC(DUZ(2),0),U,10)_2017063000000000_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 .S BGPFGNT2="CRSGPRANT2"_$P(^AUTTLOC(DUZ(2),0),U,10)_2017063000000000_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 .S BGPFDEV1="CRSGPRADEVNT1"_$P(^AUTTLOC(DUZ(2),0),U,10)_2017063000000000_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 .S BGPFDEV2="CRSGPRADEVNT2"_$P(^AUTTLOC(DUZ(2),0),U,10)_2017063000000000_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 .S BGPFDEV3="CRSGPRADEVNT3"_$P(^AUTTLOC(DUZ(2),0),U,10)_2017063000000000_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 .S BGPFDEV4="CRSGPRADEVNT4"_$P(^AUTTLOC(DUZ(2),0),U,10)_2017063000000000_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 .S BGPFGNT3="CRSGPRANT3"_$P(^AUTTLOC(DUZ(2),0),U,10)_2017063000000000_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 .S BGPFGNT4="CRSGPRANT4"_$P(^AUTTLOC(DUZ(2),0),U,10)_2017063000000000_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 .Q
 S BGPASUF=$P(^AUTTLOC(DUZ(2),0),U,10)
 S BGPDELT=""
 ;create entry in GUI file
 D ^XBFMK
 S X=BGPFILE
 S BGPFN=$G(BGPFGNT1)_","_$G(BGPFGNT2)_","_$G(BGPFGNT3)_","_$G(BGPFGNT4)_","_$G(BGPFDEV1)_","_$G(BGPFDEV2)_","_$G(BGPFDEV3)_","_$G(BGPFDEV4)
 S BGPFN=$E(BGPFN,1,245)
 S DIC="^BGPGUIG(",DIC(0)="L",DIADD=1,DLAYGO=90558.19,DIC("DR")=".02////"_BGPUSER_";.03////"_$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT)_";.05///"_BGPOPTN_";.06///R;.07///"_$G(BGPROT)_";1///"_BGPFN
 K DD,D0,DO D FILE^DICN K DLAYGO,DIADD,DD,D0,DO
 I Y=-1 S BGPRET=0_"^UNABLE TO CREATE ENTRY IN GUI OUTPUT FILE" Q
 S BGPGIEN=+Y
 ;SEND THE REPORT PROCESS OFF TO THE BACKGROUND USING TASKMAN CALL
 D TSKMN
 S BGPRET=BGPGIEN
 S BGPFN=$G(BGPFGNT1)_","_$G(BGPFGNT2)_","_$G(BGPFGNT3)_","_$G(BGPFGNT4)_","_$G(BGPFDEV1)_","_$G(BGPFDEV2)_","_$G(BGPFDEV3)_","_$G(BGPFDEV4)
 I $G(BGPEXCEL) S $P(BGPRET,"~",3)=BGPFN_" in directory "_BGPUF
 Q
 ;
TSKMN ;
 S ZTIO=""
 K ZTSAVE S ZTSAVE("*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="AOAGP^BGP7GAGP",ZTDTH=$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT),ZTDESC="GUI NATIONAL GPRA REPORT 11" D ^%ZTLOAD
 D UPLOG^BGP7GUA(BGPGIEN,ZTSK)
 Q
AOAGP ;
 K ^TMP($J,"BGPGUI")
 ;cmi/anch/maw added 5/12/2009 for word output
 D GUIR^BGPXBLM("PRINT^BGP7PARP","^TMP($J,""BGPGUI"",")
 S X=0,C=0 F  S X=$O(^TMP($J,"BGPGUI",X)) Q:X'=+X  D
 . S C=C+1
 . N BGPDATA
 . S BGPDATA=$G(^TMP($J,"BGPGUI",X))
 . I BGPDATA="ZZZZZZZ" S BGPDATA=$C(12)
 . S ^BGPGUIG(BGPGIEN,11,C,0)=BGPDATA
 S ^BGPGUIG(BGPGIEN,11,0)="^90558.1911^"_C_"^"_C_"^"_DT
 K ^TMP($J,"BGPGUI")
 ;cmi/anch/maw end of mods
 ;I BGPEXPT D GS^BGP7UTL
 I BGPRPTT="A" D GNT1^BGP7UTL
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
 S DIE="^BGPGUIG(",DA=BGPGIEN,DR=".04////"_$$NOW^XLFDT_";.06///C"
 D ^DIE
 K DIE,DR,DA
 Q
