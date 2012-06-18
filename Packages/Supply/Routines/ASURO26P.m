ASURO26P ; IHS/ITSC/LMH -PRE-PRINTED ISSUE BOOK-STOCK ;   
 ;;4.2T2;Supply Accounting Mgmt. System;;JUN 30, 2000
 ;This routine formats and prints report 26, Pre-Printed Issue Book -
 ;Stock Issues Request Report.
 D INIT
 S ASUK("PTR")="I/B",%ZIS("A")="Select Printer for Issue Book: " D ^ASUUZIS Q:POP  ; JDH quit to %ZIS Q:$D(DUOUT)  Q:$D(DTOUT)
 D SELMONTH Q:$D(DUOUT)  Q:$D(DTOUT)
 I ASUK("I/B","Q")=1 D  Q
 .S XBRP="PSER^ASURO26P",XBRC="^ASURO260",XBRX="^ASUROUKIL" D Q^ASUUZIS K ASUK
 D ^ASURO260 ;SORT AND EXTRACT DFNS
 D O^ASUUZIS G PSER
PRINT ;EP ;TO RE-CREATE REPORT FROM PREVIOUSLY SELECTED RECORDS
 D INIT
 D:'$D(DT) ^XBKVAR
 I '$D(DUZ(2)) W !,"Report must be run from Kernel option" Q
 I '$D(ASUL(1,"AR","AP")) D SETAREA^ASULARST
 S ASUK("PTRSEL")=$G(ASUK("PTRSEL")) I ASUK("PTRSEL")]"" G PSER
 S ZTRTN="PSER^ASURO26P",ZTDESC="SAMS RPT 26" D O^ASUUZIS
 I POP S IOP=$I D ^%ZIS Q
 I ASUK(ASUK("PTR"),"Q") G K
PSER ;EP;FOR TASKMAN QUEUE OF PRINT
 K ASUX
 D U^ASUUZIS
 S ASUK("AS OF")=$P($G(^XTMP("ASUR","R26",0)),U,3)
 S ASUX("STA")=$O(^XTMP("ASUR","R26",0))
 I ASUX("STA")']""!(ASUK("AS OF")']"") D  G K
 .W @IOF,!!,"NO ISSUE BOOK DATA FOR YOUR SELECTION"
 D:'$D(ASULMN) MOTBL
 S (ASUC("LN"),ASUC("PG"))=0,ASUC("LI")=""
 S ASUX("USR")=""  ;LMH 3/9/00
 I '$D(ASUX("STA")) S ASUX("STA")=$G(ASUL(2,"STA","E#"))
 Q:ASUX("STA")']""  D  Q:$D(DUOUT)
 .;*LMH* 3/9/00 F  S ASUX("USR")=$O(^XTMP("ASUR","R26",ASUX("STA"),$G(ASUX("USR")))) Q:ASUX("USR")']""  D  Q:$D(DUOUT)
 .F  S ASUX("USR")=$O(^XTMP("ASUR","R26",ASUX("STA"),ASUX("USR"))) Q:ASUX("USR")']""  D  Q:$D(DUOUT)  ;LMH - above $G was not re-setting user below.
 ..S ASUMY("USR")=ASUX("USR")
 ..S ASUC("PG")=0
 ..F  S ASUX("ACC")=$O(^XTMP("ASUR","R26",ASUX("STA"),ASUX("USR"),$G(ASUX("ACC")))) Q:ASUX("ACC")']""  D  Q:$D(DUOUT)
 ...F  S ASUX("SLCCAT")=$O(^XTMP("ASUR","R26",ASUX("STA"),ASUX("USR"),ASUX("ACC"),$G(ASUX("SLCCAT")))) Q:ASUX("SLCCAT")']""  D  Q:$D(DUOUT)
 ....S ASUF("PGBK")=2
 ....F  S ASUX("IDX")=$O(^XTMP("ASUR","R26",ASUX("STA"),ASUX("USR"),ASUX("ACC"),ASUX("SLCCAT"),$G(ASUX("IDX")))) Q:ASUX("IDX")']""  D INDEX  Q:$D(DUOUT)
 ....W !,"TOTAL LINE ITEMS: ",$J($FN(ASUC("LI"),","),10)
 ....S ASUC("LI")=0
 ...K ASUL(20),ASUL(18)         ;WAR 4/19/2000 - added ASUL(18)
 D CLS^ASUUHDG
K ;
 K %DT,ASU,ASUC,ASUF,ASUV,ASUX,ASUMX,ASUMB,ASUMS
 K ASULMN,ASULMO,ASUQ("MO"),X,X1,X2,X3,X4
 F X=3:1:22 K ASUL(X) ;Clear Table Lookup fields
 D PAZ^ASUURHDR I $G(ASUK("PTRSEL"))]"" W @IOF Q
 D C^ASUUZIS
 Q
INDEX ;
 S ASUC("LI")=ASUC("LI")+1
 S ASUX(0)=^XTMP("ASUR","R26",ASUX("STA"),ASUX("USR"),ASUX("ACC"),ASUX("SLCCAT"),ASUX("IDX"))
 S ASUMS("E#","STA")=$P(ASUX(0),U,2)
 S (ASUMX("E#","IDX"),ASUMS("E#","IDX"))=$P(ASUX(0),U)
 ;S ASUMK("E#","STA")=ASUX("STA")       ;LMH
 S ASUMK("E#","STA")=ASUL(2,"STA","E#") ;LMH   4/13/00
 S ASUMK("E#","REQ")=ASUX("USR")
 D READ^ASUMXDIO,REQ^ASULDIRR(ASUMK("E#","REQ"))
 G:ASUMX("CAT")']"" UNKNOWN
 S ASUL(7,"CAT","E#")=$O(^ASUL(7,"B",ASUMX("CAT"),"")) G:ASUL(7,"CAT","E#")']"" UNKNOWN
 S ASUL(7,"SOBJ","E#")=$O(^ASUL(7,"D",ASUMX("SOBJ"),ASUL(7,"CAT","E#"),"")) G:ASUL(7,"SOBJ","E#")']"" UNKNOWN
 S ASUK("CAT NM")=$P(^ASUL(7,ASUL(7,"CAT","E#"),1,ASUL(7,"SOBJ","E#"),0),U,3) G READMST
UNKNOWN ;
 S ASUK("CAT NM")="UNKNOWN CATEGORY"
READMST ;
 S ASUMK("E#","IDX")=ASUMX("E#","IDX")
 D ^ASUMSTRD,READ^ASUMKBIO
 D:ASUF("PGBK")>1 HDPG Q:$D(DUOUT)
 D:ASUF("PGBK") HEADER Q:$D(DUOUT)
 S (ASUC("TOT","ISS"),ASUC("P6MO","QTY"),ASUC("P6MO","DOC"),ASUC("TOT","DOC"),ASUF("SESNL"))=0
 F ASUU(17)=0:1:11 D
 .S ASUQ("MO")=ASUK("AS OF")+ASUU(17)
 .S:ASUQ("MO")>12 ASUQ("MO")=ASUQ("MO")-12
 .S ASULMO(ASUU(17)+1)=ASUQ("MO")
 .I ASUU(17)>5 D
 ..S ASUC("P6MO","QTY")=ASUC("P6MO","QTY")+ASUMK(ASUQ("MO"),"QTY")
 ..S ASUC("P6MO","DOC")=ASUC("P6MO","DOC")+ASUMK(ASUQ("MO"),"DOC")
 .S ASUC("TOT","ISS")=ASUC("TOT","ISS")+ASUMK(ASUQ("MO"),"QTY")
 .S ASUC("TOT","DOC")=ASUC("TOT","DOC")+ASUMK(ASUQ("MO"),"DOC")
 I ASUC("TOT","ISS")=0,+ASUMK("ULQTY")'>0 Q
 W !,$E(ASUMX("IDX"),1,5),".",$E(ASUMX("IDX"),6,6)
 W ?10,ASUMS("SLC")
 W ?13,$E(ASUMX("DESC"),1,30)
 W ?47,ASUMX("AR U/I")
 I ASUMK("ULQTY")?1N.N D
 .W ?52,ASUMK("ULQTY"),"**"
 E  D
 .S Y=$E(ASUMS("ESTB"),1,3)+1700
 .S Y=ASUK("DT","YEAR")-Y
 .S X=$E(ASUMS("ESTB"),4,5)
 .S X=ASUK("DT","MO")-X
 .S ASUV("MOLD")=(Y*12)+X
 .K X,Y
 .S:ASUV("MOLD")>6 ASUV("MOLD")=6
 .S ASUV("ULVQTY")=$FN(ASUC("P6MO","QTY")/ASUV("MOLD"),"",0)
 .I ASUMS("EOQ","TP")="Q" D
 ..S ASUF("SESNL")=1
 .S ASUV("ULVQTY")=$FN(ASUV("ULVQTY")*ASUL(20,"ULVQ FCTR"),"",0)
 .W ?52,$J($FN(ASUV("ULVQTY"),"-",0),7)
 I ASUMS("QTY","O/H")=0!(ASUMS("QTY","O/H")="") D
 .S ASUV("CST/U")=ASUMS("LPP")
 E  D
 .S ASUV("CST/U")=$FN((ASUMS("VAL","O/H")/ASUMS("QTY","O/H")),"",2)
 W ?58,$J($FN(ASUV("CST/U"),",",2),8)
 W ?65,$J($FN(ASUC("P6MO","QTY"),",",0),6)
 W ?74,ASUC("P6MO","DOC")
 W !?13,$E(ASUMX("DESC"),31,60)
 I ASUF("SESNL") W ?51,"SEASONAL ITEM" S ASUF("SESNL")=0
 W !
 F ASUU(17)=1:1:6 D
 .S ASUU(18)=ASULMO(ASUU(17))
 .W $E(ASULMN(ASUU(18)))," PYIQ "
 .W $J($FN(ASUMK(ASUU(18),"QTY"),",",0),5)," "
 W !
 F ASUU(17)=1:1:6 D
 .S ASUU(18)=ASULMO(ASUU(17))
 .W $E(ASULMN(ASUU(18)),2,2)," Q-OH.....  "
 W !
 F ASUU(17)=1:1:6 D
 .S ASUU(18)=ASULMO(ASUU(17))
 .W $E(ASULMN(ASUU(18)),3,3)," ORDQ.....  "
 W !!
 S ASUC("LN")=ASUC("LN")+6 D:ASUC("LN")>(IOSL-2) HEADER Q:$D(DUOUT)
 Q
INIT ;
 D:$G(ASUK("DT","FM"))']"" DATE^ASUUDATE
 D:$G(ASUL(1,"AR","AP"))']"" SETAREA^ASULARST
 I '$D(IO) D HOME^%ZIS
 Q
SELMONTH ;
 S ASULMN(1)="JANUARY",ASULMN(2)="FEBRUARY",ASULMN(3)="MARCH"
 S ASULMN(4)="APRIL",ASULMN(5)="MAY",ASULMN(6)="JUNE"
 S ASULMN(7)="JULY",ASULMN(8)="AUGUST",ASULMN(9)="SEPTEMBER"
 S ASULMN(10)="OCTOBER",ASULMN(11)="NOVEMBER",ASULMN(12)="DECEMBER"
 S ASUK("AS OF")="",ASUV("COL")=1 W !,"Select one of the following:",!!
 F ASUK("AS OF")=1:1:12 D
 .W ?ASUV("COL"),ASUK("AS OF"),": ",ASULMN(ASUK("AS OF"))
 .S ASUV("COL")=$S(ASUV("COL")=61:1,1:ASUV("COL")+20)
 .W:ASUV("COL")=1 !
 W !
 S DIR(0)="N:1,12,0",DIR("A")="Select Month Issue Book to begin with "
 S DIR("?")="Select a number from 1 -12",DIR("B")=+$E(ASUK("DT","FM"),4,5)+1 S:DIR("B")=13 DIR("B")=1
 D ^DIR K DIR Q:$D(DIRUT)  Q:$D(DTOUT)  Q:$D(DUOUT)
 S ASUK("AS OF")=X
 K ^XTMP("ASUR","R26")
 S ^XTMP("ASUR","R26",0)=ASUK("DT","FM")+10000_U_ASUK("DT","FM")_U_$G(ASUK("AS OF"))
 ;S ^XTMP("ASUR","R26",0)=$G(ASUK("AS OF"))
 D SETAREA^ASULARST
 K ASUF("QU")
 S ASUF("BK")=0
 F ASUU(10)=1:1:3 W !,ASUU(10),"  ",$P($T(@ASUU(10)),";",3)
 S DIR(0)="L^1:3:0^S ASUV(""RP26"")=Y",DIR("A")="ENTER SELECTION "
 W ! D ^DIR
 ;W X
 S:X["^" ASUF("QU")=1
 Q:$D(ASUF("QU"))
 K ASUU("SST")
 D SST^ASURO26A I $D(ASUF("QU")) K ASUF("QU") Q
 D USR^ASURO26A I $D(ASUF("QU")) K ASUF("QU") Q
 Q
1 ;;ISSUE BOOK -ALPHA SEQ BY SUB STATION AND USER
2 ;;ISSUE BOOK -ALPHA SEQ BY CATEGORY
3 ;;ISSUE BOOK -INDEX SEQ
HEADER ;
 S ASUC("PG")=ASUC("PG")+1,ASUC("LN")=7,ASUF("PGBK")=0
 D:ASUC("PG")>1 PAZ^ASUURHDR Q:$D(DUOUT)  W @IOF
 S X=ASUL(1,"AR","AP") D AREA^ASULARST
 S X1=ASUMS("E#","STA") D STAT^ASULARST
 W !?1,"REPORT #26 PREPRINTED ISSUE BOOK -STOCK ISSUE REQUEST",?70,"PAGE: ",ASUC("PG")
 W !?1,"AREA: ",ASUL(1,"AR","AP"),?10,ASUL(1,"AR","NM"),?33,"STATION: ",ASUL(2,"STA","CD"),?45,ASUL(2,"STA","NM")
 W !?1,"SUBSTATION: ",ASUMK("SST")," ",ASUMK("SST","NM"),?33,"USER CODE: ",$E(ASUMY("USR"),6,7)_$E(ASUMY("USR"),9)  ;**LMH**3/9/00," ",ASUMK("USR","NM")
 W:$P(ASUX("SLCCAT"),"*")="R" ?63," SLC : REFRIGERATE"
 W:$P(ASUX("SLCCAT"),"*")="H" ?63," SLC : HAZARDOUS"
 W:$P(ASUX("SLCCAT"),"*")="Z" ?63," SLC : ALL OTHERS"
 W !?5,"ACCOUNT : ",$S(ASUX("ACC")=1:"PHARMACY",ASUX("ACC")=3:"SUBSISTENCE",1:"ALL OTHER")
 W:$P(ASUX("SLCCAT"),"*",2)]"" ?37," CATEGORY : ",ASUMX("CAT")," -",ASUK("CAT NM")
 W !!?3,"INDEX  S",?54,"USER",?61,"UNIT  PREV 6-MOS"
 W !?2,"NUMBER  L  DESCRIPTION",?47,"UI",?53,"LEVEL",?61,"COST    QTY  DOC",!
 Q
HDPG ;EP; -COVER PAGE FOR EACH CATEGORY
 D PAZ^ASUURHDR
 D CLS^ASUUHDG
 S X=ASUL(1,"AR","AP") D AREA^ASULARST S X1=ASUMS("STA") D STAT^ASULARST
 W !?1,"REPORT #26 RECORD OF RECEIPT FOR SUPPLIES (HEW-394C -USE WITH 394A)"
 W !?1,"AREA: ",ASUL(1,"AR","AP"),?10,ASUL(1,"AR","NM"),?33,"STATION: ",ASUL(2,"STA","CD"),?46,ASUL(2,"STA","NM")
 W !?1,"SUBSTATION: ",ASUMK("SST")," ",ASUMK("SST","NM"),?33,"USER CODE: ",$E(ASUMY("USR"),6,7)_$E(ASUMY("USR"),9)    ; ** LMH ** 3/9/00 ," ",ASUMK("USR","NM")
 W:$P(ASUX("SLCCAT"),"*")="R" ?63," SLC : REFRIGERATE"
 W:$P(ASUX("SLCCAT"),"*")="H" ?63," SLC : HAZARDOUS"
 W:$P(ASUX("SLCCAT"),"*")="Z" ?63," SLC : ALL OTHERS"
 W !?5,"ACCOUNT : ",$S(ASUX("ACC")=1:"PHARMACY",ASUX("ACC")=3:"SUBSISTENCE",1:"ALL OTHER")
 W:$P(ASUX("SLCCAT"),"*",2)]"" ?37," CATEGORY : ",ASUMX("CAT")," -",ASUK("CAT NM")
 W !!?1,"SUPPLIES FOR",!?1,"THE MONTH OF",?17,"REQUESTED BY",?37,"ISSUED BY",?57,"RECIEVED BY **"
 F ASUU(19)=0:1:5 S ASUV("ASOF")=ASUK("AS OF")+ASUU(19) S:ASUV("ASOF")>12 ASUV("ASOF")=ASUV("ASOF")-12 D PRTMOS
 K ASUV("ASOF"),ASUU(19)
 Q
PRTMOS ;
 W !!!!!?1,ASULMN(ASUV("ASOF")),!?17,"(SIGNATURE & DATE)",?37,"(SIGNATURE & DATE)",?57,"(SIGNATURE & DATE)",!?7,"VOUCHER NUMBER: ",?37,"VOUCHER DATE"
 Q
SELAOMO ;
 D MOTBL
 S ASUK("AS OF")="",ASUV("COL")=1 W !,"Select one of the following:",!!
 F ASUK("AS OF")=1:1:12 D
 .W ?ASUV("COL"),ASUK("AS OF"),": ",ASULMN(ASUK("AS OF"))
 .S ASUV("COL")=$S(ASUV("COL")=61:1,1:ASUV("COL")+20)
 .W:ASUV("COL")=1 !
 W !
 S DIR(0)="N:1,12,0",DIR("A")="Select Month Issue Book to begin with "
 S DIR("?")="Select a number from 1 -12",DIR("B")=+$E(DT,4,5)+1 S:DIR("B")=13 DIR("B")=1
 D ^DIR K DIR Q:$D(DIRUT)
 S ASUK("AS OF")=X
 Q
MOTBL ;
 S ASULMN(1)="JANUARY",ASULMN(2)="FEBRUARY",ASULMN(3)="MARCH"
 S ASULMN(4)="APRIL",ASULMN(5)="MAY",ASULMN(6)="JUNE"
 S ASULMN(7)="JULY",ASULMN(8)="AUGUST",ASULMN(9)="SEPTEMBER"
 S ASULMN(10)="OCTOBER",ASULMN(11)="NOVEMBER",ASULMN(12)="DECEMBER"
 Q
