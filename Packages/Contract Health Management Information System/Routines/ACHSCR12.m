ACHSCR12 ; COMPILED XREF FOR FILE #9002080.01 ; 05/24/16
 ; 
 S DA(1)=DA S DA=0
A1 ;
 I $D(DISET) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^ACHSF(DA(1),"D",DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^ACHSF(DA(1),"D",DA,0))
 S X=$P($G(DIKZ(0)),U,8)
 I X'="" S ^ACHSF(DA(1),"VB",+X,DA,"1")=""
 S X=$P($G(DIKZ(0)),U,14)
 I X'="" S ^ACHSF(DA(1),"D","B",1000000+(X_$P(^ACHSF(DA(1),"D",DA,0),"^",1)),DA)=""
 S X=$P($G(DIKZ(0)),U,22)
 I X'="" S ^ACHSF(DA(1),"PB",+X,DA,"1")=""
 S X=$P($G(DIKZ(0)),U,26)
 I X'="" S ^ACHSF(DA(1),"TPR",$E(X,1,30),DA)=""
 S X=$P($G(DIKZ(0)),U,28)
 I X'="" S ^ACHSF(DA(1),"ESIG",+X,DA)=""
 S DIKZ(2)=$G(^ACHSF(DA(1),"D",DA,2))
 S X=$P($G(DIKZ(2)),U,2)
 I X'="" S ^ACHSF(DUZ(2),"TCHK",999999999-X,DA)=""
 S DIKZ(3)=$G(^ACHSF(DA(1),"D",DA,3))
 S X=$P($G(DIKZ(3)),U,9)
 I X'="" S ^ACHSF(DA(1),"ES",X,DA)=""
 G:'$D(DIKLM) A Q:$D(DISET)
END G ^ACHSCR13
