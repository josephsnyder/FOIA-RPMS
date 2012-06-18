BGP2CP11 ; IHS/CMI/LAB - IHS gpra print ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
 ;
 ;
AMI3W ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP2CP Q:BGPQUIT  D L1H^BGP2CP
 D WDOD^BGP2CPU(DFN)
 D WDT^BGP2CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D WTT^BGP2CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP2CU(BGPVINP) D TRANSN^BGP2CP2 Q:BGPQUIT
 D WPPDPOV^BGP2CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP2CPU(BGPVSIT)
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D LVSD^BGP2CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 D EJECFRAC^BGP2CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC)
 D WLVSD^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 S X=$$COMFORT^BGP2CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP2CPU(X)
 K BGPDATA
 K BGPY
 Q:BGPQUIT
 S X=$$ACEALLEG^BGP2CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP))
 S Z=$$ARBALLEG^BGP2CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP2CU(BGPVINP))
 D WACEALEG^BGP2CPU
 K BGPDATA
 S BGPC=0
 D ALLDXS^BGP2CU2(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,BGPC,"BGP CMS AORTIC STENOSIS DXS")
 D WAORTIC^BGP2CPU
 Q:BGPQUIT
 K BGPDATA,BGPDX
 S BGPXX=0
 D ANGIOED^BGP2CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPERKAL^BGP2CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPOTEN^BGP2CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENART^BGP2CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENAL^BGP2CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP2CU(BGPVINP),-365),$$DSCH^BGP2CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 D WDXS^BGP2CPU
 K BGPDATA
 K BGPY
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D NMIDRUG^BGP2CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ACEI MEDS",0)
 D NMIDRUG^BGP2CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ARB MEDS",BGPC)
 D WNMIACE^BGP2CPU(.BGPDATA)
 Q:BGPQUIT
 S X=$$LASTMED^BGP2CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ACEI MEDS","","BGP CMS ACEI MEDS CLASS")
 S Z=$$LASTMED^BGP2CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ARB MEDS","","BGP CMS ARB MEDS CLASS")
 D WLASTACE^BGP2CPU
 Q:BGPQUIT
 Q:BGPQUIT
 D ALLALG1^BGP2CU1(DFN,DT,$$DSCH^BGP2CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP2CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP2CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP2CPU
 K BGPDATA
 D IVUD^BGP2CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP2CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP2CPU
 Q
 ;
