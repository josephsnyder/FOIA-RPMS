BGP2C1 ; IHS/CMI/LAB - calc CMS measures 26 Sep 2004 11:28 AM 04 May 2010 2:38 PM 02 Nov 2009 10:20 AM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
PROC ;EP
 D ^APCDCHKJ
 S BGPBT=$H
 S BGPJ=$J,BGPH=$H
 K ^XTMP("BGP2C1",BGPJ,BGPH),BGPCOUNT
 D XTMP^BGP2UTL("BGP2C1","CRS CMS Report")
 S BGPSD=$$FMADD^XLFDT(BGPBD,-1),BGPSD=BGPSD_".9999"
 F  S BGPSD=$O(^AUPNVINP("B",BGPSD)) Q:BGPSD=""!($P(BGPSD,".")>BGPED)  D
 .S BGPVINP=0 F  S BGPVINP=$O(^AUPNVINP("B",BGPSD,BGPVINP)) Q:BGPVINP'=+BGPVINP  S BGPVSIT=$P($G(^AUPNVINP(BGPVINP,0)),U,3) I BGPVSIT D PROC1
 S BGPET=$H
 Q
 ;
PROC1 ;current time period
 K BGPEXCL
 Q:'$D(^AUPNVSIT(BGPVSIT,0))
 S BGPVSIT0=^AUPNVSIT(BGPVSIT,0)
 Q:$P(BGPVSIT0,U,7)'="H"
 Q:$P(BGPVSIT0,U,11)
 Q:'$P(BGPVSIT0,U,9)
 Q:$P(BGPVSIT0,U,6)'=BGPHOSP
 Q:$P(BGPVSIT0,U,3)="C"
 S DFN=$P(BGPVSIT0,U,5)
 Q:$P($G(^DPT(DFN,0)),U)["DEMO,PATIENT"
 ;I $P($G(^BGPSITE(DUZ(2),0)),U,12) Q:$D(^DIBT($P(^BGPSITE(DUZ(2),0),U,12),1,DFN))
 S X=$O(^DIBT("B","RPMS DEMO PATIENT NAMES",0)) I X Q:$D(^DIBT(X,1,DFN))
 I BGPBEN=1,$$BEN^AUPNPAT(DFN,"C")'="01" Q  ;must be Indian/Alaskan Native
 I BGPBEN=2,$$BEN^AUPNPAT(DFN,"C")="01" Q   ;must not be I/A
 S BGPIND=0 F  S BGPIND=$O(BGPPLSTL(BGPIND)) Q:BGPIND'=+BGPIND  D
 .S BGPPLSTL=0 F  S BGPPLSTL=$O(BGPPLSTL(BGPIND,BGPPLSTL)) Q:BGPPLSTL'=+BGPPLSTL  D
 ..X ^BGPCMSMB(BGPPLSTL,2)
 Q
AMIALL ;EP
 ;was there an AMI pov on this visit
 Q:'$$AMIDX^BGP2CU(BGPVSIT)
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 S ^XTMP("BGP2C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=""
 Q
 ;
AMI1 ;EP
 S BGPEX=""
 Q:'$$AMIDX^BGP2CU(BGPVSIT)
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 ;EXCLUSION 1 DISCHARGE TYPE
 I $$DEATHAMA^BGP2CU(BGPVINP),$$DODA^BGP2CU(BGPVSIT,BGPVINP) S BGPEX=1  ;ama or death and day of or day after admission
 ;EXCLUSION 2 DODA
 I $$DDA^BGP2CU(BGPVSIT,BGPVINP) S BGPEX=BGPEX_"|2"  ;discharged on day of arrival
 ;EXCLUSION 3 ASA ALLERGY
 I $$ASAALLEG^BGP2CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP)) S BGPEX=BGPEX_"|3"  ;has aspirin allergy documented through discharge date
 ;EXCLUSION 4 WARFARIN RX
 K BGPDATA
 D WARRX^BGP2CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-180),$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),1,.BGPDATA)
 I $D(BGPDATA) S BGPEX=BGPEX_"|4"  ;has warfarin meds on admission date
AMI1A ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP2C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
 ;
AMI2 ;EP
 S BGPEX=""
 Q:'$$AMIDX^BGP2CU(BGPVSIT)
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 I $$DEATHAMA^BGP2CU(BGPVINP) S BGPEX=5  ;ama or death and day of or day after admission
 I $$ASAALLEG^BGP2CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP)) S BGPEX=BGPEX_"|3"  ;has aspirin allergy
 K BGPDATA
 D WARRX^BGP2CU1(DFN,$P($P(^AUPNVINP(BGPVINP,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),1,.BGPDATA)
 I $D(BGPDATA) S BGPEX=BGPEX_"|4"  ;has warfarin meds on discharge
AMI2A ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP2C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
 ;
AMI3 ;EP
 S BGPEX=""
 Q:'$$AMIDX^BGP2CU(BGPVSIT)
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 K BGPDATA S BGPLVSD=0
 D LVSD^BGP2CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 I $D(BGPDATA) S BGPLVSD=1
 K BGPDATA S BGPEJEC=0
 D EJECFRAC^BGP2CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 I $D(BGPDATA) S BGPEJEC=1
 I 'BGPLVSD,'BGPEJEC Q  ;no lsvd or ejection fraction
 I $$DEATHAMA^BGP2CU(BGPVINP) S BGPEX=5 ;ama or death and day of or day after admission
 I $$ACEALLEG^BGP2CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP)),$$ARBALLEG^BGP2CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP)) S BGPEX=BGPEX_"|6"
 I $$SAORSTEN^BGP2CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP)) S BGPEX=BGPEX_"|7"
AMI3A ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP2C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
 ;
AMI4 ;EP
 S BGPEX=""
 Q:'$$AMIDX^BGP2CU(BGPVSIT)
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 K BGPDATA
 D SMOKER^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 I '$D(BGPDATA) Q  ;not a smoker
 I $$DEATHAMA^BGP2CU(BGPVINP) S BGPEX=5  ;ama or death
AMI4A ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP2C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
 ;
AMI5 ;EP
 S BGPEX=""
 Q:'$$AMIDX^BGP2CU(BGPVSIT)
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 I $$DEATHAMA^BGP2CU(BGPVINP) S BGPEX=5  ;ama or death and day of or day after admission
 I $$BETAALEG^BGP2CU2(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP)) S BGPEX=BGPEX_"|8"  ;has BETA allergy
 ;K BGPDATA S BGPBRADY="",BGPC=0
 ;D ALLDXS^BGP2CU2(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS BRADYCARDIA DXS")
 ;I $D(BGPDATA) S BGPBRADY=1
 ;on active med for beta blocker?
 ;S BGPBETA=""
 ;K BGPDATA
 ;D BETARX^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-180),$$DSCH^BGP2CU(BGPVINP),1,.BGPDATA)
 ;I $D(BGPDATA) S BGPBETA=1
 ;I '$D(BGPDATA) S E=+$$CODEN^ICPTCOD("G8009") S BGPBETA=$$CPTI^BGP2DU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP),E),BGPBETA=+BGPBETA
 ;I BGPBRADY,'BGPBETA S BGPEX=BGPEX_"|9"
 ;K BGPDATA
 ;S BGP23RD=""
 ;D ALLDXS^BGP2CU2(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS 2/3 HEART BLOCK DXS")
 ;I $D(BGPDATA) S BGP23RD=1
 ;S BGPPACE=$$PACE^BGP2CU2(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP))
 ;I BGP23RD,'BGPPACE S BGPEX=BGPEX_"|0"
AMI5A ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP2C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
 ;
AMI6 ;EP
 S BGPEX=""
 Q:'$$AMIDX^BGP2CU(BGPVSIT)
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 I $P($P(^AUPNVSIT(BGPVSIT,0),U),".")=$P($P(^AUPNVINP(BGPVINP,0),U),".") S BGPEX=2
 I $$DEATHAMA^BGP2CU(BGPVINP),$$DODA^BGP2CU(BGPVSIT,BGPVINP) S BGPEX=BGPEX_"|1" ;ama or death and day of or day after admission
 I $$BETAALEG^BGP2CU2(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP)) S BGPEX=BGPEX_"|8"  ;has BETA allergy
 ;K BGPDATA S BGPBRADY="",BGPC=0
 ;D ALLDXS^BGP2CU2(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS BRADYCARDIA DXS")
 ;I $D(BGPDATA) S BGPBRADY=1
 ;on active med for beta blocker?
 ;S BGPBETA=""
 ;K BGPDATA
 ;D BETARX^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-180),$$DSCH^BGP2CU(BGPVINP),1,.BGPDATA)
 ;I $D(BGPDATA) S BGPBETA=1
 ;I '$D(BGPDATA) S E=+$$CODEN^ICPTCOD("G8009") S BGPBETA=$$CPTI^BGP2DU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP),E),BGPBETA=+BGPBETA
 ;I BGPBRADY,'BGPBETA S BGPEX=BGPEX_"|9"
 ;D ALLDXS^BGP2CU2(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS HEART FAILURE DXS")
 ;I $D(BGPDATA) S BGPEX=BGPEX_"|A" ;heart failure on visit
 ;K BGPDATA
 ;S BGP23RD=""
 ;D ALLDXS^BGP2CU2(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS 2/3 HEART BLOCK DXS")
 ;I $D(BGPDATA) S BGP23RD=1
 ;S BGPPACE=$$PACE^BGP2CU2(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP))
 ;I BGP23RD,'BGPPACE S BGPEX=BGPEX_"|0"
 ;D ALLDXS^BGP2CU2(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS CIRCULATORY SHOCK DXS")
 ;I $D(BGPDATA) S BGPEX=BGPEX_"|B"  ;circulatory on visit
AMI6A ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP2C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
 ;
AMI7A ;EP
 S BGPEX=""
 Q:'$$AMIDX^BGP2CU(BGPVSIT)
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 K BGPST1,BGPLBDX,BGPLBPC
 S BGPST1=$$LASTDX^BGP2UTL1(DFN,"BGP ST ELEVATION DX",$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$$DSCH^BGP2CU(BGPVINP))
 S BGPLBDX=$$LBBBDX^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$$DSCH^BGP2CU(BGPVINP))
 D LBBBPROC^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$$DSCH^BGP2CU(BGPVINP),.BGPLBPC)
 I 'BGPST1&('BGPLBDX!('$D(BGPLBPC))) Q  ;no st1 or lbbb DX AND PROCEDURE
 S BGPFIB=""
 K BGPDATA
 D TARX^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-180),$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),1,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),.BGPDATA)
 K BGPUD
 D IVUD^BGP2CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP),$O(^ATXAX("B","BGP CMS THROMBOLYTIC MEDS",0)),.BGPUD,"",$O(^ATXAX("B","BGP THROMBOLYTIC AGENT CLASS",0)))
 S BGPTAPRO=$$LASTPRCI^BGP2UTL1(DFN,"99.10",$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP))
 I '$D(BGPDATA),'$D(BGPUD),'BGPTAPRO Q  ;no fibrom meds
AMI7AW ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP2C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
AMI8A ;EP
 S BGPEX=""
 Q:'$$AMIDX^BGP2CU(BGPVSIT)
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 K BGPST1,BGPLBDX,BGPLBPC
 S BGPST1=$$LASTDX^BGP2UTL1(DFN,"BGP ST ELEVATION DX",$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$$DSCH^BGP2CU(BGPVINP))
 S BGPLBDX=$$LBBBDX^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$$DSCH^BGP2CU(BGPVINP))
 D LBBBPROC^BGP2CU2(DFN,$$FMADD^XLFDT($P($P(BGPVSIT0,U),"."),-1),$$DSCH^BGP2CU(BGPVINP),.BGPLBPC)
 I 'BGPST1&('BGPLBDX!('$D(BGPLBPC))) Q  ;no st1 or lbbb DX AND PROCEDURE
 S BGPPCI=$$LASTPRCI^BGP2UTL1(DFN,"00.66",$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP))
 I 'BGPPCI Q  ;no PCI
AMI8AW ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP2C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
