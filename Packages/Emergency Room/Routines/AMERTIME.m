AMERTIME ; IHS/OIT/SCR - CHECKS TIMES FOR PROPER RELATIONSHIP 
 ;;3.0;ER VISIT SYSTEM;**2**;FEB 23, 2009
 ;
CHKTIME(AMERARV,AMERAIEN) ; EP from AMEREDIT
 ; AMERARV- ARIVAL TIME IN FILEMAN FORMAT
 ; AMERAIEN : AUDIT IEN
 ;
 ; INJURY TIME < ADMIT TIME < TRIAGE AND PROVIDER TIME < DISCHARGE TIME
 ; ARVTIME has been modified so 
 ; 1. check TRIAGE time - prompt for and delete if before ARVTIME
 ; 2. check PROVIDER time - prompt for and delte if before ARVTIME
 ; 3. check DEPARTURE time - prompt for and delete if before ARVTIME,TRIAGE OR PROVIDER time
 N AMERPRVT,AMERTRIT,AMERDEPT,AMERDIFF,DR,DIE,DIR
 N AMEROLD,AMERNEW,AMEREDTS,AMERSTRG,AMERQUIT,AMERCSLT,AMERDOC,AMERCNO,AMERADMT,AMERCHKT
 S (AMEROLD,AMERNEW,AMEREDTS,AMERSTRG,DR)=""
 S AMERQUIT=0
 S (AMEROLD,AMERTRIT)=$P(^AMERVSIT(AMERDA,12),U,2)
 ; I ARRIVE TIME compared to TRIAGE TIME is after go onto loop, else it's ok
 I $$TCOMP(AMERARV,AMERTRIT,1)=1 D
 .S Y=AMERTRIT X ^DD("DD")
 .S AMERTRIT=Y  ; TRIAGE NURSE TIME IN EXTERNAL FORMAT FOR DIC("B")
 .S DR="12.2////@"
 .S DIR(0)="D^::ER",DIR("A")="*What time did the patient see the triage nurse"
 .S DIR("?")="Enter an exact date and time in Fileman format (e.g. T@1PM)"
 .S DIR("B")=AMERTRIT
 .F  Q:Y="^"!(Y="")  D
 ..D ^DIR
 ..I X="^" S Y="^"
 ..I $D(DUOUT)!$D(DTOUT) K DIR,DUOUT,DTOUT,Y S Y="^" Q
 ..I $$TCK^AMER2A(AMERARV,Y,1,"admission")=0  D
 ...S AMERNEW=Y
 ...I AMERNEW=AMEROLD S Y="" Q
 ...S AMEROLD=$$EDDISPL^AMEREDAU(AMEROLD,"D")
 ...S AMERNEW=$$EDDISPL^AMEREDAU(AMERNEW,"D")
 ...S AMERSTRG=$$EDAUDIT^AMEREDAU("12.2",AMEROLD,AMERNEW,"TRG NURSE TIME")
 ...I AMERSTRG="^" S AMERQUIT=1 Q
 ...S AMEREDTS=$S(AMEREDTS="":AMERSTRG,1:AMEREDTS_"^"_AMERSTRG)
 ...S DR="12.2////"_Y
 ...S AMERDIFF=$$DT^AMERSAV1(Y,AMERARV,"M")
 ...S DR=DR_";12.4////"_AMERDIFF
 ...S Y=""
 ...Q
 ..Q
 .I Y="^" S AMERQUIT=1
 .I (DR'=""&(AMEROLD'="")) D
 ..I DR="12.2////@" D
 ...;IHS/OIT/SCR 090309 patch 2
 ...;D EN^DDIOL("Deleting TRIAGE NURSE TIME can't be before date/time of admission","","!")
 ...D EN^DDIOL("Deleting TRIAGE NURSE TIME which is before new date/time of admission","","!")
 ...D EN^DDIOL("Please update TRIATE NURSE triage time in TRIAGE edit section","","!!")
 ...S AMEROLD=$$EDDISPL^AMEREDAU(AMEROLD,"D")
 ...S AMERSTRG=$$EDAUDIT^AMEREDAU("12.2",AMEROLD,"","TRG NURSE TIME")
 ...S AMEREDTS=$S(AMEREDTS="":AMERSTRG,1:AMEREDTS_"^"_AMERSTRG)
 ...Q
 ..Q:AMERQUIT
 ..D DIE(AMERDA,DR)
 ..D MULTAUDT^AMEREDAU(AMEREDTS,AMERAIEN)
 ..Q
 ..Q
 .K DIR
 .S DR=""
 .Q
 S (AMEROLD,AMERPRVT)=$P(^AMERVSIT(AMERDA,12),U,1)
 ; If ARRIVE TIME IS after PROV TIME then do
 I $$TCOMP(AMERARV,AMERPRVT,1)=1 D
 .S Y=AMERPRVT X ^DD("DD")
 .S AMERPRVT=Y   ; ADMITTING PROV TIME IN EXTERNAL FORMAT
 .S DR="12.1////@"
 .S DIR(0)="DO^::ER",DIR("A")="*What time did the patient see the admitting provider"
 .S DIR("?")="Enter an exact date and time in Fileman format (e.g. T@1PM)"
 .S DIR("B")=AMERPRVT
 .F  Q:Y="^"!(Y="")  D:'AMERQUIT
 ..D ^DIR
 ..I X="^" S Y="^"
 ..I $D(DUOUT)!$D(DTOUT) K DIR,DUOUT,DTOUT S Y="^" Q
 ..I $$TCK^AMER2A(AMERARV,Y,1,"admission")=0  D
 ...S AMERNEW=Y
 ...I AMERNEW=AMEROLD D EN^DDIOL("The ADMITTING PROVIDER TIME must be AFTER time of addmission","","!!") Q
 ...S AMERNEW=$$EDDISPL^AMEREDAU(AMERNEW,"D")  ; Tranforms fileman date into user friendly date
 ...S AMEROLD=$$EDDISPL^AMEREDAU(AMEROLD,"D")
 ...S AMERSTRG=$$EDAUDIT^AMEREDAU("12.1",AMEROLD,AMERNEW,"ADMITTING PROVIDER TIME")
 ...I AMERSTRG="^" S AMERQUIT=1 Q
 ...S AMEREDTS=$S(AMEREDTS="":AMERSTRG,1:AMEREDTS_"^"_AMERSTRG)
 ...S DR="12.1////"_Y
 ...S AMERDIFF=$$DT^AMERSAV1(Y,AMERARV,"M")
 ...S DR=DR_";12.3////"_AMERDIFF
 ...S Y=""
 ...Q
 ..Q
 .I Y="^" S AMERQUIT=1
 .I (DR'=""&(AMEROLD'="")) D
 ..I DR="12.1////@" D
 ...D EN^DDIOL("Deleting ADMITTING PROVIDER TIME - can't be before date/time of admission","","!!")
 ...S AMEROLD=$$EDDISPL^AMEREDAU(AMEROLD,"D")
 ...S AMERSTRG=$$EDAUDIT^AMEREDAU("12.1",AMEROLD,"","ADMITTING PROVIDER TIME")
 ...S AMEREDTS=$S(AMEREDTS="":AMERSTRG,1:AMEREDTS_"^"_AMERSTRG)
 ...Q
 ..D DIE(AMERDA,DR)
 ..D MULTAUDT^AMEREDAU(AMEREDTS,AMERAIEN)
 ..Q
 .Q
 .S DR=""
 .Q
 S (AMEROLD,Y)=$P(^AMERVSIT(AMERDA,6),U,2)
 ; If ARRIVE TIME compared to DEPART TIME is AFTER then do
 I $$TCOMP(AMERARV,AMEROLD,1)=1 D
 .S Y=AMEROLD X ^DD("DD")
 .S AMERDEPT=Y  ; DEPART TIME IN EXTERNAL FORMAT
 .S DR="6.2////@"
 .S DIR(0)="DO^::ER",DIR("A")="*What time did the patient depart from the ER"
 .S DIR("?")="Enter an exact date and time in Fileman format (e.g. T@1PM)"
 .S DIR("B")=AMERDEPT
 .F  Q:Y="^"!(Y="")  D:'AMERQUIT
 ..D ^DIR
 ..I X="^" S Y="^" Q
 ..I $D(DUOUT)!$D(DTOUT) K DIR,DUOUT,DTOUT S Y="^" Q
 ..; TVAL returns 0 if user says "yes they are sure they want this time..."
 ..I $$TVAL^AMER2A($P($G(^AMERVSIT(AMERDA,0)),U,1),AMERNEW,6) Q
 ..I $$TCK^AMER2A(AMERARV,Y,1,"admission")=0 D
 ...S AMERNEW=Y
 ...I AMERNEW=AMEROLD D EN^DDIOL("The ADMITTING PROVIDER TIME must be AFTER time of addmission","","!!") Q
 ...S AMERNEW=$$EDDISPL^AMEREDAU(AMERNEW,"D")  ; Tranforms fileman date into user friendly date
 ...S AMEROLD=$$EDDISPL^AMEREDAU(AMEROLD,"D")
 ...S AMERSTRG=$$EDAUDIT^AMEREDAU("6.2",AMEROLD,AMERNEW,"DEPARTURE TIME")
 ...I AMERSTRG="^" S AMERQUIT=1 Q
 ...S AMEREDTS=$S(AMEREDTS="":AMERSTRG,1:AMEREDTS_"^"_AMERSTRG)
 ...S DR="6.2////"_Y
 ...S AMERDIFF=$$DT^AMERSAV1(Y,AMERARV,"M")
 ...S DR=DR_";12.5////"_AMERDIFF
 ...S Y=""
 ...Q
 ..Q
 .I Y="^" S AMERQUIT=1
 .I (DR'=""&(AMEROLD'="")) D
 ..I DR="6.2////@" D
 ...D EN^DDIOL("Deleting DEPARTURE TIME - can't be before date/time of admission","","!!")
 ...S AMEROLD=$$EDDISPL^AMEREDAU(AMEROLD,"D")
 ...S AMERSTRG=$$EDAUDIT^AMEREDAU("6.2",AMEROLD,"","DEPARTURE TIME")
 ...S AMEREDTS=$S(AMEREDTS="":AMERSTRG,1:AMEREDTS_"^"_AMERSTRG)
 ...Q
 ..D DIE(AMERDA,DR)
 ..;IHS/OIT/SCR 12/15/08 - update ER VISIT FILE with DATE LAST UPDATED (NOW)
 ..D TIMESTMP^AMERSAV1(AMERDA)
 ..D MULTAUDT^AMEREDAU(AMEREDTS,AMERAIEN)
 ..Q
 .S DR=""
 .Q
 S (AMEROLD,INJTIME)=$P($G(^AMERVSIT(AMERDA,3)),U,4)
 ; If ARRIVE TIME is after INJ TIME then do
 I $$TCOMP(AMERARV,AMEROLD,1)=0 D
 .Q:AMEROLD=""
 .S Y=INJTIME X ^DD("DD")   ; INJURED TIME IN FILEMAN FORMAT
 .S INJTIME=Y
 .S DR="3.4////@"
 .S DIR(0)="DO^::ER",DIR("A")="*Please enter date and time of injury"
 .S DIR("?")="Enter an exact date and time in Fileman format (e.g. T@1PM)"
 .S DIR("B")=INJTIME
 .F  Q:Y="^"!(Y="")  D:'AMERQUIT
 ..D ^DIR
 ..I X="^" S Y="^" Q
 ..I $D(DUOUT)!$D(DTOUT) K DIR,DUOUT,DTOUT S Y="^" Q
 ..S AMERCHKT=$$TCK^AMER2A(Y,AMERARV,0,"admission")
 ..I AMERCHKT=0 D
 ...S AMERNEW=Y
 ...I AMERNEW=AMEROLD Q
 ...S AMERSTRG=$$EDAUDIT^AMEREDAU("3.4",AMEROLD,AMERNEW,"TIME OF INJURY")
 ...I AMERSTRG="^" S AMERQUIT=1 Q
 ...S AMEREDTS=$S(AMEREDTS="":AMERSTRG,1:AMEREDTS_"^"_AMERSTRG)
 ...S:Y="" DR="3.4////@;8.1////@",Y="^"
 ...I AMERCHKT=1 D
 ....S DR="3.4////"_Y
 ....S AMERDIFF=$$DT^AMERSAV1(AMERARV,Y,"M")
 ....S DR=DR_";8.1////"_AMERDIFF
 ....S Y="^"
 ....Q
 ...Q
 ..Q
 .I Y="^" S AMERQUIT=1
 .I DR'="" D
 ..I DR="3.4////@" D
 ...D EN^DDIOL("Deleting TIME OF INJURY - can't be after date/time of admission","","!!")
 ...S AMEROLD=$$EDDISPL^AMEREDAU(AMEROLD,"D")
 ...S AMERSTRG=$$EDAUDIT^AMEREDAU("3.4",AMEROLD,"","TIME OF INJURY")
 ...S AMEREDTS=$S(AMEREDTS="":AMERSTRG,1:AMEREDTS_"^"_AMERSTRG)
 ...Q
 ..D DIE(AMERDA,DR) K DIE
 ..;IHS/OIT/SCR 12/15/08 - update ER VISIT FILE with DATE LAST UPDATED (NOW)
 ..D TIMESTMP^AMERSAV1(AMERDA)
 ..S DR=""
 ..Q
 .Q
 ; Finally, display ER Consultants and ask if user wants to edit times
 I $P($G(^AMERVSIT(AMERDA,19,0)),U,4)'="" D
 .S AMERCSLT=$O(^AMERVSIT(AMERDA,19,"B",0))
 .S AMERDOC=$G(^AMER(2.9,AMERCSLT,0))
 .D EN^DDIOL("The following ER CONSULTANT types and times have been entered","","!")
 .D DSPCONS^AMEREDTE(AMERDA)
 .S DIR(0)="Y",DIR("A")="Do you want to change ER CONSULTANT times",DIR("B")="YES"
 .D ^DIR
 .S AMERQUIT=0
 .I Y=1 D
 ..F  Q:AMERQUIT=1  D
 ...K DIC("B")
 ...S DIC="^AMER(2.9,",DIC(0)="AMEQ",Y=""
 ...S DIC("A")="Edit time for ER CONSULTANT TYPE: "
 ...D ^DIC K DIC
 ...I $D(DUOUT)!($D(DTOUT)!(+Y<0)) S AMERQUIT=1 Q
 ...S AMERCSLT=$P($G(Y),U,1)
 ...I AMERCSLT>0 D
 ....S AMEREDNO=AMEREDNO+1
 ....S AMERCNO=0,AMEROLD=AMERCSLT
 ....F  S AMERCNO=$O(^AMERVSIT(AMERDA,19,AMERCNO)) Q:AMERCNO="B"!(AMERCNO="")  I $P($G(^AMERVSIT(AMERDA,19,AMERCNO,0)),U,1)=AMERCSLT D
 .....S Y=$P($G(^AMERVSIT(AMERDA,19,AMERCNO,0)),U,2)
 .....S AMERTIME=Y
 .....S DIR(0)="D^::ER",DIR("A")="Date and time of ER CONSULTANT"
 .....S AMEROLD=AMERTIME
 .....I AMERTIME'="" S Y=AMERTIME D DD^%DT S DIR("B")=Y
 .....S DIR("?")="Enter date and time in the usual Fileman format (e.g. 1/1/2000@1PM)"
 .....D ^DIR K DIR
 .....I $D(DUOUT)!$D(DTOUT) S AMERQUIT=1 Q
 .....S (AMERTIME,AMERNEW)=Y
 .....I AMEROLD'=AMERNEW D
 ......S AMERSTRG=$$EDAUDIT^AMEREDAU("19-02"_"."_AMEREDNO,$$EDDISPL^AMEREDAU(AMEROLD,"D"),$$EDDISPL^AMEREDAU(AMERNEW,"D"),"ER CONSULTANT TIME")
 ......I AMERSTRG="^" S AMERQUIT=1 Q
 ......S AMEREDTS=$S(AMEREDTS="":AMERSTRG,1:AMEREDTS_"^"_AMERSTRG)
 ......S DR=$S(DR'="":DR_";",1:""),DR=DR_".02////"_AMERNEW
 ......S DIE="^AMERVSIT(DA(1),19,",DA(1)=AMERDA,DA=AMERCNO
 ......D MULTDIE^AMEREDIT(DIE,DA,DA(1),DR)
 ......;IHS/OIT/SCR 12/15/08 - update ER VISIT FILE with DATE LAST UPDATED (NOW)
 ......D TIMESTMP^AMERSAV1(AMERDA)
 ......D MULTAUDT^AMEREDAU(AMEREDTS,AMERAIEN)
 ......S (DR,AMEREDTS)=""
 ......Q
 .....Q
 ....Q
 ...Q
 ..Q
 .Q
 K DIE,DR,DIR,Y,AMEROLD,AMERNEW,AMEREDTS,AMERSTRG
 Q
TCOMP(AMERTIM1,AMERTIM2,AMERAFTR) ; EP FROM CHKVSIT^AMEREDPC AND AMERREPT
 ;  TIME COMPARE ROUTINE
 ;  INPUT
 ;     AMERTIM1=DATE/TIME IN FILEMAN FORMAT
 ;     AMERTIM2=COMPARISON DATE/TIME IN FILEMAN FORMAT
 ;     AMERAFTR=1:AMERTIM1 IS AFTER AMERTIM2
 ;     AMERAFTR=0:AMERTIM1 IS BEFORE AMERTIM2
 ; RETURNS 1 IF COMPARE IS TRUE, 0 OTHERWISE
 N %,Y,X1,X2,X
 I $G(AMERTIM1)="" Q ""
 I $G(AMERTIM2)="" Q 1
 I AMERAFTR,AMERTIM1<AMERTIM2 Q 0
 I 'AMERAFTR,AMERTIM2<AMERTIM1 Q 0
 Q 1
DIE(DA,DR) ; GIVEN AN ENTRY NUMBER AND A DR STRING, EDIT THE ER VISIT FILE
 N X,Y,%
 N D,D0,DI,DIC,DICR,DIE,DIG,DIH,DIV,DIU,DIW,DQ
 S DIE="^AMERVSIT("
DIE1 L +^AMERVSIT:3 E  Q
 D ^DIE
 L -^AMERVSIT
 Q
COMPUTE(AMERDA) ; EP from AMEREDIT
 ; COMPUTED FIELDS
 ; C0 ; REVOLVING DOOR
 N X,Y,Z,%,%H,%T,%Y,DR
 S Z=$P($G(^AMERVSIT(AMERDA,0)),U,1),DR=""
 ; If there is an injury time saved, compute this field
 S X=$P($G(^AMERVSIT(AMERDA,3)),U,4)
 I X'="" S %=$$DT^AMERSAV1(Z,X,"M"),DR=$S(DR'="":DR_";",1:""),DR=DR_"8.1////"_%
 E  S DR=$S(DR'="":DR_";",1:""),DR=DR_"8.1////@"
 ; C2 ; DOC WAIT
 S X=$P($G(^AMERVSIT(AMERDA,12)),U,1)
 I X'="" S %=$$DT^AMERSAV1(X,Z,"M"),DR=$S(DR'="":DR_";",1:""),DR=DR_"12.3////"_%
 E  S DR=$S(DR'="":DR_";",1:""),DR=DR_"12.3////@"
 ; C3 ; TRIAGE WAIT
 S X=$P($G(^AMERVSIT(AMERDA,12)),U,2)
 I X'="" S %=$$DT^AMERSAV1(X,Z,"M"),DR=$S(DR'="":DR_";",1:""),DR=DR_"12.4////"_%
 E  S DR=$S(DR'="":DR_";",1:""),DR=DR_"12.4////@"
 ; C4 ; VISIT DURATION
 S X=$P($G(^AMERVSIT(AMERDA,6)),U,2)
 I X'="" S %=$$DT^AMERSAV1(X,Z,"M"),DR=$S(DR'="":DR_";",1:""),DR=DR_"12.5////"_%
 E  S DR=$S(DR'="":DR_";",1:""),DR=DR_"12.5////@"
 D DIE(AMERDA,DR)
 ;IHS/OIT/SCR 12/15/08 - update ER VISIT FILE with DATE LAST UPDATED (NOW)
 D TIMESTMP^AMERSAV1(AMERDA)
 K A,B,C,E,X,%,%H,Z,DR
 Q
