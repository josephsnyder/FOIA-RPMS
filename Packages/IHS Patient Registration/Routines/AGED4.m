AGED4 ; IHS/ASDS/EFG -EDIT PG 4 ;   
 ;;7.1;PATIENT REGISTRATION;**1,2,3**;JAN 31, 2007
 ;
 ;IHS/SD/TPF AG*7.1*1 REPLACE DFN WITH AGPATDFN TO AVOID DFN CHANGES AFTER ^DIC CALLS
EN(AGSELECT) ;EP
 S:$G(AGSELECT)="" AGSELECT="",NEWENTRY=1
VAR ;
 S AG("PG")="4MCRA"
HDR ;
 S ROUTID=$P($T(+1)," ")  ;SET ROUTINE ID FOR PROGRAMMER VIEW
 W $$S^AGVDF("IOF"),!
 D PROGVIEW^AGUTILS(DUZ)
 W "IHS REGISTRATION ",$S($D(AGSEENLY):"VIEW SCREEN",1:"EDITOR")
 W ?36,"MEDICARE"
 W ?80-$L($P($G(^DIC(4,DUZ(2),0)),U)),$P($G(^DIC(4,DUZ(2),0)),U)
 S AGLINE("-")=$TR($J(" ",80)," ","-")
 S AGLINE("EQ")=$TR($J(" ",80)," ","=")
 W !,AGLINE("EQ")
 W !,$E(AGPAT,1,23)
 W ?23,$$DTEST^AGUTILS(AGPATDFN)
 I $D(AGCHRT) W ?42,"HRN#:",AGCHRT
 ;GET ELIGIBILITY STATUS
 S AGELSTS=$P($G(^AUPNPAT(AGPATDFN,11)),U,12)
 W ?56,"(",$S(AGELSTS="C":"CHS & DIRECT",AGELSTS="I":"INELIGIBLE",AGELSTS="D":"DIRECT ONLY",AGELSTS="P":"PENDING VERIFICATION",1:"NONE"),")"
 ;W !,AGLINE("EQ")
 W "================================== MEDICARE PART A AND B DATA ONLY ======================="  ;IHS/SD/TPF 12/20/2005 AG*7.1*1 ITEM 2
 S DA=AGPATDFN
 K AG("EDIT")
 G DISP
NONE ;
 Q:$D(AGSEENLY)
 S AG("EDIT")=""
 ;AG/SD/TPF 12/20/2005 AG*7.1*1 ITEM 2
 I AGTYPE="MD" I $$NOPARTAB(AGPATDFN) W !,"PATIENT MUST HAVE MEDICARE PART A OR B BEFORE ADDING PART D" H 3 Q
 ;
 D ADDNEW^AG4 ;THIS IS WHERE THE NEW ENTRY IS ACTUALLY ADDED
 I '$O(^AUPNMCR(AGPATDFN,11,0)) K ADDCHK W !,"No eligibility date was entered!" H 3 D CLEANZER(AGPATDFN) Q
 D UPDATE1^AGED(DUZ(2),AGPATDFN,4,"")
 S NEWENTRY=0
 G VAR
CLEANZER(WD0) ;EP - CLEAN ZERO NODE WITH NO DATES
 K DIK,DA
 S DIK="^AUPNMCR(",DA=WD0 D ^DIK
 Q
NOPARTAB(AGPATDFN) ;EP - AG*7.1*1 ITEM 2 DETERMINE IF PATIENT ALREADY HAS EITHER MCR PART A OR B
 N DTREC,NOPARTAB
 S DTREC=0,NOPARTAB=1  ;ASSUME THEY DON'T HAVE IT
 F  S DTREC=$O(^AUPNMCR(AGPATDFN,11,DTREC)) Q:'DTREC  D  Q:'NOPARTAB
 .I $P($G(^AUPNMCR(AGPATDFN,11,DTREC,0)),U,3)="A" S NOPARTAB=0 Q
 .I $P($G(^AUPNMCR(AGPATDFN,11,DTREC,0)),U,3)="B" S NOPARTAB=0 Q
 Q NOPARTAB
DISP ;
 S DIC=9000001,DR=.04
 W !,"1.Med. Release Date: "
 D ^AGDICLK
 I '$D(AG("LKERR")) W AG("LKPRINT")
 S DIC=9000003,DR=.08      ;QMB/SLMB
 W !,"2.QMB/SLMB         : "
 D ^AGDICLK
 I '$D(AG("LKERR")) W AG("LKPRINT")
 W !,"3.IMP MSG FORM MCR SIG OBTAINED: ",$$IMPMSG(DA)
 W !,"4.ADVANCE BENEFICIARY NOTICE: ",$$ABN(DA)
 W !
 ;F AG("CTR")=1:1:80 W "."
 W "........................ MEDICARE PART A AND B DATA ONLY ........................"  ;IHS/SD/TPF 12/20/2005 AG*7.1*1 ITEM 2
 S DIC=9000003,DR=2101     ;medicare name
 D ^AGDICLK
 W ?4,"5.Medicare Name : ",$G(AG("LKPRINT"))
 S DIC=9000003,DR=.03      ;medicare number
 W ?49,"6.Medicare Number: "
 D ^AGDICLK
 I '$D(AG("LKERR")) W AG("LKPRINT")
 S DIC=9000003,DR=.04      ;suffix
 D ^AGDICLK
 I '$D(AG("LKERR")) W AG("LKPRINT")
 W !
 S DIC=9000003,DR=.14      ;primary care provider
 W ?4,"7.Prim. Care Prv: "
 D ^AGDICLK
 I '$D(AG("LKERR")) W AG("LKPRINT")
 S DIC=9000003,DR=2102      ;medicare dob
 W ?49,"8.Date of Birth  : "
 D ^AGDICLK
 I '$D(AG("LKERR")) W AG("LKPRINT")
 W !
 S DIC=9000003,DR=.15      ;cc on file
 W ?4,"9.CC on file    : "
 D ^AGDICLK
 I '$D(AG("LKERR")) W AG("LKPRINT")
 I $G(AG("LKPRINT"))["Y" D
 .S DIC=9000003,DR=.16      ;date cc obtained
 .W ?28,"Date obtained: "
 .D ^AGDICLK
 .I '$D(AG("LKERR")) W AG("LKPRINT")
 W !!
 ;W ?5,"ELIG DATE BEGIN",?29,"(updated)",?48,"Coverage",?65,"ELIG END",!
 W ?5,"ELIG DATE BEGIN",?29,"(updated)",?42,"Cov",?47,"Plan Name",?70,"ELIG END",!  ;IHS/SD/TPF 12/2/2005 AG*7.1*1
 F AG("CTR")=1:1:80 W "."
 ;W !
ELIG ;
 ;REPLACE THIS OLD CODE
 ;S DIC=9000003.11
 ;S AG("TOTAL")=0
 ;S AG("N")=5
 ;F AG("I")=1:1 D  Q:$D(AG("LKERR"))
 ;. S AG("DRENT")=AG("I"),DR=.02
 ;. D ^AGDICLK
 ;. Q:$D(AG("LKERR"))
 ;. S AG("TOTAL")=AG("TOTAL")+1
 ;. S AG(AG("TOTAL"))=$P(AGL,",",3)
 ;I AG("TOTAL")>0 D
 ;. F AG("I")=1:1:AG("TOTAL") D
 ;.. D PRINT
 ;.. S AG("N")=AG("I")+9
 ;W AGLINE("-")
 ;REPLACE OLD CODE
 ;BEGIN NEW CODE  AG*7.1*3 IM23591
 S AG("N")=9  ;THERE ARE 5 ITMES IN DISPLAY ABOVE
 S REC=0
 F CNT=1:1 S REC=$O(^AUPNMCR(AGPATDFN,11,REC)) Q:'REC  D
 .S IENS=REC_","_AGPATDFN_","
 .W !,CNT+9,".",?6,$$GET1^DIQ(9000003.11,IENS,.01,"E")
 .I CNT=1 D
 ..I $$GET1^DIQ(9000003,AGPATDFN_",",.07,"E")'="" W ?26,$$GET1^DIQ(9000003,AGPATDFN_",",.07,"E")
 .W ?43,$$GET1^DIQ(9000003.11,IENS,.03,"E")
 .W ?48,$$GET1^DIQ(9000003.11,IENS,.04,"E")
 .W ?68,$$GET1^DIQ(9000003.11,IENS,.02,"E")
 .S AG(CNT)=REC
 S AG("N")=AG("N")+CNT-1
 W !,AGLINE("-")
 ;END NEW CODE
 ;
 ;AFTER EDITING THE SELECTION MUST BE UPDATED SO ANY ERRORS CORRECTED WILL BE REFLECTED ON THE REDRAWN SCREEN
 ;I '$G(NEWENTRY),($G(COMPIEN)'="") S AGSELECT=$$UPDTSEL^AGUTILS("FINDMCR",.AGINS,COMPIEN)
 ;I '$G(NEWENTRY),($G(COMPIEN)'="") S AGSELECT=$$UPDTSEL^AGUTILS(.AGINS,COMPIEN,$P(AGSELECT,U,2))  ;AG*7.1*1 IM18549 ERROR IN ERROR UPDATE
 I '$G(NEWENTRY),($G(COMPIEN)'="") S AGSELECT=$$UPDTSEL^AGUTILS(.AGINS,COMPIEN,$P($G(AGSELECT),U,2))  ;AG*7.1*2 AGSELECT UNDEF AT ALPHA SITE
 K MYERRS,MYVARS
 D FETCHERR^AGEDERR(AG("PG"),.MYERRS)
 ;IHS/SD/TPF 3/3/2006 AG*7.1*1
 ;S MYVARS("DFN")=$S($G(AUPNPAT)'="":AUPNPAT,1:$G(DFN))
 S MYVARS("DFN")=$G(AGPATDFN)
 S MYVARS("FINDCALL")="FINDMCR",MYVARS("SELECTION")=$G(AGSELECT),MYVARS("SITE")=DUZ(2)
 I '$G(NEWENTRY) D EDITCHEK^AGEDERR(.MYERRS,.MYVARS,1)
 I $D(AGSEENLY) S DIR("A")="Press RETURN" D ^DIR,READ^AGED1 G END
 G:$G(NEWENTRY) NONE
EDIT K DIR
 S DIR("?")="Enter your choice now."
 S DIR("?",1)="You may enter an 'E' to Edit, an 'A' to Add or a 'D' to delete if you have"
 S DIR("?",2)="the right key OR RETURN to go to page B of the medicare edit screen."
 I $D(^XUSEC("AGZMGR",DUZ))  D
 . S DIR("A")="(Edit = ""E""  Add = ""A""  Delete = ""D"")  Type E, A, or D"
 I '$D(^XUSEC("AGZMGR",DUZ))  D
 . S DIR("A")="(Edit = ""E""  Add = ""A"")  Type E or A"
 K DFOUT,DTOUT,DUOUT,DQOUT,DLOUT,DIROUT
 S DIR(0)="FO"
 D ^DIR
 Q:Y=AGOPT("ESCAPE")
 I $D(^XUSEC("AGZMGR",DUZ))&(Y="D") G KILL
 I '$D(^XUSEC("AGZMGR",DUZ))&(Y="D") G EDIT
 Q:$D(DTOUT)
 S:Y="/.,"!(Y="^^") DFOUT=""
 S:Y="" DLOUT=""
 S:Y="^" (DUOUT,Y)=""
 S:Y?1"?".E!(Y["^") (DQOUT,Y)=""
 G L6:Y="A"
 W !
 G END:$D(DLOUT)!(Y["N")!$D(DUOUT)!($D(DIROUT)),VAR:$D(AG("ERR"))
 G EDIT:Y'="E"&(Y'="A")&(Y'="D")
L5 Q:$D(DFOUT)!$D(DTOUT)
 I Y="E" D
 .S DIR("?")="Enter your choice now."
 .S DIR("?",1)="You may enter the item number of the field you wish to edit,"
 .S DIR("?",2)="OR you can enter 'P#' where P stands for 'page' and '#' stands for"
 .S DIR("?",3)="the page you wish to jump to, OR enter '^' to go back one page"
 .S DIR("?",4)="OR, enter '^^' to exit the edit screens, OR RETURN to go to the next screen."
 .S DIR("A")="CHANGE which item? (1-"_$G(AG("N"))_") NONE// "
 .D ^DIR
 G:Y="" VAR
 S AG("SEL")=+Y,AG("INDEX")=+Y-9
 S AGBILL=$$USED^AGED51(AGPATDFN,$P($G(^AUPNMCR(AGPATDFN,0)),U,2),4,AG("SEL")-9)
 I $L(AGBILL) D
 . S X="IORVON;IORVOFF"
 . D ENDR^%ZISS,HELP^XBHELP("USED","AGED51"),KILL^%ZISS
 . K AGBILL
 . G:'$$DIR^XBDIR("Y","Proceed with edit of Date Record","N") VAR
 K AGBILL
 G END:$D(DUOUT)!$D(DFOUT)
 I $D(DQOUT)!(+$G(Y)<1)!(+$G(Y)>$G(AG("N"))) W !,"You must enter from 1 - ",$G(AG("N"))  G EDIT
L6 I Y="A" S AG("EDIT")="" D:$P($G(^AUPNMCR(AGPATDFN,0)),U,3)="" E3^AGED41 D:$P($G(^AUPNMCR(AGPATDFN,0)),U,4)="" E4^AGED41 D ADDCOV^AG4,UPDATE1^AGED(DUZ(2),AGPATDFN,4,"") G VAR
L6A G L7:AG("SEL")<10
 ;BEGIN NEW CODE IHS/SD/TPF 12/5/05 AG*7.1*1 ITEM 1
 ;CHECK FOR COVTYP="D" IF IT IS GO TO THE MEDICARE PHARMACY PAGE
 ;I $G(AGSELECT)'="" D
 ;.S COVTYP=$P($G(AGSELECT),U,4)
 ;.S COMPIEN=$P($G(AGSELECT),U,11)
 S COMPIEN=$G(AGPATDFN)_",11,"_(AG(AG("SEL")-9))_",0"
 S COVTYP=$P($G(@("^AUPNMCR("_COMPIEN_")")),U,3)
 I COVTYP="D" D EN^AGED4PD(COMPIEN) G VAR
 ;END NEW CODE
 S DIC=9000003.11
 F DR=.01,.03,.02 D
 . S AG("DRENT1")=AG(AG("SEL")-9)
 . W !,$S(DR=.01:" 10. ELIGIBILITY DATE: ",DR=.03:"11.    COVERAGE TYPE: ",DR=.02:"12.  ELIG. END DATE : ")
 . D ^AGDICLK
 . I '$D(AG("LKERR")) W AG("LKPRINT")
L6B K DIR
 W !!
 S DIR("A")="  Change which? (10-12) "
 K DFOUT,DTOUT,DUOUT,DQOUT,DLOUT,DIROUT
 S DIR(0)="FO"
 D ^DIR
 G:$D(DTOUT) VAR
 S:Y="/.,"!(Y="^^") DFOUT=""
 S:Y="" DLOUT=""
 S:Y="^" (DUOUT,Y)=""
 S:Y?1"?".E!(Y["^") (DQOUT,Y)=""
 G:$D(DFOUT)!$D(DLOUT)!$D(DUOUT) VAR
 G:$D(DTOUT) VAR
 I +Y<9!(+Y>12) W !,"Use the numbers 10, 11, or 12.",! G L6B
 S AG("SEL")=+Y
L7 D ^AGED41,UPDATE1^AGED(DUZ(2),AGPATDFN,4,"")
 G VAR
END ;EP
 I $D(DTOUT) S AGTOUT=""
 I '$D(AGSEENLY),('$O(^AUPNMCR(AGPATDFN,11,0))) S DIK="^AUPNMCR(",DA=AGPATDFN D ^DIK K ADDCHK Q
 I '$D(AGSEENLY) I ($D(MYERRS("C","E"))&(Y'?1N.N)),(Y'["V"),(Y'=AGOPT("ESCAPE")) W !,"ERRORS ON THIS PAGE. PLEASE FIX BEFORE EXITING!!" H 3 G VAR
 Q:Y=$G(AGOPT("ESCAPE"))
 K DFOUT,DTOUT,DQOUT,DLOUT,DA,DIC,DIE,DR,DRENT,AG("DRENT1"),AGL
 K AG("LKERR"),AG("LKPRINT"),Y
 Q:$D(AGXTERN)
 I $D(DIROUT)!$D(DUOUT) K DIROUT,DUOUT Q
 K DIR
 Q
PRINT ;
 S AG("DRENT1")=AG(AG("I"))
 S DIC=9000003.11
 S DA=AGPATDFN,DR=.01
 D ^AGDICLK
 W AG("I")+9,".",?6,AG("LKPRINT")
 ;S DIC=9000003
 ;S DA=DFN,DR=.07
 ;D ^AGDICLK
 ;I $G(AG("LKPRINT"))'="" W ?26,"("_AG("LKPRINT")_")"
 ;BEGIN CODE CHANGE PER ADRIAN 12/13/2005 IHS/SD/TPF AG*7.1*1
 I AG("I")=1 D
 .S DIC=9000003
 .S DA=AGPATDFN,DR=.07
 .D ^AGDICLK
 .I $G(AG("LKPRINT"))'="" W ?26,"("_AG("LKPRINT")_")"
 ;END NEW CODE
 ;Q
 S DIC=9000003.11
 S AG("DRENT1")=AG(AG("I")),DR=.03
 D ^AGDICLK
 ;W ?41,$J(AG("LKPRINT"),11)
 W ?43,AG("LKPRINT")  ;IHS/SD/TPF 12/2/2005 AG*7.1*1
 ;BEGIN NEW CODE ADD AG/SD/TPF 12/2/2005 AG*7.1*1
 ;DISPLAY PLAN NAME
 S AG("DRENT1")=AG(AG("I")),DR=.04
 D ^AGDICLK
 W ?48,$E($G(AG("LKPRINT")),1,18)
 ;END NEW CODE
 S AG("DRENT1")=AG(AG("I")),DR=.02
 D ^AGDICLK
 ;W ?65,$J(AG("LKPRINT"),11),!
 W ?68,AG("LKPRINT"),!  ;IHS/SD/TPF 12/2/2005 AG*71.*1
 Q
IMPMSG(DAX) ;GET LAST DATE ENTERED FOR IMPORTANT MESSAGE FROM MEDICARE
 N AGIEN,X,Y
 S AGIEN=$O(^AUPNMCR(DAX,12,"B",""),-1)
 I 'AGIEN Q ""
 S Y=AGIEN
 X ^DD("DD")
 Q Y
ABN(DAX) ;
 N AGIEN,X,Y
 S AGIEN=$O(^AUPNMCR(DAX,13,"B",""),-1)
 I 'AGIEN Q ""
 S Y=AGIEN
 X ^DD("DD")
 Q Y
KILL ;
 K DIR
 S AG("I")=CNT-1  ;GET TOTAL NUMBER OF ELIG DATES FROM NEW DISPLAY AG*7.1*3 IM23591
 I AG("I")=1 S DIR("A")="Are you sure you want to DELETE the COMPLETE record ? (Y/N) " S DIR(0)="Y",DIR("B")="NO" D ^DIR I Y'=1 K DIR G VAR
 I AG("I")=1 S Y=11 D PATCH S DA=AGPATDFN,DIK="^AUPNMCR(" D ^DIK W !!,"The COMPLETE eligibility record has been deleted" H 2 G END
 W !!,"Delete which of these coverages? (10 - ",AG("I")+9,")   " D READ^AGED1 G END:$D(DTOUT)!$D(DFOUT)!$D(DLOUT)!$D(DUOUT)
 I $D(DQOUT)!(+Y<10)!(+Y>(AG("I")+9)) W !!,"To delete an eligibility record, enter a number from 10 to ",AG("I")+9,".  (Press RETURN for ""NO DELETE"".)" D READ^AGED1 G KILL
 K DIR
 S DA(1)=AGPATDFN,AG("COUNT")=0,AG("SEL")=0,AG("DELELIG")=0
 F  S AG("SEL")=$O(^AUPNMCR(DA(1),11,AG("SEL"))) Q:AG("COUNT")>(Y-9)  D
 . S AG("COUNT")=AG("COUNT")+1
 . I AG("COUNT")=(Y-9) S AG("DELELIG")=AG("SEL")
 K AG("SEL"),AG("COUNT")
 I +Y>9&(+Y<(AG("I")+9)+1) S DIR("A")="Are you sure you want to DELETE this eligibility record ? (Y/N) " S DIR(0)="Y",DIR("B")="NO" D ^DIR I Y'=1 K DIR G VAR
 S AG("I")=AG("DELELIG")
 K AG("DELELIG")
 ;IHS/SD/TPF 8/2/2006 AG*7.1*2 IM21544
 I $P($G(^AUPNMCR(AGPATDFN,11,AG("I"),0)),U,3)="" D  G VAR
 .W !,"COVERAGE TYPE FIELD IS NOT POPULATED"
 .W !,"AN UPDATE TO NPIRS CAN NOT BE DONE PROPERLY"
 .W !,"UNLESS THIS FIELD IS POPULATED"
 .K DIR
 .S DIR(0)="E"
 .D ^DIR
 D PATCH
 S DA(1)=AGPATDFN,DA=AG("I"),DIK="^AUPNMCR("_DA(1)_",11,"
 D ^DIK
 W !!,"That Eligibility record is deleted." H 2
 G VAR
PATCH D NOW^%DTC S AGDTS=%
 S:'$D(^AGPATCH(AGDTS,DUZ(2),AGPATDFN)) ^(AGPATDFN)=""
 Q:'$D(^AUPNMCR(AGPATDFN,11,0))  Q:'$O(^AUPNMCR(AGPATDFN,11,0))
 Q:'$D(^AUPNMCR(AGPATDFN,11,AG("I"),0))
 S ^AGPATCH(AGDTS,DUZ(2),AGPATDFN,$P($G(^AUPNMCR(AGPATDFN,11,AG("I"),0)),U,3))="MCARE^"_$P($G(^AUPNMCR(AGPATDFN,0)),U,3,4)_U_$G(^AUPNMCR(AGPATDFN,11,AG("I"),0))
 S:$P($G(^AUPNMCR(AGPATDFN,11,AG("I"),0)),U,2)="" $P(^AGPATCH(AGDTS,DUZ(2),AGPATDFN,$P(^AUPNMCR(AGPATDFN,11,AG("I"),0),U,3)),U,5)=DT
 K AGDTS Q
12 ;
 ;;E;EMPLOYER GROUP HEALTH PLAN (EGHP)
 ;;L;LARGE GROUP HEALTH PLAN (LGHP)
 ;;D;END STAGE RENAL DISEASE (ESRD)
 ;;V;VETERANS ADMINSTRATION (VA)
 ;;W;WORKMANS COMPENSATION
 ;;B;BLACK LUNG
 ;;A;AUTOMOBILE/NO-FAULT
 Q