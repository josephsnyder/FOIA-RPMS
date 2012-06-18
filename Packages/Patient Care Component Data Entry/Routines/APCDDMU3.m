APCDDMU3 ; IHS/CMI/LAB - prompt for refusal value ; 27 Jan 2011  2:41 PM
 ;;2.0;IHS PCC SUITE;**5,7**;MAY 14, 2009
 ;
 ;
FLU(Y) ;EP
 I $G(Y)="" Q 0
 I '$D(^AUTTIMM(Y,0)) Q 0
 ;I $P(^AUTTIMM(Y,0),U,7)=1 Q 0
 I $P(^AUTTIMM(Y,0),U,3)=88 Q 1
 I $P(^AUTTIMM(Y,0),U,3)=16 Q 1
 I $P(^AUTTIMM(Y,0),U,3)=15 Q 1
 I $P(^AUTTIMM(Y,0),U,3)=111 Q 1
 I $P(^AUTTIMM(Y,0),U,3)=135 Q 1
 I $P(^AUTTIMM(Y,0),U,3)=140 Q 1
 I $P(^AUTTIMM(Y,0),U,3)=141 Q 1
 I $P(^AUTTIMM(Y,0),U,3)=144 Q 1
 Q 0
PN(Y) ;EP
 I $G(Y)="" Q 0
 I '$D(^AUTTIMM(Y,0)) Q 0
 ;I $P(^AUTTIMM(Y,0),U,7)=1 Q 0
 N Z
 S Z=$P(^AUTTIMM(Y,0),U,3)
 I Z=33 Q 1
 I Z=100 Q 1
 I Z=109 Q 1
 Q 0
TD(Y) ;EP
 I $G(Y)="" Q 0
 I '$D(^AUTTIMM(Y,0)) Q 0
 ;I $P(^AUTTIMM(Y,0),U,7)=1 Q 0
 N Z
 S Z=$P(^AUTTIMM(Y,0),U,3)
 I Z=1 Q 1
 I Z=9 Q 1
 I Z=20 Q 1
 I Z=22 Q 1
 I Z=28 Q 1
 I Z=35 Q 1
 I Z=50 Q 1
 I Z=106 Q 1
 I Z=107 Q 1
 I Z=110 Q 1
 I Z=113 Q 1
 I Z=115 Q 1
 I Z=120 Q 1
 I Z=130 Q 1
 I Z=132 Q 1
 I Z=138 Q 1
 I Z=139 Q 1
 I Z=142 Q 1
 Q 0
REF ;EP
 K APCDX,APCDTF,APCDTERR,APCDTOLD,APCDTID,APCDTIEN,APCDRDN,APCDTREA
 D ^XBFMK K DIADD,DLAYGO
 S DIR(0)="9000022,.03",DIR("A")="Enter Date of Refusals/Declined Service" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D EOJ Q
 S APCDDRN=Y
 S DIC="^AUTTREFT(",DIC(0)="AEMQ",DIC("A")="Enter Service Type: " D ^DIC K DIC
 I Y=-1 W !,"exiting......." Q
 S APCDX=+Y
VALUE ;EP - called from input template
 S APCDTF=$P(^AUTTREFT(APCDX,0),U,2)
 I 'APCDTF S APCDTERR=1 D EOJ Q
 S DIC("B")=$S($D(APCDTOLD):APCDTOLD,1:""),DIC("A")="Enter the "_$P(^DIC(APCDTF,0),U)_" value: ",DIC=APCDTF,DIC(0)="AEMQ" D ^DIC K DIC
 I Y=-1 W !!,"Invalid entry.  Try again." G REF
 S APCDTIEN=+Y,APCDTID=$$VAL^XBDIQ1(APCDTF,APCDTIEN,$P(^AUTTREFT(APCDX,0),U,3))
 S DIR(0)="9000022,.07",DIR("A")="Enter Reason not Done" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) W !,"Reason is Required" G REF
 I Y="" W !,"Reason is Required" G REF
 S APCDTREA=Y
 W !,"creating Refusal entry in PCC..."
 K DIC,DLAYGO,DIADD
 S DIC(0)="L",DIC="^AUPNPREF(",X=APCDX,DIC("DR")=".02////"_APCDDMPT_";.03////"_APCDDRN_";.04////"_APCDTID_";.05////"_APCDTF_";.06////"_APCDTIEN_";.07////"_APCDTREA K DD,D0 D FILE^DICN
 I Y=-1 W !!,"Creating refusal entry failed...." H 2 D ^XBFMK G REF
 D ^XBFMK
 K DIADD,DLAYGO
 W !! S DIR(0)="Y",DIR("A")="Would you like to enter another Service not done",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D EOJ Q
 I 'Y D EOJ Q
 G REF
EOJ ;
 K APCDX,APCDTF,APCDTERR,APCDTOLD,APCDTID,APCDTIEN
 D ^XBFMK
 K Y
 Q
BTL(A) ;EP - called from screen on BARRIERS TO LEARN
 I '$D(^AUTTHF(A,0)) Q 0
 I $P(^AUTTHF(A,0),U,10)'="F" Q 0
 I $P(^AUTTHF(A,0),U,13) Q 0
 NEW B S B=$O(^AUTTHF("B","BARRIERS TO LEARNING",0)) I 'B Q 0
 I $P(^AUTTHF(A,0),U,3)'=B Q 0
 Q 1
 ;
RTL(A) ;EP - called from dd
 I '$D(^AUTTHF(A,0)) Q 0
 I $P(^AUTTHF(A,0),U,10)'="F" Q 0
 I $P(^AUTTHF(A,0),U,13) Q 0
 NEW B S B=$O(^AUTTHF("B","READINESS TO LEARN",0)) I 'B Q 0
 I $P(^AUTTHF(A,0),U,3)'=B Q 0
 Q 1
 ;
LP(A) ;EP - called from screen on LEARNING PREFERENCE
 I '$D(^AUTTHF(A,0)) Q 0
 I $P(^AUTTHF(A,0),U,10)'="F" Q 0
 I $P(^AUTTHF(A,0),U,13) Q 0
 NEW B S B=$O(^AUTTHF("B","LEARNING PREFERENCE",0)) I 'B Q 0
 I $P(^AUTTHF(A,0),U,3)'=B Q 0
 Q 1
BTLHF ;EP
 K APCDVSIT
 I $P($G(^APCDDMUP(APCDDA,11)),U,8)="" Q
 S APCDDMDT=$S($P(APCDREC1,U,17)]"":$P(APCDREC1,U,17),1:DT)
 S APCDMTYP=$P(^APCDDMUP(APCDDA,11),U,8)
 S APCDMCAT=$P(^AUTTHF(APCDMTYP,0),U,3)
 D EVSIT^APCDDMUP ;get event visit
 I '$G(APCDVSIT) S T="Could not Create PCC Visit when attempting to update Barriers to Learning health factor." D ERR^APCDDMUP(T) Q
 S (X,G)=0 F  S X=$O(^AUPNVHF("AD",APCDVSIT,X)) Q:X'=+X!(G)  I $P(^AUPNVHF(X,0),U)=APCDMTYP S G=1
 I G S T="Already have a health factor of "_$P(^AUTTHF($P(^APCDDMUP(APCDDA,11),U,8),0),U)_" on Visit Date "_$$FMTE^XLFDT($P(^AUPNVSIT(APCDVSIT,0),U)) D ERR^APCDDMUP(T) Q
 K APCDALVR
 S APCDALVR("APCDPAT")=APCDDMPT
 S APCDALVR("APCDVSIT")=APCDVSIT
 S APCDALVR("APCDATMP")="[APCDALVR 9000010.23 (ADD)]"
 S APCDALVR("APCDTHF")="`"_APCDMTYP
 D ^APCDALVR
 I $D(APCDALVR("APCDAFLG")) S T="Error creating V Health Factor Entry for Barriers to Learning.  PCC not updated." D ERR^APCDDMUP(T)
 K APCDALVR
 ;update health status
 ;S APCDHSE="",X=0 F  S X=$O(^AUPNHF("AC",APCDDMPT,X)) Q:X'=+X!(APCDHSE)  I $P(^AUTTHF($P(^AUPNHF(X,0),U),0),U,3)=APCDMCAT S APCDHSE=X
 ;I APCDHSE D  Q
 ;.D ^XBFMK K DIADD
 ;.S DA=APCDHSE,DIE="^AUPNHF(",DR=".01///`"_APCDMTYP_";.03////"_DT D ^DIE
 ;.I $D(Y) S T="Error updating Health Status entry for Barriers to Learning." D ERR^APCDDMUP(T)
 ;.D ^XBFMK
 ;D ^XBFMK
 ;S X=APCDMTYP,DIC("DR")=".02////"_APCDDMPT_";.03////"_DT,DIC(0)="L",DIADD=1,DLAYGO=9000019,DIC="^AUPNHF(" D FILE^DICN
 ;I Y=-1 S T="Error adding health status entry for Barriers to Learning." D ERR^APCDDMUP(T)
 D ^XBFMK K DIADD,DLAYGO
 Q
RTLHF ;EP
 K APCDVSIT
 I $P($G(^APCDDMUP(APCDDA,11)),U,9)="" Q
 S APCDDMDT=$S($P(APCDREC1,U,18)]"":$P(APCDREC1,U,18),1:DT)
 S APCDMTYP=$P(^APCDDMUP(APCDDA,11),U,9)
 S APCDMCAT=$P(^AUTTHF(APCDMTYP,0),U,3)
 D EVSIT^APCDDMUP ;get event visit
 I '$G(APCDVSIT) S T="Could not Create PCC Visit when attempting to update READINESS TO LEARN health factor." D ERR^APCDDMUP(T) Q
 S (X,G)=0 F  S X=$O(^AUPNVHF("AD",APCDVSIT,X)) Q:X'=+X!(G)  I $P(^AUPNVHF(X,0),U)=APCDMTYP S G=1
 I G S T="Already have a health factor of "_$P(^AUTTHF($P(^APCDDMUP(APCDDA,11),U,9),0),U)_" on Visit Date "_$$FMTE^XLFDT($P(^AUPNVSIT(APCDVSIT,0),U)) D ERR^APCDDMUP(T) Q
 K APCDALVR
 S APCDALVR("APCDPAT")=APCDDMPT
 S APCDALVR("APCDVSIT")=APCDVSIT
 S APCDALVR("APCDATMP")="[APCDALVR 9000010.23 (ADD)]"
 S APCDALVR("APCDTHF")="`"_APCDMTYP
 D ^APCDALVR
 I $D(APCDALVR("APCDAFLG")) S T="Error creating V Health Factor Entry for READINESS TO LEARN.  PCC not updated." D ERR^APCDDMUP(T)
 K APCDALVR
 ;S APCDHSE="",X=0 F  S X=$O(^AUPNHF("AC",APCDDMPT,X)) Q:X'=+X!(APCDHSE)  I $P(^AUTTHF($P(^AUPNHF(X,0),U),0),U,3)=APCDMCAT S APCDHSE=X
 ;I APCDHSE D  Q
 ;.D ^XBFMK K DIADD
 ;.S DA=APCDHSE,DIE="^AUPNHF(",DR=".01///`"_APCDMTYP_";.03////"_DT D ^DIE
 ;.I $D(Y) S T="Error updating Health Status entry for READINESS TO LEARN." D ERR^APCDDMUP(T)
 ;.D ^XBFMK
 ;D ^XBFMK
 ;S X=APCDMTYP,DIC("DR")=".02////"_APCDDMPT_";.03////"_DT,DIC(0)="L",DIADD=1,DLAYGO=9000019,DIC="^AUPNHF(" D FILE^DICN
 ;I Y=-1 S T="Error adding health status entry for READINESS TO LEARN." D ERR^APCDDMUP(T)
 D ^XBFMK K DIADD,DLAYGO
 Q
 ;
LPHF ;EP
 K APCDVSIT
 I $P($G(^APCDDMUP(APCDDA,11)),U,10)="" Q
 S APCDDMDT=$S($P(APCDREC1,U,19)]"":$P(APCDREC1,U,19),1:DT)
 S APCDMTYP=$P(^APCDDMUP(APCDDA,11),U,10)
 S APCDMCAT=$P(^AUTTHF(APCDMTYP,0),U,3)
 D EVSIT^APCDDMUP ;get event visit
 I '$G(APCDVSIT) S T="Could not Create PCC Visit when attempting to update LEARNING PREFERENCE health factor." D ERR^APCDDMUP(T) Q
 S (X,G)=0 F  S X=$O(^AUPNVHF("AD",APCDVSIT,X)) Q:X'=+X!(G)  I $P(^AUPNVHF(X,0),U)=APCDMTYP S G=1
 I G S T="Already have a health factor of "_$P(^AUTTHF($P(^APCDDMUP(APCDDA,11),U,10),0),U)_" on Visit Date "_$$FMTE^XLFDT($P(^AUPNVSIT(APCDVSIT,0),U)) D ERR^APCDDMUP(T) Q
 K APCDALVR
 S APCDALVR("APCDPAT")=APCDDMPT
 S APCDALVR("APCDVSIT")=APCDVSIT
 S APCDALVR("APCDATMP")="[APCDALVR 9000010.23 (ADD)]"
 S APCDALVR("APCDTHF")="`"_APCDMTYP
 D ^APCDALVR
 I $D(APCDALVR("APCDAFLG")) S T="Error creating V Health Factor Entry for LEARNING PREFERENCE.  PCC not updated." D ERR^APCDDMUP(T)
 K APCDALVR
 ;S APCDHSE="",X=0 F  S X=$O(^AUPNHF("AC",APCDDMPT,X)) Q:X'=+X!(APCDHSE)  I $P(^AUTTHF($P(^AUPNHF(X,0),U),0),U,3)=APCDMCAT S APCDHSE=X
 ;I APCDHSE D  Q
 ;.D ^XBFMK K DIADD
 ;.S DA=APCDHSE,DIE="^AUPNHF(",DR=".01///`"_APCDMTYP_";.03////"_DT D ^DIE
 ;.I $D(Y) S T="Error updating Health Status entry for LEARNING PREFERENCE." D ERR^APCDDMUP(T)
 ;.D ^XBFMK
 ;D ^XBFMK
 ;S X=APCDMTYP,DIC("DR")=".02////"_APCDDMPT_";.03////"_DT,DIC(0)="L",DIADD=1,DLAYGO=9000019,DIC="^AUPNHF(" D FILE^DICN
 ;I Y=-1 S T="Error adding health status entry for LEARNING PREFERENCE." D ERR^APCDDMUP(T)
 D ^XBFMK K DIADD,DLAYGO
 Q
 ;
