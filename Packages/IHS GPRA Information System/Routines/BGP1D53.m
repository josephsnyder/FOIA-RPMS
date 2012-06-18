BGP1D53 ; IHS/CMI/LAB - measure calc ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;\
IK ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I 'BGPACTUP S BGPSTOP=1 Q
 I BGPSEX'="F" S BGPSTOP=1 Q
 I BGPAGEB<16 S BGPSTOP=1 Q
 I BGPAGEB>25 S BGPSTOP=1 Q
 I BGPACTUP S BGPD2=1
 I BGPACTCL S BGPD1=1
 I BGPACTCL,BGPAGEB>15,BGPAGEB<21 S BGPD3=1
 I BGPACTCL,BGPAGEB>20,BGPAGEB<26 S BGPD4=1
 I BGPACTUP,BGPAGEB>15,BGPAGEB<21 S BGPD5=1
 I BGPACTUP,BGPAGEB>20,BGPAGEB<26 S BGPD6=1
 S BGPNV=$$CHL^BGP1D53(DFN,BGP365,BGPEDATE)
 S BGPN1=+BGPNV
 S BGPVALUE=$S(BGPD2:"UP",1:"")_";"_$S(BGPD1:"AC",1:"")_"|||"_$P(BGPNV,U,2)_" "_$P(BGPNV,U,3)
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 Q
CHL(P,BDATE,EDATE) ;EP
 I '$G(P) Q ""
 S BGPC=""
 K BGPG S %=P_"^LAST DX V73.88;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) Q 1_U_$$DATE^BGP1UTL($P(BGPG(1),U))_U_"V73.88"
 S %=P_"^LAST DX V73.98;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) Q 1_U_"POV V73.88"_U_$$DATE^BGP1UTL($P(BGPG(1),U))
 ;check cpt taxonomy
 S T=$O(^ATXAX("B","BGP CHLAMYDIA CPTS",0))
 I T D  I X Q 1_U_"CPT "_$P(X,U,3)_U_$$DATE^BGP1UTL($P(X,U,2))
 .S X=$$CPT^BGP1DU(P,BDATE,EDATE,T,6) I X]"" Q
 .S X=$$TRAN^BGP1DU(P,BDATE,EDATE,T,6)
 ;now get all loinc/taxonomy tests
 S BGPC=""
 S T=$O(^ATXAX("B","BGP CHLAMYDIA LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP CHLAMYDIA TESTS TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC)  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC)  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=1_U_"lab test"_U_$$DATE^BGP1UTL((9999999-D)) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S R=$P(^AUPNVLAB(X,0),U,4)
 ...S BGPC=1_U_"Lab Test "_$$VAL^XBDIQ1(9000010.09,X,.01)_U_$$DATE^BGP1UTL((9999999-D))
 ...Q
 I BGPC Q BGPC
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVMIC("AE",P,D)) Q:D'=+D!(D>B)!(BGPC)  D
 .S L=0 F  S L=$O(^AUPNVMIC("AE",P,D,L)) Q:L'=+L!(BGPC)  D
 ..S X=0 F  S X=$O(^AUPNVMIC("AE",P,D,L,X)) Q:X'=+X!(BGPC)  D
 ...Q:'$D(^AUPNVMIC(X,0))
 ...I BGPLT,$P(^AUPNVMIC(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVMIC(X,0),U))) S BGPC=1_U_"v micro test"_U_$$DATE^BGP1UTL((9999999-D)) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVMIC(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S R=$P(^AUPNVMIC(X,0),U,4)
 ...S BGPC=1_U_"Micro Test "_$$VAL^XBDIQ1(9000010.25,X,.01)_U_$$DATE^BGP1UTL((9999999-D))
 ...Q
 Q BGPC
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
