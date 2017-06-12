BMCFPRN ; IHS/OIT/FCJ - PRINT REFERRAL FORMS ;   [ 09/27/2006  1:33 PM ]
 ;;4.0;REFERRED CARE INFO SYSTEM;**1,2,3,4**;JAN 09, 2006;Build 51
 ;IHS/OIT/FCJ CHG VEND SECTION TO PRT BTH MAIL/PHY ADD, SPLIT
 ;   RTN AT PAYOR LINE COPIED TO BMCFRPN1 FR PAYOR THRU RR LINE
 ;   PRNT MED HX FR RCIS COMMENTS FILE; ADDED TEST FOR VENDOR ADDRESS
 ;4.0*1 2.15.06 IHS/OIT/FCJ COMBINED CALL IN REF AND PRINT OF NEW
 ;   ADDRESS PARAMETERS
 ;BMC*4.0*2 9.14.06 IHS.OIT.FCJ ADDED SECTION TO PRINT CONSULT LTR
 ;BMC*4.0*3 8.10.07 IHS.OIT.FCJ ADDED NPI AND INS AUTH
 ;BMC*4.0*3 9.15.08 IHS.OIT.FCJ FX FOR UNDEF VAR WHEN QUEUED
 ;
PRINT ;print referral form
 S BMCR0=^BMCREF(BMCREF,0),BMCPG=0,BMCDFN=$P(BMCR0,U,3)
 D @("HEAD"_(2-($E(IOST,1,2)="C-")))
 S BMCQUIT=0
 S X=$P(^BMCTFORM(BMCFTYPE,0),U,2) S N=0,C=1 D W
 S BMCFTYP=$S($E($P(^BMCTFORM(BMCFTYPE,0),U),1,4)="CALL":"CI",1:"S")
 S X=$$VAL^XBDIQ1(90001,BMCREF,.01),C=0,N=0,T=66 D W
 D S
DEMO ;Demographic Data
 Q:BMCQUIT
 S X="Patient Identification, Address, Phone",C=1,T=0,N=1 D W Q:BMCQUIT
 S X="Patient Name:  "_$$VAL^XBDIQ1(90001,BMCREF,.03),C=0,T=0,N=1 D W Q:BMCQUIT
 S X="ID Number:  "_$$HRN^AUPNPAT($P(BMCR0,U,3),DUZ(2),2),N=0,T=50,C=0 D W Q:BMCQUIT
 I $P($G(^BMCPARM(DUZ(2),4100)),U,2)="" S X="SSN:  "_"",C=0,T=9,N=1 D W Q:BMCQUIT
 I $P($G(^BMCPARM(DUZ(2),4100)),U,2)="Y" S X="SSN:  "_$$VAL^XBDIQ1(2,$P(BMCR0,U,3),.09),C=0,T=9,N=1 D W Q:BMCQUIT
 S X="Sex:  "_$$VAL^XBDIQ1(2,$P(BMCR0,U,3),.02),N=0,T=56,C=0 D W Q:BMCQUIT
 S X="Address:  " S:$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1602.2)]"" X=X_$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1602.2) S C=0,T=5,N=1 D W Q:BMCQUIT
 S X="DOB:  "_$$VAL^XBDIQ1(2,$P(BMCR0,U,3),.03),N=0,T=56,C=0 D W Q:BMCQUIT
 S T=15,C=0,N=1,X=$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1603.2)_", "_$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1604.2)_"   "_$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1605.2) D W Q:BMCQUIT
 S X="Hm Phone: "_$$VAL^XBDIQ1(9000001,$P(BMCR0,U,3),1606.2) S C=0,T=51,N=0 D W Q:BMCQUIT
 ;
REFTO ;
 D L
 D @$$VALI^XBDIQ1(90001,BMCREF,.04) Q:BMCQUIT
 S X=$$VAL^XBDIQ1(90001,BMCREF,.02),N=0,C=0,T=64 D W Q:BMCQUIT
DATE ;
 S X=$$VAL^XBDIQ1(90001,BMCREF,.14)_" Services                     "_$S($P(BMCR0,U,14)="I":"Admission Date",1:"Appointment Date")_":  "_$$AVDOS^BMCRLU(BMCREF,"E"),N=1,C=0,T=0 D W Q:BMCQUIT
 ;
 I $P($G(^BMCREF(BMCREF,0)),U,14)="O" S X="# of Outpatient Visits: "_$$VAL^XBDIQ1(90001,BMCREF,1111),C=0,T=0,N=1 D W Q:BMCQUIT
 I $P($G(^BMCREF(BMCREF,0)),U,14)="I" W !
 S X="Expected Ending Date: "_$$VAL^XBDIQ1(90001,BMCREF,1107),C=0,T=40,N=0 D W Q:BMCQUIT
 I $P($G(^BMCREF(BMCREF,0)),U,32)'="" S X="Priority Rating:  "_$$VAL^XBDIQ1(90001,BMCREF,.32),C=0,T=0,N=1 D W Q:BMCQUIT
 ;BMC*4.0*3 8.10.2007 IHS/OIT/FCJ ADDED NXT LINE
 I $P($G(^BMCREF(BMCREF,14)),U,5)'="" S X="Insurance Auth No:  "_$$VAL^XBDIQ1(90001,BMCREF,1405),C=0,T=40,N=0 D W Q:BMCQUIT
 D L
PURPOSE ;
 S X="Purpose/Services Requested: "_$$VAL^XBDIQ1(90001,BMCREF,1201)
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
 ;BMC*4.0*3 8.10.2007 IHS/OIT/FCJ SPLIT NEXT LINE TO PRINT NPI IF AVAIL
 I Y="N" D  Q:BMCQUIT  G PAYOR
 .S X="Referring Provider (ELECTRONIC SIGNATURE): "_$$VAL^XBDIQ1(90001,BMCREF,.06),N=1,T=0,C=0 D W Q:BMCQUIT
 .W "XXXXX"
 .S I=$P(BMCR0,U,6) I I,$P($G(^VA(200,I,"NPI")),U) S X="NPI: "_$P(^VA(200,I,"NPI"),U),N=1,T=0,C=0 D W
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
 I BMCFTYP'="CI" S X="Referring Provider (ELECTRONIC SIGNATURE):  "_$$VAL^XBDIQ1(90001,BMCREF,.06),N=1,T=6,C=0 D W Q:BMCQUIT
 ;BMC*4.0*3 8.10.2007 IHS/OIT/FCJ ADDED NXT LINE
 I BMCFTYP'="CI" S I=$P(BMCR0,U,6) I I,$P($G(^VA(200,I,"NPI")),U) S X="NPI: "_$P(^VA(200,I,"NPI"),U),N=1,T=6,C=0 D W Q:BMCQUIT
 I BMCFTYP'="CI" S X="Case Manager:  "_$$VAL^XBDIQ1(90001,BMCREF,.19),N=1,T=6,C=0 D W Q:BMCQUIT
 S X="Veteran: "_$$VAL^XBDIQ1(2,$P(BMCR0,U,3),1901),N=1,T=56,C=0 D W
 Q:BMCQUIT
PAYOR ;OTHER PAYOR INFORMATION
 D OTHPAY^BMCFPRN1
 Q:BMCQUIT
TEXT ;
 W ! D S
 K BMCWP
 S BMCCHSAS=$P($G(^BMCREF(BMCREF,11)),U,12)
 I $P(BMCR0,U,4)="C" S BMCNODE=$S(BMCCHSAS="A":1,BMCCHSAS="D":2,BMCCHSAS="P":3,1:3) S BMCFILE=90001.33,BMCDA=BMCFTYPE D WPTXT
 I $P(BMCR0,U,4)="O" S BMCNODE=2,BMCFILE=90001.33,BMCDA=BMCFTYPE D WPTXT
 I $P(BMCR0,U,4)="I"!($P(BMCR0,U,4)="N") W ! S BMCWP(1)=""
 ;
 S BMCY=0 F  S BMCY=$O(BMCWP(BMCY)) Q:BMCY'=+BMCY!(BMCQUIT)  D
 .I $Y>(IOSL-3) D HEAD Q:BMCQUIT
 .W !,BMCWP(BMCY)
 ;
LINE ;CHS Supervisor Signature (if Type=CHS)
 G:$P(BMCR0,U,4)'="C" ROUT
 W !!!!!
 G:BMCFTYP="CI" ROUT
 S X="____________________",C=0,T=50,N=1 D W Q:BMCQUIT
 W !
 S X="Contract Health Service Office",C=0,T=50,N=1 D W Q:BMCQUIT
ROUT ;Print Routing slip
 I BMCPROUT=1 W # D PRINT^BMCFDRS
 ;BMC*4.0*2 9.14.06 IHS.OIT.FCJ ADDED NXT SECTION TO PRINT CONSULT LTR
CONSULT ;PRINT CONSULT LETTER
 I $G(BMCPCON)=1 W # D PRINT^BMCFDRP  ;BMC*4.0*4 IHS.OIT.FCJ CHANGED TO $G
 Q
W ;Entry Point
 Q:X=""
 NEW %
 S %=$L(X)
 I $Y>(IOSL-4) D HEAD Q:BMCQUIT
 I N F I=1:1:N W !
 I $G(C) W ?(IOM-$L(X)/2),X Q
 S %=$S($G(T):T,1:0) W ?%,X
 Q
C ;
 S BMCV=$P(BMCR0,U,7)
 Q:'BMCV
 S X="Referred to:       "_$$VAL^XBDIQ1(90001,BMCREF,.07)_$S($$VAL^XBDIQ1(9999999.11,BMCV,1109)]"":"  ("_$$VAL^XBDIQ1(9999999.11,BMCV,1109)_")",1:""),N=1,C=0,T=0 D W Q:BMCQUIT
 I $P(BMCR0,U,9) S X="("_$$VAL^XBDIQ1(90001,BMCREF,.09)_")",N=1,C=0,T=19 D W Q:BMCQUIT
 S X="Mailing: "_$$VAL^XBDIQ1(9999999.11,BMCV,1301),N=1,C=0,T=0 D W Q:BMCQUIT
 S X="Physical: "_$$VAL^XBDIQ1(9999999.11,BMCV,1306),N=0,C=0,T=40 D W Q:BMCQUIT
 ;IHS/ITSC/FCJ MOD TO NOT REQUIRE ADDRESS FOR VENDOR
 I $G(^AUTTVNDR(BMCV,13))'="" D  Q:BMCQUIT
 .S BMCVIEN=$P(^AUTTVNDR(BMCV,13),U,3)
 .S X=$$VAL^XBDIQ1(9999999.11,BMCV,1302)_", "
 .I BMCVIEN'="" S X=X_$$VAL^XBDIQ1(5,BMCVIEN,1)_" "_$$VAL^XBDIQ1(9999999.11,BMCV,1304)
 .S N=1,C=0,T=9 D W
 .I $$VAL^XBDIQ1(9999999.11,BMCV,1306)'="" D  Q:BMCQUIT
 ..S BMCVIEN=$P(^AUTTVNDR(BMCV,13),U,8)
 ..S X=$$VAL^XBDIQ1(9999999.11,BMCV,1307)_", "
 ..I BMCVIEN'="" S X=X_$$VAL^XBDIQ1(5,BMCVIEN,1)
 ..S X=X_" "_$$VAL^XBDIQ1(9999999.11,BMCV,1309)
 ..S:X'?1A.E X=""
 ..S N=0,C=0,T=50 D W
 W !
 Q
I ;
 S BMCV=$P(BMCR0,U,8)
 Q:'BMCV
 S X="Referred to:       "_$$VAL^XBDIQ1(90001,BMCREF,.08)_$S($$VAL^XBDIQ1(9999999.06,BMCV,.13)]"":"  ("_$$VAL^XBDIQ1(9999999.06,BMCV,.13)_")",1:"") S N=1,C=0,T=0 D W Q:BMCQUIT
 I $P(BMCR0,U,9) S X="("_$$VAL^XBDIQ1(90001,BMCREF,.09)_")" S N=1,C=0,T=19 D W Q:BMCQUIT
 I $$VAL^XBDIQ1(9999999.06,BMCV,.14)]"" S X=$$VAL^XBDIQ1(9999999.06,BMCV,.14) S N=1,C=0,T=19 D W Q:BMCQUIT
 I $$VAL^XBDIQ1(9999999.06,BMCV,.15)]"" S X=$$VAL^XBDIQ1(9999999.06,BMCV,.15)_",  "_$$VAL^XBDIQ1(9999999.06,BMCV,.16)_"   "_$$VAL^XBDIQ1(9999999.06,BMCV,.17),N=1,C=0,T=19 D W Q:BMCQUIT
 Q
N ;
 S X="IN HOUSE REFERRAL",N=1,C=0,T=0 D W Q:BMCQUIT
 S X="Referred to:  "_$$VAL^XBDIQ1(90001,BMCREF,.23)_" clinic",N=1,C=0,T=0 D W Q:BMCQUIT
 Q
O ;
 S BMCV=$P(BMCR0,U,7)
 I BMCV D  I 1
 .S X="Referred to:       "_$$VAL^XBDIQ1(90001,BMCREF,.07)_$S($$VAL^XBDIQ1(9999999.11,BMCV,1109)]"":"  ("_$$VAL^XBDIQ1(9999999.11,BMCV,1109)_")",1:"") S N=1,C=0,T=0 D W Q:BMCQUIT
 .I $P(BMCR0,U,9) S X="("_$$VAL^XBDIQ1(90001,BMCREF,.09)_")" S N=1,C=0,T=19 D W Q:BMCQUIT
 .I $$VAL^XBDIQ1(9999999.11,BMCV,1301)]"" S X=$$VAL^XBDIQ1(9999999.11,BMCV,1301)_$S($$VAL^XBDIQ1(9999999.11,BMCV,1310)]"":",  "_$$VAL^XBDIQ1(9999999.11,BMCV,1310),1:"") S N=1,C=0,T=19 D W Q:BMCQUIT
 .I $$VAL^XBDIQ1(9999999.11,BMCV,1302)]"" S X=$$VAL^XBDIQ1(9999999.11,BMCV,1302)_",  "_$$VAL^XBDIQ1(9999999.11,BMCV,1303)_"   "_$$VAL^XBDIQ1(9999999.11,BMCV,1304),N=1,C=0,T=19 D W Q:BMCQUIT
 E  S X="Referred to:  "_$$VAL^XBDIQ1(90001,BMCREF,.09),N=1,C=0,T=0 D W Q:BMCQUIT
 Q
L ;
 S T=0,X=$TR($J(" ",IOM)," ","_"),N=1,C=0 D W Q:BMCQUIT
 Q
D ;
 S T=0,X=$TR($J(" ",IOM)," ","-"),N=1,C=0 D W Q:BMCQUIT
 Q
S ;
 S T=0,X=$TR($J(" ",IOM)," ","*"),N=1,C=0 D W Q:BMCQUIT
 Q
WPTXT ;
 ; get site-specific text (if any)
 I $P(BMCR0,U,4)="C" D
 .I BMCCHSAS="A",$D(^BMCPARM(DUZ(2),31)) S BMCFILE=90001.31,BMCDA=DUZ(2),BMCNODE=31
 .I BMCCHSAS="D",$D(^BMCPARM(DUZ(2),32)) S BMCFILE=90001.31,BMCDA=DUZ(2),BMCNODE=32
 .I BMCCHSAS="P"!(BMCCHSAS=""),$D(^BMCPARM(DUZ(2),33)) S BMCFILE=90001.31,BMCDA=DUZ(2),BMCNODE=33
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
