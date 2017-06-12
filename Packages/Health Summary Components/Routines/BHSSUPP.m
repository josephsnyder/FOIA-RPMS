BHSSUPP ;IHS/CIA/MGH - Health Summary for Supplements ;22-Apr-2014 09:37;DU
 ;;1.0;HEALTH SUMMARY COMPONENTS;**2,4,9**;March 17, 2006;Build 16
 ;===================================================================
 ;Taken from APCHS9A
 ; IHS/TUCSON/LAB - PART 9 OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS RPMS/PCC Health Summary;**9,10**;JUN 24, 1997
 ;VA version of IHS components for supplemental summaries
 ;Patch 2 code set versioning
 ;------------------------------------------------------------
SUPP ;EP - supplements
 N BHSPAT,BHSC1,BHSC2,BHSCI,BHSCM,BHSP,BHSPI,BHSNYR,BHSBD,BHSNVN,BHSUPI
 S BHSPAT=DFN
 D CKP^GMTSUP Q:$D(GMTSQIT)
 S BHSFOR=0 F  S BHSFOR=$O(GMTSEG(GMTSEGN,90471,BHSFOR)) Q:BHSFOR'=+BHSFOR!($D(GMTSQIT))  D  Q:$D(GMTSQIT)
 .S BHSUPI=$G(GMTSEG(GMTSEGN,90471,BHSFOR))
 .Q:BHSUPI=""
 .Q:'$D(^BHS(90471,BHSUPI))
 .Q:$G(^BHS(90471,BHSUPI,1))=""
 .D SUPPCHK
 .Q:'BHSFOK
 .X ^BHS(90471,BHSUPI,1)
EOJ ;
 K BHSFOK,BHSFOR,BHSUPI,BHSCNT
 Q
SUPPCHK ; <SCREEN>
 I '$O(^BHS(90471,BHSUPI,3,0)) S BHSFOK=1 Q
 S BHSFOK=0
 ;Q:'$O(^AUPNPROB("AC",BHSPAT,0))
 F BHSPI=0:0 S BHSPI=$O(^AUPNPROB("AC",BHSPAT,BHSPI)) Q:'BHSPI  D SUPPCP Q:BHSFOK
 Q:BHSFOK
PVCH ;IHS/CMI/LAB - now check for dx in past year per Bill and Charlton by pcp
 N X,Y,V,D,E,%
 K APCHY,APCHV,^TMP($J,"ALL VISITS")
 S BHSNVN=$S($P($G(^APCHSITE(DUZ(2),11,BHSUPI,0)),U,2):$P($G(^APCHSITE(DUZ(2),11,BHSUPI,0)),U,2),1:1)
 S BHSNYR=$S($P($G(^APCHSITE(DUZ(2),11,BHSUPI,0)),U,3):$P($G(^APCHSITE(DUZ(2),11,BHSUPI,0)),U,3),1:1)
 S BHSNYR=BHSNYR*365
 S BHSBD=$$FMADD^XLFDT(DT,-(BHSNYR))
 S APCHY="^TMP($J,""ALL VISITS"",",%=BHSPAT_"^ALL VISITS;DURING "_$$FMTE^XLFDT($$FMADD^XLFDT(DT,-365))_"-"_$$FMTE^XLFDT(DT),E=$$START1^APCLDF(%,APCHY)
 I '$D(^TMP($J,"ALL VISITS",1)) Q
 S (X,BHSCNT,BHSFOK)=0 F  S X=$O(^TMP($J,"ALL VISITS",X)) Q:X'=+X!(BHSFOK)  S V=$P(^TMP($J,"ALL VISITS",X),U,5) D
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"DAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:'$D(^AUPNVPRV("AD",V))
 .Q:'$D(^AUPNVPOV("AD",V))
 .;S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  D  S BHSCM=$P($G(^AUPNVPOV(Y,0)),U) I BHSCM S BHSCM=$P($G(^ICD9(BHSCM,0)),U) I BHSCM]"" D CHKCODE
 .;code set versioning
 .N BHSVDT
 .S BHSVDT=$P(+V,".")
 .;Patch 9 for ICD-10
 .I $$AICD^BHSUTL D
 ..S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  S BHSCM=$P($G(^AUPNVPOV(Y,0)),U) I BHSCM S BHSCM=$P($$ICDDX^ICDEX(BHSCM,BHSVDT,"","I"),U,2) I BHSCM]"" D CHKCODE
 .E  D
 ..S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  S BHSCM=$P($G(^AUPNVPOV(Y,0)),U) I BHSCM S BHSCM=$P($$ICDDX^ICDCODE(BHSCM,BHSVDT),U,2) I BHSCM]"" D CHKCODE
 .Q:'D
 .;S Y=$$PRIMPROV^APCLV(V,"F")
 .;Q:'Y
 .;I $P(^DIC(7,Y,9999999),U,1)=39 S BHSFOK=1 Q
 .;Q:$P($G(^DIC(7,Y,9999999)),U,3)'="Y"
 .S BHSCNT=BHSCNT+1
 .I BHSCNT'<BHSNVN S BHSFOK=1
 .;S BHSFOK=1
 .Q
 K ^TMP($J,"ALL VISITS"),APCHV,APCHY
 Q
CHKCODE ;
 S D=0
 F BHSCI=0:0 S BHSCI=$O(^BHS(90471,BHSUPI,3,BHSCI)) Q:'BHSCI  D CHKCODE1 Q:D
 Q
CHKCODE1 ;
 S D=0
 S BHSC1=$P(^BHS(90471,BHSUPI,3,BHSCI,0),U,1)
 I BHSC1["-" S BHSC2=$P(BHSC1,"-",2),BHSC1=$P(BHSC1,"-",1)
 E  S BHSC2=BHSC1
 S BHSC1=BHSC1_" ",BHSC2=BHSC2_" "
 I BHSC1'](BHSCM_" "),(BHSCM_" ")']BHSC2 S D=1
 Q
SUPPCP ;
 S BHSP=^AUPNPROB(BHSPI,0) Q:$P(BHSP,U,12)'="A"
 ;S BHSCM=$P(^ICD9(+$P(BHSP,U),0),U)
 ;code set versioning
 ;Patch 9 added for ICD-10
 I $$AICD^BHSUTL  S BHSCM=$P($$ICDDX^ICDEX(+$P(BHSP,U),"","","I"),U,2)
 E  S BHSCM=$P($$ICDDX^ICDCODE(+$P(BHSP,U)),U,2)
 F BHSCI=0:0 S BHSCI=$O(^BHS(90471,BHSUPI,3,BHSCI)) Q:'BHSCI  D SUPPCR Q:BHSFOK
 Q
SUPPCR S BHSC1=$P(^BHS(90471,BHSUPI,3,BHSCI,0),U)
 I BHSC1["-" S BHSC2=$P(BHSC1,"-",2),BHSC1=$P(BHSC1,"-",1)
 E  S BHSC2=BHSC1
 S BHSC1=BHSC1_" ",BHSC2=BHSC2_" "
 I BHSC1'](BHSCM_" "),(BHSCM_" ")']BHSC2 S BHSFOK=1
 Q
