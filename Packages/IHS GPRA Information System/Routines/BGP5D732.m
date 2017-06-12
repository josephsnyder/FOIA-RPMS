BGP5D732 ; IHS/CMI/LAB - measure AHR.A ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;ROUTINE NOT USED
ACEALG(P,BDATE,EDATE) ;EP
 K BGPG
 D ACEIALG1^BGP5C11(P,EDATE,.BGPG)
 S X=$O(BGPG(X))
 I 'X Q ""
 Q 1_U_"ace/arb alleg: "_BGPG(X)
 ;
ACECONT(P,BDATE,EDATE) ;EP does patient have an ACEI Contraidication
 NEW ED,BD,BGPG,BGPC,X,Y,Z,N,E
 K BGPG S Y="BGPG(",X=P_"^LAST DX [BGP CMS AORTIC STENOSIS DXS;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1_U_"ACEI Contra POV:  "_$$DATE^BGP5UTL($P(BGPG(1),U))_$P(BGPG(1),U,2)_" "_$$VAL^XBDIQ1(9000010.07,+$P(BGPG(1),U,4),.04)
 ;
 ;nmi in Refusal file for ACEI
 S BGPG=""
 S T=$O(^ATXAX("B","BGP HEDIS ACEI MEDS",0))
 S X=0 F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X  D
 .Q:'$D(^ATXAX(T,21,"B",X))  ;not an ACEI
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D  D
 ..S Y=9999999-D I Y<BDATE Q  ;documented more than 1 year before discharge
 ..I Y>EDATE Q  ;documented after End date
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N  D
 ...Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S BGPG=1_U_"NMI ACEI: "_$$VAL^XBDIQ1(9000022,N,.04)_"   "_$$DATE^BGP5UTL($P(^AUPNPREF(N,0),U,3))_"  "_$$VAL^XBDIQ1(9000022,X,1101)
 ..Q
 .Q
 I BGPG Q BGPG
 ;nmi in Refusal file for ACEI
 S BGPG=""
 S T=$O(^ATXAX("B","BGP HEDIS ARB MEDS",0))
 S X=0 F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X  D
 .Q:'$D(^ATXAX(T,21,"B",X))  ;not an ACEI
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D  D
 ..S Y=9999999-D I Y<BDATE Q
 ..I Y>EDATE Q  ;documented after End date
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N  D
 ...Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S BGPG=1_U_"NMI ARB: "_$$VAL^XBDIQ1(9000022,N,.04)_"   "_$$DATE^BGP5UTL($P(^AUPNPREF(N,0),U,3))_"  "_$$VAL^XBDIQ1(9000022,X,1101)
 ..Q
 .Q
 I BGPG Q BGPG
 S X=$$CPTI^BGP5DU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G8029"))
 I X Q 1_U_"arb Contra CPT code G8029: "_$$DATE^BGP5UTL($P(X,U,2))
 S X=$$TRANI^BGP5DU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G8029"))
 I X Q 1_U_"arb Contra Tran Code G8029: "_$$DATE^BGP5UTL($P(X,U,2))
 Q ""
ACERX(P,BDATE,EDATE) ;EP
 K BGPMEDS1
 S K=0,R=""
 D GETMEDS^BGP5UTL2(P,BDATE,EDATE,,,,,.BGPMEDS1)
 I '$D(BGPMEDS1) Q ""
 S T=$O(^ATXAX("B","BGP HEDIS ACEI MEDS",0))
 S T1=$O(^ATXAX("B","BGP HEDIS ACEI NDC",0))
 S T2=$O(^ATXAX("B","BGP HEDIS ARB MEDS",0))
 S T3=$O(^ATXAX("B","BGP HEDIS ARB NDC",0))
 S X=0 F  S X=$O(BGPMEDS1(X)) Q:X'=+X  S Y=+$P(BGPMEDS1(X),U,4) D
 .Q:'$D(^AUPNVMED(Y,0))
 .S G=0
 .S D=$P(^AUPNVMED(Y,0),U)
 .I T,$D(^ATXAX(T,21,"B",D)) S G=1 G ACE1
 .I T2,$D(^ATXAX(T2,21,"B",D)) S G=1 G ACE1
 .S N=$P($G(^PSDRUG(D,2)),U,4)
 .I N]"",T1,$D(^ATXAX(T1,21,"B",N)) S G=1
 .I N]"",T3,$D(^ATXAX(T3,21,"B",N)) S G=1
 .Q:'G
ACE1 .;
 .S J=$P(^AUPNVMED(Y,0),U,8)
 .S V=$P(^AUPNVMED(Y,0),U,3)
 .Q:'V
 .Q:'$D(^AUPNVSIT(V,0))
 .S S=$$DAYS^BGP5D82(Y,V,EDATE)
 .S K=S+K  ;TOTAL DAYS SUPPLY
 .I R]"" S R=R_";"
 .S R=R_$$DATE^BGP5UTL($P($P(^AUPNVSIT(V,0),U),"."))_"("_S_")"
 I K>179 Q 1_U_" total days ACE/ARB: "_K
ACEPRIO ;now add in any before BEG DATE
 K BGPMEDS1
 D GETMEDS^BGP5UTL2(P,$$FMADD^XLFDT(BDATE,-365),BDATE,,,,,.BGPMEDS1)
 I '$D(BGPMEDS1) Q ""
 S X=0 F  S X=$O(BGPMEDS1(X)) Q:X'=+X  S Y=+$P(BGPMEDS1(X),U,4) D
 .Q:'$D(^AUPNVMED(Y,0))
 .Q:$$UP^XLFSTR($P($G(^AUPNVMED(Y,11)),U))["RETURNED TO STOCK"
 .S G=0
 .S D=$P(^AUPNVMED(Y,0),U)
 .I T,$D(^ATXAX(T,21,"B",D)) S G=1 G ACE2
 .I T2,$D(^ATXAX(T2,21,"B",D)) S G=1 G ACE2
 .S N=$P($G(^PSDRUG(D,2)),U,4)
 .I N]"",T1,$D(^ATXAX(T1,21,"B",N)) S G=1 G ACE2
 .I N]"",T3,$D(^ATXAX(T3,21,"B",N)) S G=1
 .Q:'G
ACE2 .;
 .S J=$P(^AUPNVMED(Y,0),U,8)
 .S V=$P(^AUPNVMED(Y,0),U,3)
 .Q:'V
 .Q:'$D(^AUPNVSIT(V,0))
 .;S IS DAYS SUPPLY, J IS DATE DISCONTINUED
 .Q:J]""  ;don't use if discontinued
 .S D=$$FMDIFF^XLFDT(BDATE,$P($P(^AUPNVSIT(V,0),U),"."))  ;difference between dsch date and date prescribed
 .S S=$P(^AUPNVMED(Y,0),U,7)
 .S S=S-D  ;subtract the number of days used
 .S:S<0 S=0
 .S K=S+K  ;TOTAL DAYS SUPPLY
 .I R]"" S R=R_";"
 .S R=R_$$DATE^BGP5UTL($P($P(^AUPNVSIT(V,0),U),"."))_"("_S_")"
 I K>179 Q 1_U_" total ACE/ARB: "_K
 Q 0_U_R_" total days ACE/ARB: "_K
 ;
ACEREF(P,BDATE,EDATE) ;
 ;did patient have a Refusal in time period?
 S T=$O(^ATXAX("B","BGP HEDIS ACEI MEDS",0))
 S X=0,G="" F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X!(G)  D
 .Q:'$D(^ATXAX(T,21,"B",X))
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D!(G)  D
 ..S Y=9999999-D I Y<BDATE Q  ;documented more than 1 year before edate
 ..I Y>EDATE Q  ;documented after end date
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N!(G)  D
 ...;Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S G=1_U_"ACEI Refusal "_$$DATE^BGP5UTL(Y)
 ..Q
 .Q
 I G Q G
 S T=$O(^ATXAX("B","BGP HEDIS ARB MEDS",0))
 S X=0,G="" F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X!(G)  D
 .Q:'$D(^ATXAX(T,21,"B",X))
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D!(G)  D
 ..S Y=9999999-D I Y<BDATE Q  ;documented more than 1 year before edate
 ..I Y>EDATE Q  ;documented after end date
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N!(G)  D
 ...;Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S G=1_U_"ARB Refusal "_$$DATE^BGP5UTL(Y)
 ..Q
 .Q
 Q G
STATALG(P,BDATE,EDATE) ;EP
 S BGPC=""
 ;get all visits and check for ALT/AST tests on 2 consecutive visits
 K BGPG,BGPY S Y="BGPG(",X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04) S N=$$UP^XLFSTR(N)
 .I N["STATIN"!(N["STATINS") S BGPC="Alg Statin POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N
 .S T=$O(^ATXAX("B","BGP ADV EFF CARDIOVASC NEC",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .Q
 I BGPC Q BGPC
 K BGPG S BGPC=0 S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["STATIN"!(N["STATINS") S BGPC=1_U_"alg statin POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_$P(BGPG(X),U,2)_" "_N
 I BGPC Q BGPC
 ;now check problem list for these codes
 S BGPC=0
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP5UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;added after discharge date
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP5UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP5UTL2(I,T,9)),N["STATIN"!(N["STATINS") S BGPC=1_U_"alg statin PROBLEM LIST:  "_$$DATE^BGP5UTL($P(^AUPNPROB(X,0),U,8))_" "_Y_" "_N
 .Q
 I BGPC Q BGPC
 ;now check allergy tracking
 S BGPC=0
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after discharge date
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["STATIN" S BGPC=1_U_" alg statin ALLERGY TRACKING:  "_$$DATE^BGP5UTL($P(^GMR(120.8,X,0),U,4))_"  "_N
 I BGPC Q BGPC
 Q 0
 ;
STATCON(P,BDATE,EDATE) ;EP does patient have an STATIN Contraidication
 NEW ED,BD,BGPG,BGPC,X,Y,Z,N,E
 ;
 ;pregnant
 S X=$$PREG^BGP5D7(P,BDATE,EDATE,0,1) I X Q 1_U_"Contra pregnant"
 ;nmi in Refusal file for STATI
 S BGPG=""
 S T=$O(^ATXAX("B","BGP HEDIS STATIN MEDS",0))
 S X=0 F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X  D
 .Q:'$D(^ATXAX(T,21,"B",X))  ;not an STATI
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D  D
 ..S Y=9999999-D I Y<BDATE Q  ;documented more than 1 year before discharge
 ..I Y>EDATE Q  ;documented after End date
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N  D
 ...Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S BGPG=1_U_"NMI STATIN: "_$$VAL^XBDIQ1(9000022,N,.04)_"   "_$$DATE^BGP5UTL($P(^AUPNPREF(N,0),U,3))_"  "_$$VAL^XBDIQ1(9000022,X,1101)
 ..Q
 .Q
 I BGPG Q BGPG
 ;breastfeeding
 K BGPG S Y="BGPG(",X=P_"^LAST [BGP BREASTFEEDING DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1_U_"STATIN Contra POV:  "_$$DATE^BGP5UTL($P(BGPG(1),U))_" "_$P(BGPG(1),U,2)_" "_$$VAL^XBDIQ1(9000010.07,+$P(BGPG(1),U,4),.04)
 ;now check education
 K BGPG
 S Y="BGPG("
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG) Q ""
 S (X,D)=0,%="",T="" F  S X=$O(BGPG(X)) Q:X'=+X!(%]"")  D
 .S T=$P(^AUPNVPED(+$P(BGPG(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I T="BF-BC" S %=T_U_$P(BGPG(X),U) Q
 .I T="BF-BP" S %=T_U_$P(BGPG(X),U) Q
 .I T="BF-CS" S %=T_U_$P(BGPG(X),U) Q
 .I T="BF-EQ" S %=T_U_$P(BGPG(X),U) Q
 .I T="BF-FU" S %=T_U_$P(BGPG(X),U) Q
 .I T="BF-HC" S %=T_U_$P(BGPG(X),U) Q
 .I T="BF-ON" S %=T_U_$P(BGPG(X),U) Q
 .I T="BF-M" S %=T_U_$P(BGPG(X),U) Q
 .I T="BF-MK" S %=T_U_$P(BGPG(X),U) Q
 .I T="BF-N" S %=T_U_$P(BGPG(X),U) Q
 I %]"" Q 1_U_"Statin Contra "_%
 ;NOW CHECK ALCOHOL HEPATITIS
 K BGPG S Y="BGPG(",X=P_"^LAST DX [BGP ALCOHOL HEPATITIS DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1_U_"STATIN Contra POV:  "_$$DATE^BGP5UTL($P(BGPG(1),U))_" "_$P(BGPG(1),U,2)_" "_$$VAL^XBDIQ1(9000010.07,+$P(BGPG(1),U,4),.04)
 Q ""
STATRX(P,BDATE,EDATE) ;EP
 K BGPMEDS1 S K=0,R=""
 D GETMEDS^BGP5UTL2(P,BDATE,EDATE,,,,,.BGPMEDS1)
 I '$D(BGPMEDS1) Q ""
 S T=$O(^ATXAX("B","BGP HEDIS STATIN MEDS",0))
 S T1=$O(^ATXAX("B","BGP HEDIS STATIN NDC",0))
 S X=0 F  S X=$O(BGPMEDS1(X)) Q:X'=+X  S Y=+$P(BGPMEDS1(X),U,4) D
 .Q:'$D(^AUPNVMED(Y,0))
 .Q:$$UP^XLFSTR($P($G(^AUPNVMED(Y,11)),U))["RETURNED TO STOCK"
 .S G=0
 .S D=$P(^AUPNVMED(Y,0),U)
 .I T,$D(^ATXAX(T,21,"B",D)) S G=1 G STAT1
 .S N=$P($G(^PSDRUG(D,2)),U,4)
 .I N]"",T1,$D(^ATXAX(T1,21,"B",N)) S G=1
 .Q:'G
STAT1 .;
 .S J=$P(^AUPNVMED(Y,0),U,8)
 .S V=$P(^AUPNVMED(Y,0),U,3)
 .Q:'V
 .Q:'$D(^AUPNVSIT(V,0))
 .S S=$$DAYS^BGP5D82(Y,V,EDATE)
 .S K=S+K  ;TOTAL DAYS SUPPLY
 .I R]"" S R=R_";"
 .S R=R_$$DATE^BGP5UTL($P($P(^AUPNVSIT(V,0),U),"."))_"("_S_")"
 I K>179 Q 1_U_" total days STATIN: "_K
STATPRIO ;now add in any before BEG DATE
 K BGPMEDS1
 D GETMEDS^BGP5UTL2(P,$$FMADD^XLFDT(BDATE,-365),BDATE,,,,,.BGPMEDS1)
 I '$D(BGPMEDS1) Q ""
 S X=0 F  S X=$O(BGPMEDS1(X)) Q:X'=+X  S Y=+$P(BGPMEDS1(X),U,4) D
 .Q:'$D(^AUPNVMED(Y,0))
 .Q:$$UP^XLFSTR($P($G(^AUPNVMED(Y,11)),U))["RETURNED TO STOCK"
 .S G=0
 .S D=$P(^AUPNVMED(Y,0),U)
 .I T,$D(^ATXAX(T,21,"B",D)) S G=1 G STAT2
 .S N=$P($G(^PSDRUG(D,2)),U,4)
 .I N]"",T1,$D(^ATXAX(T1,21,"B",N)) S G=1 G STAT2
 .Q:'G
STAT2 .;
 .S J=$P(^AUPNVMED(Y,0),U,8)
 .S V=$P(^AUPNVMED(Y,0),U,3)
 .Q:'V
 .Q:'$D(^AUPNVSIT(V,0))
 .;S IS DAYS SUPPLY, J IS DATE DISCONTINUED
 .Q:J]""  ;don't use if discontinued
 .S D=$$FMDIFF^XLFDT(BDATE,$P($P(^AUPNVSIT(V,0),U),"."))  ;difference between dsch date and date prescribed
 .S S=$P(^AUPNVMED(Y,0),U,7)
 .S S=S-D  ;subtract the number of days used
 .S K=S+K  ;TOTAL DAYS SUPPLY
 .I R]"" S R=R_";"
 .S R=R_$$DATE^BGP5UTL($P($P(^AUPNVSIT(V,0),U),"."))_"("_S_")"
 I K>179 Q 1_U_" total STATIN: "_K
 Q 0_U_R_" total days STATIN: "_K
 ;
STATREF(P,BDATE,EDATE) ;
 ;did patient have a Refusal in time period?
 S T=$O(^ATXAX("B","BGP HEDIS STATIN MEDS",0))
 S X=0,G="" F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X!(G)  D
 .Q:'$D(^ATXAX(T,21,"B",X))
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D!(G)  D
 ..S Y=9999999-D I Y<BDATE Q  ;documented more than 1 year before edate
 ..I Y>EDATE Q  ;documented after end date
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N!(G)  D
 ...;Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S G=1_U_"ACEI Refusal "_$$DATE^BGP5UTL(Y)
 ..Q
 .Q
 Q G
