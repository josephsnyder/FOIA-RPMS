ABMDBDIC ; IHS/ASDST/DMJ - Bill Selection ;  
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;
 ;IHS/DSD/MRS - 5/21/1999 - NOIS QDA-599-130046 Patch 3 #1
 ;     Added check for missing insurer data
 ;
 ;IHS/PIMC/JLG - 8/20/02 - V2.5 P2
 ;     Modified so IQMG option would only look at one bill.  Thanks to
 ;     Jim Gray for the code.
 ;
 ; IHS/SD/SDR - v2.5 p11 - Adrian supplied the following changes
 ;
 ; IHS/SD/SDR - v2.5 p12 - Added code to look up by UFMS invoice number
 ;   using x-ref UINV
 ;
BILL ;EP - SELECT BILL
 K %P,DIC,ABMP("BDFN"),ABM
 S DIR("A")="Select BILL or PATIENT"
 S DIR("?")="Enter either the Bill Number or a Patient Identifier (Name, HRN, SSN, DOB)"
 W !
 S DIR(0)="FO" D ^DIR K DIR
 Q:$D(DIRUT)
 S ABM("INPUT")=Y
 I Y=" " D  Q
 .S DIC="^ABMDBILL(DUZ(2),",DIC(0)="EMQ",X=Y
 .D ^DIC Q:+Y<0
 .S ABMP("BDFN")=+Y
 I ($D(^ABMDBILL(DUZ(2),"B",Y))&(Y'=+Y))!($D(^ABMDBILL(DUZ(2),"UINV",Y))) D
 .S X=Y
 .S DIC="^ABMDBILL(DUZ(2),",DIC(0)="EM" D ^DIC
 .I +Y>0 S ABMP("BDFN")=+Y
 I $G(ABMP("BDFN")) K ABM Q
 I Y=+Y,$D(^ABMDBILL(DUZ(2),"B",Y)) D
 .S X=Y
 .S DIC="^ABMDBILL(DUZ(2),",DIC(0)="EM" D ^DIC
 .I +Y>0 D
 ..S ABMP("BDFN")=+Y
 ..K DIR,DIE,DIC,X,Y,DA
 ..S DIR(0)="Y"
 ..S DIR("A")="Correct Bill",DIR("B")="YES" D ^DIR K DIR
 ..I Y'=1 K ABMP("BDFN")
 I $G(ABMP("BDFN")) K ABM Q
 S ABM("STATUS")=$P(^DD(9002274.4,.04,0),"^",3)
NUM ;NUMBER LOOKUP
 S Y=ABM("INPUT")
 I +Y D
 .S J=+Y_" "
 .S ABM("CNT")=0
 .F  S J=$O(^ABMDBILL(DUZ(2),"B",J)) Q:J'[+ABM("INPUT")!($G(ABMP("BDFN")))  D
 ..S I=$O(^ABMDBILL(DUZ(2),"B",J,0))
 ..S ABMP("PDFN")=$P(^ABMDBILL(DUZ(2),I,0),"^",5)
 ..D ID
 .D:(ABM("CNT")#5) SEL
 I $G(ABMP("BDFN")) K ABM Q
PAT ;PATIENT LOOKUP     
 S X=ABM("INPUT"),DIC="^AUPNPAT(",DIC(0)="EMQ",AUPNLK("ALL")=1
 D ^DIC
 I +Y<0 G BILL
 S ABMP("PDFN")=+Y,ABM("P0")=^DPT(ABMP("PDFN"),0)
 S $P(ABM("="),"=",80)=""
 D PAT^ABMDUTL(ABMP("PDFN"))
 S I="",ABM("CNT")=0 F  S I=$O(^ABMDBILL(DUZ(2),"D",ABMP("PDFN"),I),-1) Q:'I!($G(ABMP("BDFN")))!($D(DIRUT))  D ID
 D:(ABM("CNT")#5) SEL
 I '$G(ABMP("BDFN")) G BILL
 K ABM Q
ID ;BILL IDENTIFIERS
 I '(ABM("CNT")#5) D PAT^ABMDUTL(ABMP("PDFN"))
 S ABM("CNT")=ABM("CNT")+1
 S ABM("CNT",ABM("CNT"))=I
 W !!,"(",ABM("CNT"),")"
 S ABM("ZERO")=^ABMDBILL(DUZ(2),I,0) N J F J=1:1:12 S ABM(J)=$P(ABM("ZERO"),"^",J)
 S ABM(7,1)=$P($G(^ABMDBILL(DUZ(2),I,7)),"^",1),ABM(2,1)=$P($G(^(2)),"^",1)
 S ABM(4)=$P(ABM("STATUS"),ABM(4)_":",2),ABM(4)=$P(ABM(4),";",1)
 W ?5,"Bill# ",ABM(1)
 W ?20,$$SDT^ABMDUTL(ABM(7,1))
 ;Realignment of bill inquiry
 W ?32,$E($P($G(^ABMDVTYP(+ABM(7),0)),U),1,17)
 ;Realignment of bill inquiry
 W ?51,$E($P($G(^DIC(40.7,+ABM(10),0)),U),1,13)
 W ?67,$P($G(^AUTTLOC(+ABM(3),0)),"^",2)
 W !,?6,$P($G(^ABMDEXP(+ABM(6),0)),"^",1)
 ;realignment of Bill Inquiry
 W ?22,$E(ABM(4),1,15)
 W ?37,$P($G(^AUTNINS(+ABM(8),0)),"^",1)
 W ?70,$J($FN(ABM(2,1),",",2),10)
 I '(ABM("CNT")#5) D SEL
 Q
SEL ;SELECT
 F  W ! Q:$Y+4>IOSL
 S DIR(0)="NAO^1:"_ABM("CNT"),DIR("A")="Select 1 to "_ABM("CNT")_": " D ^DIR K DIR
 I Y S ABMP("BDFN")=ABM("CNT",Y)
 I Y="",'$D(DTOUT) K DIRUT
 Q
 ;
BENT ;EP - for doing Bill File lookup with DIC variables
 K ABMP("BDFN")
 S AUPNLK("ALL")=1
 S DIC("W")="S ABM(0)=^(0),ABM(2)=+$G(^(2)),ABM(7)=$S(+$G(^(7)):^(7),1:+$G(^(6))) D DICW^ABMDBDIC"
 D ^DIC K DIC
 G XIT:X=""!$D(DUOUT)!$D(DTOUT)
 I X="?" W !!,"Enter either the Bill Number or a Patient Identifier (Name, HRN, SSN, DOB)"
 G BENT:+Y<1 S ABMP("BDFN")=+Y
 G XIT
 ;
DICW ;EP - for displaying bill identifiers
 I $G(DZ)["?",$P(ABM(0),U,5),$D(^DPT($P(ABM(0),U,5),0)) S ABMDPT=^(0) D
 .W ?12,$P(ABMDPT,U)
 .W ?46,$P(ABMDPT,U,2)," "
 .W $$HDT^ABMDUTL($P(ABMDPT,U,3))
 .W " ",$P(ABMDPT,U,9)
 I  I $G(DUZ(2)),$D(^AUPNPAT($P(ABM(0),U,5),41,DUZ(2),0)) W ?68,$P($G(^AUTTLOC(DUZ(2),0)),U,7)," ",$P(^AUPNPAT($P(ABM(0),U,5),41,DUZ(2),0),U,2)
 I $G(X)'=$P(ABM(0),U,5)!($G(DZ)["?") W !
 W ?17,"Visit: ",$$HDT^ABMDUTL(ABM(7))," "
 I $P(ABM(0),U,7) W $E($P($G(^ABMDVTYP($P(ABM(0),U,7),0)),U),1,14)
 I $P(ABM(0),U,10),$P(ABM(0),U,3) W ?49,$E($P($G(^DIC(40.7,$P(ABM(0),U,10),0)),U),1,17),?68,$E($P($G(^AUTTLOC($P(ABM(0),U,3),0)),U,2),1,12)
 I $P(ABM(0),U,8) W !?20,"Bill: ",$P(^AUTNINS($P(ABM(0),U,8),0),U)
 I $P(ABM(0),U,6) W ?57,$P($G(^ABMDEXP($P(ABM(0),U,6),0)),U)
 W ?68,$J($FN(ABM(2),",",2),10)
 S DIW=1
 I $G(DZ)["?" W !
 K ABM(0),ABM(7)
 Q
 ;
XIT K ABM
 Q
 ;
MULT ;EP for Selecting Multiple Bills
 K DIC S ABM("C")=0,DIC="^ABMDBILL(DUZ(2),",DIC(0)="QEAM" W !
 F ABM=1:1 W ! D  Q:X=""!$D(DUOUT)!$D(DTOUT)
SELO .S ABM("E")=$E(ABM,$L(ABM)),DIC("A")="Select "_ABM_$S(ABM>3&(ABM<21):"th",ABM("E")=1:"st",ABM("E")=2:"nd",ABM("E")=3:"rd",1:"th")_" BILL: ",DIC(0)="QEAM" D ^DIC
 .Q:X=""!$D(DUOUT)!$D(DTOUT)
 .I +Y<1 G SELO
 .S ABMM(+Y)=""
 K DIC
 G XIT
