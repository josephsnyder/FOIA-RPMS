BGP6D714 ; IHS/CMI/LAB - measure 6 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
PREG ;EP
 NEW B,E,A,CNT,BGPD,BGPG,X,Y,BGPDX,C,D,G,T,%,CTR,VIEN,DXT,PXT,CPTT,BGPV,H
 I '$G(FORM) S FORM=""
 I $G(CPBD)="" S CPBD=BDATE
 I $G(CPED)="" S CPED=EDATE
 S A=""
 I $P($G(^AUPNREP(P,11)),U,1)="Y" D  I A S BGPD=B G MA
 .S B=$P($G(^AUPNREP(P,11)),U,2) Q:B=""
 .Q:B<CPBD
 .Q:B>CPED
 .S A=1
 .Q
 S BGPD=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BGPV")
 I '$D(BGPV) G PROB
 S B=0,CNT=0,BGPD=""  ;if there is one before time frame set this to 1
 S NORXCHR=$G(NORXCHR)
 S NORX=$G(NORX)
 K BGPG
 S DXT=$O(^ATXAX("B","BGP PREGNANCY DIAGNOSES 2",0))
 S PXT=$O(^ATXAX("B","BGP PREGNANCY ICD PROCEDURES",0))
 S CPTT=$O(^ATXAX("B","BGP PREGNANCY CPT CODES",0))
 ;CHECK DX, PROCS, CPTS for 2 separate visits
 S B=0,CTR=0 F  S CTR=$O(BGPV(CTR)) Q:CTR'=+CTR  D
 .;get visit into VIEN
 .S VIEN=$P(BGPV(CTR),U,5)
 .S D=$$VD^APCLV(VIEN)
 .S C=$$CLINIC^APCLV(VIEN,"C")
 .I NORXCHR,C=39 Q
 .I NORX,C=39 Q
 .S C=$$PRIMPROV^APCLV(VIEN,"D")
 .I NORXCHR,C=53 Q  ;no chr as primary provider
 .;now check for dx
 .S Y=0,H="" F  S Y=$O(^AUPNVPOV("AD",VIEN,Y)) Q:Y'=+Y  D
 ..S %=+^AUPNVPOV(Y,0)
 ..I $$ICD^BGP6UTL2(%,DXT,9) S BGPDX(D)="",CNT=CNT+1,H=1 I D>$$FMADD^XLFDT(EDATE,-365) S B=1
 .Q:H
 .;NOW GO THROUGH CPTS
 .S Y=0,H="" F  S Y=$O(^AUPNVCPT("AD",VIEN,Y)) Q:Y'=+Y  D
 ..S %=+^AUPNVCPT(Y,0)
 ..I $$ICD^BGP6UTL2(%,CPTT,1) I '$D(BGPDX(D)) S BGPDX(D)="",CNT=CNT+1,H=1 I D>$$FMADD^XLFDT(EDATE,-365) S B=1
 .Q:H
 .;NOW PROCEDURES
 .S Y=0,H="" F  S Y=$O(^AUPNVPRC("AD",VIEN,Y)) Q:Y'=+Y  D
 ..S %=+^AUPNVPRC(Y,0)
 ..I $$ICD^BGP6UTL2(%,PXT,0) I '$D(BGPDX(D)) S BGPDX(D)="",CNT=CNT+1,H=1 I D>$$FMADD^XLFDT(EDATE,-365) S B=1
 .Q:H
 .Q
 I CNT>1,B D  G MA
 .;SET BGPD TO SECOND VISIT DATE
 .S X=0,C=0 F  S X=$O(BGPDX(X)) Q:X'=+X!(C>1)  S C=C+1 I C=2 S BGPD=X
 ;
PROB ;
 I '$G(B) Q ""  ;no pregnancy visit during time period  ;-Lori fix in 09
 S T=$O(^ATXAX("B","BGP PREGNANCY DIAGNOSES 2",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BGP6UTL2(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8)
 .Q
 I G=0,BGPD="" Q 0
 S BGPD=G
MA ;now check for abortion or miscarriage
 K BGPG S Y="BGPG(" S X=P_"^LAST DX [BGP MISCARRIAGE/ABORTION DXS;DURING "_$$FMTE^XLFDT(BGPD)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 0  ;HAD MIS/AB
 S BGPG=$$LASTPRC^BGP6UTL1(P,"BGP ABORTION PROCEDURES",BGPD,EDATE)
 I BGPG Q 0
 S T=$O(^ATXAX("B","BGP MISCARRIAGE/ABORTION DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,8)<BGPD
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BGP6UTL2(Y,T,9)
 .S G=1
 .Q
 I G Q 0
 ;now check CPTs for Abortion and Miscarriage
 S T=$O(^ATXAX("B","BGP CPT ABORTION",0))
 S %=$$CPT^BGP6DU(P,BGPD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT MISCARRIAGE",0))
 S %=$$CPT^BGP6DU(P,BGPD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT ABORTION",0))
 S %=$$TRAN^BGP6DU(P,BGPD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT MISCARRIAGE",0))
 S %=$$TRAN^BGP6DU(P,BGPD,EDATE,T,3)
 I %]"" Q 0
 I FORM="" Q 1
 Q 1_U_$$DATE^BGP6UTL(BGPD)
