AZSLS03 ; LOAD S03 TABLE INTO PROVIDER/VENDOR [ 12/23/85  1:50 PM ]
 K
 S U="^",BEEP=$C(7)_$C(7),QFLG=0,INC=0
 S DIC=9999999.09,DIC(0)="XLF",DLAYGO=9999999.09,DUZ(0)="@"
 U 0 W !,"Opening input file.  Please wait."
 O 47:("AFU":81:81) U 47 G:$ZA\32768#2 OERR
 U 47 W *5
 F L=0:0 D PROC Q:QFLG
 U 0 W !!,"Records read=",INC,!
 I QFLG=1 U 0 W !!,"Error encountered.  Job aborted!",!! G EOJ
 U 0 W !!,"Load complete!",!!
EOJ ; CLOSE INPUT FILE AND QUIT
 C 47
 Q
PROC ; PROCESS INPUT RECORDS
 D READ
 Q:QFLG
 S INC=INC+1
 S CODE=$E(X,9,11),DISC=$E(X,51,52),NAME=$E(X,25,50) D RMB
 I CODE'?3N!(DISC'?2N)!(NAME="") U 0 W !,"Bad data=",X,! S QFLG=1 Q
 D SETAFFL
 U 0 W !,AFFL," ",DISC," ",CODE," ",NAME
 S DIC("DR")=".02///"_""""_AFFL_""""_".03///"_""""_DISC_""""_".04///"_""""_CODE_"""",X=NAME D ^DIC
 I Y<0 S QFLG=1 U 0 W !!,X,"/",DR("DR") Q
 Q
READ ; READ INPUT FILE
 U 47 R X S:$ZA\16384#2 QFLG=2
 Q
RMB ; REMOVE LEADING AND TRAILING BLANKS AND BLANK AFTER COMMA
 F I=$L(NAME):-1:1 I $E(NAME,I)'=" " S NAME=$E(NAME,1,I) Q
 F L=0:0 Q:$E(NAME)'=" "  S NAME=$E(NAME,2,99)
 S POS=$F(NAME,", ") Q:POS=0
 S NAME=$E(NAME,1,POS-2)_$E(NAME,POS,99)
 Q
SETAFFL ; SET AFFILIATION
 S AFFL=1
 I DISC="00" I CODE="090"!(CODE]"095"&(CODE']"099")) S AFFL=9 Q
 Q:DISC']"09"
 I DISC="10",CODE="754" S AFFL=2 Q
 Q:DISC']"12"
 I DISC="13" I CODE]"379"&(CODE']"381") S AFFL=9 Q
 I DISC="13",CODE="390" S AFFL=2 Q
 I DISC="14" S AFFL=4 Q
 I DISC="15" S AFFL=9 Q
 Q:DISC']"18"
 I DISC="19" S AFFL=3 Q
 I DISC="20" S AFFL=9 Q
 Q:DISC']"50"
 I DISC="51" S AFFL=3 Q
 I DISC="52",CODE="210" S AFFL=2 Q
 I DISC="52",CODE="211" S AFFL=9 Q
 I DISC="53" S AFFL=3 Q
 I DISC="55" S AFFL=3 Q
 I DISC="57",CODE="178" S AFFL=9 Q
 Q
OERR ; OPEN ERROR
 U 0 W BEEP
 W !!,"Open error on input file!",!!
 Q
