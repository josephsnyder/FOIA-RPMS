PSOXZA13 ; COMPILED XREF FOR FILE #52.25 ; 05/20/15
 ; 
 S DA=0
A1 ;
 I $D(DISET) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^PSRX(DA(1),"REJ",DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^PSRX(DA(1),"REJ",DA,0))
 S X=$P($G(DIKZ(0)),U,1)
 I X'="" S ^PSRX(DA(1),"REJ","B",$E(X,1,30),DA)=""
CR1 S DIXR=254
 K X
 S X(1)=$P(DIKZ(0),U,2)
 S X=$G(X(1))
 I $G(X(1))]"" D
 . K X1,X2 M X1=X,X2=X
 . S ^PSRX("REJDAT",X,DA(1),DA)=""
CR2 S DIXR=255
 K X
 S DIKZ(0)=$G(^PSRX(DA(1),"REJ",DA,0))
 S X(1)=$P(DIKZ(0),U,5)
 S X=$G(X(1))
 I $G(X(1))]"" D
 . K X1,X2 M X1=X,X2=X
 . S ^PSRX("REJSTS",X,DA(1),DA)=""
CR3 K X
 G:'$D(DIKLM) A Q:$D(DISET)
END G ^PSOXZA14
