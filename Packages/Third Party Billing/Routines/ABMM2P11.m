ABMM2P11 ;IHS/SD/SDR - MU Patient Volume EP Report ; 12 Feb 2014  3:32 PM
 ;;2.6;IHS 3P BILLING SYSTEM;**15**;NOV 12, 2009;Build 251
 ;IHS/SD/SDR - 2.6*15 - HEAT161159 - Changed PT LST to sort differently so there won't be duplicate vsts on pt lst.  Also added record indicator.
 ;IHS/SD/SDR - 2.6*15 - HEAT157235 - Code change to stop <UNDEF>ENROLL+39^ABMM2PV7
 ;IHS/SD/SDR - 2.6*15 - HEAT157688 - Code change to stop <UNDEF>OTHRVST+1^ABMM2PV7
 ;IHS/SD/SDR - 2.6*15 - HEAT156874 - Code for <SUBSCR>PTDATA+16^ABMM2PV7.  Occurs when no patient on visit.
 ;IHS/SD/SDR - 2.6*15 - HEAT183289 - Added tribal self-insured counters.
 ;
GPTDATA ;EP
 I +$G(ABMP("VDFN"))'=0 D
 .S ABMVHLD=ABMVDFN
 .S ABMVDFN=ABMP("VDFN")
 S ABMPNM=$$GET1^DIQ(2,ABMPT,.01,"E")
 I '$D(^DPT(ABMPT))!(ABMPNM="") Q  ;abm*2.6*15 HEAT156874
 I +$G(ABMINS)&(+$G(ABMEFLG)'=1) S ABMOINS=$$GET1^DIQ(9999999.18,ABMINS,.01,"E")
 E  S ABMOINS="NO BILL"
 I +$G(ABMARACT) S ABMARACT=$$GET1^DIQ(90050.01,ABMARIEN_",",3,"E")
 S:$G(ABMITYP)="" ABMITYP="X"
 I +$G(ABMTRIEN)'=0 D
 .S ABMRECPD=""
 .I (ABMITYP="D")&(+$G(ABMEFLG)=0)!($D(ABMI("INS",ABMINS))),(+$G(ABMTRTYP)'=40)&("^113^114^121^132^137^138^139^"'[("^"_+$G(ABMADJT)_"^")) S ABMRIND="ZPD"  ;abm*2.6*15 HEAT161159
 .I (+$G(ABMTRTYP)'=40)&("^113^114^121^132^137^138^139^"'[("^"_+$G(ABMADJT)_"^")) S ABMRECPD="" Q  ;abm*2.6*14 HEAT161159
 .;I (ABMITYP="D")&(+$G(ABMEFLG)=0)!($D(ABMI("INS",ABMINS))) S ABMRECPD="*",ABMFOUND=1  ;abm*2.6*15 HEAT161159
 .I (ABMITYP="D")&(+$G(ABMEFLG)=0)!($D(ABMI("INS",ABMINS))) S ABMRECPD="*",ABMFOUND=1,ABMRIND="PD"  ;abm*2.6*15 HEAT161159
 I +$G(ABMTRIEN)=0 S ABMTRIEN="NOT PAID",ABMRECPD=""
 S ABMREC=ABMVDFN_U_ABMPT_U_$S(+$G(ABMTRIEN)'=0:$P($G(ABMTRIEN),"."),1:"")_U_ABMRECPD
 S ABMREC=ABMREC_U_$G(ABMBILLN)_U_$S($G(ABMBILLN):+$G(ABMTRAMT),1:$G(ABMTRAMT))_U_$G(ABMDX)
 S ABMPNPI=$P($G(^XTMP("ABM-PVP2",$J,"PRVS",ABMVDFN)),U)  ;abm*2.6*15 HEAT174501
 S ABMPRVN=$P($G(^XTMP("ABM-PVP2",$J,"PRVS",ABMVDFN)),U,2)  ;abm*2.6*15 HEAT174501 
 S ABMREC=ABMREC_U_ABMITYP_U_$S($G(ABMARACT)'="":ABMARACT,1:ABMOINS)_U_$P(ABMPNM,",")_U_$P(ABMPNM,",",2)_U_$G(ABMPNPI)_U_$G(ABMPRVN)_U_$P($G(^AUPNVSIT(ABMVDFN,0)),U)  ;abm*2.6*15 HEAT161159 and HEAT174501
 S ABMREC=ABMREC_U_+$G(ABMNPI)_U_$G(ABMTIN)_U_$G(ABMRIND)  ;abm*2.6*15 HEAT171490 AND HEAT161159
 ;S ^XTMP("ABM-PVP2",$J,"PT LST",ABMP("BDT"),ABMVLOC,ABMITYP,$S($G(ABMARACT)'="":ABMARACT,1:ABMOINS),$P(ABMPNM,","),$P(ABMPNM,",",2),$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)=ABMREC  ;abm*2.6*15 HEAT161159
 S ^XTMP("ABM-PVP2",$J,"PT LST",ABMP("BDT"),ABMVLOC,$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)=ABMREC  ;abm*2.6*15 HEAT161159
 ;start old abm*2.6*15 HEAT161159
 ;I (+$G(ABMBILLN)'=0)&$D(^XTMP("ABM-PVP2",$J,"PT LST",ABMP("BDT"),ABMVLOC,"X","NO BILL",$P(ABMPNM,","),$P(ABMPNM,",",2),$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)) D  ;abm*2.6*12
 ;.K ^XTMP("ABM-PVP2",$J,"PT LST",ABMP("BDT"),ABMVLOC,"X","NO BILL",$P(ABMPNM,","),$P(ABMPNM,",",2),$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)
 ;end old abm*2.6*15 HEAT161159
 I +$G(ABMP("VDFN"))'=0 D
 .S ABMVDFN=ABMVHLD
 Q
PTDATA ;EP
 I +$G(ABMP("VDFN"))'=0 D
 .S ABMVHLD=ABMVDFN
 .S ABMVDFN=ABMP("VDFN")
 S ABMPNM=$$GET1^DIQ(2,ABMPT,.01,"E")
 I '$D(^DPT(ABMPT))!(ABMPNM="") Q  ;abm*2.6*15 HEAT156874
 I +$G(ABMINS)&(+$G(ABMEFLG)'=1) S ABMOINS=$$GET1^DIQ(9999999.18,ABMINS,.01,"E")
 E  S ABMOINS="NO BILL"
 I +$G(ABMARACT) S ABMARACT=$$GET1^DIQ(90050.01,ABMARIEN_",",3,"E")
 S:$G(ABMITYP)="" ABMITYP="X"
 I +$G(ABMTRIEN)'=0 D
 .S ABMRECPD=""
 .I (ABMITYP="D")&(+$G(ABMEFLG)=0)!($D(ABMI("INS",ABMINS))),(+$G(ABMTRTYP)'=40)&("^113^114^121^132^137^138^139^"'[("^"_+$G(ABMADJT)_"^")) S ABMRIND="ZPD"  ;abm*2.6*15 HEAT161159
 .I (+$G(ABMTRTYP)'=40)&("^113^114^121^132^137^138^139^"'[("^"_+$G(ABMADJT)_"^")) S ABMRECPD="" Q  ;abm*2.6*14 HEAT161159
 .;I (ABMITYP="D")&(+$G(ABMEFLG)=0)!($D(ABMI("INS",ABMINS))) S ABMRECPD="*",ABMFOUND=1  ;abm*2.6*15 HEAT161159
 .I (ABMITYP="D")&(+$G(ABMEFLG)=0)!($D(ABMI("INS",ABMINS))) S ABMRECPD="*",ABMFOUND=1,ABMRIND="PD"  ;abm*2.6*15 HEAT161159
 I +$G(ABMTRIEN)=0 S ABMTRIEN="NOT PAID",ABMRECPD=""
 S ABMREC=ABMVDFN_U_ABMPT_U_$S(+$G(ABMTRIEN)'=0:$P($G(ABMTRIEN),"."),1:"")_U_ABMRECPD
 S ABMREC=ABMREC_U_$G(ABMBILLN)_U_$S($G(ABMBILLN):+$G(ABMTRAMT),1:$G(ABMTRAMT))_U_$G(ABMDX)
 S ABMREC=ABMREC_U_ABMITYP_U_$S($G(ABMARACT)'="":ABMARACT,1:ABMOINS)_U_$P(ABMPNM,",")_U_$P(ABMPNM,",",2)_U_$P($G(^AUPNVSIT(ABMVDFN,0)),U)  ;abm*2.6*15 HEAT161159
 S ABMREC=ABMREC_U_+$G(ABMNPI)_U_$G(ABMTIN)_U_$G(ABMRIND)  ;abm*2.6*15 HEAT171490 AND HEAT161159
 ;S ^XTMP("ABM-PVP2",$J,"PT LST",ABMP("BDT"),ABMPRV,ABMVLOC,ABMITYP,$S($G(ABMARACT)'="":ABMARACT,1:ABMOINS),$P(ABMPNM,","),$P(ABMPNM,",",2),$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)=ABMREC  ;abm*2.6*15 HEAT161159
 S ^XTMP("ABM-PVP2",$J,"PT LST",ABMP("BDT"),ABMPRV,ABMVLOC,$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)=ABMREC  ;abm*2.6*15 HEAT161159
 ;start old abm*2.6*15 HEAT161159
 ;I (+$G(ABMBILLN)'=0)&$D(^XTMP("ABM-PVP2",$J,"PT LST",ABMP("BDT"),ABMPRV,ABMVLOC,"X","NO BILL",$P(ABMPNM,","),$P(ABMPNM,",",2),$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)) D
 ;.K ^XTMP("ABM-PVP2",$J,"PT LST",ABMP("BDT"),ABMPRV,ABMVLOC,"X","NO BILL",$P(ABMPNM,","),$P(ABMPNM,",",2),$P($G(^AUPNVSIT(ABMVDFN,0)),U),ABMVDFN)
 ;end old abm*2.6*15 HEAT161159
 I +$G(ABMP("VDFN"))'=0 D
 .S ABMVDFN=ABMVHLD
 Q
GENROLL ;EP
 D CALCDTS^ABMM2PV1
 S ABMDTFLG=0
 S ABMP("BDT")=ABMP("BSDT")
 F  D  Q:ABMDTFLG=1
 .I ABMP("VDT")<ABMP("BSDT") Q  ;vst is before 90-day window
 .I (+$G(ABML("MCD"))=0&(+$G(ABML("CHIP"))=0))&(+$G(ABML("OTHR"))=1) D
 ..Q:+$G(^XTMP("ABM-PVP2",$J,"VISITS",ABMVDFN))=2  ;counted as pd; cnting here would be duplicate
 ..I ($G(ABMTSI)="Y") Q  ;abm*2.6*15
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMP("BDT"),ABMGRP))+1
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMP("BDT"),ABMVLOC)=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMP("BDT"),ABMVLOC))+1
 .I (+$G(ABML("MCD"))=1!(+$G(ABML("CHIP"))=1)) D
 ..F ABMGRP="MCD","CHIP" D
 ...I +$G(ABML(ABMGRP))'=1 Q
 ...I ABMGRP="MCD",((+$G(ABML("MCD"))=1)&(+$G(ABML("CHIP"))=1)) Q
 ...I +$G(^XTMP("ABM-PVP2",$J,"VISITS",ABMVDFN))=2 D
 ....I $D(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMP("BDT"),ABMVLOC)) D
 .....S ^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMP("BDT"),ABMVLOC,"OTHR")=^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMP("BDT"),ABMVLOC,"OTHR")-1
 .....S ^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMP("BDT"),"OTHR")=^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMP("BDT"),"OTHR")-1
 ....I '$D(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMP("BDT"))) D
 .....S ^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMP("BDT"),ABMVLOC,"OTHR")=^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMP("BDT"),ABMVLOC,"OTHR")-1
 .....S ^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMP("BDT"),"OTHR")=^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMP("BDT"),"OTHR")-1
 ...;start new abm*2.6*15 HEAT161159
 ...S ABMINS=0
 ...S ABMRIND="" ;abm*2.6*15
 ...F  S ABMINS=$O(ABMILST(ABMINS)) Q:'ABMINS  D
 ....I ABMGRP="MCD"!(ABMGRP="CHIP")!($D(ABMI("INS",ABMINS))) S ABMRIND="ENR"
 ...;end new HEAT161159
 ...S ^XTMP("ABM-PVP2",$J,"PRV ENC CNT",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVP2",$J,"PRV ENC CNT",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ...S ^XTMP("ABM-PVP2",$J,"PRV ENC CNT",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVP2",$J,"PRV ENC CNT",ABMP("BDT"),ABMGRP))+1
 ...S ^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMP("BDT"),ABMGRP))+1
 ...S ^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ...S ^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMP("BDT"),ABMVLOC)=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMP("BDT"),ABMVLOC))+1
 ...;I +$G(^XTMP("ABM-PVP2",$J,"VISITS",ABMVDFN))'=2 D GPTDATA  ;abm*2.6*15
 ...I +$G(^XTMP("ABM-PVP2",$J,"VISITS",ABMVDFN))'=1 D GPTDATA  ;abm*2.6*15
 ...S ^XTMP("ABM-PVP2",$J,"VISITS",ABMVDFN)=1
 ...;start new abm*2.6*15 HEAT183289
 .;I +$G(^XTMP("ABM-PVP2",$J,"VISITS",ABMVDFN))=0,($G(ABMTSI)="Y"),(+$G(ABMICNT)=1) D  ;abm*2.6*15
 .I +$G(^XTMP("ABM-PVP2",$J,"VISITS",ABMVDFN))'=1,($G(ABMTSI)="Y"),(+$G(ABMICNT)=1) D  ;abm*2.6*15
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMP("BDT"),ABMGRP,ABMVLOC,"TRIBSI")=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMP("BDT"),ABMGRP,ABMVLOC,"TRIBSI"))+1
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMP("BDT"),ABMVLOC,"TRIBSI")=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMP("BDT"),ABMVLOC,"TRIBSI"))+1
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMP("BDT"),"TRIBSI")=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMP("BDT"),"TRIBSI"))+1
 .;end new HEAT183289
 .;start new abm*2.6*15 uncomp care
 .I '$D(ABML) D
 ..Q:+$G(^XTMP("ABM-PVP2",$J,"VISITS",ABMVDFN))=2
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMP("BDT"),"UNCOMP")=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMP("BDT"),"UNCOMP"))+1
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMP("BDT"),ABMVLOC,"UNCOMP")=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMP("BDT"),ABMVLOC,"UNCOMP"))+1
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMP("BDT"),ABMVLOC)=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMP("BDT"),ABMVLOC))+1
 .;end new abm*2.6*15
 .S X1=ABMP("BDT")
 .S X2=1
 .D C^%DTC
 .I X>ABMP("BEDT") S ABMDTFLG=1 Q
 .S ABMP("BDT")=X
 Q
