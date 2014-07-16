ABMM2PH1 ;IHS/SD/SDR - MU Patient Volume Hospital Report ;
 ;;2.6;IHS 3P BILLING SYSTEM;**11,12**;NOV 12, 2009;Build 187
 ;IHS/SD/SDR - 2.6*12 - Included numerator and msgs about numerator and denominator.
 ;
MET ;EP
 W !!,"Patient Volume: ",+$P($G(^XTMP("ABM-PVH2",$J,"LOC TOP",ABMVLOC)),U)_"%"
 ;
 S ABMLOC=$$GET1^DIQ(9999999.06,ABMVLOC,.02,"E")
 ;W !!,"Total Patient Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT,ABMVLOC)),8)  ;abm*2.6*12
 W !!,"Total Patient Encounters (Denominator) "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT,ABMVLOC)),8)  ;abm*2.6*12
 W !,"Total Numerator Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMSDT,ABMVLOC)),8)  ;abm*2.6*12
 W !,"Total Medicaid Paid Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,ABMVLOC,"MCD")),8)
 W !,"Total Medicaid Zero Paid Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,ABMVLOC,"MCD")),8)
 W !,"Total Medicaid Enrolled (Not Billed) Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,ABMVLOC,"MCD")),8)  ;abm*2.6*12
 W !,"Total Kidscare/Chip Paid Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,ABMVLOC,"CHIP")),8)
 W !,"Total Kidscare/Chip Zero Paid Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,ABMVLOC,"CHIP")),8)
 ;W !,"Total Kidscare/Chip Enrolled Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,ABMVLOC,"CHIP")),8)  ;abm*2.6*12
 W !,"Total Kidscare/Chip Enrolled (Not Billed) Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,ABMVLOC,"CHIP")),8)  ;abm*2.6*12
 ;W !,"Total Other Encounters "_ABMLOC_": ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMSDT,ABMVLOC,"OTHR")),8)  ;abm*2.6*12
 W !,"Total Other Encounters "_ABMLOC_" (*not included in numerator): ",?70,$J(+$G(^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMSDT,ABMVLOC,"OTHR")),8)  ;abm*2.6*12
 Q
NOTMET ;EP
 W !!,"The Patient Volume Threshold (10% for Hospitals) was not met for the"
 W !,$S(("^A^B^C^"[("^"_ABMY("90")_"^")):"MU Qualification year",1:"timeframe entered")_".  Details for the volumes that were achieved are"
 W !,"provided for your information."
 W !!,"Highest Patient Volume Met: ",+$P($G(^XTMP("ABM-PVH2",$J,"LOC TOP",ABMVLOC)),U)
 W !,"First Day Highest Patient Volume Achieved: ",$$SDT^ABMDUTL(ABMSDT)
 S ABMTHPV=0
 S:ABMSDT ABMTHPV=+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT,ABMVLOC))
 S ABMMHPV=0
 S:ABMSDT ABMMHPV=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMSDT,ABMVLOC))
 W !!,"Total Patient Encounters of First Highest Patient Volume Period: ",ABMTHPV
 W !,"Total Hospital"_$S(+$G(ABMER)=1:"/ER",1:"")_" Encounters of First Highest Patient Volume Period: ",ABMMHPV
 S ABMCNT=0
 K ABMLN
 ;
 I +$G(ABMY("TVDTS"))'=0 D
 .S ABMCNT=0
 .S ABMDT=0
 .F  S ABMDT=$O(^XTMP("ABM-PVH2",$J,"LOC PERCENT",ABMDT)) Q:'ABMDT  D
 ..S ABMCNT=ABMCNT+1
 ..S ABMPRC($G(^XTMP("ABM-PVH2",$J,"LOC PERCENT",ABMDT,ABMVLOC)),ABMCNT)=ABMDT
 ..S ABMP=""
 ..S ABMSAV=ABMCNT-ABMY("TVDTS")
 ..F  S ABMP=$O(ABMPRC(ABMP)) Q:ABMP=""  D
 ...S ABMCNT=0,ABMC=0
 ...F  S ABMCNT=$O(ABMPRC(ABMP,ABMCNT)) Q:'ABMCNT  D  Q:(ABMC=ABMSAV)
 ....K ^XTMP("ABM-PVH2",$J,"LOC PERCENT",$G(ABMPRC(ABMP,ABMCNT)))
 ....S ABMC=ABMC+1
 ;
 D NMHDR
 S ABMSDT=0
 S ABMDTCNT=0
 F  S ABMSDT=$O(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT)) Q:'ABMSDT  D  Q:(IOST["C")&((+$G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 .I ABMY("90")'="A"&(ABMY("SDT")'=ABMSDT) Q  ;only calculate whole year for automated
 .I $Y+5>IOSL D HD^ABMM2PV3,NMHDR Q:(IOST["C")&((+$G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 .S ABMDTCNT=+$G(ABMDTCNT)+1
 .I +$G(ABMP("EDT"))=0 D
 ..S X1=ABMSDT
 ..S X2=89
 ..D C^%DTC
 ..S ABMEDT=X
 .I +$G(ABMP("EDT"))'=0 S ABMEDT=ABMP("EDT")
 .I (+$G(ABMEDT)>((ABMY("QYR")-1700)_"0930")) Q
 .S ABMPD=$TR($P($$MDT^ABMDUTL(ABMSDT),"-",1,2),"-"," ")_"-"_$TR($P($$MDT^ABMDUTL(ABMEDT),"-",1,2),"-"," ")  ;report period
 .S ABMRT=$J(+$G(^XTMP("ABM-PVH2",$J,"LOC PERCENT",ABMSDT,ABMVLOC)),5)_"%"  ;rate
 .S ABMDEN=$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT,ABMVLOC)),6)  ;denominator
 .S ABMNUM=$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMSDT,ABMVLOC)),6)  ;numerator
 .S ABMMCDPD=$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,ABMVLOC,"MCD")),6)
 .S ABMSCHPD=$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,ABMVLOC,"CHIP")),6)
 .S ABMMCDZP=$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,ABMVLOC,"MCD")),6)
 .S ABMMCDEN=$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,ABMVLOC,"MCD")),6)
 .S ABMSCHZP=$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,ABMVLOC,"CHIP")),6)
 .S ABMSCHEN=$J(+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,ABMVLOC,"CHIP")),6)
 .W !,ABMPD,?15,ABMRT,?20,ABMDEN,?28,ABMNUM,?35,ABMMCDPD,?41,ABMMCDZP,?50,ABMMCDEN,?57,ABMSCHPD,?63,ABMSCHZP,?73,ABMSCHEN
 I ABMDTCNT=0 D
 .W !!, "<< NO DATA FOUND FOR SELECTION >>"
 Q
NMHDR ;EP
 W !
 F ABM=1:1:80 W "="
 W !,"HOSPITAL"_$S($G(ABMER)=1:"/ER",1:"")_" PATIENT VOLUME - QUALIFICATION YEAR ",ABMY("QYR")
 W !,"Report Period",?15,"Rate",?21,"Denom-",?30,"Numer-",?38,"Mcd",?44,"Mcd",?52,"Mcd",?58,"Schip",?64,"Schip",?73,"Schip"
 W !?21,"inator",?30,"ator",?37,"Paid",?42,"ZeroPd",?49,"Enrolled",?59,"Paid",?64,"ZeroPd",?71,"Enrolled"
 W !
 F ABM=1:1:80 W "="
 Q
PATIENT ;EP
 S ABM("PG")=1
 D HDR^ABMM2PV3
 D PTHDR
 S ABMITYP=""
 F  S ABMITYP=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP)) Q:ABMITYP=""  D  Q:(IOST["C")&((+$G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 .S ABMINS=""
 .F  S ABMINS=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS)) Q:ABMINS=""  D  Q:(IOST["C")&((+$G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 ..S ABMPTL=""
 ..F  S ABMPTL=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL)) Q:ABMPTL=""  D  Q:(IOST["C")&((+$G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 ...S ABMPTF=""
 ...F  S ABMPTF=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF)) Q:ABMPTF=""  D  Q:(IOST["C")&((+$G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 ....S ABMVDT=0
 ....F  S ABMVDT=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT)) Q:'ABMVDT  D  Q:(IOST["C")&((+$G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 .....S ABMVDFN=0
 .....F  S ABMVDFN=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT,ABMVDFN)) Q:'ABMVDFN  D
 ......S ABMPT=$P($G(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT,ABMVDFN)),U,2)
 ......S ABMTRIEN=$P($G(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT,ABMVDFN)),U,3)
 ......S IENS=ABMVLOC_","_ABMPT_","
 ......S ABMHRN=$$GET1^DIQ(9000001.41,IENS,.02)
 ......W !,$E(ABMPTL_", "_ABMPTF,1,16)  ;pt name
 ......W ?18,ABMHRN  ;HRN
 ......W ?25,$E($$GET1^DIQ(9000010,ABMVDFN,.07,"E"),1,3)  ;Category
 ......W ?29,$E($$GET1^DIQ(9000010,ABMVDFN,.08,"E"),1,8)  ;clinic
 ......W ?39,$S(ABMITYP="X":"",1:ABMITYP)  ;insurer type
 ......W ?42,$S(ABMINS="NO BILL":"",1:$E(ABMINS,1,10))  ;insurer
 ......W ?53,$$CDT^ABMDUTL(ABMVDT)  ;visit date
 ......W ?70,$S(+ABMTRIEN:$$SDTO^ABMDUTL(ABMTRIEN),1:"") ;dt paid
 ......I $P($G(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT,ABMVDFN)),U,4)'="" W ?79,$P(^(ABMVDFN),U,4)
 ......I $Y+5>IOSL D HD^ABMM2PV3,PTHDR Q:(IOST["C")&((+$G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 Q
PTHSTFL ;EP
 S ABMSDT=$P($G(^XTMP("ABM-PVH2",$J,"LOC TOP")),U,2)
 K ABMDCNT
 D OPEN^%ZISH("ABM",ABMPATH,ABMFN,"W")
 Q:POP
 U IO
 S ABM("PG")=1
 D HDR^ABMM2PV3
 S ABMPMET=0
 W !,"Visit Location"_U_"Patient"_U_"Chart#"_U_"Policy Holder ID"_U_"Serv Cat"_U_"Clinic"_U_"InsType"_U_"BilledTo"
 W U_"DateOfService"_U_"DatePaid"_U_"Medicaid/SchipPaid"_U_"Bill#"_U_"Payment"_U_"Primary POV"_U_"PRVT"_U_"MCR"_U_"MCD"_U_"CHIP"_U_"NEEDY INDIV"
 Q:ABMSDT=""
 S ABMVLOC=0
 F  S ABMVLOC=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC)) Q:'ABMVLOC  D
 .S ABMITYP=""
 .F  S ABMITYP=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP)) Q:ABMITYP=""  D
 ..S ABMINS=""
 ..F  S ABMINS=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS)) Q:ABMINS=""  D
 ...S ABMPTL=""
 ...F  S ABMPTL=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL)) Q:ABMPTL=""  D
 ....S ABMPTF=""
 ....F  S ABMPTF=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF)) Q:ABMPTF=""  D
 .....S ABMVDT=0
 .....F  S ABMVDT=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT)) Q:'ABMVDT  D
 ......S ABMP("VDT")=ABMVDT
 ......S ABMVDFN=0
 ......F  S ABMVDFN=$O(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT,ABMVDFN)) Q:'ABMVDFN  D
 .......I +$G(^XTMP("ABM-PVP2",$J,"DUPS",ABMVDFN))=1 S ABMDCNT=+$G(ABMDCNT)+1
 .......S ^XTMP("ABM-PVP2",$J,"DUPS",ABMVDFN)=1
 .......S ABMPT=$P($G(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT,ABMVDFN)),U,2)
 .......S ABMTRIEN=$P($G(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT,ABMVDFN)),U,3)
 .......S IENS=ABMVLOC_","_ABMPT_","
 .......S ABMHRN=$$GET1^DIQ(9000001.41,IENS,.02)
 .......W !,$$GET1^DIQ(9999999.06,ABMVLOC,".02","E")
 .......W U_ABMPTL_", "_ABMPTF  ;pt name
 .......W U_ABMHRN  ;HRN
 .......K ABML
 .......D ELGCHK^ABMM2PV3
 .......S ABMMIEN=0
 .......K ABMMCDN
 .......I ($G(ABML("MCD"))!($G(ABML("CHIP")))) D
 ........S ABMMIEN=+$G(ABMP("SAVE"))
 ........I ABMMIEN D
 .........S ABMMCDN=$P($G(^AUPNMCD(ABMMIEN,0)),U,3)
 ........I 'ABMMIEN D PRVTCHIP^ABMM2PV3
 .......I $G(ABMMCDN)'="" W U_ABMMCDN  ;Medicaid # - policy holder ID
 .......I 'ABMMIEN W U
 .......W U_$$GET1^DIQ(9000010,ABMVDFN,.07,"E")  ;Category
 .......W U_$$GET1^DIQ(9000010,ABMVDFN,.08,"E")  ;clinic
 .......W U_$S(ABMITYP="X":"",1:ABMITYP)  ;insurer type
 .......W U_$S(ABMINS="NO BILL":"NOT BILLED",1:$E(ABMINS,1,10))  ;insurer
 .......W U_$$CDT^ABMDUTL(ABMVDT)  ;visit date
 .......W U_$S(+ABMTRIEN:$$SDTO^ABMDUTL(ABMTRIEN),1:"") ;dt paid
 .......S ABMREC=$G(^XTMP("ABM-PVH2",$J,"PT LST",ABMSDT,ABMVLOC,ABMITYP,ABMINS,ABMPTL,ABMPTF,ABMVDT,ABMVDFN))
 .......D ELGCHK^ABMM2PV3
 .......W U_$P($G(ABMREC),U,4)
 .......W U_$P($G(ABMREC),U,5)
 .......W U_$P($G(ABMREC),U,6)
 .......W U_$P($G(ABMREC),U,7)
 .......W U_ABMPI_U_ABMMCR_U_ABMMCD_U_ABMCHIP_U_ABMNI
 I +$G(ABMDCNT)>0 W !!,"Duplicate visits for this period: "_ABMDCNT
 D CLOSE^%ZISH("ABM")
 Q
PTHDR ;
 W !,"VISIT LOCATION: ",$$GET1^DIQ(9999999.06,ABMVLOC,.02,"E"),!
 F ABM=1:1:80 W "="
 W !,?25,"Ser",?39,"I.",?42,"Billed",?53,"Date of",?70,"Date"
 W !,"PATIENT NAME",?18,"CHART#",?25,"Cat",?29,"Clinic",?39,"T.",?42,"To",?53,"Service",?70,"Paid",!
 F ABM=1:1:80 W "="
 Q
