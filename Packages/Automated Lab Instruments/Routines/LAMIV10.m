LAMIV10 ; IHS/DIR/FJE - PROCESS VITEK BACILLUS AND UID CARDS 7/20/90 09:37 ;
 ;;5.2;LA;;NOV 01, 1997
 ;;5.2;AUTOMATED LAB INSTRUMENTS;;Sep 27, 1994
 ;0B Card; UID-1
 Q:$E(IN,1,2)'="00"  Q:$E(IN,3,4)'="FF"
 F I1=1:1:10 S V=$E(IN,(I1+28),(I1+29)) S ORG(ISOL)=+^LAB(62.4,TSK,7,CARD,1,I1,0),V=$S(V="00":"1 TO 50K",V="01":">50K",1:""),ORG(ISOL)=ORG(ISOL)_"^"_V K:V="" ORG(ISOL) Q:ORG(ISOL)
 Q
510 ;12 CARD; UID-3
 Q:"123"'[$E(IN,2)  Q:$E(IN,3,4)'="FF"  S V=$E(IN,5,6),V=$S(V="FE":"1 TO 50K",V="FD":">50K",1:"")
 F I1=1:1:10 S X=$E(IN,(I1*2+7),(I1*2+8)),ORG(ISOL)=+^LAB(62.4,TSK,7,CARD,1,I1,0) D HEX S ORG(ISOL)=ORG(ISOL)_"^"_X K:X=0 ORG(ISOL) Q:ORG(ISOL)
 Q
52 S C=0,U="^" ;0C, 5.2, Bacillus  card
 F I=3,7 S X1=$O(^LAB(62.4,TSK,7,CARD,1,"C",$E(IN,I,I+1),0)) D L2:X1>0 Q:$D(ORG)
 S RMK="",CODE=43,FL=$E(IN,44) D MSG
 Q
L2 S ORG(ISOL)=+^LAB(62.4,TSK,7,CARD,1,X1,0),X=$E(IN,I+2,I+3) D PROB S ORG(ISOL,1)=X I X=""!(X<80) K ORG(ISOL) ;cancel if PROB<80%
 Q
PROB D HEX I X>100 S X="" Q
 S:X=0 X="<1" S X=X_"% Probability" Q
HEX S XX=X,X="" F II=1:1:$L(XX) S X=X*16+($F("0123456789ABCDEF",$E(XX,II))-2)
 Q
MSG F X1=0:0 S X1=$O(^LAB(62.4,TSK,7,CARD,4,"B",CODE,X1)) Q:X1'>0  D MS2
 Q
MS2 S X3=^LAB(62.4,TSK,7,CARD,4,X1,0)
 S X4=$P(X3,U,2) I $L(X4),X4'=FL Q  ;
 S:$L(RMK) RMK=RMK_", " S RMK=RMK_$P(X3,U,3)
 Q
