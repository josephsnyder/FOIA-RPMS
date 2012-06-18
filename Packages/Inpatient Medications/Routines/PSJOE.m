PSJOE ;BIR/MLM-INPATIENT ORDER ENTRY ;28-Mar-2011 19:38;DU
 ;;5.0; INPATIENT MEDICATIONS ;**7,26,29,33,42,50,56,72,58,85,95,80,1009,1011**;16 DEC 97;Build 17
 ;
 ; Reference to ^PS(55 is supported by DBIA #2191.
 ; Reference to EN^VALM is supported by DBIA #10118.
 ; Reference to FULL^VALM1 and PAUSE^VALM1 is supported by DBIA #10116.
 ; Reference to ^PSSLOCK is supported by DBIA #2789
 ; Reference to ^DPT is supported by DBIA #10035.
 ; Reference to ^ORCFLAG is supported by DBIA #3620.
 ; Modified - IHS/MSC/JDS  - 11/20/2010 - Line RENEW+3
 ;                           12/09/2010 - Line COPY+5
 ;            IHS/MSC/PLS  - 03/28/2011 - Line EN+5
EN ; Start Inpatient LM OE
 N PSJLK,PSJNEWOE,PSJLMCON,PSJPROT,XQORS,VALMEVL D ENCV^PSGSETU,^PSIVXU
 I $D(XQUIT) K XQUIT G DONE
 K PSGVBY,PSJPR S (PSJOL,PSJACOK,PSGOP,PSGNEF,PSGOEAV,PSGPXN)="" L +^PS(53.45,PSJSYSP):1 E  D LOCKERR^PSJOE G DONE^PSJOE
 F  S (PSJLMCON,PSGPTMP)=0 D ^PSJP,HK Q:PSGP'>0  S PSJPROT=3,DFN=PSGP D ^PSJAC D  I PSJLK D UL^PSSLOCK(PSGP)
 .D SETPTCX^APSPFUNC(PSGP)  ;IHS/MSC/PLS - 03/28/11
 .K ^TMP("PSJ",$J)
 .S PSJLK=$$L^PSSLOCK(PSGP,1) I 'PSJLK W !,$C(7),$P(PSJLK,U,2) Q
 .K PSJLMPRO D EN^VALM("PSJ LM BRIEF PATIENT INFO")
 .N NXTPT S NXTPT=0 F  Q:$G(NXTPT)  D
 ..K PSGRDTX
 ..I $G(PSJLMCON)!$G(PSJNEWOE) D
 ...S PSJOL=$S(",S,L,"[(","_$G(PSJOL)_","):PSJOL,1:"S")
 ...S PSJLMPRO=1,PSJLMCON=1,PSJNEWOE=0 D EN^VALM("PSJ LM OE")
 ..I $G(PSJNEWOE)!($G(VALMBCK)="Q") S PSJNEWOE=0 Q
 ..I $G(PSJLMCON)&$G(PSJLMPRO)&'$D(^TMP("PSJ",$J)) D  Q
 ...S PSJLMCON=0,PSJLMPRO=0 D EN^VALM("PSJ LM BRIEF PATIENT INFO")
 ...I $G(PSJNEWOE) S NXTPT=0 Q
 ...S NXTPT=1
 ..S NXTPT=1,PSJNEWOE=0
 .S PSJOL="S"
 .; E3R 17161 - Pre-Exchange Report between patients
 .I $G(PSGPXN),$P(PSJSYSW0,U,29)]"" S PSGPXPT=PSGP D  K PSGPXPT S PSGPXN=0
 ..N DFN,PSGP S (PSGP,DFN)=PSGPXPT D ^PSGPER
 .D ENCV^PSGSETU,^PSIVXU
 K PSJLMPRO,^TMP("PSJPRO",$J),^TMP("PSJ",$J),^TMP("PSJON",$J)
 ;
DONE ;
 K AC,ACTION,D1,D2,MI,N,ON,P3,PNOW,PSIVAT,PSIVLN,PSIVSTR L -^PS(53.45,PSJSYSP)
 K DA,DRG,NE,PSGCF,PSGCANFL,PSGNEDFD,PSGNEF,PSGNEFD,PSGNEPR,PSGNESD,PSJACOK,PSJOE,PSJOECNT,PSJOEPF,PSJORD,PSGOEA,PSGOEAV,PSGOL,PSGOS,PSGON,PSGOP,PSGORD,PSGS0XT,PSGS0Y,RCT,ST,WD,XREF,Z,PSJIVORF,PSJIVPCL
 K PSGOEORF,PSIVREA,PSJOPC,PSJORL,PSJORPCL,PSJORTOI,RF,WSCHADM,PSJLM
 K DIU,DRGI,FLAG,FQC,ND2,PRI,PSGOE,PSGPRI,PSGSDN,PSGOEDMR,PSGOEPR,PSGPTS,PSGTOL,PSGTOO,PSGUOW,PSJIVOF,PSJOCNT,PSJON,PSJORQF,PSJORTOU,PSJORVP
 G:($G(PSGPXN)&'$$DEFON^PSGPER1) ^PSGPER1 D ENIVKV^PSGSETU
 Q
 ;
HK ; HouseKeeping (a nice COBOL term)
 I PSGOP,PSGOP'=PSGP D
 .N PSJACPF,PSJACNWP,PSJPWD,PSJSYSL,PSJSYSW,PSJSYSW0,DFN,VAIN,VAERR S DFN=PSGOP
 .D INP^VADPT S PSJPWD=+VAIN(4) I PSJPWD S PSJACPF=10 D WP^PSJAC D:$P(PSJSYSL,"^",2)]"" ENQL^PSGLW
 Q:PSGP<0
 S (DFN,PSGOP)=PSGP,X=""
 Q
 ;
SELECT ; Select order from list
 N PSGLMT,PSGODDD,PSJLMQT,PSJLMFIN,PSJUDPRF,PSGRDTX
 S PSGONC=1,PSGLMT=^TMP("PSJPRO",$J,0) D ENASR^PSGON
 I "^"[X S VALMQUIT=1 Q
 S PSJLM=1,PSJSEL=0 F  S PSJSEL=$O(PSGODDD(PSJSEL)) Q:'PSJSEL!($G(Y)<0)  F PSJSEL1=1:1:$L(PSGODDD(PSJSEL),",")-1 D
 .S PSJORD=$G(^TMP("PSJON",$J,+$P(PSGODDD(PSJSEL),",",PSJSEL1))) Q:PSJORD=""!($G(Y)<0)  Q:('$$LS^PSSLOCK(PSGP,PSJORD))  D
 ..S PSGORD=""
 ..D DISACTIO(PSGP,PSJORD,"") S:PSJORD["V" PSJORD=ON
 ..D UNL^PSSLOCK(PSGP,PSJORD) Q:$G(Y)<0
 ..;D DISACTIO(PSGP,PSJORD,""),UNL^PSSLOCK(PSGP,PSJORD) Q:$G(Y)<0
 S VALMBCK="Q"
 K PSJLM
 Q
 ;
DISACTIO(DFN,PSJORD,PSJPNV) ; Display UD order and allow actions.
 ; DFN    - Patient IEN
 ; PSJORD - Order #_location Code (P:53.1,V:55.01,U:55.06)
 ; PSJPNV - Invoked from Pending/NV option; (gets different hidden menu)
 N PSGP,PSJIVFLG,PSGSDX,PSGFDX,PSJXX1,ON55
 S PSGP=DFN D ENIV^PSJAC I PSJORD["V" D EN^PSJLIORD(DFN,PSJORD) Q
 D GETUD^PSJLMGUD(DFN,PSJORD)
 ;S PSGPD=$S(PSJORD["P":$P($G(^PS(53.1,+PSJORD,.2)),U),1:$P($G(^PS(55,DFN,5,+PSJORD,.2)),U))
 S PSGOEAV=$P(PSJSYSP0,"^",9)&PSJSYSU
 S:$G(PSJTUD) PSGPD=$G(PSJCOI),PSGPDN=$$OINAME^PSJLMUTL(+PSGPD)
 K PSGOENG I '$D(PSGPRF) D  Q:$G(PSGOENG)
 . I PSJORD["U" L +^PS(55,PSGP,5,+PSJORD):1 E  S PSGOENG=1
 . I PSJORD["P" L +^PS(53.1,+PSJORD):1 E  S PSGOENG=1
 . I $G(PSGOENG) W !,"This order is being edited by another terminal.",! S PSGOENG=1 K DIR S DIR(0)="E" D ^DIR K DIR Q
 S PSGACT=$$ENACTION^PSGOE1(PSGP,PSJORD)
 I PSJORD["P" S PSJXX1=$G(^PS(53.1,+PSJORD,0)) I PSGP'=$P(PSJXX1,U,15)!(DFN'=$P(PSJXX1,U,15)) L -^PS(53.1,+PSJORD) Q
 I PSJORD["P" D  S PSJXX1=$P($G(^PS(53.1,+PSJORD,0)),U,9) I $S($G(PSJIVFLG):1,$G(Y)<0:1,"PADE"[PSJXX1:1,1:0) L -^PS(53.1,+PSJORD) Q
 .I $P(PSJXX1,U,9)="N",($P(PSJXX1,U,4)'="U") D  Q
 .. S P("PON")=PSJORD,PSIVFLG=1
 .. D GT531^PSIVORFA(+PSGP,PSJORD),VF^PSIVORC2
 .I $P(PSJXX1,U,9)="P" D  Q
 ..S:$G(PSJTUD) $P(PSJXX1,U,4)="U"
 ..I $P(PSJXX1,U,4)="U",(+PSJPDD) W !!,"Cannot process an Out-patient Unit Dose order for ",$P($G(^DPT(+PSGP,0)),U) D PAUSE^VALM1 S PSJIVFLG=1 Q
 ..NEW PSGRSD,PSGRSDN,PSGRFD,PSGRFDN
 ..D REQDT^PSJLIVMD(PSJORD)
 ..I $P(PSJXX1,U,4)="U",($G(PSGSCH)="") W !!,"Invalid schedule, can't finish this order" D PAUSE^VALM1 Q
 ..I $P(PSJXX1,U,4)="U" N PSJLM S PSJLM=1,PSGORD=PSJORD D START^PSGOEF,ENSFE^PSGOEE0(PSGP,PSGORD),@$S($G(PSJTUD):"FINISH^PSGOEF",1:"EN^VALM(""PSJ LM PENDING EDIT"")") Q
 ..I $P(PSJXX1,U,4)'="U",PSGP=$P(PSJXX1,U,15),DFN=$P(PSJXX1,U,15) S PSJLYN=PSJORD D EN^PSJLIFN S PSJIVFLG=1 K PSJLYN,PSJMAI
 I $G(PSIVFLG) K PSIVFLG Q
 S PSGACT=$$ENACTION^PSGOE1(PSGP,PSJORD),PSGOEEF=0 D GETUD^PSJLMGUD(PSGP,PSJORD),ENSFE^PSGOEE0(PSGP,PSJORD),EN^VALM("PSJ LM UD ACTION")
 I PSJORD["P" L -^PS(53.1,+PSJORD)
 I PSJORD["U" L -^PS(55,PSGP,5,+PSJORD)
 ;Send SN to CPRS if autoverify OFF and Order Set Entry and no 21st piece
 I $D(PSGOES),'PSGOEAV,$D(PSGORD),PSGORD["P",$P($G(^PS(53.1,+PSGORD,0)),"^",21)']"" D ORSET^PSGOETO1
 D UNL^PSSLOCK(PSGP,PSJORD)
 Q
EDIT(PSGP,PSGORD,PROMPT) ;
 I "DE"[$$GTSTATUS(PSGP,PSGORD) W !,"This order may not be edited." D PAUSE^VALM1 Q
 S PSGNEDFD="" D HOLDHDR,@$S('PROMPT:"ENEFA2^PSGON",1:"ENEFA^PSGON") I 'Y D ABORT^PSGOEE Q
 I PSGORD["P" D ENF^PSGOEE Q
 D ACT^PSGOEE
 Q
RENEW(PSGP,PSGORD) ;
 D HOLDHDR
 I 'PSJSYSU,$P($G(^PS(55,PSGP,5,+PSGORD,4)),U,15),$P($G(^(4)),U,16) W !!,"This order is already marked for renewal!" D PAUSE^VALM1 S VALMBCK="R" Q
 N OI S OI=+$G(^PS(55,PSGP,5,+PSGORD,.2)) I OI I '$$OI^APSPMULT(OI,+PSGP) W !!,"Sorry, this drug is not currently available in this facility" D PAUSE^VALM1 S VALMBCK="R" Q  ;IHS/MSC/JDS - 11/20/2010
 I 'PSGRRF D ^PSGOER Q
 D ^PSGOERI
 Q
 ;
GTSTATUS(DFN,ON) ;
 I ON["P" Q $P($G(^PS(53.1,+ON,0)),U,9)
 I ON["U" Q $P($G(^PS(55,DFN,5,+ON,0)),U,9)
 Q $P($G(^PS(55,DFN,"IV",+ON,0)),U,17)
 ;
DC(DFN,PSJORD) ; DC IV, UD, or pending orders.
 D HOLDHDR
 S X=$$GTSTATUS(DFN,PSJORD) I X="D"!(X="DE") W !,"This order has already been DISCONTINUED." D PAUSE^VALM1 Q
 D ENO^PSGOEC(DFN,PSJORD) ;,GETUD^PSJLMGUD(DFN,PSJORD),INIT^PSJLMUDE(DFN,PSJORD) S VALMBCK="Q"
 S VALMBCK="Q"
 Q
HOLD(DFN,PSJORD) ; Change order's status from ACTIVE<->HOLD
 D HOLDHDR
 I PSJORD["V" D H^PSIVOPT(DFN,PSJORD,P(17),P(3))
 I PSJORD'["V" D H^PSGOE1(DFN,PSJORD)
 D GETUD^PSJLMGUD(DFN,PSJORD),INIT^PSJLMUDE(DFN,PSJORD) S PSGACT=$$ENACTION^PSGOE1(DFN,PSJORD),VALMBCK="R"
 Q
 ;
COPY(PSGP,PSGORD) ; Copy an order (does not discontinue original order)
 I $D(PSGCOPY) W !!,"You cannot copy the order at this time" D PAUSE^VALM1 Q
 I PSGORD["V" W !!,"You cannot copy an IV order." D PAUSE^VALM1 Q
 I PSGORD["P" W !!,"You cannot copy this "_$S($G(PSGSTAT)]"":PSGSTAT,1:"PENDING IV")_" order." D PAUSE^VALM1 Q
 Q:'$$HIDDEN^PSJLMUTL("COPY")
 I $T(OI^APSPMULT)]"" N OI S OI=+$G(^PS(55,PSGP,5,+PSGORD,.2)) I '$$OI^APSPMULT(OI,+$G(DFN)) W !!,"Sorry, this drug is not currently available in this facility" D PAUSE^VALM1 Q            ;IHS/MSC/JDS - 12/09/10 - MDF
 D ^PSJHVARS
 I $P($G(^PS(55,PSGP,5,+PSGORD,.2)),U,4)="D",'$P($G(^(4)),"^",3) W !!,"Nurse verified orders with a priority of DONE may not be Copied." D PAUSE^VALM1 Q
 S PSGOEAV=$P(PSJSYSP0,U,9)&PSJSYSU
 S PSGCOPY=1
 D FULL^VALM1,^PSGOD
 S VALMBCK="R"
 K PSGCOPY
 S PSGACT=$$ENACTION^PSGOE1(PSGP,PSGORD) ; resets PSGACT after copy
 D RESTORE^PSJHVARS
 Q
 ;
UPDATE ; Refresh array, actions, & display.
 D GETUD^PSJLMGUD(DFN,ON),INIT^PSJLMUDE(DFN,ON) S VALMBCK="R"
 Q
FINISH ;
 D FINISH^PSGOEF,PAUSE^VALM1
 Q
 ;
LOG(DFN,PSGORD) ;
 D FULL^VALM1,ENLM^PSGOEL(DFN,PSGORD),PAUSE^VALM1 S VALMBCK="R"
 Q
NEWSEL ;
 N PSGLMT,PSGODDD,PSJLMQT,PSJLMFIN,PSJUDPRF,PSGRDTX
 S X=$P(XQORNOD(0),"=",2)
 S PSGONC=1,PSGLMT=^TMP("PSJPRO",$J,0)
 D ENCHK^PSGON I '$O(PSGODDD(0)) S VALMQUIT=1 Q
 S PSJLM=1,PSJSEL=0 F  S PSJSEL=$O(PSGODDD(PSJSEL)) Q:'PSJSEL  F PSJSEL1=1:1:$L(PSGODDD(PSJSEL),",")-1 D
 .;S PSJORD=$G(^TMP("PSJON",$J,+$P(PSGODDD(PSJSEL),",",PSJSEL1))) Q:PSJORD=""  D DISACTIO(PSGP,PSJORD,$G(PSJPNV))
 .S PSJORD=$G(^TMP("PSJON",$J,+$P(PSGODDD(PSJSEL),",",PSJSEL1))) Q:PSJORD=""!($G(Y)<0)  Q:('$$LS^PSSLOCK(PSGP,PSJORD))  D
 ..S PSGORD=""
 ..S ON=PSJORD
 ..D DISACTIO(PSGP,PSJORD,$G(PSJPNV)) S:PSJORD["V" PSJORD=ON
 ..D UNL^PSSLOCK(PSGP,PSJORD) Q:$G(Y)<0
 ..;D DISACTIO(PSGP,PSJORD,$G(PSJPNV)),UNL^PSSLOCK(PSGP,PSJORD) Q:$G(Y)<0
 S VALMBCK="Q"
 K PSJLM
 Q
HOLDHDR ; Freeze header text while processing order actions
 I $D(VALM("TM")) S IOTM=VALM("TM"),IOBM=IOSL W IOSC W @IOSTBM W IORC
 Q
LOCKERR ;
 W !!,$C(7),"You are entering or editing an Inpatient Medication order in another session.",!,"Only one order entry/edit session is allowed for a user at a time.",!! N DIR S DIR(0)="E" D ^DIR
 Q
FLAG(DFN,PSJORD) ;Flag order through CPRS entrypoint.
 N ORIFN,NODE0
 S NODE0=$S(PSJORD["V":$G(^PS(55,DFN,"IV",+PSJORD,0)),PSJORD["U":$G(^PS(55,DFN,5,+PSJORD,0)),1:^PS(53.1,+PSJORD,0))
 S ORIFN=$P(NODE0,"^",21)
 D EN1^ORCFLAG(ORIFN)
 D PAUSE^VALM1
 Q
