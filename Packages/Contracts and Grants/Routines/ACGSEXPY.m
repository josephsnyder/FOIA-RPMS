ACGSEXPY ;IHS/OIRM/DSD/THL,AEF - EXPORT CONTROLLER; [ 03/27/2000   2:22 PM ]
 ;;2.0t1;CONTRACT INFORMATION SYSTEM;;FEB 16, 2000
 ;;UTILITY WHICH CREATES THE EXPORT GLOBAL AND TRANSMITS IT TO THE
 ;;ALBUQUERQUE DATA CENTER
 ;;modifed for y2k;mlp
EN D EXPORT
EXIT K ACGT1,ACGRDA,ACGSIGN,ACGY,ACGFY,%DEV,%FN,%CMT,%GN,%QUIT,%SIZE,%TAP,%TAPV
 Q
EXPORT D ^XBKVAR,HEAD^ACGSMENU
 W !!?30,"DATA EXPORT UTILITY"
 W !
 D FY
 Q:$D(ACGQUIT)
 S ACGFY=Y,ACG4=$P(ACGPARA,U,3),%FN=$S(ACG4=236:"/usr2/acg",ACG4=102:"ACG",1:"A:ACG")_ACG4_"."_$S($P(ACGPARA,U,2)=1:$S(ACG4'=236:"asc",1:"phs"),1:"ASC")
 W !!,"CIS data will now be filed to file '"_%FN_"'"
 S DIR(0)="YO",DIR("A")="Proceed with filing",DIR("B")="NO"
 D DIR^ACGSDIC
 I $D(ACGQUIT)!(Y'=1) S ACGQUIT=1 Q
 K ^ACGS("T",1),^ACGS("SPP",1)
 I ACG4=236 D FY^ACGSUP
 W !!,"The data export process will now take place.  It takes 30-45 minutes.",!,"Please do not interrupt."
 D HFS,^%ZISC
 ;S %FN=$P(%FN,"asc")_"spp"_$P(%FN,"asc",2)
 ;D OPEN,SSP:POP=0,^%ZISC
 Q
HFS D OPEN
 Q:POP>0
 I ACG4=236 D HQ Q
 I ACG4'=236 D AREAS
 Q
OPEN ;OPEN HOST FILE
 F ACGI=1:1:4 S (IOP,ION)="HOST FILE SERVER #"_ACGI,%ZIS("IOPAR")="("""_%FN_""":""W"")" D ^%ZIS Q:'POP
 I POP W *7,*7,!!,"Waiting for HOST FILE SERVER" H 2 G OPEN
 K IOP
 Q
AREAS U IO
 S %DEV=IO,(%TAP,%TAPV)=0,%GN="ACGS",^TMP($J,"ACGS")="",%CMT="",%SIZE=1024*1000,%QUIT=0
 D START^%GS
 Q
HQ U IO
 K ^TMP("ACGERR"),^TMP("ACG")
 S (ACGCNT,ACGRDA,ACGI)=0
 F ACGI=1:1 S ACGRDA=$O(^ACGS("T",1,ACGRDA)) Q:'ACGRDA  D
 .D ^ACGSFLDS
 .S ACG2=$P(ACGDT,U,2)
 .Q:ACG2=""
 .I $D(^TMP($J,"ACG",ACG2)) S ^TMP($J,"ACGERR",ACGRDA,"D")="" Q
 .I $L(ACGY)'=600 S ^TMP($J,"ACGERR",ACGRDA)="" Q
 .W ACGY
 .S ACGCNT=ACGCNT+1,^TMP($J,"ACG",ACG2)=""
 D ^%ZISC
 K ^TMP("ACG")
 S ACGI=ACGI-1
 W !!?5,ACGI,?15,"RECORDS EVALUATED",!?5,ACGCNT,?15,"RECORDS PROCESSED"
 I ACGI'=ACGCNT W !!,*7,*7,?5,ACGI-ACGCNT,?15,"RECORDS NOT PROPERLY PROCESSED.",!?15,"CHECK WITH YOUR SYSTEM OPERATOR."
 Q
SSP U IO
 S (ACGRDA,ACGCNT,ACGI)=0
 F ACGI=1:1 S ACGRDA=$O(^ACGS("SPP",1,ACGRDA)) Q:'ACGRDA  I $P(^ACGS($P(^ACGS(ACGRDA,0),U,3),"IHS"),U,23)=1 S ACGI=ACGI+1 D ^ACGSSPFD I $L(ACGY)=200 W ACGY S ACGCNT=ACGCNT+1
 Q
FY ;XEP;TO SET FISCAL YEAR
 ;;THIS POINT IS CALLED BY ARMS DURING INTERFACE BETWEEN ARMS AND CIS
 ;S ACGFY=$E(DT,4,5),ACGFY=$S(ACGFY<10:$E(DT,2,3),1:$E(DT,2,3)+1),DIR(0)="FOA^2:2",DIR("A")="Fiscal year: ",DIR("B")=ACGFY
 S ACGFY=$E(DT,4,5),ACGFY=$S(ACGFY<10:($E(DT,1,3)+1700),1:($E(DT,1,3)+1700)+1),DIR(0)="FOA^4:4",DIR("A")="Fiscal year: ",DIR("B")=ACGFY ;y2k;mlp
 W !
 D DIR^ACGSDIC
 I $D(ACGQUIT)!(Y<1) K ACGQUIT Q
 S:Y>0 ACGFY=Y
 Q
FY1 ;EP;TO SET FISCAL YEAR
 ;S ACGFY=$E(DT,4,5),ACGFY=$S(ACGFY<10:$E(DT,2,3),1:$E(DT,2,3)+1)
 S ACGFY=$E(DT,4,5),ACGFY=$S(ACGFY<10:($E(DT,1,3)+1700),1:($E(DT,1,3)+1700)+1) ;y2k;mlp
 Q
DATE U IO
 S ACGCNT=0,ACGD=ACGDATE
 F  S ACGD=$O(^ACGS("Q",ACGD)) Q:'ACGD  D
 .S ACGRDA=0
 .F ACGI=1:1 S ACGRDA=$O(^ACGS("Q",ACGD,ACGRDA)) Q:'ACGRDA  D
 ..F X=0,10 S Y="^ACGS("_ACGRDA_","_X_")",Z=$G(@Y) W Y,!,Z,!
 ..F X="DT","DT1","DT2","DT3","IC","IHS","IHS1","SP" S Y="^ACGS("_ACGRDA_","""_X_""")",Z=$G(@Y) W Y,!,Z,!
 Q
DX ;EP;TO EXPORT RECORDS BY DATE LAST EDITED
 S ACGPARA=^ACGPARA(1,0),X1=$P(ACGPARA,U,7),X2=-180
 D C^%DTC
 S ACGDATE=X-1
 D DCON
 S ACG4=$P(ACGPARA,U,3),ACG2=$P(ACGPARA,U,2),%FN=$S(ACG2=1:"/usr/spool/uucppublic/acg",ACG4=102:"ACG",1:"A:ACG")_ACG4_"."_$S(ACG2=1:$S(ACG4'=236:"asc",1:"phs"),1:"ASC")
 D OPEN
 I POP D CLOSE Q
 U IO
 W ACGX,!,"MONTHLY EXPORT FOR CONTRACT OFFICE ",ACG4,!
 D DATE,DXC
 Q
DXC ;CLOSE EXPORT
 W "*",!,"*",!,"**",!,"**",!
CLOSE D ^%ZISC
 Q
DCON ;CONVERT DATE FOR GLOBAL SAVE
 D NOW^%DTC
 S Y=%
 X ^DD("DD")
 S X=$P(Y,"@"),Y=$P(Y,"@",2),ACGX=$P($P(X,",")," ",2)_"-"_$P(X," ")_"-"_$E($P(X,",",2),3,4),ACGY=" "_$S($P(Y,":")<13:+$P(Y,":"),1:$P(Y,":")-12)_":"_$P(Y,":",2)_" "_$S($P(Y,":")<13:"AM",1:"PM"),ACGX=ACGY_"  "_ACGX
 Q