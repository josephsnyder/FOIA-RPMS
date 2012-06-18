BAREDP04 ; IHS/SD/LSL - MATCH REASONS AND CLAIMS ; 01/09/2009
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**5,6,10,20,21**;OCT 26, 2005
EN(TRDA,IMPDA)  ;EP ;SCAN CLMS BUILT "B" STATUS
 N REVERSAL,ERACHECK
 D INIT^BARUTL
 W !,"Matching E-Claims to A/R Bills and Reason Codes",!
 I TRNAME["HIPAA" D  Q
 .S INDEX="B"
 .D INDEX
 F INDEX="B","X","C","R" D INDEX
 Q
INDEX ;EP
 S QFLG=0  ;bar*1.8*20
 W !,"Processing Claim Status using claim Index ",INDEX,!  ;bar*1.8*20 REQ4
 S CLMDA=0
 I $G(DEBUG) W !,"PERFORMING TRADITIONAL HIPAA CHECKS..."  ;bar*1.8*20 REQ4
 ;F  S CLMDA=$O(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA)) Q:'CLMDA  K ERRORS D CLMFLG(CLMDA,.ERRORS)  ;BAR*1.8*6 SRS-80 TPF  ;bar*1.8*20 REQ4
 ;start new bar*1.8*20 REQ4
 K ^XTMP("BAR-LIST",$J,DUZ(2))
 K BARFLG
 F  S CLMDA=$O(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA)) Q:'CLMDA  S ^XTMP("BAR-LIST",$J,DUZ(2),$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,0)),U),CLMDA)=""
 S CLMCNT=0,BARBL=""
 ;F  S BARBL=$O(^XTMP("BAR-LIST",$J,DUZ(2),BARBL)) Q:BARBL=""  D  ;bar*1.8*20
 F  S BARBL=$O(^XTMP("BAR-LIST",$J,DUZ(2),BARBL)) Q:BARBL=""  D  Q:QFLG=1  ;bar*1.8*20
 .S CLMDA=0
 .;F  S CLMDA=$O(^XTMP("BAR-LIST",$J,DUZ(2),BARBL,CLMDA)) Q:'CLMDA  K ERRS D CLMFLG(CLMDA,.ERRORS)  ;bar*1.8*20
 .F  S CLMDA=$O(^XTMP("BAR-LIST",$J,DUZ(2),BARBL,CLMDA)) Q:'CLMDA  K ERRS D CLMFLG(CLMDA,.ERRORS)  Q:$G(QFLG)=1  ;bar*1.8*20
 ;end new REQ4
 Q:QFLG=1  ;bar*1.8*20
 S BARFLG=$$EN^BAREDP0Z(IMPDA)  ;PLB/Pymt Rev/Neg pymt amt chks  ;bar*1.8*20 REQ4
 ;BAR*1.8*5 SRS-80 TPF
 D:$$IHS^BARUFUT(DUZ(2)) NEGBAL^BAREDEB(IMPDA,"ERA")  ;CHK FOR NEG BAL IN RPMS BILLS  ;bar*1.8*20 REQ4
 ;NOTE: MATCHED PYMTS & CREDITS W/HAVE THE 'POST THIS CLM AS TYPE' FLD = TO 20=PYMT CREDIT
 ;BAR*1.8*6 TPF MOVE REV CHK TO BAREDEP AS A FULL LOOP CHK
 ;D:$$IHS^BARUFUT(DUZ(2)) REVLOOP^BAREDEP(IMPDA)  ;CHK FOR PYMTS NOT MATCHED TO REV TO SEE IF BEING POSTED TO 'NONPYMT' BATCH  ;bar*1.8*20 REQ4
 ;END REV MOD
 ;D:$$IHS^BARUFUT(DUZ(2)) NONPAYCH^BAREDEP(IMPDA)  ;CHK FOR PYMTS NOT MATCHED TO REV TO SEE IF BEING POSTED TO 'NONPYMT' BATCH
 D:$$IHS^BARUFUT(DUZ(2)) NONPAYCH^BAREDEP1(IMPDA)  ;CHK FOR PYMTS NOT MATCHED TO REV TO SEE IF BEING POSTED TO 'NONPYMT' BATCH ;BAR*1.8*6 SAC RTN TOO BIG
 K ERRORS
 ;end
 Q
CLMFLG(CLMDA,ERRORS) ;EP - BAR*1.8*5 SRS-80 TPF
 S DEBUG=1  ;SET FOR DIAG DISPLAYS
 S BILMATCH=0  ;bar*1.8*20
 ;I $G(DEBUG) W !,"PROCESSING ENTRY: ",CLMDA  ;bar*1.8*20 REQ4
 Q:$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,0)),U,2)="P"  ;quit if posted
 Q:$$OVERIDE^BAREDEP1(CLMDA)  ;MRS:BAR*1.8*10 D159-1 & 2
 Q:$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,0)),U,2)="E"  ;user marked as Exception-skip  ;bar*1.8*20 REQ4
 Q:(($P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,2)),U))'=($P($G(^BAREDI("I",DUZ(2),IMPDA,5,BARCKIEN,0)),U)))  ;only look at 1 chk's clms  ;bar*1.8*20 REQ4
 D DELREAS(IMPDA,CLMDA)  ;CLR ERRORS, SET STAT TO MATCHED, BEGIN BY ASSUMING ALL CLMS ARE MATCHED & ERROR FREE
 ;CHK & SET CLM MATCHING STATUS
 I TRNAME["HIPAA" D
 .;I $G(DEBUG) W !,"PERFORMING TRADITIONAL HIPAA CHECKS FOR CLAIM ",$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,0)),U)  ;bar*1.8*20 REQ4
 .S CLMCNT=+$G(CLMCNT)+1  ;bar*1.8*20 REQ4
 .I $G(DEBUG) W !?2,CLMCNT,?10,BARBL  ;bar*1.8*20 REQ4
 .;I $G(DEBUG) W !  ;bar*1.8*20 REQ4
 .S CLMFLG=$$HIPAACLM(IMPDA,CLMDA,.ERRORS)
 .Q:$G(QFLG)=1  ;bar*1.8*20
 .S REAFLG=$$HIPAAREA(IMPDA,CLMDA,.ERRORS)
 Q:$G(QFLG)=1  ;bar*1.8*20
 I TRNAME'["HIPAA" D
 .S CLMFLG=$$CLM(CLMDA)
 .S REAFLG=$$REA(CLMDA)
 ;S STATUS=""  ;bar*1.8*20 REQ4
 S STAT=""  ;bar*1.8*20 REQ4
 I CLMFLG,REAFLG S STAT="M"  ;MATCHED
 I 'CLMFLG,REAFLG S STAT="C"  ;CLM UNMATCHED
 ;start old bar*1.8*20 REQ5
 ;I CLMFLG,'REAFLG S STAT="R"  ;REASON UNMATCHED
 ;I 'CLMFLG,'REAFLG S STAT="X" ;CLM & REASON UNMATCHED
 ;end old start new REQ5
 I CLMFLG,'REAFLG S STAT="M"
 I 'CLMFLG,'REAFLG S STAT="C"
 ;end new REQ5
 K DR,DIE,DA
 S DIE=$$DIC^XBDIQ1(90056.0205)
 S DR=".02////^S X=STAT"
 S DA(1)=IMPDA
 S DA=CLMDA
 D ^DIE
 I TRNAME["HIPAA" D
 .I 'REAFLG,REATYP="RT" S STAT="RT"  ;RSN CD NOT DEFINED IN STD TBL
 .I 'REAFLG,REATYP="RF" S STAT="RF"  ;RSN CD NOT ON RA
 .I 'REAFLG,REATYP="RU" S STAT="RU"  ;STD ADJ CD NOT MAPPED TO RPMS
 .I 'CLMFLG,CLMTYP="CF" S STAT="CF"  ;CLM# (CLP01) NOT SENT ON RA
 .I 'CLMFLG,CLMTYP="CT" S STAT="CT"  ;RA CLM NOT FOUND IN RPMS
 .I 'CLMFLG,CLMTYP="CC" S STAT="CC"  ;RA CLM IN RPMS AR BUT CANCELLED IN 3P
 .I 'CLMFLG,CLMTYP="CD" S STAT="CD"  ;DOS DOESN'T MATCH RPMS
 ;S DR="204///^S X=STAT"  ;BAR*1.8*5 SRS-80 TPF
 ;D ^DIE  ;DON'T USE OLD STATUS FLD
 ;BAR*1.8*5 SRS-80 TPF
 ;RSNS FOUND FOR 'NOT TO POST' (OLD)
 I $D(ERRORS("CT")) K ERRORS S ERRORS("CT")=""  ;bar*1.8*20 REQ5
 I $D(ERRORS("DUPB")) K ERRORS S ERRORS("DUPB")=""  ;bar*1.8*20
 I $D(ERRORS) D ADDREAS(IMPDA,CLMDA,.ERRORS)
 ;CHKS FOR RSNS 'NOT TO POST'
 K ERRORS
 Q
CLM(CLMDA) ;EP ;MATCH/SET/FLAG E-CLM TO A/R BILL
 S X=$$VAL^XBDIQ1(90056.0205,"IMPDA,CLMDA",.01)
 K DIC,DA,DR
 S DIC=90050.01
 S DIC(0)="M"
 D ^DIC
 I Y'>0 Q 0
 S BARBLDA=+Y
 S DIE=$$DIC^XBDIQ1(90056.0205)
 S DA=CLMDA
 S DA(1)=IMPDA
 S DR="1.01////^S X=BARBLDA"
 D ^DIE
 Q 1
REA(CLMDA) ;EP ;LOOP MATCH/SET/FLAG RSN CODES OF E-CLM
 K ADJ
 S REAFLG=1
 S ADJDA=0
 F  S ADJDA=$O(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,30,ADJDA)) Q:ADJDA'>0  D
 .S ACAT=$$VALI^XBDIQ1(90056.0208,"IMPDA,CLMDA,ADJDA",.04)
 .S AREA=$$VALI^XBDIQ1(90056.0208,"IMPDA,CLMDA,ADJDA",.05)
 .S REA=$$VAL^XBDIQ1(90056.0208,"IMPDA,CLMDA,ADJDA",.03) ; pull rsn
 .I '$L(REA) S REAFLG=0 Q
 .;lookup rsn in rsn table
 .K DIC,DA,DR
 .S DIC=$$DIC^XBDIQ1(90056.0107)
 .S DA(1)=TRDA
 .S X=$P(REA," ")
 .S DIC(0)="X"
 .D ^DIC
 .I Y'>0 D  Q
 ..I $G(DEBUG) W "NO REASON ",X,!
 ..S REAFLG=0
 .S READA=+Y
 .;line below to ignore inpt w/non-cov'd days
 .I +CLMFLG>0,$P($G(^BARBL(DUZ(2),BARBLDA,1)),U,14)=111,$P(Y,U,2)=96 Q
 .Q:$P(Y,U,2)=93    ;Q if rsn is 93 w/o attempting to match
 .;pull A/R cat & rsn
 .S ACAT=$$VALI^XBDIQ1(90056.0107,"TRDA,READA",2.01)
 .S AREA=$$VALI^XBDIQ1(90056.0107,"TRDA,READA",2.02)
 .I ACAT,AREA D SETREA I 1
 .E  S REAFLG=0
 Q REAFLG
SETREA ;EP SET CAT & REA INTO E-CLM
 K DIC,DIE,DR,DA
 S DIE=$$DIC^XBDIQ1(90056.0208)
 S DA(2)=IMPDA
 S DA(1)=CLMDA,DA=ADJDA
 S DR=".04////^S X=ACAT;.05////^S X=AREA"
 D ^DIE
 Q
HIPAAREA(IMPDA,CLMDA,ERRORS) ;BAR*1.8*5 SRS-80 TPF ERRORS CAN BE MULTIPLE
 ; Match HIPAA std codes to RPMS
 K ADJ
 S REAFLG=1
 S ADJDA=0
 F  S ADJDA=$O(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,30,ADJDA)) Q:'+ADJDA  D HIPAAR2
 Q REAFLG
HIPAAR2 ; Match HIPAA std codes to RPMS
 S REA=$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,30,ADJDA,0)),U,3)
 ;I REA="" D  Q  ;No rsn sent in file
 I REA="" D  ;BAR*1.8*5 SRS-80 TPF
 .W !,"Standard adjustment reason not sent on RA."
 .S REAFLG=0
 .S REATYP="RF"
 .S ERRORS("RF")="" ;BAR*1.8*5 SRS-80 TPF
 S ACAT=$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,30,ADJDA,0)),U,4)
 S AREA=$P($G(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,30,ADJDA,0)),U,5)
 K DIC,DR,DA
 S DIC="^BARADJ("
 S X=$P(REA," ")
 S DIC(0)="XZ"
 D ^DIC
 I +Y<1 D  Q
 .W !,"Standard adjustment reason ",X," not in standard table."
 .S REAFLG=0
 .S REATYP="RT"
 .S ERRORS("RT")="" ;BAR*1.8*5 SRS-80 TPF
 S READA=+Y
 ;I $P(Y(0),U,3)=""!($P(Y(0),U,4)="") D  Q  ;No RPMS cat/type in table
 I $P(Y(0),U,3)=""!($P(Y(0),U,4)="") D  ;BAR*1.8*5 SRS-80 TPF
 .W !,"Can't map standard adjustment reason ",X," to RPMS."
 .S REAFLG=0
 .S REATYP="RU"
 .S ERRORS("RU")="" ;BAR*1.8*5 SRS-80 TPF
 ;Q:$D(ERRORS)  ;BAR*1.8*5 SRS-80 TPF  bar*1.8*20 REQ4 SDR
 K DIC,DA,DR,DIE
 S DIE=$$DIC^XBDIQ1(90056.0208)
 S DA(2)=IMPDA
 S DA(1)=CLMDA
 S DA=ADJDA
 S DR=".04////^S X=$P(Y(0),U,3)"
 S DR=DR_";.05////^S X=$P(Y(0),U,4)"
 D ^DIE
 Q
HIPAACLM(IMPDA,CLMDA,ERRORS) ;BAR*1.8*5 SRS-80 TPF ERRORS CAN BE MULTIPLE
 N BARAMT,BARDOS,ERAAMT,ERADOS,ERATYPE  ;BAR*1.8*5 SCR109
 ;Match RA clms to RPMS
 ;1st chk bill# "B" x-ref
 ;If not successful, chk other identifier "G" x-ref for Pharmacy POS
 K BARTMP
 S BAREIENS=CLMDA_","_IMPDA_","
 ;S BARBILL=$$GET1^DIQ(90056.0205,BAREIENS,.01)  ;RA bill# (CLP01)  ;bar*1.8*20 REQ4
 ;start new bar*1.8*20 REQ4
 S BARBILL=+$$GET1^DIQ(90056.0205,BAREIENS,.01)  ;RA bill# (CLP01)
 ;check if alpha is next; if concatonate to bill#
 ;I (($A($L(BARBILL+1)>64)&($A($L(BARBILL+1))<91))) S BARBILL=BARBILL_$E($$GET1^DIQ(90056.0205,BAREIENS,.01),($L(BARBILL)+1))  ;bar*1.8*21 SDR HEAT42918
 I (($A($E($L(BARBILL+1))>64)&($A($E($L(BARBILL+1)))<91))) S BARBILL=BARBILL_$E($$GET1^DIQ(90056.0205,BAREIENS,.01),($L(BARBILL)+1))  ;bar*1.8*21 SDR HEAT42918
 ;end new REQ4
 ;
 ;I BARBILL="" D  Q 0  ;Bill not on RA
 I BARBILL="" D  Q  ;BAR*1.8*5 SRS-80 TPF
 .S CLMTYP="CF"
 .W !,"Bill number not sent on ERA"
 .S ERRORS("CF")="" ;BAR*1.8*5 SRS-80 TPF
 D CLM^BAREDP4A  ;bar*1.8*20 REQ4 split due to rtn size
 I $$GET1^DIQ(90056.0205,IENS,1.01,"I")'="" S BARCNT=1  ;bar*1.8*20
 I BARCNT=0 S CLMTYP="CT",ERRORS("CT")=""  ;BAR*1.8*5 SRS-80
 I BARCNT=1 S BARBIEN=$O(BARTMP(0))
 I BILMATCH=1 D  ;BAR*1.8*5 SCR109
 .S BARBIEN=$O(BILMATCH("")) S BARCNT=1
 .;I $G(DEBUG) W !!?25,"ERA BILL "_BARBILL  ;bar*1.8*20 REQ4
 .I $G(DEBUG) W !?5,"ERA BILL "_$$GET1^DIQ(90056.0205,BAREIENS,.01)  ;bar*1.8*20 REQ4
 .I $G(DEBUG) W "  MATCHED TO "_$S(BARX="G":"(POS)",1:"")_" A/R BILL ",$P($G(^BARBL(DUZ(2),BARBIEN,0)),U),!
 ;I BARCNT>1 D  I '+BARANS Q 0
CLM2 ;new tag bar*1.8*20 REQ4
 ;I BARCNT>1 D  ;BAR*1.8*5 SRS-80 TPF  ;bar*1.8*20 REQ6
 I BARCNT>1,($$GET1^DIQ(90056.0205,BAREIENS,1.01)="") D  ;bar*1.8*20 REQ6
 .;start old bar*1.8*20 REQ4
 .;D HDR
 .;D RABILL
 .;D ARBILL
 .;D CHOOSE
 .;end old start new REQ4
 .F  D  Q:($G(BARSEL)'="B"&($G(BARSEL)'="H"))
 ..D HDR
 ..D RABILL
 ..D ARBILL
 ..D CHOOSE
 ..I ($G(BARSEL)="Q") S QFLG=1 Q  ;bar*1.8*20
 ..I (+$G(BARANS)'=0)&(($G(BARSEL)'="B")&($G(BARSEL)'="H")) D
 ...K DIR
 ...S DIR(0)="Y"
 ...S DIR("A")="Are you sure?"
 ...S DIR("B")="N"
 ...D ^DIR
 ...I +Y<1 S BARANS=0 S BARSEL="B"
 .I $G(BARSEL)="" D
 ..W !!,"BILL WILL NOT BE MATCHED AND WILL BE SET TO 'NOT MATCHED'.  CONTINUING.."
 ..S BARSEL="N"
 .I BARSEL="N" S NEWSTAT="M",ERRORS("DUPB")=""
 .;end new REQ4
 .;I '+BARANS S CLMTYP="CT" Q
 .I '+BARANS,BARSEL="N" Q  ;bar*1.8*20
 .I '+BARANS S CLMTYP="CT",ERRORS("CT")="" Q  ;BAR*1.8*5 SRS-80 TPF
 .S BARBIEN=BARTMP2(BARANS)
 ;Match DOS
 S X=$$GET1^DIQ(90056.0205,BAREIENS,.08)
 D ^%DT
 S BARRADT=Y  ;DOS begin
 S BARBDT=$$GET1^DIQ(90050.01,BARBIEN,102,"I")
 I BARRADT'=BARBDT S CLMTYP="CD",ERRORS("CD")=""  ;DOS DOESN'T MATCH RPMS ; BAR*1.8*5 SRS-80
 ;See if cancelled in 3P
 S BAR3PIEN=$$FIND3PB^BARUTL(DUZ(2),BARBIEN)
 ;I BAR3PIEN]"" D  I BARBSTAT="X" Q 0
 I BAR3PIEN]"" D   ;BAR*1.8*5 SRS-80 TPF
 .S BARBSTAT=$P($G(^ABMDBILL($P(BAR3PIEN,","),$P(BAR3PIEN,",",2),0)),U,4)
 .S:BARBSTAT="X" CLMTYP="CC"  ;Cancelled in 3P
 .S:BARBSTAT="X" CLMTYP="CC",ERRORS("CC")=""  ;BAR*1.8*5 SRS-80 TPF
 D TRANSCK^BAREDP4A  ;bar*1.8*20 REQ6
 I $G(NEWSTAT)="M"!($$GET1^DIQ(90056.0205,BAREIENS,.02,"I")="M") Q 1  ;bar*1.8*20 REQ5
 Q:$D(ERRORS) 0  ;BAR*1.8*5 SRS-80 TPF
 ; Bill matches RPMS-log AR Bill IEN in Image
 S DIE=$$DIC^XBDIQ1(90056.0205)
 S DA=CLMDA
 S DA(1)=IMPDA
 S DR="1.01////^S X=BARBIEN"
 ;start new bar*1.8*20 REQ4
 S MATCH="M"
 S DR=DR_";.02////^S X=MATCH"
 ;end new REQ4
 D ^DIE
 Q 1
HDR ;hdr
 W !!,$$EN^BARVDF("ULN"),?4,"BILL #",?23,"DOS",?31,"PATIENT NAME"
 W ?57,"BILLED AMT",?71,"BALANCE",$$EN^BARVDF("ULF")
 Q
RABILL ;Write RA data
 S X=$$GET1^DIQ(90056.0205,BAREIENS,.08)
 D ^%DT
 S BARRADT=Y  ;DOS begin
 W !,$$EN^BARVDF("RVN")  ;bar*1.8*20
 ;W ?4,$E(BARBILL,1,15)  ;BILL/RX  ;bar*1.8*20 REQ4
 W "ERA"  ;bar*1.8*20
 W ?4,$E($$GET1^DIQ(90056.0205,BAREIENS,.01),1,15)  ;BILL/RX  ;bar*1.8*20 REQ4
 W ?20,$$SDT^BARDUTL(BARRADT)  ;DOS begin
 W ?31,$E($$GET1^DIQ(90056.0205,BAREIENS,.06),1,25)  ;Pt name
 W ?57,$J($FN($$GET1^DIQ(90056.0205,BAREIENS,.05),",",2),10)  ;Billed
 W $$EN^BARVDF("RVF")  ;bar*1.8*20
 Q
ARBILL ;Loop & write AR data
 S (BARBIEN,BARCNT2)=0
 F  S BARBIEN=$O(BARTMP(BARBIEN)) Q:'+BARBIEN  D
 .S BARCNT2=BARCNT2+1
 .S BARBDT=$$GET1^DIQ(90050.01,BARBIEN,102,"I")
 .W !,$J(BARCNT2,2),")"
 .W ?4,$E($$GET1^DIQ(90050.01,BARBIEN,.01),1,15)
 .W ?20,$$SDT^BARDUTL(BARBDT)
 .W ?31,$E($$GET1^DIQ(90050.01,BARBIEN,101),1,25)
 .W ?52,$J($FN($$GET1^DIQ(90050.01,BARBIEN,13),",",2),10)
 .W ?68,$J($FN($$GET1^DIQ(90050.01,BARBIEN,15),",",2),10)
 .S BARTMP2(BARCNT2)=BARBIEN
 Q
CHOOSE ;Choose bill from AR
 ;start new REQ4
 K DIR
 S DIR(0)="SABO^B:Bill Inquire;H:History;M:Match to Item;N:Not Matched;Q:Quit"
 S DIR("A")="Enter (B)ill Inquire,(H)istory,(M)atch to Item,(N)ot Matched,(Q)uit: "
 D ^DIR
 I $D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT) S BARANS=0 Q
 S BARSEL=Y
 I BARSEL="N"!(BARSEL="Q") S BARANS=0 Q  ;not matched
 K DIR
 S DIR(0)="NAO^1:"_BARCNT2
 S DIR("A")="Which Entry: "
 S DIR("?")="Enter a number between 1 and "_BARCNT2
 D ^DIR
 I $D(DIROUT)!$D(DUOUT)!$D(DIRUT)!$D(DTOUT) S BARANS=0 Q
 S BARANS1=$G(BARTMP2(Y)),BARANS=Y
 I BARSEL="H" D
 .D EN^BARPST5(BARANS1)
 I BARSEL="B" D
 .D DIQ^XBLM(90050.01,BARANS1)
 ;end new REQ4
 Q
 ;BAR*1.8*5 SRS-80 TPF
ADDREAS(IMPDA,CLMDA,ERRORS,SHOWMSG) ;EP - ADD RSN NOT SENT TO 'RSN NOT TO POST MULTIPLE'
 S SHOWMSG=$G(SHOWMSG)
 N REASON,STAT,ERRDA,CURSTAT
 S REASON=""
 F  S REASON=$O(ERRORS(REASON)) Q:REASON=""  D
 .I REASON="CT" D STAT(IMPDA,CLMDA)
 .I SHOWMSG D
 ..S ERRDA=$O(^BARERR("B",REASON,""))
 ..W !,$$GET1^DIQ(90056.21,ERRDA_",",.02,"E")
 .K DIC,DIE,DR,DA,DIR
 .S DIC("P")=$P(^DD(90056.0205,401,0),U,2)
 .S DA(2)=IMPDA
 .S DA(1)=CLMDA
 .S DIC(0)="L"
 .S DIC="^BAREDI(""I"",DUZ(2),"_DA(2)_",30,"_DA(1)_",4,"
 .S X=REASON
 .D ^DIC
 Q
STAT(IMPDA,CLMDA) ;EP
 K DR,DIE,DA
 S DIE=$$DIC^XBDIQ1(90056.0205)
 S STAT="C"
 S DR=".02///^S X=STAT"
 S DA(1)=IMPDA
 S DA=CLMDA
 D ^DIE
 Q
DELREAS(IMPDA,CLMDA) ;EP -CLR 'RSN NOT TO POST' MULTIPLES IN ERA FILE
 N REASDA
 K DA,DIR,DIC,DIE,DR
 S REASDA=0
 F  S REASDA=$O(^BAREDI("I",DUZ(2),IMPDA,30,CLMDA,4,REASDA)) Q:'REASDA  D
 .S DA(2)=IMPDA
 .S DA(1)=CLMDA
 .S DIE="^BAREDI(""I"","_DUZ(2)_","_DA(2)_",30,"_DA(1)_",4,"
 .S DA=REASDA
 .S DR=".01///@"
 .D ^DIE
 K DA,DR,DIE,DIC,DIR
 S DIE=$$DIC^XBDIQ1(90056.0205)
 S DR=""  ;bar*1.8*20 REQ4
 S IENS=CLMDA_","_IMPDA_","  ;bar*1.8*20 REQ4
 I $$GET1^DIQ(90056.0205,IENS,71)="" S DR=".02///C"  ;'STATUS' FLD CLM UNMATCHED  ;bar*1.8*20 REQ4
 S DR=DR_";501///@"  ;'POST CLM AS TYPE'
 S DR=DR_";601///@"  ;'PYMT CRDT APPLIED TO'
 S DR=DR_";602///@"  ;'PYMT CRDT APPLIED FROM'
 S DA(1)=IMPDA
 S DA=CLMDA
 D ^DIE
 K DA,DR,DIE,DIC,DIR
 Q
