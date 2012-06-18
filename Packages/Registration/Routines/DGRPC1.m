DGRPC1 ;ALB/MRL - CHECK CONSISTENCY OF PATIENT DATA (CONT) ;25 AUG 88@0901
 ;;5.3;Registration;**314,342**;Aug 13, 1993
18 ;
19 S X=$S($P(DGCD,"^",5)="Y":1,1:0) I $S(X=DGVT:0,DGVT=2&('X):0,1:1) S X=$S(DGVT:18,1:19) I DGCHK[(","_X_",") D COMB
 S:'DGVT DGLST=$S(+DGLST>22:+DGLST,1:22) G:DGCHK'[",22,"&'DGVT FIND^DGRPC2 D NEXT I DGLST>20!('DGLST) G @DGLST
20 I DGVT,DGSC S DGD=$S(+$P(DGP(.3),"^",2)>49:1,1:3) I $P(DGCD,"^",4)'=DGD!($P(DGCD,"^",5)="N") S X=20 D COMB
 S:DGSC DGLST=$S(+DGLST>22:+DGLST,1:22) G:DGCHK'[",22,"&DGSC FIND^DGRPC2 D NEXT I +DGLST'=21 G @DGLST
21 ; off
 D NEXT I +DGLST'=22 G @DGLST
22 I $P(DGP("VET"),"^",1)'="Y" G 221
 S DGSTR="^"
 I DGSC S DGSTR=DGSTR_$S($P(DGP(.3),"^",2)<50:3,1:1)_"^" G 220 ;only appropriate sc type
 I $P(DGP(.52),"^",5)="Y" S DGSTR=DGSTR_"18^" G 220 ;pow only
 I $P(DGP(.53),"^",1)="Y" S DGSTR=DGSTR_"22^" G 220 ;Purple Heart
 I $P(DGP(0),"^",3)'>2200101 S DGSTR=DGSTR_"16^17^" ;allow wwi & mex border
 S DGFL=0 I $P(DGP(.362),"^",12)="Y" S DGSTR=DGSTR_"2^",DGFL=1 ; a&a
 I $P(DGP(.362),"^",13)="Y" S DGSTR=DGSTR_"15^",DGFL=1 ; hb
 I DGFL=1 G 220
 I $P(DGP(.362),"^",14)="Y" S DGSTR=DGSTR_"4^" G 220 ;nsc, va pen
 S DGSTR=DGSTR_"5^" ;nsc
220 I DGSTR'[("^"_$P(DGCD,"^",9)_"^") S X=22 D COMB
 K DGSTR
221 D NEXT I +DGLST'=23 G @DGLST
23 S DGD=$G(^DPT(DFN,.361)) I $P(DGD,"^",1)="V",$P(DGD,"^",2)="" S X=23 D COMB
 D NEXT I +DGLST'=24 G @DGLST
24 I '$D(^DIC(21,+$P(DGP(.32),"^",3),"E",+$P(DGP(.36),"^",1))) S X=24 D COMB
 D NEXT I +DGLST'=25 G @DGLST
25 I DGVT,$P(DGP(.321),"^",2)="Y",$P($G(^DIC(21,+$P(DGP(.32),"^",3),0)),"^",3)'=7 S X=25 D COMB
 S:DGVT DGLST=35 G:DGCHK'[",35,"&DGVT FIND^DGRPC2 D NEXT I +DGLST'=26 G @DGLST
26 ;
27 ;
28 I 'DGVT S DGD=DGP(.321),X=25 F I=1:1:3 S X=X+1 I $P(DGD,"^",I)="Y",DGCHK[(","_X_",") D COMB
 D NEXT I +DGLST>33!('DGLST) G @DGLST
29 ;
30 ;
31 ;
32 ;
33 I 'DGVT S DGD=DGP(.362),X=28 F I=12,13,14,16,17 S X=X+1 I $P(DGD,"^",I)="Y",(DGCHK[(","_X_",")) D COMB
 S DGLST=33 G:DGCHK'[",33," FIND^DGRPC2 D NEXT I +DGLST>35!('DGLST) G @DGLST
34 ;
35 I 'DGVT S X=33 F I=5,11 S X=X+1 I $P(DGP(.52),"^",I)="Y",DGCHK[(","_X_",") D COMB
 S DGLST=35 G:DGCHK'[",35," FIND^DGRPC2 D NEXT I +DGLST'=36 G @DGLST
36 I '$D(^DG(391,+DGP("TYPE"),0)) S X=36 D COMB
 S:'DGVT DGLST=48 G:DGCHK'[",48,"&'DGVT FIND^DGRPC2 D NEXT I +DGLST>40!('DGLST) G @DGLST
37 ;
38 ;
39 ;
40 I DGVT F I=5,11 S I2=0,X=$S(I=5:37,1:39) I $P(DGP(.52),"^",I)="Y" D PC
 S DGLST=40 S:'DGVT DGLST=48 G FIND^DGRPC2:(DGCHK'[",48,"&'DGVT)!(DGCHK'[",40,"&DGVT) D NEXT I +DGLST'=41 G @DGLST
41 I DGVT,$P(DGP(.321),"^",1)="Y",$P(DGP(.321),"^",4)=""!($P(DGP(.321),"^",5)="") S X=41 D COMB
 S:'DGVT DGLST=48 G:DGCHK'[",48,"&'DGVT FIND^DGRPC2 D NEXT I +DGLST'=42 G @DGLST
42 I DGVT,+$P(DGP(.321),"^",4),+$P(DGP(.321),"^",5),+$P(DGP(.321),"^",5)<+$P(DGP(.321),"^",4) S X=42 D COMB
 S:'DGVT DGLST=48 G:DGCHK'[",48,"&'DGVT FIND^DGRPC2 D NEXT G @DGLST
 ;
PC I DGCHK[(","_X_",") F I1=I+1:1:I+3 I $P(DGP(.52),"^",I1)="",'I2 D COMB S I2=1
 S X=X+1 I +$P(DGP(.52),"^",I+2),+$P(DGP(.52),"^",I+3),+$P(DGP(.52),"^",I+3)<+$P(DGP(.52),"^",I+2),DGCHK[(","_X_",") D COMB
 Q
 ;
COMB S DGCT=DGCT+1,DGER=DGER_X_",",DGLST=X Q
 Q
NEXT S I=$F(DGCHK,(","_+DGLST_",")),DGLST=+$E(DGCHK,I,999) I +DGLST,+DGLST<43 Q
 S:'DGLST DGLST="END^DGRPC2" I +DGLST S DGLST=DGLST_"^DGRPC2"
 Q
