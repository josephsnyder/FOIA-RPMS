BGP9D5 ; IHS/CMI/LAB - measure calc ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
I20 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I 'BGPACTUP S BGPSTOP=1 Q
 I BGPSEX'="F" S BGPSTOP=1 Q
 I BGPAGEB<15 S BGPSTOP=1 Q
 I BGPAGEB>44 S BGPSTOP=1 Q
 I BGPACTUP S BGPD2=1
 I BGPACTCL S BGPD1=1
 S BGPN2=$$ALHF(DFN,BGP365,BGPEDATE)
 S BGPN3=$$ALDX(DFN,BGP365,BGPEDATE)
 I 'BGPN3 S BGPN3=$$ALPRC(DFN,BGP365,BGPEDATE)
 S BGPN4=$$ALPED(DFN,BGP365,BGPEDATE)
 S BGPN5=0
 I BGPN2 S BGPN1=1
 I BGPN3 S BGPN1=1
 I BGPN4 S BGPN1=1
 I 'BGPN1 S BGPN5=$$ALREF(DFN,BGP365,BGPEDATE)
 I BGPN5 S BGPN1=1
 I BGPN1,'BGPN5 S BGPN6=1
 S BGPVALUE=$S(BGPD2:"UP",1:"")_";"_$S(BGPD1:"AC",1:"")_"|||"
 I $P(BGPN2,U)=1 S BGPVALUE=BGPVALUE_$P(BGPN2,U,2)_" "_$P(BGPN2,U,3)
 I $P(BGPN3,U)=1 S BGPVALUE=BGPVALUE_$P(BGPN3,U,2)_" "_$P(BGPN3,U,3)
 I $P(BGPN4,U)=1 S BGPVALUE=BGPVALUE_$P(BGPN4,U,2)_" "_$P(BGPN4,U,3)
 I $P(BGPN5,U)=1 S BGPVALUE=BGPVALUE_$P(BGPN5,U,2)_" "_$P(BGPN5,U,3)
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 Q
I21 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 S (BGPDVEX,BGPDVDX,BGPDVPED,BGPDVREF)=""
 I 'BGPACTUP S BGPSTOP=1 Q
 I BGPSEX'="F" S BGPSTOP=1 Q
 I BGPAGEB<13 S BGPSTOP=1 Q
 I BGPACTUP S BGPD3=1
 I BGPACTCL S BGPD1=1
 I BGPAGEB>14,BGPAGEB<41,BGPACTCL S BGPD2=1 ;gpra denominator 15-40
DV ;EP - called from elder care
 S BGPDVEX=$$DVEX(DFN,BGP365,BGPEDATE) I $P(BGPDVEX,U)=1 S BGPN2=1
 S BGPDVDX=$$DVDX(DFN,BGP365,BGPEDATE) I $P(BGPDVDX,U)=1 S BGPN3=1
 S BGPDVPED=$$DVPED(DFN,BGP365,BGPEDATE) I $P(BGPDVPED,U)=1 S BGPN4=1
 I BGPN2 S BGPN1=1
 I BGPN3 S BGPN1=1
 I BGPN4 S BGPN1=1
 I 'BGPN1 S BGPDVREF=$$REFDV(DFN,BGP365,BGPEDATE) I $P(BGPDVREF,U)=1 S BGPN5=1
 I BGPN5 S BGPN1=1
 I BGPN1,'BGPN5 S BGPN6=1
 S BGPVALUE=$S(BGPD3:"UP",1:"")_";"_$S(BGPD1:"AC",1:"")_"|||"
 I $P(BGPDVEX,U)=1 S BGPVALUE=BGPVALUE_$P(BGPDVEX,U,3)_" "_$$DATE^BGP9UTL($P(BGPDVEX,U,2))
 I $P(BGPDVDX,U)=1 S BGPVALUE=BGPVALUE_$P(BGPDVDX,U,3)_" "_$$DATE^BGP9UTL($P(BGPDVDX,U,2))
 I $P(BGPDVPED,U)=1 S BGPVALUE=BGPVALUE_$P(BGPDVPED,U,3)_" "_$$DATE^BGP9UTL($P(BGPDVPED,U,2))
 I $P(BGPDVREF,U)=1 S BGPVALUE=BGPVALUE_$P(BGPDVREF,U,3)_" "_$$DATE^BGP9UTL($P(BGPDVREF,U,2))
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 Q
 ;
DVEX(P,BDATE,EDATE) ;EP
 S BGPLDV=""
 K BGPG S %=P_"^LAST EXAM 34;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) S BGPLDV=1_"^"_$P(BGPG(1),U)_"^IPV EXAM 34"
 S BGPC=0,BGPV=""
 S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=$P($G(^AMHREC(V,14)),U)
 .I X="" Q  ;no test
 .I $E(X)="U" Q  ;don't count refusal here
 .I X="REF" Q
 .S BGPC=BGPC+1,BGPV="1^"_(9999999-D)_"^BH IPV EXAM"
 I $P(BGPLDV,U,2)<$P(BGPC,U,2) S BGPLDV=BGPC
 Q BGPLDV
REFDV(P,BDATE,EDATE) ;EP
 ;add refusal for exam 34
 S G=$$REFUSAL^BGP9UTL1(P,9999999.15,$O(^AUTTEXAM("C",34,0)),$$FMADD^XLFDT(EDATE,-365),EDATE)
 I $P(G,U)=1 Q 1_"^"_$P(G,U,2)_"^ref exam 34"
 S G=""
 S X=0 F  S X=$O(^AUPNPREF("AA",P,9999999.09,X)) Q:X'=+X!(G)  D
 .S H=""
 .I $P($P($G(^AUTTEDT(X,0)),U),"-")="DV"!($P($P($G(^AUTTEDT(X,0)),U),"-",2)="DV") S H=1
 .Q:H'=1
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,9999999.09,X,D)) Q:D'=+D  D
 ..S Z=9999999-D
 ..Q:Z<BDATE
 ..Q:Z>EDATE
 ..S G=1_"^"_Z_"^ref PtEd "_$P(^AUTTEDT(X,0),U)
 I $P(G,U,1)=1 Q G
 S BGPC=0 K BGPV
 S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=$P($G(^AMHREC(V,14)),U)
 .I X="" Q  ;no test
 .I X="U" S BGPC=1,BGPV=1_"^"_(9999999-D)_"^BH UTS" Q
 .I X="REF" S BGPC=1,BGPV=1_"^"_(9999999-D)_"^BH REF" Q
 .Q
 I BGPC Q BGPV
 Q ""
DVDX(P,BDATE,EDATE) ;EP
 I $G(P)="" Q ""
 G DVDX^BGP9D54
 K BGPG
 ;
DVPED(P,BDATE,EDATE) ;EP
 K BGPG
 S Y="BGPG(",BGPLDV=""
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) G BHPED
 K BGPV S (X,D,E)=0,%="",T="" F  S X=$O(BGPG(X)) Q:X'=+X  D
 .S T=$P(^AUPNVPED(+$P(BGPG(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I $P(T,"-",1)="DV"!($P(T,"-",2)="DV")!($P(T,"-")="995.80")!($P(T,"-")="995.81")!($P(T,"-")="995.82")!($P(T,"-")="995.83") S BGPLDV=1_"^"_$P(BGPG(X),U)_"^PED "_T Q
 .I $P(T,"-",1)="995.85"!($P(T,"-")="V15.41")!($P(T,"-")="V15.42")!($P(T,"-")="V15.49") S BGPLDV=1_"^"_$P(BGPG(X),U)_"^PED "_T Q
BHPED ;
 K BGPV S BGPC="",T="" S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=0 F  S X=$O(^AMHREDU("AD",V,X)) Q:X'=+X!(BGPC)  S T=$P($G(^AMHREDU(X,0)),U) D
 ..Q:'T
 ..Q:'$D(^AUTTEDT(T,0))
 ..S T=$P(^AUTTEDT(T,0),U,2)
 ..I $P(T,"-")="DV"!($P(T,"-",2)="DV")!($P(T,"-")="995.80")!($P(T,"-")="995.81")!($P(T,"-")="995.82")!($P(T,"-")="995.83")!$P(T,"-",1)="995.85"!($P(T,"-")="V15.41")!($P(T,"-")="V15.42")!($P(T,"-")="V15.49"),$P(BGPLDV,U,2)<(9999999-$P(D,".")) D
 ...S BGPLDV=1_"^"_(9999999-$P(D,"."))_"^BH PED "_T
 ;I BGPC Q BGPV
DVSCR K BGPG S X=P_"^LAST DX V61.11;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)),$P(BGPLDV,U,2)<$P(BGPG(1),U) S BGPLDV=1_"^"_$P(BGPG(1),U)_"^V61.11"
 Q BGPLDV
ALHF(P,BDATE,EDATE) ;EP - alcohol hf or screening pov
 S BGPLAL=""
 K BGPG S %=P_"^LAST EXAM 35;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) S BGPLAL=1_"^exam 35^"_$$DATE^BGP9UTL($P(BGPG(1),U))_U_$P(BGPG(1),U,1)
 S V=$$LASTHF(P,"ALCOHOL/DRUG",BDATE,EDATE)
 I V]"",$P(BGPLAL,U,4)<$P(V,U,2) S BGPLAL=1_U_"HF: "_V
 S V=$$LASTHF(P,"ALCOHOL",BDATE,EDATE)
 I V]"",$P(BGPLAL,U,4)<$P(V,U,2) S BGPLAL=1_U_"HF: "_V
 S V=$$LASTHF(P,"SBIRT",BDATE,EDATE)
 I V]"",$P(BGPLAL,U,4)<$P(V,U,2) S BGPLAL=1_U_"HF: "_V
 ;now add in v measurements
 S BGPC=$$LASTITEM^BGP9DU(P,BDATE,EDATE,"MEASUREMENT","AUDT")
 I $P(BGPLAL,U,4)<$P(BGPC,U,2) S BGPLAL=1_U_"MEAS: "_$P(BGPC,U,3)_U_$$DATE^BGP9UTL($P(BGPC,U,2))_U_$P(BGPC,U,2)
 S BGPC=$$LASTITEM^BGP9DU(P,BDATE,EDATE,"MEASUREMENT","AUDC")
 I $P(BGPLAL,U,4)<$P(BGPC,U,2) S BGPLAL=1_U_"MEAS: "_$P(BGPC,U,3)_U_$$DATE^BGP9UTL($P(BGPC,U,2))_U_$P(BGPC,U,2)
 S BGPC=$$LASTITEM^BGP9DU(P,BDATE,EDATE,"MEASUREMENT","CRFT")
 I $P(BGPLAL,U,4)<$P(BGPC,U,2) S BGPLAL=1_U_"MEAS: "_$P(BGPC,U,3)_U_$$DATE^BGP9UTL($P(BGPC,U,2))_U_$P(BGPC,U,2)
 ;CHECK BH HF FILE
 S BGPC="",T="",F="" S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=0 F  S X=$O(^AMHRHF("AD",V,X)) Q:X'=+X!(BGPC)  S F=$P($G(^AMHRHF(X,0)),U) D
 ..Q:'F
 ..Q:'$D(^AUTTHF(F,0))
 ..S T=$P(^AUTTHF(F,0),U,3)
 ..Q:'T
 ..I $P($G(^AUTTHF(T,0)),U)["ALCOHOL" S BGPC=1_U_"BH HF: "_$P(^AUTTHF(F,0),U)_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D)
 ..Q
 .S X=0 F  S X=$O(^AMHRMSR("AD",V,X)) Q:X'=+X!(BGPC)  S F=$P($G(^AMHRMSR(X,0)),U) D
 ..Q:'F
 ..Q:'$D(^AUTTMSR(F,0))
 ..S T=$P(^AUTTMSR(F,0),U,1)
 ..I T="AUDT"!(T="AUDC")!(T="CRFT") S BGPC=1_U_"BH MSR: "_T_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D)
 I $P(BGPLAL,U,4)<$P(BGPC,U,4) S BGPLAL=BGPC
 K BGPG S %=P_"^LAST DX V11.3;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)),$P(BGPLAL,U,4)<$P(BGPG(1),U,1) S BGPLAL=1_U_"DX: V11.3"_U_$$DATE^BGP9UTL($P(BGPG(1),U))_U_$P(BGPG(1),U,1)
 S %=P_"^LAST DX V79.1;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)),$P(BGPLAL,U,4)<$P(BGPG(1),U,1) S BGPLAL=1_U_"DX: V79.1"_U_$$DATE^BGP9UTL($P(BGPG(1),U))_U_$P(BGPG(1),U,1)
 ;now add in CPT codes
 S BGPC=$$CPT^BGP9DU(P,BDATE,EDATE,$O(^ATXAX("B","BGP ALCOHOL SCREENING CPTS",0)),6)
 I $P(BGPLAL,U,4)<$P(BGPC,U,2) S BGPLAL=1_U_"CPT: "_$P(BGPC,U,3)_U_$$DATE^BGP9UTL($P(BGPC,U,2))_U_$P(BGPC,U,2)
 ;go through BH record file and find up to 1 visits in date range
 S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=0 F  S X=$O(^AMHRPRO("AD",V,X)) Q:X'=+X!(BGPC)  S BGPP=$P($G(^AMHRPRO(X,0)),U) D
 ..Q:'BGPP
 ..S BGPP=$P($G(^AMHPROB(BGPP,0)),U)
 ..I BGPP=29.1 S BGPC=1_U_"BH dx: 29.1"_U_$$DATE^BGP9UTL((9999999-$P(D,".")))_U_(9999999-$P(D,".")) Q
 ..Q
 .S T=$O(^ATXAX("B","BGP ALCOHOL SCREENING CPTS",0))
 .S X=0 F  S X=$O(^AMHRPROC("AD",V,X)) Q:X'=+X!(BGPC)  S F=$P($G(^AMHRPROC(X,0)),U) D
 ..Q:'F
 ..I '$$ICD^ATXCHK(T,$P(+$G(^AUPNVCPT(X,0)),U,1),1) Q
 ..S I=$$VAL^XBDIQ1(81,F,.01)
 ..S BGPC=1_U_"BH CPT: "_I_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D)
 I $P(BGPLAL,U,4)<$P(BGPC,U,4) S BGPLAL=BGPC
 ;
 Q BGPLAL
ALDX(P,BDATE,EDATE) ;EP
 S BGPLAL=""
 I $G(P)="" Q ""
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP ALCOHOL DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) S BGPLAL=1_U_"DX: "_$P(BGPG(1),U,2)_U_$$DATE^BGP9UTL($P(BGPG(1),U))_U_$P(BGPG(1),U)
 S BGPC=""
 ;go through BH record file and find up to 1 visits in date range
 S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=0 F  S X=$O(^AMHRPRO("AD",V,X)) Q:X'=+X!(BGPC)  S BGPP=$P($G(^AMHRPRO(X,0)),U) D
 ..Q:'BGPP
 ..S BGPP=$P($G(^AMHPROB(BGPP,0)),U)
 ..I BGPP=10 S BGPC=1_U_"BH dx: 10"_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D) Q
 ..I BGPP=27 S BGPC=1_U_"BH dx: 27"_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D) Q
 ..I BGPP=29 S BGPC=1_U_"BH dx: 29"_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D) Q
 ..I $E(BGPP,1,3)=303  S BGPC=1_U_"BH dx: "_BGPP_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D) Q
 ..I $E(BGPP,1,5)=305.0 S BGPC=1_U_"BH dx: "_BGPP_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D) Q
 ..I $E(BGPP,1,3)=291 S BGPC=1_U_"BH dx: "_BGPP_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D) Q
 ..I $E(BGPP,1,5)=357.5 S BGPC=1_U_"BH dx: "_BGPP_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D) Q
 ..Q
 I $P(BGPLAL,U,4)<$P(BGPC,U,4) S BGPLAL=BGPC
 ;now check pcc and bh problem lists
 S T=$O(^ATXAX("B","BGP ALCOHOL DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)'="A"
 .Q:$P(^AUPNPROB(X,0),U,3)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,3)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S D=$P(^AUPNPROB(X,0),U,3)
 .S G=1_U_"PROB LIST: "_$P($$ICDDX^ICDCODE(Y),U,2)_U_$$DATE^BGP9UTL((D))_U_(D)
 .Q
 I $P(BGPLAL,U,4)<$P(G,U,4) S BGPLAL=G
 S (X,G)=0 F  S X=$O(^AMHPPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AMHPPROB(X,0),U,12)'="A"
 .Q:$P(^AMHPPROB(X,0),U,3)>EDATE
 .Q:$P(^AMHPPROB(X,0),U,3)<BDATE
 .S Y=$P(^AMHPPROB(X,0),U)
 .S Y=$P($G(^AMHPROB(Y,0)),U)
 .I $E(Y,1,3)="303" S G=1_U_"BH PL: "_Y_U_$$DATE^BGP9UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I $E(Y,1,5)="305.0" S G=1_U_"BH PL: "_Y_U_$$DATE^BGP9UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I $E(Y,1,3)=291 S G=1_U_"BH PL: "_Y_U_$$DATE^BGP9UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I $E(Y,1,5)=357.5 S G=1_U_"BH PL: "_Y_U_$$DATE^BGP9UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I Y=10 S G=1_U_"BH PL: "_Y_U_$$DATE^BGP9UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I Y=27 S G=1_U_"BH PL: "_Y_U_$$DATE^BGP9UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .I Y=29 S G=1_U_"BH PL: "_Y_U_$$DATE^BGP9UTL($P(^AMHPPROB(X,0),U,3))_U_$P(^AMHPPROB(X,0),U,3) Q
 .Q
 I $P(BGPLAL,U,4)<$P(G,U,4) S BGPLAL=G
 Q BGPLAL
ALPRC(P,BDATE,EDATE) ;EP
 S BGPG=$$LASTPRC^BGP9UTL1(P,"BGP ALCOHOL PROCEDURES",BDATE,EDATE)
 I BGPG Q 1_U_"PROC: "_$P(BGPG,U,2)_U_$$DATE^BGP9UTL($P(BGPG,U,3))
 Q ""
ALPED(P,BDATE,EDATE) ;EP
 K BGPG
 S Y="BGPG(",BGPLPED=""
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) G ALMH
 S (X,D,E)=0,%="",T="" F  S X=$O(BGPG(X)) Q:X'=+X  D
 .S T=$P(^AUPNVPED(+$P(BGPG(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I $P(T,"-",1)="CD"!($P(T,"-",2)="CD")!($P(T,"-",1)="AOD")!($P(T,"-",2)="AOD"),$P(BGPLPED,U,4)<$P(BGPG(X),U) S BGPLPED=1_U_"EDUC: "_T_U_$$DATE^BGP9UTL($P(BGPG(X),U))_U_$P(BGPG(X),U)
 .I $P(T,"-",1)="V11.3"!($P(T,"-",1)="V79.1")!($P(T,"-",1)["303.")!($P(T,"-",1)["305.0")!($P(T,"-")["291.")!($P(T,"-")["357.5"),$P(BGPLPED,U,4)<$P(BGPG(X),U) D
 ..S BGPLPED=1_U_"EDUC: "_T_U_$$DATE^BGP9UTL($P(BGPG(X),U))_U_$P(BGPG(X),U)
ALMH ;
 S BGPC="",T="" S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=0 F  S X=$O(^AMHREDU("AD",V,X)) Q:X'=+X  S T=$P($G(^AMHREDU(X,0)),U) D
 ..Q:'T
 ..Q:'$D(^AUTTEDT(T,0))
 ..S T=$P(^AUTTEDT(T,0),U,2)
 ..I $P(T,"-",1)="CD"!($P(T,"-",2)="CD")!($P(T,"-",1)="AOD")!($P(T,"-",2)="AOD"),$P(BGPLPED,U,4)<(9999999-D) S BGPLPED=1_U_"EDUC: "_T_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D)
 ..I $P(T,"-",1)="V11.3"!($P(T,"-",1)="V79.1")!($P(T,"-",1)["303.")!($P(T,"-",1)["305.0")!($P(T,"-")["291.")!($P(T,"-")["357.5"),$P(BGPLPED,U,4)<(9999999-D) D
 ...S BGPLPED=1_U_"EDUC: "_T_U_$$DATE^BGP9UTL((9999999-D))_U_(9999999-D)
 Q BGPLPED
 ;
LASTHF(P,C,BDATE,EDATE) ;EP - get last factor in category C for patient P
 S C=$O(^AUTTHF("B",C,0)) ;ien of category passed
 I '$G(C) Q ""
 S (H,D)=0 K O
 F  S H=$O(^AUTTHF("AC",C,H))  Q:'+H  D
 .Q:'$D(^AUPNVHF("AA",P,H))
 .S D="" F  S D=$O(^AUPNVHF("AA",P,H,D)) Q:D'=+D  D
 ..Q:(9999999-D)>EDATE  ;after time frame
 ..Q:(9999999-D)<BDATE  ;before time frame
 ..S O(D)=$O(^AUPNVHF("AA",P,H,D,""))
 .Q
 S D=$O(O(0))
 I D="" Q D
 Q $$VAL^XBDIQ1(9000010.23,O(D),.01)_"^"_$$DATE^BGP9UTL(9999999-D)_U_(9999999-D)
 ;
ALREF(P,BDATE,EDATE) ;EP
 ;add refusal for exam 35
 S G=$$REFUSAL^BGP9UTL1(P,9999999.15,$O(^AUTTEXAM("C",35,0)),$$FMADD^XLFDT(EDATE,-365),EDATE)
 I $P(G,U)=1 Q 1_"^ref exam 35^"_$$DATE^BGP9UTL($P(G,U,2))_U_$P(G,U,2)
 Q ""
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
