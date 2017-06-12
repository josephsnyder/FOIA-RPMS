BTIUVSTR ; IHS/MSC/JS - V STROKE TOOL OBJECT ;31-Mar-2014 08:33;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1012,1013**;MAR 20, 2013;Build 33
 ;
 Q
 ;
VSTR(DFN,TARGET,VIEN) ; EHR p12
 ;
 ;Input validation
 ; -- check environment variables --
 I $T(GETVAR^CIAVMEVT)="" S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 I $G(TARGET)="" Q " "
 K @TARGET
 ;
 ; -- get patient visit --
 S VIEN=$G(VIEN)
 I VIEN'="" G GETVSTR
 NEW VST
 S VST=$$GETVAR^CIAVMEVT("ENCOUNTER.ID.ALTERNATEVISITID",,"CONTEXT.ENCOUNTER")
 I VST="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 S VIEN=+$$VSTR2VIS^BEHOENCX(DFN,VST) I VST<1 S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 I $G(VIEN)="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 ;
GETVSTR ; -- check/get V STROKE file #9000010.63 for entry --
 NEW STRIEN,CNT,FNUM,VSTRARR,VSTRERR
 S STRIEN=""
 S CNT=0
 F  S STRIEN=$O(^AUPNVSTR("AD",VIEN,STRIEN)) Q:STRIEN=""  D
 .I '$D(^AUPNVSTR(STRIEN)) Q  ; broken record
 .I $P($G(^AUPNVSTR(STRIEN,5)),U,1) Q  ; EIE
 .D GETS
 I 'CNT S @TARGET@(1,0)="No Stroke data found for this visit"
 Q "~@"_$NA(@TARGET)
 ;
GETS ; -- check/retrieve file entry --
 S FNUM=$$FNUM
 I FNUM=0 S @TARGET@(1,0)="Server error: "_$G(FILERR("DIERR",1))_U_$G(FILERR("DIERR",1,"TEXT",1)) K FILERR Q "~@"_$NA(@TARGET)
 K VSTRARR,VSTRERR
 D GETS^DIQ(FNUM,STRIEN_",","**","IE","VSTRARR","VSTRERR") ;  retrieve file entry data
 I $D(VSTRERR) D   Q "~@"_$NA(@TARGET)
 .S @TARGET@(1,0)="Server error: "_$G(VSTRERR("DIERR",1))_U_$G(VSTRERR("DIERR",1,"TEXT",1))
 ;
 NEW WT
 D WEIGHT(VIEN)
 D PRINT(STRIEN)
 I CNT=0 S @TARGET@(1,0)="No V STROKE entry for patient visit"
 Q
 ; -- print the V Stroke data --
PRINT(STRIEN) ;
 NEW SPACE,ARRIVED,PATNAME,HANDED,FIBINIT,ARRCOM
 S $P(SPACE," ",1)=""
 S ARRIVED=$G(VSTRARR(FNUM,STRIEN_",",".01","E")) ;.01       ARRIVAL DATE/TIME (RD), [0;1]
 S PATNAME=$G(VSTRARR(FNUM,STRIEN_",",".02","E")) ;.02       PATIENT NAME (RP9000001'I), [0;2]
 S HANDED=$G(VSTRARR(FNUM,STRIEN_",",".04","E")) ; .04       HANDEDNESS (F), [0;4]
 S CNT=CNT+1
 S @TARGET@(CNT,0)="--- Stroke Symptoms ---"
 S CNT=CNT+1
 S @TARGET@(CNT,0)=SPACE
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Arrived at:   "_$G(ARRIVED)
 I $D(VSTRARR(FNUM,STRIEN_",","1","1")) D  ; 1      COMMENT (DATE/TIME ARRIVAL)
 .S CNT=CNT+1
 .S @TARGET@(CNT,0)="Arrival Comments:"
 .NEW NUM
 .S NUM=""
 .F  S NUM=$O(VSTRARR(FNUM,STRIEN_",","1",NUM)) Q:NUM=""!(NUM'?1N.N)  D
 ..S ARRCOM=$G(VSTRARR(FNUM,STRIEN_",","1",NUM))
 ..I $G(ARRCOM)]"" D
 ..S CNT=CNT+1
 ..S @TARGET@(CNT,0)=" "_ARRCOM
 ;
 ;STROKE SYMPTOMS #9000010.6314 -- STROKE SYMPTOMS SUB-FILE FIELD #1400
 I $D(VSTRARR(9000010.6314)) D
 .NEW STRING,NODE,NARR
 .S CNT=CNT+1
 .S @TARGET@(CNT,0)="Symptoms:"
 .S STRING="",NODE=""
 .F  S NODE=$O(VSTRARR(9000010.6314,NODE)) Q:NODE=""  D
 ..S STRING=$G(VSTRARR(9000010.6314,NODE,".019","E")) ;              .019 SNOMED PREF TERM (CJ60)
 ..I STRING]"" S CNT=CNT+1 S @TARGET@(CNT,0)=" "_$G(STRING)
 ..I STRING="" D
 ...S CNT=CNT+1
 ...S STRING=$G(VSTRARR(9000010.6314,NODE,".03","E")) ;               .03 PROVIDER TEXT (P9999999.27O)
 ...I STRING]"" S CNT=CNT+1 S @TARGET@(CNT,0)=" "_$G(STRING) ;        (DISPLAY IF SNOMED PREF TERM NULL)
 ..S CNT=CNT+1
 ..S STRING=$G(VSTRARR(9000010.6314,NODE,".06","E")) ;               .06  WITNESSED? (S), [0;6]
 ..S STRING=$S(STRING="YES":"Witnessed - Yes",1:"Not Witnessed")
 ..S @TARGET@(CNT,0)=$G(STRING)
 ..I STRING["Yes" D
 ...N WITBY S WITBY=$G(VSTRARR(9000010.6314,NODE,".07","E")) ;       .07  WITNESSED BY (F), [0;7]
 ...N WITDT S WITDT=$G(VSTRARR(9000010.6314,NODE,".08","E")) ;       .08  DATE/TIME WITNESSED (D), [0;8]
 ...N WITSTRG S WITSTRG="Witnessed Date/Time: "_$G(WITDT)_$S($G(WITBY)]"":" By "_WITBY,1:" ")
 ...S CNT=CNT+1
 ...S @TARGET@(CNT,0)=WITSTRG
 ..S STRING=$G(VSTRARR(9000010.6314,NODE,".1","E")) ;                .1   BASELINE STATE DATE/TIME (D), [0;10]
 ..I STRING]"" D
 ...S CNT=CNT+1
 ...S @TARGET@(CNT,0)="Last known at baseline state: "_$G(STRING)
 ..S STRING=$G(VSTRARR(9000010.6314,NODE,".01","E")) ;               .01  CONCEPT ID (F), [0;1]
 ..S NARR=$P($$DESC^BSTSAPI(STRING),U,2)
 ..I NARR]"" D
 ...S CNT=CNT+1
 ...S @TARGET@(CNT,0)="EKG Interpretation: "_$G(NARR)
 ;
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Handedness:   "_$G(HANDED)
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Weight:       "_$G(WT)
 ;
 ;NIH STROKE SCALE #9000010.6315 -- NIH STROKE SCALE SUB-FILE FIELD #1500
 NEW STRING,NODE,SSTIME
 S STRING="",NODE=""
 F  S NODE=$O(VSTRARR(9000010.6315,NODE)) Q:NODE=""  D
 . S CNT=CNT+1
 . S STRING=$G(VSTRARR(9000010.6315,NODE,".19","E")) ;               .19  TOTAL STROKE SCORE (NJ2,0), [0;19]
 . S SSTIME=$G(VSTRARR(9000010.6315,NODE,".02","E")) ;               .02  Time of score (Event Date/Time)
 . S @TARGET@(CNT,0)="Stroke Score: "_$G(STRING)_"  on "_SSTIME
 . Q
 ;
 ;PROTOCOL STANDING ORDERS #9000010.6313 -- PROTOCOL STANDING ORDERS SUB-FILE FIELD #1300
 I $D(VSTRARR(9000010.6313)) D
 .NEW STRING,NODE,PROTO,PROTODT,PROTOBY
 .S CNT=CNT+1
 .S @TARGET@(CNT,0)="Standing orders/Protocols Initiated -"
 .S STRING="",NODE=""
 .F  S NODE=$O(VSTRARR(9000010.6313,NODE)) Q:NODE=""  D
 ..S CNT=CNT+1
 ..S PROTO=$G(VSTRARR(9000010.6313,NODE,".01","E")) ;            .01  PROTOCOL STANDING ORDERS (F), [0;1]
 ..S PROTODT=$G(VSTRARR(9000010.6313,NODE,".02","E")) ;          .02  EVENT DATE/TIME (D), [0;2]
 ..S PROTOBY=$G(VSTRARR(9000010.6313,NODE,".04","E")) ;          .04  ENTERED BY (P200'), [0;4]
 ..S CNT=CNT+1
 ..S @TARGET@(CNT,0)=$G(PROTO)_"  "_$G(PROTODT)_" by "_$G(PROTOBY)
 ..I $D(VSTRARR(9000010.6313,NODE,1,1)) D  ;                       1  STANDING ORDER COMMENT (Wx) LINE 1
 ...S CNT=CNT+1
 ...S @TARGET@(CNT,0)="Standing Order Comments:"
 ...NEW NUM,PSOCOM
 ...S NUM=""
 ...F  S NUM=$O(VSTRARR(9000010.6313,NODE,1,NUM)) Q:NUM=""!(NUM'?1N.N)  D
 ....S PSOCOM=$G(VSTRARR(9000010.6313,NODE,1,NUM))
 ....I $G(PSOCOM)]"" D
 .....S CNT=CNT+1
 .....S @TARGET@(CNT,0)=" "_PSOCOM
 ;
 ;FIBRINOLYTIC THERAPY INITIATED  FIELD .11
 NEW FIBSTDT,FIBNOT,FIBREA,FIBCOM,FIBTXT,FIBBY
 S FIBSTDT=$G(VSTRARR(FNUM,STRIEN_",",".11","E")) ;               .11 FIBRINOLYTIC THERAPY INITIATED (D), [0;11]
 S FIBBY=$G(VSTRARR(FNUM,STRIEN_",",".13","E"))
 I FIBSTDT="" D
 . S FIBNOT=$G(VSTRARR(FNUM,STRIEN_",",".14","E")) ;              .14 DID NOT DO
 . I FIBNOT'="" D
 ..S CNT=CNT+1
 ..S @TARGET@(CNT,0)="Fibrinolytic therapy Not chosen at "_FIBNOT
 ..S FIBREA=$G(VSTRARR(FNUM,STRIEN_",",".17","I")) ;              .17 NO FIB REASON (REF REASON FILE IEN STORED 12.6.13)
 ..I $L(FIBREA)<4 S FIBTXT=FIBREA
 ..E  S FIBTXT=$P($$CONC^BSTSAPI(FIBREA),U,4)
 ..I FIBTXT]"" D
 ...S CNT=CNT+1
 ...S @TARGET@(CNT,0)="Reason: "_FIBTXT
 E  D
 .S CNT=CNT+1
 .S @TARGET@(CNT,0)="Fibrinolytic therapy started at "_FIBSTDT
 I FIBBY'="" D
 .S CNT=CNT+1
 .S @TARGET@(CNT,0)="Fibrinolytic documented by "_FIBBY
 ;
 I $D(VSTRARR(FNUM,STRIEN_",","4","1")) D  ;  4 FIBRINOLYTIC THERAPY COMMENT
 .S CNT=CNT+1
 .S @TARGET@(CNT,0)="Fibrinolytic Therapy Comments:"
 .NEW NUM
 .S NUM=""
 .F  S NUM=$O(VSTRARR(FNUM,STRIEN_",","4",NUM)) Q:NUM=""!(NUM'?1N.N)  D
 ..S FIBCOM=$G(VSTRARR(FNUM,STRIEN_",","4",NUM))
 ..I $G(FIBCOM)]"" D
 ..S CNT=CNT+1
 ..S @TARGET@(CNT,0)=" "_FIBCOM
 .S CNT=CNT+1
 .S @TARGET@(CNT,0)=SPACE
 Q
 ;
 ; -- find patient weight from visit or default to last filed weight in V Measurement file --
WEIGHT(VIEN) ; -- from routine BTIULO4 --
 NEW MIEN,QUALIF
 S WT=0
 S MIEN=0 F  S MIEN=$O(^AUPNVMSR("AD",VIEN,MIEN)) Q:'MIEN  D
 . K TIU D ENP^XBDIQ1(9000010.01,MIEN,".01;.04;2;1201","TIU(","I")
 . I TIU(.01)="WT" I TIU(2,"I")'=1     ;SKIP ENTERED IN ERROR VITALS
 . S QUALIF=$$QUAL^BTIULO7A(MIEN)
 . I TIU(.01)="WT" D
 . . S TIU(.04)=$J(TIU(.04),5,2)_" ("_$J((TIU(.04)*.454),5,2)_" kg)"
 . . I QUALIF="" S WT=$$NAME(TIU(.01,"I"))_": "_TIU(.04)_$$LSTDATE^BTIUPCC1(VIEN,TIU(1201,"I"),1)
 . . I QUALIF'="" S WT=$$NAME(TIU(.01,"I"))_": "_TIU(.04)_$$LSTDATE^BTIUPCC1(VIEN,TIU(1201,"I"),1)_" Qualifiers: "_QUALIF
 . . Q
 . Q
 K TIU
 S:WT=0 WT=$$LASTMSR^BTIUPCC1(+$G(DFN),"WT",1,1)
 Q
 ;
NAME(X) ;return full name for measurement
 Q $$GET1^DIQ(9999999.07,X,.02)
 ;
 ; -- V STROKE file number --
FNUM() ; returns 0/invalid file ref number, 9000010.63/valid file ref number
 NEW FILEN,ATTRIB,TAROOT,MSGROOT,FILEINFO
 S FILEN=9000010.63,ATTRIB="NAME;GLOBAL NAME",TAROOT="FILEINFO",MSGROOT="FILERR"
 D FILE^DID(FILEN,,ATTRIB,TAROOT,MSGROOT)
 I $D(FILERR) Q 0
 Q 9000010.63
