AMQQCMP3 ; IHS/CMI/THL - SUBQUERY ANALYTIC STACK COMPILER ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;-----
VAR S (AMQQAFNO,AMQQAFNN)=0
 S AMQQSQLV=1
 K AMQQRED
RUN S AMQQAFNO=$O(^UTILITY("AMQQ",$J,"SQ",AMQQUSQN,AMQQAFNO))
 I 'AMQQAFNO D:AMQQUSQN SET G EXIT
 S AMQQSQ1=AMQQUSQN
 S AMQQSQFN=AMQQAFNO
 D FSET
 S AMQQSQLV=AMQQSQLV+1
 D RUN1
 G RUN
EXIT K AMQQAFNO,AMQQSQLV,%,A,Q
 Q
 ;
FSET S AMQQAFNN=AMQQAFNN+1
 S A=^UTILITY("AMQQ",$J,"SQ",AMQQSQ1,AMQQSQFN)
 S %=$P(A,U,3)
 S %=$P(^AMQQ(4,%,0),U)
 I %'="","ZQT"[% S X=$P(A,U,7) D @("NN"_%) S $P(A,U,7)=X G FS1
 I $D(^AMQQ(1,+A,6)) S X=$P(A,U,7) X ^(6) S $P(A,U,7)=X ; INPUT TRANSFORM
FS1 ; CHECK FOR TERMINATOR FUNCTIONS LIKE NULL
 I '$O(^UTILITY("AMQQ",$J,"SQ",AMQQSQ1,AMQQSQFN)) S AMQV("SQ",AMQQSQ1,AMQQAFNN+1)="Q"
 I "MVL"'[$P(A,U,6) S Z=$P(A,U,7) G VSET
 S %=+^UTILITY("AMQQ",$J,"QQ",$P(A,U,7))
 I $P(^AMQQ(1,%,0),";")="VISIT" S %=1 G FS11
 I $P(^AMQQ(1,%,0),";")="PROVIDER" S %=5 G FS11
 S %=^AMQQ(1,%,2)
 S %=+$P(%,"AMQP(",2)
FS11 S Z=$P(A,U,7)
 I $P(A,U,6)'="M" S Z=Z_";"_%_";"_$S($P(A,U,6)="V":3,1:4)
VSET S %="S "
 I $P(A,U,8) S %="S AMQQNOT="""","
 S %=%_"AMQQCOMP="""_Z_""" D "_$P(A,U,4,5)_" S AMQT(""SQ"","_AMQQSQ1_","_AMQQAFNN_")=$D(^UTILITY(""AMQQ"",$J,""AG"","
 S %=%_$S('AMQQUSQN:"AMQQUATN",1:AMQQUATN)_")) X:AMQT(""SQ"","_AMQQSQ1_","_AMQQAFNN_") AMQV(""SQ"","_AMQQSQ1_","_(AMQQAFNN+1)_")"
 S AMQV("SQ",AMQQSQ1,AMQQAFNN)=%
 I "CO"[$P(A,U,6),'$D(AMQQRED),AMQQSQLV=1 D RED
 Q
 ;
SET N X,Y,Z,% S %=AMQV(AMQQLINO)
 S X=$P(%,"AMQQX=")
 S Y=$P(%,"AMQQX=",2)
 S Z=$P(Y,""" D ^AMQQ",2)
 S Y=$P(Y,""" D ^AMQQ")
 S $P(Y,";",19)=AMQQUSQN
 S AMQV(AMQQLINO)=X_"AMQQX="_Y_""" D ^AMQQ"_Z
NULL I $D(^UTILITY("AMQQ",$J,"SQ",AMQQUSQN,"NULL")) S AMQV("SQ",AMQQUSQN,"NULL")=""
 Q
 ;
RED I $P(A,U,6)="O",$P(A,U,7)>1 Q
 S %=$P(^AMQQ(5,+A,0),U,11)
 S AMQQRED=%_$S(%="TOT #":"\",1:" ")_$P(^AMQQ(1,+Q,4,1,0),U,4)_$S(%="TOT #":"S",1:"")
 S Y=$P(AMQQRED,"\")
 S Z=$P(AMQQRED,"\",2)
 S %=$S($L(Y)>$L(Z):$L(Y),1:$L(Z))
 S Y=$P(^AMQQ(1,+Q,4,1,0),U,6)
 S:(%>Y) Y=%
 S AMQQRED=AMQQRED_U_Y
 I $P(A,U,6)="C" S $P(AMQQRED,U,3)=1,$P(AMQV(AMQQLINO),";",11)=1
 Q
 ;
NNZ I X'[";" S X=$S($E(X)="N":0,$E(X)="T":1,1:(+X+1)) Q
 N A,%
 S %=$P(X,";")
 D NNZ1
 S A=%,%=$P(X,";",2)
 D NNZ1
 S X=A_";"_%
 Q
NNZ1 S %=$S($E(%)="N":0,$E(%)="T":1,1:(+%+1))
 Q
 ;
 ;
NNQ S X='($E(X)="N")
 Q
 ;
RUN1 S X=AMQQSQ1
START N AMQQSQ1,AMQQSQ2,AMQQAFNN,AMQQSQFN
 S AMQQSQ1=X
 S (AMQQSQ2,AMQQAFNN)=0
INC S AMQQSQ2=$O(^UTILITY("AMQQ",$J,"SQXS",AMQQSQ1,AMQQSQ2))
 I 'AMQQSQ2 S AMQQSQLV=AMQQSQLV-1 N AMQQUSQN S AMQQUSQN=AMQQSQ1 D NULL Q
 I $D(^UTILITY("AMQQ",$J,"SQXS",AMQQSQ2)) S AMQQSQLV=AMQQSQLV+1,X=AMQQSQ2 D START
 S AMQQSQFN=0
INC1 S AMQQSQFN=$O(^UTILITY("AMQQ",$J,"SQ",AMQQSQ2,AMQQSQFN))
 I 'AMQQSQFN G INC
 S AMQQSQ1=AMQQSQ2
 D FSET
 G INC1
 ;
EN1 ; ENTRY POINT FROM AMQQCMP2 FOR GENERIC VISIT CONDITIONS
 N AMQQUSQN S AMQQUSQN=0
 D VAR
 Q
 ;
