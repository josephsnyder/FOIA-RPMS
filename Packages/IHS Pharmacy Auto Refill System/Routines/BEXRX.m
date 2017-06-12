BEXRX ; cmi/anch/maw - BEX Audiocare Refill Driver ; 04 Dec 2015  8:04 AM
 ;;1.0;BEX TELEPHONE REFILL SYSTEM;**1,2,4,6**;DEC 01, 2009;Build 7
 ;
 ;cmi/anch/maw 9/17/2004 added PIMS53 and ADDCR subroutines for PIMS 5.3
 ;
START D:'$D(PSOPAR) ^PSOLSET G:'$D(PSOPAR) END
 S (VEXRX,BEXRX)=1  ;cmi/maw 9/9/02 for auto ref
 W !!!?20,"Division: "_$P(^PS(59,PSOSITE,0),"^"),!!
 S PSOBBC1("FROM")="REFILL",PSOBBC("QFLG")=0,PSOBBC("DFLG")=0
 S PSOINST=000 I $D(^DD("SITE",1)) S PSOINST=^DD("SITE",1)  ;maw 9/9/02
 S PSOFROM="REFILL"  ;maw for release
 I '$D(^VEXHRX(19080,PSOINST)) S BEXANS="N" W !!?7,*7,"There are no telephone refills to process." G END
 D ASK^PSOBBC W:PSOBBC("QFLG")=1 !?7,*7,"No telephone refills were processed." G:PSOBBC("QFLG")=1 END
BEX I $$CUT G END  ;cmi/maw check for cutoff
 W ! S DIR("B")="YES",DIR("A")="Process telephone refill requests at this time",DIR(0)="Y" D ^DIR K DIR S BEXANS="N" I $G(DIRUT) S BEXPTRX="" G END
 G:Y=0 END S BEXPTRX="" I Y=1 S BEXANS="Y"
 I BEXANS["Y" S DIR("B")="YES",DIR("A")="Process telephone refills for all divisions",DIR(0)="Y" D ^DIR K DIR S BEXANS2="S" S:Y=1 BEXANS2="M" I $G(DIRUT) S BEXANS="N" G END
 S (BEXCTR,VEXCTR)=0  ;cmi/maw 9/9/02 for sum lab
BEX6 S PSOBBC("DFLG")=""  ;maw added 3/9/2004 for reset of flag
 I BEXANS["Y",$G(BEXPTRX) D BEX5 ;MARK PROCESSED NODES
 D BEX3 G:BEXANS="N" END
 I $P(X,"-")'=PSOINST W !?7,*7,*7,*7,"Not from this institution.",! G BEX6
 S (PSOBBC("IRXN"),PSOBBC("OIRXN"))=$P(X,"-",2)
 S PSORX("PSOL",1)=PSOBBC("IRXN")_","  ;cmi/maw 9/9/02
 I $D(^PSRX(PSOBBC("IRXN"),0))']"" W !,*7,"Rx data is not on file!",! G BEX6
 I $P(^PSRX(PSOBBC("IRXN"),0),"^",15)=13 W !,*7,"Rx has already been deleted." G BEX6
 I $G(PSOBBC("DONE"))[PSOBBC("IRXN")_"," W !,*7,"Rx has already been entered." G BEX6
 K X,Y D:PSOBBC("QFLG") PROCESSX^PSOBBC
 S PSOSELSE=0 I $G(PSODFN)'=$P(^PSRX(PSOBBC("IRXN"),0),"^",2) S PSOSELSE=1 D PT^PSOBBC I $G(PSOBBC("DFLG")) K PSOSELSE G BEX6
 ;D PROCESSX^PSOBBC  ;maw 5/4/2006 added to print summary label for each
 ;I '$G(PSOSELSE) D PTC^PSOBBC I $G(PSOBBC("DFLG")) K PSOSELSE G BEX6
 K PSOSELSE D PROFILE^PSORX  ;S X="PPPPDA1" X ^%ZOSF("TEST") I  S X=$$PDA^PPPPDA1(PSODFN) W !!  ;cmi/maw 9/9/02
 S PSOBBC("DONE")=PSOBBC("IRXN")_"," D REFILL^PSOBBC G BEX6
 Q
BEX3 K PSOBBC("IRXN") S BEXPTRX=$O(^VEXHRX(19080,PSOINST,BEXPTRX)) I BEXPTRX="" S BEXANS="N" Q  ;PSOINST REPRESENTS THE INSTITUTION SITE NUMBER (623 HERE).
 I '$D(^PSRX(+$P(BEXPTRX,"-",2),0)),^VEXHRX(19080,PSOINST,BEXPTRX)="" D BEX5,BEX12 G BEX3 ; SKIPS ERRONEOUS ENTRIES
BEX4 I BEXANS["Y" G:^VEXHRX(19080,PSOINST,BEXPTRX)'="" BEX3 S X=PSOINST_"-"_$P(BEXPTRX,"-",2) ;SKIPS ENTRIES ALREADY PROCESSED AND FORMATS VARIABLE X
BEX10 I BEXANS2["S",$D(^PSRX(+$P(BEXPTRX,"-",2),0)),PSOSITE'=$P(^PSRX(+$P(BEXPTRX,"-",2),2),"^",9) D BEX3
 Q
 ;LINES CALLED TO MARK PROCESSED NODES
BEX5 S PSOINST=000 I $D(^DD("SITE",1)) S PSOINST=^DD("SITE",1)  ;maw 9/9/02 
 S ^VEXHRX(19080,PSOINST,BEXPTRX)=DT ;MARKS NODE AS PROCESSED
 I $D(PSOBBC("DFLG")),PSOBBC("DFLG")=1 D BEX12 ;FLAGS UNSUCCESSFUL ATTEMPTS TO REFILL.
 Q
BEX12 S $P(^VEXHRX(19080,PSOINST,BEXPTRX),U,2)="NOT FILLED" W !!,*7,"REFILL WAS NOT PROCESSED!  PLEASE TAKE APPROPRIATE ACTION."
 S PSOBBC("DFLG")=""  ;maw added 3/9/2004 for reset if flag
 W ! S DIR("A")="Do you wish to continue processing",DIR(0)="Y" D ^DIR K DIR I Y'=1 S BEXANS="N" Q
 Q
END      ;
 D PROCESSX^PSOBBC
 K BEXRX,BEXPPL,PSORX  ;cmi/maw 9/9/02 for auto ref
 K DIR,PSOBBC,PSOBBC1,BEXANS,BEXANS2,BEXPTRX,X,Y
 Q
BEXALT ;Menu action entry point to alert user
 S BEXCNT=0,BEXPTRN=""
 I '$G(PSOINST) S PSOINST="000" I $D(^DD("SITE",1)) S PSOINST=^(1)
 G:'$D(^VEXHRX(19080,PSOINST)) BEXEND
 F  S BEXPTRN=$O(^VEXHRX(19080,PSOINST,BEXPTRN)) Q:BEXPTRN=""  D
 .I ^VEXHRX(19080,PSOINST,BEXPTRN)="" S BEXCNT=BEXCNT+1
 W:BEXCNT !!,*7,BEXCNT_" Telephone Refills To Process"
BEXEND K BEXCNT,BEXPTRN
 Q
 ;
CUT() ;check cutoff time and now
 S VSITEO=$O(^BEXHRXP("B",DUZ(2),0))
 I '$G(VSITEO) Q 0
 S VSITE=$P($G(^BEXHRXP(VSITEO,0)),U)
 I '$G(VSITE) Q 0
 S VCUT=$P($G(^BEXHRXP(VSITEO,0)),U,3)
 I '$G(VCUT) Q 0
 D NOW^%DTC
 I $E($P(%,".",2),1,4)>+$G(VCUT) D  Q 1
 . W !,"Process time is past daily cut off time, refills will not be processed"
 Q 0
 ;
CR(BEXVIEN) ;EP - add a chart request
 ;
 ;IHS/BJI/DAY - Patch 6
 ;This is called from the AC Xref on the BEX Transaction File
 ;Re-Direct this from BEXRX to the newer BEXRX7
 D CR^BEXRX7(BEXVIEN)
 Q BEXVIEN
 ;
 I $G(U)="" S U="^"
 S BEXPAT=$P($G(^VEXHRX0(19080.1,BEXVIEN,0)),U)
 I '$G(BEXPAT) Q ""
 S BEXTS=$P($G(^VEXHRX0(19080.1,BEXVIEN,0)),U,2)
 I '$G(DUZ(2)) S DUZ(2)=$P($G(^AUTTSITE(1,0)),U)
 S BEXPSITE=$O(^PS(59,"C",DUZ(2),0))
 I '$G(BEXPSITE) S DUZ(2)=$P($G(^AUTTSITE(1,0)),U)
 S BEXPSITE=$O(^PS(59,"C",DUZ(2),0))
 I '$G(BEXPSITE) Q ""
 S BEXVSITO=$O(^BEXHRXP("B",BEXPSITE,0))
 I '$G(BEXVSITO) Q ""
 S BEXVSITE=$P($G(^BEXHRXP(BEXVSITO,0)),U)
 I '$G(BEXVSITE) Q ""
 S BEXTSCA=$P($G(^BEXHRXP(BEXVSITO,0)),U,7)
 S BEXTSRA=$P($G(^BEXHRXP(BEXVSITO,0)),U,8)
 S BEXTSRP=$P($G(^BEXHRXP(BEXVSITO,0)),U,9)
 I '$G(BEXTS) S BEXTS=DT_".08"
 S BEXOTM=$E($P(BEXTS,".",2),1,4)
 I BEXOTM=0 Q ""
 I $L(BEXOTM)=1 S BEXOTM=BEXOTM_"000"
 I $L(BEXOTM)=2 S BEXOTM=BEXOTM_"00"
 I $L(BEXOTM)=3 S BEXOTM=BEXOTM_"0"
 S BEXTSP=$P(BEXTS,".")_"."_$S($G(BEXTSRP):BEXTSRP,1:2000)
 S BEXTSP=+BEXTSP
 S BEXTS=$P(BEXTS,".")_"."_$S($G(BEXTSRA):BEXTSRA,1:"08")
 S BEXTS=+BEXTS
 S BEXCLNA=$P($G(^BEXHRXP(BEXVSITO,0)),U,4)
 S BEXCLNB=$P($G(^BEXHRXP(BEXVSITO,0)),U,5)
 S BEXCUT=$P($G(^BEXHRXP(BEXVSITO,0)),U,3)
 S BEXREFO=$P($G(^BEXHRXP(BEXVSITO,0)),U,2)
 I '$G(BEXCLNA) Q ""
 I '$D(^DPT(BEXPAT,0)) Q ""
 S BEXCLNI=BEXCLNA
 S BEXPM=0
 I $G(BEXCUT),$G(BEXCLNB) D
 . I (BEXOTM>BEXCUT)!(BEXOTM<BEXTSCA) S BEXCLNI=BEXCLNB,BEXTS=BEXTSP,BEXPM=1
 I 'BEXCLNI S BEXCLNI=BEXCLNA
 I 'BEXCLNI Q ""
 I $G(BEXREFO),$P($G(^VEXHRX0(19080.1,BEXVIEN,0)),U,5)'="REFILLABLE" Q ""
 I $$PIMS53 D ADDCR(BEXCLNI,BEXPAT,BEXTS,+$G(BEXPM)),ADDDPT(BEXCLNI,BEXPAT,BEXTS)  Q "1^Chart Request Successful"  ;for PIMS 5.3
 I $$LKPT(BEXPAT,BEXCLNI,BEXTS) Q ""
 I '$D(^SC(BEXCLNI,"S",BEXTS,0)) D
 . S ^SC(BEXCLNI,"S",BEXTS,0)=BEXTS
 I '$D(^SC(BEXCLNI,"S",BEXTS,1,0)) D
 . S ^SC(BEXCLNI,"S",BEXTS,1,0)="^44.003PA^^"
 S BEXNXT=$$GNXT(BEXCLNI,BEXTS)
 S ^SC(BEXCLNI,"S",BEXTS,1,BEXNXT,0)=BEXPAT_U_U_U_"PHARMACY CHART REQUEST (TA)"
 S ^SC(BEXCLNI,"S",BEXTS,1,BEXNXT,"C")=BEXTS
 I '$D(^DPT(BEXPAT,"S",0)) D
 . S ^DPT(BEXPAT,"S",0)="^2.98^^"
 S BEXAPTP=$O(^SD(409.1,"B","COMPUTER GENERATED",0))
 S ^DPT(BEXPAT,"S",BEXTS,0)=BEXCLNI_U_U_U_U_U_U_U_U_U_U_U_U_U_U_U_$G(BEXAPTP)
 D RS(BEXPAT,BEXCLNI)
 Q "1^Chart Request Successful"
 ;
PIMS53() ;-- check for pims 5.3
 N BEXPIMS
 S BEXPIMS=$O(^DIC(9.4,"C","PIMS",0))
 I '$G(BEXPIMS) Q 0
 I $G(^DIC(9.4,BEXPIMS,"VERSION"))>5.29 Q 1
 Q 0
 ;
ADDDPT(CLN,PAT,TS) ;-- add the appointment to the patient file
 N BEXIENS,BEXERR,BEXFDA,BEXDATE,BEXNOW,BEXPATE,BEXAPTP
 S BEXAPTP=$O(^SD(409.1,"B","COMPUTER GENERATED",0))
 S BEXIENS=""
 S BEXIENS(1)=PAT
 S BEXIENS(2)=TS
 S BEXPATE=$P($G(^DPT(PAT,0)),U)
 S BEXFDA(2,BEXIENS(1)_",",.01)=BEXPATE
 S BEXFDA(2.98,"?+2,"_BEXIENS(1)_",",.01)=CLN
 S BEXFDA(2.98,"?+2,"_BEXIENS(1)_",",9.5)=BEXAPTP
 D UPDATE^DIE("","BEXFDA","BEXIENS","BEXERR(1)")
 Q:$D(BEXERR)
 Q
 ;
ADDCR(CLN,PAT,TS,PM) ;-- add a chart request and print a routing slip for pims 5.3
 Q:$D(^SC(CLN,"C",TS,1,PAT))  ;1/11/05 cmi/maw don't print if already printed for this time
 N BEXIENS,BEXERR,BEXFDA,BEXDATE,BEXNOW,BEXCLNE,BEXDEV
 S BEXIENS=""
 S BEXIENS(1)=CLN
 S BEXIENS(2)=TS
 S BEXIENS(3)=PAT
 S BEXCLNE=$P($G(^SC(CLN,0)),U)
 S BEXFDA(44,"?1,",.01)=BEXCLNE
 S BEXFDA(44.006,"?+2,?1,",.01)=TS
 S BEXFDA(44.007,"?+3,?+2,?1,",.01)=PAT
 S BEXFDA(44.007,"?+3,?+2,?1,",9999999.01)=TS
 S BEXFDA(44.007,"?+3,?+2,?1,",9999999.02)=$G(DUZ)
 S BEXFDA(44.007,"?+3,?+2,?1,",9999999.03)="Audiocare Telephone Refill"
 D UPDATE^DIE("","BEXFDA","BEXIENS","BEXERR(1)")
 Q:$D(BEXERR)
 I $G(PM) D
 . S BEXDEV=$$GET1^DIQ(90350.2,BEXVSITO,2)  ;maw for pm clinic printer
 I $G(BEXDEV)="" S BEXDEV=$$GET1^DIQ(90350.2,BEXVSITO,1)  ;maw new print parm
 Q:BEXDEV=""
 S DGQUIET=1  ;for routing slip
 D WISD^BSDROUT(PAT,$P(TS,"."),"CR",BEXDEV)
 Q
 ;
RS(DFN,CI) ;-- print a routine slip
 Q:'$P($G(^BEXHRXP(BEXVSITO,0)),U,6)  ;auto print
 S VAR="DIV^ORDER^SDX^DFN^SDREP^SDSTART^SDZHS^ASDLONG^SDZSC^SDZCV^SDPR",DGPGM="EN1^SDROUT1"  ;for routing slips
 ;S BEXDEV=$$VAL^XBDIQ1(40.8,$$DIV^ASDUT,9999999.11)  ;maw old
 S BEXDEV=$$GET1^DIQ(90350.2,BEXVSITO,1)  ;maw new print parm
 I $G(BEXDEV)="" Q
 S DIV=$P($G(^SC(CI,0)),U,15)  ;for routing slip
 S (SDZZWI,SDZCV,DGUTQND)=1
 S IOP=BEXDEV,POP=0,%ZIS="Q" D ^%ZIS Q:$G(POP)
 ;D ^%ZIS  ;for testing
 ;D EN^XBNEW("EN1^SDROUT1","SD*;DFN;DIV;IO*")
 D EN^XBNEW("Q1^DGUTQ","SD*;DFN;DG*;DIV;VAR;IO*")
 Q
 ;
LKPT(PT,CI,TM) ;-- check to see if patient has chart request already
 K BEXCRE
 S BEXIEN=0 F  S BEXIEN=$O(^SC(CI,"S",TM,1,BEXIEN)) Q:'BEXIEN  D
 . I $P($G(^SC(CI,"S",TM,1,BEXIEN,0)),U)=PT S BEXCRE=1 Q
 Q $G(BEXCRE)
 ;
GNXT(CI,TM) ;-- get next ien for clinic
 K BEXNXT
 S BEXIEN=0 F  S BEXIEN=$O(^SC(CI,"S",TM,1,BEXIEN)) Q:'BEXIEN  D
 . S BEXNXT=BEXIEN
 Q $G(BEXNXT)+1
 ;
EOJCR ;-- kill vars
 D EN^XBVK("SD")
 D EN^XBVK("BEX")
 D EN^XBVK("VSIT")
 D EN^XBVK("CLN")
 K OTM,PAT,TS,TSM,TSCA,TSCP
 Q
 ;
TSK ;EP - loop the transactiopn file and request charts
 D ^XBKVAR
 S BEXRDA=0 F  S BEXRDA=$O(^VEXHRX0(19080.1,BEXRDA)) Q:'BEXRDA  D
 . Q:$P($G(^VEXHRX0(19080.1,BEXRDA,0)),U,9)
 . S BEXCR=$$CR(BEXRDA)
 . S DIE="^VEXHRX0(19080.1,",DA=BEXRDA
 . S DR="9///Y"
 . D ^DIE
 . K DIE
 D EOJCR
 Q
 ;
IDX ;EP - reindex all x ref upon entry into menu
 W !!,"I need to update files, please stand by.."
 S DIK="^VEXHRX0(19080.1," D IXALL^DIK
 K DIK
 Q
 ;
DIE ;EP
 S DIE="^VEXHRX0(19080.1,"
 S BEXIDA=0 F  S BEXIDA=$O(^VEXHRX0(19080.1,"C",BEXIDA)) Q:BEXIDA=""  D
 . S BEXIIEN=0 F  S BEXIIEN=$O(^VEXHRX0(19080.1,"C",BEXIDA,BEXIIEN)) Q:'BEXIIEN  D
 .. S BEXIDT=$P($G(BEXIDA),".")
 .. Q:$P($G(BEXIDA),".",2)'=0
 .. S BEXNIDT=BEXIDT_".12"
 .. S BEXNIDT=+BEXNIDT
 .. S BEXEIDT=$$FMTE^XLFDT(BEXNIDT)
 .. S DA=BEXIIEN,DR="1///"_BEXEIDT
 .. D ^DIE
 .. K DR,DA
 K DIE,BEXIDA,BEXNIDT,BEXIIEN
 Q
 ;
HDR ;EP - header
 S BEXPKG="BEXR Audiocare Pharmacy Refill System"
 S BEXLOC="Location: "_$P($G(^DIC(4,DUZ(2),0)),U)
 S BEXTAB=(80-$L(BEXLOC))/2
 W !,?(80-$L(BEXPKG))/2,BEXPKG
 W !,?BEXTAB,BEXLOC
 Q
 ;
