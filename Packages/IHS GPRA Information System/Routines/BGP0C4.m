BGP0C4 ; IHS/CMI/LAB - calc CMS measures ;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
SCALL ;EP
 K BGPDATA
 D SCIP^BGP0CU5(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP0CU(BGPVINP),.BGPDATA)
 Q:'$D(BGPDATA)
 K BGPDATA
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 S ^XTMP("BGP0C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=""
 Q
 ;
SCIP1 ;EP
 S BGPEX=""
 K BGPDATA
 D SCIP1^BGP0CU5(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP0CU(BGPVINP),.BGPDATA)
 I '$D(BGPDATA) Q  ;no procedure
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 ;exclusions
 I $$ADMPRIM^BGP0CU5(BGPVINP,"BGP CMS INFECTIOUS DXS") S BGPEX=BGPEX_"1|"
SCIP1A ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP0C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
 ;
SCIP3 ;EP
 S BGPEX=""
 K BGPDATA
 D SCIP1^BGP0CU5(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP0CU(BGPVINP),.BGPDATA)
 I '$D(BGPDATA) Q  ;no procedure
 I $$AGE^AUPNPAT(DFN,$P($P(BGPVSIT0,U),"."))<18 Q  ; no one under 18 at admission date
 ;exclusions
 I $$ADMPRIM^BGP0CU5(BGPVINP,"BGP CMS INFECTIOUS DXS") S BGPEX=BGPEX_"1|"
 K BGPDATA
 D ANTIRX^BGP0CU3(DFN,$P($P(BGPVSIT0,U),"."),$$DSCH^BGP0CU(BGPVINP),.BGPDATA)
 I '$D(BGPDATA) S BGPEX=BGPEX_"|7"
SCIP3A ;
 I $G(BGPEXCL),BGPEX]"" Q
 S ^XTMP("BGP0C1",BGPJ,BGPH,"LIST",BGPIND,BGPPLSTL,$P(^DPT(DFN,0),U),DFN,BGPVSIT)=BGPEX
 Q
 ;