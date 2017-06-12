BGOVCOAG ; IHS/MSC/MGH - V Anticoagulation Management ;12-Jul-2013 10:11;DKA
 ;;1.1;BGO COMPONENTS;**11,13**;Mar 20, 2007;Build 2
 ;------------------------------------------------------------------
 ; Return anticoag records for a patient
 ;  INP = Patient IEN ^ Number to return
 ; .RET = Returned as a list of records:
 ;    V IEN [1] ^ Indication [2] ^ Visit Date [3] ^ Goal [4] ^ min [5] ^ max [6] ^ duration [7] ^Strt Date [8] ^Facility Name [9] ^
 ;    Provider IEN [10] ^ Location IEN [11] ^ Entered Date [12] ^ Visit IEN [13] ^ Visit Category [14] ^
 ;    Visit Locked [15] ^ COMMENT[16] ^ Provider Name [17]
 ;
GET(RET,INP) ;EP
 N X,CNT,REC,VCAT,COAG,VDT,VCOAG,IND,LOC,FAC,FACNAM,EXNAME,PRVIEN,PRVNAME
 N FNUM,VDATE,VIEN,GOAL,MIN,MAX,DUR,EDATE,NUM,DFN,STDT,COMM
 S RET=$$TMPGBL^BGOUTL
 S DFN=$P(INP,U,1),NUM=$P(INP,U,2)
 I NUM="" S NUM=50
 S CNT=0,COAG=""
 F  S COAG=$O(^AUPNVACG("AA",DFN,COAG)) Q:COAG=""!(CNT>NUM)  D
 .S VDT=0
 .F  S VDT=$O(^AUPNVACG("AA",DFN,COAG,VDT)) Q:'VDT!(CNT>NUM)  D
 ..S VCOAG=0
 ..F  S VCOAG=$O(^AUPNVACG("AA",DFN,COAG,VDT,VCOAG)) Q:'VCOAG!(CNT>NUM)  D
 ...S REC=$G(^AUPNVACG(VCOAG,0))
 ...Q:REC=""
 ...Q:+$G(^AUPNVACG(VCOAG,1))  ;DKA 7/10/13 Ignore Entered in Error
 ...S FNUM=$$FNUM
 ...S IND=$$EXTERNAL^DILFD(FNUM,.01,,$P(REC,U,1))
 ...S GOAL=$$EXTERNAL^DILFD(FNUM,.04,,$P(REC,U,4))
 ...S MIN=$$EXTERNAL^DILFD(FNUM,.05,,$P(REC,U,5))
 ...I $E(MIN,1,1)="." S MIN="0"_MIN
 ...S MAX=$$EXTERNAL^DILFD(FNUM,.06,,$P(REC,U,6))
 ...I $E(MAX,1,1)="." S MAX="0"_MAX
 ...S DUR=$$EXTERNAL^DILFD(FNUM,.07,,$P(REC,U,7))
 ...S STDT=$P(REC,U,8)
 ...S PRVIEN=$P($G(^AUPNVACG(VCOAG,12)),U,4)
 ...S PRVNAME=$S('PRVIEN:"",1:$P($G(^VA(200,+PRVIEN,0)),U))
 ...S VIEN=$P(REC,U,3)
 ...Q:'VIEN
 ...S LOC=$P($G(^AUPNVSIT(VIEN,0)),U,6)
 ...S FAC=$S(LOC:$P($G(^AUTTLOC(LOC,0)),U,10),1:"")
 ...S FACNAM=$S(LOC:$P($G(^AUTTLOC(LOC,0)),U),1:"")
 ...S:FACNAM FACNAM=$P($G(^DIC(4,FACNAM,0)),U)
 ...S:$P($G(^AUPNVSIT(VIEN,21)),U)'="" FACNAM=$P(^(21),U)
 ...S VCAT=$P($G(^AUPNVSIT(VIEN,0)),U,7)
 ...S VDATE=9999999-VDT
 ...S EDATE=$P($G(^AUPNVACG(VCOAG,12)),U,1)
 ...I EDATE="" S EDATE=VDATE
 ...S COMM=$G(^AUPNVACG(VCOAG,11))
 ...S CNT=CNT+1
 ...S @RET@(CNT)=VCOAG_U_IND_U_VDATE_U_GOAL_U_MIN_U_MAX_U_DUR_U_STDT_U_FACNAM_U_PRVIEN_U_LOC_U_EDATE_U_VIEN_U_VCAT_U_$$ISLOCKED^BEHOENCX(VIEN)_U_COMM_U_PRVNAME
 Q
 ; Delete a V ANTICOAG
 ;  INP = V File IEN ^  DELETE REASON ^ OTHER
 ; Logically Delete an AntiCoagulation entry
 ; Flag the entry as Entered in Error
 ; Specify the Reason and Comment (if Reason is Other)
DEL(RET,INP) ;EP
 N COMMENT,FDA,REASON,VFIEN
 S VFIEN=$P(INP,U)
 S REASON=$P(INP,U,2)
 S COMMENT=$P(INP,U,3)
 I VFIEN="" S RET=$$ERR^BGOUTL(1008) Q  ; Missing input data
 I '$D(^AUPNVACG(VFIEN)) S RET=$$ERR^BGOUTL(1035) Q  ; Item not found
 S FDA=$NA(FDA($$FNUM,VFIEN_","))
 S @FDA@(1.01)=1
 S @FDA@(1.02)=DUZ
 S @FDA@(1.03)=REASON
 S @FDA@(1.04)=$$NOW^XLFDT()
 S @FDA@(1.05)=$G(COMMENT)
 S RET=$$UPDATE^BGOUTL(.FDA,,VFIEN)
 S:RET="" RET=1
 Q
 ; Set anti-coag record
 ;  INP = V anticoag IEN (if edit) [1] ^Indication [2] ^ Patient IEN [3] ^ Visit IEN [4] ^ Provider IEN [5] ^ Goal [6] ^ MIN [7] ^ Max [8] ^Duration [9]
 ;        Strt date [10] ^Event Date [11] ^ Location IEN [12] ^ Other Location [13] ^ Historical Flag [14] ^comment [15]
 ; .RET = Returned as -1^error text if error
SET(RET,INP) ;EP
 N VFIEN,VCAT,TYPE,VIEN,DFN,PROV,RESULT,COMMENT,EVNTDT,LOCIEN,OUTLOC,HIST,FDA,FNUM,VFNEW
 N GOAL,MIN,MAX,DUR,STDT,COMM
 S RET="",FNUM=$$FNUM
 S VFIEN=$P(INP,U)
 S VFNEW='VFIEN
 S TYPE=$P(INP,U,2)
 I TYPE="" S RET=$$ERR^BGOUTL(1008) Q
 S TYPE=$S(TYPE="YES":1,TYPE=1:1,TYPE="NO":0,TYPE=0:0,1:"@")
 S VIEN=+$P(INP,U,4)
 ;I 'VIEN S RET=$$ERR^BGOUTL(1077) Q
 S HIST=$P(INP,U,14)
 S DFN=$P(INP,U,3)
 I 'VIEN,'HIST S RET=$$ERR^BGOUTL(1002) Q
 S VCAT=$P($G(^AUPNVSIT(VIEN,0)),U,7)
 S:VCAT="E" HIST=1
 S PROV=$P(INP,U,5)
 I 'PROV,VFIEN S RET=$$ERR^BGOUTL(1027) Q
 S GOAL=$P(INP,U,6)
 S MIN=$P(INP,U,7),MAX=$P(INP,U,8)
 I GOAL'="Other" S MIN="@",MAX="@"
 S DUR=$P(INP,U,9)
 S STDT=$P(INP,U,10)
 S EVNTDT=$P(INP,U,11)
 S LOCIEN=$P(INP,U,12)
 S OUTLOC=$P(INP,U,13)
 S COMM=$P(INP,U,15)
 I HIST D  Q:RET
 .S RET=$$MAKEHIST^BGOUTL(DFN,EVNTDT,$S($L(OUTLOC):OUTLOC,1:LOCIEN),VIEN)
 .S:RET>0 VIEN=RET,RET="",VCAT="E"
 S RET=$$CHKVISIT^BGOUTL(VIEN,DFN)
 Q:RET
 I 'VFIEN D  Q:'VFIEN
 .;D VFNEW^BGOUTL2(.RET,FNUM,TYPE,VIEN,"Anticoagulation",1)
 .D VFNEW^BGOUTL2(.RET,FNUM,TYPE,VIEN,"Anticoagulation",,"1.01") ; DKA 7/12/13 Add parameter for Entered in Error field
 .S:RET>0 VFIEN=RET,RET=""
 S FDA=$NA(FDA(FNUM,VFIEN_","))
 S @FDA@(.01)=TYPE
 S @FDA@(.04)=GOAL
 S @FDA@(.05)=MIN
 S @FDA@(.06)=MAX
 S @FDA@(.07)=DUR
 S @FDA@(.08)=STDT
 I PROV="" S PROV=DUZ
 S:PROV @FDA@(1204)="`"_PROV
 I EVNTDT="" S EVNTDT="N"
 S @FDA@(1201)=EVNTDT
 I VFNEW D
 .S @FDA@(1216)="N"
 .S @FDA@(1217)="`"_DUZ
 S @FDA@(1218)="N"
 S @FDA@(1219)="`"_DUZ
 S @FDA@(1101)=COMM
 S RET=$$UPDATE^BGOUTL(.FDA,"E")
 I RET,VFNEW,$$DELETE^BGOUTL(FNUM,VFIEN)
 D:'RET VFEVT^BGOUTL2(FNUM,VFIEN,'VFNEW)
 S:'RET RET=VFIEN
 Q
 ; Return V File #
FNUM() Q 9000010.51
