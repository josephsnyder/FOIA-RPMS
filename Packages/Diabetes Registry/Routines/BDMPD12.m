BDMPD12 ; IHS/CMI/LAB - 2003 DIABETES AUDIT ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**9**;JUN 14, 2007;Build 78
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning in HYSTER,MAMMOG
 ;
SETN ;
 S N="" NEW A,G S (A,G)=0 F  S A=$O(BDM(A)) Q:A'=+A!(G)  I $P(^AUPNVLAB(+$P(BDM(A),U,4),0),U,4)]"" S G=A
 S N=$S(G:G,1:1)
 Q
TBTX(P) ;EP
 I '$G(P) Q ""
 NEW BDM,E,X
 K BDM
 S X=P_"^LAST HEALTH [DM AUDIT TB HEALTH FACTORS" S E=$$START1^APCLDF(X,"BDM(")
 I E Q ""
 I $D(BDM(1)) Q $P(BDM(1),U,3)_U_$S($P(BDM(1),U,3)["TX COMPLETE":"1 Yes",$P(BDM(1),U,3)["TX INCOMPLETE"!($P(BDM(1),U,3)["TX UNTREATED"):"2 No",1:"4 Unknown")
 N T,Y S T=$O(^ATXAX("B","DM AUDIT TB HEALTH FACTORS",0))
 I 'T Q ""
 N G S G="",X=0 F  S X=$O(^AUPNHF("AA",P,X)) Q:X'=+X!(G]"")  I $D(^ATXAX(T,21,"B",X)) S G=$P(^AUTTHF(X,0),U)
 I G]"" Q G_U_$S(G["TX COMPLETE":"1 Yes",G["TX INCOMPLETE"!(G["TX UNTREATED"):"2 No",1:"4 Unknown")
 Q ""
CPT(P,BDATE,EDATE,T,F) ;EP return ien of CPT entry if patient had this CPT
 I '$G(P) Q ""
 I $G(T)="" Q ""
 I '$G(F) S F=1
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 ;go through visits in a date range for this patient, check cpts
 NEW D,BD,ED,X,Y,D,G,V
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)!(G)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V!(G)  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVCPT("AD",V))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X!(G)  D
 ...I $$ICD^BDMUTL($P(^AUPNVCPT(X,0),U),T,1) S G=X
 ...Q
 ..Q
 .Q
 I 'G Q ""
 I F=1 Q $S(G:1,1:"")
 I F=2 Q G
 I F=3 S V=$P(^AUPNVCPT(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")
 I F=4 S V=$P(^AUPNVCPT(G,0),U,3) I V Q $$FMTE^XLFDT($P($P($G(^AUPNVSIT(V,0)),U),"."))
 Q ""
RAD(P,BDATE,EDATE,T,F) ;EP return if a v rad entry in date range
 I '$G(P) Q ""
 I $G(T)="" Q ""
 I '$G(F) S F=1
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 ;go through visits in a date range for this patient, check cpts
 NEW D,BD,ED,X,Y,D,G,V
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)!(G)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V!(G)  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVRAD("AD",V))
 ..S X=0 F  S X=$O(^AUPNVRAD("AD",V,X)) Q:X'=+X!(G)  D
 ...Q:'$D(^AUPNVRAD(X,0))
 ...S Y=$P(^AUPNVRAD(X,0),U) Q:'Y  Q:'$D(^RAMIS(71,Y,0))
 ...S Y=$P($G(^RAMIS(71,Y,0)),U,9) Q:'Y
 ...Q:'$$ICD^BDMUTL(Y,T,1)
 ...S G=X
 ...Q
 ..Q
 .Q
 I 'G Q ""
 I F=1 Q $S(G:1,1:"")
 I F=2 Q G
 I F=3 S V=$P(^AUPNVRAD(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")
 I F=4 S V=$P(^AUPNVRAD(G,0),U,3) I V Q $$FMTE^XLFDT($P($P($G(^AUPNVSIT(V,0)),U),"."))
 Q ""
EKG(P,EDATE,F) ;EP
 I $G(F)="" S F="E"
 S %DT="P",X=EDATE D ^%DT S ED=Y
 NEW BDM,X,%,E,LEKG S LEKG="",%=P_"^LAST DIAGNOSTIC ECG SUMMARY;DURING "_$$DOB^AUPNPAT(P,"E")_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM) S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 89.51",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 89.52",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 89.53",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST PROCEDURE 89.50",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM S %=P_"^LAST DX 794.31",E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) D
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 ;check CPT codes in year prior to date range
 S T=$O(^ATXAX("B","DM AUDIT EKG CPTS",0))
 K BDM I T S BDM(1)=$$CPT^BDMPD12(P,,ED,"DM AUDIT EKG CPTS",3) D
 .I BDM(1)="" K BDM Q
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 K BDM I T S BDM(1)=$$RAD^BDMPD12(P,,ED,"DM AUDIT EKG CPTS",3) D
 .I BDM(1)="" K BDM Q
 .Q:LEKG>$P(BDM(1),U)
 .S LEKG=$P(BDM(1),U)
 Q $S(F="E":$$FMTE^XLFDT(LEKG),1:LEKG)
 ;
ALT(P,BDATE,EDATE) ;EP
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT ALT TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT ALT TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"  "_$$FMTE^XLFDT($P(BDM(N),U),5)
AST(P,BDATE,EDATE) ;EP
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT AST TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT AST TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"  "_$$FMTE^XLFDT($P(BDM(N),U),5)
INSULIN(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT INSULIN DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
TXNAME(V) ;EP
 I $G(V)="" Q ""
 S V=$$TXNAMES(V)
 Q $E(V,1,16)
TXNAMES(Y) ;
 I Y=1 Q "DIET"
 I Y=2 Q "INSULIN"
 I Y=3 Q "SULFONYLUREA"
 I Y=4 Q "METFORMIN (GLUCOPHAGE)"
 I Y=5 Q "ACARBOSE OR MIGLITOL"
 I Y=6 Q "GLITAZONE"
 I Y=9 Q "UNKNOWN/REFUSED"
 I Y=23 Q "INSULIN+S'UREA"
 I Y=24 Q "INSULIN+MET"
 I Y=25 Q "INSULIN+ACAR"
 I Y=26 Q "INSULIN+GLITAZONE"
 I Y=34 Q "S'UREA+MET"
 I Y=35 Q "S'UREA+ACAR"
 I Y=36 Q "S'UREA+GLITAZONE"
 I Y=45 Q "MET+ACAR"
 I Y=46 Q "MET+GLITAZONE"
 I Y=56 Q "ACAR+GLITAZONE"
 I Y=234 Q "INS+S'UREA+MET"
 I Y=235 Q "INS+S'UREA+ACAR"
 I Y=236 Q "INS+S'UREA+GLIT"
 I Y=245 Q "INS+MET+ACAR"
 I Y=246 Q "INS+MET+GLITAZONE"
 I Y=256 Q "INS+ACAR+GLITAZONE"
 I Y=345 Q "S'UREA+MET+ACAR"
 I Y=346 Q "S'UREA+MET+GLIT"
 I Y=356 Q "S'UREA+ACAR+GLIT"
 I Y=456 Q "MET+ACAR+GLIT"
 Q ""
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
