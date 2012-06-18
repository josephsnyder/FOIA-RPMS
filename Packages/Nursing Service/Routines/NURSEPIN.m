NURSEPIN ;HIRMFO/MD-INDIVIDUAL INSERVICE RECORD PRINT ;1/5/89  16:10
 ;;4.0;NURSING SERVICE;;Apr 25, 1997
EN1 ;
 S X=$G(^PRSE(452.7,1,"OFF")) Q:X=""!(X=1)
 S X=$G(^DIC(213.9,1,"OFF"))  Q:X=""!(X=1)
 S (NUROUT,NURQUEUE,NUROUT)=0
 D INS^NURSAGP2 G QUIT:NUROUT
 D DATSEL^NURSAGP2 G QUIT:NUROUT
 D EN1^NURSAUTL G QUIT:NUROUT D EN10^NURSUT3($G(DUZ)) I NURSZAP>7 S N2=DUZ G A
 S DIC("S")="I +$$EN6^NURSUT3($G(Y))"
 D EN3^NURSAGP1 G:NUROUT!'(+Y>0) QUIT S N2=$P($G(Y),U,2)
A W ! S ZTRTN="START^NURSEPIN" D EN7^NURSUT0 G:POP!($D(ZTSK)) QUIT
START ;
 K NN S NN=$O(^NURSF(210,"B",N2,0)),NSTATUS="",DA=NN D EN2^NURSUT0 S NSTATUS=$S(NPSPOS(1)="R":"RN",NPSPOS(1)="L":"LPN",NPSPOS(1)="N":"NA",NPSPOS(1)="C":"CK",NPSPOS(1)="S":"SE",NPSPOS(1)="A":"AO",NPSPOS(1)="O":"OT",1:"") S X="T" D ^%DT S NTODAY=Y
 K ^TMP("NURE",$J),NN S NURS132=$S(IOM'<132:1,1:0),(NSW2,NURSW1,NUROUT,NURPAGE,TLEN,TLCEU,TLCONT)=0 D SORT U IO
 I $O(^TMP("NURE",$J,""))="" D HEADER W !!,"THERE IS NO DATA FOR THIS PERSON!" S NUROUT=1 G QUIT
 S N1="" F  S N1=$O(^TMP("NURE",$J,N1)) Q:N1=""!NUROUT  S NDATE=0 F  S NDATE=$O(^TMP("NURE",$J,N1,NDATE)) Q:NDATE'>0  S NS2=0 F  S NS2=$O(^TMP("NURE",$J,N1,NDATE,NS2)) Q:NS2'>0!NUROUT  D
 .  I 'NURSW1!($Y>(IOSL-6)) D HEADER Q:NUROUT
 .  S DATA=$G(^TMP("NURE",$J,N1,NDATE,NS2))
 .  S NSW2=1 W !,$S(NURS132:N1,1:$E(N1,1,25)),?$S(NURS132:55,1:27),$E($P(DATA,U,4),1,20) W ?$S(NURS132:85,1:50),$E(NDATE,4,5)_"/"_$E(NDATE,6,7)_"/"_$E(NDATE,2,3)
 .  S Y=+$P(DATA,U,3) W:Y ?$S(NURS132:93,1:59),"-"_$E(+Y,4,5)_"/"_$E(+Y,6,7)_"/"_$E(+Y,2,3) W ?$S(NURS132:107,1:73),$J($P(DATA,U,2),2,2)
 .  W ! I $P($G(DATA),U,8)'="" W $S(NURS132:$P(DATA,U,8),1:$E($P(DATA,U,8),1,25))
 .  I $O(^TMP("NURE","REASON",$J,NS2,0)) S PDA=0 F  S PDA=$O(^TMP("NURE","REASON",$J,NS2,PDA)) Q:PDA'>0  S X=+$G(^TMP("NURE","REASON",$J,NS2,PDA)) I $P($G(^PRSE(452.6,X,0)),U)'="" W ?$S(NURS132:55,1:27),$P(^(0),U),!
 .  S TLEN=TLEN+$P(DATA,U,2) I $P(DATA,U,7)="C" W !,"  CEUs: ",$J(+$P(DATA,U,5),2,2)_"     Contact Hrs: ",$J(+$P(DATA,U,6),2,2) S TLCEU=TLCEU+$P(DATA,U,5),TLCONT=TLCONT+$P(DATA,U,6)
 .  W ! Q
 I 'NUROUT W !! W:NURSEL="C"!(NURSEL="A") "Total CEUs = "_$J(TLCEU,0,2)_"    Total Contact Hrs = "_$J(TLCONT,0,2)_"    " W "Total Class Hrs = "_$J(TLEN,0,2)
QUIT K ^TMP("NURE",$J) D CLOSE^NURSUT1,^NURSKILL
 K NTODAY,NSTATUS Q
HEADER I 'NURQUEUE,$E(IOST)="C",NURSW1 D ENDPG^NURSUT1 Q:NUROUT
 S NURPAGE=NURPAGE+1,NURSW1=1,NSW2=0 W:'(NURPAGE=1&($E(IOST)'="C")) @IOF
 W !,"INDIVIDUAL "_$S(NURSEL="M":"M.I.",NURSEL="C":"C.E",NURSEL="W":"UNIT",NURSEL="O":"OTHER",1:"COMPLETE")_" TRAINING REPORT FOR "_$S(TYP="C":"CY ",TYP="F":"FY ",1:" ")
 W $S(TYP="C"!(TYP="F"):$G(Y(0)),1:$G(YRST(1))_" - "_$G(YREND(1)))
 W ?$S(NURS132:101,1:62),$E(NTODAY,4,5)_"/"_$E(NTODAY,6,7)_"/"_$E(NTODAY,2,3),?$S(NURS132:121,1:71),"PAGE: ",NURPAGE,!," "
 W !,"CLASS",?$S(NURS132:55,1:27),"CLASS LOCATION",?$S(NURS132:85,1:50),"DATE(S)",?$S(NURS132:107,1:73),"CLASS HOURS"
 W !,"PRESENTER",?$S(NURS132:55,1:27),"SVC REASON"
 W !,$$REPEAT^XLFSTR("-",$S(NURS132:132,1:80)),!,"Employee Name: "_NAM_"  "_NSTATUS,!
 Q
SORT ;
 Q:$P($G(^VA(200,N2,0)),U)=""  W:$E(IOST)="C"&($R(500)) "."
 S NAM=$P($G(^VA(200,N2,0)),U)
 S NURSE="" F  S NURSE=$O(^PRSE(452,"AA",NURSE)) Q:NURSE=""  F CLS="" F  S CLS=$O(^PRSE(452,"AA",NURSE,N2,CLS)) Q:CLS=""  D
 .I NURSEL'="A"&(NURSEL'=NURSE) Q
 .S DAT=0 F  S DAT=$O(^PRSE(452,"AA",NURSE,N2,CLS,DAT)) Q:DAT'>0  S DA(2)=0 F  S DA(2)=$O(^PRSE(452,"AA",NURSE,N2,CLS,DAT,DA(2))) Q:DA(2)'>0  D
 ..Q:'$D(^PRSE(452,DA(2),0))  S DATA=$G(^PRSE(452,DA(2),0)),DATA(1)=$P($G(^PRSE(452,DA(2),6)),U,2)
 ..I $P($G(DATA),U,3)<YRST!($P($G(DATA),U,3)>YREND) Q
 ..S:$P($G(DATA),U,2)'="" DA(1)=$O(^PRSE(452.1,"B",$P(DATA,U,2),0)) S LEN=+$P($G(^PRSE(452.1,+$G(DA(1)),0)),U,3),X=NAM_U_$S(LEN>0:LEN,1:$P(DATA,U,16))_U_$P(DATA,U,14)_U_$P(DATA,U,15)_U_$P(DATA,U,6)_U_$P(DATA,U,10)_U_$P(DATA,U,21)_U_DATA(1)
 ..S ^TMP("NURE",$J,$P(DATA,U,2),+$P(DATA,U,3),DA(2))=X
 ..S PDA=0 F  S PDA=$O(^PRSE(452,DA(2),1,PDA)) Q:PDA'>0  I $G(^PRSE(452,DA(2),1,PDA,0))'="" S ^TMP("NURE","REASON",$J,DA(2),PDA)=$G(^PRSE(452,DA(2),1,PDA,0))
 ..Q
 .Q
 Q
