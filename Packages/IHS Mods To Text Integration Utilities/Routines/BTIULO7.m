BTIULO7 ;IHS/ITSC/LJF - IHS OBJECTS ADDED IN PATCHES;26-Jun-2014 08:49;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1001,1002,1003,1004,1005,1006,1007,1009,1010,1012,1013**;NOV 04, 2004;Build 33
 ;IHS/CIA/MGH line up number of labs and only display test name
 ;Made changes to call ehr 1.1 visit creation
 ;Patch 1005 Changed lookup for dates without times
 ;Patch 1006 changed lookup for LAST #VITALS for multiple vitals on one day
 ;Patch 1006 incorporated reproductive history field changes
 ;Patch 1007 fixed total time for visit selection
 ;Patch 1009 fixed reproductive history again and last # measurements
 ;Patch 1010 added qualifiers
LASTHFC(PAT,CTG,CAP) ;EP - return last factor in category CTG for patient PAT; PATCH 1001
 ; CAP = 1 if want caption to be returned; = 0 otherwise
 NEW CTGN,HF,HFDT,LIST,RESULT,X
 I '$G(PAT)!($G(CTG)="") Q ""
 S CTGN=$O(^AUTTHF("B",CTG,0)) I 'CTGN Q ""   ;ien of category passed
 ;
 S HF=0
 F  S HF=$O(^AUTTHF("AC",CTGN,HF))  Q:'+HF  D        ;find health factors in category
 .  Q:'$D(^AUPNVHF("AA",PAT,HF))                     ;quit if patient doesn't have health factor
 .  S HFDT=$O(^AUPNVHF("AA",PAT,HF,"")) Q:'HFDT      ;get visit date for health factor
 .  S LIST(HFDT)=$O(^AUPNVHF("AA",PAT,HF,HFDT,""))   ;store iens by date
 ;
 I '$O(LIST(0)) Q $S($G(CAP)=1:"No "_CTG_" health factors found for patient",1:"")
 S HFDT=$O(LIST(0))                                  ;find latest date (inverse dates)
 S RESULT=$S($G(CAP)=1:"Last "_CTG_" HF: ",1:"")
 S RESULT=RESULT_$$GET1^DIQ(9000010.23,LIST(HFDT),.01)
 S X=$$GET1^DIQ(9000010.23,LIST(HFDT),.04)    ;severity level
 S RESULT=RESULT_$S(X]"":" ( "_X_")",1:"")
 S RESULT=RESULT_" - "_$$FMTE^XLFDT(9999999-HFDT)
 Q RESULT
 ;
VINS(TARGET) ; returns insurance coverage for current vuecentric visit context; PATCH 1001
 ; assumes DFN is set
 I $T(GETVAR^CIAVMEVT)="" S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 NEW VST,I,X,CNT,RESULT
 S CNT=0
 S VST=$$GETVAR^CIAVMEVT("ENCOUNTER.ID.ALTERNATEVISITID",,"CONTEXT.ENCOUNTER")
 I VST="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 S X="BEHOENCX" X ^%ZOSF("TEST") I $T S VST=+$$VSTR2VIS^BEHOENCX(DFN,VST) I VST<1  S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 D GETINS(.RESULT,VST)
 ;
 K @TARGET
 S I=0 F  S I=$O(RESULT(I)) Q:'I  D
 .S CNT=CNT+1
 .S @TARGET@(CNT,0)=RESULT(I)
 I 'CNT S @TARGET@(1,0)="No Insurance Coverage Found"
 Q "~@"_$NA(@TARGET)
 ;
GETINS(RETURN,VISIT) ;return insurance coverage at time of visit
 ; VISIT=Visit IEN
 ;
 NEW VDT,LINE K RETURN
 ;
 S VDT=+$G(^AUPNVSIT(VISIT,0)) I 'VDT Q
 S LINE=""
 I $$MCR^AUPNPAT(DFN,VDT)=1 S LINE="MEDICARE #"_$$MCR^BTIULO2(DFN)_"/"
 I $$MCD^AUPNPAT(DFN,VDT)=1 S LINE=LINE_"MEDICAID #"_$$MCD^BTIULO2(DFN)_"/"
 I $$PI^AUPNPAT(DFN,VDT)=1 S LINE=LINE_"PVT INS ("_$$PIN^AUPNPAT(DFN,VDT,"E")_")/"
 I LINE]"" S RETURN(1)=$E(LINE,1,$L(LINE)-1)
 Q
 ;
NLAB(DFN,TIUTST,TIUCNT,BRIEF) ;EP; -- returns last # of current lab result for single test;PATCH 1001
 ; TIUTST = lab test name;  TIUCNT = # of test results to return
 ;Brief is set to remove caption and only insert test name PATCH 1003
 ;IHS/CIA/MGH Modified to only display the test name and line up labs better
 ;UPDATED 1009 FOR MULTIPLE RESULTS ON SAME VISIT
 NEW LAB,CAPTION,VDT,IEN,X,TIU,LINE,CNT,DATA,LGTH,ARR,DATE,DATE2,LCNT
 K ^TMP("BTIULO",$J)
 S LAB=$O(^LAB(60,"B",TIUTST,0)) I LAB="" Q ""
 I $G(BRIEF) S CAPTION=$E(TIUTST,1,30)_":"  ;PATCH 1003
 E  S CAPTION="Last "_TIUCNT_" "_$E(TIUTST,1,30)_": "
 S (VDT,CNT)=0
 F  S VDT=$O(^AUPNVLAB("AA",DFN,LAB,VDT)) Q:('VDT)!(CNT=TIUCNT)  D
 . S IEN=0
 . F  S IEN=$O(^AUPNVLAB("AA",DFN,LAB,VDT,IEN)) Q:'IEN!(CNT=TIUCNT)  D
 .. K TIU D ENP^XBDIQ1(9000010.09,IEN,".03:.05;1109;1201","TIU(")
 .. Q:TIU(.04)=""                       ;skip if not resulted
 .. S DATE=$$GET1^DIQ(9000010.09,IEN,1201,"I")
 .. I DATE="" S DATE=$$GET1^DIQ(9000010.09,IEN,.03,"I")
 .. S DATE2=$S(TIU(1201)]"":TIU(1201),1:TIU(.03))
 .. S CNT=CNT+1                         ;increment counter
 .. S LGTH=$L(TIU(.05)) ;PATCH 1003
 .. S DATA=$S(LGTH=1:"   "_DATE2,LGTH=2:"  "_DATE2,1:"    "_DATE2)   ;PATCH 1003
 .. S ARR(DATE,IEN)=$J(TIU(.04),8)_"  "_TIU(.05)_"  "_DATA
 S CNT=0,LCNT=0,DATE=""
 ;IHS/MSC/MGH patch 1006 and 1010 change to check for CNT inside a date
 N VFILENUM,ARRAY
 F  S DATE=$O(ARR(DATE),-1) Q:DATE=""!(CNT>=TIUCNT)  D
 . S IEN="" F  S IEN=$O(ARR(DATE,IEN),-1)  Q:'IEN!(CNT>=TIUCNT)  D
 .. S LINE=$G(ARR(DATE,IEN)),CNT=CNT+1,LCNT=LCNT+1
 .. S Y=$S(CNT=1:CAPTION,1:$$SP($L(CAPTION)))
 .. S ^TMP("BTIULO",$J,LCNT,0)=Y_LINE
 I '$D(^TMP("BTIULO",$J)) S ^TMP("BTIULO",$J,1,0)=CAPTION_"No Results Found"
 Q "~@^TMP(""BTIULO"",$J)"
 ;
NVIT(DFN,TIUMSR,TIUCNT,TIUDATE,BRIEF) ;EP; returns last # of of a specific vital sign; PATCH 1002 new code
 ; TIUMSR = measurement name
 ; TIUCNT = # of results to return
 ; TIUDATE=1 return date measurement taken
 ;IHS/CIA/MGH Parameter BRIEF added to remove caption from display PATCH 1003
 ;
 NEW LAB,CAPTION,VDT,IEN,X,TIU,LINE,CNT,STOP,DATE,ARR,MSR,TT,QUALIF
 K ^TMP("BTIULO",$J)
 S MSR=$O(^AUTTMSR("B",TIUMSR,0)) I MSR="" S ^TMP("BTIULO",$J,1,0)="No measurements" Q "~@^TMP(""BTIULO"",$J)"
 I $G(BRIEF) S CAPTION=TIUMSR_": "            ;PATCH 1003
 E  S CAPTION="Last "_TIUCNT_" "_TIUMSR_": "
 ;
 S (VDT,CNT)=0
 F  S VDT=$O(^AUPNVMSR("AA",DFN,MSR,VDT)) Q:('VDT)!(CNT>TIUCNT)  D
 . S IEN=0
 . F  S IEN=$O(^AUPNVMSR("AA",DFN,MSR,VDT,IEN)) Q:'IEN  D
 . . K TIU D ENP^XBDIQ1(9000010.01,IEN,".03;.04;2;1201","TIU(","I")
 . . Q:TIU(2,"I")=1
 . . S TT=$G(TIU(1201,"I"))
 . . S LINE=$G(TIU(.04))_U_$G(TIU(.03,"I"))_U_TT
 . . NEW Y
 . . I TIUMSR="TMP" S Y=$P(LINE,U),Y=Y_" F ["_$J(((Y-32)/1.8),5,2)_" C]",$P(LINE,U)=Y
 . . I ((TIUMSR="HT")!(TIUMSR="HC")!(TIUMSR="WC")!(TIUMSR="AG")) S Y=$P(LINE,U),Y=$J(Y,5,2)_" in ["_$J((Y*2.54),5,2)_" cm]",$P(LINE,U)=Y
 . . I TIUMSR="WT" S Y=$P(LINE,U),Y=$J(Y,5,2)_" lb ["_$J((Y*.454),5,2)_" kg]",$P(LINE,U)=Y
 . . I TIUMSR="BMI" D
 . . . S Y=$P(LINE,U),Y=$J(Y,5,2)
 . . . I $$PREG^BTIUPCC6(DFN,"",IEN)=1 S Y=Y_"*"
 . . . S $P(LINE,U)=Y
 . . S QUALIF=$$QUAL^BTIULO7A(IEN)
 . . I QUALIF'="" S LINE=LINE_U_QUALIF
 . . ;
 . . ; set it array by date/time to find most recent
 . . ;IHS/MSC/MGH 1009 Changed lookup to not add a . if there is no time
 . . S DATE=$S($G(TIU(1201,"I"))]"":+TIU(1201,"I"),1:(9999999-VDT))
 . . ;S DATE=$S($G(TIU(.07,"I"))]"":TIU(.07,"I"),$G(TIU(1201,"I"))]"":TIU(1201,"I"),1:(9999999-$P(VDT,"."))_$S($P(VDT,".",2)'="":"."_$P(VDT,".",2),1:""))
 . . S ARR(DATE,IEN)=LINE,CNT=CNT+1
 ;
 ; loop thru array backwards to display most recent first
 S CNT=0,DATE=""
 ;IHS/MSC/MGH patch 1006 change to check for CNT inside a date
 F  S DATE=$O(ARR(DATE),-1) Q:'DATE!(CNT>=TIUCNT)  D
 . S IEN="" F  S IEN=$O(ARR(DATE,IEN),-1)  Q:'IEN!(CNT>=TIUCNT)  D
 . . S LINE=ARR(DATE,IEN),CNT=CNT+1
 . . S X=$S(CNT=1:CAPTION,1:$$SP($L(CAPTION)))    ;either caption if first one or spaces to line up under first one
 . . I $P(LINE,U,4)="" S ^TMP("BTIULO",$J,CNT,0)=X_$P(LINE,U)_$$LSTDATE^BTIUPCC1($P(LINE,U,2),$P(LINE,U,3),$G(TIUDATE))
 . . I $P(LINE,U,4)'="" S ^TMP("BTIULO",$J,CNT,0)=X_$P(LINE,U)_$$LSTDATE^BTIUPCC1($P(LINE,U,2),$P(LINE,U,3),$G(TIUDATE))_" Qualifiers: "_$P(LINE,U,4)
 ;
 I '$D(^TMP("BTIULO",$J)) S ^TMP("BTIULO",$J,1,0)=CAPTION_"No "_TIUMSR_" Found"
 Q "~@^TMP(""BTIULO"",$J)"
 ;
LMP(DFN,MODE) ;EP; LMP-BRIEF and LMP-EXPANDED objects
 ;MODE="B" or "E"
 NEW X
 I '$D(MODE) S @TARGET@(1,0)="Please see your CAC to upgrade this object" Q "~@"_$NA(@TARGET)
 I $P(^DPT(DFN,0),U,2)="M" Q "Patient is male"
 S X=$$GET1^DIQ(9000017,+$G(DFN),2)
 I (MODE="B")!(X="") Q "LMP: "_$S(X="":"None Recorded",1:X)
 Q "LMP: "_X_" (recorded on "_$$GET1^DIQ(9000017,+$G(DFN),2.1)_")"
 ;
EDC(DFN,MODE) ;EP; EDC-BRIEF and EDC-EXPANDED objects
 ;MODE="B" or "E"
 NEW X,HOW,EDCDT
 I '$D(MODE) S @TARGET@(1,0)="Please see your CAC to upgrade this object" Q "~@"_$NA(@TARGET)
 I $P(^DPT(DFN,0),U,2)="M" Q "Patient is male"
 S X=$$GET1^DIQ(9000017,+$G(DFN),1311)
 I (MODE="B")!(X="") Q "EDC: "_$S(X="":"None Recorded",1:X)
 S HOW=$$GET1^DIQ(9000017,+DFN,1313),EDCDT=$$GET1^DIQ(9000017,DFN,1312)
 Q "EDC: "_X_" (determined by "_$S(HOW="":"UNKNOWN METHOD",1:HOW)_" on "_EDCDT_")"
 ;
RHX(DFN,TARGET,MODE) ;EP; REPRODUCTIVE HX-BRIEF and REPRODUCTIVE HX-EXPANDED objects
 ;MODE="B" or "E"
 ;Patch 1006 updated to get data from new fields
 NEW X,GRAV,OTHER,PARA,LC,SA,TA,TOT,G,MB,FT,PRE,EC,LAC,LAC1,LACDATE
 K @TARGET
 I '$D(MODE) S @TARGET@(1,0)="Please see your CAC to upgrade this object" Q "~@"_$NA(@TARGET)
 ;I '$D(MODE)!(MODE="") S MODE="B"
 I $P(^DPT(DFN,0),U,2)="M" S @TARGET@(1,0)="Patient is male" Q "~@"_$NA(@TARGET)
 I '$D(^AUPNREP(DFN,0)) S @TARGET@(1,0)="No history on file" Q "~@"_$NA(@TARGET)
 S X=$$GET1^DIQ(9000017,+$G(DFN),1103)
 I X="" D OLD^BTIULO7A(DFN,TARGET,MODE) Q "~@"_$NA(@TARGET)
 S G=X
 I MODE="E" S G=G_" ("_$$GET1^DIQ(9000017,+$G(DFN),1104,"E")_")"
 S MB=$$GET1^DIQ(9000017,+$G(DFN),1105)
 I MODE="E" S MB=MB_" ("_$$GET1^DIQ(9000017,+$G(DFN),1106)_")"
 S FT=$$GET1^DIQ(9000017,+$G(DFN),1107)
 I MODE="E" S FT=FT_" ("_$$GET1^DIQ(9000017,+$G(DFN),1108)_")"
 S PRE=$$GET1^DIQ(9000017,+$G(DFN),1109)
 I MODE="E" S PRE=PRE_" ("_$$GET1^DIQ(9000017,+$G(DFN),1110)_")"
 S EC=$$GET1^DIQ(9000017,+$G(DFN),1111)
 I MODE="E" S EC=EC_" ("_$$GET1^DIQ(9000017,+$G(DFN),1112)_")"
 S LC=$$GET1^DIQ(9000017,+$G(DFN),1113)
 I MODE="E" S LC=LC_" ("_$$GET1^DIQ(9000017,+$G(DFN),1114)_")"
 S TA=$$GET1^DIQ(9000017,+$G(DFN),1131)
 I MODE="E" S TA=TA_" ("_$$GET1^DIQ(9000017,+$G(DFN),1132)_")"
 S SA=$$GET1^DIQ(9000017,+$G(DFN),1133)
 I MODE="E" S SA=SA_" ("_$$GET1^DIQ(9000017,+$G(DFN),1106)_")"
 S LAC1=""
 S LAC=$G(^AUPNREP(DFN,2))
 ;IHS/MSC/MGH patch 1010 check for blank lactation status
 I LAC'="" D
 .S LAC1=$$GET1^DIQ(9000017,DFN,2.01)
 .S LACDATE=$$GET1^DIQ(9000017,DFN,2.02)
 .I MODE="E" S LAC1=LAC1_" ("_LACDATE_")"
 ;IHS/MSC/MGH patch 1009 changed order of display
 S CNT=1
 S @TARGET@(CNT,0)="Gravida: "_G
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Full Term: "_FT
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Premature Births: "_PRE
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Theraputic Abortions: "_TA
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Spontaneous Abortions: "_SA
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Ectopics: "_EC
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Living Children: "_LC
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Multiple Births: "_MB
 S CNT=CNT+1
 S @TARGET@(CNT,0)="Lactation Status: "_LAC1
 Q "~@"_$NA(@TARGET)
 ;
FPM(DFN,TARGET,MODE) ;EP; CONTRACEPTION-BRIEF object
 ;MODE="B" or "E"
 NEW X,FPBEGIN,FPDATE,BHX,TYP,START,END,CNT,LINE,LIN1,BHC
 K @TARGET
 S CNT=0
 I $P(^DPT(DFN,0),U,2)="M" Q "Patient is male"
 S BHX=0 F  S BHX=$O(^AUPNREP(DFN,2101,BHX)) Q:BHX'=+BHX  D
 .Q:$D(^AUPNREP(DFN,2101,BHX,1))>0
 .S BHC=$P(^AUPNREP(DFN,2101,BHX,0),U,1) I BHC D
 ..S TYP=$P(^AUTTCM(BHC,0),U)
 ..S START=$P(^AUPNREP(DFN,2101,BHX,0),U,2) I START]"" S START=$$FIXDT^BHSFAM1(START)
 ..S END=$P(^AUPNREP(DFN,2101,BHX,0),U,3) I END]"" S END=$$FIXDT^BHSFAM1(END)
 ..I CNT=0 D
 ...S CNT=CNT+1 S @TARGET@(CNT,0)=""
 ...S CNT=CNT+1 S @TARGET@(CNT,0)="FP METHOD: "
 ..S LINE=$S(TYP="":"None Recorded",1:TYP)
 ..I MODE="B"&(END="") D
 ...S CNT=CNT+1
 ...S LINE="   "_LINE_" Start Dt: "_START
 ...S @TARGET@(CNT,0)=LINE
 ..I MODE="E" D
 ...S CNT=CNT+1
 ...S LINE="   "_LINE_" Start Dt: "_START
 ...S @TARGET@(CNT,0)=LINE
 ...I END'="" D
 ....S CNT=CNT+1
 ....S LIN1=""
 ....I $P(^AUPNREP(DFN,2101,BHX,0),U,5)]"" S LIN1=" Reason Discontinued: "_$P(^AUPNREP(DFN,2101,BHX,0),U,5)
 ....S @TARGET@(CNT,0)="             End Dt: "_END_LIN1
 Q "~@"_$NA(@TARGET)
 ;
TODAYVIT(PAT) ;EP; returns all vitals taken today
 NEW MEAS,VST,VDT,END,APCLV,ERR,TYPE,VALUE
 ;
 ; for each visit patient had today, find all measurements taken
 S VDT=9999999-DT,END=VDT_".2359"
 F  S VDT=$O(^AUPNVSIT("AA",PAT,VDT)) Q:'VDT  Q:VDT>END  D
 . S VST=$O(^AUPNVSIT("AA",PAT,VDT,0)) Q:'VST
 . S ERR=$$PCCVF^APCLV(VST,"MEASUREMENT","7;8") I ERR Q
 . S X=0 F  S X=$O(APCLV(X)) Q:'X  D
 . . S MEAS($P(APCLV(X),U),VDT)=$P(APCLV(X),U,2)
 ;
 ; loop through all measurements found for patient and date; pick most recent ones
 S RESULT=""
 S TYPE=0 F  S TYPE=$O(MEAS(TYPE)) Q:TYPE=""  D
 . S DATE=$O(MEAS(TYPE,""),-1)                      ;get latest date/time
 . S VALUE=MEAS(TYPE,DATE)                          ;get value for this measurement & date/time
 . I TYPE="WT" S VALUE=$J(VALUE,5,2)_" ("_$J((VALUE*.454),5,2)_" kg)"
 . I ((TYPE="HT")!(TYPE="HC")!(TYPE="WC")!(TYPE="AG")) S VALUE=$J(VALUE,5,2)_" ("_$J((VALUE*2.54),5,2)_" cm)"
 . I TYPE="TMP" S VALUE=VALUE_" ("_(((10*((VALUE-32)/1.8))\1)/10)_" C)"
 . I TYPE="BMI" D
 . . S VALUE=$J(VALUE,5,2)
 . . I $$PNM^APCLSIL1(DFN,DT)="Y" S VALUE=VALUE_"*"
 . S RESULT=RESULT_TYPE_":"_VALUE_", "
 S RESULT=$E(RESULT,1,$L(RESULT)-2)   ;remove last comma
 Q RESULT
 ;
TODAYLAB(PAT) ;EP; returns all labs taken today;PATCH 1002 new code
 NEW VDT,END,VISIT,COUNT,TIUX,LINE,TIUA
 K ^TMP("BTIULO",$J)
 ;
 ; for each visit patient had today, find all labs
 S VDT=9999999-DT,END=VDT_".2359"
 F  S VDT=$O(^AUPNVSIT("AA",PAT,VDT)) Q:'VDT  Q:VDT>END  D
 . S VISIT=0 F  S VISIT=$O(^AUPNVSIT("AA",PAT,VDT,VISIT)) Q:'VISIT  D
 . . S TIUX=0,LINE="" F  S TIUX=$O(^AUPNVLAB("AD",VISIT,TIUX)) Q:'TIUX  D
 . . . K TIUA D ENP^XBDIQ1(9000010.09,TIUX,".01;.04;.05;1109","TIUA(")
 . . . I TIUA(.04)="",TIUA(1109)="RESULTED" Q
 . . . S LINE="  "_$$PAD(TIUA(.01),25)_"  "       ;lab test
 . . . S LINE=LINE_$$PAD(TIUA(.04),10)_TIUA(.05)  ;result
 . . . I TIUA(.04)="" S LINE=LINE_TIUA(1109)
 . . . S COUNT=$G(COUNT)+1 S ^TMP("BTIULO",$J,COUNT,0)=LINE
 ;
 I '$D(^TMP("BTIULO",$J)) Q "No Labs Found for Today"
 Q "~@^TMP(""BTIULO"",$J)"
 ;
PAD(DATA,LENGTH) ; -- SUBRTN to pad length of data
 Q $E(DATA_$$REPEAT^XLFSTR(" ",LENGTH),1,LENGTH)
 ;
SP(NUM) ; -- SUBRTN to pad spaces
 Q $$PAD(" ",NUM)
