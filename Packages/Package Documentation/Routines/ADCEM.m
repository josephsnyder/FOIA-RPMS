ADCEM ; GENERATED FROM 'ADCEM' PRINT TEMPLATE (#710) ; 08/28/91 ; (FILE 9.4, MARGIN=80)
 G BEGIN
N W !
T W:$X ! I '$D(DIOT(2)),DN,$D(IOSL),$S('$D(DIWF):1,$P(DIWF,"B",2):$P(DIWF,"B",2),1:1)+$Y'<IOSL,$D(^UTILITY($J,1))#2,^(1)?1U1P1E.E X ^(1)
 Q
DT I Y W $P("JAN^FEB^MAR^APR^MAY^JUN^JUL^AUG^SEP^OCT^NOV^DEC",U,$E(Y,4,5))_" " W:Y#100 $J(Y#100\1,2)_"," W Y\10000+1700 W:Y#1 "  "_$E(Y_0,9,10)_":"_$E(Y_"000",11,12) Q
 W Y Q
M D @DIXX
 Q
BEGIN ;
 S:'$D(DN) DN=1
 W ?0 I IOST["C-" W:$D(IOF) @IOF K DIP K:DN Y
 W ?11 S ADCX="PACKAGE DOCUMENTATION UTILITIES" W !,?80-$L(ADCX)\2,ADCX K ADCX K DIP K:DN Y
 W ?22 S ADCX="DATA ENTRY MENU" W !!,?80-$L(ADCX)\2,ADCX K ADCX K DIP K:DN Y
 W ?33 W !!,"Type the number of your choice then strike <ENTER>" K DIP K:DN Y
 K Y
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!
