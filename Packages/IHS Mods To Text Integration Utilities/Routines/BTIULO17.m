BTIULO17 ; IHS/MSC/JS - Problem/Visit Objects ;16-Sep-2013 15:46;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1012**;MAR 20, 2013;Build 45
 ;Obects for visit-related anti-coag data
 Q
 ;
VIDT(DFN,TARGET) ; Anticoag for current visit
 N ARRAY,PRIEN,IEN,VCNT,CNT,EDATE,SIGN,STAT,NARR,VST,X
 I $T(GETVAR^CIAVMEVT)="" S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 S CNT=0
 S VST=$$GETVAR^CIAVMEVT("ENCOUNTER.ID.ALTERNATEVISITID",,"CONTEXT.ENCOUNTER")
 I VST="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 S X="BEHOENCX" X ^%ZOSF("TEST") I $T S VST=+$$VSTR2VIS^BEHOENCX(DFN,VST) I VST<1  S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 K @TARGET
 S IEN="" F  S IEN=$O(^AUPNVACG("AD",VST,IEN)) Q:IEN=""  D
 .Q:$$GET1^DIQ(9000010.51,IEN,1.01)'=""
 .D DATA(IEN)
 I CNT=0 S @TARGET@(1,0)="No Anticoag for this visit"
 Q "~@"_$NA(@TARGET)
 ;
LAST(DFN,TARGET,NUM) ; Last V anti-coag for this patient
 N IEN,FOUND,CNT,CNT2
 I $G(NUM)="" S NUM=1
 S CNT=0,CNT2=1
 I $T(GETVAR^CIAVMEVT)="" S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 K @TARGET
 S IEN=$C(0) F  S IEN=$O(^AUPNVACG("AC",DFN,IEN),-1) Q:IEN=""!(CNT2>NUM)  D
 .Q:$$GET1^DIQ(9000010.51,IEN,1.01)'=""
 .S CNT2=CNT2+1 D DATA(IEN)
 I CNT=0 S @TARGET@(1,0)="No Anti-coag entries"
 Q "~@"_$NA(@TARGET)
DATA(DFN) ;Get the data for the anticoag entry
 N EVDT,WAR,GOAL,MAX,MIN,DUR,START,STOP,COMM,STRING,STRING,COMMENT,END,STRING2
 S STRING2=""
 S EVDT=$$GET1^DIQ(9000010.51,IEN,1201)
 I EVDT="" S EVDT=$$GET1^DIQ(9000010.51,IEN,.03)
 S WAR=$$GET1^DIQ(9000010.51,IEN,.01)
 S GOAL=$$GET1^DIQ(9000010.51,IEN,.04)
 S MIN=$$GET1^DIQ(9000010.51,IEN,.05)
 S MAX=$$GET1^DIQ(9000010.51,IEN,.06)
 S DUR=$$GET1^DIQ(9000010.51,IEN,.07)
 S START=$$GET1^DIQ(9000010.51,IEN,.08)
 S END=$$GET1^DIQ(9000010.51,IEN,.09)
 S COMMENT=$$GET1^DIQ(9000010.51,IEN,1101)
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Date: "_EVDT_" Warfarin: "_WAR
 S CNT=CNT+1
 S STRING="Goal: "_GOAL
 I MIN'="" S STRING=STRING_" Min: "_MIN
 I MAX'="" S STRING=STRING_" Max: "_MAX
 S @TARGET@(CNT,0)=STRING
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Duration: "_DUR
 I START'="" S STRING2="Start "_START
 I END'="" S STRING2=STRING2_" End: "_END
 I STRING2'="" S CNT=CNT+1 S @TARGET@(CNT,0)=STRING2
 I COMMENT'="" S CNT=CNT+1 S @TARGET@(CNT,0)="Comment: "_COMMENT
 S CNT=CNT+1 S @TARGET@(CNT,0)=""
 Q
