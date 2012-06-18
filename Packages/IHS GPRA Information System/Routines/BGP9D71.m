BGP9D71 ; IHS/CMI/LAB - measure C ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
IC1 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 ;denominator 1 is active clinical, 6 and older and overweight
 S (BGPOW,BGPOB,BGPBMI)=""
 K BGPALLED,BGPSN,BGPMN,BGPSPEX
 I 'BGPACTUP S BGPSTOP=1 Q
 S BGPBMI=$$BMI^BGP9D6(DFN,BGPEDATE,BGPAGEE)
 S BGPOW=$$OW^BGP9D6(DFN,BGPBMI,BGPAGEE)
 S BGPOB=$$OB^BGP9D6(DFN,BGPBMI,BGPAGEE)
 S BGPOWOB=BGPOW+BGPOB
 I BGPAGEB>5,BGPOWOB,BGPACTCL S BGPD1=1
 I BGPDMD2 S BGPD2=1
 I BGPAGEB>5,BGPOB,BGPACTCL S BGPD3=1
 I BGPD3,BGPAGEB>5,BGPAGEB<12 S BGPD4=1
 I BGPD3,BGPAGEB>11,BGPAGEB<20 S BGPD5=1
 I BGPD3,BGPAGEB>19,BGPAGEB<40 S BGPD6=1
 I BGPD3,BGPAGEB>39,BGPAGEB<60 S BGPD7=1
 I BGPD3,BGPAGEB>59 S BGPD8=1
 I '(BGPD1+BGPD2+BGPD3+BGPD4+BGPD5+BGPD6+BGPD7+BGPD8) Q
 S BGPMN=$$MEDNUTR^BGP9D711(DFN,BGP365,BGPEDATE) I BGPMN]"" S BGPN1=1
 S BGPSN=$$SPECNUTR^BGP9D711(DFN,BGP365,BGPEDATE) I BGPSN]"" S BGPN2=1
 S BGPSPEX=$$SPECEX^BGP9D711(DFN,BGP365,BGPEDATE) I BGPSPEX]"" S BGPN3=1
 S BGPOTH=$$OTHREL^BGP9D711(DFN,BGP365,BGPEDATE) I BGPOTH]"" S BGPN4=1
 S BGPVALUE=$$DATE^BGP9UTL($P(BGPMN,U))_" "_$P(BGPMN,U,2)_$S(BGPMN]"":";",1:"")
 S BGPVALUE=BGPVALUE_$$DATE^BGP9UTL($P(BGPSN,U))_" "_$P(BGPSN,U,2)_$S(BGPSN]"":";",1:"")
 S BGPVALUE=BGPVALUE_$$DATE^BGP9UTL($P(BGPSPEX,U))_" "_$P(BGPSPEX,U,2)_$S(BGPSPEX]"":";",1:"")
 S BGPVALUE=BGPVALUE_$$DATE^BGP9UTL($P(BGPOTH,U))_" "_$P(BGPOTH,U,2)
 S V=$S(BGPD1:"OW;",1:"")_$S(BGPD2:"AD;",1:"")_$S(BGPD3:"OB",1:"")
 S V=V_"|||"_BGPVALUE
 S BGPVALUE=V
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T,BGPALLED,BGPBMI,BGPOW,BGPOB,BGPOWOB,BGPMN,BGPSN,BGPSPEX
 K ^TMP($J,"A")
 Q
I19 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPN10,BGPN11,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPD10)=0
 K BGPTOB,BGPSDX,BGP1320,BGPTC,BGPTQ,BGPTOM,BGPTOBS,BGPTC1,BGPTOBD,BGPQ
 S (BGPTUHF,BGPTUQ,BGPTU,BGPTUC,BGPREM,BGPTOBD,BGPTOBX,BGPTC,BGPTC1,BGPQ)=""
 I 'BGPACTUP S BGPSTOP=1 Q  ;must be at least user pop
 I BGPRTYPE=3,'BGPACTCL S BGPSTOP=1 Q   ;for hedis, must be active clinical
 I BGPRTYPE=7 D NEWSTUFF Q
 S BGPTOBP=$$TOBACCO^BGP9D7(DFN,$$DOB^AUPNPAT(DFN),$$FMADD^XLFDT(BGPBDATE,-1))
 S BGPSDX=$$DX^BGP9D7(DFN,$$DOB^AUPNPAT(DFN),$$FMADD^XLFDT(BGPBDATE,-1))
 ;S BGP1320=$$DENT^BGP9D7(DFN,$$DOB^AUPNPAT(DFN),$$FMADD^XLFDT(BGPBDATE,-1))
 S BGPSCPT=$$CPTSM^BGP9D7(DFN,$$DOB^AUPNPAT(DFN),$$FMADD^XLFDT(BGPBDATE,-1))
 ;now get last of these
 ;S D=$P(BGPTOBP,U,3),V="HF "_$P(BGPTOBP,U,1)
 ;I $P(BGPSDX,U,2)>D S D=$P(BGPSDX,U,2),V="DX "_$P(BGPSDX,U,1)
 ;I $P(BGP1320,U,2)>D S D=$P(BGP1320,U,2),V="DENTAL 1320"
 ;I $P(BGPSCPT,U,2)>D S D=$P(BGPSCPT,U,2),V="CPT "_$P(BGPSCPT,U,1)
 ;I V["HF ",$P(BGPTOBP,U,1)["CURRENT"!(BGPTOBP["CESSATION") S BGPD2=1
 ;I V["DX ",(BGPSDX]""&(+BGPSDX'="305.13")&(BGPSDX'="V15.82")) S BGPD2=1
 ;I V["DENTAL " S BGPD2=1
 ;I V["CPT ",$P(BGPSCPT,U)["1034F"!($P(BGPSCPT,U)["1035F") S BGPD2=1
 S %=""
 I BGPSDX]"",$P(BGPSDX,U)="V15.82" S %=1
 I BGPSDX]"",$P(BGPSDX,U)="305.13" S %=1
 I $P(BGPTOBP,U,1)["CURRENT"!(BGPSDX]""&(%=""))!(BGPTOBP["CESSATION")!($P(BGPSCPT,U)="1034F")!($P(BGPSCPT,U)="1035F")!($P(BGPSCPT,U)=99406)!($P(BGPSCPT,U)=99407)!($P(BGPSCPT,U)="G0375")!($P(BGPSCPT,U)="G0376") S BGPD2=1
 I 'BGPD2 S BGPSTOP=1 Q  ;last item documented is not a tobacco user
 I BGPD2,BGPACTCL S BGPD1=1
 I BGPD1,BGPAGEB<12 S BGPD3=1
 I BGPD1,BGPAGEB>11,BGPAGEB<18 S BGPD4=1
 I BGPD1,BGPAGEB>17 S BGPD5=1
 I BGPRTYPE=3,'BGPD1 S BGPSTOP=1 Q  ;hedis must be active clinical
 S BGPTC=$$PED^BGP9D711(DFN,BGP365,BGPEDATE)
 I $P(BGPTC,U)]"" S BGPN1=1 I $P(BGPTC,U,2)["ref" S BGPN2=1
 I BGPN1,'BGPN2 S BGPN11=1
 I BGPRTYPE'=3 D
 .S BGPTOB=$$TOBACCO^BGP9D7(DFN,BGP365,BGPEDATE)
 .I BGPTOB'["PREVIOUS" S BGPTOB=""
 .S BGPSDXQ=$$DX^BGP9D7(DFN,BGP365,BGPEDATE)
 .S BGPTQ="" I $P(BGPTOB,U)["PREVIOUS"!(+$P(BGPSDXQ,U)="305.13")!($P(BGPSDXQ,U)="V15.82") S BGPN3=1
 .;I $P(BGPTOB,U)["CURRENT" S BGPN3=0  ;
 I BGPN1!(BGPN3) S BGPN5=1  ;new numerator v8.0 patch 1
 I BGPRTYPE=3 S BGPN4=0,BGPTOM=$$TOMPED(DFN,BGP365,BGPEDATE) I BGPTOM S BGPN4=1
NXT ;
 S BGPVALUE=$S(BGPRTYPE=3:"",BGPD2:"UP",1:"")_$S(BGPD1:";AC",1:"")
 I BGPRTYPE'=7 D
 .S BGPVALUE=BGPVALUE_"|||"_$S($P(BGPTC,U):"COUNSELING: "_$$DATE^BGP9UTL($P(BGPTC,U))_" "_$P(BGPTC,U,2),1:"")
 .I BGPN3,BGPRTYPE'=3 S BGPVALUE=BGPVALUE_";QUIT: "_$P(BGPTOB,U)_" "_$P(BGPTOB,U,2)_$S(+BGPSDXQ="305.13":" DX: 305.13 "_$$DATE^BGP9UTL($P(BGPSDXQ,U,2)),$P(BGPSDXQ,U)="V15.82":" DX: V15.82 "_$$DATE^BGP9UTL($P(BGPSDXQ,U,2)),1:"")
 .I BGPN4,BGPRTYPE=3 S BGPVALUE=BGPVALUE_";TO-M "_$$DATE^BGP9UTL($P(BGPTOM,U))
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T,BGPQ,BGPALLED,BGPTQ,BGPTC,BGPTC1,BGPTOB,BGPSDX,BGP1320,BGPTOM,BGPTOBS,BGPTUHF,BGPTU,BGPTUC,BGPTUQ,BGPTOBD
 Q
DNKA(V) ;EP - is this a DNKA visit?
 NEW D,N
 S D=$$PRIMPOV^APCLV(V,"C")
 I D=".0860" Q 1
 S N=$$PRIMPOV^APCLV(V,"N")
 I $E(D)="V",N["DNKA" Q 1
 I $E(D)="V",N["DID NOT KEEP APPOINTMENT" Q 1
 I $E(D)="V",N["DID NOT KEEP APPT" Q 1
 Q 0
TOMPED(P,BDATE,EDATE) ;EP
 K BGPALLED
 S BGPLPED=""
 S Y="BGPALLED("
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPALLED(1)) S %="" D  I %]"" S BGPLPED=%
 .S (X,D)=0,T="" F  S X=$O(BGPALLED(X)) Q:X'=+X  D
 ..S T=$P(^AUPNVPED(+$P(BGPALLED(X),U,4),0),U)
 ..Q:'T
 ..Q:'$D(^AUTTEDT(T,0))
 ..S T=$P(^AUTTEDT(T,0),U,2)
 ..I T'="TO-M" Q
 ..I $P(BGPLPED,U)<$P(BGPALLED(X),U) S %=$P(BGPALLED(X),U)_U_T
 I BGPLPED]"" Q BGPLPED  ;
TOMREF ; 
 ;EP - now check all refusals of these education topics
 S G="",X=0 F  S X=$O(^AUPNPREF("AA",P,9999999.09,X)) Q:X=""!(G]"")  D
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,9999999.09,X,D)) Q:D=""!(G]"")  D
 ..S I=0 F  S I=$O(^AUPNPREF("AA",P,9999999.09,X,D,I)) Q:I'=+I!(G]"")  D
 ...S Z=$P($G(^AUPNPREF(I,0)),U,3)
 ...Q:Z=""
 ...I Z<BDATE Q
 ...I Z>EDATE Q
 ...S Y=$P($G(^AUTTEDT(X,0)),U,2)
 ...I Y'="TO-M" Q
 ...S G=Z_U_"ref "_Y
 Q G
GETALLHF ;
 S C=$O(^AUTTHF("B","TOBACCO",0)) ;ien of category passed
 I '$G(C) Q
 NEW ED,BD
 S ED=$$FMADD^XLFDT(BGPBDATE,180)
 S (H,D)=0 K O
 F  S H=$O(^AUTTHF("AC",C,H))  Q:'+H  D
 .Q:'$D(^AUPNVHF("AA",DFN,H))
 .S D="" F  S D=$O(^AUPNVHF("AA",DFN,H,D)) Q:D'=+D  D
 ..Q:(9999999-D)>ED  ;after time frame
 ..Q:(9999999-D)<BGPBDX  ;before time frame
 ..I $D(BGPTOBS(D)),$P(BGPTOBS(D),U,2)["CESSATION" Q
 ..I $D(BGPTOBS(D)),$P(BGPTOBS(D),U,2)["CURRENT SMOKE",$P(^AUTTHF(H,0),U)'["CESSATION" Q
 ..S BGPTOBS(D)=$O(^AUPNVHF("AA",DFN,H,D,""))_U_$P(^AUTTHF(H,0),U)
 .Q
 ;NOW if there are multiples on the same day, take the cessation one, if no cessation one, take the current smoker on
 S D=$O(BGPTOBS(0)) I 'D S BGPTOBS="" Q
 S D=BGPTOBS(D)_U_(9999999-D)
 K BGPTOBS
 S BGPTOBS=D
 Q
QUIT(P,BD,ED) ;
 NEW Y,X,G,T
 S Y=$$LASTDXI^BGP9UTL1(P,"305.13",BD,ED)
 I Y Q 1_U_"QUIT: POV 305.13 "_$$DATE^BGP9UTL($P(Y,U,3))
 S Y=$$LASTDXI^BGP9UTL1(P,"V15.82",BD,ED)
 I Y Q 1_U_"QUIT: POV V15.82 "_$$DATE^BGP9UTL($P(Y,U,3))
 S X=0,G="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)'="A"
 .Q:$P(^AUPNPROB(X,0),U,3)>ED
 .Q:$P(^AUPNPROB(X,0),U,3)<BD
 .S Y=$P(^AUPNPROB(X,0),U)
 .S T=$P($$ICDDX^ICDCODE(Y),U,2)
 .I T'="V15.82",T'="305.13" Q
 .S G=1_U_"QUIT: PL "_$P(^ICD9(Y,0),U)_" "_$$DATE^BGP9UTL($P(^AUPNPROB(X,0),U,3))
 I G Q G
 S G=$$LASTHF^BGP9D7(P,"TOBACCO",BD,ED)
 I $P(G,U)["PREVIOUS" Q 1_U_"QUIT: HF: "_$P(G,U,1)_U_" "_$P(G,U,2)
 Q ""
 ;
 ;
NEWSTUFF ;new stuff
 ;BGPD6 - is a tobacco user or user in cessation
 ;BGPD7 - active clinical tobacco user or user in cessation
 ;BGPD8 - ditto, less than 12
 ;BGPD9 - ditto, 12-17
 ;BGPD10 - ditto over 17
 K BGPTOBS
 S BGPBDX=$$FMADD^XLFDT(BGPBDATE,-180) D GETALLHF
 I BGPTOBS]"" D  G SET
 .I $P(BGPTOBS,U,2)["CESSATION" S BGPTUC=1,BGPTUQ=1,BGPTU=1,BGPTOBD=$P(BGPTOBS,U,3),BGPTOBX=$P(BGPTOBS,U,2)  ;cessation and quit
 .I $P(BGPTOBS,U,2)["CURRENT" S BGPTU=1,BGPTOBD=$P(BGPTOBS,U,3),BGPTOBX=$P(BGPTOBS,U,2)
 .I $P(BGPTOBS,U,2)]"",'BGPTU D
 ..S X=$P(BGPTOBS,U,3)
 ..S Y=$$CPTI^BGP9DU(DFN,$$FMADD^XLFDT(X,1),$$FMADD^XLFDT(BGPBDATE,180),+$$CODEN^ICPTCOD("1034F"))
 ..I Y S BGPTU=1,BGPTOBD=$P(Y,U,2),BGPTOBX="CPT: 1034F" Q
 ..S Y=$$CPTI^BGP9DU(DFN,$$FMADD^XLFDT(X,1),$$FMADD^XLFDT(BGPBDATE,180),+$$CODEN^ICPTCOD("1035F"))
 ..I Y S BGPTU=1,BGPTOBD=$P(Y,U,2),BGPTOBX="CPT: 1035F"
 ;expand the time range
 S BGPBDX=$$DOB^AUPNPAT(DFN) D GETALLHF
 ;
 I BGPTOBS="" D  G SET
 .S Y=$$LASTDX^BGP9UTL1(DFN,"BGP TOBACCO USER DXS",$$FMADD^XLFDT(BGPBDATE,-180),$$FMADD^XLFDT(BGPBDATE,180))
 .I Y S BGPTU=1,BGPTOBD=$P(Y,U,3),BGPTOBX=$P(Y,U,2) Q
 .S Y=$$CPT^BGP9DU(DFN,$$FMADD^XLFDT(BGPBDATE,-180),$$FMADD^XLFDT(BGPBDATE,180),$O(^ATXAX("B","BGP TOBACCO USER CPTS",0)),6)
 .I Y S BGPTU=1,BGPTOBD=$P(Y,U,2),BGPTOBX=$P(Y,U,3) Q
 ;
 I $P(BGPTOBS,U,2)["CURRENT" D  S:'BGPREM BGPTU=1,BGPTOBD=$P(BGPTOBS,U,3),BGPTOBX=$P(BGPTOBS,U,2) S:$P(BGPTOBS,U,2)["CESSATION" BGPTUC=1,BGPTUQ=1 G SET
 .S X=$P(BGPTOBS,U,3)
 .S Y=$$LASTDXI^BGP9UTL1(DFN,"305.13",$$FMADD^XLFDT(X,1),$$FMADD^XLFDT(BGPBDATE,180))
 .I Y S BGPREM=1 Q
 .S Y=$$LASTDXI^BGP9UTL1(DFN,"V15.82",$$FMADD^XLFDT(X,1),$$FMADD^XLFDT(BGPBDATE,180))
 .I Y S BGPREM=1 Q
 .S BGPBDX=$$FMADD^XLFDT(BGPBDATE,-180),BGPEDX=$$FMADD^XLFDT(BGPBDATE,180)
 .S T=$O(^ATXAX("B","BGP TOBACCO USER DXS",0))
 .S X=0,G="" F  S X=$O(^AUPNPROB("AC",DFN,X)) Q:X'=+X!(BGPREM)  D
 ..Q:$P(^AUPNPROB(X,0),U,12)'="A"
 ..Q:$P(^AUPNPROB(X,0),U,3)>BGPEDX
 ..Q:$P(^AUPNPROB(X,0),U,3)<BGPBDX
 ..S Y=$P(^AUPNPROB(X,0),U)
 ..Q:'$$ICD^ATXCHK(Y,T,9)
 ..S BGPREM=1
 .Q
 ;
 S X=$P(BGPTOBS,U,3)
 S Y=$$CPTI^BGP9DU(DFN,$$FMADD^XLFDT(X,1),$$FMADD^XLFDT(BGPBDATE,180),+$$CODEN^ICPTCOD("1034F"))
 I Y S BGPTU=1,BGPTOBD=$P(Y,U,2),BGPTOBX="CPT: 1034F" G SET
 S Y=$$CPTI^BGP9DU(DFN,$$FMADD^XLFDT(X,1),$$FMADD^XLFDT(BGPBDATE,180),+$$CODEN^ICPTCOD("1035F"))
 I Y S BGPTU=1,BGPTOBD=$P(Y,U,2),BGPTOBX="CPT: 1035F"
 ;
 ;BGPTU - tobacco user  BGPTUQ - quit tobacco use BGPTUC - tobacco user in cessation
SET ;
 I 'BGPTU S BGPSTOP=1 D KVARS Q  ;not in this denominator at all
 S BGPD6=1
 I BGPD6,BGPACTCL S BGPD7=1
 I BGPD7,BGPAGEB<12 S BGPD8=1
 I BGPD7,BGPAGEB>11,BGPAGEB<18 S BGPD9=1
 I BGPD7,BGPAGEB>17 S BGPD10=1
 ;get numerator stuff
 ;BGPN6=tobacco cessation counseling  bgpn7 - REFUSED counseling  
 I 'BGPTUC S BGPTC1=$$PED^BGP9D711(DFN,$$FMADD^XLFDT(BGPBDATE,-180),BGPEDATE)
 I $P(BGPTC1,U)]"" S BGPN6=1 I $P(BGPTC1,U,2)["ref" S BGPN7=1
 ;BGPN8 - quit   bgpn9-cessation
 S BGPQ=$$QUIT(DFN,$$FMADD^XLFDT(BGPTOBD,1),BGPEDATE)  ;any quit after BGPTOBD
 I BGPQ S BGPN8=1
 I BGPTUQ S BGPN8=1
 I BGPN8,BGPTUQ S BGPN9=1
 I BGPN6!(BGPN8) S BGPN10=1
 ;SET BGPVALUE
 S BGPVALUE=$S(BGPRTYPE=3:"",BGPD6:"UP",1:"")_$S(BGPD7:";AC",1:"")_" TOB USER: "_$$DATE^BGP9UTL(BGPTOBD)
 I BGPRTYPE=7 D
 .S BGPVALUE=BGPVALUE_"|||"_$S($P(BGPTC1,U):";COUNSELING: "_$$DATE^BGP9UTL($P(BGPTC1,U))_" "_$P(BGPTC1,U,2),1:"")
 .I BGPN8,BGPQ S BGPVALUE=BGPVALUE_";"_$P(BGPQ,U,2)_" "_$P(BGPQ,U,3)
 .I BGPN8,'BGPQ S BGPVALUE=BGPVALUE_";QUIT - CESSATION"
KVARS ;
 K BGPQ,X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T,BGPQ,BGPALLED,BGPTQ,BGPTC
 K BGPTC1,BGPTOB,BGPSDX,BGP1320,BGPTOM,BGPTOBS,BGPTUHF,BGPTU,BGPTUC,BGPTUQ,BGPTOBD,BGPREM
 Q
