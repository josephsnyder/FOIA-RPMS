AGERRAUD ;IHS/ASDS/TPF - EDIT CHECK ERROR AUDIT CAPTURE AND PRINT ROUTINE;    
 ;;7.1;PATIENT REGISTRATION;**1,2,3**;JAN 31, 2007
 ;
 ;THIS ROUTINE WILL COLLECT THE ERRORS/WARNINGS
 ;WHICH ARE FOUND WHILE 'SCANNING' THROUGH THE PATIENT FILE.
 ;THE ERRORS FOUND ARE THEN AVAILABLE FOR PRINTING USING THE 'AG FULL
 ;PATIENT AUDIT REPORTS' OPTION
 ;THE AUDIT WILL BE RUN SPECIFIC TO THE SITE (DUZ(2) UNDER WHICH
 ;IT IS RUN. FOR MULTI DIVISION SITES THE USER RUNNING THE ADUIT
 ;SHOULD LOG INTO EACH SITE, RUN THE AUDIT, THEN PRINT THE REPORTS
 ;WHEN THE AUDIT IS FINISHED. THEN LOG INTO ANOTHER SITE, RUN THE AUDIT
 ;AND DO THE REPORTS. ERRORS REPORTED FOR ONE SITE MAY BE DUPLICATED
 ;ON ANOTHER BECAUSE THE PATIENT HAS AN HRN FOR EACH SITE
 ;
CAPTURE(AUDITERR,PDFN) ;EP
 ;IF PATIENT RECORD FOR DATE IS NOT THERE CREATE IT
 I '$D(^AGERRAUD("C",PDFN,DTREC)) S PTREC=$$NEWPT(DTREC,PDFN)
 E  S PTREC=$O(^AGERRAUD("C",PDFN,DTREC,""))
 I $G(PTREC)<0 W:'$D(ZTQUEUED) !,"UNABLE TO CREATE PATIENT ENTRY IN 'ERROR/WARNING AUDIT' FILE!!" H 3 D EXITCAP Q
 S ERRREC=""
 F  S ERRREC=$O(AUDITERR(ERRREC)) Q:ERRREC=""  D
 .Q:+AUDITERR(ERRREC)=0
 .S ERRCODE=ERRREC
 .I '$D(^AGERRAUD("D",ERRCODE,DTREC,PTREC)) S ERRREC=$$NEWERR(ERRCODE,PTREC,DTREC)
 .E  Q  ;ELSE ERROR ALREADY RECORDED FOR THIS PATIENT NO NEED FOR DUP ENTRY
 .I $G(ERRREC)<0 W:'$D(ZTQUEUED) !,"UNABLE TO CREATE ERROR CODE ENTRY IN 'ERROR/WARNING AUDIT' FILE!!" H 3 D EXITCAP Q
 Q
EXITCAP ;EP - CLEANUP CAPTURE VARS
 K DTREC,PDFN,PTREC,ERRREC,ERRCODE
 Q
NEWPT(DTREC,PDFN) ;ADD PATIENT
 K DIC,DIE,DR,DA
 S DA(1)=DTREC
 S DIC="^AGERRAUD("_DA(1)_",1,"
 S DIC(0)="L"
 S X="`"_PDFN
 D ^DIC
 Q:Y<0 0
 S PTREC=+Y
 S FAC=0
 F  S FAC=$O(^AUPNPAT(PDFN,41,FAC)) Q:'FAC  D
 .S UPDDATE=$P($G(^AUPNPAT(PDFN,0)),U,3)  ;DATE OF LAST REG. UPDATE
 .;IF THERE IS NO DATE OF LAST REG UPDATE FOR THE PATIENT IT MEANS
 .;THE PATIENT WAS REGISTERED BUT NEVER EDITED. IN THIS CASE
 .;USE THE DATE ESTABLISHED FIELD. IF THERE IS NO DATE ESTABLISHED
 .;FOR THIS PATIENT, SET THE DATE TO DT-40000 (4 YEARS AGO)
 .I UPDDATE="" S UPDDATE=$P($G(^AUPNPAT(PDFN,0)),U,2)  ;DATE ESTABLISHED
 .I UPDDATE="" S UPDDATE=DT-30000
 .S ^AGERRAUD("E",FAC,PDFN)=UPDDATE
 K FAC
 Q PTREC
NEWERR(ERRCODE,PTREC,DTREC) ;EP - ADD ERRORS
 K DIC,DIE,DR,DA
 S DA(2)=DTREC
 S DA(1)=PTREC
 S DIC(0)="L"
 S DIC="^AGERRAUD("_DA(2)_",1,"_DA(1)_",1,"
 S X="`"_ERRCODE
 D ^DIC
 ;Q:Y<0
 Q:Y<0 -1 ;AG*7.1*3
 S ERRREC=+Y
 Q ERRREC
EDENTRY(ERRCODE,PDFN) ;EP
 K DIC,DIE,DR,DA
 S DTIEN=$O(^AGERRAUD("B",DT,""))
 S (DA,PTREC)=$O(^AGERRAUD("C",PDFN,DTIEN,""))
 S DIE="^AGERRAUD("_DTIEN_",1,"_PTREC_","
 S DR=.01
 S DR(2,9009061.60101)=".01////^S X=ERRCODE"
 D ^DIE
 Q
PRINT ;EP
 S NOERR=0  ;IHS/SD/TPF 2/21/2006 IM19869
 S:$G(AGLINE("EQ"))="" $P(AGLINE("EQ"),"=",81)=""
 D HDR
 S ERRDT=$O(^AGERRAUD("B",""),-1)
 I 'ERRDT W !!,"NO RECORDS FOUND IN 'AG ERROR/WARNING AUDIT' FILE",!,"YOU MUST FIRST CHOOSE THE FAUD 'FAUD FULL PATIENT FILE AUDIT' OPTION FIRST!!" H 3 Q
 ;AG*7.1*3 IM23869
 S E=$O(^AGERRAUD("E",""))
 I 'E W !!,"NO ERRORS WERE FOUND." D  H 3 S NOERR=1 D ^%ZISC Q
 .W !,$P($G(^AGERRAUD(1,0)),U,2)," RECORDS OUT OF ",$P($G(^AUPNPAT(0)),U,4),!," RECORDS IN THE PATIENT FILE WERE SCREENED FROM ERROR PROCESSING"
 .W !,"IF THE NUMBER OF RECORDS SKIPPED IS VERY CLOSE TO THE NUMBER OF PATIENT RECORDS TRY RUNNING THE FAUD AGAIN"
 S DTREC=$O(^AGERRAUD("B",ERRDT,""))
 S LASTBEG=$P($G(^AGERRAUD(DTREC,0)),U,3)
 S LASTFIN=$P($G(^AGERRAUD(DTREC,0)),U,4)
 I LASTFIN="" S X1=DT,X2=LASTBEG D ^%DTC S DURATION=+X
 I 'LASTFIN D  Q
 .W !!,"THE AUDIT REPORT IS CURRENTLY RUNNING"
 .S Y=LASTBEG X ^DD("DD") S LASTBEG=Y
 .W !,"IT WAS STARTED ON ",LASTBEG
 .I $G(DURATION)>0 D  Q
 ..W !,"THE AUDIT WAS STARTED ",DURATION," DAY",$S(DURATION>1:"S",1:"")," AGO"
 ..W !,"IT SHOULD NOT TAKE THIS LONG. PLEASE REPORT THIS TO YOUR SITE MANAGER." H 2
 .W !,"TRY AGAIN LATER."
 .H 2
 S LASTRUN=$P($G(^AGERRAUD(DTREC,0)),U,3)
 S Y=LASTRUN X ^DD("DD") S LASTRUN=Y
 W !!
 D CENTER("AUDIT REPORT LAST RUN ON "_LASTRUN)
 W !
ASKEWB ;EP - ASK IF ERRORS ONLY, WARNINGS ONLY, OR BOTH
 K DIR
 S DIR(0)="SOX^E:Errors Only;W:Warnings Only;B:Both"
 S DIR("A")="Select one of the following"
 D ^DIR
 I $D(DTOUT)!($D(DUOUT))!($D(DIRUT))!($D(DIROUT)) D EXIT Q
 S CODETYPE=Y
 S PGNUM=0
ASKTYPE ;EP
 K DIR
 S DIR(0)="SOX^S:Summarized Error/Warning;D:Detailed Error/Warning"
 S DIR("A")="Select Summary or Detail"
 D ^DIR
 I $D(DTOUT)!($D(DUOUT))!($D(DIRUT))!($D(DIROUT)) D EXIT Q
 S RPTTYPE=Y
 ;ASK FOR WHAT ERRORS THEY ARE LOOKING FOR
ASKERR ;EP
 K DIR
 S DIR("A")="Choose Error/Warning Type"
 S DIR(0)="SOX^A:ALL;S:SOME"
 D ^DIR
 G:$D(DTOUT)!($D(DUOUT))!($D(DIRUT))!($D(DIROUT)) ASKTYPE
 ;I Y="A" S ASKSOME="ALL" D PRTALL(ASKSOME) G PRINT
 I Y="A" S ASKSOME="ALL" D PRTALL(ASKSOME) Q:$G(NOERR)  G PRINT  ;IHS/SD/TPF 2/21/2006 IM19869
 K ASKSOME
ASKSOME ;EP
 K DIR
 S DIR("A")="Enter "_$S($G(ASKSOME)'="":"more",1:"the")_" error codes you wish to print"
 I CODETYPE'="B" S DIR("S")="I $P(^(0),U,2)=CODETYPE"
 S DIR(0)="PO^9009061.5:EM"
 D ^DIR
 G:X=""&('$D(ASKSOME)) PRINT
 I X="",$D(ASKSOME) D PRTALL(U_ASKSOME) Q:$G(NOERR)  G PRINT  ;IHS/SD/TPF 2/21/2006 IM19869
 ;MAKE SURE THE ERROR CODE MATCHES THE TYPE OF ERROR
 ;SELECTED (ERRORS ONLY,WARNINGS ONLY). DISREGARD IF
 ;SELECTION WAS BOTH.
 K ERRRESP
 I $P($G(^AGEDERRS(+Y,0)),U,2)'=CODETYPE,CODETYPE'="B" D  G ASKSOME
 . S ERRRESP=$S(CODETYPE="E":"ERROR",CODETYPE="W":"WARNING")
 . W !,"THIS IS NOT A ",ERRRESP," CODE"
 I +Y I $G(ASKSOME)'[Y S ASKSOME=$G(ASKSOME)_+Y_U G ASKSOME
 G PRINT
PRTALL(ASKSOME) ;EP
 D ASKLOC
 I '$D(AORONE) G PRINT
 I AORONE="O" D LOCSEL I FACSEL="" G PRINT
 D ASKDATE
 D ^%ZIS Q:POP
 U IO
 D NOW^%DTC S Y=% D DD^%DT S REPTIME=Y
 S ERRTYP="E"
 K ^XTMP("AGERRAUD",$J)
 ;AT THIS TIME THE REQUIREMENT ASKED FOR A DAILY AUDIT. THERE
 ;SHOULD BE NO MORE THAN ONE DATE ENTRY. WE WILL LOOK ONLY AT THE
 ;LAST ENTRY.
 S ERRDT=$O(^AGERRAUD("B",""),-1)
 ;I 'ERRDT W !,"NO RECORDS FOUND IN 'AG ERROR/WARNING AUDIT' FILE" H 3 Q
 I 'ERRDT W !,"NO RECORDS FOUND IN 'AG ERROR/WARNING AUDIT' FILE" H 3 S NOERR=1 D ^%ZISC Q  ;IHS/SD/TPF 2/21/2006 IM19869
 S DTREC=$O(^AGERRAUD("B",ERRDT,""))
 ;FIRST SORT BY ERROR TYPE
 ;I '$D(^AGERRAUD("D")) W !,"NO ERRORS FOUND" H 2 Q
 ;I '$D(^AGERRAUD("D")),($$ERRSITE'="") W !,"NO ERRORS FOUND FOR SITE '"_$P($G(^DIC(4,$$ERRSITE,0)),U)_"'" H 2 Q
 I '$D(^AGERRAUD("D")) W !,"NO ERRORS FOUND IN THE 'AG ERROR/WARNING AUDIT' FILE" H 2 S NOERR=1 D ^%ZISC Q  ;IHS/SD/TPF 2/21/2006 IM19869
 I '$D(^AGERRAUD("D")),($$ERRSITE'="") W !,"NO ERRORS FOUND FOR SITE '"_$P($G(^DIC(4,$$ERRSITE,0)),U)_"' IN THE 'AG ERROR/WARNING AUDIT' FILE" H 2 S NOERR=1 D ^%ZISC Q  ;IHS/SD/TPF 2/21/2006 IM19869
 S ERRCODE=0
 F  S ERRCODE=$O(^AGERRAUD("D",ERRCODE)) Q:'ERRCODE  D
 .I ASKSOME'="ALL" Q:ASKSOME'[(U_ERRCODE_U)
 .S ERRNODE=$G(^AGEDERRS(ERRCODE,0))
 .S ERRTYPE=$P(ERRNODE,U,2)
 .Q:ERRTYPE'=CODETYPE&(CODETYPE'="B")
 .S PTREC=0
 .F NUMPT=1:1 S PTREC=$O(^AGERRAUD("D",ERRCODE,DTREC,PTREC)) Q:'PTREC  D
 ..S PDFN=$P($G(^AGERRAUD(DTREC,1,PTREC,0)),U)
 ..I RPTTYPE="D" D
 ...I AORONE="A" D
 ....S FAC=0
 ....F  S FAC=$O(^AGERRAUD("E",FAC)) Q:'FAC  D
 .....Q:'$D(^AGERRAUD("E",FAC,PDFN))
 .....Q:$G(^AGERRAUD("E",FAC,PDFN))<NEWMIN
 .....S ^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE,PDFN)=""
 ...I AORONE="O" D
 ....F SEL=1:1 S FAC=$P(FACSEL,",",SEL) Q:FAC=""  D
 .....Q:'$D(^AGERRAUD("E",FAC,PDFN))
 .....Q:$G(^AGERRAUD("E",FAC,PDFN))<NEWMIN
 .....S ^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE,PDFN)=""
 ..I RPTTYPE="S" D
 ...I AORONE="A" D
 ....S FAC=0
 ....F  S FAC=$O(^AGERRAUD("E",FAC)) Q:'FAC  D
 .....Q:'$D(^AGERRAUD("E",FAC,PDFN))
 .....Q:$G(^AGERRAUD("E",FAC,PDFN))<NEWMIN
 .....S ^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE)=$P($G(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE)),U)+1
 ...I AORONE="O" D
 ....F SEL=1:1 S FAC=$P(FACSEL,",",SEL) Q:FAC=""  D
 .....Q:'$D(^AGERRAUD("E",FAC,PDFN))
 .....Q:$G(^AGERRAUD("E",FAC,PDFN))<NEWMIN
 .....S ^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE)=$P($G(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE)),U)+1
 I RPTTYPE="D" D DETAIL Q
 D SUMMARY
 Q
DETAIL ;EP
 S ESCAPE=0
 S FAC=0
 ;AG*7.1*1 ADDED NEXT TWO LINES IM19869
 I $G(FACSEL)'="",('$D(^XTMP("AGERRAUD",$J,FACSEL))) S NOERR=1 W !,"NO ERRORS FOUND" D:$D(IO("SD")) ^%ZISC Q:IOST'[("C-")  Q:$D(IO("S"))  I (IOST[("C-")) K DIR S DIR(0)="E" D ^DIR D ^%ZISC Q
 I '$O(^XTMP("AGERRAUD",$J,FAC)) S NOERR=1 W !,"NO ERRORS FOUND" Q:IOST'[("C-")  Q:$D(IO("S"))  I (IOST[("C-")) K DIR S DIR(0)="E" D ^DIR D ^%ZISC Q
 F  S FAC=$O(^XTMP("AGERRAUD",$J,FAC)) Q:'FAC  D  Q:ESCAPE
 .S ERRTYPE="",OLDERR=""
 .F  S ERRTYPE=$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE)) Q:ERRTYPE=""  D  Q:ESCAPE
 ..S ERRCODE="",CODEOLD=""
 ..F  S ERRCODE=$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE)) Q:ERRCODE=""  D  Q:ESCAPE
 ...I ERRCODE'=CODEOLD S CODEOLD=ERRCODE D PRTHDR,DETHDR(ERRCODE)
 ...S PDFN=""
 ...F  S PDFN=$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE,PDFN)) Q:PDFN=""  D  Q:ESCAPE
 ....S NUMPT=$P($G(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE,PDFN)),U)
 ....S PNAME=$P($G(^DPT(PDFN,0)),U)
 ....S PDOB=$P($G(^DPT(PDFN,0)),U,3)
 ....S PHRN=$P($G(^AUPNPAT(PDFN,41,FAC,0)),U,2)
 ....W !,$E(PNAME,1,20)
 ....W ?22,PHRN
 ....W:$G(DUZ(0))["@" "("_PDFN_")"
 ....W ?37,$P($G(^DIC(4,FAC,0)),U)
 ....S Y=PDOB X ^DD("DD") S PDOB=Y
 ....W ?69,PDOB
 ....;NOTE: HEADER IS 8 LINES
 ....;ADDED A CHECK FOR SLAVE PRINTER IN ALL LINES BELOW WITH A DIR CALL AG*7.1*1 IM19869
 ....I ($Y>(IOSL-4)!($Y=(IOSL-4))),(IOST[("C-")) Q:$D(IO("S"))  W ! K DIR S DIR(0)="E" D:'ESCAPE ^DIR S ESCAPE=X=U Q:'$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE,PDFN))  D:'ESCAPE PRTHDR,DETHDR(ERRCODE) Q
 ....I $Y>(IOSL-4)!($Y=(IOSL-4)) Q:'$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE,PDFN))  D PRTHDR,DETHDR(ERRCODE) Q
 ...I ($Y<(IOSL-4)!($Y=(IOSL-4))),(IOST[("C-")) Q:'$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE))  Q:$D(IO("S"))  K DIR S DIR(0)="E" D ^DIR S ESCAPE=X=U
 ..I $Y<(IOSL-4)!($Y=(IOSL-4)),(IOST[("C-")) Q:'$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE))  Q:$D(IO("S"))  K DIR S DIR(0)="E" D ^DIR S ESCAPE=X=U
 .I $Y<(IOSL-4)!($Y=(IOSL-4)),(IOST[("C-"))  Q:'$O(^XTMP("AGERRAUD",$J,FAC))  Q:$D(IO("S"))  K DIR S DIR(0)="E" D ^DIR S ESCAPE=X=U
 I (IOST[("C-")) Q:ESCAPE  Q:$D(IO("S"))  K DIR S DIR(0)="E" D ^DIR S ESCAPE=X=U
 D ^%ZISC
 Q
LOCSEL ;EP - DETERMINE IF ALL LOCATIONS OR SELECTED LOCATIONS
 S FACSEL=""
 K DIR
 F I=1:1 D  Q:X=""!($D(DTOUT))!($D(DUOUT))!($D(DIROUT))
 .S DIR("A")="Select Location "
 .S DIR("S")="I $D(^AGERRAUD(""E"",+Y))"
 .S DIR(0)="PO^9999999.06:EMZ"
 .D ^DIR Q:Y=-1
 .I FACSEL="" S FACSEL=+Y
 .E  S FACSEL=FACSEL_","_+Y
 .K DIR
 Q
ASKLOC ;EP - ASK IF ALL LOCATIONS OR LET USER SELECT LOCATIONS
 K DIR,AORONE
 S DIR(0)="SMX^A:All Locations;O:One Location"
 D ^DIR Q:Y=-1
 Q:$D(DTOUT)!($D(DUOUT))!($D(DIROUT))
 S AORONE=X
 Q
ASKDATE ;EP - ASK FOR BEGINNING DATE FOR THE REPORT. THE DEFAULT WILL
 ;BE 3 YEARS BACK.
 S Y=DT-30000 X ^DD("DD")
 S MINDT=Y
 W !!,"The audit pulls all patients who are active in at least one facility,"
 W !,"not deceased, have a last updated date of not more than three years"
 W !,"ago, and have some form of an active insurance eligibility in"
 W !,"Medicare, Medicaid, Private or Railroad insurance."
 W !!,"Those patients whose DATE OF LAST REG UPDATE field is greater than"
 W !,MINDT," are not included in this audit!"
 W !
ASKAGAIN ;SHOW DEFAULT DATE AND CONFIRM
 K DIR
 S DIR("A",1)="If you choose NO to continue, you will be prompted for a new date."
 S DIR("A",2)="If you accept the default date, the report will include all of the"
 S DIR("A",3)="patients that have been included in the audit file."
 S DIR("A",4)=" "
 S DIR("B")="YES"
 S DIR("A")="Continue?"
 S DIR(0)="Y"
 D ^DIR
 Q:$D(DTOUT)!($D(DUOUT))!($D(DIROUT))
 I Y=1 S NEWMIN=DT-30000 Q
DTAGAIN ;EP - PROMPT TO CHANGE BEGINNING DATE
 K DIR,NEWMIN
 S DIR("B")=MINDT
 S DIR(0)="DO"
 D ^DIR
 I Y<MINDT!(Y>DT) W !!,"The date must be between ",MINDT," and TODAY" G DTAGAIN
 Q:$D(DTOUT)!($D(DUOUT))!($D(DIROUT))
 S NEWMIN=Y
 X ^DD("DD")
 W !!,"You have entered ",Y,!
 K DIR
 S DIR("B")="YES"
 S DIR("A")="Continue?"
 S DIR(0)="Y"
 D ^DIR
 I Y=0 G DTAGAIN
 Q
 ;DETERMINE WHAT SITE THE AUDIT WAS PERFORMED ON
ERRSITE() ;EP
 N PDFN
 Q $P($G(^AGERRAUD(1,0)),U,7)
SUMMARY ;EP - NOW PRINT SUMMARY
 S ESCAPE=0
 S FAC=0
 F  S FAC=$O(^XTMP("AGERRAUD",$J,FAC)) Q:'FAC  D  Q:ESCAPE
 .S ERRTYPE=$O(^XTMP("AGERRAUD",$J,FAC,""))
 .;D PRTHDR,ALLHDR
 .S ERRTYPE="",ERROLD=""
 .F  S ERRTYPE=$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE)) Q:ERRTYPE=""  D  Q:ESCAPE
 ..I ERRTYPE'=ERROLD S ERROLD=ERRTYPE D PRTHDR,ALLHDR
 ..S ERRCODE=""
 ..F  S ERRCODE=$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE)) Q:ERRCODE=""  D  Q:ESCAPE
 ...S NUMPT=$G(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE))
 ...S ERRNODE=$G(^AGEDERRS(ERRCODE,0))
 ...S ERRDESCR=$P(ERRNODE,U,3)
 ...S X=ERRCODE
 ...S X="000"_X
 ...W !?0,$E(X,$L(X)-2,$L(X))
 ...W ?10,$E(ERRDESCR,1,54)
 ...W ?68,$J(NUMPT,8)
 ...;NOTE: HEADER IS 8 LINES
 ...I ($Y>(IOSL-4)!($Y=(IOSL-4))),(IOST[("C-")) W ! K DIR S DIR(0)="E" D:'ESCAPE ^DIR S ESCAPE=X=U Q:'$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE))  D:'ESCAPE PRTHDR,ALLHDR Q
 ...I $Y>(IOSL-4)!($Y=(IOSL-4)) Q:'$O(^XTMP("AGERRAUD",$J,FAC,ERRTYPE,ERRCODE))  D PRTHDR,ALLHDR
 ..I (IOST[("C-")) W ! K DIR S DIR(0)="E" D ^DIR S ESCAPE=X=U Q
 D ^%ZISC
 Q
HDR ;EP
 W @IOF
 D CENTER("PATIENT REGISTRATION")
 W !!
 ;D CENTER($G(^DIC(4,DUZ(2),0),U))  ;NO IM FOUND DURING DEVLOPEMENT
 D CENTER($P($G(^DIC(4,DUZ(2),0)),U))  ;IHS/SD/TPF 3/30/2006 AG*7.1*2
 W !!
 D CENTER("ERROR / WARNING REPORT")
 Q
CENTER(X) ;EP -
 S CENTER=IOM/2
 W ?CENTER-($L(X)/2),X
 Q
PRTHDR ;EP
 W @IOF
 W !
 ;D CENTER($G(^DIC(4,FAC,0),U))  ;NO IM FOUND DURING DEVLOPEMENT
 D CENTER($P($G(^DIC(4,FAC,0)),U))  ;IHS/SD/TPF 3/30/2006 AG*7.1*2
 S PGNUM=PGNUM+1
 W ?69,"PAGE  ",PGNUM
 W !!
 D CENTER("Patient Registration Errors/Warnings")
 W !
 D CENTER("AUDIT "_$S(RPTTYPE="S":"SUMMARY",1:"DETAIL")_" REPORT")
 W !
 D CENTER(REPTIME)
 Q
ALLHDR ;EP
 W !,$S(ERRTYPE="E":"ERROR",1:"WARNING"),?63,"total # of"
 W !,"NUMBER",?15,"ERROR LIST",?63,"Patient w/Errors"
 W !,"------",?10,"---------------------------------------------",?63,"--------------"
 Q
DETHDR(ERRCODE) ;EP
 W !!
 S ERRNODE=$G(^AGEDERRS(ERRCODE,0))
 S ERRDESCR=$P(ERRNODE,U,3)
 S X=ERRCODE
 S X="000"_X
 W !?0,$E(X,$L(X)-2,$L(X))
 W ?4,$S(ERRTYPE="E":"ERROR",1:"WARNING")_":"
 W ?17,ERRDESCR
 W !?0,"CORRECTIVE ACTION:"
 D WRAP^AGUTILS($G(^AGEDERRS(ERRCODE,1,1,0)),20,"WC50")
 W !,AGLINE("EQ")
 W !,?4,"Name",?22,"IHS #",?37,"FACILITY",?69,"DOB"
 W !,AGLINE("EQ")
 Q
EXIT ;EP - CLEANUP AND EXIT
 K ASKSOME,CENTER,ERRCODE,ERRDESCR,ERRNODE,ERRREC,ERRTYP,ERRTYPE,ESCAPE,NUMPT,PDFN,PDOB
 K PFAC,PHRN,PNAME,POP,PTREC,REPTIME,RPTTYPE
 K CODETYPE,PGNUM,FAC,UPDDATE,ERRRESP,^XTMP("AGERRAUD",$J)
 Q
