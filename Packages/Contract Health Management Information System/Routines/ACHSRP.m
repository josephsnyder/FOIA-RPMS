ACHSRP ; IHS/ITSC/PMF - PRINT CHS FORMS ; 27 Jul 2010  11:56 AM
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**2,11,13,16,19,25**;JUN 11, 2001;Build 37
 ;;ACHS*3.1*2; check for POs for the user's facility
 ;3.1*11; 9.16.04 IHS/ITSC/FCJ TEST FOR E-SIG ADDED
 ;ACHS*3.1*13 12/11/07 IHS/OIT/FCJ FX NAKED REF
 ;ACHS*3.1*16 10/26/2009 IHS.OIT.FCJ COPY REQUEST FOR ZUNI
 ;
 ;CALLED FROM OPTION ACHSRP^Print Documents (IEN=6105)
Z ;
 ;IF ACHSRPNT IS NULL THEN THIS RTN HAS BEEN CALLED BY ACHSRR AT TAG B1
 ;TO RE-PRINT FORM
 K A,B,C,D,E,F,^TMP("ACHSRR",$J),ACHSRPNT
 S (ACHSALL,ACHSREG,C)=0
 ;
 ;12/26/01  pmf  check for docs under THIS facility only  ACHS*3.1*2
 ;I '$D(^ACHSF("PQ")) D  Q  ; ACHS*3.1*2
 I '$D(^ACHSF("PQ",DUZ(2))) D  Q  ; ACHS*3.1*2
 .W !,"Documents were not found to be queued!"
 .D RTRN^ACHS        ;THE PQ IS A FM X-REF THE FORM IS:
 ;                   ^ACHSF("PQ",FACILITY,TYPE OF SERVICE,DOC #,TRAN #
 ;                   IF THIS IS NOT THERE AND U NEED TO DO A RE-PRINT
 ;                   USE RTN ACHSYPQ TO RESET THE PQ X-REF
 ;
A1 ;
 ;DUZ(2) is saved and restored in the menu option ACTION field.?????IS IT
 ;
B1 ;EP.
 W !
 I $P(^AUTTLOC(DUZ(2),0),U,10)=202501 S ACHSCPY=4,ACHSCPY=$$DIR^ACHS("N^0:10:0","Print how many copies? ",ACHSCPY)  ;OIT.IHS.FCJ ADDED FOR ZUNI PATCH
 K DTOUT,DUOUT,POP
 S %ZIS="P",%ZIS("A")="Print Forms On Device: "
 D ^%ZIS                       ;EXIT BY "^" POP=1
 I POP D END Q                 ;EXIT OUT OF %ZIS
 I $D(IO("S")) D SLV^ACHSFU    ;IF SLAVE DEV, DO OPEN & GET CLOSE PARAMS
 ;
 ;WHY DO WE DO THIS NEXT LINE IF DTOUT IS NOT RETURNED FROM %ZIS?????
 ;D:$D(DTOUT),END,END:$D(DUOUT)&$D(ACHSRPNT),END:$D(DUOUT),Z:$D(DUOUT),END:'$D(IO),END:POP
 ;
 ;IS THIS NOT A RE-PRINT SET UP NEW ENTRY IN 'CHS DOCUMENT PRINTED LIST'
 ;I DON'T THINK THIS IS AN APPROPRATE PLACE TO DO THIS???????
 ;WILL LEAVE FOR NOW BUT NEEDS TO BE MODIFIED.
 I '$D(ACHSRPNT) D
 . I '$$LOCK^ACHS("^ACHS(7)","+") W !,"LOCK FAILED AT B1+13^ACHSRP"
 . ;GET 0 RECORD OF 'CHS DOCUMENT PRINTED LIST' FILE
 . S X=$G(^ACHS(7,0))
 . S ACHS7DA=$P(X,U,3)+1   ;MANUALLY INCREMENT # ENTRIES FIELD 
 . ;S ^(0)=$P(X,U,1,2)_U_ACHS7DA_U_ACHS7DA  ;PLACE INTO 0 RECORD ;ACHS*3.1*13 12/11/07 IHS/OIT/FCJ FX NAKED REF
 . S ^ACHS(7,0)=$P(X,U,1,2)_U_ACHS7DA_U_ACHS7DA  ;PLACE INTO 0 RECORD ;ACHS*3.1*13 12/11/07
 . S ^ACHS(7,ACHS7DA,0)=IO_U_DT,^ACHS(7,ACHS7DA,"D",0)="^9002067.01^^",^ACHS(7,"CZ",9999999-DT,ACHS7DA)="",^ACHS(7,"B",IO,ACHS7DA)=""
 . I '$$LOCK^ACHS("^ACHS(7)","-")
 ;
 ;
 ;LOOP THROUGH THE PQ X-REF BASED ON THE TYPE OF SERVICE
 F ACHSTYPV=1,3,2 S ACHSACF=$S(ACHSTYPV=1:"Hospital Service",ACHSTYPV=3:"Outpatient Service",ACHSTYPV=2:"Dental Service",1:"") D  I $D(DUOUT) D END Q
 .D SB1
 K DIR
 ;
 ;ACHS*3.1*11; 9.16.04 IHS/ITSC/FCJ DISPLAY MESG FOR UNSIGNED DOCS
 ;I $D(ACHSEFL),$P(ACHSEFL,U,3)>0 W !!!,"**** ",$P(ACHSEFL,U,3)," Documents were NOT printed, because missing E-Signature ****"
 I ($D(^ACHSF("EQ",DUZ(2)))!$D(ACHSF("EAQ"),DUZ(2))) W !!!,"****  Some Documents were NOT printed, because missing E-Signature ****" ;ACHS*3.1*25
 I $G(ACHSREG) F  W !!!!,*7 S DIR(0)="E",DIR("A",1)="Put Regular Paper Back In The Printer ",DIR("A")="And Press RETURN",DIR("T")=10 D ^DIR Q:Y=1
 D END
 Q
 ; 
SB1 ;
 I '$D(ACHSRPNT),'$D(^ACHSF("PQ",DUZ(2),ACHSTYPV)) D S18 Q   ;DOCS NOT QUED
 ;
 I $D(ACHSRPNT),'$D(^TMP("ACHSRR",$J)) D S18 Q    ;DATA HAS NOT BEEN PROCESSED QUIT
 ;
 Q:'$$DIR^XBDIR("Y","Print "_ACHSACF_" Forms ","YES","","","",2)
 Q:$D(DUOUT)!$D(DTOUT)
 S ACHSREG=1      ;
 I $D(^ACHSESIG(DUZ(2))) S ACHSEFL=$P(^ACHSESIG(DUZ(2),0),U,2,3) ;ACHS*3.1*11 9.16.04 IHS/ITSC/FCJ TEST FOR E-SIG ADDED LINE
 D ^ACHSRP1       ;GO GET THE DATA AND PRINT THE FORM
 ;
 Q
 ;
S18 ;
 W !!,"***   No ",ACHSACF," Forms Queued   ***"
 I $$DIR^XBDIR("E","Press RETURN...")
S19 ;
 Q
 ;
HDR ;
 S X="DOCUMENT PRINTING"
 D SHDR^ACHS
 K ACHSTYP,ACHSPROV,ACHSCONP,ACHSCAN,ACHSSCC,ACHSCOPT,ACHSESDA,ACHSESDO,ACHSFDT,ACHSTDT,ACHSHON,ACHSORDN,ACHSBLKF
 Q
 ;
 ;LETS CLEAN UP AND GET OUTA HERE  ;DOES THIS REALLY RESET DUZ AND FAC VARS?????
END ;
 K B,DFN
 I $G(ACHSDUZ2) S ^TMP("ACHSDUZ2",$J)=ACHSDUZ2
 D ^%ZISC            ;CLOSE ALL DEVICES
 D EN^XBVK("ACHS")   ;KILL VARS IN ACHS NAMESPACE
 D ^ACHSVAR         ;RESET ACHS VARIABLES
 I $G(^TMP("ACHSDUZ2",$J)) S ACHSDUZ2=$G(^TMP("ACHSDUZ2",$J)) K ^($J)
 K DIR  ;achs*3.1*19
 Q
 ;
