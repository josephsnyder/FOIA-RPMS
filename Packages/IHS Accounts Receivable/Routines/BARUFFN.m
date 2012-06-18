BARUFFN ; IHS/SD/TPF - UFMS REPORT BY FILENAME ; 03/03/2008
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**3,20**;OCT 26, 2005
 Q
 ;
LKUP ;EP - LOOK UP BY FILENAME
 ;start old code IHS/SD/PKD 1.8*20
 ;N SEARCH,TARGET,CHOICE,ITEM,MAX,LINE,ESC,PREFIX,SUFFIX
 ;S PREFIX="IHS_AR_RPMS_RCV_"
 ;S SUFFIX=".DAT"
 ;D FNHDR
 ;S $P(LINE,"-",81)=""
 ;K DIR,DIC,DIE,DR,DA
 ;S DIR("?",1)="Enter a file name e.g. IHS_AR_RPMS_RCV_398_113510_20070806_0847.DAT,"
 ;S DIR("?",2)="or a partial filename IHS_AR_RPMS_RCV_398*, the * is a wildcard,"
 ;S DIR("?")="or * to list all UFMS files on file in the sessioning log"
 ;S DIR("A")="Enter a UFMS File name: "
 ;S DIR(0)="FO^1:20"
 ;D ^DIR
 ;Q:$D(DIRUT)!$D(DTOUT)!$D(DUOUT)!(Y="")
 ;;
 ;S ESC=0
 ;S TARGET=Y
 ;K CHOICES
 ;I Y="*" S SEARCH="",TARGET=""
 ;E  S SEARCH=TARGET-1
 ;S (MAX,ESC,CHOICE)=0
 ;F ITEM=1:1 S SEARCH=$O(^BARSESS(DUZ(2),"FN",SEARCH)) Q:SEARCH=""!($E(SEARCH,1,$L(TARGET))'=TARGET)!(ESC)!(CHOICE)  D
 ;.S CHOICES(ITEM)=SEARCH
 ;.S MAX=MAX+1
 ;.W !,ITEM_". "_PREFIX_CHOICES(ITEM)_SUFFIX
 ;.I '(ITEM#10)!('$O(^BARSESS(DUZ(2),"FN",SEARCH))) K DIR S DIR(0)="NO^1:"_MAX W ! D ^DIR Q:Y=""  S ESC=$D(DIRUT)!$D(DTOUT)!$D(DUOUT) Q:ESC  S CHOICE=CHOICES(+Y)
 ;I ITEM=2,$D(CHOICES) D FNDATA(CHOICES(1)) G LKUP
 ;G:ESC!'(CHOICE) LKUP
 ;D FNDATA(CHOICE)
 ;G LKUP
 ;end old code start new code IHS/SD/PKD
 ; DO loop, not GoTo to avoid stack overflow
 F  D FILENM Q:'$G(TARGET)!$G(ESC)
 Q
FILENM ;
 N SEARCH,TARGET,CHOICE,ITEM,MAX,LINE,ESC,PREFIX,SUFFIX
 S PREFIX="IHS_AR_RPMS_RCV_"
 S SUFFIX=".DAT"
 D FNHDR
 S $P(LINE,"-",81)=""
 K DIR,DIC,DIE,DR,DA
 S DIR("?",1)="Enter a file name e.g. IHS_AR_RPMS_RCV_398_113510_20070806_0847.DAT,"
 S DIR("?")="or * to list all UFMS files on file in the sessioning log"
 S DIR("A")="Enter a UFMS File name "
 S DIR(0)="FO"
 D ^DIR
 Q:$D(DIRUT)!$D(DTOUT)!$D(DUOUT)!(Y="")
 ;
 S ESC=0
 S TARGET=Y
 K CHOICES
 Q:Y=""
 I Y="*" S SEARCH="",TARGET="" D  I 1
 . S (MAX,ESC,CHOICE)=0
 . F ITEM=1:1 S SEARCH=$O(^BARSESS(DUZ(2),"FN",SEARCH)) Q:SEARCH=""!(ESC)!(CHOICE)  D
 .. S CHOICES(ITEM)=SEARCH
 .. S MAX=MAX+1
 .. W !,ITEM_". "_PREFIX_CHOICES(ITEM)_SUFFIX
 .. I '(ITEM#10)!('$O(^BARSESS(DUZ(2),"FN",SEARCH))) D
 ... K DIR
 ... S DIR(0)="NO^1:"_MAX W !
 ... D ^DIR Q:Y=""  S ESC=$D(DIRUT) Q:ESC
 ... S CHOICE=CHOICES(+Y) K CHOICES S CHOICES(1)=CHOICE
 ... S TARGET=PREFIX_CHOICES(1)_SUFFIX
 .I ITEM=2,$D(CHOICES) D FNDATA(CHOICES(+Y)) ;G LKUP
 E  D
 . S SEARCH=$P(TARGET,"_",5,8)  ; Get ^BARSESS glo filename
 . S SEARCH=$P(SEARCH,".",1) I SEARCH="" S SEARCH=TARGET
 . I '$D(^BARSESS(DUZ(2),"FN",SEARCH)) W !,"  I can't find this FileName: ",TARGET S CHOICE=0 H 2 Q
 . K FNDATA S CHOICES(1)=SEARCH,CHOICE=1
 ;
 Q:ESC!('CHOICE)
 D FNDATA(CHOICES(1))
 ;end new code IHS/SD/PKD
 Q
 ;
FNDATA(FILENAME) ;EP - PULL FILE DATE
 N TRANSDT,SESSID,IENS,RECORD,UDUZ,TRANSBY,APPLYTO,DELAYED
 S PAGE=0
 D LKUPHDR(FILENAME)
 S SESSID=""
 ; IHS/SD/PKD 1.8*20 12/11/10 moved counter =0 above the for loop
 S (TRDATE,TRCOUNT,TRTOTAL)=0
 S TRFILENM=PREFIX_FILENAME
 ; END 1.8*20
 F  S SESSID=$O(^BARSESS(DUZ(2),"FN",FILENAME,SESSID)) Q:'SESSID!(ESC)  D
 .S UDUZ=$O(^BARSESS(DUZ(2),"FN",FILENAME,SESSID,""))
 . ; IHS/SD/PKD 1.8*20 comment out page feeds
 . ;I $Y>(IOSL-4) K DIR S DIR(0)="E" D:'$D(ZTQUEUED) ^DIR S ESC=X=U Q:ESC  D LKUPHDR(FILENAME)
 .W !,SESSID
 .W ?15,$E($P($G(^VA(200,UDUZ,0)),U),1,15)
 .;
 .; IHS/SD/PKD 1.8*20 12/11/10 Zero counters above SESSID Loop
 .;S (TRDATE,TRCOUNT,TRTOTAL)=0
 . S TRDATE=0
 .F  S TRDATE=$O(^BARSESS(DUZ(2),UDUZ,11,SESSID,2,TRDATE)) Q:'TRDATE!(ESC)  D
 ..S IENS=TRDATE_","
 ..;IHS/SD/PKD 12/11/10 1.8*20 Include only transactions for this UFMS File
 ..Q:(($P($G(^BARTR(DUZ(2),TRDATE,6)),U,1))'[(TRFILENM))
 ..S ARBILL=$$GET1^DIQ(90050.03,IENS,4,"E")      ;A/R TRANSACTIONS, BILL (A/R)
 ..Q:ARBILL=""
 ..S ARCOLB=$$GET1^DIQ(90050.03,IENS,14,"E")      ;A/R TRANSACTIONS, A/R COLLECTION BATCH
 ..S ARAMT=$$GET1^DIQ(90050.03,IENS,3.5)      ;A/R TRANSACTIONS, CREDIT - DEBIT
 ..S TRANTYPE=$$GET1^DIQ(90050.03,IENS,101,"E")  ;A/R TRANSACTIONS, TRANSACTION TYPE
 ..I TRANTYPE="PAYMENT" D
 ...S UFMSTYPE="R"
 ...S UFMSSIGN=$S(ARAMT>0!(ARAMT=0):"+",1:"-")            ;keep sign
 ..E  I TRANTYPE[("ADJUST")!(TRANTYPE[("REFUND")) D
 ...S UFMSTYPE="A"
 ...S UFMSSIGN=$S(ARAMT>0!(ARAMT=0):"-",1:"+")
 ..E  Q
 ..S APPLYTO=$$GET1^DIQ(90057.110102,TRDATE_","_SESSID_","_UDUZ_",",.05,"E")
 ..S DELAYED=$D(^BARSESS(DUZ(2),"DS",TRDATE))
 ..S TRCOUNT=TRCOUNT+1
 ..I ARAMT<0 S ARAMT=UFMSSIGN_$P(ARAMT,"-",2)
 ..E  S ARAMT=UFMSSIGN_ARAMT
 ..S TRTOTAL=TRTOTAL+ARAMT
 ..S ARCOLITM=$$GET1^DIQ(90050.03,IENS,15,"E")      ;A/R TRANSACTIONS, COLLECTION ITEM
 ..S ARCOLIN=$$GET1^DIQ(90050.03,IENS,14,"I")    ;A/R TRANSACTIONS, A/R COLLECTION BATCH PTR
 ..S ARCOLB=$$GET1^DIQ(90051.01,ARCOLIN_",",.01,"I")     ;A/R COLLECTION BATCH, NAME
 ..S IPAC=$$GET1^DIQ(90051.1101,ARCOLITM_","_ARCOLIN_",",20,"I")     ;A/R COLLECTION BATCH, TREASURY DEPOSIT SCHEDULE NUMBER
 ..S:IPAC="" IPAC="PRE-UFMS-COLLECTIONS"
 ..;
 ..S (TPBILL)=""
 ..I ARBILL'="" D                                    ;SCREEN OUT TRANSACTIONS WITH NO A/R BILL
 ...S ARBILLIN=$$GET1^DIQ(90050.03,IENS,4,"I")      ;A/R TRANSACTIONS, BILL (A/R) PTR
 ...S TPBIEN=$$GET1^DIQ(90050.01,ARBILLIN_",",17,"I")  ;A/R BILL, 3P IEN (DA)
 ...S TPBDUZ2=$$GET1^DIQ(90050.01,ARBILLIN_",",22,"I")  ;A/R BILL, 3P DUZ(2) 
 ...S TPBILL=$$GET1^DIQ(9002274.4,TPBIEN_",",.01,"E")  ;3P BILL, BILL NUMBER
 ...I TPBILL="" D
 ....S BARDUZ2=DUZ(2)
 ....S DUZ(2)=TPBDUZ2
 ....S TPBILL=$$GET1^DIQ(9002274.4,TPBIEN_",",.01,"E")  ;3P BILL, BILL NUMBER
 ....S DUZ(2)=BARDUZ2
 ..; IHS/SD/PKD 1.8*20 comment out page feeds
 ..;I $Y>(IOSL-4) K DIR S DIR(0)="E" D:'$D(ZTQUEUED) ^DIR S ESC=X=U Q:ESC  D LKUPHDR(FILENAME)
 ..W !,$S(DELAYED:"*",1:"")
 ..W ?3,TRDATE,"["_UFMSTYPE_"]",?21,TPBILL,?30,ARCOLB,?65,$J(ARAMT,15,2)
 ..W !?32,IPAC,?50,APPLYTO
 .Q:ESC
 .; IHS/SD/PKD 1.8*20 comment out page feeds
 .;K DIR
 .;S DIR(0)="E"
 .; D ^DIR
 .W !!
 .D FNDETAIL
 .S RECORD=0
 .F  S RECORD=$O(^BARSESS(DUZ(2),"FN",FILENAME,SESSID,UDUZ,RECORD)) Q:'RECORD!(ESC)  D
 ..S IENS=RECORD_","_SESSID_","_UDUZ_","
 ..S TRANSDT=$$GET1^DIQ(90057.210101,IENS,.01,"E")
 ..S TRANSBY=$$GET1^DIQ(90057.210101,IENS,.03,"E")
 ..;; IHS/SD/PKD 1.8*20 comment out page feeds - 2ND ";" piece already commented out
 ..;I $Y>(IOSL-4) K DIR S DIR(0)="E" D:'$D(ZTQUEUED) ^DIR S ESC=X=U Q:ESC  ;D LKUPHDR(FILENAME):'$O(^BARSESS(DUZ(2),"FN",FILENAME,SESSID,UDUZ,RECORD)) D FNDETAIL:$O(^BARSESS(DUZ(2),"FN",FILENAME,SESSID,UDUZ,RECORD))
 ..W !?35,TRANSDT
 ..W ?60,$E(TRANSBY,1,20)
 ;W !!,"TOTAL RECORDS: ",TRCOUNT,?30,"TOTAL AMOUNT: ",TRTOTAL  ;bar*1.8*20 Per Gina; totals not needed on report
 Q:ESC
 K DIR
 S DIR(0)="E"
 W !
 D ^DIR
 Q
 ;
LKUPHDR(FILENAME) ;
 W @IOF
 S PAGE=$G(PAGE)+1
 S X="VIEWING SESSIONS ASSOCIATED WITH FILE"
 S X=$J("",IOM-$L(X)\2-$X)_X
 W !,X
 W ?70,"PAGE ",PAGE
 W !
 W $$CJ^XLFSTR(PREFIX_FILENAME_SUFFIX,IOM)
 W $$CJ^XLFSTR("'*' DENOTES 'DELAYED SEND'",IOM)
 W !!
 W "SESSION ID"
 W ?15,"CASHIER"
 W !?2,"TRANSACTION"
 W ?20,"3P BILL"
 W ?30,"COL/BATCH"
 W ?70,"AMT"
 W !?32,"SCHED #"
 W ?50,"APPLY TO"
 W !,LINE
 W:$G(SESSID)'="" !,SESSID
 W:$G(UDUZ)'="" ?15,$E($P($G(^VA(200,UDUZ,0)),U),1,15)
 Q
 ;
FNDETAIL ;
 W !?35,"TRANSMISSION TIME"
 W ?60,"SENT BY"
 W !,LINE
 Q
 ;
FNHDR ;EP - ERROR SCREEN HEADER
 ;W @IOF  ;IHS/SD/PKD 1.8*20
 W $$CJ^XLFSTR("List Transactions by File Name",IOM)
 W !
 Q
