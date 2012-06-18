LAMIV12 ; IHS/DIR/FJE - PROCESS VITEK GNS CARDS 7/20/90 09:38 ;
 ;;5.2;LA;;NOV 01, 1997
 ;;5.2;AUTOMATED LAB INSTRUMENTS;**5**;Sep 27, 1994
A Q:$E(IN,1,2)'="01"  ;NO RESULTS OR MULTI COLUMN
 S RMK=$E(IN,3),RMK=$S(RMK=0:"Oxidase Negative",RMK=1:"Oxidase Positive",1:"")
 S O=$E(IN,5,6),V=$E(IN,7),TYPE=$S("12"[V:$O(^LAB(62.4,TSK,7,"B","0E",0)),1:"") Q:TYPE<1
 S V=$O(^LAB(62.4,TSK,7,TYPE,1,"C",O,0)) Q:V<1  S ORG(ISOL)=+^LAB(62.4,TSK,7,TYPE,1,V,0)
 F I2=1:1:13 S V=$E(IN,(I2*6)+11),I3=$E(IN,16) D MIC0
 Q
MIC0 S O=$E(IN,(I2*6)+15),I4=$O(^LAB(62.4,TSK,7,CARD,2,"C",O,0)) Q:I4'>0  S I3=$P(^LAB(62.4,TSK,7,CARD,2,I4,0),U,2) X $P(^(0),U,3) S:V]"" MIC(ISOL,I3)=V
 Q
512 S C=0,U="^" ;0E, 5.12, Gram Neg ID card
 F I=3,7 S X1=$O(^LAB(62.4,TSK,7,CARD,1,"C",$E(IN,I,I+1),0)) D L2:X1>0 Q:$D(ORG)
 S RMK="",CODE=43,FL=$E(IN,44) D MSG S CODE=44,FL=$E(IN,44) D MSG S CODE=45,FL=$E(IN,46) D MSG S CODE=46,FL=$E(IN,47) D MSG S CODE=47,FL=$E(IN,48) D MSG
 S:'$D(ORG(ISOL)) BAD=1 Q
L2 S ORG(ISOL)=+^LAB(62.4,TSK,7,CARD,1,X1,0),X=$E(IN,I+2,I+3) D PROB S ORG(ISOL,1)=X I X=""!(X<80) K ORG(ISOL) ;cancel if PROB<80%
 Q
HEX S XX=X,X="" F II=1:1:$L(XX) S X=X*16+($F("0123456789ABCDEF",$E(XX,II))-2)
 Q
MSG F X1=0:0 S X1=$O(^LAB(62.4,TSK,7,CARD,4,"B",CODE,X1)) Q:X1'>0  D MS2
 Q
MS2 S X3=^LAB(62.4,TSK,7,CARD,4,X1,0)
 S X4=$P(X3,U,2) I $L(X4),X4'=FL Q  ;
 S:$L(RMK) RMK=RMK_", " S RMK=RMK_$P(X3,U,3)
 Q
PROB D HEX I X>100 S X="" Q
 S:X=0 X="<1" S X=X_"% Probability" Q
