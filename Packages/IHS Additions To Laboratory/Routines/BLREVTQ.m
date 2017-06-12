BLREVTQ(BLRCMF,BLRPHASE,BLROPT,BLRPARAM,BLRIDS) ; IHS/HQT/MJL - EVENT SET QUE TO UPDATE LAB/PCC TRANSACTION ; 22-Oct-2013 09:22 ; MKK
 ;;5.2;IHS LABORATORY;**1010,1011,1013,1015,1018,1021,1027,1033**;NOV 01, 1997
CTL ;
 D:$G(BLROPTS)="" RSBLROPT        ; IHS/OIT/MKK - LR*5.2*1033
 ;
 Q:$P($G(^BLRSITE(DUZ(2),0)),U,2)=0
 S BLRDH=+$H,BLRPHASE=$G(BLRPHASE)
 S BLROPT=$G(BLROPT)
 S:'$D(BLRQSITE) BLRQSITE=$P($G(^AUTTSITE(1,0)),U)
 ;
 ; L +^BLRSITE(BLRQSITE,20,BLRDH):2
 ; ----- BEGIN IHS/OIT/MKK - LR*5.2*1033
LOCKIT ; EP
 L +^BLRSITE(BLRQSITE,20,BLRDH):5  I '$T  H 5  G LOCKIT
 ; ----- END IHS/OIT/MKK - LR*5.2*1033
 ;
 S BLRQUE=$P($G(^BLRSITE(BLRQSITE,20,BLRDH,0)),U,2)+1
 S $P(^BLRSITE(BLRQSITE,20,BLRDH,0),U,2)=BLRQUE
 S:BLRQUE=1 $P(^BLRSITE(BLRQSITE,20,BLRDH,0),U)=DT
 L -^BLRSITE(BLRQSITE,20,BLRDH)
 ;
 S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,0)=$G(BLRCMF)_U_$G(BLRPHASE)_U_$G(BLROPT)_U_$G(BLRPARAM)_U_$G(BLRIDS)_U_$G(DUZ(2))_U_$G(DUZ)
 S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"C")=0  ;ENTRY INCOMPLETE
 D SETDATA
 S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"C")=1  ;ENTRY COMPLETE
 ;
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1021 - cmi/anch/maw REF LAB
 D ACC^BLRRLEVT  ;cmi/maw 11/5/2007 moved for lr p23
 ;D ACC  ;cmi/maw added for ref lab
 ;----- END IHS MODIFICATIONS LR*5.2*1021 - cmi/anch/maw end REF LAB
 ;
 Q
 ;
 ;SET UP THE EVENT IN THE 'BLR MASTER CONTROL' FILE
SETDATA ;
 I BLROPT="ADDORD",$D(BLRTSTS) M ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"BLRTSTS")=BLRTSTS Q
 ;
 I BLROPT="ADDACC" S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"BLRTEST")=+$G(LRTS,$G(LRTSTS))
 ;
 ; ----- BEGIN IHS/OIT/MKK - LR*5.2*1033
 ;       Moved code to separate subroutines.  See below.
 I BLRPHASE="R" D RESULTS  Q      ; IHS/OIT/MKK - LR*5.2*1033 - RESULTS BEING ENTERED
 ;
 I BLRPHASE="D" D DELETION Q      ;  IHS/OIT/MKK - LR*5.2*1033 - DELETION PHASE
 ; ----- END IHS/OIT/MKK - LR*5.2*1033
 ;
 I BLROPT="ADDCOL" S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRPSN")=$G(LRPSN,$G(LRSN))
 ;
 Q
 ;
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1021
ACC ;EP - cmi/flag/maw added the following for ref lab accessions
 ;cmi/anch/maw REF LAB
 ;Q
 ;
 I BLRPHASE="O" D  ;cmi/maw 5/30/2007 added for institution entry of file 44 so that it gets correct accession area from file 60 otherwise it gets duz(2)
 . Q:'$G(LROLLOC)
 . Q:'$P($G(^SC(LROLLOC,0)),U,4)
 . S BLRALTDZ=$P($G(^SC(LROLLOC,0)),U,4)
 . Q:'+$G(^BLRSITE($S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),"RL"))
 . S LRDUZ(2)=BLRALTDZ
 Q:BLRPHASE'="A"  ;quit if not an accession
 ;
 K BLRRL,BLRRLC  ;kill off existing BLRRL array
 S BLRRL("LRTS")=$S(+$G(LRTS):+LRTS,1:$G(LRTSORU))
 Q:$G(BLRRL("LRTS"))=""  ;1/23/2006 don't proceed without a test
 ;
 ;cmi/anch/maw 2/24/2006 added look for LRPHMAN before asking for comments
 ;cmi/anch/maw 2/28/2006 added AAA tag for allowing edit of ask at accession questions
AAA I '$O(BLRRLC(0)),$P($G(XQY0),U)'="LRPHMAN" S BLRRLSUC=$$COM^BLRRLCOM(BLRRL("LRTS"))  ;cmi/anch/maw modified due to routine collect no LRTS 9/8/2004
 I $O(BLRRLC(0)) D
 . S DIR(0)="Y",DIR("A")="Are the responses to the Ask At Accession questions correct "
 . S DIR("B")="Y"
 . D ^DIR
 . I '$G(Y) D  G AAA
 .. D DISAAQ(.BLRCNT,BLRRL("LRTS"),.BLRRLC)
 ;cmi/anch/maw 2/28/2005 end of mods
 ;I '$O(BLRRLC(0)) S BLRRLSUC=$$COM^BLRRLCOM(+LRTS)  maw orig 9/8/2004
 Q:$G(BLRRL("LRTS"))=""  ;1/23/2006 don't proceed without a test
 S BLRRL("LOCI")=$G(LROLLOC)  ;cmi/maw 5/29/2007 added for internal location pointer to file 44
 S BLRRL("ALTDUZ2")=$G(BLRALTDZ)  ;cmi/maw 5/29/2007 setup alternate duz2 if they select the prompt in blrsite to look at ordering location
 I $G(BLRALTDZ),$P($G(^BLRSITE(BLRALTDZ,"RL")),U,10)="D" K BLRALTDZ,BLRRL("ALTDUZ2")  ;don't need variables if they use a true multidivisional site
 I $G(BLRALTDZ),$P($G(^BLRSITE(BLRALTDZ,"RL")),U,10)="" K BLRALTDZ,BLRRL("ALTDUZ2")  ;don't need variables if they use a true multidivisional site
 S BLRRL("RL")=+$G(^BLRSITE($S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),"RL"))  ;ref lab site maw modified 5/29/2007
 Q:'BLRRL("RL")
 S BLRRL("BI")=$P($G(^BLRRL(BLRRL("RL"),0)),U,10)  ;bi or unidirectional
 S BLRRL("RLE")=$P($G(^BLRRL(BLRRL("RL"),0)),U)  ;get external name
 ;cmi/anch/maw 3/3/2006 lets try this for account number
 S BLRRL("CLIENT")=$O(^BLRSITE($S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),"RLCA","B",""))
 I $G(BLRRL("CLIENT"))="" S BLRRL("CLIENT")=$P($G(^BLRRL(BLRRL("RL"),0)),U,13)
 ;cmi/anch/maw 3/3/2006 end of mods
 I $G(BLRRL("BI")) Q:$P($G(^BLRRL(BLRRL("RL"),0)),U,6)=""  ;no orders 5/31/06
 S BLRRL("PAT")=$G(DFN)  ;patient
 S BLRRL("ACC")=$G(LRACC)  ;accession number
 S BLRRL("UID")=$G(LRUID)  ;unique id
 S BLRRL("CDT")=$G(LRCDT)  ;collection date
 S BLRRL("ACCA")=$P(BLRRL("ACC")," ")  ;get accession abbreviation
 Q:$G(BLRRL("ACCA"))=""
 S BLR("ACCAREA")=$O(^LRO(68,"B",BLRRL("ACCA"),0))  ;get ien of accession area
 Q:BLR("ACCAREA")=""  ;don't proceed if not an SO area
 Q:'$D(^BLRRL("ACC",BLR("ACCAREA"),BLRRL("RL")))  ;quit when not a sendout area
 S BLRRL("ORDPRV")=$G(LRPRAC)  ;ordering provider
 ;the following must be setup in an array for GIS software
 ;do something here to check for mult tests under ac #
 ;or each acc # unique
 S (BLRTSTDA,BLRRL("TSTDA"))=+$G(LRTS)
 K BLRRL(BLRTSTDA)  ;kill off array from previous accession
 K BLRRL("ORDPUPIN"),BLRRL("ORDPNM")  ;maw 5/10/06
 I BLRRL("ORDPRV")]"" D  ;setup provider array
 . S BLRRL("ORDPUPIN")=$$VAL^XBDIQ1(200,BLRRL("ORDPRV"),9999999.08)  ;maw 5/10/06
 . S BLRRL("ORDPNM")=$$VAL^XBDIQ1(200,BLRRL("ORDPRV"),.01)
 . S BLRRL("ORDPNM")=$P(BLRRL("ORDPNM"),",")_"^"_$P($P(BLRRL("ORDPNM"),",",2)," ")
 . S BLRRL(BLRTSTDA,"ORDP")=BLRRL("ORDPUPIN")_"^"_BLRRL("ORDPNM")
 . S BLRRL("ORDP")=BLRRL("ORDPUPIN")_"^"_BLRRL("ORDPNM")
 S BLRTSTI=+$G(LRTS)  ;get test ien
 Q:'$D(^LAB(60,BLRTSTI,8,$S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),0))  ;quit if no accession area
 S BLRAREA=$P($G(^LAB(60,BLRTSTI,8,$S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),0)),U,2)  ;get acc area
 Q:BLRAREA=""  ;quit if accession area field is null
 Q:BLRAREA'=BLR("ACCAREA")  ;quit if test acc area is not SO area
 S BLRRL(BLRTSTDA,"CDT")=$G(LRCDT)  ;collection date
 S BLRRL("TNAME")=$P($G(^LAB(60,BLRTSTI,0)),U)  ;get test name
 S BLRRL("ABBR")=$P($G(^LRO(68,BLRAREA,0)),U,11)  ;get area abbr
 S BLRRL("TST")=BLRTSTI  ;get test ien
 S BLRRL("TCODE")=$$CODE(BLRRL("RL"),BLRRL("TST"))  ;lookup test code
 I $G(BLRRL("TCODE"))=0 K BLRRL(BLRTSTDA) Q  ;quit if no test code
 S BLRRL(BLRTSTDA,"ACC")=$G(LRACC)  ;setup acc array for OBR
 S BLRRL(BLRTSTDA,"UID")=$G(LRUID)
 S BLRRL("TCNM")=BLRRL("TCODE")_U_BLRRL("TNAME")  ;test arry
 S BLRRL(BLRTSTDA,"TCNM")=BLRRL("TCODE")_U_BLRRL("TNAME")  ;test arry
 S BLRRL("URG")=$G(LRURG)
 S BLRRL("LOC")=$G(LRLLOC)
 S BLRRL("ODT")=$G(LRODT)
 S BLRRL(BLRTSTDA,"SAMP")=$G(LRSAMP)
 S BLRRL("SAMP")=$G(LRSAMP)
 S BLRRL(BLRTSTDA,"SRC")=$G(LRSPEC)
 S BLRRL("SRC")=$G(LRSPEC)
 I $G(LRSPEC) S (BLRRL(BLRTSTDA,"SRC"),BLRRL("SRC"))=$P($G(^LAB(61,LRSPEC,0)),U)
 S BLRRL("ORD")=$G(LRORD)
 S BLRRL(BLRTSTDA,"ORD")=$G(LRORD)
 S BLRCM=0 F  S BLRCM=$O(BLRRLC(BLRTSTDA,BLRCM)) Q:'BLRCM  D
 . S BLRRL(BLRTSTDA,"COMMENT",BLRCM)=$G(BLRRLC(BLRTSTDA,BLRCM))
 . S BLRRL("COMMENT",BLRCM)=$G(BLRRLC(BLRTSTDA,BLRCM))
 ;cmi/maw 10/31/07 ask what type of billing here
 ;S DIR(0)="S^C:Client;T^Third Party;P:Patient"
 ;S DIR("A")="Which Party is Responsible for Billing: "
 ;S DIR("B")="Client"
 ;D ^DIR
 ;S BLRRL("BILL TYPE")=Y
 ;I $D(DIRUT) S BLRRL("BILL TYPE")="Client"
 ;K DIR
 ;cmi/maw 10/31/07 end of mods
 D TMPSET(.BLRRL)
 I $P($G(XQY0),U)="LRPHMAN" D  ;cmi/anch/maw added for ward collection list 2/23/2006
 . D PRT^BLRSHPM
 S X="BLR REFLAB ACCESSION A TEST",DIC=101 D EN^XQOR  ;call accession protocol
 K BLRRL,BLRRLC(BLRTSTDA),LRTEST
 Q
 ;
TMPSET(BLRSHP) ;-- setup the array for the shipping manifest
 N BLRDA,BLRDATA
 S BLRDA=0 F  S BLRDA=$O(BLRSHP(BLRDA)) Q:BLRDA=""  D
 . Q:BLRDA?.N
 . ;cmi/anch/maw 7/24/2007 right here you could store by order number if passed in at the top
 . S BLRDATA=$G(BLRSHP(BLRDA))
 . I '$D(^TMP("BLRRL",$J,BLRDA)) S ^TMP("BLRRL",$J,"COMMON",BLRDA)=BLRDATA
 N BLRDA,BLRDATA,BLRIEN
 S BLRDA=0 F  S BLRDA=$O(BLRSHP(BLRDA)) Q:BLRDA=""  D
 . Q:BLRDA'?.N
 . S BLRIEN=0 F  S BLRIEN=$O(BLRSHP(BLRDA,BLRIEN)) Q:BLRIEN=""  D
 .. Q:BLRIEN="COMMENT"
 .. S BLRDATA=$G(BLRSHP(BLRDA,BLRIEN))
 .. I '$D(^TMP("BLRRL",$J,BLRDA,BLRIEN)) S ^TMP("BLRRL",$J,BLRDA,BLRIEN)=BLRDATA
 N BLRDA,BLRIEN,BLROEN,BLRDATA
 S BLRDA=0 F  S BLRDA=$O(BLRSHP(BLRDA)) Q:BLRDA=""  D
 . Q:'BLRDA
 . S BLRIEN=0 F  S BLRIEN=$O(BLRSHP(BLRDA,"COMMENT",BLRIEN)) Q:'BLRIEN  D
 .. S BLRDATA=$G(BLRSHP(BLRDA,"COMMENT",BLRIEN))
 .. I '$D(^TMP("BLRRL",$J,BLRDA,"COMMENT",BLRIEN)) S ^TMP("BLRRL",$J,BLRDA,"COMMENT",BLRIEN)=BLRDATA
 Q
 ;
CODE(RL,TST)      ;lookup the test code via prefix and test
 K BLRTCODE
 I '$D(^BLRRL(RL,1,0)) Q 0
 S BLRRDA=0 F  S BLRRDA=$O(^BLRRL("ALP",TST,RL,BLRRDA)) Q:'BLRRDA!($G(BLRTCODE)]"")  D
 . S BLRTCODE=$P($G(^BLRRL(RL,1,BLRRDA,0)),U,3)
 . Q:$G(BLRTCODE)]""
 I $G(BLRTCODE)="" Q 0
 Q BLRTCODE
 ;cmi/anch/maw end REF LAB
 ;
DISAAQ(BLRCNT,TIEN,AAQ) ;-- display the ask at order questions
 N A,BLRCNT
 S BLRCNT=0
 S A=0 F  S A=$O(AAQ(TIEN,A)) Q:'A  D
 . S BLRCNT=BLRCNT+1
 . W !,A_") ",$P(AAQ(TIEN,A),U,2),?50,$P(AAQ(TIEN,A),U,3)
 W !
 N RES
 K DIR
 S DIR(0)="N^1:"_BLRCNT
 S DIR("A")="Edit Which Ask At Accession Question "
 D ^DIR
 Q:$D(DIRUT)
 S RES=+Y
 K DIR
 S DIR(0)="F",DIR("A")=$P(AAQ(TIEN,RES),U,2)
 S DIR("B")=$P(AAQ(TIEN,RES),U,3)
 D ^DIR
 Q:$D(DIRUT)
 S $P(BLRRLC(TIEN,RES),U,3)=Y
 Q
 ;
 ;----- END IHS MODIFICATIONS LR*5.2*1021
 ;
 ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1033
 ;       Code moved to here to keep logic above from being obscured.
RESULTS ; EP 
 ;M ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRCOM")=^LR(LRDFN,LRSS,9999999-$S($D(LRCDT):LRCDT,1:LRI),1)
 M ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRCOM")=^LR(LRDFN,LRSS,9999999-$S($D(LRCDT):LRCDT,$D(LRI):LRI,1:LRIDT),1)  ;IHS/ITSC/TPF 08/25/02 FIXED PROBLEM AT TALEQUAW **1015**
 ;
 ;AFTER MERGING THE TESTS IN, KILL THE B X-REF WE DONT NEED IT
 K ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRCOM","B")
 ;
 I $D(LRORDCOM) S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRORDCOM")=LRORDCOM
 I $D(LRDFN) S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRDFN")=LRDFN
 I $D(LRSPEC) S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRSPEC")=LRSPEC S:$D(SEX) ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"SEX")=SEX S:$D(AGE) ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"AGE")=AGE
 ;
 I BLROPT="BBANK" D  Q
 . S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRDFN")=LRDFN,^("LRCDT")=9999999-LRI,^("LRIDT")=LRI,^("BLRTEST")=LRT,^("BLRTESTN")=$P(LRT(LRT),U),^("DR")=$G(DR)
 ;
 I BLROPT="MICRO" D  Q
 . ;----- BEGIN IHS MODIFICATIONS LR*5.2*1016 IHS TESTING CHANGE
 . S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRSAMP")=$G(LRSAMP)
 . ;----- END IHS MODIFICATIONS
 . S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRAA")=LRAA,^("LRAD")=LRAD,^("LRAN")=LRAN,^("LRSS")=LRSS,^("LRODT")=LRODT,^("LRCDT")=LRCDT,^("LRSN")=LRSN
 . S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRDFN")=LRDFN,^("LRIDT")=LRIDT,^("BLRTEST")=$S($D(LRTS):LRTS,1:LRTEST)
 . S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRDFN")=LRDFN,^("LRIDT")=LRIDT,^("BLRTEST")=+$S($D(LRTS):LRTS,1:LRTEST)   ;IHS/ITSC/TPF 9/24/02 **1014**
 ;
 M:$D(LRSB) ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRSB")=LRSB
 ;
 S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"LRAA")=LRAA,^("LRAD")=LRAD,^("LRAN")=LRAN,^("LRSS")=LRSS,^("LRODT")=LRODT,^("LRCDT")=$G(LRCDT),^("LRSN")=LRSN
 S:BLROPT="BYPASS" ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"BLRTEST")=$G(LRTY,$G(LRTNUM))
 S:BLROPT="ACCORD" ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"BLRTEST")=$G(LRTNUM)
 Q
 ;
DELETION ; EP
 S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"BLRODTM")=$P($S($D(LROD0):LROD0,1:^LRO(69,LRODT,1,LRSN,0)),U,5)
 ;I $G(BLRPARAM)["TESTS" S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"BLRTEST")=$P(T(J),U,3),^("LRSN")=+T(J) Q
 ;----- BEGIN IHS MODIFCATIONS LR*5.2*1016 IHS TESTING CHANGE
 I $G(BLRPARAM)["TESTS" S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"BLRTEST")=$P($G(T(J)),U,3),^("LRSN")=+$G(T(J)) Q
 ;
 I BLROPT="DELACC" S ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"BLRACCN")=^LRO(68,$P(BLRIDS,","),1,$P(BLRIDS,",",2),1,$P(BLRIDS,",",3),.2),^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"BLRTEST")=LRTSTS Q
 M:$D(T) ^BLRSITE(BLRQSITE,20,BLRDH,1,BLRQUE,"T")=T
 ;
 Q
 ;
RSBLROPT ; EP -- Set/Reset BLROPT variable
 Q:$L($G(LRACC))<1                     ; If Accession null, skip
 ;
 Q:$L($O(^BLRTXLOG("D",LRACC,0)))      ; If Accession in 9009022, skip
 ;
 ; S BLROPT="BYPASS"                   ; Hard set BLROPT
 ;
 Q
 ; ----- END IHS/MSC/MKK - LR*5.2*1033
