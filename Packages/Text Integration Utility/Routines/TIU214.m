TIU214 ; VMP/JML -  ID NOTES with Mismatched Patients ;11-Feb-2013 08:57;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**214,1011**;Jun 20, 1997;Build 13
 ; Report/Fix ID Documents where the child note points to a parent note for a different patient.
 ; Report only  Documents where the child note points to a parent that may not be an id note.
 ;IHS/MSC/MGH changed to use HRCN patch 1011
 Q
EN ; Build array of mismatched ID documents
 N TIUPRNT,TIUCHILD,TIUPDFN,TIUCDFN,TIUPNAME,TIUCNAME,TIUP0,TIUC0,TIUCAUTH,TIUCTITL,TIUDATA,TIUBAD
 N TIUC12,TIUCEDT,TIUPAUTH,TIUPTITL,TIUP12,TIUPEDT,TIUFIX,Y,DFN,%ZIS,POP,DIR,DIRUT,TIULEN,TIUDUZ
 S DIR(0)="SO^1:REPORT;2:FIX"
 S DIR("L",1)="Report only or Report AND fix the bad pointers?"
 S DIR("L",2)=""
 S DIR("L",3)="1 - Report Only"
 S DIR("L")="2 - Report and Fix"
 S DIR("B")=1
 D ^DIR K DIR
 Q:$G(DIRUT)
 S TIUFIX=$S(Y=2:1,1:0),TIUDUZ=$G(DUZ)
 S %ZIS="Q" D ^%ZIS
 Q:$G(POP)>0
 I $G(IO("Q"))=1 D  Q
 .N ZTRTN,ZTDESC,ZTSAVE
 .S ZTRTN="SEARCH^TIU214",ZTDESC="Mismatched ID Note Report",ZTSAVE("TIU*")=""
 .D ^%ZTLOAD K IO("Q")
SEARCH ;
 K ^TMP("TIU214",$J)
 S ^TMP("TIU214",$J)=0,^TMP("TIU214",$J,"MISMATCH")=0,^TMP("TIU214",$J,"MISSING")=0,^TMP("TIU214",$J,"NONPRNT")=0
 I $E(IOST,1,2)="C-" W @IOF,!!?5,"Searching for Parent/Child ID Notes with mismatched patients...",!!
 S TIUPRNT=0
 F  S TIUPRNT=$O(^TIU(8925,"GDAD",TIUPRNT)) Q:TIUPRNT=""  D
 . S ^TMP("TIU214",$J)=^TMP("TIU214",$J)+1
 . S TIUCHILD=0
 . F  S TIUCHILD=+$O(^TIU(8925,"GDAD",TIUPRNT,TIUCHILD)) Q:'TIUCHILD  D
 . . S TIUC0=$G(^TIU(8925,TIUCHILD,0)),TIUCDFN=$P(TIUC0,U,2)
 . . S TIUCNAME=$$PNAME(TIUCDFN)
 . . S TIUCAUTH=$$GET1^DIQ(8925,TIUCHILD_",",1202)
 . . S TIUCTITL=$$GET1^DIQ(8925,TIUCHILD_",",.01)
 . . S TIUC12=$G(^TIU(8925,TIUCHILD,12))
 . . S Y=$P(TIUC12,"^") D DD^%DT S TIUCEDT=Y
 . . S TIUP0=$G(^TIU(8925,TIUPRNT,0)),TIUPDFN=$P(TIUP0,U,2)
 . . I TIUP0="" D  Q
 . . . S ^TMP("TIU214",$J,"MISSING")=^TMP("TIU214",$J,"MISSING")+1
 . . . S ^TMP("TIU214",$J,"MISSING",TIUPRNT,TIUCHILD)=TIUCNAME_"^"_TIUCTITL_"^"_TIUCEDT_"^"_TIUCAUTH
 . . I TIUPDFN'=TIUCDFN  D  Q
 . . . S TIUPNAME=$$PNAME(TIUPDFN)
 . . . S ^TMP("TIU214",$J,"MISMATCH")=^TMP("TIU214",$J,"MISMATCH")+1
 . . . I '$D(^TMP("TIU214",$J,"MISMATCH",TIUPRNT)) D
 . . . . S TIUPAUTH=$$GET1^DIQ(8925,TIUPRNT_",",1202)
 . . . . S TIUPTITL=$$GET1^DIQ(8925,TIUPRNT_",",.01)
 . . . . S TIUP12=$G(^TIU(8925,TIUPRNT,12))
 . . . . S Y=$P(TIUP12,"^") D DD^%DT S TIUPEDT=Y
 . . . . S ^TMP("TIU214",$J,"MISMATCH",TIUPRNT)=TIUPNAME_"^"_TIUPTITL_"^"_TIUPEDT_"^"_TIUPAUTH_"^"_TIUPRNT
 . . . S ^TMP("TIU214",$J,"MISMATCH",TIUPRNT,TIUCHILD)=TIUCNAME_"^"_TIUCTITL_"^"_TIUCEDT_"^"_TIUCAUTH_"^"_TIUCHILD
 . . S TIUBAD="" S TIUBAD=$$POSSPRNT^TIULP(+TIUP0) I '+TIUBAD D  Q
 . . . S ^TMP("TIU214",$J,"NONPRNT")=^TMP("TIU214",$J,"NONPRNT")+1
 . . . S TIUPAUTH=$$GET1^DIQ(8925,TIUPRNT_",",1202)
 . . . S TIUPTITL=$$GET1^DIQ(8925,TIUPRNT_",",.01)
 . . . S TIUP12=$G(^TIU(8925,TIUPRNT,12))
 . . . S Y=$P(TIUP12,"^") D DD^%DT S TIUPEDT=Y
 . . . S ^TMP("TIU214",$J,"NONPRNT",TIUPRNT,TIUCHILD)=TIUCNAME_"^"_TIUPTITL_"^"_TIUPEDT_"^"_TIUPAUTH_"^"_TIUPRNT_"^"_TIUCTITL
 D REPORT
 D MAIL
 K ^TMP("TIU214",$J)
 D ^%ZISC
 Q
REPORT ;
 U IO
 N TIUQUIT,TIUHIDE,TIUCINFO,TIUPINFO,TIUSHOW
 S TIUQUIT=0,TIUSHOW=$S(IOST["P-":0,1:1)
 S ^TMP("TIU214",$J,"FIX_MISMATCH_PTR")=0,^TMP("TIU214",$J,"FIX_MISMATCH_XREF")=0
 S ^TMP("TIU214",$J,"FIX_MISSING_PTR")=0,^TMP("TIU214",$J,"FIX_MISSING_XREF")=0
 I IOST["C-" D CLEAR^VALM1
 S TIUDATA=0,TIULEN=$S(IOST["C-":8,1:6)
 I TIUFIX S TIULEN=TIULEN+1
 D HDR1(0)
 S TIUPRNT=""
 F  S TIUPRNT=$O(^TMP("TIU214",$J,"MISMATCH",TIUPRNT)) Q:TIUPRNT=""!(TIUQUIT)  D
 .S TIUPINFO=$G(^TMP("TIU214",$J,"MISMATCH",TIUPRNT))
 .S TIUCHILD=""
 .F  S TIUCHILD=$O(^TMP("TIU214",$J,"MISMATCH",TIUPRNT,TIUCHILD)) Q:TIUCHILD=""!(TIUQUIT)  D
 ..S TIUCINFO=$G(^TMP("TIU214",$J,"MISMATCH",TIUPRNT,TIUCHILD))
 ..I $Y>(IOSL-TIULEN) D PAUSE Q:TIUQUIT  D HDR1(1)
 ..I TIUSHOW D
 ...W !!," Patient: ",$E($P(TIUCINFO,"^",1),1,26)," (",$P(TIUCINFO,"^",2),")"
 ...W ?45,$E($P(TIUPINFO,"^",1),1,26)," (",$P(TIUPINFO,"^",2),")"
 ..I 'TIUSHOW D
 ...W !!," Patient: ",$P(TIUCINFO,"^",2)
 ...W ?45,$P(TIUPINFO,"^",2)
 ..W !,"   Title: ",$E($P(TIUCINFO,"^",3),1,33),?45,$E($P(TIUPINFO,"^",3),1,33)
 ..W !,"Entry DT: ",$E($P(TIUCINFO,"^",4),1,33),?45,$E($P(TIUPINFO,"^",4),1,33)
 ..W !,"  Author: ",$E($P(TIUCINFO,"^",5),1,33),?45,$E($P(TIUPINFO,"^",5),1,33)
 ..W !,"Note IEN: ",$E($P(TIUCINFO,"^",6),1,33),?45,$E($P(TIUPINFO,"^",6),1,33)
 ..I TIUFIX D
 ...I $G(^TIU(8925,TIUCHILD,21))=TIUPRNT D  Q
 ....N DIE,DA,DR
 ....S DIE=8925,DA=TIUCHILD,DR="2101///@" D ^DIE
 ....W !?5,"..... Removed pointer from child to parent."
 ....S ^TMP("TIU214",$J,"FIX_MISMATCH_PTR")=^TMP("TIU214",$J,"FIX_MISMATCH_PTR")+1
 ...I $G(^TIU(8925,TIUCHILD,21))'=TIUPRNT D
 ....K ^TIU(8925,"GDAD",TIUPRNT,TIUCHILD)
 ....W !?5,"..... Child note did not point to parent. GDAD cross reference removed."
 ....S ^TMP("TIU214",$J,"FIX_MISMATCH_XREF")=^TMP("TIU214",$J,"FIX_MISMATCH_XREF")+1
 Q:TIUQUIT
 I TIUDATA D PAUSE Q:TIUQUIT
 S TIUDATA=0,TIULEN=$S(IOST["C-":9,1:7)
 I TIUFIX S TIULEN=TIULEN+1
 D HDR2(1)
 S TIUPRNT=""
 F  S TIUPRNT=$O(^TMP("TIU214",$J,"MISSING",TIUPRNT)) Q:TIUPRNT=""!(TIUQUIT)  D
 .S TIUCHILD=""
 .F  S TIUCHILD=$O(^TMP("TIU214",$J,"MISSING",TIUPRNT,TIUCHILD)) Q:TIUCHILD=""!(TIUQUIT)  D
 ..S TIUCINFO=^TMP("TIU214",$J,"MISSING",TIUPRNT,TIUCHILD)
 ..I $Y>(IOSL-TIULEN) D PAUSE Q:TIUQUIT  D HDR2(1)
 ..W !!,"   Patient: " W:TIUSHOW $P(TIUCINFO,"^",1)," (" W $P(TIUCINFO,"^",2) W:TIUSHOW ")"
 ..W !,"     Title: ",$P(TIUCINFO,"^",3)
 ..W !,"  Entry DT: ",$P(TIUCINFO,"^",4)
 ..W !,"    Author: ",$P(TIUCINFO,"^",5)
 ..W !," Child IEN: ",TIUCHILD
 ..W !,"Parent IEN: ",TIUPRNT
 ..I TIUFIX D
 ...I $G(^TIU(8925,TIUCHILD,21))=TIUPRNT D  Q
 ....N DIE,DA,DR
 ....S DIE=8925,DA=TIUCHILD,DR="2101///@" D ^DIE
 ....W !?5,"..... Removed pointer from child to parent."
 ....S ^TMP("TIU214",$J,"FIX_MISSING_PTR")=^TMP("TIU214",$J,"FIX_MISSING_PTR")+1
 ...I $G(^TIU(8925,TIUCHILD,21))'=TIUPRNT D
 ....K ^TIU(8925,"GDAD",TIUPRNT,TIUCHILD)
 ....W !?5,"..... Child note did not point to parent. GDAD cross reference removed."
 ....S ^TMP("TIU214",$J,"FIX_MISSING_XREF")=^TMP("TIU214",$J,"FIX_MISSING_XREF")+1
 Q:TIUQUIT
 I TIUDATA D PAUSE Q:TIUQUIT
 S TIUDATA=0,TIULEN=$S(IOST["C-":9,1:7)
 D HDR3(1)
 S TIUPRNT=""
 F  S TIUPRNT=$O(^TMP("TIU214",$J,"NONPRNT",TIUPRNT)) Q:TIUPRNT=""!(TIUQUIT)  D
 .S TIUCHILD=""
 .F  S TIUCHILD=$O(^TMP("TIU214",$J,"NONPRNT",TIUPRNT,TIUCHILD)) Q:TIUCHILD=""!(TIUQUIT)  D
 ..S TIUCINFO=^TMP("TIU214",$J,"NONPRNT",TIUPRNT,TIUCHILD)
 ..I $Y>(IOSL-TIULEN) D PAUSE Q:TIUQUIT  D HDR3(1)
 ..W !!,"        Patient: " W:TIUSHOW $P(TIUCINFO,"^",1)," (" W $P(TIUCINFO,"^",2) W:TIUSHOW ")"
 ..W !,"   Parent Title: ",$P(TIUCINFO,"^",3),"-IEN: ",TIUPRNT
 ..W !,"Parent Entry DT: ",$P(TIUCINFO,"^",4)
 ..W !,"  Parent Author: ",$P(TIUCINFO,"^",5)
 ..W !,"    Child Title: ",$P(TIUCINFO,"^",7),"-IEN: ",TIUCHILD
 Q:TIUQUIT
 I TIUDATA D PAUSE Q:TIUQUIT
 W !,@IOF
 W !!?15,"TOTAL COUNTS FOR MISMATCHED ID NOTES"
 W !?15,"------------------------------------",!
 W !?15,+^TMP("TIU214",$J)_" CROSS REFERENCES CHECKED"
 W !?15,+^TMP("TIU214",$J,"MISMATCH")_" MISSMATCHED NOTE(S) FOUND"
 W !?15,+^TMP("TIU214",$J,"MISSING")_" NON EXISTENT PARENT NOTE(S)"
 W !?15,+^TMP("TIU214",$J,"NONPRNT")_" PARENT MAY NOT BE AN ID NOTE"
 I TIUFIX D
 .W !!?15,+^TMP("TIU214",$J,"FIX_MISMATCH_PTR")_" POINTER(S) FIXED FOR MISMATCHED NOTES"
 .W !?15,+^TMP("TIU214",$J,"FIX_MISMATCH_XREF")_" XREF(S) FIXED FOR MISMATCHED NOTES"
 .W !?15,+^TMP("TIU214",$J,"FIX_MISSING_PTR")_" POINTER(S) FIXED FOR MISSING NOTES"
 .W !?15,+^TMP("TIU214",$J,"FIX_MISSING_XREF")_" XREF(S) FIXED FOR MISSING NOTES"
 Q
MAIL ; EMAIL TOTALS TO B.PSI-06-030 TO TRACK COMPLIANCE
 N XMDUZ,XMSUBJ,XMTO,TIUMAIL,%H,Y
 S XMDUZ="",XMSUBJ="MISMATCHED ID NOTES"
 S TIUMAIL(1,0)=$P($$SITE^VASITE(),"^",1,2)
 S %H=$H D YX^%DTC
 S TIUMAIL(2,0)=Y
 S TIUMAIL(3,0)=""
 S TIUMAIL(4,0)=+^TMP("TIU214",$J)_"  CROSS REFERENCES CHECKED"
 S TIUMAIL(5,0)=+^TMP("TIU214",$J,"MISMATCH")_" MISS MATCHED NOTE(S) FOUND"
 S TIUMAIL(6,0)=+^TMP("TIU214",$J,"MISSING")_" NON EXISTENT PARENT NOTE(S)"
 I 'TIUFIX D
 .S TIUMAIL(7,0)=""
 .S TIUMAIL(8,0)="MODE - REPORT ONLY"
 I TIUFIX D
 .S TIUMAIL(7,0)=""
 .S TIUMAIL(8,0)="MODE - REPORT AND FIX"
 .S TIUMAIL(9,0)=+^TMP("TIU214",$J,"FIX_MISMATCH_PTR")_" POINTER(S) FIXED FOR MISMATCHED NOTES"
 .S TIUMAIL(10,0)=+^TMP("TIU214",$J,"FIX_MISMATCH_XREF")_" XREF(S) FIXED FOR MISMATCHED NOTES"
 .S TIUMAIL(11,0)=+^TMP("TIU214",$J,"FIX_MISSING_PTR")_" POINTER(S) FIXED FOR MISSING NOTES"
 .S TIUMAIL(12,0)=+^TMP("TIU214",$J,"FIX_MISSING_XREF")_" XREF(S) FIXED FOR MISSING NOTES"
 S XMTO("G.PSI-06-030@FORUM.VA.GOV")=""
 D SENDMSG^XMXAPI(XMDUZ,XMSUBJ,"TIUMAIL",.XMTO)
 Q
PNAME(PTDFN) ; Return Patient Name & last 4 of SSN
 N TIUSSN,TIUSSN4,TIUNAME,TIUPN,VADM,HRCN
 I $G(PTDFN)="" Q "UNKNOWN^UNKNOWN"
 ;
 S DFN=PTDFN D DEM^VADPT
 S TIUSSN=$P(VADM(2),"^",2)
 S TIUSSN4=$P(TIUSSN,"-",3)
 ;IHS/MSC/MGH changd to use HRN
 S HRCN=$$HRCN^TIUR2(DFN,+$G(DUZ(2)))
 S TIUSSN4=HRCN
 ;END MOD
 S TIUPN=VADM(1)
 I TIUPN'="" S TIUPN=TIUPN_"^"_$E(TIUPN)_TIUSSN4
 I TIUPN="" S TIUPN="UNKNOWN^UNKNOWN"
 Q TIUPN
HDR1(TIUFF) ;
 Q:^TMP("TIU214",$J,"MISMATCH")=0
 S TIUDATA=1
 I TIUFF W @IOF
 W ?18,"MISMATCHED INTERDISCIPLINARY NOTES"
 W !!?10,"CHILD DOCUMENT",?45,"PARENT DOCUMENT"
 W !?10,"---------------",?45,"--------------" Q
HDR2(TIUFF) ;
 Q:^TMP("TIU214",$J,"MISSING")=0
 S TIUDATA=1
 I TIUFF W @IOF
 W !?11,"CHILD ID NOTES POINTING TO A NON-EXISTENT PARENT ID NOTE" Q
HDR3(TIUFF) ;
 Q:^TMP("TIU214",$J,"NONPRNT")=0
 S TIUDATA=1
 I TIUFF W @IOF
 W !?11,"CHILD ID NOTES POINTING TO A PARENT THAT MAY NOT BE AN ID NOTE"
 W !!?11,"** NOTE: THIS IS AN INFORMATIONAL LIST FOR INVESTIGATION.",!?11,"  NOTHING WILL BE FIXED **" Q
PAUSE ;
 I IOST["C-" D
 .N DIRUT,DIR
 .W ! S DIR(0)="E" D ^DIR K DIR
 .I $G(DIRUT)=1 S TIUQUIT=1
 Q
