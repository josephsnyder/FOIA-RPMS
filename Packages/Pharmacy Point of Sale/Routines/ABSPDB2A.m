ABSPDB2A ; IHS/OIT/CASSevern/Pieran ran 1/19/2011 - Handling of NCPDP Reversal "B2" Claims for D.0 (Claim Segment)
 ;;1.0;PHARMACY POINT OF SALE;**42**;JUN 21, 2001
 ;
CLAIM ;EP CALLED FROM ABSPDB2 to set up CLAIM SEGMENT
 N FIELD
 S RECORD=$G(RECORD)
 F FIELD="111",455,402,436,407,403,308,147 D
 . Q:$D(SUPPRESS(FIELD))
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
455GET I '$D(SPECIAL(455)) S ABSP("X")=1 ;In D.0 Value is always 1 on Billing and Reversal Transactions
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
402FMT I $L(ABSP("X"))>12 S ABSP("X")=$E(ABSP("X"),$L(ABSP("X"))-11,$L(ABSP("X")))
 S:ABSP("X")'="" ABSP("X")="D2"_$$NFF^ABSPECFM($G(ABSP("X")),12)
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
 ;Fill Number
403GET I '$D(SPECIAL(403)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Refill #"))
 ELSE  X SPECIAL(403)
 Q
403FMT S:ABSP("X")'="" ABSP("X")="D3"_$$NFF^ABSPECFM(ABSP("X"),2)
 Q
403SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,3)=ABSP("X")
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
 ;Pharmacy Service Type
147GET I '$D(SPECIAL(147)) S ABSP("X")=""
 ELSE  X SPECIAL(147)
 Q
147FMT S:ABSP("X")'="" ABSP("X")="U7"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
147SET ;Not Yet Implemented
 Q
 ;
PRICING ;EP CALLED FROM ABSPDB2 to set up PRICING SEGMENT
 N FIELD
 S RECORD=$G(RECORD)
 F FIELD="111A",438,430 D
 . Q:$D(SUPPRESS(FIELD))
 . I (ACTION["CLAIM"),(FIELD'=111) D
 . . D @(FIELD_"GET")
 . . D @(FIELD_"FMT")
 . . D @(FIELD_"SET")
 . ELSE  D APPEND(FIELD)
 Q
 ;Segment identifier
111AGET S ABSP("X")=11
 Q
111AFMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
111ASET ;This isn't used for the 111 Field
 Q
 ;Incentive Amount
438GET I '$D(SPECIAL(438)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Incentive Amount"))
 ELSE  X SPECIAL(438)
 Q
438FMT S:ABSP("X")'="" ABSP("X")="E3"_$$DFF^ABSPECFM($G(ABSP("X")),8)
 Q
438SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),430),U,8)=ABSP("X")
 Q
 ;Gross Amnt Due
430GET I '$D(SPECIAL(430)) S ABSP("X")=$G(ABSP("RX",ABSP(9002313.0201),"Gross Amount Due"))
 ELSE  X SPECIAL(430)
 Q
430FMT S:ABSP("X")'="" ABSP("X")="DU"_$$DFF^ABSPECFM($G(ABSP("X")),8)
 Q
430SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),400),U,30)=ABSP("X")
 Q
 ;
DURRPPS ;EP CALLED FROM ABSPB1 to set up DURR/PPS SEGMENT
 N FIELD
 S RECORD=$G(RECORD)
 F FIELD="111B",473,439,440,441,474 D
 . Q:$D(SUPPRESS(FIELD))
 . I (ACTION["CLAIM"),(FIELD'=111) D
 . . D @(FIELD_"GET")
 . . D @(FIELD_"FMT")
 . . D @(FIELD_"SET")
 . ELSE  D APPEND(FIELD)
 Q
 ;Segment identifier
111BGET S ABSP("X")="08"
 Q
111BFMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
111BSET ;This isn't used for the 111 Field
 Q
 ;DUR/PPS Code Counter
473GET I '$D(SPECIAL(473)) S ABSP("X")=""
 ELSE  X SPECIAL(473)
 Q
473FMT S:ABSP("X")'="" ABSP("X")="7E"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
473SET D FLD473^ABSPOSSG
 Q
 ;Reason for Service Code
439GET I '$D(SPECIAL(439)) S ABSP("X")=""
 ELSE  X SPECIAL(439)
 Q
439FMT S:ABSP("X")'="" ABSP("X")="E4"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
439SET D FLD439^ABSPOSSG
 Q
 ;Professional Service Code
440GET I '$D(SPECIAL(440)) S ABSP("X")=""
 ELSE  X SPECIAL(440)
 Q
440FMT S:ABSP("X")'="" ABSP("X")="E5"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
440SET D FLD440^ABSPOSSG
 Q
 ;Result of Service Coce
441GET I '$D(SPECIAL(441)) S ABSP("X")=""
 ELSE  X SPECIAL(441)
 Q
441FMT S:ABSP("X")'="" ABSP("X")="E6"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
441SET D FLD441^ABSPOSSG
 Q
 ;DUR/PPS Level of Effort
474GET I '$D(SPECIAL(474)) S ABSP("X")=""
 ELSE  X SPECIAL(474)
 Q
474FMT S:ABSP("X")'="" ABSP("X")="8E"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
474SET D FLD474^ABSPOSSG
 Q
 ;
APPEND(FIELD) ;This is where the outgoing record is created field by field
 I FIELD["111" D
 . D @(FIELD_"GET")
 . D @(FIELD_"FMT")
 . S RECORD=RECORD_$C(29,30,28)_"AM"_ABSP("X")
 ELSE  D
 . I $G(ABSP(9002313.0201,IEN(9002313.01),FIELD,"I"))'="" S RECORD=RECORD_$C(28)_$G(ABSP(9002313.0201,IEN(9002313.01),FIELD,"I"))
 . ELSE  I $D(SPECIAL(FIELD)) D
 . . X SPECIAL(FIELD)
 . . D @(FIELD_"FMT")
 . . S RECORD=RECORD_$C(28)_ABSP("X")
 Q
