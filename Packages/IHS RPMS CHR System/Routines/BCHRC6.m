BCHRC6 ; IHS/TUCSON/LAB - CHRIS II Report 2 ;  [ 06/05/99  8:44 PM ]
 ;;1.0;IHS RPMS CHR SYSTEM;**7**;OCT 28, 1996
 ;IHS/CMI/LAB - tmp to xtmp
 ;
 I '$G(DUZ(2)) W $C(7),$C(7),!!,"SITE NOT SET IN DUZ(2) - NOTIFY SITE MANAGER!!",!! Q
 S BCHJOB=$J,BCHBTH=$H
 D INFORM
GETDATES ;
BD ;get beginning date
 W ! S DIR(0)="D^:DT:EP",DIR("A")="Enter BEGINNING Date of Service for Report" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G XIT
 S BCHBD=Y
ED ;get ending date
 W ! S DIR(0)="D^"_BCHBD_":DT:EP",DIR("A")="Enter ENDING Date of Service for Report" S Y=BCHBD D DD^%DT S DIR("B")=Y,Y="" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G BD
 S BCHED=Y
 S X1=BCHBD,X2=-1 D C^%DTC S BCHSD=X
 ;
PROG ;
 S BCHPRG=""
 S DIR(0)="Y",DIR("A")="Include data from ALL CHR Programs",DIR("?")="If you wish to include visits from ALL programs answer Yes.  If you wish to tabulate for only one program enter NO." D ^DIR K DIR
 G:$D(DIRUT) BD
 I Y=1 S BCHPRG="" G ZIS
PROG1 ;enter program
 K X,DIC,DA,DD,DR,Y S DIC("A")="Which CHR Program: ",DIC="^BCHTPROG(",DIC(0)="AEMQ" D ^DIC K DIC,DA G:Y<0 PROG
 S BCHPRG=+Y
ZIS ;CALL TO XBDBQUE
 S XBRP="^BCHRC6P",XBRC="PROC^BCHRC6",XBRX="XIT^BCHRC6",XBNS="BCH"
 D ^XBDBQUE
 D XIT
 Q
ERR W $C(7),$C(7),!,"Must be a valid date and be Today or earlier. Time not allowed!" Q
XIT ;
 F X=1:1:10 S V="V"_X K @V
 K V,BCHSD,BCHBD,BCHBDD,BCHED,BCHEDD,BCHODAT,BCHR,BCHR0,X,P,S,N,BCHQUIT,BCHBTH,BCHDT,BCHNAME,BCHPRG,BCHX
 K X,Y
 Q
 ;
INFORM ;
 W:$D(IOF) @IOF
 W !?20,"**********  CHR REPORT NO. 6  **********"
 W !!?33,"PROVIDER DATA",!!,"You must enter the time frame and the program for which the report",!,"will be run.",!!
 W "THIS REPORT REQUIRES A PRINTER THAT IS CAPABLE OF PRINTING 132 COLUMN OUTPUT.",!,"SEE YOUR SITE MANAGER IF YOU NEED ASSISTANCE FINDING SUCH A PRINTER.",!!
 Q
 ;
 ;
PROC ;EP - PROCESS REFERRAL REPORT
 D XTMP^BCHUTIL("BCHRC6","CHR CHRIS II REPORT")
 S (BCHBT,BCHBTH)=$H,BCHJOB=$J
 S ^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL")=0
 D D,EOJ
 Q
 ;
EOJ ;
 S BCHET=$H
 Q
D ; Run by date of service
 S X1=BCHBD,X2=-1 D C^%DTC S BCHSD=X
 S BCHODAT=BCHSD_".9999" F  S BCHODAT=$O(^BCHR("B",BCHODAT)) Q:BCHODAT=""!((BCHODAT\1)>BCHED)  D D1
 Q
 ;
D1 ;
 S (BCHR,BCHRCNT)=0 F  S BCHR=$O(^BCHR("B",BCHODAT,BCHR)) Q:BCHR'=+BCHR  I $D(^BCHR(BCHR,0)),$P(^(0),U,2)]"",$P(^(0),U,3)]"" S BCHR0=^(0) D PROCESS
 Q
PROCESS ;
 S BCHPROG=$P(BCHR0,U,2)
 I BCHPRG,BCHPRG'=BCHPROG Q
 S C=$P(BCHR0,U,3),BCHNAME=$P(^VA(200,C,0),U)
 I '$D(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME)) S ^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME)=0
 S X=0 F  S X=$O(^BCHRPROB("AD",BCHR,X)) Q:X'=+X  D
 .S S=$P(^BCHRPROB(X,0),U,4) Q:S=""
 .I $P(^BCHTSERV(S,0),U,3)="LT" D
 ..S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,3)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,3)+$P(^BCHRPROB(X,0),U,5)
 ..S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,3)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,3)+$P(^BCHRPROB(X,0),U,5)
 .E  S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U)+$P(^BCHRPROB(X,0),U,5) D
 ..S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U)+$P(^BCHRPROB(X,0),U,5)
 .S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,4)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,4)+$P(^BCHRPROB(X,0),U,5)
 .S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,4)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,4)+$P(^BCHRPROB(X,0),U,5)
 .Q
 S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,2)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,2)+$P(BCHR0,U,11)
 S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,4)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,4)+$P(BCHR0,U,11)
 S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,4)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,4)+$P(BCHR0,U,11)
 S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,2)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,2)+$P(BCHR0,U,11)
 S N=$P(BCHR0,U,12),P=$S('N:5,N=1:6,1:7)
 S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,P)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,P)+1,$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,P)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,P)+1
 I N>1 S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,10)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,10)+N,$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,10)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,10)+N
 S $P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,9)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"PROVIDER",BCHNAME),U,9)+N,$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,9)=$P(^XTMP("BCHRC6",BCHJOB,BCHBT,"TOTAL"),U,9)+N
 Q
