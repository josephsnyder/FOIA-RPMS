BQIRMIZ ;GDIT/HCSD/ALA-Update IZ Forecaster ; 02 Sep 2015  12:28 PM
 ;;2.5;ICARE MANAGEMENT SYSTEM;;May 24, 2016;Build 27
 ;
 ;
EN(DFN) ;EP
 NEW VALUE,FRN,IMN,BSR,LIDT,TEXT
 D IMM(DFN)
 I VALUE'="Immunization due" Q
 ;W !,DFN
 S FRN=""
 F  S FRN=$O(^BIPDUE("B",DFN,FRN)) Q:FRN=""  D
 . S IMN=$P(^BIPDUE(FRN,0),"^",2)
 . S RCDUE=$P(^BIPDUE(FRN,0),"^",4),OVDUE=$P(^(0),"^",5)
 . S REMDUE=$S(RCDUE'="":RCDUE,1:OVDUE)
 . S BSR=$P(^AUTTIMM(IMN,0),"^",9)
 . S NIM=0,LIDT=""
 . F  S LIDT=$O(^AUPNVIMM("AA",DFN,IMN,LIDT)) Q:LIDT=""  S NIM=NIM+1
 . S LIDT=$O(^AUPNVIMM("AA",DFN,IMN,LIDT)) I LIDT'="" S REMLAST=9999999-LIDT
 . Q  S BIEN="" F  S BIEN=$O(^BIPDUE("B",DFN,BIEN)) Q:BIEN=""  D
 .. ; Check for Dose
 .. S NAM=$P(^BISERT(BSR,0),"^",3) I $P(^(0),"^",6)=0 Q
 .. S QDOSE=$P(^BISERT(BSR,0),"^",4),ADOSE=$P(^BISERT(BSR,0),"^",7)
 .. S DOSE=$S(QDOSE>ADOSE:QDOSE,1:ADOSE)
 .. I NIM<DOSE D  Q
 ... S NIM=NIM+1,CODE="IM_"_NIM_"-"_NAM
 ... S RIEN=$O(^BQIPAT(DFN,40,"B",CODE,"")) I RIEN="" D FIL^BQIRMDR
 .. ;B
 Q
 ;
IMM(BIDFN) ;EP - Expand immunization reminders
 S $P(^BIPDUE(0),U,3)=0
 D UPDATE^BIPATUP(BIDFN,DT,.ERROR,1)
 ;D CHECK^BPXRMIMF(BIDFN,1,DT,.VALUE,.TEXT)
 Q
 ;
NX ;
 S BQDFN=0,ERRCNT=0
 F  S BQDFN=$O(^AUPNPAT(BQDFN)) Q:'BQDFN  D
 . ; If deceased, don't include
 . I $P($G(^DPT(BQDFN,.35)),U,1)'="" Q
 . ; If no active HRN, don't include
 . I '$$HRN^BQIUL1(BQDFN) Q
 . ; If no visit in last 3 years, quit
 . I '$$VTHR^BQIUL1(BQDFN) Q
 . ; If no visit in last 2 years, quit
 . ;I '$$VTWR^BQIUL1(BQDFN) Q
 . D EN(BQDFN)
 Q
 ;
PTLS ;EP - Run patient list
 NEW BIAG,BIPG,BIFDT,BICC,BICM,BIMMR,BIMMD,BILOT,BIMD,BIORD,BIRDT,BIDED,BIT,BIHBIDPRV,BIERR,BIBEN
 S BIAG="ALL",BIPG=3,BIFDT=DT,BICC("ALL")="",BIBEN(1)="",BIERR=0,BIHCF("ALL")="",BIHCF($P(^BQI(90508,1,0),"^",1))=""
 S BICM("ALL")="",BIMMR("ALL")="",BIMMD("ALL")="",BILOT("ALL")="",BIMD=0,BIDPRV("ALL")=""
 S BIORD=1,BIRDT="",BIDED=0,BIT=0
 D R^BIDUR(.BIAG,.BIPG,.BIFDT,.BICC,.BICM,.BIMMR,.BIMMD,.BILOT,.BIMD,.BIORD,.BIRDT,.BIDED,.BIT,.BIHCF,.BIDPRV,.BIERR,.BIBEN)
 ;
 S RVDT=""
 F  S RVDT=$O(^TMP("BIDUL",$J,1,RVDT)) Q:RVDT=""  D
 . S PTNAM="" F  S PTNAM=$O(^TMP("BIDUL",$J,1,RVDT,PTNAM)) Q:PTNAM=""  D
 .. S BQDFN="" F  S BQDFN=$O(^TMP("BIDUL",$J,1,RVDT,PTNAM,BQDFN)) Q:BQDFN=""  D IMM(BQDFN)
 Q
