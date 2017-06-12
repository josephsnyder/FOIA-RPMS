BGP5D8 ; IHS/CMI/LAB - measure C
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
IE2 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPD10,BGPD11,BGPD12,BGPD13,BGPD14,BGPD15,BGPD16,BGPD17,BGPD18)=0
 S (BGPN9,BGPN10,BGPN11,BGPN12,BGPN13,BGPN14,BGPN15,BGPN16)=0
 S BGPNO2=0
 S BGPNO2=$$HIVDX(DFN,BGPEDATE)
 S BGPHIVG=""
 S BGPHIV=""
 S BGPDXB=$$HIVDX(DFN,$$FMADD^XLFDT(BGPBDATE,-1))
 S BGPHIVD=$$HIVDX(DFN,BGPEDATE,BGPBDATE)
 I BGPACTCL,BGPSEX="F",$$PREG^BGP5D7(DFN,$$FMADD^XLFDT(BGPEDATE,-608),BGPEDATE,1,1),BGPNO2="" S BGPD1=1
 I BGPACTUP,BGPSEX="F",$$PREG^BGP5D7(DFN,$$FMADD^XLFDT(BGPEDATE,-608),BGPEDATE,1,1),BGPNO2="" S BGPD18=1
 S BGPFIRST=$$FIRSTDX(DFN,BGPBDATE,BGPEDATE)
 S BGPN1=0
 S BGPN2=0
 I BGPD1 D
 .S BGPHIVG=$$HIVTEST(DFN,$$FMADD^XLFDT(BGPEDATE,-608),BGPEDATE)
 .I $P(BGPHIVG,U)=1 S BGPN1=1  ;had a test
 .I $P(BGPHIVG,U)=2 S BGPN2=1  ;had a Refusal
 ;---------------- done with GPRA num/den, now for developmental
 I BGPACTUP,BGPAGEB>12,BGPAGEB<65,BGPDXB="" S BGPD2=1  ;up 13-64 with no dx before report period
 I BGPACTUP,BGPAGEB>12,BGPAGEB<65,BGPFIRST S BGPD17=1
 I BGPACTUP,BGPDXB="" S BGPD3=1
 I BGPAGEB<13,BGPDXB="" S BGPD4=1
 I BGPAGEB>12,BGPAGEB<15,BGPDXB="" S BGPD5=1
 I BGPAGEB>14,BGPAGEB<20,BGPDXB="" S BGPD6=1
 I BGPAGEB>19,BGPAGEB<25,BGPDXB="" S BGPD7=1
 I BGPAGEB>24,BGPAGEB<30,BGPDXB="" S BGPD8=1
 I BGPAGEB>29,BGPAGEB<35,BGPDXB="" S BGPD9=1
 I BGPAGEB>34,BGPAGEB<40,BGPDXB="" S BGPD10=1
 I BGPAGEB>39,BGPAGEB<45,BGPDXB="" S BGPD11=1
 I BGPAGEB>44,BGPAGEB<50,BGPDXB="" S BGPD12=1
 I BGPAGEB>49,BGPAGEB<55,BGPDXB="" S BGPD13=1
 I BGPAGEB>54,BGPAGEB<60,BGPDXB="" S BGPD14=1
 I BGPAGEB>59,BGPAGEB<65,BGPDXB="" S BGPD15=1
 I BGPAGEB>64,BGPDXB="" S BGPD16=1
 ;get HIV test during the report period
 S BGPHIV=$$HIVTEST(DFN,BGPBDATE,$S(BGPHIVD:BGPHIVD,1:BGPEDATE))
 I BGPD2,$P(BGPHIV,U)=1 S BGPN4=1
 I BGPD2,$P(BGPHIV,U)=2 S BGPN8=1
 S BGPHIVE=$$HIVTEST(DFN,$$DOB^AUPNPAT(DFN),$S(BGPHIVD:BGPHIVD,1:BGPEDATE))
 I $P(BGPHIVE,U,1)=1 S BGPN16=1
 S BGPHIV5=$$HIVTEST(DFN,$$FMADD^XLFDT(BGPEDATE,-(5*365)),$S(BGPHIVD:BGPHIVD,1:BGPEDATE))
 I $P(BGPHIV5,U,1)=1 S BGPN15=1
 ;SET N3 TO TOTAL # OF SCREENS
 S BGPX=$$HIVTEST(DFN,BGPBDATE,$S(BGPHIVD:BGPHIVD,1:BGPEDATE))
 I BGPD3 S BGPN3=$P(BGPX,U,3)
 S BGPCD4=""
 I BGPFIRST D
 .S D=$P(BGPFIRST,U,3) S BGPCD4=$$CD4RES^BGP5D84(DFN,$$FMADD^XLFDT(D,-90),$$FMADD^XLFDT(D,90),1)
 .Q:'BGPCD4
 .S BGPN9=1
 .S R=$P(BGPCD4,U,3)
 .I R="" S BGPN14=1 Q
 .I $E(R,1,3)="CPT" S BGPN14=1 Q
 .I R>500 S BGPN13=1 Q
 .I R>350 S BGPN12=1 Q
 .I R<200 S BGPN10=1 Q
 .S BGPN11=1
 S BGPN5=0
 S BGPN6=0
 S BGPN7=0
 ;
 S BGPHIVR=$$HIVTEST1^BGP5D812(DFN,BGPBDATE,$S(BGPHIVD:BGPHIVD,1:BGPEDATE))  ;FOR GPRA DEV RESULT ONLY
 S BGPDAFT=""
 I BGPHIVR=""!($P(BGPHIVR,U,1)=3),BGPN4 S BGPN7=1,BGPDAFT="No Result"
 I $P(BGPHIVR,U,1)=1 S BGPN5=1,BGPDAFT=$P(BGPHIVR,U,2) ;"Positive"  ;positive result
 I $P(BGPHIVR,U,1)=2 S BGPN6=1,BGPDAFT=$P(BGPHIVR,U,2) ;"Negative"
V ;
 S BGPVALUE=""
 S BGPVAL=""
 I BGPD3 S BGPVALUE="UP"
 I BGPD2 S BGPVALUE="UP"
 I BGPD18 S BGPVALUE="UP PREG"
 I BGPD1 S BGPVALUE=BGPVALUE_",AC PREG"
 I BGPD1!(BGPD2) D
 .I BGPN1,'BGPN4 S BGPVAL=$P(BGPHIVG,U,2) Q
 .I BGPN1!(BGPN4) S BGPVAL=$P(BGPHIV,U,2)
 .I BGPN2!(BGPN8) S BGPVAL=$S(BGPHIVG]"":$P(BGPHIVG,U,4),1:$P(BGPHIV,U,4))
 I BGPD3,BGPN3 S BGPVAL=BGPVAL_$S(BGPVAL]"":"",1:$P(BGPX,U,2))_"; Screen Count: "_BGPN3
 S BGPVALUE=BGPVALUE_"|||"_BGPVAL
 S %="",D="",R=""
 I BGPHIV S %=" 1yr ",D=$P($P(BGPHIV,U,4)," ")_" ",E="" ;$P($P(BGPHIV,U,4)," ",2,99)
 I %="",BGPHIV5 S %=" 5yr ",D=$P($P(BGPHIV5,U,4)," ")_" ",E="" ;$P($P(BGPHIV5,U,4)," ",2,99)
 I %="",BGPHIVE S D=$P($P(BGPHIVE,U,4)," ")_" ",E="" ;$P($P(BGPHIVE,U,4)," ",2,99)
 S BGPVALUD="UP" I BGPD2,(BGPN1!(BGPN4)!(BGPN15)!(BGPN16))!(BGPN8) D
 .S BGPVALUD="UP|||"_$S(BGPD2!(D]""):"SCREEN (NO HIV DX): "_D_$S(%]"":%,1:"")_E_"; ",1:"")_$S(BGPN3:"SCREEN COUNT (NO PRIOR DX): "_$P(BGPHIV,U,3)_" screens - "_$P(BGPHIV,U,2),1:"")_$S(BGPN8:" REF",1:"")
 I BGPCD4 S:BGPVALUD'["|||" BGPVALUD=BGPVALUD_"|||" S:$P(BGPVALUD,"|||",2)]"" BGPVALUD=BGPVALUD_";" S BGPVALUD=BGPVALUD_"CD4="_$P(BGPCD4,U,3)
 I BGPD3,'BGPD2,BGPN3 S BGPVALUD="UP|||SCREEN COUNT MEASURE: "_BGPN3_" screens"
 I BGPDAFT]"" S BGPVALUD=BGPVALUD_"; RESULT (GPRA DEV): "_BGPDAFT
 I BGPVALUD=" ; " S BGPVALUD=""
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 Q:$G(BGPIISO)
 K BGPEDUC,BGPHIV,BGPHIVR,BGPHIVE,BGPHIV5
 Q
IE1 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPCD4,BGPPCR,BGPRX)=0
 I BGPAGEB<13 S BGPSTOP=1 Q
 I 'BGPACTCL S BGPSTOP=1 Q
 I '$$V2HIV(DFN,BGP365,BGPEDATE) S BGPSTOP=1 Q
 I BGPACTCL S BGPD1=1
 I 'BGPD1 S BGPSTOP=1 Q
 S BGPCD4=$$CD4^BGP5D812(DFN,BGPBDATE,BGPEDATE)
 S BGPPCR=$$PCR^BGP5D811(DFN,BGPBDATE,BGPEDATE)
 S BGPRX=$$ART^BGP5D811(DFN,BGPBDATE,BGPEDATE)
 I BGPCD4,'BGPPCR S BGPN1=1
 I BGPPCR,'BGPCD4 S BGPN2=1
 I BGPPCR,BGPCD4 S BGPN3=1
 I (BGPN1+BGPN2+BGPN3) S BGPN4=1
 I BGPRX S BGPN5=1
 S BGPVALUE="UP|||"_$S(BGPN3:"BOTH: ",1:"")_$S(BGPCD4:"CD4: "_$$DATE^BGP5UTL($P(BGPCD4,U,2))_" "_$P(BGPCD4,U,3),1:"")
 I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 S BGPVALUE=BGPVALUE_$S(BGPPCR:"Viral Load: "_$$DATE^BGP5UTL($P(BGPPCR,U,2))_" "_$P(BGPPCR,U,3),1:"")
 I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 S BGPVALUE=BGPVALUE_$S(BGPRX:"ART RX: "_$P(BGPRX,U,2),1:"")
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 K ^TMP($J,"A")
 Q
PHYACT ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPD10)=""
 I BGPAGEB<5 S BGPSTOP=1 Q
 S BGPVALUE=""
 I BGPACTUP S BGPD1=1
 I BGPACTCL S BGPD2=1
 I '(BGPACTUP+BGPACTCL) S BGPSTOP=1 Q  ;not in measure
 I BGPACTCL,BGPAGEB>4,BGPAGEB<12 S BGPD3=1  ;5-11
 I BGPACTCL,BGPAGEB>11,BGPAGEB<20 S BGPD4=1  ;12-19
 I BGPACTCL,BGPAGEB>19,BGPAGEB<25 S BGPD5=1  ;20-24
 I BGPACTCL,BGPAGEB>24,BGPAGEB<35 S BGPD6=1 ;25-34
 I BGPACTCL,BGPAGEB>34,BGPAGEB<45 S BGPD7=1
 I BGPACTCL,BGPAGEB>44,BGPAGEB<55 S BGPD8=1
 I BGPACTCL,BGPAGEB>54,BGPAGEB<75 S BGPD9=1
 I BGPACTCL,BGPAGEB>74 S BGPD10=1
 S BGPPHYA=$$FIRSTHF(DFN,BGPBDATE,BGPEDATE,"ACTIVITY LEVEL")
 ;return 1^date internal^date external^factor found
 I BGPPHYA S BGPN1=1,BGPVALUE="PHYS ACT: "_$P(BGPPHYA,U,3)_" "_$P(BGPPHYA,U,4)  ;had assessment
 S BGPEXER="" I BGPPHYA S BGPEXER=$$EXER(DFN,$P(BGPPHYA,U,2),BGPEDATE)
 I BGPEXER S BGPN2=1,BGPVALUE=BGPVALUE_"; EXER ED: "_$$DATE^BGP5UTL($P(BGPEXER,U,1))_" "_$P(BGPEXER,U,2)
 S BGPGOAL="" I BGPPHYA S BGPGOAL=$$GOAL(DFN,$P(BGPPHYA,U,2),BGPEDATE)
 I BGPGOAL S BGPN3=1,BGPVALUE=BGPVALUE_"; GOAL SET: "_$$DATE^BGP5UTL($P(BGPGOAL,U,1)) ;_" "_$P(BGPGOAL,U,2)
 I BGPD1,'BGPD2 S BGPVALUE="UP|||"_BGPVALUE
 I BGPD2 S BGPVALUE="UP,AC|||"_BGPVALUE
 K BGPEXER,BGPPHYA
 Q
GOAL(P,BDATE,EDATE) ;
 ;FIND PHY ACTIVITY GOAL SET WITH CREATED BY DATE BDATE THROUGH EDATE
 NEW X,%,Y,G,D
 S X=0,%=""
 F  S X=$O(^AUPNGOAL("AC",P,X)) Q:X'=+X!(%]"")  D
 .Q:'$D(^AUPNGOAL(X,0))  ;BAD XREF
 .Q:$P(^AUPNGOAL(X,0),U,1)'="S"  ;SET ONLY
 .S G=0
 .S Y=0 F  S Y=$O(^AUPNGOAL(X,10,Y)) Q:Y'=+Y!(G)  D
 ..S Z=$P($G(^AUPNGOAL(X,10,Y,0)),U,1)
 ..I Z,$$VAL^XBDIQ1(9001002.4,Z,.01)="PHYSICAL ACTIVITY" S G=1
 .Q:'G  ; not PA
 .;DURING REPORT PERIOD (CREATE OR MODIFIED DATE)
 .S G=0
 .S D=$P($P(^AUPNGOAL(X,0),U,3),".")
 .I D'<BDATE,D'>EDATE S G=1
 .Q:'G
 .S %=$P(^AUPNGOAL(X,0),U,3)
 .S %=%_U_"Goal Physical Activity"
 Q %
EXER(P,BDATE,EDATE) ;
 NEW BGPG,X,E,BGPALLED
 K BGPG S X=P_"^LAST DX [BGP EXERCISE COUNSELING DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,"BGPG(")
 I $D(BGPG(1)) Q $P(BGPG(1),U)_U_$P(BGPG(1),U,2)_U_$$DATE^BGP5UTL($P(BGPG(1),U,1))
 S Y="BGPALLED("
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPALLED(1)) Q ""
 S (X,D)=0,%="",T="" F  S X=$O(BGPALLED(X)) Q:X'=+X!(%]"")  D
 .S T=$P(^AUPNVPED(+$P(BGPALLED(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I $P(T,"-",2)="EX" S %=$P(BGPALLED(X),U)_U_T Q
 .S S=$P(T,"-",1)
 .S S=$$ICDDX^BGP5UTL2(S)
 .I $P(S,U,1)'="-1",$$ICD^BGP5UTL2($P(S,U,1),$O(^ATXAX("B","BGP EXERCISE COUNSELING DXS",0)),9) S %=$P(BGPALLED(X),U)_U_T Q
 Q %
FIRSTHF(P,BDATE,EDATE,CAT) ;EP
 NEW C,H,D,O
 S C=$O(^AUTTHF("B",CAT,0))
 I '$G(C) Q ""
 S (H,D)=0 K O
 F  S H=$O(^AUTTHF("AC",C,H))  Q:'+H  D
 .Q:'$D(^AUPNVHF("AA",P,H))
 .S D="" F  S D=$O(^AUPNVHF("AA",P,H,D)) Q:D'=+D  D
 ..Q:(9999999-D)>EDATE
 ..Q:(9999999-D)<BDATE
 ..S O(9999999-D)=$O(^AUPNVHF("AA",P,H,D,""))
 .Q
 S D=$O(O(0))
 I D="" Q D
 Q 1_U_D_U_$$DATE^BGP5UTL(D)_U_$$VAL^XBDIQ1(9000010.23,O(D),.01)
 ;
HIVDX1(P,EDATE,BDATE) ;EP - any HIV dx
 NEW BGPG,G,Y,X,T,E
 K BGPG
 S Y="BGPG("
 S BDATE=$G(BDATE)
 I BDATE="" S BDATE=$P(^DPT(P,0),U,3)  ;dob
 S X=P_"^LAST DX [BGP HIV/AIDS DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q $P(BGPG(1),U)_U_$P(BGPG(1),U,2)
 S T=$O(^ATXAX("B","BGP HIV/AIDS DXS",0))
 S X=0,G="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G]"")  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BGP5UTL2(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8)_U_$$VAL^XBDIQ1(9000011,X,.01)
 .Q
 Q G
HIVDX(P,EDATE,BDATE) ;EP - any HIV dx ever or PL
 NEW BGPG,G,Y,X,T,E
 K BGPG
 S Y="BGPG("
 S BDATE=$G(BDATE)
 I BDATE="" S BDATE=$P(^DPT(P,0),U,3)
 S X=P_"^LAST DX [BGP HIV/AIDS DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q $P(BGPG(1),U)
 S T=$O(^ATXAX("B","BGP HIV/AIDS DXS",0))
 S X=0,G="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G]"")  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BGP5UTL2(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8)
 .Q
 Q G
HIVTEST(P,BDATE,EDATE) ;
 NEW BGPC,BGPT,T,X,BGPLT,E,D,B,L,J,G,BGPT1,BGPA
 NEW BD,ED,Y,D,V
 K BGPA
 S BGPC=0
 S T=$O(^ATXAX("B","BGP HIV TEST LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP HIV TEST TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$P(^AUPNVLAB(X,0),U,4)=""
 ...S V=$P(^AUPNVLAB(X,0),U,3)
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) D  Q
 ....I '$D(BGPA((9999999-D))) S BGPC=BGPC+1,BGPC(BGPC)=1_U_$$DATE^BGP5UTL((9999999-D))_" Lab"_U_$P(^AUPNVLAB(X,0),U,4)_U_D,BGPA((9999999-D))="" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP5D21(J,T)
 ...Q:$D(BGPA((9999999-D)))
 ...S BGPC=BGPC+1,BGPC(BGPC)=1_U_$$DATE^BGP5UTL((9999999-D))_"  Lab "_$P($G(^LAB(95.3,J,0)),U)_"-"_$P($G(^LAB(95.3,J,0)),U,15)_U_$P(^AUPNVLAB(X,0),U,4)_U_D,BGPA((9999999-D))=""
 ...Q
 ..Q
 .;
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...S V=$P(^AUPNVLAB(X,0),U,3)
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) D  Q
 ....I '$D(BGPA((9999999-D))) S BGPC=BGPC+1,BGPC(BGPC)=1_U_$$DATE^BGP5UTL((9999999-D))_" Lab"_U_$P(^AUPNVLAB(X,0),U,4)_U_D,BGPA((9999999-D))="" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP5D21(J,T)
 ...Q:$D(BGPA((9999999-D)))  ;
 ...S BGPC=BGPC+1,BGPC(BGPC)=1_U_$$DATE^BGP5UTL((9999999-D))_"  Lab "_$P($G(^LAB(95.3,J,0)),U)_"-"_$P($G(^LAB(95.3,J,0)),U,15)_U_$P(^AUPNVLAB(X,0),U,4)_U_D,BGPA((9999999-D))=""
 ...Q
 ..Q
 S T=$O(^ATXAX("B","BGP CPT HIV TESTS",0))
 I T D
 .;
 .S ED=(9999999-EDATE),BD=9999999-BDATE,G=0
 .F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 ..S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ...Q:'$D(^AUPNVSIT(V,0))
 ...Q:'$D(^AUPNVCPT("AD",V))
 ...S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ....I $$ICD^BGP5UTL2($P(^AUPNVCPT(X,0),U),T,1) I '$D(BGPA((9999999-$P(ED,".")))) S BGPC=BGPC+1,BGPC(BGPC)=1_U_$$DATE^BGP5UTL((9999999-$P(ED,".")))_" CPT "_$$VAL^XBDIQ1(9000010.18,X,.01)_U_U_$P(ED,"."),BGPA((9999999-$P(ED,".")))=""
 ....Q
 ...Q
 ..Q
 I BGPC>0 D  S $P(X,U,2)=X,$P(X,U,1)=1,$P(X,U,3)=BGPC,$P(X,U,4)=Y,$P(X,U,6)=(9999999-T) Q X
 .S X=""
 .S T=0 F  S T=$O(BGPC(T)) Q:T'=+T  S X=X_$S(X]"":", ",1:"")_$P(BGPC(T),U,2)
 .;
 .K BGPA
 .S T=0 F  S T=$O(BGPC(T)) Q:T'=+T  I $P(BGPC(T),U,3)]"" S BGPA($P(BGPC(T),U,4))=BGPC(T)
 .S T=$O(BGPA(0))
 .I T S Y=$P(BGPA(T),U,2)_" result="_$P(BGPA(T),U,3)_U_$P(BGPA(T),U,3) Q
 .S T=0 F  S T=$O(BGPC(T)) Q:T'=+T  S BGPA($P(BGPC(T),U,4))=BGPC(T)
 .S T=$O(BGPA(0))
 .S Y=$P(BGPA(T),U,2)_" No Result"
 ;
 S BGPT=$O(^ATXLAB("B","BGP HIV TEST TAX",0))
 I 'BGPT Q ""
 S (G,BGPT1)=0,G="" F  S BGPT1=$O(^ATXLAB(BGPT,21,"B",BGPT1)) Q:BGPT1=""!(G)  D
 .S T=$$REFUSAL^BGP5UTL1(P,60,BGPT1,BDATE,EDATE) I $P(T,U)=1 S G=2_U_$$DATE^BGP5UTL($P(T,U,2))_" Refused Lab"_U_U_$$DATE^BGP5UTL($P(T,U,2))_" Refused Lab"
 Q G
V2HIV(P,BDATE,EDATE) ;
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 NEW BGPMM
 S BGPMM=$$FMADD^XLFDT(EDATE,-(182))
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","BGP HIV/AIDS DXS",0))
 I 'T Q ""
 S (X,G,H)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:"CV"[$P(^AUPNVSIT(V,0),U,3)
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  I $D(^AUPNVPOV(Y,0)) S %=$P(^AUPNVPOV(Y,0),U) I $$ICD^BGP5UTL2(%,T,9) S D=1
 .Q:'D
 .I $P($P(^AUPNVSIT(V,0),U),".")'<BGPMM S H=1
 .S G=G+1
 .Q
 I G>1,H=1 Q 1
 Q ""
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
FIRSTDX(P,BDATE,EDATE) ;EP - any HIV dx
 NEW BGPG,G,Y,X,T,E
 K BGPG
 S Y="BGPG("
 S BDATE=$G(BDATE)
 I BDATE="" S BDATE=$P(^DPT(P,0),U,3)
 S X=P_"^FIRST DX [BGP HIV/AIDS DXS" S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) D  I G Q G
 .S G=""
 .I $P(BGPG(1),U,1)<BDATE Q
 .I $P(BGPG(1),U,1)>EDATE Q
 .S G=1_U_"First DX: "_$$DATE^BGP5UTL($P(BGPG(1),U,1))_U_$P(BGPG(1),U,1)
 S T=$O(^ATXAX("B","BGP HIV/AIDS DXS",0))
 S X=0,G="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G]"")  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BGP5UTL2(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8)_U_$$VAL^XBDIQ1(9000011,X,.01)
 .Q
 Q G
