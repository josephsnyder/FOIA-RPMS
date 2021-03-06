BGP2C31 ; IHS/CMI/LAB - calc CMS measures 26 Sep 2004 11:28 AM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
ABGPO1(P,BGPA,BGPD,BGPY) ;EP
 ;get all O2 measurements on or after admission date
 S BGPC=0
 NEW BD,ED
 S BD=$$FMADD^XLFDT(BGPA,-1),ED=$$FMADD^XLFDT(BGPA,1)
 K BGPG S Y="BGPG(",X=P_"^ALL MEAS O2;DURING "_$$FMTE^XLFDT(BD)_"-"_$$FMTE^XLFDT(ED) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .Q:$P($G(^AUPNVMSR(Y,2)),U,1)
 .S N=$P(^AUPNVMSR(Y,0),U,4)
 .S BGPC=BGPC+1,BGPY(BGPC)="MEASUREMENT O2:  "_$$DATE^BGP2UTL($P(BGPG(X),U))_"  value: "_N
 .Q
 ;now check for cpts
 S T=$O(^ATXAX("B","BGP CMS ABG CPTS",0))
 S X=0 F  S X=$O(^AUPNVCPT("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVCPT(X,0))
 .S C=$P(^AUPNVCPT(X,0),U)
 .Q:'$$ICD^ATXCHK(C,T,1)
 .S D=$P(^AUPNVCPT(X,0),U,3),D=$P($P($G(^AUPNVSIT(D,0)),U),".")
 .Q:D<BD
 .Q:D>ED
 .S BGPC=BGPC+1,BGPY(BGPC)="CPT: "_$P($$CPT^ICPTCOD(C),U,2)_" "_$P($$CPT^ICPTCOD(C,D),U,3)_"  "_$$DATE^BGP2UTL(D)
 .Q
 ;now check v tran
 S T=$O(^ATXAX("B","BGP CMS ABG CPTS",0))
 S X=0 F  S X=$O(^AUPNVTC("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVTC(X,0))
 .S C=$P(^AUPNVTC(X,0),U,7)
 .Q:C=""
 .Q:'$$ICD^ATXCHK(C,T,1)
 .S D=$P(^AUPNVTC(X,0),U,3),D=$P($P($G(^AUPNVSIT(D,0)),U),".")
 .Q:D<BD
 .Q:D>ED
 .S BGPC=BGPC+1,BGPY(BGPC)="TRAN CODE CPT: "_$P($$CPT^ICPTCOD(C),U,2)_" "_$P($$CPT^ICPTCOD(C,D),U,3)_"  "_$$DATE^BGP2UTL(D)
 .Q
 ;now check for lab tests
 S T=$O(^ATXAX("B","BGP CMS ABG LOINC",0))
 S BGPLT=$O(^ATXLAB("B","BGP CMS ABG TESTS",0))
 S B=9999999-BD,E=9999999-ED S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=BGPC+1,BGPY(BGPC)="LAB:  "_$$VAL^XBDIQ1(9000010.09,X,.01)_"  "_$$DATE^BGP2UTL((9999999-D))_"  value: "_$P(^AUPNVLAB(X,0),U,4) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP2D21(J,T)
 ...S BGPC=BGPC+1,BGPY(BGPC)="LAB:  "_$$VAL^XBDIQ1(9000010.09,X,.01)_"  "_$$DATE^BGP2UTL((9999999-D))_"  value: "_$P(^AUPNVLAB(X,0),U,4)
 ...Q
 Q
