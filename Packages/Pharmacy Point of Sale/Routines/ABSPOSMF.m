ABSPOSMF ; IHS/SD/RLT - Medicare Part D Insurer Report ;     [ 01/30/06  09:20 AM ]
 ;;1.0;PHARMACY POINT OF SALE;**16,19,29,37,44**;JAN 30, 2006;Build 15
 Q
 ;
 ;----------------------------------------------------------
 ;IHS/SD/RLT - 10/13/06 - Patch 19
 ; Report not printing to network devices.  Fixed by adding
 ; U IO in tag EN.
 ;----------------------------------------------------------
 ;----------------------------------------------------------
 ;IHS/OIT/SCR - 01/16/09- Patch 29
 ; ADDED EN2 and GETDATA2 for sort by site report
 ;----------------------------------------------------------
EN ;EP
 ;
 W @IOF
 W "Totals by Medicare Part D Insurers",!
 N RANGE S RANGE=$$DTR^ABSPOSU1 Q:RANGE<1
 W !
 N POP D ^%ZIS Q:$G(POP)
 D SETTMP
 D GETDATA($P(RANGE,U),$P(RANGE,U,2))
 U IO        ;IHS/SD/RLT - 10/13/06
 D DISDATA
 D ^%ZISC
 K ^TMP("ABSPOSMF",$J)
 Q
 ;
EN2 ;EP
 ;IHS/OIT/SCR 01/02/09 add to filter by site
 W @IOF
 N ABSPHARM
 W "Totals by Medicare Part D Insurers For site",!
 N RANGE S RANGE=$$DTR^ABSPOSU1 Q:RANGE<1
 S DIC="^ABSP(9002313.56,"
 S DIC(0)="AE"
 S DIC("A")="PHARMACY: "
 S DIC("B")=$P($G(^ABSP(9002313.56,1,0)),"^",1)
 D ^DIC
 Q:Y<0
 S ABSPHARM=$P(Y,"^",1)
 W !
 N POP D ^%ZIS Q:$G(POP)
 D SETTMP
 D GETDATA2($P(RANGE,U),$P(RANGE,U,2),ABSPHARM)
 U IO        ;IHS/SD/RLT - 10/13/06
 D DISDATA
 D ^%ZISC
 K ^TMP("ABSPOSMF",$J)
 Q
 ;
GETDATA(BEGDT,ENDDT) ;
 N RMRELDT,RMIEN,RMNODE0,IEN57,INSIEN,INSNAME
 N PAY,ADJ,PAP,REJ,UNI
 N ABSPCLSD   ;;IHS/OIT/SCR 022010 patch 37
 S RMRELDT=BEGDT-1
 F  S RMRELDT=$O(^ABSPECX("RPT","B",RMRELDT)) Q:'RMRELDT!(RMRELDT>ENDDT)  D
 . S RMIEN=0
 . F  S RMIEN=$O(^ABSPECX("RPT","B",RMRELDT,RMIEN)) Q:'RMIEN  D
 . . S RMNODE0=^ABSPECX("RPT",RMIEN,0)
 . . S IEN57=$P(RMNODE0,U,3)                              ;9002313.57
 . . Q:IEN57=""
 . . S INSIEN=$$GET1^DIQ(9002313.57,IEN57_",",1.06,"I")   ;9999999.18
 . . Q:INSIEN=""                                          ;and 9002313.4
 . . S INSNAME=$$GET1^DIQ(9002313.57,IEN57_",",1.06)
 . . Q:INSNAME=""
 . . S ABSPCLSD=$$GET1^DIQ(9002313.57,IEN57_",",901,"I")  ;IHS/OIT/SCR 022010 patch 37
 . . Q:ABSPCLSD
 . . Q:'$D(^TMP("ABSPOSMF",$J,INSNAME))       ;quit if not already in ^TMP
 . . S PAY=$$GET1^DIQ(9002313.61,RMIEN_",",10006)
 . . S:PAY="" PAY=0
 . . S ADJ=$$GET1^DIQ(9002313.61,RMIEN_",",10007)
 . . S:ADJ="" ADJ=0
 . . S PAP=$$GET1^DIQ(9002313.61,RMIEN_",",10010)
 . . S:PAP="" PAP=0
 . . S REJ=$$GET1^DIQ(9002313.61,RMIEN_",",10013)
 . . S:REJ="" REJ=0
 . . ;
 . . ;Subtotals
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U)+PAY
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U,2)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U,2)+ADJ
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U,3)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U,3)+PAP
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U,4)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U,4)+REJ
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U,5)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U,5)+1
 . . ;
 . . ;Total
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U)+PAY
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U,2)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U,2)+ADJ
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U,3)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U,3)+PAP
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U,4)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U,4)+REJ
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U,5)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U,5)+1
 Q
GETDATA2(BEGDT,ENDDT,ABSPHARM) ;
 ;IHS/OIT/SCR 01/02/08 ADDED TO FILTER RESULTS TO DISPLAY ONLY ONE PHARMACY
 N RMRELDT,RMIEN,RMNODE0,IEN57,INSIEN,INSNAME
 N PAY,ADJ,PAP,REJ,UNI,APSPHRM,ABSPCLSD
 S RMRELDT=BEGDT-1
 F  S RMRELDT=$O(^ABSPECX("RPT","B",RMRELDT)) Q:'RMRELDT!(RMRELDT>ENDDT)  D
 . S RMIEN=0
 . F  S RMIEN=$O(^ABSPECX("RPT","B",RMRELDT,RMIEN)) Q:'RMIEN  D
 . . S RMNODE0=^ABSPECX("RPT",RMIEN,0)
 . . S IEN57=$P(RMNODE0,U,3)                              ;9002313.57
 . . Q:IEN57=""
 . . S INSIEN=$$GET1^DIQ(9002313.57,IEN57_",",1.06,"I")   ;9999999.18
 . . Q:INSIEN=""                                          ;and 9002313.4
 . . S INSNAME=$$GET1^DIQ(9002313.57,IEN57_",",1.06)
 . . Q:INSNAME=""
 . . S ABSPPHRM=$$GET1^DIQ(9002313.57,IEN57_",",1.07,"I")
 . . Q:ABSPPHRM'=ABSPHARM
 . . S ABSPCLSD=$$GET1^DIQ(9002313.57,IEN57_",",901,"I")  ;IHS/OIT/SCR 022010 patch 37
 . . Q:ABSPCLSD
 . . ;QUIT IF THIS RECORD IS NOT FOR THE SELECTED PHARMACY?
 . . Q:'$D(^TMP("ABSPOSMF",$J,INSNAME))       ;quit if not already in ^TMP
 . . S PAY=$$GET1^DIQ(9002313.61,RMIEN_",",10006)
 . . S:PAY="" PAY=0
 . . S ADJ=$$GET1^DIQ(9002313.61,RMIEN_",",10007)
 . . S:ADJ="" ADJ=0
 . . S PAP=$$GET1^DIQ(9002313.61,RMIEN_",",10010)
 . . S:PAP="" PAP=0
 . . S REJ=$$GET1^DIQ(9002313.61,RMIEN_",",10013)
 . . S:REJ="" REJ=0
 . . ;
 . . ;Subtotals
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U)+PAY
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U,2)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U,2)+ADJ
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U,3)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U,3)+PAP
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U,4)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U,4)+REJ
 . . S $P(^TMP("ABSPOSMF",$J,INSNAME),U,5)=$P($G(^TMP("ABSPOSMF",$J,INSNAME)),U,5)+1
 . . ;
 . . ;Total
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U)+PAY
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U,2)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U,2)+ADJ
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U,3)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U,3)+PAP
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U,4)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U,4)+REJ
 . . S $P(^TMP("ABSPOSMF",$J,"ZZZZTOTAL"),U,5)=$P($G(^TMP("ABSPOSMF",$J,"ZZZZTOTAL")),U,5)+1
 Q
DISDATA ;
 N DASHES
 S $P(DASHES,"-",80)=""
 N INSNAME,INSREC,PAY,ADJ,PAP,REJ,UNI,CNT
 D HEADING
 I '$D(^TMP("ABSPOSMF",$J)) D  Q
 . W !,"No Medicare D prescriptions found!"
 . D ENDRPT^ABSPOSU5()
 S INSNAME=""
 F  S INSNAME=$O(^TMP("ABSPOSMF",$J,INSNAME)) Q:INSNAME=""  D
 . S INSREC=$G(^TMP("ABSPOSMF",$J,INSNAME))
 . S PAY=$P(INSREC,U)
 . S ADJ=$P(INSREC,U,2)
 . S PAP=$P(INSREC,U,3)
 . S REJ=$P(INSREC,U,4)
 . S CNT=$P(INSREC,U,5)
 . I INSNAME="ZZZZTOTAL" W !,"TOTAL",!
 . E  W !,INSNAME,!
 . W ?20,$J(PAY,10,2)
 . W ?33,$J(ADJ,10,2)
 . W ?46,$J(PAP,10,2)
 . W ?59,$J(REJ,10,2)
 . W ?72,$J(CNT,7)
 . W !,DASHES
 . I $$EOPQ^ABSPOSU8(3,,"D HEADING^"_$T(+0)) S INSNAME="ZZZZZ"
 D ENDRPT^ABSPOSU5()
 W @IOF
 Q
HEADING ;
 W @IOF
 N RPTDATE S RPTDATE=$$NOWEXT^ABSPOSU1
 W "TOTALS BY MEDICARE PART D INSURERS (",$T(+0),")",?60,RPTDATE
 W !,"For "
 N Y S Y=$P(RANGE,U) X ^DD("DD") W Y
 W " through "
 S Y=$P(RANGE,U,2) X ^DD("DD") W Y
 W !!,?21,"PAYABLE",?34,"ADJUSTED",?48,"PAPER",?60,"REJECTED",?72,"RX CNT"
 W !,DASHES
 Q
SETTMP ;Build ^TMP global with all Medicare D insurers in the
 ;ABSP Insurer file.
 ;Set all amounts to zero.  Want to report insurers not
 ;being used.
 K ^TMP("ABSPOSMF",$J)
 N INSIEN,INSNAME,FRMIEN,FRMNAME,MPDFLG
 S INSIEN=0
 F  S INSIEN=$O(^ABSPEI(INSIEN)) Q:'INSIEN  D
 . S INSNAME=$$GET1^DIQ(9002313.4,INSIEN_",",.01)
 . Q:INSNAME=""
 . ;OIT/CAS/RCS Patch 44 07022012 - Comment next 3 lines, no longer looking for format, HEAT # 71654
 . ;S FRMIEN=$$GET1^DIQ(9002313.4,INSIEN_",",100.01,"I")
 . ;Q:FRMIEN=""        ;quit if insurer not tied to a format
 . ;S FRMNAME=$$GET1^DIQ(9002313.4,INSIEN_",",100.01)
 . ;OIT/CAS/RCS Patch 44 07022012 - Comment next line and look at new location in Insurer file for Medicare Part D flag
 . ;S MPDFLG=$$GET1^DIQ(9002313.92,FRMIEN_",",1.2)
 . S MPDFLG=$$GET1^DIQ(9002313.4,INSIEN_",",100.18)
 . Q:MPDFLG'="Y"      ;quit if not a Medicare D format
 . S ^TMP("ABSPOSMF",$J,INSNAME)="0^0^0^0^0"
 Q
