BAREDP09 ; IHS/SD/LSL - FIND ERA CHECKS AND MATCH TO RPMS ;07/08/2008
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**1,4,5,6,20,21**;OCT 26,2005
 Q
CHECK(IMPDA) ; EP
 N BARCNT,BARCNT2,BARTMP,BARCHK
 D ERACHECK  ;find all chks on ERA
 I '+BARCNT D  Q 0  ;TPF 11/21/2005 BAR*1.8*1 IM19058,IM17965,IM19546  
 . W !,"I'm sorry, it seems ERA file ",IMPDA," does not contain "
 . W !,"a Check/EFT Trace Number.  The file cannot be posted."
 . K DIC,DIE,DR,DA
 . S DA=IMPDA
 . S DIE="^BAREDI(""I"",DUZ(2),"
 . S DR=".08////T"  ;UP-Missing Chk#
 . D ^DIE
 . D EOP^BARUTL(1)
 D BATCHECK  ;Find ERA chks in Coll Batch
 D MATCH  ;Match ERA to RPMS Batch/Item
 D CONT  ;Matching complete, cont?
 Q:'+Y 0  ;NOT REPORTED BAR*1.8*1
 ;start new bar*1.8*20 REQ3
 D STORE
 W $$EN^BARVDF("IOF")
 D DISPLAY
 W !!?1,"IMPORT FILE SUMMARY:"
 W !?7,"TOTAL SEGMENTS PROCESSED........:",$J($P($G(^BAREDI("I",DUZ(2),IMPDA,15,0)),U,3),12)
 W !?7,"TOTAL AMOUNT PROCESSED..........$",$J($FN((+$G(BARMAMT)+$G(BARNAMT)),",",2),12)
 I +$G(BARNAMT)'=0 W !!?1,"PLEASE REVIEW THE BPR 'NOT FOUND' REPORT AND CREATE A BATCH FOR THE BPR SEGMENT 'NOT FOUND'."
 I +$G(BARPLB)>0 W !!?1,"* - Indicates a PLB segment has been located.",!?5,"Collection item balance may not match check balance!"
 D EOP^BARUTL(1)
 ;end new REQ3
 Q BARCKIEN
ERACHECK ;
 ;First find all chks for file (ERA) selected ( I=IEN for chk entry)
 N BARCHECK,BARITEM,BARBATCH
 S BARCNT=0
 S I=0
 F  S I=$O(^BAREDI("I",DUZ(2),IMPDA,5,I)) Q:'I  D
 .;end new REQ3
 .S BARCNT=BARCNT+1  ;# chks on ERA
 .S IENS=I_","_IMPDA_","
 .S ($P(BARCHK(I),U),BARI)=$$GET1^DIQ(90056.02011,IENS,.01)  ;bar*1.8*20 REQ3
 .S $P(BARCHK(I),U,2)=0  ;bar*1.8*20 REQ3
 .D EXIST
 Q
EXIST ;
 ;See if ERA chk already in A/R EDI Chk file & matched to AR
 I '$D(^BARECHK("B",BARI)) Q
 S BARMTCH=0
 S BARCKIEN=0
 F  S BARCKIEN=$O(^BARECHK("B",BARI,BARCKIEN)) Q:'+BARCKIEN  D  Q:+BARMTCH  ;bar*1.8*20 REQ3
 .Q:$P($G(^BARECHK(BARCKIEN,0)),U,2)'=IMPDA
 .S BARMTCH=1
 .S $P(BARCHK(I),U,5)=BARCKIEN  ;bar*1.8*20 REQ3
 I 'BARMTCH Q
 S BARBATCH=$P($G(^BARECHK(BARCKIEN,0)),U,3)
 S BARITEM=$P($G(^BARECHK(BARCKIEN,0)),U,4)
 I +BARBATCH,+BARITEM D
 .S $P(BARCHK(I),U,3)=BARBATCH
 .S $P(BARCHK(I),U,4)=BARITEM
 .;end new REQ3
 Q
BATCHECK ;
 ;Now loop to find occurrence of ERA chks in A/R Coll. Batch
 N BARBATCH,BATITEM,BARCHECK
 S BARCHECK=""
 F  S BARCHECK=$O(BARCHK(BARCHECK)) Q:BARCHECK=""  D
 .S BARCHKN=$P(BARCHK(BARCHECK),U)  ;bar*1.8*20 REQ3
 .I $P(BARCHK(BARCHECK),U,3),$P(BARCHK(BARCHECK),U,4) D  Q  ;bar*1.8*20 REQ3
 ..S BARBATCH=$P(BARCHK(BARCHECK),U,3)  ;bar*1.8*20 REQ3
 ..S BARITEM=$P(BARCHK(BARCHECK),U,4)  ;bar*1.8*20 REQ3
 ..S BARCNT2=1
 ..S $P(BARCHK(BARCHECK),U,2)=BARCNT2  ;bar*1.8*20 REQ3
 ..D BTCHDATA
 ..I $G(BARTMP)<BARCNT2 S BARTMP=BARCNT2
 .S BARCNT2=0
 .I '$D(^BARCOL(DUZ(2),"D",BARCHKN)) S $P(BARCHK(BARCHECK),U,2)=0,BARTMP=0 Q  ;bar*1.8*20 REQ3
 .I $D(^BARCOL(DUZ(2),"D",BARCHKN)) D  ;bar*1.8*20 REQ3
 ..S BARBATCH=0  ;Collection Batch IEN
 ..F  S BARBATCH=$O(^BARCOL(DUZ(2),"D",BARCHKN,BARBATCH)) Q:'+BARBATCH  D  ;bar*1.8*20 REQ3
 ...I '$$CKDATE^BARPST(BARBATCH,0,"COLLECTION") D  ;MRS:BAR*1.8*6 DD 4.2.4
 ....W !!,"A/R Collection batch found is older than 10/1/2005.  Checks will be"
 ....W !,"matched in the ERA file, but will not be posted to the Collection Batch"
 ....D EOP^BARUTL(1)
 ...S BARITEM=0  ;Item#
 ...;F  S BARITEM=$O(^BARCOL(DUZ(2),"D",BARCHECK,BARBATCH,BARITEM)) Q:'+BARITEM  D  ;bar*1.8*20 REQ3
 ...F  S BARITEM=$O(^BARCOL(DUZ(2),"D",BARCHKN,BARBATCH,BARITEM)) Q:'+BARITEM  D  ;bar*1.8*20 REQ3
 ....S BARCNT2=BARCNT2+1
 ....D BTCHDATA
 .;S $P(BARCHK(BARCHECK),U)=BARCNT2  ;bar*1.8*20 REQ3
 .S $P(BARCHK(BARCHECK),U,2)=BARCNT2  ;bar*1.8*20 REQ3
 .I $G(BARTMP)<BARCNT2 S BARTMP=BARCNT2
 Q
BTCHDATA ;
 ;Gather data for coll. batch
 K BARIENS
 S BARIENS=BARITEM_","_BARBATCH_","
 S $P(BARCHK(BARCHECK,BARBATCH,BARITEM),U)=$$GET1^DIQ(90051.01,BARBATCH,.01)  ;NAME
 S $P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,2)=$$GET1^DIQ(90051.1101,BARIENS,7)  ;A/R ACCT
 S $P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,3)=$$GET1^DIQ(90051.1101,BARIENS,101)  ;CREDIT
 S $P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,4)=$$GET1^DIQ(90051.1101,BARIENS,19)  ;ITEM POSTING BALANCE
 ;begin change IM15268
 ;GET 'ITEM STATUS'. IF ROLLED UP/CANCELLED USER DOES NOT GET TO CHOOSE IT
 S $P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,5)=$$GET1^DIQ(90051.1101,BARIENS,17)
 ;I (U_"ROLLED UP"_U_"CANCELLED")[(U_$P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,5)_U) K BARCHK(BARCHECK,BARBATCH,BARITEM) S BARCNT=BARCNT-1
 ;IHS/SD/TPF BAR*1.8*21 HEAT43451 
 I (U_"ROLLED UP"_U_"CANCELED"_U)[(U_$P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,5)_U) K BARCHK(BARCHECK,BARBATCH,BARITEM) S BARCNT=BARCNT-1
 ;end change
 Q
MATCH ;
 ; Loop chks & tell user matched status
 N BARCHECK,BAREITM,BAREBTCH,BARBATCH,BARITEM
 ;W !,"There are ",BARCNT," chk/EFT #(s) for file ",$P($G(^BAREDI("I",DUZ(2),IMPDA,0)),U)  ;bar*1.8*20 REQ3
 ;W !!,"Now matching Check/EFT Trace #'s on ERA to Check # of Collection Batch/Item..."  ;bar*1.8*20 REQ3
 S BARCHECK=""
 F  S BARCHECK=$O(BARCHK(BARCHECK)) Q:BARCHECK=""  D
 .;start new bar*1.8*20 REQ3
 .S IENS=BARCHECK_","_IMPDA_","
 .W !!,"#"_BARCHECK_"  BPR02: ",$FN($$GET1^DIQ(90056.02011,IENS,.03),",",2)
 .W !?4,"TRN02: ",$$GET1^DIQ(90056.02011,IENS,.01)
 .W ?40,"Matching...  "
 .;end new REQ3
 .; chk if prev. matched
 .;S BAREBTCH=$P($G(BARCHK(BARCHECK)),U,2)  ;bar*1.8*20 REQ3
 .S BAREBTCH=$P($G(BARCHK(BARCHECK)),U,3)  ;bar*1.8*20 REQ3
 .;S BAREITM=$P($G(BARCHK(BARCHECK)),U,3)  ;bar*2.8*20 REQ3
 .S BAREITM=$P($G(BARCHK(BARCHECK)),U,4)  ;bar*2.8*20 REQ3
 .;
 .;I +BAREBTCH,+BAREITM D PREVIOUS Q  ;bar*1.8*20 REQ3
 .I $P($G(^BAREDI("I",DUZ(2),IMPDA,5,BARCHECK,0)),U,7)'="" D PREVIOUS Q  ;bar*1.8*20 REQ3
 .;I $P(BARCHK(BARCHECK),U)=0 D NONE Q  ;bar*1.8*20 REQ3
 .I $P(BARCHK(BARCHECK),U,2)=0 D NONE Q  ;bar*1.8*20 REQ3
 .;I $P(BARCHK(BARCHECK),U)=1 D ONLYONE Q  ;bar*1.8*20 REQ3
 .I $P(BARCHK(BARCHECK),U,2)=1 D ONLYONE Q  ;bar*1.8*20 REQ3
 .D MANY
 Q
PREVIOUS ;
 ; This ERA chk previously matched to coll. batch
 ;W !!,BARCHECK," previously matched to batch ",$P(BARCHK(BARCHECK,BAREBTCH,BAREITM),U)," Item: ",BAREITM  ;bar*1.*20 REQ3
 ;start new bar*1.8*20 REQ3
 W "  Previously matched"
 W !,"Matched to batch ",$P(BARCHK(BARCHECK,BAREBTCH,BAREITM),U),?50," ITEM: ",BAREITM
 I $$GET1^DIQ(90051.01,BAREBTCH_",",28)'="" W !?5,"TDN/IPAC: ",$$GET1^DIQ(90051.01,BAREBTCH_",",28)
 E  W !?5,"TDN/IPAC: ",$$GET1^DIQ(90051.1101,BAREITM_","_BAREBTCH_",",20)
 ;end new REQ3
 ;W !?5,"TDN/IPAC: ",$$GET1^DIQ(90051.1101,BAREITM_","_BAREBTCH_",",20)  ;TPF 3/24/2008 BAR*1.8*4 FY08-SRS-80
 ;start old bar*1.8*20 REQ3
 ;I $$GET1^DIQ(90051.01,BAREBTCH_",",28)'="" W !?5,"TDN/IPAC: ",$$GET1^DIQ(90051.01,BAREBTCH_",",28)
 ;E  W !?5,"TDN/IPAC: ",$$GET1^DIQ(90051.1101,BAREITM_","_BAREBTCH_",",20)  ;TPF 3/24/2008 BAR*1.8*5 FY08-SRS-90
 ;W !?5,"A/R Acct: ",$E($P(BARCHK(BARCHECK,BAREBTCH,BAREITM),U,2),1,20)
 ;W ?40,"for: ",$J($FN($P(BARCHK(BARCHECK,BAREBTCH,BAREITM),U,3),",",2),13)
 ;W ?62,"Bal: ",$J($FN($P(BARCHK(BARCHECK,BAREBTCH,BAREITM),U,4),",",2),13)
 ;end old start new REQ3
 S BARMCNT=+$G(BARMCNT)+1
 S BARMAMT=+$G(BARMAMT)+($$GET1^DIQ(90056.02011,IENS,.03))
 ;end new REQ3
 Q
NONE ;
 ; No coll. batch/item for this chk#
 ;W !!,"Chk/EFT # ",BARCHECK," does not match any existing batch/items."  ;bar*1.8*20 REQ3
 ;start new bar*1.8*20 REQ3
 W "not done!"
 W !,"Match to:  COLLECTION BATCH/ITEM NOT FOUND.  PLACING ON NOT FOUND REPORT!"
 S BARNCNT=+$G(BARNCNT)+1
 S BARNAMT=+$G(BARNAMT)+($$GET1^DIQ(90056.02011,IENS,.03))
 ;end new REQ3
 S (BARBATCH,BARITEM)=""
 D UPDCHECK
 Q
ONLYONE ;
 ; This ERA chk only matches 1 coll. batch/item
 S BARBATCH=$O(BARCHK(BARCHECK,""))
 S BARITEM=$O(BARCHK(BARCHECK,BARBATCH,""))
 S BARCHKN=$P(BARCHK(BARCHECK),U)  ;bar*1.8*20 REQ3
 ;W !!,"Chk/EFT # ",BARCHECK," matches batch ",$P(BARCHK(BARCHECK,BARBATCH,BARITEM),U)," Item: ",BARITEM  ;bar*1.8*20 REQ3
 ;start new bar*1.8*30 REQ3
 W "done!"
 W !,"Match to: ",$P(BARCHK(BARCHECK,BARBATCH,BARITEM),U),?50," ITEM: ",BARITEM
 S $P(BARCHK(BARCHECK),U,3)=BARBATCH,$P(BARCHK(BARCHECK),U,4)=BARITEM
 ;end new REQ3
 ;W !?5,"TDN/IPAC: ",$$GET1^DIQ(90051.1101,BAREITM_","_BAREBTCH_",",20)  ;TPF 3/24/2008 BAR*1.8*4 FY08-SRS-80
 I $$GET1^DIQ(90051.01,BARBATCH_",",28)'="" W !?5,"TDN/IPAC: ",$$GET1^DIQ(90051.01,BARBATCH_",",28)
 E  W !?5,"TDN/IPAC: ",$$GET1^DIQ(90051.1101,BARITEM_","_BARBATCH_",",20)  ;TPF 3/24/2008 BAR*1.8*5 FY08-SRS-90
 ;start old bar*1.8*20 REQ3
 ;W !?5,"A/R Acct: ",$E($P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,2),1,20)
 ;W ?40,"for: ",$J($FN($P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,3),",",2),13)
 ;W ?62,"Bal: ",$J($FN($P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,4),",",2),13)
 ;W !!,"Updating A/R EDI CHECKS file with Collection Batch Data..."
 ;end old REQ3
 D UPDCHECK
 ;W "  ... Done!"  ;bar*1.8*20 REQ3
 ;start new bar*1.8*20 REQ3
 S BARMCNT=+$G(BARMCNT)+1
 S BARMAMT=+$G(BARMAMT)+($$GET1^DIQ(90056.02011,IENS,.03))
 ;end new REQ3
 Q
MANY ;
 ;This ERA chk matches >1 coll. batch/item.  Ask user to choose
 W !!,"Chk/EFT # ",BARCHECK," matches more than one collection batch and item."
 W !,"Please select one:"
 D LISTCHK
 D ASK
 I '+BARANS D  Q
 . W !!,"A collection batch/item has NOT been selected for this ERA Chk/EFT #"
 S BARBATCH=$P(BARTMP(BARANS),U)
 S BARITEM=$P(BARTMP(BARANS),U,2)
 S $P(BARCHK(BARCHECK),U,3)=BARBATCH,$P(BARCHK(BARCHECK),U,4)=BARITEM
 S BARCHKN=$P(BARCHK(BARCHECK),U)  ;IHS/SD/TPF BAR*1.8*21 HEAT43451
 W !!,"Udating A/R EDI CHECKS file with Collection Batch Data..."
 D UPDCHECK
 W "   ... Done!"
 ;start new bar*1.8*20 REQ3
 S BARMCNT=+$G(BARMCNT)+1
 S BARMAMT=+$G(BARMAMT)+($$GET1^DIQ(90056.02011,IENS,.03))
 ;end new REQ3
 Q
LISTCHK ;
 ; List possible batches for ERA chk so user can choose
 W !!,$$EN^BARVDF("ULN"),"LINE",?11,"BATCH",?35,"ITEM",?42,"A/R ACCOUNT",?57,"$ BATCHED",?70,"BALANCE",$$EN^BARVDF("ULF")
 K BARTMP
 S (BARBATCH,BARCNT)=0
 F  S BARBATCH=$O(BARCHK(BARCHECK,BARBATCH)) Q:'+BARBATCH  D
 .S BARITEM=0
 .F  S BARITEM=$O(BARCHK(BARCHECK,BARBATCH,BARITEM)) Q:'+BARITEM  D
 ..S BARCNT=BARCNT+1
 ..W !,$J(BARCNT,3)
 ..W ?5,$E($P(BARCHK(BARCHECK,BARBATCH,BARITEM),U),1,31)
 ..W ?36,$J(BARITEM,3)
 ..W ?40,$E($P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,2),1,15)
 ..W ?56,$J($FN($P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,3),",",2),10)
 ..W ?67,$J($FN($P(BARCHK(BARCHECK,BARBATCH,BARITEM),U,4),",",2),10)
 ..S BARTMP(BARCNT)=BARBATCH_U_BARITEM
 Q
ASK ;
 ;Ask user to choose batch/item
 W !
 S BARANS=0
 K DIR
 S DIR(0)="NAO^1:"_BARCNT
 S DIR("A")="Please enter the LINE # of the collection batch/item that matches this ERA: "
 S DIR("?")="Enter a number between 1 and "_BARCNT
 S DIR("??")="^D LISTCHK^BAREDPA1"
 D ^DIR
 S BARANS=Y
 Q
UPDCHECK ; EP
 ;Populate A/R EDI Checks File
 ;I '$D(^BARECHK("B",BARCHECK)) D  Q  ;bar*1.8*20 REQ3
 I '$D(^BARECHK("B",BARCHKN)) D  Q  ;bar*1.8*20 REQ3
 .D ADD
 .Q:'+BARCKIEN
 .D UPD
 S BARMTCH=0
 S BARCKIEN=0
 ;F  S BARCKIEN=$O(^BARECHK("B",BARCHECK,BARCKIEN)) Q:'+BARCKIEN  D  Q:+BARMTCH  ;bar*1.8*20 REQ3
 F  S BARCKIEN=$O(^BARECHK("B",BARCHKN,BARCKIEN)) Q:'+BARCKIEN  D  Q:+BARMTCH  ;bar*1.8*20 REQ3
 .Q:$P($G(^BARECHK(BARCKIEN,0)),U,2)'=IMPDA
 .S BARMTCH=1
 I 'BARMTCH D ADD
 Q:'+BARCKIEN
 D UPD
 Q
ADD ;
 ;Add new entry to A/R EDI Check
 K DIC,DA,DR
 S DIC="^BARECHK("
 S DIC(0)="XZ"
 ;S X=BARCHECK  ;bar*1.8*20 REQ3
 S X=BARCHKN  ;bar*1.8*20 REQ3
 K DO,DD D FILE^DICN
 I +Y<1 D  Q
 . S BARCKIEN=0
 S BARCKIEN=+Y
 Q
UPD ;
 ;Update entry in A/R EDI Check
 K DIE,DIC,DA,DR,X,Y
 S DIE="^BARECHK("
 S DA=BARCKIEN
 ;S DR=".02///^S X=IMPDA"  ;RLT - IM13516
 S DR=".02////^S X=IMPDA"  ;RLT - IM13516
 I BARBATCH'="" S DR=DR_";.03////^S X=BARBATCH"
 I BARITEM'="" S DR=DR_";.04///^S X=BARITEM"
 D ^DIE
 Q
CONT ;
 ;W !!,"Done matching Check/EFT Trace # of ERA to Check # of Collection Batch/Item."  ;bar*1.8*20 REQ3
 ;start new bar*1.8*20 REQ3
 W !!
 I +$G(BARMCNT)>0 D
 .W !?2,BARMCNT_" "_$S(+$G(BARMCNT)=1:"ENTRY HAS ",1:"ENTRIES HAVE ")_"BEEN MATCHED.....................$",?50,$J($FN(BARMAMT,",",2),12)
 I +$G(BARNCNT)>0 D
 .W !?2,BARNCNT_" "_$S(+$G(BARNCNT)=1:"ENTRY HAS ",1:"ENTRIES HAVE ")_"NOT BEEN MATCHED.................$",?50,$J($FN(BARNAMT,",",2),12)
 W !,?40,"TOTAL.....$",$J($FN((+$G(BARMAMT)+$G(BARNAMT)),",",2),12)
 ;end new REQ3
 D EOP^BARUTL(1)
 Q
 ;start new bar*1.8*20 REQ3
STORE ;
 S BARI=0
 F  S BARI=$O(BARCHK(BARI)) Q:'BARI  D
 .Q:$P(BARCHK(BARI),U,3)=""  ;no batch
 .D ^XBFMK
 .S DA(1)=IMPDA
 .S DA=BARI
 .S DIE="^BAREDI(""I"","_DUZ(2)_","_DA(1)_",5,"
 .S DR=".07////"_$P(BARCHK(BARI),U,3)_";.08////"_$P(BARCHK(BARI),U,4)_";.11///MPN"
 .D ^DIE
 Q
DISPLAY ;
 S BAR("PG")=0
 S $P(BARDASH,"-",81)=""
 D SETHDR
 D HDB
 S BARI=0
 F  S BARI=$O(^BAREDI("I",DUZ(2),IMPDA,5,BARI)) Q:'BARI  D
 .S BARREC=$G(^BAREDI("I",DUZ(2),IMPDA,5,BARI,0))
 .S BARST=$P(BARREC,U,2)
 .W !?1,$E(BARST,($L(BARST)-3),$L(BARST))
 .I $P(BARREC,U,9) W "*" S BARPLB=1  ;PLB on chk
 .W ?10,$J($FN($P(BARREC,U,3),",",2),12),?24,$P(BARREC,U)
 .I $P(BARREC,U,7)="" W ?47,"NOT FOUND"
 .I $P(BARREC,U,7)'="" D
 ..S IENS=BARI_","_IMPDA_","
 ..W ?47,$$GET1^DIQ(90056.02011,IENS,.07)_"  "_$P(BARREC,U,8)
 Q
SETHDR ;
 ;Set up Rpt Hdr
 K BARPCIEN,BARPC,BARIIEN,BARAIEN
 K IMP
 D ENP^XBDIQ1(90056.02,IMPDA,".01;.05","IMP(")
 S BAR("HD",0)="ERA/RPMS CHECK MATCHING REPORT"
 S BAR("HD",1)="LOCATION: "_$$GET1^DIQ(4,DUZ(2),.01)
 S BAR("HD",2)="FOR RPMS FILE: "_IMP(.01)
 Q
HDB ;EP
 S BAR("COL")="W !,""ST"",?12,""AMOUNT"",?32,""CHECK#"",?50,""COLL. BATCH/ITEM FOUND"""
 S BAR("PG")=BAR("PG")+1
 I BAR("PG")>1 S BAR("LVL")=4
 D WHD^BARRHD
 X BAR("COL")
 W !,BARDASH,!
 Q
 ;end new REQ3
