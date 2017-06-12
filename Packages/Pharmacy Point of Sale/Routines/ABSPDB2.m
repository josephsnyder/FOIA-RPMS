ABSPDB2 ; IHS/OIT/CASSevern/Pieran ran 1/19/2011 - Handling of NCPDP Reversal "B2" Claims for D.0
 ;;1.0;PHARMACY POINT OF SALE;**42,43**;JUN 21, 2001;Build 15
 ;
 ;
 ;
 ;			SO FAR THIS IS JUST A COPY OF ABSPB1 "BILLING" TRANSACTION....MOST OF BELOW CODE WILL BE REPLACED!!!
 ; This routine will replace the ABSPOSCF for D.0, so that we no
 ; longer need to use the formats file.
 ; This will go through and get the data for each and every segment and field
 ; format it and place it in the CLAIM file ^ABSPC(CLAIMIEN
 ; The ABSP() Array is already set up in: GETINFO^ABSPOSCC before we get here.
 ;INPUT = ACTION
 ;		  "CLAIMHD" = Set up only the claim header for creating ^ABSPC entry
 ;		  "CLAIMRST" = Set up Rest of Claim info and fill in ^ABSPC entry
 ;		  "OUTHD"	= Create the actual Output HEADER Record
 ;		  "OUTRST"  = Create the actual Output Rest of the Record.
EN(ACTION,MEDN,IEN) ;EP
 N INSARRAY,DO,SPECIAL,SUPPRESS
 S RECORD=$G(RECORD)
 I ACTION["CLAIM" D
 . S DO=ABSP("Insurer","IEN")_","
 ELSE  D
 . S DO=IEN("9002313.4")_","
 D GETS^DIQ(9002313.4,DO,"100.15;100.16;100.17;200.01;210*;220*","","INSARRAY")
 ;Only process D.0 insurances
 Q:$G(INSARRAY(9002313.4,DO,100.15))'["D"
 I $D(INSARRAY(9002313.42)) D SETSPEC
 I $D(INSARRAY(9002313.46)) D SETSUPR
 D CHECKOVER^ABSPDB1F(D0,.SPECIAL) ;Check for Manual Over-Rides for this Claim
 ;I $D(SPECIAL) D ADDSEG^ABSPB1F(.SPECIAL,.ADDSEG)		;Figure out based on Special fields which segments we need
 I (ACTION="CLAIMHD")!(ACTION="OUTHD") D
 . D HEADER ;Every time
 . D INSURANCE ;Every time;IHS/OIT/CASSevern/Pieran/RCS; Patch 43 - Add back in
 I (ACTION="CLAIMRST")!(ACTION="OUTRST") D
 . I +$G(IEN(9002313.01))=0 S IEN(9002313.01)=1
 . D CLAIM^ABSPDB2A ;Every time
 . ;D PRICING^ABSPDB2A		;Pretty much every time
 . ;I $D(ADDSEG("DURRPPS")) D DURRPPS^ABSPDB2A			;Very common...but for over-rides only
 Q
 ;Go through field by field and construct the Header
 ;The header is the one segment that is completely unchanged between version 5.1 and D.0
 ;The only difference is field 102 "VERSION" now says D0 instead of 51
HEADER ;HEADER Segment
 N FIELD
 F FIELD=101,102,103,104,109,202,201,401,110 D
 . Q:$D(SUPPRESS(FIELD))
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
 ;VERSION (5.1, D.0)
102GET S ABSP("X")=$TR($G(INSARRAY(9002313.4,DO,100.15)),".","")
 Q
102FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
102SET S $P(^ABSPC(ABSP(9002313.02),100),U,2)=ABSP("X")
 Q
102APD S RECORD=RECORD_$G(ABSP(9002313.02,MEDN,FIELD,"I"))
 Q
 ;TRANSACTION CODE "B2" for Reversal
103GET S ABSP("X")="B2"	
 Q
103FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
103SET S $P(^ABSPC(ABSP(9002313.02),100),U,3)=ABSP("X")
 Q
103APD S RECORD=RECORD_"B2"
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
109GET I '$D(SPECIAL(109)) S ABSP("X")=1 ;IHS/OIT/CASSevern/Pieran/RCS; Patch 43 - Force to '1'
 ELSE  X SPECIAL(109)
 Q
109FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),1)
 Q
109SET S $P(^ABSPC(ABSP(9002313.02),100),U,9)=ABSP("X")
 Q
109APD S RECORD=RECORD_1 ;IHS/OIT/CASSevern/Pieran/RCS; Patch 43 - Force to '1'
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
 ELSE  X SPECIAL(401)
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
 F FIELD="111",302,301,359 D
 . Q:$D(SUPPRESS(FIELD))
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
302FMT S:ABSP("X")'="" ABSP("X")="C2"_$$ANFF^ABSPECFM($G(ABSP("X")),20)
 Q
302SET S $P(^ABSPC(ABSP(9002313.02),300),U,2)=ABSP("X")
 Q
 ;Group ID
301GET I '$D(SPECIAL(301)) S ABSP("X")=$G(ABSP("Insurer","Group #"))
 ELSE  X SPECIAL(301)
 Q
301FMT S:ABSP("X")'="" ABSP("X")="C1"_$$ANFF^ABSPECFM(ABSP("X"),15)
 Q
301SET S $P(^ABSPC(ABSP(9002313.02),300),U,1)=ABSP("X")
 Q
 ;Medigap ID
359GET I '$D(SPECIAL(359)) S ABSP("X")=""
 ELSE  X SPECIAL(359)
 Q
359FMT S:ABSP("X")'="" ABSP("X")="2A"_$$ANFF^ABSPECFM($G(ABSP("X")),20)
 Q
359SET ;Not Yet Implemented **
 Q
SETSPEC ;SET UP SPECIAL CODE ARRAY HERE.
 N D1,NCODE,MUMPS
 S D1=""
 F  S D1=$O(INSARRAY(9002313.42,D1)) Q:D1=""  D
 . S NCODE=$G(INSARRAY(9002313.42,D1,.01))
 . S MUMPS=$G(INSARRAY(9002313.42,D1,.02))
 . I MUMPS'["ABSP(""X"")" S MUMPS="S ABSP(""X"")="""_MUMPS_""""
 . S SPECIAL(NCODE)=MUMPS
 Q
SETSUPR ;SET UP SUPPRESS CODE ARRAY HERE.
 N D1,SCODE
 S D1=""
 F  S D1=$O(INSARRAY(9002313.46,D1)) Q:D1=""  D
 . S SCODE=$G(INSARRAY(9002313.46,D1,.01))
 . S SUPPRESS(SCODE)=""
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
