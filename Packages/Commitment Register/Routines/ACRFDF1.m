ACRFDF1 ;IHS/OIRM/DSD/THL,AEF - DISTRIBUTE FUNDS (CON'T); [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;ROUTINE USED TO MANAGE DISTRIBUTION OF FUNDS - CONT'D
SARRAY ;EP;SELECT TYPE OF DISTIBUTION: AMOUNT OR PERCENT
 S:'$D(ACRCUM) ACRCUM=0
 I ACRDM'=2 D W1
 G:ACRDM=2 S1
 S DIR(0)="NO^"_$S(ACRDM=3:"0:"_(ACRFDX-ACRCUM)_":2",1:"0:100")
 S DIR("A")=$S(ACRDM=3:"AMOUNT",1:"PERCENT")
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)
S1 S:ACRDM=2 X=$P(^ACRDG(ACRDGDA,"GP",ACRX,"DT"),U,3)/100
 S ACRX(ACRX)=ACRY_U_X_U_ACRGLB_U_ACRDFN_U_ACRACTPT
 S ACRCUM=ACRCUM+X
 I ACRCUM>$S(ACRDM=1:100,1:ACRFDX) D W2
 K ACRQUIT
 Q
DIST ;EP;CREATE DISTRIBUTION ENTRIES
 S ACRDATA=$T(@ACRENTRY)
 S (ACRZ,ACRX)=0
 F  S ACRX=$O(ACRX(ACRX)) Q:'ACRX  D D1
 K ACRY,ACRGLB,ACRDFN,ACRDATA,ACRZ
 Q
D1 S X=$S(ACRDM=3:$P(ACRX(ACRX),U,2),1:$P(ACRX(ACRX),U,2)*ACRFDX)
 N Y
 S Y=ACRX(ACRX)
 S ACRY=$P(Y,U)
 S ACRACTPT=$P(Y,U,5)
 S ACRGLB=$P(Y,U,3)
 S ACRDFN=$P(Y,U,4)
 S DIC=$P(ACRDATA,";;",2)
 S DIC(0)="LZ"
 S DIC("DR")=$P(ACRDATA,";;",3)_ACRZDA
 D FILE^ACRFDIC
 S DA=+Y
 S DIE=$P(ACRDATA,";;",2)
 S DR=$P(ACRDATA,";;",4)
 S DR=DR_";.2////"_ACRY_";.3////"_ACRGLB_";.4////"_ACRDFN
 S:DR["130" DR=$P(DR,"130")_$P(DR,"130;",2)_";130////"_ACRACTPT
 W !!?22,"Data for ",ACRY," distribution: "
 W !
 S DIE("NO^")="NO"
 D DIE^ACRFDIC
 Q
PAUSE K ACRPSE
 S DIR(0)="YO"
 S DIR("A")="         List more MEMBERS"
 S DIR("B")="NO"
 W !
 D DIR^ACRFDIC
 Q:Y=1
 S ACRPSE=""
 Q
 ;;
W1 W !!,ACRX
 W ?8,ACRY
 W ?40,"CUMM ",$S(ACRDM=1:"%",1:"AMT"),": ",ACRCUM
 W ?60,$S(ACRDM=3:"RMNG AMT: ",1:"RMNG %: "),$S(ACRDM=3:ACRFDX,1:100)-ACRCUM,$S(ACRDM=1:"%",1:"")
 Q
W2 W !!,*7,$S(ACRDM=3:"You cannot distribute more than "_ACRFDX,1:"Percent distributed must not exceed 100%")
 S ACRX=ACRX-1
 S ACRCUM=ACRCUM-X
 Q
ALLAMT ;;^ACRALW(;;.02////;;.8T//ORIGINAL;I X["O" S Y=30;.9T;30T//RECURRING;130;50T;80T;900
ALCAMT ;;^ACRALC(;;.03////;;.8T//ORIGINAL;I X["O" S Y=30;.9T;30T//RECURRING;110T;900
LOCBAMT ;;^ACRLOCB(;;.04////;;.8T//ORIGINAL;I X["O" S Y=.05;.9T;.05T;30T//RECURRING;110T;90T;100;140;900
