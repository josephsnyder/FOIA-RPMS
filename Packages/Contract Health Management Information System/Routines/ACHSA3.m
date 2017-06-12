ACHSA3 ; IHS/ITSC/PMF - ENTER DOCUMENTS (4/8)-(CON,DESC,PRD,ONUM) ;   [ 09/22/2004  3:39 PM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**11**;JUN 11, 2001;Build 37
 ;ITSC/SET/JVK ACHS*3.1*11 MODIFIED TO DISPLAY MEDICARE PROVIDER
 ;
B4 ;
 S ACHSACO=""  ;FOR USE IN ACHSUCN
 ;
 D ^ACHSUCN    ;SELECT OR PRINT VENDOR CONTRACT INFO; SETS UP ACHSRT( 
 ;
 ;C=NUMBER OF VALID CONTRACTS FOUND
 ;L= ARRAY OF CONTRACT PTR^WEIRD SERVICE DATE^CONTRACT NUMBER
 I C=1 S ACHSCONP=$P(L,U)
 S:$D(ACHSPROV) P=ACHSPROV
 ;
 ;
 D A1^ACHSURT              ;SELECT DISPLAY RATE QUOTATIONS ,USES ACHSRT(
 ;
 D CARE
 I ACHSACO="N" G B6A             ;MEANS NO CONTRACTS IN FORCE
 ;
 I ACHSCTNA=0!(ACHSCTNA>C) G R1
 ;
B5 ; Enter contract number of vendor
 W !!,"Contract Number: "
 I ACHSCONP,$D(^AUTTVNDR(ACHSPROV,"CN",ACHSCONP,0)) W $P($G(^AUTTVNDR(ACHSPROV,"CN",ACHSCONP,0)),U),"// " G B5B
 G B6:C>1
B5B ;
 D READ^ACHSFU
 I $G(ACHSQUIT) D END^ACHSA Q
 ;
 ;GO BACK TO ENTER DATE OF SERVICE
 G B5^ACHSA1:$D(DUOUT),B6:Y?1"?".E,R1:Y=""
 ;
 S C=0
 I Y="@" S ACHSCONP="" W "  Deleted" G R1
 ;
 ;??????
 I Y]"",$L(Y)<32 D
 .S N=""
 .F I=1:1 S N=$O(^AUTTVNDR(ACHSPROV,"CN","AB",Y,N)) Q:N=""  I $D(^AUTTVNDR(ACHSPROV,"CN",N,0)),ACHSFDT'>$P($G(^AUTTVNDR(ACHSPROV,"CN",N,0)),U,3),ACHSFDT'<$P($G(^AUTTVNDR(ACHSPROV,"CN",N,0)),U,2) S C=C+1,L=N
 I C=1 S ACHSCONP=L G B5
 W *7,"  ??"
B6 ;
 S ACHSACO="L"         ;
 ;
 ;WE JUST DID THIS ABOVE?????
 D ^ACHSUCN      ;SELECT OR PRINT VENDOR CONTRACT INFO; SETS UP ACHSRT(
 ;
B6A ;
 I 'C,ACHSACO="N" W !!,"  No Contracts Currently in Force For This Vendor" G R1
B7 ;
 W !!,"Which One: "
 D READ^ACHSFU
 I $G(ACHSQUIT) D END^ACHSA Q
 ;
 ;RETURN TO SELECT PROVIDER / VENDOR
 G B5A^ACHSA1:$D(DUOUT)
 ;
 I Y?1"?".E W "   Select 1 Thru ",(C+1) G B7
 G B5:Y=""
 I Y<1!(Y>(C+1)) W *7,"  ????" G B7
 I Y=(C+1) S ACHSCONP="" W !!,"Contract Number: Open Market// " G B5B
 S ACHSACO="F",F=Y
 ;
 ;5/11/01  pmf  taking out this call to ACHSUCN.  don't know why
 ;we go there at this point, and we're coming back wrong.
 ;D ^ACHSUCN      ;SELECT OR PRINT VENDOR CONTRACT INFO; SETS UP ACHSRT(
 ;
 ;5/11/01   pmf   also replacing this check and set with a better one
 ;I C'=F W *7,"  ??" K ACHSCONP G B5
 ;S ACHSCONP=$P(L,U)
 ;
 S ACHSCONP=$P(ACHSRT(Y),U,11)
 G B5
 ;
R1 ; Display rate/AGR quotes for vendors.
 G:'$D(ACHSRT(0,"ACTIVE")) B10
 I ACHSCTNA'>C G R10
 ;
 ;DONE ABOVETO TAG A1 WHY TWICE?????
 D A2^ACHSURT         ;SELECT DISPLAY RATE QUOTATIONS ,USES ACHSRT(
 ;
R10 ;
 I +ACHSAGRP=0 G B10
 ;
 ;'MEDICARE RATE FOR INPATIENT'
 S:ACHSTYP=1 ACHSDRG=$P($G(^AUTTVNDR(ACHSPROV,18,ACHSAGRP,0)),U,4)
 ;
 ;'MEDICARE RATE FOR OUTPATIENT'
 S:ACHSTYP=3 ACHSCONP=$P($G(^AUTTVNDR(ACHSPROV,18,ACHSAGRP,0)),U,5)
B10 ;
 I ACHSTYP=2 G B20    ;IF DENTAL SERVICE BYPASS DESCRIPTION
 ;ITSC/SET/JVK ACHS*3.1*11 MODIFIED TO SELECT MEDICARE PROVIDER NO.
 S ACHSMPN=$P($G(^AUTTVNDR(ACHSPROV,23)),U) I ACHSMPN'="Y" S ACHSMPN="" G B20
 I ACHSTYP'=1 G B20
 I ACHSMPN="Y" S Y=$$DIR^XBDIR("Y","Want to use the Medicare like Rate","NO","","","",2)
 I 'Y S (ACHSMPN,ACHSDS,ACHSMPP)="" G B20
 I Y S Y=+$$DIR^XBDIR("NO^1:"_CT,"Enter the number","","","","",2)
 I Y>0  S ACHSCONP="",ACHSMPN=ACHSMPN(Y),ACHSMPP=Y,ACHSDS=$P(ACHSMPN(Y),U,2)
 I ACHSDS S ACHSDES=$$EXTSET^XBFUNC(9999999.112303,2,ACHSDS)
 ;ITSC/SET/JVK ACHS*3.1*11 END OF MODIFICATION
 ;
B20 ; Enter description of service.
 D DUPCK
 K DIR
 S DIR(0)="9002080.01,26"
 S:$G(ACHSDES)]"" DIR("B")=ACHSDES
 W !,$$PRMT^ACHSFU(22,ACHSDES,30)   ;(TAB,VAR,LENGTH) FORMAT PRINT
 K DA
 D ^DIR,DIRD^ACHSFU:X="@"
 I $D(DTOUT) D END^ACHSA Q
 G B5^ACHSA1:$D(DUOUT)&(ACHSTYP=2),A3^ACHSA:$D(DUOUT)
 S ACHSDES=Y
 K DIR
C1 ; Enter period of authorization (From/To dates).
 S ACHSFDT=ACHSEDOS
 ;
 ;IF TYPE OF SERVICE = HOSPITAL SKIP AUTH DATES
 I ACHSTYP=1 G C1A
 W !!,"Period Of Authorization"
A1 ;
 ;ACHS*3.1*23333333 BE SURE TO CHANGE BACK TO 120 DAYS....
 ;S Y=$$DIR^XBDIR("D^:"_$$HTFM^XLFDT($H+120)_":E","From Date",$$FMTE^XLFDT($G(ACHSFDT)),"","Enter a Date Not More Than 120 Days from Today")
 S Y=$$DIR^XBDIR("D^:"_$$HTFM^XLFDT($H+360)_":E","From Date",$$FMTE^XLFDT($G(ACHSFDT)),"","Enter a Date Not More Than 120 Days from Today")
 I $D(DTOUT) D END^ACHSA Q
 G B10:$D(DUOUT)
 S ACHSFDT=Y
A1A ;
 S X1=ACHSFDT,X2=$S(ACHSTYP=2:60,1:10)
 D C^%DTC
 S Y=X,ACHSTDT=Y
 I ACHSTDT,ACHSTDT<ACHSFDT S ACHSTDT=""
A2 ;
 S Y=$$DIR^XBDIR("D^"_ACHSFDT_":"_$$HTFM^XLFDT($$FMTH^XLFDT(ACHSFDT)+120)_":E","To Date",$$FMTE^XLFDT($G(ACHSTDT)),"","Must be After 'From Date' and After Estimated Date Of Service")
 I $D(DTOUT) D END^ACHSA Q
 G A1:$D(DUOUT)
 S ACHSTDT=Y
 I ACHSTDT<ACHSEDOS W !,"** Ending Period Of Authorization Must Be After Estimated Date Of Service **",! G C1
 S ACHSPFYE=($E(ACHSFYDT,1,3)-1)_$P($G(^ACHSF(DUZ(2),0)),U,6)
 S X1=ACHSTDT,X2=ACHSFDT
 D D^%DTC
 I X>120 W *7,!," The Authorization May Not Exceed 120 Days" G A1
C1A ;
 G D1:ACHSTYP'=3  ;IF TYPE OF SERVICE NOT OUTPATIENT SKIP HOSPITAL ORDER
C2 ;
 ;
 D ^ACHSUD1               ;SELECT HOSPITAL ORDER NUMBER
 ;
 I $D(DUOUT) G A3^ACHSA
 G D1:ACHSHON=""
 I '$D(^ACHSF(DUZ(2),"PB",DFN,ACHSHON)) W !!,*7,"Sorry - this document was issued for another patient.",!,"Please Re-enter document number." G C2
 I $P($G(^ACHSF(DUZ(2),"D",ACHSHON,0)),U,4)'=1 W !!,*7,"Sorry - Hospital order number must reference a 43 document.",!,"Please Re-enter document number." G C2
 K E,ORD
D1 ;
 I ACHSCONP D CONCHK G B4:$D(DUOUT)
 ;
 D ^ACHSA4                          ;SELECT DOCUMENTS (CAN)
 ;
 Q
D3 ;
 G B4:ACHSCONP="",B5
 Q
CONCHK ; Check if contract in effect during From-To dates.
 Q:ACHSTYP=1
 K DUOUT
 Q:'$D(^AUTTVNDR(ACHSPROV,"CN",ACHSCONP,0))
 S X=$G(^AUTTVNDR(ACHSPROV,"CN",ACHSCONP,0))
 Q:ACHSFDT'<$P(X,U,2)&(ACHSFDT'>$P(X,U,3))
 I ACHSTDT Q:ACHSTDT'<$P(X,U,2)&(ACHSTDT'>$P(X,U,3))  Q:ACHSFDT<$P(X,U,2)&(ACHSTDT>$P(X,U,3))
 S DUOUT=""
 W *7,!!,"CONTRACT NOT IN EFFECT ",$$FMTE^XLFDT(ACHSFDT),$S(ACHSTDT:" TO "_$$FMTE^XLFDT(ACHSTDT),1:""),".",!
 Q
 ;
 ;
DUPCK ;
 Q:'$G(DFN)!('$G(ACHSPROV))!('$G(ACHSPATF))
 N D,T,R
 S D=0
 ;GO THROUGH PATIENT PTR X-REF
 F  S D=$O(^ACHSF(ACHSPATF,"PB",DFN,D)) Q:D=""  D
 .;QUIT IF 'PROVIDER (VENDOR)' SAME AS ???
 .Q:$P($G(^ACHSF(ACHSPATF,"D",D,0)),U,8)'=ACHSPROV
 .;
 .;GET AUTH AND REFERRAL 3 NODE
 . S R=$G(^ACHSF(ACHSPATF,"D",D,3))
 .Q:R=""
 .;EST. DATE OF SERVICE ENTERED BY USER = 'ESTIMATED DATE OF SERVICE'
 . D:ACHSEDOS=$P(R,U,9) MSG("Estimated")
 . ;
 .;EST. DATE OF SERVICE ENTERED BY USER '< 'AUTH BEGINNING DATE'
 .;AND EST. DATE OF SERVICE ENTERED BY USER '> 'AUTH ENDING DATE'
 . I ACHSEDOS'<$P(R,U),ACHSEDOS'>$P(R,U,2) D MSG("Authorized")
 . S T=0
 .;
 .;GO THROUGH TRANSACTIONS IF EST. DATE OF SERVICE ENTERED BY USER
 .; ='DATE OF SERVICE' 
 . F  S T=$O(^ACHSF(ACHSPATF,"D",D,"T",T)) Q:T=""  I ACHSEDOS=$P($G(^ACHSF(ACHSPATF,"D",D,"T",T,0)),U,10) D MSG("Payment") Q
 ;
 Q
 ;
MSG(MSG) ;
 W *7,*7,*7,!!,$$C^XBFUNC("Hold on now pardner!  Whoa Nellie!")
 W !!,$$C^XBFUNC("Document "_$P($G(^ACHSF(ACHSPATF,"D",D,0)),U,14)_"-"_$$FC^ACHS(ACHSPATF)_"-"_$P($G(^ACHSF(ACHSPATF,"D",D,0)),U)_" has a "_MSG_" date real close to yours.")
 W !,$$C^XBFUNC("( Continue....if you're sure this isn't a duplicate P.O. )")
 D RTRN^ACHS
 Q
 ;
CARE ;
 ;ITSC/SET/JVK ACHS*3.1*11 MODIFIED TO DISPLAY MEDICARE PROVIDER
 S ACHSMCR=$P($G(^AUTTVNDR(ACHSPROV,23)),U,1),ACHSLDT=$P($G(^AUTTVNDR(ACHSPROV,23)),U,2)
 I ACHSMCR'="",ACHSTYP=1 S ACHSMCR=$$EXTSET^XBFUNC(9999999.11,2301,ACHSMCR) D
 . W !!,"Medicare Provider Status Set to: ",ACHSMCR,!,"Last Updated:",$$FMTE^XLFDT($G(ACHSLDT)),!
 I ACHSMCR="YES" S (ACHSMP,CT)=0  D
 . W !,?20,"Services at Medicare Like Rates",!
 . W "#",?5,"Provider No",?23,"Effect Date",?37,"End Date",?51,"Description",!
 . W ?5,"-----------",?23,"----------",?37,"--------",?51,"-----------"
 . F I=1:1  S ACHSMP=$O(^AUTTVNDR(ACHSPROV,"MP",ACHSMP)) Q:ACHSMP'>0  D
 .. S ACHSMPN(I)=^AUTTVNDR(ACHSPROV,"MP",ACHSMP,0)
 .. I ACHSMPN(I)'="" S CT=CT+1 S ACHSMPN=$P(ACHSMPN(I),U),ACHSBDT=$P(ACHSMPN(I),U,3),ACHSEDT=$P(ACHSMPN(I),U,4),ACHSDS=$P(ACHSMPN(I),U,2)
 .. I $D(ACHSDS) S ACHSDS=$$EXTSET^XBFUNC(9999999.112303,2,ACHSDS)
 .. W !,$J(CT,2),?5,ACHSMPN,?23,$$FMTE^XLFDT($G(ACHSBDT)),?37,$$FMTE^XLFDT($G(ACHSEDT)),?51,$G(ACHSDS),!
 .. W:CT=0 !!,"No Medicare Numbers listed.",!
 .. Q
 .Q
 ;
