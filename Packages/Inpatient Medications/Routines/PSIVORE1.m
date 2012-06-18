PSIVORE1 ;BIR/RGY,PR,MLM-ACT,NEW ORDER ;07 AUG 97 / 2:45 PM
 ;;5.0; INPATIENT MEDICATIONS ;**58**;16 DEC 97
 ;
 ; Reference to ^PS(55 is supported by DBIA 2191.
 ;
S ;
 Q:+PSJSYSU'=3
 D NOW^%DTC S Y=% Q:P(4)=""!(P(2)="")  S:'$D(OD) OD=$S(P(2)>Y:P(2),1:Y) S PSGCNT=0,PNOW=DT K PSGSA
STR ;
 K PSI F I=0:0 S I=$O(^PS(59.5,PSIVSN,2,"AC",P(4),I)) Q:'I  S PSI("E",+(PNOW_"."_$P(^PS(59.5,+PSIVSN,2,I,0),U,4)))=+(PNOW_"."_$P(^(0),U))_U_I,PSI("S",+(PNOW_"."_$P(^(0),U)))=I
EC ;
 S PSIVEC=$O(PSI("E",Y)) I PSIVEC="" S X1=PNOW,X2=1 D C^%DTC S PNOW=X G STR
 I $O(PSI("S",PSIVEC))="" S X1=$O(PSI("S",0)),X2=1 D C^%DTC S X=$P(X,".") S PSI("S",+(X_"."_$P($O(PSI("S",0)),".",2)))=PSI("S",$O(PSI("S",0)))
 I $P(^PS(59.5,+PSIVSN,2,PSI("S",$O(PSI("S",PSIVEC))),0),U,6)=$O(PSI("S",PSIVEC)) S Y=PSIVEC G EC
 I PSIVEC'<P(2) S CD=$S(P(3)>PSIVEC:PSIVEC,1:P(3)) S:OD=CD CD=CD+.0001 D ENP3^PSIVWL
P ;
 S:'$D(PSGSA) PSGSA=""
 ;* W:PSGCNT !!,PSGCNT," Label",$E("s",PSGCNT>1)," needed for dose",$E("s",PSGCNT>1)," due at ...",!! F Y=1:1 S X=$P(PSGSA," ",Y) D:$E(X)="." CONVER^PSIVORE2 Q:X=""  W $E(X,4,5)_"/"_$E(X,6,7)_"/"_$E(X,2,3)_" "_$E(X#1_"000",2,5)_" : "
 D FULL^VALM1
 W:PSGCNT !!,PSGCNT," Label",$E("s",PSGCNT>1)," needed for dose",$E("s",PSGCNT>1)," due at ...",!!
 F Y=1:1 S X=$P(PSGSA," ",Y) S:$E(X)="." X=$$CONVER^PSIVORE2(X,Y) Q:X=""  W $E(X,4,5)_"/"_$E(X,6,7)_"/"_$E(X,2,3)_" "_$E(X#1_"000",2,5)_" : "
 W ! D:$P(PSIVSITE,U,8) TL^PSIVORE2 D NOW^%DTC S Y=% S PNOW=Y I $D(^PS(59.5,PSIVSN,3,"AT")) W !!,"Next delivery time is " S X=$O(^PS(59.5,PSIVSN,3,"AT",PNOW#1)) S:X="" X=$O(^(X)) S X=$P(X,".",2)_$E("000",1,5-$L(X)) W X," ***" G B1
ACT ; Prompt and process label action.
B G:PSGCNT<1 K^PSIVORE2
B1 ;
 W ! S X="Action (PB"_$S($P(PSIVSITE,U,2):"S",1:"")_")^"_$S(PSGCNT<1:"B",$G(PSJPRI)="D":"B",$P(PSIVSITE,U,2)&$D(X):"S",1:"P")_"^^PRINT LABELS,BYPASS"_$S($P(PSIVSITE,U,2):",SUSPEND LABELS",1:"")
 D ENQ^PSIV S X=$E(X) S:X["?" HELP="ANSWER" D:X["?" ^PSIVHLP G:X["?" B1 I "B^"[X G K^PSIVORE2
 I "S"[X,$D(^PS(55,"PSIVSUS",PSIVSN,DFN,ON)) D C^PSIVORE2 W !!,"There ",$S(SNM>1:"are",1:"is")," already ",SNM," LABEL",$E("S",SNM>1)," suspended for this order." K SNM,DAT
SS ;
 S PSIVA=X,X="# of labels^"_PSGCNT_"^^^QUX=+QUX&(QUX?1N.N)" D ENQ^PSIV W !!
 S PSIVLABN=X I X["?" S X=PSIVA W !,"Enter # labels to act on." G SS
 I 'X W " No action taken ***" G B1
 I PSIVA="S",$D(^PS(55,"PSIVSUS",PSIVSN,DFN,+ON,PNOW)) W $C(7),"NO Labels suspended, Wait 8 seconds and try again." D NOW^%DTC S Y=% S PNOW=Y G B1
 S $P(^(0),U,16)=$P(^PS(55,DFN,"IV",+ON,0),U,16)+X,PSIVNOL=+X,PSGCNT=PSGCNT-X,PSIVDOSE=$P(PSGSA," ",1,X),PLAST=$P(PSGSA," "),PLAST="."_$P(PLAST,".",2),PSGSA=$P(PSGSA," ",X+1,999) I PLAST>$P(PSGSA," ") S UP1=1
 S P(16)=$P(^PS(55,DFN,"IV",+ON,0),U,16)
 I $D(UP1) S:$D(X1)#2 XX1=X1 S:$D(X2)#2 XX2=X2 S X1=$E(PSIVDOSE,1,7),X2=1 D C^%DTC S PSGSA=X_PSGSA S:$D(XX1) X1=XX1 S:$D(XX2) X2=XX2 K XX2,XX1
 I '$D(UP1) S PSGSA=$E(PSIVDOSE,1,7)_PSGSA
 K UP1 I PSIVA="S" S ^PS(55,"PSIVSUS",PSIVSN,DFN,+ON,PNOW)=PSIVLABN_U_PSIVDOSE_U_P(16),Y=0,P(16)=P(16)+X W " ... ",PSIVLABN," Label",$E("s",PSIVLABN>1)," suspended !" S ACTION=5,PSIVNOL=PSIVLABN,TRACK=4 D ^PSIVLTR,NOW^%DTC S Y=% S PNOW=Y K X G B
 S IONOFF="" I PSIVPL=ION S P16=P(16),ACTION=1,TRACK=4 D ^PSIVLTR D ^PSIVHYPL:P(4)="H",^PSIVLABL:"APSC"[P(4) S P(16)=$P(^PS(55,DFN,"IV",+ON,0),U,16) G B
 W ! S P16=P(16),P(16)=P(16)+X,ZTDTH=$H,ZTIO=PSIVPL F Y="IONOFF","P16","PSIVDOSE","PSIVSITE","PSIVSN","PSIVNOL","DFN","ON","PSJSYSL","PSJSYSW0","PSJSYSW","PSJSYSP","PSJSYSP0","PSJSYSU" S ZTSAVE(Y)=""
 S ZTDESC="PRINT IV LABELS",ZTRTN="DEQ^PSIVORE2" D ^%ZTLOAD G B
GSTRING ; Setup edit "^" string.
 S PSIVOK="57^58^59^10^3^25^26^39^1^64^63"_$S($E(P("OT"))="I":"^101",1:"")
 S EDIT="57^58^59^10^3^25^26^39^1^"_$S(P("OT")="I":"101^",1:"")_"64^63"
 ;* S EDIT="57^58^59^10^3^25^26^39^1^"_$S(P("DTYP")=1:"101^",1:"")_"64^63"
 Q
