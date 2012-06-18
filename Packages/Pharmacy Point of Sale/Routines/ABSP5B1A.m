ABSP5B1A ; IHS/OIT/CASSevern/Pieran ran 1/19/2011 - Handling of outgoing NCPDP Billing "B1" Claims for 5.1 (Claim Segment)
 ;;1.0;PHARMACY POINT OF SALE;**42**;JUN 21, 2001
 ;
CLAIM ;EP CALLED FROM ABSP5B1 to set up CLAIM SEGMENT
 N FIELD
 S RECORD=$G(RECORD)
 F FIELD="111",455,402,436,407,456,457,458,459,442,403,405,406,408,414,415,419,420,460,308,429,453,445,446,330,454,600,418,461,462,463,464,343,344,345 D
 . Q:$D(SUPRESF(FIELD))
 . I (ACTION["CLAIM"),(FIELD'=111) D
 . . D @(FIELD_"GET")
 . . D @(FIELD_"FMT")
 . . D @(FIELD_"SET")
 . ELSE  D APPEND(FIELD)
 Q
 ;Segment identifier
111GET S ABSP("X")="07"
 Q
111FMT S:ABSP("X")'="" ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
111SET ;This isn't used for the 111 Field
 Q
 ;Presc Srv Ref Qualifier
455GET I '$D(SPECIAL(455)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Pres Srv Ref Qual"))
 ELSE  X SPECIAL(455)
 Q
455FMT S:ABSP("X")'="" ABSP("X")="EM"_$$ANFF^ABSPECFM(ABSP("X"),1)
 Q
455SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),450),U,5)=ABSP("X")
 Q
 ;Presc Srv Ref Number
402GET I '$D(SPECIAL(402)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"RX Number"))	
 ELSE  X SPECIAL(402)
 Q
402FMT I $L(ABSP("X"))>7 S ABSP("X")=$E(ABSP("X"),$L(ABSP("X"))-6,$L(ABSP("X")))
 S:ABSP("X")'="" ABSP("X")="D2"_$$NFF^ABSPECFM($G(ABSP("X")),7)
 Q
402SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,2)=ABSP("X")
 Q
 ;Product Serv ID Qualifer
436GET I '$D(SPECIAL(436)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Alt. Product Type"))	
 ELSE  X SPECIAL(436)
 Q
436FMT S:ABSP("X")'="" ABSP("X")="E1"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
436SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),430),U,6)=ABSP("X")
 Q
 ;Product Serv ID
407GET I '$D(SPECIAL(407)) D
 . S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"NDC"))
 . S ABSP("X")=$$NDCF^ABSPECFM(ABSP("X"))	
 ELSE  X SPECIAL(407)
 Q
407FMT S:ABSP("X")'="" ABSP("X")="D7"_$$ANFF^ABSPECFM(ABSP("X"),$L(ABSP("X"))) ;Spec says length is 19?
 Q
407SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,7)=ABSP("X")
 Q
 ;Assoc Pres Srv Ref Number
456GET I '$D(SPECIAL(456)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Assoc Pres Number"))
 ELSE  X SPECIAL(456)
 Q
456FMT S:ABSP("X")'="" ABSP("X")="EN"_$$NFF^ABSPECFM(ABSP("X"),7)
 Q
456SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),450),U,6)=ABSP("X")
 Q
 ;Assoc Pres Serv Date
457GET I '$D(SPECIAL(457)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Assoc Pres Date"))
 ELSE  X SPECIAL(457)
 Q
457FMT S:ABSP("X")'="" ABSP("X")="EP"_$$NFF^ABSPECFM(ABSP("X"),8)
 Q
457SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),450),U,7)=ABSP("X")
 Q
 ;Procedure Modifier Code Count	
458GET I '$D(SPECIAL(458)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Proc Mod Cd Cnt"))
 ELSE  X SPECIAL(458)
 Q
458FMT S:ABSP("X")'="" ABSP("X")="SE"_$$NFF^ABSPECFM(ABSP("X"),1)
 Q
458SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),450),U,8)=ABSP("X")
 Q
 ;Procedure Modifier Code
459GET I '$D(SPECIAL(459)) S ABSP("X")=""
 ELSE  X SPECIAL(459)
 Q
459FMT S:ABSP("X")'="" ABSP("X")="ER"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
459SET ;Not Yet Implemented
 Q
 ;Quantity Dispensed
442GET I '$D(SPECIAL(442)) D
 . S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Quantity"))*1000
 . S:$D(ABSP("RX",ABSP(9002313.0201),"Metric Decimal Quantity")) ABSP("X")=ABSP("RX",ABSP(9002313.0201),"Metric Decimal Quantity")
 ELSE  X SPECIAL(442)
 Q
442FMT S:ABSP("X")'="" ABSP("X")="E7"_$$NFF^ABSPECFM(ABSP("X"),10) ;Spec says length is 7
 Q
442SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),440),U,2)=ABSP("X")
 Q
 ;Fill Number
403GET I '$D(SPECIAL(403)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Refill #"))
 ELSE  X SPECIAL(403)
 Q
403FMT S:ABSP("X")'="" ABSP("X")="D3"_$$NFF^ABSPECFM(ABSP("X"),2)
 Q
403SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,3)=ABSP("X")
 Q
 ;Days Supply
405GET I '$D(SPECIAL(405)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Days Supply"))
 ELSE  X SPECIAL(405)
 Q
405FMT S:ABSP("X")'="" ABSP("X")="D5"_$$NFF^ABSPECFM(ABSP("X"),3)
 Q
405SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,5)=ABSP("X")
 Q
 ;Compound Code
406GET I '$D(SPECIAL(406)) D
 . S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Compound Code"))
 . S:ABSP("X")="" ABSP("X")=1
 ELSE  X SPECIAL(406)
 Q
406FMT S:ABSP("X")'="" ABSP("X")="D6"_$$NFF^ABSPECFM(ABSP("X"),1)
 Q
406SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,6)=ABSP("X")
 Q
 ;Dispense as written
408GET I '$D(SPECIAL(408)) D
 . S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"DAW"))
 . S:ABSP("X")="" ABSP("X")=0
 ELSE  X SPECIAL(408)
 Q
408FMT S:ABSP("X")'="" ABSP("X")="D8"_$$ANFF^ABSPECFM(ABSP("X"),1)
 Q
408SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,8)=ABSP("X")
 Q
 ;Date Presc Written
414GET I '$D(SPECIAL(414)) D
 . S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Date Written"))
 . S ABSP("X")=$$DTF1^ABSPECFM(ABSP("X"))
 ELSE  X SPECIAL(414)
 Q
414FMT S:ABSP("X")'="" ABSP("X")="DE"_$$NFF^ABSPECFM(ABSP("X"),8)
 Q
414SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,14)=ABSP("X")
 Q
 ;Number Refills Authorized
415GET I '$D(SPECIAL(415)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"# Refills"))
 ELSE  X SPECIAL(415)
 Q
415FMT S:ABSP("X")'="" ABSP("X")="DF"_$$NFF^ABSPECFM(ABSP("X"),2)
 Q
415SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,15)=ABSP("X")
 Q
 ;Prescription Origin Code
419GET I '$D(SPECIAL(419)) D
 . S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Origin Code"))
 . S:ABSP("X")="" ABSP("X")="1"
 ELSE  X SPECIAL(419)
 Q
419FMT S:ABSP("X")'="" ABSP("X")="DJ"_$$NFF^ABSPECFM(ABSP("X"),1)
 Q
419SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,19)=ABSP("X")
 Q
 ;Submission Clarification Code
420GET I '$D(SPECIAL(420)) D
 . S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Clarification"))
 . S:ABSP("X")="" ABSP("X")="00"
 ELSE  X SPECIAL(420)
 Q
420FMT S:ABSP("X")'="" ABSP("X")="DK"_$$NFF^ABSPECFM(ABSP("X"),2)
 Q
420SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,20)=ABSP("X")
 Q
 ;Quantity Prescribed
460GET I '$D(SPECIAL(460)) D
 . S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Quantity"))*1000
 . S:$D(ABSP("RX",ABSP(9002313.0201),"Metric Decimal Quantity")) ABSP("X")=ABSP("RX",ABSP(9002313.0201),"Metric Decimal Quantity")
 ELSE  X SPECIAL(460)
 Q
460FMT S:ABSP("X")'="" ABSP("X")="ET"_$$NFF^ABSPECFM(ABSP("X"),10)
 Q
460SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),450),U,10)=ABSP("X")
 Q
 ;Other Coverage Code
308GET I '$D(SPECIAL(308)) D
 . S ABSP("X")=$G(ABSP("Patient","Other Coverage Code"))
 . S:$G(ABSP(9002313.0201))'="" ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"CC"))
 . S:'ABSP("X") ABSP("X")=1
 ELSE  X SPECIAL(308)
 Q
308FMT S:ABSP("X")'="" ABSP("X")="C8"_$$NFF^ABSPECFM($G(ABSP("X")),2)
 Q
308SET D FLD308^ABSPOSSG
 Q
 ;Unit Dose Indicator
429GET I '$D(SPECIAL(429)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Unit Dose Indicator"))
 ELSE  X SPECIAL(429)
 Q
429FMT S:ABSP("X")'="" ABSP("X")="DT"_$$NFF^ABSPECFM($G(ABSP("X")),1)
 Q
429SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,29)=ABSP("X")
 Q
 ;Orig Presc Prod/Serv ID Qual
453GET I '$D(SPECIAL(453)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Orig Pres Prod Qual"))
 ELSE  X SPECIAL(453)
 Q
453FMT S:ABSP("X")'="" ABSP("X")="EJ"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
453SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),450),U,3)=ABSP("X")
 Q
 ;Orig Presc Prod/Serv Code
445GET I '$D(SPECIAL(445)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Orig Pres Prod"))
 ELSE  X SPECIAL(445)
 Q
445FMT S:ABSP("X")'="" ABSP("X")="EA"_$$ANFF^ABSPECFM(ABSP("X"),19)
 Q
445SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),440),U,5)=ABSP("X")
 Q
 ;Originally Prescribed Quantity
446GET I '$D(SPECIAL(446)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Org Pres Qty"))
 ELSE  X SPECIAL(446)
 Q
446FMT S:ABSP("X")'="" ABSP("X")="EB"_$$NFF^ABSPECFM(ABSP("X"),10) ;Spec says length is 7?
 Q
446SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),440),U,6)=ABSP("X")
 Q
 ;Alternate ID
330GET I '$D(SPECIAL(330)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Alternate ID"))
 ELSE  X SPECIAL(330)
 Q
330FMT S:ABSP("X")'="" ABSP("X")="CW"_$$ANFF^ABSPECFM(ABSP("X"),20)
 Q
330SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),320),U,10)=ABSP("X")
 Q
 ;Scheduled Pres ID Number
454GET I '$D(SPECIAL(454)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Schd Pres ID Num"))
 ELSE  X SPECIAL(454)
 Q
454FMT S:ABSP("X")'="" ABSP("X")="EK"_$$ANFF^ABSPECFM(ABSP("X"),12)
 Q
454SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),450),U,4)=ABSP("X")
 Q
 ;Unit of measure
600GET I '$D(SPECIAL(600)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Unit of Measure"))
 ELSE  X SPECIAL(600)
 Q
600FMT S:ABSP("X")'="" ABSP("X")="28"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
600SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),600),U,1)=ABSP("X")
 Q
 ;Level of Service
418GET I '$D(SPECIAL(418)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Level of Service"))
 ELSE  X SPECIAL(418)
 Q
418FMT S:ABSP("X")'="" ABSP("X")="DI"_$$NFF^ABSPECFM($G(ABSP("X")),2)
 Q
418SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,18)=ABSP("X")
 Q
 ;Prior Authorization Type Code
461GET I '$D(SPECIAL(461)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Prior Auth Type"))
 ELSE  X SPECIAL(461)
 Q
461FMT S:ABSP("X")'="" ABSP("X")="EU"_$$NFF^ABSPECFM(ABSP("X"),2)
 Q
461SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),460),U,1)=ABSP("X")
 Q
 ;Prior Authorization Num Sub
462GET I '$D(SPECIAL(462)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Prior Auth Num Sub"))
 ELSE  X SPECIAL(462)
 Q
462FMT S:ABSP("X")'="" ABSP("X")="EV"_$$NFF^ABSPECFM(ABSP("X"),11)
 Q
462SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),460),U,2)=ABSP("X")
 Q
 ;Intermediary Auth Type ID
463GET I '$D(SPECIAL(463)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Inter Auth Type"))
 ELSE  X SPECIAL(463)
 Q
463FMT S:ABSP("X")'="" ABSP("X")="EW"_$$NFF^ABSPECFM(ABSP("X"),2)
 Q
463SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),460),U,3)=ABSP("X")
 Q
 ;Intermediary Auth ID
464GET I '$D(SPECIAL(464)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Inter Auth"))
 ELSE  X SPECIAL(464)
 Q
464FMT S:ABSP("X")'="" ABSP("X")="EX"_$$ANFF^ABSPECFM(ABSP("X"),11)
 Q
464SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),460),U,4)=ABSP("X")
 Q
 ;Dispensing Status
343GET I '$D(SPECIAL(343)) S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Dispensing Status"))
 ELSE  X SPECIAL(343)
 Q
343FMT S:ABSP("X")'="" ABSP("X")="HD"_$$ANFF^ABSPECFM(ABSP("X"),1)
 Q
343SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),340),U,3)=ABSP("X")
 Q
 ;Qty intended to be dispensed
344GET I '$D(SPECIAL(344))  S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Qty Intd Dispd"))
 ELSE  X SPECIAL(344)
 Q
344FMT S:ABSP("X")'="" ABSP("X")="HF"_$$NFF^ABSPECFM(ABSP("X"),10) ;Spec says length is 7?
 Q
344SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),340),U,4)=ABSP("X")
 Q
 ;Day Supply Intd Dispensed
345GET I '$D(SPECIAL(345))  S ABSP("X")=$G(ABSP("Claim",ABSP(9002313.0201),"Days Sup Intd Dispd"))
 ELSE  X SPECIAL(345)
 Q
345FMT S:ABSP("X")'="" ABSP("X")="HG"_$$NFF^ABSPECFM(ABSP("X"),3)
 Q
345SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),340),U,5)=ABSP("X")
 Q
APPEND(FIELD) ;This is where the record is built field by field
 I FIELD["111" D
 . D @(FIELD_"GET")
 . D @(FIELD_"FMT")
 . S RECORD=RECORD_$C(30,28)_"AM"_ABSP("X")
 ELSE  D
 . I $G(ABSP(9002313.0201,IEN(9002313.01),FIELD,"I"))'="" S RECORD=RECORD_$C(28)_$G(ABSP(9002313.0201,IEN(9002313.01),FIELD,"I"))
 . ELSE  I $D(SPECIAL(FIELD)) D
 . . X SPECIAL(FIELD)
 . . D @(FIELD_"FMT")
 . . S RECORD=RECORD_$C(28)_ABSP("X")
 Q
