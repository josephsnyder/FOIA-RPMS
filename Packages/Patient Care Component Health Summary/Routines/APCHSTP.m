APCHSTP ; IHS/CMI/LAB -- CONTINUATION OF ROUTINES ;
 ;;2.0;IHS PCC SUITE;**2,7,15,16**;MAY 14, 2009;Build 9
 ;IHS/CMI/LAB - uncommented age limit on pap smear
 ; 
 ; 
GETTPT(APCHI,C,R,EVENT,EVENT1) ;EP
 I 'APCHI K R Q
 S EVENT=$G(EVENT)
 S EVENT1=$G(EVENT1)
 K R
 S R(0)=$S($P(^APCHSURV(APCHI,0),U,4)]"":$P(^APCHSURV(APCHI,0),U,4),1:$P(^APCHSURV(APCHI,0),U,1))
 K ^UTILITY($J,"W")
 NEW X,APCHY
 S APCHY=0
 S DIWL=0,DIWR=C,DIWF="" F  S APCHY=$O(^APCHSURV(APCHI,12,APCHY)) Q:APCHY'=+APCHY  D
 .S X=^APCHSURV(APCHI,12,APCHY,0)
 .I X["|" S X=$$INTP(X)
 .D ^DIWP
 S X=0 F  S X=$O(^UTILITY($J,"W",DIWL,X)) Q:X'=+X  S R(X)=^UTILITY($J,"W",DIWL,X,0)
 Q
 ;
INTP(V) ;
 N A,Z,X,K,Y
 ;S X=V
 ;X ^%ZOSF("UPPERCASE")
 S (Y,A)=V
 S Z=$P(A,"|")
 F I=2:2 S J=$P(Y,"|",I) Q:J=""  D
 .S K=$P(J," ")
 .I $T(@K)="" S A="" Q
 .S Z="" D @K
 .S A=$P(A,("|"_J_"|"))_Z_$P(A,("|"_J_"|"),2)
 Q A
 ;
WRITETP ;EP - write out TP
 I $G(APCHSGHR) D  Q
 .NEW A,B
 .S (A,B)=0
 .S APCHRVAL(0)="1^"_$P(^APCHSURV(APCHSITI,0),U)
 .F  S B=$O(APCHSTEX(B)) Q:B'=+B  S A=A+1,APCHRVAL(A)=APCHSTEX(B)
 I 'APCHSANY D FIRST Q:$D(APCHSQIT)  S APCHSANY=1,APCHSNPG=0
 X APCHSCKP Q:$D(APCHSQIT)
 I APCHSNPG S APCHSCT=0,APCHSNPG=0
 S APCHX=$S($P(^APCHSURV(APCHSITI,0),U,4)]"":$P(^APCHSURV(APCHSITI,0),U,4),1:$P(^APCHSURV(APCHSITI,0),U))
 W APCHX
 I $L(APCHX)>28 W !
 ;W ?30,APCHSTEX(1)
 F APCHSL=1:1 Q:'$D(APCHSTEX(APCHSL))!($D(APCHSQIT))  D
 .X APCHSCKP Q:$D(APCHSQIT)
 .W ?30,APCHSTEX(APCHSL),!
 ;W !
 ;S APCHSCT=APCHSCT+1
 ;I '(APCHSCT#2) X APCHSCKP Q:$D(APCHSQIT)  W:'APCHSNPG !
 K APCHSTEX
 Q
 ;
FIRST ;EP
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 ;W !
 ;S APCHSCT=0
 Q
 ;
CVD ;EP
 NEW APCHSTAT
 Q:'$$INAC^APCHSMU(APCHSITI)
 I $T(EN^BQITRPHS)="" Q
 S APCHLAST="",APCHNEXT="" K APCHSTEX,APCHSBQI
 D EN^BQITRPHS(APCHSPAT,$P(^APCHSURV(APCHSITI,0),U,1),.APCHSBQI)
 K ^UTILITY($J,"W")
 NEW X,APCHY
 S APCHY=0
 S DIWL=0,DIWR=C,DIWF="" F  S APCHY=$O(APCHSBQI(APCHY)) Q:APCHY'=+APCHY  D
 .S X=APCHSBQI(APCHY)
 .D ^DIWP
 S X=0 F  S X=$O(^UTILITY($J,"W",DIWL,X)) Q:X'=+X  S APCHSTEX(X)=^UTILITY($J,"W",DIWL,X,0)
 D WRITETP
 X APCHSURX
 Q
 ;
HEARINQ ;EP
 X APCHSURX
 Q:'$$INAC^APCHSMU(APCHSITI)  ;is item turned on or off
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 S APCHSINT="",APCHSCRI=$$SITECRIT^APCHSMU(APCHSITI)
 I APCHSCRI S APCHSINT=$$AGESEX^APCHSMU(APCHSITI,APCHSPAT)
 I 'APCHSCRI D
 .Q:APCHSAGE<65
 .S APCHSINT=(2*365)
 I APCHSINT="" X APCHSURX Q  ;no frequency so skip it
 K APCHSTEX
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX)
 D WRITETP
 X APCHSURX
 Q
 ;
STRAB ;EP
 X APCHSURX
 Q:'$$INAC^APCHSMU(APCHSITI)  ;is item turned on or off
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 S APCHSINT="",APCHSCRI=$$SITECRIT^APCHSMU(APCHSITI)
 I APCHSCRI S APCHSINT=$$AGESEX^APCHSMU(APCHSITI,APCHSPAT)
 I 'APCHSCRI D
 .Q:APCHSAGE<3
 .Q:APCHSAGE>4
 .S APCHSINT=(2*365)
 I APCHSINT="" X APCHSURX Q  ;no frequency so skip it
 K APCHSTEX
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX)
 D WRITETP
 Q
 ;
ASHMR1 ;EP called from hmr
 ;increase steriods
 Q:'$$INAC^APCHSMU(APCHSITI)  ;is item turned on or off
 Q:'$$HMR1ST^APCHSMAS(APCHSPAT)  ;not a candidate for this reminder
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX)
 D WRITETP
 Q
 ;
ASHMR2 ;EP called from health maintenance reminders
 ;asthma management plan
 Q:'$$INAC^APCHSMU(APCHSITI)
 S APCHICAR=""
 NEW APCHX,APCHY,Y
 S APCHX=0 F  S APCHX=$O(^AUTTEDT("C","ASM-SMP",APCHX)) Q:APCHX'=+APCHX  D
 .S Y=$$LASTITEM^APCLAPIU(APCHSPAT,"`"_APCHX,"EDUCATION",,,"A")
 .I Y="" Q
 .S APCHY($P(Y,U,1))=Y
 S APCHICAR=$O(APCHY(0)) I APCHICAR S APCHICAR=APCHY(APCHICAR)
 I APCHICAR="" S APCHICAR=$$LASTAM^APCHSAST(DFN,3)
 S (APCHLAST,Y)=$P(APCHICAR,U,1)
 Q:Y>$$FMADD^XLFDT(DT,-365)  ;asthma plan in place in last year
 Q:'$$HMR2ST^APCHSMAS(APCHSPAT)  ;not a candidate
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX)
 D WRITETP
 Q
 ;
ASHMR5 ;EP - called from hmr item
 Q:'$$INAC^APCHSMU(APCHSITI)  ;is item turned on or off
 Q:$P(^AUPNPAT(APCHSPAT,0),U,14)]""
 NEW APCHPRV
 D WHPCP^BDPAPI(APCHSPAT,.APCHPRV)
 I $G(APCHPRV("DESIGNATED PRIMARY PROVIDER"))]"" Q
 Q:'$$HMR5ST^APCHSMAS(APCHSPAT)
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX)
 D WRITETP
 Q
 ;
ASHMR3 ;EP - called from maintenance reminder
 Q:'$$INAC^APCHSMU(APCHSITI)  ;is item turned on or off
 I $E(DT,4,5)="04"!($E(DT,4,5)="05")!($E(DT,4,5)="06")!($E(DT,4,5)="07")!($E(DT,4,5)="08") Q  ;don't display in summer
 X APCHSURX
 Q:'$$HMR3ST^APCHSMAS(APCHSPAT)  ;not a candidate for this reminder
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 S APCHICAR=$$LASTFLU^APCLAPI4(APCHSPAT)
 S APCHLAST=$P(APCHICAR,U,1)
 I APCHLAST="" D W3 Q
 S D=$$FMDIFF^XLFDT(DT,APCHLAST)
 I +$E(DT,4,5)>8,D>210 D W3 Q
 I +$E(DT,4,5)<4,D>210 D W3 Q
 Q
W3 ;
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX)
 D WRITETP
 Q
ASHMR4 ;EP - called from hmr item
 NEW APCHSTAT
 Q:'$$INAC^APCHSMU(APCHSITI)
 Q:$$IPLSNO^APCHSMAS(DFN,"PXRM ASTHMA CLASSIFIED")  ;has IPL of classified
 Q:$$PLTAXAC^APCHSMAS(DFN,"BJPC ASTHMA CLASSIFIED")  ;has ipl of classified
 Q:$$LASTASCL^APCHSMAS(APCHSPAT,1)]""  ;asthma severity documented
 Q:'$$HMR4ST^APCHSMAS(APCHSPAT)  ;not a candidate
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX)
 D WRITETP
 Q
ASTCLASS(P) ;EP
 NEW APCH,G,BD,X,D,V,E
 S G=""
 S BD=$$DOB^AUPNPAT(P)
 S %=P_"^ALL DX [BJPC ASTHMA CLASSIFIED;DURING "_BD_"-"_DT,E=$$START1^APCLDF(%,"APCH(")
 I '$D(APCH) Q ""
 ;SKIP any not A or H
 S (G,X)=0 F  S X=$O(APCH(X)) Q:X'=+X!(G)  D
 .S V=$P(APCH(X),U,5) Q:'V
 .Q:"AH"'[$P($G(^AUPNVSIT(V,0)),U,7)
 .S G=1
 Q G
 ;
ASHMR8 ;EP - called from hmr item
 NEW APCHSTAT
 Q:'$$INAC^APCHSMU(APCHSITI)
 Q:$$IPLSNO^APCHSMAS(APCHSPAT,"PXRM ASTHMA CLASSIFIED")  ;has IPL of classified
 ;Q:$$PLTAXAC^APCHSMAS(P,"BJPC ASTHMA CLASSIFIED")
 Q:$$LASTASCL^APCHSMAS(APCHSPAT,1)]""  ;asthma severity documented
 Q:'$$ASTCLASS(APCHSPAT)  ;not a candidate as no pov for asthma classified
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX)
 D WRITETP
 Q
ASHMR6 ;EP - called from hmr item
 NEW APCHSTAT
 Q:'$$INAC^APCHSMU(APCHSITI)
 Q:'$$HMR6ST^APCHSMAS(APCHSPAT)  ;not a candidate
 S APCHLAST=$$LASTACON^APCHSMAS(APCHSPAT,2)
 I $$FMDIFF^XLFDT(DT,APCHLAST)<365 Q  ;documented in past year
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX)
 D WRITETP
 Q
ASHMR7 ;EP - called from hmr item
 NEW APCHSTAT,APCHSEV
 Q:'$$INAC^APCHSMU(APCHSITI)
 S APCHSEV=$$HMR7ST^APCHSMAS(APCHSPAT)  ;not a candidate
 Q:'APCHSEV
 S APCHLAST="",APCHNEXT="" K APCHSTEX
 I $G(APCHCOLW)="" S APCHCOLW=48
 D GETTPT(APCHSITI,APCHCOLW,.APCHSTEX,APCHSEV)
 D WRITETP
 Q
ASFS1 ;
 NEW A,X,K,Y
 S Z=$$FMTE^XLFDT($$LASTDXT^APCLAPIU(APCHSPAT,,,"BGP ASTHMA DXS","D"))
 I Z="" S Z=$$PLTAXAC^APCHSMAS(APCHSPAT,"BGP ASTHMA DXS") S Z=$P(Z,U,2)
 Q
ASAP1 ;
 NEW A,X,K,Y
 S Z=$P($$HMR2ST^APCHSMAS(APCHSPAT),U,2)
 Q
 ;
ASEV2 ;
 S Z="-- "_$P(EVENT,U,2)
 Q
ASEV3 ;
 S Z="-- "_$P(EVENT,U,3)
 Q
ASEV1 ;
 S Z=$P($$LASTACLG^APCHSMAS(APCHSPAT,2),U,2)
 I Z="" S Z="None Documented"
 Q
RUBELLA ;
 I EVENT1="NON-IMMUNE" D  Q
 .I EVENT]"" S Z="Rubella Immunization Status health factor is recorded "_""""_"Non-Immune"_""""_" but there is a record of rubella vaccination on "_$$DATE^APCHSMU(EVENT)_"." D RUBWT Q
 .S Z=Z_" Patient may be due for Rubella Vaccination"_"." D RUBWT Q
 I EVENT1="INDETERMINATE" D  Q
 .I EVENT]"" S Z="Rubella Immunization Status health factor is recorded "_""""_"Indeterminate"_""""_" but there is a record of rubella vaccination on "_$$DATE^APCHSMU(EVENT)_"." D RUBWT Q
 .S Z="Rubella Immunization Status health factor is recorded "_""""_"Indeterminate,"_""""_" needs further  clinical review." D RUBWT Q
 I EVENT]"" Q
 S Z="No Rubella Immunization Status health factor recorded, may be due for rubella vaccination." D RUBWT
 Q
RUBWT ;
 NEW APCHLR,V
 S APCHLR=""
 S V=$$REF^APCHSMU(APCHSPAT,9999999.14,$O(^AUTTIMM("C",3,0)),EVENT) I V]"" S APCHLR=V
 S V=$$REF^APCHSMU(APCHSPAT,9999999.14,$O(^AUTTIMM("C",4,0)),EVENT) I V]"",$P(V,U,3)]$P(APCHLR,U,3) S APCHLR=V
 S V=$$REF^APCHSMU(APCHSPAT,9999999.14,$O(^AUTTIMM("C",6,0)),EVENT) I V]"",$P(V,U,3)]$P(APCHLR,U,3) S APCHLR=V
 S V=$$REF^APCHSMU(APCHSPAT,9999999.14,$O(^AUTTIMM("C",38,0)),EVENT) I V]"",$P(V,U,3)]$P(APCHLR,U,3) S APCHLR=V
 S V=$$REF^APCHSMU(APCHSPAT,9999999.14,$O(^AUTTIMM("C",94,0)),EVENT) I V]"",$P(V,U,3)]$P(APCHLR,U,3) S APCHLR=V
 I APCHLR]"" S X=$P(APCHLR,U) S Z=Z_" "_X S X=$P(APCHLR,U,2) I X]"" S Z=Z_" "_X
 I APCHLR]"" S Z=Z_"."
 Q
ACENDDT ;
 S Z=$P($$MREND^APCHSACG(APCHSPAT),U,2)
 Q
ACURINDT ;
 NEW J
 S Z=$$LASTACUR^APCHSACG(APCHSPAT)
 I Z S Z=$$FMTE^XLFDT($P(Z,U,1)) Q
 S Z="<never reported>"
 Q
ACCBCDT ;
 NEW J
 S Z=$$LASTACCB^APCHSACG(APCHSPAT)
 I Z S Z=$$FMTE^XLFDT($P(Z,U,1)) Q
 S Z="<never reported>"
 Q
ACFOBTDT ;
 NEW J
 S Z=$$LASTACFO^APCHSACG(APCHSPAT)
 I Z S Z=$$FMTE^XLFDT($P(Z,U,1)) Q
 S Z="<never reported>"
 Q
