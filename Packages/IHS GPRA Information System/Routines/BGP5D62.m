BGP5D62 ; IHS/CMI/LAB - measure 31 01 Jul 2010 7:47 PM ; 19 Sep 2014  8:13 AM
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
IBHEDIS ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I BGPAGEB<50 S BGPSTOP=1 Q
 I BGPAGEB>75 S BGPSTOP=1 Q
 Q:'BGPACTUP
 ;Q:'BGPACTCL ;ADDED UP IN 15.1
 I $$CRC(DFN,BGPEDATE) S BGPSTOP=1 Q  ;has colorectal cancer
 I BGPACTCL S BGPD1=1
 I BGPACTUP S BGPD2=1
CRCP ;EP - called from elder
 S BGPFOB=$$FOB(DFN,BGPBDATE,BGPEDATE)
 I BGPFOB]"" S BGPN3=1,BGPN1=1
 S BGPSIG=$$SIG(DFN,BGPEDATE)
 S BGPCOLO=$$COLO(DFN,BGPEDATE)
 I BGPFOB]""!(BGPSIG]"")!(BGPCOLO]"") S BGPN1=1,BGPN7=1
 I BGPSIG]""!(BGPCOLO]"") S BGPN4=1
 S BGPREF="" I 'BGPN1 S BGPREF=$$REF^BGP5D61(DFN,$$FMADD^XLFDT(BGPEDATE,-365),BGPEDATE) I BGPREF S BGPN2=1
 S BGPVALUE=""
 I BGPFOB]"" S BGPVALUE="FOB: "_$$DATE^BGP5UTL($P(BGPFOB,U,2))_" "_$P(BGPFOB,U)
 I BGPSIG]"" S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"") S BGPVALUE=BGPVALUE_"SIG: "_$P(BGPSIG,U,2)_" "_$P(BGPSIG,U)
 I BGPCOLO]"" S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"") S BGPVALUE=BGPVALUE_"COLO: "_$P(BGPCOLO,U,2)_" "_$P(BGPCOLO,U,1)
 I BGPREF]"" S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"") S BGPVALUE=BGPVALUE_$$DATE^BGP5UTL($P(BGPREF,U,2))_" "_$P(BGPREF,U,3)
 S BGPDV="UP"_$S(BGPD1:",AC",1:"")
 S BGPVALUE=BGPDV_"|||"_BGPVALUE
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P
 Q
CRC(P,EDATE) ;EP
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP COLORECTAL CANCER DXS;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1  ;has a dx
 S T=$O(^ATXAX("B","BGP COLORECTAL CANCER CPTS",0))
 I T D  I X]"" Q 1
 .S X=$$CPT^BGP5DU(P,$$DOB^AUPNPAT(P),EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP5DU(P,$$DOB^AUPNPAT(P),EDATE,T,5)
 S BGPG=$$LASTPRC^BGP5UTL1(P,"BGP TOTAL COLECTOMY PROCS",$$DOB^AUPNPAT(P),EDATE)
 I BGPG Q 1
 S T=$O(^ATXAX("B","BGP TOTAL COLECTOMY CPTS",0))
 I T D  I X]"" Q 1
 .S X=$$CPT^BGP5DU(P,$$DOB^AUPNPAT(P),EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP5DU(P,$$DOB^AUPNPAT(P),EDATE,T,5)
 Q 0
SIG(P,EDATE,BDATE) ;EP
 NEW BGPLSIG
 S BGPLSIG=""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,5*(-365))
 S BGPG=$$LASTPRC^BGP5UTL1(P,"BGP SIG PROCS",BDATE,EDATE)
 I $P(BGPG,U)=1 S BGPLSIG="Proc "_$P(BGPG,U,2)_"^"_$$DATE^BGP5UTL($P(BGPG,U,3))_U_$P(BGPG,U,3)
 ;
 S T=$O(^ATXAX("B","BGP SIG CPTS",0))
 I T D  I X]"",$P(BGPLSIG,U,3)<$P(X,U,1) S BGPLSIG="CPT "_$P(X,U,2)_U_$$DATE^BGP5UTL($P(X,U,1))_U_$P(X,U,1)
 .S X=$$CPT^BGP5DU(P,BDATE,EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP5DU(P,BDATE,EDATE,T,5)
 Q BGPLSIG
COLO(P,EDATE,BDATE) ;EP
 K BGPG
 S BGPLCOLO=""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,10*(-365))
 S BGPG=$$LASTPRC^BGP5UTL1(P,"BGP COLO PROCS",BDATE,EDATE)
 I $P(BGPG,U)=1 S BGPLCOLO="Proc "_$P(BGPG,U,2)_"^"_$$DATE^BGP5UTL($P(BGPG,U,3))_U_$P(BGPG,U,3)
 ;S %=P_"^LAST DIAGNOSIS [BGP COLO DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 ;I $D(BGPG(1)),$P(BGPLCOLO,U,3)<$P(BGPG(1),U,1) S BGPLCOLO="COLO DX V76.51"_"^"_$$DATE^BGP5UTL($P(BGPG(1),U))
 S T=$O(^ATXAX("B","BGP COLO CPTS",0))
 I T D  I X]"",$P(BGPLCOLO,U,3)<$P(X,U,1) S BGPLCOLO="CPT "_$P(X,U,2)_U_$$DATE^BGP5UTL($P(X,U,1))_U_$P(X,U,1)
 .S X=$$CPT^BGP5DU(P,BDATE,EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP5DU(P,BDATE,EDATE,T,5)
 Q BGPLCOLO
FOB(P,BDATE,EDATE) ;EP
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,2*(-365))
 S BGPC="",BGPLFOB=""
 S T=$O(^ATXAX("B","BGP FOBT LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP GPRA FOB TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC="Lab"_U_(9999999-D) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BGPC="LOINC"_U_(9999999-D) Q
 ...Q
 S BGPLFOB=BGPC
 S T=$O(^ATXAX("B","BGP FOBT CPTS",0))
 I T D  I X]"",$P(BGPLFOB,U,2)<$P(X,U,1) S BGPLFOB="CPT "_$P(X,"^",2)_"^"_$P(X,U,1)
 .S X=$$CPT^BGP5DU(P,BDATE,EDATE,T,5) I X]"" Q
 ;S %=P_"^LAST DIAGNOSIS [BGP COLO DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 ;I $D(BGPG(1)),$P(BGPLFOB,U,2)<$P(BGPG(1),U,1) S BGPLFOB="POV V76.51"_"^"_$P(BGPG(1),U)
 Q BGPLFOB
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
