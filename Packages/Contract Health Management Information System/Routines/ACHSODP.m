ACHSODP ; IHS/ITSC/PMF - PRINT DCR REPORT (1/3) ;   [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
A0 ;
 G END:'$D(^TMP("ACHSOD",$J,DUZ(2),0))
 S ACHSZYR=$O(^TMP("ACHSOD",$J,DUZ(2),"DCR",0))
 G END:+ACHSZYR<1980
 S X=$G(^TMP("ACHSOD",$J,DUZ(2),"DCR",ACHSZYR,0)),ACHSBDT=$P(X,U,3),ACHSEDT=$P(X,U,4),(ACHSFYY,ACHSPG)=0,ACHSLOC=""
 S ACHST1=$$C^XBFUNC($$FMTE^XLFDT(ACHSBDT)_" Thru "_$$FMTE^XLFDT(ACHSEDT),80),ACHSLOC=$$LOC^ACHS,ACHSCHSS=""
 D FC^ACHSUF
 I $D(ACHSERR),ACHSERR=1 G END
 D NOW^ACHS
A1 ;
 S ACHSFYY=$O(^TMP("ACHSOD",$J,DUZ(2),ACHSFYY)) G B9:ACHSFYY<1,A1:'$D(^("DCR",ACHSFYY,0)) S X=$P(^(0),U,6),ACHSRGNM=$E(ACHSFYY,4)_"-"_$E(1000+X,2,4),ACHSREG=X
 K ACHSSUM
 F ACHS=1:1:7 S ACHSSUM(ACHS)=""
 D HDR,HDR1
 S ACHSACD="",ACHSDIEN=0,ACHSDPFX=$E(ACHSFYY,4)_"-"_ACHSFC_"-"
A2 ;
 S ACHSACD=$O(^TMP("ACHSOD",$J,DUZ(2),ACHSFYY,ACHSACD))
 G B1:ACHSACD<1
 S ACHSDIEN=0
A3 ;
 S ACHSDIEN=$O(^TMP("ACHSOD",$J,DUZ(2),ACHSFYY,ACHSACD,ACHSDIEN))
 G A2:ACHSDIEN<1
 S ACHSTN=0
A4 ;
 S ACHSTN=$O(^TMP("ACHSOD",$J,DUZ(2),ACHSFYY,ACHSACD,ACHSDIEN,ACHSTN)) G A3:ACHSTN<1 S ACHSACS=$G(^TMP("ACHSOD",$J,DUZ(2),ACHSFYY,ACHSACD,ACHSDIEN,ACHSTN))
 I $Y>(IOSL-6) D RTRN^ACHS,HDR,HDR1
 D ^ACHSODP1
 G A4
 ;
B1 ;
 D RTRN^ACHS,HDR
 D SUMMARY:$D(^TMP("ACHSOD",$J,DUZ(2),"TRAN",ACHSFYY))
 D RTRN^ACHS,HDR,^ACHSODP2
 G A1
 ;
B9 ;
 W @IOF
 K A,ACHSRGNM,ACHSSET,ACHSSUM,ACHSTS,ACHSBDT,ACHSDIEN,ACHSDIEN,ACHSDPFX,ACHSEBAL,ACHSEDT,ACHSFYY,ACHSREG,ACHSACS,ACHSTN,DFN,ACHSTY,X2,X3,ACHSZYR
END ;
 S ACHSNUM=ACHSNUM-1
 I ACHSNUM>0 G A0
 I $D(ACHS("DCR")) K ACHS("DCR") G AUTO1^ACHSNEW
 D ERPT^ACHS
 Q
 ;
HDR ;
 U ACHSIO
 S ACHSPG=ACHSPG+1
 W @IOF,?80-$L(ACHSLOC)/2,ACHSLOC,!,ACHSTIME,?25,"CHS DOCUMENT CONTROL REGISTER",?72,"Page ",ACHSPG,!?80-$L(ACHSRGNM)/2,ACHSRGNM,!,ACHST1,!
 Q
 ;
HDR1 ;EP.
 W !,"Patient",?22,"Provider of Service",?49,"Issue /DOS",?62,"Type",!,"Document",?22,"Ein #",?49,"Serv",?62,"Dest",?74,"Amount",!,"-----------------",?22,"-------------------------",?49,"-----------",?62,"-------",?72,"--------"
 Q
 ;
HDR2 ;EP.
 W !!!?7,"Type Document",?40,"No. Documents",?61,"Obligations",!?5,"----------------",?40,"--------------",?60,"--------------"
 Q
 ;
SUMMARY ;
 D HDR2
 S ACHSCT=0
 W !!
 F ACHSTYPE="INITIAL","SUPPLEMENTS","CANCEL","PAYMENTS","ADJUSTMENT","INTERIM PAYMENTS" D
 . I $D(^TMP("ACHSOD",$J,DUZ(2),ACHSTYPE,ACHSFYY)) S ACHS=$P(^(ACHSFYY),U),X=$P(^(ACHSFYY),U,2),ACHSCT=ACHSCT+X D COMMA^%DTC D
 .. W !?5,ACHSTYPE," DOCUMENTS",?46,$J(ACHS,3),?63,X
 .. I ACHSTYPE="INTERIM PAYMENTS" W " ***" S ACHSIP=1
 ..Q
 .Q
 W !?46,"-----",?60,"---------------"
 S X=ACHSCT
 D COMMA^%DTC
 S ACHSCT=X
 W !!?5,"TOTALS",?46,$J(^TMP("ACHSOD",$J,DUZ(2),"TRAN",ACHSFYY),3),?63,$J(ACHSCT,9)
 W:$D(ACHSIP) !!?5,"*** Interim Payments Not Reflected In Totals"
 K ACHSIP
 W !!!?5,"FISCAL AGENT DOCUMENTS: "
 W:$D(^TMP("ACHSOD",$J,DUZ(2),"FISCAL AGENT",ACHSFYY)) $J(^(ACHSFYY),4)
 W !?14,"IHS DOCUMENTS: "
 W:$D(^TMP("ACHSOD",$J,DUZ(2),"IHS",ACHSFYY)) ?24,$J(^(ACHSFYY),4)
 W !!?8,"OBLIG DHR DOCUMENTS: "
 W:$D(^TMP("ACHSOD",$J,DUZ(2),"DHR",ACHSFYY)) ?24,$J(^(ACHSFYY),4)
 Q
 ;