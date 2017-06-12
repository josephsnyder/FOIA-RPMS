BGP7D5 ; IHS/CMI/LAB - measure calc ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
I21 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 S (BGPDVEX,BGPDVDX,BGPDVPED,BGPDVREF)=""
 I 'BGPACTUP S BGPSTOP=1 Q
 I BGPSEX'="F" S BGPSTOP=1 Q
 I BGPAGEB<13 S BGPSTOP=1 Q
 I BGPACTUP S BGPD3=1
 I BGPACTCL S BGPD1=1
 I BGPAGEB>14,BGPAGEB<41,BGPACTCL S BGPD2=1 ;gpra denominator 15-40
 I BGPAGEB>13,BGPAGEB<47,BGPACTUP S BGPD5=1
 I BGPAGEB>13,BGPAGEB<47,BGPACTCL S BGPD4=1
DV ;EP - called from elder care
 S BGPDVEX=$$DVEX(DFN,BGPBDATE,BGPEDATE) I $P(BGPDVEX,U)=1 S BGPN2=1  ;EXAM ONLY
 S BGPDVDX=$$DVDX(DFN,BGPBDATE,BGPEDATE) I $P(BGPDVDX,U)=1 S BGPN3=1  ;DX ONLY
 S BGPDVPED=$$DVPED(DFN,BGPBDATE,BGPEDATE) I $P(BGPDVPED,U)=1 S BGPN4=1,BGPN8=1  ;W/O V61.11
 S BGPDVCOU=$$DV61(DFN,BGPBDATE,BGPEDATE) I $P(BGPDVCOU,U)=1 S BGPN4=1  ;include in education for gpra
 I BGPN2 S BGPN1=1
 I BGPN3 S BGPN1=1
 I BGPN4 S BGPN1=1
 ;I 'BGPN1 S BGPDVREF=$$REFDV(DFN,BGP365,BGPEDATE) I $P(BGPDVREF,U)=1 S BGPN5=1
 ;I BGPN5 S BGPN1=1
 I BGPN1,'BGPN5 S BGPN6=1  ;
 I BGPN2!(BGPN3)!(BGPDVCOU) S BGPN7=1
 S BGPVALUE=$S(BGPD3:"UP",1:"")_$S(BGPD1:",AC",1:"")_"|||"
 I $P(BGPDVEX,U)=1 S BGPVALUE=BGPVALUE_"EXAM: "_$$DATE^BGP7UTL($P(BGPDVEX,U,2))_" "_$P(BGPDVEX,U,4)
 I $P(BGPDVDX,U)=1 S BGPVALUE=BGPVALUE_$S($P(BGPVALUE,"|||",2)]"":"; DX: ",1:"DX: ")_$$DATE^BGP7UTL($P(BGPDVDX,U,2))_" "_$P(BGPDVDX,U,4)
 I $P(BGPDVPED,U)=1 S BGPVALUE=BGPVALUE_$S($P(BGPVALUE,"|||",2)]"":"; PT ED: ",1:"PT ED: ")_$$DATE^BGP7UTL($P(BGPDVPED,U,2))_" "_$P(BGPDVPED,U,4)
 I $P(BGPDVCOU,U)=1 S BGPVALUE=BGPVALUE_$S($P(BGPVALUE,"|||",2)]"":"; COUNSEL ",1:"COUNSEL ")_$$DATE^BGP7UTL($P(BGPDVCOU,U,2))_" "_$P(BGPDVCOU,U,4)
 I BGPRTYPE'=1,$P(BGPDVREF,U)=1 S BGPVALUE=BGPVALUE_$S($P(BGPVALUE,"|||",2)]"":"; ",1:"")_$$DATE^BGP7UTL($P(BGPDVREF,U,2))_" "_$P(BGPDVREF,U,3)
 S BGPVALUD="" I BGPD4 S BGPVALUD="AC"_"|||" D
 .I $P(BGPDVEX,U)=1 S BGPVALUD=BGPVALUD_"EXAM: "_$$DATE^BGP7UTL($P(BGPDVEX,U,2))_" "_$P(BGPDVEX,U,4)
 .I $P(BGPDVDX,U)=1 S BGPVALUD=BGPVALUD_$S($P(BGPVALUD,"|||",2)]"":"; DX: ",1:"DX: ")_$$DATE^BGP7UTL($P(BGPDVDX,U,2))_" "_$P(BGPDVDX,U,4)
 .I $P(BGPDVPED,U)=1 S BGPVALUD=BGPVALUD_$S($P(BGPVALUD,"|||",2)]"":"; PT ED: ",1:"PT ED: ")_$$DATE^BGP7UTL($P(BGPDVPED,U,2))_" "_$P(BGPDVPED,U,4)
 .I $P(BGPDVCOU,U)=1 S BGPVALUD=BGPVALUD_$S($P(BGPVALUD,"|||",2)]"":"; COUNSEL ",1:"COUNSEL ")_$$DATE^BGP7UTL($P(BGPDVCOU,U,2))_" "_$P(BGPDVCOU,U,4)
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 Q
 ;
DVEX(P,BDATE,EDATE) ;EP
 S BGPLDV=""
 K BGPG S %=P_"^LAST EXAM 34;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) S BGPLDV=1_"^"_$P(BGPG(1),U)_"^IPV EXAM 34"_U_"Ex 34"_U_$$DATE^BGP7UTL($P(BGPG(1),U))
 S BGPC=0,BGPV=""
 S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=$P($G(^AMHREC(V,14)),U)
 .I X="" Q  ;no test
 .I $E(X)="U" Q  ;don't count Refusal here
 .I X="REF" Q
 .S BGPC=BGPC+1,BGPV="1^"_(9999999-D)_"^BH IPV EXAM"_U_" BH Ex 34"_U_$$DATE^BGP7UTL((9999999-D))
 I $P(BGPLDV,U,2)<$P(BGPC,U,2) S BGPLDV=BGPC
 Q BGPLDV
REFDV(P,BDATE,EDATE) ;EP
 ;add Refusal for exam 34
 S G=$$REFUSAL^BGP7UTL1(P,9999999.15,$O(^AUTTEXAM("C",34,0)),$$FMADD^XLFDT(EDATE,-365),EDATE)
 I $P(G,U)=1 Q 1_"^"_$P(G,U,2)_"^Refused Ex 34"
 S G=""
 S X=0 F  S X=$O(^AUPNPREF("AA",P,9999999.09,X)) Q:X'=+X!(G)  D
 .S H=""
 .I $P($P($G(^AUTTEDT(X,0)),U),"-")="DV"!($P($P($G(^AUTTEDT(X,0)),U),"-",2)="DV") S H=1
 .Q:H'=1
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,9999999.09,X,D)) Q:D'=+D  D
 ..S Z=9999999-D
 ..Q:Z<BDATE
 ..Q:Z>EDATE
 ..S G=1_"^"_Z_"^Refused PtEd "_$P(^AUTTEDT(X,0),U)
 I $P(G,U,1)=1 Q G
 S BGPC=0 K BGPV
 S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=$P($G(^AMHREC(V,14)),U)
 .I X="" Q  ;no test
 .I X="U" S BGPC=1,BGPV=1_"^"_(9999999-D)_"^Refused BH UTS" Q
 .I X="REF" S BGPC=1,BGPV=1_"^"_(9999999-D)_"^Refused BH" Q
 .Q
 I BGPC Q BGPV
 Q ""
DVDX(P,BDATE,EDATE) ;EP
 I $G(P)="" Q ""
 G DVDX^BGP7D54
 ;
DVPED(P,BDATE,EDATE) ;EP
 NEW BGPG,Y,X,BGPLDV,E,D,T,S,BGPV,SN
 K BGPG
 S Y="BGPG(",BGPLDV=""
 S SN=$O(^BGPSNOMG("B","IPV/DV PATIENT ED",0))
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) G BHPED
 K BGPV S (X,D,E)=0,%="",T="" F  S X=$O(BGPG(X)) Q:X'=+X  D
 .S T=$P(^AUPNVPED(+$P(BGPG(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I $P(T,"-",1)="DV"!($P(T,"-",2)="DV") S BGPLDV=1_"^"_$P(BGPG(X),U)_"^PED "_T_U_"PED "_T_U_$$DATE^BGP7UTL($P(BGPG(X),U)) Q
 .S S=$P(T,"-",1)
 .S S=$$ICDDX^BGP7UTL2(S)
 .I $P(S,U,1)'="-1",$$ICD^BGP7UTL2($P(S,U,1),$O(^ATXAX("B","BGP IPV/DV EDUC DXS",0)),9) S BGPLDV=1_"^"_$P(BGPG(X),U)_"^PED "_T_U_"PED "_T_U_$$DATE^BGP7UTL($P(BGPG(X),U)) Q
 .I $P(T,"-",1)]"",$D(^BGPSNOMG(SN,11,"B",$P(T,"-",1))) S BGPLDV=1_"^"_$P(BGPG(X),U)_"^PED "_T_U_"PED "_T_U_$$DATE^BGP7UTL($P(BGPG(X),U)) Q
 ;
BHPED ;
 K BGPV S BGPC="",T="" S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=0 F  S X=$O(^AMHREDU("AD",V,X)) Q:X'=+X!(BGPC)  S T=$P($G(^AMHREDU(X,0)),U) D
 ..Q:'T
 ..Q:'$D(^AUTTEDT(T,0))
 ..S T=$P(^AUTTEDT(T,0),U,2)
 ..I $P(T,"-")="DV"!($P(T,"-",2)="DV"),$P(BGPLDV,U,2)<(9999999-$P(D,".")) D
 ...S BGPLDV=1_"^"_(9999999-$P(D,"."))_"^BH PED "_T_U_"BH PED "_T_U_$$DATE^BGP7UTL((9999999-$P(D,".")))
 ..S S=$P(T,"-",1)
 ..S S=$$ICDDX^BGP7UTL2(S)
 ..I $P(S,U,1)'="-1",$$ICD^BGP7UTL2($P(S,U,1),$O(^ATXAX("B","BGP IPV/DV EDUC DXS",0)),9),$P(BGPLDV,U,2)<(9999999-$P(D,".")) D
 ...S BGPLDV=1_"^"_(9999999-$P(D,"."))_"^BH PED "_T_U_"BH PED "_T_U_$$DATE^BGP7UTL((9999999-$P(D,".")))
 ..I $P(T,"-",1)]"",$D(^BGPSNOMG(SN,11,"B",$P(T,"-",1))) S BGPLDV=1_"^"_(9999999-$P(D,"."))_"^BH PED "_T_U_"BH PED "_T_U_$$DATE^BGP7UTL((9999999-$P(D,"."))) Q
 Q BGPLDV  ;I BGPC Q BGPV
DV61(P,BDATE,EDATE) ;EP
 NEW BGPLDV,BGPG,Y,X,E
 S BGPLDV=""
 K BGPG S Y="BGPG(" S X=P_"^LAST DX [BGP IPV/DV COUNSELING ICDS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) S BGPLDV=1_"^"_$P(BGPG(1),U)_"^"_$P(BGPG(1),U,2)_U_"POV "_$P(BGPG(1),U,2)_U_$$DATE^BGP7UTL($P(BGPG(1),U))
 Q BGPLDV
ALPRC(P,BDATE,EDATE) ;EP
 S BGPG=$$LASTPRC^BGP7UTL1(P,"BGP ALCOHOL PROCEDURES",BDATE,EDATE)
 I BGPG Q 1_U_"Proc "_$P(BGPG,U,2)_U_$$DATE^BGP7UTL($P(BGPG,U,3))_U_$P(BGPG,U,3)
 Q ""
ALPED(P,BDATE,EDATE) ;EP
 NEW BGPG
 NEW X,Y,D,E,T,%,S,BGPLPED,SN
 S Y="BGPG(",BGPLPED=""
 S SN=$O(^BGPSNOMG("B","ALCOHOL SCREEN PATIENT ED",0))
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S (X,D,E)=0,%="",T="" F  S X=$O(BGPG(X)) Q:X'=+X  D
 .S T=$P(^AUPNVPED(+$P(BGPG(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I $P(T,"-",1)="CD"!($P(T,"-",2)="CD")!($P(T,"-",1)="AOD")!($P(T,"-",2)="AOD"),$P(BGPLPED,U,4)<$P(BGPG(X),U) S BGPLPED=1_U_T_U_$$DATE^BGP7UTL($P(BGPG(X),U))_U_$P(BGPG(X),U)
 .S S=$P(T,"-",1)
 .S S=$$ICDDX^BGP7UTL2(S)
 .I $P(S,U,1)'="-1",$$ICD^BGP7UTL2($P(S,U,1),$O(^ATXAX("B","BGP ALCOHOL EDUC DXS",0)),9),$P(BGPLPED,U,4)<$P(BGPG(X),U,1) S BGPLPED=1_U_""_T_U_$$DATE^BGP7UTL($P(BGPG(X),U))_U_$P(BGPG(X),U)
 .I $P(T,"-",1)="99408"!($P(T,"-",1)="99409")!($P(T,"-",1)["G0396")!($P(T,"-",1)["G0397")!($P(T,"-")["H0049")!($P(T,"-")["H0050")!($P(T,"-")["3016F"),$P(BGPLPED,U,4)<$P(BGPG(X),U) D
 ..S BGPLPED=1_U_T_U_$$DATE^BGP7UTL($P(BGPG(X),U))_U_$P(BGPG(X),U)
 .I $P(T,"-")]"",$D(^BGPSNOMG(SN,11,"B",$P(T,"-"))),$P(BGPLPED,U,4)<$P(BGPG(X),U) D
 ..S BGPLPED=1_U_T_U_$$DATE^BGP7UTL($P(BGPG(X),U))_U_$P(BGPG(X),U)
ALMH S BGPC="",T="" S E=9999999-BDATE,D=9999999-EDATE-1_".99" F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPC)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V!(BGPC)  D
 .S X=0 F  S X=$O(^AMHREDU("AD",V,X)) Q:X'=+X  S T=$P($G(^AMHREDU(X,0)),U) D
 ..Q:'T
 ..Q:'$D(^AUTTEDT(T,0))
 ..S T=$P(^AUTTEDT(T,0),U,2)
 ..I $P(T,"-",1)="CD"!($P(T,"-",2)="CD")!($P(T,"-",1)="AOD")!($P(T,"-",2)="AOD"),$P(BGPLPED,U,4)<(9999999-D) S BGPLPED=1_U_T_U_$$DATE^BGP7UTL((9999999-D))_U_(9999999-D)
 ..S S=$P(T,"-",1)
 ..S S=$$ICDDX^BGP7UTL2(S)
 ..I $P(S,U,1)'="-1",$$ICD^BGP7UTL2($P(S,U,1),$O(^ATXAX("B","BGP ALCOHOL EDUC DXS",0)),9),$P(BGPLPED,U,4)<(9999999-D) D
 ...S BGPLPED=1_U_T_U_$$DATE^BGP7UTL((9999999-D))_U_(9999999-D)
 ..I $P(T,"-",1)="99408"!($P(T,"-",1)="99409")!($P(T,"-",1)["G0396")!($P(T,"-",1)["G0397")!($P(T,"-")["H0049")!($P(T,"-")["H0050"),$P(BGPLPED,U,4)<(9999999-D) D
 ...S BGPLPED=1_U_T_U_$$DATE^BGP7UTL((9999999-D))_U_(9999999-D)
 ..I $P(T,"-")]"",$D(^BGPSNOMG(SN,11,"B",$P(T,"-"))),$P(BGPLPED,U,4)<(9999999-D) D
 ...S BGPLPED=1_U_T_U_$$DATE^BGP7UTL((9999999-D))_U_(9999999-D)
 Q BGPLPED
 ;
LASTHF(P,C,BDATE,EDATE) ;EP - get last factor in category C for patient P
 S C=$O(^AUTTHF("B",C,0))
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
 Q $$VAL^XBDIQ1(9000010.23,O(D),.01)_"^"_$$DATE^BGP7UTL(9999999-D)_U_(9999999-D)
 ;
ALREF(P,BDATE,EDATE) ;EP
 ;add Refusal for exam 35
 S G=$$REFUSAL^BGP7UTL1(P,9999999.15,$O(^AUTTEXAM("C",35,0)),$$FMADD^XLFDT(EDATE,-365),EDATE)
 I $P(G,U)=1 Q 1_"^Refused Ex 35^"_$$DATE^BGP7UTL($P(G,U,2))_U_$P(G,U,2)
 Q ""
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
