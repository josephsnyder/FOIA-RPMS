BSDAVAIL ; IHS/ANMC/LJF - CANCEL/RESTORE CLINIC AVAIL ;
 ;;5.3;PIMS;**1011**;APR 26, 2002
 ;
 ;cmi/flag/maw 10/17/2009 PATCH 1011 RQMT 83 changed code in C to call BSDC for multiple days
 ;
ASK ;
 NEW DIR
 S DIR(0)="SO^C:CANCEL CLINIC AVAILABILITY;R:RESTORE CLINIC AVAILABILITY"
 S DIR("A")="Select Action" D ^DIR Q:$D(DIRUT)  K DIR Q:Y=-1  D @Y G ASK
 ;
C ; call cancel
 NEW BSDNO S BSDNO=1  ;prevents printing of appt letter on rebooks
 ;D ^SDC D SDC^SDKILL,KILL^AUPNPAT Q  ;cmi/maw 10/17/2009 PATCH 1011 orig line
 D ^BSDC D SDC^SDKILL,KILL^AUPNPAT Q  ;cmi/maw 10/17/2009 PATCH 1011 RQMT83
 ;
R ; call restore
 D ^SDUNC D SDUNC^SDKILL,KILL^AUPNPAT Q