BGP4DP1 ; IHS/CMI/LAB - print ind 1 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
I1 ;EP ; diabetes prevalence
 D H1^BGP4DPH ;column headers
I1A1 ;001.A, 001.B, 001.C
 F BGPPC1="1.1","1.2","1.3" Q:BGPQUIT  D PI
 D I1AGE
 Q
I2 ;EP
 I $Y>(IOSL-13) D HEADER^BGP4DPH Q:BGPQUIT  W !!,^BGPINDF(BGPIC,53,1,0)
 D H1^BGP4DPH
 F BGPPC1="2.1","2.2","2.3" Q:BGPQUIT  D PI
 Q
I3 ;EP
 I $Y>(IOSL-13) D HEADER^BGP4DPH Q:BGPQUIT  W !!,^BGPINDF(BGPIC,53,1,0)
 D H1^BGP4DPH
 F BGPPC1="3.1","3.2","3.3" Q:BGPQUIT  D PI
 Q
I4 ;EP
 I $Y>(IOSL-13) D HEADER^BGP4DPH Q:BGPQUIT  W !!,^BGPINDF(BGPIC,53,1,0)
 D H1^BGP4DPH
 F BGPPC1="4.1","4.2","4.3" Q:BGPQUIT  D PI
 Q
I5 ;EP
 I $Y>(IOSL-13) D HEADER^BGP4DPH Q:BGPQUIT  W !!,^BGPINDF(BGPIC,53,1,0)
 D H1^BGP4DPH
 F BGPPC1="5.1","5.2","5.3" Q:BGPQUIT  D PI
 Q
I6 ;EP
 I $Y>(IOSL-13) D HEADER^BGP4DPH Q:BGPQUIT  W !!,^BGPINDF(BGPIC,53,1,0)
 D H1^BGP4DPH
 F BGPPC1="6.1","6.2","6.3" Q:BGPQUIT  D PI
 Q
I7 ;EP
 D H1^BGP4DPH
 F BGPPC1="7.1" Q:BGPQUIT  D PI
 Q
I8 ;
 D H1^BGP4DPH
 F BGPPC1="8.1" Q:BGPQUIT  D PI
 Q
I9 ;EP
 D H1^BGP4DPH
 F BGPPC1="9.1","9.2" Q:BGPQUIT  D PI
 Q
I11 ;EP
 D H1^BGP4DPH
 F BGPPC1="11.1","11.2","11.3" Q:BGPQUIT  D PI
 F BGPPC1="11.4","11.5" Q:BGPQUIT  W ! D PI
 F BGPPC1="11.6","11.7" Q:BGPQUIT  D PI
 Q
I12 ;EP
 D H1^BGP4DPH
 F BGPPC1="12.1","12.2","12.3" Q:BGPQUIT  W ! D PI
 Q
I13 ;EP
 D H1^BGP4DPH
 F BGPPC1="13.1","13.2" Q:BGPQUIT  D PI
 Q
I14 ;EP
 D H1^BGP4DPH
 F BGPPC1="14.1","14.2","14.3" Q:BGPQUIT  D PI
 Q
I15 ;EP
 D H1^BGP4DPH
 F BGPPC1="15.1","15.2","15.3" Q:BGPQUIT  D PI
 W ! F BGPPC1="15.4","15.5","15.6" Q:BGPQUIT  D PI
 Q
I16 ;EP
 D H1^BGP4DPH
 F BGPPC1="16.1","16.2" Q:BGPQUIT  D PI
 Q
I17 ;EP
 D H1^BGP4DPH
 F BGPPC1="17.1","17.2","17.3" Q:BGPQUIT  D PI
 Q
I18 ;EP
 D H1^BGP4DPH
 F BGPPC1="18.1" Q:BGPQUIT  D PI
 Q
I19 ;EP
 D H1^BGP4DPH
 F BGPPC1="19.1","19.2" Q:BGPQUIT  D PI W !
 Q
I25 ;EP
 D H1^BGP4DPH
 F BGPPC1="25.1","25.2","25.3" Q:BGPQUIT  D PI
 Q
I26 ;EP
 D H1^BGP4DPH
 F BGPPC1="26.1","26.2","26.3" Q:BGPQUIT  D PI
 W ! F BGPPC1="26.4","26.5","26.6" Q:BGPQUIT  D PI
 Q
I27 ;EP
 D H1^BGP4DPH
 F BGPPC1="27.1","27.2","27.3","27.4","27.5","27.6","27.7","27.8","27.9" Q:BGPQUIT  W:BGPPC1="27.4" ! D PI
 Q
I28 ;EP
 I $Y>(IOSL-13) D HEADER^BGP4DPH Q:BGPQUIT  W !!,^BGPINDF(BGPIC,53,1,0)
 D H1^BGP4DPH
 F BGPPC1="28.1","28.2","28.3","28.4","28.5","28.6" Q:BGPQUIT  D PI
 Q
I29 ;EP
 D H1^BGP4DPH
 F BGPPC1="29.1","29.2","29.3" Q:BGPQUIT  D PI
 Q
I36 ;EP
 D H1^BGP4DPH
 F BGPPC1="36.1" Q:BGPQUIT  D PI
 Q
I37 ;EP
 D H1^BGP4DPH
 F BGPPC1="37.1","37.2" Q:BGPQUIT  D PI
 Q
I30 ;EP
 D H1^BGP4DPH
 F BGPPC1="30.1","30.2","30.3" Q:BGPQUIT  D PI
 Q
I39 ;EP
 D H1^BGP4DPH
 F BGPPC1="39.1","39.2" Q:BGPQUIT  D PI
 Q
PI ;EP
 S BGPDENP=0
 S BGPPC2=0 F  S BGPPC2=$O(^BGPINDFC("AB",BGPPC1,BGPPC2)) Q:BGPPC2=""  S BGPPC=$O(^BGPINDFC("AB",BGPPC1,BGPPC2,0)) D PI1
 Q
PI1 ;
 K BGPEXCT
 I BGPRTYPE'=3,BGPPC2="14.3.1"!(BGPPC2="14.3.2") Q
 I BGPRTYPE'=3,BGPPC2="9.2.1" Q
 I BGPRTYPE=4,BGPPC2="2.2.2" Q
 I BGPRTYPE'=4,BGPINDT="G",$P(^BGPINDFC(BGPPC,0),U,5)'=1 Q
 I BGPRTYPE'=4,BGPINDT="A",$P(^BGPINDFC(BGPPC,0),U,6)'=1 Q
 I BGPRTYPE'=4,BGPINDT="H",$P($G(^BGPINDFC(BGPPC,12)),U,1)'=1 Q
 I BGPINDT="D",$P(^BGPINDFC(BGPPC,0),U,12)'=1 Q
 I BGPINDT="C",$P(^BGPINDFC(BGPPC,0),U,13)'=1 Q
 I BGPINDT="W",$P($G(^BGPINDFC(BGPPC,12)),U,2)'=1 Q
 I BGPINDT="P",$P($G(^BGPINDFC(BGPPC,12)),U,3)'=1 Q
 S BGPDF=$P(^BGPINDFC(BGPPC,0),U,8)
 ;get denominator value of indicator
 S BGPNP=$P(^DD(90244.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S BGPCYD=$$V(1,BGPRPT,N,P) I $G(BGPAREAA) D SETEXA(1,N,P)
 S BGPPRD=$$V(2,BGPRPT,N,P) I $G(BGPAREAA) D SETEXA(2,N,P)
 S BGPBLD=$$V(3,BGPRPT,N,P) I $G(BGPAREAA) D SETEXA(3,N,P)
 ;write out denominator
 I 'BGPDENP D
 .I $E($P(^BGPINDFC(BGPPC,0),U,4),1,3)="I.B"!($E($P(^BGPINDFC(BGPPC,0),U,4),1,3)="I.F") Q
 .I $P(^BGPINDFC(BGPPC,0),U,4)="I.A.1" D HEADER^BGP4DPH Q:BGPQUIT  W !!,^BGPINDF(BGPIC,53,1,0) D H1^BGP4DPH
 .I $Y>(IOSL-13) D HEADER^BGP4DPH Q:BGPQUIT  W !!,^BGPINDF(BGPIC,53,1,0) D H1^BGP4DPH
 .W !!,$P(^BGPINDFC(BGPPC,0),U,17)
 .I $P(^BGPINDFC(BGPPC,0),U,18)]"" D
 ..I $P(^BGPINDFC(BGPPC,0),U,4)="025.I.1" W !,$P(^BGPINDFC(BGPPC,0),U,18) Q
 ..I BGPRTYPE'=4,$P(^BGPINDFC(BGPPC,0),U,18)["GPRA D" Q
 ..W !,$P(^BGPINDFC(BGPPC,0),U,18)
 .I $P(^BGPINDFC(BGPPC,0),U,21)]""  D
 ..I $P(^BGPINDFC(BGPPC,0),U,4)="025.I.1" W !,$P(^BGPINDFC(BGPPC,0),U,21) Q
 ..I BGPRTYPE'=4,$P(^BGPINDFC(BGPPC,0),U,21)["GPRA D" Q
 ..W !,$P(^BGPINDFC(BGPPC,0),U,21)
 .W ?20,$$C(BGPCYD,0,8),?35,$$C(BGPPRD,0,8),?58,$$C(BGPBLD,0,8),!
 .S BGPDENP=1
 I $P(^BGPINDFC(BGPPC,0),U,4)["I." D
 .S BGPDF=$P(^BGPINDFC(BGPPC,0),U,8)
 .;get denominator value of indicator
 .S BGPNP=$P(^DD(90244.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .S BGPCYD=$$V(1,BGPRPT,N,P) I $G(BGPAREAA) D SETEXA(1,N,P)
 .S BGPPRD=$$V(2,BGPRPT,N,P) I $G(BGPAREAA) D SETEXA(2,N,P)
 .S BGPBLD=$$V(3,BGPRPT,N,P) I $G(BGPAREAA) D SETEXA(3,N,P)
 S BGPNF=$P(^BGPINDFC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90244.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN
 I $P($G(^BGPINDFC(BGPPC,14)),U) S ^TMP($J,"SUMMARY",$P(^BGPINDFC(BGPPC,14),U,5),$P(^BGPINDFC(BGPPC,14),U,6),BGPPC)=BGPCYP_U_BGPPRP_U_BGPBLP
 ;write header for 1.A.1
 I $P($G(^BGPINDFC(BGPPC,12)),U,4)="37.2.1" W !
 W !,$P(^BGPINDFC(BGPPC,0),U,15) I BGPRTYPE=4,$P($G(^BGPINDFC(BGPPC,12)),U,5) W " (GPRA)"
 I $P(^BGPINDFC(BGPPC,0),U,16)]"" W !?1,$P(^BGPINDFC(BGPPC,0),U,16)
 I BGPRTYPE=4,$P($G(^BGPINDFC(BGPPC,12)),U,6) W:$P(^BGPINDFC(BGPPC,0),U,16)="" ! W " (GPRA)"
 I $P(^BGPINDFC(BGPPC,0),U,19)]"" W !?1,$P(^BGPINDFC(BGPPC,0),U,19)
 I BGPRTYPE=4,$P($G(^BGPINDFC(BGPPC,12)),U,7) W:$P(^BGPINDFC(BGPPC,0),U,19)="" ! W " (GPRA)"
 D H2^BGP4DPH
 Q
I1AGE ; special age tallies
 D I1AGE^BGP4DP11
 Q
SETN ;EP - set numerator fields
 S BGPCYN=$$V(1,BGPRPT,N,P)
 S BGPPRN=$$V(2,BGPRPT,N,P)
 S BGPBLN=$$V(3,BGPRPT,N,P)
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
 I $G(BGPIIDEL),BGPROT="B" Q
 I '$G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P(^BGPINDFC(BGPPC,0),U,14)=""
 .I $P($P(^BGPINDFC(BGPPC,0),U,4),".")="023" S $P(BGPEI(BGPRPT),U,$P(^BGPINDFC(BGPPC,0),U,14))=$S(BGPCYD:BGPCYD,1:0)_U_U_U_$S(BGPPRD:BGPPRD,1:0)_U_U_U_$S(BGPBLD:BGPBLD,1:0) Q
 .I $P($P(^BGPINDFC(BGPPC,0),U,4),".")="014" S $P(BGPEI(BGPRPT),U,$P(^BGPINDFC(BGPPC,0),U,14))=$S(BGPCYD:BGPCYD,1:0)_U_U_U_$S(BGPPRD:BGPPRD,1:0)_U_U_U_$S(BGPBLD:BGPBLD,1:0) Q
 .S $P(BGPEI(BGPRPT),U,$P(^BGPINDFC(BGPPC,0),U,14))=$S(BGPCYN:BGPCYN,1:0)_U_$S(BGPCYD:BGPCYD,1:0)_U_$$SL(BGPCYP)_U_$S(BGPPRN:BGPPRN,1:0)_U_$S(BGPPRD:BGPPRD,1:0)_U_$$SL(BGPPRP)_U_$S(BGPBLN:BGPBLN,1:0)_U_$S(BGPBLD:BGPBLD,1:0)_U_$$SL(BGPBLP)
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .;set each numerator and percent,then set BGPEI
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCF(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPF(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBF(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..I $P($P(^BGPINDFC(BGPPC,0),U,4),".")="023" S $P(BGPEI(X),U,$P(^BGPINDFC(BGPPC,0),U,14))=$S(B:B,1:0)_U_U_U_$S(E:E,1:0)_U_U_U_$S(H:H,1:0) Q
 ..I $P($P(^BGPINDFC(BGPPC,0),U,4),".")="014" S $P(BGPEI(X),U,$P(^BGPINDFC(BGPPC,0),U,14))=$S(B:B,1:0)_U_U_U_$S(E:E,1:0)_U_U_U_$S(H:H,1:0) Q
 ..S $P(BGPEI(X),U,$P(^BGPINDFC(BGPPC,0),U,14))=$S(A:A,1:0)_U_$S(B:B,1:0)_U_$$SL(C)_U_$S(D:D,1:0)_U_$S(E:E,1:0)_U_$$SL(F)_U_$S(G:G,1:0)_U_$S(H:H,1:0)_U_$$SL(I)
 Q
SL(V) ;
 I V="" S V=0
 Q $$STRIP^XLFSTR($J(V,5,1)," ")
SETEXA(T,N,P) ;EP - set denominator
 Q:'$G(BGPEXCEL)
 NEW X,Y,Z
 S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S $P(BGPEXCT(X,T),U,2)=$P($G(^BGPGPDCF(X,N)),U,P)
 .I T=2 S $P(BGPEXCT(X,T),U,2)=$P($G(^BGPGPDPF(X,N)),U,P)
 .I T=3 S $P(BGPEXCT(X,T),U,2)=$P($G(^BGPGPDBF(X,N)),U,P)
 Q
V(T,R,N,P) ;EP
 I $G(BGPAREAA) G VA
 NEW X
 I T=1 S X=$P($G(^BGPGPDCF(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=2 S X=$P($G(^BGPGPDPF(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=3 S X=$P($G(^BGPGPDBF(R,N)),U,P) Q $S(X]"":X,1:0)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPGPDCF(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPGPDPF(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPGPDBF(X,N)),U,P)
 .Q
 Q $S(C]"":C,1:0)
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
