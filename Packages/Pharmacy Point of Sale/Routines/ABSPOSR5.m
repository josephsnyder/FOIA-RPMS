ABSPOSR5  ;IHS/OIT/SCR - REJECTION REPORT BY REJECTION REASON
 ;;1.0;PHARMACY POINT OF SALE;**29,30,34,35,39,40**;JUN 21, 2001
 ; DISPLAYS POS CLAIMS BY REJECT CODE
 ; PATCH 40 NOTES: This routine was removed from POS MENUs and replaced with routine ABSPOSRY which does not use
 ;  ABSP REPORT MASTER file or the ^ABSPT("NON-FILEMAN" cross-reference. It is staying with the build for comparison
 ;  
UPD ; UPDATE THE REPORT MASTER FILE IN ABSP
 N ABSPQUIT,ABSPDONE,ABSPSTRT,ABSPEND,ABSPLCNT
 ;D AUTO^ABSPOSM1()    ;IHS/OIT/CNI/SCR patch 40 - can't run this from the prompt
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
 .Q:ABSPQUIT
 .I ABSPSTRT<0 S ABSPDONE=1 Q
 .I ABSPEND<0 S ABSPDONE=1 Q
 .S X2=ABSPSTRT,X1=ABSPEND D ^%DTC
 .I X<0 D EN^DDIOL("Ending Date is BEFORE Beginning Date Please enter new dates","","!!,*7")
 .I X>=0 S ABSPDONE=1
 Q:ABSPQUIT
 S ABSPQUIT=$$CLNC()
 Q:ABSPQUIT=-1
 S ABSPQUIT=$$INS()
 Q:ABSPQUIT=-1
 S ABSPQUIT=$$CODE() ;IHS/OIT/SCR 092109 patch 34 - screen by selected reject code
 Q:ABSPQUIT=-1
 S ABSPQUIT=$$RTYPE()
 Q
CLNC() ; PICK WHICH OR ALL CLINIC PHARMACIES
 N DIC,X,Y
 S DIC="^ABSP(9002313.56,"
 S DIC(0)="AEMQVZ"
 S DIC("A")="Please Select a Pharmacy or leave blank for ALL:  "
 D ^DIC K DIC
 I X["^" Q -1
 I Y=-1 S ABSPPPHM="ALL"
 I Y>-1 S ABSPPPHM=$P(Y,"^",1),ABSPPHMN=$P(Y,"^",2)
 Q 1
INS() ; SELECT THE INSURER OR CHOOSE ALL INSURERS
 N DIC,X,Y
 S DIC="^ABSPEI("
 S DIC(0)="AEMNQZ"
 S DIC("A")="Please choose an insurer or leave blank for ALL POS electronic insurers: "
 D ^DIC K DIC
 I X["^" Q -1
 I Y=-1 S ABSPINS="ALL"
 I Y'=-1 S ABSPINS=$P(Y,"^",1),ABSPINSN=$P(Y,"^",2)
 Q 1
CODE()  ;SELECT THE REJECTION CODE OR CHOOSE ALL CODES
 ;IHS/OIT/SCR 082109 START changes patch 34
 N DIC,X,Y
 S DIC="^ABSPRJC("
 S DIC(0)="AEMNQZ"
 S DIC("A")="Please choose a REJECTION CODE or leave blank for ALL: "
 D ^DIC K DIC
 I X["^" Q -1
 I Y=-1 S ABSPREJ="ALL"
 I Y'=-1 S ABSPREJ=$P(Y,"^",1),ABSPREJX=$P(Y,"^",2)
 Q 1
RTYPE()  ; SELECT IF YOU WANT SUMMARY, OR DETAILED
 N DIR,STARTIME,STOPTIME
 S DIR(0)="S^S:SUMMARY;D:DETAILED"
 S DIR("B")="D"
 S DIR("A")="Please select S for Summary or D for Detailed"
 D ^DIR
 I $D(DIRUT) Q -1
 S ABSPRTYP=X       ; SET REPORT TYPE
 D DEVSEL
 D ^XBCLS
 S STARTIME=$H
 D FIND
 S STOPTIME=$H
 S ^TMP("ABSPOSR5-RUNLOG",$J,STARTIME)=ABSPSTRT_"^"_$P(ABSPEND,".")_"^"_($P(STOPTIME,",",2)-$P(STARTIME,",",2)) ;IHS/OIT/CNI/RAN patch 40 081810 for benchmark
 D NEXT
 Q 1
DEVSEL ; SELECT DEVICE
 N ABSPSTOP
 S ABSPSTOP=0
 D ^%ZIS
 I POP D
 .D ^%ZIS
 I $D(DUOUT) D
  .D ZEND
  .S ABSPSTOP=1
 Q:ABSPSTOP
 I POP D
 .W "DEVICE UNAVAILABLE" G DEVSEL
 Q
FIND ; FIND REJECTIONS BY RELEASE DATE "B" CROSS REFERENCE
 N ABSPDONE,ABSPRDT,ABSPCARD,ABSPGRP,ABSPCLMI,ABSPRCNT,ABSPRNUM
 N ABSPCODE,ABSPQUIT ;IHS/OIT/SCR 082109 patch 34
 S ABSPRDT=ABSPSTRT-1
 S ABSPDONE=0
 S ABSPRMI=""
 F  S ABSPRDT=$O(^ABSPECX("RPT","B",ABSPRDT)) Q:ABSPRDT=""!ABSPDONE  D
 .I ABSPRDT>ABSPEND S ABSPDONE=1 Q
 .S ABSPTMP(ABSPRDT)=""
 .F ABSPJ=1:1 S ABSPRMI=$O(^ABSPECX("RPT","B",ABSPRDT,ABSPRMI)) Q:ABSPRMI'=+ABSPRMI  D
 ..S ABSPQUIT=0
 ..I $P(^ABSPECX("RPT",ABSPRMI,0),U,6)'=1 Q   ; NOT A REJECTED CLAIM
 ..S ABSPTRNS=$P(^ABSPECX("RPT",ABSPRMI,0),U,3),ABSPTINS=$P(^ABSPTL(ABSPTRNS,1),U,6)
 ..S ABSPPHM1=""
 ..I ABSPINS'="ALL" Q:ABSPTINS'=ABSPINS   ; NOT SELECTED INSURER
 ..I ABSPPPHM'="ALL" D
 ...I $P(^ABSPTL(ABSPTRNS,1),U,7)'=ABSPPPHM Q   ; NOT SELECTED PHARMACY
 ...S ABSPPHM1=ABSPPPHM
 ...Q
 ..I ABSPPPHM="ALL" S ABSPPHM1=$P(^ABSPTL(ABSPTRNS,1),U,7)    ; SET PHARMACY
 ..I ABSPPHM1="" Q
 ..;IHS/OIT/SCR 082109 START changes patch 34
 ..I ABSPREJ'="ALL" D  ;QUIT IF NOT SELECTED REJECT CODE
 ...I $D(^ABSPECX("RPT",ABSPRMI,"R",0)) D
 ....S ABSPREA=$P($G(^ABSPECX("RPT",ABSPRMI,"R",1,0)),U,1)
 ....S ABSPNUM=$P(ABSPREA,":",1)
 ...I ABSPREJX'=ABSPNUM S ABSPQUIT=1
 ...Q
 ..Q:ABSPQUIT
 ..;IHS/OIT/SCR 082109 END changes patch 34
 ..I $D(^ABSPECX("RPT",ABSPRMI,"R",0)) D
 ...S ABSPREA=$P(^ABSPECX("RPT",ABSPRMI,"R",1,0),U,1)
 ...S ABSPRNUM=$P(ABSPREA,":",1)
 ...S ABSPRCD="R"
 ...Q
 ..I '$D(^ABSPECX("RPT",ABSPRMI,"R",0)) D
 ...S ABSPREA=$P($G(^ABSPECX("RPT",ABSPRMI,"M",1,0)),U,1)
 ...S:ABSPREA="" ABSPREA="UKN"
 ...S ABSPRNUM="999"
 ...S ABSPRCD="M"   ; GET reason
 ...Q
 ..S ABSPCLMI=$P(^ABSPTL(ABSPTRNS,0),"^",4)
 ..S ABSPGRP=""
 ..S ABSPCARD=""
 ..I ABSPCLMI'="" D
 ...S ABSPCARD=$P($G(^ABSPC(ABSPCLMI,300)),"^",2)  ;TRANSACTION:CLAIM:Cardholder ID Number
 ...S ABSPCARD=$E(ABSPCARD,3,$L(ABSPCARD))  ;STRIP THE 2 CHARACTER QUALIFIER
 ...S ABSPGRP=$P($G(^ABSPC(ABSPCLMI,300)),"^",1)    ;TRANSACTION:CLAIM:Group Number
 ...S ABSPGRP=$E(ABSPGRP,3,$L(ABSPGRP)) ;STRIP THE 2 CHARACTER QUALIFIER
 ..;S ABSPRCNT=$P($G(ABSPREAS(ABSPRNUM)),"^",1)+1
 ..S ABSPRCNT=$P($G(ABSPREAS(ABSPRNUM,ABSPPHM1)),"^",1)+1   ;IHS/OIT/SCR 110309 patch 35
 ..;S ABSPREAS(ABSPRNUM)=ABSPRCNT_"^"_ABSPREA   ;COUNT OF REJECT REASON TYPE^REJECT REASON
 ..S ABSPREAS(ABSPRNUM,ABSPPHM1)=ABSPRCNT_"^"_ABSPREA   ;IHS/OIT/SCR 110309 patch 35
 ..S ABSPTMP(ABSPRDT,ABSPPHM1,ABSPTINS,ABSPRNUM,ABSPRMI)=ABSPREA_"^"_$P(^ABSPTL(ABSPTRNS,5),U,5)_"^"_$P(^ABSPTL(ABSPTRNS,0),U,6)_"^"_$P(^ABSPTL(ABSPTRNS,1),U,6)_"^"_ABSPCARD_"^"_ABSPGRP
 Q
NEXT ; WHAT TO DO NEXT
 N ABSPSTOP,ABSPOUT
 S (ABSPSTOP,ABSPOUT)=0
 I $O(ABSPTMP(""))="" D
 .D PRHDR
 .W !!," NO REJECTIONS FOUND FOR THE SELECTED DATE(S)"
 .D ZEND
 .S ABSPSTOP=1
 .Q
 Q:ABSPSTOP
 D SUM
 D PRNTSUM
 I ABSPOUT D ZEND  Q
 I ABSPRTYP["D" D PRNTDTL
 D ZEND
 Q
PRHDR ; PRINT HEADER
 N ABSPFEDT,ABSPFBDT
 U IO W:$D(ABSPSUM) @IOF
 S Y=ABSPSTRT
 D DD^%DT
 S ABSPFBDT=Y
 S Y=ABSPEND
 D DD^%DT
 S ABSPFEDT=Y
 W @IOF
 W !,?19,"Pharmacy Point of Sale Rejection Report"
 W !,?22,"Claims sorted by Rejection Reason"
 W !?22,"From "_ABSPFBDT_" TO "_ABSPFEDT
 W !?30,"***SUMMARY REPORT***",!
 Q
SUM ; PRINT SUMMARY PAGE
 ; TOTAL COUNTS BY REJECT CODE (1ST ON LIST)
 ; AND TOTAL AMT PER EACH THAT WAS REJECTED
 N ABSPPCNT
 S ABSPSRDT=""
 F  S ABSPSRDT=$O(ABSPTMP(ABSPSRDT)) Q:ABSPSRDT=""  D
 .S ABSPSPHM=""
 .F  S ABSPSPHM=$O(ABSPTMP(ABSPSRDT,ABSPSPHM)) Q:ABSPSPHM=""  D
 ..S ABSPSTIN=""
 ..F  S ABSPSTIN=$O(ABSPTMP(ABSPSRDT,ABSPSPHM,ABSPSTIN)) Q:ABSPSTIN=""  D
 ...S ABSPSRNM=""
 ...F  S ABSPSRNM=$O(ABSPTMP(ABSPSRDT,ABSPSPHM,ABSPSTIN,ABSPSRNM)) Q:ABSPSRNM=""  D
 ....S ABSPSTTL=0,ABSPSRMI="",ABSPSTL1=0
 ....F  S ABSPSRMI=$O(ABSPTMP(ABSPSRDT,ABSPSPHM,ABSPSTIN,ABSPSRNM,ABSPSRMI)) Q:ABSPSRMI=""  D
 .....S ABSPSREA=$P(ABSPTMP(ABSPSRDT,ABSPSPHM,ABSPSTIN,ABSPSRNM,ABSPSRMI),U,1)
 .....;S ABSPPCNT=$P(ABSPREAS(""_ABSPSRNM_""),U,1)    ; GET COUNT OF THIS REJECTION REASON
 .....S ABSPPCNT=$P(ABSPREAS(""_ABSPSRNM_"",ABSPSPHM),U,1)    ;IHS/OIT/SCR 110309 patch 35
 .....S ABSPSTTL=ABSPSTTL+$P(ABSPTMP(ABSPSRDT,ABSPSPHM,ABSPSTIN,ABSPSRNM,ABSPSRMI),U,2)
 ....S ABSPSTL1=ABSPSTTL+$P($G(ABSPSUM(ABSPSPHM,ABSPSRNM)),U,2)
 ....S ABSPSUM(ABSPSPHM,ABSPSRNM)=ABSPSREA_"^"_ABSPSTL1_"^"_ABSPSTIN_"^"_ABSPPCNT
 Q
PRNTSUM ; PRINT THE SUMMARY REPORT
 N ABSPGCNT,ABSPPCNT,ABSPSTOP
 S ABSPSTOP=0
 S ABSPPPHM=""
 S ABSPRTOT=0
 S ABSPPCNT=0
 S ABSPGTOT=0
 S ABSPGCNT=0
 S ABSPBTOT=0
 S ABSPSTOP=0
 S ABSPQUIT=0
 S ABSPOUT=0
 D PRHDR
 F  S ABSPPPHM=$O(ABSPSUM(ABSPPPHM)) Q:(ABSPPPHM="")!(ABSPSTOP)  D
 .I ABSPOUT S ABSPSTOP=1 Q
 .S ABSPPHMN=$P(^ABSP(9002313.56,ABSPPPHM,0),U,1)
 .;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging.
 .S ABSPOUT=$$WRITE^ABSPOSUU("!!,""PHARMACY: "",ABSPPHMN")
 .Q:ABSPOUT
 .S ABSPPRNM=""
 .S ABSPRTOT=0
 .S ABSPPCNT=0  ;IHS/OIT/SCR 110309 this is pharmacy count
 .;IHS/OIT/CNI/RAN 05042010 patch 39 - When printing to screen, use paging.
 .S ABSPOUT=$$WRITE^ABSPOSUU("!?2,""REJECTION CODE: "",?58,""  TOTALED: "",?68,""  RX COUNT: """)
 .Q:ABSPOUT
 .F  S ABSPPRNM=$O(ABSPSUM(ABSPPPHM,ABSPPRNM)) Q:(ABSPPRNM="")!(ABSPSTOP)  D
 ..I ABSPOUT S ABSPSTOP=1 Q
 ..S ABSPDRTR=$P(ABSPSUM(ABSPPPHM,ABSPPRNM),U,1)
 ..I ABSPDRTR'="" D
 ...;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging.
 ...S ABSPOUT=$$WRITE^ABSPOSUU("!?0,$P(ABSPSUM(ABSPPPHM,ABSPPRNM),U,1),?60,$J($P(ABSPSUM(ABSPPPHM,ABSPPRNM),U,2),7,2),?72,$P(ABSPSUM(ABSPPPHM,ABSPPRNM),U,4)")
 ...Q:ABSPOUT
 ...S ABSPRTOT=ABSPRTOT+$P(ABSPSUM(ABSPPPHM,ABSPPRNM),U,2)
 ...S ABSPPCNT=ABSPPCNT+$P(ABSPSUM(ABSPPPHM,ABSPPRNM),U,4)
 ..Q:ABSPOUT
 .Q:ABSPSTOP
 .Q:ABSPOUT
 .S ABSPGTOT=ABSPGTOT+ABSPRTOT
 .S ABSPGCNT=ABSPGCNT+ABSPPCNT
 .;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 .W:$Y<3 ! S ABSPOUT=$$WRITE^ABSPOSUU("!!,""TOTAL FOR PHARMACY: $"",ABSPRTOT")
 .Q:ABSPOUT
 .W:$Y<3 ! S ABSPOUT=$$WRITE^ABSPOSUU("!,""# RX REJECTED FOR PHARMACY: "",ABSPPCNT")
 .Q:ABSPOUT
 Q:ABSPSTOP
 Q:ABSPOUT
 ;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 W:$Y<3 ! S ABSPOUT=$$WRITE^ABSPOSUU("!!,""GRAND TOTAL: $"",ABSPGTOT")
 Q:ABSPOUT
 W:$Y<3 ! S ABSPOUT=$$WRITE^ABSPOSUU("!,""# RX REJECTED: "",ABSPGCNT")
 ;W:$Y<3 ! W !!,"P - Preventable, N - Non-recoverable, B - Both"
 Q
PRNTDHD ; PRINT DETAIL HEADER
 I ABSPRTYP'["D" D ZEND Q
 ;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 S ABSPOUT=$$WRITE^ABSPOSUU("!!,?21,""********** Detailed Report **********"",!")
 Q:ABSPOUT
 S ABSPOUT=$$WRITE^ABSPOSUU("!,""CHT #"",?14,""NAME"",?32,""RX #/FILL #"",?52,""INSURER"",?69,""AMT BILLED""")
 Q:ABSPOUT
 ;IHS/OIT/CNI/RAN 04282010 patch 39 - Add NDC # and Drug name
 S ABSPOUT=$$WRITE^ABSPOSUU("!,?3,""CARD HOLDER ID #"",?27,""GROUP #"",?40,""NDC #"",?60,""DRUG NAME""")
 Q
PRNTDTL  ; PRINT DETAILED REPORT
 N ABSPCARD,ABSPFRDT,ABSPGRP,ABSPSTOP,ABSPNDC,ABSPDRNM,ABSPQUIT,ABSPOUT
 S ABSPPRDT=""
 S ABSPPPHM=""
 S ABSPPRNM=""
 ;IHS/OIT/CNI/RAN 04282010 patch 39 - Add NDC # and Drug name on next two lines and New line above
 S ABSPNDC=""
 S ABSPDRNM=""
 S ABSPRTOT=0
 S ABSPGTOT=0
 S ABSPRDTL=0
 S ABSPSTOP=0
 S ABSPQUIT=0
 S ABSPOUT=0
 F  S ABSPPRDT=$O(ABSPTMP(ABSPPRDT)) Q:(ABSPPRDT="")!(ABSPQUIT)!(ABSPOUT)  D
 .S ABSPPPHM=""
 .S Y=ABSPPRDT
 .D DD^%DT
 .S ABSPFRDT=Y   ; FORMATTED RELEASE DATE
 .S ABSPRDTL=0
 .F  S ABSPPPHM=$O(ABSPTMP(ABSPPRDT,ABSPPPHM)) Q:(ABSPPPHM="")!(ABSPOUT)  D
 ..S ABSPPINS=""
 ..S ABSPPHMN=$P(^ABSP(9002313.56,ABSPPPHM,0),U,1)
 ..D PRNTDHD
 ..Q:ABSPOUT
 ..;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 ..S ABSPOUT=$$WRITE^ABSPOSUU("!!,?5,""PHARMACY: "",ABSPPHMN,""   RELEASED DATE: "",ABSPFRDT")
 ..Q:ABSPOUT
 ..S ABSPBTOT=0
 ..F  S ABSPPINS=$O(ABSPTMP(ABSPPRDT,ABSPPPHM,ABSPPINS)) Q:(ABSPPINS="")!(ABSPOUT)  D
 ...S ABSPPRNM=""
 ...F  S ABSPPRNM=$O(ABSPTMP(ABSPPRDT,ABSPPPHM,ABSPPINS,ABSPPRNM)) Q:(ABSPPRNM="")!(ABSPOUT)  D
 ....S ABSPPRMI=""
 ....S ABSPRJCD=$P(ABSPREAS(""_ABSPPRNM_"",ABSPPPHM),U,2) ;IHS/OIT/SCR 111309 patch 35
 ....;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 ....S ABSPOUT=$$WRITE^ABSPOSUU("!!,?15,""REJECTION CODE: "",$E(ABSPRJCD,1,48)")
 ....Q:ABSPOUT
 ....F  S ABSPPRMI=$O(ABSPTMP(ABSPPRDT,ABSPPPHM,ABSPPINS,ABSPPRNM,ABSPPRMI)) Q:(ABSPPRMI="")!(ABSPOUT)  D
 .....S (ABSPPCHT,ABSPPDIV,ABSPOPS)=""
 .....S ABSPPAT=$P(ABSPTMP(ABSPPRDT,ABSPPPHM,ABSPPINS,ABSPPRNM,ABSPPRMI),U,3)
 .....S ABSPCARD=$P(ABSPTMP(ABSPPRDT,ABSPPPHM,ABSPPINS,ABSPPRNM,ABSPPRMI),U,5)
 .....S ABSPGRP=$P(ABSPTMP(ABSPPRDT,ABSPPPHM,ABSPPINS,ABSPPRNM,ABSPPRMI),U,6)
 .....S ABSPPATN=$E($P(^DPT(ABSPPAT,0),U,1),1,20)
 .....S ABSPOPS=$P($G(^ABSP(9002313.56,ABSPPPHM,"OPSITE",1,0)),U,1)  ;OUTPATIENT SITE MIGHT NOT BE DEFINED
 .....S:ABSPOPS'="" ABSPPDIV=$P($G(^PS(59,ABSPOPS,0)),U,6)  ;NO OUTPATIENT SITE MEANS NO DIVISION
 .....S:ABSPPDIV'="" ABSPPCHT=$P($G(^AUPNPAT(ABSPPAT,41,ABSPPDIV,0)),U,2)  ;NO DIVISION MEANS NO CHART #
 .....S ABSPPRX=$P(^ABSPECX("RPT",ABSPPRMI,0),U,4)
 .....S ABSPPRXR=$P($G(^ABSPECX("RPT",ABSPPRMI,0)),U,5)  ; SET INTERNAL RX # AND REFILL #
 .....S ABSPPTP=$P(ABSPTMP(ABSPPRDT,ABSPPPHM,ABSPPINS,ABSPPRNM,ABSPPRMI),U,2)  ; PRICE
 .....S ABSPINSN=$E($P($G(^AUTNINS(ABSPPINS,0)),U,1),1,22)   ; INSURER NAME
 .....;IHS/OIT/CNI/RAN 04282010 patch 39 - Add NDC # and Drug name BEGIN
 .....N ABSPTRNS,ABSPCLMI
 .....S ABSPTRNS=$P($G(^ABSPECX("RPT",ABSPPRMI,0)),"^",3)
 .....S ABSPCLMI=$P($G(^ABSPTL(ABSPTRNS,0)),"^",4)
 .....S NDCDRG=$$GTNDCDRG^ABSPOSUU(ABSPCLMI,ABSPPRX)
 .....S ABSPNDC=$P(NDCDRG,"^",1)
 .....S ABSPDRNM=$P(NDCDRG,"^",2)
 .....;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 .....S ABSPOUT=$$WRITE^ABSPOSUU("!,ABSPPCHT,?9,ABSPPATN,?31,ABSPPRX_""/""_ABSPPRXR,?45,ABSPINSN,?70,""$""_$J(ABSPPTP,6,2)")
 .....Q:ABSPOUT
 .....;IHS/OIT/CNI/RAN 04282010 patch 39 - Add NDC # and Drug name
 .....S ABSPOUT=$$WRITE^ABSPOSUU("!,?3,ABSPCARD,?27,ABSPGRP,?40,ABSPNDC,?60,ABSPDRNM")
 .....Q:ABSPOUT
 .....;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging.
 .....S ABSBPRTT=ABSPRTOT+ABSPPTP
 .....S ABSPBTOT=ABSPPTP+ABSPBTOT
 .....S ABSPRDTL=ABSPRDTL+ABSPPTP
 ...Q:ABSPOUT
 ..Q:ABSPOUT
 ..;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 ..S ABSPOUT=$$WRITE^ABSPOSUU("!!,""TOTAL FOR "",ABSPPHMN,"": $"",$J(ABSPBTOT,6,2),!")
 .Q:ABSPOUT
 .;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 .S ABSPOUT=$$WRITE^ABSPOSUU("!!,""TOTAL FOR RELEASED DATE "",ABSPFRDT,"": $"",$J(ABSPRDTL,6,2)")
 .Q:ABSPOUT
 .S ABSPGTOT=ABSPGTOT+ABSPRDTL
 Q:ABSPSTOP
 Q:ABSPOUT
 ;I $D(ABSPRTYP) W !!,"TOTAL AMOUNT REJECTED: ",ABSBPRTT,!!,"P - Preventable, N - Non-recoverable, B - Both"
 ;IHS/OIT/CNI/RAN 04272010 patch 39 - When printing to screen, use paging
 I $D(ABSPRTYP) S ABSPOUT=$$WRITE^ABSPOSUU("!!,""TOTAL AMOUNT REJECTED: $"",$J(ABSPGTOT,6,2),!!")
 Q
ZEND ; END AND KILL VARIABLES
 D ^%ZISC
 K ABSPTMP,ABSPSUM,ABSBPRTT,ABSPBTOT,ABSPGTOT,ABSPRTOT,ABSPINS,ABSPPTP,ABSPPAT,ABSPPCHT,ABSPINSN,ABSPPRX,ABSPPRMI,ABSPPRXR,ABSPPDIV,ABSPOPS,ABSPPATN,ABSPPPHM,ABSPPRDT
 K ABSPREAS,ABSPRMI,ABSPSRDT,ABSPSTTL,ABSPSRMI,ABSPSPHM,ABSPSRNM,RNUM,ABSPSTIN,ABSPFBDT,ABSPFEDT,ABSPBDT,ABSPEDT,ABSPTINS,ABSPTRNS,ABSPJ,ABSPRTYP,ABSPDRT,ABSPDRTR,ABSPRJCD
 K ABSPPHM1,ABSPPHMN,ABSPPINS,ABSPPRNM,ABSPRCD,ABSPRDTL,ABSPREA,ABSPSREA,ABSPSTL1,ABSPSTRT
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
 Q
BDT()  ; ENTER BEGINING DATE
 N ABSPBDT,DIR,X1,X
 W !
 K DIR
 S DIR(0)="DEX"
 S DIR("A")="Enter Beginning Prescription Release Date"
 D ^DIR
 I $D(DIRUT) Q -1
 S ABSPBDT=+Y
 S X1=ABSPBDT D C^%DTC
 Q X
EDT()  ; ENTER END DATE
 N ABSPEDT,DIR,X1,X
 W !
 K DIR
 S DIR(0)="DEX"
 S DIR("A")="Enter Ending Prescription Release Date"
 D ^DIR
 I $D(DIRUT) Q -1
 S ABSPEDT=+Y
 S X1=ABSPEDT D C^%DTC
 Q X
