AUGCMPX ; COMPARES GLOBAL TREES [ 02/18/88  9:39 AM ]
 ; CREATED BY GIS 7/17/85 FOR MSM UNIX MUMPS (2.3)
GP R !!,"Primary global: [e.g. ^GBL( or ^GBL(10,] ",AUGP Q:AUGP=""  I AUGP["^",AUGP["(","(,"[$E(AUGP,$L(AUGP)) G GS
 Q
GS R !!,"Secondary global: [same] ",AUGS Q:AUGS=""  I AUGS["^",AUGS["(","(,"[$E(AUGS,$L(AUGS)) D EN
 Q
EN ; EXTERNAL ENTRY POINT
 I $D(AUGP),AUGP'="",$D(AUGS),AUGS'="" G CONT
 Q
CONT ;
 S:'$D(AUGSTOP) AUGSTOP="I 0"
 D SEARCH K AUGP,AUGS,AUGSTOP Q
SEARCH ; 
 N (AUGP,AUGS,AUGSTOP)
 S T="T",C=",",P=")",NT=$L(AUGP,C)-1,L=1,T1=""
 S TT=AUGP F I=1:1:30 S TT=TT_T_I_C
EXTR S X=T_L,Y=$P(TT,C,1,L+NT)_P,@X=$O(@Y)
 X AUGSTOP Q:$T
 I @X'="" D:$D(@(Y))#2 SUB S L=L+1,@(T_L)="" G EXTR
 S L=L-1 Q:L=0  G EXTR
SUB W "." S ZZ=AUGS_$P(Y,AUGP,2)
 I '$D(@ZZ) W !,ZZ," does not exist" Q
 I @ZZ'=@Y W !,ZZ," not same as ",Y Q
 Q
