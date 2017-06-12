BDMDD1C ; IHS/CMI/LAB - 2016 DIABETES AUDIT ; 09 Nov 2015  11:34 AM
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**9**;JUN 14, 2007;Build 78
 ;
GATHER ;
 NEW R,B,E,D,L
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["CANC"
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["COMMENT"
 ...Q:$P(^AUPNVLAB(X,0),U,4)=""  ;no result
 ...;STRIP ALL NON-NUMERICS AND "."
 ...S R=$P(^AUPNVLAB(X,0),U,4),R=$$STV^BDMDD18(R,8,1) I R="" Q  ;no numeric result 
 ...I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETV Q
 ...Q:'BDMOT
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMOT)
 ...D SETV
 ...Q
 Q  ;do not look for tests with no result per Ray Shields.
 ;
LOINC(A,B) ;EP - is loinc code A in taxonomy B
 NEW %
 I '$G(B) Q ""
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
SETV ;
 S BDMC=BDMC+1
 S V=$P(^AUPNVLAB(X,0),U,3),BDMV=$P($P($G(^AUPNVSIT(V,0)),U),".") Q:'BDMV
 S BDM(BDMC)=BDMV_"^"_$S($P(^AUPNVLAB(X,0),U,4)]"":$P(^AUPNVLAB(X,0),U,4),1:"")_"^"_$$VAL^XBDIQ1(9000010.09,X,.01)_"^"_X_";AUPNVLAB^"_V
 Q
SETN ;
 S N="" NEW A,G,BDMR,D
 S A=0 F  S A=$O(BDM(A)) Q:A'=+A  S BDMR(9999999-$P(BDM(A),U,1),A)=BDM(A)
 S (A,D,G)=0 F  S D=$O(BDMR(D)) Q:D'=+D!(G)  D
 .S A=0 F  S A=$O(BDMR(D,A)) Q:A'=+A!(G)  D
 ..S R=$P(^AUPNVLAB(+$P(BDM(A),U,4),0),U,4) I R]"",$$UP^XLFSTR(R)'="COMMENT",$$UP^XLFSTR(R)'="N/A" S G=A
 S N=$S(G:G,1:1)
 Q
SET3 ;
 NEW X,N1,N2,N3,A,T
 K A
 S X=0 F  S X=$O(BDM(X)) Q:X'=+X  S A($P(BDM(X),U),X)=""
 NEW D S D=0 F  S D=$O(A(D)) Q:D'=+D  D
 .S G=0,N=0 F  S N=$O(A(D,N)) Q:N'=+N  D
 ..I $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"",$$UP^XLFSTR($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4))'="COMMENT" S G=1 Q
 .I G S N=0 F  S N=$O(A(D,N)) Q:N'=+N  I $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)="" K BDM(N)
 .Q
 Q
GFR(P,BDATE,EDATE,NOCALC) ;EP - Estimated GFR
 I $$AGE^AUPNPAT(P,EDATE)<18 Q ""
 S NOCALC=$G(NOCALC)
 NEW BDM,BDMC,BDMOT,BDMLT,B,E,D,L,X,Y
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","BGP ESTIMATED GFR LOINC",0))
 S BDMLT=$O(^ATXLAB("B","BGP GPRA ESTIMATED GFR TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$P(^AUPNVLAB(X,0),U,4)=""  ;dm2014 display value only
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["CANC"
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["COMMENT"
 ...I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETV Q
 ...Q:'BDMOT
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMOT)
 ...D SETV
 ...Q
 I '$D(BDM(1)),NOCALC Q ""
 I '$D(BDM(1)),'NOCALC S X=$$CALCGFR^BDMDD18(P,BDATE,EDATE) D  Q X
 .I X="" Q
 .S X=1_U_$P(X,U,2)_U_$$DATE^BDMS9B1($P(X,U,1))_U_$P(X,U,3)_U_$P(X,U,1)
 D SETN
 Q 1_U_$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_U_$$DATE^BDMS9B1($P(BDM(N),U))_U_$E($P(BDM(N),U,3),1,25)_U_$P(BDM(N),U)
CREAT ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","BGP CREATININE LOINC CODES",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT CREATININE TAX",0))
 D GATHER
 I '$D(BDM(1)) Q ""
 D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_U_$$DATE^BDMS9B1($P(BDM(N),U))_U_$E($P(BDM(N),U,3),1,25)
CHOL ;EP
 S:$G(F)="" F="E"
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","BGP TOTAL CHOLESTEROL LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT CHOLESTEROL TAX",0))
 D GATHER
 I '$D(BDM(1)) Q ""
 D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_U_$$DATE^BDMS9B1($P(BDM(N),U))_U_$E($P(BDM(N),U,3),1,25)
LPROF ;
 K BDM,BDMX S BDMX=""
 Q  ;no longer count lipid profile because there is no result  2014 per Ray.
 S %=P_"^LAST LAB [DM AUDIT LIPID PROFILE TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q
 I F="I" S BDMX=$P(^AUPNVLAB(+$P(BDM(1),U,4),0),U,4)_"^"_$P(BDM(1),U) Q
 S BDMX=$P(^AUPNVLAB(+$P(BDM(1),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(1),U,4),0),U,4)]"":" mg/dl",1:"")_$$DATE^BDMS9B1($P(BDM(1),U))
 Q
HDL ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","BGP HDL LOINC CODES",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT HDL TAX",0))
 D GATHER
 I '$D(BDM(1)) K BDM,BDMX S BDMX="" D LPROF Q BDMX
 D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_U_$$DATE^BDMS9B1($P(BDM(N),U))_U_$E($P(BDM(N),U,3),1,25)
LDL ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V,BDMLDL,G
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","BGP LDL LOINC CODES",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT LDL CHOLESTEROL TAX",0))
 D GATHER
 I '$D(BDM(1)) K BDM,BDMX S BDMX="" D LPROF Q BDMX
 K BDMLDL S X=0 F  S X=$O(BDM(X)) Q:X'=+X  S BDMLDL(9999999-$P(BDM(X),U),X)=BDM(X)
 S X=0,G=0 F  S X=$O(BDMLDL(X)) Q:X'=+X!G  S Y=0 F  S Y=$O(BDMLDL(X,Y)) Q:Y'=+Y!(G)  I +$P(^AUPNVLAB(+$P(BDMLDL(X,Y),U,4),0),U,4) S G=Y
 I 'G S X=$O(BDMLDL(0)),G=$O(BDMLDL(X,0))
 ;NEW N D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(G),U,4),0),U,4)_"^"_$P(BDM(G),U)
 Q $P(^AUPNVLAB(+$P(BDM(G),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(G),U,4),0),U,4)]"":" mg/dl ",1:"")_U_$$DATE^BDMS9B1($P(BDM(G),U))_U_$E($P(BDM(G),U,3),1,25)
TRIG ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","BGP TRIGLYCERIDE LOINC CODES",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT TRIGLYCERIDE TAX",0))
 D GATHER
 I '$D(BDM(1)) K BDM,BDMX S BDMX="" D LPROF Q BDMX
 D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_U_$$DATE^BDMS9B1($P(BDM(N),U))_U_$E($P(BDM(N),U,3),1,25)
UACR(P,BDATE,EDATE) ;EP - albumin/creatinine ration UACR
 NEW BDM,BDMC,BDMOT,BDMLT
 K BDM S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT A/C RATIO LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT QUANT UACR",0))
 D GATHER
 I '$D(BDM(1)) Q ""
 D SETN
 I $D(BDM(N)) Q "X^"_$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/g ",1:"")_U_$$DATE^BDMS9B1($P(BDM(N),U,1))_U_$E($P(BDM(N),U,3),1,30)
 Q ""
 ;
SEMI(P,BDATE,EDATE) ;EP - albumin/creatinine ration UACR
 NEW BDM,BDMC,BDMOT,BDMLT
 K BDM S BDMC=0
 S BDMOT=""
 S BDMLT=$O(^ATXLAB("B","DM AUDIT SEMI QUANT UACR",0))
 D GATHER
 I '$D(BDM(1)) Q ""
 D SETN
 I $D(BDM(1)) Q "X^"_$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/g ",1:"")_U_$$DATE^BDMS9B1($P(BDM(N),U,1))_U_$E($P(BDM(N),U,3),1,30)
 Q ""
 ;
UPCR(P,BDATE,EDATE) ;EP - protein/creatinine ratio UPCR
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT P/C RATIO LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT P/C RATIO TAX",0))
 D GATHER
 I '$D(BDM(1)) Q ""
 D SETN
 I $D(BDM(1)) Q "X^"_$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/g ",1:"")_U_$$DATE^BDMS9B1($P(BDM(N),U,1))_U_$E($P(BDM(N),U,3),1,30)
 Q ""
 ;
QUAN(P,BDATE,EDATE) ;EP - other quantitative urine protein test
 NEW BDM,BDMC
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","BGP QUANT URINE PROT LOINC",0))
 S BDMLT=$O(^ATXLAB("B","BGP QUANT URINE PROTEIN",0))
 D GATHER
 I '$D(BDM(1)) Q ""
 D SETN
 I $D(BDM(1)) Q "X^"_$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/g ",1:"")_U_$$DATE^BDMS9B1($P(BDM(N),U,1))_U_$E($P(BDM(N),U,3),1,30)
 Q ""
 ;
PROTEIN ;EP
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V,%1
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT URINE PROTEIN LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT URINE PROTEIN TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["CANC"
 ...I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETV Q
 ...Q:'BDMOT
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMOT)
 ...D SETV
 ...Q
 I '$D(BDM(1)) S %1="" Q %1
 D SETN
 NEW %,%1 S %=$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)
 S %1=$S(%="":"No result",%["+":"Yes ",%[">":"Yes ",$E(%)="P":"Yes ",$E(%)="p":"Yes ",$$UP^XLFSTR($E(%))="S":"Yes ",$$UP^XLFSTR($E(%))="M":"Yes ",$$UP^XLFSTR($E(%))="L":"Yes ",$E(%)="c":"No result ",$E(%)="C":"No result ",+%>29:"Yes ",1:"No ")
 Q $S($E(%1)="Y":"X",1:"")_"^"_%_"^"_$$DATE^BDMS9B1($P(BDM(N),U,1))_U_$P(BDM(N),U,3)
ACRATIO ;EP
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT A/C RATIO LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT QUANT UACR",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["CANC"
 ...I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETV Q
 ...Q:'BDMOT
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMOT)
 ...D SETV
 ...Q
 I '$D(BDM) S %1="" Q
 D SETN
 NEW % S %=$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)
 S %1=$S(%="":"No result",%[">":"Yes ",$E(%)="c":"No result ",$E(%)="C":"No result ",+%>299:"Yes ",1:"No ")
 S %1=%1_" "_%_"^  "_$P(BDM(N),U,3)_"  "_$$DATE^BDMS9B1($P(BDM(N),U,1))
 Q
ACRATIOM ;EP
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT A/C RATIO LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT QUANT UACR",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["CANC"
 ...I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETV Q
 ...Q:'BDMOT
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMOT)
 ...D SETV
 ...Q
 I '$D(BDM) S %1="" Q
 D SETN
 NEW % S %=$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)
 S %1=$S(%="":"No result",%="30-300":"Pos ",$E(%)="c":"No result ",$E(%)="C":"No result ",+%>29&(+%<300):"Pos ",1:"No ")
 S %1=%1_" "_%_" "_$$DATE^BDMS9B1($P(BDM(N),U),"5")_" "_$P(BDM(N),U,3)
 Q
 ;
MICRO(P,BDATE,EDATE) ;EP - other quantitative urine protein test
 NEW BDM,BDMOT,BDMC,BDMLT
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT MICROALBUMIN LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT MICROALBUMINURIA TAX",0))
 D GATHER
 I '$D(BDM(1)) Q ""
 D SETN
 I $D(BDM(1)) Q "X^"_$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/g ",1:"")_U_$$DATE^BDMS9B1($P(BDM(N),U,1))_U_$P(BDM(N),U,3)
 Q ""
COMBINED(P) ;EP
 NEW A1C,LDL,BP,ALL,G,V,S,D,STATIN
 S G=0,ALL=""
 S A1C=$P(^XTMP("BDMDM16",BDMJOB,BDMBTH,"AUDIT",P,78),U,2)
 S V=A1C
 S ALL="A1C: "_$S(A1C]"":A1C,1:"<Not Documented>")
 I V=""!(V="?") S G=0 G CSTAT
 I V["<" S G=G+1 G CSTAT
 I V[">" S G=G+0 G CSTAT
 S V=$$STV^BDMDD18(V,5)
 I V="" S G=G+0 G CSTAT
 S V=+V
 S S=$S(V="":0,V<8.0:1,1:0)
 S G=G+S
CSTAT ;
 S STATIN=+^XTMP("BDMDM16",BDMJOB,BDMBTH,"AUDIT",P,300)
 S ALL=ALL_"; statin prescribed: "_$S(STATIN=1:"Yes",1:"No")
 I STATIN=1 S G=G+1
BP ;
 S S=$$SYSMEAN^BDMDD15(P,BDMRBD,BDMRED)
 S D=$$DIAMEAN^BDMDD15(P,BDMRBD,BDMRED)
 D
 .I S=""!(D="") Q
 .I S<140&(D<90) S G=G+1 Q
 S ALL=ALL_"; Mean BP: "_$S(S:S_"/"_D,1:"")
 I G=3 Q "1  Yes  "_ALL
 Q "2  No  "_ALL
EGFRUACR(P,BD,ED,F) ;EP - 
 I $$AGE^AUPNPAT(P,BDMADAT)<18 Q ""  ;ONLY 18 AND OVER
 S F=$G(F)
 NEW G,R
 S G=$$GFR^BDMDD1C(BDMPD,BD,ED)
 S R=$$URIN^BDMDD18(BDMPD,BD,ED)
 I $E(G),$E(R) Q $S(F:1,1:"Yes")
 Q $S(F:0,1:"No")
