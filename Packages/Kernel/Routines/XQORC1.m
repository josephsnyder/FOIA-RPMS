XQORC1 ; COMPILED XREF FOR FILE #101 ; 11/17/04
 ; 
 S DIKZK=2
 S DIKZ(0)=$G(^ORD(101,DA,0))
 S X=$P(DIKZ(0),U,2)
 I X'="" S ORKX=X D UP^XQORDD1 K ^ORD(101,"C",$E(X,1,63),DA) S X=ORKX K ORKX
 S X=$P(DIKZ(0),U,2)
 I X'="" D REDO^XQORD101
 S X=$P(DIKZ(0),U,2)
 I X'="" D K12^XQORDD1
 S DIKZ(5)=$G(^ORD(101,DA,5))
 S X=$P(DIKZ(5),U,1)
 I X'="" K ^ORD(101,"AE",$E(X,1,30),DA)
 S DIKZ(4)=$G(^ORD(101,DA,4))
 S X=$P(DIKZ(4),U,1)
 I X'="" D REDO^XQORD101
 S DIKZ(99)=$G(^ORD(101,DA,99))
 S X=$P(DIKZ(99),U,1)
 I X'="" D KILL^XQORD101
 S DIKZ(770)=$G(^ORD(101,DA,770))
 S X=$P(DIKZ(770),U,1)
 I X'="" N HL770 S HL770=$G(^ORD(101,DA,770)) K:$P(HL770,"^",3)&($P(HL770,"^",4))&($P(HL770,"^",10)) ^ORD(101,"AHL1",X,$P(HL770,"^",3),$P(HL770,"^",4),$P(HL770,"^",10),DA)
 S X=$P(DIKZ(770),U,1)
 I X'="" N HL770 S HL770=$G(^ORD(101,DA,770)) K:$P(HL770,"^",3)&($P(HL770,"^",10)) ^ORD(101,"AHL21",X,$P(HL770,"^",3),$P(HL770,"^",10),DA)
 S X=$P(DIKZ(770),U,2)
 I X'="" K ^ORD(101,"AHL2",$E(X,1,30),DA)
 S X=$P(DIKZ(770),U,3)
 I X'="" N HL770 S HL770=$G(^ORD(101,DA,770)) K:$P(HL770,"^")&($P(HL770,"^",4))&($P(HL770,"^",10)) ^ORD(101,"AHL1",$P(HL770,"^"),X,$P(HL770,"^",4),$P(HL770,"^",10),DA)
 S X=$P(DIKZ(770),U,3)
 I X'="" N HL770 S HL770=$G(^ORD(101,DA,770)) K:$P(HL770,"^")&($P(HL770,"^",10)) ^ORD(101,"AHL21",$P(HL770,"^"),X,$P(HL770,"^",10),DA)
 S X=$P(DIKZ(770),U,4)
 I X'="" N HL770 S HL770=$G(^ORD(101,DA,770)) K:$P(HL770,"^")&($P(HL770,"^",3))&($P(HL770,"^",10)) ^ORD(101,"AHL1",$P(HL770,"^"),$P(HL770,"^",3),X,$P(HL770,"^",10),DA)
 S X=$P(DIKZ(770),U,10)
 I X'="" N HL770 S HL770=$G(^ORD(101,DA,770)) K:$P(HL770,"^")&($P(HL770,"^",3))&($P(HL770,"^",4)) ^ORD(101,"AHL1",$P(HL770,"^"),$P(HL770,"^",3),$P(HL770,"^",4),X,DA)
 S X=$P(DIKZ(770),U,10)
 I X'="" N HL770 S HL770=$G(^ORD(101,DA,770)) K:$P(HL770,"^")&($P(HL770,"^",3)) ^ORD(101,"AHL21",$P(HL770,"^"),$P(HL770,"^",3),X,DA)
 S X=$P(DIKZ(0),U,1)
 I X'="" K ^ORD(101,"B",$E(X,1,63),DA)
END G ^XQORC2
