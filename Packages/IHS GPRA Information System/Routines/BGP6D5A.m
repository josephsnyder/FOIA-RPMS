BGP6D5A ; IHS/CMI/LAB - measure calc ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
ALDX(P,BDATE,EDATE) ;EP
 NEW BGPLAL,BGPG,X,Y,E,BGPC,BGPP,D,G,T,V
 S BGPLAL=""
 I $G(P)="" Q ""
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP ALCOHOL DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) S BGPLAL=1_U_"POV "_$P(BGPG(1),U,2)_U_$$DATE^BGP6UTL($P(BGPG(1),U))_U_$P(BGPG(1),U)
 S BGPC=""
 S T=$O(^BGPCTRL("B",2016,0))
 ;go through BH record file and find up to 1 visits in date range
 S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=0 F  S X=$O(^AMHRPRO("AD",V,X)) Q:X'=+X!(BGPC)  S BGPP=$P($G(^AMHRPRO(X,0)),U) D
 ..Q:'BGPP
 ..S BGPP=$P($G(^AMHPROB(BGPP,0)),U)
 ..I $D(^BGPCTRL(T,30,"B",BGPP)) S BGPC=1_U_"BH POV "_BGPP_U_$$DATE^BGP6UTL((9999999-D))_U_(9999999-D) Q
 ..I $E(BGPP,1,3)=303  S BGPC=1_U_"BH POV "_BGPP_U_$$DATE^BGP6UTL((9999999-D))_U_(9999999-D) Q
 ..I $E(BGPP,1,5)=305.0 S BGPC=1_U_"BH POV "_BGPP_U_$$DATE^BGP6UTL((9999999-D))_U_(9999999-D) Q
 ..I $E(BGPP,1,3)=291 S BGPC=1_U_"BH POV "_BGPP_U_$$DATE^BGP6UTL((9999999-D))_U_(9999999-D) Q
 ..I $E(BGPP,1,5)=357.5 S BGPC=1_U_"BH POV "_BGPP_U_$$DATE^BGP6UTL((9999999-D))_U_(9999999-D) Q
 ..Q
 I $P(BGPLAL,U,4)<$P(BGPC,U,4) S BGPLAL=BGPC
 ;now check pcc and bh problem lists
 S T=$O(^ATXAX("B","BGP ALCOHOL DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,3)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,3)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BGP6UTL2(Y,T,9)
 .S D=$P(^AUPNPROB(X,0),U,3)
 .S G=1_U_"PROB LIST "_$P($$ICDDX^BGP6UTL2(Y),U,2)_U_$$DATE^BGP6UTL((D))_U_(D)
 .Q
 I $P(BGPLAL,U,4)<$P(G,U,4) S BGPLAL=G
 S (X,G)=0 F  S X=$O(^AMHPPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AMHPPROB(X,0),U,12)'="A"
 .Q:$P(^AMHPPROB(X,0),U,3)>EDATE
 .Q:$P(^AMHPPROB(X,0),U,3)<BDATE
 .S Y=$P(^AMHPPROB(X,0),U)
 .S Y=$P($G(^AMHPROB(Y,0)),U)
 .I $E(Y,1,3)="303" S G=1_U_"BH PROB LIST "_Y_U_$$DATE^BGP6UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I $E(Y,1,5)="305.0" S G=1_U_"BH PROB LIST "_Y_U_$$DATE^BGP6UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I $E(Y,1,3)=291 S G=1_U_"BH PROB LIST "_Y_U_$$DATE^BGP6UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I $E(Y,1,5)=357.5 S G=1_U_"BH PROB LIST "_Y_U_$$DATE^BGP6UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I $D(^BGPCTRL(T,30,"B",Y)) S G=1_U_"BH PROB LIST "_Y_U_$$DATE^BGP6UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .Q
 I $P(BGPLAL,U,4)<$P(G,U,4) S BGPLAL=G
 Q BGPLAL
