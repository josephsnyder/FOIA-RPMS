LRMRSHRT ; IHS/DIR/FJE - MULTI-RULE SHEWHART QUALITY CONTROL 2/6/91 08:35 ;
 ;;5.2;LR;**1013**;JUL 15, 2002
 ;
 ;;5.2;LAB SERVICE;;Sep 27, 1994
 ;IF LRTEST="" DO FOR LRALL, OTHERWISE, "T1^T2^etc."
 S LRMWDT=LRAD ;S U="^",LRMWDT=$P(^LRO(68,LRAA,0),U,3),LRMWDT=$S(LRAD="Y":$E(DT,1,3)_"0000","D"[LRAD:DT,"M"[LRAD:$E(DT,1,5)_"00","Q"[LRAD:$E(DT,1,3)_"0000"+(($E(DT,4,5)-1)\3*300+100),1:DT)
 S X1=LRMWDT,X2=-1 D C^%DTC S LRYDT=X
 K LRTS,LRTX S LRDFN=+^LRO(68,LRAA,1,LRMWDT,1,LRAN,0),LRIFN=+$P(^LR(LRDFN,0),U,3),LRPIFN=+$P(^LAB(62.3,LRIFN,0),U,3)
 S I=0 F  S I=$O(^LAB(62.3,LRIFN,1,I)) Q:I<1  S LRTS=^(I,0),P=$P(LRTS,U,4) I P'="" S LRTS(P)=$P(LRTS,U,1,3)
 F I=0 F  S I=$O(^LAB(62.3,LRPIFN,1,I)) Q:I<1  S LRTX=^(I,0),P=$P(LRTX,U,4) I P'="" S LRTX(P)=$P(LRTX,U,3)
 S P="" F I=0:0 S P=$O(LRTS(P)) Q:P=""  D LRTEST
 K LRYA,LRYC,LRYDT,LRYG,X1,X2,LRSIGN,LRPCNT,LRNUM,LRIFN,LRALL,LRGRP,LRPX,LRPSD,LRPIFN,LRPGRP,LRJCTRSN,LRMWDT,A,DA,DIE,I,J,K Q
LRTEST S LRTS=+LRTS(P),X='$L(LRTEST) F J=0:0 S K=$P(LRTEST,U,J) Q:K=""  S X=K=LRTS Q:X=1
 Q:'X  S LRSS=$P(P,";",1),LRSB=$P(P,";",2),LRSSP=$P(P,";",3),LRSD=$P(LRTS(P),U,3),LRPSD=$S($D(LRTX(P)):LRTX(P),1:"")
 S X1="" S:$D(^LR(LRDFN,LRSS,LRIDT,LRSB)) X1=$P(^(LRSB),U,LRSSP)-$P(LRTS(P),U,2),LRSIGN=$S(X1<0:-1,1:1) Q:X1=""
 G T4:$D(^LRO(68,LRAA,1,LRMWDT,4,LRIFN,1,LRTS,0)) I '$D(^LRO(68,LRAA,1,LRYDT,4,LRIFN,1,LRTS,0)) S ^LRO(68,LRAA,1,LRMWDT,4,LRIFN,1,LRTS,0)=LRTS_U_0 G T2
 S Y=^LRO(68,LRAA,1,LRYDT,4,LRIFN,1,LRTS,0),LRNUM=8 D LRYC S ^LRO(68,LRAA,1,LRMWDT,4,LRIFN,1,LRTS,0)=Y
T2 S ^(0)="^68.12PA^"_LRTS_U_$S($D(^LRO(68,LRAA,1,LRMWDT,4,LRIFN,1,0)):1+$P(^(0),U,4),1:1)
 G T4:$D(^LRO(68,LRAA,1,LRMWDT,4,LRIFN,0)) S ^(0)=LRIFN,^(0)="^68.11PA^"_LRIFN_U_$S($D(^LRO(68,LRAA,1,LRMWDT,4,0)):1+$P(^(0),U,4),1:1)
T4 W ! S Y=$S($D(^LRO(68,LRAA,1,LRMWDT,4,LRPIFN,1,LRTS,0)):^(0),1:""),LRPCNT=$P(Y,U,2),LRNUM=9 D LRYC S LRPGRP=LRGRP
 S Y=^LRO(68,LRAA,1,LRMWDT,4,LRIFN,1,LRTS,0),$P(Y,U,2)=1+$P(Y,U,2),Y=Y_U_X1,^(0)=Y,LRPGRP=$S(LRPCNT=$P(Y,U,2):LRPGRP,1:"") D LRYC
 K DR S X=$S(X1<0:-X1,1:X1),LRJCTRSN="",DIE="^LR("_LRDFN_",""CH"",",DA=LRIDT,DA(1)=LRDFN G INCONTRL:X<(2*LRSD)&($L(LRPGRP)="")
 I $L(LRPGRP),$L(LRPSD) S LRPX=$P(LRPGRP,U,LRCNT),LRPX=$S(LRPX<0:-LRPX,1:LRPX) G INCONTRL:X<(2*LRSD)&(LRPX<2*LRPSD)
 I X>(3*LRSD) S LRJCTRSN="1/3S ",DR=".99///1/3S" D ^DIE
 I $L(LRPGRP),$L(LRPSD),$P(LRPGRP,U,LRCNT)>(2*LRPSD) S LRJCTRSN=LRJCTRSN_"2/2S ",DR=".99///2/2S" D ^DIE
 G INCONTRL:LRCNT<2 I $P(LRGRP,U,LRCNT-1)>(2*LRSD) S LRJCTRSN=LRJCTRSN_"2/2S ",DR=".99///2/2S" D ^DIE
 I $L(LRPGRP),$L(LRPSD) S X=$P(LRPGRP,U,LRCNT) I LRSIGN*X<0 S X=$S(X<1:-X,1:X)/LRPSD+(LRSIGN*X1/LRSD) I X>4 S LRJCTRSN=LRJCTRSN_"R/4S ",DR=".99///R/4S" D ^DIE
 I $L(LRGRP) S X=$P(LRGRP,U,LRCNT-1) I LRSIGN*X<0 S X=$S(X<1:-X,1:X)/LRSD+(LRSIGN*X1/LRSD) I X>4 S LRJCTRSN=LRJCTRSN_"R/4S ",DR=".99///R/4S" D ^DIE
 I $L(LRPGRP),$L(LRPSD) S N=1,A=LRSD,LRYG=LRGRP,LRALL=0 D LRYG S A=LRPSD,LRYG=LRPGRP D LRYG I LRALL=10 S LRJCTRSN=LRJCTRSN_"10/1S ",DR=".99///10/1S" D ^DIE
 G INCONTRL:LRCNT<10 S N=9,A=LRSD,LRYG=LRGRP,LRALL=0 D LRYG I LRALL=9 S LRJCTRSN=LRJCTRSN_"10/1S ",DR=".99///10/1S" D ^DIE
 ; I $L(LRPGRP),$L(LRPSD) S N=1,A=LRSD,LRYG=LRGRP,LRALL=0 D LRYG S A=LRPSD,LRYG=LRPGRP D LRYG I LRALL=4 S LRJCTRSN=LRJCTRSN_"4/1S ",DR=".99///4/1S" D ^DIE
 ; G INCONTRL:LRCNT<4 S N=3,A=LRSD,LRYG=LRGRP,LRALL=0 D LRYG I LRALL=4 S LRJCTRSN=LRJCTRSN_"4/1S ",DR=".99///4/1S" D ^DIE
 ; I $L(LRPGRP),$L(LRPSD) S N=4,A=0,LRYG=LRGRP,LRALL=0 D LRYG S LRYG=LRPGRP D LRYG I LRALL=10 S LRJCTRSN=LRJCTRSN_"10/MX ",DR=".99///10/MX" D ^DIE
 ; G INCONTRL:LRCNT<10 S N=9,A=0,LRYG=LRGRP,LRALL=0 D LRYG I LRALL=10 S LRJCTRSN=LRJCTRSN_"10/MX ",DR=".99///10/MX" D ^DIE
INCONTRL Q:LRJCTRSN=""
OUTCNTRL S $P(^LRO(68,LRAA,1,LRMWDT,4,LRIFN,0),U,2)=LRJCTRSN
 Q
LRYC S LRYC=$P(Y,U,2)+2,LRYA=LRYC-LRNUM S:LRYA<3 LRYA=3 S LRCNT=LRYC-LRYA+1,LRGRP=$P(Y,U,LRYA,LRYC),Y=LRTS_U_LRCNT_U_LRGRP
 Q
LRYG F J=LRCNT-N:1:LRCNT Q:$S($P(LRYG,U,J)<0:-1,1:1)'=LRSIGN  S:$P(LRYG,U,J)*LRSIGN>A LRALL=LRALL+1
 Q