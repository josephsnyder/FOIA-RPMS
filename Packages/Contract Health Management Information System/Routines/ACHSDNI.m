ACHSDNI ; IHS/ITSC/PMF - DENIAL LIST BY ISSUE DATE ;     [ 10/31/2003  11:43 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**6**;JUNE 11, 2001
 ;;ACHS*3.1*6 3/31/2003 - ADD Date of Service to Report
 K X2,X3
 ;
A2 W !!,"Enter the BEGINNING DATE for this report: ALL DENIALS// " D READ^ACHSFU G K:$D(DUOUT)!$D(DTOUT) S:Y?1"?".E Y="?" I $E(Y)="A"!(Y="") S ACHSBDT=1,ACHSEDT=9999999 G B
 S X=Y,%DT="XEP" D ^%DT G A2:Y<1 S ACHSBDT=Y I Y>DT D FUDT^ACHS G A2
 ;
A3 W !!,"Enter the ENDING DATE for this report: " D READ^ACHSFU G K:$D(DTOUT)!(Y="") G A2:$D(DUOUT) S:Y?1"?".E Y="?" S X=Y,%DT="XEP" D ^%DT G A3:Y<1 S ACHSEDT=Y I Y>DT D FUDT^ACHS G A3
 I ACHSEDT<ACHSBDT W !!,*7,"The END is before the BEGINNING." G A2
 ;
B S ACHSIO=IO
 ;
DEV S %ZIS="OPQ" D ^%ZIS I POP D HOME^%ZIS G K
 G:'$D(IO("Q")) START K IO("Q") I $D(IO("S"))!($E(IOST)'="P") W *7,!,"Please queue to system printers." D ^%ZISC G DEV
 X ^%ZOSF("UCI") S ZTRTN="START^ACHSDNI",ZTUCI=Y,ZTDESC="CHS Denial Documents"_$E(ACHSBDT,2,7)_" to "_$E(ACHSEDT,2,7) F ACHS="ACHSBDT","ACHSEDT","DUZ(2)" S ZTSAVE(ACHS)=""
 D ^%ZTLOAD G:'$D(ZTSK) DEV
 K ZTSK
 G K
 ;
START ; EP - TaskMan.
 S ACHSISU=ACHSBDT-1,Y=ACHSBDT X ^DD("DD") S ACHS("BDT")=Y,Y=ACHSEDT X ^DD("DD") S ACHS("EDT")=Y,(ACHSTOT("$"),ACHSTOT)=0
 S ACHST1=$$C^XBFUNC($S(ACHSBDT=1:"***   ALL DENIALS   ***",1:"For the period "_ACHS("BDT")_" through "_ACHS("EDT")),80)
 D BRPT^ACHSFU
 D HDR
 ;
LOOP ;
 K DUOUT,DTOUT
 F  S ACHSISU=$O(^ACHSDEN(DUZ(2),"D","AISSUE",ACHSISU)) Q:+ACHSISU=0!(ACHSISU>ACHSEDT)  D  Q:$D(DUOUT)!$D(DTOUT)
 .S DA="" F  S DA=$O(^ACHSDEN(DUZ(2),"D","AISSUE",ACHSISU,DA)) Q:DA=""  D  Q:$D(DUOUT)!$D(DTOUT)
 ..S ACHS(0)=$G(^ACHSDEN(DUZ(2),"D",DA,0))
 ..Q:ACHS(0)=""
 ..I $P(ACHS(0),U,6)="N" Q:$P($G(^ACHSDEN(DUZ(2),"D",DA,10)),U)=""  S ACHSNAME=$P(^ACHSDEN(DUZ(2),"D",DA,10),U)
 ..I $P(ACHS(0),U,6)="Y" Q:$P(ACHS(0),U,7)=""  S ACHSNAME=$P($G(^DPT($P(ACHS(0),U,7),0)),U) Q:ACHSNAME=""
 ..S ACHS("$")="" I $D(^ACHSDEN(DUZ(2),"D",DA,100)) D DOLLARS^ACHSDNU1(DUZ(2))
 ..;IHS/SET/JVK ACHS*3.1*6 ADDED 2 LINES BELOW FOR DATE OF SERVICE
 ..S ACHSDOS=$P(^ACHSDEN(DUZ(2),"D",DA,0),U,4)
 ..S Y=ACHSDOS X ^DD("DD") S ACHSDOS=Y
L1 ..;
 ..;S ACHSISU=$O(^ACHSDEN(ACHSFAC,"D","AISSUE",ACHSISU)) G END:+ACHSISU=0!(ACHSISU>ACHSEDT) S DA=0
L2 ..;
 ..;S DA=$O(^ACHSDEN(ACHSFAC,"D","AISSUE",ACHSISU,DA)) G L1:+DA=0,L2:'$D(^ACHSDEN(ACHSFAC,0)),L2:$P(^(0),U)'=ACHSFAC
 ..;S ACHS(0)=$G(^ACHSDEN(ACHSFAC,"D",DA,0))
 ..;I $P(ACHS(0),U,6)="N" G L1:'$D(^ACHSDEN(ACHSFAC,"D",DA,10)),L1:$P(^(10),U)']"" S ACHSNAME=$P(^(10),U) G L3
 ..;G L1:+$P(^ACHSDEN(ACHSFAC,"D",DA,0),U,7)<1,L1:'$D(^DPT($P(^ACHSDEN(ACHSFAC,"D",DA,0),U,7),0)) S ACHSNAME=$P(^(0),U)
L3 ..;S ACHS("$")="" I $D(^ACHSDEN(ACHSFAC,"D",DA,100)) D DOLLARS^ACHSDNU1(ACHSFAC)
 ..;IHS/SET/JVK ACHS*3.1*6 COMMENT BELOW 
 ..;S Y=ACHSISU X ^DD("DD") W Y,?14,$P(ACHS(0),U),?27,ACHSNAME,?65 S X=ACHS("$"),X2=2,X3=12 D FMT^ACHS W !
 ..;IHS/SET/JVK ACHS*3.1*6 ADD LN BELOW FOR DOS TO PRINT ON REPORT
 ..S Y=ACHSISU X ^DD("DD") W Y,?14,$P(ACHS(0),U),?27,ACHSNAME,?52,ACHSDOS,?65 S X=ACHS("$"),X2=2,X3=12 D FMT^ACHS W !
 ..I $Y>ACHSBM D RTRN^ACHS Q:$D(DUOUT)!$D(DTOUT)  D HDR
 ..S ACHSTOT=ACHSTOT+1,ACHSTOT("$")=ACHSTOT("$")+ACHS("$")
 ..;G L2
END S X=ACHSTOT("$"),X2="2$",X3=16 D COMMA^%DTC W !,ACHS("="),!,"TOTALS FOR THIS REPORT: ",ACHSTOT," DENIAL",$S(ACHSTOT=1:"",1:"S"),?61,X D RTRN^ACHS W @IOF
 ;
K K ACHSISU,ACHSNAME,ACHSTOT,DA
 D ERPT^ACHS
 Q
 ;
HDR ; Print header.
 S ACHSPG=ACHSPG+1
 ;IHS/SET/JVK ACHS*3.1*6 COMMENT OUT LINE BELOW
 ;W @IOF,!!,$$C^XBFUNC("***  CONTRACT HEALTH CARE SYSTEM REPORT  ***",80),!!,ACHSLOC,!?25,"DENIAL DOCUMENTS BY ISSUE DATE",?71,"Page",$J(ACHSPG,3),!,ACHSTIME,!!,ACHST1,!!,"ISSUE DATE",?14,"DENIAL #",?27,"PATIENT",?70,"DOLLARS",!,ACHS("="),!
 ;IHS/SET/JVK ACHS*3.1*6 ADD TWO LINES BELOW
 W @IOF,!!,$$C^XBFUNC("***  CONTRACT HEALTH CARE SYSTEM REPORT  ***",80),!!
 W ACHSLOC,!?25,"DENIAL DOCUMENTS BY ISSUE DATE",?71,"Page",$J(ACHSPG,3),!,ACHSTIME,!!,ACHST1,!!,"ISSUE DATE",?14,"DENIAL #",?27,"PATIENT",?50,"DATE OF SERVICE",?70,"DOLLARS",!,ACHS("="),!
 Q
