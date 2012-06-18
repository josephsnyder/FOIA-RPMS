GMRYUT0 ;HIRMFO/YH-PATIENT I/O UTILITIES - PATIENT SEARCH AND IV DISPLAY ;2/12/91
 ;;4.0;Intake/Output;**3**;Apr 25, 1997
PATDAT ;SELECT PATIENT
 S DIC(0)="AEQMZ",DIC="^DPT(" D ^DIC K DIC S DFN=+Y I DFN'>0 S GMROUT=1 Q
PT D 1^VADPT S GMRWARD(1)=$S($D(GMRVWLO):GMRVWLO,1:$P(VAIN(4),"^",2)),GMRWARD=$P(VAIN(4),"^"),GMRVADM=$P(VAIN(7),"^",2),GMRAGE=$P(VADM(4),"^"),SSN=$P(VADM(2),"^",2),GMRDIAG=$P(VAIN(9),"^"),GMRBED=$P($P(VAIN(5),"^"),"-",1,2)
 S GMRSEX=$P(VADM(5),"^",2),GMRBTH=$P(VADM(3),"^",2),GMRNAM=$P(VADM(1),"^"),GMRHLOC=+$P(VAIN(4),"^") D KVAR^VADPT K VA I $D(^DIC(42,+GMRHLOC,44)) S GMRHLOC=+$P(^(44),"^") Q:GMRHLOC>0
 Q
HOSP S DIC("A")="Select Hospital Location: ",DIC=44,DIC(0)="AEMQ",DIC("S")="I $P(^(0),U,3)'=""Z""" D ^DIC K DIC I Y'>0 S GMROUT=1 Q
 S GMRHLOC=+Y Q
LISTIV ;LIST CURRENT IV LINES
 K GMRDATA S GMRVN=0,GN=0 F II=0:0 S GMRVN=$O(^GMR(126,DA,"IV","C",GMRVN)) Q:GMRVN'>0  D SAVEIV
 S GN(1)=GN I GN=0 W !!,"There is no IV running for this patient.",! G Q
Q K GTITR,GDATA,GMRVTYP,GMRVS Q
SAVEIV ;SAVE IV LINES IN ARRAY FOR SELECTION
 S GIV=0 F II=0:0 S GIV=$O(^GMR(126,DA,"IV","C",GMRVN,GIV)) Q:GIV'>0  I GMRDC=2!(GMRDC=0&($P($G(^GMR(126,DA,"IV",GIV,0)),"^",9)="")) S GDATA=^(0),GMRVTYP=$P(GDATA,"^",4),GMRVS=$P(GDATA,"^",2) I GMRVTYP'="",GMRVS'="" S GN=GN+1 D SET
 Q
SET S GMRDATA(GN)=9999999-GMRVN_"^"_GIV_"^"_GMRVTYP_"^"_GMRVS_"^"_$P(GDATA,"^",9)_"^"_$P(GDATA,"^",3)_"^"_$P(GDATA,"^",5)_"^"_$S($P(GDATA,"^",6)'="":"Started",1:$S($P(GDATA,"^",3)["LOCK":"Converted",1:"Added"))
 S GTITR=$P(GDATA,"^",12) I $D(^GMR(126,DA,"IV",GIV,"TITR","C")) D
 .S I=$O(^GMR(126,DA,"IV",GIV,"TITR","C",0)) I I>0 S I(1)=$O(^GMR(126,DA,"IV",GIV,"TITR","C",I,0)) S GTITR=$S($D(^GMR(126,DA,"IV",GIV,"TITR",I(1),0)):$P(^(0),"^",2),1:GTITR)
 K I S GMRDATA(GN)=GMRDATA(GN)_"^"_$S(GTITR>0:GTITR_" ml/hr",1:"")
 S GSITE=GMRVS,GSITE(GSITE)="" D FINDCA^GMRYCATH(.GSITE) S GMRDATA(GN)=GMRDATA(GN)_"^"_GSITE(GSITE)_"^"_$G(^GMR(126,DFN,"IV",GIV,3))
 Q
SETDT I '(GMRDT>GMREND) S GDA=$O(^GMR(126,DA(1),"IV",DA,"IN","B",GMRDT,0)) S GN=GN+1,GMRDATA(GN)=GMRDT_"^"_GDA_"^"_GIN(GDA)
 Q
WAIT ;
 L +^GMR(126,DFN):0 I '$T W !!,"This patient's I/O records are being updated by someone else",!,"please try this patient later",!! S GMROUT=1 Q
 Q
KILLV K GMRNO,GMRVNM,II,GMRVN,GMRDATA,GDTEND,GMRVP,GMRVS,GMRVSTP,GMRVSTR,GMRVL,GMRVTYP,GADDI,GBOTT,GSOL,GSTREN,GIV,GIVDT,GWRITE
 Q
SELIV ;LIST IV  FOR THE SELECTED IV LINE
 D IVINTK^GMRYUT8 I $D(GTOTAL) W !,?5,"Total amount absorbed: "_$S(GSTAR'="":GSTAR,1:($P(^GMR(126,DA(1),"IV",DA,0),"^",5)-GTOTAL)_" mls"),!!
 K GMRDATA S (GDCIV,GN)=0,GX="",GMRDEL="",GMRDC=1 I $D(^GMR(126,DA(1),"IV",DA,"IN",0)) S GMRDT=0 F  S GMRDT=$O(^GMR(126,DA(1),"IV",DA,"IN","B",GMRDT)) Q:GMRDT'>0  D SETDT
 S GN(1)=GN I '$D(GMRDATA) W !,?5,$C(7),"No intake records for this IV line within the last 48 hours" G DT
 I $D(GMRDATA) D SELECT^GMRYUT3 I $E(GX)="^" S DA=DFN G QIV
 D WARN I "Nn"[GX&(GX'="") S GX="" G DT
 I GX>0 S DA(2)=DA(1),DA(1)=DA,DA=+$P(GX,"^",2) G:DA'>0 QIV S GHLOC=$P($G(^GMR(126,DFN,"IV",DA(1),"IN",DA,0)),"^",5) D IV^GMRYUT8 S DA=DFN G QIV
DT S X="",GHLOC=GMRHLOC S %DT("A")="Please enter a new DATE/TIME: ",%DT="AETXRS",%DT(0)="-NOW" D ^%DT K %DT S (GX,X)=Y I Y<1 S X="" S DA=DFN G QIV
DC I '$D(^GMR(126,DA(1),"IV",DA,"IN",0)) S ^(0)="^126.313IDA^0^0"
 K DD S GSAVE=GMRVTYP,DLAYGO=126.313,X=GX,DA(2)=DA(1),DA(1)=DA,DIC="^GMR(126,"_DA(2)_",""IV"","_DA(1)_",""IN"",",DIC(0)="ML" D WAIT^GMRYUT0 D:'GMROUT FILE^DICN L:'GMROUT -^GMR(126,DFN)
 K DR,DIC,DLAYGO,DD S DA=+$G(Y),GMRVTYP=GSAVE I $G(Y)'>0 S GMROUT=1,DA=DA(1),DA(1)=DA(2) G QIV
 D IV^GMRYUT8
QIV W ! K GMRX,GHLOC,GX,GY,X,GMRDEL,GMRVOL,GMRDATA,GDATE,GMRDT,DIC,Y Q
WARN W !!,"If you modify your original remaining entry, (i.e. Amount Left),",!,"please check any other entries for possible inaccuracies",! Q
