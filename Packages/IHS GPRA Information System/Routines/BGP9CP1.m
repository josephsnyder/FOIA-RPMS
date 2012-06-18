BGP9CP1 ; IHS/CMI/LAB - IHS gpra print ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
 ;
AMIALL ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 S BGPNOBA=1
 D WRACE^BGP9CPU(DFN)
 Q:BGPQUIT
 D WDOB^BGP9CPU(DFN)
 Q:BGPQUIT
 D WZIP^BGP9CPU(DFN)
 Q:BGPQUIT
 D WINS^BGP9CPU(BGPVSIT,DFN)
 Q:BGPQUIT
 D WADM^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 D WADM92^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 D WADMS92^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 D WDT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 D WDSGS92^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU(BGPVINP) Q:BGPQUIT
 K BGPNOBA
 D WPPDPOV^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 S BGPNOBA=1
 D OTHDPOVS^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 D WPRINPRO^BGP9CPU2
 Q:BGPQUIT
 D WOTHPROS^BGP9CPU2
 K BGPNOBA
 Q
 ;
AMI1 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 I $$TRANSIN^BGP9CU(BGPVINP) D TRANSIN^BGP9CP3 Q:BGPQUIT
 D WDT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP),$$DODA^BGP9CU(BGPVSIT,BGPVINP) D TRANSN^BGP9CP2 Q:BGPQUIT
 D WPPDPOV^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU(X)
 Q:BGPQUIT
 K BGPY,BGPDATA
 D NMIDRUG^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-1),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"DM AUDIT ASPIRIN DRUGS",0)
 D WNMIASP^BGP9CPU
 Q:BGPQUIT
 K X
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"DM AUDIT ASPIRIN DRUGS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0)),.BGPUD)
 D WLASTASP^BGP9CPU
 Q:BGPQUIT
 S X=$$LASTASPC^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30))
 D WASPCPT^BGP9CPU(X)
 Q:BGPQUIT
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP ANTI-PLATELET DRUGS","","BGP CMS ANTI-PLATELET CLASS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)),.BGPUD,$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)))
 D WLASTAP^BGP9CPU
 Q:BGPQUIT
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
AMI1W ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 I $$TRANSIN^BGP9CU(BGPVINP) D TRANSIN^BGP9CP3 Q:BGPQUIT
 D WDOD^BGP9CPU(DFN)
 Q:BGPQUIT
 D WDT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP),$$DODA^BGP9CU(BGPVSIT,BGPVINP) D TRANSN^BGP9CP2 Q:BGPQUIT
 D WPPDPOV^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU(X)
 Q:BGPQUIT
 S X=$$ASAALLEG^BGP9CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP)),X=$P(X,U,2,999)
 D WASAALEG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D WARRX^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-180),$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),1,.BGPDATA)
 D WWARRX^BGP9CPU
 Q:BGPQUIT
 K BGPDATA,BGPY
 D NMIDRUG^BGP9CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"DM AUDIT ASPIRIN DRUGS",0)
 D WNMIASP^BGP9CPU
 Q:BGPQUIT
 K X
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"DM AUDIT ASPIRIN DRUGS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0)),.BGPUD)
 D WLASTASP^BGP9CPU
 Q:BGPQUIT
 S X=$$LASTASPC^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30))
 D WASPCPT^BGP9CPU(X)
 Q:BGPQUIT
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP ANTI-PLATELET DRUGS","","BGP CMS ANTI-PLATELET CLASS") I X]"" S X="Last Outpatient RX: "_X
 K BGPUD
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)),.BGPUD,$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)))
 D WLASTAP^BGP9CPU
 Q:BGPQUIT
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
AMI2 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 D WDT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN^BGP9CP2 Q:BGPQUIT
 D WPPDPOV^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU(X)
 Q:BGPQUIT
 K BGPY,BGPDATA
 D NMIDRUG^BGP9CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"DM AUDIT ASPIRIN DRUGS",0)
 D WNMIASP^BGP9CPU
 Q:BGPQUIT
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"DM AUDIT ASPIRIN DRUGS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0)),.BGPUD)
 D WLASTASP^BGP9CPU
 Q:BGPQUIT
 S X=$$LASTASPC^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30))
 D WASPCPT^BGP9CPU(X)
 Q:BGPQUIT
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP ANTI-PLATELET DRUGS","","BGP CMS ANTI-PLATELET CLASS") I X]"" S X="Last Outpatient RX: "_X
 K BGPUD
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)),.BGPUD,$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)))
 D WLASTAP^BGP9CPU
 Q:BGPQUIT
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
AMI2W ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 D WDOD^BGP9CPU(DFN)
 Q:BGPQUIT
 D WDT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN^BGP9CP2 Q:BGPQUIT
 D WPPDPOV^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU(X)
 Q:BGPQUIT
 S X=$$ASAALLEG^BGP9CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 D WASAALEG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D WARRX^BGP9CU1(DFN,$P($P(^AUPNVINP(BGPVINP,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),1,.BGPDATA)
 D WWARRX^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D NMIDRUG^BGP9CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"DM AUDIT ASPIRIN DRUGS",0)
 D WNMIASP^BGP9CPU
 Q:BGPQUIT
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"DM AUDIT ASPIRIN DRUGS") I X]"" S X="Last Outpatient Rx: "_X
 K BGPUD
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0)),.BGPUD)
 D WLASTASP^BGP9CPU
 Q:BGPQUIT
 S X=$$LASTASPC^BGP9CU1(DFN,$P($P(^AUPNVINP(BGPVINP,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WASPCPT^BGP9CPU(X)
 Q:BGPQUIT
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP ANTI-PLATELET DRUGS","","BGP CMS ANTI-PLATELET CLASS") I X]"" S X="Last Outpatient RX: "_X
 K BGPUD
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)),.BGPUD,$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0)))
 D WLASTAP^BGP9CPU
 Q:BGPQUIT
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
AMI3 ;EP
 I $Y>(BGPIOSL-3) D HDR^BGP9CP Q:BGPQUIT  D L1H^BGP9CP
 D WDT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D WTT^BGP9CPU(BGPVINP)
 Q:BGPQUIT
 I $$TRANS^BGP9CU(BGPVINP) D TRANSN^BGP9CP2 Q:BGPQUIT
 D WPPDPOV^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 D OTHDPOVS^BGP9CPU(BGPVSIT)
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D LVSD^BGP9CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 D EJECFRAC^BGP9CU1(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,BGPC)
 D WLVSD^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 S X=$$COMFORT^BGP9CU(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."))
 D WCOMFORT^BGP9CPU(X)
 Q:BGPQUIT
 K BGPDATA,BGPDX
 S BGPXX=0
 D ANGIOED^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPERKAL^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D HYPOTEN^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENART^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 K BGPDATA D RENAL^BGP9CU6(DFN,$$FMADD^XLFDT($$DSCH^BGP9CU(BGPVINP),-365),$$DSCH^BGP9CU(BGPVINP),.BGPDATA,0)
 S X=0 F  S X=$O(BGPDATA(X)) Q:X'=+X  S BGPXX=BGPXX+1,BGPDX(BGPXX)=BGPDATA(X)
 D WDXS^BGP9CPU
 K BGPDATA
 K BGPY
 Q:BGPQUIT
 S X=$$ACEALLEG^BGP9CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 S Z=$$ARBALLEG^BGP9CU1(DFN,$$DOB^AUPNPAT(DFN),$$DSCH^BGP9CU(BGPVINP))
 D WACEALEG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 S BGPC=0
 D NMIDRUG^BGP9CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ACEI MEDS",0)
 D NMIDRUG^BGP9CU1(DFN,$P($P(^AUPNVSIT(BGPVSIT,0),U),"."),$P($P(^AUPNVINP(BGPVINP,0),U),"."),.BGPDATA,"BGP CMS ARB MEDS",BGPC)
 D WNMIACE^BGP9CPU(.BGPDATA)
 Q:BGPQUIT
 S X=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ACEI MEDS","","BGP CMS ACEI MEDS CLASS")
 S Z=$$LASTMED^BGP9CU1(DFN,$$FMADD^XLFDT($P($P(^AUPNVSIT(BGPVSIT,0),U),"."),-365),$$FMADD^XLFDT($P($P(^AUPNVINP(BGPVINP,0),U),"."),30),"BGP CMS ARB MEDS","","BGP CMS ARB MEDS CLASS")
 D WLASTACE^BGP9CPU
 Q:BGPQUIT
 D ALLALG1^BGP9CU1(DFN,DT,$$DSCH^BGP9CU(BGPVINP),.BGPDATA)
 D WALLALG^BGP9CPU
 Q:BGPQUIT
 K BGPDATA
 D ALLALGA1^BGP9CU1(DFN,DT,.BGPDATA)
 D WALLALGT^BGP9CPU
 K BGPDATA
 D IVUD^BGP9CU1(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP9CU(BGPVINP),,.BGPDATA)
 D WIVUD^BGP9CPU
 Q
 ;
AMI3W ;EP
 D AMI3W^BGP9CP11
 Q
