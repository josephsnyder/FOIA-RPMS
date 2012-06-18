BYIMZIS ;IHS/CIM/THL - DEVICE CALLS AND QUEUING;
 ;;2.0;BYIM IMMUNIZATION DATA EXCHANGE INTERFACE;;APR 01, 2010
 ;;ROUTINE USED AS CENTRAL POINT FOR DEVICE HANDLING AND QUEUING
 ;-----
ZIS ;EP;TO CALL DEVICE
 I $G(BYIMBRWS) D  Q
 .N DIR
 .S DIR(0)="SO^P:PRINT Output;B:BROWSE Output on Screen"
 .S DIR("A")="Do you want to "
 .S DIR("B")="PRINT"
 .W !
 .D ^DIR
 .Q:$D(BYIMQUIT)!$D(BYIMOUT)
 .I $E($G(X))="P" D ZIS1 Q
 .I $E($G(Y))="B" D BROWSE Q
 ;-----
ZIS1 ;EP;
 K DN
 S %ZIS="AEMNPQ"
 S ZIBH=$TR($H,",","")_$R(1000)
 W !
 D ^%ZIS
 I POP>0 D CLOSE Q
 S:$G(IOPAR)]"" %ZIS("IOPAR")=IOPAR
 S ZTSAVE("%ZIS*")=""
 S ZTSAVE("ZIBH")=""
 S ZTSAVE("NM*")=""
 S ZTRTN="OPEN^BYIMZIS"
 I $D(IO("Q")),IO=IO(0)!$D(IO("S")) D  G ZIS
 .W *7,*7
 .W !!,"CANNOT QUEUE TO HOME OR SLAVE DEVICE."
 I '$D(IO("Q")) D  D CLOSE Q
 .I $E(IOST,1,2)="P-" D
 ..W !!,"...One moment please, while I complete your print request..."
 ..W !
 .D:$D(BYIMRTN) @ZTRTN
 E  D ZTLOAD
 Q
 ;-----
CLOSE ;EP;TO CLOSE DEVICE
 D ^%ZISC
 K IOP,IOPAR,%ZIS,ZTSK,ZTQUEUED,ZTREQ
 Q
 ;-----
ZTLOAD ;EP;TO CALL %ZTLOAD
 K BYIMDR
 S ZTIO=ION
 S ZTSAVE("BYIM*")=""
 D ^%ZTLOAD
 W !!,$S($G(ZTSK)]"":"Request queued!",1:"Request cancelled.")
 D CLOSE
 H 2
 Q
 ;-----
OPEN ;EP;TO OPEN DEVICE AND PRINT SELECTED REPORT
 I '$D(ZTQUEUED)!(ION["HOST") S IOP=ION D ^%ZIS I POP S BYIMQUIT="" Q
 U IO
 D @BYIMRTN
 S:$D(ZTQUEUED) ZTREQ="@"
 D:'$D(ZTQUEUED) CLOSE
 Q
 ;-----
HOST ;EP;TO OPEN HOST FILE
 ;%FN - FILE NAME REQUIRED
 ;BYIMOP - 'R' FOR READ, 'W' FOR WRITE REQUIRED, 'M' FOR READ/WRITE
 Q:'$D(%FN)!'$D(BYIMOP)
 S POP=1
 F BYIMI=51:1:54 Q:'POP  D
 .S (IOP,ION)=BYIMI
 .S %ZIS("IOPAR")="("""_%FN_""":"""_BYIMOP_""")"
 .D ^%ZIS
 I POP D  G HOST:$G(BYIMX)<2 S BYIMQUIT="" Q
 .W !!,"Waiting for HOST FILE SERVER."
 .S BYIMX=$G(BYIMX)+1
 K IOP,POP
 Q
 ;-----
BROWSE ;EP;TO BROWSE
 Q:$G(BYIMRTN)=""
 S BYIMFLD("BROWSE")=1
 D VIEWR^XBLM(BYIMRTN)
 I $D(BYIMQUIT) D  Q
 .K BYIMQUIT
 .W !!,"BROWSE function temporarily unavailable."
 .D ZIS1
 D CLEAR^VALM1
 Q
 ;-----
