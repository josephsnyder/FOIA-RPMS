AMQQATS ; IHS/CMI/THL - MAKE "Q" LINE ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;-----
NEW N AMQQFTYP,AMQQLINK,AMQQSYMB,AMQQVCL,AMQQCOMP,AMQQCOND
RUN D VAR
 I $P(Q,U,4) D ^AMQQATS1,SET G EXIT
 S X(1)=$P(AMQQCOMP,";")
 S X(2)=$P(AMQQCOMP,";",2)
 D @("FILTER"_AMQQFTYP)
 I $D(AMQQCOMP),$D(X(3)),$D(X(4)),$P(AMQQCOMP,";",4)="EXISTS" S AMQQF(1)=X(3),AMQQF(2)=X(4)
 D SET
EXIT K AMQQF,%,I,Q,X,Y,N,AMQQFSQN,AMQQFSQX
 Q
 ;
VAR S Q=AMQQQ
 S AMQQLINK=+Q
 S AMQQFTYP=$P(Q,U,3)
 S AMQQCOMP=$P(Q,U,9)
 S AMQQVCL=$P(Q,U,10)
 S AMQQSYMB=$P(Q,U,8)
 S AMQQCOND=$P(Q,U,7)
 Q
 ;
SET I $P(Q,U,3)="L",$D(AMQQURGN),$D(^UTILITY("AMQQ TAX",$J,AMQQURGN,"--")) S $P(Q,U,18)=3
 S %=""
 F I=1:1 Q:'$D(AMQQF(I))  S %=%_AMQQF(I)_";"
 I +Q=166!(+Q=178)!(+Q=86) S %=$P(Q,U,9)
 S $P(Q,U,15)=%
 I $D(AMQQSQQF) S ^UTILITY("AMQQ",$J,"QQ",AMQQSQQF)=Q Q
 I $D(AMQQGVF) Q
 ;SET ^UTILITY("AMQQ",$J,"Q", GLOBAL NODE
 S ^UTILITY("AMQQ",$J,"Q",AMQQUATN)=Q
 S %=$P(Q,U,11)
 S X=1-(+%)
 S ^UTILITY("AMQQ",$J,"WEIGHT",X,AMQQUATN)=$P(%,":",2)
 Q
 ;
FILTERD S X(3)=0
 S X(4)=99999999
 S X(5)=.0000001
 D ANAL
 Q
 ;
FILTERB S X(3)=-1
 S X(4)=1.01
 S X(5)=.000001
 D ANAL
 Q
 ;
FILTERN S X(3)=-9999999
 S X(4)=9999999
 S X(5)=.000001
 D ANAL
 Q
 ;
FILTERY S AMQQF(1)=X(1)
 S AMQQF(2)=X(2)
 S AMQQF(3)=$P($P(Q,U,9),";",3)
 S AMQQF(4)=$P($P(Q,U,9),";",4)
 Q
 ;
FILTERC S AMQQF(1)=X(1)
 S AMQQF(2)=X(2)
 Q
 ;
FILTERG ;;
FILTERL ; I $D(AMQQURGN),$D(^UTILITY("AMQQ TAX",$J,AMQQURGN,"--")) S $P(Q,U,18)=3 Q
 F %=1,2 S AMQQF(%)=$P(AMQQCOMP,";",4)
 Q
 ;
FILTERS S AMQQF(1)=AMQQSYMB
 I AMQQCOMP=";;;EXISTS" S AMQQF(2)="",AMQQF(3)="~~~~" Q
 S %=$E(AMQQCOMP,$L(AMQQCOMP))
 S %=$A(%)
 S %=$C(%-1)_"~~~~~"
 S AMQQF(2)=$E(AMQQCOMP,1,$L(AMQQCOMP)-1)_%
 S AMQQF(3)=AMQQCOMP
 Q
 ;
FILTERF I AMQQSYMB'="-" S AMQQF(1)=AMQQSYMB,AMQQF(2)=AMQQCOMP,AMQQF(3)="" Q
 S AMQQF(1)="-"
 S AMQQF(3)=$P(AMQQCOMP,";",2),%=$P(AMQQCOMP,";")
 S X=$E(%,$L(%))
 S %=$E(%,1,$L(%)-1)
 S X=$C($A(X)-1)
 S %=%_X_"~~~~~"
 S AMQQF(2)=%
 Q
 ;
FILTERA S %DT=""
 S X="T+1"
 D ^%DT
 S X(3)=Y
 S %=AMQQSYMB
 I %="'<" S X(1)=X(1)-1,%=">" G FAG
 I %="'>" S X(1)=X(1)+1,%="<" G FAL
FAG I %=">" S AMQQF(1)=0,AMQQF(2)=X(3)-((X(1)+1)*10000),%="><" G FSET
FAL I %="<" S AMQQF(2)=99999999,AMQQF(1)=DT-(X(1)*10000),%="><" G FSET
 I %="=" S AMQQF(1)=DT-((X(1)+1)*10000),AMQQF(2)=X(3)-(X(1)*10000),%="><" G FSET
 I %="'=",AMQQCOMP["EXIST" S AMQQF(1)=0,AMQQF(2)=9999999 G FSET
 I %="'=" S AMQQF(1)=DT-(X(1)*10000),AMQQF(2)=X(3)-((X(1)+1)*10000),%="'><" G FSET
 I %="><",'+AMQQCOMP S AMQQCOMP=$P(AMQQCOMP,";",2)+1,%="<",$P(Q,U,9)=AMQQCOMP,X(1)=X(2)+1 G FAL
 I %="><" S AMQQF(1)=DT-((X(2)+1)*10000),AMQQF(2)=X(3)-(X(1)*10000) G FSET
 S AMQQF(1)=DT-(X(1)*10000)
 S AMQQF(2)=(X(3)-(X(2)*10000))-10000
FSET S $P(Q,U,8)=%
 S AMQQSYMB=%
 Q
 ;
ANAL I AMQQSYMB=">" S AMQQF(1)=X(1),AMQQF(2)=X(4) Q
 I AMQQSYMB="<" S AMQQF(1)=X(3),AMQQF(2)=X(1) Q
 I AMQQSYMB="=",AMQQFTYP="D",X(1)=X(2),X(1)=X(1)\1 S AMQQF(2)=X(1)+.99,AMQQF(1)=X(1)-.76 Q
 I AMQQSYMB="=" S AMQQF(1)=X(1)-X(5),AMQQF(2)=X(1)+X(5) Q
 I AMQQSYMB="><" S AMQQF(1)=X(1)-X(5),AMQQF(2)=X(2)+X(5) Q
 I AMQQSYMB="'>" S AMQQF(1)=X(3),AMQQF(2)=X(1)+X(5) Q
 I AMQQSYMB="'<" S AMQQF(1)=X(1)-X(5),AMQQF(2)=X(4) Q
 I AMQQSYMB="'=" S AMQQF(1)=X(1),AMQQF(2)=X(1) Q
 S AMQQF(1)=X(2)
 S AMQQF(2)=X(1)
 Q
 ;
DOC S X="LINK^ATTRIBUTE NAME^F TYPE^CONTEXT SWITCH^CONDITION^NUMBER OF CONDITIONS^CONDITION NAME^SYMBOL^COMPARISON VALUE^VALIDITY CODE LOCATION^SEARCH EFFICIENCY RATING^OR TEXT^INDEXED^NUMBER OF VARIABLES^FILTERS^NOT"
 W !!
 F I=1:1:16 W !,I,") ",$P(X,U,I)
 Q
 ;
