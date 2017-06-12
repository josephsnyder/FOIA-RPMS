BGP6DP1D ; IHS/CMI/LAB - print ind ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
ONM1 ;EP
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P(^BGPINDMC(BGPPC,0),U,6)=""
 .;set each num and percent,then set BGPONN1
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCM(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPM(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBM(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="023" S Y=$P(^BGPINDMC(BGPPC,0),U,6),$P(BGPONN1(X),U,Y)=$S(B:B,1:0),$P(BGPONN1(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN1(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".",1,2)="014.A" S Y=$P(^BGPINDMC(BGPPC,0),U,6),$P(BGPONN1(X),U,Y)=$S(B:B,1:0),$P(BGPONN1(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN1(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDMC(BGPPC,0),U,4)="016.A.1" S Y=$P(^BGPINDMC(BGPPC,0),U,6),$P(BGPONN1(X),U,Y)=$S(B:B,1:0),$P(BGPONN1(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN1(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($G(^BGPINDMC(BGPPC,19)),U,13) S Y=$P(^BGPINDMC(BGPPC,0),U,6),$P(BGPONN1(X),U,Y)=$S(B:B,1:0),$P(BGPONN1(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN1(X),U,(Y+6))=$S(H:H,1:0) Q
 ..S Y=$P(^BGPINDMC(BGPPC,0),U,6)
 ..S $P(BGPONN1(X),U,$P(^BGPINDMC(BGPPC,0),U,6))=$S(A:A,1:0),$P(BGPONN1(X),U,(Y+1))=$S(B:B,1:0),$P(BGPONN1(X),U,(Y+2))=$$SL(C)
 ..S $P(BGPONN1(X),U,(Y+3))=$S(D:D,1:0),$P(BGPONN1(X),U,(Y+4))=$S(E:E,1:0),$P(BGPONN1(X),U,(Y+5))=$$SL(F),$P(BGPONN1(X),U,(Y+6))=$S(G:G,1:0),$P(BGPONN1(X),U,(Y+7))=$S(H:H,1:0),$P(BGPONN1(X),U,(Y+8))=$$SL(I)
ONN2 ;
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P(^BGPINDMC(BGPPC,0),U,7)=""
 .;set each nuM and percent,then set BGPONN2
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCM(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPM(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBM(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="023" S Y=$P(^BGPINDMC(BGPPC,0),U,7),$P(BGPONN2(X),U,Y)=$S(B:B,1:0),$P(BGPONN2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".",1,2)="014.A" S Y=$P(^BGPINDMC(BGPPC,0),U,7),$P(BGPONN2(X),U,Y)=$S(B:B,1:0),$P(BGPONN2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDMC(BGPPC,0),U,4)="016.A.1" S Y=$P(^BGPINDMC(BGPPC,0),U,7),$P(BGPONN2(X),U,Y)=$S(B:B,1:0),$P(BGPONN2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDMC(BGPPC,0),U,4)="STI.AA.1A" S Y=$P(^BGPINDMC(BGPPC,0),U,7),$P(BGPONN2(X),U,Y)=$S(B:B,1:0),$P(BGPONN2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDMC(BGPPC,0),U,4)="STI.AB.4A" S Y=$P(^BGPINDMC(BGPPC,0),U,7),$P(BGPONN2(X),U,Y)=$S(B:B,1:0),$P(BGPONN2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($G(^BGPINDMC(BGPPC,19)),U,13) S Y=$P(^BGPINDMC(BGPPC,0),U,7),$P(BGPONN2(X),U,Y)=$S(B:B,1:0),$P(BGPONN2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..S Y=$P(^BGPINDMC(BGPPC,0),U,7)
 ..S $P(BGPONN2(X),U,$P(^BGPINDMC(BGPPC,0),U,7))=$S(A:A,1:0),$P(BGPONN2(X),U,(Y+1))=$S(B:B,1:0),$P(BGPONN2(X),U,(Y+2))=$$SL(C)
 ..S $P(BGPONN2(X),U,(Y+3))=$S(D:D,1:0),$P(BGPONN2(X),U,(Y+4))=$S(E:E,1:0),$P(BGPONN2(X),U,(Y+5))=$$SL(F),$P(BGPONN2(X),U,(Y+6))=$S(G:G,1:0),$P(BGPONN2(X),U,(Y+7))=$S(H:H,1:0),$P(BGPONN2(X),U,(Y+8))=$$SL(I)
ONN3 ;
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P($G(^BGPINDMC(BGPPC,21)),U,7)=""
 .;set each num and percent,then set BGPONN3
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCM(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPM(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBM(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="023" S Y=$P(^BGPINDMC(BGPPC,21),U,7),$P(BGPONN3(X),U,Y)=$S(B:B,1:0),$P(BGPONN3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".",1,2)="014.A" S Y=$P(^BGPINDMC(BGPPC,21),U,7),$P(BGPONN3(X),U,Y)=$S(B:B,1:0),$P(BGPONN3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDMC(BGPPC,0),U,4)="016.A.1" S Y=$P(^BGPINDMC(BGPPC,21),U,7),$P(BGPONN3(X),U,Y)=$S(B:B,1:0),$P(BGPONN3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDMC(BGPPC,0),U,4)="STI.AA.1A" S Y=$P(^BGPINDMC(BGPPC,21),U,7),$P(BGPONN3(X),U,Y)=$S(B:B,1:0),$P(BGPONN3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDMC(BGPPC,0),U,4)="STI.AB.4A" S Y=$P(^BGPINDMC(BGPPC,21),U,7),$P(BGPONN3(X),U,Y)=$S(B:B,1:0),$P(BGPONN3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($G(^BGPINDMC(BGPPC,19)),U,13) S Y=$P(^BGPINDMC(BGPPC,21),U,7),$P(BGPONN3(X),U,Y)=$S(B:B,1:0),$P(BGPONN3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPONN3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..S Y=$P(^BGPINDMC(BGPPC,21),U,7)
 ..S $P(BGPONN3(X),U,$P(^BGPINDMC(BGPPC,21),U,7))=$S(A:A,1:0),$P(BGPONN3(X),U,(Y+1))=$S(B:B,1:0),$P(BGPONN3(X),U,(Y+2))=$$SL(C)
 ..S $P(BGPONN3(X),U,(Y+3))=$S(D:D,1:0),$P(BGPONN3(X),U,(Y+4))=$S(E:E,1:0),$P(BGPONN3(X),U,(Y+5))=$$SL(F),$P(BGPONN3(X),U,(Y+6))=$S(G:G,1:0),$P(BGPONN3(X),U,(Y+7))=$S(H:H,1:0),$P(BGPONN3(X),U,(Y+8))=$$SL(I)
 D ONN4^BGP6DP1F
 Q
SL(V) ;
 I V="" S V=0
 Q $$STRIP^XLFSTR($J(V,5,1)," ")
 ;
GPRANT3 ;EP
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P($G(^BGPINDMC(BGPPC,11)),U,3)=""
 .;set each numerator and percent,then set BGPEI3
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCM(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPM(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBM(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="023" S Y=$P(^BGPINDMC(BGPPC,11),U,3),$P(BGPEI3(X),U,Y)=$S(B:B,1:0),$P(BGPEI3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $E($P(^BGPINDMC(BGPPC,0),U,4),1,5)="014.A" S Y=$P(^BGPINDMC(BGPPC,11),U,3),$P(BGPEI3(X),U,Y)=$S(B:B,1:0),$P(BGPEI3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="016" S Y=$P(^BGPINDMC(BGPPC,11),U,3),$P(BGPEI3(X),U,Y)=$S(B:B,1:0),$P(BGPEI3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($G(^BGPINDMC(BGPPC,19)),U,13) S Y=$P(^BGPINDMC(BGPPC,11),U,3),$P(BGPEI3(X),U,Y)=$S(B:B,1:0),$P(BGPEI3(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI3(X),U,(Y+6))=$S(H:H,1:0) Q
 ..S Y=$P(^BGPINDMC(BGPPC,11),U,3)
 ..S $P(BGPEI3(X),U,$P(^BGPINDMC(BGPPC,11),U,3))=$S(A:A,1:0),$P(BGPEI3(X),U,(Y+1))=$S(B:B,1:0),$P(BGPEI3(X),U,(Y+2))=$$SL(C)
 ..S $P(BGPEI3(X),U,(Y+3))=$S(D:D,1:0),$P(BGPEI3(X),U,(Y+4))=$S(E:E,1:0),$P(BGPEI3(X),U,(Y+5))=$$SL(F),$P(BGPEI3(X),U,(Y+6))=$S(G:G,1:0),$P(BGPEI3(X),U,(Y+7))=$S(H:H,1:0),$P(BGPEI3(X),U,(Y+8))=$$SL(I)
DEVEL1 ;EP
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P($G(^BGPINDMC(BGPPC,21)),U,3)=""
 .;set each numerator and percent,then set BGPEIDV1
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCM(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPM(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBM(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="023" S Y=$P(^BGPINDMC(BGPPC,21),U,3),$P(BGPEIDV1(X),U,Y)=$S(B:B,1:0),$P(BGPEIDV1(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEIDV1(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".",1,2)="014.A" S Y=$P(^BGPINDMC(BGPPC,21),U,3),$P(BGPEIDV1(X),U,Y)=$S(B:B,1:0),$P(BGPEIDV1(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEIDV1(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDMC(BGPPC,0),U,4)="016.A.1" S Y=$P(^BGPINDMC(BGPPC,21),U,3),$P(BGPEIDV1(X),U,Y)=$S(B:B,1:0),$P(BGPEIDV1(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEIDV1(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($G(^BGPINDMC(BGPPC,19)),U,13) S Y=$P(^BGPINDMC(BGPPC,21),U,3),$P(BGPEIDV1(X),U,Y)=$S(B:B,1:0),$P(BGPEIDV1(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEIDV1(X),U,(Y+6))=$S(H:H,1:0) Q
 ..S Y=$P(^BGPINDMC(BGPPC,21),U,3)
 ..S $P(BGPEIDV1(X),U,$P(^BGPINDMC(BGPPC,21),U,3))=$S(A:A,1:0),$P(BGPEIDV1(X),U,(Y+1))=$S(B:B,1:0),$P(BGPEIDV1(X),U,(Y+2))=$$SL(C)
 ..S $P(BGPEIDV1(X),U,(Y+3))=$S(D:D,1:0),$P(BGPEIDV1(X),U,(Y+4))=$S(E:E,1:0),$P(BGPEIDV1(X),U,(Y+5))=$$SL(F),$P(BGPEIDV1(X),U,(Y+6))=$S(G:G,1:0),$P(BGPEIDV1(X),U,(Y+7))=$S(H:H,1:0),$P(BGPEIDV1(X),U,(Y+8))=$$SL(I)
DEVEL2 ;
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P($G(^BGPINDMC(BGPPC,21)),U,4)=""
 .;set each numerator and percent,then set BGPEIDV2
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCM(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPM(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBM(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="023" S Y=$P(^BGPINDMC(BGPPC,21),U,4),$P(BGPEIDV2(X),U,Y)=$S(B:B,1:0),$P(BGPEIDV2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEIDV2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($P(^BGPINDMC(BGPPC,0),U,4),".",1,2)="014.A" S Y=$P(^BGPINDMC(BGPPC,21),U,4),$P(BGPEIDV2(X),U,Y)=$S(B:B,1:0),$P(BGPEIDV2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEIDV2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P(^BGPINDMC(BGPPC,0),U,4)="016.A.1" S Y=$P(^BGPINDMC(BGPPC,21),U,4),$P(BGPEIDV2(X),U,Y)=$S(B:B,1:0),$P(BGPEIDV2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEIDV2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($G(^BGPINDMC(BGPPC,19)),U,13) S Y=$P(^BGPINDMC(BGPPC,21),U,4),$P(BGPEIDV2(X),U,Y)=$S(B:B,1:0),$P(BGPEIDV2(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEIDV2(X),U,(Y+6))=$S(H:H,1:0) Q
 ..S Y=$P(^BGPINDMC(BGPPC,21),U,4)
 ..S $P(BGPEIDV2(X),U,$P(^BGPINDMC(BGPPC,21),U,4))=$S(A:A,1:0),$P(BGPEIDV2(X),U,(Y+1))=$S(B:B,1:0),$P(BGPEIDV2(X),U,(Y+2))=$$SL(C)
 ..S $P(BGPEIDV2(X),U,(Y+3))=$S(D:D,1:0),$P(BGPEIDV2(X),U,(Y+4))=$S(E:E,1:0),$P(BGPEIDV2(X),U,(Y+5))=$$SL(F),$P(BGPEIDV2(X),U,(Y+6))=$S(G:G,1:0),$P(BGPEIDV2(X),U,(Y+7))=$S(H:H,1:0),$P(BGPEIDV2(X),U,(Y+8))=$$SL(I)
 ;
GPRANT4 ;
 I $G(BGPAREAA),$G(BGPEXCEL) D
 .Q:$P($G(^BGPINDMC(BGPPC,21)),U,12)=""
 .;set each numerator and percent,then set BGPEI4
 .NEW X S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S $P(BGPEXCT(X,1),U,1)=$P($G(^BGPGPDCM(X,N)),U,P),$P(BGPEXCT(X,1),U,3)=$S($P(BGPEXCT(X,1),U,2):(($P(BGPEXCT(X,1),U,1)/$P(BGPEXCT(X,1),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,2),U,1)=$P($G(^BGPGPDPM(X,N)),U,P),$P(BGPEXCT(X,2),U,3)=$S($P(BGPEXCT(X,2),U,2):(($P(BGPEXCT(X,2),U,1)/$P(BGPEXCT(X,2),U,2))*100),1:"")
 ..S $P(BGPEXCT(X,3),U,1)=$P($G(^BGPGPDBM(X,N)),U,P),$P(BGPEXCT(X,3),U,3)=$S($P(BGPEXCT(X,3),U,2):(($P(BGPEXCT(X,3),U,1)/$P(BGPEXCT(X,3),U,2))*100),1:"")
 .S X=0 F  S X=$O(BGPEXCT(X)) Q:X'=+X  D
 ..S A=$P(BGPEXCT(X,1),U,1),B=$P(BGPEXCT(X,1),U,2),C=$P(BGPEXCT(X,1),U,3)
 ..S D=$P(BGPEXCT(X,2),U,1),E=$P(BGPEXCT(X,2),U,2),F=$P(BGPEXCT(X,2),U,3)
 ..S G=$P(BGPEXCT(X,3),U,1),H=$P(BGPEXCT(X,3),U,2),I=$P(BGPEXCT(X,3),U,3)
 ..;I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="023" S Y=$P(^BGPINDMC(BGPPC,21),U,12),$P(BGPEI4(X),U,Y)=$S(B:B,1:0),$P(BGPEI4(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI4(X),U,(Y+6))=$S(H:H,1:0) Q
 ..;I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="014" S Y=$P(^BGPINDMC(BGPPC,21),U,12),$P(BGPEI4(X),U,Y)=$S(B:B,1:0),$P(BGPEI4(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI4(X),U,(Y+6))=$S(H:H,1:0) Q
 ..;I $P($P(^BGPINDMC(BGPPC,0),U,4),".")="016" S Y=$P(^BGPINDMC(BGPPC,21),U,12),$P(BGPEI4(X),U,Y)=$S(B:B,1:0),$P(BGPEI4(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI4(X),U,(Y+6))=$S(H:H,1:0) Q
 ..I $P($G(^BGPINDMC(BGPPC,19)),U,13) S Y=$P(^BGPINDMC(BGPPC,21),U,12),$P(BGPEI4(X),U,Y)=$S(B:B,1:0),$P(BGPEI4(X),U,(Y+3))=$S(E:E,1:0),$P(BGPEI4(X),U,(Y+6))=$S(H:H,1:0) Q
 ..S Y=$P(^BGPINDMC(BGPPC,21),U,12)
 ..S $P(BGPEI4(X),U,$P(^BGPINDMC(BGPPC,21),U,12))=$S(A:A,1:0),$P(BGPEI4(X),U,(Y+1))=$S(B:B,1:0),$P(BGPEI4(X),U,(Y+2))=$$SL(C)
 ..S $P(BGPEI4(X),U,(Y+3))=$S(D:D,1:0),$P(BGPEI4(X),U,(Y+4))=$S(E:E,1:0),$P(BGPEI4(X),U,(Y+5))=$$SL(F),$P(BGPEI4(X),U,(Y+6))=$S(G:G,1:0),$P(BGPEI4(X),U,(Y+7))=$S(H:H,1:0),$P(BGPEI4(X),U,(Y+8))=$$SL(I)
 D DEVEL3^BGP6DP1G
 Q
