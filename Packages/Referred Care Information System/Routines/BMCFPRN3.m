BMCFPRN3 ; IHS/PHXAO/TMJ - PRINT REFERRAL FORM-EXISTING SECONDARY PROVIDER ;       [ 09/26/2006  4:15 PM ]
 ;;4.0;REFERRED CARE INFO SYSTEM;**1,2,4**;JAN 09, 2006;Build 51
 ;IHS/ITSC/FCJ CHG VEND SECTION TO PRT BTH MAIL/PHY ADD
 ;   PRINT MED HX COMMENTS FR RCIS COMMENTS FILE
 ;4.0*1 2.15.06 IHS/OIT/FCJ REWROTE NXT SECTION TO PRNT ADDRESS FR PARM
 ;4.0*1 5.17.06 IHS/OIT/FCJ CALL TO OTH INS ^BMCFPRN1
 ;4.0*2 IHS/OIT/FCJ ADDED CONSULT PRINT TEST
 ;4.0*3 9.15.08 IHS.OIT.FCJ FX FOR UNDEF VAR WHEN QUEUED
 ;
 ;This Routine Prints the Actual Data for Secondary Provider Letter
 ;The Main Driver Routine = BMCFDR2
 ;The RCIS Output Report Defintion=SECONDARY PROVIDER LETTER-IEN #4
 ;
 ;
PRINT ;
 ;print referral form
 S BMCR0=^BMCREF(BMCREF,0),BMCPG=0,BMCDFN=$P(BMCR0,U,3)
 D @("HEAD"_(2-($E(IOST,1,2)="C-")))
 S BMCQUIT=0
 S X=$P(^BMCTFORM(BMCFTYPE,0),U,2) S N=0,C=1 D W
 S X=$$VAL^XBDIQ1(90001,BMCREF,.01),C=0,N=0,T=66 D W
 D S Q:BMCQUIT
DEMO ;Demographic Data
 Q:BMCQUIT
 S X="Patient Identification, Address, Phone",C=1,T=0,N=1 D W Q:BMCQUIT
 S X="Patient Name:  "_$$VAL^XBDIQ1(90001,BMCREF,.03),C=0,T=0,N=1 D W Q:BMCQUIT
 S X="ID Number:  "_$$HRN^AUPNPAT($P(BMCR0,U,3),DUZ(2),2),N=0,T=50,C=0 D W Q:BMCQUIT
 S X="SSN:  "_$$VAL^XBDIQ1(2,$P(BMCR0,U,3),.09),C=0,T=9,N=1 D W Q:BMCQUIT
 S X="Sex:  "_$$VAL^XBDIQ1(2,$P(BMCR0,U,3),.02),N=0,T=56,C=0 D W Q:BMCQUIT
 S X="Address:  " S:$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1602.2)]"" X=X_$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1602.2) S C=0,T=5,N=1 D W Q:BMCQUIT
 S X="DOB:  "_$$VAL^XBDIQ1(2,$P(BMCR0,U,3),.03),N=0,T=56,C=0 D W Q:BMCQUIT
 S T=15,C=0,N=1,X=$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1603.2)_", "_$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1604.2)_"   "_$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1605.2) D W Q:BMCQUIT
 S X="Hm Phone: "_$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1606.2) S C=0,T=51,N=0 D W Q:BMCQUIT
 ;
REFTO ;
 D L
 S BMCTYPE=$P($G(^BMCREF(BMCREF,0)),U,4)
 Q:BMCTYPE=""
 I BMCTYPE="I" D I Q:BMCQUIT  ;IHS Type Referrals
 I BMCTYPE'="I" D C Q:BMCQUIT  ;Contract & Other Type Referrals
 S X=$$VAL^XBDIQ1(90001,BMCREF,.02),N=0,C=0,T=64 D W Q:BMCQUIT
DATE ;
 ;Secondary Provider Date Print
 S X="Patient Services -                             Appointment Date: "_$$VAL^XBDIQ1(90001.04,BMCPROV,.06) S N=1,C=0,T=0 D W Q:BMCQUIT
 ;
 ;
 D L
PURPOSE ;
 S X="Purpose/Services Requested: "_$$VAL^XBDIQ1(90001.04,BMCPROV,.07)
 I $L(X)>IOM D  I 1
 .S BMCX=X S X=$E(BMCX,1,IOM),N=1,C=0,T=0 D W Q:BMCQUIT
 .S X=$E(BMCX,(IOM+1),IOM),N=1,C=0,T=22 D W Q:BMCQUIT
 E  S C=0,N=1,T=0 D W Q:BMCQUIT
PERTMED ;
 S BMCCMT=0
 F  S BMCCMT=$O(^BMCCOM("AD",BMCREF,BMCCMT)) Q:BMCCMT'?1N.N  D
 .Q:$P(^BMCCOM(BMCCMT,0),U,5)'="M"
 .S BMCNODE=1,BMCIOM=70,BMCFILE=90001.03,BMCDA=BMCCMT,BMCNODE=1
 .D WP K BMCIOM
 .S Y=0 F  S Y=$O(BMCWP(Y)) Q:Y'=+Y!(BMCQUIT)  D
 ..I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 ..W !?5,BMCWP(Y)
ADDMED ;
 S X="Additional Medical Information Attached:  "_$S($$VAL^XBDIQ1(90001,BMCREF,.34)]"":$$VAL^XBDIQ1(90001,BMCREF,.34),1:" Not Documented by Provider"),C=0,T=0,N=2 D W Q:BMCQUIT
REFFROM ;
 S T=0,X=$TR($J(" ",IOM)," ","_") S N=1,C=0 D W Q:BMCQUIT
 S BMCV=$P(BMCR0,U,5)
 S Y=$P(BMCR0,U,4)
 I Y="N" S X="Referring Provider (ELECTRONIC SIGNATURE): "_$$VAL^XBDIQ1(90001,BMCREF,.06),N=1,T=0,C=0 D W Q:BMCQUIT  G PAYOR
 ;
 S X="If you have any questions concerning this referral, please contact:",N=1,C=0,T=0 D W Q:BMCQUIT
 S X="     "_$$VAL^XBDIQ1(90001,BMCREF,.05)_$S($$VAL^XBDIQ1(90001.31,DUZ(2),.17)]"":"  (contact: "_$$VAL^XBDIQ1(90001.31,DUZ(2),.17)_")",1:"")_")" S N=1,C=0,T=0 D W Q:BMCQUIT
 ;4.0*1 2.15.06 IHS/OIT/FCJ REWROTE NXT SECTION TO PRNT ADDRESS FR PARM
 I $$VAL^XBDIQ1(90001.31,BMCV,201)'="" D
 .S X=$$VAL^XBDIQ1(90001.31,BMCV,201)
 .I BMCV,X]"" S N=1,C=0,T=5 D W Q:BMCQUIT
 .S X=$$VAL^XBDIQ1(90001.31,BMCV,202)
 .I BMCV,X]"" D
 ..S X=X_",  "_$$VAL^XBDIQ1(90001.31,BMCV,203)
 ..S X=X_"   "_$$VAL^XBDIQ1(90001.31,BMCV,204)
 ..S X=X_"     (phone:  "_$$VAL^XBDIQ1(90001.31,BMCV,.18)_")",N=1,C=0,T=5 D W Q:BMCQUIT
 E  I $$VAL^XBDIQ1(9999999.06,BMCV,.14)'="" D
 .S X=$$VAL^XBDIQ1(9999999.06,BMCV,.14)
 .I BMCV,X]"" S N=1,C=0,T=5 D W Q:BMCQUIT
 .S X=$$VAL^XBDIQ1(9999999.06,BMCV,.15)
 .I BMCV,X]"" D
 ..S X=X_",  "_$$VAL^XBDIQ1(9999999.06,BMCV,.16)
 ..S X=X_"   "_$$VAL^XBDIQ1(9999999.06,BMCV,.17)
 ..S X=X_"     (phone:  "_$$VAL^XBDIQ1(90001.31,BMCV,.18)_")",N=1,C=0,T=5 D W Q:BMCQUIT
 ;4.0*1 2.15.06 IHS/OIT/FCJ END OF CHANGES
 S X="Referring Provider (ELECTRONIC SIGNATURE):  "_$$VAL^XBDIQ1(90001,BMCREF,.06),N=1,T=6,C=0 D W Q:BMCQUIT
 S X="Case Manager:  "_$$VAL^XBDIQ1(90001,BMCREF,.19),N=1,T=6,C=0 D W Q:BMCQUIT
 S X="Veteran: "_$$VAL^XBDIQ1(2,$P(BMCR0,U,3),1901),N=0,T=56,C=0 D W Q:BMCQUIT
PAYOR ;CALL BMCFPRN1 TO PRINT OTHER PAYOR INFORMATION
 ;4.0*1 5.17.06 IHS/OIT/FCJ REM PAYOR SECTION AND ADDED CALL
 D OTHPAY^BMCFPRN1
TEXT ;
 W ! D S
 K BMCWP
 S BMCCHSAS=$P($G(^BMCREF(BMCREF,11)),U,12)
 ;
 I $P(BMCR0,U,4)="C" S BMCNODE=$S(BMCCHSAS="A":1,BMCCHSAS="D":2,BMCCHSAS="P":3,1:3) S BMCFILE=90001.33,BMCDA=BMCFTYPE D WPTXT
 I $P(BMCR0,U,4)="O" S BMCNODE=2,BMCFILE=90001.33,BMCDA=BMCFTYPE D WPTXT
 I $P(BMCR0,U,4)="I"!($P(BMCR0,U,4)="N") W ! S BMCWP(1)=""
 ;
 S BMCY=0 F  S BMCY=$O(BMCWP(BMCY)) Q:BMCY'=+BMCY!(BMCQUIT)  D
 .I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 .W !,BMCWP(BMCY)
 ;
LINE ;CHS Supervisor Signature (if Type=CHS)
 ;Q:$P(BMCR0,U,4)'="C" ;4.0*2 IHS/OIT/FCJ
 G:$P(BMCR0,U,4)'="C" CONSULT ;4.0*2 IHS/OIT/FCJ
 W !!!!!
 S X="____________________",C=0,T=50,N=1 D W Q:BMCQUIT
 W !
 S X="Contract Health Service Office",C=0,T=50,N=1 D W Q:BMCQUIT
W ;
 Q:X=""
 NEW %
 S %=$L(X)
 I $Y>(IOSL-4) D HEAD Q:BMCQUIT
 I N F I=1:1:N W !
 I $G(C) W ?(IOM-$L(X)/2),X Q
 S %=$S($G(T):T,1:0) W ?%,X
 Q
CONSULT ;PRNT CONSULT LETTER  ;4.0*2 IHS/OIT/FCJ
 I $G(BMCPCON)=1 W # D PRINT^BMCFDRP ;BMC*4.0*4 IHS/OIT/FCJ ADDED $G
 Q
C ;
 S BMCV=BMCCPRV ;Secondary Primary Vendor - CHS only
 Q:'BMCV
 S X="Referred to:       "_$$VAL^XBDIQ1(90001.04,BMCPROV,.05)_$S($$VAL^XBDIQ1(9999999.11,BMCV,1109)]"":"  ("_$$VAL^XBDIQ1(9999999.11,BMCV,1109)_")",1:"") S N=1,C=0,T=0 D W Q:BMCQUIT
 S X="Mailing: "_$$VAL^XBDIQ1(9999999.11,BMCV,1301) S N=1,C=0,T=0 D W Q:BMCQUIT
 S X="Physical: "_$$VAL^XBDIQ1(9999999.11,BMCV,1306) S N=0,C=0,T=40 D W Q:BMCQUIT
 S X=$$VAL^XBDIQ1(9999999.11,BMCV,1302)_", "_$E($$VAL^XBDIQ1(9999999.11,BMCV,1303),1,2)_" "_$$VAL^XBDIQ1(9999999.11,BMCV,1304)
 S N=1,C=0,T=9 D W Q:BMCQUIT
 I $$VAL^XBDIQ1(9999999.11,BMCV,1306)'="" D
 .S X=$$VAL^XBDIQ1(9999999.11,BMCV,1307)_", "_$E($$VAL^XBDIQ1(9999999.11,BMCV,1308),1,2)_" "_$$VAL^XBDIQ1(9999999.11,BMCV,1309)
 .S N=0,C=0,T=50 D W Q:BMCQUIT
 W !
 Q
I ;IHS Secondary Provider Referrals
 S BMCV=BMCCPRV
 Q:'BMCV
 S X="Referred to:       "_$$VAL^XBDIQ1(90001.04,BMCPROV,.12)_$S($$VAL^XBDIQ1(9999999.06,BMCV,.13)]"":"  ("_$$VAL^XBDIQ1(9999999.06,BMCV,.13)_")",1:"") S N=1,C=0,T=0 D W Q:BMCQUIT
 I $$VAL^XBDIQ1(9999999.06,BMCV,.14)]"" S X=$$VAL^XBDIQ1(9999999.06,BMCV,.14) S N=1,C=0,T=19 D W Q:BMCQUIT
 I $$VAL^XBDIQ1(9999999.06,BMCV,.15)]"" S X=$$VAL^XBDIQ1(9999999.06,BMCV,.15)_",  "_$$VAL^XBDIQ1(9999999.06,BMCV,.16)_"   "_$$VAL^XBDIQ1(9999999.06,BMCV,.17),N=1,C=0,T=19 D W Q:BMCQUIT
 Q
L ;
 S T=0,X=$TR($J(" ",IOM)," ","_") S N=1,C=0 D W Q:BMCQUIT
 Q
D ;
 S T=0,X=$TR($J(" ",IOM)," ","-") S N=1,C=0 D W Q:BMCQUIT
 Q
S ;
 S T=0,X=$TR($J(" ",IOM)," ","*") S N=1,C=0 D W Q:BMCQUIT
 Q
WPTXT ;
 ; get site-specific text (if any)
 I $P(BMCR0,U,4)="C" D
 . I BMCCHSAS="A",$D(^BMCPARM(DUZ(2),31)) S BMCFILE=90001.31,BMCDA=DUZ(2),BMCNODE=31
 . I BMCCHSAS="D",$D(^BMCPARM(DUZ(2),32)) S BMCFILE=90001.31,BMCDA=DUZ(2),BMCNODE=32
 . I BMCCHSAS="P"!(BMCCHSAS=""),$D(^BMCPARM(DUZ(2),33)) S BMCFILE=90001.31,BMCDA=DUZ(2),BMCNODE=33
 . Q
 I $P(BMCR0,U,4)="O",$D(^BMCPARM(DUZ(2),33)) S BMCFILE=90001.31,BMCDA=DUZ(2),BMCNODE=34
 ; fall through to WP to get the text
WP ;
 D WP^BMCFDR
 Q
HEAD ;
 NEW N,T,C,X,Y
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BMCQUIT=1 Q
HEAD1 ;
 W:$D(IOF) @IOF
HEAD2 ;
 I 'BMCPG S BMCPG=BMCPG+1 Q
 S BMCPG=BMCPG+1 W:$D(IOF) @IOF W !,?(IOM-20),"Page ",BMCPG
 Q
