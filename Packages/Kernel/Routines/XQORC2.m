XQORC2 ; COMPILED XREF FOR FILE #101.01 ; 11/17/04
 ; 
 S DA(1)=DA S DA=0
A1 ;
 I $D(DIKILL) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^ORD(101,DA(1),10,DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^ORD(101,DA(1),10,DA,0))
 S X=$P(DIKZ(0),U,2)
 I X'="" D REDOX^XQORD101
 S X=$P(DIKZ(0),U,3)
 I X'="" D REDOX^XQORD101
 S X=$P(DIKZ(0),U,5)
 I X'="" D REDOX^XQORD101
 S X=$P(DIKZ(0),U,6)
 I X'="" D REDOX^XQORD101
 S X=$P(DIKZ(0),U,1)
 I X'="" K ^ORD(101,DA(1),10,"B",$E(X,1,30),DA)
 S X=$P(DIKZ(0),U,1)
 I X'="" D REDOX^XQORD101
 S X=$P(DIKZ(0),U,1)
 I X'="" K ^ORD(101,"AD",$E(X,1,30),DA(1),DA)
 G:'$D(DIKLM) A Q:$D(DIKILL)
END G ^XQORC3
