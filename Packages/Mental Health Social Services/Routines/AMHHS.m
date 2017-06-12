AMHHS ; IHS/CMI/LAB - BH HEALTH SUMMARY COMPONENT 03 Jun 2009 12:08 PM ;
 ;;4.0;IHS BEHAVIORAL HEALTH;**1,5,6**;JUN 02, 2010;Build 10
 ;
 ;
MH ;EP called from health summary
 NEW AMHPATH
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 I $P($G(^AMHPATR(APCHSPAT,0)),U,9)]"" W ?23,"Patient Flag: ",?38,$P(^AMHPATR(APCHSPAT,0),U,9),!
 X APCHSCKP Q:$D(APCHSQIT)
 I $P($G(^AMHPATR(APCHSPAT,0)),U,11)]"" W ?21,"Flag Narrative: ",?38,$P(^AMHPATR(APCHSPAT,0),U,11),!
 X APCHSCKP Q:$D(APCHSQIT)
 I $P($G(^AMHPATR(APCHSPAT,0)),U,2)]"" W ?2,"Designated Mental Health Provider: ",?38,$P(^VA(200,$P(^AMHPATR(APCHSPAT,0),U,2),0),U),!
 X APCHSCKP Q:$D(APCHSQIT)
 I $P($G(^AMHPATR(APCHSPAT,0)),U,3)]"" W "Designated Social Services Provider: ",?38,$P(^VA(200,$P(^AMHPATR(APCHSPAT,0),U,3),0),U),!
 X APCHSCKP Q:$D(APCHSQIT)
 I $P($G(^AMHPATR(APCHSPAT,0)),U,4)]"" W ?10,"CD Designated Provider: ",?38,$P(^VA(200,$P(^AMHPATR(APCHSPAT,0),U,4),0),U),!
 X APCHSCKP Q:$D(APCHSQIT)
 I $P($G(^AMHPATR(APCHSPAT,0)),U,12)]"" W ?10,"Other Designated Provider: ",?38,$P(^VA(200,$P(^AMHPATR(APCHSPAT,0),U,12),0),U),!
 X APCHSCKP Q:$D(APCHSQIT)
 I $P($G(^AMHPATR(APCHSPAT,0)),U,13)]"" W ?10,"Other (2) Designated Provider: ",?38,$P(^AMHPATR(APCHSPAT,0),U,13),!
 X APCHSCKP Q:$D(APCHSQIT)
 ;output personal history
 I $D(^AMHPPHX("AC",APCHSPAT)) D
 .X APCHSCKP Q:$D(APCHSQIT)  W !,"** Personal History of:",!
 .S AMHSX=0 F  S AMHSX=$O(^AMHPPHX("AC",APCHSPAT,AMHSX)) Q:AMHSX'=+AMHSX  D
 ..S Y=$P(^AMHPPHX(AMHSX,0),U,3) X APCHSCVD S AMHSDAT=Y
 ..W !?5,$P(^AMHTPHF($P(^AMHPPHX(AMHSX,0),U),0),U),?30,"(noted: ",AMHSDAT,")"
 ..Q
 .W ! K AMHSX
 .Q
CASE ;output last 3 cases
 K AMHL S D=0,C=0 F  S D=$O(^AMHPCASE("AA",APCHSPAT,D)) Q:D'=+D!(C>2)  D
 .S AMHL=0 F  S AMHL=$O(^AMHPCASE("AA",APCHSPAT,D,AMHL)) Q:AMHL'=+AMHL!(C>2)  D
 ..Q:'$$ALLOWCD^AMHLCD(DUZ,AMHL)
 ..S C=C+1
 ..S AMHL(C)=AMHL
 ..Q
 .Q
CASEOUT ;display last 3 cases found
 I $D(AMHL(1)) D
 .X APCHSCKP Q:$D(APCHSQIT)
 .S K="21;41;61"
 .W ?4,"Case Open Date:"
 .F I=1:1:3 Q:'$D(AMHL(I))  S J=$P(K,";",I) W ?J,$$FMTE^XLFDT($P(^AMHPCASE(AMHL(I),0),U),"2E")
 .X APCHSCKP Q:$D(APCHSQIT)
 .W !?3,"Case Admit Date:"
 .F I=1:1:3 Q:'$D(AMHL(I))  I $P(^AMHPCASE(AMHL(I),0),U,4)]"" S J=$P(K,";",I) W ?J,$$FMTE^XLFDT($P(^AMHPCASE(AMHL(I),0),U,4),"2E")
 .X APCHSCKP Q:$D(APCHSQIT)
 .W !?3,"Case Close Date:"
 .F I=1:1:3 Q:'$D(AMHL(I))  I $P(^AMHPCASE(AMHL(I),0),U,5)]"" S J=$P(K,";",I) W ?J,$$FMTE^XLFDT($P(^AMHPCASE(AMHL(I),0),U,5),"2E")
 .X APCHSCKP Q:$D(APCHSQIT)
 .W !?5,"Program Affil:"
 .F I=1:1:3 Q:'$D(AMHL(I))  I $P(^AMHPCASE(AMHL(I),0),U,3)]"" S J=$P(K,";",I) W ?J,$$VAL^XBDIQ1(9002011.58,AMHL(I),.03)
 .X APCHSCKP Q:$D(APCHSQIT)
 .W !?7,"Disposition:"
 .F I=1:1:3 Q:'$D(AMHL(I))  I $P(^AMHPCASE(AMHL(I),0),U,6)]"" S J=$P(K,";",I) W ?J,$$VAL^XBDIQ1(9002011.58,AMHL(I),.06)
 .X APCHSCKP Q:$D(APCHSQIT)
 .W !?2,"Next Review Date:"
 .F I=1:1:3 Q:'$D(AMHL(I))  I $P(^AMHPCASE(AMHL(I),0),U,12)]"" S J=$P(K,";",I) W ?J,$$FMTE^XLFDT($P(^AMHPCASE(AMHL(I),0),U,12),"2E")
 .X APCHSCKP Q:$D(APCHSQIT)
 .W !?10,"Provider:"
 .F I=1:1:3 Q:'$D(AMHL(I))  I $P(^AMHPCASE(AMHL(I),0),U,8)]"" S J=$P(K,";",I) W ?J,$$VAL^XBDIQ1(9002011.58,AMHL(I),.08)
 .X APCHSCKP Q:$D(APCHSQIT)
 .W !?11,"Problem:"
 .F I=1:1:3 Q:'$D(AMHL(I))  I $P(^AMHPCASE(AMHL(I),0),U,9)]"" S J=$P(K,";",I) W ?J,$$VAL^XBDIQ1(9002011.58,AMHL(I),.09)
 K AMHL,C,D,L,K
 D PROB^AMHHS1
AXV ;trend and display last 7 AXIS V values
 K AMHAX5 S AMHCNT=0
 S AMHSIVD=0 F  S AMHSIVD=$O(^AMHREC("AE",APCHSPAT,AMHSIVD)) Q:AMHSIVD=""!($D(APCHSQIT))!(AMHCNT>6)  D
 .S AMHSX=0 F  S AMHSX=$O(^AMHREC("AE",APCHSPAT,AMHSIVD,AMHSX)) Q:AMHSX'=+AMHSX  D
 ..Q:$P($G(^AMHREC(AMHSX,0)),U,14)=""
 ..Q:'$$ALLOWVI^AMHUTIL(DUZ,AMHSX)
 ..S AMHCNT=AMHCNT+1,AMHAX5(AMHCNT)=(9999999-$P(AMHSIVD,"."))_U_$P(^AMHREC(AMHSX,0),U,14)
 ..Q
 .Q
 I $D(AMHAX5) D  Q:$D(APCHSQIT)
 .X APCHSCKP Q:$D(APCHSQIT)
 .W !!?4,"**********  LAST 6 AXIS V VALUES RECORDED.  (GAF SCORES)  **********",!!
 .S AMHJ=2 F AMHCNT=6:-1:1  I $D(AMHAX5(AMHCNT))  W ?AMHJ,$$DATE($P(AMHAX5(AMHCNT),U)) S AMHJ=AMHJ+12
 .W ! S AMHJ=6 F AMHCNT=6:-1:1 I $D(AMHAX5(AMHCNT)) W ?AMHJ,$P(AMHAX5(AMHCNT),U,2) S AMHJ=AMHJ+12
 .W !
OUTPT ; ********** MH PROBLEM CODES AND DESIGNATED PROVIDER
 ; <SETUP>
 X APCHSCKP Q:$D(APCHSQIT)  S X="********************  BH ENCOUNTERS  ******************** ",AMHS="",$P(AMHS," ",80-1-$L(X)/2)="" W !,AMHS,X,AMHS,!!
 I '$D(^AMHREC("AE",APCHSPAT)) X APCHSCKP Q:$D(APCHSQIT)  W !,"No Behavioral Health Records on File.",! Q
 ; <DISPLAY>
 S AMHSPVD=0
 F AMHSIVD=0:0 S AMHSIVD=$O(^AMHREC("AE",APCHSPAT,AMHSIVD)) Q:AMHSIVD=""!($P(AMHSIVD,".")>APCHSDLM)  D ONEDATE Q:$D(APCHSQIT)  S:(AMHSDAT'=AMHSPVD)&AMHSDTU APCHSNDM=APCHSNDM-AMHSDTU,AMHSPVD=AMHSDAT Q:APCHSNDM=0
PTED ;display all pt ed (last of each)
 I '$D(^AMHREDU("AC",APCHSPAT)) G HF
 X APCHSCKP Q:$D(APCHSQIT)  S X="************  BEHAVIORAL HEALTH PATIENT EDUCATION  ******************** ",AMHS="",$P(AMHS," ",80-1-$L(X)/2)="" W !,AMHS,X,AMHS,!
 K AMHSN S AMHSX=0 F  S AMHSX=$O(^AMHREDU("AC",APCHSPAT,AMHSX)) Q:AMHSX'=+AMHSX!($D(APCHSQIT))  D
 .S X=$P(^AMHREDU(AMHSX,0),U),Y=$P(^AMHREDU(AMHSX,0),U,3) I Y,$D(^AMHREC(Y,0)),$$ALLOWVI^AMHUTIL(DUZ,Y) S Y=$P($P(^AMHREC(Y,0),U),".") I $P($G(AMHSN(X)),U)<Y S AMHSN(X)=Y_U_AMHSX
 K AMHSD S X=0 F  S X=$O(AMHSN(X)) Q:X'=+X  S Y=$P(AMHSN(X),U),Y=9999999-Y,AMHSD(Y,X)=$P(AMHSN(X),U,2)
 S AMHSD=0 F  S AMHSD=$O(AMHSD(AMHSD)) Q:AMHSD'=+AMHSD!($D(APCHSQIT))  D
 .S AMHSX=0 F  S AMHSX=$O(AMHSD(AMHSD,AMHSX)) Q:AMHSX'=+AMHSX!($D(APCHSQIT))  D
 ..X APCHSCKP Q:$D(APCHSQIT)
 ..W !,$$FMTE^XLFDT(9999999-AMHSD),?15,$E($P(^AUTTEDT(AMHSX,0),U),1,30),?47,$$VAL^XBDIQ1(9002011.05,AMHSD(AMHSD,AMHSX),.05)
 ..X APCHSCKP Q:$D(APCHSQIT)
 ..W !?3,"Level of Understanding: ",$$VAL^XBDIQ1(9002011.05,AMHSD(AMHSD,AMHSX),.08),?47,$P(^AMHREDU(AMHSD(AMHSD,AMHSX),0),U,6),$S($P(^AMHREDU(AMHSD(AMHSD,AMHSX),0),U,6)]"":" mins",1:"")
 ..I $P(^AMHREDU(AMHSD(AMHSD,AMHSX),0),U,9)]"" W !?3,"Goal: ",$$VAL^XBDIQ1(9002011.05,AMHSD(AMHSD,AMHSX),.09)
 ..I $P(^AMHREDU(AMHSD(AMHSD,AMHSX),0),U,11)]"" W !?3,"Status: ",$$VAL^XBDIQ1(9002011.05,AMHSD(AMHSD,AMHSX),.11)
 ..I $P($G(^AMHREDU(AMHSD(AMHSD,AMHSX),11)),U)]"" X APCHSCKP Q:$D(APCHSQIT)  W !?3,"Comment: ",$P(^AMHREDU(AMHSD(AMHSD,AMHSX),11),U)
 ..Q
 .Q
HF ;
 I '$D(^AMHRHF("AC",APCHSPAT)) G IPV
 X APCHSCKP Q:$D(APCHSQIT)  S X="************  BEHAVIORAL HEALTH HEALTH FACTORS  ************* ",AMHS="",$P(AMHS," ",80-1-$L(X)/2)="" W !!,AMHS,X,AMHS,!
 K AMHSN S AMHSX=0 F  S AMHSX=$O(^AMHRHF("AC",APCHSPAT,AMHSX)) Q:AMHSX'=+AMHSX!($D(APCHSQIT))  D
 .S X=$P(^AMHRHF(AMHSX,0),U),Y=$P(^AMHRHF(AMHSX,0),U,3) I Y,$D(^AMHREC(Y,0)),$$ALLOWVI^AMHUTIL(DUZ,Y) S Y=$P($P(^AMHREC(Y,0),U),".") I $P($G(AMHSN(X)),U)<Y S AMHSN(X)=Y_U_AMHSX
 K AMHSD S X=0 F  S X=$O(AMHSN(X)) Q:X'=+X  S Y=$P(AMHSN(X),U),Y=9999999-Y,AMHSD(Y,X)=$P(AMHSN(X),U,2)
 S AMHSD=0 F  S AMHSD=$O(AMHSD(AMHSD)) Q:AMHSD'=+AMHSD!($D(APCHSQIT))  D
 .S AMHSX=0 F  S AMHSX=$O(AMHSD(AMHSD,AMHSX)) Q:AMHSX'=+AMHSX!($D(APCHSQIT))  D
 ..X APCHSCKP Q:$D(APCHSQIT)
 ..W !,$$FMTE^XLFDT(9999999-AMHSD),?15,$E($P(^AUTTHF(AMHSX,0),U),1,30)
 ..W ?47,"Quantity: ",$$VAL^XBDIQ1(9002011.08,AMHSD(AMHSD,AMHSX),.08)
 ..I $P($G(^AMHRHF(AMHSD(AMHSD,AMHSX),0)),U,4)]"" X APCHSCKP Q:$D(APCHSQIT)  W !?3,"Level/Severity: ",$P(^AMHRHF(AMHSD(AMHSD,AMHSX),0),U,4)
 ..Q
 .Q
IPV ;
 X APCHSCKP Q:$D(APCHSQIT)  S X="*********  BEHAVIORAL HEALTH Screening Exams ********* ",AMHS="",$P(AMHS," ",80-1-$L(X)/2)="" W !!,AMHS,X,AMHS,!
 F AMHSIVD=0:0 S AMHSIVD=$O(^AMHREC("AE",APCHSPAT,AMHSIVD)) Q:AMHSIVD=""!($P(AMHSIVD,".")>APCHSDLM)!($D(APCHSQIT))  D
 .S AMHSX=0 F  S AMHSX=$O(^AMHREC("AE",APCHSPAT,AMHSIVD,AMHSX)) Q:AMHSX'=+AMHSX  D
 ..Q:'$$ALLOWVI^AMHUTIL(DUZ,AMHSX)
 ..I $P($G(^AMHREC(AMHSX,14)),U)="",$P($G(^AMHREC(AMHSX,14)),U,3)="",$P($G(^AMHREC(AMHSX,14)),U,5)="" Q
 ..X APCHSCKP Q:$D(APCHSQIT)
 ..I $P(^AMHREC(AMHSX,14),U)]"" W !,"IPV/DV SCREENING",?22,$$D((9999999-$P(AMHSIVD,"."))),?62,$E($$VAL^XBDIQ1(9002011,AMHSX,1402),1,15)
 ..I $P(^AMHREC(AMHSX,14),U,3)]"" W !,"ALCOHOL SCREENING",?22,$$D((9999999-$P(AMHSIVD,"."))),?32,$$VAL^XBDIQ1(9002011,AMHSX,1403),?62,$E($$VAL^XBDIQ1(9002011,AMHSX,1404),1,15)
 ..I $P(^AMHREC(AMHSX,14),U,5)]"" W !,"DEPRESSION SCREENING ",?22,$$D((9999999-$P(AMHSIVD,"."))),?32,$$VAL^XBDIQ1(9002011,AMHSX,1405),?62,$E($$VAL^XBDIQ1(9002011,AMHSX,1406),1,15)
 ..I $P(^AMHREC(AMHSX,14),U,7)]"" W !,"SUICIDE RISK ASSESSMENT",?22,$$D((9999999-$P(AMHSIVD,"."))),?62,$E($$VAL^XBDIQ1(9002011,AMHSX,1408),1,15)
 ..;I $P($G(^AMHREC(AMHSX,15)),U)]"" X APCHSCKP Q:$D(APCHSQIT)  W !?3,$P(^AMHREC(AMHSX,15),U)
MEASBH ;
 D MEAS
OUTPTX K AMHS,AMHSX,AMHSDAT,AMHL,AMHAX5,AMHCNT,AMHSIVD,AMHIVD,AMHJ,AMHSPVD,AMHSDTU,AMHSN,AMHSD
 K AMHSIVD,AMHSDTU,AMHSVDF,AMHSFAC,AMHSPFN,AMHSMTX,AMHSPVD,AMHSOVT,AMHSNDT,AMHSCLI,AMHSPDN,AMHSICD,AMHSICL,AMHSDAT,AMHSN,AMHSQ,AMHSR,AMHSX,AMHS,AMHTOC
 K AMHSNFL,AMHSNSH,AMHSNAB,AMHSVSC,AMHSFAC,Y
 K Y
 Q
ONEDATE S Y=-AMHSIVD\1+9999999 X APCHSCVD S AMHSDAT=Y S AMHSPFN="",AMHSDTU=0,AMHSNDT=(AMHSDAT'=AMHSPVD)
 S AMHSVDF="" F AMHSQ=0:0 S AMHSVDF=$O(^AMHREC("AE",APCHSPAT,AMHSIVD,AMHSVDF)) Q:AMHSVDF=""  I $$ALLOWVI^AMHUTIL(DUZ,AMHSVDF) S AMHSN=^AMHREC(AMHSVDF,0) D GETSITE,DSPVIS Q:$D(APCHSQIT)
 Q
 ;
GETSITE ;
 S AMHSFAC=$P(AMHSN,U,4) S AMHSFAC=$S(AMHSFAC:$E($P(^AUTTLOC(AMHSFAC,0),U,2),1,8),1:"<missing>")
 I AMHSFAC="" S AMHSFAC=$E($P(^DIC(4,$P(AMHSN,U,4),0),U),1,8)
 S AMHTOC=$P(AMHSN,U,7) I AMHTOC]"" S AMHTOC=$P(^AMHTSET(AMHTOC,0),U,4)
 Q
DSPVIS ;
 S AMHSDTU=1
 I $O(^AMHRPRO("AD",AMHSVDF,""))="" D NOPOV Q
 S AMHSPDN="" F AMHSQ=0:0 S AMHSPDN=$O(^AMHRPRO("AD",AMHSVDF,AMHSPDN)) Q:'AMHSPDN  S AMHSR=^AMHRPRO(AMHSPDN,0) D HASPOV
 X APCHSCKP Q:$D(APCHSQIT)
 ;I $P(AMHSN,U,13)]"" W ?25,"Axis IV (Stress): ",$P(^AMHTAXIV($P(AMHSN,U,13),0),U,2)," - ",$P(^AMHTAXIV($P(AMHSN,U,13),0),U) W:$P(AMHSN,U,14)="" !
 ;W:$P(AMHSN,U,14)]"" ?50,"Axis V (Function):  ",$P(AMHSN,U,14),!
 I $D(^AMHREC(AMHSVDF,61))!($P(^AMHREC(AMHSVDF,0),U,14)]"") D  Q:$D(APCHSQIT)
 .X APCHSCKP Q:$D(APCHSQIT)
 .W ?27,"AXIS IV:  " S Y=0 F  S Y=$O(^AMHREC(AMHSVDF,61,Y)) Q:Y'=+Y  S I=$P(^AMHREC(AMHSVDF,61,Y,0),U) W ?35,$P(^AMHTAXIV(I,0),U)_" - "_$P(^AMHTAXIV(I,0),U,2),!
 .I '$O(^AMHREC(AMHSVDF,61,0)) W !
 .W ?27,"AXIS V:  ",$P(^AMHREC(AMHSVDF,0),U,14) W:$P($G(^AMHREC(AMHSVDF,11)),U,15)]"" "  GAF Scale Type: ",$$VAL^XBDIQ1(9002011,AMHSVDF,1115),!
 .Q
 X APCHSCKP Q:$D(APCHSQIT)
 I $P(AMHSN,U,17)]"" W ?27,"Inpatient Disp:  ",$$VAL^XBDIQ1(9002011,AMHSVDF,.17),!?27,"Referred To:  ",$P(AMHSN,U,18),!
 ;I $D(^AMHREC(AMHSVDF,12)) X APCHSCKP Q:$D(APCHSQIT)  S APCHSNRQ="COMMENT: "_^AMHREC(AMHSVDF,12),APCHSICL=27,APCHSTXT="" D PRTTXT^APCHSUTL
 Q
 ;
NOPOV ;
 S APCHSTXT="",(AMHSICD,APCHSNRQ)="<BH problem codes not yet entered>"
 G COMMON
 ;
HASPOV ;
 S APCHSNRQ=$P(^AMHPROB($P(AMHSR,U),0),U)_" - "
 S AMHSICD=$E($P(^AMHPROB($P(AMHSR,U),0),U,2),1,45)
 S Y=$L(APCHSNRQ) F X=Y:1:8 S APCHSNRQ=APCHSNRQ_" "
 S APCHSNRQ=APCHSNRQ_AMHSICD,APCHSTXT="",APCHSICL=27
 D COMMON
 S:$P(AMHSR,U,4) APCHSNRQ=APCHSNRQ_$$GET1^DIQ(9002011.01,AMHSPDN,.04) S APCHSTXT="",APCHSICL=27 D PRTTXT^APCHSUTL
 X APCHSCKP Q:$D(APCHSQIT)
 Q
COMMON ;
 X APCHSCKP Q:$D(APCHSQIT)  S:APCHSNPG AMHSNDT=1
 I AMHSNDT W AMHSDAT S AMHSPFN="",AMHSNDT=0
 W ?9,AMHSFAC,?18,$$PPINI^AMHUTIL(AMHSVDF),?22,AMHTOC S APCHSICL=27 D PRTTXT^APCHSUTL
 Q
DATE(D) ;
 I $G(D)="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_(1700+$E(D,1,3))
D(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
 ;
MEAS ; ******************** MEASUREMENTS * *******
 ; <SETUP>
 Q:'$D(^AMHRMSR("AA",APCHSPAT))
 ; <DISPLAY>
 X APCHSCKP Q:$D(APCHSQIT)  S X="*********  BEHAVIORAL HEALTH Measurements ********* ",AMHS="",$P(AMHS," ",80-1-$L(X)/2)="" W !!,AMHS,X,AMHS,!
 S APCHSMT="" F APCHSQ=0:0 S APCHSMT=$O(^AMHRMSR("AA",APCHSPAT,APCHSMT)) Q:APCHSMT=""  S APCHSND2=5 D MEASDTYP Q:$D(APCHSQIT)
 ; <CLEANUP>
MEASX ;
 K APCHSMT,APCHSMT2,APCHSMT3,APCHSDFN,APCHSND2,APCHSDAT
 Q
MEASDTYP ;
 S APCHSMT2=$S($D(^AUTTMSR(APCHSMT,0)):$P(^(0),U,1),1:APCHSMT) S APCHSMT3=APCHSMT2
 S (APCHSIVD,APCHSDFN)="" F  S APCHSIVD=$O(^AMHRMSR("AA",APCHSPAT,APCHSMT,APCHSIVD)) Q:APCHSIVD=""  S APCHSND2=APCHSND2-1 Q:APCHSND2=-1  D MEASDSP
 I APCHSMT3="" X APCHSCKP Q:$D(APCHSQIT)  W !
 Q
MEASDSP S APCHSDFN=$O(^AMHRMSR("AA",APCHSPAT,APCHSMT,APCHSIVD,"")),Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y X APCHSCKP Q:$D(APCHSQIT)  W:APCHSNPG!(APCHSMT3]"") APCHSMT2 S APCHSMT3="" W ?5,APCHSDAT,?18,$P(^AMHRMSR(APCHSDFN,0),U,4),!
 Q
 ;
