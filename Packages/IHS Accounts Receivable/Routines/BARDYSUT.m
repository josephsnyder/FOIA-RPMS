BARDYSUT ; IHS/SD/TPF - DAYS IN A/R REPORT UTILS ; 
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**1**;AUG 16, 2006
 ;
 Q
 ;FOR ANY GIVEN VISIT RETURN THE PRIMARY PROVIDER FOR THE VISIT/ENCOUNTER
 ;'V PROVIDER' FILE FIELD 'PRIMARY/SECONDARY'
GETVPROV(VIEN) ;EP - PRIMARY PROVIDER
 N PRV,FOUND
 S FOUND=0
 S PRV="" F  S PRV=$O(^AUPNVPRV("AD",VIEN,PRV)) Q:'PRV  D  Q:FOUND
 .I $$GET1^DIQ(9000010.06,PRV_",",.04,"I")="P" S PRV=FOUND
 Q FOUND
 ;FOR ANY GIVEN VISIT IS THERE A DISCHARGE DATE
 ;'V HOSPITALIZATION' FILE FIELD 'DATE OF DISCHARGE'
DISCHARG(VIEN) ;EP - IS THIS VISIT AN IN PATIENT? IS SO RETURN DISCHARGE DATE
 S DISCHARG=$O(^AUPNVINP("AD",VIEN,""))
 Q:DISCHARG="" 0
 S DISCHARG=$$GET1^DIQ(9000010.02,DISCHARG_",",.01,"I")
 Q DISCHARG
 ;INITIALIZE COUNTERS USED IN CALCULATIONS
INITVIS ;EP - INITIALIZE COUNTERS
 K CREDAYS,REVDAYS,TPBAPP,TPBEXP,NUMVISIT,NUMBILLS,BILLAMT,AMTBILLD,BILLNUM,DYSTOPAY
 K EARLYPAY,LASTPAY,TOTPOST,WITBILLS,PACKREJ,NOBILLS,AVGCHKIN,BILLREJT,DAYSAPP
 S (DONE,NUMVISIT,CREDAYS,REVDAYS,TPBAPP,TPBEXP,NUMBILLS,BILLAMT,AMTBILLD,BILLNUM)=0
 S (EARLYPAY,LASTPAY,DYSTOPAY,TOTPOST,WITBILLS,PACKREJ,NOBILLS,AVGCHKIN,BILLREJT)=0
 K NOARIEN,DATEREJT
 S NOARIEN=0,DATEREJT=0,DAYSAPP=0
 Q
 ;THIS SUBROUTINE WAS TAKEN FROM ROUTINE ABMDVST2
 ;GIVEN V PROVIDER IEN
PRVCHK(X) ;Subrtn to find attending and operating
 S X=$O(^AUPNPRV("AD",X,""))
 Q:X="" 0
 Q:'$D(^AUPNVPRV(X,0)) 0
 ;If provider Attending or Primary set ABMAT to ien otherwise 0
 I 'BARAT S BARAT=$S($P(^AUPNVPRV(X,0),U,5)="A":X,$P(^(0),U,4)="P":X,1:0)
 ;If provider Operating set ABMOP to ien otherwise 0
 I 'BAROP S BAROP=$S($P(^AUPNVPRV(X,0),U,5)="O":X,1:0)
 Q BARAT_U_BAROP
 ;THIS SUB IS USED TO INVESTIGATE WHAT THE TRUE PRIMARY BILL IS
 ;I.E. WHAT IS THE ACTUAL BEGINNING CHARGE AND COST OF SERVICE
 ;CHECKING A/R TRANSACTION FILE
CHKARTR(FROM,TO) ;EP -
 S TRANIEN=0,OFFSET=0
 S:$G(FROM)'="" TRANIEN=FROM-.01
 S:$G(TO)="" TO=99999999999999999
 F  S TRANIEN=$O(^BARTR(DUZ(2),TRANIEN)) Q:'TRANIEN!(TRANIEN>TO)  D
 .S TRANIENS=TRANIEN_","
 .S BILL=$$GET1^DIQ(90050.03,TRANIENS,4)
 .S DEBIT=$$GET1^DIQ(90050.03,TRANIENS,3)
 .S BILLTYPE=$$GET1^DIQ(90050.03,TRANIENS,16,"I")
 .S TRANTYPE=$$GET1^DIQ(90050.03,TRANIENS,101)
 .S TRANERR=$$GET1^DIQ(90050.03,TRANIENS,103)
 .I TRANERR[("ERROR"),(BILL[("A")) W !,"BILLED ERROR: ",TRANIEN
 .Q:TRANERR["ERROR"
 .Q:TRANTYPE'="BILL NEW"
 .Q:BILLTYPE'="PRIMARY"
 .Q:'DEBIT
 .S BILLSTAG=$P(BILL,"-")
 .S BILLSTAG=$E(BILLSTAG,$L(BILLSTAG))
 .Q:BILLSTAG="A"
 .W !!,"BILL: ",BILL
 .W !,"TRAN IEN: ",TRANIEN
 .W !,"TRAN TYPE: ",TRANTYPE
 .W !,"BILL TYPE: ",BILLTYPE
 .W !,"DEBIT: ",DEBIT
 .;B:DUZ=724&(BILL["492776A") "S+"
 Q
 ;LIST POSSIBLE VALUES FOR A/R BILL FILE 'CURRENT BILL STATUS'
CURBIL ;EP
 K ARRAY
 S BILLIEN=0
 F  S BILLIEN=$O(^BARBL(DUZ(2),BILLIEN)) Q:'BILLIEN  D
 .S CURSTAT=$$GET1^DIQ(90050.01,BILLIEN_",",16)
 .S:CURSTAT="" CURSTAT="UNDEF"
 .S ARRAY(CURSTAT)=$G(ARRAY(CURSTAT))+1
 S STAT=""
 F  S STAT=$O(ARRAY(STAT)) Q:STAT=""  D
 .W !,"THERE WERE ",$G(ARRAY(STAT)),?25," BILLS FOUND WITH 'CURRENT BILL STATUS' = ",STAT
 Q
 ;THIS SUB IS USED TO INVESTIGATE WHAT THE TRUE PRIMARY BILL IS
 ;I.E. WHAT IS THE ACTUAL BEGINNING CHARGE AND COST OF SERVICE
 ;CHECKING 3P BILL FILE
CHK3PBL ;EP
 S TPBIEN=0
 F  S TPBIEN=$O(^ABMDBILL(DUZ(2),TPBIEN)) Q:'TPBIEN  D
 .S BILLSTAT=$$GET1^DIQ(9002274.4,TPBIEN_",",.04,"E")
 .
 ;LIST POSSIBLE VALUES FOR 3P BILL FILE 'BILL STATUS'
CURTPB ;EP
 K ARRAY
 S TPBIEN=0
 F  S TPBIEN=$O(^ABMDBILL(DUZ(2),TPBIEN)) Q:'TPBIEN  D
 .S BILLSTAT=$$GET1^DIQ(9002274.4,TPBIEN_",",.04,"E")
 .S:BILLSTAT="" BILLSTAT="UNDEF"
 .S ARRAY(BILLSTAT)=$G(ARRAY(BILLSTAT))+1
 S STAT=""
 F  S STAT=$O(ARRAY(STAT)) Q:STAT=""  D
 .W !,"THERE WERE ",$G(ARRAY(STAT)),?25," 3P BILLS FOUND WITH 'BILL STATUS' = ",STAT
 Q
