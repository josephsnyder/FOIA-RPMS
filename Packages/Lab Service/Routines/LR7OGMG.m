LR7OGMG ;VA/DALOI/STAFF- Interim report rpc memo grid ; 22-Oct-2013 09:22 ; MKK
 ;;5.2;LAB SERVICE;**187,230,1018,286,1027,331,364,395,1031,1033**;NOV 1, 1997
 ;
GRID(OUTCNT) ; from LR7OGMC
 N ACC,AGE,CDT,CMNT,CNT,DATA,DOC,FLAG,IDT,INTP,LINE,LRCW,LRX,MPLS,PLS,PORDER,PRNTCODE,RANGE,SEX,SPEC,SUB,TCNT,TESTNAME,TESTNUM
 N UNITS,VALUE,X,ZERO,INEXACT,DISPDATE
 ; the variables AGE, SEX, LRCW, and X are used withing the lab's print codes and ref ranges
 K ^TMP("LRMPLS",$J)
 S AGE=$P(^TMP("LR7OG",$J,"G"),U,4),SEX=$P(^("G"),U,5),LRCW=$P(^("G"),U,6)
 S CDT=+$O(^TMP("LR7OG",$J,"TP",0)) Q:'CDT
 S IDT=9999999-CDT
 S ZERO=$S($D(^TMP("LR7OG",$J,"TP",CDT))#2:^(CDT),1:"")
 S SPEC=+$P(ZERO,U,5)
 S INEXACT=$P(ZERO,U,2),DISPDATE=$S(INEXACT:CDT\1,1:CDT)
 S DOC=$$NAME^LR7OGMP(+$P(ZERO,U,10))
 S ACC=$P(ZERO,U,6)
 S $P(^TMP("LR7OGX",$J,"OUTPUT",1),U,4,6)=SPEC_U_$P($G(^LAB(61,SPEC,0)),U)_U_ACC_U_DOC
 S $P(^TMP("LR7OGX",$J,"OUTPUT",1),U,10)=DISPDATE
 S (TCNT,MPLS,PORDER,PLS)=0
 S PLS=$O(^TMP("LRPLS",$J,0))
 I $O(^TMP("LRPLS",$J,PLS)) S MPLS=1 ; multiple performing labs
 F  S PORDER=$O(^TMP("LR7OG",$J,"TP",CDT,PORDER)) Q:PORDER'>0  S DATA=^(PORDER) D
 . I $P(DATA,U,7)="" Q
 . S TCNT=TCNT+1
 . S TESTNUM=+DATA,TESTNAME=$P(DATA,U,2),PRNTCODE=$P(DATA,U,5),SUB=$P(DATA,U,6),FLAG=$P(DATA,U,8),X=$P(DATA,U,7),UNITS=$P(DATA,U,9),RANGE=$P(DATA,U,10),PLS=$P(DATA,U,11)
 . ;
 . ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1031
 . ; NEW LOW,HIGH
 . ; S LOW=$$TRIM^XLFSTR($P($G(RANGE),"-"),"LR"," ")
 . ; S HIGH=$$TRIM^XLFSTR($P($G(RANGE),"-",2),"LR"," ")
 . ; D:$L(LOW) ZEROFIX(TESTNUM,.LOW)
 . ; D:$L(HIGH) ZEROFIX(TESTNUM,.HIGH)
 . ; I $L(LOW)!($L(HIGH)) S RANGE=$$EN^LRLRRVF(LOW,HIGH)
 . ; S ^BLR7OGMG("LR7OGMG",$J,"DID IT")=LOW_"^"_HIGH_"^"_RANGE
 . ; K LOW,HIGH
 . ; ----- END IHS/MSC/MKK - LR*5.2*1031
 . ;
 . ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1033
 . I $$UP^XLFSTR(RANGE)'["REF:" D
 .. NEW LOW,HIGH
 .. S LOW=$$TRIM^XLFSTR($P($G(RANGE),"-"),"LR"," ")
 .. S HIGH=$$TRIM^XLFSTR($P($G(RANGE),"-",2),"LR"," ")
 .. D:$L(LOW) ZEROFIX(TESTNUM,.LOW)
 .. D:$L(HIGH) ZEROFIX(TESTNUM,.HIGH)
 .. I $L(LOW)!($L(HIGH)) S RANGE=$$EN^LRLRRVF(LOW,HIGH)
 . I RANGE[" to "&(RANGE["Ref: ") S RANGE=$P(RANGE,"Ref: ",2)
 . ; I RANGE["Ref:" S RANGE=$TR($P(RANGE,"Ref: ",2),"=")    ; MU2 Only
 . ; ----- END IHS/MSC/MKK - LR*5.2*1033
 . ;
 . I MPLS,PLS S ^TMP("LRMPLS",$J,PLS,TESTNAME)=""
 . I PRNTCODE="" S VALUE=$J(X,8)
 . E  S @("VALUE="_PRNTCODE)
 . ;
 . S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=TESTNUM_U_TESTNAME_U_VALUE_U_FLAG_U_UNITS_U_RANGE
 . ;
 . ; ---- BEGIN IHS/MSC/JS - LR*5.2*1033 - Lookup LOINC CODE, add $P15 to ^TMP data  -- 7/11/13
 . I +$G(TESTNUM) I +$G(SPEC) D
 . . N IEN,IENS,LOINC
 . . S IEN=TESTNUM,IENS=SPEC_","_IEN_","
 . . S LOINC=$$GET1^DIQ(60.01,IENS,95.3)
 . . I $G(LOINC) S $P(^TMP("LR7OGX",$J,"OUTPUT",OUTCNT),"^",15)=LOINC
 . ; ---- END IHS/MSC/JS - LR*5.2*1033 - Lookup LOINC CODE, add $P15 to ^TMP data  -- 7/11/13
 . ;
 . S OUTCNT=OUTCNT+1
 S $P(^TMP("LR7OGX",$J,"OUTPUT",1),U)=TCNT ;TCNT must be correct to display all values
 ;
 D SPECCOND   ; IHS/MSC/MKK - LR*5.2*1033
 ;
 S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=" ",OUTCNT=OUTCNT+1
 S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)="Report Released Date/Time: "_$$FMTE^XLFDT($P(ZERO,"^",3),"M"),OUTCNT=OUTCNT+1
 ;
 S (CNT,PORDER)=0
 F  S PORDER=$O(^TMP("LR7OG",$J,"TP",CDT,PORDER)) Q:PORDER'>0  S DATA=^(PORDER) D
 . I $O(^TMP("LR7OG",$J,"TP",CDT,PORDER,0))>0 D
 . . S TESTNAME=$P(DATA,U,3)
 . . S INTP=0
 . . F  S INTP=+$O(^TMP("LR7OG",$J,"TP",CDT,PORDER,INTP)) Q:INTP<1  D
 . . . S LINE=TESTNAME_" Eval: "_^TMP("LR7OG",$J,"TP",CDT,PORDER,INTP)
 . . . S CNT=CNT+1  S:CNT=1 ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=" ",OUTCNT=OUTCNT+1
 . . . S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=LINE
 . . . S OUTCNT=OUTCNT+1
 ;
 I $D(^TMP("LR7OG",$J,"TP",CDT,"C")) D
 . S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=" ",OUTCNT=OUTCNT+1
 . S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)="Comment: "
 . S OUTCNT=OUTCNT+1,CMNT=0
 . F  S CMNT=+$O(^TMP("LR7OG",$J,"TP",CDT,"C",CMNT)) Q:CMNT<1  S LINE=^(CMNT) D
 . . S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)="   "_LINE
 . . S OUTCNT=OUTCNT+1
 ;
 D PLS
 ;S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)="Report Released Date/Time: "_$$FMTE^XLFDT($P(ZERO,"^",3),"M"),OUTCNT=OUTCNT+1
 Q
 ;
 ;
PLS ; List performing laboratories
 ; If multiple performing labs then list tests associated with each lab.
 ;
 N CNT,LINE,LRPLS,X
 N STR,COUNTY,COUNTRY,ICOUNTRY   ; IHS/MSC/MKK - LR*5.2*1033
 ;
 S (CNT,LRPLS)=0
 F  S LRPLS=$O(^TMP("LRPLS",$J,LRPLS)) Q:LRPLS<1  D
 . S:CNT=0 ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=" ",OUTCNT=OUTCNT+1
 . I $D(^TMP("LRMPLS",$J,LRPLS)) D
 . . S TESTNAME="",LINE="For test(s): "
 . . F  S TESTNAME=$O(^TMP("LRMPLS",$J,LRPLS,TESTNAME)) Q:TESTNAME=""  D
 . . . I ($L(LINE)+$L(TESTNAME))>240 D
 . . . . S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=LINE
 . . . . S OUTCNT=OUTCNT+1,LINE=""
 . . . S LINE=LINE_TESTNAME_", "
 . . S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=LINE,OUTCNT=OUTCNT+1
 . S LINE=$$NAME^XUAF4(LRPLS)
 . S X=$$PADD^XUAF4(LRPLS)
 . S LINE=LINE_"  "_$P(X,U)_"  "_$P(X,U,2)_", "_$P(X,U,3)_" "_$P(X,U,4)
 . S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)="Performing Lab: "_LINE
 . S OUTCNT=OUTCNT+1,CNT=CNT+1
 . ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1033
 . S STR=$G(^TMP("LRPLS",$J,LRPLS))
 . Q:$L(STR)<1
 . S COUNTY=$P(STR,"^"),COUNTRY=+$P(STR,"^",2)
 . S LINE=$J("",8)_$$LJ^XLFSTR("County:"_COUNTY,15)
 . S:COUNTRY LINE=LINE_"Country:"_$$GET1^DIQ(779.004,COUNTRY,"CODE")
 . S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=LINE
 . S OUTCNT=OUTCNT+1,CNT=CNT+1
 . ; ----- END IHS/MSC/MKK - LR*5.2*1033
 ;
 K ^TMP("LRPLS",$J),^TMP("LRMPLS",$J)
 Q
 ;
 ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1031
ZEROFIX(F60PTR,RESULT) ; EP - Leading & Trailing Zero Fix for Results
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,F60PTR,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,RESULT,U,XPARSYS,XQXFLG)
 ;
 Q:$$UP^XLFSTR($G(RESULT))["SPECIMEN IN LAB"          ; Skip if not resulted
 ;
 Q:$L($G(RESULT))<1                      ; Skip if no Result
 Q:$L($G(F60PTR))<1                      ; Skip if no File 60 Pointer
 ;
 S DN=+$G(^LAB(60,F60PTR,.2))
 Q:DN<1                                  ; Skip if no DataName
 ;
 Q:$G(^DD(63.04,DN,0))'["^LRNUM"         ; Skip if no numeric defintiion
 ;
 S STR=$P($P($G(^DD(63.04,DN,0)),"Q9=",2),$C(34),2)     ; Get numeric formatting
 ;
 S DP=+$P(STR,",",3)                     ; Decimal Places
 Q:DP<1                                  ; Skip if no Decimal Defintion
 ;
 S SYMBOL="",ORIGRSLT=RESULT
 F  Q:$E(RESULT)="."!($E(RESULT)?1N)!(RESULT="")  D       ; Adjust if ANY Non-Numeric is at the beginning of RESULT
 . S SYMBOL=SYMBOL_$E(RESULT)
 . S RESULT=$E(RESULT,2,$L(RESULT))
 ;
 S:$E(RESULT)="." RESULT="0"_RESULT      ; Leading Zero Fix
 ;
 I $E(RESULT)'?1N  S RESULT=ORIGRSLT  Q  ; If RESULT has no numeric part: restore to original RESULT & skip
 ;
 S RESULT=$TR($FN(RESULT,"P",DP)," ")
 ;
 S:$L($G(SYMBOL)) RESULT=SYMBOL_RESULT   ; Restore "symbol", if necessary
 ;
 Q
 ; ----- END IHS/MSC/MKK - LR*5.2*1031
 ;
 ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1033
SPECCOND ; EP
 NEW SPECCOND
 ;
 S SPECCOND=$P($G(^LR(+LRDFN,"CH",+IDT,"IHS")),"^")
 Q:$L(SPECCOND)<1
 ;
 S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)=" ",OUTCNT=OUTCNT+1
 S ^TMP("LR7OGX",$J,"OUTPUT",OUTCNT)="Specimen Condition:"_SPECCOND,OUTCNT=OUTCNT+1
 Q
 ; ----- END IHS/MSC/MKK - LR*5.2*1033
