PSSJXR2 ; COMPILED XREF FOR FILE #55.01 ; 01/17/11
 ; 
 S DA(1)=DA S DA=0
A1 ;
 I $D(DIKILL) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^PS(55,DA(1),"IV",DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^PS(55,DA(1),"IV",DA,0))
 S X=$P(DIKZ(0),U,2)
 I X'="" X ^DD(55.01,.02,1,1,2)
 S X=$P(DIKZ(0),U,2)
 I X'="" K ^PS(55,"AIVS",$E(X,1,30),DA(1),DA)
 S DIKZ(0)=$G(^PS(55,DA(1),"IV",DA,0))
 S X=$P(DIKZ(0),U,3)
 I X'="" K ^PS(55,"AIV",+$E(X,1,30),DA(1),DA)
 S X=$P(DIKZ(0),U,3)
 I X'="" X ^DD(55.01,.03,1,2,2)
 S X=$P(DIKZ(0),U,3)
 I X'="" K ^PS(55,DA(1),"IV","AIS",$E(X,1,30),DA)
 S X=$P(DIKZ(0),U,3)
 I X'="" I $P($G(^PS(55,DA(1),"IV",DA,0)),U,4)]"" K ^PS(55,DA(1),"IV","AIT",$P(^(0),U,4),+X,DA)
 S DIKZ(0)=$G(^PS(55,DA(1),"IV",DA,0))
 S X=$P(DIKZ(0),U,4)
 I X'="" X ^DD(55.01,.04,1,1,2)
 S DIKZ(0)=$G(^PS(55,DA(1),"IV",DA,0))
 S X=$P(DIKZ(0),U,6)
 I X'="" X ^DD(55.01,.06,1,1,2)
 S DIKZ(0)=$G(^PS(55,DA(1),"IV",DA,0))
 S X=$P(DIKZ(0),U,8)
 I X'="" X ^DD(55.01,.08,1,1,2)
 S DIKZ(0)=$G(^PS(55,DA(1),"IV",DA,0))
 S X=$P(DIKZ(0),U,9)
 I X'="" X ^DD(55.01,.09,1,1,2)
 S DIKZ(1)=$G(^PS(55,DA(1),"IV",DA,1))
 S X=$P(DIKZ(1),U,1)
 I X'="" X ^DD(55.01,.1,1,1,2)
 S DIKZ(0)=$G(^PS(55,DA(1),"IV",DA,0))
 S X=$P(DIKZ(0),U,11)
 I X'="" X ^DD(55.01,.12,1,1,2)
 S DIKZ(3)=$G(^PS(55,DA(1),"IV",DA,3))
 S X=$P(DIKZ(3),U,1)
 I X'="" X ^DD(55.01,31,1,1,2)
 S DIKZ(0)=$G(^PS(55,DA(1),"IV",DA,0))
 S X=$P(DIKZ(0),U,17)
 I X'="" X ^DD(55.01,100,1,1,2)
 S X=$P(DIKZ(0),U,17)
 I X'="" K:X'="N" ^PS(55,"ANVO",DA(1),DA)
 S X=$P(DIKZ(0),U,17)
 I X'="" K:X'="D"&($D(^PS(55,DA(1),"IV",DA,"ADC"))) ^PS(55,"ADC",^PS(55,DA(1),"IV",DA,"ADC"),DA(1),DA)
 S DIKZ(4)=$G(^PS(55,DA(1),"IV",DA,4))
 S X=$P(DIKZ(4),U,9)
 I X'="" X ^DD(55.01,142,1,1,2)
 S X=$P(DIKZ(4),U,9)
 I X'="" K ^PS(55,"APIV",DA(1),DA)
 S DIKZ(4)=$G(^PS(55,DA(1),"IV",DA,4))
 S X=$P(DIKZ(4),U,10)
 I X'="" X ^DD(55.01,143,1,1,2)
 S X=$P(DIKZ(4),U,10)
 I X'="" K ^PS(55,"ANIV",DA(1),DA)
 S DIKZ(0)=$G(^PS(55,DA(1),"IV",DA,0))
 S X=$P(DIKZ(0),U,1)
 I X'="" K ^PS(55,DA(1),"IV","B",$E(X,1,30),DA)
CR1 S DIXR=185
 K X
 S X(1)=$P(DIKZ(0),U,2)
 S X(2)=$P(DIKZ(0),U,3)
 S X=$G(X(1))
 I $G(X(1))]"",$G(X(2))]"" D
 . K X1,X2 M X1=X,X2=X
 . S:$D(DIKIL) (X2,X2(1),X2(2))=""
 . N DIKXARR M DIKXARR=X S DIKCOND=1
 . S X=$$PATCH^XPDUTL("PXRM*1.5*12")
 . S DIKCOND=$G(X) K X M X=DIKXARR
 . Q:'DIKCOND
 . D KPSPA^PSJXRFK(.X,.DA,"IV")
CR2 K X
 G:'$D(DIKLM) A Q:$D(DIKILL)
END G ^PSSJXR3
