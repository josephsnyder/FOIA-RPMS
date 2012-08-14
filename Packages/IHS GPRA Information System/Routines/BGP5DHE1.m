BGP5DHE1 ; IHS/CMI/LAB - indicator HEDIS ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
I2 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I BGPAGEB<51 S BGPSTOP=1 Q
 I BGPAGEB>80 S BGPSTOP=1 Q
 I BGPACTCL S BGPD1=1
 I 'BGPD1 S BGPSTOP=1 Q
 I $$CRC^BGP5D61(DFN,BGPEDATE) S BGPSTOP=1 Q  ;has colorectal cancer
 S BGPFOB=$$FOB^BGP5D61(DFN,BGPEDATE)
 S BGPRECT=$$RECT^BGP5D61(DFN,BGPEDATE)
 I BGPFOB]"" S BGPN1=1
 ;I BGPRECT]"" S BGPN1=1
 S BGPOTH=""
 I BGPN1=0 S BGPOTH=$$IBH^BGP5D61(DFN,BGPEDATE)
 I BGPOTH]"" S BGPN1=1
 S BGPREF="" I 'BGPN1 S BGPREF=$$REF^BGP5D61(DFN,$$FMADD^XLFDT(BGPEDATE,-365),BGPEDATE) I BGPREF S BGPN1=1,BGPN4=1
 S BGPVALUE=""
 I BGPFOB]"" S BGPVALUE=$P(BGPFOB,U)_":"_$P(BGPFOB,U,2)_" "
 ;I BGPRECT]"" S BGPVALUE=BGPVALUE_$P(BGPRECT,U)_":"_$P(BGPRECT,U,2)_" "
 I BGPOTH]"" S BGPVALUE=BGPVALUE_$P(BGPOTH,U)_":"_$P(BGPOTH,U,2)_" "
 I BGPREF]"" S BGPVALUE=BGPVALUE_$P(BGPREF,U,3)_":"_$$DATE^BGP5UTL($P(BGPREF,U,2))
 S BGPVALUE="AC|||"_BGPVALUE
 ;S BGPVALUE=$S(BGPFOB]"":BGPFOB,BGPRECT]"":BGPRECT,1:BGPOTH),BGPVALUE=$P(BGPVALUE,U,2)_" "_$P(BGPVALUE,U)
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P
 Q
I5 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I 'BGPACTUP S BGPSTOP=1 Q
 I BGPSEX'="F" S BGPSTOP=1 Q
 I BGPAGEB<16 S BGPSTOP=1 Q
 I BGPAGEB>25 S BGPSTOP=1 Q
 I BGPACTUP S BGPD2=1
 I BGPACTCL S BGPD1=1
 I 'BGPD1 S BGPSTOP=1 Q
 I BGPD1,BGPAGEB>15,BGPAGEB<21 S BGPD3=1
 I BGPD1,BGPAGEB>20,BGPAGEB<26 S BGPD4=1
 S BGPN1=$$CHL^BGP5D5(DFN,BGP365,BGPEDATE)
 S BGPVALUE="AC"
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 Q
I7 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPHOSP,BGPIHD)=0
 I $$V2IHD^BGP5D9(DFN,BGP365,BGPEDATE),$$FIRSTIHD^BGP5D9(DFN,BGPEDATE) S BGPIHD=1,BGPD1=1
 I 'BGPD1 S BGPSTOP=1 Q  ;not ihd patient
 S (BGPVALUE,BGPLP,BGPLDL,BGPHDL,BGPTRI)=""
 S BGPLDL=$$LDL^BGP5D2(DFN,BGP365,BGPEDATE) ;date^value
 I $P(BGPLDL,U) S BGPN1=1
 I $P(BGPLDL,U,3)]"" D
 .S V=$P(BGPLDL,U,3)
 .I V]"",+V'>100 S BGPN2=1
 .I +V>100.99999,+V<131 S BGPN3=1
 S BGPVALUE="IHD|||"_$S(BGPN1:"LDL; ",1:"")
 S %=$S($P(BGPLDL,U,2):$$DATE^BGP5UTL($P(BGPLDL,U,2))_" "_$S($P(BGPLDL,U,3)]"":$P(BGPLDL,U,3),1:"no result"),1:"")
 S BGPVALUE=BGPVALUE_%
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 Q
I11 ;EP
 K BGPN1,BGPN2,BGPN3,BGPN4,BGPVALUE,BGPLHGB,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPN10
 S BGPD1=0
 I 'BGPDMD2 S BGPSTOP=1 Q  ;not active diabetic
 I BGPDMD2 S BGPD1=1
 I 'BGPDM1 S BGPSTOP=1 Q  ;don't process this indicator, pt not diabetic
 S BGPLHGB=$$HGBA1C^BGP5D2(DFN,BGP365,BGPEDATE)
 S BGPN1=$P(BGPLHGB,U)
 S BGPN2=0 I 'BGPN1!($P(BGPLHGB,U,2)=2)!($P(BGPLHGB,U,2)=3)!($P(BGPLHGB,U,2)=7) S BGPN2=1
 S BGPVALUE=""
 I BGPN1 S BGPVALUE=BGPVALUE_"hgb:"_$$DATE^BGP5UTL($P(BGPLHGB,U,3))_" "_$P(BGPLHGB,U,4)
 ;I 'BGPN1 S BGPVALUE=BGPVALUE_"No hgb done"
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,J,K,G,I,L,T,BGPG
73 S BGPEYE=$$EYE(DFN,BGP365,BGPEDATE)
 S A=0 I $P(BGPEYE,U)=1 S A=1
 S B=0 I $P(BGPEYE,U)=2 S B=1
 S BGPN3=0 I A!(B) S BGPN3=1
 I BGPN3 S BGPVALUE=BGPVALUE_";eye: "_$$DATE^BGP5UTL($P(BGPEYE,U,2))_" "_$P(BGPEYE,U,3)
 K BGPG
 K ^TMP($J,"A")
74 ;
 S BGPLDL=$$LDL^BGP5D2(DFN,BGP365,BGPEDATE)
 S BGPN4=$P(BGPLDL,U),BGPN5=0,BGPN6=0
 I $P(BGPLDL,U,3)]"",+$P(BGPLDL,U,3),$P(BGPLDL,U,3)'>100 S BGPN6=1
 I $P(BGPLDL,U,3)]"",+$P(BGPLDL,U,3),$P(BGPLDL,U,3)<130 S BGPN5=1
 I BGPN4 S BGPVALUE=BGPVALUE_";LDL: "_$$DATE^BGP5UTL($P(BGPLDL,U,2))_" "_$P(BGPLDL,U,3)
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,BGPLDL,BGPHDL,BGPTRI,BGPLP
77 ;
 S BGPUP=$$POSUR(DFN,BGP365,BGPEDATE)
 S BGPN7=0 I $P(BGPUP,U)=1 S BGPN7=1
 I BGPN7 S BGPVALUE=BGPVALUE_";NEP SCR: "_$$DATE^BGP5UTL($P(BGPUP,U,4))_" "_$P(BGPUP,U,2)_" "_$P(BGPUP,U,3)
 S BGPN8=0,BGPNEPEV=$$NEPEVID(DFN,BGP365,BGPEDATE) I $P(BGPNEPEV,U) S BGPN8=1
 I BGPN8 S BGPVALUE=BGPVALUE_";NEP EVID: "_$$DATE^BGP5UTL($P(BGPNEPEV,U,2))_" "_$P(BGPNEPEV,U,3)
 I BGPN7,'BGPN8 S BGPVALUE=BGPVALUE_";NEP EVID: "_$$DATE^BGP5UTL($P(BGPUP,U,4))_" "_$P(BGPUP,U,2)_" "_$P(BGPUP,U,3)
 ;I BGPN9 S BGPVALUE=BGPVALUE_";EITHER EVID OR SCR"
 S BGPN9=0 I BGPN7!(BGPN8) S BGPN9=1
 S BGPN10=0 I BGPN1,BGPN3,BGPN4,BGPN9 S BGPN10=1
 K ^TMP($J,"A")
 I BGPN10 S BGPVALUE="all;"_BGPVALUE
 S BGPVALUE="AD|||"_BGPVALUE
 Q
I17 ;EP
 K BGPN1,BGPVALUE,BGPN2,BGPN3,BGPN4,BGPN5
 S (BGPN1,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7)=0
 ;I 'BGPACTUP S BGPSTOP=1 Q  ;not in denominator so don't bother
 I BGPAGEB>2,BGPAGEB<22 S BGPD1=1
 I BGPDMD2 S BGPD2=1
 I BGPAGEB>2,BGPAGEB<7 S BGPD3=1
 I BGPAGEB>6,BGPAGEB<11 S BGPD4=1
 I BGPAGEB>10,BGPAGEB<15 S BGPD5=1
 I BGPAGEB>14,BGPAGEB<19 S BGPD6=1
 I BGPAGEB>18,BGPAGEB<22 S BGPD7=1
 I '(BGPD1+BGPD2+BGPD3+BGPD4+BGPD5+BGPD6+BGPD7) S BGPST0P=1 Q
 S BGPVALUE=$$DENTSRV^BGP5D21(DFN,BGPBDATE,BGPEDATE)
 S BGPN1=0 I $P(BGPVALUE,U) S BGPN1=1
 S BGPVALUE=$S(BGPD1:"UP",1:"")_$S(BGPD2:";AD",1:"")_"|||"_$$DATE^BGP5UTL($P(BGPVALUE,U,2))_" "_$P(BGPVALUE,U,3)
 Q
NEPEVID(P,BDATE,EDATE) ;
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP NEPHROPATHY DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1_U_$P(BGPG(1),U)_" "_$P(BGPG(1),U,2)  ;has a dx
 K BGPG
 ;S X=P_"^LAST PROCEDURE [BGP NEPHROPATHY PROCEDURES;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S T=$O(^ATXAX("B","BGP NEPHROPATHY PROCEDURES",0))
 S (F,S)=0 F  S F=$O(^AUPNVPRC("AC",P,F)) Q:F'=+F!(S)  S C=$P(^AUPNVPRC(F,0),U) D
 .S G=0 S:$$ICD^ATXCHK(C,T,0) G=1
 .Q:G=0
 .S D=$P(^AUPNVPRC(F,0),U,6) I D="" S D=$P($P(^AUPNVSIT($P(^AUPNVPRC(F,0),U,3),0),U),".")
 .I D>EDATE Q
 .I D<BDATE Q
 .S S=1
 I S=1 Q 1_U_D_" "_$P($$ICDOP^ICDCODE(C),U,2)  ;has a PROCEDURE
 S T=$O(^ATXAX("B","BGP NEPHROPATHY CPTS",0))
 S X=$$CPT^BGPDU(P,BDATE,EDATE,T,5)
 I X]"" Q 1_U_X
 ;now check for visit with clinic 49 or provider of 64 as evid of tx
 K ^TMP($J,"A")
 S A="^TMP($J,""A"","
 S %=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,A)
 S X=0,Y=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(Y)  S R=$$CLINIC^APCLV($P(^TMP($J,"A",X),U,5),"C") I R=49,'$$DNKA^BGP5D21($P(^TMP($J,"A",X),U,5)) S Y=1,D=$P(^TMP($J,"A",X),U)
 I Y Q 2_"^"_D_"^Cl: "_R
 S (X,Y)=0,D="" F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(Y)  S R=$$PRIMPROV^APCLV($P(^TMP($J,"A",X),U,5),"D") I R=69,'$$DNKA^BGP5D21($P(^TMP($J,"A",X),U,5)) S Y=1,D=$P(^TMP($J,"A",X),U)
 I Y Q "2^"_D_"^Prv: "_R
 Q ""
POSUR(P,BDATE,EDATE) ;EP
 K BGPC,BGPX
 S BGPC=""
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP MICROALBUM LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT MICROALBUMINURIA TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$P(^AUPNVLAB(X,0),U,4)=""  ;non-null result not allowed, not a hit
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S (BGPC,BGPX(D))="1^M^^"_(9999999-D) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S (BGPC,BGPX(D))="1^M^^"_(9999999-D) Q
 ...Q
 I $D(BGPX) S X=$O(BGPX(0)) Q BGPX(X)  ;quit on the latest one found, if one found
 ;now check urine protein taxonomy - last one entered
 K BGPG S %=P_"^LAST LAB [DM AUDIT URINE PROTEIN TAX;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 S (%,R)="" I $D(BGPG(1)) D  Q R_"^"_"U"_"^"_%_"^"_$P(BGPG(1),U)
 .S %=$P(^AUPNVLAB(+$P(BGPG(1),U,4),0),U,4)
 .I %="" Q  ;don't bother with nulls
 .S R=$S(%="":"",%["+":1,%[">":1,$E(%)="P":1,$E(%)="p":1,$E(%)="c":"",$E(%)="C":"",+%>29:1,1:"")
 S T=$O(^ATXAX("B","BGP URINE PROTEIN LOINC CODES",0))
 S BGPC="",B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC]"")  D
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S %=$P(^AUPNVLAB(X,0),U,4)
 ...I %="" Q
 ...S R=$S(%="":"",%["+":1,%[">":1,$E(%)="P":1,$E(%)="p":1,$E(%)="c":"",$E(%)="C":"",+%>29:1,1:"")
 ...S BGPC=R_"^U^"_%_"^"_(9999999-D)
 Q BGPC
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
EYE(P,BDATE,EDATE) ;EP  HEDIS ONLY
 K BGPG S %=P_"^LAST EXAM DIABETIC EYE EXAM;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) Q "1^"_$P(BGPG(1),U)_"^Diab Eye Ex"
 S BD=BDATE
 S ED=EDATE
 S T=$O(^ATXAX("B","BGP HEDIS RETINAL SCREENING",0))
 K BGPG S BGPG=$$CPT^BGPDU(P,BDATE,EDATE,T,6)
 I $P(BGPG,U)=1 Q "1^"_$P(BGPG,U,2)_"^Ret Scr CPT : "_$P(BGPG,U,3)
 K BGPG S BGPG=$$LASTPRC^BGP5UTL1(P,"BGP HEDIS RETINAL SCRN PROCS",BDATE,EDATE)
 I $P(BGPG,U)=1 Q "1^"_$P(BGPG,U,3)_"^Ret scr Proc: "_$P(BGPG,U,2)
 K ^TMP($J,"A")
 S A="^TMP($J,""A"","
 S %=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,A)
 S X=0,Y=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(Y)  S R=$$CLINIC^APCLV($P(^TMP($J,"A",X),U,5),"C") I (R=17!(R=18)!(R=64)!(R="A2")),'$$DNKA($P(^TMP($J,"A",X),U,5)) S Y=1,D=$P(^TMP($J,"A",X),U)
 I Y Q $S(R="A2":1,1:2)_"^"_D_"^Cl: "_R
 S (X,Y)=0,D="" F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(Y)  S R=$$PRIMPROV^APCLV($P(^TMP($J,"A",X),U,5),"D") I (R=24!(R=79)!(R="08")),'$$DNKA($P(^TMP($J,"A",X),U,5)) S Y=1,D=$P(^TMP($J,"A",X),U)
 I Y Q "2^"_D_"^Prv: "_R
 ;now check for refusal of diabetic eye exam
 S G=$$REFUSAL^BGP5UTL1(P,9999999.15,$O(^AUTTEXAM("B","DIABETIC EYE EXAM",0)),BDATE,EDATE)
 I $P(G,U)=1 Q "1^"_$P(G,U,2)_"^Refused"
 Q ""
DNKA(V) ;EP - is this a DNKA visit?
 NEW D,N
 S D=$$PRIMPOV^APCLV(V,"C")
 I D=".0860" Q 1
 S N=$$PRIMPOV^APCLV(V,"N")
 I $E(D)="V",N["DNKA" Q 1
 I $E(D)="V",N["DID NOT KEEP APPOINTMENT" Q 1
 I $E(D)="V",N["DID NOT KEEP APPT" Q 1
 Q 0