BLRLA7QR ; IHS/MSC/MKK - LA7 MESSAGE QUEUE Reports ; 22-Oct-2013 09:22 ; MKK
 ;;5.2;LAB SERVICE;**1033**;Nov 1, 1997
 ;
EEP ; Ersatz EP
 D EEP^BLRGMENU
 Q
 ;
EP ; EP
PEP ; EP
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 D SETBLRVS
 ;
 D ADDTMENU^BLRGMENU("INCOMING^BLRLA7QR","Incoming Messages ...")
 D ADDTMENU^BLRGMENU("OUTGOING^BLRLA7QR","Outgoing Messages ...")
 ;
 ; Main Menu driver
 D MENUDRVR^BLRGMENU("LA7 Message Queue (#62.49) File","Reports")
 Q
 ;
SETBLRVS(TWO) ; EP - Set the BLRVERN variable(s)
 S BLRVERN=$TR($P($T(+1),";")," ")
 S:$D(TWO) BLRVERN2=TWO
 Q
 ;
INCOMING ; EP
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 D SETBLRVS
 ;
 D ADDTMENU^BLRGMENU("INCOMALL^BLRLA7QR","All Transactions")
 D ADDTMENU^BLRGMENU("INCSPINA^BLRLA7QR","Specific Instrument Transactions")
 ;
 ; Main Menu driver
 D MENUDRVR^BLRGMENU("LA7 Message Queue (#62.49) File","Incoming Reports")
 Q
 ;
INCOMALL ; EP - All Incoming Transactions
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 Q:$$ALLINIT("Incoming Messages")="Q"
 ;
 D ATXNLOOP(INDEXDT,"I")
 ;
 D PRESSKEY^BLRGMENU(9)
 Q
 ;
INCSPINA ; EP - Incoming Transactions for a Specific Instrument
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 Q:$$GETINST(.INSTRIEN,.INSTRNM)<1
 ;
 Q:$$SPININIT("Incoming Messages",INSTRNM)="Q"
 ;
 D STXNLOOP(INDEXDT,"I",INSTRNM)
 ;
 D PRESSKEY^BLRGMENU(9)
 Q
 ;
STXNLOOP(INDEXDT,TYPE,INSTR) ; EP - Speicific Instrument messages loop
 F  S INDEXDT=$O(^LAHM(62.49,"AD",INDEXDT),-1)  Q:INDEXDT<1!(QFLG="Q")  D
 . S TXN="A"
 . F  S TXN=$O(^LAHM(62.49,"AD",INDEXDT,TXN),-1)  Q:TXN<1!(QFLG="Q")  D
 .. S STR=$G(^LAHM(62.49,TXN,0))
 .. S LOOPINST=$P($P(STR,"^",6),"-")
 .. Q:$P(STR,"^",2)'=TYPE      ; Skip if not wanted message type
 .. Q:LOOPINST'=INSTRNM
 .. ;
 .. D LINEALL
 Q
 ;
OUTGOING ; EP
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 D SETBLRVS
 ;
 D ADDTMENU^BLRGMENU("OUTALL^BLRLA7QR","All Transactions")
 D ADDTMENU^BLRGMENU("OUTSPINA^BLRLA7QR","Specific Instrument Transactions")
 ;
 ; Main Menu driver
 D MENUDRVR^BLRGMENU("LA7 Message Queue (#62.49) File","Outgoing Reports")
 Q
 ;
OUTALL ; EP - All Outgoing Transactions
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 Q:$$ALLINIT("Outgoing Messages")="Q"
 ;
 D ATXNLOOP(INDEXDT,"O")
 ;
 D PRESSKEY^BLRGMENU(9)
 Q
 ;
OUTSPINA ; EP - Outgoing Transactions for a Specific Instrument
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 Q:$$GETINST(.INSTRIEN,.INSTRNM)<1
 ;
 Q:$$SPININIT("Outgoing Messages",INSTRNM)="Q"
 ;
 D STXNLOOP(INDEXDT,"O",INSTRNM)
 ;
 D PRESSKEY^BLRGMENU(9)
 Q
 ;
ALLINIT(TWO) ; EP - Initialization
 D SETBLRVS
 ;
 S HEADER(1)="LA7 MESSAGE QUEUE (#62.49) FILE"
 S HEADER(2)=TWO
 ;
 D HEADERDT^BLRGMENU
 D HEADONE^BLRGMENU(.HDRONE)
 ;
 S HEADER(3)=" "
 S HEADER(4)="Txn"
 S $E(HEADER(4),10)="Instrument"
 S $E(HEADER(4),25)="Entry Dt"
 S $E(HEADER(4),35)="STS"
 S $E(HEADER(4),40)="Name"
 S $E(HEADER(4),65)="UID"
 ;
 S INDEXDT=$$HTFM^XLFDT(+$H+1)
 S QFLG="NO"
 S MAXLINES=20,LINES=MAXLINES+10
 S (CNT,PG)=0
 Q "OK"
 ;
ATXNLOOP(INDEXDT,TYPE) ; EP - ALL messages loop
 F  S INDEXDT=$O(^LAHM(62.49,"AD",INDEXDT),-1)  Q:INDEXDT<1!(QFLG="Q")  D
 . S TXN="A"
 . F  S TXN=$O(^LAHM(62.49,"AD",INDEXDT,TXN),-1)  Q:TXN<1!(QFLG="Q")  D
 .. S STR=$G(^LAHM(62.49,TXN,0))
 .. Q:$P(STR,"^",2)'=TYPE      ; Skip if not wanted message type
 .. ;
 .. D LINEALL
 Q
 ;
LINEALL ; EP - Line of Data
 I LINES>MAXLINES D HEADERPG^BLRGMENU(.PG,.QFLG,HDRONE)  Q:QFLG="Q"
 ;
 D BRKOALL
 ;
 W TXN
 W ?9,INSTR
 W ?24,$$FMTE^XLFDT(ENTRYDT,"2DZ")
 W ?35,STATUS
 W ?39,NAME
 W ?64,UID
 W !
 S LINES=LINES+1
 S CNT=CNT+1
 Q
 ;
BRKOALL ; EP - Beakout Data
 S INSTR=$P($P(STR,"^",6),"-",1),ENTRYDT=$P(STR,"^",5),STATUS=$P(STR,"^",3)
 S (NAME,UID)=""
 ;
 S SEG=0
 F  S SEG=$O(^LAHM(62.49,TXN,150,SEG))  Q:SEG<1!($L(NAME))  D
 . S STR=$G(^LAHM(62.49,TXN,150,SEG,0))
 . Q:$P(STR,"|")'="PID"                  ; Skip if not the PID segment
 . S NAMESTR=$P(STR,"|",6)
 . S NAME=$TR($P(NAMESTR,"^",1,2),"^",",")_" "_$TR($P(NAMESTR,"^",3,4),"^"," ")
 . S NAME=$$TRIM^XLFSTR(NAME,"LR"," ")   ; Trim leading & trailing blanks
 ;
 S SEG=0
 F  S SEG=$O(^LAHM(62.49,TXN,150,SEG))  Q:SEG<1!($L(UID))  D
 . S STR=$G(^LAHM(62.49,TXN,150,SEG,0))
 . Q:$P(STR,"|")'="OBR"                  ; Skip if not the OBR segment
 . S UID=$P($P(STR,"|",3),"^")
 Q
 ;
GETINST(INSTRIEN,INSTRNM) ; EP - Get the Instrument
 NEW HEADER
 ;
 S HEADER(1)="Select Auto Instrument"
 S HEADER(2)=" "
 ;
 S INSTRIEN=""
 F  Q:$L(INSTRIEN)  D
 . D HEADERDT^BLRGMENU
 . D ^XBFMK
 . S DIR(0)="PO^62.4:E"
 . S DIR("A")="Select Instrument"
 . D ^DIR
 . I +$G(DIRUT) S INSTRIEN=$$BADINPUT("No/Invalid Entry.")  Q
 . ;
 . S INSTRIEN=+$G(Y),INSTRNM=$P(Y,"^",2)
 ;
 Q $S(INSTRIEN="Q":0,1:1)
 ;
SPININIT(TWO,INITINST) ; EP - Initialization
 D SETBLRVS
 ;
 S HEADER(1)="LA7 MESSAGE QUEUE (#62.49) FILE"
 S HEADER(2)=TWO
 ;
 D HEADERDT^BLRGMENU
 D HEADONE^BLRGMENU(.HDRONE)
 ;
 S HEADER(3)=$$CJ^XLFSTR("Instrument: "_INITINST,IOM)
 S HEADER(4)=" "
 S HEADER(5)="Txn"
 S $E(HEADER(5),10)="Instrument"
 S $E(HEADER(5),25)="Entry Dt"
 S $E(HEADER(5),35)="STS"
 S $E(HEADER(5),40)="Name"
 S $E(HEADER(5),65)="UID"
 ;
 S INDEXDT=$$HTFM^XLFDT(+$H+1)
 S QFLG="NO"
 S MAXLINES=20,LINES=MAXLINES+10
 S (CNT,PG)=0
 Q "OK"
 ;
BADINPUT(MSG) ; EP - Bad Input
 W !!,?4,MSG
 D PRESSKEY^BLRGMENU(9)
 Q "Q"
