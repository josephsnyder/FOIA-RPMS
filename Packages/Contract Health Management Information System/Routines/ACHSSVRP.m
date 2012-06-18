ACHSSVRP ; IHS/ITSC/PMF - SELECT AND PRINT AO SPECIAL VENDOR REPORT ;   [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 S (ACHSFAC,ACHSNMS,ACHSSEQ)="",(ACHSEIN,ACHSDCNT,ACHSPGNO)=0
 S ACHSDATE=$$HTE^XLFDT($H)
B1 ;
 S ACHSEIN=$O(^ACHSSVR(ACHSEIN))
 G PRTEND:+ACHSEIN=0
 S DIC="^AUTTVNDR(",DIC(0)="",X=ACHSEIN,D="E"
 D IX^DIC
 I +Y<1 U IO(0) W "VENDOR LOOKUP ERROR FOR EIN # ",ACHSEIN U IO G B1
 S ACHSEINP=+Y
 I '$D(^ACHSSVR(ACHSEIN,"N")) D INDEX
 D FAX,PGHDR
 S ACHSFAC=""
B2 ;
 S ACHSFAC=$O(^ACHSSVR(ACHSEIN,"N",ACHSFAC))
 G B1:+ACHSFAC=0
 S ACHSNMS=""
B3 ;
 S ACHSNMS=$O(^ACHSSVR(ACHSEIN,"N",ACHSFAC,ACHSNMS))
 G B2:ACHSNMS=""
 S ACHSSEQ=""
B4 ;
 S ACHSSEQ=$O(^ACHSSVR(ACHSEIN,"N",ACHSFAC,ACHSNMS,ACHSSEQ))
 G B3:+ACHSSEQ=0
 S ACHSX=$G(^ACHSSVR(ACHSEIN,ACHSFAC,ACHSSEQ))
 K DIC
 S DIC="^AUTTLOC(",D="C",DIC(0)="",X=ACHSFAC
 D IX^DIC
 I +Y<1 U IO(0) W "INVALID FACILITY CODE" S ACHSFACN="UNKNOWN FAC CODE" U IO G B5
 S ACHSFACN=$E($P($G(^DIC(4,+Y,0)),U),1,12)
B5 ;
 I $Y>55 D PGHDR
 S X=ACHSX
 W ACHSFACN,?14,$E($E(X,103,122),1,16),?32,$E(X,4,4),"-",$E(X,5,7),"-",$E(X,8,12),?45,$E(X,13,14),"-",$E(X,67,67),?51,$E(X,34,39),?59
 S ACHSDCNT=ACHSDCNT+1
 W $E(X,63,64),"/",$E(X,65,66),"/",$E(X,61,62),?70
 S V=$E(X,69,76)/100
 W $J(V,9,2),!?14,"TRIBE-CD=",$E(X,151,153),"  COMM-CD=",$E(X,154,160),!
 I $E(X,119,119)=" "!($E(X,119,119)="") W ! G B4
 W ?14,"<",$E(X,119,134),">",!
 I $E(X,135,136)="  " W !! G B4
 W ?14,"<",$E(X,135,150),">",!!
 G B4
 ;
PRTEND ; Print totals.
 U ACHSPTR
 W !,$$REPEAT^XLFSTR("-",70),!!?10,"TOTAL DOCUMENTS LISTED = ",ACHSDCNT
ZEND ;
 I $D(IO),IO D ^%ZISC
ZENDA ;
 K X,Y,ACHSEIN
 Q
 ;
PGHDR ;
 U ACHSPTR
 S ACHSPGNO=ACHSPGNO+1
 W @IOF,$$C^XBFUNC("CHS AUTHORIZATIONS FROM "_$$LOC^ACHS_" FACILITIES",80)
 W !,$$C^XBFUNC("FOR "_$P($G(^AUTTVNDR(ACHSEINP,0)),U),80)
 S Z=^ACHSSVR(ACHSEIN,0),A=$P(Z,U,1),A=$E(A,3,4)_"/"_$E(A,5,6)_"/"_$E(A,1,2),B=$P(Z,U,2),B=$E(B,3,4)_"/"_$E(B,5,6)_"/"_$E(B,1,2)
 W !,$$C^XBFUNC("FOR AUTHORIZATIONS ISSUED BETWEEN "_A_" AND "_B,80)
 W !,ACHSDATE,?70,"PAGE ",ACHSPGNO,!!!,$$REPEAT^XLFSTR("-",80),!,"LOCATION",?14,"PATIENT NAME",?32,"DOCUMENT #",?45,"TYPE",?51,"IHS #",?59,"AUTH DTE",?70,"$$ AMOUNT",!,$$REPEAT^XLFSTR("-",80),!
 Q
 ;
FAX ; Print FAX cover sheet for vendor.
 U ACHSPTR
 W @IOF
 F I=1:1:5 W !
 W $$C^XBFUNC("INDIAN HEALTH SERVICE",80)
 W !,$$C^XBFUNC($$LOC^ACHS,80)
 W !,$$C^XBFUNC($P(^AUTTLOC(DUZ(2),0),U,12),80)
 S X=$P(^AUTTLOC(DUZ(2),0),U,13),Y=$P(^AUTTLOC(DUZ(2),0),U,14),Z=$P(^DIC(5,+Y,0),U,2)
 W !,$$C^XBFUNC(X_", "_Z_"  "_$P(^AUTTLOC(DUZ(2),0),U,15),80)
 W !!!!!!?10,"DATE:   ",$$FMTE^XLFDT(DT)
 W !!!!?10,"DELIVER TO:",?25,$E($P(^AUTTVNDR(ACHSEINP,0),U,1),1,30)
 W !?25,$P(^AUTTVNDR(ACHSEINP,13),U,1)
 W !?25,$P(^AUTTVNDR(ACHSEINP,13),U,2)," "
 S Y=$P(^AUTTVNDR(ACHSEINP,13),U,3),Z=$P(^DIC(5,+Y,0),U,2)
 W Z,"  ",$P(^AUTTVNDR(ACHSEINP,13),U,4)
 W !!!!?10,"FAX #: ",?25,$P(^AUTTVNDR(ACHSEINP,11),U,14)
 W !!!!!!!?10,"FROM:  ",?25,"Contract Health Services"
 W !?25,$E($$LOC^ACHS,1,30)
 W !!!!!!?10,"SUBJECT:  ",?25,"CHS PURCHASE ORDERS"
 W !!
 Q
 ;
INDEX ; Create print index for ^ACHSSVR & Begin & End date.
 S ACHSI="",ACHSJ=1,ACHSK=""
 S:'$D(^ACHSSVR(ACHSEIN,0)) ^ACHSSVR(ACHSEIN,0)="999999^0"
INDEXB ;
 S ACHSJ=$O(^ACHSSVR(ACHSEIN,ACHSJ))
 G INDEXZ:ACHSJ=""!(+ACHSJ=0)
INDEXC ;
 ;BEGIN Y2K BLOCK
 S ACHSK=$O(^ACHSSVR(ACHSEIN,ACHSJ,ACHSK))
 G INDEXB:ACHSK=""!(+ACHSK=0)
 S ACHSX=$G(^ACHSSVR(ACHSEIN,ACHSJ,ACHSK))
 S ACHSPNAM=$E(ACHSX,103,118)
 S:ACHSPNAM="" ACHSPNAM=" "
 S ^ACHSSVR(ACHSEIN,"N",ACHSJ,ACHSPNAM,ACHSK)="",ACHSADT=$E(ACHSX,61,66)
 S ACHSADT=$S($E(ACHSADT,1,2)<84:20000000,1:19000000)+ACHSADT
 S X=$P($G(^ACHSSVR(ACHSEIN,0)),U) ;XXX-0999-200030
 S X=$S($E(X,1,2)<84:20000000,1:19000000)+X
 S:ACHSADT<X $P(^ACHSSVR(ACHSEIN,0),U)=$E(ACHSADT,3,8)
 S X=$S($E(X,1,2)<84:20000000,1:19000000)+X
 S:ACHSADT>X $P(^ACHSSVR(ACHSEIN,0),U,2)=$E(ACHSADT,3,8) ;
 ;END Y2K BLOCK
 G INDEXC
 ;
INDEXZ ;
 Q
 ;
