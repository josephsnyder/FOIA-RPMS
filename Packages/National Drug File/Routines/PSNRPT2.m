PSNRPT2 ;BIR/WRT-FILEMAN PRINT TEMPLATE USED IN PSNRPT ;[ 01/12/98   5:18 PM ]
 ;;4.0; NATIONAL DRUG FILE;**65**; 30 Oct 98
 ;Reference to ^PSDRUG supported by DBIA #221
 ;Reference to ^DIC(51.5 supported by DBIA #1931
 ;
 I '$D(^PSDRUG(D0,"ND")) Q
 S WRT=D0 I $D(^PSDRUG(WRT,660)) S PSNODE=^PSDRUG(WRT,660) I $P(PSNODE,"^",2) S PSNOU=$P(PSNODE,"^",2) I $D(^DIC(51.5)),$D(^DIC(51.5,PSNOU)) S PSNOUN=$P(^DIC(51.5,PSNOU,0),"^",1)
 D WRTIT,^PSNRPT3
 Q
WRTIT W !,"ORDER UNIT: ",$S($D(PSNOUN):PSNOUN,1:""),?42,"VA CLASS: ",$P(^PS(50.605,$P(^PSDRUG(WRT,"ND"),"^",6),0),"^",1)_"    "_$P(^PS(50.605,$P(^PSDRUG(WRT,"ND"),"^",6),0),"^",2)
 I $P(^PSDRUG(WRT,"ND"),"^",3) D
 .W !,"CS FEDERAL SCHEDULE: "_$S($P($G(^PSNDF(50.68,$P(^PSDRUG(WRT,"ND"),"^",3),7)),"^")]"":$P(^PSNDF(50.68,$P(^PSDRUG(WRT,"ND"),"^",3),7),"^"),1:"")
 W !,"DISPENSE UNITS/ORDER UNITS: ",$S('$D(PSNODE):"",1:$P(PSNODE,"^",5)),!,"DISPENSE UNIT: ",$S('$D(PSNODE):"",1:$P(PSNODE,"^",8)) S D0=WRT K WRT,PSNODE,PSNOUN,PSNOU Q
