ABMEFOVR ; IHS/SD/SDR - Setup 837 Form Override ;   
 ;;2.6;IHS 3P BILLING SYSTEM;**6,8,9,10**;NOV 12, 2009;Build 300
 ;
START ;start
 K DIC,ABMNM
 W !
 D INS Q:'$G(ABMINS)
 D FORM Q:'$G(ABMFORM)
STARTA D VTYP Q:'$G(ABMVTYP)
 D LOOP Q:($G(ABMLOOP)="")
 D SEND Q:$G(ABMSEND)=""
 D SEGMENT Q:($G(ABMSEG)="")
 I ABMSEND="N",(ABMSEG="REF") D NOSEND Q
 D ELEMENT Q:($G(ABMELE)="")
 ;
 S ABMNM="FM"_ABMFORM_" "_ABMLOOP_" "_ABMELE_" "_ABMVTYP
 S:ABMVTYP=9999 ABMVTYP=""
 D FILE
 K ABMINS,ABMFORM,ABMLOOP,ABMSEG,ABMELE,ABMANS,ABMDA,ABMEXIST,ABMVTYP,ABMSEND,ABMNM
 Q
INS ;select insurer
 ;S DIC="^ABMNINS(DUZ(2),"  ;abm*2.6*9 NOHEAT
 S DIC="^AUTNINS("  ;abm*2.6*9 NOHEAT
 S DIC(0)="AEMQ"
 D ^DIC Q:+Y<0
 S ABMINS=+Y
 Q
FORM ;select form
 S DIC="^ABMDEXP(",DIC(0)="AEMQ"
 S DIC("S")="I +Y=31!(+Y=32)!(+Y=33)"
 D ^DIC K DIC
 Q:+Y<0
 S ABMFORM=+Y
 Q
VTYP ;select visit type
 S DIC="^ABMDVTYP("
 S DIC(0)="AEMQ"
 S DIC("A")="Enter visit type, or leave blank for all. "
 D ^DIC
 I X="" D
 .S Y=9999
 .W "ALL"
 Q:+Y<0
 S ABMVTYP=+Y
 Q
LOOP ;select loop
 S DIR(0)="S^"_$P($T(LOOPS),";;",2)
 S DIR("A")="Select Loop"
 D ^DIR K DIR
 Q:'+Y
 S ABMLOOP=Y(0)
 Q
SEND ;select send/don't send
 S DIR(0)="S^S:Send;N:Don't Send"
 S DIR("A")="Select"
 D ^DIR K DIR
 S ABMSEND=Y
 Q
SEGMENT ;select segment
 S DIR(0)="S^"_$P($T(@ABMLOOP),";;",2)
 S DIR("A")="Select Segment"
 D ^DIR K DIR
 Q:'+Y
 S ABMSEG=Y(0)
 Q
ELEMENT ;select element
 D ^XBFMK
 S DIR(0)="SO^"_$P($T(@ABMSEG),";;",2)
 S DIR("A")="Select Element"
 D ^DIR K DIR
 Q:'+Y
 S ABMELE=Y(0)
 I ABMSEND="S"&(+$O(^ABMNINS(DUZ(2),ABMINS,2.5,"ASEND",ABMFORM,ABMLOOP,ABMSEG,ABMELE,"N",0))'=0) D
 .D ^XBFMK
 .S DA(1)=ABMINS
 .S DA=$O(^ABMNINS(DUZ(2),ABMINS,2.5,"ASEND",ABMFORM,ABMLOOP,ABMSEG,ABMELE,"N",0))
 .S DIK="^ABMNINS(DUZ(2),"_DA(1)_",2.5,"
 .D ^DIK
 Q
FILE ;
 S ABMEXIST=$G(^ABMNINS(DUZ(2),ABMINS,2.5,"A837",ABMFORM,ABMLOOP,ABMSEG,ABMELE,+ABMVTYP)) D
 .Q:ABMEXIST=""
 .W !!,"Current Value: ",ABMEXIST
 .W !,"Visit Type: ",$S(ABMVTYP="":"ALL",1:ABMVTYP)
 D ^XBFMK
 S DA(1)=ABMINS
 S DIC="^ABMNINS(DUZ(2),"_DA(1)_",2.5,"
 S DIC("P")=$P(^DD(9002274.09,2.5,0),U,2)
 S X=ABMNM
 S DIC(0)="LXE" D ^DIC
 Q:+Y<0
 S DA=+Y
 S ABMDA=DA
 S DIE=DIC
 S ABMANS=1
 I $P(Y,U,3)'=1 D
 .S DIR(0)="S^1:ADD/EDIT;2:DELETE"
 .S DIR("A")="Add/Edit or Delete Entry?"
 .S DIR("B")="ADD/EDIT"
 .D ^DIR K DIR
 .Q:'Y  S ABMANS=Y
 I ABMANS=1 D
 .S DR=".02///"_ABMFORM_";.03///"_ABMLOOP_";.04///"_ABMSEG_";.05///"_ABMELE_";.06///"_ABMVTYP_";.08///"_ABMSEND
 .I ABMSEND="S" S DR=DR_";.07//"
 S:ABMANS=2 DR=".01///@"
 D ^DIE
 I ABMANS=2 D
 .W !,"Entry Deleted.",!
 .D EOP^ABMDUTL(1)
 I ABMNM["ISA"!(ABMNM["GS")!(ABMNM["NM")!(ABMNM["REF") D
 .K DIR
 .S DIR(0)="Y"
 .S DIR("A")="EDIT ANOTHER SEGMENT?"
 .S DIR("B")="N"
 .D ^DIR
 .K DIR
 .I Y=1 K ABMLOOP,ABMSEG,ABMELE,ABMVTYP G STARTA
 Q
NOSEND ;
 S ABMNM="FM"_ABMFORM_" "_ABMLOOP_" "_ABMSEG_" DON'T SEND"
 S:ABMVTYP=9999 ABMVTYP=""
 S ABMELE=""
 D ^XBFMK
 S DA(1)=ABMINS
 S DIC="^ABMNINS(DUZ(2),"_DA(1)_",2.5,"
 S DIC("P")=$P(^DD(9002274.09,2.5,0),U,2)
 S X=ABMNM
 S DIC(0)="LXE" D ^DIC
 Q:+Y<0
 S DA=+Y
 S ABMDA=DA
 S DIE=DIC
 S DR=".02///"_ABMFORM_";.03///"_ABMLOOP_";.04///"_ABMSEG_";.05///"_ABMELE_";.06///"_ABMVTYP_";.08///"_ABMSEND
 D ^DIE
 Q
 ;
LOOPS ;;1:HEADER;2:1000A;3:1000B;4:2010AA;5:2010BB;6:2000B
 ;
HEADER ;;1:ISA;2:GS
1000A ;;1:NM1
1000B ;;1:NM1
2010AA ;;1:NM1;2:REF
2010BB ;;1:NM1
2000B ;;1:SBR
 ;
ISA ;;1:ISA02;2:ISA03;3:ISA04;4:ISA05;5:ISA06;6:ISA07;7:ISA08;8:ISA14;9:ISA15
 ;;1:ISA02;2:ISA03;3:ISA04;4:ISA05;5:ISA06;6:ISA07;7:ISA08;8:ISA15  ;old line abm*2.6*10 HEAT74624
 ;;1:ISA03;2:ISA04;3:ISA05;4:ISA06;5:ISA07;6:ISA08;7:ISA15  ;old line ABM*2.6*8
GS ;;1:GS02;2:GS03
NM1 ;;1:NM103;2:NM108;3:NM109
REF ;;1:REF01;2:REF02
SBR ;;1:SBR09
