ABSPDB1G ; IHS/OIT/CASSevern/Pieran ran 1/19/2011 - Handling of outgoing NCPDP Billing "B1" and Reversal "B2" Claims for D.0
 ;;1.0;PHARMACY POINT OF SALE;**42,46**;JUN 21, 2001;Build 15
 ;
 ; This routine will replace the ABSPOSCF for D.0, so that we no
 ; longer need to use the formats file.
 ; This will go through and get the data for each and every segment and field
 ; format it and place it in the CLAIM file ^ABSPC(CLAIMIEN
 ; The ABSP() Array is already set up in: GETINFO^ABSPOSCC before we get here.
 ;The header is the one segment that is completely unchanged between version 5.1 and D.0
 ;The only difference is field 102 "VERSION" now says D0 instead of 51
HEADER ;HEADER Segment
 N FIELD
 F FIELD=101,102,103,104,109,202,201,401,110 D
 . Q:$D(SUPRESF(FIELD))
 . I (ACTION["CLAIM"),(FIELD'=111) D
 . . D @(FIELD_"GET")
 . . D @(FIELD_"FMT")
 . . D @(FIELD_"SET")
 . ELSE  D @(FIELD_"APD")
 Q
 ;BIN #
101GET I '$D(SPECIAL(101)) S ABSP("X")=$G(INSARRAY(9002313.4,DO,100.16))
 ELSE  X SPECIAL(101)
 Q
101FMT S ABSP("X")=$$NFF^ABSPECFM(ABSP("X"),6)
 Q
101SET S $P(^ABSPC(ABSP(9002313.02),100),U,1)=ABSP("X")
 Q
101APD S RECORD=$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
 ;VERSION (5.1, D.0)  If we are calling this routine it better be D.0
102GET S ABSP("X")=$TR($G(INSARRAY(9002313.4,DO,100.15)),".","")
 Q
102FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
102SET S $P(^ABSPC(ABSP(9002313.02),100),U,2)=ABSP("X")
 Q
102APD S RECORD=RECORD_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
 ;TRANSACTION CODE "B1" for Billing
103GET S ABSP("X")="B1"	
 Q
103FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
103SET S $P(^ABSPC(ABSP(9002313.02),100),U,3)=ABSP("X")
 Q
103APD S RECORD=RECORD_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
 ;PCN #	
104GET I '$D(SPECIAL(104)) S ABSP("X")=$G(INSARRAY(9002313.4,DO,100.17))
 ELSE  X SPECIAL(104)
 Q
104FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),10)
 Q
104SET S $P(^ABSPC(ABSP(9002313.02),100),U,4)=ABSP("X")
 Q
104APD S RECORD=RECORD_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
 ;Transaction count	
109GET I '$D(SPECIAL(109)) S ABSP("X")=$G(ABSP("Transaction Count"))
 ELSE  X SPECIAL(109)
 Q
109FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),1)
 Q
109SET S $P(^ABSPC(ABSP(9002313.02),100),U,9)=ABSP("X")
 Q
109APD S RECORD=RECORD_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
 ;Service provider ID
202GET I '$D(SPECIAL(202)) S ABSP("X")=$G(ABSP("Header","Service Prov ID Qual"))
 ELSE  X SPECIAL(202)
 Q
202FMT S ABSP("X")=$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
202SET S $P(^ABSPC(ABSP(9002313.02),200),U,2)=ABSP("X")
 Q
202APD S RECORD=RECORD_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
 ;Pharmacy number
201GET I '$D(SPECIAL(201)) S ABSP("X")=$G(ABSP("Site","Pharmacy #"))
 ELSE  X SPECIAL(201)
 Q
201FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),15)
 Q
201SET S $P(^ABSPC(ABSP(9002313.02),200),U,1)=ABSP("X")
 Q
201APD S RECORD=RECORD_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
 ;Fill Date
401GET I '$D(SPECIAL(401)) S ABSP("X")=$G(ABSP("RX","Date Filled"))
 ELSE  X SPECIAL(401) I $G(ABSP("X")) S ABSP("X")=ABSP("X")-17000000
 Q
401FMT S ABSP("X")=$$NFF^ABSPECFM($$DTF1^ABSPECFM(ABSP("X")),8)
 Q
401SET S $P(^ABSPC(ABSP(9002313.02),401),U,1)=ABSP("X")
 Q
401APD S RECORD=RECORD_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
 ;Vendor ID
110GET I '$D(SPECIAL(110)) S ABSP("X")=$G(ABSP("Software Vendor"))
 ELSE  X SPECIAL(110)
 Q
110FMT S ABSP("X")=$$ANFF^ABSPECFM($G(ABSP("X")),10)
 Q
110SET S $P(^ABSPC(ABSP(9002313.02),100),U,10)=ABSP("X")
 Q
110APD S RECORD=RECORD_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
INSURANCE ;INSURANCE Segment
 N FIELD
 S RECORD=$G(RECORD)
 F FIELD="111",302,312,313,314,524,309,301,303,306,359,360,361,997,115 D
 . Q:$D(SUPRESF(FIELD))
 . I (ACTION["CLAIM"),(FIELD'=111) D
 . . D @(FIELD_"GET")
 . . D @(FIELD_"FMT")
 . . D @(FIELD_"SET")
 . ELSE  D APPEND(FIELD)
 Q
 ;Segment identifier
111GET S ABSP("X")="04"
 Q
111FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
111SET ;This isn't used for the 111 Field
 Q
 ;Cardholder ID
302GET I '$D(SPECIAL(302)) S ABSP("X")=$G(ABSP("Insurer","Policy #"))
 ELSE  X SPECIAL(302)
 Q
302FMT S:ABSP("X")'="" ABSP("X")="C2"_$$ANFF^ABSPECFM(ABSP("X"),$L(ABSP("X")))
 Q
302SET S $P(^ABSPC(ABSP(9002313.02),300),U,2)=ABSP("X")
 Q
 ;Cardholder First Name	
312GET I '$D(SPECIAL(312)) D
 . S ABSP("X")=","_$G(ABSP("Cardholder","First Name"))
 . S:","[ABSP("X") ABSP("X")=$G(ABSP("Cardholder","Name"))
 . S ABSP("X")=$P($P(ABSP("X"),",",2)," ")
 ELSE  X SPECIAL(312)
 Q
312FMT S:ABSP("X")'="" ABSP("X")="CC"_$$ANFF^ABSPECFM(ABSP("X"),$L(ABSP("X"))) ;Spec says length is 12?
 Q
312SET S $P(^ABSPC(ABSP(9002313.02),300),U,12)=ABSP("X")
 Q
 ;Cardholder Last Name
313GET I '$D(SPECIAL(313)) D
 . S ABSP("X")=$G(ABSP("Cardholder","Last Name"))
 . S:ABSP("X")="" ABSP("X")=$G(ABSP("Cardholder","Name"))
 . S ABSP("X")=$P(ABSP("X"),",")
 . S:$L(ABSP("X"))>15 ABSP("X")=$E(ABSP("X"),1,15)
 ELSE  X SPECIAL(313)
 Q
313FMT S:ABSP("X")'="" ABSP("X")="CD"_$$ANFF^ABSPECFM(ABSP("X"),$L(ABSP("X"))) ;Spec says length is 15?
 Q
313SET S $P(^ABSPC(ABSP(9002313.02),300),U,13)=ABSP("X")
 Q
 ;Home Plan
314GET I '$D(SPECIAL(314)) S ABSP("X")=$G(ABSP("Home Plan"))
 ELSE  X SPECIAL(314)
 Q
314FMT S:ABSP("X")'="" ABSP("X")="CE"_$$ANFF^ABSPECFM(ABSP("X"),3)
 Q
314SET S $P(^ABSPC(ABSP(9002313.02),300),U,14)=ABSP("X")
 Q
 ;Plan ID
524GET I '$D(SPECIAL(524)) S ABSP("X")=$G(ABSP("Insurer","Plan ID"))
 ELSE  X SPECIAL(524)
 Q
524FMT S:ABSP("X")'="" ABSP("X")="FO"_$$ANFF^ABSPECFM(ABSP("X"),8)
 Q
524SET S $P(^ABSPC(ABSP(9002313.02),520),U,4)=ABSP("X")
 Q
 ;Eligibility Clarification Code
309GET I '$D(SPECIAL(309)) S ABSP("X")=$G(ABSP("Eligibility Clarification Code"))
 ELSE  X SPECIAL(309)	
 Q
309FMT S:ABSP("X")'="" ABSP("X")="C9"_$$NFF^ABSPECFM($G(ABSP("X")),1)	
 Q
309SET S $P(^ABSPC(ABSP(9002313.02),300),U,9)=ABSP("X")
 Q
 ;Group ID
301GET I '$D(SPECIAL(301)) S ABSP("X")=$G(ABSP("Insurer","Group #"))
 ELSE  X SPECIAL(301)
 Q
301FMT S:ABSP("X")'="" ABSP("X")="C1"_$$ANFF^ABSPECFM(ABSP("X"),15)
 Q
301SET S $P(^ABSPC(ABSP(9002313.02),300),U,1)=ABSP("X")
 Q
 ;Person Code
303GET I '$D(SPECIAL(303)) S ABSP("X")=$G(ABSP("Insurer","Person Code"))
 ELSE  X SPECIAL(303)
 Q
303FMT S:ABSP("X")'="" ABSP("X")="C3"_$$ANFF^ABSPECFM(ABSP("X"),3)
 Q
303SET S $P(^ABSPC(ABSP(9002313.02),300),U,3)=ABSP("X")
 Q
 ;Patient Relationship Code
306GET I '$D(SPECIAL(306)) S ABSP("X")=$G(ABSP("Insurer","Relationship"))
 ELSE  X SPECIAL(306)
 Q
306FMT S:ABSP("X")'="" ABSP("X")="C6"_$$NFF^ABSPECFM($G(ABSP("X")),1)
 Q
306SET S $P(^ABSPC(ABSP(9002313.02),300),U,6)=ABSP("X")
 Q
 ;Medigap ID
359GET I '$D(SPECIAL(359)) S ABSP("X")=""
 ELSE  X SPECIAL(359)
 Q
359FMT S:ABSP("X")'="" ABSP("X")="2A"_$$ANFF^ABSPECFM($G(ABSP("X")),20)
 Q
359SET ;Not Yet Implemented **
 Q
 ;Medicaid Indicator
360GET I '$D(SPECIAL(360)) S ABSP("X")=""
 ELSE  X SPECIAL(360)
 Q
360FMT S:ABSP("X")'="" ABSP("X")="2B"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
360SET ;Not Yet Implemented **
 Q
 ;Provider Accept Assignment Indicator
361GET I '$D(SPECIAL(361)) S ABSP("X")=""
 ELSE  X SPECIAL(361)
 Q
361FMT S:ABSP("X")'="" ABSP("X")="2D"_$$ANFF^ABSPECFM($G(ABSP("X")),1)
 Q
361SET ;Not Yet Implemented **
 Q
 ;CMS Part D Defined Qualified Facility
997GET I '$D(SPECIAL(997)) S ABSP("X")=""
 ELSE  X SPECIAL(997)
 Q
997FMT S:ABSP("X")'="" ABSP("X")="G2"_$$ANFF^ABSPECFM($G(ABSP("X")),1)
 Q
997SET ;Not Yet Implemented **
 Q
 ;Medicaid ID Number
115GET I '$D(SPECIAL(115)) S ABSP("X")=""
 ELSE  X SPECIAL(115)
 Q
115FMT S:ABSP("X")'="" ABSP("X")="N5"_$$ANFF^ABSPECFM($G(ABSP("X")),20)
 Q
115SET ;Not Yet Implemented **
 Q
PATIENT ;PATIENT Segment
 N FIELD
 S RECORD=$G(RECORD)
 F FIELD="111A",331,332,304,305,310,311,322,323,324,325,326,307,333,335,350,384 D
 . Q:$D(SUPRESF(FIELD))
 . I (ACTION["CLAIM"),(FIELD'=111) D
 . . D @(FIELD_"GET")
 . . D @(FIELD_"FMT")
 . . D @(FIELD_"SET")
 . ELSE  D APPEND(FIELD)
 Q
 ;Segment identifier
111AGET S ABSP("X")="01"
 Q
111AFMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
111ASET ;This isn't used for the 111 Field
 Q
 ;Patient ID Qualifier
331GET I '$D(SPECIAL(331)) S ABSP("X")=$G(ABSP("Patient","ID Qualifier"))
 ELSE  X SPECIAL(331)
 Q
331FMT S:ABSP("X")'="" ABSP("X")="CX"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
331SET S $P(^ABSPC(ABSP(9002313.02),330),U,1)=ABSP("X")
 Q
 ;Patient ID	
332GET I '$D(SPECIAL(332))	S ABSP("X")=$G(ABSP("Patient","ID"))
 ELSE  X SPECIAL(332)
 Q
332FMT S:ABSP("X")'="" ABSP("X")="CY"_$$ANFF^ABSPECFM($G(ABSP("X")),20)
 Q
332SET S $P(^ABSPC(ABSP(9002313.02),330),U,2)=ABSP("X")
 Q
 ;Date of Birth
304GET I '$D(SPECIAL(304))	D
 . S ABSP("X")=$G(ABSP("Patient","DOB"))
 . S ABSP("X")=$$DTF1^ABSPECFM(ABSP("X"))
 ELSE  X SPECIAL(304)
 Q
304FMT S:ABSP("X")'="" ABSP("X")="C4"_$$NFF^ABSPECFM($G(ABSP("X")),8)
 Q
304SET S $P(^ABSPC(ABSP(9002313.02),300),U,4)=ABSP("X")
 Q
 ;Patient Gender code
305GET I '$D(SPECIAL(305))	D
 . S ABSP("X")=$G(ABSP("Patient","Sex"))
 . S ABSP("X")=$E(ABSP("X"),1,1)
 . S ABSP("X")=$S(ABSP("X")="M":"1",ABSP("X")="F":"2",1:"0")
 ELSE  X SPECIAL(305)
 Q
305FMT S:ABSP("X")'="" ABSP("X")="C5"_$$NFF^ABSPECFM(ABSP("X"),1)
 Q
305SET S $P(^ABSPC(ABSP(9002313.02),300),U,5)=ABSP("X")
 Q
 ;Patient First Name
310GET I '$D(SPECIAL(310)) D
 . S ABSP("X")=","_$G(ABSP("Patient","First Name"))
 . I ","[ABSP("X") S ABSP("X")=$G(ABSP("Patient","Name"))
 . S ABSP("X")=$P($P(ABSP("X"),",",2)," ")
 ELSE  X SPECIAL(310)
 Q
310FMT S:ABSP("X")'="" ABSP("X")="CA"_$$ANFF^ABSPECFM($G(ABSP("X")),12)
 Q
310SET S $P(^ABSPC(ABSP(9002313.02),300),U,10)=ABSP("X")
 Q
 ;Patient Last Name
311GET I '$D(SPECIAL(311)) D
 . S ABSP("X")=$G(ABSP("Patient","Last Name"))
 . I ABSP("X")="" S ABSP("X")=$G(ABSP("Patient","Name"))
 . S ABSP("X")=$P(ABSP("X"),",")
 ELSE  X SPECIAL(311)
 Q
311FMT S:ABSP("X")'="" ABSP("X")="CB"_$$ANFF^ABSPECFM($G(ABSP("X")),15)
 Q
311SET S $P(^ABSPC(ABSP(9002313.02),300),U,11)=ABSP("X")
 Q
 ;Patient Street Address
322GET I '$D(SPECIAL(322)) S ABSP("X")=$G(ABSP("Patient","Street Address"))
 ELSE  X SPECIAL(322)
 Q
322FMT S:ABSP("X")'="" ABSP("X")="CM"_$$ANFF^ABSPECFM(ABSP("X"),30)
 Q
322SET S $P(^ABSPC(ABSP(9002313.02),321),U,2)=ABSP("X")
 Q
 ;Patient City Address
323GET I '$D(SPECIAL(323)) S ABSP("X")=$G(ABSP("Patient","City"))
 ELSE  X SPECIAL(323)
 Q
323FMT S:ABSP("X")'="" ABSP("X")="CN"_$$ANFF^ABSPECFM(ABSP("X"),20)
 Q
323SET S $P(^ABSPC(ABSP(9002313.02),321),U,3)=ABSP("X")
 Q
 ;Patient State/Province Address
324GET I '$D(SPECIAL(324)) S ABSP("X")=$G(ABSP("Patient","State"))
 ELSE  X SPECIAL(324)
 Q
324FMT S:ABSP("X")'="" ABSP("X")="CO"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
324SET S $P(^ABSPC(ABSP(9002313.02),321),U,4)=ABSP("X")
 Q
 ;Patient ZIP
325GET I '$D(SPECIAL(325)) D
 . S ABSP("X")=$G(ABSP("Patient","Zip"))
 . S ABSP("X")=$TR(ABSP("X"),"-/._","")
 ELSE  X SPECIAL(325)
 Q
325FMT S:ABSP("X")'="" ABSP("X")="CP"_$$ANFF^ABSPECFM(ABSP("X"),15)
 Q
325SET S $P(^ABSPC(ABSP(9002313.02),321),U,5)=ABSP("X")
 Q
 ;Patient Phone Number
326GET I '$D(SPECIAL(326)) S ABSP("X")=$G(ABSP("Patient","Phone"))
 ELSE  X SPECIAL(326)
 Q
326FMT S:ABSP("X")'="" ABSP("X")="CQ"_$$NFF^ABSPECFM(ABSP("X"),10)
 Q
326SET S $P(^ABSPC(ABSP(9002313.02),321),U,6)=ABSP("X")
 Q
 ;Patient Location
307GET I '$D(SPECIAL(307)) S ABSP("X")=$G(ABSP("Patient","Location"))
 ELSE  X SPECIAL(307)
 Q
307FMT S:ABSP("X")'="" ABSP("X")="C7"_$$NFF^ABSPECFM($G(ABSP("X")),2)
 Q
307SET S $P(^ABSPC(ABSP(9002313.02),300),U,7)=ABSP("X")
 Q
 ;Employer ID
333GET I '$D(SPECIAL(333)) S ABSP("X")=$G(ABSP("Employer","ID"))
 ELSE  X SPECIAL(333)
 Q
333FMT S:ABSP("X")'="" ABSP("X")="CZ"_$$ANFF^ABSPECFM(ABSP("X"),15)
 Q
333SET S $P(^ABSPC(ABSP(9002313.02),330),U,3)=ABSP("X")
 Q
 ;Pregnancy Indicator
335GET I '$D(SPECIAL(335)) S ABSP("X")=$G(ABSP("Patient","Pregnant"))
 ELSE  X SPECIAL(335)
 Q
335FMT S:ABSP("X")'="" ABSP("X")="2C"_$$ANFF^ABSPECFM(ABSP("X"),1)
 Q
335SET S $P(^ABSPC(ABSP(9002313.02),330),U,5)=ABSP("X")
 Q
 ;Patient E-Mail Address
350GET I '$D(SPECIAL(350)) S ABSP("X")=$G(ABSP("Patient","EMAIL"))
 ELSE  X SPECIAL(350)
 Q
350FMT S:ABSP("X")'="" ABSP("X")="HN"_$$ANFF^ABSPECFM($G(ABSP("X")),80)
 Q
350SET S $P(^ABSPC(ABSP(9002313.02),350),U,1)=ABSP("X")
 Q
 ;Patient Residence
384GET I '$D(SPECIAL(384)) S ABSP("X")=$G(ABSP("Patient","Location"))
 ELSE  X SPECIAL(384)
 Q
384FMT S:ABSP("X")'="" ABSP("X")="4X"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
384SET S $P(^ABSPC(ABSP(9002313.02),380),U,4)=ABSP("X")
 Q
APPEND(FIELD) ;This is where the outgoing record is built field by field
 I FIELD["111" D
 . D @(FIELD_"GET")
 . D @(FIELD_"FMT")
 . S RECORD=RECORD_$C(30,28)_"AM"_ABSP("X")
 ELSE  D
 . I $G(ABSP(9002313.02,MEDN,FIELD,"I"))'="" S RECORD=RECORD_$C(28)_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 . ELSE  I $D(SPECIAL(FIELD)) D
 . . X SPECIAL(FIELD)
 . . D @(FIELD_"FMT")
 . . S RECORD=RECORD_$C(28)_ABSP("X")
 Q
