GMRAPEE0 ;HIRMFO/YMP,RM-ENTERRED IN ERROR CHECK ;01-Feb-2011 09:49;DU
 ;;4.0;Adverse Reaction Tracking;**2,1002**;Mar 29, 1996;Build 32
 ;IHS/MSC/MGH Inactivate an entry
EN1 ; ENTRY TO SET GMRAERR IF THIS ALLERGY HAS BEEN ENTERED IN ERROR
 S GMRAERR=0
 K GMRAHEAD S GMRAPRNT=0 D EN1^GMRADSP2
 S:GMRAOUT GMRAOUT=GMRAOUT-1 Q:GMRAOUT
 I $P(^GMR(120.8,GMRAPA,0),U,16),$P(^(0),U,18)'="",'$D(^XUSEC("GMRA-ALLERGY VERIFY",DUZ)) Q
YNEE K GMRAEIE W !,"Is the reaction information correct" S %=1 D YN^DICN I '% W !?4,$C(7),"ANSWER NO IF THIS ALLERGY IS INCORRECT AND NEEDS TO BE MARKED",!?4,"AS ENTERED IN ERROR, ELSE ANSWER YES." G YNEE
 I %=-1 S GMRAOUT=1 K GMRAPRCT Q
 I %=2 D  I $G(GMRAIN)=1 G YNEE
 .K DIR S DIR(0)="Y",DIR("A")="Mark this reaction as 'Entered-in-Error'"
 .D ^DIR K DIR I $D(DIRUT)!(Y=0) S GMRAEIE=1
 .I Y=1 D  Q
 ..S GMRAERR=1,DIE="^GMR(120.8,",DA=GMRAPA,DR="22///1;23///NOW;24////"_DUZ D ^DIE
 ..D SITE^GMRAUTL S GMRASITE(0)=$G(^GMRD(120.84,GMRASITE,0))
 ..I $P(GMRASITE(0),U,11) S GMRAVCM="E" D ENDING^GMRAPEM1
 ..D EN1^GMRAPET0($P(^GMR(120.8,GMRAPA,0),U),GMRAPA,"E",.GMRAOUT)
 ..D EN1^GMRAEAB
 ..D  ; Execute the event point for this reaction
 ...Q:'$D(GMRAPA)  S GMRAPA(0)=$G(^GMR(120.8,GMRAPA,0)) Q:GMRAPA(0)=""
 ...N OROLD,DFN S DFN=$P(GMRAPA(0),U)
 ...D INP^VADPT S X=$O(^ORD(101,"B","GMRA ENTERED IN ERROR",0))_";ORD(101," D EN^XQOR:X K VAIN,X
 ...Q
 .;MSC/IHS/MGH INACTIVATE AN ENTRY
 .K DIR S DIR(0)="Y",DIR("A")="Inactivate this reaction"
 .D ^DIR K DIR I $D(DIRUT)!(Y=0)
 .I Y=1 D  Q
 ..N WHY,AIEN,FDA,IEN,ERR,FNUM
 ..S WHY=$$REA
 ..S FNUM=120.899999912
 ..S AIEN="+1,"_GMRAPA_","
 ..S FDA(120.899999912,AIEN,1)=WHY
 ..S FDA(120.899999912,AIEN,.01)=$$NOW^XLFDT
 ..S FDA(120.899999912,AIEN,2)=DUZ
 ..D UPDATE^DIE(,"FDA","IEN","ERR")
 ..I $D(ERR("DIERR")) W !,"Unable to inactivate allergy"
 ..S GMRAOUT=1
 ..K FDA,IEN,ERR
 .; This patch (#2) will loop through the patient reactions
 .; and ensure that the patient's NKA information is marked
 .; based on the existence of patient reactions.
 .I $$NKASCR^GMRANKA($P(^GMR(120.8,GMRAPA,0),U)) D  ; true NKA
 ..S DIK="^GMR(120.86,",DA=$P(^GMR(120.8,GMRAPA,0),U)
 ..D ^DIK ; purge the NKA node from 120.86
 ..Q
 .Q
 K %,DA,DIE,DR,GMRASITE
 Q
REA() ;GET THE REASON
 N DA,DIC,DR,Y
 S DIC=90460.05
 S DIC(0)="AEMQ"
 S DIC("S")="I $P(^(0),U,2)=""I"""
 S DIC("A")="Select reason: "
 D ^DIC  I $D(DIRUT) K DIRUT Q -1
 Q +Y
