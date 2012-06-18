BLRTNB ; IHS/HQT/MJL - SET IHS LAB TRANSACTION LOG - BLOOD BANK ;MAY 06, 2009 9:58 AM
 ;;5.2T1;IHS LABORATORY;**1010,1018,1025,1026**;NOV 01, 1997
 ;;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER ^BLRTNB")
 ; S BLRLRDFN=$G(^BLRSITE(BLRQSITE,20,BLRQDH,1,BLRLTP,"LRDFN")),BLRIDT=$G(^("LRIDT")),BLRTEST=$G(^("BLRTEST")),BLRTESTN=$G(^("BLRTESTN")),BLRDR=$G(^("DR")),(BLRRES,BLRANTI,BLRBTN,BLRCMTS)="",BLR60F=0
 ; S BLRODT=$P(BLRIDS,","),BLRSEQ=$P(BLRIDS,",",2)
 ; S BLRACCN=$P($G(^LR(BLRLRDFN,"BB",BLRIDT,0)),U,6)
 ; ----- BEGIN IHS/OIT/MKK LR*5.2*1026 Modifications
 ;       Quit if variables cannot be set
 S BLRLRDFN=$G(^BLRSITE(BLRQSITE,20,BLRQDH,1,BLRLTP,"LRDFN"))
 I $G(BLRLRDFN)=""  D NOTSETER("BLRLRDFN")  Q
 ;
 S BLRIDT=$G(^BLRSITE(BLRQSITE,20,BLRQDH,1,BLRLTP,"LRIDT"))
 I $G(BLRIDT)="" D NOTSETER("LRIDT")  Q
 ;
 S BLRTEST=$G(^BLRSITE(BLRQSITE,20,BLRQDH,1,BLRLTP,"BLRTEST"))
 I $G(BLRTEST)="" D NOTSETER("BLRTEST")  Q
 ;
 S BLRTESTN=$G(^BLRSITE(BLRQSITE,20,BLRQDH,1,BLRLTP,"BLRTESTN"))
 I $G(BLRTESTN)="" D NOTSETER("BLRTESTN")  Q
 ;
 S BLRDR=$G(^BLRSITE(BLRQSITE,20,BLRQDH,1,BLRLTP,"DR"))
 I $G(BLRDR)="" D NOTSETER("BLRDR")  Q
 ;
 S (BLRRES,BLRANTI,BLRBTN,BLRCMTS)=""
 S BLR60F=0
 ;
 S BLRODT=$P(BLRIDS,",")
 I $G(BLRODT)="" D NOTSETER("BLRODT")  Q
 ;
 S BLRSEQ=$P(BLRIDS,",",2)
 I $G(BLRSEQ)="" D NOTSETER("BLRSEQ")  Q
 ;
 S BLRACCN=$P($G(^LR(BLRLRDFN,"BB",BLRIDT,0)),U,6)
 I $G(BLRACCN)="" D NOTSETER("BLRACCN")  Q
 ;
 ; ----- END IHS/OIT/MKK LR*5.2*1026 Modifications
 ; 
 D
 .;I BLRDR["CMBS" D COOMBS Q
 .I $E(BLRDR,2,5)="LRBL" D COOMBS
 .D RHTYP
 I BLRBTN'="" S BLRRES="",BLR60F=1 D BLDMSTR
 D KILL
 Q
 ;
 ; ----- BEGIN IHS/OIT/MKK LR*5.2*1026 Modifications
 ;       Set Error Flag & Error Array that will show up in BLRTXLOG.  Not Fatal.
NOTSETER(VAR) ; EP
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER NOTSETER^BLRTNB")
 S BLRERR=1
 S BLRERROR(1)="BLRTNB Error: "_VAR_" is Null/Zero."
 Q
 ; ----- END IHS/OIT/MKK LR*5.2*1026 Modifications
 ;
RHTYP ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER RHTYP^BLRTNB")
 S BLRRES=$P($G(^LR(BLRLRDFN,"BB",BLRIDT,10)),U) I BLRRES'="" S BLRBTN="ABO INTERPRETATION" D LOOKBTN
 S BLRRES=$P($G(^LR(BLRLRDFN,"BB",BLRIDT,11)),U) I BLRRES'="" S BLRBTN="RH INTERPRETATION" D LOOKBTN
 Q
 ;
COOMBS ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER COOMBS^BLRTNB")
 I $D(^LR(BLRLRDFN,"BB",BLRIDT,2)) D DIRECT
 I $D(^LR(BLRLRDFN,"BB",BLRIDT,6)) S BLRRES=$G(^(6)) D INDIR
 Q
 ;
DIRECT ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER DIRECT^BLRTNB")
 S BLRRES=$P($G(^LR(BLRLRDFN,"BB",BLRIDT,2)),U,9)
 I BLRRES'="" S BLRBTN="DIRECT INTERPRETATION" D LOOKBTN
 Q:BLRRES'="P"
 Q:'$D(^LR(BLRLRDFN,"BB",BLRIDT,"EA"))
 S BLRPAR=$O(^BLRTXLOG("AOB",BLRACCN,BLRBTN,""),-1)
 S BLRANTI=0 F  S BLRANTI=$O(^LR(BLRLRDFN,"BB",BLRIDT,"EA",BLRANTI)) Q:BLRANTI=""  S BLRRES="POS" D LOOKANT
 K BLR("ANTIBODY")
 Q
 ;
INDIR ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER INDIR^BLRTNB")
 S BLRBTN="INDIRECT INTERPRETATION" D LOOKBTN
 Q:BLRRES="N"
 Q:'$D(^LR(BLRLRDFN,"BB",BLRIDT,5))
 S BLRPAR=$O(^BLRTXLOG("AOB",BLRACCN,BLRBTN,""),-1)
 S BLRANTI=0 F  S BLRANTI=$O(^LR(BLRLRDFN,"BB",BLRIDT,5,BLRANTI)) Q:BLRANTI=""  S BLRRES="POS" D LOOKANT
 K BLR("ANTIBODY")
 Q
LOOKBTN ;
 I '$D(^BLRTXLOG("AOB",BLRACCN,BLRBTN)) S BLRPAR=$O(^BLRTXLOG("AAT",BLRACCN,BLRTEST,""),-1) D SET Q
 D BLDMSTR
 Q
 ;
LOOKANT ;
 I '$D(^BLRTXLOG("AOA",BLRACCN,BLRBTN,BLRANTI)) D SET Q
 D BLDMSTR
 Q
 ;
BLDMSTR ;
 S BLRCMF="M"
 I BLR60F S BLRCRSBS="""AAT"",BLRACCN,BLRTEST",BLRDIR=-1,BLROKCK="",BLRBADCK="",BLR("SEQUENCE NUMBER")=$$GETIEN Q:BLRERR
 I 'BLR60F D
 .S BLRCRSBS=""""_$S(BLRANTI'="":"AOA",1:"AOB")_""",BLRACCN,BLRBTN",BLRDIR=-1,BLROKCK="CHKDT",BLRBADCK=""
 .S:BLRANTI'="" BLRCRSBS=BLRCRSBS_",BLRANTI"
 .S BLR("SEQUENCE NUMBER")=$$GETIEN Q:BLRERR  S BLR("RESULT")=BLRRES,BLR("BB TEST NAME")=BLRBTN
 .S:BLRANTI'="" BLR("ANTIBODY")=BLRANTI S:BLRCMTS'="" BLR("COMMENTS")=BLRCMTS
 Q:BLRERR  D ^BLRNFLTL
 S BLRCMTS=""
 Q
 ;
 ;
SET ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER SET^BLRTNB")
 S BLRCMF="C"
 S BLRCRSBS="""AOT"",BLRODTM,BLRSEQ,BLRTEST1",BLRDIR=1,BLROKCK="",BLRBADCK=""
 S BLRVAL=^LRO(69,BLRODT,1,BLRSEQ,0),BLRLRDFN=$P(BLRVAL,U,1),BLRODTM=$P(BLRVAL,U,5)
 S BLRDUZ=$P(BLRVAL,U,2),BLRDUZ2=DUZ(2)
 S BLRDTC=$P(BLRVAL,U,8),BLRLOCN=$P(BLRVAL,U,7)
 S BLRLOC="" I BLRLOCN'="" S BLRLOC=$O(^SC("B",BLRLOCN,"")) S:BLRLOC="" BLRLOC=$O(^SC("C",BLRLOCN,"")) I BLRLOC="" S X=BLRLOCN,DIC=44,DIC(0)="MX" D ^DIC S BLRLOC=+Y I Y=-1 S BLRLOC=""
 S BLRCLNC="" I BLRLOC'="" S BLRCLNC=$P($G(^SC(BLRLOC,0)),U,7)
 S BLRSPEC=$O(^LAB(61,"B","BLOOD",""))
 ;S BLRCAT="A" I $L($G(^DPT(BLRLRDFN,.1))) S BLRCAT="I"
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1018
  S BLRCAT="A" S X=$$GET1^DIQ(2,BLRLRDFN,.103) I X]"",X'["OBSERVATION" S BLRCAT="I"
  ;----- END IHS MODIFICATIONS MOD SUGGESTED BY LINDA FELS
 ; S BLRPROV=$P(BLRVAL,U,6) S:+BLRPROV>0 BLRPROVN=$P($G(^VA(200,$P(BLRVAL,U,6),0)),U) S:BLRPROVN="" BLRPROVN="Unknown Provider"
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1025
 S BLRPROV=$P(BLRVAL,U,6) S:+BLRPROV>0 BLRPROVN=$P($G(^VA(200,$P(BLRVAL,U,6),0)),U) S:$G(BLRPROVN)="" BLRPROVN="Unknown Provider"
 ;----- END IHS MODIFICATIONS LR*5.2*1025
 S BLRDFN=$P($G(^LR(BLRLRDFN,0)),U,3),BLRFILE=$P($G(^LR(BLRLRDFN,0)),U,2),BLRODTM=$G(BLRODTM)
 S BLR("LAB MODULE")="BB"
 S BLR("LRFILE")=BLRFILE,BLR("LRDFN")=BLRLRDFN,BLR("PATIENT POINTER VALUE")=BLRDFN,BLR("ORDERING PROVIDER POINTER")=BLRPROV,BLR("VERIFIER POINTER")=BLRDUZ
 S BLR("ORDER DATE")=$P(BLRVAL,U,5),BLR("ORDER SEQUENCE NUMBER")=BLRSEQ,BLR("ORDER NUMBER")=$G(^LRO(69,BLRODT,1,BLRSEQ,.1))
 D NOW^%DTC S BLR("ENTRY DATE/TIME")=%
 S BLR("COLLECTION DATE/TIME")=BLRDTC,BLR("CLINIC STOP CODE POINTER")=BLRCLNC
 S BLR("ORDERING LOCATION POINTER")=BLRLOC,BLR("DUZ(2)")=BLRDUZ2,BLR("I/O CATEGORY")=BLRCAT,BLR("ACCESSION NUMBER")=BLRACCN,BLR("SITE/SPECIMEN POINTER")=BLRSPEC
 S BLRTEST1=BLRTEST D CPTCODE^BLRTN
 S BLR("PARENT POINTER")=BLRPAR,BLR("CPT LAB CODE POINTER")=BLRCPTP,BLR("CPT CODE")=BLRCPTS,BLR("RESULT")=BLRRES,BLR("BB TEST NAME")=BLRBTN,BLR("PANEL/TEST POINTER")=BLRTEST
 I BLRANTI'="" S BLR("ANTIBODY")=BLRANTI
 S BLR("SEQUENCE NUMBER")=$$GETIEN Q:BLRERR
 D ^BLRNFLTL
 S BLRCMTS=""
 Q
 ;
GETIEN() ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER GETIEN^BLRTNB")
 S BLRERR=0 I BLRCMF="C" D GETNEW Q BLRENT
 D
 .S BLRCRGL="^BLRTXLOG("_BLRCRSBS_")",BLRENT=$O(@BLRCRGL@(""),BLRDIR)
 .S:'BLRENT BLRERR=1
 .I BLRENT,BLROKCK'="" D @BLROKCK
 .I 'BLRERR,BLRBADCK'="" D @BLRBADCK
 .I BLRERR D EMSG Q
 .S BLRIEN=BLRENT_"," Q
 Q BLRENT
 ;
GETNEW ;
 D:$G(SNAPSHOT) ENTRYAUD^BLRUTIL("ENTER GETNEW^BLRTNB")
 S BLRENT=$G(^BLRTXLOG("SEQ"))
 I 'BLRENT S BLRENT=$O(^BLRTXLOG("@"),-1) I BLRENT,'$D(^BLRTXLOG(1)) S BLRENT=0
 F BLRENT=BLRENT+1:1 Q:'$D(^BLRTXLOG(BLRENT))
 S BLRENTS="BLRENTS",BLRENTS(1)=BLRENT,^BLRTXLOG("SEQ")=BLRENT,BLRIEN="+1,"
 Q
 ;
CHKDT ;
 S BLRCDT=$P($G(^BLRTXLOG(BLRENT,12)),U)
 Q:$E(BLRCDT,1,3)=$E(DT,1,3)
 I ($E(BLRCDT,1,3)+1)'=$E(DT,1,3) S BLRERR=1,BLRDTER=1 Q  ;MORE THAN 1 YEAR AHEAD
 I $E(BLRCDT,4,5)<11 S BLRERR=1,BLRDTER=1 Q
 Q
 ;
EMSG ;
 ; Log an error because the crossreference isn't set.
 I 'BLRENT D
 .S BLRERR=1,BLRERROR(1)="Something wrong -- problem with IHS Lab Transaction Log Cross Reference: "_BLRCRGL
 Q
 ;
 ;
GETCPT ;
 S BLRFOUND=1
 S BLRCPTP=BLRXII
 S (BLRCPTS,BLRCPTC)="" F  S BLRCPTC=$O(^BLRCPT(BLRXII,11,"B",BLRCPTC)) Q:BLRCPTC=""  S BLRCPTS=BLRCPTS_BLRCPTC_";"
 I $L(BLRCPTS,";")=2 S BLRCPTS=$P(BLRCPTS,";",1)
 I $E(BLRCPTS,$L(BLRCPTS))=";" S BLRCPTS=$E(BLRCPTS,$L(BLRCPTS))
 Q
 ;
KILL ;
 K BLR60F,BLRANTI,BLRBTN,BLRCAT,BLRCLNC,BLRCMTS,BLRCPTC,BLRCPTF,BLRCPTP,BLRCPTS,BLRCST,BLRLRDFN,BLRDTC,BLRDUZ,BLRDUZ2,BLRDUZN,BLRENT,BLRFID,BLRFILE,BLRFOUND
 K BLRIDT,BLRLOC,BLRLOCN,BLRLOGDA,BLRLRDFN,BLRODT,BLRODTM,BLRPAR,BLRPROV,BLRPROVN,BLRRES,BLRSEQ,BLRSPEC,BLRSTR,BLRSTR1,BLRTEST
 K BLRTESTN,BLRVAL,BLRXII
 Q
