ADEDDTH ; IHS/HQT/MJL - IHS-RPMS/MLQ ADD/EDIT GENERIC PROVIDER FILE ;  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
 ;THIS ROUTINE EDITS THE GENERIC PROVIDER FILE  ACCORDING TO THE
 ;FIELD NAMES AND ENTRY ORDER STORED IN THE GENERIC PARAMETER FILE
 ;
 D ^XBKVAR
 ;FHL 9/9/98 S:'$D(DTIME) DTIME=300
 ;FHL 9/9/98 S:DTIME="" DTIME=300
 ;FHL 9/9/98
 S DTIME=$$DTIME^XUP(DUZ)
 ;VARIABLES ADEPRVFN & ADEPRMFN SET IN KERNEL OPTION PRIOR TO EXECUTION ***
 I '$D(ADEPRVFN) S XQUIT=1 W !,"YOUR DISCIPLINE'S GENERIC PROVIDER FILE NUMBER IS NOT BEING SET IN THE KERNEL   OPTION.  SEE YOUR SITE MANAGER." Q
 I '$D(ADEPRMFN) S XQUIT=1 W !,"YOUR DISCIPLINE'S GENERIC PARAMETER FILE NUMBER IS NOT BEING SET IN THE KERNEL OPTION.  SEE YOUR SITE MANAGER." Q
 S ADEPRVGN=^DIC(ADEPRVFN,0,"GL") ;PROVIDER FILE & GLOBAL
 S ADEPRMGN=^DIC(ADEPRMFN,0,"GL") ;PARAMETER FILE & GLOBAL
SEO ;STORE SUBROUTINE NAMES IN ENTRY ORDER
 S ADESUBNM(1)="PROV",ADESUBNM(2)="FACL",ADESUBNM(3)="SERU",ADESUBNM(4)="TRBE"
SETA ;DISCIPLINE SPECIFIED FIELD ENTRY ORDER
 S ADEFEO=ADEPRMGN_"1,""PEO"")"
 I '$D(@ADEFEO) S ADEFEO="1^2^^3" G SETB
 I @ADEFEO["1"!("2")!("3")!("4") S ADEFEO=@ADEFEO I 1
 E  S ADEFEO="1^2^^3^"
SETB ;DISCIPLINE SPECIFIED FIELD NAMES
 S ADEFNM=ADEPRMGN_"1,""EQN"")"
 I '$D(@ADEFNM) S ADEFNM="" G SETAI
 S ADEFNM=@ADEFNM
SETAI ;
 F ADEI=1:1:4 S ADEAI=$P(ADEFEO,"^",ADEI) S:ADEAI'="" ADESUBRT(ADEAI)=ADESUBNM(ADEI),ADEFLDNM(ADEAI)=$P(ADEFNM,"^",ADEI)
LOOP ;
 S ADEA="" K ADEPROV
 F ADEI=0:0 S ADEA=$O(ADESUBRT(ADEA)) Q:ADEA=""  D @ADESUBRT(ADEA)
 G:X="^" KVAR
 F ADEI=1:1:4 S:'$D(ADEPROV(ADEI)) ADEPROV(ADEI)="/@"
 D ^ADEDDTH1
 S %=2 W !,"ADD/EDIT ANOTHER RECORD" D YN^DICN
 I %=1 G LOOP
 D KVAR
 Q
 K ADEFEO
 ;
 ;ADEDDENT CONTAINS DD ENTRY FOR A SPECIFIC FIELD
 ;^1 = FIELD NAME
 ;^2 = REQUIRED
 ;^3 = POINTED TO FILE
 ;^4 = GLOBAL LOCATION
 ;^5 = INPUT TRANSFORM
PROV ;EDIT PROVIDER              ^DIC(6,
 S ADEDDENT=^DD(ADEPRVFN,.01,0) D SDDIC
 Q
FACL ;EDIT FACILITY, FORCE SERU  ^AUTTLOC
 S ADEDDENT=^DD(ADEPRVFN,2,0) D SDDIC
 S ADEPROV(2)=$P(Y(0),"^",5)
 Q
SERU ;EDIT SERVICE UNIT          ^AUTTSU
 S ADEDDENT=^DD(ADEPRVFN,1,0) D SDDIC
 Q
TRBE ;EDIT TRIBE                 ^AUTTTRI
 S ADEDDENT=^DD(ADEPRVFN,3,0) D SDDIC
 Q
SDDIC ;GET DD INFO, D ^DIC FOR PTR FIELDS
 S:ADEFLDNM(ADEA)="" ADEFLDNM(ADEA)=$P(ADEDDENT,"^")
 S DIC("A")=ADEFLDNM(ADEA)_": "
 S DIC="^"_$P(ADEDDENT,"^",3),DIC(0)="AEMQZ" D ^DIC
 I X="^",ADEA=1 W !,"EXITING ROUTINE" S ADEA="ZZZZZ" G KVAR
 I Y<1 I $P(ADEDDENT,"^",2)["R" W !,$C(7),ADEFLDNM(ADEA)," IS REQUIRED" G SDDIC
 Q:Y<1
 S ADEGL=$P($P(ADEDDENT,"^",4),";",2)
 I ADEGL=1 S ADEPROV(ADEGL)=$P(Y(0,0),"^")
 E  S ADEPROV(ADEGL)=$P(Y,"^")
 Q
KVAR ;KILL VARIABLES
 K ADESUBRT,ADESUBNM,ADEFLDNM,ADEPROV ; SUBSCRIPTED VARIABLES
 K ADEA,ADEAI,ADEDDENT,ADEPRMFN,ADEPRMGN,ADEPRVFN,ADEPRVGN,ADEFNM,DIC,DIC(0),DIC("A")
 K ADEGL,ADEI,X,Y,Y(0),Y(0,0)
 Q
