BGP7DP51 ; IHS/CMI/LAB - print ind H ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
I1AGE ;EP special age tallies
 Q:BGPRTYPE'=4
 I BGPINDG="W",BGPRTYPE=4 G FEM
 S BGPHD1="TOTAL ACTIVE CLINICAL POPULATION",BGPHD2="# Active Clinical"
 I '$G(BGPSUMON) D HEADER^BGP7DPH Q:BGPQUIT  W !,^BGPINDG(BGPIC,53,1,0) W:$D(^BGPINDG(BGPIC,53,2,0)) !,^BGPINDG(BGPIC,53,2,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S (C,D)=0 F BGPX="BD","BG","BJ","BM","BP","BS" D I1AGE1,I1AGE2
 D I1AGEP
 Q:BGPQUIT
 S BGPHD1="MALE ACTIVE CLINICAL POPULATION",BGPHD2="MALE Active Clinical"
 I '$G(BGPSUMON) D HEADER^BGP7DPH Q:BGPQUIT  W !,^BGPINDG(BGPIC,53,1,0) W:$D(^BGPINDG(BGPIC,53,2,0)) !,^BGPINDG(BGPIC,53,2,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S (D,C)=0 F BGPX="BE","BH","BK","BN","BQ","BT" D I1AGE1,I1AGE2
 D I1AGEP
 Q:BGPQUIT
FEM ;
 S BGPHD1="FEMALE ACTIVE CLINICAL POPULATION",BGPHD2="FEMALE Active Clinical"
 I '$G(BGPSUMON) D HEADER^BGP7DPH Q:BGPQUIT  W !,^BGPINDG(BGPIC,53,1,0) W:$D(^BGPINDG(BGPIC,53,2,0)) !,^BGPINDG(BGPIC,53,2,0)  D H3
 K BGPDAC,BGPDAP,BGPDAB S (C,D)=0 F BGPX="BF","BI","BL","BO","BR","BU" D I1AGE1,I1AGE2
 D I1AGEP
 Q
I1AGE1 ;
 ;gather up all #'s
 S C=C+1
 S BGPF="H."_BGPX_".1" S BGPPC=$O(^BGPINDGC("C",BGPF,0))
 S BGPDF=$P(^BGPINDGC(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90558.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V^BGP7DP1C(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V^BGP7DP1C(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V^BGP7DP1C(3,BGPRPT,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S BGPNF=$P(^BGPINDGC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90558.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V^BGP7DP1C(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V^BGP7DP1C(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V^BGP7DP1C(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGE2 ;
 S D=D+1
 S BGPF="H."_BGPX_".2" S BGPPC=$O(^BGPINDGC("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPINDGC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90558.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,4)=$$V^BGP7DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,5)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,4)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,4)=$$V^BGP7DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,5)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,4)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,4)=$$V^BGP7DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,5)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,4)/$P(BGPDAB(D),U,2)*100),1:"")
I1AGE3 ;
 S BGPF="H."_BGPX_".3" S BGPPC=$O(^BGPINDGC("C",BGPF,0))
 ;set 6th piece to numerator and 7th to %
 S BGPNF=$P(^BGPINDGC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90558.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,6)=$$V^BGP7DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,7)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,6)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,6)=$$V^BGP7DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,7)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,6)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,6)=$$V^BGP7DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,7)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,6)/$P(BGPDAB(D),U,2)*100),1:"")
I1AGE4 ;
 S BGPF="H."_BGPX_".4" S BGPPC=$O(^BGPINDGC("C",BGPF,0))
 ;set 8th piece to numerator and 9th to %
 S BGPNF=$P(^BGPINDGC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90558.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,8)=$$V^BGP7DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,9)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,8)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,8)=$$V^BGP7DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,9)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,8)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,8)=$$V^BGP7DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,9)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,8)/$P(BGPDAB(D),U,2)*100),1:"")
I1AGE5 ;
 G I1AGE6
 S BGPF="H."_BGPX_".5" S BGPPC=$O(^BGPINDGC("C",BGPF,0))
 ;set 10th piece to numerator and 11th to %
 S BGPNF=$P(^BGPINDGC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90558.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,10)=$$V^BGP7DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,11)=$S($P(BGPDAC(D),U,4):($P(BGPDAC(D),U,10)/$P(BGPDAC(D),U,4)*100),1:"")
 S $P(BGPDAP(D),U,10)=$$V^BGP7DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,11)=$S($P(BGPDAP(D),U,4):($P(BGPDAP(D),U,10)/$P(BGPDAP(D),U,4)*100),1:"")
 S $P(BGPDAB(D),U,10)=$$V^BGP7DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,11)=$S($P(BGPDAB(D),U,4):($P(BGPDAB(D),U,10)/$P(BGPDAB(D),U,4)*100),1:"")
I1AGE6 ;
 S BGPF="H."_BGPX_".6" S BGPPC=$O(^BGPINDGC("C",BGPF,0))
 ;set 12th piece to numerator and 13th to %
 S BGPNF=$P(^BGPINDGC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90558.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,12)=$$V^BGP7DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,13)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,12)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,12)=$$V^BGP7DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,13)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,12)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,12)=$$V^BGP7DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,13)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,12)/$P(BGPDAB(D),U,2)*100),1:"")
 Q
I1AGEP ;
 D I1AGEP^BGP7DP50
 Q
SETN ;set numerator fields
 S BGPCYN=$$V^BGP7DP1C(1,BGPRPT,N,P)
 S BGPPRN=$$V^BGP7DP1C(2,BGPRPT,N,P)
 S BGPBLN=$$V^BGP7DP1C(3,BGPRPT,N,P)
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
 Q
V(T,R,N,P) ;EP
 I $G(BGPAREAA) G VA
 I T=1 Q $P($G(^BGPGPDCG(R,N)),U,P)
 I T=2 Q $P($G(^BGPGPDPG(R,N)),U,P)
 I T=3 Q $P($G(^BGPGPDBG(R,N)),U,P)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPGPDCG(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPGPDPG(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPGPDBG(X,N)),U,P)
 .Q
 Q C
 ;
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
H3 ;EP
 Q:$G(BGPSUMON)
 W !!,$$CTR(BGPHD1,80)
 W !?40,"Age Distribution"
 W !?25,"5-13",?30,"14-17",?37,"18-24",?44,"25-44",?51,"45-64",?58,"65+",!
 Q
