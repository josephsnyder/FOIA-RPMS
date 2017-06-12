BGP7D26 ; IHS/CMI/LAB - measure 6 03 Jun 2017 3:16 PM 12 Jul 2017 9:31 AM ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
COMPHS ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I 'BGPACTCL S BGPSTOP=1 Q  ;not active clinical
 S BGPVALUE=""
 I BGPAGEB<2 S BGPSTOP=1 Q  ;needs to be at least 2
 I BGPAGEB>11,BGPAGEB<76 S BGPD3=1  ;alcohol screening
 I BGPAGEB>17 S BGPD4=1  ;depression screening
 I BGPAGEB>13,BGPAGEB<47,BGPSEX="F" S BGPD5=1  ;ipv/dv screening
 I BGPAGEB>4 S BGPD6=1  ;tobacco screening
 I BGPAGEB>1,BGPAGEB<75 S BGPD7=1  ;BMI
 I BGPAGEB>19 S BGPD8=1  ;BP Assessed
 I BGPAGEB>4 S BGPD9=1  ;PA Assessed
 I '(BGPD3+BGPD4+BGPD5+BGPD6+BGPD7+BGPD8+BGPD9) W BGPBOMB
 S BGPD1=1
 S BGPD2=1
 ;now set up numerators
 S BGPVAL=""
 I BGPD3 D  I BGPVAL S BGPN3=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"ALC: "_$P(BGPVAL,U,3)_" "_$P(BGPVAL,U,2)
 .S BGPVAL=$$ALSCRNRP(DFN,BGPBDATE,BGPEDATE) I BGPVAL Q
 .S BGPVAL=$$ALDX^BGP7D55(DFN,BGPBDATE,BGPEDATE) I BGPVAL Q
 .S BGPVAL=$$ALPRC^BGP7D5(DFN,BGPBDATE,BGPEDATE)
 S BGPVAL=""
 I BGPD4 D  I BGPVAL S BGPN4=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"DEPR: "_$P(BGPVAL,U,3)_" "_$S($P(BGPVAL,U,5)]"":$P(BGPVAL,U,5),1:$P(BGPVAL,U,2))
 .S BGPVAL=$$DEPSCR^BGP7D25(DFN,BGPBDATE,BGPEDATE) I BGPVAL Q
 .S BGPVAL=$$DEP^BGP7D25(DFN,BGPBDATE,BGPEDATE) Q
 S BGPVAL=""
 I BGPD5 D  I BGPVAL S BGPN5=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"IPV: "_$P(BGPVAL,U,5)_" "_$P(BGPVAL,U,4)
 .S BGPVAL=$$DVEX^BGP7D5(DFN,BGPBDATE,BGPEDATE) I BGPVAL Q
 .S BGPVAL=$$DVDX^BGP7D5(DFN,BGPBDATE,BGPEDATE) I BGPVAL Q  ;DX ONLY
 .S BGPVAL=$$DVPED^BGP7D5(DFN,BGPBDATE,BGPEDATE) I BGPVAL Q  ;W/O V61.11
 .S BGPVAL=$$DV61^BGP7D5(DFN,BGPBDATE,BGPEDATE) I BGPVAL Q  ;include in education for gpra
 I BGPD6 D
 .S BGPVAL=$$TOBACCO^BGP7D7(DFN,BGPBDATE,BGPEDATE) I $P(BGPVAL,U,1)]"" S BGPN6=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"TOB: "_$P(BGPVAL,U,2)_" "_$P(BGPVAL,U,1) Q
 .S BGPVAL=$$DX^BGP7D7(DFN,BGPBDATE,BGPEDATE) I $P(BGPVAL,U,1)]"" S BGPN6=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"TOB: "_$$DATE^BGP7UTL($P(BGPVAL,U,2))_" "_$P(BGPVAL,U,1) Q
 .S BGPVAL=$$PED^BGP7D7(DFN,BGPBDATE,BGPEDATE) I $P(BGPVAL,U,1)]"" S BGPN6=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"TOB: "_$$DATE^BGP7UTL($P(BGPVAL,U,2))_" "_$P(BGPVAL,U,1) Q
 .S BGPVAL=$$DENT^BGP7D7(DFN,BGPBDATE,BGPEDATE) I $P(BGPVAL,U,1)]"" S BGPN6=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"TOB: "_$$DATE^BGP7UTL($P(BGPVAL,U,2))_" "_$P(BGPVAL,U,1) Q
 .S BGPVAL=$$CPTSM^BGP7D7(DFN,BGPBDATE,BGPEDATE) I $P(BGPVAL,U,1)]"" S BGPN6=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"TOB: "_$$DATE^BGP7UTL($P(BGPVAL,U,2))_" "_$P(BGPVAL,U,1) Q
 I BGPD7 D  I $P(BGPVAL,U,1)]"" S BGPN7=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"BMI: "_$$SB^BGP7PDL1($J($P(BGPVAL,U),6,2))
 .S BGPVAL=$$BMI^BGP7D6(DFN,BGPEDATE,BGPAGEE)
 I BGPD8 D  I BGPVAL]"" S BGPN8=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"BP: "_$P($P(BGPVAL,U,1)," ")
 .S BGPVAL=$$MEANBP(DFN,$$FMADD^XLFDT(BGPEDATE,-(2*365)),BGPEDATE,1) I BGPVAL]"",BGPVAL'["unknown" Q
 .I BGPVAL["unknown" S BGPVAL=$P($$BPCPT^BGP7D22(DFN,BGPBDATE,BGPEDATE),U,2)
 I BGPD9 D
 .S BGPVAL=$$FIRSTHF^BGP7D8(DFN,BGPBDATE,BGPEDATE,"ACTIVITY LEVEL")  ;get the first health factor in this category recorded in this time period
 .I BGPVAL S BGPN9=1,BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_"PHYS ACT: "_$P(BGPVAL,U,3)_" "_$P(BGPVAL,U,4)
 S G=1
 I BGPD1 D
 .I BGPD3 I 'BGPN3 S G=0
 .I BGPD4 I 'BGPN4 S G=0
 .I BGPD5 I 'BGPN5 S G=0
 .I BGPD6 I 'BGPN6 S G=0
 .I BGPD7 I 'BGPN7 S G=0
 .I BGPD8 I 'BGPN8 S G=0
 .I BGPD9 I 'BGPN9 S G=0
 .I G S BGPN1=1,BGPVALUE="ALL COMP HEALTH: "_BGPVALUE
 S H=1
 I BGPD1 D
 .I BGPD3 I 'BGPN3 S H=0
 .I BGPD4 I 'BGPN4 S H=0
 .I BGPD5 I 'BGPN5 S H=0
 .I BGPD6 I 'BGPN6 S H=0
 .I BGPD7 I 'BGPN7 S H=0
 .I BGPD8 I 'BGPN8 S H=0
 .I H S BGPN2=1 I 'G S BGPVALUE="COMP HEALTH: "_BGPVALUE
 S BGPVALUE="AC|||"_BGPVALUE
 Q
ALSCRNRP(P,BDATE,EDATE) ;EP - alcohol hf or screening pov
 NEW BGPG,%,E,BGPSC,V,BGPC,T,F,D,R,BGPCT,BGPX,BGPV,BGPVD,BGPIVD,BGPVALF,A
 S BGPVALF=""
PCC ;check PCC first
 S BGPCT=$O(^ATXAX("B","BGP ALCOHOL SCREENING CPTS",0))
 K ^TMP($J,"A")
 S A="^TMP($J,""A"","
 S %=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,A)
 S BGPX=0 F  S BGPX=$O(^TMP($J,"A",BGPX)) Q:BGPX'=+BGPX!(BGPVALF)  S BGPV=$P(^TMP($J,"A",BGPX),U,5) D
 .S BGPVD=$$VD^APCLV(BGPV)
PCCEX .;
 .S E=0 F  S E=$O(^AUPNVXAM("AD",BGPV,E)) Q:E'=+E!(BGPVALF)  D
 ..S I=$P($G(^AUPNVXAM(E,0)),U,1)
 ..Q:'I
 ..Q:$P($G(^AUTTEXAM(I,0)),U,2)'=35
 ..S BGPVALF=1_"^Ex 35^"_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 .Q:BGPVALF
PCCHF .;
 .S E=0 F  S E=$O(^AUPNVHF("AD",BGPV,E)) Q:E'=+E!(BGPVALF)  D
 ..S I=$P($G(^AUPNVHF(E,0)),U,1)
 ..S I=$P($G(^AUTTHF(I,0)),U,1)
 ..I I'="CAGE 0/4",I'="CAGE 1/4",I'="CAGE 2/4",I'="CAGE 3/4",I'="CAGE 4/4" Q  ;cage only
 ..S BGPVALF=1_"^HF "_I_"^"_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 .Q:BGPVALF
PCCDX .;
 .S E=0 F  S E=$O(^AUPNVPOV("AD",BGPV,E)) Q:E'=+E!(BGPVALF)  D
 ..S I=$$VAL^XBDIQ1(9000010.07,E,.01)
 ..I '$$ICD^BGP7UTL2($$VALI^XBDIQ1(9000010.07,E,.01),$O(^ATXAX("B","BGP ALCOHOL SCREEN DXS",0)),9) Q
 ..S BGPVALF=1_U_"POV "_I_U_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 .Q:BGPVALF
PCCCPT .;
 .S E=0 F  S E=$O(^AUPNVCPT("AD",BGPV,E)) Q:E'=+E!(BGPVALF)  D
 ..S I=$P($G(^AUPNVCPT(E,0)),U,1)
 ..Q:'I
 ..S J=$P(^ICPT(I,0),U)
 ..Q:'$$ICD^BGP7UTL2(I,BGPCT,1)
 ..S BGPVALF=1_"^CPT "_J_"^"_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 .Q:BGPVALF
PCCMEAS .;now add in v measurements
 .S E=0 F  S E=$O(^AUPNVMSR("AD",BGPV,E)) Q:E'=+E!(BGPVALF)  D
 ..S I=$$VAL^XBDIQ1(9000010.01,E,.01)
 ..I I'="AUDT",I'="AUDC",I'="CRFT" Q
 ..S BGPVALF=1_"^MEAS "_I_"^"_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 I BGPVALF Q BGPVALF
BH ;CHECK BH VISITS
 S BGPC="",T="",F=""
 S E=9999999-BDATE,D=9999999-EDATE-1_".99"
 F  S D=$O(^AMHREC("AE",P,D)) Q:D'=+D!($P(D,".")>E)!(BGPVALF)  S V=0 F  S V=$O(^AMHREC("AE",P,D,V)) Q:V'=+V  D
BHEX .;
 .S BGPVD=9999999-$P(D,"."),BGPIVD=$P(D,".")
 .S X=$P($G(^AMHREC(V,14)),U,3)
 .I X="P"!(X="N") D
 ..S BGPVALF=1_"^BH Ex 35^"_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 .Q:BGPVALF
BHHF .;
 .S X=0 F  S X=$O(^AMHRHF("AD",V,X)) Q:X'=+X!(BGPVALF)  D
 ..S I=$P($G(^AMHRHF(X,0)),U,1)
 ..Q:'I
 ..S I=$P($G(^AUTTHF(I,0)),U,1)
 ..I I'="CAGE 0/4",I'="CAGE 1/4",I'="CAGE 2/4",I'="CAGE 3/4",I'="CAGE 4/4" Q  ;cage only
 ..S BGPVALF=1_"^BH HF: "_I_"^"_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 ..Q
 .Q:BGPVALF
BHDX .;
 .S X=0 F  S X=$O(^AMHRPRO("AD",V,X)) Q:X'=+X!(BGPVALF)  D
 ..S I=$$VAL^XBDIQ1(9002011.01,X,.01)
 ..I '$$ICD^BGP7UTL2($$VALI^XBDIQ1(9002011.01,X,.01),$O(^ATXAX("B","BGP ALCOHOL SCREEN DXS",0)),9),I'="29.1" Q
 ..S BGPVALF=1_U_"BH DX "_I_U_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 ..Q
 .Q:BGPVALF
BHMEAS .;
 .S X=0 F  S X=$O(^AMHRMSR("AD",V,X)) Q:X'=+X!(BGPVALF)  D
 ..S I=$$VAL^XBDIQ1(9002011.12,X,.01)
 ..I I'="AUDT",I'="AUDC",I'="CRFT" Q
 ..S BGPVALF=1_"^BH Meas "_I_"^"_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 .Q:BGPVALF
BHCPT .;now add in CPT codes
 .S X=0 F  S X=$O(^AMHRPROC("AD",V,X)) Q:X'=+X!(BGPVALF)  D
 ..S I=$P($G(^AMHRPROC(X,0)),U,1)
 ..Q:'I
 ..Q:'$$ICD^BGP7UTL2(I,BGPCT,1)
 ..S J=$P($G(^ICPT(I,0)),U,1)
 ..S BGPVALF=1_"^BH CPT: "_J_"^"_$$DATE^BGP7UTL(BGPVD)_U_BGPVD
 ..Q
 .Q:BGPVALF
 Q BGPVALF
MEANBP(P,BDATE,EDATE,GDEV) ;EP
 S GDEV=$G(GDEV)
 S X=$$BPS(P,BDATE,EDATE,"I",GDEV)
 S S=$$SYSMEAN(X) I S="" Q "unknown^^"
 S DS=$$DIAMEAN(X) I DS="" Q "unknown^^"
 ;I S>159!(DS>99) Q S_"/"_DS_" STG 2 HTN"_U_6
 ;I S>139&(S<160)!(DS>89&(DS<100)) Q S_"/"_DS_" STG 1 HTN"_U_5
 ;I S>129&(S<140)!(DS>80&(DS<90)) Q S_"/"_DS_" PRE HTN 2"_U_4
 ;I S>119&(S<130)!(DS=80) Q S_"/"_DS_" PRE HTN 1"_U_3
 ;I S<120&(DS<80) Q S_"/"_DS_" NORMAL"_U_2
 Q S_"/"_DS_U_1
SYSMEAN(X) ;EP
 I X="" Q ""
 S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C<2 Q ""
 S T=0 F Y=1:1:3 S T=$P($P(X,";",Y),"/")+T
 Q T\C
 ;Q $$STRIP^XLFSTR($J((T/C),5,1)," ")
 ;
DIAMEAN(X) ;EP
 I X="" Q ""
 S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C<2 Q ""
 S T=0 F Y=1:1:3 S T=$P($P(X,";",Y),"/",2)+T
 Q T\C
 ;Q $$STRIP^XLFSTR($J((T/C),5,1)," ")
 ;
BPS(P,BDATE,EDATE,F,GDEV) ;EP ;
 I $G(F)="" S F="E"
 S GDEV=$G(GDEV)
 NEW BGPGLL,BGPGV,BGPG,X,Y,BGPBP,V,T,Z
 S BGPGLL=0,BGPGV=""
 K BGPG
 K ^TMP($J,"BPV")
 S A="^TMP($J,""BPV"",",B=P_"^LAST 365 VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"BPV",1)) Q ""
 ;S X=P_"^LAST 50 MEAS BP;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,"BGPG(")
 ;S BGPGL=0 F  S BGPGL=$O(BGPG(BGPGL)) Q:BGPGL'=+BGPGL!(BGPGLL=3)  S BGPGBP=$P($G(BGPG(BGPGL)),U,2) D
 S Y=0 F  S Y=$O(^TMP($J,"BPV",Y)) Q:Y'=+Y!(BGPGLL=3)  D
 .S V=$P(^TMP($J,"BPV",Y),U,5)
 .Q:$$CLINIC^APCLV(V,"C")=30  ;NO ER CLINIC VISITS COUNTED
 .I $G(GDEV) Q:$$GDEV^BGP7D2(V)
 .Q:'$D(^AUPNVMSR("AD",V))  ;no measurements to look at
 .;NOW GET ALL BPS ON THIS VISIT
 .S BGPBP=""
 .S X=0 F  S X=$O(^AUPNVMSR("AD",V,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVMSR(X,0))  ;BAD AD XREF
 ..Q:$P($G(^AUPNVMSR(X,2)),U,1)
 ..S T=$P($G(^AUPNVMSR(X,0)),U)
 ..Q:T=""  ;BAD AD XREF
 ..Q:$P($G(^AUTTMSR(T,0)),U)'="BP"  ;not a BP measurement type
 ..S Z=$P(^AUPNVMSR(X,0),U,4)  ;blood pressure value
 ..I BGPBP="" S BGPBP=Z Q
 ..I $P(Z,"/")'>$P(BGPBP,"/") S BGPBP=Z
 .Q:BGPBP=""
 .S BGPGLL=BGPGLL+1
 .I F="E" S $P(BGPGV,";",BGPGLL)=BGPBP_"  "_$$FMTE^XLFDT($P(^TMP($J,"BPV",V),U))
 .I F="I" S $P(BGPGV,";",BGPGLL)=$P(BGPBP," ")
 K ^TMP($J,"BPV")
 Q BGPGV
