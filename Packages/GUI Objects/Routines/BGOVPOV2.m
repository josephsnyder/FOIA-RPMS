BGOVPOV2 ; IHS/BAO/TMD - Visit POV maintenance ;13-Apr-2016 03:48;du
 ;;1.1;BGO COMPONENTS;**13,14,15,19,20**;Mar 20, 2007;Build 6
 ; Add/Edit VPOV data
 ;  INP = VPOV IEN [1] ^ Visit IEN [2] ^ Problem IEN [3] ^ Patient IEN [4] ^ Prov Text [5] ^ Descriptive CT [6] ^
 ;        SNOMED CT [7] ^ ICD code [8] ^ Primary/Secondary [9] ^ Provider IEN [10]^ asthma control [11] ^ norm/abn [12] ^ Laterality [13]
 ;  QUAL = Q [1] ^ TYPE [2] ^IEN (If edit)  [3] ^ SNOMED [4] ^ BY [5] ^WHEN [6] ^ DEL [7]
 ;  INJ  = Cause DX[1] ^ Injury Code [2] ^ Injury Place [3] ^ First/Revisit [4] ^ Injury Dt [5] ^ Onset Date [6]
 ;  SPEC = Special cases
 ;  NORM = SNOMED
SET2(RET,INP,QUAL,INJ,VFIEN,DUP,FIVE,SPEC,NORM) ;EP
 N VIEN,DFN,TYPE,NARR,STAGE,MOD,CAUSEDX,REVISIT,ECODE,PLACE,CONTROL,SNOMED,DESC,TEXT,SAVRET,VDT,LAT,LATEXT,POVLAT
 N PRIM,INJDT,ONSET,FDA,FNUM,VFNEW,PRV,TYPE2,CANDUP,OFF,APCDVSIT,PXCEVIEN,PROB,NEW,DESCT,SNODATA,IMP,PTDATA,RET3
 S FNUM=$$FNUM
 S FIVE=$G(FIVE),DUP=$G(DUP)
 S NEW=0,RET3="",SPEC=$G(SPEC)
 S VFIEN=$G(VFIEN),NORM=$G(NORM)
 S INJ=$G(INJ)
 S QUAL=$G(QUAL)
 ;MSC/MGH - 07/08/09 - Offset to support VistA and RPMS
 S OFF=$S($G(DUZ("AG"))="I":0,1:9999999)
 ;S VFIEN=+INP
 I +VFIEN=0 S NEW=1
 S VFNEW='VFIEN
 S VIEN=$P(INP,U,2)
 S PROB=$P(INP,U,3)
 I 'VIEN S RET=$$ERR^BGOUTL(1008) Q
 I $G(DUZ("AG"))="I" S APCDVSIT=VIEN
 E  S PXCEVIEN=VIEN
 S DFN=$P(INP,U,4)
 S RET=$$CHKVISIT^BGOUTL(VIEN,DFN)
 Q:RET
 ;Patch 13 SNOMED CT data
 S VDT=$$GET1^DIQ(9000010,VIEN,.01,"I")
 S SNOMED=$P(INP,U,7)
 S NARR=$P(INP,U,5),DESCT=$P(INP,U,6)
 S NARR=$TR(NARR,"^|","")
 ;IHS/MSC/MGH changes for laterality p20
 S LAT=$P(INP,U,13)
 I LAT="272741003|261665006"!(LAT="272741003|") S LAT=""
 I LAT="" S LAT=$$GET1^DIQ(9000011,PROB,.22,"I")
 I LAT'="" D
 .S LATEXT=$$CVPARM^BSTSMAP1("LAT",$P(LAT,"|",2))
 .S NARR=NARR_"|"_DESCT_"|"_LATEXT
 E  S NARR=NARR_"|"_DESCT
 S TYPE=$P($P(INP,U,8),"|",1)
 ;I TYPE'["." S TYPE=TYPE_"."
 ;Handle Prenatal 1.0 POV sets
 I $P(INP,U,5)["|",DESCT="" D
 . S NARR=$P(INP,U,5)
 . S TYPE=$TR($P(INP,U,3),"`")
 . I TYPE]"" S TYPE=$P($$ICDDX^ICDCODE(TYPE,$$NOW^XLFDT),U,2)
 . S SPEC=1,PROB=""
 I $E($P(INP,U,3))="`" D
 . S NARR=$P(INP,U,5)
 . S TYPE=$TR($P(INP,U,3),"`")
 . I TYPE]"" S TYPE=$P($$ICDDX^ICDCODE(TYPE,$$NOW^XLFDT),U,2)
 . S SPEC=1,PROB=""
 ;
 S RET=$$FNDNARR^BGOUTL2(NARR)
 Q:RET<0
 S NARR=$S(RET:"`"_RET,1:""),RET=""
 ;Get ICD code for POV from the Apelon
 ;MSC/MGH Updated in patch 18 to send in extra data
 S PTDATA=$$GETDATA(DFN,VFIEN)
 S SNODATA=$$CONC^BSTSAPI(SNOMED_"^^"_VDT_"^1^^"_PTDATA)
 I FIVE=""&('SPEC) D
 .S FIVE=$P(SNODATA,U,5)
 .S TYPE2=$P($P(SNODATA,U,5),";",1)
 .I TYPE2'["." S TYPE2=TYPE2_"."
 .I TYPE2'="" S TYPE=TYPE2
 S CANDUP=1
 I TYPE="" D
 .;Patch 14 check for which undefined code to use
 .I $$AICD^BGOUTL2 D
 ..S IMP=$$IMP^ICDEX("10D",DT)
 ..I IMP<VDT!(IMP=VDT) S TYPE="ZZZ.999"
 ..I IMP>VDT S TYPE=".9999"
 .E  S TYPE=".9999"
 I TYPE'["." S TYPE=TYPE_"."
 S TYPE=$P($$CODEN^ICDEX(TYPE,80),"~",1)
 I 'TYPE S RET=$$ERR^BGOUTL(1094) Q
 I 'VFIEN  D CHECK^BGOVPOV(.DUP,TYPE_U_DFN_U_+$G(^AUPNVSIT(VIEN,0))_U_SNOMED_U_LAT)
 I DUP'="" S RET=DUP
 Q:RET
 ;Injury data
 S (CAUSEDX,REVISIT,ECODE,PLACE,INJDT,ONSET)=""
 I INJ'="" D
 .S CAUSEDX=$P(INJ,U,1)
 .S REVISIT=$P(INJ,U,4)
 .S ECODE=$P(INJ,U,2)
 .S PLACE=$P(INJ,U,3)
 .S INJDT=$$CVTDATE^BGOUTL($P(INJ,U,5))
 .S INJDT=$P(INJDT,".",1)
 .S ONSET=$$CVTDATE^BGOUTL($P(INJ,U,6))
 ;
 ;Provider Information
 S PRIM=$P(INP,U,9)
 S PRIM=$S($L(PRIM):PRIM,$$FNDPRI^BGOVPOV1(VIEN):"S",1:"P")
 S PRV=$P(INP,U,10)
 S RET=$$CHKVISIT^BGOUTL(VIEN,DFN)
 Q:RET
 ;
 I 'VFIEN D  Q:'VFIEN
 .D VFNEW^BGOUTL2(.RET,FNUM,TYPE,VIEN,$S(CANDUP:"",1:"POV"))
 .S:RET>0 VFIEN=RET,SAVRET=RET,RET=""
 E  S SAVRET=VFIEN
 S FDA=$NA(FDA(FNUM,VFIEN_","))
 S @FDA@(.01)="`"_TYPE
 S @FDA@(.04)=NARR
 ;S @FDA@(.05)=STAGE
 ;S @FDA@(.06)=MOD
 S @FDA@(.29)=NORM    ;Patch 18
 S @FDA@(.07)=CAUSEDX
 S @FDA@(.08)=REVISIT
 S @FDA@(.09)=$S(ECODE'="":ECODE,1:"")
 S @FDA@(.11)=PLACE
 S @FDA@(.12)=PRIM
 S @FDA@(.13)=INJDT
 S @FDA@(.17+OFF)=ONSET  ;P6
 I PROB'="" S @FDA@(.16)="`"_PROB
 S @FDA@(1104)=$S(LAT="":"@",1:LAT)   ;p20
 S @FDA@(1101)=SNOMED
 S @FDA@(1102)=DESCT
 S @FDA@(1201)="N"
 S @FDA@(1204)="`"_DUZ  ; PATCH 5
 ;IHS/MSC/MGH added new fields patch 11
 I VFNEW D
 .S @FDA@(1216)="N"
 .S @FDA@(1217)="`"_DUZ
 S @FDA@(1218)="N"
 S @FDA@(1219)="`"_DUZ
 S RET=$$UPDATE^BGOUTL(.FDA,"E@")
 I RET,VFNEW,$$DELETE^BGOUTL(FNUM,VFIEN)
 Q:RET
 ;IHS/MSC/MGH Patch 13 check for qualifiers
 I NEW=1 D QUALB^BGOVPOV1(.RET,PROB,VFIEN)
 I QUAL'="" D QUAL^BGOVPOV1(.RET,VFIEN,QUAL)
 S PRIM=$S(PRIM="Primary":"P",PRIM="PRIMARY":"P",PRIM="P":"P",1:"S")
 I PRIM="P" D  Q:RET
 .D SETPRI^BGOVPOV(.RET,VFIEN_U_PRIM,1)
 .S:RET>0 VFIEN=RET,RET=""
 ;E  I $$FIXVPOVS^BGOVPOV1(VIEN,.VFIEN)  ; Fix VPOV sequencing
 D VFEVT^BGOUTL2(FNUM,VFIEN,'VFNEW)
 ;Check for asthma diagnoses
 S CONTROL=$P(INP,U,11)
 I DUZ("AG")="I" D
 . N ASTHMA
 . ;IHS/MSC/MGH Patch 15, change to DESCT
 . S ASTHMA=$$CHECK^BGOASLK(TYPE,DESCT)
 . I ASTHMA=1 S RET=RET_U_ASTHMA
 . I CONTROL="NONE RECORDED" S CONTROL=""
 . I CONTROL'="" D ASTHMA^BGOVPOV(DFN,CONTROL,VIEN)
 .;Check for bulletin for new dx
 .N DA,X,APCDDATE,APCDVSIT,ATXAD,APCDPAT,AUPNPAT
 .S DA=VFIEN,X=TYPE
 .S APCDDATE=$P($G(^AUPNVSIT(VIEN,0)),U,1)
 .S APCDVSIT=VIEN,ATXAD="",(APCDPAT,AUPNPAT)=DFN
 .D ^ATXPOV
 S RET=SAVRET
 ;Add POV to the problem multiple
 Q:PROB=""
 Q:$D(^AUPNPROB(PROB,14,"B",VIEN))
 N PRIEN,FDA,IEN,ERR
 I VFNEW D
 .S PRIEN="+1,"_PROB_","
 .S FDA(9000011.14,PRIEN,.01)=VIEN
 .D UPDATE^DIE(,"FDA","IEN","ERR")
 .I $D(ERR) S RET="Unable to update problem multiple"
 Q
 ;Input=CODIEN  SNOMED concept ID
 ;      VIEN    Visit IEN
INJURY(RET,SNOMED,VIEN) ;Is this problem an injury?
 N ICD,SNODATA,VDT
 S RET=0
 I 'SNOMED S RET="-1^Missing SNOMED CT"
 S VDT=$$GET1^DIQ(9000010,VIEN,.01,"I")
 S SNODATA=$$CONC^BSTSAPI(SNOMED_"^^"_VDT_"^1")
 S ICD=$P($P(SNODATA,U,5),";",1)
 I $$AICD^BGOUTL2 D ICD10(.RET,ICD) Q
 S X=$$ICDDX^ICDCODE(ICD)
 S ICD=$P(X,U,2)
 I ICD>799.9&(ICD<1000) S RET=1
 Q
ICD10(RET,ICD) ;New entry point for ICD-10
 N IMP,X
 S IMP=$$IMP^ICDEX("10D",DT)
 I IMP<VDT D
 .I $E(ICD,1)="S" S RET=1
 .I $E(ICD,1)="T",$E(ICD,2,3)<89 S RET=1
 I IMP>VDT D
 .I ICD>799.9&(ICD<1000) S RET=1
 Q
ADDICD(RET,INP,QUAL,INJ,VFIEN,DUP,FIVE,SPEC) ;Add any additional ICD codes as POV
 N DUP2,SFIVE,X,ADDI,DEL
 S DEL=";",DUP2=""
 S SFIVE=$G(FIVE)
 S X=$L(FIVE,DEL)
 F ADDI=2:1:X D
 .S $P(INP,U,8)=$P(SFIVE,DEL,ADDI)
 .S $P(INP,U,9)="Secondary"
 .D SET2^BGOVPOV2(.RET,INP,QUAL,INJ,VFIEN,.DUP2,.FIVE,SPEC)
 Q
 ; Return V File #
GETDATA(DFN,VFIEN) ;EP
 N STRING,AF,DATAI,SNO,EPI,LAT
 S STRING="",EPI=""
 S STRING="VST="_VIEN_";PRB="_PROB
 I QUAL'="" S EPI=$P(QUAL,U,4)
 E  I +VFIEN S EPI=$O(^AUPNVPOV(+VFIEN,14,"B",""))
 I EPI]"" S STRING=STRING_";EPI="_EPI
 I NORM'="" D
 .S AF=$S(NORM=71994000:"With",NORM=162656002:"Without",1:"")
 .S STRING=STRING_";AF="_AF
 S DATAI=0 F  S DATAI=$O(^AUPNPROB(PROB,13,DATAI)) Q:'+DATAI  D
 .S SNO=$P($G(^AUPNPROB(PROB,13,DATAI,0)),U,1)
 .I SNO'="",$$CVPARM^BSTSMAP1("SEV",SNO)'="Severity" S STRING=STRING_";SEV="_SNO
 Q STRING
FNUM() Q 9000010.07
