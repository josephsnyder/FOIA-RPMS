BPXRMPCC ; IHS/MSC/MGH - Computed Findings for PCC reminders. ;23-Apr-2014 08:39;du
 ;;2.0;CLINICAL REMINDERS;**1001,1002,1003**;Feb 04, 2005;Build 21
 ;=================================================================
 ;This routine is designed to use the standard PCC logic for reminders to
 ;evaluate if items are met or not met. Using the standard PCC calls ensures
 ;that all IHS items are using the same logic.
 ;=====================================================================
ALCOHOL(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for alcohol screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMALCS^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
DEPRESS(DFN,TEST,DATE,VALUE,TEXT) ;EP
 ;This computed finding will check the PCC logic for depression screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMDEPS^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
FUNCTION(DFN,TEST,DATE,VALUE,TEXT) ;EP
 ;This computed finding will check the PCC logic for functional screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMAOF^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
DIABETES(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for diabetes screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMGLUC^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
IPVS(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for intimate partner violence screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMIPVS^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
EPSDT(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for EPSDT
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMEPSDT^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
MAMMO(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for mammogram screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMMAMM^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
OSTEO(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for osteoporosis screening
 N BPXRESLT,TODAY,X,Y,Z,AGE,DOB
 S DOB=$P($G(^DPT(DFN,0)),U,3)
 S TODAY=$$DT^XLFDT()
 ;I $$LASTDX^APCHSMU2(DFN,"BGP OSTEOPOROSIS DXS",$P(^DPT(DFN,0),U,3),TODAY) S TEST=1,VALUE="NA",TEXT="Pt has DX of osteoporosis",DATE=TODAY Q
 S BPXRESLT=$$REMOSTEO^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 D
 .I $$LASTDX^APCHSMU2(DFN,"BGP OSTEOPOROSIS DXS",$P(^DPT(DFN,0),U,3),TODAY) D
 ..S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 .E  D
 ..S DATE=$P(BPXRESLT,U,2)
 ..I DATE'="" D
 ...S Z=$$AGE^PXRMAGE(DOB,"",DATE)
 ...I Z>64 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 ...E  S TEST=0,VALUE=TEST,DATE=$P(BPXRESLT,U,2),TEXT="Test was done before age 65"
 ..E  S TEST=0,VALUE=TEST,DATE=TODAY,TEXT="Unable to determine date of test"
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
PAP(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for pap smear screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMPAP^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
TOBACCO(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for tobacco screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMTOBS^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
HEAR(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for hearing screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMHEAR^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
VISION(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for vision screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMVAE^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
DENTAL(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for dental screening
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$REMDENT^APCLAPIR(DFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
HC(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for head circumference
 N BPXRESLT,TODAY,X,Y,APCLPDFN
 S TODAY=$$DT^XLFDT()
 S APCLPDFN=DFN
 S BPXRESLT=$$REMHC^APCLAPIR(APCLPDFN)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE=$P(BPXRESLT,U,4),TEXT=$P(BPXRESLT,U,3),DATE=$P(BPXRESLT,U,2)
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
AMP(DFN,TEST,DATE,VALUE,TEXT) ; EP
 ;This computed finding will check the PCC logic for bilateral amputation
 N BPXRESLT,TODAY,X,Y
 S TODAY=$$DT^XLFDT()
 S BPXRESLT=$$AMP^BGP4D27(DFN,TODAY)
 I $P(BPXRESLT,U,1)=1 S TEST=1,VALUE="BI-LATERAL AMPUTATION",TEXT="Code for bi-lateral amputation found",DATE=TODAY
 I $P(BPXRESLT,U,1)=0 S TEST=0,VALUE=TEST,DATE=TODAY
 Q
