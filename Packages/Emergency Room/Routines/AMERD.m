AMERD ; IHS/ANMC/GIS - PRIMARY ROUTINE FOR ER DISCHARGE ; 
 ;;3.0;ER VISIT SYSTEM;**4,5,6,8**;MAR 03, 2009;Build 23
 ;
CHECK ;
 I '$D(^AMERADM("B")) W !!!,*7,"Sorry...I have no record of any current admissions to the ER.",!,"Session cancelled!",!!! H 2 Q
 D EXIT1^AMER K ^TMP("AMER",$J,1),^(2),^(3),AMERQUIT,AMER
 ;
 ;Set up discharge flag
 NEW AMERDSC
 S AMERDSC=1
 ;
VAR ; ENTRY POINT FOR BATCH MODE
 S %="",$P(%,"~",80)="",AMERLINE=%,AMERSTRT=1,AMERFIN=27,AMERQSEQ="" K %
 S IOP=0 D ^%ZIS
 I $D(AMERBCH) S AMERSTRT=20,%=+^TMP("AMER",$J,1,1),AMERDFN=%,^TMP("AMER",$J,2,1)=% G RUN
 W @IOF
EDIT ; ENTRY POINT FROM AMER4 AND AMER
 S AMERQSEQ=""
RUN F AMERRUN=AMERSTRT:1 Q:$D(AMERBFLG)  Q:AMERRUN>AMERFIN  Q:$D(AMERQUIT)  D  Q:$D(AMERQUIT)
 . I '$D(^AMER(2.3,"B",("QD"_AMERRUN))) Q
 . ;
 . S AMERQNO=AMERRUN W $$LINE^AMER("QD"_AMERRUN)
 . D OPT^AMER("QD"_AMERRUN)
 . D TRG
 . D @("QD"_AMERRUN_"^AMER"_$S(AMERRUN<10:2,AMERRUN<20:3,AMERRUN<30:"2A",AMERRUN<50:"2B",1:"2C"))
 . ;
 . D SET
 . ;
 . ;AMER*3.0*5;Log activity
 . D
 .. NEW ERIEN,AFIELD,ADMFLD
 .. S AFIELD=""
 .. S ERIEN=$O(^AMER(2.3,"B","QD"_AMERRUN,"")) Q:ERIEN=""
 .. S ADMFLD=$$GET1^DIQ(9009082.3,ERIEN,.04,"I")
 .. I ADMFLD]"" S AFIELD=$P($G(^DD(9009081,ADMFLD,0)),U)
 .. I AFIELD="" D
 ... S ADMFLD=$$GET1^DIQ(9009082.3,ERIEN,.05,"I")
 ... I ADMFLD]"" S AFIELD=$P($G(^DD(9009080,ADMFLD,0)),U)
 .. Q:AFIELD=""
 .. ;
 .. ;Now log the activity
 .. NEW AUDDFN
 .. S AUDDFN=$G(DFN) S:AUDDFN="" AUDDFN=$G(AUPNPAT)
 .. D LOG^AMERBUSA("P","E","AMER","AMER: Entered Patient ER visit information - "_AFIELD_" ("_AUDDFN_")",AUDDFN)
 .. KILL AUDDFN
 . ;
 . I $D(AMEREFLG),AMERRUN=9 S AMERRUN=98
 . K DIR,DIC
 . Q
 ;
 I $D(AMERTFLG)!($D(AMEREFLG)) Q
 I $D(AMERBFLG) Q
 I $D(AMERQUIT) G EXIT
FIX D ^AMER4 I $D(AMERQUIT) K AMEREFLG G EXIT
ELOOP I $D(AMEREFLG) G FIX
 I '$D(AMERBCH),$P($G(^AMER(3,+$G(^TMP("AMER",$J,2,14)),0)),U)="HOME" D PRINT I $D(AMERQUIT) G EXIT
 I $D(AMERTRG) D TRGSET D  G EXIT
 . ;
 . ;AMER*3.0*8;Update V EMERGENCY VISIT RECORD entry
 . D VER^AMERVER(DFN,"")
 ;
 D ^AMERSAV I $D(AMERQUIT) G EXIT
 ;
 ;AMER*3*5;Added auditing call
 NEW AMERVIS
 S AMERVIS=$$GET1^DIQ(9009080,AMERDA_",",.03,"I")
 D LOG^AMERBUSA("P","E","AMERD","AMER: Patient Discharged from the ER ("_AMERVIS_")",DFN)
 ;
 ;AMER*3.0*8;Update V EMERGENCY VISIT RECORD entry
 D VER^AMERVER(DFN,AMERVIS)
 ;
 ;AMER*3.0*4
 ;Supply information to BEDD application if loaded
 ;
 ;First see if RPMS patch has been loaded
 I $$VERSION^XPDUTL("BEDD") D
 . ;
 . ;Check if XML portion has been loaded
 . N X
 . S X="BEDDUTW" X ^%ZOSF("TEST") Q:'$T
 . ;
 . ;Call routine to pass info to BEDD
 . I $G(AMERDA)]"" D DISCH^BEDDUTW(AMERDA)
 . ;
 . ;AMER*3*5;Added auditing call
 . D LOG^AMERBUSA("P","E","AMERD","AMER: Patient Discharged from the ED Dashboard ("_AMERVIS_")",DFN)
 ;
 I $D(AMERBCH) Q
EXIT D EXIT^AMER
 Q
 ;
SET K AMERMAND I $D(AMERQUIT) Q
 I AMERRUN=98 Q
 ;IHS/OIT/SCR 10/15/08 try to catch a REGISTERED IN ERROR visit and stop processing
 I ((AMERRUN=95)&$D(AMERBCH)) W !,"Session terminated..." S AMERQUIT="" Q
 I ((AMERRUN=95)&'$D(AMRBCH)) D  Q
 .S AMERPCC=$$EXISTING^AMERPCC(AMERDFN)
 .I AMERPCC>0 D
 ..S APCDVDLT=AMERPCC
 ..D EN^APCDVDLT
 ..K APCDVDLT
 ..W !,"PCC Visit deleted..."
 ..N AMERTIME
 ..S AMERTIME=$G(^TMP("AMER",$J,1,2))
 ..D CANCEL^AMERBSDU(AMERDFN,AMERTIME)
 ..;W !,"Scheduled Visit deleted..." - can't cancel a visit that has been checked in
 ..Q
 .D KILLADM^AMERSAV
 .S AMERQUIT=""
 .S AMERRUN=98
 .S AMERFIN=0  ;IHS/OIT/SCR 10/15/0 A GLOBAL VARIABLE THAT NEEDS TO BE SET TO STOP QUESTIONS
 I X?2."^" W !,*7,"Session terminated..." S AMERQUIT="" Q
 I $E(X)=U S X=U
 I X=U,$D(AMERBCH),AMERQNO=20 S AMERBFLG="" Q  ; BACKUP TO ADMISSION QUESTIONS IN BATCH MODE
 I X=U,$G(AMERQNO)<2 W !,"Session terminated...",*7 S AMERQUIT="" Q
 I Y=""!(Y=-1),'$D(AMEROPT),AMERRUN>1,X'=U D MAND^AMER Q
 K AMEROPT
 S AMERQSEQ=AMERQSEQ_AMERQNO_";"
 I X=U D BACK^AMER Q
 I Y=""!(Y=-1) Q
 Q:AMERQNO=6
 S ^TMP("AMER",$J,2,AMERQNO)=Y
 Q
TRGSET ; SET TRIAGE INFO IN ER ADM FILE
 N AMERPCC
 D ^AMER0
 S AMERTRGS=20
 S DA=AMERDFN,DIE="^AMERADM("
 F  S AMERTRGS=$O(^TMP("AMER",$J,2,AMERTRGS)) Q:AMERTRGS'?1N.N  D
 .S DR=AMERTRGS-3_"////"_$P(^TMP("AMER",$J,2,AMERTRGS),U)
 .D ^DIE
 .Q
 S AMERPCC=$$EXISTING^AMERPCC(AMERDFN)
 I AMERPCC>0 D VPROVTRG^AMERPCC(AMERDFN,AMERPCC)
 Q
TRG ; SET TRIAGE INFO IN TMP FILE
 S AMERTRGS=20
 F  S AMERTRGS=$O(^TMP("AMER",$J,1,AMERTRGS)) Q:AMERTRGS'?1N.N  D
 .S:$G(^TMP("AMER",$J,2,AMERTRGS))="" ^TMP("AMER",$J,2,AMERTRGS)=^TMP("AMER",$J,1,AMERTRGS)
 Q
 ;
PRINT ; PRINT PATIENT INSTRUCTIONS
 S AMERRUN=98
 W !,"Do you want to print patient instructions"
 S %=2 D YN^DICN I %Y?2."^" S DIROUT=""
 D OUT^AMER
 I $D(AMERQUIT) Q
 I "Nn"[$E(%Y) Q
 S DIR(0)="N^1:10:0",DIR("A")="Enter the number of copies you would like to print"
 D ^DIR
 S AMERNUM=Y
 I $D(^TMP("AMER",$J,2,15)) S %=+^(15) I %'=121,%'=86,%'=87 G P1
 W !,"I will print a set of follow up instructions for the patient and provider."
 W !,"You can also print patient education materials...",!
 S ^TMP("AMER",$J,2,26,31)=""
P1 D ^AMER5
 Q
 ;
REV ; ENTRY POINT FOR REVOLVING DOOR CALC
 N N,Y,Z,%,X1,X2
 S Z=0 F Y=0:0 S Y=$O(^AMERVSIT("AC",X,Y)) Q:'Y  Q:Y=DA  S %=+^AMERVSIT(Y,0) I %>Z S Z=%
 I 'Z Q
 S X2=Z,X1=DT,N=.5 D REV1 S $P(^AMERVSIT(DA,5),U,2)=N
 Q
 ;
REV1 N X D ^%DTC
 I X>0 S N=X
 Q
 ;
KREV ; ENTRY POINT TO KILL REVOLVING DOOR
 S $P(^AMERVSIT(DA,5),U,2)=""
 Q
 ;
DNA ; ENTRY POINT FROM AMER DNA MENU
 ; PT LEFT WITHOUT BEING SEEN
 S AMERDNA=""
 D AMERD K AMERDNA
 Q
 ;
DEMO ; ENTRY POINT FOR DEMO MODE
 S AMERDEMO=1
 D AMERD
 K AMERDEMO
 Q
 ;
DXCK(AUPNPAT) ; Entry point to check for valid Dx entry for visit
 ;
 ;Quit if DFN not passed in (used to retrieve visit)
 I $G(AUPNPAT)="" Q "1"
 ;
 NEW AMERDXLT,AMERDCNT
 ;
 ;Make call to get list of V POV entries
 S AMERDCNT=+$$POV^AMERUTIL(AUPNPAT,"",.AMERDXLT)
 ;
 ;If no V POV entries, inform user and quit
 I AMERDCNT=0 D
 . D EN^DDIOL("**No Purpose of Visit (POV) information has been entered for this visit**","","!!")
 . D EN^DDIOL("**Please use EHR/PCC to enter POV information then proceed with the discharge**","","!")
 . H 3
 ;
 Q AMERDCNT
