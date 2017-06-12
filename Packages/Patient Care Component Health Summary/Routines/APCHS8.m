APCHS8 ; IHS/CMI/LAB - PART 8 OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS PCC SUITE;**2,7,10**;MAY 14, 2009;Build 88
 ;
OFFHX ; ********** OFFSPRING HISTORY * 9000012 **********
 ; <SETUP>
 Q:$P(^DPT(APCHSPAT,0),U,2)'="F"
 Q:'$D(^AUPNOFFH("AA",APCHSPAT))
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 X APCHSCKP Q:$D(APCHSQIT)  D OFFHDR
 ; <DISPLAY>
 S APCHSDAT=0 F APCHSQ=0:0 S APCHSDAT=$O(^AUPNOFFH("AA",APCHSPAT,APCHSDAT)) Q:'APCHSDAT  S APCHSDFN=0 F APCHSQ=0:0 S APCHSDFN=$O(^AUPNOFFH("AA",APCHSPAT,APCHSDAT,APCHSDFN)) Q:'APCHSDFN  D OFFDSP Q:$D(APCHSQIT)
OFFHXX K APCHSDAT,APCHSDFN,APCHSN,APCHSP,X,Y
 Q
OFFDSP ;
 S APCHSN=^AUPNOFFH(APCHSDFN,0)
 X APCHSCKP Q:$D(APCHSQIT)  D:APCHSNPG OFFHDR
 S Y=APCHSDAT X APCHSCVD W Y,?10,$P(APCHSN,U,4),?20,$P(APCHSN,U,5),?24,$J(+$P(APCHSN,U,6),5,2),?31,$P(APCHSN,U,7)
 I $P(APCHSN,U,8) W ?35,$P(APCHSN,U,8),"/",$S($P(APCHSN,U,9):$P(APCHSN,U,9),1:"-")
 I $P(APCHSN,U,11) S Y=$P(APCHSN,U,11) X APCHSCVD S Y="("_Y_$S($P(APCHSN,U,12)]"":": "_$P(APCHSN,U,12),1:"")_")" W ?42,$E(Y,1,36)
 W !
PNC I $O(^AUPNOFFH(APCHSDFN,21,0)) W ?10,"PERINATAL COMPLICATION: " S APCHSP=0 F  S APCHSP=$O(^AUPNOFFH(APCHSDFN,21,APCHSP)) Q:'APCHSP  S Y=^(APCHSP,0) D OUTC Q:$D(APCHSQIT)
 Q:$D(APCHSQIT)
NNC I $O(^AUPNOFFH(APCHSDFN,31,0)) W ?10,"NEONATAL COMPLICATION: " S APCHSP=0 F  S APCHSP=$O(^AUPNOFFH(APCHSDFN,31,APCHSP)) Q:'APCHSP  S Y=^(APCHSP,0) D OUTC Q:$D(APCHSQIT)
 Q
OFFHDR W "DOB",?10,"NAME",?20,"SEX",?25,"BWT",?31,"EGA",?35,"APGAR",?42,"DEATH",!
 Q
OUTC X APCHSCKP Q:$D(APCHSQIT)  D:APCHSNPG OFFHDR
 W ?34,Y,!
 Q
 ;
REPHX ; ********** REPRODUCTIVE HISTORY * 9000017 **********
 ; <SETUP>
 G REPHX^APCHS85
 ;
TRTMT ; ********** TREATMENTS * 9000010.15 **********
 ; <SETUP>
 Q:'$D(^AUPNVTRT("AA",APCHSPAT))
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 ; <DISPLAY>
 S APCHSIVD="" F APCHSQ=0:0 S APCHSIVD=$O(^AUPNVTRT("AA",APCHSPAT,APCHSIVD)) Q:APCHSIVD=""!(APCHSIVD>APCHSDLM)  S Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDTT=Y S APCHSDTU=0 D ONEDATE Q:$D(APCHSQIT)  S APCHSNDM=APCHSNDM-APCHSDTU Q:APCHSNDM=0
 ; <CLEANUP>
TRTMTX K APCHSVDF,APCHSIVD,APCHSDTU,APCHSDTT,APCHSDFN,APCHSFO,APCHSFAC,APCHSNT,APCHST,APCHSLVL,APCHSLVT,APCHSN
 K APCHSNFL,APCHSNSH,APCHSNAB,APCHSVSC,APCHSITE
 Q
ONEDATE S APCHSDFN="" F APCHSQ=0:0 S APCHSDFN=$O(^AUPNVTRT("AA",APCHSPAT,APCHSIVD,APCHSDFN)) Q:APCHSDFN=""  D TRTCHK Q:$D(APCHSQIT)
 Q
TRTCHK S APCHSN=^AUPNVTRT(APCHSDFN,0)
 Q:'$P(^AUTTTRT($P(APCHSN,U,1),0),U,3)
 S APCHSVDF=$P(APCHSN,U,3) D GETSITEV^APCHSUTL Q:"ADTC"'[APCHSVSC
 X APCHSCKP Q:$D(APCHSQIT)  S:APCHSNPG APCHSDTU=0
 I 'APCHSDTU W APCHSDTT S APCHSFO=""
 I APCHSNSH=APCHSFO S APCHSFAC=""
 E  S (APCHSFAC,APCHSFO)=APCHSNSH
 S APCHSDTU=1
 S APCHST=$P(APCHSN,U,1),APCHST=$P(^AUTTTRT(APCHST,0),U,1)
 S APCHSNT=+$P(APCHSN,U,4)
 S APCHSLVL=$P(APCHSN,U,6),APCHSLVT=""
 I APCHSLVL]"" S APCHSLVT=$P(^DD(9000010.15,.06,0),U,3),APCHSLVT=$P($P(APCHSLVT,APCHSLVL_":",2),";",1),APCHSLVT=" - "_$P(APCHSLVT,",",1)_" UNDERSTANDING"
 X APCHSCKP Q:$D(APCHSQIT)  W:APCHSNPG APCHSDTT W ?10,$E(APCHSFAC,1,10),?21,APCHST," (",APCHSNT,")",APCHSLVT,!
 Q
 ;
TXC ;EP - called from component 
 ; <SETUP>
 Q:'$D(^AUPNVTXC("AA",APCHSPAT))
 X APCHSBRK
 ; <DISPLAY>
 S APCHST="" F APCHSQ=0:0 S APCHST=$O(^AUPNVTXC("AA",APCHSPAT,APCHST)) Q:APCHST=""  S APCHSTX=$$EXTSET^XBFUNC(9000010.39,.01,APCHST),APCHSTL=$L(APCHSTX) X APCHSCKP Q:$D(APCHSQIT)  D TXDSP6
 ; <CLEANUP>
TXCX K APCHST,APCHSTX,APCHSTL,APCHSIVD,APCHSDFN,APCHSDI,APCHSVDF,APCHSDAT,APCHSCNT,APCHS,X,Y
 K APCHSNFL,APCHSNSH,APCHSNAB,APCHSVSC,APCHSITE
 Q
TXDSP6 ;get contract type
 S APCHSCNT=0
 W ! X APCHSCKP Q:$D(APCHSQIT)  W APCHSTX S APCHSIVD="" F APCHSQ=0:0 S APCHSIVD=$O(^AUPNVTXC("AA",APCHSPAT,APCHST,APCHSIVD)) S APCHSCNT=APCHSCNT+1 Q:APCHSIVD=""!(APCHSCNT>6)  D TXDSP13
 Q
TXDSP13 ;
 S Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 S APCHSDFN=0 F APCHSQ=0:0 S APCHSDFN=$O(^AUPNVTXC("AA",APCHSPAT,APCHST,APCHSIVD,APCHSDFN)) Q:'APCHSDFN!(APCHSCNT>6)  D TXDSP23
 Q
TXDSP23 ;
 S Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 S APCHSVDF=$P(^AUPNVTXC(APCHSDFN,0),U,3) ;D GETSITEV^APCHSUTL S APCHSITE=APCHSNSH
 S APCHSDI=$$VAL^XBDIQ1(9000010.39,APCHSDFN,.04)
 S APCHSPI=$$VAL^XBDIQ1(9000010.39,APCHSDFN,.05)
 X APCHSCKP Q:$D(APCHSQIT)  W:APCHSNPG APCHSTX W ?20,APCHSDI,?40,APCHSPI,!
 Q
BIRTHM ; ********** BIRTH MEASUREMENTS 9000024 AND V INFANT FEEDING 9000010.44 **********
 ; <SETUP>
 I '$D(^AUPNBMSR("B",APCHSPAT)),'$O(^AUPNVIF("AC",APCHSPAT,0)) Q
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 ; <DISPLAY>
 S APCHX=$G(^AUPNBMSR(APCHSPAT,0))
 S %=$P(APCHX,U,18),%=%+.0005
 W "BIRTH WEIGHT (kg)",?30,$$STRIP^XLFSTR($J($P(APCHX,U,18),10,3))
 X APCHSCKP Q:$D(APCHSQIT)
 S %=$P(APCHX,U,22) ;,%=%+.0005
 W "BIRTH LENGTH (inches)",?30,$$STRIP^XLFSTR($J($P(APCHX,U,22),6,2))
 X APCHSCKP Q:$D(APCHSQIT)
 W !,"BIRTH ORDER" S X=$P(APCHX,U,11) S:X["W" X=+X_" weeks" S:X["D" X=+X_" days" S:X["M" X=+X_" months" S:X["Y" X=+X_" years" W ?30,X
 X APCHSCKP Q:$D(APCHSQIT)
 S X=$P(APCHX,U,12) W !,"FORMULA STARTED (age)" S:X["W" X=+X_" weeks" S:X["D" X=+X_" days" S:X["M" X=+X_" months" S:X["Y" X=+X_" years" W ?30,X
 X APCHSCKP Q:$D(APCHSQIT)
 S X=$P(APCHX,U,14) W !,"BREAST STOPPED (age)" S:X["W" X=+X_" weeks" S:X["D" X=+X_" days" S:X["M" X=+X_" months" S:X["Y" X=+X_" years" W ?30,X
 X APCHSCKP Q:$D(APCHSQIT)
 S X=$P(APCHX,U,16) W !,"SOLIDS BEGUN (age)" S:X["W" X=+X_" weeks" S:X["D" X=+X_" days" S:X["M" X=+X_" months" S:X["Y" X=+X_" years" W ?30,X
 Q:'$O(^AUPNVIF("AC",APCHSPAT,0))
 K APCHT S APCHX=0 F  S APCHX=$O(^AUPNVIF("AC",APCHSPAT,APCHX)) Q:APCHX'=+APCHX  D
 .S V=$P(^AUPNVIF(APCHX,0),U,3)
 .Q:'V
 .S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:V=""
 .S APCHT(V,APCHX)=$$AGE^AUPNPAT(APCHSPAT,V,"E")_U_$$VAL^XBDIQ1(9000010.44,APCHX,.01)
 .Q
 ;write out data
 X APCHSCKP Q:$D(APCHSQIT)
 W !!,"VISIT DATE",?20,"AGE",?32,"FEEDING CHOICE",!
 S APCHD=0 F  S APCHD=$O(APCHT(APCHD)) Q:APCHD'=+APCHD!($D(APCHSQIT))  S APCHX=0 F  S APCHX=$O(APCHT(APCHD,APCHX)) Q:APCHX'=+APCHX!($D(APCHSQIT))  D
 .X APCHSCKP Q:$D(APCHSQIT)
 .W $$DATE^APCHSMU(APCHD),?20,$P(APCHT(APCHD,APCHX),U),?32,$P(APCHT(APCHD,APCHX),U,2),!
 .;ADDITIONAL FEEDING CHOICES
 .Q:'$O(^AUPNVIF(APCHX,13,0))
 .W ?10,"ADDITIONAL FEEDING CHOICES:"
 .S APCHAX=0 F  S APCHAX=$O(^AUPNVIF(APCHX,13,APCHAX)) Q:APCHAX'=+APCHAX  D
 ..X APCHSCKP Q:$D(APCHSQIT)
 ..S APCHIENS=APCHAX_","_APCHX
 ..S X=$P($G(^AUPNVIF(APCHX,13,APCHAX,0)),U,1) W ?40,$$GET1^DIQ(9000010.4413,APCHIENS,.01),!
 ..I $P($G(^AUPNVIF(APCHX,13,APCHAX,0)),U,2)]"" W ?10,"COMMENT: ",$$GET1^DIQ(9000010.4413,APCHIENS,.02),!
 .Q
BRTHX K APCHSDAT,APCHSDFN,APCHSN,APCHSP,X,Y,APCHX,APCHT,APCHD,APCHAX,APCHIENS
 Q
NRS ; ******************* NRS  - LAST 3  * 9000010.49 *******
 ; <SETUP>
 Q:'$D(^AUPNVNTS("AA",APCHSPAT))
 X APCHSBRK
 ; <DISPLAY>
 D NRDSP3
 ; <CLEANUP>
 K APCHST,APCHSFN
NRS3X K APCHST,APCHSTX,APCHSTL,APCHSIVD,APCHSDFN,APCHSRDG,APCHSVDF,APCHSDAT,APCHSCNT,APCHS,X,Y
 K APCHSNFL,APCHSNSH,APCHSNAB,APCHSVSC,APCHSITE
 Q
NRDSP3 ;get NRS type
 X APCHSCKP
 Q:$D(APCHSQIT)
 W ?1,"DATE",?12,"PROVIDER",?32,"RISK",?72,"RD ",!?72,"REFERRAL",!!
 S APCHSCNT=0,APCHSEX=0
 F  S APCHSEX=$O(^AUPNVNTS("AA",APCHSPAT,APCHSEX)) Q:APCHSEX'=+APCHSEX!($D(APCHSQIT))!(APCHSCNT>3)  D
 .S APCHSIVD="" F APCHSQ=0:0 S APCHSIVD=$O(^AUPNVNTS("AA",APCHSPAT,APCHSEX,APCHSIVD)) S APCHSCNT=APCHSCNT+1 Q:APCHSIVD=""!(APCHSCNT>3)!($D(APCHSQIT))  D NRDSP13
 Q
NRDSP13 ;get NRS test DFN
 S Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 S APCHSDFN=0 F APCHSQ=0:0 S APCHSDFN=$O(^AUPNVNTS("AA",APCHSPAT,APCHSEX,APCHSIVD,APCHSDFN)) Q:'APCHSDFN!(APCHSCNT>3)!($D(APCHSQIT))  D NRDSP23
 Q
NRDSP23 ;compile data & display NRS test
 S Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 Q:'$D(^AUPNVNTS(APCHSDFN,0))
 S APCHSPR=$E($$VAL^XBDIQ1(9000010.49,APCHSDFN,1204),1,18)
 S APCHSREF=$S($P(^AUPNVNTS(APCHSDFN,0),U,15):"Yes",1:"No")
 S APCHRISK=$$VAL^XBDIQ1(9000010.49,APCHSDFN,.14) I APCHRISK]"" S APCHRISK=APCHRISK_": "
 S C=0 I $P(^AUPNVNTS(APCHSDFN,0),U,4) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Age 70+"
 ;I $P(^AUPNVNTS(APCHSDFN,0),U,4) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Age 70+"
 I $P(^AUPNVNTS(APCHSDFN,0),U,5) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Nut Supp"
 I $P(^AUPNVNTS(APCHSDFN,0),U,6) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Weight"
 I $P(^AUPNVNTS(APCHSDFN,0),U,7) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Diagnosis"
 I $P(^AUPNVNTS(APCHSDFN,0),U,8) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Appetite"
 I $P(^AUPNVNTS(APCHSDFN,0),U,9) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Diff Chew"
 I $P(^AUPNVNTS(APCHSDFN,0),U,10) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Food Aller/Intol"
 I $P(^AUPNVNTS(APCHSDFN,0),U,11) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Vom/Diarr"
 I $P(^AUPNVNTS(APCHSDFN,0),U,12) S C=C+1 S:C>1 APCHRISK=APCHRISK_"; " S APCHRISK=APCHRISK_"Other: "_$P(^AUPNVNTS(APCHSDFN,0),U,13)
 X APCHSCKP Q:$D(APCHSQIT)
 W ?1,APCHSDAT,?12,APCHSPR
 K ^UTILITY($J,"W") S X=APCHRISK,DIWL=0,DIWR=40 D ^DIWP
 W ?32,^UTILITY($J,"W",0,1,0)
 W ?74,APCHSREF,!
 F APCHSX=2:1:$G(^UTILITY($J,"W",0)) D  Q:$D(APCHSQIT)
 .X APCHSCKP Q:$D(APCHSQIT)
 .W ?32,^UTILITY($J,"W",0,APCHSX,0),!
 K ^UTILITY($J)
 Q
 ;
IMAGING ;
 Q:'$D(^RADPT(APCHSPAT))
 X APCHSBRK
 K APCHSARR
 D SVR(APCHSPAT,$S(APCHSNDM=-1:9999999,1:APCHSNDM),$S(APCHSDLM=9999999:0,1:(9999999-APCHSDLM)),.APCHSARR)
 D PRINT(.APCHSARR)
 K APCHSARR
 Q
SVR(DFN,MAX,START,LINE)    ; RADIOLOGY REPORTS
 I $G(DFN),$G(MAX),$G(START)]""
 E  Q
 N X,Y,Z,T,%,IDT,IDT2,EDT,GBL,PCC,RIEN,ARR,EXDT
 N CASE,ESTAT,PRIEN,RCIEN,RDFN,RDOC,RSTAT,CNT,CPT,CPTIEN,MOD,PCE,PMIEN,PROC,TAB,TOT
 S IDT=0,T="~",CNT=0
 S IDT2=9999999-START
 S GBL=$NA(^RADPT(DFN,"DT"))
RPASS1 ;
 F  Q:CNT>MAX  S IDT=$O(@GBL@(IDT)) Q:'IDT  Q:IDT>IDT2  D
 . S EDT=+$G(@GBL@(IDT,0)) I 'EDT Q
 . S EXDT=$$FMTE^XLFDT(EDT,2),EXDT=$TR(EXDT,"@"," "),EXDT=$P(EXDT,":",1,2)
 . S RCIEN=0
 . F  S RCIEN=$O(@GBL@(IDT,"P",RCIEN)) Q:'RCIEN  D
 .. S X=$G(@GBL@(IDT,"P",RCIEN,0)) I X="" Q
 .. S RIEN=$P(X,U,17) I RIEN="" Q
 .. S RSTAT="",%=$P($G(^RARPT(RIEN,0)),U,5)
 .. I $L(%) S RSTAT=$S(%="V":"VERIFIED",%="R":"RELEASED/NOT VERIFIED",%="PD":"PROBLEM DRAFT",%="D":"DRAFT",1:"")
 .. S CNT=CNT+1 ; DONT WORRY ABOUT THE COUNT UNTIL THE NEXT DATE
 .. S CASE=$P(X,U) I CASE="" Q
 .. S ESTAT="",%=$P(X,U,3) ; NEEDS TRANSLATION
 .. I % S ESTAT=$P($G(^RA(72,%,0)),U)
 .. S RDFN=$P(X,U,15),RDOC=""
 .. I RDFN S RDOC=$P($G(^VA(200,RDFN,0)),U)
 .. S PRIEN=$P(X,U,2) I 'PRIEN Q
 .. S Y=$G(^RAMIS(71,PRIEN,0)) I Y="" Q
 .. S PROC=$P(Y,U) I PROC="" Q
 .. S CPTIEN=+$P(Y,U,9)
 .. S CPT=$P($G(^ICPT(CPTIEN,0)),U)
 .. S MIEN=0,MOD=""
 .. F  S MIEN=$O(@GBL@(IDT,"P",RCIEN,"M",MIEN)) Q:'MIEN  D
 ... S PMIEN=+$G(@GBL@(IDT,"P",RCIEN,"M",MIEN,0)) I 'PMIEN Q
 ... S %=$P($G(^RAMIS(71.2,PMIEN,0)),U) I %="" Q
 ... I MOD'="" S MOD=MOD_", "
 ... S MOD=MOD_%
 ... Q
 .. S ARR(CNT)=EXDT_T_PROC_T_MOD_T_CPT_T_RDOC_T_CASE_T_ESTAT_T_RSTAT
 .. S Z=0
 .. F  S Z=$O(@GBL@(IDT,"P",RCIEN,"H",Z)) Q:'Z  S ARR(CNT,"H",Z)=$G(@GBL@(IDT,"P",RCIEN,"H",Z,0)) ; HX
 .. S Z=0
 .. F  S Z=$O(^RARPT(RIEN,"R",Z)) Q:'Z  S ARR(CNT,"R",Z)=$G(^RARPT(RIEN,"R",Z,0)) ; REPORT
 .. S Z=0
 .. F  S Z=$O(^RARPT(RIEN,"I",Z)) Q:'Z  S ARR(CNT,"I",Z)=$G(^RARPT(RIEN,"I",Z,0)) ; IMPRESSION
 .. Q
 . Q
RPASS2 ;
 S ARR="HEADER"_T_"Procedure: "_T_"Procedure Modifier: "_T_"CPT Code: "_T_"Interpreting Staff: "_T_"Exam Case Number: "_T_"Exam Status: "_T_"Report Status: "
 S CNT=0,LINE(1)="-----  IMAGING PROFILE  -----",LINE=1,TAB="  "
 F  S CNT=$O(ARR(CNT)) Q:'CNT  D
 . S TOT=$L(ARR(CNT),T) I 'TOT Q
 . F PCE=1:1:TOT D
 .. I PCE=1 S X=$P(ARR(CNT),T,1)_"  "_$P(ARR(CNT),T,2),PCE=2
 .. E  S X=TAB_$P(ARR,T,PCE)_$P(ARR(CNT),T,PCE)
 .. S LINE=LINE+1
 .. S LINE(LINE)=X
 .. Q
 . S LINE=LINE+1,LINE(LINE)=" ",LINE=LINE+1
 . S LINE(LINE)=TAB_"History: "
 . S Z=0
 . F  S Z=$O(ARR(CNT,"H",Z)) Q:'Z  D
 .. S LINE=LINE+1
 .. S LINE(LINE)=TAB_"  "_ARR(CNT,"H",Z)
 .. Q
 . S LINE=LINE+1,LINE(LINE)=" ",LINE=LINE+1
 . S LINE(LINE)=TAB_"Report: "
 . S Z=0
 . F  S Z=$O(ARR(CNT,"R",Z)) Q:'Z  D
 .. S LINE=LINE+1
 .. S LINE(LINE)=TAB_"  "_ARR(CNT,"R",Z)
 .. Q
 . S LINE=LINE+1,LINE(LINE)=" ",LINE=LINE+1
 . S LINE(LINE)=TAB_"Impression: "
 . S Z=0
 . F  S Z=$O(ARR(CNT,"I",Z)) Q:'Z  D
 .. S LINE=LINE+1
 .. S LINE(LINE)=TAB_"  "_ARR(CNT,"I",Z)
 .. Q
 . Q
 Q
 ; 
PRINT(LINE) ; EP-PRINT RESULTS
 N CNT
 S CNT=0
 F  S CNT=$O(LINE(CNT)) Q:'CNT  D  I $D(APCHSQIT) Q
 . W !
 . X APCHSCKP Q:$D(APCHSQIT)
 . S X=LINE(CNT)
 . W X
 . Q
 Q
 ;
