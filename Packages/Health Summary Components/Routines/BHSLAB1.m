BHSLAB1 ;IHS/CIA/MGH - Health Summary for V LAB file ;12-Feb-2008 15:25;MGH
 ;;1.0;HEALTH SUMMARY COMPONENTS;**1,2**;March 17, 2006
 ;===================================================================
 ;Most recent labs for VA health summary from IHS V LABs
 ;Taken from APCHS3A
 ; IHS/TUCSON/LAB - PART 3A OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS RPMS/PCC Health Summary;**3,9**;JUN 24, 1997
 ;IHS/MSC/MGH Patch 13 changes included
 ;Patch 6 includes patch 16 changes
MRL ; ******************** MOST RECENT LAB * 9000010.09 *******
 N BHSPAT,BHSQ
 S BHSPAT=DFN
 I '$D(^AUPNVLAB("AA",BHSPAT)) D EKGLAB G MRLX
 D CKP^GMTSUP Q:$D(GMTSQIT)
 ; <SETUP>
 ; <PROCESS>
 D LBLD,LPRT
 D EKGLAB
 ;now display lab refusals
 S BHST="LAB",BHSFN=60 D DISPREF^BHSRAD
 K BHST,BHSFN
 ; <CLEANUP>
MRLX K BHSLT,BHSLR,BHSLTX,BHSLRT,BHSLL,BHSLW,BHSNMX,BHSDFN,BHSIVD,BHSLTD,BHSN,Y
 K ^TMP($J,"BHS"),^TMP($J,"BHS1")
 Q
 ; <BUILD>
LBLD K ^TMP($J,"BHS","LAB"),^TMP($J,"BHS1")
 S BHSLRT="" F BHSQ=0:0 S BHSLRT=$O(^AUPNVLAB("AA",BHSPAT,BHSLRT)) Q:BHSLRT=""  D LDATE
 D REORDER
 Q
REORDER ;reorder by accession, parent and child
 N %,%1,%2,X
 S X=0 F  S X=$O(^TMP($J,"BHS","LAB",X)) Q:X'=+X  D
 .S Y=$P(^TMP($J,"BHS","LAB",X),U,3)
 .S %=$E($P(^AUPNVLAB(Y,0),U,6),1,2) S:%="" %="ZZ"
 .S %1=$S($P($G(^AUPNVLAB(Y,12)),U,8)]"":$P(^AUPNVLAB(Y,12),U,8),1:Y)
 .S %2=$S($P($G(^AUPNVLAB(Y,12)),U,8)="":0,1:Y)
 .S ^TMP($J,"BHS1",%,%1,%2,X)=^TMP($J,"BHS","LAB",X)
 .Q
 K ^TMP($J,"BHS")
 Q
LDATE S BHSIVD=$O(^AUPNVLAB("AA",BHSPAT,BHSLRT,0))
 S BHSDFN=0 F  S BHSDFN=$O(^AUPNVLAB("AA",BHSPAT,BHSLRT,BHSIVD,BHSDFN)) Q:BHSDFN'=+BHSDFN   D
 .D:BHSIVD&(BHSIVD'>GMTSDLM) LSET
 Q
LSET ;
 S BHSN=^AUPNVLAB(BHSDFN,0),BHSLR=$P(BHSN,U,4)
 I $P($G(^AUPNVLAB(BHSDFN,11)),U,9)="R",BHSLR="",$$VALI^XBDIQ1(60,$P(BHSN,U),999999901) Q  ;do not display tests that are resulted, result is null and flag says don't display
 ;IHS/MSC/MGH Patch 13 mod
 I BHSLR]"",BHSLR'=" ",$P(BHSN,U,5)]"" S BHSLR=BHSLR_" ("_$P(BHSN,U,5)_")"
 I BHSLR="",$P($G(^TMP($J,"BHS","LAB",BHSLRT)),U,2)]"" Q
 S ^TMP($J,"BHS","LAB",BHSLRT)=(-BHSIVD\1+9999999)_U_BHSLR_U_BHSDFN S BHSLTX=$P(^LAB(60,BHSLRT,0),U,1)
 Q
 ; <PRINT>
LPRT ;
 W ?55,"UNITS",?64,"REF RANGE",!
 S BHSACC="" F  S BHSACC=$O(^TMP($J,"BHS1",BHSACC)) Q:BHSACC=""!($D(GMTSQIT))  D
 .S BHSPAR=0 F  S BHSPAR=$O(^TMP($J,"BHS1",BHSACC,BHSPAR)) Q:BHSPAR'=+BHSPAR!($D(GMTSQIT))  D
 ..S APCHCHIL="" F  S APCHCHIL=$O(^TMP($J,"BHS1",BHSACC,BHSPAR,APCHCHIL)) Q:APCHCHIL=""  D
 ...S BHSLT=$O(^TMP($J,"BHS1",BHSACC,BHSPAR,APCHCHIL,0))
 ...S BHSDFN=$P(^TMP($J,"BHS1",BHSACC,BHSPAR,APCHCHIL,BHSLT),U,3)
 ...S X=$P(^TMP($J,"BHS1",BHSACC,BHSPAR,APCHCHIL,BHSLT),U,1),BHSLR=$P(^TMP($J,"BHS1",BHSACC,BHSPAR,APCHCHIL,BHSLT),U,2) D REGDT4^GMTSU S BHSLTD=X
 ...D LPRT2
 K APCHCHIL,BHSPAR,BHSACC,BHSLT
 Q
LPRT2 ;
 S BHSLTX=$P(^LAB(60,BHSLT,0),U)
 D CKP^GMTSUP Q:$D(GMSQIT)  I GMTSNPG W ?55,"UNITS",?64,"REF RANGE",!
 W:APCHCHIL "  " W BHSLTX,?35,BHSLTD,?45,BHSLR
 W ?55,$P($G(^AUPNVLAB(BHSDFN,11)),U)
 I $P($G(^AUPNVLAB(BHSDFN,11)),U)]"" W ?64,$P(^AUPNVLAB(BHSDFN,11),U,4)_"-"_$P(^AUPNVLAB(BHSDFN,11),U,5)
 W ?78," ",$P($G(^AUPNVLAB(BHSDFN,11)),U,9)
 W !
 Q
 ;
EKGLAB ;ENTRY POINT - EKG display in most recent lab panel
 Q:'$D(^AUPNVDXP("AC",BHSPAT))
 K BHS
 S BHSERR=$$^APCLDF(BHSPAT_"^LAST DIAGNOSTIC ECG SUMMARY","BHS(")
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
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W !,BHSLTX,?BHSLW,BHSLTD,"  ",BHSLR,!
 Q
 ;
