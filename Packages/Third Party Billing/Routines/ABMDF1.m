ABMDF1 ; IHS/ASDST/DMJ - Set UB82 Print Array ; 
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;Original;TMD;
 ;
 K ABMP S U="^",ABMP("XMIT")=0,ABMP("EXP")=1,ABMY("TOT")="0^0^0"
BDFN S ABMY("N")=0 F  S ABMY("N")=$O(ABMY(ABMY("N"))) Q:'ABMY("N")  D
 .S ABMP("BDFN")=0 F  S ABMP("BDFN")=$O(ABMY(ABMY("N"),ABMP("BDFN"))) Q:'ABMP("BDFN")  D
 ..Q:'$D(^ABMDBILL(DUZ(2),ABMP("BDFN"),0))
 ..D ENT,^ABMDF1X
 ..S $P(ABMY("TOT"),U)=$P(ABMY("TOT"),U)+1
 ..D:$D(ABMR)=10 UB82
XMIT ..I ABMP("XMIT")=0 S ABM("XM")="" F  S ABM("XM")=$O(^ABMDTXST(DUZ(2),"B",DT,ABM("XM"))) Q:'ABM("XM")  D  Q:ABMP("XMIT")
 ...Q:'$D(^ABMDTXST(DUZ(2),ABM("XM"),0))  Q:$P(^(0),U,2)'=ABMP("EXP")
 ...I $D(ABMY("TYP")),$P(^ABMDTXST(DUZ(2),ABM("XM"),0),U,3)=ABMY("TYP") S ABMP("XMIT")=ABM("XM")
 ...I $D(ABMY("INS")),$P(^ABMDTXST(DUZ(2),ABM("XM"),0),U,4)=ABMY("INS") S ABMP("XMIT")=ABM("XM")
 ..I '+ABMP("XMIT") S DIC="^ABMDTXST(DUZ(2),",DIC(0)="L",X=DT,DIC("DR")=".02////1;.07////1;.08////1;"_$S($D(ABMY("TYP")):".03////"_ABMY("TYP"),$D(ABMY("INS")):".04////"_$P(ABMY("INS"),U),1:".03////A")_";.05////"_DUZ
 ..I  K DD,DO D FILE^DICN S ABMP("XMIT")=+Y
 ..S DIE="^ABMDBILL(DUZ(2),",DA=ABMP("BDFN"),DR=".04////B;.16////A;.17////"_ABMP("XMIT") D ^ABMDDIE Q:$D(ABM("DIE-FAIL"))
 ..K ^ABMDBILL(DUZ(2),"AS",+^ABMDBILL(DUZ(2),ABMP("BDFN"),0),"A",ABMP("BDFN"))
 ..S ABM=ABMP("BDFN"),ABM("L")=ABMP("XMIT") K ABMP S ABMP("XMIT")=ABM("L"),ABMP("BDFN")=ABM
 G XIT
 ;
UB82 ;EP for printing export array
 S ABMR="" F ABMR("I")=17:1:39 S ABMR=$O(ABMR(ABMR)) Q:'ABMR  D
 .S ABMF(ABMR("I"))=ABMR(ABMR)
 .K ABMR(ABMR)
 .Q
 I ABMR("I")=39,+ABMR D ^ABMDF1X G UB82
 F ABMR("I")=ABMR("I"):1:48 K ABMF(ABMR("I"))
 I ABMR("I")<39 S ABMF(ABMR("I")+1)=ABMR("TOT")
 E  S ABMF(39)=ABMR("TOT")
 D ^ABMDF1X
 Q
 ;
ENT ;EP for setting up export array
 K ABMF,ABM,ABMU,ABMR,ABMS
 S:'$D(ABMY("TOT")) ABMY("TOT")="0^0^0"
 S ABMP("B0")=^ABMDBILL(DUZ(2),ABMP("BDFN"),0),ABMP("INS")=$P(ABMP("B0"),U,8) Q:'ABMP("INS")
 S ABMP("PDFN")=$P(ABMP("B0"),U,5),ABMP("LDFN")=$P(ABMP("B0"),U,3),ABMP("VTYP")=$P(ABMP("B0"),U,7) Q:'ABMP("PDFN")!('+ABMP("LDFN"))
 S ABMP("VDT")=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),7),U)
 S (ABMV("X1"),ABMV("X2"),ABMV("X3"))=""
 D PAT^ABMDE1X,REMPL^ABMDE1X1,LOC^ABMDE1X1 K ABME
 ;
LOC S ABMF(1)=$P($P(ABMV("X1"),U),";",2)
 I $P(ABMV("X1"),U,2)]"" S ABMF(2)=$P(ABMV("X1"),U,2),ABMF(3)=$P(ABMV("X1"),U,3),ABMF(4)=$P(ABMV("X1"),U,4)
 E  S ABMF(2)=$P(ABMV("X1"),U,3),ABMF(3)=$P(ABMV("X1"),U,4),ABMF(4)=$P(ABMV("X1"),U,5)
BNUM S $P(ABMF(2),U,3)=$P(ABMP("B0"),U,1)_$S($P($G(^ABMDPARM(DUZ(2),1,2)),U,4)]"":"-"_$P(^(2),U,4),1:"") I $P($G(^(3)),U,3),$P($G(^AUPNPAT(ABMP("PDFN"),41,ABMP("LDFN"),0)),U,2) S $P(ABMF(2),U,3)=$P(ABMF(2),U,3)_" "_$P(^(0),U,2)
BTYPE S $P(ABMF(2),U,4)=$S($P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,11):$P($G(^ABMDCODE($P(^(0),U,11),0)),U),1:$P(ABMP("B0"),U,2))
INSNUM S ABM("INUM")=$P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,8)
 S:ABM("INUM")="" ABM("INUM")=$P($G(^AUTNINS(ABMP("INS"),15,ABMP("LDFN"),0)),U,2)
 S $P(ABMF(4),U,$S($P($G(^AUTNINS(ABMP("INS"),2)),U)="D":5,1:2))=ABM("INUM")
TAX S $P(ABMF(4),U,3)=$P(ABMV("X1"),U,6)
 ;
 ; Line 6
PNODES S ABM("P0")=^DPT(ABMP("PDFN"),0)
SSN I $P(ABM("P0"),U,9)]"" S $P(ABMF(12),U,12)=$S($P(ABM("P0"),U,9)'["-":$E($P(ABM("P0"),U,9),1,3)_"-"_$E($P(ABM("P0"),U,9),4,5)_"-"_$E($P(ABM("P0"),U,9),6,9),1:$P(ABM("P0"),U,9))
NAME S ABMF(6)=$P(ABM("P0"),U)
ADDRESS S $P(ABMF(6),U,2)=$P(ABMV("X2"),U,3)_" "_$P(ABMV("X2"),U,4)
 ;
 ; Line 8
DOB S ABMF(8)=$P(ABMV("X2"),U,6)
SEX S $P(ABMF(8),U,2)=$P(ABMV("X2"),U,2)
MS S $P(ABMF(8),U,3)=$P(ABMV("X2"),U,7)
 K ABM("P0")
 ;
 G ^ABMDF1A
 ;
XIT K ABM,ABMV,ABMF
 Q
