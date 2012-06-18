TIUPRDS1 ; SLC/SBW,JER - Print DS Form 10-1000 ;26-Feb-2010 11:58;MGH
 ;;1.0;TEXT INTEGRATION UTILITIES;**55,52,162,1007**;Jun 20, 1997;Build 5
 ;IHS/ITSC/LJF 02/26/2003 add "unsigned" to draft for clarity and checked for amended
 ;                        skipped lines not needed by IHS
 ;IHS/MSC/MGH 02/25/10 added local changes to patch 1007 after patch 162 update
PRINT(TIUDA,TIUFLAG) ; Print Summary
 ; TIUCONT=1 for Continue, 0 for Exit, NULL for Timeout.
 ; Returned from $$Stop
 N TIUADD,TIUPAGE,TIUCOPY,TIUSTAT,TIUCONT,TIUY,TIU
 S TIUPAGE=1 D GETTIU^TIULD(.TIU,TIUDA)
 I +$G(TIU("LDT")),+$G(TIU("AD#")) D  I 1
 . N DGPMIFN S DGPMIFN=+$G(TIU("AD#")) D ^DGPMLOS S TIU("DAYS")=X
 E  S TIU("WARD")=""
 I $E(IOST)="P",+$G(TIUFLAG) S TIUCOPY=$S(+TIUFLAG=2:"ELECTRONICALLY SIGNED CHART COPY",1:"C H A R T   C O P Y")
 ;
 ; IHS/ITSC/LJF 02/26/2003 added check for amended, added "unsigned" to draft
 ;E  S TIUSTAT=$$STATUS^TIULC(TIUDA),TIUCOPY=$S(TIUSTAT="completed":"C O P Y",1:"D R A F T")
 E  S TIUSTAT=$$STATUS^TIULC(TIUDA),TIUCOPY=$S(TIUSTAT="completed":"C O P Y",TIUSTAT="amended":"C O P Y",1:"U N S I G N E D  D R A F T")
 ; IHS/ITSC/LJF 02/26/2003 end of mods
 ;
 W:$E(IOST)="C" @IOF D HEADER^TIUPRDS2(TIUDA,.TIU,TIUFLAG,.TIUPAGE)
 G REPORT ;IHS/ITSC/LJF 02/26/2003 skip dictation lines in summary
 W !,"DICTATION DATE: ",$P(^TMP("TIULQ",$J,TIUDA,1307,"E"),"@"),?40,"TRANSCRIPTION DATE: ",$P(^TMP("TIULQ",$J,TIUDA,1201,"E"),"@")
 W !,"TRANSCRIPTIONIST: ",^TMP("TIULQ",$J,TIUDA,1302,"E")
 W:$E(IOST)'="C" !!
REPORT ; Report Text
 N DIW,DIWF,DIWL,DIWR,DIWT,TIUI,X,Z K ^UTILITY($J,"W")
 S TIUI=0,TIUCONT=1,TIUY=6,DIWF="WN",DIWL=1,DIWR=79
 F  S TIUI=$O(^TMP("TIULQ",$J,TIUDA,"TEXT",TIUI)) Q:TIUI'>0  D  Q:'TIUCONT
 . D SETCONT() Q:'TIUCONT
 . S X=^TMP("TIULQ",$J,TIUDA,"TEXT",TIUI,0) S:X="" X=" " D ^DIWP
 D ^DIWW K ^UTILITY($J,"W")
 Q:'TIUCONT
AMENDMNT ;If DCS has been amended, next lines are printed.
 S TIUY=9 D SETCONT() Q:'TIUCONT
 I +$G(^TMP("TIULQ",$J,TIUDA,1601,"I")) D
 . W !!,^TMP("TIULQ",$J,TIUDA,1601,"E"),?23,"AMENDMENT FILED:"
 . I $G(^TMP("TIULQ",$J,TIUDA,1603,"E"))']"" W !!?23 F TIUI=1:1:40 W "_"
 . I $G(^TMP("TIULQ",$J,TIUDA,1604,"E"))]"" D
 . . W !?17,"/es/",?23,^TMP("TIULQ",$J,TIUDA,1604,"E")
 . . W !?23,$G(^TMP("TIULQ",$J,TIUDA,1605,"E"))
RPTSIG ; Signature should be on bottom of form, Addenda on Subsequent pages
 N TIULINE,TIUSBLK,EXPSGNR,ATTNDNG
 S EXPSGNR=+$G(^TMP("TIULQ",$J,TIUDA,1204,"I"))
 S ATTNDNG=+$G(^TMP("TIULQ",$J,TIUDA,1209,"I"))
 D LOADSIG^TIULS1(.TIUSBLK,$NA(^TMP("TIULQ",$J,TIUDA)))
 S $P(TIULINE,"-",IOM)=""
 S TIUY=TIUSBLK+8 D SETCONT() Q:'TIUCONT
 I (IOT'="HFS")!(IOSL<250) F  Q:$Y+TIUY>IOSL  W ! ;move SIG to pg Bottom
 I +$G(TIUFLAG) W !,TIULINE
 E  W !,"WORK COPY =========== UNOFFICIAL - NOT FOR MEDICAL RECORD ========== DO NOT FILE"
 I EXPSGNR'=ATTNDNG W !,"SIGNATURE PHYSICIAN/DENTIST",?39,"SIGNATURE APPROVING PHYSICIAN/DENTIST"
 E  W !?39,"SIGNATURE APPROVING PHYSICIAN/DENTIST"
 W ! S TIUI=0 F  S TIUI=$O(TIUSBLK(TIUI)) Q:+TIUI'>0  W !,TIUSBLK(TIUI)
 G ADDENDA ;IHS/ITSC/LJF 02/26/2003 skip next 2 lines
 I +$G(TIUFLAG) W !,TIULINE
 E  W !,"=========================== CONFIDENTIAL INFORMATION ==========================="
ADDENDA ; Discharge Summary Addenda
 N DIW,DIWF,DIWL,DIWR,DIWT,X,Z K ^UTILITY($J,"W")
 S TIUADD=0,DIWF="WN",DIWL=1,DIWR=79
 F  S TIUADD=$O(^TMP("TIULQ",$J,TIUDA,"ZADD",TIUADD)) Q:TIUADD'>0  D  Q:'TIUCONT
 . S TIUY=6 D SETCONT() Q:'TIUCONT
 . W !!,$G(^TMP("TIULQ",$J,TIUDA,"ZADD",TIUADD,1201,"E")),?23,"ADDENDUM" ;P162
 . W ?39,"STATUS: ",$G(^TMP("TIULQ",$J,TIUDA,"ZADD",TIUADD,.05,"E")) ;P162
 . S TIUI=0
 . F  S TIUI=$O(^TMP("TIULQ",$J,TIUDA,"ZADD",TIUADD,"TEXT",TIUI)) Q:TIUI'>0  D  Q:'TIUCONT
 . . D SETCONT() Q:'TIUCONT
 . . S X=^TMP("TIULQ",$J,TIUDA,"ZADD",TIUADD,"TEXT",TIUI,0) S:X="" X=" " D ^DIWP
 . D ^DIWW
 . D:TIUCONT ADDENSIG
 ; Next line moves footer to bottom of page/screen
 I TIUCONT,((IOT'="HFS")!(IOSL<250)) S TIUY=6 F  Q:$Y+TIUY>IOSL  W !
 I  D SETCONT(1)
 K ^UTILITY($J,"W")
 Q
ADDENSIG ;
 N TIUSBLK,EXPSGNR,ATTNDNG
 D LOADSIG^TIULS1(.TIUSBLK,$NA(^TMP("TIULQ",$J,TIUDA,"ZADD",TIUADD)))
 S $P(TIULINE,"-",80)=""
 S EXPSGNR=$G(^TMP("TIULQ",$J,TIUDA,"ZADD",TIUADD,1204,"I"))
 S ATTNDNG=$G(^TMP("TIULQ",$J,TIUDA,"ZADD",TIUADD,1209,"I"))
 S TIUY=12 D SETCONT() Q:'TIUCONT
 I EXPSGNR'=ATTNDNG W !,"SIGNATURE PHYSICIAN/DENTIST",?39,"SIGNATURE APPROVING PHYSICIAN/DENTIST"
 E  W !?39,"SIGNATURE APPROVING PHYSICIAN/DENTIST"
 W ! S TIUI=0 F  S TIUI=$O(TIUSBLK(TIUI)) Q:+TIUI'>0  W !,TIUSBLK(TIUI)
 Q
SETCONT(TIUHEAD) ;Does footer and sets TIUCONT
 S TIUCONT=$$FOOTER^TIUPRDS2(TIUDA,.TIU,TIUFLAG,.TIUPAGE,TIUCOPY,$G(TIUHEAD))
 Q
