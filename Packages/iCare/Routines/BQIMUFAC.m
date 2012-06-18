BQIMUFAC ;VNGT/HS/ALA-MU Facility ; 01 Mar 2011  7:11 AM
 ;;2.2;ICARE MANAGEMENT SYSTEM;**1**;Jul 28, 2011;Build 25
 ;
 ;
EN(DATA,TMFRAME) ; EP -- BQI MU GET FACILITY
 NEW UID,II,HDR,C1,C2,C3,C4,NAME,HEAD,HX,PEC,SORT,QFL,PCT,CT,DDATA
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMUFAC",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMUFAC D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S TMFRAME=$G(TMFRAME,90)
 S HDR="T00050HIDE_FACILITY^T00020HIDE_ID^T00050OBJECTIVE^T00010MEAS_SET^T00005CURR_DEN^T00005CURR_NUM^T00005CURR_MET^T00010STAGE_1_GOAL^"
 S HDR=HDR_"T00005PREV_DEN^T00005PREV_NUM^T00005PREV_MET^T00030HIDE_CURR_PERIOD^T00030HIDE_PREV_PERIOD"
 S @DATA@(II)=HDR_$C(30)
 S TMFRAME=$G(TMFRAME,90)
 S FC=0
 F  S FC=$O(^BQIFAC(FC)) Q:'FC  D RTE(FC)
 ;
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
RTE(FAC) ; EP
 NEW DATE,MN,MDATA,PRVR,CFROM,CTHRU,PFROM,PTHRU,IDN,CDEN,CNUM,CEXC,PDEN
 NEW PNUM,PEXC,CURR,PREV
 ;S FACIL=FAC_$C(28)_$P(^DIC(4,FAC,0),U,1)
 S FACIL=$P(^DIC(4,FAC,0),U,1)
 S DDATA=^BQIFAC(FAC,0)
 I TMFRAME=90 S NODE=20 D
 . S CFROM=$$FMTE^BQIUL1($P(DDATA,U,6)),CTHRU=$$FMTE^BQIUL1($P(DDATA,U,7)),CPER=CFROM_"-"_CTHRU
 . S PFROM=$$FMTE^BQIUL1($P(DDATA,U,8)),PTHRU=$$FMTE^BQIUL1($P(DDATA,U,9)),PPER=PFROM_"-"_PTHRU
 I TMFRAME=12 S NODE=10 D
 . S CFROM=$$FMTE^BQIUL1($P(DDATA,U,2)),CTHRU=$$FMTE^BQIUL1($P(DDATA,U,3)),CPER=CFROM_"-"_CTHRU
 . S PFROM=$$FMTE^BQIUL1($P(DDATA,U,4)),PTHRU=$$FMTE^BQIUL1($P(DDATA,U,5)),PPER=PFROM_"-"_PTHRU
 ;
 S NODE=$S(TMFRAME=90:20,1:10)
 S IDN=0
 F  S IDN=$O(^BQIFAC(FAC,NODE,IDN)) Q:'IDN  D
 . S MDATA=^BQIFAC(FAC,NODE,IDN,0)
 . S CDEN=$P(MDATA,U,2),CNUM=$P(MDATA,U,3),CEXC=$G(^BQIFAC(FAC,NODE,IDN,1))
 . S PDEN=$P(MDATA,U,4),PNUM=$P(MDATA,U,5),PEXC=$G(^BQIFAC(FAC,NODE,IDN,2))
 . S ID=$P(MDATA,U,1)
 . S IMN=$O(^APCMMUM("B",ID,""))
 . S ST1G=$G(^APCMMUM(IMN,13,1,0)),OBJ=$P(^APCMMUM(IMN,0),U,5)
 . S MSET=$$GET1^DIQ(9001300.02,IMN_",",.03,"E")
 . ;
 . I +CDEN=0,+CNUM=0 S CURR="0%"
 . I +PDEN=0,+PNUM=0 S PREV="0%"
 . I +CDEN'=0,+CNUM=0 S CURR="0%"
 . I +PDEN'=0,+PNUM=0 S PREV="0%"
 . I +CDEN'=0,+CNUM'=0 S CURR=$J((CNUM/CDEN)*100,3,0)_"%",CURR=$$TRIM^BQIUL1(CURR," ")
 . I +PDEN'=0,+PNUM'=0 S PREV=$J((PNUM/PDEN)*100,3,0)_"%",PREV=$$TRIM^BQIUL1(PREV," ")
 . I CURR="" S CURR="N/A"
 . I PREV="" S PREV="N/A"
 . I CEXC'="" S CURR="Excluded"
 . I PEXC'="" S PREV="Excluded"
 . S:CNUM="" CNUM=0 S:PNUM="" PNUM=0 S:CDEN="" CDEN=0 S:PDEN="" PDEN=0
 . S II=II+1,@DATA@(II)=FACIL_U_ID_U_OBJ_U_MSET_U_CDEN_U_CNUM_U_CURR_U_ST1G_U_PDEN_U_PNUM_U_PREV_U_CPER_U_PPER_$C(30)
 Q
 ;
CQ(DATA,TMFRAME) ; EP -- BQI MU GET FAC CQ
 NEW UID,II,HDR,C1,C2,C3,C4,NAME,HEAD,HX,PEC,SORT,QFL,PCT,CT,DDATA
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMUFCQ",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMUFAC D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S TMFRAME=$G(TMFRAME,90)
 S HDR="T00050HIDE_FACILITY^T00020HIDE_ID^T00050OBJECTIVE^T00010MEAS_SET^T00005CURR_DEN^T00005CURR_NUM^T00005CURR_MET^T00010STAGE_1_GOAL^"
 S HDR=HDR_"T00005PREV_DEN^T00005PREV_NUM^T00005PREV_MET^T00030HIDE_CURR_PERIOD^T00030HIDE_PREV_PERIOD"
 S @DATA@(II)=HDR_$C(30)
 S TMFRAME=$G(TMFRAME,90)
 S FC=0
 F  S FC=$O(^BQIFAC(FC)) Q:'FC  D RET(FC)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
RET(FAC) ; EP
 NEW DATE,MN,MDATA,PRVR,CFROM,CTHRU,PFROM,PTHRU,IDN,CDEN,CNUM,CEXC,PDEN
 NEW PNUM,PEXC,CURR,PREV
 S FACIL=$P(^DIC(4,FAC,0),U,1)
 S DDATA=$G(^BQIFAC(FAC,1))
 I TMFRAME=12 S NODE=11 D
 . S CFROM=$$FMTE^BQIUL1($P(DDATA,U,1)),CTHRU=$$FMTE^BQIUL1($P(DDATA,U,2)),CPER=CFROM_"-"_CTHRU
 . S PFROM=$$FMTE^BQIUL1($P(DDATA,U,3)),PTHRU=$$FMTE^BQIUL1($P(DDATA,U,4)),PPER=PFROM_"-"_PTHRU
 I TMFRAME=90 S NODE=21 D
 . S CFROM=$$FMTE^BQIUL1($P(DDATA,U,5)),CTHRU=$$FMTE^BQIUL1($P(DDATA,U,6)),CPER=CFROM_"-"_CTHRU
 . S PFROM=$$FMTE^BQIUL1($P(DDATA,U,7)),PTHRU=$$FMTE^BQIUL1($P(DDATA,U,8)),PPER=PTHRU_"-"_PFROM
 ;
 S NODE=$S(TMFRAME=90:21,1:11)
 S IDN=0
 F  S IDN=$O(^BQIFAC(FAC,NODE,IDN)) Q:'IDN  D
 . S MDATA=^BQIFAC(FAC,NODE,IDN,0)
 . S CDEN=$P(MDATA,U,2),CNUM=$P(MDATA,U,3),CEXC=$P(MDATA,U,4)
 . S PDEN=$P(MDATA,U,5),PNUM=$P(MDATA,U,6),PEXC=$P(MDATA,U,7)
 . S ID=$P(MDATA,U,1),IMN=$O(^BGPMUIND(90596.11,"C",ID,"")) I IMN="" Q
 . S ST1G="",OBJ=$P($G(^BGPMUIND(90596.11,IMN,17)),U,3)
 . S MSET="HOSPITAL"
 . ;
 . I ID'[".ED." D
 .. I +CDEN=0,+CNUM=0 S CURR="0%"
 .. I +PDEN=0,+PNUM=0 S PREV="0%"
 .. I +CDEN'=0,+CNUM=0 S CURR="0%"
 .. I +PDEN'=0,+PNUM=0 S PREV="0%"
 .. I +CDEN'=0,+CNUM'=0 S CURR=$J((CNUM/(CDEN-CEXC))*100,3,0)_"%",CURR=$$TRIM^BQIUL1(CURR," ")
 .. I +PDEN'=0,+PNUM'=0 S PREV=$J((PNUM/(PDEN-PEXC))*100,3,0)_"%",PREV=$$TRIM^BQIUL1(PREV," ")
 .. S:CNUM="" CNUM=0 S:PNUM="" PNUM=0 S:CDEN="" CDEN=0 S:PDEN="" PDEN=0
 . ;
 . I ID[".ED." D
 .. S CURR="",PREV=""
 .. I CDEN'="" S CURR=$J(CDEN,4,0)_" mins",CURR=$$TRIM^BQIUL1(CURR," ")
 .. ;S CURR=$S(CDEN'="":$J(CDEN,4,0)_" mins",1:""),CDEN=""
 .. I PDEN'="" S PREV=$J(PDEN,4,0)_" mins",PREV=$$TRIM^BQIUL1(PREV," ")
 .. ;S PREV=$S(PDEN'="":PDEN_" mins",1:""),PDEN=""
 . ;
 . S II=II+1,@DATA@(II)=FACIL_U_ID_U_OBJ_U_MSET_U_CDEN_U_CNUM_U_CURR_U_ST1G_U_PDEN_U_PNUM_U_PREV_U_CPER_U_PPER_$C(30)
 Q
