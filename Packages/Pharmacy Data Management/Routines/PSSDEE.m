PSSDEE ;BIR/WRT-MASTER DRUG ENTER/EDIT ROUTINE ;10-Apr-2014 17:16;DU
 ;;1.0;PHARMACY DATA MANAGEMENT;**3,5,15,16,20,22,28,32,34,33,38,57,47,68,61,1013,82,90,110,1015,1016,1017**;9/30/97;Build 40
 ;
 ;Reference to ^PS(59 supported by DBIA #1976
 ;Reference to REACT1^PSNOUT supported by DBIA #2080
 ;Reference to $$UP^XLFSTR(X) supported by DBIA #10104
 ;Reference to $$PSJDF^PSNAPIS(P1,P3) supported by DBIA #2531
 ;
 ; Modified - IHS/MSC/MGH - 02/08/2012 - Line DONE+1
 ;            IHS/MSC/WPB - 03/20/2012 - Line ASK+3, CHOOSE+7, CHECK+12,BRANCH+2,COMPD
 ;            IHS/MSC/PB  - 10/02/2012 - Line tag COMPND changed to also mark the drug as compounded
 ;            IHS/MSC/MGH - 10/24/2012 - Line tag VANDC added
 ;            IHS/MSC/MGH - 08/05/2013 - Line tag RXNORM added
 ;                                       Line ONE+2
BEGIN S PSSFLAG=0 D ^PSSDEE2 S PSSZ=1 F PSSXX=1:1 K DA D ASK Q:PSSFLAG
DONE D ^PSSDEE2 K PSSFLAG Q
 ;IHS/MSC/MGH changed for mixed case lookup, uses new cross-reference
ASK ;FIND DRUG
 ;W ! S DIC="^PSDRUG(",DIC(0)="QEALMNTV",DLAYGO=50,DIC("T")="" D ^DIC K DIC I Y<0 S PSSFLAG=1 Q
 W ! S DIC="^PSDRUG(",DIC(0)="QEALMNTV",D="BCAP",DLAYGO=50,DIC("T")="" D IX^DIC K DIC,D I Y<0 S PSSFLAG=1 Q
 ;IHS/MSC/WPB changed to include a flag (FLG8) to designate adding or editing for a compounded product 3/8/2012
 ;S (FLG1,FLG2,FLG3,FLG4,FLG5,FLG6,FLG7,FLAG,FLGKY,FLGOI)=0 K ^TMP($J,"ADD"),^TMP($J,"SOL")
 S (FLG1,FLG2,FLG3,FLG4,FLG5,FLG6,FLG7,FLG8,FLAG,FLGKY,FLGOI)=0 K ^TMP($J,"ADD"),^TMP($J,"SOL")
 S DA=+Y,DISPDRG=DA L +^PSDRUG(DISPDRG):0 I '$T W !,$C(7),"Another person is editing this one." Q
 S PSSHUIDG=1,PSSNEW=$P(Y,"^",3) D USE,NOPE,COMMON,DEA,MF K PSSHUIDG
 ; if any outpatient site has a dispense machine running HL7 V.2.4, then
 ; run the new routine and create message
 N XX,DNSNAM,DNSPORT,DVER,DMFU S XX=""
 F XX=0:0 S XX=$O(^PS(59,XX)) Q:'XX  D
 .S DVER=$$GET1^DIQ(59,XX_",",105,"I"),DMFU=$$GET1^DIQ(59,XX_",",105.2)
 .S DNSNAM=$$GET1^DIQ(59,XX_",",2006),DNSPORT=$$GET1^DIQ(59,XX_",",2007)
 .D:DVER="2.4"&(DNSNAM'="")&(DMFU="YES") DRG^PSSDGUPD(DISPDRG,PSSNEW,DNSNAM,DNSPORT)
 D DRG^PSSHUIDG(DISPDRG,PSSNEW) L -^PSDRUG(DISPDRG) K FLG3,PSSNEW
 Q
COMMON S DIE="^PSDRUG(",DR="[PSSCOMMON]" D ^DIE Q:$D(Y)!($D(DTOUT))  W:'$D(Y) !,"PRICE PER DISPENSE UNIT: " S:'$D(^PSDRUG(DA,660)) $P(^PSDRUG(DA,660),"^",6)="" W:'$D(Y) $P(^PSDRUG(DA,660),"^",6)
 D DEA,CK,ASKND,OIKILL^PSSDEE1,COMMON1
 Q
COMMON1 W !,"Just a reminder...you are editing ",$P(^PSDRUG(DISPDRG,0),"^"),"." S (PSSVVDA,DA)=DISPDRG D DOSN^PSSDOS S DA=PSSVVDA K PSSVVDA D USE,APP,ORDITM^PSSDEE1
 Q
CK D DSPY^PSSDEE1 S FLGNDF=0
 Q
ASKND S %=-1 I $D(^XUSEC("PSNMGR",DUZ)) D MESSAGE^PSSDEE1 W !!,"Do you wish to match/rematch to NATIONAL DRUG file" S %=1 S:FLGMTH=1 %=2 D YN^DICN
 I %=0 W !,"If you answer ""yes"", you will attempt to match to NDF." G ASKND
 I %=2 K X,Y Q
 I %<0 K X,Y Q
 I %=1 D RSET^PSSDEE1,EN1^PSSUTIL(DISPDRG,1) S X="PSNOUT" X ^%ZOSF("TEST") I  D REACT1^PSNOUT S DA=DISPDRG I $D(^PSDRUG(DA,"ND")),$P(^PSDRUG(DA,"ND"),"^",2)]"" D ONE
 Q
ONE S PSNP=$G(^PSDRUG(DA,"I")) I PSNP,PSNP<DT Q
 W !,"You have just VERIFIED this match and MERGED the entry." D CKDF D EN2^PSSUTIL(DISPDRG,1) S:'$D(OLDDF) OLDDF="" I OLDDF'=NEWDF S FLGNDF=1 D WR
 ;IHS/MSC/MGH Patch 1017
 D SQUERY^APSPRCUI(DA)
 Q
CKDF S NWND=^PSDRUG(DA,"ND"),NWPC1=$P(NWND,"^",1),NWPC3=$P(NWND,"^",3),DA=NWPC1,K=NWPC3 S X=$$PSJDF^PSNAPIS(DA,K) S NEWDF=$P(X,"^",2),DA=DISPDRG
 N PSSK D PKIND^PSSDDUT2
 Q
NOPE S ZAPFLG=0 I '$D(^PSDRUG(DA,"ND")),$D(^PSDRUG(DA,2)),$P(^PSDRUG(DA,2),"^",1)']"" D DFNULL
 I '$D(^PSDRUG(DA,"ND")),'$D(^PSDRUG(DA,2)) D DFNULL
 I $D(^PSDRUG(DA,"ND")),$P(^PSDRUG(DA,"ND"),"^",2)']"",$D(^PSDRUG(DA,2)),$P(^PSDRUG(DA,2),"^",1)']"" D DFNULL
 Q
DFNULL S OLDDF="",ZAPFLG=1
 Q
ZAPIT I $D(ZAPFLG),ZAPFLG=1,FLGNDF=1,OLDDF'=NEWDF D CKIV^PSSDEE1
 Q
APP W !!,"MARK THIS DRUG AND EDIT IT FOR: " D CHOOSE
 Q
CHOOSE I $D(^XUSEC("PSORPH",DUZ))!($D(^XUSEC("PSXCMOPMGR",DUZ))) W !,"O  - Outpatient" S FLG1=1
 I $D(^XUSEC("PSJU MGR",DUZ)) W !,"U  - Unit Dose" S FLG2=1
 I $D(^XUSEC("PSJI MGR",DUZ)) W !,"I  - IV" S FLG3=1
 I $D(^XUSEC("PSGWMGR",DUZ)) W !,"W  - Ward Stock" S FLG4=1
 I $D(^XUSEC("PSAMGR",DUZ))!($D(^XUSEC("PSA ORDERS",DUZ))) W !,"D  - Drug Accountability" S FLG5=1
 I $D(^XUSEC("PSDMGR",DUZ)) W !,"C  - Controlled Substances" S FLG6=1
 I $D(^XUSEC("PSORPH",DUZ)) W !,"X  - Non-VA Med" S FLG7=1
 ;IHS/MSC/WPB changed to include a flag (FLG8) to designate adding or editing for a compounded product 3/8/2012
 S FLG8=1 W !,"Z  - Compounding"
 I FLG1,FLG2,FLG3,FLG4,FLG5,FLG6,FLG8 S FLAG=1
 I FLAG W !,"A  - ALL"
 W !
 I 'FLG1,'FLG2,'FLG3,'FLG4,'FLG5,'FLG6,'FLG7 W !,"You do not have the proper keys to continue. Sorry, this concludes your editing session.",! S FLGKY=1 K DIRUT,X Q
 I FLGKY'=1 D
 . K DIR S DIR(0)="FO^1:30"
 . S DIR("A")="Enter your choice(s) separated by commas "
 . F  D ^DIR Q:$$CHECK($$UP^XLFSTR(X))
 . S PSSANS=X,PSSANS=$$UP^XLFSTR(PSSANS) D BRANCH,BRANCH1
 Q
 ;
CHECK(X) ; Validates Application Use response
 N CHECK,I,C
 S CHECK=1 I X=""!(Y["^")!($D(DIRUT)) Q CHECK
 F I=1:1:$L(X,",") D
 . S C=$P(X,",",I) W !?43,C," - "
 . I C="O",FLG1 W "Outpatient" Q
 . I C="U",FLG2 W "Unit Dose" Q
 . I C="I",FLG3 W "IV" Q
 . I C="W",FLG4 W "Ward Stock" Q
 . I C="D",FLG5 W "Drug Accountability" Q
 . I C="C",FLG6 W "Controlled Substances" Q
 . I C="X",FLG7 W "Non-VA Med" Q
 .;IHS/MSC/WPB changed to include a flag (FLG8) to designate adding or editing for a compounded product 3/8/2012
 . I C="Z",FLG8 W "Compounding" Q
 . W "Invalid Entry",$C(7) S CHECK=0
 Q CHECK
BRANCH D:PSSANS["O" OP D:PSSANS["U" UD D:PSSANS["I" IV D:PSSANS["W" WS
 D:PSSANS["D" DACCT D:PSSANS["C" CS D:PSSANS["X" NVM
 ;IHS/MSC/WPB next line added to direct processing to mark a compounded product 3/8/2012
 D:PSSANS["Z" COMPND
 Q
BRANCH1 I FLAG,PSSANS["A" D OP,UD,IV,WS,DACCT,CS,NVM
 Q
OP I FLG1 D
 . W !,"** You are NOW editing OUTPATIENT fields. **"
 . S PSIUDA=DA,PSIUX="O^Outpatient Pharmacy" D ^PSSGIU
 . I %=1 D
 . . S DIE="^PSDRUG(",DR="[PSSOP]" D ^DIE K DIR D OPEI,ASKCMOP
 . . S X="PSOCLO1" X ^%ZOSF("TEST") I  D ASKCLOZ S FLGOI=1
 I FLG1 D CKCMOP
 Q
CKCMOP I $P($G(^PSDRUG(DISPDRG,2)),"^",3)'["O" S:$D(^PSDRUG(DISPDRG,3)) $P(^PSDRUG(DISPDRG,3),"^",1)=0 K:$D(^PSDRUG("AQ",DISPDRG)) ^PSDRUG("AQ",DISPDRG) S DA=DISPDRG D ^PSSREF
 Q
UD I FLG2 W !,"** You are NOW editing UNIT DOSE fields. **" S PSIUDA=DA,PSIUX="U^Unit Dose" D ^PSSGIU I %=1 S DIE="^PSDRUG(",DR="62.05;212.2" D ^DIE S DIE="^PSDRUG(",DR="212",DR(2,50.0212)=".01;1" D ^DIE S FLGOI=1
 Q
IV I FLG3 W !,"** You are NOW editing IV fields. **" S (PSIUDA,PSSDA)=DA,PSIUX="I^IV" D ^PSSGIU I %=1 D IV1 S FLGOI=1
 Q
IV1 K PSSIVOUT ;This variable controls the selection process loop.
 W !,"Edit Additives or Solutions: " K DIR S DIR(0)="SO^A:ADDITIVES;S:SOLUTIONS;" D ^DIR Q:$D(DIRUT)  S PSSASK=Y(0) D:PSSASK="ADDITIVES" ENA^PSSVIDRG D:PSSASK="SOLUTIONS" ENS^PSSVIDRG I '$D(PSSIVOUT) G IV1
 K PSSIVOUT
 Q
WS I FLG4 W !,"** You are NOW editing WARD STOCK fields. **" S DIE="^PSDRUG(",DR="300;301;302" D ^DIE
 Q
DACCT I FLG5 W !,"** You are NOW editing DRUG ACCOUNTABILITY fields. **" S DIE="^PSDRUG(",DR="441" D ^DIE S DIE="^PSDRUG(",DR="9",DR(2,50.1)="1;2;400;401;402;403;404;405" D ^DIE
 Q
CS I FLG6 W !,"** You are NOW Marking/Unmarking for CONTROLLED SUBS. **" S PSIUDA=DA,PSIUX="N^Controlled Substances" D ^PSSGIU
 Q
NVM I FLG7 W !,"** You are NOW Marking/Unmarking for NON-VA MEDS. **" S PSIUDA=DA,PSIUX="X^Non-VA Med" D ^PSSGIU
 Q
 ;IHS/MSC/WPB Line tag COMPND added to mark an entry as compounded and to add the compounding ingredients 3/8/2012
 ;IHS/MSC/PB - Line tag COMPND changed to call PSSGIU to mark the drug as a compounded drug 10/3/12
 ;COMPND I FLG8 W !,"** You are NOW adding ingredients to this product for compounding. **",! S PSIUDA=DA D COMPND^PSSGIU
COMPND I FLG8 W !,"** You are NOW adding ingredients to this product for compounding. **",! S (SPSIUDA,PSIUDA)=DA,PSIUX="Z^Compounded Drug" D:$P($G(^PSDRUG(5182,2)),"^",3)'["Z" ^PSSGIU S PSIUDA=SPSIUDA D COMPND^PSSGIU
 Q
ASKCMOP I $D(^XUSEC("PSXCMOPMGR",DUZ)) W !!,"Do you wish to mark to transmit to CMOP? " K DIR S DIR(0)="Y",DIR("?")="If you answer ""yes"", you will attempt to mark this drug to transmit to CMOP."
 D ^DIR I "Nn"[X K X,Y,DIRUT Q
 I "Yy"[X S PSXFL=0 D TEXT^PSSMARK H 7 N PSXUDA S (PSXUM,PSXUDA)=DA,PSXLOC=$P(^PSDRUG(DA,0),"^"),PSXGOOD=0,PSXF=0,PSXBT=0 D BLD^PSSMARK,PICK2^PSSMARK S DA=PSXUDA
 Q
ASKCLOZ W !!,"Do you wish to mark/unmark as a LAB MONITOR or CLOZAPINE DRUG? " K DIR S DIR(0)="Y",DIR("?")="If you answer ""yes"", you will have the opportunity to edit LAB MONITOR or CLOZAPINE fields."
 D ^DIR I "Nn"[X K X,Y,DIRUT Q
 I "Yy"[X S NFLAG=0 D MONCLOZ
 Q
MONCLOZ K PSSAST D FLASH W !,"Mark/Unmark for Lab Monitor or Clozapine: " K DIR S DIR(0)="S^L:LAB MONITOR;C:CLOZAPINE;" D ^DIR Q:$D(DIRUT)  S PSSAST=Y(0) D:PSSAST="LAB MONITOR" ^PSSLAB D:PSSAST="CLOZAPINE" CLOZ
 Q
FLASH K LMFLAG,CLFALG,WHICH S WHICH=$P($G(^PSDRUG(DISPDRG,"CLOZ1")),"^"),LMFLAG=0,CLFLAG=0
 I WHICH="PSOCLO1" S CLFLAG=1
 I WHICH'="PSOCLO1" S:WHICH'="" LMFLAG=1
 Q
CLOZ Q:NFLAG  Q:$D(DTOUT)  Q:$D(DIRUT)  Q:$D(DUOUT)  W !,"** You are NOW editing CLOZAPINE fields. **" D ^PSSCLDRG
 Q
USE K PACK S PACK="" S:$P($G(^PSDRUG(DISPDRG,"PSG")),"^",2)]"" PACK="W" I $D(^PSDRUG(DISPDRG,2)) S PACK=PACK_$P(^PSDRUG(DISPDRG,2),"^",3)
 I PACK'="" D
 .W $C(7) N XX W !! F XX=1:1:79 W "*"
 .W !,"This entry is marked for the following PHARMACY packages: "
 .D USE1
 Q
USE1 W:PACK["O" !," Outpatient" W:PACK["U" !," Unit Dose" W:PACK["I" !," IV"
 W:PACK["W" !," Ward Stock" W:PACK["D" !," Drug Accountability"
 W:PACK["N" !," Controlled Substances" W:PACK["X" !," Non-VA Med"
 ;IHS/MSC/PB - modified to show the drug is marked as a compounded drug 9/3/12
 W:PACK["Z" !," Compounded Drug"
 W:'$D(PACK) !," NONE"
 I PACK'["O",PACK'["U",PACK'["I",PACK'["W",PACK'["D",PACK'["N",PACK'["X" W !," NONE"
 Q
WR I ^XMB("NETNAME")'["CMOP-" W:OLDDF'="" !,"The dosage form has changed from "_OLDDF_" to "_NEWDF_" due to",!,"matching/rematching to NDF.",!,"You will need to rematch to Orderable Item.",!
 Q
PRIMDRG I $D(^PS(59.7,1,20)),$P(^PS(59.7,1,20),"^",1)=4!($P(^PS(59.7,1,20),"^",1)=4.5) I $D(^PSDRUG(DISPDRG,2)) S VAR=$P(^PSDRUG(DISPDRG,2),"^",3) I VAR["U"!(VAR["I") D PRIM1
 Q
PRIM1 W !!,"You need to match this drug to ""PRIMARY DRUG"" file as well.",! S DIE="^PSDRUG(",DR="64",DA=DISPDRG D ^DIE K VAR
 Q
MF I $P($G(^PS(59.7,1,80)),"^",2)>1 I $D(^PSDRUG(DISPDRG,2)) S PSSOR=$P(^PSDRUG(DISPDRG,2),"^",1) I PSSOR]"" D EN^PSSPOIDT(PSSOR),EN2^PSSHL1(PSSOR,"MUP")
 Q
MFA I $P($G(^PS(59.7,1,80)),"^",2)>1 S PSSOR=$P(^PS(52.6,ENTRY,0),"^",11),PSSDD=$P(^PS(52.6,ENTRY,0),"^",2) I PSSOR]"" D EN^PSSPOIDT(PSSOR),EN2^PSSHL1(PSSOR,"MUP") D MFDD
 Q
MFS I $P($G(^PS(59.7,1,80)),"^",2)>1 S PSSOR=$P(^PS(52.7,ENTRY,0),"^",11),PSSDD=$P(^PS(52.7,ENTRY,0),"^",2) I PSSOR]"" D EN^PSSPOIDT(PSSOR),EN2^PSSHL1(PSSOR,"MUP") D MFDD
 Q
MFDD I $D(^PSDRUG(PSSDD,2)) S PSSOR=$P(^PSDRUG(PSSDD,2),"^",1) I PSSOR]"" D EN^PSSPOIDT(PSSOR),EN2^PSSHL1(PSSOR,"MUP")
 Q
OPEI N PSDRUGND
 S PSDRUGND=$G(^PSDRUG(DISPDRG,"ND"))
 I PSDRUGND']"" Q
 I $P(PSDRUGND,"^",3)']"",$P(PSDRUGND,"^",10)']"" Q
 I $P(PSDRUGND,"^",10)]"" G OPEI1
 I $P($G(^PSNDF(50.68,$P(PSDRUGND,"^",3),1)),"^",2)]"" G OPEI1
 Q
OPEI1 ;
 S DIE="^PSDRUG(",DR="28",DA=DISPDRG
 D ^DIE
 Q
DEA ;
 I $P($G(^PSDRUG(DISPDRG,3)),"^")=1,($P(^PSDRUG(DISPDRG,0),"^",3)[1!($P(^(0),"^",3)[2)) D DSH
 Q
DSH W !!,"****************************************************************************"
 W !,"This entry contains a ""1"" or a ""2"" in the ""DEA, SPECIAL HDLG""",!,"field, therefore this item has been UNMARKED for CMOP transmission."
 W !,"****************************************************************************",! S $P(^PSDRUG(DISPDRG,3),"^")=0 K ^PSDRUG("AQ",DISPDRG) S DA=DISPDRG N % D ^PSSREF
 Q
 ;IHS/MSC/MGH Patch 1017 Display the RxNorm code
NORM(DA) Q $$GET1^DIQ(50,DA,9999999.27)
 ;
VANDC(DA) ;Find product NDC code
 N ND,NDC
 S NDC=""
 S ND=$G(^PSDRUG(DA,"ND"))
 I +ND,+$P(ND,"^",3),+$P($G(^PSNDF(50.68,+$P(ND,"^",3),1)),"^",7) D
 .S NDC=$P($G(^PSNDF(50.68,+$P(ND,"^",3),1)),"^",7)
 .I $L(NDC)=12 S NDC=$E(NDC,2,12)
 Q NDC
