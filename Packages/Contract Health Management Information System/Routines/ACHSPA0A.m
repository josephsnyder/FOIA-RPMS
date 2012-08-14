ACHSPA0A ; IHS/ITSC/PMF - DOCUMENT PAYMENT (CONT.) ;   [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 Q
 ;
INTRM ;EP - Sets interim payment nodes.
 ;
 I '$$LOCK^ACHS("^ACHSF(DUZ(2),""D"",ACHSDIEN,""IP"")","+") W *7,!,"LOCK failed at INTRM^ACHSPA0A on '^ACHSF(",DUZ(2),",""D"",",ACHSDIEN,",""IP"")'.",!,"NOTIFY PROGRAMMER" D RTRN^ACHS Q
 ;
 S:'$D(^ACHSF(DUZ(2),"D",ACHSDIEN,"IP")) ^ACHSF(DUZ(2),"D",ACHSDIEN,"IP")=0_U_0_U_0
 S:'$D(ACHSPDAT) ACHSPDAT=ACHSEOBD
 ;
 ;SET 'INTERIM PAYMENT TOTAL' PLUS 'IHS PAYMENT AMOUNT'
 S ACHSTIP=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"IP")),U)+ACHSPAMT
 S $P(^ACHSF(DUZ(2),"D",ACHSDIEN,"IP"),U)=ACHSTIP
 ;
 ;INCREMENT 'NUMBER OF INTERIM PAYMENTS'
 S $P(^ACHSF(DUZ(2),"D",ACHSDIEN,"IP"),U,2)=$P(^("IP"),U,2)+1
 ;
 ;'LAST INTERIM PAYMENT DATE'
 S $P(^ACHSF(DUZ(2),"D",ACHSDIEN,"IP"),U,3)=ACHSPDAT
 ;
 Q:'$D(ACHSISAO)     ;IS AREA OFFICE?
 Q:(ACHSISAO'=0)     ;CHECKS TO SEE IF 0 TOO ???????
 ;
 I '$D(ACHSTOT(ACHSY,"INTERIM PAYMENTS")) S ACHSTOT(ACHSY,"INTERIM PAYMENTS")="0^0"
 S $P(ACHSTOT(ACHSY,"INTERIM PAYMENTS"),U)=$P(ACHSTOT(ACHSY,"INTERIM PAYMENTS"),U)+ACHSPAMT
 S $P(ACHSTOT(ACHSY,"INTERIM PAYMENTS"),U,2)=$P(ACHSTOT(ACHSY,"INTERIM PAYMENTS"),U,2)+1
 Q
 ;