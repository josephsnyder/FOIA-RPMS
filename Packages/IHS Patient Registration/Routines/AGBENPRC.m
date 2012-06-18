AGBENPRC ;IHS/ASDS/TPF - PRINT BENEFIT PRODUCTIVITY REPORT BY COORD; MAR 19, 2010  
 ;;7.1;PATIENT REGISTRATION;**4,7,8**;AUG 25, 2005
 ;
START ;
 W @IOF
 D INIT
ASKDATE ;EP -
 K DIR
 S DIR(0)="YO"
 S DIR("A")="DO YOU WISH TO ENTER A DATE RANGE"
 S DIR("B")="YES"
 D ^DIR
 Q:$D(DTOUT)!$D(DUOUT)
 I 'Y S AGBEG=$O(^AUPNAPPS("D","")),AGEND=$O(^AUPNAPPS("D",""),-1) G ASKCO
ASKBEG ;EP -
 W !!
 S %DT("A")="SELECT BEGINNING DATE RANGE: "
 S %DT="APE"
 D ^%DT
 G:X=""!(X[U) ASKDATE
 S AGBEG=Y
ASKEND ;
 W !!
 S %DT("A")="SELECT ENDING DATE RANGE: "
 S %DT="APE"
 D ^%DT
 G:X=""!(X[U)!(Y<0) ASKBEG
 S AGEND=Y
 I AGBEG>AGEND W !!,*7,"INVALID ENTRY - The END is before the BEGINNING." G ASKBEG
 ;
ASKCO ;EP -
 W !!
 K DIR,ASKCOORD
 S DIR(0)="YO"
 S DIR("A")="DO YOU WISH TO INCLUDE A PARTICULAR BENEFIT COORDINATOR"
 S DIR("B")="YES"
 D ^DIR
 G:$D(DTOUT)!$D(DUOUT) ASKDATE
 I 'Y G ASKTYPE
ASKCO1 ;EP -
 K DIR,DIC,DIE,DR,DA
 S DIC=200
 S DIC("A")="SELECT BENEFIT COORDINATOR: "
 S:$D(ASKCOORD) DIC("A")="SELECT ANOTHER BENEFIT COORDINATOR: "
 S DIC(0)="AEMQ"
 D ^DIC
 I +Y>0 S ASKCOORD(+Y)="" G ASKCO1
 ;
 ;
ASKTYPE ;EP - APPLICATION TYPE
 W !!
 K DIR,APPTYPE
 S DIR(0)="YO"
 S DIR("A")="DO YOU WISH TO INCLUDE A PARTICULAR APPLICATION TYPE"
 S DIR("B")="YES"
 D ^DIR
 G:$D(DTOUT)!$D(DUOUT) ASKCO
 I 'Y G ASKSTAT
 ;
ASKTYPE1 ;EP -
 K DIR,DIE,DR,DA,DIC
 S DIC="^AUPNAPPT("
 S DIC("A")="SELECT AN APPLICATION TYPE: "
 S:$D(APPTYPE) DIC("A")="SELECT ANOTHER APPLICATION TYPE: "
 S DIC(0)="AEMQ"
 D ^DIC
 G:X="" ASKSTAT
 I Y>0 S APPTYPE(+Y)="" G ASKTYPE1
 ;
ASKSTAT ;EP - OVERALL STATUS
 W !!
 K DIR,ASKSTAT
 S DIR(0)="YO"
 S DIR("A")="DO YOU WISH TO INCLUDE A PARTICULAR STATUS? "
 S DIR("B")="YES"
 D ^DIR
 G:$D(DTOUT)!$D(DUOUT) ASKTYPE
 I 'Y G CONT
 ;
ASKSTAT1 ;EP -
 S CHOICE=$P(^DD(9000045.11,.04,0),U,3)
 K DIR
 S DIR("A")="ENTER AN APPLICATION STATUS? "
 S:$D(ASKSTAT) DIR("A")="ENTER ANOTHER APPLICATION STATUS? "
 S DIR(0)="SO^"_CHOICE
 D ^DIR
 G:$D(DTOUT)!$D(DUOUT) ASKTYPE
 I Y'="" S ASKSTAT(Y)="" G ASKSTAT1
CONT ;EP -
 D DEV Q:POP
 I $D(ZTSK) W !,"Report queued with task # ",$G(ZTSK) K DIR S DIR(0)="E" D ^DIR Q
 U IO
 D QUEUED
 D HOME^%ZIS
 D ^%ZISC
 Q
QUEUED ;
 D PROCESS
 D PRINT
 Q
PROCESS ;
 N IEN,REC
 S AGBEGX=$$FMTE^XLFDT(AGBEG,5)
 S AGENDX=$$FMTE^XLFDT(AGEND,5)
 K ^XTMP("AGBENPRC",$J)
 S AGBEG=AGBEG-.01
 F  S AGBEG=$O(^AUPNAPPS("D",AGBEG)) Q:AGBEG=""!(AGBEG>AGEND)  D
 .S IEN=""
 .F  S IEN=$O(^AUPNAPPS("D",AGBEG,IEN)) Q:IEN=""  D
 ..S REC=""
 ..F  S REC=$O(^AUPNAPPS("D",AGBEG,IEN,REC)) Q:REC=""  D
 ...S AGPAT=$$GET1^DIQ(9000045,IEN_",",.01,"I")
 ...S AGCHART=$P($G(^AUPNPAT(AGPAT,41,DUZ(2),0)),U,2)
 ...S:AGCHART="" AGCHART="UNDEF"
 ...S AGTYPE=$P($G(^AUPNAPPS(IEN,11,REC,0)),U,2)
 ...S:AGTYPE="" AGTYPE="UNDEF"
 ...I $D(APPTYPE) Q:'$D(APPTYPE(AGTYPE))
 ...S:AGTYPE'="UNDEF" AGTYPE=$P($G(^AUPNAPPT(AGTYPE,0)),U)
 ...S PERSREC=$P($G(^AUPNAPPS(IEN,11,REC,0)),U,3)
 ...S:PERSREC="" PERSREC="UNDEF"
 ...I $D(ASKCOORD) Q:'$D(ASKCOORD(PERSREC))
 ...S:PERSREC'="UNDEF" PERSREC=$P($G(^VA(200,PERSREC,0)),U)
 ...S OVERSTAT=$P($G(^AUPNAPPS(IEN,11,REC,0)),U,4)
 ...S:OVERSTAT="" OVERSTAT="UNDEF"
 ...I $D(ASKSTAT) Q:'$D(ASKSTAT(OVERSTAT))
 ...S IENS=REC_","_IEN_","
 ...S OVERSTAT=$$GET1^DIQ(9000045.11,IENS,.04,"E")
 ...S:OVERSTAT="" OVERSTAT="UNDEF"
 ...;
 ...S ^XTMP("AGBENPRC",$J,PERSREC,AGBEG,AGTYPE,OVERSTAT,AGCHART)=""
 Q
PRINT ;
 ;
 N AGBEG,AGBEGEX,PERSREC,OLDPERS,AGTYPE,OVERSTAT,AGCHART,ESC,AGCNT      ;AG*7.1*8
 S PERSREC=$O(^XTMP("AGBENPRC",$J,""))
 I PERSREC="" W !!,"NO APPLICATIONS FOUND WITH THE CRITERIA ENTERED" H 3 Q
 S PERSREC="",OLDPERS="",AGCNT=0                                        ;AG*7.1*8
 ;F  S PERSREC=$O(^XTMP("AGBENPRC",$J,PERSREC)) Q:PERSREC=""  D
 ;AG*7.1*7/IHS/SD/AR 02/23/2010
 F  S PERSREC=$O(^XTMP("AGBENPRC",$J,PERSREC)) Q:PERSREC=""!$G(ESC)  D
 .I OLDPERS'=PERSREC D
 ..;I IOST[("C-") W !! K DIR S DIR(0)="E" D ^DIR
 ..;AG*7.1*7/IHS/SD/AR 02/23/2010
 ..I IOST[("C-") W !! K DIR S DIR(0)="E" D ^DIR S ESC=X=U
 ..Q:$G(ESC)
 ..S AGCNT=AGCNT+1                                                      ;AG*7.1*8
 ..D HDR,SUBHDR
 .Q:$G(ESC)
 .S AGBEG=""
 .F  S AGBEG=$O(^XTMP("AGBENPRC",$J,PERSREC,AGBEG)) Q:AGBEG=""  D
 ..S AGTYPE=""
 ..F  S AGTYPE=$O(^XTMP("AGBENPRC",$J,PERSREC,AGBEG,AGTYPE)) Q:AGTYPE=""  D
 ...S OVERSTAT=""
 ...F  S OVERSTAT=$O(^XTMP("AGBENPRC",$J,PERSREC,AGBEG,AGTYPE,OVERSTAT)) Q:OVERSTAT=""  D
 ....S AGCHART=""
 ....;F  S AGCHART=$O(^XTMP("AGBENPRC",$J,PERSREC,AGBEG,AGTYPE,OVERSTAT,AGCHART)) Q:AGCHART=""  D
 ....;AG*7.1*7/IHS/SD/AR 02/23/2010
 ....F  S AGCHART=$O(^XTMP("AGBENPRC",$J,PERSREC,AGBEG,AGTYPE,OVERSTAT,AGCHART)) Q:AGCHART=""!$G(ESC)  D
 .....;I ($Y=(IOSL-4)) W !! K DIR S DIR(0)="E" D:IOST[("C-") ^DIR D HDR,SUBHDR
 .....;AG*7.1*7/IHS/SD/AR 02/23/2010
 .....I ($Y=(IOSL-4)) W !! K DIR S DIR(0)="E" D:IOST[("C-") ^DIR S ESC=X=U Q:$G(ESC)  D HDR,SUBHDR
 .....S Y=AGBEG X ^DD("DD") S AGBEGEX=Y
 .....W !,AGBEGEX
 .....W ?15,AGCHART
 .....W ?30,AGTYPE
 .....W ?60,OVERSTAT
 .....S AGCNT(PERSREC,AGTYPE,OVERSTAT)=$G(AGCNT(PERSREC,AGTYPE,OVERSTAT))+1 ;AG*7.1*8
 .....S AGCNT(0,AGTYPE,OVERSTAT)=$G(AGCNT(0,AGTYPE,OVERSTAT))+1             ;AG*7.1*8
 .....;I IOST[("C-"),'$O(^XTMP("AGBENPRC",$J,PERSREC)) D HDR,SUBHDR 
 .D TOT(PERSREC)                                                            ;AG*7.1*8
 I $G(AGCNT)>1 D                                                            ;AG*7.1*8
 .I IOST[("C-") W !! K DIR S DIR(0)="E" D ^DIR S ESC=X=U
 .Q:$G(ESC)
 .D TOT(0)                                                                  ;AG*7.1*8
 I $G(ESC) K ^XTMP("AGBENPRC",$J) Q
 D ^%ZISC
 I '$D(ZTQUEUED) I $Y>IOSL-4,(IOST[("C-")) W !! K DIR S DIR(0)="E" D ^DIR
 K ^XTMP("AGBENPRC",$J)
 Q
INIT ;
 S AGUSER=$$GET1^DIQ(200,DUZ_",",.01,"E")
 S AGLOC=$$GET1^DIQ(9999999.06,DUZ(2)_",",.01,"E")
 S AGRPTNAM="BENEFIT COORDINATOR PRODUCTIVITY REPORT BY COORDINATOR"
 X ^%ZOSF("UCI") S AGUCI=Y
 D NOW^%DTC
 S Y=% X ^DD("DD")
 S AGRPTDT=Y
 S AGPAGE=0
 S $P(AGDASH,"-",81)=""
 S $P(AGEQUAL,"=",81)=""
 Q
HDR ;
 S AGPAGE=AGPAGE+1
 W @IOF
 W !,AGUSER,?70,"Page ",AGPAGE
 W !,$$C^XBFUNC(AGLOC)
 W !,$$C^XBFUNC(AGRPTNAM)
 W !,$$C^XBFUNC("UCI: "_AGUCI)
 W !,$$C^XBFUNC("Report Date: "_AGRPTDT)
 S STR="Date range From "_AGBEGX_" to "_AGENDX
 W !,$$C^XBFUNC(STR)
 Q
SUBHDR ;
 W !!
 W AGEQUAL
 W "REPORT FOR DATES OBTAINED FROM "
 W AGBEGX
 W " TO ",AGENDX
 W !,"FOR "
 I '$D(APPTYPE) W !,"ALL APPLICATION TYPES"
 E  D
 .W "APPLICATION TYPES OF "
 .S APPTYPE=""
 .F  S APPTYPE=$O(APPTYPE(APPTYPE)) Q:APPTYPE=""  D
 ..W $$GET1^DIQ(9000048,APPTYPE_",",.01,"E")
 ..I $O(APPTYPE(APPTYPE)) W ","
 W !,"provided by ",PERSREC
 W !,AGEQUAL
 W !,"DATE",?15,"CHART",?30,"APPLICATION TYPE",?60,"STATUS"
 W !,"OBTAINED"
 W !,AGDASH
 Q
DEV ;
 K %ZIS,ZTSK
 S %ZIS="OPQ"
 D ^%ZIS
 Q:POP
 Q:'$D(IO("Q"))
 S ZTRTN="QUEUED^AGBENPRC",ZTDESC=AGRPTNAM
 S ZTSAVE("AG*")=""
 S ZTSAVE("ASKSTAT")=""
 S ZTSAVE("APPTYPE")=""
 S ZTSAVE("ASKCOORD")=""
 D ^%ZTLOAD
 Q
TOT(REC) ;                                                                  ;AG*7.1*8
 I REC=0 D
 . D HDR
 . W !!,?34,"Report Totals"
 W !!!,"APPLICATION",?30,"STATUS",?48,"TOTAL COUNT"
 W !,"TYPE"
 W !,AGEQUAL
 N AGTYPE,AGSTAT
 S (AGTYPE,AGSTAT)=""
 F  S AGTYPE=$O(AGCNT(REC,AGTYPE)) Q:AGTYPE=""  D
 . F  S AGSTAT=$O(AGCNT(REC,AGTYPE,AGSTAT)) Q:AGSTAT=""  D
 .. W !,AGTYPE,?30,AGSTAT,?50,$G(AGCNT(REC,AGTYPE,AGSTAT))
 Q
