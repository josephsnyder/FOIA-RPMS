BGP6DP1O ; IHS/CMI/LAB - print ind 1 12 Nov 2010 7:38 AM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;SBIRT
SBI ;EP
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE)
 I BGPPTYPE="P" D H1^BGP6DPH
 I BGPPTYPE="D" D H1^BGP6PDL1
 S BGPORDP=$P(^BGPINDM(BGPIC,12),U,6) F BGPORDP1=1,2,3 S BGPPC1=BGPORDP_"."_BGPORDP1 Q:BGPQUIT  D:BGPPTYPE="P" PI^BGP6DP1C D:BGPPTYPE="D" PI^BGP6PDL1
 Q:BGPQUIT
 D I1AGE
 Q:BGPQUIT
 S BGPORDP=$P(^BGPINDM(BGPIC,12),U,6) F BGPORDP1=7,8,9 S BGPPC1=BGPORDP_"."_BGPORDP1 Q:BGPQUIT  D:BGPPTYPE="P" PI^BGP6DP1C D:BGPPTYPE="D" PI^BGP6PDL1
 D I2AGE
 Q
I1AGE ;EP  special age tallies
 Q:$G(BGPSUMON)
 Q:BGPRTYPE'=4
 I BGPINDM="W",BGPRTYPE=4 G FEM
 S BGPHD1="AC+BH Pts 9-75",BGPHD2="AC+BH Pts 9-75",BGPHD3=""
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D H3
 K BGPDAC,BGPDAP,BGPDAB
 S BGPORX=4 F BGPORXX=1,2,3 F BGPX="A","B","C","D","E","F","G","H" D AGES
 D I1AGEP
 Q:BGPQUIT
 S BGPHD1="Male AC+BH Pts 9-75",BGPHD2="Male AC+BH Pts 9-75",BGPHD3=""
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  W !,^BGPINDM(BGPIC,53,1,0) W:$D(^BGPINDM(BGPIC,53,2,0)) !,^BGPINDM(BGPIC,53,2,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S BGPORX=5 F BGPORXX=1,2,3 F BGPX="A","B","C","D","E","F","G","H" D AGES
 D I1AGEP
 Q:BGPQUIT
FEM ;
 S BGPHD1="Female AC+BH Pts 9-75",BGPHD2="Female AC+BH Pts 9-75",BGPHD3=""
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  W !,^BGPINDM(BGPIC,53,1,0) W:$D(^BGPINDM(BGPIC,53,2,0)) !,^BGPINDM(BGPIC,53,2,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S BGPORX=6 F BGPORXX=1,2,3 F BGPX="A","B","C","D","E","F","G","H" D AGES
 D I1AGEP
 K BGPHD3
 Q
AGES ;
 I BGPX="A" S BGPPP1=1
 I BGPX="B" S BGPPP1=2
 I BGPX="C" S BGPPP1=3
 I BGPX="D" S BGPPP1=4
 I BGPX="E" S BGPPP1=5
 I BGPX="F" S BGPPP1=6
 I BGPX="G" S BGPPP1=7
 I BGPX="H" S BGPPP1=8
 S BGPF="SBI."_BGPORX_"."_BGPORXX_BGPX S BGPPC=$O(^BGPINDMC("C",BGPF,0))
 I BGPORXX=1 D
 .S BGPDF=$P(^BGPINDMC(BGPPC,0),U,8)
 .S BGPNP=$P(^DD(90556.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .S $P(BGPDAC(1),U,BGPPP1)=$$V^BGP6DP1C(1,BGPRPT,N,P)
 .S $P(BGPDAP(1),U,BGPPP1)=$$V^BGP6DP1C(2,BGPRPT,N,P)
 .S $P(BGPDAB(1),U,BGPPP1)=$$V^BGP6DP1C(3,BGPRPT,N,P)
 ;
 S BGPNF=$P(^BGPINDMC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90556.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(BGPORXX,1),U,BGPPP1)=$$V^BGP6DP1C(1,BGPRPT,N,P)
 S $P(BGPDAC(BGPORXX,2),U,BGPPP1)=$S($P(BGPDAC(1),U,BGPPP1):($P(BGPDAC(BGPORXX,1),U,BGPPP1)/$P(BGPDAC(1),U,BGPPP1)*100),1:"")
 S $P(BGPDAP(BGPORXX,1),U,BGPPP1)=$$V^BGP6DP1C(2,BGPRPT,N,P)
 S $P(BGPDAP(BGPORXX,2),U,BGPPP1)=$S($P(BGPDAP(1),U,BGPPP1):($P(BGPDAP(BGPORXX,1),U,BGPPP1)/$P(BGPDAP(1),U,BGPPP1)*100),1:"")
 S $P(BGPDAB(BGPORXX,1),U,BGPPP1)=$$V^BGP6DP1C(3,BGPRPT,N,P)
 S $P(BGPDAB(BGPORXX,2),U,BGPPP1)=$S($P(BGPDAB(1),U,BGPPP1):($P(BGPDAB(BGPORXX,1),U,BGPPP1)/$P(BGPDAB(1),U,BGPPP1)*100),1:"")
 Q
I1AGEP ;
 S BGPYSTP=1
 I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D H3
 I BGPPTYPE'="P" D W^BGP6DP("",0,2,BGPPTYPE) D H3
 D W^BGP6DP("CURRENT REPORT PERIOD",0,1,BGPPTYPE)
 ;I BGPPTYPE="P" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAC" D I1AGEP1
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D H3
 D W^BGP6DP("",0,2,BGPPTYPE) ;D H3
 D W^BGP6DP("PREVIOUS REPORT PERIOD",0,1,BGPPTYPE)
 ;D W^BGP6DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 ;I BGPPTYPE="P" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAP" D I1AGEP1
 I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D H3
 D W^BGP6DP("",0,2,BGPPTYPE)
 D W^BGP6DP("BASELINE REPORT PERIOD",0,1,BGPPTYPE)
 ;D W^BGP6DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAB" D I1AGEP1
 Q
P1 ;
 I BGPPTYPE="D" D W^BGP6DP(BGPDL(BGPX,1),0,2,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP6DP(BGPPL(BGPX,1),0,2,BGPPTYPE),W^BGP6DP(BGPPL(BGPX,2),0,1,BGPPTYPE)
 S T=23 F X=1:1:8 S V=$P(@BGPARR@(BGPX,1),U,X) D W^BGP6DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="D" D W^BGP6DP(BGPDL(BGPX,2),0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP6DP(BGPPL(BGPX,3),0,1,BGPPTYPE),W^BGP6DP($G(BGPPL(BGPX,4)),0,1,BGPPTYPE)
 S T=23 F X=1:1:8 S V=$P(@BGPARR@(BGPX,2),U,X) D W^BGP6DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+7
 Q
I1AGEP1 ;
 NEW BGPX
 NEW BGPPL,BGPDL
 I BGPPTYPE="D" D W^BGP6DP(BGPHD1,0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP6DP(BGPHD2,0,1,BGPPTYPE)
 I BGPPTYPE="P",BGPHD3]"" D W^BGP6DP(BGPHD3,1,1,BGPPTYPE)
 S T=23 F X=1:1:8 S V=$P(@BGPARR@(1),U,X) D W^BGP6DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+7
 S BGPX=1,BGPDL(BGPX,1)="# w/ Screening for Alcohol Use",BGPPL(BGPX,1)="# w/ Screening for",BGPPL(BGPX,2)=" Alcohol Use",BGPDL(BGPX,2)="% w/ Screening for Alcohol Use",BGPPL(BGPX,3)="% w/ Screening for",BGPPL(BGPX,4)=" Alcohol Use" D P1
 S BGPX=2,BGPDL(BGPX,1)="A. # w/ Positive Screen w/ % of Total Screened",BGPPL(BGPX,1)="A. # w/ Positive Screen",BGPPL(BGPX,2)=" w/ % of Total Screened",BGPDL(BGPX,2)="% A. w/ Positive Screen w/ % of Total Screened" D
 .S BGPPL(BGPX,3)="% A. w/ Positive Screen w/ ",BGPPL(BGPX,4)=" % of Total Screened" D P1
 S BGPX=3,BGPDL(BGPX,1)="B. # w/ BNI/BI in 7 days of screen w/ % of Total Screened",BGPPL(BGPX,1)="B. # w/ BNI/BI in 7 days of screen",BGPPL(BGPX,2)=" w/ % of Total Screened" D
 .S BGPDL(BGPX,2)="% B. w/ BNI/BI in 7 days of screen w/ %of Total Screened",BGPPL(BGPX,3)="% B. w/ BNI/BI in 7 days of screen",BGPPL(BGPX,4)=" w/ % of Total Screened" D P1
 ;change from baseline/previous year
 I BGPARR="BGPDAP"!(BGPARR="BGPDAB") D
 .D W^BGP6DP("CHANGE FROM "_$S(BGPARR="BGPDAP":"PREVIOUS YR %",1:"BASELINE YR %"),0,2,BGPPTYPE)
 .F BGPX=1,2,3 D
 ..I BGPPTYPE="P" D W^BGP6DP(BGPPL(BGPX,1),0,1,BGPPTYPE) S L=BGPPL(BGPX,2) D PBY
 ..I BGPPTYPE="D" S L=BGPDL(BGPX,1) D PBY
 Q
PBY ;
 D W^BGP6DP(L,0,1,BGPPTYPE)
 S T=23 F P=1:1:8 S N=$P(BGPDAC(BGPX,2),U,P),O=$P(@BGPARR@(BGPX,2),U,P) S:N="" N=0 S:O="" O=0 S Y=$S(BGPPTYPE="P":$J($FN((N-O),"+,",1),6),1:$$SB($J((N-O),6,1))) D W^BGP6DP(Y,0,0,BGPPTYPE,P+1,T) S T=T+7
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
H3 ;EP
 Q:$G(BGPSUMON)
 D W^BGP6DP(BGPHD1,1,2,BGPPTYPE)
 D W^BGP6DP("Age Distribution",0,1,BGPPTYPE,1,40)
 D W^BGP6DP(" 9-12",0,1,BGPPTYPE,2,23)
 D W^BGP6DP("13-18",0,0,BGPPTYPE,3,30)
 D W^BGP6DP("19-24",0,0,BGPPTYPE,4,37)
 D W^BGP6DP("25-34",0,0,BGPPTYPE,5,44)
 D W^BGP6DP("35-44",0,0,BGPPTYPE,6,51)
 D W^BGP6DP("45-54",0,0,BGPPTYPE,7,58)
 D W^BGP6DP("55-64",0,0,BGPPTYPE,8,65)
 D W^BGP6DP("65-75",0,0,BGPPTYPE,9,72)
 Q
SB(X) ;EP - Strip
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
I2AGE ;EP  special age tallies
 Q:$G(BGPSUMON)
 Q:BGPRTYPE'=4
 I BGPINDM="W",BGPRTYPE=4 G FEM2
 S BGPHD1="ACTIVE CLINICAL PLUS BH PATIENTS W/ POSITIVE ALCOHOL SCREEN AGES 9-75",BGPHD2="AC+BH Pts 9-75 w/ Positive",BGPHD3=" Alcohol Screen"
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D H3
 K BGPDAC,BGPDAP,BGPDAB
 S BGPORX=10 F BGPORXX=1:1:5 F BGPX="A","B","C","D","E","F","G","H" D AGES
 D I2AGEP
 Q:BGPQUIT
 S BGPHD1="MALE ACTIVE CLINICAL PLUS BH PATIENTS W/ POSITIVE ALCOHOL SCREEN AGES 9-75",BGPHD2="MALE AC+BH Pts 9-75 w/ Positive",BGPHD3=" Alcohol Screen"
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  W !,^BGPINDM(BGPIC,53,1,0) W:$D(^BGPINDM(BGPIC,53,2,0)) !,^BGPINDM(BGPIC,53,2,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S BGPORX=11 F BGPORXX=1:1:5 F BGPX="A","B","C","D","E","F","G","H" D AGES
 D I2AGEP
 Q:BGPQUIT
FEM2 ;
 S BGPHD1="FEMALE ACTIVE CLINICAL PLUS BH PATIENTS W/ POSITIVE ALCOHOL SCREEN AGES 9-75",BGPHD2="FEMALE AC+BH Pts 9-75 w/ Positive",BGPHD3=" Alcohol Screen"
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  W !,^BGPINDM(BGPIC,53,1,0) W:$D(^BGPINDM(BGPIC,53,2,0)) !,^BGPINDM(BGPIC,53,2,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S BGPORX=12 F BGPORXX=1:1:5 F BGPX="A","B","C","D","E","F","G","H" D AGES
 D I2AGEP
 K BGPHD3
 Q
I2AGEP1 ;
 NEW BGPX
 NEW BGPPL,BGPDL
 I BGPPTYPE="D" D W^BGP6DP(BGPHD1,0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP6DP(BGPHD2,0,1,BGPPTYPE)
 I BGPPTYPE="P",BGPHD3]"" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S T=23 F X=1:1:8 S V=$P(@BGPARR@(1),U,X) D W^BGP6DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+7
 S BGPX=1,BGPDL(BGPX,1)="# w/ BNI/BI in 7 days of screen",BGPPL(BGPX,1)="# w/ BNI/BI in",BGPPL(BGPX,2)=" 7 days of screen" D
 .S BGPDL(BGPX,2)="% w/ BNI/BI in 7 days of screen",BGPPL(BGPX,3)="% w/ BNI/BI in",BGPPL(BGPX,4)="7 days of screen" D P1
 S BGPX=2,BGPDL(BGPX,1)="A. # w/ BNI/BI on same day w/ % of Total BNI/BI",BGPPL(BGPX,1)="A. # w/ BNI/BI on same day" D
 .S (BGPPL(BGPX,4),BGPPL(BGPX,2))=" w/ % of Total BNI/BI",BGPDL(BGPX,2)="% A. w/ BNI/BI on same day w/ % of Total BNI/BI",BGPPL(BGPX,3)="% A. w/ BNI/BI on same day" D P1
 S BGPX=3,BGPDL(BGPX,1)="B. # w/ BNI/BI in 1-3 days w/ % of Total BNI/BI",BGPPL(BGPX,1)="B. # w/ BNI/BI in 1-3 days" D
 .S (BGPPL(BGPX,4),BGPPL(BGPX,2))=" w/ % of Total BNI/BI",BGPDL(BGPX,2)="% B. w/ BNI/BI in 1-3 days w/ % of Total BNI/BI",BGPPL(BGPX,3)="% B. w/ BNI/BI in 1-3 days" D P1
 S BGPX=4,BGPDL(BGPX,1)="C. # w/ BNI/BI in 4-7 days w/ % of Total BNI/BI",BGPPL(BGPX,1)="C. # w/ BNI/BI in 4-7 days" D
 .S (BGPPL(BGPX,4),BGPPL(BGPX,2))=" w/ % of Total BNI/BI",BGPDL(BGPX,2)="% C. w/ BNI/BI in 4-7 days w/ % of Total BNI/BI",BGPPL(BGPX,3)="% C. w/ BNI/BI in 4-7 days" D P1
 S BGPX=5,BGPDL(BGPX,1)="D. # w/ Referral in 7 days of screen w/ % of Total BNI/BI",BGPPL(BGPX,1)="D. # w/ Referral in 7 days of Screen" D
 .S (BGPPL(BGPX,4),BGPPL(BGPX,2))=" w/ % of Total BNI/BI",BGPDL(BGPX,2)="% D. w/ Referral in 7 days of screen w/ % of Total BNI/BI",BGPPL(BGPX,3)="% D. w/ Referral in 7 days of screen",BGPPL(BGPX,4)=" w/ % of Total BNI/BI" D P1
 ;change from baseline/previous year
 I BGPARR="BGPDAP"!(BGPARR="BGPDAB") D
 .D W^BGP6DP("CHANGE FROM "_$S(BGPARR="BGPDAP":"PREVIOUS YR %",1:"BASELINE YR %"),0,2,BGPPTYPE)
 .F BGPX=1,2,3,4,5 D
 ..I BGPPTYPE="P" D W^BGP6DP(BGPPL(BGPX,1),0,1,BGPPTYPE) S L=BGPPL(BGPX,2) D PBY
 ..I BGPPTYPE="D" S L=BGPDL(BGPX,1) D PBY
 Q
I2AGEP ;
 S BGPYSTP=1
 I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D H3
 I BGPPTYPE'="P" D W^BGP6DP("",0,2,BGPPTYPE) D H3
 D W^BGP6DP("CURRENT REPORT PERIOD",0,2,BGPPTYPE)
 ;I BGPPTYPE="P" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAC" D I2AGEP1
 I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D H3
 D W^BGP6DP("",0,2,BGPPTYPE)
 D W^BGP6DP("PREVIOUS REPORT PERIOD",0,1,BGPPTYPE)
 ;D W^BGP6DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 ;I BGPPTYPE="P" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAP" D I2AGEP1
 I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D H3
 D W^BGP6DP("",0,2,BGPPTYPE)
 D W^BGP6DP("BASELINE REPORT PERIOD",0,1,BGPPTYPE)
 ;D W^BGP6DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 ;I BGPPTYPE="P" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAB" D I2AGEP1
 Q
