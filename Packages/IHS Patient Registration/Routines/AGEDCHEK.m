AGEDCHEK ;IHS/ITSC/TPF - USE TO REPORT ON BAD DATA IN ELIGIBILITY FILES
 ;;7.1;PATIENT REGISTRATION;**1,2**;JAN 31, 2007
 ;
 Q
CHECKALL ;EP - CHECK FOR BAD ENTRIES FOR ALL KNOWN ELIGIBILITY DATA PROBLEMS
PRVT ;
 W !,"CHECKING PRIVATE INSURANCE FILE"
 S RECNO=0
 F  S RECNO=$O(^AUPNPRVT(RECNO)) Q:'RECNO  D
 . S D1=0
 . F  S D1=$O(^AUPNPRVT(RECNO,11,D1)) Q:'D1  D
 .. I $P($G(^AUPNPRVT(RECNO,11,D1,0)),U)="" W !,RECNO Q
 .. I $P($G(^AUPNPRVT(RECNO,11,D1,0)),U,8)="" W !,RECNO," MISSING POLICY HOLDER"  ;IHS/SD/TPF AG*7.1*1 9/6/2005
MCD ;
 W !,"CHECKING MEDICAID FILE"
 S RECNO=0
 F  S RECNO=$O(^AUPNMCD(RECNO)) Q:'RECNO  D
 .I $P($G(^AUPNMCD(RECNO,0)),U)="" W !,RECNO," 1ST PIECE MISSING" Q
 .I $P($G(^AUPNMCD(RECNO,0)),U,2)="" W !,RECNO," 2ND PIECE MISSING"
 .I $P($G(^AUPNMCD(RECNO,0)),U,4)="" W !,RECNO,"STATE FIELD MISSING"  ;IHS/SD/TPF AG*7.1*1 9/6/2005
 .S D1=0
 .F  S D1=$O(^AUPNMCD(RECNO,11,D1)) Q:'D1  D
 ..I $P($G(^AUPNMCD(RECNO,11,D1,0)),U)="" W !?5,RECNO_"-"_D1
 ;CHECKING AB X-REF
 W !,"CHECKING MEDICAID AB X-REF"
 S DFN=""
 F  S DFN=$O(^AUPNMCD("AB",DFN)) Q:DFN=""  D
 .S ST="" F  S ST=$O(^AUPNMCD("AB",DFN,ST)) Q:ST=""  D
 ..S MCDNUM="" F  S MCDNUM=$O(^AUPNMCD("AB",DFN,ST,MCDNUM)) Q:MCDNUM=""  D
 ...S RECNO="" F  S RECNO=$O(^AUPNMCD("AB",DFN,ST,MCDNUM,RECNO)) Q:RECNO=""  D
 ....I $P($G(^AUPNMCD(RECNO,0)),U)="" W !,"AB X-REF ",DFN,"-",RECNO
 ;
RRE ;
 W !,"CHECKING RAILROAD FILE B X-REF"
 S RECNO=""
 F  S RECNO=$O(^AUPNRRE("B",RECNO)) Q:'RECNO  D
 .I $P($G(^AUPNRRE(RECNO,0)),U)="" W !,RECNO
 S RECNO=0
 W !,"CHECKING RAILROAD ELIG DATES"
 F  S RECNO=$O(^AUPNRRE(RECNO)) Q:'RECNO  D
 .S D1=0
 .F  S D1=$O(^AUPNRRE(RECNO,11,D1)) Q:'D1  D
 ..I $P($G(^AUPNRRE(RECNO,11,D1,0)),U)="" W !,RECNO
MCR ;
 W !,"CHECKING MEDICARE FILE B X-REF"
 S RECNO=""
 F  S RECNO=$O(^AUPNMCR("B",RECNO)) Q:'RECNO  D
 .I $P($G(^AUPNMCR(RECNO,0)),U)="" W !,RECNO Q
 S RECNO=0
 W !,"CHECKING MEDICARE ELIG DATES"
 F  S RECNO=$O(^AUPNMCR(RECNO)) Q:'RECNO  D
 .I '$D(^AUPNMCR("B",RECNO)) W !,"MISSING B X-REF ",RECNO
 .S D1=0
 .F  S D1=$O(^AUPNMCR(RECNO,11,D1)) Q:'D1  D
 ..I $P($G(^AUPNMCR(RECNO,11,D1,0)),U)="" W !,RECNO
 ;
INS ;
 W !,"CHECKING INSURER FILE FOR DATE/TIME FIELD AS IEN"
 S RECNO=0
 F  S RECNO=$O(^AUTNINS(RECNO)) Q:'RECNO  D
 .I RECNO[(".") W !,RECNO
 W !,"CHECKING B X-REF WITH RECORD AND NO .01 FIELD"
 S RECNO=""
 F  S RECNO=$O(^AUTNINS("B",RECNO)) Q:RECNO=""  D
 .S RECIEN=""
 .F  S RECIEN=$O(^AUTNINS("B",RECNO,RECIEN)) Q:RECIEN=""  D
 ..I $P($G(^AUTNINS(RECIEN,0)),U)="" W !,RECIEN
 ;
PAT ;
 W !,"CHECKING PATIENT FILE FOR MISSING .01 FIELD"
 S RECNO=0
 F  S RECNO=$O(^AUPNPAT(RECNO)) Q:'RECNO  D
 .I $P($G(^AUPNPAT(RECNO,0)),U)="" W !,RECNO
 ;
 W !,"CHECKING FOR ""D"" X-REF WITH NO PARENT RECORD"
 S HRN="" F  S HRN=$O(^AUPNPAT("D",HRN)) Q:HRN=""  D
 .S RECNO="" F  S RECNO=$O(^AUPNPAT("D",HRN,RECNO)) Q:RECNO=""  D
 ..I '$D(^AUPNPAT(RECNO))!('$D(^DPT(RECNO))) W !,RECNO,"*",HRN
 Q
TPLCNV ;
 S RECNO=0
 F  S RECNO=$O(^AUPNAUTO(RECNO)) Q:'RECNO  D
 .S INSPTR=$P($G(^AUPNAUTO(RECNO,0)),U,4)
 .Q:INSPTR'=""
 .I INSPTR="" W !,"MISSING INSURER PTR "_RECNO
 .S PTPTR=$P($G(^AUPNAUTO(RECNO,0)),U,2)
 .S ACCDT=$P($G(^AUPNAUTO(RECNO,1)),U,2)
 .I PTPTR="" W !?5,"MISSING PTPTR AT "_RECNO Q
 .I '$O(^AUPNTPL(PTPTR,1,0)),(ACCDT'="") W !?5,"MISSING DATE TRANSFER FROM AUTO "_RECNO_" TO TPL AT "_PTPTR_"|"_ACCDT
 .S DTIEN=""
 .F  S DTIEN=$O(^AUPNTPL(PTPTR,1,DTIEN)) Q:'DTIEN  D
 ..S INSPTR=$P($G(^AUPNTPL(PTPTR,1,DTIEN,0)),U,2)
 ..I INSPTR=1 W !?5,"RRE PTR FOUND"_PTPTR_"|"_DTIEN
 ..I INSPTR="" W !?5,"NULL PTR FOUND",PTPTR_"|"_DTIEN
 Q
TPLFIX ;
 S IEN=0
 F  S IEN=$O(^AUPNTPL(IEN)) Q:'IEN  D
 .S DTIEN=0
 .F  S DTIEN=$O(^AUPNTPL(IEN,1,DTIEN)) Q:'DTIEN  D
 ..I $P($G(^AUPNTPL(IEN,1,DTIEN,0)),U,2)=1 S $P(^AUPNTPL(IEN,1,DTIEN,0),U,2)=""
 Q