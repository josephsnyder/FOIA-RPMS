APSPDDUE ; IHS/DSD/ENM - PRINTS DRUGS USED IN STUDY ;  [ 09/03/97   1:30 PM ]
 ;;6.0;IHS PHARMACY MODIFICATIONS;;09/03/97
START ;
 W !,"The following drugs are part of this study: ",!!
 S APSPDDUE("CNT")=0
 F APSPDDUE=0:0 S APSPDDUE=$O(^PSDRUG("APSPCN",D0,APSPDDUE)) Q:APSPDDUE'=+APSPDDUE  D PRINT
END D EOJ ; Clean up variables
 Q
 ;
PRINT ;
 I $D(^PSDRUG(APSPDDUE,0))#2,$P(^(0),U,1)]"" W:'APSPDDUE("CNT") ! W:APSPDDUE("CNT") ?40 W $P(^(0),U,1) S APSPDDUE("CNT")=(APSPDDUE("CNT")+1) S:APSPDDUE("CNT")=2 APSPDDUE("CNT")=0
 Q
 ;
EOJ ;
 K APSPDDUE
 Q
