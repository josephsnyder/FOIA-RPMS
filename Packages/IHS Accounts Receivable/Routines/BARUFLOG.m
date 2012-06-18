BARUFLOG ; IHS/SD/TPF - SESSION LOG IN AND LOG OUT ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**3,21**;OCT 26, 2005
 Q
 ;
SIGNOUT ;EP - SIGN OUT AND RECONCILE
 ;
 I $$OUTORREC^BARUFUT(UFMSESID) Q  ;ask user if the wish to reconcile or simply get out
 ;
 D DISPLAYT(DUZ,UFMSESID,"OUT")  ;display counts and totals
 ;
 ;BAR*1.8*21 IHS/SD/TPF 8/12/2011 HEAT20490 DON'T ASK IF THEY WISH TO LOG OUT
 I '$$OPENSTAT^BARUFUT(DUZ) D  Q
 .;IF SESSION HAS BEEN CLOSED BY SUPER
 .K UFMSESID  ;LOGOUT FLAG
 .K DIR
 .S DIR(0)="E"
 .D ^DIR
 ;
 W !
 K DIR
 S DIR("A")="Do you wish to log out now?"
 S DIR("B")="Yes"
 S DIR(0)="YO"
 D ^DIR
 I 'Y D  Q
 .W !!,"YOUR CASHIER SESSION IS STILL OPEN."
 .W !,"AT SOME POINT YOU MUST LOG OUT"
 .W !,"TO RECONCILE THIS SESSION"
 .;S X=$$DELFLG^BARUFUT1(DUZ,UFMSESID)
 .;K UFMSESID
 ;
 I '$O(^BARSESS(DUZ(2),DUZ,11,UFMSESID,2,0)) D  Q
 .W !!,"There is no posting activity for this session. Therefore"
 .W !,"it cannot be reconciled. If you log out this session will be"
 .W !,"deleted. Or you can continue in cashier mode."
 .W !
 .K DIR
 .S DIR("A")="Delete session and log out?"
 .S DIR("B")="Yes"
 .S DIR(0)="YO"
 .D ^DIR
 .Q:'Y
 .S X=$$DELFLG^BARUFUT1(DUZ,UFMSESID)
 .D DELETE^BARUFUT1(DUZ,UFMSESID)
 .K UFMSESID
 ;
 ;
 W !
 K DIR
 S DIR("A")="By logging out, you are confirming the system balances. Are you sure you wish to log out?"
 S DIR("B")="Yes"
 S DIR(0)="YO"
 D ^DIR
 I 'Y D  Q
 .W !!,"YOUR CASHIER SESSION IS STILL OPEN."
 .W !,"AT SOME POINT YOU MUST LOG OUT"
 .W !,"TO RECONCILE THIS SESSION"
 .;S X=$$DELFLG^BARUFUT1(DUZ,UFMSESID)
 .;K UFMSESID
 .D ASKFORRT^BARUFUT
 ;
 ;
 W !!,"Fine, the session "_$G(UFMSESID)_" will be sent to your manager for processing."
 W !,"Status for Session ",$G(UFMSESID)," has been set to RECONCILED"
 D ASKFORRT^BARUFUT
 ;
 S X=$$DELFLG^BARUFUT1(DUZ,UFMSESID)  ;CLEAR 'ALREADY ASSIGNED' FLAG
 S X=$$SETSESS^BARUFUT(DUZ,UFMSESID,"RC") ;EP - SET SESSION STATUS 'BARSTAT'
 ;
 K UFMSESID,MODE    ;CLEAR SESSION ID
 Q
 ;
SIGNIN ;EP - CASHIER SIGN IN
 ;
 ;
 ;I $G(UFMSESID)'="" D  Q  ;bar*1.8*21 SDR
 I $G(UFMSESID)'="",$$CURSTAT^BARUFUT(DUZ,UFMSESID,"E")="OPEN" D  Q  ;bar*1.8*21 SDR
 .;I $G(UFMSESID)'="",(CURDUZ2=DUZ(2)) D  Q  ;BAR*1.8*21 HEAT43337
 .D SIGNOUT
 ;
 ;I CURDUZ2'=DUZ(2) D  ;BAR*1.8*21 HEAT43337
 ;.W !!,"* *  IT APPEARS YOU HAVE CHANGED YOUR FACILITY * *"
 ;.W !!,"* *  YOU WILL NOW BE ABLE TO LOG INTO DIVISION "_$P(^DIC(4,DUZ(2),0),U)
 ;
 I $$OPENSTAT^BARUFUT(DUZ) D  Q
 .N SESSDT
 .S SESSDT=$$OPENSTAT^BARUFUT(DUZ)
 .S UFMSESID=SESSDT
 .I $D(^BARSESS(DUZ(2),"D",1,DUZ)) D  Q
 ..W !!!,"YOU HAVE ANOTHER RPMS SESSION WHICH WAS"
 ..W !,"ALREADY ASSIGNED A CASHIERING SESSION. YOU CAN"
 ..W !,"HAVE ONLY ONE 'OPEN' CASHIERING SESSION AT A TIME."
 ..K UFMSESID
 ..D ASKFORRT^BARUFUT
 .S Y=SESSDT X ^DD("DD") S SESSDT=Y
 .W !!,"YOU HAVE A SESSION STILL OPEN FROM "_SESSDT
 .W !,"YOU WILL BE ASSIGNED THIS SESSION ID TO CONTINUE"
 .W !!!
 .D ASKFORRT^BARUFUT
 .S MODE="CASHIER"
 .K SESSDT
 .K DIR,DIE,DR,DIC,DA
 .S DA(1)=DUZ
 .S DA=UFMSESID
 .S DR=".05///1"
 .S DIE="^BARSESS(DUZ(2),"_DA(1)_",11,"
 .D ^DIE
 .D DISPLAYT(DUZ,UFMSESID,"OUT","NO")
 ;
 W !!,"YOU ARE SIGNING *IN* FOR CASHIERING"
 W !!
 D SIG^XUSESIG
 Q:X1=""
 ;
 S UFMSESID=$$GETSESID^BARUFUT(DUZ)   ;ASSIGN SESSION ID. CREATE AN ENTRY IN THE ^BARSESS FILE
 ;
 I UFMSESID=0 D  Q
 .W !!,"COULD NOT CREATE SESSION ID IN THE 'A/R UFMS CASHIER SESSION LOG' FILE"
 .W !,"MAKE SURE THE CASHIER HAS 'V' FILEMAN ACCESS. IF THEY ALREADY DO THERE MAY"
 .W !,"A LOCK ON THE FILE"
 .D ASKFORRT^BARUFUT
 .K UFMSESID
 ;AND SET STATUS = OPEN
 K DIR,DIE,DR,DIC,DA
 S DA(1)=DUZ
 S DA=UFMSESID
 S DR=".05///1"
 S DIE="^BARSESS(DUZ(2),"_DA(1)_",11,"
 D ^DIE
 S MODE="CASHIERING"
 D DISPLAYT(DUZ,UFMSESID,"NEW","NO")
 Q
 ;
DISPLAYT(UDUZ,SESSID,MODE,ERASTAT) ;EP - DISPLAY SESSION TOTALS
DISPAGAI ;EP - DO IT AGAIN
 ;MODE - "NEW", "OUT", "VIEW", "CASHIER"
 ;SESSID - CASHIER SESSION
 N BARTR,ARCREDIT,ARDEBIT,TRANTYPE,AMT,TOTALS,IENS,CAT
 D DISHDR(UDUZ,SESSID,MODE)
 ;LOOP THROUGH USERS SESSION ENTRIES
 S TOTALS("AAA PAYMENT")=0
 S TOTALS("AAA PAYMENT","CNT")=0
 S TOTALS("ADJ CO-PAY")=0
 S TOTALS("ADJ CO-PAY","CNT")=0
 S TOTALS("ADJ DEDUCTIBLE")=0
 S TOTALS("ADJ DEDUCTIBLE","CNT")=0
 S TOTALS("ADJ NON PAYMENT")=0
 S TOTALS("ADJ NON PAYMENT","CNT")=0
 S TOTALS("ADJ WRITE OFF")=0
 S TOTALS("ADJ WRITE OFF","CNT")=0
 S TOTALS("ADJ PENALTY")=0
 S TOTALS("ADJ PENALTY","CNT")=0
 S TOTALS("ADJ GROUPER ALLOWANCE")=0
 S TOTALS("ADJ GROUPER ALLOWANCE","CNT")=0
 S TOTALS("ADJ PAYMENT CREDIT")=0
 S TOTALS("ADJ PAYMENT CREDIT","CNT")=0
 S TOTALS("ZZZ REFUND")=0
 S TOTALS("ZZZ REFUND","CNT")=0
 ;
 S BARTR=0
 F  S BARTR=$O(^BARSESS(DUZ(2),UDUZ,11,SESSID,2,BARTR)) Q:'BARTR  D
 .S IENS=BARTR_","
 .S ARBILL=$$GET1^DIQ(90050.03,IENS,4,"E")      ;A/R TRANSACTIONS, BILL (A/R)
 .Q:ARBILL=""
 .S ARCREDIT=$$GET1^DIQ(90050.03,IENS,2,"E")    ;A/R TRANSACTIONS, CREDIT
 .S ARDEBIT=$$GET1^DIQ(90050.03,IENS,3,"E")     ;A/R TRANSACTIONS, DEBIT
 .S AMT=ARCREDIT-ARDEBIT
 .S TRANTYPE=$$GET1^DIQ(90050.03,IENS,101,"E")  ;A/R TRANSACTIONS, ADJUSTMENT TYPE
 .S ADJCAT=$$GET1^DIQ(90050.03,IENS,102,"E")    ;A/R TRANSACTIONS, ADJUSTMENT CATEGORY
 .I TRANTYPE="PAYMENT" S CAT="AAA "_TRANTYPE D TOT(CAT,AMT,.TOTALS) Q
 .S CAT=ADJCAT
 .I CAT="REFUND" S CAT="ZZZ "_CAT D TOT(CAT,AMT,.TOTALS) Q
 .I CAT="" S CAT="ADJ UNDEF" D TOT(CAT,AMT,.TOTALS) Q
 .S CAT="ADJ "_CAT D TOT(CAT,AMT,.TOTALS) Q
 D LIST(.TOTALS,MODE)
 Q
 ;
TOT(CAT,AMT,TOTALS) ;
 S TOTALS(CAT)=$G(TOTALS(CAT))+AMT
 S TOTALS(CAT,"CNT")=$G(TOTALS(CAT,"CNT"))+1
 Q
 ;
LIST(TOTALS,MODE) ;EP - DISPLAY CALCULATED TOTALS
 N CATEGORY,ADJCAT,ADJCNT,ADJAMT
 S (ADJCNT,ADJAMT,REFCNT,REFAMT)=0
 S (CATEGORY,SUBHDR)=""
 F  S CATEGORY=$O(TOTALS(CATEGORY)) Q:CATEGORY=""  D
 .I $P(CATEGORY," ")'=SUBHDR D
 ..W !!?5,"Cashiering Function - "
 ..W $S($P(CATEGORY," ")="AAA":"Payments",$P(CATEGORY," ")="ZZZ":"Refunds",1:"Adjustments")
 ..;
 .I $P(CATEGORY," ")="ADJ" D
 ..S ADJCNT=ADJCNT+TOTALS(CATEGORY,"CNT")
 ..S ADJAMT=ADJAMT+TOTALS(CATEGORY)
 ..;
 .I $P(CATEGORY," ",2)="REFUND" D
 ..S REFCNT=REFCNT+TOTALS(CATEGORY,"CNT")
 ..S REFAMT=REFAMT+TOTALS(CATEGORY)
 .S SUBHDR=$P(CATEGORY," ")
 .I SUBHDR="ADJ" W !?10,$P(CATEGORY," ",2,3)
 .E  W !?10,"Count"
 .W ?28,"- ",$J(TOTALS(CATEGORY,"CNT"),4)
 .W ?50,"$"_$J(TOTALS(CATEGORY),10,2)
 .I $O(TOTALS(CATEGORY))[("ZZZ") D
 ..W !?8,"Total Adjustments"
 ..W ?28,"= ",$J(ADJCNT,4)
 ..W ?50,"$"_$J(ADJAMT,10,2)
 W !
 ;IF THE SESSION HAS BEEN TRANSMITTED SHOW THE FILE
 I $D(^BARSESS(DUZ(2),UDUZ,11,SESSID,21)) D
 .W !,"TRANSMITTED ON: "
 .N TRANREC,TRANTIME,IENS,TRANFILE,TRANBY,CNT
 .S TRANREC=0
 .F CNT=1:1 S TRANREC=$O(^BARSESS(DUZ(2),UDUZ,11,SESSID,21,TRANREC)) Q:'TRANREC  D
 ..S IENS=TRANREC_","_SESSID_","_UDUZ_","
 ..S TRANTIME=$$GET1^DIQ(90057.210101,IENS,.01,"E")
 ..S TRANFILE=$$GET1^DIQ(90057.210101,IENS,.02,"E")
 ..S TRANBY=$$GET1^DIQ(90057.210101,IENS,.03,"E")
 ..W:CNT'=1 !
 ..W ?16,TRANTIME," BY ",TRANBY
 ..W !?16,TRANFILE
 ;
 S RESPONSE=""
 D ASKACT^BARUFUT(UDUZ,SESSID,.RESPONSE,MODE,$G(ERASTAT))  ;ASK FOR AN ACTION TO TAKE
 Q:MODE="OUT"&(RESPONSE="RC")!(RESPONSE="D")  ;CASHIER HAS RECONCILED
 Q:RESPONSE[U!(RESPONSE="")!(RESPONSE="Q")
 G DISPAGAI
 Q
 ;
DISHDR(UDUZ,SESSID,MODE) ;EP - DISPLAY HEADER 
 W @IOF
 ;I MODE="VIEW" W !,$$CJ^XLFSTR("SUPERVISOR MODE",IOM)
 W !,$$CJ^XLFSTR($S(MODE="VIEW":"SUPERVISOR MODE",MODE="CASHIER"!(MODE="NEW")!(MODE="OUT"):"CASHIERING MODE",1:"UNKNOWN MODE"),IOM)
 W !,$$CJ^XLFSTR("CASHIERING DISPLAY FOR CASHIER "_$P($G(^VA(200,UDUZ,0)),U),IOM)
 W !,$$CJ^XLFSTR("WITH SESSION ID "_SESSID_"     SESSION STATUS: "_$$CURSTAT^BARUFUT(UDUZ,SESSID,"E"),IOM)
 Q
 ;
PRINTDUM(UFMSESID) ;EP - PRINT EMPTY BEGINNING COUNTS
 ;W !,$$CJ^XLFSTR("CURRENTLY THERE IS NO POSTING ACTIVITY",IOM)
 W !!?5,"Cashiering Function - Payments"
 W !?8,"Beginning Count",?28,"- 0",?50,"$            0.00"
 W !!?5,"Cashiering Function - Adjustments"
 W !?8,"Beginning Counts"
 W !?10,"CO-PAYS",?28,"- 0",?50,"$            0.00"
 W !?10,"DEDCUTIBLES",?28,"- 0",?50,"$            0.00"
 W !?10,"NON-PAYMENTS",?28,"- 0",?50,"$            0.00"
 W !?10,"WRITE OFFS",?28,"- 0",?50,"$            0.00"
 W !?10,"PENALTIES",?28,"- 0",?50,"$            0.00"
 W !?10,"GROUPER ALLOWANCE",?28,"- 0",?50,"$            0.00"
 W !?10,"PAYMENT CREDITS",?28,"- 0",?50,"$            0.00"
 W !?8,"Total Adjustments",?28,"= 0",?50,"$            0.00"
 W !!?5,"Cashiering Function - Refunds"
 W !?8,"Beginning Count",?28,"- 0",?50,"$            0.00"
 W:MODE="NEW" !!?1,"Assigning session number: ",$G(UFMSESID)
 W:MODE="OUT" !!?1,"Session number: ",$G(UFMSESID)
 W !
 D ASKFORRT^BARUFUT
 Q
