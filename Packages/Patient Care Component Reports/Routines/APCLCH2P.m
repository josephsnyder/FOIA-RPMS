APCLCH2P ; IHS/CMI/LAB - community health profile print ;
 ;;2.0;IHS PCC SUITE;**11**;MAY 14, 2009;Build 58
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning in OL, OS ,OT
 ;
START ;
 K APCLQUIT
 S APCLPG=0
 I '$D(^XTMP("APCLCH2",APCLJOB,APCLBTH)) W !!,"NO DATA TO REPORT" G DONE
 D PRN
DONE ;
 D DONE^APCLOSUT
 K ^XTMP("APCLCH2",APCLJOB,APCLBTH)
 Q
PRN ;
 S APCLCOM="" F  S APCLCOM=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM)) Q:APCLCOM=""!($D(APCLQUIT))  S APCLLFAC=$P(^AUTTCOM(APCLCOM,0),U,15),APCLSFAC=$P(^AUTTCOM(APCLCOM,0),U,16),APCLTFAC=$P(^AUTTCOM(APCLCOM,0),U,17) D PRINT
 Q
PRINT ;
 D HEAD Q:$D(APCLQUIT)
ODX ;
 S APCLTYPE="DX"
 D ODXSUB
OL ;
 K APCLL S (APCLX,C)=0 F  S APCLX=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLLFAC,"OUTDXC",APCLX)) Q:APCLX=""!(C>14)  D
 .S APCLY=0 F  S APCLY=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLLFAC,"OUTDXC",APCLX,APCLY)) Q:APCLY'=+APCLY  D
 ..;S C=C+1,APCLL(C)=$E($P(^ICD9(APCLY,0),U,3),1,30)_"^"_^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLLFAC,"OUTDXC",APCLX,APCLY)_"^"_$P(^ICD9(APCLY,0),U)  ;cmi/anch/maw 9/10/2007 orig line
 ..S C=C+1,APCLL(C)=$E($P($$ICDDX^ICDEX(APCLY),U,4),1,30)_"^"_^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLLFAC,"OUTDXC",APCLX,APCLY)_"^"_$P($$ICDDX^ICDEX(APCLY),U,2)  ;cmi/anch/maw 9/10/2007 csv
 S M=C
OS ;
 K APCLS S (APCLX,C)=0 F  S APCLX=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLSFAC,"OUTDXC",APCLX)) Q:APCLX=""!(C>14)  D
 .S APCLY=0 F  S APCLY=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLSFAC,"OUTDXC",APCLX,APCLY)) Q:APCLY'=+APCLY  D
 ..;S C=C+1,APCLS(C)=$E($P(^ICD9(APCLY,0),U,3),1,30)_"^"_^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLSFAC,"OUTDXC",APCLX,APCLY)_"^"_$P(^ICD9(APCLY,0),U)  ;cmi/anch/maw 9/10/2007 orig line
 ..S C=C+1,APCLS(C)=$E($P($$ICDDX^ICDEX(APCLY),U,4),1,30)_"^"_^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLSFAC,"OUTDXC",APCLX,APCLY)_"^"_$P($$ICDDX^ICDEX(APCLY),U,2)  ;;cmi/anch/maw 9/10/2007 csv
 S:C>M M=C
OT ;
 K APCLT S (APCLX,C)=0 F  S APCLX=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLTFAC,"OUTDXC",APCLX)) Q:APCLX=""!(C>14)  D
 .S APCLY=0 F  S APCLY=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLTFAC,"OUTDXC",APCLX,APCLY)) Q:APCLY'=+APCLY  D
 ..;S C=C+1,APCLT(C)=$E($P(^ICD9(APCLY,0),U,3),1,30)_"^"_^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLTFAC,"OUTDXC",APCLX,APCLY)_"^"_$P(^ICD9(APCLY,0),U)  ;cmi/anch/maw 9/10/2007 orig line
 ..S C=C+1,APCLT(C)=$E($P($$ICDDX^ICDEX(APCLY),U,4),1,30)_"^"_^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLTFAC,"OUTDXC",APCLX,APCLY)_"^"_$P($$ICDDX^ICDEX(APCLY),U,2)  ;;cmi/anch/maw 9/10/2007 csv
 S:C>M M=C
WODX ;write outpatient diagnoses/pov's
 F APCLI=1:1:M D  Q:$D(APCLQUIT)
 .I $Y>(IOSL-4) D HEAD Q:$D(APCLQUIT)  D ODXSUB
 .W !
 .I $D(APCLL(APCLI)) W ?3,$E($P(APCLL(APCLI),U),1,20),?25,"(",$P(APCLL(APCLI),U,3),")",?35,$J($P(APCLL(APCLI),U,2),6)
 .I $D(APCLS(APCLI)) W ?46,$E($P(APCLS(APCLI),U),1,20),?68,"(",$P(APCLS(APCLI),U,3),")",?78,$J($P(APCLS(APCLI),U,2),6)
 .I $D(APCLT(APCLI)) W ?89,$E($P(APCLT(APCLI),U),1,20),?111,"(",$P(APCLT(APCLI),U,3),")",?121,$J($P(APCLT(APCLI),U,2),6)
ODXCAT ;
 S APCLTYPE="ODXCAT"
 I $Y>(IOSL-4) D HEAD Q:$D(APCLQUIT)
 S APCLTYPE="CAT" W !!! D ODXSUB
OLCAT ;
 K APCLL S (APCLX,C)=0 F  S APCLX=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLLFAC,"OUTCATC",APCLX)) Q:APCLX=""!(C>14)  D
 .S APCLY=0 F  S APCLY=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLLFAC,"OUTCATC",APCLX,APCLY)) Q:APCLY'=+APCLY  D
 ..S C=C+1,APCLL(C)=$E($P(^ICM(APCLY,0),U),1,30)_"^"_^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLLFAC,"OUTCATC",APCLX,APCLY)
 S M=C
OSCAT ;
 K APCLS S (APCLX,C)=0 F  S APCLX=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLSFAC,"OUTCATC",APCLX)) Q:APCLX=""!(C>14)  D
 .S APCLY=0 F  S APCLY=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLSFAC,"OUTCATC",APCLX,APCLY)) Q:APCLY'=+APCLY  D
 ..S C=C+1,APCLS(C)=$E($P(^ICM(APCLY,0),U),1,30)_"^"_^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLSFAC,"OUTCATC",APCLX,APCLY)
 S:C>M M=C
OTCAT ;
 K APCLT S (APCLX,C)=0 F  S APCLX=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLTFAC,"OUTCATC",APCLX)) Q:APCLX=""!(C>14)  D
 .S APCLY=0 F  S APCLY=$O(^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLTFAC,"OUTCATC",APCLX,APCLY)) Q:APCLY'=+APCLY  D
 ..S C=C+1,APCLT(C)=$E($P(^ICM(APCLY,0),U),1,30)_"^"_^XTMP("APCLCH2",APCLJOB,APCLBTH,"DATA",APCLCOM,APCLTFAC,"OUTCATC",APCLX,APCLY)
 S:C>M M=C
WOCAT ;write outpatient diagnoses/pov's
 F APCLI=1:1:M D  Q:$D(APCLQUIT)
 .I $Y>(IOSL-4) D HEAD Q:$D(APCLQUIT)  D ODXSUB
 .W !
 .I $D(APCLL(APCLI)) W ?3,$E($P(APCLL(APCLI),U),1,30),?35,$J($P(APCLL(APCLI),U,2),6)
 .I $D(APCLS(APCLI)) W ?46,$E($P(APCLS(APCLI),U),1,30),?78,$J($P(APCLS(APCLI),U,2),6)
 .I $D(APCLT(APCLI)) W ?89,$E($P(APCLT(APCLI),U),1,30),?121,$J($P(APCLT(APCLI),U,2),6)
 D INPT^APCLCH2S
 Q
ODXSUB ;
 S X="OUTPATIENT "_$S(APCLTYPE="DX":"DIAGNOSES",1:"MAJOR DIAGNOSTIC CATEGORIES") W !,?(132-$L(X)/2),X,!
 W !?8,$P(^DIC(4,APCLLFAC,0),U),?51,$P(^DIC(4,APCLSFAC,0),U),?94,$P(^DIC(4,APCLTFAC,0),U),!
 I APCLTYPE="DX" W !?3,"DIAGNOSIS/POV  (ICD CODES)",?46,"DIAGNOSIS/POV  (ICD CODES)",?89,"DIAGNOSIS/POV  (ICD CODES)",!?3,"-------------",?46,"------------",?89,"------------"
 I APCLTYPE="CAT" W !?3,"DIAGNOSTIC CATEGORY",?46,"DIAGNOSTIC CATEGORY",?89,"DIAGNOSTIC CATEGORY",!?3,"-------------------",?46,"-------------------",?89,"-------------------"
 Q
HEAD ;EP
 G:'APCLPG HEAD1
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLQUIT="" Q
HEAD1 ;
 W:$D(IOF) @IOF S APCLPG=APCLPG+1
 W !?3,$P(^VA(200,DUZ,0),U,2),?61,$$FMTE^XLFDT(DT),?110,"Page ",APCLPG,!
 W ?40,"*****  DIAGNOSES TALLY BY COMMUNITY/FACILITY  *****",!
 W ?50,$$FMTE^XLFDT(APCLBD),"  to  ",$$FMTE^XLFDT(APCLED),!
 W ?(132-($L($P(^AUTTCOM(APCLCOM,0),U))+12)/2),"COMMUNITY:  ",$P(^AUTTCOM(APCLCOM,0),U),!
 Q
