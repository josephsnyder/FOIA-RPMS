APCDEATC ; IHS/CMI/LAB - ENTER TRANS CODE TO OUTPATIENT VISIT ;
 ;;2.0;IHS PCC SUITE;**2,17**;MAY 14, 2009;Build 18
 ;
 ;  Enter Trans Codes on existing Outpatient visit
 ;
HDR ; Write Header
 W:$D(IOF) @IOF
 F APCDJ=1:1:5 S APCDX=$P($T(TEXT+APCDJ),";;",2) W !?80-$L(APCDX)\2,APCDX
 K APCDX,APCDJ
 W !!
 D ^APCDEIN
 Q:APCDFLG
 I '$D(APCDPARM) D ^APCDVAR
 S APCDPAT="",APCDNOXV=""
 F  D GETPAT Q:APCDPAT=""  D GETVISIT I APCDVSIT D MNEPROC
 D EOJ
 Q
 ;
GETPAT ; GET PATIENT
 W !
 S APCDPAT=""
 I '$P($G(^APCDSITE(DUZ(2),0)),U,34) S AUPNLK("INAC")=1
 S DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC
 Q:Y<0
 I $D(APCDPARM),$P(APCDPARM,U,3)="Y" W !?25,"Ok" S %=1 D YN^DICN Q:%'=1
 S APCDPAT=+Y
 D INAC^APCDEA(APCDPAT,.X) I 'X S APCDPAT="" Q
 I DUZ("AG")="I" D ^APCDEMDI
 Q
 ;
GETVISIT ; GET VISIT
 S (APCDDATE,APCDVSIT)=""
RDV W !,"Enter VISIT date: " R X:$S($D(DTIME):DTIME,1:300) S:'$T X="" I X=" " W $C(7),"  ??" G RDV
 Q:X=""!(X="^")
 S %DT="EXP" D ^%DT
 G:X="?" RDV
 I Y<0 K Y Q
 S APCDDATE=Y
 D FINDVSIT
 I APCDVSIT S AUPNVSIT=APCDVSIT D MOD^AUPNVSIT S APCDCAT=$P(^AUPNVSIT(APCDVSIT,0),U,7),APCDLOC=$P(^(0),U,6),APCDTYPE=$P(^(0),U,3),APCDPAT=$P(^(0),U,5),APCDDATE=$P($P(^(0),U),"."),APCDCLN=$P(^(0),U,8)
 I APCDVSIT,AUPNDOB]"" S X2=AUPNDOB,X1=APCDDATE D ^%DTC S AUPNDAYS=X ; re-set days of age to visit date-dob
 Q
 ;
MNEPROC ; PROCESS MNEMONICS UNTIL DONE
 S DIE="^AUPNPAT(",DR=".16///TODAY",DA=APCDPAT D ^DIE
 W !
 S X="TC",DIC="^APCDTKW(",DIC(0)="M" D ^DIC K DIC
 I Y<0 W !!,"Error Occurred.  Could not find TC mnemonic!" Q
 S APCDMNE=+Y,APCDMNE("NAME")=$P(Y,U,2)
 D ^APCDEA3
 S APCDMPQ=0
 F  D GETMNE D:$D(APCDEQX) CHKEHR2^APCDVCHK I APCDMPQ Q
 I $$DTC^APCDKDTC(APCDVSIT) D START^APCDKDTC(APCDVSIT)
 I $P(APCDPARM,U,5)="Y" S APCDFV=APCDVSIT D ^APCDFCTC K APCDFV
 D GETMNEK
 K APCDMPQ,APCDREGU
 W !
 Q
 ;
GETMNE ; GET MNEMONIC
 W !
 S DIC="^APCDTKW(",DIC(0)="AEMQ",DIC("A")="MNEMONIC: ",DIC("S")="I $L($P(^(0),U))<5" D ^DIC K DIC("A"),DIC("S")
 I Y=-1 S APCDMPQ=1 Q
 S APCDMNE=+Y,APCDMNE("NAME")=$P(Y,U,2)
 K APCDMOD
 D ^APCDEA3
 I $D(APCDEQX) D ^APCDEQX I $D(APCDEQX) S APCDMPQ=1 Q
 I $D(APCDMOD) W !!,"Switching to Modify Mode for ONE Mnemonic ONLY!" S APCDMODE="M",APCDVLK=APCDVSIT D GETMNE K APCDVLK,APCDMOD S APCDMODE="A" W !!,"Switching back to ENTER Mode!" Q
 Q
 ;
 ;
GETMNEK ; KILL GETMNE SPECIFIC VARIABLES
 K APCDVSIT,APCDX,APCDEQX
 Q
 ;
 ;
GENVISIT ; GENERATE NEW VISIT
 S Y=APCDPAT D ^AUPNPAT K Y
 S APCDSEX=AUPNSEX,APCDDOB=AUPNDOB,APCDDOD=AUPNDOD
 S APCDDATE=$P(APCDDATE,".")_".12"
 S X=APCDDATE,%DT="TRXN" D ^%DT S X=Y I X=-1 S APCDAFLG=2,APCDAFLG("ERR")=".01^"_APCDDATE_"^DATE INVALID FOR PATIENT,CANNOT CREATE VISIT .01 VALUE" Q
 D VSIT01^AUPNVSIT
 I '$D(X) S APCDAFLG=2,APCDAFLG("ERR")=".01^"_APCDDATE_"^DATE INVALID FOR PATIENT,CANNOT CREATE VISIT .01 VALUE" Q
 S APCDLOC=DUZ(2)
 S APCDCAT="I"
 ;get type of visit
 D GETTYPE
 I APCDTYPE="" W !,"Visit NOT Created!" Q
 K APCDLOOK S X=APCDDATE,DIC="^AUPNVSIT(",DIC(0)="L"_$S($D(ZTQUEUED)!($D(ZTSK)):"",1:"E"),DLAYGO=9000010,DIC("DR")="[APCD VISIT (ADD)]" K DD,DO D FILE^DICN K DIC,DLAYGO
 I Y<0 S APCDAFLG=2,APCDAFLG("ERR")=".01^"_APCDDATE_"^FILE^DICN FAILED TO CREATE VISIT" Q
 S APCDVSIT=+Y
 S APCDVSIT("NEW")=1
 Q
 ;
 ;--------------------------------------------------------------
 ;
GETTYPE ; GET TYPE OF ENCOUNTER
 S APCDTYPE=""
 K DTOUT,DUOUT,DIRUT,DIROUT,DIR,DA
 S DIR("B")=$P($G(^APCDSITE(DUZ(2),0)),U,11)
 S DIR(0)="9000010,.03O",DIR("A")="TYPE OF VISIT" D ^DIR K DIR
 I $D(DIRUT) S X="" Q
 S APCDTYPE=Y
 Q
 ;
EOJ ; END OF JOB
 D ^APCDEKL,EN^XBVK("APCD")
 K DX,S,A,POP,IOY,%,%DT,X,Y,DI,DIGG,DIPGM,DISYS,DI,%1,DQ
 D ^XBFMK
 D KILL^AUPNPAT
 Q
FINDVSIT ; INTERACTIVE MODE
 K APCDALV
 S (APCDAVD,APCDAVDC)=9999999-$P(APCDDATE,"."),APCDAVD=(APCDAVD-1)_".999999"
 S APCDAC=2
 F APCDAL=0:0 S APCDAVD=$O(^AUPNVSIT("AA",APCDPAT,APCDAVD)) Q:APCDAVD=""  Q:$P(APCDAVD,".")'=APCDAVDC  F APCDAI=0:0 S APCDAI=$O(^AUPNVSIT("AA",APCDPAT,APCDAVD,APCDAI)) Q:APCDAI=""  D GATHER
 I '$D(APCDALV) W !!,"No OUTPATIENT Visits for ",$P(^DPT(APCDPAT,0),U),"on ",$$FMTE^XLFDT(APCDDATE),".",! Q
 D SELECT
 I APCDAO=4,'$D(APCDALV(4)) G FINDVSIT
 Q
 ;
GATHER ; GATHER VISITS FOR USER TO SELECT
 S APCDAX=^AUPNVSIT(APCDAI,0)
 Q:$P(APCDAX,U,11)
 ;Q:$P(APCDAX,U,6)'=DUZ(2)  ;only visits to this location
 Q:"AOS"'[$P(APCDAX,U,7)  ;only outpatient
 S APCDAC=APCDAC+1,APCDALV(APCDAC)=APCDAI
 Q
 ;
SELECT ; ALLOW USER TO SELECT, EXIT, OR ADD
 I '$D(APCDADF),APCDAC=3 S APCDADF=APCDAC
 S APCDAO=""
 D OPTION ;                         get option from user
 I APCDAO=1 S APCDAFLG=1 Q  ;       exit with no selection
 S Y=$P(^AUPNVSIT(APCDVSIT,0),U,5) D ^AUPNPAT K Y
 Q
 ;
OPTION ;EP;GET OPTION FROM USER
 F APCDAL=0:0 D OPTION2 Q:APCDAO
 Q
 ;
OPTION2 ; LET USER SELECT OPTION
 W !!,"PATIENT: ",$P(^DPT(APCDPAT,0),U)," has VISITs, same date, location.",!
 W !,"1  Exit without selecting VISIT"
 W !,"2  Display one of the existing VISITs"
 W !!,"Or select one of the following existing VISITs:",!
 F APCDAI=0:0 S APCDAI=$O(APCDALV(APCDAI)) Q:APCDAI=""  S APCDAX=APCDALV(APCDAI) D WRITE
 S DIR(0)="N^1:"_APCDAC_":0",DIR("A")="Choose one",DIR("?")="Choose one of the numbers listed above" S:$D(APCDADF) DIR("B")=APCDADF D ^DIR K DIR
 I $D(DIRUT) S APCDAO=1 Q
 S Y=+Y
 I Y=2 D DISPLAY Q
 I Y<3 S APCDAO=Y Q
 S APCDAO=Y,APCDVSIT=APCDALV(Y)
 Q
 ;
WRITE ; WRITE VISITS FOR SELECT
 S APCDAX=^AUPNVSIT(APCDAX,0)
 S APCDAT=$P(+APCDAX,".",2),APCDAT=$S(APCDAT="":"<NONE>",$L(APCDAT)=1:APCDAT_"0:00 ",1:$E(APCDAT,1,2)_":"_$E(APCDAT,3,4)_$E("00",1,2-$L($E(APCDAT,3,4)))_" ")
 W !,APCDAI,"  TIME: ",APCDAT,"  TYPE: ",$P(APCDAX,U,3),"  CATEGORY: ",$P(APCDAX,U,7),"  CLINIC: ",$S($P(APCDAX,U,8)]"":$E($P(^DIC(40.7,$P(APCDAX,U,8),0),U),1,13),1:"<NONE>"),?72,"DEC: ",$S($P(APCDAX,U,9):$P(APCDAX,U,9),1:0)
 K APCDAT
 Q
 ;
DISPLAY ; DISPLAY VISIT FOR USER
 I APCDAC=3 S APCDVSIT=APCDALV(APCDAC) D EN1^APCDVD S APCDVSIT="" Q
 S DIR(0)="NO^"_3_":"_APCDAC_":0",DIR("A")="Which one",DIR("?")="Enter the number associated with the visit you wish to display" D ^DIR K DIR
 Q:$D(DIRUT)
 S APCDVSIT=APCDALV(+Y) D EN1^APCDVD S APCDVSIT=""
 Q
 ;
TEXT ;
 ;;PCC Data Entry Module
 ;;
 ;;*******************************************
 ;;* ENTER TRANS CODES FOR OUTPATIENT VISITS *
 ;;*******************************************
 Q
