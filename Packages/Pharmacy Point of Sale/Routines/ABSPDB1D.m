ABSPDB1D ; IHS/OIT/CASSevern/Pieran ran 1/19/2011 - Handling of outgoing NCPDP Billing "B1" Claims for D.0 (DURR,CLINICAL,COMPOUND, and COUPON segments)
 ;;1.0;PHARMACY POINT OF SALE;**42**;JUN 21, 2001
DURRPPS ;EP CALLED FROM ABSPDB1 to set up DURR/PPS SEGMENT
 Q:$D(SUPRESSG("DURR/PPS"))
 N RECCNT,DUR
 I ACTION["CLAIM" D
 . Q:'$D(ABSP("RX",MEDN,"DUR"))
 . S (RECCNT,DUR)=0
 . F  S DUR=$O(ABSP("RX",MEDN,"DUR",DUR)) Q:DUR=""  D
 	. . S RECCNT=RECCNT+1
 . . N FIELD
 . . S RECORD=$G(RECORD)
 . . F FIELD="111",473,439,440,441,474,475,476 D
 . . . Q:$D(SUPRESF(FIELD))
 . . . I (ACTION["CLAIM"),(FIELD'=111) D
 . . . . D @(FIELD_"GET")
 . . . . D @(FIELD_"FMT")
 . . . . D @(FIELD_"SET")
 . . . ELSE  D APPEND(FIELD)
 . S ^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),473.01,0)="^9002313.1001A^"_RECCNT_"^"_RECCNT
 ELSE  D
 . D DURVALUE^ABSPECA1
 . Q:'$D(ABSP(9002313.1001))
 . D APPEND(111) ;Only field on segment that is not repeating
 . S DUR=0
 . F  S DUR=$O(ABSP(9002313.1001,DUR)) Q:DUR=""  D
 . . F FIELD=.01,439,440,441,474,475,476  D
 . . . Q:$D(SUPRESF(FIELD))
 . . . S ABSP("X")=$G(ABSP(9002313.1001,DUR,FIELD,"I"))
 . . . S:ABSP("X")'="" RECORD=RECORD_$C(28)_ABSP("X")
 Q
 ;Segment identifier
111GET S ABSP("X")="08"
 Q
111FMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
111SET ;This isn't used for the 111 Field
 Q
 ;DUR/PPS Code Counter
473GET I '$D(SPECIAL(473,DUR)) S ABSP("X")=$G(ABSP("RX",MEDN,"DUR",DUR,473))
 ELSE  X SPECIAL(473,DUR)
 Q
473FMT S:ABSP("X")'="" ABSP("X")="7E"_$$ANFF^ABSPECFM($G(ABSP("X")),1)
 Q
473SET D FLD473^ABSPOSSG
 Q
 ;Reason for Service Code
439GET I '$D(SPECIAL(439,DUR)) S ABSP("X")=$G(ABSP("RX",MEDN,"DUR",DUR,439))
 ELSE  X SPECIAL(439,DUR)
 Q
439FMT S:ABSP("X")'="" ABSP("X")="E4"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
439SET D FLD439^ABSPOSSG
 Q
 ;Professional Service Code
440GET I '$D(SPECIAL(440,DUR)) S ABSP("X")=$G(ABSP("RX",MEDN,"DUR",DUR,440))
 ELSE  X SPECIAL(440,DUR)
 Q
440FMT S:ABSP("X")'="" ABSP("X")="E5"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
440SET D FLD440^ABSPOSSG
 Q
 ;Result of Service Coce
441GET I '$D(SPECIAL(441,DUR)) S ABSP("X")=$G(ABSP("RX",MEDN,"DUR",DUR,441))
 ELSE  X SPECIAL(441,DUR)
 Q
441FMT S:ABSP("X")'="" ABSP("X")="E6"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
441SET D FLD441^ABSPOSSG
 Q
 ;DUR/PPS Level of Effort
474GET I '$D(SPECIAL(474,DUR)) S ABSP("X")=$G(ABSP("RX",MEDN,"DUR",DUR,474))
 ELSE  X SPECIAL(474,DUR)
 Q
474FMT S:ABSP("X")'="" ABSP("X")="8E"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
474SET D FLD474^ABSPOSSG
 Q
 ;DUR Co-Agent ID Qualifier
475GET I '$D(SPECIAL(475,DUR)) S ABSP("X")=$G(ABSP("RX",MEDN,"DUR",DUR,475))
 ELSE  X SPECIAL(475,DUR)
 Q
475FMT S:ABSP("X")'="" ABSP("X")="J9"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
475SET D FLD475^ABSPOSSG
 Q
 ;DUR CO-Agent ID
476GET I '$D(SPECIAL(476,DUR)) S ABSP("X")=$G(ABSP("RX",MEDN,"DUR",DUR,476))
 ELSE  X SPECIAL(476,DUR)
 Q
476FMT S:ABSP("X")'="" ABSP("X")="H6"_$$ANFF^ABSPECFM($G(ABSP("X")),19)
 Q
476SET D FLD476^ABSPOSSG
 Q
COUPON ;EP CALLED FROM ABSPDB1 to set up COUPON SEGMENT
 Q:$D(SUPRESSG("Coupon"))
 N FIELD
 S RECORD=$G(RECORD)
 F FIELD="111A",485,486,487 D
 . Q:$D(SUPRESF(FIELD))
 . I (ACTION["CLAIM"),(FIELD'=111) D
 . . D @(FIELD_"GET")
 . . D @(FIELD_"FMT")
 . . D @(FIELD_"SET")
 . ELSE  D APPEND(FIELD)
 Q
 ;Segment identifier
111AGET S ABSP("X")="09"
 Q
111AFMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
111ASET ;This isn't used for the 111 Field
 Q
 ;Coupon Type
485GET I '$D(SPECIAL(485)) S ABSP("X")=""
 ELSE  X SPECIAL(485)
 Q
485FMT S:ABSP("X")'="" ABSP("X")="KE"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
485SET ;Not Yet Implemented
 Q
 ;Coupon Number
486GET I '$D(SPECIAL(486)) S ABSP("X")=""
 ELSE  X SPECIAL(486)
 Q
486FMT S:ABSP("X")'="" ABSP("X")="ME"_$$ANFF^ABSPECFM($G(ABSP("X")),15)
 Q
486SET ;Not Yet Implemented
 Q
 ;Coupon Value Amount
487GET I '$D(SPECIAL(487)) S ABSP("X")=""
 ELSE  X SPECIAL(487)
 Q
487FMT S:ABSP("X")'="" ABSP("X")="NE"_$$ANFF^ABSPECFM($G(ABSP("X")),6)
 Q
487SET ;Not Yet Implemented
 Q
COMPOUND ;EP CALLED FROM ABSPDB1 to set up COMPOUND SEGMENT
 Q:$D(SUPRESSG("Compound"))
 N FIELD
 S RECORD=$G(RECORD)
 F FIELD="111B",450,451,447,488,489,448,449,490,362,363 D
 . Q:$D(SUPRESF(FIELD))
 . I (ACTION["CLAIM"),(FIELD'=111) D
 . . D @(FIELD_"GET")
 . . D @(FIELD_"FMT")
 . . D @(FIELD_"SET")
 . ELSE  D APPEND(FIELD)
 Q
 ;Segment identifier
111BGET S ABSP("X")=10
 Q
111BFMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
111BSET ;This isn't used for the 111 Field
 Q
 ;Compound Dosage Form Description Code
450GET I '$D(SPECIAL(450)) S ABSP("X")=$G(ABSP("Compound",ABSP(9002313.0201),"Dosage Form Desc"))
 ELSE  X SPECIAL(450)
 Q
450FMT S:ABSP("X")'="" ABSP("X")="EF"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
450SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),440),U,10)=ABSP("X")
 Q
 ;Compound Dispensing Unit Form Indicator
451GET I '$D(SPECIAL(451)) S ABSP("X")=$G(ABSP("Compound",ABSP(9002313.0201),"Disp Unit Form"))
 ELSE  X SPECIAL(451)
 Q
451FMT S:ABSP("X")'="" ABSP("X")="EG"_$$NFF^ABSPECFM(ABSP("X"),1)
 Q
451SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),450),U,1)=ABSP("X")
 Q
 ;Compound Ingredient Compound Count
447GET I '$D(SPECIAL(447)) S ABSP("X")=$G(ABSP("Compound",ABSP(9002313.0201),"Ingred Component Cnt"))
 ELSE  X SPECIAL(447)
 Q
447FMT S:ABSP("X")'="" ABSP("X")="EC"_$$NFF^ABSPECFM(ABSP("X"),2)
 Q
447SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),440),U,7)=ABSP("X")
 Q
 ;Compound Product ID Qualifier
488GET I '$D(SPECIAL(488)) S ABSP("X")=$G(ABSP("Compound","Product ID Qualifier"))
 ELSE  X SPECIAL(488)
 Q
488FMT S:ABSP("X")'="" ABSP("X")="RE"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
488SET ;Not Yet Implemented
 Q
 ;Compound Product ID
489GET I '$D(SPECIAL(489)) S ABSP("X")=$G(ABSP("Compound","Product ID"))
 ELSE  X SPECIAL(489)
 Q
489FMT S:ABSP("X")'="" ABSP("X")="TE"_$$ANFF^ABSPECFM(ABSP("X"),19)
 Q
489SET ;Not Yet Implemented
 Q
 ;Compound Ingredient Quantity
448GET I '$D(SPECIAL(448)) S ABSP("X")=$G(ABSP("Coupound","Ingredient Quantity"))
 ELSE  X SPECIAL(448)
 Q
448FMT S:ABSP("X")'="" ABSP("X")="ED"_$$DFF^ABSPECFM(ABSP("X"),10) ;Spec Says Length is 7?
 Q
448SET ;Not Yet Implemented
 Q
 ;Compound Ingredient Drug Cost
449GET I '$D(SPECIAL(449)) S ABSP("X")=$G(ABSP("Compound","Ingredient Drug Cost"))
 ELSE  X SPECIAL(449)
 Q
449FMT S:ABSP("X")'="" ABSP("X")="EE"_$$DFF^ABSPEFCM(ABSP("X"),8) ;Spec says length is 6?
 Q
449SET ;Not Yet Implemented
 Q
 ;Compound Ingredient Basis of Cost Determination
490GET I '$D(SPECIAL(490)) S ABSP("X")=$G(ABSP("Compound","Ingred Basis of Cost"))
 ELSE  X SPECIAL(490)
 Q
490FMT S:ABSP("X")'="" ABSP("X")="UE"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
490SET ;Not Yet Implemented
 Q
 ;Compound Ingredient Modifier Code Count
362GET I '$D(SPECIAL(362)) S ABSP("X")=""
 ELSE  X SPECIAL(362)
 Q
362FMT S:ABSP("X")'="" ABSP("X")="2G"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
362SET ;Not Yet Implemented
 Q
 ;Compound Ingredient Modifier Code
363GET I '$D(SPECIAL(363)) S ABSP("X")=""
 ELSE  X SPECIAL(363)
 Q
363FMT S:ABSP("X")'="" ABSP("X")="2H"_$$ANFF^ABSPECFM($G(ABSP("X")),2)
 Q
363SET ;Not Yet Implemented
 Q
CLINICAL ;EP CALLED FROM ABSPDB1 to set up CLINICAL SEGMENT
 Q:$D(SUPRESSG("Clinical"))
 N RECCNT,DIAG
 I ACTION["CLAIM" D
 . Q:'$D(ABSP("RX",MEDN,"DIAG"))
 . ;Field 491 is only field on this segment that is not repeating do it first
 . D 491GET
 . D 491FMT
 . D 491SET
 . S (RECCNT,DIAG)=0
 	. F  S DIAG=$O(ABSP("RX",MEDN,"DIAG",DIAG)) Q:'+DIAG  D
 	. . S RECCNT=RECCNT+1
 . . N FIELD
 . . F FIELD="111C",492,424,493,494,495,496,497,499 D
 . . . Q:$D(SUPRESF(FIELD))
 . . . I (ACTION["CLAIM"),(FIELD'=111) D
 . . . . D @(FIELD_"GET")
 . . . . D @(FIELD_"FMT")
 . . . . D @(FIELD_"SET")
 . S ^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),491.01,0)="^9002313.0701A^"_RECCNT_"^"_RECCNT
 ELSE  D
 . D DIAGVAL^ABSPECA1
 . Q:'$D(ABSP(9002313.0701))
 . D APPEND("111C") ;Only two non repeating fields (111, 491)
 . S ABSP("X")=$G(ABSP(9002313.0701,0,491,"I"))
 . S RECCNT=+$E(ABSP("X"),3,4)
 . S RECORD=RECORD_$C(28)_ABSP("X")
 . F DIAG=1:1:RECCNT D
 . . F FIELD=492,424,493,494,495,496,497,499 D
 . . . Q:$D(SUPRESF(FIELD))
 . . . S ABSP("X")=$G(ABSP(9002313.0701,DIAG,FIELD,"I"))
 . . . S:ABSP("X")'="" RECORD=RECORD_$C(28)_ABSP("X")
 Q
 ;Segment identifier
111CGET S ABSP("X")=13
 Q
111CFMT S ABSP("X")=$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
111CSET ;This isn't used for the 111 Field
 Q
 ;Diagnosis Code Count
491GET I '$D(SPECIAL(491)) S ABSP("X")=$G(ABSP("RX",MEDN,"DIAG",0,491))
 ELSE  X SPECIAL(491)
 Q
491FMT S:ABSP("X")'="" ABSP("X")="VE"_$$NFF^ABSPECFM(ABSP("X"),1)
 Q
491SET D FLD491^ABSPOSSH
 Q
 ;Diagnosis Code Qualifer
492GET I '$D(SPECIAL(492,DIAG)) S ABSP("X")=$G(ABSP("RX",MEDN,"DIAG",DIAG,492))
 ELSE  X SPECIAL(492,DIAG)
 Q
492FMT S:ABSP("X")'="" ABSP("X")="WE"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
492SET D FLD492^ABSPOSSH
 Q
 ;Diagnosis Code
424GET I '$D(SPECIAL(424,DIAG)) S ABSP("X")=$G(ABSP("RX",MEDN,"DIAG",DIAG,424))
 ELSE  X SPECIAL(424,DIAG)
 Q
424FMT I ABSP("X")'="",$E(ABSP("X"),$L(ABSP("X")))="." S ABSP("X")=$E(ABSP("X"),1,$L(ABSP("X")-1))
 S:ABSP("X")'="" ABSP("X")="DO"_$$ANFF^ABSPECFM($G(ABSP("X")),15)
 Q
424SET D FLD424^ABSPOSSH
 Q
 ;Clinical Information Counter
493GET I '$D(SPECIAL(493,DIAG)) S ABSP("X")=$G(ABSP("Clinical",ABSP(9002313.0201),"Information Cntr"))
 ELSE  X SPECIAL(493,DIAG)
 Q
493FMT S:ABSP("X")'="" ABSP("X")="XE"_$$NFF^ABSPECFM(ABSP("X"),2)
 Q
493SET S $P(^ABSPC(ABSP(9002313.02),400,ABSP(9002313.0201),490),U,3)=ABSP("X")
 Q
 ;Measurement Date
494GET I '$D(SPECIAL(494,DIAG)) D
 . S ABSP("X")=$G(ABSP("RX",MEDN,"DIAG",DIAG,494))
 . S:ABSP("X")="" ABSP("X")=$G(ABSP("Clinical","Measurement Date"))
 ELSE  X SPECIAL(494,DIAG)
 Q
494FMT S:ABSP("X")'="" ABSP("X")="ZE"_$$NFF^ABSPECFM(ABSP("X"),8)
 Q
494SET ;Not Yet Implemented
 Q
 ;Measurement Time
495GET I '$D(SPECIAL(495,DIAG)) D
 . S ABSP("X")=$G(ABSP("RX",MEDN,"DIAG",DIAG,495))
 . S:ABSP("X")="" ABSP("X")=$G(ABSP("Clinical","Measurement Time"))
 ELSE  X SPECIAL(495,DIAG)
 Q
495FMT S:ABSP("X")'="" ABSP("X")="H1"_$$NFF^ABSPECFM(ABSP("X"),4)
 Q
495SET ;Not Yet Implemented
 Q
 ;Measurement Dimension
496GET I '$D(SPECIAL(496,DIAG)) D
 . S ABSP("X")=$G(ABSP("RX",MEDN,"DIAG",DIAG,496))
 . S:ABSP("X")="" ABSP("X")=$G(ABSP("Clinical","Measurement Dimension"))
 ELSE  X SPECIAL(496,DIAG)
 Q
496FMT S:ABSP("X")'="" ABSP("X")="H2"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
496SET ;Not Yet Implemented
 Q
 ;Measurement Unit
497GET I '$D(SPECIAL(497,DIAG)) D
 . S ABSP("X")=$G(ABSP("RX",MEDN,"DIAG",DIAG,497))
 . S:ABSP("X")="" ABSP("X")=$G(ABSP("Clinical","Measurement Unit"))
 ELSE  X SPECIAL(497,DIAG)
 Q
497FMT S:ABSP("X")'="" ABSP("X")="H3"_$$ANFF^ABSPECFM(ABSP("X"),2)
 Q
497SET ;Not Yet Implemented
 Q
 ;Measurement Value
499GET I '$D(SPECIAL(499,DIAG)) D
 . S ABSP("X")=$G(ABSP("RX",MEDN,"DIAG",DIAG,499))
 . S:ABSP("X")="" ABSP("X")=$G(ABSP("Clinical","Measurement Value"))
 ELSE  X SPECIAL(499,DIAG)
 Q
499FMT S:ABSP("X")'="" ABSP("X")="H4"_$$ANFF^ABSPECFM(ABSP("X"),15)
 Q
499SET ;Not Yet Implemented
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
