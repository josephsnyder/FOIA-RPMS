BKMVB2 ;PRXM/HC/JGH - Site Parameter Setup Utility ; 12 Aug 2005  1:00 PM
 ;;2.1;HIV MANAGEMENT SYSTEM;;Feb 07, 2011
EN ;EP - main entry point for BKMV Site Parameter
 N BKMPRIV
 S HIVIEN=$$HIVIEN^BKMIXX3()
 I HIVIEN="" W !,"There is no HMS register defined." H 2 Q
 I '$D(^BKM(90450,HIVIEN,11,"B",DUZ)) W !,"You are not a valid HMS user." H 2 Q
 ;
 K ^TMP("BKMVB2",$J)
 D GETALL(HIVIEN)
 N Y,DG,DK,DH,DM
 D EN^VALM("BKMV SITE PARAMETER")
 Q
 ;
HDR ; -- header code
 S DA=$G(DUZ(2)),IENS=$$IENS^DILF(.DA),SITE=$$GET1^DIQ(4,IENS,.01,"E")
 S VALMHDR(1)=$$PAD^BKMIXX4("",">"," ",(80-$L(SITE)+2)\2)_"["_$G(SITE)_"]"
 QUIT
 ;
INIT ;EP - Init variables and list array
 S VALMCNT=0,VALMAR="^TMP(""BKMVB2"","_$J_")",VALM0=""
 S TEXT=$$PAD^BKMIXX4("Register Name: ",">"," ",35)_RNAME
 S VALMCNT=$G(VALMCNT)+1 D SET^VALM10(VALMCNT,TEXT)
 S TEXT=$$PAD^BKMIXX4("Register Short Name: ",">"," ",35)_SNAME
 S VALMCNT=$G(VALMCNT)+1 D SET^VALM10(VALMCNT,TEXT)
 S TEXT=$$PAD^BKMIXX4("State HIV Report Required: ",">"," ",35)_SHRR
 S VALMCNT=$G(VALMCNT)+1 D SET^VALM10(VALMCNT,TEXT)
 S TEXT=$$PAD^BKMIXX4("Date Of Last Auto Populate: ",">"," ",35)_LABD
 S VALMCNT=$G(VALMCNT)+1 D SET^VALM10(VALMCNT,TEXT)
 S TEXT=$$PAD^BKMIXX4("Auto Populate Status: ",">"," ",35)_AANS
 S VALMCNT=$G(VALMCNT)+1 D SET^VALM10(VALMCNT,TEXT)
 S BKMOPT=$O(^DIC(19,"B","BKMV BACKGROUND AUTO POP",0)),BKMOPT1=$O(^DIC(19.2,"B",BKMOPT,""))
 I BKMOPT1'="" D
 . S BKMTM=$P(^DIC(19.2,BKMOPT1,0),U,2),BKMFRQ=$P(^DIC(19.2,BKMOPT1,0),U,6)
 . S BKMSNM=$P($G(^DIC(19.2,BKMOPT1,1)),U,1),BKMTM=$$FMTE^XLFDT($G(BKMTM),1)
 S TEXT=$$PAD^BKMIXX4("   Next scheduled run date: ",">"," ",35)_$G(BKMTM)
 S VALMCNT=$G(VALMCNT)+1 D SET^VALM10(VALMCNT,TEXT)
 S TEXT=$$PAD^BKMIXX4("   Schedule frequency: ",">"," ",35)_$G(BKMFRQ)
 S VALMCNT=$G(VALMCNT)+1 D SET^VALM10(VALMCNT,TEXT)
 ;S TEXT=$$PAD^BKMIXX4("Autopopulate Task Number: ",">"," ",35)_$G(BKMSNM)
 ;S VALMCNT=$G(VALMCNT)+1 D SET^VALM10(VALMCNT,TEXT)
 S TEXT=$$PAD^BKMIXX4("   Include Deceased Pts: ",">"," ",35)_DECP
 S VALMCNT=$G(VALMCNT)+1 D SET^VALM10(VALMCNT,TEXT)
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !
 QUIT
 ;
EXIT ; -- exit code
 K ^TMP("BKMVB2",$J)
 K DA,DIE,DR,EET,ENTER,IENS,LABD,LOCK,NREG,RNAME,SHRR,SITE,SNAME,SRR,TEXT
 K AANS,DECP
 K BKMOPT,BKMOPT1,BKMSNM,BKMTM,BKMFRQ
 K VALM0,VALMAR,VALMCNT,VALMHDR
 QUIT
 ;
EXPND ; -- expand code
 QUIT
 ;
GETALL(HIVIEN) ;
 S RNAME=$$GET1^DIQ(90450,HIVIEN,.01,"E")
 S SNAME=$$GET1^DIQ(90450,HIVIEN,.02,"E")
 S NREG=$$GET1^DIQ(90450,HIVIEN,.03,"E")
 S LOCK=$$GET1^DIQ(90450,HIVIEN,.5,"I")
 S LOCK=$S(LOCK=1:"OFF",1:"ON")
 S SRR=$$GET1^DIQ(90450,HIVIEN,12,"E")
 S SHRR=$$GET1^DIQ(90450,HIVIEN,12.5,"E")
 S EET=$$GET1^DIQ(90450,HIVIEN,20,"E")
 S DECP=$$GET1^DIQ(90450,HIVIEN,22.1,"E")
 ;PRXM/HC/BHS - 11/01/2005 - Modified external date format to Mon DD,CCYY
 S LABD=$$GET1^DIQ(90450,HIVIEN,21,"E")
 ;S LABD=$$GET1^DIQ(90450,HIVIEN,21,"I")
 ;I LABD'="" S LABD=$$FMTE^XLFDT(LABD,"1")
 S AANS=$$GET1^DIQ(90450,HIVIEN,19,"E")
 S DA=HIVIEN
 Q
 ;
EDITFORM ;
 D FULL^VALM1
 NEW IEN
 S DA=HIVIEN,DIE="^BKM(90450,",DR="[BKMV SITE PARAMETER SETUP]"
 D ^DIE
 K ^TMP("BKMVB2",$J)
 NEW DIR
 S DIR("A")="Background auto-populate for new candidates",DIR(0)="S^0:OFF;1:ON",DIR("B")=AANS
 D ^DIR
 I $G(Y)=1 D
 . S BKMUPD(90450,DA_",",19)=Y
 . D FILE^DIE("","BKMUPD","ERROR") K BKMUPD
 . D EDIT^BKMVSCD
 . S DA=HIVIEN,DIE="^BKM(90450,",DR="22.1Include Deceased Pts"
 . D ^DIE
 I $G(Y)=0 D
 . S BKMUPD(90450,DA_",",19)=Y,BKMUPD(90450,DA_",",22.1)="@"
 . ;
 . NEW OPTION,DIC,X
 . S OPTION="BKMV BACKGROUND AUTO POP",OPTION=$$FIND^BKMVSCD(OPTION) Q:OPTION'>0
 . S X=$P(^DIC(19,OPTION,0),U,1),DIC(0)="M",DIC="^DIC(19.2," D ^DIC
 . S DA=+Y,BKMUPD(19.2,DA_",",.01)="@"
 . D FILE^DIE("","BKMUPD","ERROR") K BKMUPD
 . S BKMFRQ="",BKMTM=""
 ; 
CONT D GETALL(HIVIEN)
 D INIT^BKMVB2
 Q
