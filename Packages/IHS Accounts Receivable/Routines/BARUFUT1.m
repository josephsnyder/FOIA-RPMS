BARUFUT1 ; IHS/SD/TPF - UTILITIES 2 FOR UFMS ; 04/28/2008
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**3,4,5,6,13,21**;OCT 26, 2005
 ;;
 ;; IHS/SD/SDR 5/26/09 HEAT4301 BAR*1.8*13
 ;    Modify patch number in filename so batches are formatted
 ;    correctly by the HUB
 Q
 ;
 ;RESENDF() ;EP -  RESEND A FILE ALREADY CREATED
RESENDF(NOSEND) ;EP -  RESEND A FILE ALREADY CREATED ;BAR*1.8*4 ITEM 2 SCR58
RESENDF1 N DIREC,DESTIP,ARGS,BARUFMS
 S DIREC=$P($G(^BAR(90052.06,DUZ(2),DUZ(2),15)),U)  ;A/R PARAMETER FILE, UFMS DIRECTORY
 I DIREC="" D  Q
 .W !!,"Before UFMS files can be created a non-public directory must be created"
 .W !,"on the Host File System. This directory must be entered in to A/R Site Parameter"
 .W !,"field UFMS DIRECTORY using the 'SPE    Site Parameter Edit' option"
 .D ASKFORRT^BARUFUT
 W !!,"CURRENT UFMS DIRECTORY IS ",DIREC
 W !
 K DIR
 S DIR(0)="FO"
 S DIR("?",1)="Enter a file name e.g. IHS_AR_RPMS_RCV_398_113510_20070806_0847.DAT,"
 S DIR("?",2)="or a partial filename IHS_AR_RPMS_RCV_398*, the * is a wildcard,"
 S DIR("?")="or * to list all UFMS files in the UFMS directory."
 ;S DIR("A")="Enter filename to be resent"
 I $G(NOSEND) S DIR("A")="List File(s)"  ;BAR*1.8*4 ITEM 2 SCR58
 E  S DIR("A")="Enter filename to be resent"
 D ^DIR
 Q:$D(DTOUT)!$D(DIROUT)!$D(DUOUT)!(Y="")!(Y=" ")
 S FILENM=Y
 I $E(FILENM,1,16)="IHS_TPB_RPMS_INV" W "   ??" H 1 G RESENDF1
 I FILENM="*" S FILENM="IHS_AR_RPMS_RCV*"
 K FARRAY
 D LIST^%ZISH(DIREC,FILENM,.FARRAY)
 I '$D(FARRAY) W "  ??" G RESENDF1
 W @IOF
 W !!!,"FILES FOUND: "
 S (KEY,LN,CHOICE)=""
 S FIRST=1
 F CNT=1:1 S LN=$O(FARRAY(LN)) Q:KEY!(LN="")!$G(CHOICE)  D
 .W !,LN
 .W ?5,FARRAY(LN)
 .I '(CNT#10) D
 ..K DIR
 ..I $G(NOSEND) W ! S DIR(0)="E" D ^DIR S CHOICE=X=U Q  I 1  ;BAR*1.8*4 ITEM 2 SCR58
 ..E  D
 ...S DIR(0)="NO^1:"_CNT
 ...S DIR("A")="Enter item number: "
 ...D ^DIR
 ..S CHOICE=Y
 ..S KEY=$D(DUOUT)!($D(DTOUT))
 Q:KEY
 I '$G(CHOICE),LN="" D  Q:KEY
 .K DIR
 .I $G(NOSEND) W ! S DIR(0)="E" D ^DIR S CHOICE=X=U Q  I 1  ;BAR*1.8*4 ITEM 2 SCR58
 .E  D
 ..S DIR(0)="NO^1:"_(CNT-1)
 ..S DIR("A")="Enter item number: "
 ..D ^DIR
 .S CHOICE=Y
 .S KEY=$D(DUOUT)!($D(DTOUT))!(Y="")
 ;
 I $G(NOSEND) Q  ;BAR*1.8*4 ITEM 2 SCR58
 S ITEM=CHOICE
 W !!,"You have selected "_$G(FARRAY(ITEM))
 K DIR
 S DIR(0)="YO"
 S DIR("A")="Do you want to resend the file now?"
 S DIR("B")="Y"
 D ^DIR
 G:$D(DTOUT)!$D(DUOUT)!('Y) RESENDF1
 K RT
 S RT=$$SENDTO1^ZISHMSMU("BAR UFMS F",DIREC_FARRAY(ITEM))
 W !,DIREC_FARRAY(ITEM)
 I $D(RT) W !!,"File has been "_$P(RT,U,2) W:$P($G(RT),U)=0 " and successfully sent."
 I '$D(RT) W !!,"Problem encountered sending file!"
 D ASKFORRT^BARUFUT
 G RESENDF1
 Q
 ;
ERASTAT(UDUZ,SESSID,ERASTAT) ;EP - SET ERA POSTING STATUS
 ;STATUS=1 MEANS THE CASHIER IS IN ERA POSTING
 ;STATUS=0 MEANS THE CASHIER IS NOT IN ERA POSTING
 ;
 K DIR,DIE,DIC,DA,DR
 S DA(1)=UDUZ
 S DA=SESSID
 S DR=".04///^S X=ERASTAT"
 S DIE="^BARSESS(DUZ(2),"_DA(1)_",11,"
 D ^DIE
 Q 1
STILPOST(UDUZ) ;EP - IS THE USER STILL LOGGED ON AND/OR POSTING?
 N LOGIN,LOGIEN,LASTOPT,XUTLIEN,INMENUS,BARMENU
 S LOGIN=$O(^XUSEC(0,"CUR",UDUZ,DT))
 Q:'LOGIN 0_U_"NOT LOGGED IN"  ;NOT LOGGED IN THEREFORE NOT POSTING
 ;
 S INMENUS=0
 S LOGIEN=DT  ;just look at todays logins.
 F  S LOGIEN=$O(^XUSEC(0,"CUR",UDUZ,LOGIEN)) Q:'LOGIEN!(INMENUS)  D
 .S JOB=$P($G(^XUSEC(0,LOGIEN,0)),U,3)
 .;LETS SEE IF THEY ARE IN THE A/R MENUS
 .S CURREC=$G(^XUTL("XQ",JOB,"T"))
 .Q:'CURREC
 .;IHS/SD/TPF BAR*1.8*21 TOOK OUT SCREEN BELOW. APPARENTLY KERNEL ASSIGNS THE DUZ(2)
 .;VALUE OF THE DEFAULT DIVISION TO THE USER NOT THE DIVISION THEY SIGN INTO.
 .;Q:$G(^XUTL("XQ",JOB,"DUZ(2)"))'=DUZ(2)  ;ONLY CHECK FOR FAC SUP IS LOGGED INTO
 .S CUROPT=$P($G(^XUTL("XQ",JOB,CURREC)),U,2)
 .I $E(CUROPT,1,3)="BAR" D  Q:INMENUS
 ..Q:CUROPT'[("BAR POST PAYMENTS")&(CUROPT'[("BAR POST ADJUSTMENTS"))&(CUROPT'[("BAR FLAT RATE POSTING"))&(CUROPT'[("BAR POST UC"))&(CUROPT'[("BAR POST REFUNDS"))&(CUROPT'[("BAR PST BENEFICIARY"))&(CUROPT'[("BAR ERA POST CLAIMS"))
 ..S INMENUS=1
 ..S BARMENU=$P($G(^XUTL("XQ",JOB,CURREC)),U,3)
 I LOGIN,(INMENUS) Q 1_U_"LOGGED IN AND CURRENTLY IN THE '"_BARMENU_"' OPTION"
 I LOGIN,('INMENUS) Q 2_U_"LOGGED IN BUT NOT CURRENTLY IN A/R MENUS"
 Q 0_U_"UNKOWN"
 ;
CLEAR ;EP - CLEAR 'SESSION ALREADY ASSIGNED' FLAG
 N REC,LINE,UDUZ,SESSID,PIECE,CHOICES,CHOICE
 K CHOICE
 I '$D(^BARSESS(DUZ(2),"D")) D  Q
 .W !!,"THERE ARE NO SESSION 'ALREADY ASSIGNED' FLAGS SET"
 .D ASKFORRT^BARUFUT
 .W @IOF
 D CLRHDR
 S UDUZ=""
 F LINE=1:1 S UDUZ=$O(^BARSESS(DUZ(2),"D",1,UDUZ)) Q:'UDUZ  D
 .S SESSID=""
 .F  S SESSID=$O(^BARSESS(DUZ(2),"D",1,UDUZ,SESSID)) Q:'SESSID  D
 ..W !,LINE,"."
 ..W ?3,$P($G(^VA(200,UDUZ,0)),U)
 ..S CHOICE(LINE)=UDUZ_U_SESSID
 K DIR
 W !
 S LINE=LINE-1
 S DIR(0)="LO^1:"_LINE
 S DIR("A")="Select cashier(s) to clear"
 D ^DIR
 Q:Y=""!$D(DUOUT)!$D(DTOUT)
 S CHOICES=Y
 F PIECE=1:1 S LINE=$P(CHOICES,",",PIECE) Q:LINE=""  D
 .S X=$$DELFLG($P(CHOICE(LINE),U),$P(CHOICE(LINE),U,2))
 .W !!!,"CASHIER ",$P($G(^VA(200,$P(CHOICE(LINE),U),0)),U)," HAS BEEN CLEARED" H 1
 G CLEAR:$D(^BARSESS(DUZ(2),"D"))
 W @IOF
 Q
 ;
CLRHDR ;EP - CLEAR FLAG HEADER
 W @IOF
 W !!,$$CJ^XLFSTR("CLEAR 'SESSION ID ALRADY ASSIGNED' FLAG",IOM)
 W !!!?10,"THE FOLLOWING USERS HAVE THIS FLAG SET"
 W !!
 Q
 ;
ASUFAC(DUZ2,TRANS) ;EP - GET ASUFACASUFAC3PIEN STRING
 N IENS
 S IENS=TRANS_","
 S ARBILLIN=$$GET1^DIQ(90050.03,IENS,4,"I")             ;A/R TRANSACTIONS, BILL (A/R) PTR
 S ARDOSBEG=$$GET1^DIQ(90050.01,ARBILLIN_",",102,"I")   ;A/R BILL, DOS BEGIN
 S TPBIEN=$P($$FIND3PB^BARUTL(DUZ2,ARBILLIN),",",2)     ;GET 3PIEN
 S:TPBIEN="" TPBIEN="00000000"
 ;
 S PARSUFAC=$$GET1^DIQ(90050.01,ARBILLIN_",",8,"I")     ;A/R BILL, PARENT LOCATION
 S PARSUFAC=$$CURASUFC(PARSUFAC,ARDOSBEG)
 ;
 S LARSUFAC=$$GET1^DIQ(90050.01,ARBILLIN_",",108,"I")    ;A/R BILL, VISIT LOCATION
 S LARSUFAC=$$CURASUFC(LARSUFAC,ARDOSBEG)
 Q PARSUFAC_LARSUFAC_TPBIEN
 ;
CURASUFC(LOCIEN,BARDOS) ;EP - GET CURRENT ASUFAC BASED ON 'DOS BEGIN' (#102) IN A/R BILL FILE
 Q:LOCIEN="" "UNPOPL"
 Q:BARDOS="" "UNPOPD"
 N ASUFAC,BARDT,BARDTFLG
 S ASUFAC=""
 S BARDT=0
 S BARDTFLG=0
 S ASUFAC=$$GET1^DIQ(9999999.06,DUZ(2)_",",.12)  ;First take it from 'asufac index" field
 ;if not, check class multiple
 I 'ASUFAC D
 .F  S BARDT=$O(^AUTTLOC(LOCIEN,11,BARDT)) Q:BARDT=""!(BARDTFLG=1)  D
 ..I BARDOS>$P($G(^AUTTLOC(LOCIEN,11,BARDT,0)),U) D
 ...S ASUFAC=$P($G(^AUTTLOC(LOCIEN,11,BARDT,0)),U,6)
 ...S BARDTFLG=1
 ;S:ASUFAC="" ASUFAC=$$GET1^DIQ(9999999.06,DUZ(2)_",",.12)
 Q ASUFAC
 ;
OUTOFORD(PARAM,OPTNAME) ;EP - PLACE OPTION OUT OF ORDER
 Q:PARAM="NO"!(PARAM="") 0
 N OPTIEN,BARMSG
 S OPTIEN=$O(^DIC(19,"B",OPTNAME,""))
 S $P(^DIC(19,OPTIEN,0),U,3)="Option is disabled for this site"
 S DA=OPTIEN D REDO^XQ7
 Q OPTIEN
 ;
ENABLORD(PARAM,OPTNAME) ;EP - ENABLE OPTION
 Q:PARAM="YES" 0
 N OPTIEN
 S OPTIEN=$O(^DIC(19,"B",OPTNAME,""))
 S $P(^DIC(19,OPTIEN,0),U,3)=""
 S DA=OPTIEN D REDO^XQ7
 Q OPTIEN
 ;
DELFLG(UDUZ,SESSID) ;EP - DELETE 'SESSION ID ALREADY ASSIGNED' FLAG
 K DIR,DIE,DR,DIC,DA
 S DA(1)=UDUZ
 S DA=SESSID
 S DR=".05///@"
 S DIE="^BARSESS(DUZ(2),"_DA(1)_",11,"
 D ^DIE
 Q 1
 ;
GETDISLM(FORM) ;EP - GET 'UFMS DISPLAY DATE LIMIT'
 N DISLIM
 S FORM=$G(FORM)
 S:FORM="" FORM="E"
 ;IHS/SD/PKD 1.8*21 4/1/11 Display ALL Not yet Transmitted: for supervisor HEAT20496
 I $G(STATUS)'["TRANSMITTED"&($G(XQSV)["BARZ MANAGER") Q ""
 S DISLIM=$$GET1^DIQ(90052.06,DUZ(2)_",",1504,"I")
 I DISLIM'="" S X=DISLIM,%DT="" D ^%DT S DISLIM=Y
 I FORM="I" Q DISLIM
 S Y=$P(DISLIM,".") X ^DD("DD") S DISLIM=Y
 Q DISLIM
 ;
RTCOUNT(UDUZ,SESSID) ;EP - RETURN NUMBER OF RETRANSMISSIONS
 N DATETIME,RTCOUNT
 S DATETIME=0
 S RTCOUNT=0
 F  S DATETIME=$O(^BARSESS(DUZ(2),UDUZ,11,SESSID,1,DATETIME)) Q:'DATETIME  D
 .I $P($G(^BARSESS(DUZ(2),UDUZ,11,SESSID,1,DATETIME,0)),U,2)="RT" S RTCOUNT=RTCOUNT+1
 Q RTCOUNT
 ;
RANGE(RANGE) ;EP - TAKE RANGE AND EXPAND IT 1,2,5-10,13,14
 N PIECE,ITEM,NRANGE,CNT
 S NRANGE=""
 F PIECE=1:1 S ITEM=$P(RANGE,",",PIECE) Q:ITEM=""  D
 .I ITEM'[("-") S NRANGE=NRANGE_ITEM_"," Q
 .S LOW=$P(ITEM,"-"),HIGH=$P(ITEM,"-",2)
 .F CNT=LOW:1:HIGH S NRANGE=NRANGE_CNT_","
 S NRANGE=","_NRANGE
 Q NRANGE
 ;
EXCLLST(RANGE,LIST) ;EP - TAKE RANGE AND EXCLUDE FROM LIST IF NOT CHOSEN
 N REC
 S REC=""
 F  S REC=$O(LIST(REC)) Q:'REC  D
 .I RANGE'[(","_REC_",") K LIST(REC)
 Q
 ;
 ;CNTSTATS(STATCNTS) ;EP - COUNTS STATUSES
CNTSTATS(STATCNTS,PERS) ;EP - COUNTS STATUSES   ;BAR*1.8*4 IM26064
 N DATELIM,STATUS,UDUZ
 S STATUS=""
 F  S STATUS=$O(^BARSESS(DUZ(2),"C",STATUS)) Q:STATUS=""  D
 .S UDUZ=""
 .F  S UDUZ=$O(^BARSESS(DUZ(2),"C",STATUS,UDUZ)) Q:'UDUZ  D
 ..I $D(PERS) Q:UDUZ'=PERS  ;BAR*1.8*4 IM26064
 ..S DATELIM=$$GETDISLM("I")-.01
 ..F  S DATELIM=$O(^BARSESS(DUZ(2),"C",STATUS,UDUZ,DATELIM)) Q:'DATELIM  D
 ...Q:DATELIM<3101001  ;stops sessions prior to 10/1/08 from being counted bar*1.8*21 SDR
 ...S STATCNTS(STATUS)=$G(STATCNTS(STATUS))+1
 ...S STATCNTS("ALL STATUSES")=$G(STATCNTS("ALL STATUSES"))+1
 Q
 ;
PRELIVE(AREAIEN,INSTYPE) ;EP - RETURN PRE 10/1/2007 APPLYTO FIELD BASED ON A/R ACCOUNT AND LOCATION
 Q:$G(AREAIEN)=""&($G(INSTYPE)="") "UNKN  UNKN  "
 N SUFFIX,PREFIX
 S BAR08DT=$P($G(^BAR(90052.06,DUZ(2),DUZ(2),15)),U,5)  ;IHS/SD/SDR bar*1.8*4 SCR100
 S SUFFIX="",PREFIX=""
 S SUFFIX=$$SUFFIX(U_INSTYPE_U)
 S PREFIX=$$PREFIX(U_AREAIEN_U)
 Q PREFIX_SUFFIX
 ;
SUFFIX(INSTYPE) ;EP - RETURN SUFFIX BASED ON INSTYPE
 S PVTIN=U_"H"_U_"M"_U_"P"_U_"F"_U
 S MCAID=U_"D"_U_"K"_U
 S MCARE=U_"R"_U_"MD"_U_"MH"_U
 S OTHER=U_"W"_U_"C"_U_"N"_U_"I"_U_"T"_U_"G"_U  ;IHS/SD/SDR bar*1.8*4  bar*1.8*6
 ;S OTHER=U_"W"_U_"C"_U_"N"_U_"I"_U  ;IHS/SD/SDR bar*1.8*4  bar*1.8*6
 I PVTIN[INSTYPE Q "PVTIN"
 I MCAID[INSTYPE Q "MCAID"
 I MCARE[INSTYPE Q "MCARE"
 I OTHER[INSTYPE Q "OTHER"
 Q "UNDEF"
 ;
PREFIX(AREAIEN) ;EP - RETURN PREFIX BASED ON AREA
 S ABR07=U_4_U     ;BASED ON THE (#.04) AREA [4P:9999999.21] FIELD IN THE
 S ABQ07=U_10_U    ;LOCATION FILE.
 S OKC07=U_18_U
 S NAV07=U_34_U
 S TUC07=U_1_U
 S NAS07=U_19_U
 S PHX07=U_25_U
 S BEM07=U_5_U
 S BIL07=U_16_U
 S POR07=U_31_U
 ;I PRELIVLM=3081001 G FY08  ;BAR*1.8*4 FY08-SRS-80  ;IHS/SD/SDR bar*1.8*4 SCR100
 ;I (TPBAPDT>PRELIVLM),(TPBAPDT<BAR08DT) G FY08  ;IHS/SD/SDR bar*1.8*4 SCR100 ;bar*1.8*5 SCR106
 I (TPBAPDT<BAR08DT) G FY08  ;IHS/SD/SDR bar*1.8*4 SCR100  ;bar*1.8*5 SCR106
 I ABR07[AREAIEN Q "ABR07"
 I ABQ07[AREAIEN Q "ABQ07"
 I OKC07[AREAIEN Q "OKC07"
 I NAV07[AREAIEN Q "NAV07"
 I TUC07[AREAIEN Q "TUC07"
 I NAS07[AREAIEN Q "NAS07"
 I PHX07[AREAIEN Q "PHX07"
 I BEM07[AREAIEN Q "BEM07"
 I BIL07[AREAIEN Q "BIL07"
 I POR07[AREAIEN Q "POR07"
 ;
 ;NEW BAR*1.8*4 FY08-SRS-80
FY08 ;EP - SET PRELIVE PREFIX FOR 10/1/2008
 ;PRELIVE 10/1/2008
 I ABR07[AREAIEN Q "ABR08"
 I ABQ07[AREAIEN Q "ABQ08"
 I OKC07[AREAIEN Q "OKC08"
 I NAV07[AREAIEN Q "NAV08"
 I TUC07[AREAIEN Q "TUC08"
 I NAS07[AREAIEN Q "NAS08"
 I PHX07[AREAIEN Q "PHX08"
 I BEM07[AREAIEN Q "BEM08"
 I BIL07[AREAIEN Q "BIL08"
 I POR07[AREAIEN Q "POR08"
 Q "UNDEF"
 ;
GETSUFAC() ;EP;GIVEN DUZ(2)
 ;   get parent from parent/satellite file
 N BARSAT,BARPAR,DA,ASUFAC
 S BARSAT=DUZ(2)
 S BARPAR=0                               ; Parent
 ; check site active at DOS to ensure bill added to correct site
 S DA=0
 F  S DA=$O(^BAR(90052.06,DA)) Q:DA'>0  D  Q:BARPAR
 . Q:'$D(^BAR(90052.06,DA,DA))  ; Pos Parent UNDEF Site Parameter
 . Q:'$D(^BAR(90052.05,DA,BARSAT))  ; Satellite UNDEF Parent/Satellit
 . Q:+$P($G(^BAR(90052.05,DA,BARSAT,0)),U,5)  ; Par/Sat not usable
 . ; Q if sat NOT active at DT
 . I DT<$P($G(^BAR(90052.05,DA,BARSAT,0)),U,6) Q
 . ; Q if sat became NOT active before DT
 . I $P($G(^BAR(90052.05,DA,BARSAT,0)),U,7),(DT>$P($G(^BAR(90052.05,DA,BARSAT,0)),U,7)) Q
 . S BARPAR=$S(BARSAT:$P($G(^BAR(90052.05,DA,BARSAT,0)),U,3),1:"")
 S ASUFAC=$$CURASUFC(BARPAR,DT)
 Q ASUFAC
 ;
DELETE(UDUZ,SESSID) ;EP - DELETE SESSION
 K DIR,DIE,DIC,DR,DA
 S DA(1)=UDUZ
 S DA=SESSID
 S DIK="^BARSESS(DUZ(2),"_DA(1)_",11,"
 D ^DIK
 W !,"Session ",SESSID," has been deleted for cashier ",$P($G(^VA(200,UDUZ,0)),U)
 K DIR
 D ASKFORRT^BARUFUT
 Q
 ;
FILLSTR(STR,LENGTH,JUST,FILLER) ;EP - FILL STRING TO FIXED LENGTH
 N FILL
 S LENGTH=$G(LENGTH),JUST=$G(JUST)
 S STR=$E(STR,1,LENGTH)
 Q:$L(STR)=LENGTH STR
 S $P(FILL,FILLER,LENGTH-$L(STR)+1)=""
 I JUST="L" S STR=STR_FILL
 E  S STR=FILL_STR
 Q STR
 ;dec=0 decimal implied
 ;just="L" left justified   R=right justified
FILLDOL(DOL,LENGTH,JUST,DEC) ;EP - FILL DOLLAR AMT TO FIXED LENGTH
 N FILL
 I DOL<0 S DOL=$E(DOL,2,100000000)
 S JUST=$$UPC^BARUTL(JUST)
 S LENGTH=$G(LENGTH),JUST=$G(JUST),DEC=$G(DEC)=1
 ;LETS ADD THE RIGHT SIDE CUZ A/R DOESN'T STORE THE WHOLE NUMBER
 I DOL'[(".") S DOL=DOL_"."
 S:$P(DOL,".",2)="" DOL=DOL_"00"
 S:$L($P(DOL,".",2))=1 DOL=DOL_"0"
 I 'DEC S DOL=$TR(DOL,".")
 S DOL=$E(DOL,1,LENGTH)
 Q:$L(DOL)=LENGTH DOL
 S $P(FILL,"0",LENGTH+1-$L(DOL))=""
 I JUST="R" S DOL=FILL_DOL
 E  S DOL=DOL_FILL
 Q DOL
 ;
ASKFNAME(BARFILE) ;EP - ASK FOR FILENAME
 S BARFILE=$$GETFILNM()
 W !!,"File will be created using the following name: ",BARFILE
 Q 1  ;BAR*1.8*4  NO LONGER ALLOW USER TO CHANGE FILENAME
 ;K DIR
 ;S DIR(0)="F"
 ;S DIR("B")=$$GETFILNM()
 ;S DIR("A")="Enter filename: "
 ;D ^DIR
 ;Q:$D(DTOUT)!($D(DUOUT)) 0
 ;S BARFILE=Y
 ;I BARFILE'="" Q 1
 ;Q 0
 ;
GETFILNM() ;EP - CREATE FILE NAME
 N FNROOT,FNEXT,FN,YR,DATE,TIME,DATETIME,BARPK,BARPT,BARP2,BARP3
 S FNROOT="IHS_AR_RPMS_RCV_"_DUZ_"_"_$$GETSUFAC()
 ;BAR*1.8*4 CHECK FOR FILE NAME ALREADY USED -- ADDED VERSION_PATCH
 S FNXREF=DUZ_"_"_$$GETSUFAC()
 S BARV=$$VERSION^XPDUTL("BAR")
 S BARP2=$$FILLSTR^BARUFUT1($P(BARV,".",2),2,"R","0")
 S BARPK=$O(^DIC(9.4,"C","BAR",0))
 S BARPK="IHS ACCOUNTS RECEIVABLE"
 ;S BARPT=$$LAST^XPDUTL(BARPK,BARV)  ;IHS/SD/SDR 5/26/09 HEAT4301 BAR*1.8*13
 S BARPT=$$PATCH^BARUTL(BARPK,BARV)  ;IHS/SD/SDR 5/26/09 HEAT4301 BAR*1.8*13
 S BARP3=$$FILLSTR^BARUFUT1(+BARPT,2,"R","0")
 S FNXT=$P(BARV,".",1)_"."_BARP2_"."_BARP3
 ;S FNEXT=".DAT"               ;PER WANDA 4/13/2007
 S FNEXT="_"_FNXT_".DAT"       ;MRS:BAR*1.8*4  ADD VERSION/PATCH
 S FN=FNROOT
GETFILAG ;BAR*1.8*4 CHECK FOR FILE NAME ALREADY USED
 D NOW^%DTC
 S YR=1700+$E(%,1,3)
 S DATE=YR_$E(%,4,7)
 S Y=% X ^DD("DD")
 ;S TIME=$TR($P($P(Y,"@",2),":",1,2),":")
 S TIME=$TR($P(Y,"@",2),":")              ;BAR*1.8*4 IM26353 ADD SECONDS
 S:$L(TIME)=4 TIME=TIME_"00"
 S DATETIME=DATE_"_"_TIME
 I $D(^BARSESS(DUZ(2),"FN",FNXREF_"_"_DATETIME)) W !,"FILENAME ALREADY USED" H 2 G GETFILAG
 S FN=FNROOT_"_"_DATETIME
 S FN=FN_FNEXT
 Q FN
 ;
SITECHK ;EP - CHECK DUZ(2) FOR SITE SET UP
 I '$D(^BARBL(DUZ(2))) D  Q
 . W !,$P(^DIC(4,DUZ(2),0),U)," IS NOT REGIONALLY SETUP"
 . W !,"CONTACT YOUR A/R MANAGER",*7
 . S BARQUIT=1
 . S XQUIT=1
 . D EOP^BARUTL(1)
 Q
