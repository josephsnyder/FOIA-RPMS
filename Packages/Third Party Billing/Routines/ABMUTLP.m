ABMUTLP ; IHS/ASDST/DMJ - PAYER UTILITIES ;      
 ;;2.6;IHS 3P BILLING SYSTEM;**3,6,8,9,10,11,19**;NOV 12, 2009;Build 300
 ;abm*2.6*10 split into ABMUTLP2 due to routine size
 ;IHS/SD/SDR-2.6*19 -HEAT136922 -made changes for relationship code for grandchildren, nephew, niece
 ;IHS/SD/SDR-2.6*19 -HEAT168248 -Made changes to merge same SARs into one entry, not one for each A/R trans.
SET(X,ABMDUZ2) ; EP - set up standard vars
 ;x=bill ien
 ;abmduz2=duz(2)
 S:'$G(ABMDUZ2) ABMDUZ2=DUZ(2)
 K ABMCDNUM
 S ABMP("BDFN")=X
 N I
 F I=0:1:9 D
 .S @("ABMB"_I)=$G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),I))
 I $G(ABMB6) F I=2,4 D
 .I $L($P(ABMB6,"^",I))=1 D
 ..S $P(ABMB6,"^",I)="0"_$P(ABMB6,"^",I)
 S ABMP("PDFN")=$P(ABMB0,U,5)  ;Pt IEN
 S ABMP("LDFN")=$P(ABMB0,U,3)  ;Visit loc IEN
 S ABMP("BTYP")=$P(ABMB0,U,2)  ;Bill type
 S ABMP("EXP")=$P(ABMB0,U,6)   ;Exp mode IEN
 S ABMP("VTYP")=$P(ABMB0,U,7)  ;Visit type IEN
 S ABMP("INS")=$P(ABMB0,U,8)   ;Active Ins IEN
 S ABMP("CLIN")=$P(ABMB0,U,10)  ;Clinic
 S ABMP("CLIN")=$P($G(^DIC(40.7,+ABMP("CLIN"),0)),U,2)
 S ABMP("VDT")=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),7)),U)  ;Service date from
 ;S ABMP("ITYPE")=$P($G(^AUTNINS(+ABMP("INS"),2)),U)  ;Type of ins  ;abm*2.6*10 HEAT73780
 S ABMP("ITYPE")=$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+ABMP("INS"),".211","I"),1,"I")  ;Type of ins  ;abm*2.6*10 HEAT73780
 S ABMP("RTYPE")=$S(ABMP("ITYPE")="R":"1G",ABMP("ITYPE")="D":"1D",$P($G(^ABMNINS(ABMDUZ2,ABMP("INS"),1,ABMP("VTYP"),1)),U)'="":$P($G(^ABMREFID($P($G(^ABMNINS(ABMDUZ2,ABMP("INS"),1,ABMP("VTYP"),1)),U),0)),U),1:"0B")
 I ABMP("EXP")=22,ABMP("RTYPE")="1G" S ABMP("RTYPE")="1C"
 D PCN^ABMERUTL
 Q
ISET ; EP
 ;Set up Insurers
 K ABMCDNUM
 K ABMP("INS")
 S ABMP("INS")=$P(ABMB0,U,8)  ;Active Ins IEN
 S ABME("PRIO")=0
 S ABME("INS#")=0
 ;Loop down priority
 F  S ABME("PRIO")=$O(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),13,"C",ABME("PRIO"))) Q:'ABME("PRIO")!($G(ABMP("INS",3)))  D
 .N I
 .S I=0
 .F  S I=$O(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),13,"C",ABME("PRIO"),I)) Q:'I!($G(ABMP("INS",3)))  D
 ..;Quit if insurer unbillable
 ..Q:$P(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),13,I,0),U,3)="U"  S ABME("INS")=$P(^(0),U)   ;Ins IEN
 ..;S ABME("ITYPE")=$P(^AUTNINS(ABME("INS"),2),U)  ;type insurer  ;abm*2.6*10 HEAT73780
 ..S ABME("ITYPE")=$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,ABME("INS"),".211","I"),1,"I")  ;type insurer  ;abm*2.6*10 HEAT73780
 ..Q:"I"[ABME("ITYPE")  ;Quit if indian pt
 ..;Quit if non-beneficiary & not active ins
 ..Q:"N"[ABME("ITYPE")&($P(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0),U,8)'=ABME("INS"))
 ..I ABME("ITYPE")="D"!(ABME("ITYPE")="K") D
 ...S ABMCDNUM=$P(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),13,I,0),U,6)
 ...S:'$G(ABMP("PDFN")) ABMP("PDFN")=$P(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0),U,5)
 ...Q:$P($G(^AUPNMCD(+ABMCDNUM,0)),U)=ABMP("PDFN")
 ...D DBFX^ABMDEFIP(ABMP("BDFN"),I)
 ...S ABMCDNUM=$P(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),13,I,0),U,6)
 ..S ABME("INS#")=ABME("INS#")+1  ;increment cntr
 ..S ABMP("INS",ABME("INS#"))=^ABMDBILL(ABMDUZ2,ABMP("BDFN"),13,I,0)
 ..S $P(ABMP("INS",ABME("INS#")),U,2)=ABME("ITYPE")
 Q
PAYED ; EP
 ; Build Ins Pymt Array
 D PAYED^ABMUTLP2  ;abm*2.6*19 IHS/SD/SDR HEAT168248
 Q
TCR(X) ; EP
 ; Total credits for bill
 ;x=bill ien
 S ABM("TCREDITS")=0
 S I=0
 F  S I=$O(^ABMDBILL(ABMDUZ2,X,3,I)) Q:'I  D
 .F J=2,3,4 S ABM("TCREDITS")=ABM("TCREDITS")+$P(^ABMDBILL(ABMDUZ2,X,3,I,0),"^",J)
 S X=ABM("TCREDITS")
 K ABM("TCREDITS")
 Q X
MCDBFX(X,Y) ; EP
 ; Fix BILL Ins Multiple if broken ptr mcd
 ;  INPUT:X = IEN (CLAIM OR BILL)
 ;        Y = INS IEN UNDER FIELD #13 (INS MULTIPLE)
 ; OUTPUT:
 N ABMP
 S ABMP("D0")=X
 S ABMP("D1")=Y
 S ABMP("ZERO")=^ABMDBILL(ABMDUZ2,ABMP("D0"),13,ABMP("D1"),0)
 S ABMP("PDFN")=$P(^ABMDBILL(ABMDUZ2,ABMP("D0"),0),"^",5)
 S ABMP("VDT")=$P(^ABMDBILL(ABMDUZ2,ABMP("D0"),7),U)
 D MGET
 I $G(ABMP(1)) S $P(^ABMDBILL(ABMDUZ2,ABMP("D0"),13,ABMP("D1"),0),U,6)=ABMP(1),$P(^(0),U,7)=ABMP(2)
 Q
MGET ; EP
 ; Get new ptr
 S ABMP("INSCO")=$P(ABMP("ZERO"),U)
 S ABMP("PTR")=$P(ABMP("ZERO"),U,6)
 Q:ABMP("PTR")=""
 Q:$D(^AUPNMCD(ABMP("PTR"),0))
 ;Q:$P($G(^AUTNINS(ABMP("INSCO"),2)),U)'="D"  ;abm*2.6*10 HEAT73780
 Q:$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,ABMP("INSCO"),".211","I"),1,"I")'="D"  ;abm*2.6*10 HEAT73780
 D 4^ABMDLCK2
 S ABMP("PRI")=$O(ABML(0)) Q:'ABMP("PRI")
 S ABMP("INS")=$O(ABML(ABMP("PRI"),0)) Q:'ABMP("INS")
 Q:ABMP("INS")'=ABMP("INSCO")
 N I
 F I=1,2 S ABMP(I)=$P(ABML(ABMP("PRI"),ABMP("INS")),"^",I)
 Q
SBR(X,ABMDUZ2) ;PEP - subscriber
 ;x=bill IEN
 ;abmduz2=duz(2)
 S:'$G(ABMDUZ2) ABMDUZ2=DUZ(2)
 D SET(X,ABMDUZ2)
 D ISET
 K ABMPSQ,ABMSBR
 N ABMI,ABMINS
 S ABMI=0
 F  S ABMI=$O(ABMP("INS",ABMI)) Q:'ABMI  D
 .S ABMINS=ABMP("INS",ABMI)
 .I ($P(ABMINS,U)=ABMP("INS")!($P(ABMINS,U,11)=ABMP("INS"))) S ABMPSQ=ABMI
 .D SOP
 .I $P(ABMINS,U,2)="D"!($P(ABMINS,U,2)="K") D MCD  Q
 .I $P(ABMINS,U,2)="R" D MCR  Q
 .D PRVT
 I '$G(ABMPSQ) S ABMPSQ=0
 S ABMSBR=$G(ABMSBR(ABMPSQ))
 I '$G(ABMSBR) S ABMSBR=2_"-"_ABMP("PDFN")
 S ABMP("REL")=$G(ABMP("REL",ABMPSQ))
 S ABMP("PH")=$G(ABMP("PH",ABMPSQ))
 S ABMP("PNUM")=$G(ABMP("PNUM",ABMPSQ))
 S ABMP("SNUM")=$G(ABMP("SNUM",ABMPSQ))
 S:ABMP("SNUM")="" ABMP("SNUM")=$G(ABMP("PNUM"))
 S:ABMP("PNUM")="" ABMP("PNUM")=$G(ABMP("SNUM"))
 S ABMP("GRPNM")=$G(ABMP("GRPNM",ABMPSQ))
 S ABMP("GRP#")=$G(ABMP("GRP#",ABMPSQ))
 S ABMP("SOP")=$G(ABMP("SOP",ABMPSQ))
 Q ABMSBR
MCD ;mcd
 S ABMCDNUM=+$P(ABMINS,U,6)
 S ABMP("PH",ABMI)=+$P($G(^AUPNMCD(ABMCDNUM,0)),U,9)
 S ABMP("REL",ABMI)=$P($G(^AUPNMCD(ABMCDNUM,0)),U,6)
 ;S ABMP("REL",ABMI)=$P($G(^AUTTRLSH(+ABMP("REL",ABMI),0)),U,5)  ;abm*2.6*19 IHS/SD/SDR HEAT136922
 ;start new abm*2.6*19 IHS/SD/SDR HEAT136922
 I "^STEP^STEPSON^STEPDAUGHTER^GRANDCHILD^CHILD^DAUGHTER^SON^NEPHEW^NIECE^STEP CHILD^"[("^"_$P($G(^AUTTRLSH(+ABMP("REL",ABMI),0)),U)_"^") S ABMP("REL",ABMI)=19
 E  S ABMP("REL",ABMI)=$P($G(^AUTTRLSH(+ABMP("REL",ABMI),0)),U,5)
 ;end new abm*2.6*19 HEAT136922
 I 'ABMP("PH",ABMI) D  Q
 .S ABMSBR(ABMI)=2_"-"_ABMP("PDFN")
 .S ABMP("PNUM",ABMI)=$P($G(^AUPNMCD(ABMCDNUM,0)),U,3)
 .S ABMP("REL",ABMI)=18
 I '$D(^AUPN3PPH(ABMP("PH",ABMI),0)) D  Q
 .S ABMSBR(ABMI)=2_"-"_ABMP("PDFN")
 .S ABMP("PNUM",ABMI)=$P($G(^AUPNMCD(ABMCDNUM,0)),U,3)
 .S ABMP("REL",ABMI)=18
 S ABMSBR(ABMI)=3_"-"_ABMP("PH",ABMI)
 S ABMP("SNUM",ABMI)=$P(^AUPN3PPH(ABMP("PH",ABMI),0),U,4)
 D GRP(ABMP("PH",ABMI))
 Q
PRVT ;private
 S ABMIEN=+$P(ABMINS,U,8)
 Q:$P($G(^AUPNPRVT(ABMP("PDFN"),11,+ABMIEN,0)),U)=""
 S ABMP("PH",ABMI)=+$P($G(^AUPNPRVT(ABMP("PDFN"),11,+ABMIEN,0)),U,8)
 S ABMP("PNUM",ABMI)=$S($P($G(^AUPNPRVT(ABMP("PDFN"),11,+ABMIEN,2)),U)'="":$P(^(2),U),$P($G(^AUPNPRVT(ABMP("PDFN"),11,+ABMIEN,0)),U,8)'="":$P($G(^AUPN3PPH($P($G(^AUPNPRVT(ABMP("PDFN"),11,+ABMIEN,0)),U,8),0)),U,4),1:"")
 I 'ABMP("PH",ABMI) D  Q
 .S ABMSBR(ABMI)=2_"-"_ABMP("PDFN")
 .S ABMP("REL",ABMI)=18
 S ABMP("REL",ABMI)=+$P($G(^AUPNPRVT(ABMP("PDFN"),11,+ABMIEN,0)),U,5)
 ;S ABMP("REL",ABMI)=$P($G(^AUTTRLSH(+ABMP("REL",ABMI),0)),U,5)  ;abm*2.6*19 IHS/SD/SDR HEAT136922
 ;start new abm*2.6*19 IHS/SD/SDR HEAT136922
 I "^STEPSON^STEPDAUGHTER^GRANDCHILD^CHILD^DAUGHTER^SON^NEPHEW^NIECE^STEP CHILD^NIECE/NEPHEW^GRANDDAUGHTER^GRANDSON^"[("^"_$P($G(^AUTTRLSH(+ABMP("REL",ABMI),0)),U)_"^") S ABMP("REL",ABMI)=19
 E  S ABMP("REL",ABMI)=$P($G(^AUTTRLSH(+ABMP("REL",ABMI),0)),U,5)
 ;end new abm*2.6*19 HEAT136922
 S ABMSBR(ABMI)=3_"-"_ABMP("PH",ABMI)
 ;S ABMP("SNUM",ABMI)=$P($G(^AUPN3PPH(ABMP("PH",ABMI),0)),U,4)  ;abm*2.6*11 HEAT97889
 S ABMP("SNUM",ABMI)=$S($P($G(^AUPNPRVT(ABMP("PDFN"),11,+ABMIEN,2)),U)'="":$P(^(2),U),1:$P($G(^AUPN3PPH(ABMP("PH",ABMI),0)),U,4))  ;abm*2.6*11 HEAT97889
 D GRP(ABMP("PH",ABMI))
 Q
MCR ;mcr
 I $P(^AUTNINS(+ABMINS,0),U)["RAILROAD" D  Q  ;abm*2.6*3 HEAT12676
 .S ABMPRFX=$P($G(^AUPNRRE(ABMP("PDFN"),0)),U,3),ABMHIC=$P($G(^(0)),U,4)
 .S ABMPRFX=$P($G(^AUTTRRP(+ABMPRFX,0)),U)
 .S ABMP("PNUM",ABMI)=ABMPRFX_ABMHIC
 .K ABMPRFX,ABMHIC
 .;start new abm*2.6*3 HEAT12676
 .S ABMP("SNUM",ABMI)=ABMP("PNUM",ABMI)
 .S ABMP("REL",ABMI)=18
 .S ABMP("GRP#",ABMI)=""
 .S ABMSBR(ABMI)=2_"-"_ABMP("PDFN")
 ;end new HEAT12676
 ;I $P($G(^AUTNINS(+ABMINS,2)),U)="R"!($P(^AUTNINS(+ABMINS,0),U)["MEDICARE") D  Q  ;abm*2.6*3 HEAT12676  ;abm*2.6*10 HEAT73780
 I $$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+ABMINS,".211","I"),1,"I")="R"!($P(^AUTNINS(+ABMINS,0),U)["MEDICARE") D  Q  ;abm*2.6*3 HEAT12676  ;abm*2.6*10 HEAT73780
 .S ABMHIC=$P($G(^AUPNMCR(ABMP("PDFN"),0)),U,3),ABMSUFX=$P($G(^(0)),U,4)
 .S ABMSUFX=$P($G(^AUTTMCS(+ABMSUFX,0)),U)
 .S ABMP("PNUM",ABMI)=ABMHIC_ABMSUFX
 .K ABMHIC,ABMSUFX
 .;start new abm*2.6*3 HEAT12676
 .S ABMP("SNUM",ABMI)=ABMP("PNUM",ABMI)
 .S ABMP("REL",ABMI)=18
 .S ABMP("GRP#",ABMI)=""
 .S ABMSBR(ABMI)=2_"-"_ABMP("PDFN")
 ;end new HEAT12676
 ;start old abm*2.6*3 HEAT12676
 ;S ABMP("SNUM",ABMI)=ABMP("PNUM",ABMI)
 ;S ABMP("REL",ABMI)=18
 ;S ABMP("GRP#",ABMI)=""
 ;S ABMSBR(ABMI)=2_"-"_ABMP("PDFN")
 ;end old HEAT12676
 Q
PST(X) ;EP - primary, secondary, tertiary  
 D SET(X)
 D ISET
 S ABMCNT=0
 S X=""
 N I
 S I=0
 F  S I=$O(ABMP("INS",I)) Q:'I  D
 .S ABMCNT=ABMCNT+1
 .I $P(ABMP("INS",I),U)=ABMP("INS"),$P(ABMP("INS",I),U,3)="I" S X=ABMCNT Q
 S X=$S(X=1:"P",X=2:"S",X=3:"T",1:"P")
 Q X
GRP(X) ;EP - group name & #
 ;x=policy holder ien
 S ABMP("GRP#",ABMI)=""
 S ABMP("GRPNM",ABMI)=""
 S X=$P($G(^AUPN3PPH(+X,0)),U,6)
 I $D(^AUTNEGRP(+X,0)) D
 .S ABMP("GRP#",ABMI)=$P(^AUTNEGRP(X,0),U,2)
 .S ABMP("GRPNM",ABMI)=$P(^AUTNEGRP(X,0),U)
 I ABMP("GRP#",ABMI)="",ABMP("GRPNM",ABMI)="" D
 .S ABMP("GRPNM",ABMI)="UNKNOWN"
 Q
SNUM(X) ;EP - subscriber policy#
 ;x=bill ien
 S ABMSBR=$$SBR(X)
 S X=$G(ABMP("SNUM"))
 Q X
PNUM(X) ;EP - patient policy#
 ;x=bill ien
 S ABMSBR=$$SBR(X)
 S X=$G(ABMP("PNUM"))
 Q X
REL(X) ;EP - rel.
 ;x=bill ien
 S ABMSBR=$$SBR(X)
 Q $G(ABMP("REL"))
SOP ;EP - source of pay (claim filing indicator)
 D SOP^ABMUTLP2  ;abm*2.6*10
 Q
MPP(X) ;EP - medicare primary payer
 ;x=bill ien
 Q:X="" 0
 N ABMIEN
 S ABMIEN=X
 Q:'$D(^ABMDBILL(DUZ(2),ABMIEN)) 0
 N ABMPINS,ABMPTYP
 S ABMPINS=$P(^ABMDBILL(DUZ(2),ABMIEN,0),U,8)
 ;S ABMPTYP=$P($G(^AUTNINS(+ABMPINS,2)),U)  ;abm*2.6*10 HEAT73780
 S ABMPTYP=$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+ABMPINS,".211","I"),1,"I")  ;abm*2.6*10 HEAT73780
 Q:$G(ABMPTYP)'="R" 0
 N I
 S I=0
 N ABMMPP
 S ABMMPP=1
 F  S I=$O(^ABMDBILL(DUZ(2),ABMIEN,13,I)) Q:'I  D
 .N ABMX0
 .S ABMX0=^ABMDBILL(DUZ(2),ABMIEN,13,I,0)
 .Q:$P(ABMX0,U)=ABMPINS
 .Q:$P(ABMX0,U,3)'="C"
 .S ABMMPP=0
 Q ABMMPP
RCID(X) ;EP - receiver id 
 ;x=insurer
 K Y
 S X=$G(X)
 ;start new abm*2.6*6 5010
 I $D(^ABMRECVR("C",X)) D
 .Q:$G(ABMLOOP)="2330B"  ;abm*2.6*9 HEAT55022
 .S ABMCHIEN=$O(^ABMRECVR("C",X,0))
 .;S:ABMCHIEN Y=$P($G(^ABMRECVR(ABMCHIEN,0)),U,2)  ;abm*2.6*8
 .S:ABMCHIEN Y=$P($G(^ABMRECVR(ABMCHIEN,0)),U,3)  ;abm*2.6*8
 .K ABMCHIEN
 Q:$G(Y) Y
 ;end new 5010
 ;I $P($G(^AUTNINS(+X,2)),U)="R" S Y=$P($G(^ABMDPARM(DUZ(2),1,5)),U,3)  ;abm*2.6*10 HEAT73780
 I $$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+X,".211","I"),1,"I")="R" S Y=$P($G(^ABMDPARM(DUZ(2),1,5)),U,3)  ;abm*2.6*10 HEAT73780
 I $G(Y)="" S Y=$P($G(^AUTNINS(+X,2)),U,12)
 I $G(Y)="" S Y=$$RCID^ABMERUTL(X)
 Q Y
SNDR(X,Y) ;EP - sender id
 ;x=insurer
 ;y=visit type
 S X=$G(X)
 S Y=$G(Y)
 N Z  ;abm*2.6*10
 ;S Z=$P($G(^ABMNINS(DUZ(2),+X,1,+Y,0)),U,19)  ;abm*2.6*6 5010
 ;start new abm*2.6*6 5010
 I $D(^ABMRECVR("C",X)) D
 .S ABMCHIEN=$O(^ABMRECVR("C",X,0))
 .;S:ABMCHIEN Z=$P($G(^ABMRECVR(ABMCHIEN,0)),U,2)  ;abm*2.6*8 HEAT45044
 .S:ABMCHIEN&($G(ABMR("ISA",10))'="") Z=$P($G(^ABMRECVR(ABMCHIEN,0)),U,2)  ;abm*2.6*8 HEAT45044
 .S:ABMCHIEN&($G(ABMR("GS",10))'="") Z=$P($G(^ABMRECVR(ABMCHIEN,0)),U,4)  ;abm*2.6*8 HEAT45044
 .K ABMCHIEN
 S:$G(Z)="" Z=$P($G(^ABMNINS(DUZ(2),+X,1,+Y,0)),U,19)
 ;end new 5010
 ;S:Z="" Z=$P($G(^ABMNINS(DUZ(2),+X,0)),U,2)  ;abm*2.6*10
 S:$G(Z)="" Z=$P($G(^ABMNINS(DUZ(2),+X,0)),U,2)  ;abm*2.6*10
 S:Z="" Z=$P($G(^AUTTLOC(DUZ(2),0)),U,18)
 Q Z
TRIM(%X,%F,%V) ;EP
 ;Trim spaces\char from front(left)/back(right) of string
 N %R,%L S %F=$$UP^XLFSTR($G(%F,"LR")),%L=1,%R=$L(%X),%V=$G(%V," ")
 I %F["R" F %R=$L(%X):-1:1 Q:$E(%X,%R)'=%V
 I %F["L" F %L=1:1:$L(%X) Q:$E(%X,%L)'=%V
 Q $E(%X,%L,%R)
OVER(ABMOLN) ;EP - get override values from 3P Ins file
 D OVER^ABMUTLP2  ;abm*2.6*10
 Q
