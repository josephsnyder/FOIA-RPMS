BHSAST1 ;IHS/MSC/MGH - Asthma supplement continued;30-Nov-2015 10:23;DU
 ;;1.0;HEALTH SUMMARY COMPONENTS;**3,12**;March 17, 2006;Build 3
 ; IHS/CMI/LAB - ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ; Patch 12 changed to use new API for taxonomies
 ;
 ;BJPC v1.0 patch 1
S2(N) ;
 S BHCNT=BHCNT+1
 S BHTFP(BHCNT)=N
 Q
FMH(BHSPAT,BHTFP) ;EP - ASTHMA ******* FAMILY HISTORY * 9000014 *******
 ; <SETUP>
 NEW BHCNT
 S BHCNT=0
 I '$D(^AUPNFH("AC",BHSPAT)),'$D(^AUPNFHR("AC",BHSPAT)) Q  ;no family history to display
 NEW BHTFH
 K BHTFH,BHTFP
 NEW BHSDFN,C,R,S,Z,O,BHO,G
 ;IHS/MSC/MGH changed to use new API P12
 S BHSDFN=0 F  S BHSDFN=$O(^AUPNFH("AC",BHSPAT,BHSDFN)) Q:'BHSDFN  D
 .Q:'$D(^AUPNFH(BHSDFN,0))  ;bad xref
 .S C=$P(^AUPNFH(BHSDFN,0),U)
 .S G=0
 .I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP ASTHMA DXS",0)),9) S G=1
 .I $$VAL^XBDIQ1(9000014,BHSDFN,.01)="V17.5" S G=1
 .Q:'G
 .S R=$P(^AUPNFH(BHSDFN,0),U,9)
 .I R="" S R="Z",S=$$VAL^XBDIQ1(9000014,BHSDFN,.07),Z=S_" ",O=8 D  G FMH1
 ..I S="" S S="UNKNOWN",Z="UNKNOWN "
 .S S=$$VAL^XBDIQ1(9000014.1,R,.01),Z=S_" "_$P(^AUPNFHR(R,0),U,3)
 .S O=$P(^AUPNFHR(R,0),U) I O S O=$P($G(^AUTTRLSH(O,21)),U,3)
 .I 'O S O=8
FMH1 .S BHTFH(O,S,Z,R,(9999999-$$LDM(BHSDFN)),BHSDFN)=""
 NEW BHSO,BHS,BHD,BHC,BHZ,BHR,BHTD,BHSCVD,BHSICF,BHS,BHDC
 S BHSCVD="S:Y]"""" Y=+Y,Y=$E(Y,4,5)_""/""_$S($E(Y,6,7):$E(Y,6,7)_""/"",1:"""")_$E(Y,2,3)"
 S BHSICF="L"
 ;$S('$D(APCHSTYP):"L",'$D(^APCHSCTL(APCHSTYP,2)):"L",$P(^(2),U,1)]"":$P(^(2),U,1),1:"L")
 S BHO=0 F  S BHO=$O(BHTFH(BHO)) Q:BHO'=+BHO  D FMH2
FMHX K BHSDFN,BHSN,BHSICD,BHSDAT,BHSNRQ,BHSICL,BHSDFN,BHTFH,BHS,BHZ,BHR,BHD
 Q
LDM(I) ;get last date modified of Family History or relation
 I $G(I)="" Q ""
 I '$D(^AUPNFH(I,0)) Q ""
 NEW J,D,E
 S D=""
 S J=$P(^AUPNFH(I,0),U,9) I J S D=$P($G(^AUPNFHR(J,0)),U,9) I D="" S D=$P($G(^AUPNFHR(J,0)),U,11)
 S E=$P(^AUPNFH(I,0),U,12) I E>D S D=E
 S E=$P(^AUPNFH(I,0),U,3) I E>D S D=E
 Q D
FMH2 ;
 S BHS="",BHC=0 F  S BHS=$O(BHTFH(BHO,BHS)) Q:BHS=""  D
 .S BHZ="" F  S BHZ=$O(BHTFH(BHO,BHS,BHZ)) Q:BHZ=""  D
 ..S BHR="" F  S BHR=$O(BHTFH(BHO,BHS,BHZ,BHR)) Q:BHR=""  D
 ...S BHTD=$O(BHTFH(BHO,BHS,BHZ,BHR,0)),BHTD=(9999999-BHTD) S X=BHTD D REGDT4^GMTSU S BHTDAT=X
 ...S BHD="",BHC=0 F  S BHD=$O(BHTFH(BHO,BHS,BHZ,BHR,BHD)) Q:BHD=""  D
 ....S BHSDFN="" F  S BHSDFN=$O(BHTFH(BHO,BHS,BHZ,BHR,BHD,BHSDFN)) Q:BHSDFN=""  D FHDSP
 Q
FHDSP S BHC=BHC+1
 I BHC=1 S Y=BHTDAT,$E(Y,14)=BHZ_"  Status: "
 S BHSTAT=""
 I 'BHR D
 .S BHSTAT=$S($P(^AUPNFH(BHSDFN,0),U,6)]"":$$VAL^XBDIQ1(9000014,BHSDFN,.06),1:"None")
 I BHR S BHSTAT=$S($P($G(^AUPNFHR(BHR,0)),U,4)]"":$$VAL^XBDIQ1(9000014.1,BHR,.04),1:"None")
 I BHC=1 S Y=Y_BHSTAT D S2(Y)
 I BHR,$P(^AUPNFHR(BHR,0),U,5)]""!($P(^AUPNFHR(BHR,0),U,6)]"") D
 .I BHC=1 S Y="",$E(Y,14)="Age at Death: "_$$VAL^XBDIQ1(9000014.1,BHR,.05)_"  Cause of Death: "_$P(^AUPNFHR(BHR,0),U,6) D S2(Y)
 I BHR,$P(^AUPNFHR(BHR,0),U,7)]""!($P(^AUPNFHR(BHR,0),U,8)]"") D
 .I BHC=1 S Y="",$E(Y,14)="Multiple Birth: "_$$VAL^XBDIQ1(9000014.1,BHR,.07)_$S($P(^AUPNFHR(BHR,0),U,7)="Y":"  Multiple Birth Type: "_$$VAL^XBDIQ1(9000014.1,BHR,.08),1:"") D S2(Y) ;_"  Date Updated: "_$$VAL^XBDIQ1(9000014.1,R,.09)
 S BHSN=^AUPNFH(BHSDFN,0)
 S BHSICD=$P(BHSN,U,1)
 S BHSNRQ=$P(BHSN,U,4)
 S BHSNRQ=$S($D(^AUTNPOV(BHSNRQ)):$P(^AUTNPOV(BHSNRQ,0),U,1),1:"***** "_BHSNRQ_" *****")
 S (X,R,S,N,A,P)=""
 S BHSNRQ=BHSNRQ_" ("_$$VAL^XBDIQ1(9000014,BHSDFN,.01)_")"
 S A=$$VAL^XBDIQ1(9000014,BHSDFN,.11) I A="" S A=$$VAL^XBDIQ1(9000014,BHSDFN,.05)
 S X=BHSNRQ
 S X=X_$S(A]"":"; Age at Onset: "_A,1:"; Age at Onset: None")
 S BHSICL=14,BHSNRQ=X
 D PRTICD
 Q
 ;
PRTTXT ;EP - PUBLISHED ENTRY POINT
 ; GENERALIZED TEXT PRINTER
 S:'$D(BHSNTE) BHSNTE=""
 S BHSDLT=1,BHSILN=80-BHSICL-1
 F BHSQ=0:0 D PRTTXT1 Q:BHSTXT=""  D PRTTXT2
 K BHSNTE
 K BHSILN,BHSDLT,BHSF,BHSC,BHSTXT
 Q
PRTTXT1 ;
 S:BHSNRQ]""&(($L(BHSNRQ)+$L(BHSTXT)+2)<255) BHSTXT=$S(BHSTXT]"":BHSTXT_"; ",1:"")_BHSNRQ,BHSNRQ=""
 S:BHSNTE]""&(BHSNRQ="")&(($L(BHSNTE)+$L(BHSTXT)+2)<255) BHSTXT=BHSTXT_BHSNTE,BHSNTE=""
 Q
PRTTXT2 D GETFRAG S Y="",$E(Y,BHSICL)=BHSF D S2(Y) S BHSICL=BHSICL+BHSDLT,BHSILN=BHSILN-BHSDLT,BHSDLT=0
 Q
GETFRAG I $L(BHSTXT)<BHSILN S BHSF=BHSTXT,BHSTXT="" Q
 F BHSC=BHSILN:-1:0 Q:$E(BHSTXT,BHSC)=" "
 S:BHSC=0 BHSC=BHSILN
 S BHSF=$E(BHSTXT,1,BHSC-1),BHSTXT=$E(BHSTXT,BHSC+1,255)
 Q
 ;
PRTICD ;ENTRY POINT
 I BHSICF="N" S:BHSNRQ="" BHSNRQ="<no narrative provided>" S BHSICD=""
 S BHSTXT=""
 S:'$D(BHSNTE) BHSNTE=""
 I BHSNTE]"" S BHSNTE=" "_BHSNTE
 D PRTTXT
 Q
TXT ;EP - PUBLISHED ENTRY POINT
 ; GENERALIZED TEXT PRINTER
 S:'$D(BHSNTE) BHSNTE=""
 S BHSDLT=1,BHSILN=80-BHSICL-1
 F BHSQ=0:0 D TXT1 Q:BHSTXT=""  D TXT2
 K BHSNTE
 K BHSILN,BHSDLT,BHSF,BHSC,BHSTXT
 Q
TXT1 ;
 S:BHSNRQ]""&(($L(BHSNRQ)+$L(BHSTXT)+2)<255) BHSTXT=$S(BHSTXT]"":BHSTXT_"; ",1:"")_BHSNRQ,BHSNRQ=""
 S:BHSNTE]""&(BHSNRQ="")&(($L(BHSNTE)+$L(BHSTXT)+2)<255) BHSTXT=BHSTXT_BHSNTE,BHSNTE=""
 Q
TXT2 D FRAG S Y="",$E(Y,BHSICL)=BHSF D S1(Y) S BHSICL=BHSICL+BHSDLT,BHSILN=BHSILN-BHSDLT,BHSDLT=0
 Q
FRAG F BHSC=BHSILN:-1:0 Q:$E(BHSTXT,BHSC)=" "
 S:BHSC=0 BHSC=BHSILN
 S BHSF=$E(BHSTXT,1,BHSC-1),BHSTXT=$E(BHSTXT,BHSC+1,255)
 Q
 ;
ICD ;EP -  ENTRY POINT print text
 NEW C
 K Z
 S C=0
 S:BHSNRQ="" BHSNRQ="<no narrative provided>" S BHSICD=""
 S BHSTXT=""
 S:'$D(BHSNTE) BHSNTE=""
 I BHSNTE]"" S BHSNTE=" "_BHSNTE
 D TXT
 Q
S1(Y) ;
 S C=C+1
 S Z(C)=Y
 Q
 ;
N ;EP - called from APCHSAST
 ;
RELMEDS ;
 K BHL,BHREL,BHCONT
 D LAST1YRR
 S X="Number of Reliever Fills in past 6 months:  "_$S($G(BHREL):BHREL,1:0) D S^BHSAST(X,1)
 D LAST1YRC
 S X="Number of Controller Fills in past 6 months:  "_$S($G(BHCONT):BHCONT,1:0) D S^BHSAST(X,1)
 ;
 S X="",$E(X,3)="----------RELIEVER MEDICATIONS (FILLED IN THE PAST 6 MONTHS---------" D S^BHSAST(X,1)
 I '$D(BHREL) S X="<< No Reliever Medications found. >>" D S^BHSAST(X,1) G CONTMEDS
 K BHL
 M BHL=BHREL
 D DISPMEDS
CONTMEDS ;
 S X="",$E(X,3)="----------CONTROLLER MEDICATIONS (FILLED IN THE PAST 6 MONTHS---------" D S^BHSAST(X,1)
 I '$D(BHCONT) S X="<< No Controller Medications found. >>" D S^BHSAST(X,1) G DISPEDUC
 K BHL
 M BHL=BHCONT
 D DISPMEDS
DISPEDUC ;
 K BHEDUC D EDUC(DFN,.BHEDUC)
 I $D(BHEDUC) D
 .S X="Last of each ASTHMA Patient Education done:" D S^BHSAST(X,1)
 .S X="    TOPIC",$E(X,44)="LEVEL OF UNDERSTANDING",$E(X,68)="DATE" D S^BHSAST(X)
 .S X="",$P(X,"-",75)="" D S^BHSAST(X)
 .S N="" F  S N=$O(BHEDUC(N)) Q:N=""  S X=$E(N,1,42),$E(X,44)=$E($P(BHEDUC(N),U,2),1,15),$E(X,65)=$$FMTE^XLFDT($P(BHEDUC(N),U,1)) D S^BHSAST(X) D
 ..I $P(BHEDUC(N),U,3)]"" S Y=" GOAL CODE: "_$P(BHEDUC(N),U,3) D S^BHSAST(Y)
 ..I $P(BHEDUC(N),U,4)]"" S Y=" GOAL COMMENT: "_$P(BHEDUC(N),U,4) D S^BHSAST(Y)
COMN ;if comments/notes in register print them
 I $O(^BATREG(DFN,11,0)) D
 .S X="",$E(X,3)="Comments/Notes from Register:" D S^BHSAST(X,1)
 .K BHAR D ENP^XBDIQ1(90181.01,DFN,1100,"BHAR(","E")
 .S F=0 F  S F=$O(BHAR(1100,F)) Q:F'=+F  S X="",$E(X,5)=BHAR(1100,F) D S^BHSAST(X)
N1 ;
 S X="" D S^BHSAST(X,1)
 K BHAR,BHSIG,BHSP,BHSSGY
 Q
 ;
DISPMEDS ;
 S D=0 F  S D=$O(BHL(D)) Q:D'=+D  D
 .S E=0 F  S E=$O(BHL(D,E)) Q:E'=+E  S N=^AUPNVMED(E,0) D
 ..S BHD=$$FMTE^XLFDT($P(^AUPNVSIT($P(N,U,3),0),U),"5D")
 ..S BHDC=$P(N,U,8),BHDYS=$P(N,U,7),BHMFX=$S($P(N,U,4)="":+N,1:$P(N,U,4)) S:BHDYS="" BHDYS=30 S BHRX=$S($D(^PSRX("APCC",E)):$O(^(E,0)),1:0)
 ..S BHCRN=$S(+BHRX:$D(^PS(55,DFN,"P","CP",BHRX)),1:0)
 ..S BHQTY=$P(N,U,6),BHSIG=$P(N,U,5)
 ..S BHDTM=$P($P(^AUPNVSIT($P(N,U,3),0),U),"."),BHEXP=""
 ..S X=$$FMDIFF^XLFDT(DT,BHDTM)
 ..I X>BHDYS S Y=$$FMADD^XLFDT(BHDTM,BHDYS) S BHEXP="-- Ran out "_$$FMTE^XLFDT(Y,"2D")
 ..S BHMED=$S($P(N,U,4)="":$P(^PSDRUG(BHMFX,0),U),1:$P(N,U,4))
 ..I BHDC S Y=$$FMTE^XLFDT(BHDC) S BHEXP="-- D/C "_Y
 ..S BHORTS=$G(^AUPNVMED(E,11))
 ..I BHORTS["RETURNED TO STOCK",BHDC S BHEXP="--RTS "_Y
 ..D SIG S BHSIG=BHSSGY
 ..D REF I BHREF S BHSIG=BHSIG_" "_BHREF_$S(BHREF=1:" refill",1:" refills")_" left."
 ..S X=BHD,$E(X,12)=$S(BHCRN:"(C)",1:""),$E(X,16)=BHMED_" #"_BHQTY_" ("_BHDYS_" days) "_BHEXP D S^BHSAST(X)
 ..;;S X="",$E(X,17)=$E(APCHSIG,1,62) D S^APCHSAST(X)
 ..;I $L(APCHSIG)>62 S X="",$E(X,17)=$E(APCHSIG,63,999) D S^APCHSAST(X)
 ..K ^UTILITY($J,"W") S X=BHSIG,DIWL=0,DIWR=(IOM-19) D ^DIWP
 ..S X="",$E(X,17)=$S($L($G(^UTILITY($J,"W",0,1,0)))>1:$G(^UTILITY($J,"W",0,1,0)),$L($G(^UTILITY($J,"W",0,1,0)))=1:"No directions on file",1:" ") D S^BHSAST(X)
 ..I $G(^UTILITY($J,"W",0))>1 F F=2:1:$G(^UTILITY($J,"W",0)) S X="",$E(X,17)=$G(^UTILITY($J,"W",0,F,0)) D S^BHSAST(X)
 ..K ^UTILITY($J,"W")
 ..Q
 .Q
 Q
 ;
SIG ;CONSTRUCT THE FULL TEXT FROM THE ENCODED SIG
 S BHSSGY="" F BHSP=1:1:$L(BHSIG," ") S X=$P(BHSIG," ",BHSP) I X]"" D
 . S Y=$O(^PS(51,"B",X,0)) I Y>0 S X=$P(^PS(51,Y,0),"^",2) I $D(^(9)) S Y=$P(BHSIG," ",BHSP-1),Y=$E(Y,$L(Y)) S:Y>1 X=$P(^(9),"^",1)
 . S BHSSGY=BHSSGY_X_" "
 Q
 ;
REF ;DETERMINE THE NUMBER OF REFILLS REMAINING
 I 'BHRX S BHREF=0 Q
 S BHRFL=$P(^PSRX(BHRX,0),U,9) S BHREF=0 F  S BHREF=$O(^PSRX(BHRX,1,BHREF)) Q:'BHREF  S BHRFL=BHRFL-1
 S BHREF=BHRFL
 Q
 ;
LAST1YRR ;
 NEW T,E,D,Y,M,G,C,N
 S BHREL=0
 S T(1)=$O(^ATXAX("B","BAT ASTHMA SHRT ACT RELV MEDS",0))
 S T(2)=$O(^ATXAX("B","BAT ASTHMA SHRT ACT RELV NDC",0))
 S T(3)=$O(^ATXAX("B","BAT ASTHMA SHRT ACT INHLR MEDS",0))
 S T(4)=$O(^ATXAX("B","BAT ASTHMA SHRT ACT INHLR NDC",0))
 S T(5)=$O(^ATXAX("B","BGP RA GLUCOCORTIOCOIDS MEDS",0))
 S T(6)=$O(^ATXAX("B","BGP RA GLUCOCORTIOCOIDS CLASS",0))
 S E=9999999-$$FMADD^XLFDT(DT,-183)
 S D=0 F  S D=$O(^AUPNVMED("AA",DFN,D)) Q:D'=+D!(D>E)  D
 .S M=0 F  S M=$O(^AUPNVMED("AA",DFN,D,M)) Q:M'=+M  D
 ..Q:'$D(^AUPNVMED(M,0))
 ..S Y=$P(^AUPNVMED(M,0),U)
 ..Q:'Y
 ..I T(1),$D(^ATXAX(T(1),21,"B",Y)) D SR Q
 ..I T(3),$D(^ATXAX(T(3),21,"B",Y)) D SR Q
 ..I T(5),$D(^ATXAX(T(5),21,"B",Y)) D SR Q
 ..S N=$P($G(^PSDRUG(Y,2)),U,4)
 ..Q:N=""
 ..I N]"",T(2),$D(^ATXAX(T(2),21,"B",N)) D SR Q
 ..I N]"",T(4),$D(^ATXAX(T(4),21,"B",N)) D SR Q
 ..S C=$P(^PSDRUG(Y,0),U,2)
 ..I C,T(6),$D(^ATXAX(T(6),21,"B",C)) D SR Q
 .Q
 Q
SR ;
 S BHREL(D,M)="",BHREL=BHREL+1
 Q
 ;
LAST1YRC ;
 NEW T,E,D,Y,M,G,C,N
 S BHCONT=0
 S T(1)=$O(^ATXAX("B","BAT ASTHMA CONTROLLER MEDS",0))
 S T(2)=$O(^ATXAX("B","BAT ASTHMA CONTROLLER NDC",0))
 S T(3)=$O(^ATXAX("B","BAT ASTHMA INHALED STEROIDS",0))
 S T(4)=$O(^ATXAX("B","BAT ASTHMA INHLD STEROIDS NDC",0))
 S T(5)=$O(^ATXAX("B","BAT ASTHMA LEUKOTRIENE MEDS",0))
 S T(6)=$O(^ATXAX("B","BAT ASTHMA LEUKOTRIENE NDC",0))
 S E=9999999-$$FMADD^XLFDT(DT,-183)
 S D=0 F  S D=$O(^AUPNVMED("AA",DFN,D)) Q:D'=+D!(D>E)  D
 .S M=0 F  S M=$O(^AUPNVMED("AA",DFN,D,M)) Q:M'=+M  D
 ..Q:'$D(^AUPNVMED(M,0))
 ..S Y=$P(^AUPNVMED(M,0),U)
 ..Q:'Y
 ..I T(1),$D(^ATXAX(T(1),21,"B",Y)) D SC Q
 ..I T(3),$D(^ATXAX(T(3),21,"B",Y)) D SC Q
 ..I T(5),$D(^ATXAX(T(5),21,"B",Y)) D SC Q
 ..S N=$P($G(^PSDRUG(Y,2)),U,4)
 ..Q:N=""
 ..I T(2),$D(^ATXAX(T(2),21,"B",N)) D SC Q
 ..I T(4),$D(^ATXAX(T(4),21,"B",N)) D SC Q
 ..I T(6),$D(^ATXAX(T(6),21,"B",N)) D SC Q
 .Q
 Q
SC ;
 S BHCONT(D,M)="",BHCONT=BHCONT+1
 Q
 ;
EDUC(P,DATA) ;EP pass back array of all asthma educ topics
 ;any topic that begins with ASM or 493
 K DATA
 I '$G(P) Q
 NEW BHE,X,E,%,G,A,N,D,I
 K ^TMP($J,"A")
 S A="^TMP($J,""A"","
 S X=P_"^ALL EDUC;" S E=$$START1^APCLDF(X,A)
 I '$D(^TMP($J,"A",1)) Q
 S %=0 F  S %=$O(^TMP($J,"A",%)) Q:%'=+%  D
 .S D=$P(^TMP($J,"A",%),U,1)
 .S I=+$P(^TMP($J,"A",%),U,4)
 .S N=$P(^AUPNVPED(I,0),U)
 .Q:'N
 .S N=$P($G(^AUTTEDT(N,0)),U,2)
 .I $P(N,"-")="ASM"!($P(N,"-")="493")!($P(N,"-")="PL")!(N="M-MDI")!(N="M-NEB") D
 ..S BHE($P(^TMP($J,"A",%),U,2),9999999-D)=$$VAL^XBDIQ1(9000010.16,+$P(^TMP($J,"A",%),U,4),.06)_U_$$VAL^XBDIQ1(9000010.16,+$P(^TMP($J,"A",%),U,4),.13)_U_$$VAL^XBDIQ1(9000010.16,+$P(^TMP($J,"A",%),U,4),.14)
 S N="" F  S N=$O(BHE(N)) Q:N=""  S DATA(N)=(9999999-$O(BHE(N,0)))_U_BHE(N,$O(BHE(N,0)))
 K BHE,^TMP($J,"A")
 Q
 ;
