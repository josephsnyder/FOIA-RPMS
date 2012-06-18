APCHS11 ; IHS/CMI/LAB - PART 11 OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS PCC SUITE;**2,7**;MAY 14, 2009
 ;IHS/CMI/LAB - per task order added refusal check for exams,dm items
 ;
SURV ; ******************** SURVEILLANCE - HARD CODE *******
 Q:'$D(^APCHSCTL(APCHSTYP,5,0))
 S APCHSDOB=$P(^DPT(APCHSPAT,0),U,3)
 S X1=DT,X2=APCHSDOB D ^%DTC S APCHSAGE=$$AGE^AUPNPAT(APCHSPAT)
 S APCHSEX=$P(^DPT(APCHSPAT,0),U,2)
 ;
 S (APCHSANY,APCHSITM)=0
 K APCHSTEX
 ;
 S APCHSURX="K APCHSTEX,APCHOVR,APCHMIN,D,APCHICAR,APCHLAST,APCHSRTP,APCHNEXT,APCHSBWR,X,C,%,T,Y,APCHNUMD,S,R,APCHTAXN,APCHSINT,APCHT,APCHREF,APCHSCRI,APCHTEST,APCHLSIG,APCHLCOL X APCHSURZ"
 S APCHSURZ="K APCHLBE,APCHPBEG,N,APCHPNEU,APCHMMR,APCHY,APCHX,APCHLSIC,APCHLCOI,APCHLBEI"
 ;
 F APCHSLP=0:0 S APCHSITM=$O(^APCHSCTL(APCHSTYP,5,APCHSITM)) Q:'APCHSITM!($D(APCHSQIT))  D
 .S APCHSITI=$P(^APCHSCTL(APCHSTYP,5,APCHSITM,0),U,2)
 .I $P(^APCHSURV($P(^APCHSCTL(APCHSTYP,5,APCHSITM,0),U,2),0),U,7)'="R" Q  ;REMINDERS ONLY
 .I $D(^APCHSURV($P(^APCHSCTL(APCHSTYP,5,APCHSITM,0),U,2),0)) S APCHSDO=$P(^(0),U,2) I APCHSDO]"" D @($P(APCHSDO,";")_U_$P(APCHSDO,";",2))
 ;
 D EOJ
 Q
 ;
TP ; ******************** BEST PRACTICE PROMPTS - HARD CODE *******
 Q:'$D(^APCHSCTL(APCHSTYP,13,0))
 S APCHSDOB=$P(^DPT(APCHSPAT,0),U,3)
 S X1=DT,X2=APCHSDOB D ^%DTC S APCHSAGE=$$AGE^AUPNPAT(APCHSPAT)
 S APCHSEX=$P(^DPT(APCHSPAT,0),U,2)
 ;
 S (APCHSANY,APCHSITM)=0
 K APCHSTEX
 S APCHSURX="K APCHSTEX,APCHOVR,APCHICAR,APCHLAST,APCHSRTP,APCHNEXT,APCHSBWR,APCHCOLW,X,C,%,T,Y,APCHNUMD,S,R,APCHTAXN,APCHSINT,APCHT,APCHREF,APCHSCRI,APCHTEST,APCHLSIG,APCHLCOL,APCHLBE,APCHPBEG,N,APCHPNEU,APCHMMR,APCHY,APCHX,APCHLSIC"
 ;
 F APCHSLP=0:0 S APCHSITM=$O(^APCHSCTL(APCHSTYP,13,APCHSITM)) Q:'APCHSITM!($D(APCHSQIT))  D
 .S APCHSITI=$P(^APCHSCTL(APCHSTYP,13,APCHSITM,0),U,2)
 .I $P(^APCHSURV($P(^APCHSCTL(APCHSTYP,13,APCHSITM,0),U,2),0),U,7)'="T" Q  ;REMINDERS ONLY
 .S APCHCOLW=48
 .I $D(^APCHSURV($P(^APCHSCTL(APCHSTYP,13,APCHSITM,0),U,2),0)) S APCHSDO=$P(^(0),U,2) I APCHSDO]"" D @($P(APCHSDO,";")_U_$P(APCHSDO,";",2))
 ;
 D EOJ
 Q
URINE ;
 Q:APCHSAGE'<13
 K APCHSLDT
 S APCHSLAB="URINALYSIS" D LABDFN D:APCHSLBD MULTLAB
 S APCHSLAB="URINE GLUCOSE" D LABDFN D:APCHSLBD MULTLAB
 Q:'APCHSLBD
 S APCHSDIS="URINALYSIS"
 S APCHSIVD=$O(APCHSLDT(""))
 I 'APCHSIVD,APCHSAGE>5 S APCHSDUE="MAY BE DUE NOW",APCHSDAT="" D DISPLAY Q
 I 'APCHSIVD S X1=APCHSDOB,X2=365*5 D C^%DTC S Y=X X APCHSCVD S APCHSDUE=Y,APCHSDAT="" D DISPLAY Q
 D GETDATE S APCHSLST=APCHSDAT
 D PASTAGE
 I APCHSAGE<5,APCHSOLD'>3 S APCHSIVD=9999999-(APCHSDOB+50000) D GETDATE S APCHSDUE=APCHSDAT,APCHSDAT=APCHSLST D DISPLAY Q
 D PASTAGE I APCHSOLD'>3 S APCHSDUE="MAY BE DUE NOW",APCHSDAT=APCHSLST D DISPLAY Q
 Q
 ;
MULTLAB ;ENTRY POINT
 ;GET LAST VISIT DATE FROM AMONG TWO LAB TESTS
 K APCHSDT
 S APCHSDT=$O(^AUPNVLAB("AA",APCHSPAT,APCHSLBD,""))
 I APCHSDT S APCHSLDT(APCHSDT)=""
 Q
 ;
REGEXAM ;ENTRY POINT
 ;PELVIC, RECTAL, BREAST
 D EXAMDFN Q:'APCHSEXD
 S APCHSIVD=$O(^AUPNVXAM("AA",APCHSPAT,APCHSEXD,""))
 I 'APCHSIVD S APCHSDUE="MAY BE DUE NOW",APCHSDAT="" D REFEXAM,DISPLAY Q
 D GETDATE
 I '$D(APCHSTEX) D COMPARE,REFEXAM,DISPLAY I 1
 E  D DISPLAY
 Q
 ;
 ;
REGLAB ;ENTRY POINT
 D LABDFN
 Q:'APCHSLBD
 S APCHSIVD=$O(^AUPNVLAB("AA",APCHSPAT,APCHSLBD,""))
 I 'APCHSIVD S APCHSDUE="MAY BE DUE NOW",APCHSDAT="",APCHSEXD=$O(^LAB(60,"B",APCHSLAB,0)),APCHSDF1=60 D REFDF,DISPLAY G A
 D GETDATE
 S APCHSEXD=$O(^LAB(60,"B",APCHSLAB,0)),APCHSDF1=60
 I '$D(APCHSTEX) D COMPARE D REFDF,DISPLAY I 1
 E  D REFDF,DISPLAY
A Q
 ;
DFSURV ;ENTRY POINT (SURVEILLANCES found by the Data Fetcher)
 ;DM FOOT, DM EYE, DM DENTAL, DM CHOLESTEROL, DM CREATININE
 ;DM TRIGLYCERIDES, PHYSICAL EXAMS
 I 'APCHSIVD S APCHSDUE="MAY BE DUE NOW",APCHSDAT="" D REFDF,DISPLAY G DFSURVX
 D GETDATE
 I '$D(APCHSTEX) D COMPARE,REFDF,DISPLAY I 1
 E  D DISPLAY
DFSURVX ;
 Q
 ;
 ;
COMPARE ;ENTRY POINT
 S X1=9999999-$P(APCHSIVD,"."),X2=APCHSINT D C^%DTC S Y=X X APCHSCVD S (APCHSDUE,APCHSWD)=Y
 S X2=9999999-$P(APCHSIVD,"."),X1=DT D ^%DTC I X>APCHSINT S APCHSDUE=$S('$D(APCHSDD):"MAY BE DUE NOW (WAS DUE "_APCHSWD_")",1:"MAY BE DUE NOW")
 Q
 ;
GETDATE ;ENTRY POINT
 S Y=-$P(APCHSIVD,".")+9999999 X APCHSCVD S APCHSDAT=Y
 Q
 ;
PASTAGE ;ENTRY POINT;GETS AGE AT TIME OF LAST PROCEDURE OR EXAM, ETC
 S X1=9999999-$P(APCHSIVD,"."),X2=APCHSDOB D ^%DTC S APCHSOLD=$J(X/365.25,1,2)
 Q
 ;
EXAMDFN ;ENTRY POINT
 S APCHSEXD=$O(^AUTTEXAM("C",APCHSEXN,""))
 Q
 ;
LABDFN ;ENTRY POINT
 S APCHSLBD=$O(^LAB(60,"B",APCHSLAB,""))
 Q
 ;
DISPLAY ;ENTRY POINT
 I 'APCHSANY D FIRST Q:$D(APCHSQIT)  S APCHSANY=1
 X APCHSCKP Q:$D(APCHSQIT)
 I APCHSNPG W ?25,"LAST",?38,"NEXT",!! S APCHSCT=0
 W APCHSDIS,?23,APCHSDAT
 I $D(APCHSTEX) W ?36,APCHSTEX(1) F APCHSL=2:1 Q:'$D(APCHSTEX(APCHSL))  W !,?36,APCHSTEX(APCHSL)
 E  W ?36,APCHSDUE
 W @$S('$D(APCHSTEX):"!",1:"!")
 S APCHSCT=APCHSCT+1
 I '(APCHSCT#4) X APCHSCKP Q:$D(APCHSQIT)  W:'APCHSNPG !
 K APCHSTEX Q
 ;
FIRST ;EP
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 W ?25,"LAST",?38,"NEXT",!!
 S APCHSCT=0
 Q
 ;
REFDF ;EP dm item declined?
 I '$G(APCHSDF1) Q
 I $G(APCHSDUE)'["DUE" Q
 I $G(APCHSTAX)]"" D REFDFM Q
 I '$G(APCHSEXD) Q
 NEW X S X=$O(^AUPNPREF("AA",APCHSPAT,APCHSDF1,APCHSEXD,0))
 I 'X Q  ;none of this exam was declined
 N APCHS1,APCHS2 S (APCHS1,APCHS2)=0 F  S APCHS1=$O(APCHSTEX(APCHS1)) Q:APCHS1'=+APCHS1  S APCHS2=APCHS1
 I $D(APCHSTEX) S APCHS2=APCHS2+1,APCHSTEX(APCHS2)="**NOTE** Patient declined a "_APCHSDIS,APCHSTEX(3)=" on "_$$FMTE^XLFDT((9999999-X)) Q
 I '$D(APCHSTEX) S APCHS2=APCHS2+1,APCHSTEX(APCHS2)=APCHSDUE,APCHS2=APCHS2+1,APCHSTEX(APCHS2)="**NOTE** Patient declined a "_APCHSDIS,APCHSTEX(3)=" on "_$$FMTE^XLFDT((9999999-X))
 Q
REFDFM ;taxonomy check for dm item
 NEW G
 S G=0,APCHSEXD=0 F  S APCHSEXD=$O(^ATXLAB(APCHSTAX,21,"B",APCHSEXD)) Q:APCHSEXD'=+APCHSEXD!(G)  D
 .NEW X S X=$O(^AUPNPREF("AA",APCHSPAT,APCHSDF1,APCHSEXD,0))
 .I 'X Q  ;none of this exam was declined
 .S G=1 N APCHS1,APCHS2 S (APCHS1,APCHS2)=0 F  S APCHS1=$O(APCHSTEX(APCHS1)) Q:APCHS1'=+APCHS1  S APCHS2=APCHS1
 .I $D(APCHSTEX) S APCHS2=APCHS2+1,APCHSTEX(APCHS2)="**NOTE** Patient declined a "_APCHSDIS,APCHSTEX(3)=" on "_$$FMTE^XLFDT((9999999-X)) Q
 .I '$D(APCHSTEX) S APCHS2=APCHS2+1,APCHSTEX(APCHS2)=APCHSDUE,APCHS2=APCHS2+1,APCHSTEX(APCHS2)="**NOTE** Patient declined a "_APCHSDIS,APCHSTEX(3)=" on "_$$FMTE^XLFDT((9999999-X))
 Q
REFEXAM ; did this patient refuse this exam
 I '$G(APCHSEXD) Q
 Q:$G(APCHSDUE)'["MAY BE DUE"
 NEW X S X=$O(^AUPNPREF("AA",APCHSPAT,9999999.15,APCHSEXD,0))
 I 'X Q  ;none of this exam was declined
 K APCHSTEX S APCHSTEX(1)=APCHSDUE,APCHSTEX(2)="**NOTE** Patient declined a "_APCHSDIS,APCHSTEX(3)=" on "_$$FMTE^XLFDT((9999999-X))
 Q
EOJ ;
 K APCHSEXM,APCHSEXD,APCHSIVD,APCHSDUE,APCHSNTE,APCHSDOB,APCHSAGE,APCHSINT,APCHSWD,APCHSPRC,APCHSTP,APCHSDF
 K APCHSCT,APCHSBP,APCHSITM,APCHSDO,APCHSDA,APCHSER,APCHSINM,APCHSLP
 K X1,X2,APCHSLAB,APCHSYRY,APCHSL
 K APCHSOLD,APCHSIVB,APCHSIVA,APCHSLST,APCHSANY,APCHSDAT,APCHSDIS,APCHSEX,APCHSEXN,APCHSLBD,APCHSKDT,APCHSKN,APCHSKND,APCHSLDT,APCHSDT
 K APCHSIM,APCHSIMD,APCHSKD,APCHSMSC,APCHSMSD,APCHSURD,APCHSLAB
 K APCHSMDT,APCHSMAM,APCHSDD,X,Y
 K APCHS,APCHDMPT,APCHSCAT,APCHSONE,APCHSHFD
 Q
 ;
