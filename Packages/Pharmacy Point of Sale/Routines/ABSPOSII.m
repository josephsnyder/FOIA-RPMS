ABSPOSII ; IHS/SD/RLT - DIAGNOSIS CODES form ;   [ 06/21/2007  9:30 AM ]
 ;;1.0;PHARMACY POINT OF SALE;**23,45**;JUN 21, 2007;Build 15
 ;
 Q
PREINIT ;EP - check for existing record
 ; This is the pre-init routine tied to ScreenMan form ABSP INPUT 1
 ; page 25 DIAGNOSIS CODE 5.1 ENTRY.
 ; This is used during the creation of the "NEW" claim from
 ; within POS (called from the "USER" screen) to capture
 ; DIAGNOSIS CODE values.
 ;
 ;OIT/CAS/RCS 06072012 Patch 45 - Use Diagnosis lookup for ICD9/ICD10 Implementation
 ;
 N RXI,RXR,DIAG,FDA,STRING
 ;
 ; get the prescription information
 S RXI=$$GET^DDSVAL(DIE,.DA,1.01)    ;RX IEN
 S RXR=$$GET^DDSVAL(DIE,.DA,1.02)    ;RX Refill IEN
 S DIAG=""
 ;
 Q:$G(RXI)=""  ;no pres - get out  
 ;
 S DIAG=$$GETDIAG^ABSPOSO(RXI,RXR)   ;get DIAGNOSIS CODE pointer
 ;
 I $G(DIAG)'="" D  ;DIANOSIS CODE exists
 . S STRING(1)="Will add diagnosis code from IEN RX  "_RXI  ;msg on scrn
 . S:+RXR STRING(1)=STRING(1)_"   IEN Refill  "_RXR
 . D HLP^DDSUTL(.STRING)      ;displays what is happening
 . ;
 I $G(DIAG)="" D  ;diagnosis code doesn't exist yet
 . S DIAG=$$NEW^ABSPOSD3
 . S STRING(1)="Will add new diagnosis code  "_DIAG
 . D HLP^DDSUTL(.STRING)
 ;
 ; create empty entries for adding new data
 D NEWSUB^ABSPOSD3(DIAG)
 ;
 ; now- update the input data file and the prescription
 ;POINTERS REMOVED FROM PRESCRIPTION FILE
 ;D UPDRX(RXI,RXR,DIAG)
 D PUT^DDSVAL(DIE,.DA,1.15,DIAG,,"I")
 ;
 ; theres a chance they won't file the claim - hold on to the
 ; DIAG so we can clean up empty records if its not filed
 ;
 S ^TMP("ABSPOSII",$J,DIAG)=RXI_"^"_RXR
 ;
 N VMED
 Q
 ;
CLNDIAG(IEN,ENTRY) ;EP  from ABSPOSIZ
 ; clean up the DIAG file of empty entries
 ; and update the RX file when no override information
 ; was actually entered for the 5.1 DIAG segment.
 ; This routine called from ABSPOSIZ - subroutine FILE
 ;
 N DIAG,DATAREC
 ;
 S DATAREC=$G(^ABSP(9002313.51,IEN,2,ENTRY,1))
 ;
 S DIAG=$P(DATAREC,"^",12)
 Q:DIAG=""   ;just quit
 ;
 S RXI=$P(DATAREC,"^")
 S RXR=$P(DATAREC,"^",2)
 ;
 S DIAG=$$CHKDIAG^ABSPOSD3(DIAG)  ;good data input?
 ;
 I $G(DIAG)="" D   ;nothing input - delete it
 . ;POINTERS REMOVED FROM PRESCRIPTION FILE
 . ;D UPDRX(RXI,RXR,DIAG)
 . N FDA
 . S FDA(9002313.51,ENTRY_","_IEN_",",1.15)=DIAG
 . D FILE^DIE("","FDA","")
 ;
 D DIAGCNT(DIAG)        ;update DIAG count after cleaning
 ;
 Q
 ;
UPDRX(RXI,RXR,DIAG) ;POINTERS REMOVED FROM PRESCRIPTION FILE
 ; update the prescription with the DIAG 5.1 information
 ; and the ABSP Data Input file with the appropriate value
 ;
 ; DIAG set within POSTINIT
 ; RXR - rx refill IEN
 ; RXI - rx IEN
 ; DIAG - NCPDP 5.1 DIAG segment pointer
 ;
 ;I '+$G(RXR) D    ;NOT a refill
 ;. S FDA(52,RXI_",",9999999.17)=DIAG
 ;. D FILE^DIE("","FDA","")
 ;
 ;I +$G(RXR)  D    ;refill
 ;. S FDA(52.1,RXR_","_RXI_",",9999999.17)=DIAG
 ;. D FILE^DIE("","FDA","")
 ;
 Q
 ;
NOCLM ;EP - called from ABSPOSI when the claims are NOT filed - we
 ; still must clean up the empty records if they called upon
 ; the DIAGNOSIS CODES entry
 ;
 N DIAGIEN,CLNDIAG,DIAGREC,RXI,RXR
 ;
 S DIAGIEN=0
 F  S DIAGIEN=$O(^TMP("ABSPOSII",$J,DIAGIEN)) Q:DIAGIEN=""  D
 .  S DIAGREC=$G(^TMP("ABSPOSII",$J,DIAGIEN))
 .  S RXI=$P(DIAGREC,"^")    ;internal RX number
 .  S RXR=$P(DIAGREC,"^",2)  ;refill number
 .  S CLNDIAG=$$CHKDIAG^ABSPOSD3(DIAGIEN)
 .  ;POINTERS REMOVED FROM PRESCRIPTION FILE
 .  ;D:$G(CLNDIAG)="" UPDRX(RXI,RXR,CLNDIAG)
 ;
 Q
DIAGCNT(DIAG) ;
 ;
 Q:DIAG=""
 ;
 N DIAGIEN,DIAGCNT,DIAGCNTR
 ;
 S (DIAGIEN,DIAGCNT,DIAGCNTR)=0
 F  S DIAGIEN=$O(^ABSP(9002313.491,DIAG,1,DIAGIEN)) Q:'+DIAGIEN  D
 . S DIAGCNT=DIAGCNT+1
 . S DIAGCNTR=$P($G(^ABSP(9002313.491,DIAG,1,DIAGIEN,0)),U)
 . I DIAGCNTR'=DIAGCNT D
 . . D CNTFIX(9002313.4911,DIAG,DIAGIEN,DIAGCNT)
 ;
 S $P(^ABSP(9002313.491,DIAG,0),U,5)=DIAGCNT
 Q
CNTFIX(FILE,REC,SUB,CNT) ;
 ;
 N FDA
 S FDA(FILE,SUB_","_REC_",",.01)=CNT
CNTFILE ;
 D FILE^DIE("","FDA","MSG")
 G:$D(MSG) CNTFILE:$$IMPOSS^ABSPOSUE("FM","TRI","FILE^DIE failed",,"CNTFILE",$T(+0))
 ;
 Q
HELP492 ;EP - Help code for file #9002313.491 - ABSP DIAGNOSIS
 ;                   field #492 - DIAGNOSIS CODE QUALIFIER
 N EFFDT,X,ICDFL,FILDT
 S ICDFL=0
 S EFFDT=$$ICD10DT()
 S FILDT=$P(EFFDT,U,2),EFFDT=$P(EFFDT,U)
 I EFFDT D
 . D NOW^%DTC I FILDT S X=FILDT
 . I EFFDT,X'<EFFDT S ICDFL=1
 I '$D(^ROUTINE("ICDXCODE")) S ICDFL=0 ;ICD10 NOT INSTALLED AT SITE
 ;W !,"00 - Not Specified"
 I 'ICDFL W !,"01 - International Classification of Diseases (ICD9)"
 ;OIT/CAS/RCS 06072012 Patch 45 - The following line is now uncommented
 I ICDFL W !,"02 - International Classification of Diseases (ICD10)"
 ;W !,"03 - National Criteria Care Institute (NCCI)"
 ;W !,"04 - The Systematized Nomenclature of Human and"
 ;W !,"     Veterinary Medicine (SNOMED)"
 ;W !,"05 - Common Dental Terminology (CDT)"
 ;W !,"06 - Medi-Span Diagnosis Code (MSDC)"
 ;W !,"07 - American Psychiatric Association Diagnostic"
 ;  !,"     Statistical Manual of Mental Disorders (DSM IV)"
 ;W !,"99 - Other"
 Q
HELP424 ;EP - FM help code for file #9002313.491 - ABSP DIAGNOSIS
 ;                     field #424 - DIAGNOSIS CODE
 ;OIT/CAS/RCS 06072012 Patch 45 - Rewritten to allow ICD9 and ICD10 based on Implementation date
 N RXI,RXVMED,VIS,POVS,PROB,EFFDT,X,ICDFL,FILDT
 S RXI=+$P($G(^ABSP(9002313.491,DA(1),0)),U,3)
 Q:'RXI
 S RXVMED=+$$GETVMED(RXI)
 S VIS=+$$GET1^DIQ(9000010.14,RXVMED,.03,"I")
 ; Build list of valid ICD9 codes that can be entered for
 ; diagnosis override from purpose of visit (V POV) and
 ; active problem list (PROBLEM).
 ; Get and display V POV list.
 ;OIT/CAS/RCS 06072012 Patch 45 - Refer to ICD9 and ICD10 appropriately
 S ICDFL=0
 S EFFDT=$$ICD10DT()
 S FILDT=$P(EFFDT,U,2),EFFDT=$P(EFFDT,U)
 I EFFDT D
 . D NOW^%DTC I FILDT S X=FILDT
 . I EFFDT,X'<EFFDT S ICDFL=1
 I '$D(^ROUTINE("ICDXCODE")) S (EFFDT,ICDFL)=0 ;ICD10 NOT INSTALLED AT SITE
 I ICDFL W !,"Valid ICD10 codes entered by provider:"
 E  W !,"Valid ICD9 codes entered by provider:"
 D:VIS GETPOVS(VIS,EFFDT,ICDFL)
 D DISPPOVS
 ; Get and display PROBLEM list.
 D GETPROB(RXI,EFFDT,ICDFL)
 D DISPPROB
 Q
GETVMED(RXI) ;
 N RXVMED
 ; First try to return the VMED for the first refill.
 S RXVMED=+$$GET1^DIQ(52.1,"1,"_RXI_",",9999999.11,"I")
 Q:RXVMED RXVMED
 ; Otherwise return VMED for the prescription
 Q +$$GET1^DIQ(52,RXI,9999999.11,"I")
GETPOVS(VIS,EFFDT,X) ;#9000010.07 - V POV file
 N PIEN,CODE,NARR,MES,IMPDT
 I EFFDT D
 . S IMPDT=$P($G(^ICDS(30,0)),"^",4) I 'IMPDT S X=0
 . I X S IMPDT=IMPDT+1
 . E  S IMPDT=IMPDT-1
 S PIEN=0
 F  S PIEN=$O(^AUPNVPOV("AD",VIS,PIEN)) Q:'PIEN  D
 . S CODE=$$GET1^DIQ(9000010.07,PIEN,.01)
 . Q:CODE=""
 . ;OIT/CAS/RCS 06072012 Patch 45 - CHECK FOR VALID ICD9/ICD10 CODE ON DATE
 . I EFFDT S MES=$$ICDDATA^ICDXCODE("DIAG",CODE,IMPDT,"E") I $P(MES,"^")=-1 Q  ;Invalid ICD code on date
 . S NARR=$$GET1^DIQ(9000010.07,PIEN,.04)
 . S POVS(CODE)=NARR
 Q
DISPPOVS ;
 N CODE,NARR
 W !,"VISIT POV List:"
 I '$D(POVS) D
 . W !,?3,"No V POVS found."
 I $D(POVS) D
 . S CODE=""
 . F  S CODE=$O(POVS(CODE)) Q:CODE=""  D
 .. S NARR=$G(POVS(CODE))
 .. W !,?3,CODE,?15,NARR
 Q
GETPROB(RXI,EFFDT,X) ;#9000011 - PROBLEM file
 N DFN,PIEN,CODE,NARR,MES,IMPDT
 I EFFDT D
 . S IMPDT=$P($G(^ICDS(30,0)),"^",4) I 'IMPDT S X=0
 . I X S IMPDT=IMPDT+1
 . E  S IMPDT=IMPDT-1
 S DFN=+$$GET1^DIQ(52,RXI,2,"I")
 I $D(^AUPNPROB("AC",DFN)) D
 . S PIEN=0
 . F  S PIEN=$O(^AUPNPROB("AC",DFN,PIEN)) Q:'PIEN  D
 .. S CODE=$$GET1^DIQ(9000011,PIEN,.01)
 .. Q:CODE=""
 .. ;OIT/CAS/RCS 06072012 Patch 45 - CHECK FOR VALID ICD9/ICD10 CODE ON DATE
 .. I EFFDT S MES=$$ICDDATA^ICDXCODE("DIAG",CODE,IMPDT,"E") I $P(MES,"^")=-1 Q  ;Invalid ICD code on date
 .. S NARR=$$GET1^DIQ(9000011,PIEN,.05)
 .. S PROB(CODE)=NARR
 Q
DISPPROB ;
 N CODE,NARR
 W !,"PROBLEM List:"
 I '$D(PROB) D
 . W !,?3,"No PROBLEM entry found."
 I $D(PROB) D
 . S CODE=""
 . F  S CODE=$O(PROB(CODE)) Q:CODE=""  D
 .. S NARR=$G(PROB(CODE))
 .. W !,?3,CODE,?15,NARR
 Q
 ; Not sure which input transform to use yet, CHK424 or CHK424B.
 ; It was decided (Mike Danielson) to just check for valid entry in
 ; the ICD9 file (tag CHK424) to accommodate outside providers and
 ; the delay in getting the data entered. Keeping tag CHK424B just
 ; in case they change their minds.
CHK424(CODE) ;EP - FM input code for file #9002313.491 - ABSP DIAGNOSIS
 ;         field #424 - DIAGNOSIS CODE
 ; This input transform just checks for a valid ICD9 code.
 Q:$TR(CODE," ")="" 1   ;invalid ICD9 code, all spaces
 N CODELKUP,CODEIEN,CODESTAT,MES,ICDFL,EFFDT,X,IMPDT,FILDT
 S EFFDT=$$ICD10DT()
 S FILDT=$P(EFFDT,U,2),EFFDT=$P(EFFDT,U)
 I '$D(^ROUTINE("ICDXCODE")) S EFFDT=0 ;ICD10 NOT INSTALLED
 I EFFDT D
 . D NOW^%DTC I FILDT S X=FILDT
 . I EFFDT,X'<EFFDT S ICDFL=1
 . E  S ICDFL=0
 . S IMPDT=$P($G(^ICDS(30,0)),"^",4) I 'IMPDT S EFFDT=0 Q
 . I ICDFL S IMPDT=IMPDT+1
 . E  S IMPDT=IMPDT-1
 ; Try lookup with code as is.
 ;OIT/CAS/RCS 06072012 Patch 45 - Add ICD9/ICD10 lookup
 I EFFDT S MES=$$ICDDATA^ICDXCODE("DIAG",CODE,IMPDT,"E") I $P(MES,U,2)=CODE Q 0 ;valid ICD code for date
 I 'EFFDT D  Q:ICDCODE=CODE 0 ;valid ICD9 code
 . S CODEIEN=$O(^ICD9("BA",CODE,""),-1)
 . S ICDCODE=$P($$ICDDX^ICDCODE(CODEIEN),U,2)
 ; Try looking up with trailing space.
 S CODELKUP=CODE_" "
 ;OIT/CAS/RCS 06072012 Patch 45 - Add ICD9/ICD10 lookup
 I EFFDT S MES=$$ICDDATA^ICDXCODE("DIAG",CODELKUP,IMPDT,"E") I $P(MES,U,2)=CODE Q 0 ;valid ICD code for date
 I 'EFFDT D  Q:ICDCODE=CODE 0 ;valid ICD9 code
 . S CODEIEN=$O(^ICD9("BA",CODELKUP,""),-1)
 . S ICDCODE=$P($$ICDDX^ICDCODE(CODEIEN),U,2)
 ; Try looking up without trailing zeros and periods.
 S CODELKUP=CODE
 F  D  Q:$E(CODELKUP,$L(CODELKUP))'=0
 . I $E(CODELKUP,$L(CODELKUP))=0 S CODELKUP=$E(CODELKUP,1,$L(CODELKUP)-1)
 I $E(CODELKUP,$L(CODELKUP))="." S CODELKUP=$P(CODELKUP,".")
 Q:CODELKUP="" 1    ;invalid ICD9 code, all zeros
 ;OIT/CAS/RCS 06072012 Patch 45 - Add ICD9/ICD10 lookup
 I EFFDT S MES=$$ICDDATA^ICDXCODE("DIAG",CODELKUP,IMPDT,"E") I $P(MES,U,2)=CODE Q 0 ;valid ICD code for date
 I 'EFFDT D  Q:ICDCODE=CODE 0 ;valid ICD9 code
 . S CODEIEN=$O(^ICD9("BA",CODELKUP,""),-1)
 . S ICDCODE=$P($$ICDDX^ICDCODE(CODEIEN),U,2)
 Q 1 ;invalid ICD9 code
 ;
CHK492 ;;OIT/CAS/RCS 06072012 Patch 45 - Field 492 default value, assumes todays date
 ;FROM SCREEN 25
 N EFFDT,X,FILDT
 S Y="01" ;DEFAULT
 I '$D(^ROUTINE("ICDXCODE")) Q  ;ICD10 NOT INSTALLED AT SITE
 S EFFDT=$$ICD10DT()
 S FILDT=$P(EFFDT,U,2),EFFDT=$P(EFFDT,U)
 D NOW^%DTC I FILDT S X=FILDT
 I EFFDT,X'<EFFDT S Y="02"
 E  S Y="01"
 Q
CHK424B(X) ;EP - FM input code for file #9002313.491 - ABSP DIAGNOSIS
 ;                       field #424 - DIAGNOSIS CODE
 ; This input transform limits the valid ICD9 codes to those found
 ; in V POV and PROBLEM lists.
 N RXI,RXVMED,VIS,POVS,PROB,CODE
 S RXI=+$P($G(^ABSP(9002313.491,DA(1),0)),U,3)
 Q:'RXI 0
 S RXVMED=+$$GETVMED(RXI)
 S VIS=+$$GET1^DIQ(9000010.14,RXVMED,.03,"I")
 ; Build list of valid ICD9 codes that can be entered for
 ; diagnosis override from purpose of visit (V POV) and
 ; active problem list (PROBLEM).
 ; Get V POV list.
 D:VIS GETPOVS(VIS)
 ; Get PROBLEM list.
 D GETPROB(RXI)
 ; Look for code match in V POV list
 Q:$D(POVS(X)) 0           ;found in V POV list - valid code
 ; Look for code match in PROBLEM list
 Q:$D(PROB(X)) 0           ;found in PROBLEM list - valid code
 Q 1                       ;not found in either list - invalid code
 ;
ICD10DT(X) ;OIT/CAS/RCS 06072012 Patch 45 - Find ICD10 Effective date to use for interface
 ;Return ICD10 Effective date and Fill/Refill date
 N GENDT,RXI,RXR,Y,IEN59,INSIEN,INSDT,FDT
 ;Find POS General ICD10 effective date
 S GENDT=$P($G(^ABSP(9002313.99,1,"ICD10")),U) I 'GENDT Q "0^0"
 ;Find Insurer ICD10 effective date
 S RXI=$G(^TMP("DDS",$J,$P(DDS,U),"F9002313.512",DDSDAORG_","_DDSDAORG(1)_",",1.01,"D"))
 S RXR=$G(^TMP("DDS",$J,$P(DDS,U),"F9002313.512",DDSDAORG_","_DDSDAORG(1)_",",1.02,"D"))
 I 'RXI Q GENDT_"^0" ;Cannot find Rx
 ;Find Fill Date
 I 'RXR S FDT=$P($G(^PSRX(RXI,2)),U,2) ;Fill date
 E  S FDT=$P($G(^PSRX(RXI,1,RXR,0)),U) ;Refill date
 S Y=(RXR*10)+1,Y=$E("00000",1,5-$L(Y))_Y,IEN59=RXI_"."_Y
 I $G(^ABSPT(IEN59,1))="" Q GENDT_"^"_FDT ;Cannot find Rx transaction
 S INSIEN=$P($G(^ABSPT(IEN59,1)),U,6) I 'INSIEN Q GENDT
 S INSDT=$P($G(^ABSPEI(INSIEN,"ICD10")),U) I 'INSDT Q GENDT_"^"_FDT
 Q INSDT_"^"_FDT
