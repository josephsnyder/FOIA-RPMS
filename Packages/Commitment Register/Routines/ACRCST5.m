ACRCST5 ; COMPILED XREF FOR FILE #9002195.02 ; 09/29/09
 ; 
 S DA(1)=DA S DA=0
A1 ;
 I $D(DISET) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^ACRITEM(DA(1),3,DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^ACRITEM(DA(1),3,DA,0))
 S X=$P(DIKZ(0),U,1)
 I X'="" S ^ACRITEM(DA(1),3,"B",$E(X,1,30),DA)=""
 S X=$P(DIKZ(0),U,2)
 I X'="" S ^ACRITEM("H",$E(X,1,30),DA(1),DA)=""
 G:'$D(DIKLM) A Q:$D(DISET)
END G ^ACRCST6
