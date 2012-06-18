ORY1050C ;SLC/RJS,CLA - OCX PACKAGE RULE TRANSPORT ROUTINE (Delete after Install of OR*3*105) ;OCT 16,2001 at 15:39
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**105**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
S ;
 ;
 D DOT^ORY105ES
 ;
 ;
 K REMOTE,LOCAL,OPCODE,REF
 F LINE=1:1:500 S TEXT=$P($T(DATA+LINE),";",2,999) Q:TEXT  I $L(TEXT) D  Q:QUIT
 .S ^TMP("OCXRULE",$J,$O(^TMP("OCXRULE",$J,"A"),-1)+1)=TEXT
 ;
 ;
 ;
 Q
 ;
DATA ;
 ;
 ;;R^"860.2:","860.21:1",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:1",1,"E"
 ;;D^CONTRAST MEDIA ORDER
 ;;R^"860.2:","860.21:2",.01,"E"
 ;;D^ABNORMAL RENAL RESULTS
 ;;R^"860.2:","860.21:2",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:2",1,"E"
 ;;D^ABNORMAL RENAL RESULTS
 ;;R^"860.2:","860.21:3",.01,"E"
 ;;D^NO CREAT RESULTS W/IN X DAYS
 ;;R^"860.2:","860.21:3",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:3",1,"E"
 ;;D^NO CREAT RESULTS W/IN X DAYS
 ;;R^"860.2:","860.22:1",.01,"E"
 ;;D^1
 ;;R^"860.2:","860.22:1",1,"E"
 ;;D^CONTRAST MEDIA ORDER AND ABNORMAL RENAL RESULTS
 ;;R^"860.2:","860.22:1",2,"E"
 ;;D^BIOCHEM ABNORMALITY FOR CONTRAST MEDIA
 ;;R^"860.2:","860.22:1",6,"E"
 ;;D^Procedure uses non-barium contrast media - abnormal biochem result:  |ABNORMAL RENAL BIOCHEM RESULTS|
 ;;R^"860.2:","860.22:2",.01,"E"
 ;;D^2
 ;;R^"860.2:","860.22:2",1,"E"
 ;;D^CONTRAST MEDIA ORDER AND NO CREAT RESULTS W/IN X DAYS
 ;;R^"860.2:","860.22:2",2,"E"
 ;;D^BIOCHEM ABNORMALITY FOR CONTRAST MEDIA
 ;;R^"860.2:","860.22:2",6,"E"
 ;;D^Procedure uses non-barium contrast media - no creatinine results within |CM-CREAT DAYS| days
 ;;EOR^
 ;;KEY^860.2:^LAB THRESHOLD
 ;;R^"860.2:",.01,"E"
 ;;D^LAB THRESHOLD
 ;;R^"860.2:","860.21:1",.01,"E"
 ;;D^HL7 LAB RESULTS
 ;;R^"860.2:","860.21:1",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:1",1,"E"
 ;;D^HL7 FINAL LAB RESULT
 ;;R^"860.2:","860.21:2",.01,"E"
 ;;D^GREATER THAN THRESHOLD VALUE
 ;;R^"860.2:","860.21:2",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:2",1,"E"
 ;;D^GREATER THAN LAB THRESHOLD
 ;;R^"860.2:","860.21:3",.01,"E"
 ;;D^LESS THAN THRESHOLD VALUE
 ;;R^"860.2:","860.21:3",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:3",1,"E"
 ;;D^LESS THAN LAB THRESHOLD
 ;;R^"860.2:","860.22:1",.01,"E"
 ;;D^1
 ;;R^"860.2:","860.22:1",1,"E"
 ;;D^IF HL7 LAB RESULTS AND (GREATER THAN THRESHOLD VALUE OR LESS THAN THRESHOLD VALUE)
 ;;R^"860.2:","860.22:1",3,"E"
 ;;D^LAB THRESHOLD EXCEEDED
 ;;R^"860.2:","860.22:1",5,"E"
 ;;D^[|PT LOC|] Lab threshold exceeded - [|OI NAME|]
 ;;R^"860.2:","860.22:1",9,"E"
 ;;D^S OCXTMP=$$LABTHRSR(.OCXDUZ,|LAB TEST ID|,|LAB SPEC ID|,|LAB RESULT|,|PATIENT IEN|)
 ;;EOR^
 ;;KEY^860.2:^ORDER FLAGGED FOR CLARIFICATION
 ;;R^"860.2:",.01,"E"
 ;;D^ORDER FLAGGED FOR CLARIFICATION
 ;;R^"860.2:","860.21:2",.01,"E"
 ;;D^ORDER FLAGGED
 ;;R^"860.2:","860.21:2",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:2",1,"E"
 ;;D^ORDER FLAGGED
 ;;R^"860.2:","860.21:3",.01,"E"
 ;;D^ORDER UNFLAGGED
 ;;R^"860.2:","860.21:3",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:3",1,"E"
 ;;D^ORDER UNFLAGGED
 ;;R^"860.2:","860.22:1",.01,"E"
 ;;D^1
 ;;R^"860.2:","860.22:1",1,"E"
 ;;D^ORDER FLAGGED
 ;;R^"860.2:","860.22:1",3,"E"
 ;;D^FLAG ORDER FOR CLARIFICATION
 ;;R^"860.2:","860.22:1",5,"E"
 ;;D^Order(s) needing clarification: Flagged |CURRENT DATE/TIME|.
 ;;R^"860.2:","860.22:2",.01,"E"
 ;;D^2
 ;;R^"860.2:","860.22:2",1,"E"
 ;;D^ORDER UNFLAGGED
 ;;R^"860.2:","860.22:2",9,"E"
 ;;D^D UNFLAG^ORB3FUP1(|PATIENT IEN|)
 ;;EOR^
 ;;EOF^OCXS(860.2)^1
 ;1;
 ;
