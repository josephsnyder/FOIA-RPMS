ABMDVDSP ; IHS/ASDST/DMJ - DISPLAY A PCC VISIT ; 
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;;Y2K/OK - IHS/ADC/JLG 12-18-97
 ;Original;TMD;
 ;
 Q:'$D(ABMDVDSP)
 Q:'ABMDVDSP
 Q:'$D(^AUPNVSIT(ABMDVDSP,0))
 S APCDVDSP=ABMDVDSP
 D ^APCDVDSP
 K ABMDVDSP,APCDVDSP
 Q
 ;
 D DSPLY
 D EOJ
 Q
 ;
DSPLY ;
 W $$EN^ABMVDF("IOF") K S,DR
 S ABMDVDSH="-----------------------------"
 S X="",$P(X,"~",80)="" W !,X,!!,ABMDVDSH,"     VISIT FILE     ",ABMDVDSH
 S DIC="^AUPNVSIT(",DA=ABMDVDSP D EN^DIQ
 S ABMDVFLE=9000010 F ABMDVL=0:0 S ABMDVFLE=$O(^DIC(ABMDVFLE)) Q:ABMDVFLE>9000010.99!(ABMDVFLE'=+ABMDVFLE)  D DSPLY2 Q:$D(DTOUT)!$D(DUOUT)
 S X="",$P(X,"~",80)="" W !,X
 Q
 ;
DSPLY2 S ABMDVNM=$P(^DIC(ABMDVFLE,0),U,1)
 S ABMDVDG=^DIC(ABMDVFLE,0,"GL"),ABMDVIGR=ABMDVDG_"""AD"",ABMDVDSP,ABMDVDFN)"
 S ABMDVDFN="" F ABMDVI=1:1 S ABMDVDFN=$O(@ABMDVIGR) Q:ABMDVDFN=""  D DSPLY3 Q:$D(DTOUT)!$D(DUOUT)
 Q
 ;
DSPLY3 I $Y>(IOSL-7) K DIR S DIR(0)="E" D ^DIR K DIR,S Q:$D(DTOUT)!$D(DUOUT)  W $$EN^ABMVDF("IOF")
 I ABMDVI<2 S X=20-$L(ABMDVNM),Y=X\2,Z=X-Y W !,ABMDVDSH,$J("",Z),ABMDVNM,$J("",Y),ABMDVDSH
 ;LAB SET S=0 BELOW TO DISABLE THE "^" TO HALT PROMPTS
 S DIC=ABMDVDG,DA=ABMDVDFN,DIQ(0)="C" D EN^DIQ
 Q
 ;
EOJ ; EOJ CLEANUP
 I '$D(DTOUT),'$D(DUOUT) K DIR S DIR(0)="E" D ^DIR K DIR
 K X,Y
 K ABMDVDFN,ABMDVDG,ABMDVDSH,ABMDVDSP,ABMDVFLE,ABMDVI,ABMDVIGR,ABMDVL,ABMDVNM
 Q