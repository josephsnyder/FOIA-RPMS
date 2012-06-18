SROATM2 ;BIR/MAM - NON CARDIAC TRANSMISSION (CONT) ; [ 05/25/99  11:20 AM ]
 ;;3.0; Surgery ;**38,39,45,47,57,60,62,68,81,88,97**;24 Jun 93
 ;
 ;** NOTICE: This routine is part of an implementation of a nationally
 ;**         controlled procedure.  Local modifications to this routine
 ;**         are prohibited.
 ;
 K SRA F I=.2,.3,201:1:208 S SRA(I)=$G(^SRF(SRTN,I))
 S SRA("CON")=$P($G(^SRF(SRTN,"CON")),"^") I SRA("CON"),$P($G(^SRF(SRA("CON"),30)),"^")!($P($G(^SRF(SRA("CON"),31)),"^",8)) S SRA("CON")=""
 F I=1.1,208.1 S SRA(I)=$G(^SRF(SRTN,I))
 S SHEMP=SHEMP_$J($E($P(SRA(.2),"^",2),1,12),12)_$J($E($P(SRA(.2),"^",3),1,12),12)_"    "_$J($P($G(^SRF(SRTN,200)),"^",54),2)
 S SRICD=$P($G(^SRF(SRTN,34)),"^",2) S:SRICD SRICD=$P(^ICD9(SRICD,0),"^") S SHEMP=SHEMP_$J(SRICD,6)_$J($P(SRA(205),"^"),4)_$J($E($P(SRA(205),"^",2)),1)
 S NYUK=$P($G(^DPT(DFN,.35)),"^"),NYUK=$E(NYUK,1,7),SHEMP=SHEMP_$J(NYUK,7)
 S NYUK="N",SRET=0 F  S SRET=$O(^SRF(SRTN,29,SRET)) Q:'SRET  S CASE=$P(^SRF(SRTN,29,SRET,0),"^") I $P($G(^SRF(CASE,.2)),"^",10) S NYUK="Y" Q
 S SHEMP=SHEMP_NYUK_$J($P($G(^SRF(SRTN,.4)),"^",7),1)_$J($E($P($G(^SRF(SRTN,0)),"^",12)),1)_$J($P($G(^SRF(SRTN,0)),"^",3),1)
 S SRATT=$P($G(^SRF(SRTN,.1)),"^",16) I SRATT="" D RS^SROQ0A
 S SHEMP=SHEMP_SRATT
 S (SRADMIT,SRADMT)=0 I $P($G(^SRF(SRTN,0)),"^",12)="O" D ADM^SROQ0A S SRADMIT=$S(SRADMT=0:"0",1:"1")
 S SHEMP=SHEMP_SRADMIT D OCC^SROATMNO S SHEMP=SHEMP_SRTMP_$J(SROCTYPE,1)
 S ^TMP("SRA",$J,SRAMNUM,SRACNT,0)=SHEMP,SHEMP=$E(SHEMP,1,11)_"  4",SRACNT=SRACNT+1
 F MOE=1:1:6 S CPT(MOE)=""
 S (X,CNT)=0 F  S X=$O(^SRF(SRTN,29,X)) Q:'X!(CNT=6)  I $P(^SRF(SRTN,29,X,0),"^",3)="R" S NYUK=$P(^SRF(SRTN,29,X,0),"^") D RETURN
 S SHEMP=SHEMP_$J(CNT,2)
 S SHEMP=SHEMP_$J(CPT(1),5)_$J(CPT(2),5)_$J(CPT(3),5)_$J(CPT(4),5)_$J(CPT(5),5)_$J(CPT(6),5)
 F MOE=1:1:6 S CPT(MOE)=""
 S (X,CNT)=0 F  S X=$O(^SRF(SRTN,29,X)) Q:'X!(CNT=6)  I $P(^SRF(SRTN,29,X,0),"^",3)'="R" S NYUK=$P(^SRF(SRTN,29,X,0),"^") D RETURN
 S SHEMP=SHEMP_$J(CNT,2)
 S SHEMP=SHEMP_$J(CPT(1),5)_$J(CPT(2),5)_$J(CPT(3),5)_$J(CPT(4),5)_$J(CPT(5),5)_$J(CPT(6),5)
 S SRSDATE=$P(^SRF(SRTN,0),"^",9) D OCC^SROAUTL0 I $D(SRO) S SHEMP=SHEMP_$E(SRO,1,112)
 S ^TMP("SRA",$J,SRAMNUM,SRACNT,0)=SHEMP,SHEMP=$E(SHEMP,1,11)_"  5",SRACNT=SRACNT+1
 S NYUK=$P(SRA(205),"^",6) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",7) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",8) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",10) D ONE S SHEMP=SHEMP_MOE
 S NYUK="N" I $P(SRA(205),"^",11)="Y"!($P(SRA(205),"^",28)="Y") S NYUK="Y"
 D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",12) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",13) D ONE S SHEMP=SHEMP_MOE,NYUK=$P($G(SROOC(29)),U)
 I NYUK["NO ICD9" S SHEMP=SHEMP_$J(" ",6)
 E  S SHEMP=SHEMP_$J(NYUK,6)
 S NYUK=$P(SRA(205),"^",16) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",17) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",18) D ONE S SHEMP=SHEMP_MOE,NYUK=$P($G(SROOC(31)),U)
 I NYUK["NO ICD9" S SHEMP=SHEMP_$J(" ",6)
 E  S SHEMP=SHEMP_$J(NYUK,6)
 S NYUK="N",SRCVA=$P(SRA(205),"^",21),SRST=$P(SRA(208),"^",8) I SRCVA="Y"!(SRST="Y") S NYUK="Y"
 D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",22) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",23) D ONE S SHEMP=SHEMP_MOE,NYUK=$P($G(SROOC(30)),U)
 I NYUK["NO ICD9" S SHEMP=SHEMP_$J(" ",6)
 E  S SHEMP=SHEMP_$J(NYUK,6)
 S NYUK=$P(SRA(205),"^",26) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",27) D ONE S SHEMP=SHEMP_MOE_" " S NYUK=$P($G(SROOC(32)),U)
 I NYUK["NO ICD9" S SHEMP=SHEMP_$J(" ",6)
 E  S SHEMP=SHEMP_$J(NYUK,6)
 S NYUK=$P(SRA(205),"^",31) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",32) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",33) D ONE S SHEMP=SHEMP_MOE,NYUK=$P(SRA(205),"^",34) D ONE S SHEMP=SHEMP_MOE
 S NYUK=$P(SRA(205),"^",35) D ONE S SHEMP=SHEMP_MOE,NYUK=$P($G(SROOC(21)),U)
 I NYUK["NO ICD9" S SHEMP=SHEMP_$J(" ",6)
 E  S SHEMP=SHEMP_$J(NYUK,6)
 I $D(SRO) S SHEMP=SHEMP_$E(SRO,113,182)
 S ^TMP("SRA",$J,SRAMNUM,SRACNT,0)=SHEMP,SHEMP=$E(SHEMP,1,11)_"  6",SRACNT=SRACNT+1
 S SHEMP=SHEMP_$J($P(SRA(201),"^"),5)_$J($P(SRA(202),"^"),7)_$J($P(SRA(201),"^",8),4)_$J($P(SRA(202),"^",8),7)_$J($P(SRA(201),"^",9),5)_$J($P(SRA(202),"^",9),7)_$J($P(SRA(201),"^",5),5)_$J($P(SRA(202),"^",5),7)
 S SHEMP=SHEMP_$J($P(SRA(201),"^",4),4)_$J($P(SRA(202),"^",4),7)
 S ^TMP("SRA",$J,SRAMNUM,SRACNT,0)=SHEMP,SHEMP=$E(SHEMP,1,11)_"  7",SRACNT=SRACNT+1
 S SHEMP=SHEMP_$J($E($P(SRA(208),"^",14),1,12),12)_"  "_$J($P($G(SRA(208)),"^",11),2)_$J($P($G(SRA(208)),"^",10),2)_$J($E($P($G(SRA(208)),"^",9),1,4),4)
 S SHEMP=SHEMP_$J($E($P(SRA(208),"^",15),1,12),12)_"  "_$J($P($G(SRA(.3)),"^",9),2)_$J($P($G(SRA(206)),"^",3),2)_$J($P($G(SRA(206)),"^",4),2)_$J($P($G(SRA(206)),"^",8),2)_$J($G(SRTRAUMA),2)
 S SHEMP=SHEMP_$J($E($P(SRA(208),"^",16),1,12),12)_$J($E($P(SRA(208),"^",17),1,12),12)_$J($E($P(SRA(.2),"^",12),1,12),12)_$J($E($P(SRA(.2),"^"),1,12),12)
 S SHEMP=SHEMP_$J($E($P(SRA(1.1),"^",8),1,12),12)_$J($E($P(SRA(208.1),"^"),1,12),12)_$J($E($P(SRA(208.1),"^",2),1,12),12)_$J($E($P(SRA(208.1),"^",3),1,3),3)_$J(SRA("CON"),10)_$J($E($P(SRA(.2),"^",4),1,12),12)
 S ^TMP("SRA",$J,SRAMNUM,SRACNT,0)=SHEMP,SHEMP=$E(SHEMP,1,11)_"  8",SRACNT=SRACNT+1
 S SHEMP=SHEMP_$J($P(SRA(201),"^",11),5)_$J($P(SRA(202),"^",11),7)_$J($P(SRA(201),"^",12),5)_$J($P(SRA(202),"^",12),7)_$J($P(SRA(201),"^",13),4)_$J($P(SRA(202),"^",13),7)_$J($P(SRA(201),"^",14),4)_$J($P(SRA(202),"^",14),7)
 S SHEMP=SHEMP_$J($P(SRA(201),"^",15),5)_$J($P(SRA(202),"^",15),7)
 S ^TMP("SRA",$J,SRAMNUM,SRACNT,0)=SHEMP,SHEMP=$E(SHEMP,1,11)_"  9",SRACNT=SRACNT+1
 D ^SROATM3
 Q
ONE S MOE=$S(NYUK="NS":"S",NYUK="":" ",1:NYUK)
 Q
RETURN ; CPT of Returns
 S Y=$P(^SRF(NYUK,"OP"),"^",2) I Y S CNT=CNT+1,CPT(CNT)=$P($$CPT^ICPTCOD(Y),"^",2)
 Q
