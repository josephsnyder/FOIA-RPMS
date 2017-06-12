PSBIHS4 ;KF/VAOIT BCMA Meds Admin date range ;MAR 2014
 ;;1.0;PSB BCMA CPS FOXK;**1018**;;Build 27
 ;Per VHA Directive 2004-038, this routine should not be modified.
 ; Reference/I
 S DIC="^DPT(",DIC(0)="AEMQMZ" D ^DIC Q:Y'>0
 Q:'+Y
 S PSBDFN=$P(Y,"^",1)
 K DIC,DIC(0),X,Y
ST2 ;START AND END DATES
 S %DT("A")="Enter a Start Date: "
 S %DT="AE" D ^%DT I X="^"!(X="") D STOP Q
 S PSBBDATE=Y K %DT,Y
 I PSBBDATE<3030801 S Y=PSBBDATE D DD^%DT W !,"You entered "_Y_" Start Date must be After 'August 1, 2003" D ST2 Q
 K %DT,Y
END      K X
 S %DT("A")="Enter a End Date: ",PSBEDATE=""
 S %DT="AE" D ^%DT I X=""!(X="^") D STOP Q
 S PSBEDATE=Y K %DT,Y
 S X1=PSBEDATE,X2=1 D C^%DTC S PSBEDATE=X K X1,X2
 I PSBEDATE<PSBBDATE W !,"End Date must be after the start !" D END Q
 W !,"Include Order Details" S %=2 D YN^DICN S PSBORDET=% I %=-1 G STOP
 W !,"NDC Daily Summary" S %=1 D YN^DICN S PSBRTNDC=% I %=-1 G STOP
 I PSBORDET=2&(PSBRTNDC=2)  W !,"Eixting now nothing selected to print" G STOP
TAS      ;TASK IT OR NOT
 S %ZIS="Q"
 W ! D ^%ZIS K %ZIS
 I POP D  Q
 .W $C(7)
 .K VISN,PSBEDATE,PSBBDATE,PSBDV
 ; output not queued...
 I '$D(IO("Q")) D
 .D WAIT^DICD U IO D NEW
 .I IO'=IO(0) D ^%ZISC
 ; set up the Task...
 I $D(IO("Q")) D
 .S ZTRTN="NEW^PSBIHS4"
 .S ZTDESC="PSB Meds Admin by Date Range"
 .S ZTSAVE("PSBBDATE")="",ZTSAVE("PSBEDATE")="",ZTSAVE("PSBDFN")="",ZTSAVE("PSBORDET")="",ZTSAVE("PSBRTNDC")=""
 .S ZTIO=ION
 .D ^%ZTLOAD,HOME^%ZIS
 .W !,$S($G(ZTSK):"Task number "_ZTSK_" queued.",1:"ERROR -- NOT QUEUED!")
 .K IO("Q"),ZTSK,ZTIO,ZTSAVE,ZTRTN,ZTDESC
 Q
NEW      ;Collect data
 N PG,PSBNAME,PSBDOB,PSBIEN,PSBSTATUS,PSBLASTACT,PSBOITEM,PSBDSIEN,PSBDATE,PSBNDC,PSBOIEN,PSBDRUG,DFN,PSBDATEE,PSBPID,PSBDU,PSBDIEN ;HEAD,HEAD1
 ;GET PT DEM
 S DFN=PSBDFN
 D DEM^VADPT,PID^VADPT
 S PSBPID=$S(DUZ("AG")="I":(VA("PID")),1:$E(VA("PID"),$L(VA("PID"))-3,999)),PSBNAME=VADM(1),PSBDOB=$P(VADM(3),U,2)
 K VA,VADM
 D NOW^%DTC S Y=% D DD^%DT S PSBNOW=Y
 S HEAD="W @IOF S:'$D(PG) PG=0 S PG=PG+1 W !,""Medications Administrated in BCMA "" S Y=PSBBDATE D DD^%DT W Y_"" Through "" S Y=PSBEDATE D DD^%DT W Y,"" Run Date: ""_PSBNOW,?100,"" Page "",PG"
 S HEAD1="W !,PSBNAME,"" HRN: "",PSBPID,"" DOB: "",PSBDOB"
 ;X HEAD,HEAD1
 K ^TMP($J,"BCMA")
 S PSBDATE=PSBBDATE F   S PSBDATE=$O(^PSB(53.79,"AADT",PSBDFN,PSBDATE)) Q:PSBDATE'>0  I PSBDATE>PSBBDATE&(PSBDATE<PSBEDATE) D
 .S PSBIEN="" F  S PSBIEN=$O(^PSB(53.79,"AADT",PSBDFN,PSBDATE,PSBIEN)) Q:PSBIEN'>0  D
 ..S PSBSTATUS=$P($G(^PSB(53.79,PSBIEN,0)),U,9)
 ..S PSBLASTACT=$P($G(^PSB(53.79,PSBIEN,0)),U,6) ;GET LAST ACTION DT, THE XFER HAS MULTPE ACTION DT FOR SAME IEN, BY DESIGN FOR SOME REASON.
 ..; NO HELD, REFUSED, NOT GIVEN, MISSING ON THE REPORT
 ..Q:PSBSTATUS="H"!(PSBSTATUS="N")!(PSBSTATUS="R")!(PSBSTATUS="M")
 ..S PSBOITEM=$P($G(^PSB(53.79,PSBIEN,0)),U,8)
 ..S ^TMP($J,"BCMA",PSBLASTACT,PSBIEN)=PSBOITEM
 ..F J=1:1:$P($G(^PSB(53.79,PSBIEN,.5,0)),U,4) D
 ...S PSBDSIEN=$P($G(^PSB(53.79,PSBIEN,.5,J,0)),U,1),^TMP($J,"BCMA","OI",PSBLASTACT,PSBIEN,PSBDSIEN)=$P($G(^PSB(53.79,PSBIEN,.5,J,0)),U,3)_U_$P($G(^PSB(53.79,PSBIEN,.5,J,0)),U,4)
 ...;COUNT DAILY PER NDC UD
 ...S PSBDNDC=$P($G(^PSDRUG(PSBDSIEN,2)),U,4) I PSBDNDC="" S PSBDNDC="NO NDC"
 ...I '$D(^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDC1",$P($G(^PSDRUG(PSBDSIEN,0)),U,1),PSBDSIEN,PSBDNDC)) S ^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDC1",$P($G(^PSDRUG(PSBDSIEN,0)),U,1),PSBDSIEN,PSBDNDC)=0
 ...S ^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDC1",$P($G(^PSDRUG(PSBDSIEN,0)),U,1),PSBDSIEN,PSBDNDC)=^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDC1",$P($G(^PSDRUG(PSBDSIEN,0)),U,1),PSBDSIEN,PSBDNDC)+1
 ..;COUNT NDC PER DAY IV ADD
 ..I $D(^PSB(53.79,PSBIEN,.6,0)) F J=1:1:$P(^PSB(53.79,PSBIEN,.6,0),"^",4) D
 ...S ^TMP($J,"BCMA","ADD",PSBIEN,PSBLASTACT,$P(^PSB(53.79,PSBIEN,.6,J,0),U,1))=$P(^PSB(53.79,PSBIEN,.6,J,0),"^",3)
 ...;COUNT NDC PER DAY UD
 ...S PSBOIEN=$P(^PSB(53.79,PSBIEN,.6,J,0),U,1),PSBDIEN=$P($G(^PS(52.6,PSBOIEN,0)),U,2),PSBDNDC=$P($G(^PSDRUG(PSBDIEN,2)),U,4) I PSBDNDC="" S PSBDNDC="NO NDC"
 ...I '$D(^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDCA",$P($G(^PSDRUG(PSBDIEN,0)),U,1),PSBDIEN,PSBDNDC)) S ^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDCA",$P($G(^PSDRUG(PSBDIEN,0)),U,1),PSBDIEN,PSBDNDC)=0
 ...S ^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDCA",$P($G(^PSDRUG(PSBDIEN,0)),U,1),PSBDIEN,PSBDNDC)=^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDCA",$P($G(^PSDRUG(PSBDIEN,0)),U,1),PSBDIEN,PSBDNDC)+1
 ..;COUNT NDC PER DAY IV SOL
 ..I $D(^PSB(53.79,PSBIEN,.7,0)) F J=1:1:$P(^PSB(53.79,PSBIEN,.7,0),"^",4) D
 ...S ^TMP($J,"BCMA","SOL",PSBIEN,PSBLASTACT,$P(^PSB(53.79,PSBIEN,.7,J,0),U,1))=$P(^PSB(53.79,PSBIEN,.7,J,0),"^",3)
 ...S PSBOIEN=$P(^PSB(53.79,PSBIEN,.7,J,0),U,1),PSBDIEN=$P($G(^PS(52.7,PSBOIEN,0)),U,2),PSBDNDC=$P($G(^PSDRUG(PSBDIEN,2)),U,4) I PSBDNDC="" S PSBDNDC="NO NDC"
 ...I '$D(^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDCS",$P($G(^PSDRUG(PSBDIEN,0)),U,1),PSBDIEN,PSBDNDC)) S ^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDCS",$P($G(^PSDRUG(PSBDIEN,0)),U,1),PSBDIEN,PSBDNDC)=0
 ...S ^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDCS",$P($G(^PSDRUG(PSBDIEN,0)),U,1),PSBDIEN,PSBDNDC)=^TMP($J,"BCMA1",$P(PSBDATE,".",1),"NDCS",$P($G(^PSDRUG(PSBDIEN,0)),U,1),PSBDIEN,PSBDNDC)+1
 I '$D(^TMP($J,"BCMA")) D
 .X HEAD,HEAD1 W ! F J=1:1:IOM W "-"
 .W !,"Nothing to Report"
 I $D(^TMP($J,"BCMA")) D
 .D:PSBRTNDC=1 SUMNDC
 .D:PSBORDET=1 DETPRT
 D STOP
 Q
 ;LOOP DATA and Print                       
DETPRT ; PRINT ORDER DETAILS
 X HEAD,HEAD1 W !,"Action Date/Time",?30,"Medication Given",! F J=1:1:IOM W "-"
 S PSBDATE="" F  S PSBDATE=$O(^TMP($J,"BCMA",PSBDATE)) Q:'+PSBDATE  D
 .S PSBIEN="" F  S PSBIEN=$O(^TMP($J,"BCMA",PSBDATE,PSBIEN)) Q:'+PSBIEN  D
 ..S Y=PSBDATE  D DD^%DT S PSBDATEE=Y
 ..S PSBOIEN=$G(^TMP($J,"BCMA",PSBDATE,PSBIEN)),PSBDIEN=$O(^PSDRUG("ASP",PSBOIEN,"")),PSBNDC=$P($G(^PSDRUG(PSBDIEN,2)),U,4)
 ..I $Y>(IOSL-2) X HEAD,HEAD1 W !,"Action Date/Time",?30,"Medication Given",! F J=1:1:IOM W "-"
 ..W !,Y,?23,"Pharmacy Orderable Item: ",$E($P($G(^PS(50.7,PSBOIEN,0)),"^",1),1,35)_$S($P($G(^PSB(53.79,PSBIEN,.1)),"^",5)'="":" Dose Ordered:"_$P($G(^PSB(53.79,PSBIEN,.1)),"^",5),1:"")
 ..S PSBDSIEN="" F  S PSBDSIEN=$O(^TMP($J,"BCMA","OI",PSBDATE,PSBIEN,PSBDSIEN)) Q:$G(PSBDSIEN)=""  D
 ...S PSBDU=$P($G(^TMP($J,"BCMA","OI",PSBDATE,PSBIEN,PSBDSIEN)),U,2)
 ...W !,?5,$P($G(^PSDRUG(PSBDSIEN,0)),U,1)_" Dose Given: "_$P($G(^TMP($J,"BCMA","OI",PSBDATE,PSBIEN,PSBDSIEN)),U,1)_$S(PSBDU'["TAB"&(PSBDU'["CAP")&(PSBDU'["PATCH"):" Unit of Administration: "_PSBDU,1:"")_" NDC: "_$P($G(^PSDRUG(PSBDSIEN,2)),U,4)
 ..I $D(^TMP($J,"BCMA","ADD",PSBIEN,PSBDATE)) D
 ...W !,?5,"Additives: " S PSBOIEN="" S PSBOIEN=$O(^TMP($J,"BCMA","ADD",PSBIEN,PSBDATE,PSBOIEN)) Q:'+PSBOIEN  D
 ....S PSBDIEN=$P($G(^PS(52.6,PSBOIEN,0)),U,2),PSBNDC=$P($G(^PSDRUG(PSBDIEN,2)),U,4) I PSBNDC="" S PSBNDC="NO NDC"
 ....W !,?10,$P($G(^PS(52.6,PSBOIEN,0)),U,1)," Dose: ",$G(^TMP($J,"BCMA","ADD",PSBIEN,PSBDATE,PSBOIEN))," NDC: ",PSBNDC
 ..I $D(^TMP($J,"BCMA","SOL",PSBIEN,PSBDATE)) D
 ...W !,?5,"Solutions: " S PSBOIEN="" S PSBOIEN=$O(^TMP($J,"BCMA","SOL",PSBIEN,PSBDATE,PSBOIEN)) Q:'+PSBOIEN  D
 ....S PSBDIEN=$P($G(^PS(52.7,PSBOIEN,0)),U,2),PSBNDC=$P($G(^PSDRUG(PSBDIEN,2)),U,4) I PSBNDC="" S PSBNDC="NO NDC"
 ....W !,?10,$P($G(^PS(52.7,PSBOIEN,0)),U,1)," Dose: ",$G(^TMP($J,"BCMA","SOL",PSBIEN,PSBDATE,PSBOIEN))," NDC: ",PSBNDC
 ..W !,"Location: "_$$GET1^DIQ(53.79,PSBIEN,.02),! ;SPACE BETWEEN MED LOGS
 Q
SUMNDC ; DAILY SUMMARY 
 K PSBCNT S PSBCNT=0
 N PSBLDT,PSBTYP,PSBDNAME,PSBDIEN,PSBNDC,PSBIEN,HEAD2
 S HEAD2="W !,""Medication "",?55,""NDC"",?80,""Number Medications Given"",! F J=1:1:IOM W ""-"""
 X HEAD,HEAD1,HEAD2
 S PSBDT=0 F  S PSBDT=$O(^TMP($J,"BCMA1",PSBDT)) Q:PSBDT'>0  D
 .I $G(PSBLDT)=""!(PSBDT'=$G(PSBLDT)) S Y=PSBDT D DD^%DT W !,Y
 .S PSBTYP="" F  S PSBTYP=$O(^TMP($J,"BCMA1",PSBDT,PSBTYP)) Q:PSBTYP=""  D
 ..W !,$S(PSBTYP="NDC1":"Unit Dose:",PSBTYP="NDCA":"Additives:",PSBTYP="NDCS":"Solutions:",1:"")
 ..S PSBDNAME="" F  S PSBDNAME=$O(^TMP($J,"BCMA1",PSBDT,PSBTYP,PSBDNAME)) Q:PSBDNAME=""  D
 ...S PSBDIEN=0  F  S PSBDIEN=$O(^TMP($J,"BCMA1",PSBDT,PSBTYP,PSBDNAME,PSBDIEN)) Q:PSBDIEN'>0  D
 ....S PSBNDC="" F  S PSBNDC=$O(^TMP($J,"BCMA1",PSBDT,PSBTYP,PSBDNAME,PSBDIEN,PSBNDC)) Q:PSBNDC=""  D
 .....I $Y>(IOSL-2) X HEAD,HEAD1,HEAD2 S Y=PSBDT D DD^%DT W !,Y,!,$S(PSBTYP="NDC1":"Unit Dose:",PSBTYP="NDCA":"Additives:",PSBTYP="NDCS":"Solutions:",1:"")
 .....S PSBLDT=PSBDT W !,PSBDNAME,?55,PSBNDC,?80,$G(^TMP($J,"BCMA1",PSBDT,PSBTYP,PSBDNAME,PSBDIEN,PSBNDC))
 .....;DAILY CNT
 .....I '$D(PSBCNT(PSBDT)) S PSBCNT(PSBDT)=0
 .....S PSBCNT(PSBDT)=PSBCNT(PSBDT)+$G(^TMP($J,"BCMA1",PSBDT,PSBTYP,PSBDNAME,PSBDIEN,PSBNDC))
 .....S PSBCNT=PSBCNT+$G(^TMP($J,"BCMA1",PSBDT,PSBTYP,PSBDNAME,PSBDIEN,PSBNDC))
 .W ! F J=1:1:IOM W "-"
 .W !,?55,"Daily Totals: ",?80,$G(PSBCNT(PSBDT))
 W !,?55,"Report Totals: ",?80,PSBCNT
 Q
STOP ;FINAL CLEAN UP
 K ^TMP($J,"BCMA"),^TMP($J,"BCMA1"),PSBDFN,PSBEDATE,PSBBDATE,J,JJ,POP,HEAD,HEAD1,PSBNOW,PSBCNT,PSBORDET,PSBRTNDC,PSBDT,PSBDNDC
 Q
