ABMEF19 ; IHS/ASDST/DMJ - Electronic HCFA-1500 V2.0 Envoy Version ;     
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;
 ; IHS/ASDS/DMJ - 03/01/01 - V2.4 P5 - NOIS HQW-0301-100010
 ;    New routine to address new Envoy electronic format 
 ;
 ; IHS/ASDS/DMJ - 04/04/01 - V2.4 P5 - NOIS-HQW-0401-100014
 ;    Changed it so "!" is done as $C(13,10).  There was a problem
 ;    because "!" is interpreted different than $C(13,10).
 ;
 ; IHS/FCS/DRS - 09/17/2001 - ABM*2.4*9
 ;   Part 2b $$ENVOY, $$ENVOY15 calls
 ;
START ;
 ;START HERE
 I '$D(ABMP("INS")) D
 .S ABMP("INS")=$P(^ABMDTXST(DUZ(2),ABMP("XMIT"),0),"^",4)
 .I 'ABMP("INS") D
 ..S DIC="^AUTNINS("
 ..S DIC(0)="AEMQ"
 ..D ^DIC
 ..Q:Y<0
 ..S ABMP("INS")=+Y
 .S ABMP("ITYPE")=$P($G(^AUTNINS(ABMP("INS"),2)),U)
 I 'ABMP("INS") D  Q
 .W !!,*7,"Insurer NOT identified.",!
 S ABMP("FTYPE")=$P($G(^ABMDPARM(DUZ(2),1,3)),"^",4)
 S:ABMP("FTYPE")="" ABMP("FTYPE")="H"
 D OPEN
 I $G(POP) W !,"File could not be created/opened.",! Q
 S DIE="^ABMDTXST(DUZ(2),"
 S DA=ABMP("XMIT")
 S DR=".14///"_ABMFN
 D ^DIE
 D LOOP
 D END
 Q
 ;
LOOP ;loop through bills
 S ABMP("L#")=0
 S ABMEF("BATCH#")=0
 S ABMP("MP")=1
 S ABMP("WRITE")=1
 K ABMR,ABMRT
 S ABMOPRV=0
 S ABMAPRV=0
 F  S ABMAPRV=$O(^ABMDTXST(DUZ(2),ABMP("XMIT"),2,"APROV",ABMAPRV)) Q:'ABMAPRV  D
 .S ABMTXIEN=0 F  S ABMTXIEN=$O(^ABMDTXST(DUZ(2),ABMP("XMIT"),2,"APROV",ABMAPRV,ABMTXIEN)) Q:'ABMTXIEN  D CLAIM
 Q
CLAIM ;one claim
 S ABMP("BDFN")=+^ABMDTXST(DUZ(2),ABMP("XMIT"),2,ABMTXIEN,0)
 Q:'$D(^ABMDBILL(DUZ(2),ABMP("BDFN"),0))
 Q:$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),0),"^",4)="X"
 S ABMBIL0=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0))
 S ABMP("LDFN")=$P(ABMBIL0,"^",3)
 S ABMP("VTYP")=$P(ABMBIL0,"^",7)
 I 'ABMOPRV D
 .D ^ABMEAA0
 .U 0 W !,"Submission # ",ABMR(1,50),!
 .U 0 W !,"Writing bills to file.",!
 .S ABMEF("LINE")=ABMREC(1)
 .D WRITE
 I ABMAPRV'=ABMOPRV D BATCH
 W "."
 K ABMR
 D ^ABMEH20
 S ABMEF("LINE")=ABMREC(20)
 D WRITE
 K ABMR
 D ^ABMEH30
 F I=1:1:3 D
 .I $D(ABMREC(30,I)) D
 ..S ABMEF("LINE")=ABMREC(30,I)
 ..D WRITE
 .I $D(ABMREC(31,I)) D
 ..S ABMEF("LINE")=ABMREC(31,I)
 ..D WRITE
 .I $D(ABMREC(32,I)) D
 ..S ABMEF("LINE")=ABMREC(32,I)
 ..D WRITE
 K ABMR
 D ^ABMEH40
 S ABMEF("LINE")=ABMREC(40)
 D WRITE
 K ABMR
 D ^ABMEH61
 K ABMR
 D ^ABMEH90
 S ABMEF("LINE")=ABMREC(90)
 D WRITE
 S DIE="^ABMDBILL(DUZ(2),"
 S DA=ABMP("BDFN")
 S DR=".04////B;.16////A;.17////"_ABMP("XMIT")
 D ^DIE
 Q
BATCH ;new batch
 S ABMEF("BATCH#")=ABMEF("BATCH#")+1
 I ABMOPRV D
 .D ^ABMEH95
 .S ABMEF("LINE")=ABMREC(95)
 .D WRITE
 D ^ABMEBA0
 S ABMEF("LINE")=ABMREC(10)
 D WRITE
 D ^ABMEH15
 S ABMEF("LINE")=ABMREC(15)
 D WRITE
 S ABMOPRV=ABMAPRV
 Q
END ;end of file
 K ABMR
 D ^ABMEH95
 S ABMEF("LINE")=ABMREC(95)
 D WRITE
 K ABMR
 D ^ABMEH99
 S ABMEF("LINE")=ABMREC(99)
 D WRITE
 D CLOSE
 W !!,"Finished.",!!
 K ABME,ABM,ABMEF,ABMREC,ABMR,ABMRV,ABMFN,ABMLF,ABMLNUM,ABMPATH
 Q
 ;
OPEN ;
 ; OPEN FILE
 I ABMP("FTYPE")="K" D
 .S POP=0
 .S DIC="^DIZ(8980,"
 .S DIC(0)="AEMQL"
 .S DIC("S")="I $P(^(0),""^"",5)=DUZ"
 .D ^DIC
 .K DIC
 .I Y<0 S POP=1 Q
 .S ABMP("FILE#")=+Y
 .S ABMFN=$P(Y,"^",2)
 .I $O(^DIZ(8980,ABMP("FILE#"),2,0)) D
 ..W !,*7,"Data already exists in this file!",!
 ..S DIR("A")="Delete"
 ..S DIR(0)="Y"
 ..S DIR("B")="NO"
 ..D ^DIR
 ..K DIR
 ..I Y=1 K ^DIZ(8980,ABMP("FILE#"),2)
 ..I Y=0 S POP=1
 I ABMP("FTYPE")="H" D
 .S DIR(0)="9002274.5,.52"
 .S DIR("A")="Enter Path"
 .S DIR("B")=$P($G(^ABMDPARM(DUZ(2),1,5)),"^",2)
 .D ^DIR K DIR
 .I Y["^" S POP=1 Q
 .S ABMPATH=Y
 . S ABMRCID=$P(^AUTNINS(ABMP("INS"),0),"^",8)
 .I $L(ABMRCID)<5 D
 ..S ABMRCID=$E("00000",1,5-$L(ABMRCID))_ABMRCID
 .S ABMJDT=$$JDT^XBFUNC(DT)
 .S ABMLF=$G(^ABMNINS("ALF",ABMP("INS")))
 .S:$P(ABMLF,".",2)'=ABMJDT ABMLF=""
 .S ABMLNUM=+$E($P(ABMLF,".",1),7,8)
 .S ABMLNUM=ABMLNUM+1
 .I ABMLNUM<10 S ABMLNUM="0"_ABMLNUM
 .S ABMFN="H"_ABMRCID_ABMLNUM_"."_ABMJDT
 .S DIR(0)="F",DIR("A")="Enter File Name: ",DIR("B")=ABMFN
 .D ^DIR K DIR
 .I Y["^" S POP=1 Q
 .S ABMFN=Y
 .D OPEN^%ZISH("EMCFILE",ABMPATH,ABMFN,"W")
 .S:'POP ^ABMNINS("ALF",ABMP("INS"))=ABMFN
 I ABMP("FTYPE")="M" D
 .S ABMP("DOMAIN")=$P($G(^ABMDPARM(DUZ(2),1,3)),"^",9)
 .I 'ABMP("DOMAIN") W !,"MM SEND TO DOMAIN NOT DEFINED.",! S POP=1 Q
 .S ABMP("DOMAIN")=$P(^DIC(4.2,ABMP("DOMAIN"),0),U)
 .S XMSUB="EMC FILE FROM "_$P($G(^AUTTLOC(DUZ(2),0)),"^",2)
 .S XMDUZ=DUZ
 .D XMZ^XMA2
 .I XMZ<1 S POP=1 Q
 .S ABMFN="MAIL MSG# "_XMZ
 .W !!,"MAIL MSG# ",XMZ," CREATED.",!
 Q
 ;
WRITE ;EP - write record to file
 Q:'$G(ABMP("WRITE"))
 I ABMP("FTYPE")="K" D
 .S ABMP("L#")=ABMP("L#")+1
 .S ^DIZ(8980,ABMP("FILE#"),2,ABMP("L#"),0)=ABMEF("LINE")
 I ABMP("FTYPE")="H" D
 .U IO
 .W ABMEF("LINE"),$C(13,10)
 .U IO(0)
 I ABMP("FTYPE")="M" D
 .S ABMP("L#")=ABMP("L#")+1
 .S ^XMB(3.9,XMZ,2,ABMP("L#"),0)=ABMEF("LINE")
 Q
 ;
CLOSE ;
 ;CLOSE FILE
 I ABMP("FTYPE")="H" D ^%ZISC
 I ABMP("FTYPE")="K" S ^DIZ(8980,ABMP("FILE#"),2,0)="^^"_I_"^"_I_"^"_DT
 I ABMP("FTYPE")="M" D
 .S ^XMB(3.9,XMZ,2,0)="^3.92A^"_ABMP("L#")_"^"_ABMP("L#")_"^"_DT
 .S XMY(".5@"_ABMP("DOMAIN"))=""
 .D ENT1^XMD
 Q
 ; Patch 9 Part 2b  new  08/xx/2001  IHS/FCS/DRS
FMTNAME() Q $$GET1^DIQ(9002274.6,ABMP("XMIT")_",","EXPORT MODE")
 ; begin ABM*2.4*9 Part 2b
ENVOY15() ; EP - Is this the Envoy 1500 format? ; ABM*2.4*9 IHS/FCS/DRS 09/21/01 ;
 ; A call to this is needed when making changes to code used by
 ; other formats, such as ABMEH20
 N X S X=$$FMTNAME
 Q X["15"&(X["ENVOY")
ENVOY() ; EP - Is the an Envoy format? ; ABM*2.4*9 IHS/FCS/DRS 09/21/01 ;
 ; A call to this is needed when making changes to code used by
 ; other formats, such as ABMEH61
 Q $$FMTNAME["ENVOY"
