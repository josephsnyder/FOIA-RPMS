ACRPTC ; GENERATED FROM 'ACR TERMS AND CONDITIONS' PRINT TEMPLATE (#3877) ; 09/29/09 ; (FILE 9002185.1, MARGIN=80)
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
 S I(0)="^ACRTC(",J(0)=9002185.1
 S X=$G(^ACRTC(D0,0)) D N:$X>14 Q:'DN  W ?14,$E($P(X,U,1),1,40)
 W ?56 I $D(ACRDOC) W !?14,"FOR DOCUMENT #: ",ACRDOC K DIP K:DN Y
 D T Q:'DN  D N W ?0 W "     "
 S:'$D(DIWF) DIWF="" S:DIWF'["N" DIWF=DIWF_"N" S X="" S I(1)=1,J(1)=9002185.11 F D1=0:0 Q:$O(^ACRTC(D0,1,D1))'>0  S D1=$O(^(D1)) D:$X>7 T Q:'DN  D A1
 G A1R
A1 ;
 S X=$G(^ACRTC(D0,1,D1,0)) S DIWL=1,DIWR=78 D ^DIWP
 Q
A1R ;
 D 0^DIWW
 D ^DIWW
 D T Q:'DN  W ?2 I $E($G(IOST),1,2)="C-" D PAUSE^ACRFWARN K DIP K:DN Y
 K Y K DIWF
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!
