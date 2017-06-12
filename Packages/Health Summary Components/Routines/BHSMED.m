BHSMED ;IHS/CIA/MGH - Health Summary for V MED file ;01-May-2014 11:04;DU
 ;;1.0;HEALTH SUMMARY COMPONENTS;**1,2,3,6,8,9**;March 17, 2006;Build 16
 ;===================================================================
 ;Taken from APCHS7 routine
 ; IHS/TUCSON/LAB - PART 7 OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;16
 ;;2.0;IHS RPMS/PCC HEALTH SUMMARY;**1,6,9,10**;SEP 23, 1997
 ;Routines to use V MED components in the IHS health summaries
 ;Patch 1 changes prescribed at to dispensed at as in IHS patch 15
 ;Patch 2 changes for meds on hold and refusals
 ;Patch 3 changes wording of on hold
 ;Patch 6 changes for non-VA meds and medication review
MEDSCURR ; ************** CURRENT MEDICATIONS * 9000010.14 ********
 S BHSMTY="CURR" G CONT
MEDSALL ; **************** ALL MEDICATIONS * 9000010.14 **********
 S BHSMTY="ALL" G CONT
MEDSCHRN ; ************* CHRONIC MEDCICATIONS ************
 S BHSMTY="CHRONIC" G CONT
MEDSNDUP ; ************* ALL, NON DUPLICATED *************
 S BHSMTY="NODUP" G CONT
MEDSCHR1 ; ******* CHRONIC MEDICATIONS, W/O D/C'ED *******
 S BHSMTY="CHRONIC",BHSDCP=1 G CONT
 ;
CONT ; <SETUP>
 N BHSPAT,BHSQ
 S BHSPAT=DFN
 I '$D(^AUPNVMED("AC",BHSPAT)) S BHST="MEDICATION",BHSFN=50 D DISPREF^BHSRAD Q
 D CKP^GMTSUP Q:$D(GMTSQIT)
 ; <BUILD>
 K ^TMP($J,"BHSMTB"),^TMP($J,"BHSMTP")
 S BHSIVD=0 F BHSQ=0:0 S BHSIVD=$O(^AUPNVMED("AA",BHSPAT,BHSIVD)) Q:BHSIVD=""!(BHSIVD>GMTSDLM)  S BHSMX=0 F BHSQ=0:0 S BHSMX=$O(^AUPNVMED("AA",BHSPAT,BHSIVD,BHSMX)) Q:BHSMX=""  D MEDBLD
 D NONVA  ;Patch 6 get all NON-VA meds that didn't pass to PCC
 ; <DISPLAY>
 S BHSIVD=0 F BHSQ=0:0 S BHSIVD=$O(^TMP($J,"BHSMTP",BHSIVD)) Q:'BHSIVD  D MEDDSP
 ;Patch 2 display meds on hold
 D HOLDDSP
 ;Patch 2 med refusals
 S BHST="MEDICATION",BHSFN=50 D DISPREF^BHSRAD
 ;Patch 6
 D MEDRU  ;display last date reviewed/updated/nam
 K BHST,BHSFN
 ; <CLEANUP>
MEDX K BHSIVD,BHSMX,BHSMFX,BHSQTY,BHSIG,BHSSGY,BHSEXP,BHSMTS,BHSMED,BHSDTM,BHSDAT,BHSDYS,BHSN,BHSDC,BHSVDF,BHSP,APCHORTS,BHSDCP
 K BHSNFL,BHSNSH,BHSNAB,BHSVSC,BHSITE,BHSRX,BHSDRG,BHSCRN,BHSREF,BHSRFL,BHSALL,BHSTXT,BHSMTY,BHSORD
 K ^TMP($J,"BHSMTB"),^TMP($J,"BHSMTP")
 K X1,X2,X,Y,NIEN,RXNORM
 Q
MEDBLD ;BUILD ARRAY OF MEDICATIONS
 ;BHSDC=DATE DISCONTINUED,DYS=DAYS PRESCRIBED,SIG=DIRECTIONS
 ;VDF=VISIT FILE DATE
 Q:'$D(^AUPNVMED(BHSMX,0))
 S BHSN=^AUPNVMED(BHSMX,0)
 Q:'$D(^PSDRUG($P(BHSN,U,1)))
 S BHSDTM=-BHSIVD\1+9999999
 S BHSDC=$P(BHSN,U,8),BHSDYS=$P(BHSN,U,7),BHSMFX=$S($P(BHSN,U,4)="":+BHSN,1:$P(BHSN,U,4))
 S:BHSDYS="" BHSDYS=30
 D @BHSMTY
 Q
 ;
NONVA ;EP - ;NEW DFN,PSOACT S DFN=BHSPAT,PSOACT=1 D ^PSOHCSUM
 ;quit if chronic
 N L,D,N
 Q:BHSMTY="CHRONIC"
 S X=0 F  S X=$O(^PS(55,BHSPAT,"NVA",X)) Q:X'=+X  D
 .I $P($G(^PS(55,BHSPAT,"NVA",X,999999911)),U,1),$D(^AUPNVMED($P(^PS(55,BHSPAT,"NVA",X,999999911),U,1),0)) Q
 .S L=$P($P($G(^PS(55,BHSPAT,"NVA",X,0)),U,7),".")
 .S L=9999999-L
 .Q:L>GMTSDLM
 .S D=$P(^PS(55,BHSPAT,"NVA",X,0),U,2)
 .I D="" S D="NO DRUG IEN"
 .S N=$S(D:$P(^PSDRUG(D,0),U,1),1:$P(^PS(50.7,$P(^PS(55,BHSPAT,"NVA",X,0),U,1),0),U,1))
 .S ^TMP($J,"BHSMTP",L_"-"_N)=U_$P(^PS(55,BHSPAT,"NVA",X,0),U,6)_U_N_U_$P(^PS(55,BHSPAT,"NVA",X,0),U,4)_" "_$P(^PS(55,BHSPAT,"NVA",X,0),U,5)_U_$P(^PS(55,BHSPAT,"NVA",X,0),U,7)_U_X
 .S ^TMP($J,"BHSMTB",N)=$P(^PS(55,BHSPAT,"NVA",X,0),U,6)
 Q
CURR ; current meds only
 I $D(^TMP($J,"BHSMTB",BHSMFX)),^TMP($J,"BHSMTB",BHSMFX)="" Q
 S X1=DT,X2=BHSDTM D ^%DTC Q:X>60&(X>(2*BHSDYS))
 S ^TMP($J,"BHSMTB",BHSMFX)=BHSDC,^TMP($J,"BHSMTP",BHSIVD_"-"_BHSMFX)=BHSMX
 Q
ALL ;all meds included
 S ^TMP($J,"BHSMTB",BHSMFX)=BHSDC,^TMP($J,"BHSMTP",BHSIVD_"-"_BHSMFX)=BHSMX
 ;
 Q
NODUP ;
 I $D(^TMP($J,"BHSMTB",BHSMFX)) Q
 S ^TMP($J,"BHSMTB",BHSMFX)=BHSDC,^TMP($J,"BHSMTP",BHSIVD_"-"_BHSMFX)=BHSMX
 Q
CHRONIC ;chronic meds only
 I $D(^TMP($J,"BHSMTB",BHSMFX)) Q
 S X=$S($D(^PSRX("APCC",BHSMX)):$O(^(BHSMX,0)),1:0)
 S Y=$S(+X:$D(^PS(55,BHSPAT,"P","CP",X)),1:0)
 Q:'Y
 I $G(BHSDCP),BHSDC]"" Q  ;IHS/CMI/LAB - new component patch 9
 S ^TMP($J,"BHSMTB",BHSMFX)=BHSDC,^TMP($J,"BHSMTP",BHSIVD_"-"_BHSMFX)=BHSMX
 Q
MEDDSP ;DISPLAY MEDICATION
 ;BHSRX=RX# in FILE 52,CHRN=CHRONIC FLAG,REF=#REFILLS
 S BHSMX=^TMP($J,"BHSMTP",BHSIVD)
 I $P(BHSMX,U,1)="" D NVADSP Q
 S BHSN=^AUPNVMED(BHSMX,0)
 S BHSRX=$S($D(^PSRX("APCC",BHSMX)):$O(^(BHSMX,0)),1:0)
 S BHSCRN=$S(+BHSRX:$D(^PS(55,BHSPAT,"P","CP",BHSRX)),1:0)
 S (X,BHSDTM)=-BHSIVD\1+9999999 D REGDT4^GMTSU S BHSDAT=X
 S BHSDC=$P(BHSN,U,8),BHSDYS=$P(BHSN,U,7),BHSQTY=$P(BHSN,U,6),BHSIG=$P(BHSN,U,5),BHSVDF=$P(BHSN,U,3),BHSMFX=+BHSN
 S:BHSDYS="" BHSDYS=30
 S X1=DT,X2=BHSDTM D ^%DTC ;Q:X>60&(X>(2*BHSDYS))
 S BHSEXP=""
 I X>BHSDYS S X1=BHSDTM,X2=BHSDYS D C^%DTC D REGDT4^GMTSU S BHSEXP="-- Ran out "_X
 S BHSMED=$S($P(BHSN,U,4)="":$P(^PSDRUG(BHSMFX,0),U,1),1:$P(BHSN,U,4))
 I BHSDC S X=BHSDC D REGDT4^GMTSU S BHSEXP="-- D/C "_X
 ;CHANGE IT AROUND A BIT LOOK FOR RETURNED TO STOCK IHS/OKCAO/POC 2/14/2000
 S APCHORTS=$G(^AUPNVMED(BHSMX,11))
 I APCHORTS["RETURNED TO STOCK",BHSDC S BHSEXP="--RTS "_X
 ;END OF LOCAL CHANGES IHS/OKCAO/POC 2/14/2000
 D SIG S BHSIG=BHSSGY
 D REF I BHSREF S BHSIG=BHSIG_" "_BHSREF_$S(BHSREF=1:" refill",1:" refills")_" left."
 D SITE ;I BHSITE]"" S BHSIG=BHSIG_"  ["_BHSITE_"]"
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W BHSDAT,?10,$S(BHSCRN:"(C)",1:""),?14,BHSMED," #",BHSQTY," (",BHSDYS," days) ",BHSEXP,!
 ;Patch 8 Add Rxnorm code here
 S RXNORM=$$GET1^DIQ(50,BHSMFX,9999999.27)
 I RXNORM'="" W ?14,"RxNorm: ",RXNORM,!
 I BHSITE]"" W ?14,"Dispensed at: ",BHSITE,!
 D CKP^GMTSUP Q:$D(GMTSQIT)
 S BHSICL=14,BHSNRQ="",BHSTXT=BHSIG D PRTTXT^BHSUTL K BHSICL,BHSNRQ,BHSP
 S BHSORD=$$GET1^DIQ(52,BHSRX,39.3,"I")
 I BHSORD="" D
 .N NVA
 .S NVA=+$P(APCHORTS,U,8)
 .I NVA'="" S BHSORD=$P($G(^PS(55,DFN,"NVA",NVA,0)),U,8)
 D RECON(BHSORD,"M")
 Q
RECON(RX,TYP) ;Get last date reconciled
 N REC,IEN,AIEN,WHEN,BY
 Q:RX=""
 S REC=""
 S REC=$O(^BEHOCIR("G",TYP,RX,REC),-1) Q:REC=""  D
 .S IEN="" S IEN=$O(^BEHOCIR("G",TYP,RX,REC,IEN),-1) Q:IEN=""  D
 ..S AIEN=IEN_","_REC_","
 ..S WHEN=$$GET1^DIQ(90461.632,AIEN,.01)
 ..S BY=$$GET1^DIQ(90461.632,AIEN,.02)
 ..W ?14,"Reconciled on: "_WHEN_" by "_BY,!
 Q
NVADSP ;
 S BHSEXP=""
 S (X,BHSDTM)=-BHSIVD\1+9999999 D REGDT4^GMTSU S BHSDAT=X
 S BHSDC=$P(^TMP($J,"BHSMTP",BHSIVD),U,5)
 S BHSMED=$P(^TMP($J,"BHSMTP",BHSIVD),U,3)
 I BHSDC S Y=BHSDC D REGDT4^GMTSU S BHSEXP="-- D/C "_Y
 S BHSIG=$P(^TMP($J,"BHSMTP",BHSIVD),U,4)
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W BHSDAT,?14,BHSMED,"  ",BHSEXP,!
 D CKP^GMTSUP Q:$D(GMTSQIT)
 S BHSICL=14,BHSNRQ="",BHSTXT=BHSIG_"  (EHR OUTSIDE MEDICATION)" D PRTTXT^BHSUTL K BHSICL,BHSNRQ,BHSP
 S NIEN=$P(^TMP($J,"BHSMTP",BHSIVD),U,6)
 D RECON(NIEN,"M")
 Q
 ;
 ;
SIG ;CONSTRUCT THE FULL TEXT FROM THE ENCODED SIG
 ;I $$VALI^XBDIQ1(9001015,GMTSTYP,3.5)="S" S BHSSGY=BHSIG Q
 S BHSSGY="" F BHSP=1:1:$L(BHSIG," ") S X=$P(BHSIG," ",BHSP) I X]"" D
 . S Y=$O(^PS(51,"B",X,0)) I Y>0 S X=$P(^PS(51,Y,0),"^",2) I $D(^(9)) S Y=$P(BHSIG," ",BHSP-1),Y=$E(Y,$L(Y)) S:Y>1 X=$P(^(9),"^",1)
 . S BHSSGY=BHSSGY_X_" "
 Q
 ;
REF ;DETERMINE THE NUMBER OF REFILLS REMAINING
 I 'BHSRX S BHSREF=0 Q
 S BHSRFL=$P($G(^PSRX(BHSRX,0)),U,9) S BHSREF=0 F  S BHSREF=$O(^PSRX(BHSRX,1,BHSREF)) Q:'BHSREF  S BHSRFL=BHSRFL-1
 S BHSREF=BHSRFL
 Q
 ;
SITE ;DETERMINE IF OUTSIDE LOCATION INFO PRESENT
 S BHSITE=""
 I $D(^AUPNVSIT(BHSVDF,21))#2 S BHSITE=$P(^(21),U) Q
 Q:$P(^AUPNVSIT(BHSVDF,0),U,6)=""
 I $P(^AUPNVSIT(BHSVDF,0),U,6)'=DUZ(2) S BHSITE=$E($P(^DIC(4,$P(^AUPNVSIT(BHSVDF,0),U,6),0),U),1,30)
 Q
HOLDMEDS(P,R) ;EP - get meds on hold for display
 ;return array of med iens of all meds for this patient that are on hold
 I '$G(P) Q
 NEW D,C,N
 S D=DT
 F  S D=$O(^PS(55,P,"P","A",D)) Q:D'=+D  D
 .S N=0 F  S N=$O(^PS(55,P,"P","A",D,N)) Q:'N  D
 ..Q:'$$HOLD(N)
 ..S R(N)=""
 ..Q
 Q
HOLD(S) ;EP - is this prescription on hold?
 NEW X
 S X=$P($G(^PSRX(S,"STA")),U,1)
 I X=3 Q 1
 I X=5 Q 1
 I X=16 Q 1
 ;version 6
 S X=$P($G(^PSRX(S,0)),U,15)
 I X=3 Q 1
 I X=5 Q 1
 I X=16 Q 1
 Q 0
 ;
HOLDDSP ;EP - display all meds on hold
 K BHHMED
 D HOLDMEDS(BHSPAT,.BHHMED)
 Q:'$D(BHHMED)
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W !,"The following medications have been processed in the Pharmacy "
 W !,"system, but are currently active but not dispensed:",!,!
 S BHSRX=0 F  S BHSRX=$O(BHHMED(BHSRX)) Q:BHSRX'=+BHSRX!($D(GMTSQIT))  D
 .D HOLDDSP1
 .Q
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W !,"Medications may be on hold for several reasons including: Too early"
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W !,"for refill, patient has sufficient amount on hand,pharmacy resolving issue"
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W !,"with prescriber, etc. Contact Pharmacy staff for details or view "
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W !,"prescription details in Pharmacy system.",!
 K BHHMED
 Q
HOLDDSP1 ;write out med
 S BHSCRN=$S(+BHSRX:$D(^PS(55,BHSPAT,"P","CP",BHSRX)),1:0)
 S (X,BHSDTM)=$P(^PSRX(BHSRX,0),U,13) D REGDT4^GMTSU S BHSDAT=X  ;issu
 S BHSDYS=$P(^PSRX(BHSRX,0),U,8)
 S BHSQTY=$P(^PSRX(BHSRX,0),U,7)
 S BHSIG=$P(^PSRX(BHSRX,0),U,10)
 D SIG S BHSIG=BHSSGY
 D REF I BHSREF S BHSIG=BHSIG_" "_BHSREF_$S(BHSREF=1:" refill",1:" refills")_" left."
 ;D SITE ;I APCHSITE]"" S APCHSIG=APCHSIG_"  ["_APCHSITE_"]"
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W BHSDAT,?10,$S(BHSCRN:"(C)",1:""),?14,$$VAL^XBDIQ1(52,BHSRX,6)," #",BHSQTY," (",BHSDYS," days) ",!
 ;I APCHSITE]"" W ?14,"Dispensed at: ",APCHSITE,!
 D CKP^GMTSUP Q:$D(GMTSQIT)
 S BHSICL=14,BHSNRQ="",BHSTXT=BHSIG D PRTTXT^BHSUTL
 K BHSICL,BHSNRQ,BHSP
 W ?14,"Ordering Provider: ",$$VAL^XBDIQ1(52,BHSRX,4),!
 D CKP^GMTSUP Q:$D(GMTSQIT)
 S BHSTXT=$$VAL^XBDIQ1(52,BHSRX,100)_" Reason: "_$$VAL^XBDIQ1(52,BHSRX,99)_" - "_$$VAL^XBDIQ1(52,BHSRX,99.1)_" ("_$$VAL^XBDIQ1(52,BHSRX,99.2)_")",BHSICL=14,BHSNRQ=""
 D PRTTXT^BHSUTL K BHSICL,BHSNRQ,BHSP
 Q
MEDRU ;EP
 ;get date last reviewed and display
 N BHSX
 S BHSX=$$LASTMLR^APCLAPI6(BHSPAT,,DT,"A")
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W !,"Medication List Reviewed On: ",?36,$$FMTE^XLFDT($P(BHSX,U,1)) W ?51,"By: ",?56,$E($S($P(BHSX,U,3):$P($G(^VA(200,$P(BHSX,U,3),0)),U),1:""),1,22),!
 S BHSX=$$LASTMLU^APCLAPI6(BHSPAT,,DT,"A")
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W "Medication List Updated On: ",?36,$$FMTE^XLFDT($P(BHSX,U,1)) W ?51,"By: ",?56,$E($S($P(BHSX,U,3):$P($G(^VA(200,$P(BHSX,U,3),0)),U),1:""),1,22),!
 S BHSX=$$LASTNAM^APCLAPI6(BHSPAT,,DT,"A")
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W "No Active Medications Documented On: ",?36,$$FMTE^XLFDT($P(BHSX,U,1)) W ?51,"By: ",?56,$E($S($P(BHSX,U,3):$P($G(^VA(200,$P(BHSX,U,3),0)),U),1:""),1,22),!
 Q
