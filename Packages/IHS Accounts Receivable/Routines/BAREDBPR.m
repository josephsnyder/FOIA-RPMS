BAREDBPR ; IHS/SD/SDR - AR ERA Batch/Item matching ; 01/30/2009
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**20,21**;OCT 26,2005
 Q
EN ;
 I $G(DUZ(2))="" D  Q
 . W !!,"Check your DUZ setup."
 . D EOP^BARUTL(1)
 W !,"Matching ERA 835 to A/R Collection Batch & Items..."
 D SELFL^BAREDP00
 I Y'>0 Q
 ;IHS/SD/TPF 8/22/2001 BAR*1.8*21 5010
 I TRNAME[("5010") D EN^BAR50BPR Q
 ;END BAR*1.8*21
 W !,"I will begin matching the following items:"
 H 1
 I TRNAME["HIPAA" D  Q:'+BARCKIEN
 . S BARCKIEN=$$CHECK^BAREDP09(IMPDA)
 ;IHS/SD/TPF BAR*1.8*21 ADD PLB LISTING TO BPR OPTION PER PAGE 10 5010 SPECS
 S $P(DASH,"=",81)=""
 N BARNOW
 D NOW^%DTC
 S Y=% X ^DD("DD")
 S BARNOW=Y
 D SEP^BAR50PA1(IMPDA)
 S PAGENO=0
 D PLBHDR
 S GRANDTOT=0   ;GRAND TOTAL
 S DATETOT=0    ;TOTAL BY FY DATE
 S LSTDATE=""
 S SEGDA=0
 F  S SEGDA=$O(^BAREDI("I",DUZ(2),IMPDA,20,SEGDA)) Q:'SEGDA  D
 .Q:$P($G(^BAREDI("I",DUZ(2),IMPDA,20,SEGDA,1)),E)'="PLB"
 .S PLBDATA=$G(^BAREDI("I",DUZ(2),IMPDA,20,SEGDA,1))
 .S NPI=$P($G(^BAREDI("I",DUZ(2),IMPDA,20,SEGDA,1)),E,2)
 .S FYDATE=$P($G(^BAREDI("I",DUZ(2),IMPDA,20,SEGDA,1)),E,3)
 .I FYDATE'=LSTDATE S DATETOT=0
 .S LSTDATE=FYDATE
 .S X=FYDATE D DT^BAR50P02 S FYDATE=X
 .;W !,$G(^BAREDI("I",DUZ(2),IMPDA,20,SEGDA,1))
 .W !!?3,NPI
 .W ?20,FYDATE
 .;PLB SEPARATOR - WILL BE THE SUB-ELEMENT SEPARATOR OR VARIABLE SE
 .S LENGTH=$L($G(^BAREDI("I",DUZ(2),IMPDA,20,SEGDA,1)),E)
 .;GET ALL THE CODES IN THE PLB SEGMENT
 .S COUNT=1
 .F PIECE=4:2:LENGTH  D
 ..S PLBCODE=$P($G(^BAREDI("I",DUZ(2),IMPDA,20,SEGDA,1)),E,PIECE,PIECE+1)
 ..;W !,PLBCODE
 ..S CD=$P(PLBCODE,SE)
 ..I CD[E S CD=$P(CD,E)
 ..S CDAMT=$P(PLBCODE,E,2)
 ..S PLBREFID=$P($P(PLBCODE,E),SE,2)
 ..W !,COUNT
 ..W ?14,$J($FN(CDAMT,",",2),10)
 ..W ?26,CD
 ..S DESC=$$DESC(CD)
 ..W ?30,DESC
 ..W ?50,PLBREFID
 ..S DATETOT=DATETOT+CDAMT
 ..S GRANDTOT=GRANDTOT+CDAMT
 ..S COUNT=COUNT+1
 .W !?10,"---------------"
 .W !?14,$J($FN(DATETOT,",",2),10)
 .S DATETOT=0
 .;I $Y>20 D EOP^BARUTL(1)
 W !?10,"---------------"
 W !?14,$J($FN(GRANDTOT,",",2),10)
 D EOP^BARUTL(1)
 D CLNUP
 Q
DESC(CD) ;EP - GET DESCRIPTION OF CODE
 S TBLIEN=$O(^BARETBL("B","Adjustment Reason Code",""))
 S CODEIEN=$O(^BARETBL(TBLIEN,1,"B",CD,""))
 S CD=$P(^BARETBL(TBLIEN,1,CODEIEN,0),U,2)
 Q CD
 ;END BAR*1.8*21
 ;
PLBHDR ;EP - PLB REPORT HEADER
 S PAGENO=PAGENO+1
 ;W @IOF  ;ADRIAN WANTED FF TAKEN OUT
 W !!
 W DASH
 W "PLB DETAIL REPORT"
 W ?45,BARNOW
 W ?70,"PAGE ",PAGENO
 W !,$G(BAR("HD",1))
 W !,$G(BAR("HD",2))
 W !,DASH
 ;PRINT COLUMNS
 W !?5,"NPI",?20,"FY DATE"
 W !,"NO",?10,"AMOUNT",?24,"CD",?30,"DESCRIPTION",?45,"REFERENCE ID"
 W !,DASH
 Q
 ; *********************************************************************
 ;
CLNUP ; Cleanup variables
 I $G(IMPDA) L -^BAREDI("I",IMPDA)  ;BAR*1.8*5 SRS-80 IHS/SD/TPF
 K XBDIR,X,Y,HSTFILE,ANS,IMPDA,TRDA,DATM,SEQ,TNAME
 K HSTIME,BARCOL,BARITM
 Q
