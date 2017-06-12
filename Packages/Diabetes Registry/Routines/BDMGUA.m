BDMGUA ; cmi/anch/maw - BDM DMS GUI Utilities ; 11 Feb 2010  7:45 AM
 ;;2.0;BDM DIABETES MANAGEMENT SYSTEM;**1,3,5,6,7,8,9**;JUN 14, 2007;Build 78
 ;
 ;
 ;
 ;
DEBUG(BDMRET,BDMSTR) ;-- debug
 D DEBUG^%Serenji("TAXCHK^BDMGUA(.BDMRET,.BDMSTR)")
 Q
 ;
DELPT(BDMRET,BDMSTR) ;-- delete a patient and data from dms
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N P,BDMPAT,BDMGREF,BDMI,BDMX
 S P="|"
 S BDMPAT=$P(BDMSTR,P)  ;patient
 S BDMREGE=$P(BDMSTR,P,2)  ;register
 S BDMREG=$O(^ACM(41.1,"B",BDMREGE,0))  ;register ien
 S BDMGREF="^ACM(49)"
 S BDMX=0 F  S BDMX=$O(@BDMGREF@("AC",BDMREG,BDMPAT,BDMX)) Q:'BDMX  D
 . S DA=0 F  S DA=$O(@BDMGREF@("AC",BDMREG,BDMPAT,BDMX,DA)) Q:'DA  D
 .. S DIK="^ACM(49,"
 .. D ^DIK
 .. K DIK,DIC
 F BDMI=42,43,44,45,46,47,48,51,53,54,41 S BDMGREF="^ACM("_BDMI_")"
 S BDMX=0 F  S BDMX=$O(@BDMGREF@("AC",BDMREG,BDMPAT,BDMX)) Q:'BDMX  S DIK="^ACM("_BDMI_",",DA=^(BDMX) D
 . D ^DIK
 . K DIK,DIC,DA
 S DA=^ACM(41,"AC",BDMPAT,BDMREG),DIK="^ACM(41,"
 D ^DIK
 K DIK,DIC
 S BDMRET=""
 Q
 ;
TAXCHKO(BDMRET) ;-- check taxonomies for DM Audit
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N BDMI,BDMJ,BDMDATA,BDMDA
 S BDMI=0
 S BDMERR=""
 K ^BDMTMP($J)
 S BDMRET="^BDMTMP("_$J_")"
 S ^BDMTMP($J,BDMI)="T00250DATA"_$C(30)
 S BDMJ=0
 S IOM=80
 D GUIR^XBLM("TAXCHK^BDMDA19","^XTMP(""BDMTAX"",$J)")
 S BDMDA=.5 F  S BDMDA=$O(^XTMP("BDMTAX",$J,BDMDA)) Q:'BDMDA  D
 . N BDMDATA
 . S BDMI=BDMI+1
 . S BDMDATA=$G(^XTMP("BDMTAX",$J,BDMDA))
 . S ^BDMTMP($J,BDMI)=BDMDATA_$C(30)
 S ^BDMTMP($J,BDMI+1)=$C(31)_BDMERR
 K ^XTMP("BDMTAX",$J)
 Q
 ;
TAXCHK(RETVAL,BDMSTR) ;-- check taxonomies for Visual DMS
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N BDMI,BDMJ,BDMDATA,BDMDA,BDMRTN,P
 S P="|"
 S BDMI=0
 S BDMERR=""
 S BDMRTN=$P(BDMSTR,P)
 K ^BDMTMP($J)
 S RETVAL="^BDMTMP("_$J_")"
 S ^BDMTMP($J,BDMI)="T00250DATA"_$C(30)
 S BDMJ=0
 S IOM=80
 D GUIR^XBLM("TAXCHK^"_BDMRTN,"^XTMP(""BDMTAX"",$J)")
 S BDMDA=.5 F  S BDMDA=$O(^XTMP("BDMTAX",$J,BDMDA)) Q:'BDMDA  D
 . N BDMDATA
 . S BDMI=BDMI+1
 . S BDMDATA=$G(^XTMP("BDMTAX",$J,BDMDA))
 . S ^BDMTMP($J,BDMI)=BDMDATA_$C(30)
 S ^BDMTMP($J,BDMI+1)=$C(31)_BDMERR
 K ^XTMP("BDMTAX",$J)
 Q
 ;
UPDTAX(BDMRET,BDMSTR) ;update taxonomies based on option selected
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N P,BDMOPT,BDMI
 S P="|"
 S BDMI=0
 K ^BDMTMP($J)
 S BDMRET="^BDMTMP("_$J_")"
 S ^BDMTMP($J,BDMI)="T00080TAXONOMY NAME"_$C(30)
 S BDMOPT=$P(BDMSTR,P)
 I BDMOPT="Upd DM Audit P 05" D
 . D INIT^BDMP5TS
 I BDMOPT="Upd DM Audit 05" D
 . D INIT^BDMD5TS
 I BDMOPT="Upd DM Audit P 06" D
 . D INIT^BDMP6TS
 I BDMOPT="Upd DM Audit 06" D
 . D INIT^BDMD6TS
 I BDMOPT="Upd DM Audit P 07" D
 . D INIT^BDMP7TS
 I BDMOPT="Upd DM Audit 07" D
 . D INIT^BDMD7TS
 I BDMOPT="Upd DM Audit P 08" D
 . D INIT^BDMP8TS
 I BDMOPT="Upd DM Audit 08" D
 . D INIT^BDMD8TS
 I BDMOPT="Upd DM Audit P 09" D
 . D INIT^BDMP9TS
 I BDMOPT="Upd DM Audit 09" D
 . D INIT^BDMD9TS
 I BDMOPT="Upd DM Audit P 10" D
 . D INIT^BDMP0TS
 I BDMOPT="Upd DM Audit 10" D
 . D INIT^BDMD0TS
 I BDMOPT="Upd DM Audit P 11" D
 . D INIT^BDMP1TS
 I BDMOPT="Upd DM Audit 11" D
 . D INIT^BDMD1TS
 I BDMOPT="Upd DM Audit P 12" D
 . D INIT^BDMP4TS
 I BDMOPT="Upd DM Audit 12" D
 . D INIT^BDMD4TS
 I BDMOPT="Upd DM Audit P 13" D
 . D INIT^BDMPATS
 I BDMOPT="Upd DM Audit 13" D
 . D INIT^BDMDATS
 I BDMOPT="Upd DM Audit P 14" D
 . D INIT^BDMPBTS
 I BDMOPT="Upd DM Audit 14" D
 . D INIT^BDMDBTS
 I BDMOPT="Upd DM Audit P 15" D
 . D INIT^BDMPCTS
 I BDMOPT="Upd DM Audit 15" D
 . D INIT^BDMDCTS
 I BDMOPT="Upd DM Audit P 16" D
 . D INIT^BDMPDTS
 I BDMOPT="Upd DM Audit 16" D
 . D INIT^BDMDDTS
 N BDMDA,BDMT
 S BDMDA=0 F  S BDMDA=$O(BDMTAX("IDX",BDMDA)) Q:'BDMDA  D
 . N BDMN,BDMFL,BDMRO,BDMFLT,BDMPAN
 . S BDMI=BDMI+1
 . S BDMT=$P($G(BDMTAX("IDX",BDMDA,BDMDA)),U)
 . S BDMTT=$P($G(BDMTAX("IDX",BDMDA,BDMDA)),U,2)
 . I BDMTT="T" D
 .. S BDMN=$P($G(^ATXAX(BDMT,0)),U)
 .. S BDMRO=$S($P($G(^ATXAX(BDMT,0)),U,22):"Read Only",1:"Editable")
 .. S BDMFL=$P($G(^ATXAX(BDMT,0)),U,15)
 .. S BDMFLT=$S(BDMFL=50:"Med",1:"Tax")
 . I BDMTT="L" D
 .. S BDMN=$P($G(^ATXLAB(BDMT,0)),U)
 .. S BDMPAN=$P($G(^ATXLAB(BDMT,0)),U,11)
 .. S BDMRO=$S($P($G(^ATXLAB(BDMT,0)),U,22):"Read Only",1:"Editable")
 .. S BDMFL=$P($G(^ATXLAB(BDMT,0)),U,9)
 .. S BDMFLT="Lab"
 . S ^BDMTMP($J,BDMI)=BDMN_"("_BDMRO_"/"_BDMFLT_"/"_BDMFL_"/"_$G(BDMPAN)_")"_$C(30)
 S ^BDMTMP($J,BDMI+1)=$C(31)
 Q
 ;
CHTDATA(BDMRET,BDMSTR) ;-- get lab, bp or wt data for chart
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N P,BDMCTP,BDMBD,BDMED,BDMPIEN,BDMI,BDMPAT,BDMCHT,BDMINST,BDMLAB,BDMEL
 S P="|"
 S BDMCTP=$P(BDMSTR,P)
 S BDMBD=$P(BDMSTR,P,2)
 S BDMED=$P(BDMSTR,P,3)
 S BDMPIEN=$P(BDMSTR,P,4)
 S BDMINST=$P(BDMSTR,P,5)-1
 S BDMLAB=$P(BDMSTR,P,6)
 S BDMEL=$P(BDMSTR,P,7)
 S BDMPAT=$P($G(^DPT(BDMPIEN,0)),U)
 S BDMCHT=$$HRN^AUPNPAT(BDMPIEN,DUZ(2))
 S BDMI=0
 K ^BDMTMP($J)
 S BDMRET="^BDMTMP("_$J_")"
 D @BDMCTP^BDMGUA(BDMBD,BDMED,BDMPIEN,BDMPAT,BDMCHT,BDMINST,BDMLAB,BDMEL)
 S ^BDMTMP($J,BDMI+1)=$C(31)
 Q
 ;
WEIGHT(BD,ED,PIEN,PAT,CHT,INST,LAB,EL) ;-- get the chartable weights
 S ^BDMTMP($J,BDMI)="T00020Begin Date^T00020End Date^T00020Date^T00004Weight^T00030Patient^T00007Chart"_$C(30)
 N BDMDA,BDMEDA,BDMMST,BDMCNT
 S BDMCNT=0
 S BDMBDA=9999999-BD
 S BDMDA=9999999-ED
 S BDMMST=$O(^AUTTMSR("B","WT",0))
 F  S BDMDA=$O(^AUPNVMSR("AA",PIEN,BDMMST,BDMDA)) Q:'BDMDA!(BDMDA>BDMBDA)!(BDMCNT>INST)  D
 . Q:BDMCNT>INST
 . N BDMIEN,BDMVAL,BDMVDT
 . S BDMIEN=0 F  S BDMIEN=$O(^AUPNVMSR("AA",PIEN,BDMMST,BDMDA,BDMIEN)) Q:'BDMIEN  D
 .. Q:BDMCNT>INST
 .. S BDMCNT=BDMCNT+1
 .. S BDMVAL=$P($G(^AUPNVMSR(BDMIEN,0)),U,4)
 .. S BDMVDT=9999999-BDMDA
 .. I $G(EL)="L" D  Q
 ... S BDMI=BDMI+1
 ... S ^BDMTMP($J,BDMI)=$$FMTE^XLFDT(BD)_U_$$FMTE^XLFDT(ED)_U_$$FMTE^XLFDT(BDMVDT)_U_BDMVAL_U_PAT_U_CHT_$C(30)
 .. S ^TMP($J,"BDMGUI",BDMVDT,BDMIEN)=$$FMTE^XLFDT(BD)_U_$$FMTE^XLFDT(ED)_U_$$FMTE^XLFDT(BDMVDT)_U_BDMVAL_U_PAT_U_CHT
 Q:$G(EL)="L"
 N BDMTDA,BDMTIEM
 S BDMTDA=0 F  S BDMTDA=$O(^TMP($J,"BDMGUI",BDMTDA)) Q:'BDMTDA  D
 . S BDMTIEN=0 F  S BDMTIEN=$O(^TMP($J,"BDMGUI",BDMTDA,BDMTIEN)) Q:'BDMTIEN  D
 .. S BDMI=BDMI+1
 .. S ^BDMTMP($J,BDMI)=$G(^TMP($J,"BDMGUI",BDMTDA,BDMTIEN))_$C(30)
 K ^TMP($J,"BDMGUI")
 Q
 ;
BP(BD,ED,PIEN,PAT,CHT,INST,LAB,EL) ;-- get the chartable bps
 S ^BDMTMP($J,BDMI)="T00020Begin Date^T00020End Date^T00020Date^T00004Systolic^T00004Diastolic^T00007Chart"_$C(30)
 N BDMDA,BDMEDA,BDMMST,BDMCNT
 S BDMCNT=0
 S BDMBDA=9999999-BD
 S BDMDA=9999999-ED
 S BDMMST=$O(^AUTTMSR("B","BP",0))
 F  S BDMDA=$O(^AUPNVMSR("AA",PIEN,BDMMST,BDMDA)) Q:'BDMDA!(BDMDA>BDMBDA)!(BDMCNT>INST)  D
 . Q:BDMCNT>INST
 . N BDMIEN
 . S BDMIEN=0 F  S BDMIEN=$O(^AUPNVMSR("AA",PIEN,BDMMST,BDMDA,BDMIEN)) Q:'BDMIEN  D
 .. N BDMVAL,BDMVDT,BDMSYS,BDMDIA
 .. Q:BDMCNT>INST
 .. S BDMCNT=BDMCNT+1
 .. S BDMVAL=$P($G(^AUPNVMSR(BDMIEN,0)),U,4)
 .. S BDMSYS=$P(BDMVAL,"/")
 .. S BDMDIA=$P(BDMVAL,"/",2)
 .. S BDMVDT=9999999-BDMDA
 .. I $G(EL)="L" D  Q
 ... S BDMI=BDMI+1
 ... S ^BDMTMP($J,BDMI)=$$FMTE^XLFDT(BD)_U_$$FMTE^XLFDT(ED)_U_$$FMTE^XLFDT(BDMVDT)_U_BDMSYS_U_BDMDIA_U_CHT_$C(30)
 .. S ^TMP($J,"BDMGUI",BDMVDT,BDMIEN)=$$FMTE^XLFDT(BD)_U_$$FMTE^XLFDT(ED)_U_$$FMTE^XLFDT(BDMVDT)_U_BDMSYS_U_BDMDIA_U_CHT
 N BDMTDA,BDMTIEM
 S BDMTDA=0 F  S BDMTDA=$O(^TMP($J,"BDMGUI",BDMTDA)) Q:'BDMTDA  D
 . S BDMTIEN=0 F  S BDMTIEN=$O(^TMP($J,"BDMGUI",BDMTDA,BDMTIEN)) Q:'BDMTIEN  D
 .. S BDMI=BDMI+1
 .. S ^BDMTMP($J,BDMI)=$G(^TMP($J,"BDMGUI",BDMTDA,BDMTIEN))_$C(30)
 K ^TMP($J,"BDMGUI")
 Q
 ;
LAB(BD,ED,PIEN,PAT,CHT,INST,LAB,EL) ;-- get the chartable labss
 S ^BDMTMP($J,BDMI)="T00020Begin Date^T00020End Date^T00020Date^T00004Lab Value^T00030Abnormal^T00007Chart"_$C(30)
 N BDMDA,BDMEDA,BDMCNT
 S BDMCNT=0
 S BDMBDA=9999999-BD
 S BDMDA=9999999-ED
 F  S BDMDA=$O(^AUPNVLAB("AA",PIEN,LAB,BDMDA)) Q:'BDMDA!(BDMDA>BDMBDA)!(BDMCNT>INST)  D
 . Q:BDMCNT>INST
 . N BDMIEN
 . S BDMIEN=0 F  S BDMIEN=$O(^AUPNVLAB("AA",PIEN,LAB,BDMDA,BDMIEN)) Q:'BDMIEN  D
 .. N BDMVAL,BDMABN,BDMVDT
 .. Q:BDMCNT>INST
 .. S BDMCNT=BDMCNT+1
 .. S BDMVAL=$P($G(^AUPNVLAB(BDMIEN,0)),U,4)
 .. S BDMABN=$P($G(^AUPNVLAB(BDMIEN,0)),U,5)
 .. S BDMVDT=9999999-BDMDA
 .. I $G(EL)="L" D  Q
 ... S BDMI=BDMI+1
 ... S ^BDMTMP($J,BDMI)=$$FMTE^XLFDT(BD)_U_$$FMTE^XLFDT(ED)_U_$$FMTE^XLFDT(BDMVDT)_U_BDMVAL_U_BDMABN_U_CHT_$C(30)
 .. S ^TMP($J,"BDMGUI",BDMVDT,BDMIEN)=$$FMTE^XLFDT(BD)_U_$$FMTE^XLFDT(ED)_U_$$FMTE^XLFDT(BDMVDT)_U_BDMVAL_U_BDMABN_U_CHT
 N BDMTDA,BDMTIEM
 S BDMTDA=0 F  S BDMTDA=$O(^TMP($J,"BDMGUI",BDMTDA)) Q:'BDMTDA  D
 . S BDMTIEN=0 F  S BDMTIEN=$O(^TMP($J,"BDMGUI",BDMTDA,BDMTIEN)) Q:'BDMTIEN  D
 .. S BDMI=BDMI+1
 .. S ^BDMTMP($J,BDMI)=$G(^TMP($J,"BDMGUI",BDMTDA,BDMTIEN))_$C(30)
 K ^TMP($J,"BDMGUI")
 Q
 ;
ASTMP(BDMRET,BDMSTR) ;-- add entries from search template
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N P,BDMRGE,BDMST,BDMRG,BDMGLB,BDMU,BDMTRNE,BDMTRN
 S P="|"
 K ^BDMTMP($J)
 S BDMRGE=$P(BDMSTR,P)
 S BDMRG=$O(^ACM(41.1,"B",BDMRGE,0))
 S BDMTRNE=$P(BDMSTR,P,2)
 S BDMTRN=$O(^DIBT("B",BDMTRNE,0))
 S $P(^ACM(41.1,BDMRG,0),U,9)=1
 S BDMGLB="^DIBT("_BDMTRN_",1)"
 S BDMU=0 F  S BDMU=$O(@BDMGLB@(BDMU)) Q:BDMU=""  D
 . I '$D(^ACM(41,"AC",BDMU,BDMRG)) D
 .. S:$P(^ACM(41.1,BDMRG,0),U,9)="" $P(^(0),U,9)=1
 .. D REGADD^BDMGE(.BDMRET,BDMRGE_"|"_BDMU)
 S $P(^ACM(41.1,BDMRG,0),U,9)=""
 S BDMRET="^BDMTMP("_$J_")"
 S ^BDMTMP($J,0)="T00050RETURN"_$C(30)
 S ^BDMTMP($J,1)="Patients Added Successfully"_$C(30)
 S ^BDMTMP($J,2)=$C(31)_$G(BDMERR)
 Q
 ;
DELRPT(RETVAL,BDMSTR) ;-- delete a report out of the DMS GUI REPORT OUTPUT file
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N P,R,I
 S P="|",R="~"
 S BDMERR=""
 K ^BDMTMP($J)
 S RETVAL="^BDMTMP("_$J_")"
 F I=2:1 D  Q:$P(BDMSTR,R,I)=""
 . N BDMI,BDMDA
 . Q:$P(BDMSTR,R,I)=""
 . S BDMI=$P(BDMSTR,R,I)
 . S BDMDA=$E(BDMI,2,9)
 . I $E(BDMI,1,1)="A" D
 .. S DIK="^BDMGUI(",DA=BDMDA D ^DIK
 . I $E(BDMI,1,1)="B" D
 .. S DIK="^BDMGUI(",DA=BDMDA D ^DIK
 S ^BDMTMP($J,0)="T00250DATA"_$C(30)
 S ^BDMTMP($J,1)=$G(BDMERR)_$C(30)
 S ^BDMTMP($J,2)=$C(31)_BDMERR
 Q
 ;
PRB(BDMRET,BDMSTR) ;-- return a list of problems by patient
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N BDMDA,BDMI,BDMERR,BDMDATA,BDMPAT,BDMPIEN,P,BDMDX,BDMDLM,BDMCL,BDMNAR,BDMFAC,BDMNMBR,BDMDE,BDMST,BDMON,BDMULM,BDMENT,BDMUENT
 N BDMOEN,BDMFACA,BDMFACE,BDMFAC,BDMPOVD,BDMDEL
 S P="|"
 S BDMPAT=$P(BDMSTR,P)
 K ^BDMTMP($J)
 S BDMRET="^BDMTMP("_$J_")"
 S BDMI=0
 S BDMERR=""
 S ^BDMTMP($J,BDMI)="T00035NMBR^T00010DIAGNOSISIEN^T00010DIAGNOSIS^T00020DLM^T00025CLASS^T00080NARRATIVE^T00020ENT^T00010STATUS^T00020ONSET^T00030ULM^T00030ENTER^T00003NOTES^T00008IEN^T00050FACILITY"_$C(30)
 S BDMDA=0 F  S BDMDA=$O(^AUPNPROB("AA",BDMPAT,BDMDA)) Q:'BDMDA  D
 . S BDMIEN=0 F  S BDMIEN=$O(^AUPNPROB("AA",BDMPAT,BDMDA,BDMIEN)) Q:BDMIEN=""  D
 .. S BDMOEN=0 F  S BDMOEN=$O(^AUPNPROB("AA",BDMPAT,BDMDA,BDMIEN,BDMOEN)) Q:'BDMOEN  D
 ... S BDMI=BDMI+1
 ... N BDMDXI
 ... Q:$$GET1^DIQ(9000011,BDMOEN,2.03)]""
 ... S BDMDATA=$G(^AUPNPROB(BDMOEN,0))
 ... S BDMPOVD=$E($G(^ICD9($P(BDMDATA,U),1)),1,70)
 ... S BDMDXI=$P(BDMDATA,U)
 ... S BDMDX=$$GET1^DIQ(9000011,BDMOEN,.01)
 ... S BDMDLM=$$FMTE^XLFDT($P(BDMDATA,U,3))
 ... S BDMCL=$S($$GET1^DIQ(9000011,BDMOEN,.04,"I")]"":$$GET1^DIQ(9000011,BDMOEN,.04,"I")_"-"_$$GET1^DIQ(9000011,BDMOEN,.04),1:"")
 ... S BDMNAR=$$GET1^DIQ(9000011,BDMOEN,.05)
 ... S BDMFAC=$P(BDMDATA,U,6)
 ... I BDMFAC S BDMFACE=$P($G(^DIC(4,BDMFAC,0)),U)
 ... I BDMFAC S BDMFACA=$P($G(^AUTTLOC(BDMFAC,0)),U,7)
 ... I BDMFAC S BDMFACS=$P($G(^AUTTLOC(BDMFAC,0)),U,10)
 ... S BDMNMBR=$P(BDMDATA,U,7)
 ... S BDMENT=$$FMTE^XLFDT($P(BDMDATA,U,8))
 ... S BDMST=$P(BDMDATA,U,12)
 ... S BDMON=$$FMTE^XLFDT($P(BDMDATA,U,13))
 ... S BDMULM=$$GET1^DIQ(9000011,BDMOEN,.14)
 ... S BDMUENT=$$GET1^DIQ(9000011,BDMOEN,1.03)
 ... S BDMNOTES=$S($P($G(^AUPNPROB(BDMOEN,11,0)),U,4):"Yes",1:"No")
 ... S ^BDMTMP($J,BDMI)=$G(BDMFACA)_BDMNMBR_U_BDMDXI_U_BDMDX_" - "_BDMPOVD_U_BDMDLM_U_BDMCL_U_BDMNAR_U_BDMENT_U_BDMST_U_BDMON_U_BDMULM_U_BDMUENT_U_BDMNOTES_U_BDMOEN_U_$G(BDMFAC)_"~"_$G(BDMFACS)_"-"_$G(BDMFACE)_$C(30)
 S ^BDMTMP($J,BDMI+1)=$C(31)_$G(BDMERR)
 Q
 ;
NOTES(BDMRET,BDMSTR) ;-- get problem list notes
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N P,BDMDA,BDMIEN,BDMI
 S P="|"
 S BDMPIEN=$P(BDMSTR,P)
 K ^BDMTMP($J)
 S BDMRET="^BDMTMP("_$J_")"
 S BDMI=0
 S BDMERR=""
 S ^BDMTMP($J,BDMI)="T00040FAC^T00080NOTE^T00001STATUS^T00007NOTEFAC^T00007NOTEIEN^T00030NOTEDATE"_$C(30)
 S BDMDA=0 F  S BDMDA=$O(^AUPNPROB(BDMPIEN,11,BDMDA)) Q:'BDMDA  D
 . N BDMFAC,BDMFACA,BDMFACE
 . S BDMFAC=$P($G(^AUPNPROB(BDMPIEN,11,BDMDA,0)),U)
 . I BDMFAC S BDMFACE=$P($G(^DIC(4,BDMFAC,0)),U)
 . I BDMFAC S BDMFACA=$P($G(^AUTTLOC(BDMFAC,0)),U,7)
 . S BDMIEN=0 F  S BDMIEN=$O(^AUPNPROB(BDMPIEN,11,BDMDA,11,BDMIEN)) Q:'BDMIEN  D
 .. N BDMDATA,BDMNBMR,BDMNNAR,BDMST,BDMNDT
 .. S BDMDATA=$G(^AUPNPROB(BDMPIEN,11,BDMDA,11,BDMIEN,0))
 .. S BDMNMBR=$P(BDMDATA,U)
 .. S BDMNNAR=$P(BDMDATA,U,3)
 .. S BDMST=$P(BDMDATA,U,4)
 .. S BDMNDT=$$FMTE^XLFDT($P(BDMDATA,U,5))
 .. S BDMI=BDMI+1
 .. S ^BDMTMP($J,BDMI)=$G(BDMFACA)_BDMNMBR_U_BDMNNAR_U_$G(BDMNDT)_U_BDMST_U_BDMDA_U_BDMIEN_$C(30)
 S ^BDMTMP($J,BDMI+1)=$C(31)_$G(BDMERR)
 Q
 ;
ADDPRB(BDMRET,BDMSTR) ;-- add a problem to the problem list
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 N P,BDMPAT,BDMDX,BDMDLM,BDMCL,BDMNAR,BDMFAC,BDMDE,BDMST,BDMON
 S P="|"
 S BDMPAT=$P(BDMSTR,P)
 S BDMDX=$TR($P(BDMSTR,P,2)," ")
 I $G(BDMDX) S BDMDX="`"_BDMDX
 S BDMDLM=$P(BDMSTR,P,3)
 S BDMCL=$P(BDMSTR,P,4)
 S BDMNAR=$P(BDMSTR,P,5)
 S BDMFAC=$P($P(BDMSTR,P,6),"-")
 I $G(BDMFAC)'?.N S BDMFAC=$O(^AUTTLOC("C",BDMFAC,0))
 S BDMST=$P(BDMSTR,P,7)
 S BDMON=$P(BDMSTR,P,8)
 S BDMRET=$$ADDPROB^BDMPROB(BDMDX,BDMPAT,BDMDLM,BDMCL,BDMNAR,BDMFAC,"",BDMST,BDMON)
 Q
 ;
DELPR(BDMRET,BDMSTR) ;-- delete a problem from the problem list
 S X="MERR^BDMGU",@^%ZOSF("TRAP") ; m error trap
 S R="~"
 N BDMIEN,BDMREA,BDMOTH
 S BDMIEN=$P(BDMSTR,R)
 S BDMREA=$P(BDMSTR,R,2)
 S BDMOTH=$P(BDMSTR,R,3)
 S BDMRET=$$DELPROB^BDMPROB(BDMIEN,BDMREA,BDMOTH)
 Q
 ;
VC(RETVAL,BDMSTR) ;-- get version number to see if client matches
 N P
 S P="|"
 K ^BDMTMP($J)
 N BDMVER,BDMVERI,BDMVERIN,BDMPKG,BDMI,BDMPTCH,BDMPTCHI,BDMVERI
 S BDMI=0
 S BDMVERIN=$P(BDMSTR,P)
 S BDMVERIN=$TR(BDMVERIN,".")
 S RETVAL="^BDMTMP("_$J_")"
 S ^BDMTMP($J,BDMI)="T00001VersionPresent"_$C(30)
 S BDMI=BDMI+1
 S BDMPKG=$O(^DIC(9.4,"C","BDM",0))
 I '$G(BDMPKG) D  Q
 . S ^BDMTMP($J,BDMI)=0_$C(30)
 . S ^BDMTMP($J,BDMI+1)=$C(31)
 S BDMVER=$G(^DIC(9.4,BDMPKG,"VERSION"))
 S BDMVERI=$O(^DIC(9.4,BDMPKG,22,"B",BDMVER,0))
 S BDMPTCH=$O(^DIC(9.4,BDMPKG,22,BDMVERI,"PAH","B",""),-1)
 I ($TR(BDMVER,".")_BDMPTCH)=BDMVERIN D  Q
 . S ^BDMTMP($J,BDMI)=1_$C(30)
 . S ^BDMTMP($J,BDMI+1)=$C(31)
 S ^BDMTMP($J,BDMI)=0_$C(30)
 S ^BDMTMP($J,BDMI+1)=$C(31)
 Q
 ;
