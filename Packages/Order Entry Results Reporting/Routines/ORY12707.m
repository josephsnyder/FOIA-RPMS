ORY12707 ;SLC/RJS,CLA - OCX PACKAGE RULE TRANSPORT ROUTINE (Delete after Install of OR*3*127) ;SEP 17,2002 at 13:48
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**127**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
S ;
 ;
 D DOT^ORY127ES
 ;
 ;
 K REMOTE,LOCAL,OPCODE,REF
 F LINE=1:1:500 S TEXT=$P($T(DATA+LINE),";",2,999) Q:TEXT  I $L(TEXT) D  Q:QUIT
 .S ^TMP("OCXRULE",$J,$O(^TMP("OCXRULE",$J,"A"),-1)+1)=TEXT
 ;
 G ^ORY12708
 ;
 Q
 ;
DATA ;
 ;
 ;;D^STRING CONTAINS ONE OF A LIST OF VALUES
 ;;R^"860.8:",.02,"E"
 ;;D^CLIST
 ;;R^"860.8:",100,1
 ;;D^  ;CLIST(DATA,LIST) ;   DOES THE DATA FIELD CONTAIN AN ELEMENT IN THE LIST
 ;;R^"860.8:",100,2
 ;;D^  ; ;
 ;;R^"860.8:",100,3
 ;;D^T+; W:$G(OCXTRACE) !!,"$$CLIST(",DATA,",""",LIST,""")"
 ;;R^"860.8:",100,4
 ;;D^  ; N PC F PC=1:1:$L(LIST,","),0 I PC,$L($P(LIST,",",PC)),(DATA[$P(LIST,",",PC)) Q
 ;;R^"860.8:",100,5
 ;;D^  ; Q ''PC
 ;;EOR^
 ;;EOF^OCXS(860.8)^1
 ;;SOF^860.6  ORDER CHECK DATA CONTEXT
 ;;KEY^860.6:^CPRS ORDER PRESCAN
 ;;R^"860.6:",.01,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.6:",.02,"E"
 ;;D^OEPS
 ;;R^"860.6:",1,"E"
 ;;D^DATA DRIVEN
 ;;EOR^
 ;;KEY^860.6:^CPRS ORDER PROTOCOL
 ;;R^"860.6:",.01,"E"
 ;;D^CPRS ORDER PROTOCOL
 ;;R^"860.6:",.02,"E"
 ;;D^OERR
 ;;R^"860.6:",1,"E"
 ;;D^DATA DRIVEN
 ;;EOR^
 ;;KEY^860.6:^DATABASE LOOKUP
 ;;R^"860.6:",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.6:",.02,"E"
 ;;D^DL
 ;;R^"860.6:",1,"E"
 ;;D^PACKAGE LOOKUP
 ;;EOR^
 ;;KEY^860.6:^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.6:",.01,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.6:",.02,"E"
 ;;D^HL7
 ;;R^"860.6:",1,"E"
 ;;D^DATA DRIVEN
 ;;EOR^
 ;;EOF^OCXS(860.6)^1
 ;;SOF^860.5  ORDER CHECK DATA SOURCE
 ;;KEY^860.5:^DATABASE LOOKUP
 ;;R^"860.5:",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.5:",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;EOR^
 ;;KEY^860.5:^HL7 COMMON ORDER SEGMENT
 ;;R^"860.5:",.01,"E"
 ;;D^HL7 COMMON ORDER SEGMENT
 ;;R^"860.5:",.02,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;EOR^
 ;;KEY^860.5:^HL7 PATIENT ID SEGMENT
 ;;R^"860.5:",.01,"E"
 ;;D^HL7 PATIENT ID SEGMENT
 ;;R^"860.5:",.02,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;EOR^
 ;;KEY^860.5:^OERR ORDER EVENT FLAG PROTOCOL
 ;;R^"860.5:",.01,"E"
 ;;D^OERR ORDER EVENT FLAG PROTOCOL
 ;;R^"860.5:",.02,"E"
 ;;D^CPRS ORDER PROTOCOL
 ;;EOR^
 ;;KEY^860.5:^ORDER ENTRY ORDER PRESCAN
 ;;R^"860.5:",.01,"E"
 ;;D^ORDER ENTRY ORDER PRESCAN
 ;;R^"860.5:",.02,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;EOR^
 ;;EOF^OCXS(860.5)^1
 ;;SOF^860.4  ORDER CHECK DATA FIELD
 ;;KEY^860.4:^DUPLICATE OPIOID MEDICATIONS FLAG
 ;;R^"860.4:",.01,"E"
 ;;D^DUPLICATE OPIOID MEDICATIONS FLAG
 ;;R^"860.4:",1,"E"
 ;;D^DUP OPIOIDS FLAG
 ;;R^"860.4:",101,"E"
 ;;D^BOOLEAN
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.DUP OPIOID MEDS
 ;;EOR^
 ;;KEY^860.4:^DUPLICATE OPIOID MEDICATIONS TEXT
 ;;R^"860.4:",.01,"E"
 ;;D^DUPLICATE OPIOID MEDICATIONS TEXT
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.DUP OPIOID MEDS TEXT
 ;;EOR^
 ;;KEY^860.4:^FILLER
 ;;R^"860.4:",.01,"E"
 ;;D^FILLER
 ;;R^"860.4:",1,"E"
 ;;D^FILL
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.01,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.02,"E"
 ;;D^ORDER ENTRY ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",1,"E"
 ;;D^PATIENT.OPS_FILLER
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.01,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.02,"E"
 ;;D^HL7 COMMON ORDER SEGMENT
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",1,"E"
 ;;D^PATIENT.HL7_FILLER
 ;;EOR^
 ;;KEY^860.4:^OI NATIONAL ID
 ;;R^"860.4:",.01,"E"
 ;;D^OI NATIONAL ID
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.01,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.02,"E"
 ;;D^ORDER ENTRY ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",1,"E"
 ;;D^PATIENT.OPS_NAT_ID
 ;;EOR^
 ;;KEY^860.4:^ORDER MODE
 ;;R^"860.4:",.01,"E"
 ;;D^ORDER MODE
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.01,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",.02,"E"
 ;;D^ORDER ENTRY ORDER PRESCAN
 ;;R^"860.4:","860.41:CPRS ORDER PRESCAN^860.6",1,"E"
 ;;D^PATIENT.OPS_ORD_MODE
 ;;EOR^
 ;;KEY^860.4:^PATIENT IEN
 ;;R^"860.4:",.01,"E"
 ;;D^PATIENT IEN
 ;;R^"860.4:",101,"E"
 ;;D^NUMERIC
 ;;R^"860.4:","860.41:CPRS ORDER PROTOCOL^860.6",.01,"E"
 ;;D^CPRS ORDER PROTOCOL
 ;;R^"860.4:","860.41:CPRS ORDER PROTOCOL^860.6",.02,"E"
 ;;D^OERR ORDER EVENT FLAG PROTOCOL
 ;;R^"860.4:","860.41:CPRS ORDER PROTOCOL^860.6",1,"E"
 ;;D^PATIENT.OERR_ORDER_PATIENT
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.IEN
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.01,"E"
 ;;D^GENERIC HL7 MESSAGE ARRAY
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",.02,"E"
 ;;D^HL7 PATIENT ID SEGMENT
 ;;R^"860.4:","860.41:GENERIC HL7 MESSAGE ARRAY^860.6",1,"E"
 ;;D^PATIENT.HL7_PATIENT_ID
 ;;EOR^
 ;;KEY^860.4:^VA DRUG CLASS
 ;;R^"860.4:",.01,"E"
 ;;D^VA DRUG CLASS
 ;;R^"860.4:",101,"E"
 ;;D^FREE TEXT
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.01,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.4:","860.41:DATABASE LOOKUP^860.6",1,"E"
 ;;D^PATIENT.DRUG_CLASS
 ;;EOR^
 ;;EOF^OCXS(860.4)^1
 ;;SOF^860.3  ORDER CHECK ELEMENT
 ;;KEY^860.3:^DUP OPIOID MEDS
 ;;R^"860.3:",.01,"E"
 ;;D^DUP OPIOID MEDS
 ;;R^"860.3:",.02,"E"
 ;;D^DATABASE LOOKUP
 ;;R^"860.3:","860.31:1",.01,"E"
 ;;D^1
 ;;R^"860.3:","860.31:1",1,"E"
 ;;D^DUPLICATE OPIOID MEDICATIONS FLAG
 ;;R^"860.3:","860.31:1",2,"E"
 ;;D^LOGICAL TRUE
 ;;EOR^
 ;;KEY^860.3:^OPIOID MED ORDER
 ;;R^"860.3:",.01,"E"
 ;;D^OPIOID MED ORDER
 ;;R^"860.3:",.02,"E"
 ;;D^CPRS ORDER PRESCAN
 ;;R^"860.3:","860.31:2",.01,"E"
 ;;D^2
 ;;R^"860.3:","860.31:2",1,"E"
 ;;D^ORDER MODE
 ;;R^"860.3:","860.31:2",2,"E"
 ;;D^EQ FREE TEXT
 ;;R^"860.3:","860.31:2",3,"E"
 ;;D^SELECT
 ;;R^"860.3:","860.31:3",.01,"E"
 ;;D^3
 ;;R^"860.3:","860.31:3",1,"E"
 ;;D^FILLER
 ;;R^"860.3:","860.31:3",2,"E"
 ;;D^STARTS WITH
 ;;R^"860.3:","860.31:3",3,"E"
 ;;D^PS
 ;;R^"860.3:","860.31:4",.01,"E"
 ;;D^4
 ;;R^"860.3:","860.31:4",1,"E"
 ;;D^VA DRUG CLASS
 ;;R^"860.3:","860.31:4",2,"E"
 ;;D^EQUALS ELEMENT IN SET
 ;;R^"860.3:","860.31:4",3,"E"
 ;;D^OPIOID ANALGESICS,OPIOID ANTAGONIST ANALGESICS
 ;;EOR^
 ;;EOF^OCXS(860.3)^1
 ;;SOF^860.2  ORDER CHECK RULE
 ;;KEY^860.2:^OPIOID MEDICATIONS
 ;;R^"860.2:",.01,"E"
 ;;D^OPIOID MEDICATIONS
 ;;R^"860.2:","860.21:1",.01,"E"
 ;;D^OPIOID MED ORDER
 ;;R^"860.2:","860.21:1",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:1",1,"E"
 ;;D^OPIOID MED ORDER
 ;;R^"860.2:","860.21:2",.01,"E"
 ;;D^DUP OPIOID MEDS
 ;;R^"860.2:","860.21:2",.02,"E"
 ;;D^SIMPLE DEFINITION
 ;;R^"860.2:","860.21:2",1,"E"
 ;;D^DUP OPIOID MEDS
 ;;R^"860.2:","860.22:1",.01,"E"
 ;;D^1
 ;;R^"860.2:","860.22:1",1,"E"
 ;;D^OPIOID MED ORDER AND DUP OPIOID MEDS
 ;;R^"860.2:","860.22:1",2,"E"
 ;;D^DUPLICATE OPIOID MEDICATIONS
 ;1;
 ;
