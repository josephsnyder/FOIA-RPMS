BGP7UTL2 ; IHS/CMI/LAB - UTILITIES ; 29 Aug 2016  8:24 AM
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
CODEN(X,F) ;EP - GET CODE
 I $D(^ICDS(0)) Q $$CODEN^ICDEX(X,F)
 Q $$CODEN^ICDCODE(X,F)
 ;
ICD(VAL,TAXIEN,TYP) ;EP - CHECK TAX
 ;add 3rd param with pass type
 ;WILL ALWAYS BE ATXAX, NOT LAB
 I $G(VAL)="" Q 0
 NEW TAXNM
 S TAXNM=$P($G(^ATXAX(TAXIEN,0)),U,1)
 I TAXNM="" Q $$ICD^ATXCHK(VAL,TAXIEN,TYP)
 I '$D(^XTMP("BGP15TAX",$J,TAXNM)) Q $$ICD^ATXCHK(VAL,TAXIEN,TYP)
 I $D(^XTMP("BGP15TAX",$J,TAXNM,VAL)) Q 1
 Q 0
 ;
 ;
ICDDX(C,D,I) ;EP - GET CODE
 I $D(^ICDS(0)) Q $$ICDDX^ICDEX(C,$G(D))
 Q $$ICDDX^ICDCODE(C,$G(D),$G(I))
 ;
ICDOP(C,D,I) ;EP - GET CODE
 I $G(I)="" S I="I"
 I $D(^ICDS(0)) Q $$ICDOP^ICDEX(C,$G(D),,I)
 Q $$ICDOP^ICDCODE(C,$G(D))
 ;
VSTD(C,D) ;EP
 I $D(^ICDS(0)) Q $$VSTD^ICDEX(C,$G(D))
 Q $$VSTD^ICDCODE(C,$G(D))
 ;
VSTP(C,D) ;EP
 I $D(^ICDS(0)) Q $$VSTP^ICDEX(C,$G(D))
 Q $$VSTP^ICDCODE(C,$G(D))
 ;
ICDD(C,A,D) ;EP
 I $D(^ICDS(0)) Q $$ICDD^ICDEX(C,A,$G(D))
 Q $$ICDD^ICDCODE(C,A,$G(D))
EDD(P,BDATE,EDATE) ;EP - find EDD
 NEW EDD,X,Y,Z,D,W,D,A
 S EDD=""
 ;first check bjpn prenatal file
 S Z=$$FMADD^XLFDT(EDATE,243)
 S X=0 F  S X=$O(^BJPNPL("D",P,X)) Q:X'=+X  D
 .S Y=$$GET1^DIQ(90680.01,X,.09,"I")
 .Q:Y<BDATE
 .Q:Y>Z
 .I Y>EDD S EDD=Y
 I EDD Q EDD
 ;NEXT CHECK EDD IN 9000017
 S Y=$P($G(^AUPNREP(P,13)),U,11)
 I Y>EDD S EDD=Y
 I EDD Q EDD
 ;FIND LAST RECORDED EGA VALUE
 S Y=$$LASTITEM^BGP7DU(P,BDATE,EDATE,"MEASUREMENT","EGA")
 I Y D  I EDD Q EDD
 .S Z=$P(Y,U,2),R=$P(Y,U,4)
 .S W=$P(R," ",1)
 .S D=+$P($P(R," ",2),"/")
 .S A=(W*7)+D
 .S A=280-A
 .S EDD=$$FMADD^XLFDT(Z,A)
 .I EDD'>BDATE S EDD=""
 Q EDD
 ;
GETDIR() ;EP - get default directory
 NEW D
 S D=""
 S D=$P($G(^BGPSITE(DUZ(2),0)),U,14)
 I D]"" Q D
 S D=$P($G(^AUTTSITE(1,1)),"^",2)
 I D]"" Q D
 S D=$P($G(^XTV(8989.3,1,"DEV")),"^",1)
 I D]"" Q D
 I $P(^AUTTSITE(1,0),U,21)=1 S D="/usr/spool/uucppublic/"
 Q D
GETDEDIR() ;EP - get default directory
 NEW D
 S D=""
 S D=$P($G(^AUTTSITE(1,1)),"^",2)
 I D]"" Q D
 S D=$P($G(^XTV(8989.3,1,"DEV")),"^",1)
 I D]"" Q D
 I $P(^AUTTSITE(1,0),U,21)=1 S D="/usr/spool/uucppublic/"
 Q D
DIRCHK ;EP - CALLED FROM INPUT TX ON SITE PARAMETER
 NEW BGPX,BGPL,BGPHOLDX
 S BGPHOLDX=X
 S BGPX=$$LIST^%ZISH(X,"*.*",.BGPL)
 I BGPX D EN^DDIOL("Not a valid directory!") K X,BGPX,BGPY Q
 S X=BGPHOLDX
 K BGPL,BGPX
 Q
 ;
GETMEDS(P,BGPMBD,BGPMED,TAXM,TAXN,TAXC,BGPDNAME,BGPZ) ;EP
 S TAXM=$G(TAXM)
 S TAXN=$G(TAXN)
 S TAXC=$G(TAXC)
 K ^TMP($J,"MEDS"),BGPZ
 S BGPDNAME=$G(BGPDNAME)
 NEW BGPC1,BGPINED,BGPINBD,BGPMIEN,BGPD,X,Y,T,T1,D,G
 S BGPC1=0 K BGPZ
 S BGPINED=(9999999-BGPMED)-1,BGPINBD=(9999999-BGPMBD)
 F  S BGPINED=$O(^AUPNVMED("AA",P,BGPINED)) Q:BGPINED=""!(BGPINED>BGPINBD)  D
 .S BGPMIEN=0 F  S BGPMIEN=$O(^AUPNVMED("AA",P,BGPINED,BGPMIEN)) Q:BGPMIEN'=+BGPMIEN  D
 ..Q:'$D(^AUPNVMED(BGPMIEN,0))
 ..S BGPD=$P(^AUPNVMED(BGPMIEN,0),U)
 ..Q:BGPD=""
 ..Q:'$D(^PSDRUG(BGPD,0))
 ..S BGPC1=BGPC1+1
 ..S ^TMP($J,"MEDS","ORDER",(9999999-BGPINED),BGPC1)=(9999999-BGPINED)_U_$P(^PSDRUG(BGPD,0),U)_U_$P(^PSDRUG(BGPD,0),U)_U_BGPMIEN_U_$P(^AUPNVMED(BGPMIEN,0),U,3)
 ;reorder
 S BGPC1=0,X=0
 F  S X=$O(^TMP($J,"MEDS","ORDER",X)) Q:X'=+X  D
 .S Y=0 F  S Y=$O(^TMP($J,"MEDS","ORDER",X,Y)) Q:Y'=+Y  D
 ..S BGPC1=BGPC1+1
 ..S ^TMP($J,"MEDS",BGPC1)=^TMP($J,"MEDS","ORDER",X,Y)
 K ^TMP($J,"MEDS","ORDER")
 S T="" I TAXM]"" S T=$O(^ATXAX("B",TAXM,0)) I T="" W BGPBOMB
 S T1="" I TAXN]"" S T1=$O(^ATXAX("B",TAXN,0)) I T1="" W BGPBOMB
 S T2="" I TAXC]"" S T2=$O(^ATXAX("B",TAXC,0))
 S BGPC1=0,X=0 F  S X=$O(^TMP($J,"MEDS",X)) Q:X'=+X  S Y=+$P(^TMP($J,"MEDS",X),U,4) D
 .Q:'$D(^AUPNVMED(Y,0))
 .S G=0
 .S D=$P(^AUPNVMED(Y,0),U)
 .S C=$P($G(^PSDRUG(D,0)),U,2)
 .I C]"",T2,$D(^ATXAX(T2,21,"B",C)) S G=1
 .S C=$P($G(^PSDRUG(D,2)),U,4)
 .I C]"",T1,$D(^ATXAX(T1,21,"B",C)) S G=1
 .I T,$D(^ATXAX(T,21,"B",D)) S G=1
 .I BGPDNAME]"",$P(^PSDRUG(D,0),U)[BGPDNAME S G=1
 .I TAXM="",TAXN="",TAXC="" S G=1  ;WANTS ALL MEDS
 .I G=1 S BGPC1=BGPC1+1,BGPZ(BGPC1)=^TMP($J,"MEDS",X)
 .Q
 K ^TMP($J,"MEDS")
 K BGPINED,BGPINBD,BGPMBD,BGPMED,BGPD,BGPC1,BGPDNAME
 Q
RCIS(P,BDATE,EDATE,ICDC,CPTC) ;EP
 I '$G(P) Q ""
 I $G(BDATE)="" S BDATE=$$DOB^AUPNPAT(P)
 I $G(EDATE)="" S EDATE=DT
 S ICDC=$G(ICDC)
 S CPTC=$G(CPTC)
 ;find a referral in date range BDATE to EDATE
 NEW ICDCAT,CPTCAT,X,Y,D,A,B,G
 F X=1:1 S Y=$P(ICDC,";",X) Q:Y=""  S Y=$O(^BMCTDXC("B",Y,0)) I Y S ICDCAT(Y)=""
 F X=1:1 S Y=$P(CPTC,";",X) Q:Y=""  S Y=$O(^BMCTSVC("B",Y,0)) I Y S CPTCAT(Y)=""
 S X=0,G="" F  S X=$O(^BMCREF("D",P,X)) Q:X'=+X!(G)  D
 .Q:'$D(^BMCREF(X,0))  ;bad xref
 .S D=$P(^BMCREF(X,0),U,1),D=$P(D,".")
 .Q:D<BDATE  ;before date range
 .Q:D>EDATE  ;after end date
 .S Y=$P(^BMCREF(X,0),U,12)
 .I $D(ICDCAT),Y="" Q  ;want certain categories and this one blank
 .I $D(ICDCAT),'$D(ICDCAT(Y)) Q  ;want certain categories and this one doesn't match
 .S Y=$P(^BMCREF(X,0),U,13)
 .I $D(CPTCAT),Y="" Q  ;want certain categories and this one blank
 .I $D(CPTCAT),'$D(CPTCAT(Y)) Q  ;want certain categories and this one doesn't match
 .S G=X
 I 'G Q ""
 S X="" F Y=.07,.08,.09 S A=$$VAL^XBDIQ1(90001,G,Y) I A]"" S:X]"" X=X_"; "
 Q 1_"^"_$P($P(^BMCREF(G,0),U),".")_"^"_$$DATE^BGP7UTL($P($P(^BMCREF(G,0),U),"."))_"^"_"RCIS referral"_"^"_X_"^"_"90001"_"^"_G
 ;
CHKDST() ;EP - check the demo patient search template to see if it is complete
 ;return a 1 if template is okay
 ;return a 0^message if it isn't
 ;if it isn't the caller should ask the user if they want to continue
 NEW X
 S X=$O(^DIBT("B","RPMS DEMO PATIENT NAMES",0))
 I 'X Q "0^RPMS DEMO PATIENT NAMES Search Template does not exist"
 I '$O(^DIBT(X,1,0)) Q "0^RPMS DEMO PATIENT NAMES Search Template has no entries"
 Q 1
DSTCONT() ;EP - called to ask user if they want to continue
 NEW DIR,X,Y,DIRUT
 W !!,"Your ",$P(BGPDPST,U,2),".",!,"If you have 'DEMO' patients whose names begin with something"
 W !,"other than 'DEMO,PATIENT' they will not be excluded from this report"
 W !,"unless you update this template.",!
 S DIR(0)="Y",DIR("A")="Do you wish to continue to generate this report",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q 0
 I 'Y Q 0
 Q 1
DEMOCHK() ;EP - called to check demo patient
 NEW BGPDPST
 S BGPDPST=$$CHKDST()
 I BGPDPST Q 1  ;no action, demo template is okay
 S BGPDPST=$$DSTCONT()
 Q BGPDPST
 ;
UNFOLDTX ;EP
 K ^XTMP("BGP15TAX",$J)
 ;lets go through all the taxonomies needed here and put them in above location
 I '$D(^ICDS(0)) G SNOMED  ;icd10 isn't there so don't bother
 NEW BGPDA,BGPTAX,BGPFL,BGPTAXI,BGPVAL,BGPTYP,BGPTGT,OUT,N
 S BGPDA=0 F  S BGPDA=$O(^BGPTAXG(BGPDA)) Q:'BGPDA  D
 . S BGPTAX=$P($G(^BGPTAXG(BGPDA,0)),U)
 . S BGPFL=$P($G(^BGPTAXG(BGPDA,0)),U,2)
 . I BGPFL'="C",BGPFL'="D",BGPFL'="P" Q  ;only dx, proc, cpt for now
 . S BGPTYP=""
 . S BGPTAXI=$O(^ATXAX("B",BGPTAX,0))
 . I BGPTYP="L" D
 .. S BGPTAXI=$O(^ATXLAB("B",BGPTAX,0))
 . S BGPTGT="^XTMP("_"""BGP15TAX"""_","_$J_","_""""_BGPTAX_""""_")"
 . D BLDTAX^ATXAPI(BGPTAX,BGPTGT,BGPTAXI,BGPTYP)
 S ^XTMP("BGP15TAX",0)=$$FMADD^XLFDT(DT,30)
SNOMED ;unfold all snomed subsets
 I $T(SUBLST^BSTSAPI)="" Q  ;NO SNOMED STUFF INSTALLED
 K ^XTMP("BGPSNOMEDSUBSET",$J)
 S BGPDA=0 F  S BGPDA=$O(^BGPSNOSG(BGPDA)) Q:BGPDA'=+BGPDA  D
 .S N=$P(^BGPSNOSG(BGPDA,0),U,1)  ;subset name
 .K ^TMP($J,"SUB")
 .S OUT=$NA(^TMP($J,"SUB"))
 .S X=$$SUBLST^BSTSAPI(OUT,N)  ;
 .;BUILD INDEX
 .S C=0 F  S C=$O(^TMP($J,"SUB",C)) Q:C'=+C  S I=$P(^TMP($J,"SUB",C),U,1) I I]"" S ^XTMP("BGPSNOMEDSUBSET",$J,N,I)=^TMP($J,"SUB",C)
 .K ^TMP($J,"SUB")
 .Q
 S ^XTMP("BGPSNOMEDSUBSET",0)=$$FMADD^XLFDT(DT,30)
 Q
