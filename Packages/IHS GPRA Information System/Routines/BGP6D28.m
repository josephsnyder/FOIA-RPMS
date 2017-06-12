BGP6D28 ; IHS/CMI/LAB - measure I2 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
IAA ;EP  - ASTHMA ASSESSMENTS
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPN10,BGPN11,BGPN12,BGPN13,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPAMP,BGPASD,BGPACON,BGPSFD,BGPSWD)=0
 I BGPAGEB<5 S BGPSTOP=1 Q
 I $$EMP^BGP6D22(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE) S BGPSTOP=1 Q  ;has dx of emphysema
 I $$COPD^BGP6D22(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE) S BGPSTOP=1 Q  ;has copd
 S (BGPASTH1,BGPASTH2)=$$ASSEV^BGP6D22(DFN,BGPEDATE)
 I BGPASTH1="" S BGPASTH1=$$PERASTH^BGP6D22(DFN,$$FMADD^XLFDT(BGPBDATE,-365),BGPBDATE)
 I BGPASTH2="" S BGPASTH2=$$PERASTH^BGP6D22(DFN,BGPBDATE,BGPEDATE)
 I 'BGPASTH1!('BGPASTH2) K ^TMP($J,"A") S BGPSTOP=1 Q  ;not asthma in both time periods
 K ^TMP($J,"A")
 I BGPACTCL S BGPD1=1
 I BGPACTCL,BGPAGEB>4,BGPAGEB<15 S BGPD2=1
 I BGPACTCL,BGPAGEB>14,BGPAGEB<35 S BGPD3=1
 I BGPACTCL,BGPAGEB>34,BGPAGEB<65 S BGPD4=1
 I BGPACTUP,BGPAGEB>64 S BGPD5=1
 S BGPAMP=$$ASMP(DFN,BGPBDATE,BGPEDATE)  ;RETURN Mgmt Plan: date
 I BGPAMP]"" S BGPN1=1
 S BGPASD=$$SEV^BGP6D31(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE)
 I BGPASD]"" S BGPN2=1
 S BGPACON=$$ACON(DFN,BGPBDATE,BGPEDATE,1)
 I BGPACON]"" S BGPN3=1
 S BGPSFD=$$SFD(DFN,BGPBDATE,BGPEDATE)
 I BGPSFD]"" S BGPN4=1 S Y=$P(BGPSFD,U,2) D
 .I Y<6 S BGPN5=1 Q
 .I Y>5,Y<13 S BGPN6=1 Q
 .I Y>12 S BGPN7=1 Q
 S BGPSWD=$$ADM(DFN,BGPBDATE,BGPEDATE)
 I BGPSWD]"" S BGPN8=1 S Y=$P(BGPSWD,U,2) D
 .I Y<3 S BGPN9=1 Q
 .I Y>2,Y<8 S BGPN10=1 Q
 .I Y>7 S BGPN11=1 Q
 S BGPVALUE=$S(BGPRTYPE=3:"",BGPD2:"UP;",1:"")_$S(BGPD1:"AC",1:"")_" "_$P(BGPASTH1,U,2)_" "_$S(BGPASTH1'=BGPASTH2:$P(BGPASTH2,U,2),1:"")_"|||"
 S N=""
 I BGPAMP]"" D
 .S N=$S(N]"":N_"; ",1:"")_BGPAMP
 I BGPASD]"" D
 .S N=$S(N]"":N_"; ",1:"")_"Severity: "_BGPASD
 I BGPACON]"" D
 .S N=$S(N]"":N_"; ",1:"")_BGPACON
 I BGPSFD]"" D
 .S N=$S(N]"":N_"; ",1:"")_$P(BGPSFD,U,1)
 I BGPSWD]"" D
 .S N=$S(N]"":N_"; ",1:"")_$P(BGPSWD,U,1)
 S BGPVALUE=BGPVALUE_N
 K ^TMP($J,"A")
 Q
ASMP(P,BD,ED) ;
 NEW Y,BGPX,BGPM
 S BGPX=0,Y="" F  S BGPX=$O(^AUTTEDT("C","ASM-SMP",BGPX)) Q:BGPX'=+BGPX  D
 .S Y=$$LASTITEM^APCLAPIU(P,"`"_BGPX,"EDUCATION",BD,ED,"D")
 .Q:Y=""
 .S BGPM(Y)=""
 S Y=$O(BGPM(0))
 I Y="" Q ""
 Q "Mgmt Plan: "_$$DATE^BGP6UTL(Y)
 ;
SFD(P,BD,ED) ;
 NEW Y,B,E,Z,G,H,B,E,X
 S B=9999999-BD
 S E=9999999-ED,E=E-1
 S Z=$O(^AUTTMSR("B","ASFD",0))
 S G="",H=""
 F  S E=$O(^AUPNVMSR("AA",P,Z,E)) Q:E'=+E!(E>B)  D
 .S X=0 F  S X=$O(^AUPNVMSR("AA",P,Z,E,X)) Q:X'=+X  D
 ..S G=(9999999-E),H=$P(^AUPNVMSR(X,0),U,4)
 I G="" Q ""
 Q "Symptom Free Days: "_$$DATE^BGP6UTL(G)_" ["_H_"]"_U_H
 ;
 ;
 ;
ADM(P,BD,ED) ;
 NEW Y,B,E,Z,G,H,B,E,X
 S B=9999999-BD
 S E=9999999-ED,E=E-1
 S Z=$O(^AUTTMSR("B","ADM",0))
 S G="",H=""
 F  S E=$O(^AUPNVMSR("AA",P,Z,E)) Q:E'=+E!(E>B)  D
 .S X=0 F  S X=$O(^AUPNVMSR("AA",P,Z,E,X)) Q:X'=+X  D
 ..S G=(9999999-E),H=$P(^AUPNVMSR(X,0),U,4)
 I G="" Q ""
 Q "Days Missed: "_$$DATE^BGP6UTL(G)_" ["_H_"]"_U_H
 ;
 ;
ACON(P,BD,ED,F) ;EP - return last ASTHMA CONTROL recorded
 NEW D,LAST,E,S,G
 I '$G(P) Q ""
 I '$G(F) S F=1
 S G="",E=0 F  S E=$O(^AUPNVAST("AC",P,E)) Q:E'=+E!(G)  D
 .S D=$$VD^APCLV($P(^AUPNVAST(E,0),U,3))
 .Q:D<BD
 .Q:D>ED
 .Q:$P(^AUPNVAST(E,0),U,14)=""
 .S G=D
 I G="" Q ""
 I F=1 Q "Control: "_$$DATE^BGP6UTL(G)
 ;
 Q ""
 ;
