BGOVEXAM ; IHS/BAO/TMD - V Exam Management ;02-Oct-2013 13:02;PLS
 ;;1.1;BGO COMPONENTS;**1,3,11,12,13**;Mar 20, 2007;Build 3
 ; Return exam records for a patient
 ;  DFN = Patient IEN
 ; .RET = Returned as a list of record in one of two formats:
 ;   For exams:
 ;    E ^ Exam Name [2] ^ Visit Date [3] ^ Result [4] ^ Comment [5] ^ Provider Name [6] ^ Facility Name [7] ^
 ;    Provider IEN [8] ^ Location Name [9] ^ Exam IEN [10] ^ V File IEN [11] ^ Visit IEN [12] ^ Visit Category [13] ^
 ;    Visit Locked [14] ^ Event date [15]
 ;
 ;   For refusals:
 ;    R ^ Exam Name [2] ^ Refusal Date [3] ^ Reason [4] ^ Comment [5] ^ Exam IEN [6] ^ V File IEN [7] ^
 ;    Refusal Locked [8]
GET(RET,DFN) ;EP
 N X,CNT,REC,VCAT,EXAM,VDT,VXAM,RESULT,LOC,FAC,FACNAM,EXNAME,PRVIEN,PRVNAME,EVNDT
 N EXAM,VDATE,VIEN,COMMENT
 S RET=$$TMPGBL^BGOUTL
 S (CNT,EXAM)=0
 F  S EXAM=$O(^AUPNVXAM("AA",DFN,EXAM)) Q:'EXAM  D
 .S VDT=0
 .F  S VDT=$O(^AUPNVXAM("AA",DFN,EXAM,VDT)) Q:'VDT  D
 ..S VXAM=0
 ..F  S VXAM=$O(^AUPNVXAM("AA",DFN,EXAM,VDT,VXAM)) Q:'VXAM  D
 ...S REC=$G(^AUPNVXAM(VXAM,0))
 ...Q:REC=""
 ...S RESULT=$$EXTERNAL^DILFD($$FNUM,.04,,$P(REC,U,4))
 ...I RESULT="",$O(^AUPNPREF("AA",DFN,9999999.15,EXAM,VDT,"")) Q
 ...S EXNAME=$P($G(^AUTTEXAM(EXAM,0)),U)
 ...S PRVIEN=$P($G(^AUPNVXAM(VXAM,12)),U,4)
 ...;Patch 11
 ...S EVNDT=$$FMTDATE^BGOUTL($P($G(^AUPNVXAM(VXAM,12)),U,1))
 ...S PRVNAME=$S('PRVIEN:"",1:$P($G(^VA(200,+PRVIEN,0)),U))
 ...S VIEN=$P(REC,U,3)
 ...Q:'VIEN
 ...S LOC=$P($G(^AUPNVSIT(VIEN,0)),U,6)
 ...S FAC=$S(LOC:$P($G(^AUTTLOC(LOC,0)),U,10),1:"")
 ...S FACNAM=$S(LOC:$P($G(^AUTTLOC(LOC,0)),U),1:"")
 ...S:FACNAM FACNAM=$P($G(^DIC(4,FACNAM,0)),U)
 ...S:$P($G(^AUPNVSIT(VIEN,21)),U)'="" FACNAM=$P(^(21),U)
 ...S VCAT=$P($G(^AUPNVSIT(VIEN,0)),U,7)
 ...S VDATE=$$FMTDATE^BGOUTL(9999999-VDT)
 ...S COMMENT=$P($G(^AUPNVXAM(VXAM,811)),U)
 ...S CNT=CNT+1
 ...S @RET@(CNT)="E"_U_EXNAME_U_VDATE_U_RESULT_U_COMMENT_U_PRVNAME_U_FACNAM_U_PRVIEN_U_LOC_U_EXAM_U_VXAM_U_VIEN_U_VCAT_U_$$ISLOCKED^BEHOENCX(VIEN)_U_EVNDT
 ; Add refusal data
 N ARRAY,CNT2,Z,STR,SAVE,SAVE2,DATA
 S CNT2=0,ARRAY="DATA"
 D REFGET^BGOUTL2(.ARRAY,DFN,9999999.15,.CNT2)
 S Z=0 F  S Z=$O(@ARRAY@(Z)) Q:Z=""  D
 .S STR=$G(@ARRAY@(Z))
 .S SAVE=$P(STR,U,13),SAVE2=$P(STR,U,11)
 .I SAVE'="" S $P(STR,U,11)=SAVE,$P(STR,U,13)=SAVE2
 .S CNT=CNT+1
 .S @RET@(CNT)=STR
 Q
 ; Return a list of exam types
 ; Returned as a list of records in the format:
 ;  Exam Type IEN ^ Exam Name ^ Exam Code ^ CPT Code
GETTYPES(RET,DUMMY) ;EP
 N EXAM,CNT,REC,NAME,CODE,CPT
 S RET=$$TMPGBL^BGOUTL
 S (CNT,EXAM)=0
 F  S EXAM=$O(^AUTTEXAM(EXAM)) Q:'EXAM  D
 .S REC=$G(^AUTTEXAM(EXAM,0))
 .Q:'$L(REC)
 .Q:$P(REC,U,4)=1
 .;Do not allow nutritional screening in list
 .Q:$P(REC,U,2)=40
 .S NAME=$P(REC,U)
 .S CODE=$P(REC,U,2)
 .S CPT=$P(REC,U,11)
 .S CNT=CNT+1,@RET@(CNT)=EXAM_U_NAME_U_CODE_U_CPT
 Q
 ; Get list of valid results for a given EXAM Name or IEN
GETRSLTS(RET,EXAM) ;EP
 N CNT,RL,RLIST
 ;S RET=$$TMPGBL^BGOUTL,CNT=0
 K RET
 S CNT=0
 Q:$G(EXAM)=""
 I EXAM'?1.N D
 .S EXAM=$O(^AUTTEXAM("B",EXAM,""))
 Q:'EXAM
 D VXAMR^AUPNCIX(EXAM,"RLIST")
 S RL=0
 F  S RL=$O(RLIST(RL)) Q:'RL  S CNT=CNT+1,RET(CNT)=$P(RLIST(RL),U,2)
 Q
 ; Get primary provider for this V EXAM
PRIPRV(RET,VXAM) ;EP
 S RET=$$PRIPRV^BGOUTL($P(^AUPNVXAM(VXAM,0),U,3))
 Q
 ; Delete a V EXAM or associated refusal
 ;  INP = IEN ^ "R" if refusal, otherwise null
DEL(RET,INP) ;EP
 N IEN,REFUSAL
 S IEN=+INP
 S REFUSAL=$P(INP,U,2)="R"
 I 'IEN S RET=$$ERR^BGOUTL(1008)
 E  I REFUSAL S RET=$$REFDEL^BGOUTL2(IEN)
 E  D VFDEL^BGOUTL2(.RET,$$FNUM,IEN)
 Q
 ; Set exam or refusal record
 ;  INP = V Exam IEN (if edit) [1] ^ Exam IEN [2] ^ Visit IEN [3] ^ Provider IEN [4] ^ Result [5] ^ Comment [6] ^
 ;        Event Date [7] ^ Location IEN [8] ^ Other Location [9] ^ Historical Flag [10] ^ DFN [11]
 ; .RET = Returned as -1^error text if error
SET(RET,INP) ;EP
 N VFIEN,VCAT,TYPE,VIEN,DFN,PROV,RESULT,COMMENT,EVNTDT,LOCIEN,OUTLOC,HIST,FDA,FNUM,VFNEW
 S RET="",FNUM=$$FNUM
 S VFIEN=$P(INP,U)
 S VFNEW='VFIEN
 S TYPE=$P(INP,U,2)
 S VIEN=+$P(INP,U,3)
 I 'TYPE S RET=$$ERR^BGOUTL(1077) Q
 S HIST=$P(INP,U,10)
 S DFN=$P(INP,U,11)
 I 'VIEN,'HIST S RET=$$ERR^BGOUTL(1002) Q
 S VCAT=$P($G(^AUPNVSIT(VIEN,0)),U,7)
 S:VCAT="E" HIST=1
 S PROV=$P(INP,U,4)
 ;IHS/MSC/MGH Patch 11
 I PROV="" S PROV=DUZ
 I 'PROV,'VFIEN S RET=$$ERR^BGOUTL(1027) Q
 S RESULT=$P(INP,U,5)
 S:RESULT="NORMAL"!(RESULT="NEGATIVE") RESULT="N"
 S COMMENT=$P(INP,U,6)
 S EVNTDT=$P(INP,U,7)
 I EVNTDT="" S EVNTDT=$$NOW^XLFDT
 S LOCIEN=$P(INP,U,8)
 S OUTLOC=$P(INP,U,9)
 I HIST D  Q:RET
 .S RET=$$MAKEHIST^BGOUTL(DFN,EVNTDT,$S($L(OUTLOC):OUTLOC,1:LOCIEN),VIEN)
 .S:RET>0 VIEN=RET,RET="",VCAT="E"
 S RET=$$CHKVISIT^BGOUTL(VIEN,DFN)
 Q:RET
 I 'VFIEN D  Q:'VFIEN
 .D VFNEW^BGOUTL2(.RET,FNUM,TYPE,VIEN,"Exam")
 .S:RET>0 VFIEN=RET,RET=""
 S FDA=$NA(FDA(FNUM,VFIEN_","))
 S @FDA@(.01)="`"_TYPE
 S @FDA@(.04)=RESULT
 S:'VFNEW!$L(COMMENT) @FDA@(81101)=COMMENT
 ;IHS/MSC/MGH Patch 11 change for new fields
 ;S @FDA@(1204)="`"_DUZ
 S @FDA@(1204)="`"_PROV
 S @FDA@(1201)=EVNTDT
 ;Patch 11 Set date entered
 I VFNEW D
 .S @FDA@(1216)="N"
 .S @FDA@(1217)="`"_DUZ
 ;Patch 11 Set last modified
 S @FDA@(1218)="N"
 S @FDA@(1219)="`"_DUZ
 S RET=$$UPDATE^BGOUTL(.FDA,"E")
 I RET,VFNEW,$$DELETE^BGOUTL(FNUM,VFIEN)
 D:'RET VFEVT^BGOUTL2(FNUM,VFIEN,'VFNEW)
 S:'RET RET=VFIEN
 Q
 ; Return V File #
FNUM() Q 9000010.13
