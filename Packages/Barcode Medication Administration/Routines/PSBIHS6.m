PSBIHS6 ;KF/VAOIT  PSBO BZ LABEL PRT FROM IOE 
 ;;1.0;PSB BCMA CPS FOXK;**1018**;;Build 27
SELECT ; Select orderS from list
 N PSGLMT,PSGODDD,PSJLMQT,PSJLMFIN,PSJUDPRF,PSGRDTX K ^TMP("PSJCOM",$J),^TMP("PSJCOM2",$J)
 N DIE,DIR,ON,PSBSIO,PSGONC,PSGORD,PSJORD,PSJSEL,PSJSEL1,X,Y,ZTDESC,ZTDTH,ZTRN,ZTSK,ZTRTN,ZTIO
 S PSGONC=1,PSGLMT=^TMP("PSJPRO",$J,0) D ENASR^PSGON
 I "^"[X S VALMQUIT=1 Q
 S PSJLM=1,PSJSEL=0 F  S PSJSEL=$O(PSGODDD(PSJSEL)) Q:'PSJSEL!($G(Y)<0)  F PSJSEL1=1:1:$L(PSGODDD(PSJSEL),",")-1 D
 .S PSJORD=$G(^TMP("PSJON",$J,+$P(PSGODDD(PSJSEL),",",PSJSEL1))) D:PSJORD=+PSJORD SELECT^PSJOEA Q:PSJORD=""!($G(Y)<0)  Q:PSJORD=+PSJORD  D
 ..Q:('$$LS^PSSLOCK(PSGP,PSJORD))
 ..Q:PSJORD=+PSJORD
 ..S PSGORD=""
 ..Q:PSJORD'["U"
 ..S ON=PSJORD D BCMA
 ..Q:$G(Y)<0
 S VALMBCK="Q"
 K PSJLM
 Q
BCMA ;GET DISPENSE DRUG INFO
 N PSBANS,PSBANS1,PSBRPT,PSBSAVE,DA,DIK,DR,DDSFILE,CPSDIEN,CPSDIEN1
 K CPSDRGS
 W @IOF
 ;DRUG INFO ALL ACTIVE DISPENSE
 S CPSDIEN=0 F  S CPSDIEN=$O(^PS(55,DFN,5,+PSJORD,1,"B",CPSDIEN)) Q:CPSDIEN'>0  D
 .S CPSDIEN1=0 F  S CPSDIEN1=$O(^PS(55,DFN,5,+PSJORD,1,"B",CPSDIEN,CPSDIEN1)) Q:CPSDIEN1'>0  D
 ..Q:$P($G(^PS(55,DFN,5,+PSJORD,1,CPSDIEN1,0)),U,3)'=""  ;BAIL IF INACTIVE DATE
 ..S CPSDRGS(CPSDIEN)=$J($P($G(^PS(55,DFN,5,+PSJORD,1,CPSDIEN1,0)),U,2),0,0)  ;BCMA UNIT GIVE ROUND UP
 S CPSDIEN=0  F  S CPSDIEN=$O(CPSDRGS(CPSDIEN)) Q:CPSDIEN'>0  D BL
 Q
BL ; FILE LABELS
 N PSBTYPE,PSBPRT,CPSMAN,CPSEXP,CPSLOT,CPSDOSE
 W @IOF
 ;FROM PSBOBZ
 S PSBTYPE="BZ" D NEW^PSBO1(.PSBRPT,PSBTYPE)
 I +PSBRPT(0)<1 W !,"Error: ",$P(PSBRPT(0),U,2) S DIR(0)="E" D ^DIR Q
 S DA=+PSBRPT(0),DIE="^PSB(53.69,"
 ;END PSBOBZ 
 S CPSMAN=$P($G(^PSDRUG(CPSDIEN,999999924)),U,1)
 S CPSLOT=$P($G(^PSDRUG(CPSDIEN,999999924)),U,2)
 S CPSEXP=$P($G(^PSDRUG(CPSDIEN,660)),U,9)
 S CPSDOSE=$P(^PS(55,DFN,5,+PSJORD,.2),U,2)
 S DR=".31///^S X=CPSDIEN" D ^DIE
 I $G(CPSLOT)'="" S DR=".32///^S X=CPSLOT" D ^DIE
 I $G(CPSEXP)'="" S DR=".33///^S X=CPSEXP" D ^DIE
 I $G(CPSMAN)'="" S DR=".34///^S X=CPSMAN" D ^DIE
 S DR=".38///^S X=$G(CPSDRGS(CPSDIEN))" D ^DIE
 S:$G(IOP)'="" DR=".06///^S X=IOP" D ^DIE
 D NOW^%DTC S DR=".07///^S X=%" D ^DIE
 S DR=".12///^S X=DFN" D ^DIE
 S DR=".39///^S X=CPSDOSE" D ^DIE
 ;BELOW LOGIC FROM PSBOBZ
 S DR="[PSBO "_PSBTYPE_"]",DDSFILE=53.69 D ^DDS
 I 'PSBSAVE W !,"Cancelling Request..." S DIK="^PSB(53.69," D ^DIK W "Cancelled!"
 D:PSBSAVE
 .S IOP=$$GET1^DIQ(53.69,DA_",",.06,"I"),PSBSIO=0
 .W !,"Submitting Your Report Request to TaskMan..." H 1
 .S ZTIO=$$GET1^DIQ(53.69,DA_",",.06)
 .S ZTDTH=$P(^PSB(53.69,DA,0),U,7)
 .S ZTDESC="BCMA - "_$$GET1^DIQ(53.69,DA_",",.05)
 .S ZTRTN="DQ^PSBO("_DA_")"
 .D ^%ZTLOAD
 .W !,"Submitted!",!,"Your Task Number Is: ",$G(ZTSK),! H 1
 Q
