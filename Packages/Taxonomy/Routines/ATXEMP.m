ATXEMP ; IHS/OHPRD/TMJ -  ICD CODES FOR A GIVEN TAXONOMY BEFORE MODIFICATION ; 
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
 D INIT
 F ATXL=0:0 D START W ! Q:ATXSTP
 K ATXL,ATXSTP
 D EOJ
 Q
 ;
INIT ;
 S U="^",ATXFLG=""
 Q
 ;
START ;
 D ASK Q:ATXSTP
 D TSKMN
 D EOJ
 Q
 ;
ASK ;
 S ATXSTP=0
 S DIC="^ATXAX(",DIC(0)="AEMQ",DIC("S")="I $P(^(0),U,5)=DUZ,$P(^(0),U,8)" D ^DIC K DIC
 I Y<1 S ATXSTP=1 Q
 I $D(^TMP($J,"ATXTAX",+Y)) W !,$C(7),"Taxonomy currently",^(+Y)," Try later.",! G ASK
 I '$O(^ATXAX(+Y,21,0)) W !,$C(7),"This option for modifying existing ICD codes in taxonomies only!",!,"If you want to enter ICD codes for a taxonomy where none existed",!,"before, use the create taxonomy option.",! G ASK
 S ATXX=+Y,^TMP($J,"ATXTAX",+Y)=" being modified."
 K ^TMP($J,"ATXEMP",ATXX)
 D DFNS
 S DIE="^ATXAX(",DR=".01;.02;1101",DA=ATXX D ^DIE K DIE,DR
 I $D(Y) S ATXSTP=1 K ^TMP($J,"ATXTAX",ATXX),^TMP($J,"ATXEMP",ATXX) Q
 D BUILD,^ATXCODE
 I ATXSTP=1 Q
 Q
 ;
DFNS ;GET LO AND HIGH DFNS FOR THIS TAXONOMY
 S ATXCNT=0
 S ATXSS=0 F ATXL=0:0 S ATXSS=$O(^ATXAX(ATXX,21,ATXSS)) Q:ATXSS'=+ATXSS  S ATXLOV=$P(^(ATXSS,0),U) S:ATXLOV'[" " ATXLOV=ATXLOV_" " D
 .S ATXHIV=$P(^ATXAX(ATXX,21,ATXSS,0),U,2) S:ATXHIV'[" " ATXHIV=ATXHIV_" " S ATXCNT=ATXCNT+1,ATXLW(ATXCNT)=ATXLOV,ATXHIH(ATXCNT)=ATXHIV D GETVAL
 Q
 ;
GETVAL ;GET RANGE OF DFNS
 S ^TMP($J,"ATXEMP",ATXX,$O(^ICD9("BA",ATXLOV,"")))=""
 Q:ATXLOV=ATXHIV
 F ATXL=0:0 S ATXLOV=$O(^ICD9("BA",ATXLOV)) Q:ATXLOV](ATXHIV)!(ATXLOV="")  S ATXDFN=$O(^ICD9("BA",ATXLOV,"")),^TMP($J,"ATXEMP",ATXX,ATXDFN)=""
 Q
 ;
BUILD ;BUILD ATXTABLE FOR ROUTINE ATXCODE
 S ATX("CODE")=0 F  S ATX("CODE")=$O(^ATXAX(ATXX,21,"AA",ATX("CODE"))) Q:ATX("CODE")=""  S ATXTABLE(ATX("CODE"))=$O(^(ATX("CODE"),""))
 Q
 ;
TSKMN ;
 I $O(^ATXPAT(ATXX,11,0)) W !!,$C(7),"Taxonomy will be modified (if changes were made) and patient list in PT TAXONOMY",!,"file will be updated in background by taskman!"
 E  W !!,$C(7),"Taxonomy will now be modified (if changes were made) in background by taskman!"
 K ZTSAVE F %="ATXX" S ZTSAVE(%)=""
 S ZTRTN="ZTM^ATXMOD",ZTDESC="MODIFY ICD9 TAXONOMY FIELD",ZTIO="",ZTDTH=DT D ^%ZTLOAD K ZTSK
 Q
 ;
EOJ ;
 K ATXLOV,ATXHIV,ATXLO,ATXHI,ATXDFN,ATXFLG,ATXP,ATXIOF,ATXCHK,ATXHIH,ATXLW,ATXI,ATXDLC,ATXX,ATXCNT,ATXDEL,ATXFLG,ATXSTOP,ATXSS
 Q
 ;
