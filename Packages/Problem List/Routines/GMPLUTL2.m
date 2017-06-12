GMPLUTL2 ; ISL/MKB,KER,JER -- PL Utilities (OE/TIU) ;16-Sep-2015 16:24;DU
 ;;2.0;Problem List;**10,18,21,26,35,1003,36,1004**;Aug 25, 1994;Build 10
 ;; IHS/MSC/MGH Updated for MU2
 ; External References
 ;   DBIA   348  ^DPT(  file #2
 ;   DBIA  3990  $$ICDDX^ICDCODE
 ;   DBIA 10040  ^SC(  file #44
 ;   DBIA 10060  ^VA(200
 ;   DBIA  2716  $$GETSTAT^DGMSTAPI
 ;   DBIA  3457  $$GETCUR^DGNTAPI
 ;   DBIA 10062  7^VADPT
 ;   DBIA 10062  DEM^VADPT
 ;   DBIA 10118  EN^VALM
 ;   DBIA 10116  CLEAR^VALM1
 ;   DBIA 10103  $$HTFM^XLFDT
 ;
LIST(GMPL,GMPDFN,GMPSTAT,GMPCOMM) ; Returns list of Problems for Patient
 D LIST^GMPLUTL3
 Q
 ;
DETAIL(IFN,GMPL) ; Returns Detailed Data for Problem
 ;
 ; Input   IFN  Pointer to Problem file #9000011
 ;
 ; Output  GMPL Array, passed by reference
 ;         GMPL("DATA NAME") = External Format of Value
 ;
 ;         GMPL("DIAGNOSIS")  ICD Code
 ;         GMPL("ICDD")       ICD Description
 ;         GMPL("PATIENT")    Patient Name
 ;         GMPL("MODIFIED")   Date Last Modified
 ;         GMPL("NARRATIVE")  Provider Narrative
 ;         GMPL("ENTERED")    Date Entered ^ Entered by
 ;         GMPL("STATUS")     Status
 ;         GMPL("PRIORITY")   Priority Acute/Chronic
 ;         GMPL("ONSET")      Date of Onset
 ;         GMPL("PROVIDER")   Responsible Provider
 ;         GMPL("RECORDED")   Date Recorded ^ Recorded by
 ;         GMPL("CONDITION")  Patient Condition (#1.02)
 ;         GMPL("RESOLVED")   Date Resolved (#1.07)
 ;         GMPL("CLINIC")     Hospital Location
 ;         GMPL("SERVICE")    Service (#1.06)
 ;         GMPL("FACILITY")   Facility ID ^ Facility Name (#.06)
 ;         GMPL("SC")         Service Connected SC/NSC/""
 ;         GMPL("SCTC")       SNOMED-CT Concept Code
 ;         GMPL("SCTD")       SNOMED-CT Designation Code
 ;         GMPL("SCTT")       SNOMED-CT Preferred Text
 ;         GMPL("VHATC")      VHAT Concept Code
 ;         GMPL("VHATD")      VHAT Designation Code
 ;         GMPL("VHATT")      VHAT Preferred Text
 ;
 ;         GMPL("ICD9MLTP") = #
 ;         GMPL("ICD9MLTP",CNT) = ICD-9-CM Code^ICD-9-CM Description
 ;
 ;         GMPL("EXPOSURE") = #
 ;         GMPL("EXPOSURE",X)="AGENT ORANGE"
 ;         GMPL("EXPOSURE",X)="RADIATION"
 ;         GMPL("EXPOSURE",X)="ENV CONTAMINANTS"
 ;         GMPL("EXPOSURE",X)="HEAD AND/OR NECK CANCER"
 ;         GMPL("EXPOSURE",X)="MILITARY SEXUAL TRAUMA"
 ;         GMPL("EXPOSURE",X)="COMBAT VET"
 ;         GMPL("EXPOSURE",X)="SHAD"
 ;
 ;         GMPL("COMMENT") = #
 ;         GMPL("COMMENT",CNT) = Date ^ Author ^ Text of Note
 ;
 N GMPL0,GMPL1,GMPL800,GMPL803,GMPLP,X,I,FAC,CNT,NIFN Q:'$D(^AUPNPROB(IFN,0))
 S GMPLP=+($$PTR^GMPLUTL4)
 S GMPL0=$G(^AUPNPROB(IFN,0)),GMPL1=$G(^(1)),GMPL800=$G(^(800)),GMPL803=$G(^(803,0))
 S GMPL("DIAGNOSIS")=$P($$ICDDX^ICDCODE(+GMPL0),U,2)
 S GMPL("FACILITY")=$$RESOLVE(IFN,".06","IE")
 S GMPL("ICDD")=$$ICDDESC(GMPL("DIAGNOSIS"),$P(GMPL0,U,8))
 S GMPL("PATIENT")=$P($G(^DPT(+$P(GMPL0,U,2),0)),U)
 S GMPL("MODIFIED")=$$EXTDT^GMPLX($P(GMPL0,U,3))
 ;IHS/MSC/MGH changed for MU stage 2
 ;S GMPL("NARRATIVE")=$$PROBTEXT^GMPLX(IFN)
 S GMPL("NARRATIVE")=$$GET1^DIQ(9000011,IFN,.05)
 S GMPL("ENTERED")=$$EXTDT^GMPLX($P(GMPL0,U,8))_U_$P($G(^VA(200,+$P(GMPL1,U,3),0)),U)
 S X=$P(GMPL0,U,12),GMPL("STATUS")=$S(X="A":"ACTIVE",1:"INACTIVE")
 S X=$S(X'="A":"",1:$P(GMPL1,U,14)),GMPL("PRIORITY")=$S(X="A":"ACUTE",X="C":"CHRONIC",1:"")
 S GMPL("ONSET")=$$EXTDT^GMPLX($P(GMPL0,U,13))
 S GMPL("CONDITION")=$$RESOLVE(IFN,"1.02","E")
 S GMPL("PROVIDER")=$P($G(^VA(200,+$P(GMPL1,U,5),0)),U)
 S GMPL("RECORDED")=$$EXTDT^GMPLX($P(GMPL1,U,9))_U_$P($G(^VA(200,+$P(GMPL1,U,4),0)),U)
 S GMPL("RESOLVED")=$$EXTDT^GMPLX($P(GMPL1,U,7))
 S GMPL("CLINIC")=$P($G(^SC(+$P(GMPL1,U,8),0)),U)
 S GMPL("SERVICE")=$$RESOLVE(IFN,1.06,"E")
 S GMPL("SCTC")=$P(GMPL800,U),GMPL("SCTD")=$P(GMPL800,U,2)
 I $L($G(GMPL("SCTC"))) S GMPL("SCTT")=$$SCTTEXT(GMPL("SCTC"),$P(GMPL0,U,8),"SCT")
 S GMPL("VHATC")=$P(GMPL800,U,3),GMPL("VHATD")=$P(GMPL800,U,4)
 I $L($G(GMPL("VHATC"))) S GMPL("VHATT")=$$SCTTEXT(GMPL("VHATC"),$P(GMPL0,U,8),"VHAT")
 I $L($G(GMPL803))>0 D
 . N DA,ICDDESC S (CNT,DA)=0,GMPL("ICD9MLTP")=0 F  S DA=$O(^AUPNPROB(IFN,803,DA)) Q:'+DA  D
 . . S X=$G(^AUPNPROB(IFN,803,DA,0)),ICDDESC=$$ICDDESC^GMPLUTL2($P(X,U))
 . . S CNT=CNT+1,GMPL("ICD9MLTP",CNT)=$P(X,U)_U_$G(ICDDESC)
 . S GMPL("ICD9MLTP")=CNT
 E  S GMPL("ICD9MLTP")=""
 S GMPL("SC")=$S($P(GMPL1,U,10):"YES",$P(GMPL1,U,10)=0:"NO",1:"UNKNOWN")
 S GMPL("EXPOSURE")=0
 I $P(GMPL1,U,11) S X=GMPL("EXPOSURE")+1,GMPL("EXPOSURE",X)="AGENT ORANGE",GMPL("EXPOSURE")=X
 I $P(GMPL1,U,12) S X=GMPL("EXPOSURE")+1,GMPL("EXPOSURE",X)="RADIATION",GMPL("EXPOSURE")=X
 I $P(GMPL1,U,13) S X=GMPL("EXPOSURE")+1,GMPL("EXPOSURE",X)="ENV CONTAMINANTS",GMPL("EXPOSURE")=X
 I $P(GMPL1,U,15) S X=GMPL("EXPOSURE")+1,GMPL("EXPOSURE",X)="HEAD AND/OR NECK CANCER",GMPL("EXPOSURE")=X
 I $P(GMPL1,U,16) S X=GMPL("EXPOSURE")+1,GMPL("EXPOSURE",X)="MILITARY SEXUAL TRAUMA",GMPL("EXPOSURE")=X
 I $P(GMPL1,U,17) S X=GMPL("EXPOSURE")+1,GMPL("EXPOSURE",X)="COMBAT VET",GMPL("EXPOSURE")=X
 I $P(GMPL1,U,18)&(GMPLP'>0) S X=GMPL("EXPOSURE")+1,GMPL("EXPOSURE",X)="SHAD",GMPL("EXPOSURE")=X
 S (FAC,CNT)=0,GMPL("COMMENT")=0
 F FAC=0:0 S FAC=$O(^AUPNPROB(IFN,11,FAC)) Q:+FAC'>0  D
 . F NIFN=0:0 S NIFN=$O(^AUPNPROB(IFN,11,FAC,11,NIFN)) Q:NIFN'>0  D
 . . S X=$G(^AUPNPROB(IFN,11,FAC,11,NIFN,0))
 . . S CNT=CNT+1,GMPL("COMMENT",CNT)=$$EXTDT^GMPLX($P(X,U,5))_U_$P($G(^VA(200,+$P(X,U,6),0)),U)_U_$P(X,U,3)
 S GMPL("COMMENT")=CNT D AUDIT
 Q
 ;
RESOLVE(IEN,FIELD,FORMAT) ; Call GET1^DIQ to resolve field values
 ;  Input:    IEN = Record #
 ;          FIELD = Field # in PROBLEMS file #9000011
 ;         FORMAT = "I"nternal, "E"xternal, or "IE" -> both
 ; Output: GMPLY = value as specified by format
 N GMPLY
 S IEN=IEN_","
 S GMPLY=$$GET1^DIQ(9000011,IEN,FIELD,FORMAT)
 S:FORMAT="IE" GMPLY=GMPLY_U_$$GET1^DIQ(9000011,IEN,FIELD,"E")
 Q GMPLY
AUDIT ; 14 Sep 99 - MA - Add audit trail to OE Problem List.
 ; Called from DETAIL, requires IFN and sets GMPL("AUDIT")
 N IDT,AIFN,X0,X1,FLD,CNT
 S CNT=0,GMPL("AUDIT")=CNT
 F IDT=0:0 S IDT=$O(^GMPL(125.8,"AD",IFN,IDT)) Q:IDT'>0  D
 . F AIFN=0:0 S AIFN=$O(^GMPL(125.8,"AD",IFN,IDT,AIFN)) Q:AIFN'>0  D
 .. S X0=$G(^GMPL(125.8,AIFN,0)),X1=$G(^(1)) Q:'$L(X0)
 .. S FLD=$$FLDNAME(+$P(X0,U,2))
 .. S CNT=CNT+1
 .. S GMPL("AUDIT",CNT,0)=$P(X0,U,2)_U_FLD_U_$P(X0,U,3,8)
 .. ; = pointer#^fld name^date mod^who mod^old^new^reason^prov
 .. S:$L(X1) GMPL("AUDIT",CNT,1)=X1
 S GMPL("AUDIT")=CNT
 Q
 ;
FLDNAME(NUM) ; Returns field name for display
 N NAME,NM1,NM2,I,J S J=0,NAME=""
 S NM1=".01^.05^.12^.13^1.01^1.02^1.04^1.05^1.06^1.07^1.08^1.09^1.1^1.11^1.12^1.13^1.14^1.15^1.16^1.17^1.18^80001^80002^80003^80004^80005^302^1101"
 F I=1:1:$L(NM1,U) I +$P(NM1,U,I)=+NUM S J=I Q
 G:J'>0 FNQ
 S NM2="DIAGNOSIS^PROVIDER NARRATIVE^STATUS^DATE OF ONSET^PROBLEM^CONDITION^RECORDING PROVIDER^RESPONSIBLE PROVIDER"
 S NM2=NM2_"^SERVICE^DATE RESOLVED^CLINIC^DATE RECORDED^SERVICE CONNECTED^AGENT ORANGE EXP^RADIATION EXP^ENV CONTAMINANTS EXP"
 S NM2=NM2_"^IMMEDIACY^HEAD & NECK CANCER^MIL SEX TRAUMA^COMBAT VET^SHIPBOARD HAZARD EXP^SNOMED CT CONCEPT^SNOMED CT DESIGNATION"
 S NM2=NM2_"^VHAT CONCEPT^VHAT DESIGNATION^SNOMED CT/ICD MAP STATUS^SECONDARY DIAGNOSIS^NOTE"
 S NAME=$P(NM2,U,J)
FNQ Q NAME
 ;
ADD(DFN,LOC,GMPROV) ; -- Interactive LMgr action to add new problem
 N X,Y,GMPDFN,GMPVA,GMPVAMC,GMPSC,GMPAGTOR,GMPION,GMPGULF,GMPHNC,GMPMST,GMPCV,GMPSHD
 N GMPARAM,GMPLVIEW,GMPLUSER,GMPCLIN,GMPLSLST,GMPQUIT,VALMCC,GMPSAVED
 Q:'DFN  Q:'LOC  D SETVARS
 S GMPLSLST=$P($G(^VA(200,DUZ,125)),U,2),VALMCC=0
 I 'GMPLSLST,GMPCLIN,$D(^GMPL(125,"C",+GMPCLIN)) S GMPLSLST=$O(^(+GMPCLIN,0))
 I GMPLSLST D  Q
 . S $P(GMPLSLST,U,2)=$P($G(^GMPL(125,+GMPLSLST,0)),U)
 . D EN^VALM("GMPL LIST MENU")
 F  D ADD^GMPL1 Q:$D(GMPQUIT)  K DUOUT,DTOUT,GMPSAVED W !!,">>>  Please enter another problem, or press <return> to exit."
 Q
 ;
SETVARS ; -- Define GMP* variables used in ADD and EDIT
 N VA,VADM,VAEL,VASV,X
 Q:'DFN  D DEM^VADPT,7^VADPT
 S GMPDFN=DFN_U_VADM(1)_U_$E(VADM(1))_VA("BID")_$S(VADM(6):U_+VADM(6),1:"")
 S AUPNSEX=$P(VADM(5),U),GMPVA=1,GMPSC=VAEL(3),GMPAGTOR=VASV(2),GMPION=VASV(3)
 S X=$P($G(^DPT(DFN,.322)),U,10),GMPGULF=$S(X="Y":1,X="N":0,1:"")
 S GMPCV=0 I +$G(VASV(10)) S:DT'>$P($G(VASV(10,1)),U) GMPCV=1 ;CV
 S GMPSHD=+$G(VASV(14,1)) ;SHAD
 S X=$$GETCUR^DGNTAPI(DFN,"HNC"),X=+($G(HNC("STAT"))),GMPHNC=$S(X=4:1,X=5:1,X=1:0,X=6:0,1:"")
 S X=$P($$GETSTAT^DGMSTAPI(DFN),"^",2),GMPMST=$S(X="Y":1,X="N":0,1:"")
 S GMPLVIEW("VIEW")=$S($P($G(^SC(+$G(LOC),0)),U,3)="C":"C",1:"S")
 S GMPCLIN="" I $G(LOC),GMPLVIEW("VIEW")="C" S GMPCLIN=+LOC_U_$P(^SC(+LOC,0),U)
 S X=$$PARAM,GMPARAM("VER")=+$P(X,U,2),GMPARAM("CLU")=+$P(X,U,4),GMPARAM("REV")=+$P(X,U,5)
 S:+GMPROV=DUZ GMPLUSER=1 S GMPVAMC=+$G(DUZ(2)),GMPLIST(0)=0
 Q
 ;
EDIT(DFN,LOC,GMPROV,GMPIFN) ; Interactive LMgr action to edit a problem
 N GMPARAM,GMPDFN,GMPVA,GMPSC,GMPAGTOR,GMPION,GMPGULF,GMPHNC,GMPMST,GMPCV,GMPSHD
 N GMPLVIEW,GMPCLIN,GMPLJUMP,GMPQUIT,GMPLUSER,GMPLVAMC,AUPNSEX
 L +^AUPNPROB(GMPIFN,0):1 I '$T W $C(7),!!,$$LOCKED^GMPLX,! H 2 Q
 D SETVARS,EN^VALM("GMPL EDIT PROBLEM")
 L -^AUPNPROB(GMPIFN,0)
 Q
 ;
REMOVE(GMPIFN,GMPROV,TEXT,PLY) ; -- Remove problem GMPIFN
 N GMPVAMC,CHANGE
 S GMPVAMC=+$G(DUZ(2)),PLY=-1,PLY(0)=""
 I '$L($G(^AUPNPROB(GMPIFN,0))) S PLY(0)="Invalid problem" Q
 I '$D(^VA(200,+$G(GMPROV),0)) S PLY(0)="Invalid provider" Q
 I $L($G(TEXT)) S GMPFLD(10,"NEW",1)=TEXT D NEWNOTE^GMPLSAVE
 S CHANGE=GMPIFN_"^1.02^"_$$HTFM^XLFDT($H)_U_DUZ_U_$P($G(^AUPNPROB(GMPIFN,1)),U,2)_"^H^Deleted^"_+$G(GMPROV),$P(^AUPNPROB(GMPIFN,1),U,2)="H",PLY=GMPIFN
 D AUDIT^GMPLX(CHANGE,""),DTMOD^GMPLX(GMPIFN)
 Q
 ;
PARAM() ; -- Returns parameter values from 125.99
 Q $G(^GMPL(125.99,1,0))
 ;
VAF(DFN,SILENT) ; -- print PL VA Form chart copy
 ;
 N VA,VADM,VAERR,GMPDFN,GMPVAMC,X,GMPARAM,GMPRT,GMPQUIT,GMPLCURR
 Q:'$G(DFN)  D DEM^VADPT S GMPDFN=DFN_U_VADM(1)_U_$E(VADM(1))_VA("BID")
 S GMPVAMC=+$G(DUZ(2)),GMPARAM("QUIET")=1
 S X=$G(^GMPL(125.99,1,0)),GMPARAM("VER")=+$P(X,U,2),GMPARAM("PRT")=+$P(X,U,3),GMPARAM("CLU")=+$P(X,U,4),GMPARAM("REV")=$S($P(X,U,5)="R":1,1:0) K X
 D VAF^GMPLPRNT I '$G(SILENT) D  Q:$G(GMPQUIT)
 . I GMPRT'>0 W !!,"No problems available." S GMPQUIT=1 Q
 . D DEVICE^GMPLPRNT Q:$G(GMPQUIT)  D CLEAR^VALM1
 D PRT^GMPLPRNT
 Q
SCTTEXT(GMPLCODE,GMPDT,GMPSYS) ; Get Preferred Text for SCT Code
 N %DT,GMPY,LEX,LEXY S GMPY="",GMPDT=$G(GMPDT,DT),GMPSYS=$G(GMPSYS,"SCT")
 S LEXY=$$CODE^LEXTRAN(GMPLCODE,GMPSYS,GMPDT)
 I '+LEXY G SCTTEXQ
 S GMPY=$G(LEX("P"))
SCTTEXQ Q GMPY
ICDDESC(GMPLCODE,GMPDT) ; Get description for ICD9 Code
 N ICDD,GMPY,ICDY S GMPY="",GMPDT=$G(GMPDT,DT)
 S ICDY=$$ICDD^ICDCODE(GMPLCODE,"ICDD",GMPDT)
 I 'ICDY G ICDDESQ
 S GMPY=$G(ICDD(1))
ICDDESQ Q GMPY
