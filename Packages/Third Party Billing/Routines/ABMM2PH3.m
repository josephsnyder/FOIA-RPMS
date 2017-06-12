ABMM2PH3 ;IHS/SD/SDR - MU Patient Volume Hospital Report ;
 ;;2.6;IHS 3P BILLING SYSTEM;**15**;NOV 12, 2009;Build 251
 ;IHS/SD/SDR - 2.6*15 - HEAT161159 - Changed PT LST to sort differently so there won't be duplicate vsts on pt lst.
 ;IHS/SD/SDR - 2.6*15 - HEAT156874 - Change for <SUBSCR>PTDATA+16^ABMM2PV7.  Occurs when patient is missing from visit.
 ;
TRANS ;EP
 S ABMTRIEN=0,ABMQFLG=0
 F  S ABMTRIEN=$O(^BARTR(DUZ(2),"AC",ABMARIEN,ABMTRIEN)) Q:'ABMTRIEN  D  Q:ABMQFLG=1
 .S ABMTRTYP=$P($G(^BARTR(DUZ(2),ABMTRIEN,1)),U)
 .S ABMADJT=$P($G(^BARTR(DUZ(2),ABMTRIEN,1)),U,3)
 .I (ABMTRTYP'=40)&("^113^114^121^132^137^138^139^"'[("^"_ABMADJT_"^")) D ZEROPD Q  ;pymt or pymt credit
 .I ABMTRTYP=49 Q  ;skip BILL NEW
 .I $P($G(^BARTR(DUZ(2),ABMTRIEN,0)),U,7)=1 Q  ;msg trans
 .S ABMTRAMT=$$GET1^DIQ(90050.03,ABMTRIEN,3.5)  ;debit-credit field
 .I ABMTRAMT<(.01) Q  ;don't cnt 0 pymts or reversals
 .D CALCDTS^ABMM2PV1
 .S ABMDTFLG=0
 .S ABMP("BDT")=ABMP("BSDT")
 .F  D  Q:ABMDTFLG=1
 ..I ABMITYP="D"!($D(ABMI("INS",ABMINS))) D
 ...S ABMQFLG=1
 ...S ^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMP("BDT"))=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMP("BDT")))+1
 ...S ^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMP("BDT"),ABMVLOC)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMP("BDT"),ABMVLOC))+1
 ...S ^XTMP("ABM-PVH2",$J,"LOC-NUM PD BILLS",ABMP("BDT"),ABMGRP,ABMVDFN,ABMP("BDFN"))=""
 ...S ^XTMP("ABM-PVH2",$J,"LOC-NUM PD DET",ABMP("BDT"),ABMGRP,ABMVDFN,ABMP("BDFN"))=""
 ...S ^XTMP("ABM-PVH2",$J,"LOC-VST",ABMVDFN)=""
 ...I ABMITYP="D"!($D(ABMI("INS",ABMINS))) S ABMBILLF=1,^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)=1
 ..S ^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ..S ^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMGRP))+1
 ..I (ABMCNT#1000&(IOST["C")) U IO(0) W "."
 ..S ABMCNT=+$G(ABMCNT)+1
 ..D PTDATA
 ..S X1=ABMP("BDT")
 ..S X2=1
 ..D C^%DTC
 ..I X>ABMP("BEDT") S ABMDTFLG=1 Q
 ..S ABMP("BDT")=X
 Q
ZEROPD ;EP
 D CALCDTS^ABMM2PV1
 S ABMDTFLG=0
 S ABMP("BDT")=ABMP("BSDT")
 F  D  Q:ABMDTFLG=1
 .I ABMITYP="D"!($D(ABMI("INS",ABMINS))) D
 ..S ^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD BILLS",ABMP("BDT"),ABMGRP,ABMVDFN,ABMP("BDFN"))=""
 ..S ^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD DET",ABMP("BDT"),ABMGRP,ABMVDFN,ABMP("BDFN"))=""
 .S ^XTMP("ABM-PVH2",$J,"LOC-VST",ABMP("BDT"),ABMVDFN)=""
 .I ABMITYP="D"!($D(ABMI("INS",ABMINS))) S ^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)=1
 .D PTDATA
 .S X1=ABMP("BDT")
 .S X2=1
 .D C^%DTC
 .I X>ABMP("BEDT") S ABMDTFLG=1 Q
 .S ABMP("BDT")=X
 ;
 Q
OTHERVST ;EP
 S ABMPT=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)),U,5)
 S (ABMDOS,ABMDOSSV)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),7)),U)
 F  S ABMDOS=$O(^XTMP("ABM-PVH2",$J,"PT VSTS",ABMPT,ABMDOS)) Q:'ABMDOS!($P(ABMDOS,".")>$P(ABMDOSSV,"."))  D
 .S ABMVCHK=0
 .F  S ABMVCHK=$O(^XTMP("ABM-PVH2",$J,"PT VSTS",ABMPT,ABMDOS,ABMVCHK)) Q:'ABMVCHK  D
 ..Q:^XTMP("ABM-PVH2",$J,"VISITS",ABMVCHK)=1  ;already cnted vst
 ..Q:$D(^XTMP("ABM-PVH2",$J,"LOC-VST",ABMVCHK))
 ..D CALCDTS^ABMM2PV1
 ..S ABMDTFLG=0
 ..S ABMP("BDT")=ABMP("BSDT")
 ..F  D  Q:ABMDTFLG=1
 ...S ^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMP("BDT"))=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMP("BDT")))+1
 ...S ^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMP("BDT"),ABMVLOC)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMP("BDT"),ABMVLOC))+1
 ...S ^XTMP("ABM-PVH2",$J,"VISITS",ABMVCHK)=1
 ...S X1=ABMP("BDT")
 ...S X2=1
 ...D C^%DTC
 ...I X>ABMDOS S ABMDTFLG=1 Q
 ...S ABMP("BDT")=X
 Q
PTDATA ;EP
 S ABMPNM=$$GET1^DIQ(2,ABMPT,.01,"E")
 I '$D(^DPT(ABMPT))!(ABMPNM="") Q  ;abm*2.6*15 HEAT156874
 S ABMINSO=$S(+$G(ABMINS):$$GET1^DIQ(9999999.18,ABMINS,.01,"E"),1:"NO BILL")
 S:+$G(ABMBILLN)=0 ABMITYP="X"
 S:$G(ABMTRIEN)="" ABMTRIEN="NOT PAID"
 I +$G(ABMTRIEN)'=0 D
 .S ABMRECPD=""
 .I (+$G(ABMTRTYP)'=40)&("^113^114^121^132^137^138^139^"'[("^"_+$G(ABMADJT)_"^")) S ABMRECPD="" Q
 .;I (ABMITYP="D")!($D(ABMI("INS",ABMINSO))) S ABMRECPD="*"  ;abm*2.6*15
 .I (ABMITYP="D")!($D(ABMI("INS",ABMINS))) S ABMRECPD="*"  ;abm*2.6*15 HEAT161159
 I +$G(ABMTRIEN)=0 S ABMTRIEN="NOT PAID",ABMRECPD=""
 S ABMREC=ABMVDFN_U_ABMPT_U_$S($G(ABMRECPD)'="":$P($G(ABMTRIEN),"."),1:"")_U_ABMRECPD
 S ABMREC=ABMREC_U_$G(ABMBILLN)_U_$S($G(ABMBILLN):+$G(ABMTRAMT),1:$G(ABMTRAMT))_U_$G(ABMDX)
 S ABMREC=ABMREC_U_ABMITYP_U_ABMINSO_U_$P(ABMPNM,",")_U_$P(ABMPNM,",",2)_U_$P($G(^AUPNVSIT(ABMVDFN,0)),U)  ;abm*2.6*15 HEAT161159
 ;S ^XTMP("ABM-PVH2",$J,"PT LST",ABMP("BDT"),ABMVLOC,ABMITYP,ABMINSO,$P(ABMPNM,","),$P(ABMPNM,",",2),$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)=ABMREC  ;abm*2.6*15 HEAT161159
 S ^XTMP("ABM-PVH2",$J,"PT LST",ABMP("BDT"),ABMVLOC,$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)=ABMREC  ;abm*2.6*15 HEAT161159
 ;start old abm*2.6*15 HEAT161159
 ;I (+$G(ABMBILLN)'=0)&$D(^XTMP("ABM-PVH2",$J,"PT LST",ABMP("BDT"),ABMVLOC,"X","NO BILL",$P(ABMPNM,","),$P(ABMPNM,",",2),$P($G(^AUPNVSIT(ABMVDFN,0)),U))) D
 ;.K ^XTMP("ABM-PVH2",$J,"PT LST",ABMP("BDT"),ABMVLOC,"X","NO BILL",$P(ABMPNM,","),$P(ABMPNM,",",2),$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)
 ;end old abm*2.6*15 HEAT161159
 Q
