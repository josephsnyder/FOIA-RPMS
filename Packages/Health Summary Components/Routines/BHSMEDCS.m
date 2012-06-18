BHSMEDCS ;IHS/MSC/MGH - Health summary V Meds controlled substances;04-Aug-2011 14:24;MGH
 ;;1.0;HEALTH SUMMARY COMPONENTS;**3,6**;March 17, 2006;Build 5
 ; IHS/CMI/LAB - PART 7 OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ; Patch 6 for non-VA and medical review
 ;
MEDSNDUP ; ************* ALL, NON DUPLICATED *************
 N BHSPAT,X,Y,Z
 S BHSMTY="NODUP"
 S BHSPAT=DFN
 ;
CONT ; <SETUP>
 Q:'$D(^AUPNVMED("AC",BHSPAT))
 D CKP^GMTSUP Q:$D(GMTSQIT)
 ; <BUILD>
 K ^TMP($J,"BHSMED")
 S BHSIVD=0 F  S BHSIVD=$O(^AUPNVMED("AA",BHSPAT,BHSIVD)) Q:BHSIVD=""!(BHSIVD>GMTSDLM)  S BHSMX=0 F  S BHSMX=$O(^AUPNVMED("AA",BHSPAT,BHSIVD,BHSMX)) Q:BHSMX=""  D
 .S M=+^AUPNVMED(BHSMX,0)
 .Q:'$D(^PSDRUG(M,0))
 .Q:'$$CS(M)  ;controlled substances only
 .S $P(^TMP($J,"BHSMED",M),U)=$P($G(^TMP($J,"BHSMED",M)),U)+1
 .S X=$P(^TMP($J,"BHSMED",M),U)
 .I X<99 S $P(^TMP($J,"BHSMED",M),U,(X+1))=$$FMTE^XLFDT((9999999-BHSIVD),5)_";"_$$VAL^XBDIQ1(9000010.14,BHSMX,1202)_";"_$$VAL^XBDIQ1(9000010,$P(^AUPNVMED(BHSMX,0),U,3),.06)
 K ^TMP($J,"BHSMTB"),^TMP($J,"BHSMTP"),^TMP($J,"BHSNO")
 S BHSIVD=0 F BHSQ=0:0 S BHSIVD=$O(^AUPNVMED("AA",BHSPAT,BHSIVD)) Q:BHSIVD=""!(BHSIVD>GMTSDLM)  S BHSMX=0 F BHSQ=0:0 S BHSMX=$O(^AUPNVMED("AA",BHSPAT,BHSIVD,BHSMX)) Q:BHSMX=""  D MEDBLD
 D NONVA^BHSMED    ;Get outside meds not in PCC
 ; <DISPLAY>
 ;REBUILD LIST BY NAME (TRADE OR GENERIC) AND DATE
 S (BHSIVD,BHSCC,BHSCRX)=0 F BHSQ=0:0 S BHSIVD=$O(^TMP($J,"BHSMTP",BHSIVD)) Q:'BHSIVD  I $P(^TMP($J,"BHSMTP",BHSIVD),U,2)="C",$P(^TMP($J,"BHSMTP",BHSIVD),U,3)=0 D
 .S BHSCC=BHSCC+1 D MEDDSP
 S (BHSIVD)=0 F BHSQ=0:0 S BHSIVD=$O(^TMP($J,"BHSMTP",BHSIVD)) Q:'BHSIVD  I $P(^TMP($J,"BHSMTP",BHSIVD),U,2)="C",$P(^TMP($J,"BHSMTP",BHSIVD),U,3)=1 D
 .S BHSCC=BHSCC+1 D MEDDSP
 S (BHSIVD,BHSCC)=0 F BHSQ=0:0 S BHSIVD=$O(^TMP($J,"BHSMTP",BHSIVD)) Q:'BHSIVD  I $P(^TMP($J,"BHSMTP",BHSIVD),U,2)'="C",$P(^TMP($J,"BHSMTP",BHSIVD),U,3)=0 D
 .S BHSCC=BHSCC+1 D MEDDSP
 S (BHSIVD)=0 F BHSQ=0:0 S BHSIVD=$O(^TMP($J,"BHSMTP",BHSIVD)) Q:'BHSIVD  I $P(^TMP($J,"BHSMTP",BHSIVD),U,2)'="C",$P(^TMP($J,"BHSMTP",BHSIVD),U,3)=1 D
 .S BHSCC=BHSCC+1 D MEDDSP
 ;CLEANUP
 ;Patch 6
 D MEDRU^BHSMED  ;display last date reviewed/updated/nam
 K BHST,BHSFN
MEDX K BHSIVD,BHSMX,BHSMFX,BHSQTY,BHSIG,BHSSGY,BHSEXP,BHSMTS,BHSMED,BHSDTM,BHSDAT,BHSDYS,BHSN,BHSDC,BHSVDF,BHSP,BHSNON,BHSDLU,BHSIEN
 K BHSNFL,BHI,BHSNSH,BHSNAB,BHSVSC,BHSITE,BHSRX,BHSDRG,BHSCRN,BHSREF,BHSRFL,BHSALL,BHSTXT,BHSMTY,BHSALT,BHSCRX,BHSCHR,BHSQ,M,Z,BHEXPD
 K ^TMP($J,"BHSMTB"),^TMP($J,"BHSMTP"),^TMP($J,"BHSNO"),^TMP($J,"BHSMED")
 K X1,X2,X,Y,BHSCC
 Q
MEDBLD ;BUILD ARRAY OF MEDICATIONS
 ;APCHSDC=DATE DISCONTINUED,DYS=DAYS PRESCRIBED,SIG=DIRECTIONS
 ;VDF=VISIT FILE DATE
 Q:'$D(^AUPNVMED(BHSMX,0))
 S BHSN=^AUPNVMED(BHSMX,0)
 Q:'$D(^PSDRUG($P(BHSN,U,1)))
 Q:'$$CS($P(BHSN,U,1))
 S BHSDTM=-BHSIVD\1+9999999
 S BHSDC=$P(BHSN,U,8),BHSDYS=$P(BHSN,U,7),BHSMFX=$S($P(BHSN,U,4)="":+BHSN,$P(BHSN,U,4)=$P(^PSDRUG(+BHSN,0),U):+BHSN,1:$P(BHSN,U,4)),BHSCHR=$$CHRONIC^BHSMEDG(BHSMX),BHSCHR=$S(BHSCHR=1:"C",1:"Z")
 S BHSCRX=$$CS($P(BHSN,U))
 D @BHSMTY
 Q
NODUP ;
 ;I $D(^TMP($J,"APCHSMTB",APCHSMFX)) Q
 ;S X="" F  S X=$O(^TMP($J,"APCHSMTP",X)) Q:X=""  I $P(X,"-",2)=APCHSMFX K ^TMP($J,"APCHSMTP",X)
 I $D(^TMP($J,"BHSMTP",BHSIVD_"-"_BHSMFX)) S ^TMP($J,"BHSMTP",BHSIVD_"-"_BHSMFX)=BHSMX_"^"_BHSCHR_"^"_BHSCRX
 I $D(^TMP($J,"BHSMTB",BHSMFX)) Q
 S ^TMP($J,"BHSMTB",BHSMFX)=BHSDC,^TMP($J,"BHSMTP",BHSIVD_"-"_BHSMFX)=BHSMX_"^"_BHSCHR_"^"_BHSCRX
 Q
MEDDSP ;DISPLAY MEDICATION
 ;APCHSRX=RX# in FILE 52,CHRN=CHRONIC FLAG,REF=#REFILLS
 S BHSMX=$P(^TMP($J,"BHSMTP",BHSIVD),U)
 I 'BHSMX D NVADSP Q
 S BHSCRX=$P(^TMP($J,"BHSMTP",BHSIVD),U,3)
 S BHSN=^AUPNVMED(BHSMX,0)
 S BHSIEN=+BHSN
 S BHSRX=$S($D(^PSRX("APCC",BHSMX)):$O(^(BHSMX,0)),1:0)
 S BHSCRN=$S(+BHSRX:$D(^PS(55,BHSPAT,"P","CP",BHSRX)),1:0)
 S (X,BHSDTM)=-BHSIVD\1+9999999 D REGDT4^GMTSU S BHSDAT=X
 S BHSDC=$P(BHSN,U,8),BHSDYS=$P(BHSN,U,7),BHSQTY=$P(BHSN,U,6),BHSIG=$P(BHSN,U,5),BHSVDF=$P(BHSN,U,3),BHSMFX=+BHSN
 S X1=DT,X2=BHSDTM D ^%DTC ;Q:X>60&(X>(2*BHSDYS))
 S BHSEXP=""
 S BHSMED=$S($P(BHSN,U,4)="":$P(^PSDRUG(BHSMFX,0),U,1),1:$P(BHSN,U,4))
 S BHSALT=$P($G(^AUPNVMED(BHSMX,12)),U,12)  ;IHS/CMI/GRL
 S BHEXPD=$$VALI^XBDIQ1(52,BHSRX,26) S BHEXPD=$$FMTE^XLFDT(BHEXPD,5)
 I BHSDC S X=BHSDC D REGDT4^GMTSU S BHSEXP="-- D/C "_X
 D SIG S BHSIG=BHSSGY
 D REF I BHSREF S BHSIG=BHSIG_" "_BHSREF_$S(BHSREF=1:" refill",1:" refills")_" left."
 D SITE
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W BHSDAT,?10,?14,BHSMED W:BHSQTY " #",BHSQTY
 W:BHSDYS " (",BHSDYS," days) " W BHSEXP
 I BHEXPD]"" W "(expires "_BHEXPD_")"
 W !
 I BHSITE]"" W ?14,"Dispensed at: ",BHSITE,!
 I $G(BHSALT)]"" I $E($G(BHSALT),1,6)'=$E($G(BHSMED),1,6) W ?14,"("_BHSALT_")",!  ;IHS/CMI/GRL
 D CKP^GMTSUP Q:$D(GMTSQIT)
 S BHSICL=14,BHSNRQ="",BHSTXT="  "_BHSIG D PRTTXT^BHSUTL K BHSICL,BHSNRQ,BHSP
 S Y=$P(^TMP($J,"BHSMED",BHSIEN),U)
 Q:Y<2
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W ?16,"Previous fill dates:",!
 F BHI=3:1 Q:$P($G(^TMP($J,"BHSMED",BHSIEN)),U,BHI)=""  D
 .D CKP^GMTSUP Q:$D(GMTSQIT)
 .W ?16,$P($P($G(^TMP($J,"BHSMED",BHSIEN)),U,BHI),";",1)
 .W ?27,$P($P($G(^TMP($J,"BHSMED",BHSIEN)),U,BHI),";",2)
 .W ?57,$P($P($G(^TMP($J,"BHSMED",BHSIEN)),U,BHI),";",3),!
 W !
 Q
 ;
SIG ;CONSTRUCT THE FULL TEXT FROM THE ENCODED SIG
 S BHSSGY="" F BHSP=1:1:$L(BHSIG," ") S X=$P(BHSIG," ",BHSP) I X]"" D
 . S Y=$O(^PS(51,"B",X,0)) I Y>0 S X=$P(^PS(51,Y,0),"^",2) I $D(^(9)) S Y=$P(BHSIG," ",BHSP-1),Y=$E(Y,$L(Y)) S:Y>1 X=$P(^(9),"^",1)
 . S BHSSGY=BHSSGY_X_" "
 Q
 ;
REF ;DETERMINE THE NUMBER OF REFILLS REMAINING
 I 'BHSRX S BHSREF=0 Q
 S BHSRFL=$P(^PSRX(BHSRX,0),U,9) S BHSREF=0 F  S BHSREF=$O(^PSRX(BHSRX,1,BHSREF)) Q:'BHSREF  S BHSRFL=BHSRFL-1
 S BHSREF=BHSRFL
 Q
 ;
 ;
SITE ;DETERMINE IF OUTSIDE LOCATION INFO PRESENT
 S BHSITE=""
 I $D(^AUPNVSIT(BHSVDF,21))#2 S BHSITE=$P(^(21),U) Q
 Q:$P(^AUPNVSIT(BHSVDF,0),U,6)=""
 I $P(^AUPNVSIT(BHSVDF,0),U,6)'=DUZ(2) S BHSITE=$E($P(^DIC(4,$P(^AUPNVSIT(BHSVDF,0),U,6),0),U),1,30)
 Q
 ;
CS(D) ;
 I $P(^PSDRUG(D,0),U,3)="" Q 0
 NEW Y S Y=$P(^PSDRUG(D,0),U,3)
 ;I Y[1 Q 1
 I Y[2 Q 1
 I Y[3 Q 1
 I Y[4 Q 1
 I Y[5 Q 1
 ;I Y["C" Q 1
 ;I Y["A" Q 1
 Q 0
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
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
 Q
