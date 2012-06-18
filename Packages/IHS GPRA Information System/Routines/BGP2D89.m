BGP2D89 ; IHS/CMI/LAB - measure C 03 Jul 2010 7:05 AM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
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
 I BGPSEX="F",BGPAGEB>14,BGPAGEB<41 S BGPD6=1
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
 I BGPD10 S D=D_",AC TOB USER"
 S BGPVALUE="AC|||"_$S('BGPN1:"No visit in time period",1:"Visit in time period "_$$DATE^BGP2UTL(BGPQV))_" Urgent Care Only: "_$$DATE^BGP2UTL(BGPURO)
 S BGPVALUD="AC|||"
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
 S BGPTOBP=$$TOBHF^BGP2D712(P,$$DOB^AUPNPAT(P),$$FMADD^XLFDT(BDATE,-1))
 S BGPSDX=$$DX^BGP2D7(P,$$DOB^AUPNPAT(P),$$FMADD^XLFDT(BDATE,-1))
 S BGPSCPT=$$CPTSM^BGP2D7(P,$$DOB^AUPNPAT(P),$$FMADD^XLFDT(BDATE,-1))
 S %=""
 I BGPSDX]"",$P(BGPSDX,U)="V15.82" S %=1
 I BGPSDX]"",$P(BGPSDX,U)="305.13" S %=1
 S F=BGPTOBP
 D
 .I $P(F,U,1)["CURRENT"!($P(F,U,1)["CESSATION") S BGPTUSER=1 Q
 .I $P(F,U,4)["CURRENT"!($P(F,U,4)["CESSATION") S BGPTUSER=1 Q
 .I (BGPSDX]""&(%="")) S BGPTUSER=1 Q
 .I ($P(BGPSCPT,U)="1034F")!($P(BGPSCPT,U)="1035F")!($P(BGPSCPT,U)="G0376")!($P(BGPSCPT,U)="G0375")!($P(BGPSCPT,U)=99407) S BGPTUSER=1 Q
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
 .I 'G,$D(^BGPCTRL($O(^BGPCTRL("B",2012,0)),11,"B",B)) S G=V  ;must be a primary clinic S G=V
 .I V'=G,$D(^BGPCTRL($O(^BGPCTRL("B",2012,0)),12,"B",B)) S S=1
 .I G,S S F=1
 .Q
 Q $S(F:1,1:0)
