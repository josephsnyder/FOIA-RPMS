BGPMUUTL ; IHS/MSC/MMT - Meaningful Use Reporting Utilities;02-Mar-2011 11:55;DU
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
VER() ;EP
 Q "CRS 2011, Version 11.1 Patch 1"
JRNL ;EP
 N %DT,U,ZTQUEUED
 S %=$$NOJOURN^ZIBGCHAR("BGPGPDCT"),%=$$NOJOURN^ZIBGCHAR("BGPGPDPT"),%=$$NOJOURN^ZIBGCHAR("BGPGPDBT"),%=$$NOJOURN^ZIBGCHAR("BGPHEDCT"),%=$$NOJOURN^ZIBGCHAR("BGPHEDPT"),%=$$NOJOURN^ZIBGCHAR("BGPHEDBT")
 S %=$$NOJOURN^ZIBGCHAR("BGPDATA"),%=$$NOJOURN^ZIBGCHAR("BGPGUI")
 ;S %=$$NOJOURN^ZIBGCHAR("BGPELDCT"),%=$$NOJOURN^ZIBGCHAR("BGPELDPT"),%=$$NOJOURN^ZIBGCHAR("BGPELDBT")
 ;S %=$$NOJOURN^ZIBGCHAR("BGPEOCT"),%=$$NOJOURN^ZIBGCHAR("BGPEOPT"),%=$$NOJOURN^ZIBGCHAR("BGPEOBT")
 S %=$$NOJOURN^ZIBGCHAR("BGPXPT")
 Q
PTLSORT(RETARR,INARR) ;EP - SORTS AN ARRAY OF PATIENTS TO DESIRED ORDER
 N PT,DFN,DATA,COMM,SEX,AGE,HRN,TMPARR,OCNT
 K RETARR,TMPARR
 S PT=""
 ;Move all patients into an array subscripted by sort criteria
 F  S PT=$O(@INARR@(PT)) Q:PT=""  D
 .S DATA=@INARR@(PT),DFN=$P(DATA,U,1)
 .S COMM=$$GET1^DIQ(9000001,DFN,1118) S:COMM="" COMM=" "
 .S SEX=$P(^DPT(DFN,0),U,2) S:SEX="" SEX=" "
 .S AGE=$$AGE^AUPNPAT(DFN,BGPED) S:AGE="" AGE=" "
 .S HRN=$$HRN^AUPNPAT(DFN,DUZ(2)) S:HRN="" HRN=" "
 .S TMPARR(COMM,SEX,AGE,HRN,PT)=DFN
 S OCNT=0
 S COMM="" F  S COMM=$O(TMPARR(COMM)) Q:COMM=""  D
 .S SEX="" F  S SEX=$O(TMPARR(COMM,SEX)) Q:SEX=""  D
 ..S AGE="" F  S AGE=$O(TMPARR(COMM,SEX,AGE)) Q:AGE=""  D
 ...S HRN="" F  S HRN=$O(TMPARR(COMM,SEX,AGE,HRN)) Q:HRN=""  D
 ....S PT="" F  S PT=$O(TMPARR(COMM,SEX,AGE,HRN,PT)) Q:PT=""  D
 .....;S PT=TMPARR(COMM,SEX,AGE,HRN)
 .....S OCNT=OCNT+1
 .....S RETARR(OCNT)=@INARR@(PT)
 Q
DATE(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
 ;
XTMP(N,D) ;EP
 Q:$G(N)=""
 S ^XTMP(N,0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^"_$G(D)
 Q
MAPLOAD ;EP  Enter a fle name to map to NDC codes
 N BGPPATH,BGPFN,Y,X,NDC,RXNORM
 S DIR(0)="F^1:40",DIR("A")="Enter a filename for the delimited input (no more than 40 characters)" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 S BGPPATH=Y
 S BGPFN=$P(BGPPATH,"\",-1),$P(BGPPATH,"\",-1)=""
 S Y=$$OPEN^%ZISH(BGPPATH,BGPFN,"R")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 F I=1:1 U IO R X:DTIME S X=$$STRIP(X) Q:X=""  S RXNORM=$P(X,"|",2),NDC=$P(X,"|",1),^BGPMUTMP("NDC MAP","X",RXNORM,NDC)="" Q:$$STATUS^%ZISH=-1
 D ^%ZISC
 W !!,"All done reading file",!
 Q
STRIP(Z) ;REMOVE CONTROLL CHARACTERS
 NEW I
 F I=1:1:$L(Z) I (32>$A($E(Z,I))) S Z=$E(Z,1,I-1)_""_$E(Z,I+1,999)
 Q Z
XWALK ;EP
 N BGPRXN,BGPRXNLT,BGPFND,BGPNDC,BGPNDCLT
 S DIR(0)="F",DIR("A")="Enter a comma delimited list of RxNorm codes" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 S BGPRXNLT=Y
 S BGPRXNLT=$TR(BGPRXNLT," ")
 S BGPNDCLT=""
 F I=1:1:$L(BGPRXNLT,",") D
 .S BGPRXN=$P(BGPRXNLT,",",I),BGPNDC="",BGPFND=0
 .F  S BGPNDC=$O(^BGPMUTMP("NDC MAP","X",BGPRXN,BGPNDC)) Q:BGPNDC=""  D
 ..S BGPNDCLT=BGPNDCLT_","_BGPNDC
 ..S BGPFND=1
 .W:'BGPFND !,"RxNorm code "_BGPRXN_" not found!"
 S BGPNDCLT=$E(BGPNDCLT,2,*)
 W !!,"Mapped NDC Codes:",!,BGPNDCLT
 Q
