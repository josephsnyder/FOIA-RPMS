IBDF2A ;ALB/CJM - ENCOUNTER FORM (builds form and prints it);NOV 16,1992
 ;;3.0;AUTOMATED INFO COLLECTION SYS;;APR 24, 1997
FORM(IBFORM,WITHDATA) ;prints FORM - defines IBDEVICE array
 ;input variables - IBFORM=ien of the form, WITHDATA=1 if the form should be completed with data 
 ;
 N IBDEVICE
 ;
 D DEVICE^IBDFUA(0,.IBDEVICE)
 D DRWFORM(IBFORM,WITHDATA,.IBDEVICE)
EXIT ;
 ;
 D KPRNTVAR^IBDFUA ;kills the screen and graphics parameters
 K X,Y,I
 Q
DRWFORM(IBFORM,WITHDATA,IBDEVICE) ;prints IBFORM - IBDEVICE array already defined, must be passed by reference
 N RTNLIST,NODE,IBPFID,IBARRAY,LINES,HAND,IBPRINT,TYPE,UNIT,PRINT,REPRINT
 ;
 Q:'$$FORMDSCR^IBDFU1C(.IBFORM)
 D PRNTPRMS^IBDFU1C(.IBPRINT,WITHDATA,1,0,1)
 ;
 D DEVSETUP^IBDF2A1(.IBFORM,.IBDEVICE)
 K ^TMP("IB",$J,"INTERFACES"),^TMP("IBDF",$J,"FORM"),^("OVERFLOW")
 S IBPFID=""
 ;
 ;for forms other than toolkit, always use compiled version
 I 'IBFORM("TOOLKIT"),'IBFORM("COMPILED") D COMPILE^IBDF19 Q:'IBFORM("COMPILED")
 ;
 S REPRINT=0
 ;if printing a form with patient data to paper get id for form tracking
 I '$G(IBDSAMP),IBFORM("COMPILED"),IBPRINT("WITH_DATA"),'IBDEVICE("CRT") S IBPFID=+$$FID^IBDF18C(DFN,IBAPPT,1,IBFORM("TYPE"),IBCLINIC) I $P($G(^IBD(357.96,+IBPFID,1,0)),"^",4) S REPRINT=1
 ;
 D ARRAYS^IBDFU1C(.IBFORM,.IBARRAY)
 I 'IBFORM("TOOLKIT"),WITHDATA D JUSTDATA(WITHDATA)
 I IBFORM("TOOLKIT") D DRWBLKS
 ;
 ;if no graphics and not PCL replace graphics with something printable
 I 'IBDEVICE("PCL") D REPLACE
 ;
 ;can not do underlining on a CRT
 I IBDEVICE("CRT") S IBARRAY("UNDERLINES")="IBARRAY(""UNDERLINES"")"
 ;
 ;print the form
 D LNPRINT^IBDF2F($G(IBPFID))
 ;
 ;print the overflow report
 I IBPRINT("WITH_DATA") D OVERFLOW^IBDF1B3
 ;
 K ^TMP("IB",$J,"INTERFACES"),^TMP("IBDF",$J,"FORM")
 ;
 ;reset printer defaults if PCL5
 I $G(IBDEVICE("PCL")) S %ZIS="0Q",IOP=ION_";"_IOST_";"_IOM_";"_IOSL D ^%ZIS
 Q
 ;
DRWBLKS ;draws all the form's blocks
 N IBBLK,RTNLIST
 S IBBLK="" F  S IBBLK=$O(^IBE(357.1,"C",IBFORM,IBBLK)) Q:'IBBLK  D DRWBLOCK^IBDF2A1(IBBLK,0)
 Q
 ;
JUSTDATA(WITHDATA) ;draws the form's data fields and dynamic selection lists, just the portion that may change with data
 ;WITHDATA means to fill in with data
 ;
 N IBBLK,RTNLIST,IBFLD,IBLIST,SUB,NODE,IBPRINT
 ;
 D PRNTPRMS^IBDFU1C(.IBPRINT,WITHDATA,0,0,1)
 ;
 I IBDEVICE("LISTMAN") N IBWARN S IBWARN=0
 S IBBLK="" F  S IBBLK=$O(^IBE(357.1,"C",IBFORM,IBBLK)) Q:'IBBLK  D
 .Q:$$BLKDESCR^IBDFU1B(.IBBLK)
 .S IBFLD="" F  S IBFLD=$O(^IBE(357.5,"C",IBBLK,IBFLD)) Q:'IBFLD  D DATAFLD^IBDF2B(IBFLD)
 .S:'IBPRINT("WITH_DATA") IBPRINT("ENTIRE")=1 S IBLIST="" F  S IBLIST=$O(^IBE(357.2,"AD",IBBLK,IBLIST)) Q:'IBLIST  D PRINTLST^IBDF2D(IBLIST)
 .I IBDEVICE("LISTMAN") S SUB=0 F  S SUB=$O(^IBE(357.1,IBBLK,"B",SUB)) Q:'SUB  S NODE=$G(^IBE(357.1,IBBLK,"B",SUB,0)) D DRWSTR^IBDFU(+$P(NODE,"^")\1,+$P(NODE,"^",2),"[ ]")
 Q
 ;
REPLACE ;replace objects requiring PCL with plain text
 N IBROW,IBCOL,IBBLK
 D PRNTPRMS^IBDFU1C(.IBPRINT,0,1,0,1)
 S IBBLK("X")=0,IBBLK("Y")=0
 I 'IBDEVICE("GRAPHICS") D
 .S IBROW="" F  S IBROW=$O(@IBARRAY("GRAPHICS")@(IBROW)) Q:IBROW=""  S IBCOL="" F  S IBCOL=$O(@IBARRAY("GRAPHICS")@(IBROW,IBCOL)) Q:IBCOL=""  D DRWSTR^IBDFU(IBROW,IBCOL,$G(@IBARRAY("GRAPHICS")@(IBROW,IBCOL)),"G")
 .S IBARRAY("GRAPHICS")="IBARRAY(""GRAPHICS"")"
 ;
 ;replace bubbles with "[ ]"
 S IBROW="" F  S IBROW=$O(@IBARRAY("BUBBLES")@(IBROW)) Q:IBROW=""  S IBCOL="" F  S IBCOL=$O(@IBARRAY("BUBBLES")@(IBROW,IBCOL)) Q:IBCOL=""  D DRWSTR^IBDFU(IBROW\1,IBCOL,"[ ]")
 S IBARRAY("BUBBLES")="IBARRAY(""BUBBLES"")"
 ;
 ;now replace hand print fields
 S IBROW="" F  S IBROW=$O(@IBARRAY("HAND_PRINT")@(IBROW)) Q:IBROW=""  S IBCOL="" F  S IBCOL=$O(@IBARRAY("HAND_PRINT")@(IBROW,IBCOL)) Q:IBCOL=""  S HAND=0 F  S HAND=$O(@IBARRAY("HAND_PRINT")@(IBROW,IBCOL,HAND)) Q:'HAND  D
 .N ROW
 .S NODE=$G(@IBARRAY("HAND_PRINT")@(IBROW,IBCOL,HAND)),WIDTH=$P(NODE,"^",3),LINES=$P(NODE,"^",6),TYPE=$P(NODE,"^",14),(UNIT,PRINT)="" I $P(NODE,"^",17) S NODE=$G(^IBE(359.1,$P(NODE,"^",17),0)),UNIT=$P(NODE,"^",11),PRINT=$P(NODE,"^",5)
 .Q:('WIDTH)!('TYPE)
 .S STRING=""
 .S:LINES'>0 LINES=1
 .S ROW=IBROW
 .I TYPE=1 D CNVRTLEN^IBDF2D1(WIDTH,.WIDTH),CNVRTHT^IBDF2D1(LINES,.LINES)
 .I TYPE=2 F  Q:LINES'>0  D  S LINES=LINES-1,ROW=IBROW+2
 ..N REPLACE,A,I
 ..I IBFORM("WIDTH")>96 S $P(STRING,"___|",WIDTH+1)="",REPLACE("_")="    " F I=1:1:$L(PRINT) S A=$E(PRINT,I) S:A'="_" REPLACE(A)=" "_A_"  "
 ..I IBFORM("WIDTH")'>96 S $P(STRING,"__|",WIDTH+1)="",REPLACE("_")="   " F I=1:1:$L(PRINT) S A=$E(PRINT,I) S:A'="_" REPLACE(A)=" "_A_" "
 ..S:$L(UNIT) STRING=STRING_" "_UNIT
 ..I $L(PRINT) S PRINT=$$REPLACE^XLFSTR(PRINT,.REPLACE)
 ..D:$L(PRINT) DRWSTR^IBDFU(ROW,IBCOL,PRINT,"",$L(STRING))
 ..D DRWSTR^IBDFU(ROW+1,IBCOL,STRING,"",$L(STRING))
 .I TYPE=1 S $P(STRING,"_",WIDTH+1)="_" D DRWSTR^IBDFU(ROW+LINES-1,IBCOL,STRING,"")
 S IBARRAY("HAND_PRINT")="IBARRAY(""HAND_PRINT"")"
 Q
