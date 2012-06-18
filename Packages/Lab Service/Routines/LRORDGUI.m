LRORDGUI ;IHS/OIT/MKK - LAZY ACCESSION LOGGING for IHS PATIENT CHART ONLY ;JUL 06, 2010 3:14 PM;
 ;;5.2;LAB SERVICE;**1027**;NOV 01, 1997
 ;;
 ; Cloned from LEDI III LRORD routine. Next two lines VA code
LRORD ;DALOI/CJS - LAZY ACCESSION LOGGING ;2/6/91  12:54 ;
 ;;5.2;LAB SERVICE;**100,121,153,286**;Sep 27, 1994
 ;;
 ; This code was removed from the previous IHS version of the LRORD routine
 ; and placed in this new routine due to the changes to the LRORD routine
 ; brought in with VA LR*5.2*286 --LEDI III.
 ; 
 ; It was felt that the PATIENT CHART coding was overwhelming the logic
 ; flow of the LRORD routine.
 ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("^LRORDGUI 0.0")
 S:XQY0["LRFASTS" BLROPT="FASTORD",BLROPT(0)=$P(XQY0,U)
 S XWBWRAP=1  ;IHS/ITSC/TPF 10/10/02 REQUESTED BY PATIENT CHART DEV. F.J.EVANS **1014**
 S:$G(BLROPT)=""!($G(BLROPT(0))'=$P(XQY0,U)) BLROPT="MULTI",BLROPT(0)=$P(XQY0,U)  ;IHS/OIRM TUC/AAB 2/1/97
 ;;
EN ; EP ; from EN^LRORD
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("EN^LRORDGUI 0.0")
 I $D(^LAB(69.9,1,"RO")),+$H'=+^("RO") D  Q
 . NEW STR
 . S STR="ROLLOVER "_$S($P(^("RO"),U,2):"IS RUNNING.",1:"HAS NOT RUN.")
 . S STR=STR_"  CHECK WITH SITE MANAGER"
 . S RESULT(1)=-1,RESULT(2)=STR
 ;
EN1 ; EP ; from EN1^LRORD also
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("EN1^LRORDGUI 0.0")
 D ^BLRPARAM
 D ^LRPARAM
 K ^TMP("LRSTIK",$J),DIC,LRURG,LRSAME,LRCOM,LRNATURE,LRTCOM
 S LRORDTIM="" S:'$D(LRORDR) LRORDR="" D DT^LRX
 I $D(LRADDTST) Q:LRADDTST=""
 S LRFIRST=1,LRODT=DT,U="^",LRECT=0,LROUTINE=$P(^LAB(69.9,1,3),U,2)
 S:$G(LRORDRR)="R" LRECT=1,LRFIRST=0
 S LRECT="Y",LRODT=BPCODT,LRURG=BPCURG
 I LRORDR="LC" S LRLWC="SP"
 I LRORDR="SP" S LRLWC="SP"
 I LRORDR="WC" S LRLWC="WC"
 ;
L5 ; EP ; from L5^LRORD also
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("L5^LRORDGUI 0.0")
 I LRORDR'="" D  Q:Y<1  Q:$G(X)>$G(LRDAHEAD)
 . S X=LRODT,%DT="T" D ^%DT I Y=-1 S RESULT(1)=1,RESULT(2)="Incorrect Date/Time Format" Q
 . S LRORDTIM=$P(Y,".",2),LRODT=$P(Y,".",1),X1=Y,X2=DT D ^%DTC
 . I X>$G(LRDAHEAD) S RESULT(1)=-1,RESULT(2)="Can't order more than "_$G(LRDAHEAD)_" days ahead!!"
 ;
 I $D(LRODT),$P(LRODT,".")<DT D  Q
 . S RESULT(1)=-1
 . S RESULT(2)="Cannot order in the Past."
 ;
 I $D(LRFLOG) S Y=LRFLOG
 ;
G0 ; EP ; 
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("G0^LRORDGUI 0.0")
 S (LRWP,I)=0
 D:LRFLOG
 . S $P(LRFLOG,U,3)=$P(^LAB(62.2,+$P(^LAB(62.6,+LRFLOG,0),U,2),0),U,2)
 . S LRFLOG(0)=^LAB(62.6,+LRFLOG,0)
 . S (LRWP,I)=0
 . F  S I=$O(^LAB(62.6,+Y,1,I)) Q:I<1  D
 . . S Y(0)=$G(^LAB(62.6,+Y,1,I,0)),LRWP=LRWP+1
 . . S ^TMP("LRSTIK",$J,$S($P(LRFLOG(0),"^",5):I,1:LRWP))=Y(0)
 . . ; Lookup by number user enters.
 . . S ^TMP("LRSTIK",$J,"B",LRWP)=$S($P(LRFLOG(0),"^",5):I,1:LRWP)
 . . ; Lookup by test - used by LEDI (LRORDB) when user creates list "on-the-fly"
 . . S ^TMP("LRSTIK",$J,"C",+Y(0),$S($P(LRFLOG(0),"^",5):I,1:LRWP))=""
 . I LRWP>40 S LRFIRST=0 ; Don't automatically display "long" test lists.
 ;
 D:+BPCOORDS>0     ;  - PROCESSES OTHER ORDERS
 . NEW BPCOORD,BPCTDTA,BPCCS,BPCTNAM,BPCCSDTA
 . F I=1:1 S BPCOORD=$P(BPCOORDS,",",I) Q:+BPCOORD<1  I $D(^LAB(60,BPCOORD)) D
 .. S BPCTDTA=^LAB(60,BPCOORD,0)
 .. S BPCCS=$P(BPCTDTA,U,9) ;COLLECTION SAMPLE IEN
 .. S BPCTNAM=$P(BPCTDTA,U,1) ;TEST NAME
 .. I +BPCCS>0 D
 ... S BPCCSDTA=$G(^LAB(62,BPCCS,0))
 ... S BPCCSDTA=$P(BPCCSDTA,U,1,2)
 .. S LRWP=LRWP+1
 .. S ^TMP("LRSTIK",$J,LRWP)=BPCOORD_U_BPCTNAM_U_$G(BPCCS)_U_$G(BPCCSDTA)
 .. S ^TMP("LRSTIK",$J,"B",LRWP)=LRWP
 .. S:BPCTL'="" BPCTL=BPCTL_","_LRWP S:BPCTL="" BPCTL=LRWP
 ;
 K I1
 G G5
 ;
G1 S LRWP=0
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("G1^LRORDGUI 0.0")
 ;
GET ; EP
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("GET^LRORDGUI 0.0")
 D Q15^LRORD2
 D ^DIC K DIC("S") G:Y<1 G5
 S LRWP=LRWP+1,LRY=Y
 S ^TMP("LRSTIK",$J,LRWP)=$P(LRY,U,1,2)
 ; "B" Used to lookup by number user enters.
 S ^TMP("LRSTIK",$J,"B",LRWP)=LRWP
 ; "C" Used by LEDI (LRORDB)
 S ^TMP("LRSTIK",$J,"C",+LRY,LRWP)=""
 S LRTSTS=+^TMP("LRSTIK",$J,LRWP) D GS^LRORD3
 S:+LRSAMP=-1&(LRSPEC=-1) LRWP=LRWP-1
 G GET:+LRSAMP=-1&(LRSPEC=-1)
 S ^TMP("LRSTIK",$J,LRWP)=^TMP("LRSTIK",$J,LRWP)_U_LRSAMP_U_U_LRSPEC
 G GET
 ;
G5 ; EP
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("G5^LRORDGUI 0.0")
 G KILL:LRWP<1
 S:'$D(^LRO(69,LRODT,0)) ^(0)=$P(^LRO(69,0),U,1,2)_U_LRODT_U_(1+$P(^(0),U,4)),^LRO(69,LRODT,0)=LRODT,^LRO(69,"B",LRODT,LRODT)=""
 S LRAD=DT,LRWPD=LRWP\2+(LRWP#2) D ^LRORD1GU
 ;
KILL ; EP
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("KILL^LRORDGUI 0.0")
 D ^LRORDK,HOME^%ZIS
 Q
 ;
% R %:DTIME Q:%=""!(%["N")!(%["Y")!($E(%)="^")  W !,"Answer 'Y' or 'N': " G %
 ;
EN01 ;LAB COLLECT ORDER ENTRY
ORDER ; EP
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ORDER^LRORDGUI 0.0")
 S %=2 W !,"Do you want copies of the orders" D YN^DICN Q:%=-1  S:%=1 LRSLIP="" I %=0 D QUIZ G ORDER
 S LRORDR="LC",LRLWCURG=$S($P(^LAB(69.9,1,3),U,2)'="":$P(^(3),U,2),1:9)
 S:$G(BLROPT)=""!($G(BLROPT(0))'=$P(XQY0,U)) BLROPT="FASTORD",BLROPT(0)=$P(XQY0,U)
 G LRORD
 ;
EN02 ;SEND PATIENT ORDER ENTRY
SENDPAT ; EP
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("SENDPAT^LRORDGUI 0.0")
 S %=1 W !,"Do you want copies of the orders" D YN^DICN Q:%=-1  S:%=1 LRSLIP="" I %=0 D QUIZ G SENDPAT
 S LRORDR="SP"
 G LRORD
 ;
IMMCOL ;EP - IMMEDIATE LAB COLLECTION
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("IMMCOL^LRORDGUI 0.0")
 I '$P($G(^LAB(69.9,1,7,DUZ(2),0)),U,6) W !!?5," This option is not available at the time ",!!,$C(7) Q
 S LRORDR="I"
 K LRODT
 S:$G(BLROPT)=""!($G(BLROPT(0))'=$P(XQY0,U)) BLROPT="FASTORD",BLROPT(0)=$P(XQY0,U)
 G LRORD
 ;
EN03 ;WARD COLLECT ORDER ENTRY
WARDCOL ; EP
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("WARDCOL^LRORDGUI 0.0")
 S %=1
 W !,"Do you want copies of the orders" D YN^DICN Q:%=-1  S:%=1 LRSLIP="" I %=0 D QUIZ G WARDCOL
 S:$G(BLROPT)=""!($G(BLROPT(0))'=$P(XQY0,U)) BLROPT="FASTORD",BLROPT(0)=$P(XQY0,U)  ;IHS/OIRM TUC/AAB 2/13/97 
 S LRORDR="WC" D LRORD
 Q
 ;
 ;
LEDI ; EP - Laboratory Electronic Data Exchange
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("LEDI^LRORDGUI 0.0")
 ; This entry point is used to select patients from ^LRT(67, file
 ; Routine LRDPAREF controls patient selection, patients must already
 ; exist in ^DPT in order to be selected.
 D ^LRPARAM
 I $G(LREND) D ^LRORDK Q
 ;
 N CONTROL,LA7,LA7SCFG,LA7X,LA7Y,LR64,LR696,LRLABLIO,LRRSTAT,LRRSITE,LRSD,LRTSN
 S LRREFBAR=$$BAR^LA7SBCR
 I LRREFBAR<0 D ^LRORDK Q
 ;
 S LRRSTAT="I"
 S LRRSTAT(0)=$$FIND1^DIC(64.061,"","OMX","Specimen in process","","I $P(^LAB(64.061,Y,0),U,7)=""U""")
 D SITE^LA7SBCR2(.LRRSITE,"Scan Remote Site Barcode (SM)",LRREFBAR)
 I LRRSITE("ERROR") D  Q
 . W !!,$C(7),"ERROR -- ",$P(LRRSITE("ERROR"),"^",2),!
 . D ^LRORDK
 ;
 ; Get shipping manifest ID manual input
 I $G(LRRSITE("SMID"))="" D
 . F  D SMID^LRORDB Q:LREND!($G(LRRSITE("SMID"))'="")
 I $G(LREND) D ^LRORDK Q
 ;
 ; LRORDRR="R" variable indicates host accessioning of remote orders
 S LRORDRR="R",LRORDR="" K LRODT
 D LRORD,^LRORDK
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("LEDI^LRORDGUI 9.0")
 Q
 ;
 ;
 ; LRORDRR =TYPE OF ORDER, LRECT =ASK COLECTION TIME
 ; LRFLOG =ACCESSION TEST GROUP, IF DEFINED ON ENTRY, PRESELECTS GROUP
 ;
QUIZ ; EP
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("QUIZ^LRORDGUI 0.0")
 W !,"The order copy is automatically sent to the CLOSEST PRINTER,"
 W !,"if a closest printer is defined for the device you are using."
 W !,"Otherwise, you will be prompted with ORDER COPY DEVICE.",!
 Q
