BQIMUPRV ;VNGT/HS/ALA-MU for Providers ; 20 Jan 2011  2:32 PM
 ;;2.2;ICARE MANAGEMENT SYSTEM;**1**;Jul 28, 2011;Build 25
 ;
 ;
EN(DATA,TMFRAME,PROV,CNT) ; EP -- BQI MU GET PROVIDER
 NEW UID,II,HDR,C1,C2,C3,C4,NAME,HEAD,HX,PEC,SORT,QFL,PCT,CT,DDATA,CPER,PPER
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMUPROV",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMUPRV D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S TMFRAME=$G(TMFRAME,90)
 S HDR="T00050PROVIDER^T00001HIDE_PROV_SORT^T00060TYPE^T00030HIDE_CURR_PERIOD^T00030HIDE_PREV_PERIOD^"
 S HX=0,PEC=6
 F  S HX=$O(^APCMMUM(HX)) Q:'HX  I $P(^APCMMUM(HX,0),U,2)="E" D
 . I $P(^APCMMUM(HX,0),U,6)'="R" Q
 . S HDR=HDR_"T00005"_$P(^APCMMUM(HX,0),U,1)_"_CURR^T00005"_$P(^APCMMUM(HX,0),U,1)_"_PREV^"
 . S HEAD($P(^APCMMUM(HX,0),U,1))=PEC,PEC=PEC+2
 S @DATA@(II)=HDR_"T00020HIDE_LAST_PROV"_$C(30)
 S (C1,C2,C3,C4,CT,PCT)=0
 S PROV=$G(PROV,"")
 I PROV="" S PROV=+PROV
 I PROV'="" D
 . S C1=+$P(PROV,":",2),C2=+$P(PROV,":",3),C3=+$P(PROV,":",4),C4=+$P(PROV,":",5),CT=+$P(PROV,":",6)
 . S PROV=$P(PROV,":",1)
 S CNT=$G(CNT,0),QFL=0,QQF=0
 I CT=0 D
 . I '$D(^BQIPROV(DUZ)) Q
 . I $D(^BQIPROV(DUZ)) D RTE(DUZ) D
 .. I QQF S QQF=0 Q
 .. S @DATA@(II)=@DATA@(II)_U_PROV_":"_C1_":"_C2_":"_C3_":"_C4_":"_CT_$C(30)
 ;
 F  S PROV=$O(^BQIPROV(PROV)) Q:'PROV  D  Q:QFL
 . I PROV=DUZ Q
 . I TMFRAME=90,'$D(^BQIPROV(PROV,20)) Q
 . I TMFRAME=12,'$D(^BQIPROV(PROV,10)) Q
 . I PROV'=DUZ D RTE(PROV) D
 .. I QQF S QQF=0 Q
 .. S @DATA@(II)=@DATA@(II)_U_PROV_":"_C1_":"_C2_":"_C3_":"_C4_":"_CT_$C(30)
 .. I CNT'=0,PCT=CNT S QFL=1
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
NAM ;EP
 S C1=C1+1 S:C1=27 C2=C2+1,C1=1 S:C2=27 C3=C3+1,C2=1,C1=1 S:C3=27 C4=C4+1,C3=1,C2=1,C1=1 S NAME="PROVIDER "_$S(C4>0:$C(C4+64),1:"")_$S(C3>0:$C(C3+64),1:"")_$S(C2>0:$C(C2+64),1:"")_$S(C1>0:$C(C1+64),1:"")
 Q
 ;
RTE(PRV) ; EP
 NEW DATE,FAC,MN,MDATA,PRVR,CFROM,CTHRU,PFROM,PTHRU,IDN,CDEN,CNUM,CEXC,PDEN
 NEW PNUM,PEXC,CURR,PREV,SORT,USN,TYPE,DDATA
 I TMFRAME=90,'$D(^BQIPROV(PRV,20)) S QQF=1 Q
 I TMFRAME=12,'$D(^BQIPROV(PRV,10)) S QQF=1 Q
 S CT=CT+1,PCT=PCT+1
 I DUZ=PRV S PRVR=PRV_$C(28)_$P($G(^VA(200,PRV,0)),U,1),SORT=1_"_"_$P($G(^VA(200,PRV,0)),U,1)
 I '$D(^XUSEC("BQIZMUMGR",DUZ)),'$D(^XUSEC("BQIZMGR",DUZ)) D
 . I DUZ'=PRV D NAM S PRVR=PRV_$C(28)_NAME,SORT=2_"_"_NAME
 I $D(^XUSEC("BQIZMUMGR",DUZ))!($D(^XUSEC("BQIZMGR",DUZ))) D
 . I DUZ'=PRV S PRVR=PRV_$C(28)_$P($G(^VA(200,PRV,0)),U,1),SORT=1_"_"_$P($G(^VA(200,PRV,0)),U,1)
 S DDATA=$G(^BQIPROV(PRV,0)) I DDATA="" Q
 I TMFRAME=90 S NODE=20 D
 . S CFROM=$$FMTE^BQIUL1($P(DDATA,U,6)),CTHRU=$$FMTE^BQIUL1($P(DDATA,U,7)),CPER=CFROM_"-"_CTHRU
 . S PFROM=$$FMTE^BQIUL1($P(DDATA,U,8)),PTHRU=$$FMTE^BQIUL1($P(DDATA,U,9)),PPER=PFROM_"-"_PTHRU
 I TMFRAME=12 S NODE=10 D
 . S CFROM=$$FMTE^BQIUL1($P(DDATA,U,2)),CTHRU=$$FMTE^BQIUL1($P(DDATA,U,3)),CPER=CFROM_"-"_CTHRU
 . S PFROM=$$FMTE^BQIUL1($P(DDATA,U,4)),PTHRU=$$FMTE^BQIUL1($P(DDATA,U,5)),PPER=PFROM_"-"_PTHRU
 ;
 S USN="",TYPE=""
 F  S USN=$O(^USR(8930.3,"B",PRV,USN),-1) Q:USN=""  D
 . I '$$CURRENT^USRLM(USN) Q
 . S TYPE=$P(^USR(8930.3,USN,0),U,2)
 . I $O(^BQI(90508,1,13,"B",TYPE,""))="" S TYPE="" Q
 I TYPE="" S QQF=1,CT=CT-1,PCT=PCT-1 Q
 I TYPE'="" S TYPE=$S($P($G(^USR(8930,TYPE,0)),U,4)'="":$P($G(^USR(8930,TYPE,0)),U,4),1:$P($G(^USR(8930,TYPE,0)),U,1))
 S II=II+1,@DATA@(II)=PRVR_U_SORT_U_TYPE_U_CPER_U_PPER_U
 ;
 S X=0 F  S X=$O(^APCMMUM(X)) Q:X'=+X  I $P(^APCMMUM(X,0),U,2)="E" D
 . S ID=$P(^APCMMUM(X,0),U,1)
 . S PEC=$G(HEAD(ID)) I PEC="" Q
 . S $P(@DATA@(II),U,PEC)="N/A"
 . S $P(@DATA@(II),U,PEC+1)="N/A"
 ;
 S IDN=0
 F  S IDN=$O(^BQIPROV(PRV,NODE,IDN)) Q:'IDN  D
 . S (CDEN,CNUM,CEXC,PDEN,PNUM,PEXC,CURR,PREV)=""
 . S MDATA=^BQIPROV(PRV,NODE,IDN,0)
 . S CDEN=$P(MDATA,U,2),CNUM=$P(MDATA,U,3),CEXC=$G(^BQIPROV(PRV,NODE,IDN,1))
 . S PDEN=$P(MDATA,U,4),PNUM=$P(MDATA,U,5),PEXC=$G(^BQIPROV(PRV,NODE,IDN,2))
 . S ID=$P(MDATA,U,1),PEC=$G(HEAD(ID)) I PEC="" Q
 . ;
 . I +CNUM=0 S CURR="0%"
 . I +PNUM=0 S PREV="0%"
 . I +CDEN'=0,+CNUM'=0 S CURR=$J((CNUM/CDEN)*100,3,0)_"%",CURR=$$TRIM^BQIUL1(CURR," ")
 . I +PDEN'=0,+PNUM'=0 S PREV=$J((PNUM/PDEN)*100,3,0)_"%",PREV=$$TRIM^BQIUL1(PREV," ")
 . I CDEN="",CNUM="",CEXC'="" S CURR="Excluded"
 . I PDEN="",PNUM="",PEXC'="" S PREV="Excluded"
 . I CURR'="" S $P(@DATA@(II),U,PEC)=CURR
 . I PREV'="" S $P(@DATA@(II),U,PEC+1)=PREV
 Q
 ;
CQM(DATA,TMFRAME,PROV,CNT) ; EP -- BQI MU GET PROV CQM
 NEW UID,II,HDR,C1,C2,C3,C4,NAME,HEAD,HX,PEC,SORT,QFL,PCT,CT,DDATA,CPER,PPER
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIMUPCQM",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMUPRV D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S TMFRAME=$G(TMFRAME,90)
 S HDR="T00050PROVIDER^T00035HIDE_PROV_SORT^T00030HIDE_CURR_PERIOD^T00030HIDE_PREV_PERIOD^"
 S HX=0,PEC=5
 F  S HX=$O(^BGPMUIND(90596.11,HX)) Q:'HX  D
 . S MSN=$P(^BGPMUIND(90596.11,HX,0),U,1)
 . I $G(^BGPMUIND(90595.11,MSN,0))="" Q
 . I $P(^BGPMUIND(90595.11,MSN,0),U,4)'="H" D
 .. S HDR=HDR_"T00005"_$P(^BGPMUIND(90596.11,HX,0),U,4)_"_CURR^T00005"_$P(^BGPMUIND(90596.11,HX,0),U,4)_"_PREV^"
 .. ;S HDR=HDR_"T00005CURR_"_$P(^BGPMUIND(90595.11,HX,0),U,1)_"^T00005PREV"_$P(^BGPMUIND(90595.11,HX,0),U,1)_"^"
 .. S HEAD($P(^BGPMUIND(90596.11,HX,0),U,4))=PEC,PEC=PEC+2
 S @DATA@(II)=HDR_"T00020HIDE_LAST_PROV"_$C(30)
 S (C1,C2,C3,C4,CT,PCT)=0
 S PROV=$G(PROV,"")
 I PROV="" S PROV=+PROV
 I PROV'="" D
 . S C1=+$P(PROV,":",2),C2=+$P(PROV,":",3),C3=+$P(PROV,":",4),C4=+$P(PROV,":",5),CT=+$P(PROV,":",6)
 . S PROV=$P(PROV,":",1)
 S CNT=$G(CNT,0),QFL=0,QQF=0
 I CT=0 D
 . I '$D(^BQIPROV(DUZ)) Q
 . I $D(^BQIPROV(DUZ)) D FND(DUZ) D
 .. I QQF S QQF=0 Q
 .. S @DATA@(II)=@DATA@(II)_U_PROV_":"_C1_":"_C2_":"_C3_":"_C4_":"_CT_$C(30)
 .. F BJ=3:1:$L(@DATA@(II),U) I $P(@DATA@(II),U,BJ)="" S $P(@DATA@(II),U,BJ)="N/A"
 ;
 F  S PROV=$O(^BQIPROV(PROV)) Q:'PROV  D  Q:QFL
 . I PROV=DUZ Q
 . I TMFRAME=90,'$D(^BQIPROV(PROV,21)) Q
 . I TMFRAME=12,'$D(^BQIPROV(PROV,11)) Q
 . I PROV'=DUZ D FND(PROV) D
 .. I QQF S QQF=0 Q
 .. S @DATA@(II)=@DATA@(II)_U_PROV_":"_C1_":"_C2_":"_C3_":"_C4_":"_CT_$C(30)
 .. F BJ=3:1:$L(@DATA@(II),U) I $P(@DATA@(II),U,BJ)="" S $P(@DATA@(II),U,BJ)="N/A"
 .. I CNT'=0,PCT=CNT S QFL=1
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
FND(PRV) ; Find data
 NEW DATE,FAC,MN,MDATA,PRVR,CFROM,CTHRU,PFROM,PTHRU,IDN,CDEN,CNUM,CEXC,PDEN
 NEW PNUM,PEXC,CURR,PREV,SORT,USN,TYPE,DDATA
 I TMFRAME=90,'$D(^BQIPROV(PRV,21)) S QQF=1 Q
 I TMFRAME=12,'$D(^BQIPROV(PRV,11)) S QQF=1 Q
 S CT=CT+1,PCT=PCT+1
 I DUZ=PRV S PRVR=PRV_$C(28)_$P($G(^VA(200,PRV,0)),U,1),SORT=1_"_"_$P($G(^VA(200,PRV,0)),U,1)
 I '$D(^XUSEC("BQIZMUMGR",DUZ)),'$D(^XUSEC("BQIZMGR",DUZ)) D
 . I DUZ'=PRV D NAM S PRVR=PRV_$C(28)_NAME,SORT=2_"_"_NAME
 I $D(^XUSEC("BQIZMUMGR",DUZ))!($D(^XUSEC("BQIZMGR",DUZ))) D
 . I DUZ'=PRV S PRVR=PRV_$C(28)_$P($G(^VA(200,PRV,0)),U,1),SORT=1_"_"_$P($G(^VA(200,PRV,0)),U,1)
 S DDATA=$G(^BQIPROV(PRV,1))
 I TMFRAME=90 S NODE=21 D
 . S CFROM=$$FMTE^BQIUL1($P(DDATA,U,5)),CTHRU=$$FMTE^BQIUL1($P(DDATA,U,6)),CPER=CFROM_"-"_CTHRU
 . S PFROM=$$FMTE^BQIUL1($P(DDATA,U,7)),PTHRU=$$FMTE^BQIUL1($P(DDATA,U,8)),PPER=PFROM_"-"_PTHRU
 I TMFRAME=12 S NODE=11 D
 . S CFROM=$$FMTE^BQIUL1($P(DDATA,U,1)),CTHRU=$$FMTE^BQIUL1($P(DDATA,U,2)),CPER=CFROM_"-"_CTHRU
 . S PFROM=$$FMTE^BQIUL1($P(DDATA,U,3)),PTHRU=$$FMTE^BQIUL1($P(DDATA,U,4)),PPER=PFROM_"-"_PTHRU
 ;
 S II=II+1,@DATA@(II)=PRVR_U_SORT_U_CPER_U_PPER_U
 ;
 S HX=""
 F  S HX=$O(HEAD(HX)) Q:HX=""  D
 . S ID=HX,PEC=$G(HEAD(ID)) I PEC="" Q
 . S $P(@DATA@(II),U,PEC)="N/A"
 . S $P(@DATA@(II),U,PEC+1)="N/A"
 ; If no data
 I '$D(^BQIPROV(PRV,NODE)) Q
 ;
 S IDN=0
 F  S IDN=$O(^BQIPROV(PRV,NODE,IDN)) Q:'IDN  D
 . S (CDEN,CNUM,CEXC,PDEN,PNUM,PEXC,CURR,PREV)=""
 . S MDATA=^BQIPROV(PRV,NODE,IDN,0)
 . S CDEN=$P(MDATA,U,2),CNUM=$P(MDATA,U,3),CEXC=$P(MDATA,U,4)
 . S PDEN=$P(MDATA,U,5),PNUM=$P(MDATA,U,6),PEXC=$P(MDATA,U,7)
 . S ID=$P(MDATA,U,1),PEC=$G(HEAD(ID)) I PEC="" Q
 . ;
 . I +CNUM=0 S CURR="0%"
 . I +PNUM=0 S PREV="0%"
 . I +CDEN'=0,+CNUM'=0 S CURR=(CNUM/CDEN)*100,CURR=$J(CURR,3,0)_"%",CURR=$$TRIM^BQIUL1(CURR," ")
 . I +PDEN'=0,+PNUM'=0 S PREV=$J((PNUM/PDEN)*100,3,0)_"%",PREV=$$TRIM^BQIUL1(PREV," ")
 . I CDEN="",CNUM="",CEXC'="" S CURR="Excluded"
 . I PDEN="",PNUM="",PEXC'="" S PREV="Excluded"
 . I CDEN="",CNUM="",CEXC="" S CURR=""
 . I PDEN="",PNUM="",PEXC="" S PREV=""
 . I CURR'="" S $P(@DATA@(II),U,PEC)=CURR
 . I PREV'="" S $P(@DATA@(II),U,PEC+1)=PREV
 Q
