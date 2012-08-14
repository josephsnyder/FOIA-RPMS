PSULR3 ;BIR/PDW - LAB extract assemble recs. for mail messg. ;25 AUG 1998
 ;;3.0;PHARMACY BENEFITS MANAGEMENT;**19**;Oct 15, 1998
EN ;EP
 ;
 ;
 ;     Samples of the XTMP records being used
 ;
 ;^XTMP("PSULR_541075670",541075670,"CODES","CV800",4) = CREATININE^mg/dL
 ;^XTMP("PSULR_541075670",541075670,"EVENT",1) = IV^599^13^12345^ASPRIN^CV800
 ;^XTMP("PSULR_541075670",541075670,"PATIENT",13,4) = CREATININE^mg/dL
 ;^XTMP("PSULR_541075670",541075670,"PATIENT",13,4,7029388.859632) = 1.0^^^50
 ;^XTMP("PSULR_541077558",541077558,"RECORDS",59,1) = ^59^^^^12345^^^^^^ASPRIN^^CREATININE^^^^1.0 mg/dL^^6/10/97^
 ;^XTMP("PSULR_541077558",541077558,"SUMMARY",599,13,"CV800",4) = CREATININE^1.0 mg/dL^6/10/97^
 ;
 ;  LOOP through the events and assemble records accordingly
 K ^XTMP(PSULRSUB,"RECORDS")
 K ^XTMP(PSULRSUB,"SUMMARY")
 S PSUEV=0 F  S PSUEV=$O(^XTMP(PSULRSUB,"EVENT",PSUEV)) Q:PSUEV'>0  S X=^(PSUEV) D
 . ;W !,X
 . S PSUPK=$P(X,U,1),PSUDIV=$P(X,U,2),DFN=$P(X,U,3)
 . S PSUORD=$P(X,U,4),PSUDRGN=$P(X,U,5),PSUDRCD=$P(X,U,6)
 . K PSUCD
 . M PSUCD=^XTMP(PSULRSUB,"CODES",PSUDRCD)
 . S PSUND=0 F  S PSUND=$O(PSUCD(PSUND)) Q:PSUND'>0  D
 .. S PSUDT=$O(^XTMP(PSULRSUB,"PATIENT",DFN,PSUND,0))
 .. I 'PSUDT Q  ; no test results found
 .. K VA D PID^VADPT
 .. S PSUX=$$RECORD()
 .. K VA
 .. S PSULC=$O(^XTMP(PSULRSUB,"RECORDS",PSUDIV,""),-1)+1
 .. S ^XTMP(PSULRSUB,"RECORDS",PSUDIV,PSULC)=PSUX
 ;
 Q
 ;
RECORD() ;EP  Construct mailing record
 ;3.2.11.42
 K PSUR
 S PSULRDT=9999999-PSUDT
 S X=^XTMP(PSULRSUB,"PATIENT",DFN,PSUND,PSUDT)
 S PSULRF=$S(X["^":$P(X,U,2),1:"") ; hi/low flag
 S PSULRR=$S(X["^":$P(X,U),1:X) ; test result
 S X=^XTMP(PSULRSUB,"PATIENT",DFN,PSUND)
 S PSULRT=$P(X,U) ; Lab Test name stored
 S PSULRU=$P(X,U,2) ; Units stored
 K PSUR
 S PSUR(2)=PSUDIV
 S PSUR(3)=$TR(VA("PID"),"-","")
 S X=$S(PSUPK="IV":4,PSUPK="UD":5,1:10)
 S PSUR(X)=PSUORD
 S PSUR(7)=PSUDRGN
 S PSUR(8)=$P(PSULRT,U)
 S PSUR(9)=PSULRR_" "_PSULRU
 S PSUR(10)=PSULRF
 S PSUR(11)=PSULRDT
 S PSUR=""
 S I=0 F  S I=$O(PSUR(I)) Q:I'>0  S PSUR(I)=$TR(PSUR(I),"^","'")
 S I=0 F  S I=$O(PSUR(I)) Q:I'>0  S $P(PSUR,U,I)=PSUR(I)
 S PSUR=PSUR_U
 ;  Store info for summary by patient
 S PSUTEST=PSULRT_U_PSUR(9)_U_PSULRDT_U_PSULRF ; test^result unit^date^flag
 S ^XTMP(PSULRSUB,"SUMMARY",PSUDIV,DFN,PSUDRCD,PSUND)=PSUTEST
 Q PSUR