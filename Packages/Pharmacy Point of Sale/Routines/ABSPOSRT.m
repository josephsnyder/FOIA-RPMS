ABSPOSRT  ;IHS/OIT/CNI/RAN - Transaction History Report
 ;;1.0;PHARMACY POINT OF SALE;**40,47**;JUN 1, 2001;Build 15
 ; ABSP TRANSACTION HISTORY REPORT
 ; DISPLAYS ALL TRANSACTIONS FOR A GIVEN PRESCRIPTION
EN ; 
 N ABSPQUIT,ABSPDONE,ABSPSTRT,ABSPEND,ABSPLCNT,ABSPREJ,ABSPRJ,U,ABSPTMP,ABSPTMPC,ABSPCLM,ABSPUSER,ABSPPPHM,X
 S U="^"
 I $D(ZTQPARAM) D START
 S ABSPDONE=0
 S ABSPQUIT=0
 F  Q:ABSPDONE=1  D
 .S ABSPSTRT=$$BDT()
 .I ABSPSTRT=-1 D
 ..S ABSPQUIT=1
 ..S ABSPDONE=1
 .Q:ABSPQUIT
 .S ABSPEND=$$EDT()
 .I ABSPEND=-1 D
 ..S ABSPQUIT=1
 ..S ABSPDONE=1
 ..Q
 .Q:ABSPQUIT
 .I ABSPSTRT<0 S ABSPDONE=1 Q
 .I ABSPEND<0 S ABSPDONE=1 Q
 .S X2=ABSPSTRT,X1=ABSPEND D ^%DTC
 .I X<0 D EN^DDIOL("Ending Date is BEFORE Beginning Date Please enter new dates","","!!,*7")
 .I X>=0 S ABSPDONE=1
 .Q
 Q:ABSPQUIT
 S ABSPQUIT=$$CLNC^ABSPOSUU()
 Q:ABSPQUIT=-1
 S ABSPQUIT=$$USER^ABSPOSUU()
 D DEVSEL
 Q:ABSPQUIT=-1
 D ^XBCLS
 D FIND
 D NEXT
 Q
DEVSEL ; SELECT DEVICE
 N ABSPSTOP
 S ABSPSTOP=0
 D ^%ZIS
 I POP D
 .D ^%ZIS
 .Q
 I $D(DUOUT) D
  .D ZEND
  .S ABSPSTOP=1
  .Q
 Q:ABSPSTOP
 I POP D
 .W "DEVICE UNAVAILABLE" G DEVSEL
 Q
FIND ; FIND TRANSACTIONS BY TRANSACTION DATE USING "AH" CROSS REFERENCE
 N ABSPRDT,ABSPDONE,ABSPDONE,ABSPTRN,ABSPTPTL,ABSPRESC,ABSPRESP
 S ABSPRDT=ABSPSTRT
 S ABSPEND=ABSPEND_".99999999"
 S ABSPDONE=0
 ;GO THROUGH INDEX BY TRANSACTION DATE
 F  S ABSPRDT=$O(^ABSPTL("AH",ABSPRDT)) Q:(ABSPRDT="")!(ABSPDONE)!(+ABSPRDT=0)  D
 .I ABSPRDT>ABSPEND S ABSPDONE=1 Q
 .S ABSPTRN=""
 .F  S ABSPTRN=$O(^ABSPTL("AH",ABSPRDT,ABSPTRN)) Q:(ABSPTRN="")!(ABSPDONE)  D
 ..S ABSPRESC=$P(^ABSPTL(ABSPTRN,0),U)
 ..D GETINFO($P(ABSPRDT,"."),ABSPTRN,ABSPRESC)
 Q
GETINFO(ABSPRDT,ABSPTRN,ABSPRESC) ;GET ALL INFO FOR THIS PARTICULAR TRANSACTION
 N ABSPTPTL,ABSPPRI,DO,ABSPTYPI,ABSPTTYP,ABSPRNUM,ABSPREA,ABSPBAMT,ABSPPHM1,ABSPPAID,ABSPUSR1,ABSPCLMI,ABSPORIG,ABSP9PTL,ABSP1PTL,ABSPTDT,ABSPTL
 M ABSPTL(ABSPTRN)=^ABSPTL(ABSPTRN)
 S ABSPTPTL=ABSPTL(ABSPTRN,0)
 S ABSP1PTL=ABSPTL(ABSPTRN,1)
 S ABSP9PTL=$G(ABSPTL(ABSPTRN,9))
 S ABSPPRI=$P(ABSPTPTL,U,5)
 S ABSPCLMI=$P(ABSPTPTL,U,4)
 I ABSPPRI="" D              ;NON ELECTRONIC...THIS IS A PAPER CLAIM
 . S ABSPTTYP="PAPER"
 . S (ABSPRNUM,ABSPREA)=""
 . S ABSPPAID=0
 . I '$D(ABSPTL(ABSPTRN,5)) S ABSPTTYP="REVERSED",ABSPBAMT=0
 S ABSPPHM1=$P(ABSP1PTL,U,7)    ; SET PHARMACY
 I (ABSPPPHM'="ALL")&&(ABSPPHM1'=ABSPPPHM) Q   ; NOT SELECTED PHARMACY
 I ABSPPHM1="" S ABSPPHM1=ABSPPPHM
 S ABSPUSR1=$P(ABSPTPTL,U,17)
 I (ABSPUSER'="ALL"),(ABSPUSR1'=ABSPUSER) Q   ; NOT SELECTED USER
 I ABSPUSR1="" S ABSPUSR1=ABSPUSER
 I $D(ABSPTL(ABSPTRN,5)) S ABSPBAMT=$P(ABSPTL(ABSPTRN,5),U,5)  ;Billed amount
 ELSE  S ABSPBAMT=0
 I ABSPPRI'="" D  ;SKIP ALL THIS IF WE HAVE PAPER CLAIM
 .S DO=$P(ABSPTPTL,U,9)
 .I '$D(^ABSPR(ABSPPRI,1000,DO)) S DO=$$GETDO^ABSPOSUU(ABSPPRI,$P(ABSPRESC,"."))
 .Q:DO=""
 .S ABSPTYPI=$P(^ABSPR(ABSPPRI,1000,DO,500),U)
 .S ABSPTTYP=$S(ABSPTYPI="P":"PAYABLE",ABSPTYPI="R":"REJECTED",ABSPTYPI="D":"DUPLICATE",1:"PAPER")
 .S (ABSPRNUM,ABSPREA)=""
 .I ABSPTYPI="R" D
 .. I '$D(^ABSPR(ABSPPRI,1000,DO,511)) S (ABSPRNUM,ABSPREA)="UKN"   ;Added to skip junk data in PMAA test area
 .. E  D
 ... S ABSPRNUM=$P(^ABSPR(ABSPPRI,1000,DO,511,1,0),U)
 ... I '$D(^ABSPF(9002313.93,"B",ABSPRNUM)) S ABSPREA="Reject Code description not entered,See NCPDP Rejects" Q  ;IHS/OIT/RCS PATCH 47
 ... S ABSPREA=$P(^ABSPF(9002313.93,$O(^ABSPF(9002313.93,"B",ABSPRNUM,"")),0),U,2)
 .. S ABSPPAID=0
 .I ABSPTYPI="P" D
 ..S ABSPPAID=$$DFF2EXT^ABSPECFM($P(^ABSPR(ABSPPRI,1000,DO,500),U,9)),ABSPRESP(ABSPPRI)=""
 ..S (ABSPRNUM,ABSPREA)=""
 .I ABSPTYPI="D" S ABSPPAID=0
 I ABSP9PTL'="" D
 . S ABSPTDT=$P(ABSPTPTL,U,8)
 . I $P(ABSP9PTL,U)=1 S ABSPTTYP="CLOSED",ABSPRNUM="",ABSPREA="",ABSPBAMT=0,ABSPPAID=0
 . I ($P(ABSP9PTL,U)=0)&($P(ABSP9PTL,U,4)=ABSPTDT) S ABSPTTYP="REOPENED"
 Q:$G(ABSPTTYP)=""
 I '$D(ABSPTMPC(ABSPRESC)) S ABSPTMPC(ABSPRESC)=1
 E  S ABSPTMPC(ABSPRESC)=ABSPTMPC(ABSPRESC)+1
 S ^TMP("ABSPOSRT",$J,ABSPRDT,ABSPPHM1,ABSPUSR1,ABSPRESC,ABSPTRN)=ABSPTMPC(ABSPRESC)_U_ABSPTTYP_U_ABSPRNUM_U_ABSPREA_U_ABSPBAMT_U_ABSPPAID_U_ABSPPRI
 S ABSPCLM(ABSPRESC)=ABSPCLMI
 Q
NEXT ; WHAT TO DO NEXT
 N ABSPSTOP,ABSPOUT
 S (ABSPSTOP,ABSPOUT)=0
 D PRHDR
 I $O(^TMP("ABSPOSRT",$J,""))="" D
 .W !!," NO TRANSACTIONS FOUND FOR THE SELECTED DATE(S)"
 .D ZEND
 .S ABSPSTOP=1
 .Q
 Q:ABSPSTOP
 I ABSPOUT D ZEND  Q
 D PRNTDTL
 D ZEND
 Q
PRHDR ; PRINT HEADER
 N ABSPFEDT,ABSPFBDT,Y
 U IO W:$D(ABSPSUM) @IOF
 S Y=ABSPSTRT
 D DD^%DT
 S ABSPFBDT=Y
 S Y=$P(ABSPEND,".")
 D DD^%DT
 S ABSPFEDT=Y
 W @IOF
 W !,?16,"Pharmacy Point of Sale Transaction History Report"
 W !?22,"From: "_ABSPFBDT_" TO: "_ABSPFEDT
 W !?18,"Pharmacy: "_ABSPPPHM
 W !?22,"User: "_ABSPUSER
 Q
PRNTDHD ; PRINT HEADER
 ;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 S ABSPOUT=$$WRITE^ABSPOSUU("!,""SUBMISSION"",?14,""STATUS"",?25,""REJ"",?30,""REJ REASON"",?58,""BILLED AMT"",?70,""PAID AMT""")
 Q:ABSPOUT
 Q
PRNTDTL  ; PRINT DETAIL
 N ABSPTRDT,ABSPOUT,Y,ABSPFRDT,ABSPPPHM,ABSPPHMN,ABSPRESC,ABSPTRN,STRING,ABSPSUB,ABSPTYP,ABSPRJCD,ABSPREA,ABSPBAMT,ABSPPAID,ABSPUSRN
 N ABSPRXGT,ABSPSBGT,ABSPAYGT,ABSPDATE,ABSPUSR,ABSPHARM,ABSPRESP,ABSPREST,ABSPAID1,ABSPUSER,ABSPCLMI,ABSPPRI,ABSPPRX,ABSPPRXR,ABSPOTH
 S (ABSPRXGT,ABSPSBGT,ABSPAYGT)=0
 S (ABSPTRDT,ABSPOUT)=""
 F  S ABSPTRDT=$O(^TMP("ABSPOSRT",$J,ABSPTRDT)) Q:(ABSPTRDT="")!(ABSPOUT)  D
 .M ABSPTMP(ABSPTRDT)=^TMP("ABSPOSRT",$J,ABSPTRDT)
 .S ABSPPPHM=""
 .S Y=ABSPTRDT
 .D DD^%DT
 .S ABSPFRDT=Y   ; FORMATTED DATE
 .S ABSPPPHM=""
 .F  S ABSPPPHM=$O(ABSPTMP(ABSPTRDT,ABSPPPHM)) Q:(ABSPPPHM="")!(ABSPOUT)  D
 ..S ABSPPHMN=$P($G(^ABSP(9002313.56,ABSPPPHM,0)),U,1)
 ..I ABSPPHMN="" S ABSPPHMN="UKN"
 ..Q:ABSPOUT
 ..;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 ..S ABSPOUT=$$WRITE^ABSPOSUU("!!,?5,""PHARMACY: "",ABSPPHMN,""   TRANSACTION DATE: "",ABSPFRDT")
 ..Q:ABSPOUT
 ..S ABSPUSER=""
 ..F  S ABSPUSER=$O(ABSPTMP(ABSPTRDT,ABSPPPHM,ABSPUSER)) Q:(ABSPUSER="")!(ABSPOUT)  D
 ...S ABSPUSRN="UKN"
 ...S:ABSPUSER>0 ABSPUSRN=$P($G(^VA(200,ABSPUSER,0)),"^",1)
 ...S ABSPOUT=$$WRITE^ABSPOSUU("!!,?5,""POS USER: "",ABSPUSRN")
 ...Q:ABSPOUT
 ...S ABSPRESC=""
 ...F  S ABSPRESC=$O(ABSPTMP(ABSPTRDT,ABSPPPHM,ABSPUSER,ABSPRESC)) Q:(ABSPRESC="")!(ABSPOUT)  D
 ....I '$D(ABSPREST(ABSPRESC)) D
 .....S ABSPRXGT=ABSPRXGT+1
 .....S ABSPREST(ABSPRESC)=""
 ....S ABSPDATE(ABSPTRDT,"RX")=$G(ABSPDATE(ABSPTRDT,"RX"))+1
 ....S ABSPHARM(ABSPTRDT,ABSPPPHM,"RX")=$G(ABSPHARM(ABSPTRDT,ABSPPPHM,"RX"))+1
 ....S ABSPUSR(ABSPTRDT,ABSPPPHM,ABSPUSER,"RX")=$G(ABSPUSR(ABSPTRDT,ABSPPPHM,ABSPUSER,"RX"))+1
 ....S ABSPPRX=$P(ABSPRESC,".")
 ....S ABSPCLMI=ABSPCLM(ABSPRESC)
 ....I ABSPCLMI="" S ABSPPRXR=0
 ....E  S ABSPPRXR=$P($P(^ABSPC(ABSPCLMI,400,$P(^ABSPC(ABSPCLMI,400,0),U,3),400),U,3),"D3",2)
 ....S ABSPOTH=$$OTHERS(ABSPRESC,ABSPSTRT,ABSPEND)
 ....I ABSPOTH S ABSPPRXR=ABSPPRXR_" **"
 ....S ABSPOUT=$$WRITE^ABSPOSUU("!!,?25,""RX/REFILL: "",ABSPPRX,""/"",ABSPPRXR")
 ....Q:ABSPOUT
 ....D PRNTDHD
 ....S ABSPTRN=""
 ....F  S ABSPTRN=$O(ABSPTMP(ABSPTRDT,ABSPPPHM,ABSPUSER,ABSPRESC,ABSPTRN)) Q:(ABSPTRN="")!(ABSPOUT)  D
 .....S ABSPSBGT=ABSPSBGT+1
 .....S ABSPDATE(ABSPTRDT,"SUB")=$G(ABSPDATE(ABSPTRDT,"SUB"))+1
 .....S ABSPHARM(ABSPTRDT,ABSPPPHM,"SUB")=$G(ABSPHARM(ABSPTRDT,ABSPPPHM,"SUB"))+1
 .....S ABSPUSR(ABSPTRDT,ABSPPPHM,ABSPUSER,"SUB")=$G(ABSPUSR(ABSPTRDT,ABSPPPHM,ABSPUSER,"SUB"))+1
 .....S STRING=ABSPTMP(ABSPTRDT,ABSPPPHM,ABSPUSER,ABSPRESC,ABSPTRN)
 .....S ABSPSUB=$P(STRING,U)
 .....S ABSPTYP=$P(STRING,U,2)
 .....S ABSPRJCD=$P(STRING,U,3)
 .....S ABSPREA=$P(STRING,U,4)
 .....S ABSPBAMT=$P(STRING,U,5)
 .....S ABSPPAID=$P(STRING,U,6)
 .....S ABSPPRI=$P(STRING,U,7)
 .....I (ABSPPRI'="")&&('$D(ABSPRESP(ABSPPRI))) D
 ......S ABSPAID1=ABSPPAID
 ......S ABSPRESP(ABSPPRI)=""
 .....E  S ABSPAID1=0
 .....S ABSPAYGT=ABSPAYGT+ABSPPAID
 .....S ABSPDATE(ABSPTRDT,"PAY")=$G(ABSPDATE("DT",ABSPTRDT,"PAY"))+ABSPAID1
 .....S ABSPHARM(ABSPTRDT,ABSPPPHM,"PAY")=$G(ABSPHARM(ABSPTRDT,ABSPPPHM,"PAY"))+ABSPAID1
 .....S ABSPUSR(ABSPTRDT,ABSPPPHM,ABSPUSER,"PAY")=$G(ABSPUSR(ABSPTRDT,ABSPPPHM,ABSPUSER,"PAY"))+ABSPAID1
 .....S ABSPOUT=$$WRITE^ABSPOSUU("!,ABSPSUB,?14,ABSPTYP,?25,ABSPRJCD,?30,ABSPREA,?58,$J($FN(ABSPBAMT,"","",2),10),?70,$J($FN(ABSPPAID,"","",2),8)")
 ....Q:ABSPOUT
 ....I ABSPOTH S ABSPOUT=$$WRITE^ABSPOSUU("!!,""`**` Denotes this prescription has additional transactions "",!,?5,""outside the date range of this report.""")
 ...Q:ABSPOUT
 ...S ABSPOUT=$$WRITE^ABSPOSUU("!!,""FOR USER "",ABSPUSRN,"":""")
 ...Q:ABSPOUT
 ...S ABSPOUT=$$WRITE^ABSPOSUU("!,""Prescriptions: "",ABSPUSR(ABSPTRDT,ABSPPPHM,ABSPUSER,""RX"")")
 ...Q:ABSPOUT
 ...S ABSPOUT=$$WRITE^ABSPOSUU("!,""POS Submissions: "",ABSPUSR(ABSPTRDT,ABSPPPHM,ABSPUSER,""SUB"")")
 ...Q:ABSPOUT
 ...S ABSPOUT=$$WRITE^ABSPOSUU("!,""Total Paid: $"",$J($FN(ABSPUSR(ABSPTRDT,ABSPPPHM,ABSPUSER,""PAY""),"","",2),6)")
 ...Q:ABSPOUT
 ..Q:ABSPOUT
 ..S ABSPOUT=$$WRITE^ABSPOSUU("!!,""FOR PHARMACY "",ABSPPHMN,"":""")
 ..Q:ABSPOUT
 ..S ABSPOUT=$$WRITE^ABSPOSUU("!,""Prescriptions: "",ABSPHARM(ABSPTRDT,ABSPPPHM,""RX"")")
 ..Q:ABSPOUT
 ..S ABSPOUT=$$WRITE^ABSPOSUU("!,""POS Submissions: "",ABSPHARM(ABSPTRDT,ABSPPPHM,""SUB"")")
 ..Q:ABSPOUT
 ..S ABSPOUT=$$WRITE^ABSPOSUU("!,""Total Paid: $"",$J($FN(ABSPHARM(ABSPTRDT,ABSPPPHM,""PAY""),"","",2),6)")
 ..Q:ABSPOUT
 .K ABSPTMP(ABSPTRDT)
 .Q:ABSPOUT
 .S ABSPOUT=$$WRITE^ABSPOSUU("!!,""FOR TRANSACTION DATE "",ABSPFRDT,"":""")
 .Q:ABSPOUT
 .S ABSPOUT=$$WRITE^ABSPOSUU("!,""Prescriptions: "",ABSPDATE(ABSPTRDT,""RX"")")
 .Q:ABSPOUT
 .S ABSPOUT=$$WRITE^ABSPOSUU("!,""POS Submissions: "",ABSPDATE(ABSPTRDT,""SUB"")")
 .Q:ABSPOUT
 .S ABSPOUT=$$WRITE^ABSPOSUU("!,""Total Paid: $"",$J($FN(ABSPDATE(ABSPTRDT,""PAY""),"","",2),6)")
 .Q:ABSPOUT
 S ABSPOUT=$$WRITE^ABSPOSUU("!!!,""Report Totals:""")
 Q:ABSPOUT
 S ABSPOUT=$$WRITE^ABSPOSUU("!!!,""Prescriptions: "",ABSPRXGT")
 Q:ABSPOUT
 S ABSPOUT=$$WRITE^ABSPOSUU("!,""POS Submissions: "",ABSPSBGT")
 Q:ABSPOUT
 S ABSPOUT=$$WRITE^ABSPOSUU("!,""Total Paid: $"",$J($FN(ABSPAYGT,"","",2),6)")
 Q:ABSPOUT
 Q
ZEND ; END AND KILL VARIABLES
 K ^TMP("ABSPOSRT",$J)
 D ^%ZISC
 Q
START  ;
 N X,Y,ABSPJ,ABSPRJC,ABSPPAT,ABSPPIEN
 I $D(ZTQPARAM) D
 .I $P(ZTQPARAM,";",1)["T-1" S ABSPSTRT=DT-1
 .I $P(ZTQPARAM,";",2)["T-1" S ABSPEND=DT-1
 .S ABSPINS="ALL"
 .S ABSPPPHM="ALL"
 .S ABSPRTYP="D"
 .D FIND
 .D ZEND
 .Q
 Q
BDT()  ; ENTER BEGINING DATE
 N ABSPBDT,DIR,X1,X,Y
 W !
 K DIR
 S DIR(0)="DEX"
 S DIR("A")="Enter Beginning POS Transaction Date"
 D ^DIR
 I $D(DIRUT) Q -1
 S ABSPBDT=+Y
 S X1=ABSPBDT D C^%DTC
 Q X
EDT()  ; ENTER END DATE
 N ABSPEDT,DIR,X1,X,Y
 W !
 K DIR
 S DIR(0)="DEX"
 S DIR("A")="Enter Ending POS Transaction Date"
 D ^DIR
 I $D(DIRUT) Q -1
 S ABSPEDT=+Y
 S X1=ABSPEDT D C^%DTC
 Q X
OTHERS(ABSPRESC,ABSPSTRT,ABSPEND) ;CHECK FOR OTHER TRANSACTIONS OUTSIDE DATE RANGE
 ;See if there are any transactions outside the date range
 N X,ABSPTRN,ABSPDT,DONE
 S ABSPTRN=""
 S (X,DONE)=0
 F  S ABSPTRN=$O(^ABSPTL("B",ABSPRESC,ABSPTRN)) Q:(ABSPTRN="")!(DONE)  D
 . S ABSPDT=$P(^ABSPTL(ABSPTRN,0),U,8)
 . I (ABSPDT<ABSPSTRT)!(ABSPDT>ABSPEND) S (X,DONE)=1
 Q X
