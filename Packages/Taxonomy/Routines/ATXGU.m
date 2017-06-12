ATXGU ;cmi/anch/maw - ATX Gui Taxonomy Utilities 
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
 ;generic Taxonomy GUI calls
 ;cmi/anch/maw 3/8/2007 modified MED to remove screen on inactive meds
 ;
 Q
DEBUG(RETVAL,BGPSTR) ;run the debugger
 D DEBUG^%Serenji("TAX^ATXGU(.RETVAL,.BGPSTR)")
 Q
 ;
CATSTR(ATXSRET,STR) ;EP - concatenate string
 N ATXDA
 S ATXSRET=""
 S ATXDA=0 F  S ATXDA=$O(STR(ATXDA)) Q:'ATXDA  D
 . S ATXSRET=ATXSRET_$G(STR(ATXDA))
 Q
 ;
MERR ; M TRAP
 N X
 X ("S X=$"_"ZE")
 S X="MUMPS error: """_X_""""
 D ERR(X)
 Q
 ;
ERR(ERR) ;
 N X
 S X="ERROR|"_ERR_$C(30)
 S @ATXRET@(1)=X
 Q
 ;
FTAX(ATXRET,ATXSTR) ;-- get taxonomies w file # passed in
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N P,ATXI,ATXFN,ATXIEN
 S P="|"
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ^ATXTMP($J,ATXI)="T00007BMXIEN^T00080Taxonomy"_$C(30)
 S ATXFN=$P(ATXSTR,P)
 S ATXIEN=0 F  S ATXIEN=$O(^ATXAX("B",ATXIEN)) Q:ATXIEN=""  D
 . N ATXDA
 . S ATXDA=0 F  S ATXDA=$O(^ATXAX("B",ATXIEN,ATXDA)) Q:'ATXDA  D
 .. I ATXFN]"" Q:$P($G(^ATXAX(ATXDA,0)),U,15)'=ATXFN
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXDA_U_$P($G(^ATXAX(ATXDA,0)),U)_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
MED(ATXRET) ;-- drugs
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXMED,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080MED"_$C(30)
 S ATXMED=0 F  S ATXMED=$O(^PSDRUG("B",ATXMED)) Q:ATXMED=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^PSDRUG("B",ATXMED,ATXIEN)) Q:'ATXIEN  D
 .. ;Q:$G(^PSDRUG(ATXIEN,"I"))  ;need to be able to add inactive drugs for BGP
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXMED_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
IMM(ATXRET) ;-- imm
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXIMM,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080IMM"_$C(30)
 S ATXIMM=0 F  S ATXIMM=$O(^AUTTIMM("D",ATXIMM)) Q:ATXIMM=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^AUTTIMM("D",ATXIMM,ATXIEN)) Q:'ATXIEN  D
 .. ;Q:$P($G(^AUTTIMM(ATXIEN,0)),U,7)
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXIMM_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
SKT(ATXRET) ;-- skin test
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXSKT,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080SKT"_$C(30)
 S ATXSKT=0 F  S ATXSKT=$O(^AUTTSK("B",ATXSKT)) Q:ATXSKT=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^AUTTSK("B",ATXSKT,ATXIEN)) Q:'ATXIEN  D
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXSKT_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
DXP(ATXRET) ;-- diagnostic procedure
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXDXP,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080DXP"_$C(30)
 S ATXDXP=0 F  S ATXDXP=$O(^AUTTDXPR("B",ATXDXP)) Q:ATXDXP=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^AUTTDXPR("B",ATXDXP,ATXIEN)) Q:'ATXIEN  D
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXDXP_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
XAM(ATXRET) ;-- exam
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXXAM,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080XAM"_$C(30)
 S ATXXAM=0 F  S ATXXAM=$O(^AUTTEXAM("B",ATXXAM)) Q:ATXXAM=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^AUTTEXAM("B",ATXXAM,ATXIEN)) Q:'ATXIEN  D
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXXAM_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
RAD(ATXRET) ;-- rad
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXRAD,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080RAD"_$C(30)
 S ATXRAD=0 F  S ATXRAD=$O(^RAMIS(71,"B",ATXRAD)) Q:ATXRAD=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^RAMIS(71,"B",ATXRAD,ATXIEN)) Q:'ATXIEN  D
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXRAD_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
RFL(ATXRET) ;-- refusal types
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXRFL,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080REFUSAL"_$C(30)
 S ATXRFL=0 F  S ATXRFL=$O(^AUTTREFT("B",ATXRFL)) Q:ATXRFL=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^AUTTREFT("B",ATXRFL,ATXIEN)) Q:'ATXIEN  D
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXRFL_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
EDU(ATXRET) ;-- education topics
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXEDU,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050EDUCATIONTOPICS"_$C(30)
 S ATXEDU=0 F  S ATXEDU=$O(^AUTTEDT("B",ATXEDU)) Q:ATXEDU=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^AUTTEDT("B",ATXEDU,ATXIEN)) Q:'ATXIEN  D
 .. ;Q:$P($G(^AUTTEDT(ATXIEN,0)),U,3)  ;inactive
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXEDU_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
DEDU(ATXRET) ;-- get all diabetes educ
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXEDU,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050EDUCATIONTOPICS"_$C(30)
 S ATXEDU=0 F  S ATXEDU=$O(^AUTTEDT("B",ATXEDU)) Q:ATXEDU=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^AUTTEDT("B",ATXEDU,ATXIEN)) Q:'ATXIEN  D
 .. ;Q:$P($G(^AUTTEDT(ATXIEN,0)),U,3)
 .. Q:$E($P($G(^AUTTEDT(ATXIEN,0)),U),1,2)'="DM"
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXEDU_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
ICD(ATXRET) ;-- get all POV's
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXPOV,ATXI,ATXERR,ATXPOVE,ATXPOVD,ATXPIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00100POVS"_$C(30)
 S ATXPOV=0 F  S ATXPOV=$O(^ICD9("AB",ATXPOV)) Q:ATXPOV=""  D
 . S ATXPIEN=0 F  S ATXPIEN=$O(^ICD9("AB",ATXPOV,ATXPIEN)) Q:'ATXPIEN  D
 .. Q:$E(ATXPOV,1,1)="["
 .. Q:ATXPOV="delete"
 .. ;S ATXPOVE=$P($G(^ICD9(ATXPIEN,0)),U)
 .. S ATXPOVE=$P($$ICDDX^ICDCODE(ATXPIEN),U,2)
 .. ;Q:$P($G(^ICD9(ATXPIEN,0)),U,9)
 .. S ATXI=ATXI+1
 .. ;S ATXPOVD=$P($G(^ICD9(ATXPIEN,0)),U,3)
 .. S ATXPOVD=$P($$ICDDX^ICDCODE(ATXPIEN),U,4)
 .. S ^ATXTMP($J,ATXI)=ATXPOVE_"-"_ATXPOVD_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
LAB(ATXRET) ;-- lab tests
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXLAB,ATXI,ATXERR
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080LAB"_$C(30)
 S ATXLAB=0 F  S ATXLAB=$O(^LAB(60,"B",ATXLAB)) Q:ATXLAB=""  D
 . S ATXI=ATXI+1
 . S ^ATXTMP($J,ATXI)=ATXLAB_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
HF(ATXRET) ;-- health factors
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXHF,ATXI,ATXERR,ATXDA,ATXTB,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080HF"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^AUTTHF("B",ATXDA)) Q:ATXDA=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^AUTTHF("B",ATXDA,ATXIEN)) Q:'ATXIEN  D
 .. ;Q:$P($G(^AUTTHF(ATXIEN,0)),U,13)
 .. Q:$P($G(^AUTTHF(ATXIEN,0)),U,10)'="F"
 .. S ATXHF=$P($G(^AUTTHF(ATXIEN,0)),U)
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXHF_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
CPT(ATXRET) ;-- cpts
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXCPT,ATXI,ATXERR,ATXIEN,ATXDA,ATXCPTD
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050CPT"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^ICPT(ATXDA)) Q:ATXDA=""  D
 . ;Q:$P($G(^ICPT(ATXDA,0)),U,4)  ;inactive
 . ;S ATXCPT=$P($G(^ICPT(ATXDA,0)),U)
 . S ATXCPT=$P($$CPT^ICPTCOD(ATXDA),U,2)
 . ;S ATXCPTD=$P($G(^ICPT(ATXDA,0)),U,2)
 . S ATXCPTD=$P($$CPT^ICPTCOD(ATXDA),U,3)
 . S ATXI=ATXI+1
 . S ^ATXTMP($J,ATXI)=ATXCPT_"-"_ATXCPTD_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
ADA(ATXRET) ;-- ada
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXADA,ATXI,ATXERR,ATXIEN,ATXDA,ATXADAD
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050ADA"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^AUTTADA(ATXDA)) Q:ATXDA=""  D
 . ;Q:$P($G(^AUTTADA(ATXDA,0)),U,8)  ;inactive
 . S ATXADA=$P($G(^AUTTADA(ATXDA,0)),U)
 . S ATXADAD=$P($G(^AUTTADA(ATXDA,0)),U,2)
 . S ATXI=ATXI+1
 . S ^ATXTMP($J,ATXI)=ATXADA_"-"_ATXADAD_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
PRV(ATXRET) ;-- providers
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXPRV,ATXI,ATXERR,ATXIEN,ATXDA
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050PRV"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^VA(200,"B",ATXDA)) Q:ATXDA=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^VA(200,"B",ATXDA,ATXIEN)) Q:'ATXIEN  D
 .. Q:'$O(^VA(200,"AK.PROVIDER",ATXDA,0))
 .. S ATXPRV=$P($G(^VA(200,ATXIEN,0)),U)
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXPRV_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
PRVC(ATXRET) ;-- provider classes
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXPRVC,ATXI,ATXERR,ATXDA
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050PRVC"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^DIC(7,"B",ATXDA)) Q:ATXDA=""  D
 . ;S ATXPRVC=$P($G(^DIC(7,ATXDA,0)),U)
 . S ATXI=ATXI+1
 . S ^ATXTMP($J,ATXI)=ATXDA_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
LABL(ATXRET) ;-- lab loinc codes
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXLABL,ATXI,ATXERR,ATXIEN,ATXDA,ATXLABD
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050LABL"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^LAB(95.3,"B",ATXDA)) Q:ATXDA=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^LAB(95.3,"B",ATXDA,ATXIEN)) Q:'ATXIEN  D
 .. S ATXLABL=$P($G(^LAB(95.3,ATXIEN,0)),U)_"-"_$P($G(^LAB(95.3,ATXIEN,0)),U,15)
 .. S ATXLABD=$G(^LAB(95.3,ATXIEN,80))
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXLABL_"/"_ATXLABD_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
DENO(ATXRET) ;-- dental op site
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXDENO,ATXI,ATXERR,ATXIEN,ATXDA
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050DENO^T00007IEN"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^ADEOPS("B",ATXDA)) Q:ATXDA=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^ADEOPS("B",ATXDA,ATXIEN)) Q:'ATXIEN  D
 .. S ATXDENO=$P($G(^ADEOPS(ATXIEN,0)),U)
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXDENO_U_ATXIEN_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
CLN(ATXRET) ;-- clinic stop codes
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXCLN,ATXI,ATXERR,ATXIEN,ATXDA
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050CLN"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^DIC(40.7,"B",ATXDA)) Q:ATXDA=""  D
 . S ATXI=ATXI+1
 . S ^ATXTMP($J,ATXI)=ATXDA_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
ICDO(ATXRET) ;-- icd operation
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXICDO,ATXICDD,ATXI,ATXERR,ATXIEN,ATXDA
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050ICDO^T00007IEN"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^ICD0(ATXDA)) Q:'ATXDA  D
 . ;S ATXICD0=$P($G(^ICD0(ATXDA,0)),U)
 . S ATXICD0=$P($$ICDOP^ICDCODE(ATXDA,,,"I"),U,2)
 . ;S ATXICDD=$P($G(^ICD0(ATXDA,0)),U,4)
 . S ATXICDD=$P($$ICDOP^ICDCODE(ATXDA,,,"I"),U,5)
 . S ATXI=ATXI+1
 . S ^ATXTMP($J,ATXI)=ATXICD0_"-"_ATXICDD_U_ATXDA_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
COM(ATXRET) ;-- communities
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXCOM,ATXCOMS,ATXI,ATXERR,ATXIEN,ATXDA
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00050CLN^T00007IEN"_$C(30)
 S ATXDA=0 F  S ATXDA=$O(^AUTTCOM("B",ATXDA)) Q:ATXDA=""  D
 . S ATXIEN=0 F  S ATXIEN=$O(^AUTTCOM("B",ATXDA,ATXIEN)) Q:'ATXIEN  D
 .. S ATXCOM=$P($G(^AUTTCOM(ATXIEN,0)),U)
 .. S ATXCOMS=$S($P($G(^AUTTCOM(ATXIEN,0)),U,3):$P($G(^DIC(5,$P($G(^AUTTCOM(ATXIEN,0)),U,3),0)),U,2),1:"")
 .. S ATXI=ATXI+1
 .. S ^ATXTMP($J,ATXI)=ATXCOM_"-"_ATXCOMS_U_ATXIEN_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
MSR(ATXRET) ;-- measurement
 S X="MERR^ATXGU",@^%ZOSF("TRAP")
 N ATXMST,ATXMSA,ATXMS,ATXMSTE,ATXI,ATXERR,ATXIEN
 K ^ATXTMP($J)
 S ATXRET="^ATXTMP("_$J_")"
 S ATXI=0
 S ATXERR=""
 S ^ATXTMP($J,ATXI)="T00080MSR"_$C(30)
 S ATXMST=0 F  S ATXMST=$O(^AUTTMSR(ATXMST)) Q:'ATXMST  D
 . S ATXI=ATXI+1
 . S ATXMSA=$P($G(^AUTTMSR(ATXMST,0)),U)
 . S ATXMS=$P($G(^AUTTMSR(ATXMST,0)),U,2)
 . S ^ATXTMP($J,ATXI)=ATXMS_$C(30)
 S ^ATXTMP($J,ATXI+1)=$C(31)_$G(ATXERR)
 Q
 ;
