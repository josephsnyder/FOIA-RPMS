PSGWINIT ; ; 04-JAN-1994 [ 02/28/2002  10:43 AM ]
 ;;2.3; Automatic Replenishment/Ward Stock ;;4 JAN 94
 ;
 K DIF,DIFQ,DIFQR,DIFQN,DIK,DDF,DDT,DTO,D0,DLAYGO,DIC,DIDUZ,DIR,DA,DIFROM,DFR,DTN,DIX,DZ,DIRUT,DTOUT,DUOUT
 S U="^",DIFQ=0,DIFROM="2.3" W !,"This version (#2.3) of 'PSGWINIT' was created on 04-JAN-1994"
 W !?9,"(at BIRMINGHAM ISC - 10, by VA FileMan V.20.0)",!
 I $D(^DD("VERSION")),^("VERSION")'<20 G GO
 W !,"FIRST, I'LL FRESHEN UP YOUR VA FILEMAN...." D N^DINIT
 I ^DD("VERSION")<20 W !,"BUT I NEED VERSION 20 OF THE VA FILEMAN!" G Q
GO ;
 W !,"I HAVE TO RUN AN ENVIRONMENT CHECK ROUTINE." D PKG,^PSGWPRE1 Q:'$D(DIFQ)  D NOW^%DTC S DIFROM("PRE")=%
EN ; ENTER HERE TO BYPASS THE PRE-INIT PROGRAM
 D NOW^%DTC S INITDT=X,MIN="" ;IHS/ITSC/ENM 02/28/2002
 S DIFQ=0 K DIRUT,DTOUT,DUOUT
 F DIFRIR=1:1:1 S DIFRRTN="^PSGWINI"_$E("5",DIFRIR) D @DIFRRTN
 W:1 !,"I AM GOING TO SET UP THE FOLLOWING FILES:" F I=1:2:20 S DIF(I)=^UTILITY("DIF",$J,I) D 1 G Q:DIFQ!$D(DIRUT) K DIF(I)
 S DIFROM="2.3" D PKG:'$D(DIFROM(0)),^PSGWINI1 G Q:'$D(DIFQ) S DIK(0)="AB"
 F DIF=1:2:20 S %=^UTILITY("DIF",$J,DIF),DIK=$P(%,";",5),N=$P(%,";",3),D=$P(%,";",4)_U_N D D K DIFQ(N)
 K DIFQR D ^PSGWINI2,^PSGWINI3
 L  S DUZ=DIDUZ W:1 !,"NO"_$P("TE THAT FILE",U,DSEC)_" SECURITY-CODE PROTECTION HAS BEEN MADE"
 D ^PSGWPOST,NOW^%DTC S DIFROM("INIT")=%
 I DIFROM F DIF=1:2:20 S %=^UTILITY("DIF",$J,DIF),N=+$P(%,";",3) I N,$P(%,";",8)="y" S ^DD(N,0,"VR")=DIFROM
 I DIFROM(0)>0 F %="PRE","INI","INIT" S:$D(DIFROM(%)) $P(^DIC(9.4,DIFROM(0),%),U,2)=DIFROM(%)
 I $G(DIFQN) S $P(^(0),U,3,4)=$P(DIFQN,U,2)_U_($P(^DIC(0),U,4)+DIFQN) K DIFQN
 I DIFROM S X="PSGWINIS" X ^%ZOSF("TEST") D:$T PAC^PSGWINIS($T(IXF),.DIFROM)
 S:DIFROM(0)>0 ^DIC(9.4,DIFROM(0),"VERSION")=DIFROM G Q^DIFROM0
D S:$D(^DIC(+N,0))[0 ^(0)=D S X=$D(@(DIK_"0)")),^(0)=D_U_$S(X#2:$P(^(0),U,3,9),1:U)
 S DIFQR=DIFQR(+N) I ^DD("VERSION")>17.5,$D(^DD(+N,0,"DIK"))#2 S X=^("DIK"),Y=+N,DMAX=^DD("ROU") D EN^DIKZ
 I DIFQR D IXALL^DIK:$O(@(DIK_"0)")) W "."
 Q
R G REP^PSGWINI2
 ;
1 S N=+$P(DIF(I),";",3),DIF=$P(DIF(I),";",4),S=$P(DIF(I),";",5)
 W !!?3,N,?13,DIF,$P("  (Partial Definition)",U,$P(DIF(I),";",6)),$P("  (including data)",U,$P(DIF(I),";",13)="y") S Z=$S($D(^DIC(N,0))#2:^(0),1:"")
 I Z="" S DIFQ(N)=1,DIFQN=$G(DIFQN)+1_U_N G S
 I $L($P(Z,DIF)) W *7,!,"*BUT YOU ALREADY HAVE '",$P(Z,U),"' AS FILE #",N,"!" D R Q:DIFQ  G S:$D(DIFKEP(N)),1
 S DIFQ(N)=$P(DIF(I),";",7)'="n"
 I $L(Z) W *7,!,"Note:  You already have the '",$P(Z,U),"' File." S DIFQ(0)=1
 S %=$E(^UTILITY("DIF",$J,I+1),4,245) I %]"" X % S DIFQ(N)=$T W:'$T !,"Screen on this Data Dictionary did not pass--DD will not be installed!" G S
 I $L(Z),$P(DIF(I),";",10)="y" S DIR("A")="Shall I write over the existing Data Definition",DIR("??")="^D DD^DIFROMH1",DIR("B")="YES",DIR(0)="Y" D ^DIR S DIFQ(N)=Y
S S DIFQR(N)=0 Q:$P(DIF(I),";",13)'="y"!$D(DIRUT)
 I $P(DIF(I),";",15)="y",$O(@(S_"0)"))>0 S DIF=$P(DIF(I),";",14)="o",DIR("A")="Want my data "_$P("merged with^to overwrite",U,DIF+1)_" yours",DIR("??")="^D DTA^DIFROMH1",DIR(0)="Y" D ^DIR S DIFQR(N)=$S('Y:Y,1:Y+DIF) Q
 S %=$P(DIF(I),";",14)="o" W !,*7,"I will ",$P("MERGE^OVERWRITE",U,%+1)," your data with mine." S DIFQR(N)=%+1
 Q
Q W *7,!!,"NO UPDATING HAS OCCURRED!" G Q^DIFROM0
 ;
PKG S X=$P($T(IXF),";",3),DIC="^DIC(9.4,",DIC(0)="",DIC("S")="I $P(^(0),U,2)="""_$P(X,U,2)_"""",X=$P(X,U) D ^DIC S DIFROM(0)=+Y K DIC
 Q
 ;
IXF ;;AUTO REPLENISHMENT/WARD STOCK^PSGW;303
ERX W *7,!!,"This INIT was built as a Network Mail Message and can ONLY be installed",!,"within the Mail system!!" G Q
