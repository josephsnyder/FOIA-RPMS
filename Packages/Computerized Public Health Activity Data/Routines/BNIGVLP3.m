BNIGVLP3 ; IHS/CMI/LAB - CONT OF BNIGVLP ;
 ;;1.0;BNI CPHD ACTIVITY DATASYSTEM;;DEC 20, 2006
 ;
 ;
COVPAGE ;EP
 S BNIC=0
 S X="CPHAD General Retrieval Report Listing SUMMARY PAGE" D SET(X)
 S X="REPORT REQUESTED BY: "_U_$P(^VA(200,DUZ,0),U) D SET(X)
SHOW ;
 S X="CPHAD Activity Record Selection Criteria" D SET(X)
 S X="Date range:  "_U_BNIGBDD_U_" to "_U_BNIGEDD
 I '$D(^BNIRTMP(BNIGRPT,11)) G SHOWP
 S BNIGI=0 F  S BNIGI=$O(^BNIRTMP(BNIGRPT,11,BNIGI)) Q:BNIGI'=+BNIGI  D
 .S X=$P(^BNIGRI(BNIGI,0),U) D SET(X)
 .K BNIGQ S BNIGY="",C=0 K BNIGQ F  S BNIGY=$O(^BNIRTMP(BNIGRPT,11,BNIGI,11,"B",BNIGY)) Q:BNIGY'=+BNIGY  S X=BNIGY X:$D(^BNIGRI(BNIGI,2)) ^(2) S X=U_X D SET(X)
 K BNIGQ
SHOWP ;
 S X="" D SET(X)
 S X="" D SET(X)
 Q
SET(X) ;
 S BNIC=BNIC+1
 S ^BNIGUI(BNIIEN,12,BNIC,0)=X
 Q
