GMRADSP2 ;HIRMFO/RM,WAA-PRINT PATIENT A/AR ;09-Dec-2010 15:56;DU
 ;;4.0;Adverse Reaction Tracking;**21,1002**;Mar 29, 1996;Build 32
 ;IHS/MSC/MGH Data added for source
EN1 ; ENTRY TO PRINT DATA FOR A SINGLE RECORD DENOTED BY GMRAPA
 S GMRAOUT=0
 S GMRAPA(0)=$S($D(^GMR(120.8,GMRAPA,0)):^(0),1:"")
 S GMRAPA(9999999.11)=$S($D(^GMR(120.8,GMRAPA,9999999.11)):^(9999999.11),1:"")
 S DFN=$P(GMRAPA(0),"^") D DEM^VADPT S GMRANAM=VADM(1) D KVAR^VADPT K VA
 S GMRADRUG=$S($P(GMRAPA(0),U,20)["D":1,1:0)
 S GMRAERR=$S($D(^GMR(120.8,GMRAPA,"ER")):+^("ER"),1:0) S:'$D(GMRAPG) GMRAPG=0
 D:$Y+3>IOSL EOP^GMRADSP3 G:GMRAOUT EXIT
 ;D:'GMRAPG HDR^GMRADSP3
 I 'GMRAPRNT S GMRASP(1)=7,GMRAHDR(1)="PATIENT: ",GMRALIN(1)=$E(GMRANAM,1,23),GMRASP(2)=41,GMRAHDR(2)="CAUSATIVE AGENT: ",GMRALIN(2)=$E($P(GMRAPA(0),"^",2),1,21) D WRITE^GMRADSP3 G:GMRAOUT EXIT ;21
 I GMRAPRNT S GMRASP(1)=9,GMRAHDR(1)="AGENT: ",GMRALIN(1)=$E($P(GMRAPA(0),"^",2),1,23),GMRASP(2)="" D WRITE^GMRADSP3 G:GMRAOUT EXIT
 G:'GMRADRUG ORIG S (GMRADI,GMRADC)=0,GMRAFT=1
DICL ;
 S:GMRADI'="" GMRADI=$O(^GMR(120.8,GMRAPA,2,GMRADI)) S:GMRADC'="" GMRADC=$O(^GMR(120.8,GMRAPA,3,GMRADC)) G:GMRADI'>0&(GMRADC'>0)&'GMRAFT ORIG
 S GMRASP(1)=$S(GMRAFT:3,'GMRADI:"",1:16),GMRAHDR(1)=$S(GMRAFT:"INGREDIENTS: ",1:""),X=$S($D(^GMR(120.8,GMRAPA,2,+GMRADI,0)):^(0),1:""),GMRALIN(1)=$E($S($D(^PS(50.416,+X,0)):$P(^(0),"^"),1:""),1,23)
 S GMRASP(2)=$S(GMRAFT:41,'GMRADC:"",1:58),GMRAHDR(2)=$S(GMRAFT:"VA DRUG CLASSES: ",1:""),X=$S($D(^GMR(120.8,GMRAPA,3,+GMRADC,0)):^(0),1:""),GMRALIN(2)=$E($S($D(^PS(50.605,+X,0)):$P(^(0),"^",2),1:""),1,21)
 D WRITE^GMRADSP3 G:GMRAOUT EXIT S GMRAFT=0 G DICL
ORIG ;
 S GMRAREA=0,GMRATRT=0
 S (GMRASP(1),GMRASP(2))="" D WRITE^GMRADSP3 G:GMRAOUT EXIT
 I $P($G(^GMR(120.8,GMRAPA,9999999.11)),U,1)'="" D
 .S GMRASP(1)=6,GMRAHDR(1)="SOURCE OF INFORMATION: ",GMRALIN(1)=$$GET1^DIQ(120.8,GMRAPA,9999999.11)
 .D WRITE^GMRADSP3 G:GMRAOUT EXIT
 S Y=$P(GMRAPA(0),"^",4) S:Y Y=$$FMTE^XLFDT(Y) S GMRASP(1)=4,GMRAHDR(1)="ORIGINATOR: ",GMRALIN(1)=$$GET1^DIQ(200,$P(GMRAPA(0),U,5)_",",".01") ;21
 S GMRASP(2)=46,GMRAHDR(2)="ORIGINATED: ",GMRALIN(2)=Y D WRITE^GMRADSP3 G:GMRAOUT EXIT
 S GMRASP(1)=6,GMRAHDR(1)="SIGN OFF: ",GMRALIN(1)=$S($P(GMRAPA(0),"^",12)=1:"YES",1:"NO"),GMRASP(2)=48,GMRAHDR(2)="OBS/HIST: ",GMRALIN(2)=$S($P(GMRAPA(0),"^",6)="o":"OBSERVED",$P(GMRAPA(0),"^",6)="h":"HISTORICAL",1:"")
 D WRITE^GMRADSP3 G:GMRAOUT EXIT
 ;Printout the SNOMED event IHS/MSC/MGH
 S GMRSNO=$P(GMRAPA(9999999.11),"^",2)
 I +GMRSNO D
 .S SNOTXT=$P($G(^BEHOAR(90460.06,GMRSNO,0)),U,1),SNOCODE=$P($G(^BEHOAR(90460.06,GMRSNO,0)),U,2)
 .S GMRASP(1)=6,GMRAHDR(1)="EVENT: ",GMRALIN(1)=SNOTXT
 .S GNRASP(2)=46,GMRAHDR(2)="CODE: ",GMRALIN(2)=SNOCODE D WRITE^GMRADSP3
 .G:GMRAOUT EXIT
 I $D(^GMR(120.85,"C",GMRAPA)) D  ;21
 .S (GMRASP(1),GMRASP(2))="" ;21
 .N GMRAI,SEVER S (GMRAI,SEVER)=0 F  S GMRAI=$O(^GMR(120.85,"C",GMRAPA,GMRAI)) Q:'+GMRAI  S:+$P(^GMR(120.85,GMRAI,0),U,14)>SEVER SEVER=$P(^(0),U,14) ;21
 .I $G(SEVER) S GMRASP(1)=6,GMRAHDR(1)="SEVERITY: ",GMRALIN(1)=$S(SEVER=1:"MILD",SEVER=2:"MODERATE",1:"SEVERE") ;21
 .S GMRASP(2)=49,GMRAHDR(2)="OBS D/T: ",GMRALIN(2)=$$FMTE^XLFDT($P(^GMR(120.85,$O(^GMR(120.85,"C",GMRAPA,0)),0),U)) ;21
 .D WRITE^GMRADSP3 G:GMRAOUT EXIT ;21
 .Q  ;21
 I ($Y+4)>IOSL D EOP^GMRADSP3 G:GMRAOUT EXIT
 D DISP1^GMRAPEM1(GMRAPA,"O",.GMRAOUT) G:GMRAOUT EXIT
 S (GMRASP(1),GMRASP(2))="" D WRITE^GMRADSP3 G:GMRAOUT EXIT
 S GMRASP(1)=0,GMRAHDR(1)="ID BAND MARKED: ",Y="",Y=$O(^GMR(120.8,GMRAPA,14,"A",Y)),Y=9999999-Y S:Y'=9999999 Y=$$FMTE^XLFDT(Y) S:Y=9999999 Y="" ;21
 S GMRASP(2)=44,GMRALIN(1)=Y,GMRAHDR(2)="CHART MARKED: ",Y="",Y=$O(^GMR(120.8,GMRAPA,13,"A",Y)),Y=9999999-Y S:Y'=9999999 Y=$$FMTE^XLFDT(Y) S:Y=9999999 Y="" S GMRALIN(2)=Y ;21
 D WRITE^GMRADSP3 G:GMRAOUT EXIT
 I $D(GMRAIN)>0 D
 .S (GMRASP(1),GMRASP(2))="" D WRITE^GMRADSP3 G:GMRAOUT EXIT
 .N X,X2,X3,X4,X5,Z,IIEN
 .S Z=9999999 S Z=$O(^GMR(120.8,GMRAPA,9999999.12,Z),-1) I +Z D
 ..S IIEN=Z_","_GMRAPA_","
 ..S X=$$GET1^DIQ(120.899999912,IIEN,.01),X2=$$GET1^DIQ(120.899999912,IIEN,1),X3=$$GET1^DIQ(120.899999912,IIEN,2)
 ..S X4=$$GET1^DIQ(120.899999912,IIEN,3),X5=$$GET1^DIQ(120.899999912,IIEN,4)
 ..S GMRASP(1)=0,GMRAHDR(1)="INACTIVE: ",GMRALIN(1)=X
 ..D WRITE^GMRADSP3 G:GMRAOUT EXIT
 ..S GMRASP(1)=6,GMRAHDR(1)="REASON: ",GMRALIN(1)=X2
 ..S GMRASP(2)=40,GMRAHDR(2)="BY: ",GMRALIN(2)=X3
 ..D WRITE^GMRADSP3 G:GMRAOUT EXIT
 ..I X4'="" D
 ...S GMRASP(1)=0,GMRAHDR(1)="REACTIVATION: ",GMRALIN(1)=X4
 ...S GMRASP(2)=30,GMRAHDR(2)="BY: ",GMRALIN(2)=X5
 ...D WRITE^GMRADSP3 G:GMRAOUT EXIT
 G RESET
LINEOUT ;
 S GMRASP(1)=$S(GMRAFT:6,1:16),GMRAHDR(1)=$S(GMRAFT:"COMMENTS: ",1:""),GMRALIN(1)=$S($D(^UTILITY($J,"W",15,+GMRAX,0)):^(0),1:""),GMRASP(2)="" D WRITE^GMRADSP3 G:GMRAOUT EXIT S GMRAFT=0
 Q
RESET ;
 D ^GMRADSP3
EXIT K DIWF,DIWL,DIWR,GMRA,GMRADC,GMRADI,GMRSNO,GMRAHDR,GMRALIN,GMRASP,GMRAFT,GMRAREA,GMRATRT,GMRAX,SNOTXT,SNOCODE
 Q