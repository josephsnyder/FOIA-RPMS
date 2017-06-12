BHSLABB ;IHS/CIA/MGH - Health Summary for V lab file ;30-May-2014 15:46;DU
 ;;1.0;HEALTH SUMMARY COMPONENTS;**1,2,3,9**;March 17, 2006;Build 16
 ;===================================================================
 ;Taken from APCHS3B
 ; IHS/TUCSON/LAB - PART 3A OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;  [ 02/21/03  6:43 AM ]
 ;;2.0;IHS RPMS/PCC Health Summary;**5,10**;JUN 24, 1997
 ;====================================================================
 ;IHS/MSC/MGH Updated with patch 13 changes
 ;Patch 2 for patch 16 changes
 ;Patch 3 updated for result date/time
 ;=============================================================
 ;CHANGED TO REVERSE CHRONOLOGICAL ORDER
MRL ; ******************** MOST RECENT LAB * 9000010.09 *******
 N BHSPAT,D,X,BHSQ,APCHDATE
 S BHSPAT=DFN
 I '$D(^AUPNVLAB("AA",BHSPAT)) D EKGLAB S BHST="LAB",BHSFN=60 D DISPREF^BHSRAD G MRLX
 D CKP^GMTSUP Q:$D(GMTSQIT)
 ; <SETUP>
 ; <PROCESS>
 D LBLD,LPRT1
 D EKGLAB
 ;now display lab refusals
 S BHST="LAB",BHSFN=60 D DISPREF^BHSRAD
 K BHST,BHSFN
 ; <CLEANUP>
MRLX K BHSLT,BHSLR,BHSX,BHSLTX,BHSLRT,BHSLL,BHSLW,BHSNMX,BHSDFN,BHSIVD,BHSLTD,BHSN,Y,BHSRDT,BHSLTX
 K ^TMP($J,"BHS")
 Q
 ; <BUILD>
LBLD K ^TMP($J,"BHS","LAB"),^TMP($J,"BHS1")
 S BHSLRT="" F BHSQ=0:0 S BHSLRT=$O(^AUPNVLAB("AA",BHSPAT,BHSLRT)) Q:BHSLRT=""  D LDATE
 D REORDER
 Q
REORDER ;reorder by accession, parent and child
 N %,%1,%2
 S X=0 F  S X=$O(^TMP($J,"BHS","LAB",X)) Q:X'=+X  D
 .S Y=$P(^TMP($J,"BHS","LAB",X),U,3)
 .S D=(9999999-$P(^TMP($J,"BHS","LAB",X),U,1))
 .S %=$E($P(^AUPNVLAB(Y,0),U,6),1,2) S:%="" %="ZZ"
 .S %1=$S($P($G(^AUPNVLAB(Y,12)),U,8)]"":$P(^AUPNVLAB(Y,12),U,8),1:Y)
 .S %2=$S($P($G(^AUPNVLAB(Y,12)),U,8)="":0,1:Y)
 .S ^TMP($J,"BHS1",D,%,%1,%2,X)=^TMP($J,"BHS","LAB",X)
 .Q
 K ^TMP($J,"BHS")
 Q
 ;OLD STUFF
 ;S X=0 F  S X=$O(^TMP($J,"BHS","LAB",X)) Q:X'=+X  D
 ;.S Y=$P(^TMP($J,"BHS","LAB",X),U,1)
 ;.S ^TMP($J,"BHS1",9999999-Y,X)=^TMP($J,"BHS","LAB",X)
 ;.Q
 ;K ^TMP($J,"BHS")
 ;Q
LDATE S BHSIVD=$O(^AUPNVLAB("AA",BHSPAT,BHSLRT,0)) S BHSDFN=$O(^(BHSIVD,0)) D:BHSIVD&(BHSIVD'>GMTSDLM) LSET
 Q
LSET ;
 S BHSN=^AUPNVLAB(BHSDFN,0),BHSLR=$P(BHSN,U,4)
 I $P($G(^AUPNVLAB(BHSDFN,11)),U,9)="R",BHSLR="",$$VALI^XBDIQ1(60,$P(BHSN,U),999999901) Q  ;do not display tests that are resulted, result is null and flag says don't display
 ;IHS/MSC/MGH patch 13 change entered
 I BHSLR]"",BHSLR'="",$P(BHSN,U,5)]"" S BHSLR=BHSLR_" ("_$P(BHSN,U,5)_")"
 ;Added patch 3
 I BHSLR="",$P($G(^TMP($J,"BHS","LAB",BHSLRT)),U,2)]"" Q
 S ^TMP($J,"BHS","LAB",BHSLRT)=(-BHSIVD\1+9999999)_U_BHSLR_U_BHSDFN S BHSLTX=$P(^LAB(60,BHSLRT,0),U,1)
 Q
 ; <PRINT>
LPRT1 ;ALTERNATE ROUTE IHS/OKCAO/POC 1/20/00
 ;W ?52,"UNITS",?60,"REF RANGE",!
 W ?2,"TEST",?23,"RESULT DT/TIME",?39,"VISIT",?50,"RESULT",?60,"UNITS",?70,"REF RANGE",!
 S APCHDATE="" F  S APCHDATE=$O(^TMP($J,"BHS1",APCHDATE)) Q:APCHDATE=""!($D(GMTSQIT))  D LPRT11
 Q
LPRT11 ;
 S BHSACC="" F  S BHSACC=$O(^TMP($J,"BHS1",APCHDATE,BHSACC)) Q:BHSACC=""!($D(GMTSQIT))  D
 .S BHSPAR=0 F  S BHSPAR=$O(^TMP($J,"BHS1",APCHDATE,BHSACC,BHSPAR)) Q:BHSPAR'=+BHSPAR!($D(GMTSQIT))  D
 ..S APCHCHIL="" F  S APCHCHIL=$O(^TMP($J,"BHS1",APCHDATE,BHSACC,BHSPAR,APCHCHIL)) Q:APCHCHIL=""  D
 ...S BHSLT=$O(^TMP($J,"BHS1",APCHDATE,BHSACC,BHSPAR,APCHCHIL,0))
 ...S BHSDFN=$P(^TMP($J,"BHS1",APCHDATE,BHSACC,BHSPAR,APCHCHIL,BHSLT),U,3)
 ...S X=$P(^TMP($J,"BHS1",APCHDATE,BHSACC,BHSPAR,APCHCHIL,BHSLT),U,1),BHSLR=$P(^TMP($J,"BHS1",APCHDATE,BHSACC,BHSPAR,APCHCHIL,BHSLT),U,2) D REGDT4^GMTSU S BHSLTD=X
 ...D LPRT2
 K APCHCHIL,BHSPAR,BHSACC,BHSLT
 Q
LPRT2 ;
 S BHSLTX=$P(^LAB(60,BHSLT,0),U)
 S BHSRDT=$P($G(^AUPNVLAB(BHSDFN,12)),U,12) I BHSRDT]"" S BHSRDT=$$DATE^APCHSMU($P(BHSRDT,"."))_"@"_$P($P($$FMTE^XLFDT(BHSRDT),"@",2),":",1,2)
 D CKP^GMTSUP Q:$D(GMTSQIT)  I GMTSNPG W ?2,"TEST",?23,"RESULT DT/TIME",?39,"VISIT",?47,"RESULT",?60,"UNITS",?70,"REF RANGE",!
 W:APCHCHIL "  " W $E(BHSLTX,1,20),?23,BHSRDT,?39,BHSLTD,?50,BHSLR
 W ?60,$P($G(^AUPNVLAB(BHSDFN,11)),U)
 I $P($G(^AUPNVLAB(BHSDFN,11)),U)]"" W ?70,$P(^AUPNVLAB(BHSDFN,11),U,4)_"-"_$P(^AUPNVLAB(BHSDFN,11),U,5)
 ;Patch 3, enter comments
 S BHSX=0 F  S BHSX=$O(^AUPNVLAB(BHSDFN,21,BHSX)) Q:BHSX'=+BHSX!($D(GMTSQIT))  D
 .D CKP^GMTSUP Q:$D(GMTSQIT)
 .W !,?1,^AUPNVLAB(BHSDFN,21,BHSX,0)
 F BHSX=1:1:3 Q:$D(GMTSQIT)  I $P($G(^AUPNVLAB(BHSDFN,13)),U,BHSX)]"" D
 .D CKP^GMTSUP Q:$D(GMTSQIT)
 .W !,$P(^AUPNVLAB(BHSDFN,13),U,BHSX)
 W !
 Q
 ;
EKGLAB ;ENTRY POINT - EKG display in most recent lab panel
 Q:'$D(^AUPNVDXP("AC",BHSPAT))
 K BHS
 S BHSERR=$$START1^APCLDF(BHSPAT_"^LAST DIAGNOSTIC ECG SUMMARY","BHS(")
 G:BHSERR EKGLABX
 ; *array BHS(1)="DATE^RESULT^DIAG PROC^VDIAG PROCEDURE IEN^AUPNVDXP^VISIT IEN"
 K BHSERR
 S BHSIVD=$S($D(BHS(1)):9999999-$P($P(BHS(1),U,1),".",1),1:"")
 Q:'BHSIVD!(BHSIVD>GMTSDLM)
 S (BHSLTX,BHSLT)="EKG"
 S BHSLRT("EKG")=$P(BHS(1),U,1)_"^"_$P(BHS(1),U,2)
 D EKGPRT  ;                           computes/prints ekg info
EKGLABX ;
 K BHSERR,BHS(1)
 Q
 ;
EKGPRT ;computers/prints ekg info
 S X=$P(BHSLRT(BHSLT),U,1) D REGDT4^GMTSU S BHSLTD=X
 S BHSLR=$P(BHSLRT(BHSLT),U,2)
 S BHSLR=$S(BHSLR="N":"NORMAL",BHSLR="A":"ABNORMAL",BHSLR="B":"BORDERLINE",1:"<none recorded>") ;IHS/CMI/LAB added borderline
 S BHSLW=$S($G(BHSLW):BHSLW,1:28)
 W !,BHSLTX,?BHSLW,BHSLTD,"  ",BHSLR,!
 Q
 ;
