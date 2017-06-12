BGP6D89 ; IHS/CMI/LAB - measure C 03 Jul 2010 7:05 AM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
VS ;EP
 S (BGPN1,BGPN2,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPD10,BGPD11)=0
 I 'BGPACTCL S BGPSTOP=1 Q  ;not active clinical pt
 ;SET UP DENOMINATORS
 S BGPD1=1  ;all A/C
 I BGPAGEB>1,BGPAGEB<19 S BGPD2=1
 I BGPAGEB>4 S BGPD3=1
 I BGPAGEB>11,BGPAGEB<19 S BGPD4=1
 I BGPAGEB>11,BGPAGEB<76 S BGPD5=1
 I BGPSEX="F",BGPAGEB>13,BGPAGEB<47 S BGPD6=1
 I BGPSEX="F",BGPAGEB>14,BGPAGEB<45 S BGPD7=1
 I BGPAGEB>17 S BGPD8=1
 I BGPAGEB>64 S BGPD9=1
 I $$TOBUSER(DFN,BGPBDATE) S BGPD10=1
 S BGPQV=$$VISIT(DFN,BGPBDATE,BGPEDATE)
 I 'BGPQV S BGPN1=1
 S BGPURO=$$UCONLY(DFN,BGP3YE,BGPEDATE)
 I 'BGPURO S BGPN2=1  ;urgent care only visit
 S D="AC"
 I BGPD2 S D=D_",AC 2-18"
 I BGPD3 S D=D_",AC =>5"
 I BGPD4 S D=D_",AC 12-18"
 I BGPD5 S D=D_",AC 12-75"
 I BGPD6 S D=D_",FEM AC 15-40"
 I BGPD7 S D=D_",FEM AC 15-44"
 I BGPD8 S D=D_",AC =>18"
 I BGPD9 S D=D_",AC =>65"
 I BGPD10 S D=D_",TOB"
 S BGPVALUE="AC"_$S(BGPD10:",TOB",1:"")_"|||"_$S('BGPN1:"No visit in time period",1:"Visit in time period "_$$DATE^BGP6UTL(BGPQV))_" Urgent Care Only: "_$$DATE^BGP6UTL(BGPURO)
 S BGPVALUD="AC"_$S(BGPD10:",TOB",1:"")_"|||"
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 K BGPEDUC,BGPHIV
 Q
VISIT(P,BDATE,EDATE) ;
 K ^TMP($J,"A")
 NEW A,C,B,E,X,G,V
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHOR"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:$P(^AUPNVSIT(V,0),U,6)=""
 .S C=$$CLINIC^APCLV(V,"C")
 .Q:C=42
 .Q:C=51
 .Q:C=52
 .Q:C=53
 .S G=$$VD^APCLV(V)
 .Q
 Q G
TOBUSER(P,BDATE) ;EP
 NEW BGPTUSER,%,BGPTOBP,BGPSDX,BGPSCPT,F
 S BGPTUSER=""
 S BGPTOBP=$$TOBHF^BGP6D712(P,$$DOB^AUPNPAT(P),$$FMADD^XLFDT(BDATE,-1))
 S BGPSDX=$$DXU^BGP6D7(P,$$DOB^AUPNPAT(P),$$FMADD^XLFDT(BDATE,-1))
 S BGPSCPT=$$CPTSM^BGP6D7(P,$$DOB^AUPNPAT(P),$$FMADD^XLFDT(BDATE,-1))
 S %=""
 ;I BGPSDX]"",$P(BGPSDX,U)="V15.82" S %=1
 ;I BGPSDX]"",$P(BGPSDX,U)="305.13" S %=1
 S T=$O(^ATXAX("B","BGP TOBACCO PAST USE DXS",0))
 I BGPSDX]"" S I=$P(BGPSDX,U,3) I $$ICD^BGP6UTL2(I,T,9) S %=1
 S F=BGPTOBP
 D
 .I $P(F,U,1)["CURRENT"!($P(F,U,1)["CESSATION")!($P(F,U,1)="HEAVY TOBACCO SMOKER")!($P(F,U,1)="LIGHT TOBACCO SMOKER") S BGPTUSER=1 Q
 .I $P(F,U,4)["CURRENT"!($P(F,U,4)["CESSATION") S BGPTUSER=1 Q
 .I (BGPSDX]""&(%="")) S BGPTUSER=1 Q
 .I ($P(BGPSCPT,U)="1034F")!($P(BGPSCPT,U)="1035F")!($P(BGPSCPT,U)="G0376")!($P(BGPSCPT,U)="G0375")!($P(BGPSCPT,U)=99407)!($P(BGPSCPT,U)="G9276") S BGPTUSER=1 Q
 .I $P(BGPSCPT,U)=99406!($P(BGPSCPT,U)="G8455")!($P(BGPSCPT,U)="G8456")!($P(BGPSCPT,U)="G8402")!($P(BGPSCPT,U)="G8453") S BGPTUSER=1 Q
 ;S F=$P(BGPTOBP,U,1)
 ;I $P(BGPTOBP,U,1)["CURRENT"!(BGPSDX]""&(%=""))!(F["CESSATION")!($P(BGPSCPT,U)="1034F")!($P(BGPSCPT,U)="1035F")!($P(BGPSCPT,U)="G0376")!($P(BGPSCPT,U)="G0375")!($P(BGPSCPT,U)=99407) S BGPTUSER=1
 ;I $P(BGPSCPT,U)=99406!($P(BGPSCPT,U)="G8455")!($P(BGPSCPT,U)="G8456")!($P(BGPSCPT,U)="G8402")!($P(BGPSCPT,U)="G8453") S BGPTUSER=1
 Q BGPTUSER
UCONLY(P,BDATE,EDATE) ;EP - clinical user
 K ^TMP($J,"A")
 NEW A,C,B,E,X,G,V,UCC,ALV
 S (UCC,ALV)=0
 ;UCC - urgent care clinic count
 ;ALV - all visit count
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S (X,G,F,S)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(F)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:'$D(^AUPNVPRV("AD",V))
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .Q:$P(^AUPNVSIT(V,0),U,6)=""
 .S B=$$CLINIC^APCLV(V,"C")
 .Q:B=""
 .I B=80 S UCC=UCC+1 Q
 .I 'G,$D(^BGPCTRL($O(^BGPCTRL("B",2016,0)),11,"B",B)) S G=V  ;must be a primary clinic S G=V
 .I V'=G,$D(^BGPCTRL($O(^BGPCTRL("B",2016,0)),12,"B",B)) S S=1
 .I G,S S F=1
 .Q
 Q $S(F:1,1:0)
PRIMMED ;
 ;
 S (BGPD1,BGPN1)=0
 I 'BGPACTCL S BGPSTOP=1 Q  ;not active clinical pt
 I BGPAGEB<18 S BGPSTOP=1 Q  ;only 18 and older
 ;bgpd1 = TOTAL # OF PRESCRIPTIONS
 ;bgpn1 = # returned to stock
 S (BGPD1,BGPN1)=0
 NEW BGPP,IFN,D,FD,SD,FDS,R
 S SD=$$FMADD^XLFDT(BGPBDATE,-180)
 K ^TMP($J,"A")
 NEW A,B,E,Z,X,D,V,Y,G,M,T,T1
 K BGPMEDS1
 D GETMEDS^BGP6UTL2(DFN,SD,BGPEDATE,,,,,.BGPMEDS1)
 I '$D(BGPMEDS1) Q  ;
 S BGPVALUE="",BGPDX="",BGPNX=""
 ;loop through prescription file and get all chronic meds (defined by taxonomy), array by fill date
 S BGPP=0
 F  S BGPP=$O(BGPMEDS1(BGPP)) Q:BGPP=""  D
 .S M=$P(BGPMEDS1(BGPP),U,4)
 .S D=$P(^AUPNVMED(M,0),U,1)
 .S P=$S($D(^PSRX("APCC",M)):$O(^(M,0)),1:0)
 .I 'P K BGPMEDS1(BGPP) Q  ;NO PRESCRIPTION
 .I '$D(^PSRX(P,0)) K BGPMEDS1(BGPP) Q  ;NO PRESCRIPTION
 .I $P($G(^PSRX(P,"STA")),"^")=13 K BGPMEDS1(BGPP) Q  ;deleted
 .I $E($P(^PSRX(P,0),U,1))="X" K BGPMEDS1(BGPP) Q
 .;get order number and skip if not electronic
 .S O=$P($G(^PSRX(P,"OR1")),U,2)  ;order number
 .I 'O K BGPMEDS1(BGPP) Q
 .S B=$P($G(^OR(100,O,8,1,0)),U,12)
 .I B="" K BGPMEDS1(BGPP) Q  ;Q:B=""
 .I B'=8 K BGPMEDS1(BGPP) Q   ;must be electronic
 .S FD=$$VD^APCLV($P(BGPMEDS1(BGPP),U,5))
 .I FD>BGPEDATE K BGPMEDS1(BGPP) Q
 .I FD<BGPBDATE K BGPMEDS1(BGPP) Q
 .I '$$CHRONIC(D) K BGPMEDS1(BGPP) Q  ;must be from one of these taxonomies
 .;was that another V MED in previous 180 days.
 .K BGPG
 .S %=DFN_"^LAST MED `"_D_";DURING "_$$FMADD^XLFDT(FD,-180)_"-"_$$FMADD^XLFDT(FD,-1),E=$$START1^APCLDF(%,"BGPG(")
 .I $D(BGPG(1)) K BGPMEDS1(BGPP) Q  ;had one 180 prior
 .S BGPD1=BGPD1+1
 .I BGPDX]"" S BGPDX=BGPDX_"; "
 .S BGPDX=BGPDX_BGPD1_") "_$$DATE^BGP6UTL(FD)_" "_$$VAL^XBDIQ1(50,D,.01)
 .I $$UP^XLFSTR($P($G(^AUPNVMED(M,11)),U))["RETURNED TO STOCK" S BGPN1=BGPN1+1 D  Q
 ..I BGPNX]"" S BGPNX=BGPNX_"; "
 ..S BGPNX=BGPNX_BGPD1_") "_$$DATE^BGP6UTL(FD)_" "_$$VAL^XBDIQ1(50,D,.01)_"-RTS"
 S BGPVALUE="AC "_BGPDX_"|||"_BGPNX
 K BGPMEDS1
 Q
NDC(A,B) ;
 ;a is drug ien
 ;b is taxonomy ien
 NEW BGPNDC
 S BGPNDC=$P($G(^PSDRUG(A,2)),U,4)
 I BGPNDC]"",B,$D(^ATXAX(B,21,"B",BGPNDC)) Q 1
 Q 0
CHRONIC(D) ;
 I '$G(D) Q 0
 NEW TM,TN
 S TM=$O(^ATXAX("B","BGP PQA ASTHMA INHALE STER MED",0))
 S TN=$O(^ATXAX("B","BGP PQA ASTHMA INHALE STER NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 S TM=$O(^ATXAX("B","BGP PQA COPD MEDS",0))
 S TN=$O(^ATXAX("B","BGP PQA COPD NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 S TM=$O(^ATXAX("B","BGP PQA DIABETES ALL CLASS",0))
 S TN=$O(^ATXAX("B","BGP PQA DIABETES ALL CLASS NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 S TM=$O(^ATXAX("B","BGP PQA RASA MEDS",0))
 S TN=$O(^ATXAX("B","BGP PQA RASA NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 S TM=$O(^ATXAX("B","BGP PQA STATIN MEDS",0))
 S TN=$O(^ATXAX("B","BGP PQA STATIN NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 Q 0
