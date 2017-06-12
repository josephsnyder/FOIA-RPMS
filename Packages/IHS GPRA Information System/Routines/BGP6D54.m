BGP6D54 ; IHS/CMI/LAB - measure calc 02 Jul 2010 8:08 AM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;
DVDX ;EP
 I $G(P)="" Q ""
 NEW BGPG,Y,X,BGPLDV,E,BGPC,BGPV,BGPP,G,Y
 K BGPG
 S Y="BGPG(",BGPLDV=""
 S X=P_"^LAST DX [BGP DV DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) S BGPLDV=1_"^"_$P(BGPG(1),U)_"^Dv Dx "_$P(BGPG(1),U,2)_U_"POV "_$P(BGPG(1),U,2)_U_$$DATE^BGP6UTL($P(BGPG(1),U,1))
 S BGPC=0,BGPV="" ;I $D(BGPG(1)) S BGPC=1
 S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=0 F  S X=$O(^AMHRPRO("AD",V,X)) Q:X'=+X!(BGPC)  S BGPP=$P($G(^AMHRPRO(X,0)),U) D
 ..Q:'BGPP
 ..S BGPP=$P($G(^AMHPROB(BGPP,0)),U)
 ..I $E(BGPP,1,2)=43 S BGPC=1,BGPV=1_"^"_(9999999-D)_"^BH "_BGPP_U_"BH POV "_BGPP_U_$$DATE^BGP6UTL((9999999-D)) Q
 ..I $E(BGPP,1,2)=44 S BGPC=1,BGPV=1_"^"_(9999999-D)_"^BH "_BGPP_U_"BH POV "_BGPP_U_$$DATE^BGP6UTL((9999999-D)) Q
 ..I BGPP=995.80 S BGPC=1,BGPV=1_"^"_(9999999-D)_"^BH "_BGPP_U_"BH POV "_BGPP_U_$$DATE^BGP6UTL((9999999-D)) Q
 ..I BGPP=995.81 S BGPC=1,BGPV=1_"^"_(9999999-D)_"^BH "_BGPP_U_"BH POV "_BGPP_U_$$DATE^BGP6UTL((9999999-D)) Q
 ..Q
 I BGPV,$P(BGPLDV,U,2)<$P(BGPV,U,2) S BGPLDV=BGPV
 ;now check pcc problem list
 S T=$O(^ATXAX("B","BGP DV DXS",0))
 S (X,G)=0,BGPDXPLE="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,3)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,3)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BGP6UTL2(Y,T,9)
 .S G=1_U_$P(^AUPNPROB(X,0),U,3),BGPDXPLE=X
 .Q
 I G,$P(BGPLDV,U,2)<$P(G,U,2) S BGPLDV=1_U_$P(G,U,2)_U_"PL"_U_"PL "_$$VAL^XBDIQ1(9000011,BGPDXPLE,.01)_U_$$VAL^XBDIQ1(9000011,BGPDXPLE,.03)
 S (X,G)=0,BGPDXPLE="" F  S X=$O(^AMHPPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AMHPPROB(X,0),U,12)'="A"
 .Q:$P(^AMHPPROB(X,0),U,3)>EDATE
 .Q:$P(^AMHPPROB(X,0),U,3)<BDATE
 .S Y=$P(^AMHPPROB(X,0),U)
 .S Y=$P($G(^AMHPROB(Y,0)),U)
 .I $E(Y,1,2)="43" S G=1_U_$P(^AMHPPROB(X,0),U,3),BGPDXPLE=X Q
 .I $E(Y,1,2)="44" S G=1_U_$P(^AMHPPROB(X,0),U,3),BGPDXPLE=X Q
 .I Y=995.80 S G=1_U_$P(^AMHPPROB(X,0),U,3),BGPDXPLE=X Q
 .I Y=995.81 S G=1_U_$P(^AMHPPROB(X,0),U,3),BGPDXPLE=X Q
 .I Y=995.82 S G=1_U_$P(^AMHPPROB(X,0),U,3),BGPDXPLE=X Q
 .I Y=995.83 S G=1_U_$P(^AMHPPROB(X,0),U,3),BGPDXPLE=X Q
 .I Y=995.85 S G=1_U_$P(^AMHPPROB(X,0),U,3),BGPDXPLE=X Q
 .Q
 I G,$P(BGPLDV,U,2)<$P(G,U,2) S BGPLDV=1_U_$P(G,U,2)_U_"PL"_U_"BH PL "_$$VAL^XBDIQ1(9002011.51,BGPDXPLE,.01)_U_$$VAL^XBDIQ1(9002011.51,BGPDXPLE,.03)
 Q BGPLDV
