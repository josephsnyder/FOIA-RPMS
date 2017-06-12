BGP5DP1C ; IHS/CMI/LAB - print ind 1 21 Mar 2010 12:55 PM ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;
PI ;EP
 S BGPDENP=0
 S BGPPC2=0 F  S BGPPC2=$O(^BGPINDKC("ABC",BGPPC1,BGPPC2)) Q:BGPPC2=""  S BGPPC=$O(^BGPINDKC("ABC",BGPPC1,BGPPC2,0)) D PI1
 Q
PI1 ;EP
 K BGPEXCT,BGPSDP,BGPSDPN,BGPSDPO,BGPSDPD
 Q:'$$CHECK^BGP5DP1E(BGPPC)
 I $P(^BGPINDKC(BGPPC,0),U,4)="E-2.B.3" D:BGPPTYPE="D" W^BGP5DP("",0,1,BGPPTYPE) D PI1^BGP5DP2 Q
 S BGPDF=$P(^BGPINDKC(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90554.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S BGPCYD=$$V(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA(1,N,P)
 S BGPPRD=$$V(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA(2,N,P)
 S BGPBLD=$$V(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA(3,N,P)
 I BGPRTYPE=1,$P(^BGPINDKC(BGPPC,0),U,4)="MS.A.9" S BGPDENP=0
 I BGPRTYPE=1,$P(^BGPINDKC(BGPPC,0),U,4)="DM.2.1" S BGPDENP=0
 I BGPRTYPE=1,$P(^BGPINDKC(BGPPC,0),U,4)="031-A.A.2" S BGPDENP=0
 I BGPRTYPE=7,$P(^BGPINDKC(BGPPC,0),U,4)="028.C.4" S BGPDENP=0
 I BGPRTYPE=1,$P(^BGPINDKC(BGPPC,0),U,4)="E-2.A.1" S BGPDENP=0
 I BGPRTYPE=9,$P(^BGPINDKC(BGPPC,0),U,4)="027.C.36" S BGPDENP=0
 I BGPINDK="I",$P(^BGPINDKC(BGPPC,0),U,4)="003.B.7" S BGPDENP=0
 I BGPINDK="I",$P(^BGPINDKC(BGPPC,0),U,4)="002.B.9" S BGPDENP=0
 I BGPINDK="I",$P(^BGPINDKC(BGPPC,0),U,4)="004.B.3" S BGPDENP=0
 I BGPINDK="I",$P(^BGPINDKC(BGPPC,0),U,4)="032.BA.2" S BGPDENP=0
 I BGPINDK="I",$P(^BGPINDKC(BGPPC,0),U,4)="BFR.A.2" S BGPDENP=0
 I BGPRTYPE=1,$P(^BGPINDKC(BGPPC,0),U,4)="026.C.5" S BGPDENP=0
 I 'BGPDENP D
 .I $P($G(^BGPINDKC(BGPPC,12)),U,14) Q
 .I $P(^BGPINDKC(BGPPC,0),U,11),BGPRTYPE=1 I '$G(BGPSUMON) D HEADER^BGP5DPH Q:BGPQUIT  D W^BGP5DP(^BGPINDK(BGPIC,53,1,0),0,2,BGPPTYPE) D:$D(^BGPINDK(BGPIC,53,2,0)) W^BGP5DP(^BGPINDK(BGPIC,53,2,0),0,1,BGPPTYPE) D H1^BGP5DPH
 .I $P(^BGPINDKC(BGPPC,0),U,24),BGPRTYPE=4 I '$G(BGPSUMON) D HEADER^BGP5DPH Q:BGPQUIT  W !!,^BGPINDK(BGPIC,53,1,0) W:$D(^BGPINDK(BGPIC,53,2,0)) !,^BGPINDK(BGPIC,53,2,0) D H1^BGP5DPH
 .I $P($G(^BGPINDKC(BGPPC,12)),U,15),BGPRTYPE=7 I '$G(BGPSUMON) D HEADER^BGP5DPH Q:BGPQUIT  W !!,^BGPINDK(BGPIC,53,1,0) W:$D(^BGPINDK(BGPIC,53,2,0)) !,^BGPINDK(BGPIC,53,2,0) D H1^BGP5DPH
 .I $Y>(BGPIOSL-10),'$G(BGPSUMON) D HEADER^BGP5DPH Q:BGPQUIT  W !!,^BGPINDK(BGPIC,53,1,0) W:$D(^BGPINDK(BGPIC,53,2,0)) !,^BGPINDK(BGPIC,53,2,0) D H1^BGP5DPH
 .I BGPRTYPE=1,'$G(BGPSEAT),$P($G(^BGPINDKC(BGPPC,20)),U,4)]"" D  I 1
 ..W:'$G(BGPSUMON) !!,$P(^BGPINDKC(BGPPC,20),U,4)
 ..I $P(^BGPINDKC(BGPPC,20),U,5)]"" W:'$G(BGPSUMON) !,$P(^BGPINDKC(BGPPC,20),U,5)
 ..I $P(^BGPINDKC(BGPPC,20),U,6)]"" W:'$G(BGPSUMON) !,$P(^BGPINDKC(BGPPC,20),U,6)
 .E  D
 ..I $G(BGPSEAT) W !!,$P(^DIBT(BGPSEAT,0),U)," Population"
 ..I '$G(BGPSUMON) D
 ...I $G(BGPSEAT) W !,$P(^BGPINDKC(BGPPC,0),U,17) I 1
 ...E  W !!,$P(^BGPINDKC(BGPPC,0),U,17)
 ..I $P(^BGPINDKC(BGPPC,0),U,18)]"" D C18
 ..I $P(^BGPINDKC(BGPPC,0),U,21)]"" D C21
 .W:'$G(BGPSUMON) ?20,$$C(BGPCYD,0,8),?35,$$C(BGPPRD,0,8),?58,$$C(BGPBLD,0,8),!
 .S BGPDENP=1
 I $E($P(^BGPINDKC(BGPPC,0),U,4),1,2)="I." D
 .S BGPDF=$P(^BGPINDKC(BGPPC,0),U,8)
 .;get denom
 .S BGPNP=$P(^DD(90554.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .S BGPCYD=$$V(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA(1,N,P)
 .S BGPPRD=$$V(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA(2,N,P)
 .S BGPBLD=$$V(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA(3,N,P)
 S BGPNF=$P(^BGPINDKC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90554.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN
 I $P(^BGPINDKC(BGPPC,0),U,22) W:'$G(BGPSUMON) !
 I $P($G(^BGPINDKC(BGPPC,12)),U,8),BGPRTYPE=4 I '$G(BGPSUMON) D HEADER^BGP5DPH Q:BGPQUIT  W !!,^BGPINDK(BGPIC,53,1,0) W:$D(^BGPINDK(BGPIC,53,2,0)) !,^BGPINDK(BGPIC,53,2,0) D H1^BGP5DPH
 I $P($G(^BGPINDKC(BGPPC,21)),U,5),BGPRTYPE=1 I '$G(BGPSUMON) D HEADER^BGP5DPH Q:BGPQUIT  W !!,^BGPINDK(BGPIC,53,1,0) W:$D(^BGPINDK(BGPIC,53,2,0)) !,^BGPINDK(BGPIC,53,2,0) D H1^BGP5DPH
 I BGPRTYPE=1,$P($G(^BGPINDKC(BGPPC,20)),U,1)]"",'$G(BGPSUMON) D  G N
 .W !,$P(^BGPINDKC(BGPPC,20),U,1)
 .I $P(^BGPINDKC(BGPPC,20),U,2)]"" W !,$P(^BGPINDKC(BGPPC,20),U,2)
 .I $P(^BGPINDKC(BGPPC,20),U,3)]"" W !,$P(^BGPINDKC(BGPPC,20),U,3)
 W:'$G(BGPSUMON) !,$P(^BGPINDKC(BGPPC,0),U,15) I BGPRTYPE=4,$P($G(^BGPINDKC(BGPPC,12)),U,5) W:'$G(BGPSUMON) " (GPRA)"
 I $P(^BGPINDKC(BGPPC,0),U,16)]"" W:'$G(BGPSUMON) !?1,$P(^BGPINDKC(BGPPC,0),U,16)
 I BGPRTYPE=4,$P($G(^BGPINDKC(BGPPC,12)),U,6) W:$P(^BGPINDKC(BGPPC,0),U,16)="" ! W:'$G(BGPSUMON) " (GPRA)"
 I $P(^BGPINDKC(BGPPC,0),U,19)]"" W:'$G(BGPSUMON) !?1,$P(^BGPINDKC(BGPPC,0),U,19)
 I BGPRTYPE=4,$P($G(^BGPINDKC(BGPPC,12)),U,7) W:$P(^BGPINDKC(BGPPC,0),U,19)="" ! W:'$G(BGPSUMON) " (GPRA)"
N D H2^BGP5DPH
 Q
C18 ;
 W:'$G(BGPSUMON) !,$P(^BGPINDKC(BGPPC,0),U,18)
 Q
C21 ;
 W:'$G(BGPSUMON) !,$P(^BGPINDKC(BGPPC,0),U,21)
 Q
I1AGE ;EP
 D I1AGE^BGP5DP11
 Q
SETN ;EP
 S BGPCYN=$$V^BGP5DP1C(1,BGPRPT,N,P,2)
 S BGPPRN=$$V^BGP5DP1C(2,BGPRPT,N,P,2)
 S BGPBLN=$$V^BGP5DP1C(3,BGPRPT,N,P,2)
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
SETN1 ;EP
 NEW X
 I $G(BGPAREAA) D SDP
 I $P($G(^BGPINDKC(BGPPC,14)),U),'$G(BGPNOSUM) D
 .S ^TMP($J,"SUMMARY",$P(^BGPSCAT($P(^BGPINDKC(BGPPC,14),U,5),0),U,2),$P(^BGPINDKC(BGPPC,14),U,6),BGPPC)=BGPCYP_U_BGPPRP_U_BGPBLP
 .I $G(BGPAREAA) D
 ..S X=0 F  S X=$O(BGPSDP(X)) Q:X'=+X  D
 ...S ^TMP($J,"SUMMARY DETAIL PAGE",$P(^BGPSCAT($P(^BGPINDKC(BGPPC,14),U,5),0),U,2),$P(^BGPINDKC(BGPPC,14),U,6),BGPPC,X)=$P($G(BGPSDP(X,1)),U,3)_U_$P($G(BGPSDP(X,2)),U,3)_U_$P($G(BGPSDP(X,3)),U,3)_U_$J(BGPCYP,5,1)
 .S ^TMP($J,"SUMMARYDEL",$P(^BGPSCAT($P(^BGPINDKC(BGPPC,14),U,5),0),U,2),$P(^BGPINDKC(BGPPC,14),U,6),BGPPC)=$$SB($J(BGPCYP,5,1))_U_$$SB($J(BGPPRP,5,1))_U_$$SB($J(BGPBLP,5,1))
 .I $G(BGPAREAA) D
 ..S X=0 F  S X=$O(BGPSDP(X)) Q:X'=+X  D
 ...S A=$P(^BGPSCAT($P(^BGPINDKC(BGPPC,14),U,5),0),U,2)
 ...S B=$P(^BGPINDKC(BGPPC,14),U,6)
 ...S ^TMP($J,"SUMMARYDEL DETAIL PAGE",A,B,BGPPC,X)=$$SB($J($P($G(BGPSDP(X,1)),U,3),5,1))_U_$$SB($J($P($G(BGPSDP(X,2)),U,3),5,1))_U_$$SB($J($P($G(BGPSDP(X,3)),U,3),5,1))_U_$$SB($J(BGPCYP,5,1))
 ;NON
 I $P($G(^BGPINDKC(BGPPC,15)),U),'$G(BGPNOSUM) D
 .S ^TMP($J,"SUMMARY NON",$P(^BGPSCAT($P(^BGPINDKC(BGPPC,15),U,5),0),U,2),$P(^BGPINDKC(BGPPC,15),U,6),BGPPC)=BGPCYP_U_BGPPRP_U_BGPBLP
 .I $G(BGPAREAA) D
 ..S X=0 F  S X=$O(BGPSDPN(X)) Q:X'=+X  D
 ...S ^TMP($J,"SUMMARY DETAIL PAGE NON",$P(^BGPSCAT($P(^BGPINDKC(BGPPC,15),U,5),0),U,2),$P(^BGPINDKC(BGPPC,15),U,6),BGPPC,X)=$P($G(BGPSDPN(X,1)),U,3)_U_$P($G(BGPSDPN(X,2)),U,3)_U_$P($G(BGPSDPN(X,3)),U,3)_U_$J(BGPCYP,5,1)
 I $P($G(^BGPINDKC(BGPPC,15)),U),'$G(BGPNOSUM) D
 .S ^TMP($J,"SUMMARYDEL NON",$P(^BGPSCAT($P(^BGPINDKC(BGPPC,15),U,5),0),U,2),$P(^BGPINDKC(BGPPC,15),U,6),BGPPC)=$$SB($J(BGPCYP,5,1))_U_$$SB($J(BGPPRP,5,1))_U_$$SB($J(BGPBLP,5,1))
 .I $G(BGPAREAA) D
 ..S X=0 F  S X=$O(BGPSDPN(X)) Q:X'=+X  D
 ...S A=$P(^BGPSCAT($P(^BGPINDKC(BGPPC,15),U,5),0),U,2)
 ...S B=$P(^BGPINDKC(BGPPC,15),U,6)
 ...S ^TMP($J,"SUMMARYDEL DETAIL PAGE NON",A,B,BGPPC,X)=$$SB($J($P($G(BGPSDPN(X,1)),U,3),5,1))_U_$$SB($J($P($G(BGPSDPN(X,2)),U,3),5,1))_U_$$SB($J($P($G(BGPSDPN(X,3)),U,3),5,1))_U_$$SB($J(BGPCYP,5,1))
 D SETDEV^BGP5DP1E
 ;OTHER
 I $P($G(^BGPINDKC(BGPPC,19)),U),'$G(BGPNOSUM) D
 .S ^TMP($J,"SUMMARY OTHER",$P(^BGPSCAT($P(^BGPINDKC(BGPPC,19),U,5),0),U,3),$P(^BGPINDKC(BGPPC,19),U,6),BGPPC)=BGPCYP_U_BGPPRP_U_BGPBLP
 .I $G(BGPAREAA) D
 ..S X=0 F  S X=$O(BGPSDPO(X)) Q:X'=+X  D
 ...S ^TMP($J,"SUMMARY DETAIL PAGE OTHER",$P(^BGPSCAT($P(^BGPINDKC(BGPPC,19),U,5),0),U,3),$P(^BGPINDKC(BGPPC,19),U,6),BGPPC,X)=$P($G(BGPSDPO(X,1)),U,3)_U_$P($G(BGPSDPO(X,2)),U,3)_U_$P($G(BGPSDPO(X,3)),U,3)_U_$J(BGPCYP,5,1)
 I $P($G(^BGPINDKC(BGPPC,19)),U),'$G(BGPNOSUM) D
 .S ^TMP($J,"SUMMARYDEL OTHER",$P(^BGPSCAT($P(^BGPINDKC(BGPPC,19),U,5),0),U,3),$P(^BGPINDKC(BGPPC,19),U,6),BGPPC)=$$SB($J(BGPCYP,5,1))_U_$$SB($J(BGPPRP,5,1))_U_$$SB($J(BGPBLP,5,1))
 .I $G(BGPAREAA) D
 ..S X=0 F  S X=$O(BGPSDPO(X)) Q:X'=+X  D
 ...S A=$P(^BGPSCAT($P(^BGPINDKC(BGPPC,19),U,5),0),U,3)
 ...S B=$P(^BGPINDKC(BGPPC,19),U,6)
 ...S ^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",A,B,BGPPC,X)=$$SB($J($P($G(BGPSDPO(X,1)),U,3),5,1))_U_$$SB($J($P($G(BGPSDPO(X,2)),U,3),5,1))_U_$$SB($J($P($G(BGPSDPO(X,3)),U,3),5,1))_U_$$SB($J(BGPCYP,5,1))
 I $G(BGPIIDEL),BGPROT="B" Q
GPRANT1 ;EP
 NEW A,B,C,D,E,F,G,H,I,X,Y
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P(^BGPINDKC(BGPPC,0),U,14)=""
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCK(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPK(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBK(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..I $P($P(^BGPINDKC(BGPPC,0),U,4),".")="023" S Y=$P(^BGPINDKC(BGPPC,0),U,14),$P(BGPEI(X),U,Y)=$S(B:B,1:0),$P(BGPEI(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($P(^BGPINDKC(BGPPC,0),U,4),".",1,2)="014.A" S Y=$P(^BGPINDKC(BGPPC,0),U,14),$P(BGPEI(X),U,Y)=$S(B:B,1:0),$P(BGPEI(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDKC(BGPPC,0),U,4)="016.A.1" S Y=$P(^BGPINDKC(BGPPC,0),U,14),$P(BGPEI(X),U,Y)=$S(B:B,1:0),$P(BGPEI(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($G(^BGPINDKC(BGPPC,19)),U,13) S Y=$P(^BGPINDKC(BGPPC,0),U,14),$P(BGPEI(X),U,Y)=$S(B:B,1:0),$P(BGPEI(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI(X),U,(Y+6))=$S(H:H,1:0) Q
 ..S Y=$P(^BGPINDKC(BGPPC,0),U,14)
 ..S $P(BGPEI(X),U,$P(^BGPINDKC(BGPPC,0),U,14))=$S(A:A,1:0),$P(BGPEI(X),U,(Y+1))=$S(B:B,1:0),$P(BGPEI(X),U,(Y+2))=$$SL(C)
 ..S $P(BGPEI(X),U,(Y+3))=$S(D:D,1:0),$P(BGPEI(X),U,(Y+4))=$S(E:E,1:0),$P(BGPEI(X),U,(Y+5))=$$SL(F),$P(BGPEI(X),U,(Y+6))=$S(G:G,1:0),$P(BGPEI(X),U,(Y+7))=$S(H:H,1:0),$P(BGPEI(X),U,(Y+8))=$$SL(I)
GPRANT2 ;
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P($G(^BGPINDKC(BGPPC,12)),U,13)=""
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCK(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPK(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBK(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..I $P($P(^BGPINDKC(BGPPC,0),U,4),".")="023" S Y=$P(^BGPINDKC(BGPPC,12),U,13),$P(BGPEI2(X),U,Y)=$S(B:B,1:0),$P(BGPEI2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($P(^BGPINDKC(BGPPC,0),U,4),".",1,2)="014.A" S Y=$P(^BGPINDKC(BGPPC,12),U,13),$P(BGPEI2(X),U,Y)=$S(B:B,1:0),$P(BGPEI2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDKC(BGPPC,0),U,4)="016.A.1" S Y=$P(^BGPINDKC(BGPPC,12),U,13),$P(BGPEI2(X),U,Y)=$S(B:B,1:0),$P(BGPEI2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($G(^BGPINDKC(BGPPC,19)),U,13) S Y=$P(^BGPINDKC(BGPPC,12),U,13),$P(BGPEI2(X),U,Y)=$S(B:B,1:0),$P(BGPEI2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..S Y=$P(^BGPINDKC(BGPPC,12),U,13)
 ..S $P(BGPEI2(X),U,$P(^BGPINDKC(BGPPC,12),U,13))=$S(A:A,1:0),$P(BGPEI2(X),U,(Y+1))=$S(B:B,1:0),$P(BGPEI2(X),U,(Y+2))=$$SL(C)
 ..S $P(BGPEI2(X),U,(Y+3))=$S(D:D,1:0),$P(BGPEI2(X),U,(Y+4))=$S(E:E,1:0),$P(BGPEI2(X),U,(Y+5))=$$SL(F),$P(BGPEI2(X),U,(Y+6))=$S(G:G,1:0),$P(BGPEI2(X),U,(Y+7))=$S(H:H,1:0),$P(BGPEI2(X),U,(Y+8))=$$SL(I)
 I $G(BGPAREAA),$G(BGPEXCEL) D GPRANT3^BGP5DP1D
ONN1 ;
 D ONM1^BGP5DP1D
 Q
SL(V) ;
 I V="" S V=0
 Q $$STRIP^XLFSTR($J(V,5,1)," ")
SETEXA(T,N,P) ;EP
 Q:'$G(BGPEXCEL)
 NEW X,Y,Z
 S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S $P(BGPEXCT(X,T),U,2)=$P($G(^BGPGPDCK(X,N)),U,P)
 .I T=2 S $P(BGPEXCT(X,T),U,2)=$P($G(^BGPGPDPK(X,N)),U,P)
 .I T=3 S $P(BGPEXCT(X,T),U,2)=$P($G(^BGPGPDBK(X,N)),U,P)
 Q
V(T,R,N,P,ND,DASH) ;EP
 I $G(BGPAREAA) G VA
 NEW X
 I T=1 S X=$P($G(^BGPGPDCK(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=2 S X=$P($G(^BGPGPDPK(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=3 S X=$P($G(^BGPGPDBK(R,N)),U,P) Q $S(X]"":X,1:0)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPGPDCK(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPGPDPK(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPGPDBK(X,N)),U,P)
 .Q:$G(DASH)
 .I $G(BGPAREAA),$P($G(^BGPINDKC(BGPPC,14)),U) D
 ..I T=1 S $P(BGPSDP(X,T),U,ND)=$P($G(^BGPGPDCK(X,N)),U,P)
 ..I T=2 S $P(BGPSDP(X,T),U,ND)=$P($G(^BGPGPDPK(X,N)),U,P)
 ..I T=3 S $P(BGPSDP(X,T),U,ND)=$P($G(^BGPGPDBK(X,N)),U,P)
 .I $G(BGPAREAA),$P($G(^BGPINDKC(BGPPC,15)),U) D
 ..I T=1 S $P(BGPSDPN(X,T),U,ND)=$P($G(^BGPGPDCK(X,N)),U,P)
 ..I T=2 S $P(BGPSDPN(X,T),U,ND)=$P($G(^BGPGPDPK(X,N)),U,P)
 ..I T=3 S $P(BGPSDPN(X,T),U,ND)=$P($G(^BGPGPDBK(X,N)),U,P)
 .I $G(BGPAREAA),$P($G(^BGPINDKC(BGPPC,19)),U) D
 ..I T=1 S $P(BGPSDPO(X,T),U,ND)=$P($G(^BGPGPDCK(X,N)),U,P)
 ..I T=2 S $P(BGPSDPO(X,T),U,ND)=$P($G(^BGPGPDPK(X,N)),U,P)
 ..I T=3 S $P(BGPSDPO(X,T),U,ND)=$P($G(^BGPGPDBK(X,N)),U,P)
 .I $G(BGPAREAA),$P($G(^BGPINDKC(BGPPC,22)),U) D
 ..I T=1 S $P(BGPSDPD(X,T),U,ND)=$P($G(^BGPGPDCK(X,N)),U,P)
 ..I T=2 S $P(BGPSDPD(X,T),U,ND)=$P($G(^BGPGPDPK(X,N)),U,P)
 ..I T=3 S $P(BGPSDPD(X,T),U,ND)=$P($G(^BGPGPDBK(X,N)),U,P)
 .Q
 Q $S(C]"":C,1:0)
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
SDP ;
 NEW X,Y,T,D,N
 S X=0 F  S X=$O(BGPSDP(X)) Q:X'=+X  D
 .S T=0 F  S T=$O(BGPSDP(X,T)) Q:T'=+T  D
 ..S D=$P(BGPSDP(X,T),U,1),N=$P(BGPSDP(X,T),U,2)
 ..S $P(BGPSDP(X,T),U,3)=$S(D:((N/D)*100),1:"")
 S X=0 F  S X=$O(BGPSDPN(X)) Q:X'=+X  D
 .S T=0 F  S T=$O(BGPSDPN(X,T)) Q:T'=+T  D
 ..S D=$P(BGPSDPN(X,T),U,1),N=$P(BGPSDPN(X,T),U,2)
 ..S $P(BGPSDPN(X,T),U,3)=$S(D:((N/D)*100),1:"")
 S X=0 F  S X=$O(BGPSDPO(X)) Q:X'=+X  D
 .S T=0 F  S T=$O(BGPSDPO(X,T)) Q:T'=+T  D
 ..S D=$P(BGPSDPO(X,T),U,1),N=$P(BGPSDPO(X,T),U,2)
 ..S $P(BGPSDPO(X,T),U,3)=$S(D:((N/D)*100),1:"")
 S X=0 F  S X=$O(BGPSDPD(X)) Q:X'=+X  D
 .S T=0 F  S T=$O(BGPSDPD(X,T)) Q:T'=+T  D
 ..S D=$P(BGPSDPD(X,T),U,1),N=$P(BGPSDPD(X,T),U,2)
 ..S $P(BGPSDPD(X,T),U,3)=$S(D:((N/D)*100),1:"")
 Q
SB(X) ;EP 
 NEW %
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
