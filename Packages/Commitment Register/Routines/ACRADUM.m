ACRADUM ; GENERATED FROM 'ACR REQUEST ADDENDUM' PRINT TEMPLATE (#3851) ; 09/29/09 ; (FILE 9002189, MARGIN=80)
 G BEGIN
N W !
T W:$X ! I '$D(DIOT(2)),DN,$D(IOSL),$S('$D(DIWF):1,$P(DIWF,"B",2):$P(DIWF,"B",2),1:1)+$Y'<IOSL,$D(^UTILITY($J,1))#2,^(1)?1U1P1E.E X ^(1)
 S DISTP=DISTP+1,DILCT=DILCT+1 D:'(DISTP#100) CSTP^DIO2
 Q
DT I $G(DUZ("LANG"))>1,Y W $$OUT^DIALOGU(Y,"DD") Q
 I Y W $P("JAN^FEB^MAR^APR^MAY^JUN^JUL^AUG^SEP^OCT^NOV^DEC",U,$E(Y,4,5))_" " W:Y#100 $J(Y#100\1,2)_"," W Y\10000+1700 W:Y#1 "  "_$E(Y_0,9,10)_":"_$E(Y_"000",11,12) Q
 W Y Q
M D @DIXX
 Q
BEGIN ;
 S:'$D(DN) DN=1 S DISTP=$G(DISTP),DILCT=$G(DILCT)
 S I(0)="^ACROBL(",J(0)=9002189
 S DIWF="W"
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "ADDENDUM TO REQUEST NO. "
 W @ACRON K DIP K:DN Y
 S X=$G(^ACROBL(D0,"DT")) W ?30 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^ACRDOC(Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,17)
 W @ACROF K DIP K:DN Y
 W ?49 W !?4 F I=1:1:24+$L(^ACRDOC($P(^ACROBL(D0,"DT"),U),0),U) W "-" K DIP K:DN Y
 S:'$D(DIWF) DIWF="" S:DIWF'["N" DIWF=DIWF_"N" S X="" S I(1)=1,J(1)=9002189.02 F D1=0:0 Q:$O(^ACROBL(D0,1,D1))'>0  S D1=$O(^(D1)) D:$X>60 T Q:'DN  D A1
 G A1R
A1 ;
 S X=$G(^ACROBL(D0,1,D1,0)) S DIWL=5,DIWR=79 D ^DIWP
 Q
A1R ;
 D 0^DIWW
 D ^DIWW K Y K DIWF
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!
