AVANTEG0 ; DSM/GTH - Package checksum checker ; 27-MAY-1993
 ;;93.2;VA SUPPORT FILES;;JUL 01, 1993
 ;;7.0;MAY 27, 1993@15:14:55
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 ;
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
AVAIN149 ;;6022924
AVAIN150 ;;7748386
AVAIN151 ;;10083394
AVAIN152 ;;7758449
AVAIN153 ;;3135472
AVAIN154 ;;2418100
AVAIN155 ;;8335323
AVAIN156 ;;5805270
AVAIN157 ;;5484629
AVAIN158 ;;3474614
AVAINIT ;;10691861
AVAINIT1 ;;5487376
AVAINIT2 ;;5215837
AVAINIT3 ;;15731587
AVAINIT4 ;;3357785
AVAINIT5 ;;3112924
AVAPOST ;;12729
AVAPRVC ;;2384391
LJFPV200 ;;4767348
ORDD1 ;;6334398
ORDD101 ;;7689130
XQOR ;;8213027
XQOR1 ;;12429636
XQOR2 ;;4783934
XQOR3 ;;6995319
XQOR4 ;;5404137
XQOR6 ;;247314
XQORD ;;5245554
XQORD1 ;;2990726
XQORM ;;2760420
XQORM1 ;;3735320
XQORM2 ;;8066777
XQORM3 ;;6000635
XQORM4 ;;4355781
XQORM5 ;;2832749
XQORMX ;;5081453
XQORO ;;11141390
