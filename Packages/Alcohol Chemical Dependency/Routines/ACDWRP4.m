ACDWRP4 ;IHS/ADC/EDE/KML - REPORT GENERATOR;
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
 ;Reports 59,61
 I '$D(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL")) D ^ACDWK Q
 S ACDTOT=0,ACDTOT1=0
 D C F ACDP1=0:0 S ACDP1=$O(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDP1)) Q:'ACDP1  S ACDTOT=ACDTOT+1,ACDTOT1=ACDTOT1+^(ACDP1)
 W !,ACDTOT,?20,ACDTOT1,?44,$J(ACDTOT1/ACDTOT,6,2)
 D ^ACDWK Q
F ;Form feed
 I $Y+4>IOSL D F^ACDWUTL D:'$D(DIRUT) C
 Q
C ;Columns
 W !!,ACDC(1),?20,ACDC(2),?44,ACDC(3),!,ACDH(1)