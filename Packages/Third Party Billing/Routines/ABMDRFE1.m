ABMDRFE1 ; IHS/ASDST/DMJ - CPT Management Reports ; 
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;Original;TMD;
 ;
 ; IHS/SD/SDR - v2.6 CSV
 ;
 S IOP=ABM("IOP") D ^%ZIS Q:$G(POP)  U IO W:$D(ABM("PRINT",16)) @ABM("PRINT",16)
 S ABM("PG")=0
 S ABM(1)=$S(ABM("CAT")=1:90000,ABM("CAT")=2:10000,ABM("CAT")=3:70000,1:80000),ABM(1)=ABM(1)-1
 S ABM(2)=$S(ABM("CAT")=1:99999,ABM("CAT")=2:69999,ABM("CAT")=3:79999,1:89999)
 S IOP=ABM("IOP") D ^%ZIS
 D HDB G XIT:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)
 S ABM=ABM(1) F  S ABM=$O(^ICPT(ABM)) Q:'ABM!(ABM>ABM(2))  D  Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)
 .Q:$P($$CPT^ABMCVAPI(ABM,""),U,7)=1  ;CSV-c
 .I $Y>(IOSL-7) D HD Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)
 .I ABM("CAT")=2,$D(^ABMDFEE(ABM("FEE"),11,ABM,0)) S ABMU(1)="?110"_U_$J($FN($P(^(0),U,2),",",2),9) S:$D(^ABMDFEE(ABM("FEE"),23,ABM,0)) ABMU(2)="?122"_U_$J($FN($P(^(0),U,2),",",2),9)
 .E  I $D(^ABMDFEE(ABM("FEE"),11,ABM,0)) S ABMU(1)="?122"_U_$J($FN($P(^(0),U,2),",",2),9)
 .E  I $D(^ABMDFEE(ABM("FEE"),15,ABM,0)) S ABMU(1)="?122"_U_$J($FN($P(^(0),U,2),",",2),9)
 .E  I $D(^ABMDFEE(ABM("FEE"),17,ABM,0)) S ABMU(1)="?122"_U_$J($FN($P(^(0),U,2),",",2),9)
 .E  I $D(^ABMDFEE(ABM("FEE"),19,ABM,0)) S ABMU(1)="?122"_U_$J($FN($P(^(0),U,2),",",2),9)
 .S ABM(0)=0,ABMU("TXT")="" F  S ABM(0)=$O(^ICPT(ABM,"D",ABM(0))) Q:'ABM(0)  Q:'$D(^(ABM(0),0))  S ABMU("TXT")=ABMU("TXT")_^(0)_" "
 .S ABMU("TXT")=ABM_" - "_ABMU("TXT")
 .;start CSV-c
 .S ABM(3)=0
 .F I=1:1 S ABM(3)=$O(^ICPT(ABM,"ICD",ABM(3))) Q:'ABM(3)  Q:'$D(^ICD0(ABM(3),0))  S ABMU("2TXT",I)=$P($$ICDOP^ABMCVAPI(ABM(3),""),U,2)_" - "_$E($P($$ICDOP^ABMCVAPI(ABM(3),""),U,5),1,30)
 .;end CSV-c
 .I $D(ABMU("2TXT",1)) S ABMU("2TXT")=ABMU("2TXT",1),ABMU("2LM")=70,ABMU("2RM")=108,ABMU("2TAB")=-6
 .S ABMU("LM")=0,ABMU("RM")=65,ABMU("TAB")=-10
 .D PRTTXT
 ;
XIT D POUT^ABMDRUTL,^%ZISC
 K ABM
 Q
 ;
PRTTXT ; UTIL FOR WRAP-AROUND
 W !
 S ABMU("TAB")=$S($D(ABMU("TAB")):ABMU("TAB"),1:0),ABMU("LNG")=ABMU("RM")-ABMU("LM")
 I $D(ABMU("2TXT")) S ABMU("2TAB")=$S($D(ABMU("2TAB")):ABMU("2TAB"),1:0),ABMU("2LNG")=ABMU("2RM")-ABMU("2LM")
 F ABMU("Q")=1:1 Q:(ABMU("TXT")=""!("    "[ABMU("TXT")))&'$D(ABMU("2TXT"))  D PRTTXT2
QIT K ABMU
 Q
 ;
PRTTXT2 K ABMU("FLG") I $L(ABMU("TXT"))<ABMU("LNG") S ABMU("F")=ABMU("TXT"),ABMU("TXT")="" G PRTTXT3
 S ABMU("FLG")="" F ABMU("C")=ABMU("LNG"):-1:1 S ABMU("L")=$E(ABMU("TXT"),ABMU("C")) Q:ABMU("L")=" "!(ABMU("L")="-")!(ABMU("L")="\")!(ABMU("L")=",")!(ABMU("L")="/")
 S ABMU("F")=$E(ABMU("TXT"),1,ABMU("C")-1),ABMU("TXT")=$E(ABMU("TXT"),ABMU("C")+1,255)
 K:"    "[ABMU("TXT")!(ABMU("TXT")="")!(ABMU("TXT")=" ") ABMU("FLG")
 ;
PRTTXT3 I $D(ABMU("2TXT")) D 2
 W ?ABMU("LM"),ABMU("F") I $D(ABMU("2TXT")) W ?ABMU("2LM"),ABMU("2F")
 I ABMU("Q")=1 F ABMU("I")=1:1 Q:'$D(ABMU(ABMU("I")))  W @$P(ABMU(ABMU("I")),U),$P(ABMU(ABMU("I")),U,2)
 W:$D(ABMU("FLG")) ! S ABMU("LM")=ABMU("LM")-ABMU("TAB"),ABMU("LNG")=ABMU("LNG")+ABMU("TAB"),ABMU("TAB")=0
 I $D(ABMU("2TXT")) S ABMU("2LM")=ABMU("2LM")-ABMU("2TAB"),ABMU("2LNG")=ABMU("2LNG")+ABMU("2TAB"),ABMU("2TAB")=0
 Q
 ;
2 I $D(ABMU("2TXT",ABMU("Q"))) S ABMU("2F")=ABMU("2TXT",ABMU("Q")),ABMU("FLG")=""
 E  K ABMU("2TXT")
 Q
 ;
HD D PAZ^ABMDRUTL Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
HDB W $$EN^ABMVDF("IOF") S ABM("PG")=ABM("PG")+1
 W !!!,"Date: " S Y=DT X ^DD("DD") W Y
 I $D(ABM("S")) S ABM("NMM")="~~~~~~~~~~ "_ABM("S")_" LISTING - "_ABM("NM")_" ~~~~~~~~~~"
 W ?132-$L(ABM("NMM"))\2,ABM("NMM")
 W ?122,"Page: ",ABM("PG")
 I ABM("CAT")=2 W !,"CPT",?70,"ICD          CORRESPONDING",?114,"FEE",?121,"ANESTHESIA",!,"CODE  -       CPT DESCRIPTION",?70,"CODE  -      ICD DESCRIPTION",?113,"AMOUNT",?125,"FEE"
 E  W !,"CPT",?70,"ICD          CORRESPONDING",?126,"FEE",!,"CODE  -       CPT DESCRIPTION",?70,"CODE  -      ICD DESCRIPTION",?124,"AMOUNT"
 S ABM("H")="",$P(ABM("H"),"=",132)="" W !,ABM("H")
 Q
