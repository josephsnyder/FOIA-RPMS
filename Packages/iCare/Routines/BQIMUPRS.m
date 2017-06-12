BQIMUPRS ;VNGT/HS/ALA-Update a single provider ; 27 Apr 2011  8:28 AM
 ;;2.3;ICARE MANAGEMENT SYSTEM;**3,4**;Apr 18, 2012;Build 66
 ;
MON(BGPPROV) ;EP - Monthly CQM Process
 NEW BGPBEN,BGPRTYPE,BGP0RPTH,BGPMUT,BGPMUYF,BGPBD,BGPED,BGPTP,BGPINDT
 NEW BQTDT,BQTMN,BQIGREF,DFN,CDEN,CNUM,CEXC,NUM
 ; Current
 S BGPBEN=3
 S BGPRTYPE=4,BGP0RPTH="A",BGPMUT="P",BGPMUYF=90595.11
 S (BGPBD,BGPED,BGPTP,BGPINDT)=""
 S BGPBD=$P(^BQI(90508,1,12),U,8),BGPED=$P(^BQI(90508,1,12),U,9)
 S BQTDT=$E(BGPBD,1,5)_"00"
 S BQTMN=$O(^BQIPROV(BGPPROV,50,"B",BQTDT,""))
 I BQTMN="" D UPD(50)
 S BGPPBD="",BGPPED=""
 ; Baseline
 S BGPBBD=BGPPBD,BGPBED=BGPPED
 S BQIGREF=$NA(^TMP("BQICQM",$J)) K @BQIGREF
 D IND("E")
 I $G(DUZ(2))="" D
 . D DZ^BQITASK1 M DUZ=^XTMP("BQIRMDR","DUZ")
 D BQI^BGPMUEPD(.BQIGREF,BGPPROV)
 K CDEN,CNUM,CEXC,NUM
 S DFN=""
 F  S DFN=$O(@BQIGREF@(BGPPROV,DFN)) Q:DFN=""  D
 . S I=""
 . F  S I=$O(@BQIGREF@(BGPPROV,DFN,"C",I)) Q:I=""  D
 .. S CDEN(I)=$G(CDEN(I))+$P($G(@BQIGREF@(BGPPROV,DFN,"C",I)),U,1)
 .. S NUM=$P($G(@BQIGREF@(BGPPROV,DFN,"C",I)),U,2)
 .. I NUM>1,$$FMTE^BQIUL1(NUM)'?.N S NUM=1
 .. S CNUM(I)=$G(CNUM(I))+NUM
 .. S CEXC(I)=$G(CEXC(I))+$P($G(@BQIGREF@(BGPPROV,DFN,"C",I)),U,3)
 .. ;S ^XTMP("BQIMCQMPT",DFN,BGPPROV,BQTDT,I)=$G(@BQIGREF@(BGPPROV,DFN,"C",I))
 D STORP(50)
 K @BQIGREF
 Q
 ;
STORP(NODE) ;EP - Store data
 I '$D(@BQIGREF) Q
 ;
 S BQTMN=$O(^BQIPROV(BGPPROV,NODE,"B",BQTDT,""))
 I BQTMN="" D UPD(NODE)
 S FAC=$$HME^BQIGPUTL()
 ;
 I NODE=50 D  Q
 . S $P(^BQIPROV(BGPPROV,2),U,1)=$$NOW^XLFDT()
 . S CT=0
 . S I=0 F  S I=$O(^BGPMUIND(90596.11,I)) Q:'I  D
 .. S MSN=$P(^BGPMUIND(90596.11,I,0),U,1)
 .. I $G(^BGPMUIND(90595.11,MSN,0))="" Q
 .. I $P(^BGPMUIND(90595.11,MSN,0),U,4)="H" Q
 .. S ID=$P(^BGPMUIND(90596.11,I,0),"^",4)
 .. S CT=CT+1,^BQIPROV(BGPPROV,NODE,BQTMN,1,CT,0)=ID_U_$G(CDEN(I))_U_$G(CNUM(I))_U_$G(CEXC(I))
 .. S ^BQIPROV(BGPPROV,NODE,BQTMN,1,"B",ID,CT)=""
 .. S ^BQIPROV(BGPPROV,NODE,BQTMN,1,0)="^90505.451^"_CT_"^"_CT
 .. ;
 .. ; Set up by providers divisions
 .. NEW NODE,BQTMN
 .. S DV=0,NODE=80
 .. F  S DV=$O(^VA(200,BGPPROV,2,DV)) Q:'DV  D
 ... I $G(^BQIFAC(DV,0))="" S ^BQIFAC(DV,0)=DV,^BQIFAC("B",DV,DV)=""
 ... S FAC=DV D UPD(80)
 ... S DN=$O(^BQIFAC(DV,NODE,BQTMN,1,"B",ID,"")) I DN="" S DN=CT
 ... I $G(^BQIFAC(DV,NODE,BQTMN,1,DN,0))="" S ^BQIFAC(DV,NODE,BQTMN,1,DN,0)=ID,^BQIFAC(DV,NODE,BQTMN,1,"B",ID,DN)=""
 ... S $P(^BQIFAC(DV,NODE,BQTMN,1,DN,0),U,2)=$P($G(^BQIFAC(DV,NODE,BQTMN,1,DN,0)),U,2)+$G(CDEN(I))
 ... S $P(^BQIFAC(DV,NODE,BQTMN,1,DN,0),U,3)=$P($G(^BQIFAC(DV,NODE,BQTMN,1,DN,0)),U,3)+$G(CNUM(I))
 ... S $P(^BQIFAC(DV,NODE,BQTMN,1,DN,0),U,4)=$P($G(^BQIFAC(DV,NODE,BQTMN,1,DN,0)),U,4)+$G(CEXC(I))
 ;
 I NODE=40 D  Q
 . NEW PGLOB
 . S PGLOB=$$CURPGL^BQIMUTAB()
 . S ID="",CT=0
 . F  S ID=$O(@GLOBAL@(BGPPROV,ID)) Q:ID=""  D
 .. S IIEN=$O(@PGLOB@("B",ID,"")) I IIEN="" Q
 .. I $P(@PGLOB@(IIEN,0),"^",6)'="R" Q
 .. S CDEN=$P($G(@GLOBAL@(BGPPROV,ID,"CURR")),"^",1),CNUM=$P($G(@GLOBAL@(BGPPROV,ID,"CURR")),"^",2)
 .. S CEXC=$P($G(@GLOBAL@(BGPPROV,ID,"CURR")),"^",3)
 .. S CT=CT+1,^BQIPROV(BGPPROV,NODE,BQTMN,1,CT,0)=ID_U_CDEN_U_CNUM_U_$$CURREP^BQIMUTAB()
 .. I CEXC'="" S ^BQIPROV(BGPPROV,NODE,BQTMN,1,CT,1)=CEXC
 .. S ^BQIPROV(BGPPROV,NODE,BQTMN,1,"B",ID,CT)=""
 .. S ^BQIPROV(BGPPROV,NODE,BQTMN,1,0)="^90505.441^"_CT_"^"_CT
 .. ;
 .. ; set up by providers divisions
 .. NEW DV,DN,NODE,BQTMN
 .. S DV=0,NODE=70
 .. F  S DV=$O(^VA(200,BGPPROV,2,DV)) Q:'DV  D
 ... I $G(^BQIFAC(DV,0))="" S ^BQIFAC(DV,0)=DV,^BQIFAC("B",DV,DV)=""
 ... S FAC=DV D UPD(70)
 ... S DN=$O(^BQIFAC(DV,NODE,BQTMN,1,"B",ID,"")) I DN="" S DN=CT
 ... I $G(^BQIFAC(DV,NODE,BQTMN,1,DN,0))="" S ^BQIFAC(DV,NODE,BQTMN,1,DN,0)=ID,^BQIFAC(DV,NODE,BQTMN,1,"B",ID,DN)=""
 ... S $P(^BQIFAC(DV,NODE,BQTMN,1,DN,0),U,2)=$P($G(^BQIFAC(DV,NODE,BQTMN,1,DN,0)),U,2)+CDEN
 ... S $P(^BQIFAC(DV,NODE,BQTMN,1,DN,0),U,3)=$P($G(^BQIFAC(DV,NODE,BQTMN,1,DN,0)),U,3)+CNUM
 ... S $P(^BQIFAC(DV,NODE,BQTMN,1,DN,0),U,4)=$$CURREP^BQIMUTAB()
 ... I CEXC'="" S ^BQIFAC(DV,NODE,BQTMN,1,DN,1)=CEXC
 . NEW DIK,DA
 . S DIK="^BQIPROV(",DA=BGPPROV D IX^DIK
 Q
 ;
IND(TY) ; EP - Set indicators
 ; Input
 ;   TY = Type (H=Hospital)
 K BGPIND
 I TY'="H" D
 . S X=0 F  S X=$O(^BGPMUIND(90595.11,X)) Q:'X  I $P(^BGPMUIND(90595.11,X,0),U,4)'="H" S BGPIND(X)=""
 I TY="H" D
 . S X=0 F  S X=$O(^BGPMUIND(90595.11,X)) Q:'X  I $P(^BGPMUIND(90595.11,X,0),U,4)="H" S BGPIND(X)=""
 Q
 ;
UPD(NODE) ;EP
 NEW BEGDT,ENDT,TMFRAME,XX,V,I,ERROR,BQIUPD,BQDATE
 ;
 I NODE=50 D
 . S BEGDT=$P($G(^BQI(90508,1,12)),U,8),ENDT=$P($G(^BQI(90508,1,12)),U,9)
 . S BQDATE=$E(BEGDT,1,5)_"00"
 . I $G(^BQIPROV(BGPPROV,50,0))="" S ^BQIPROV(BGPPROV,50,0)="^90505.45D^^"
 I NODE=40 D
 . S BEGDT=$P($G(^BQI(90508,1,9)),U,1),ENDT=$P($G(^BQI(90508,1,9)),U,2)
 . S BQDATE=$E(BEGDT,1,5)_"00"
 . I $G(^BQIPROV(BGPPROV,40,0))="" S ^BQIPROV(BGPPROV,40,0)="^90505.44D^^"
 I NODE=70 D
 . S BEGDT=$P($G(^BQI(90508,1,9)),U,1),ENDT=$P($G(^BQI(90508,1,9)),U,2)
 . S BQDATE=$E(BEGDT,1,5)_"00"
 . I $G(^BQIFAC(FAC,70,0))="" S ^BQIFAC(FAC,70,0)="^90505.67D^^"
 I NODE=80 D
 . S BEGDT=$P($G(^BQI(90508,1,12)),U,8),ENDT=$P($G(^BQI(90508,1,12)),U,9)
 . S BQDATE=$E(BEGDT,1,5)_"00"
 . I $G(^BQIFAC(FAC,80,0))="" S ^BQIFAC(FAC,80,0)="^90505.68D^^"
 ;
 NEW DA,X,IENS,Y,DIC,DLAYGO
 I NODE=50 S DA(1)=BGPPROV,DIC="^BQIPROV("_DA(1)_",50,",X=BQDATE,DIC(0)="LNZ",DLAYGO=90505.45,DIC("P")=DLAYGO
 I NODE=40 S DA(1)=BGPPROV,DIC="^BQIPROV("_DA(1)_",40,",X=BQDATE,DIC(0)="LNZ",DLAYGO=90505.44,DIC("P")=DLAYGO
 I NODE=70 S DA(1)=FAC,DIC="^BQIFAC("_DA(1)_",70,",X=BQDATE,DIC(0)="LNZ",DLAYGO=90505.67,DIC("P")=DLAYGO
 I NODE=80 S DA(1)=FAC,DIC="^BQIFAC("_DA(1)_",80,",X=BQDATE,DIC(0)="LNZ",DLAYGO=90505.68,DIC("P")=DLAYGO
 D ^DIC
 S DA=+Y I DA=-1 Q
 S BQTMN=DA
 Q
 ;
PMON(BGPPROV) ;EP - Monthly Performance Process
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQI1POJB D UNWIND^%ZTER"
 ;
 ;   Set the DATE/TIME MU STARTED field
 NEW DA
 S DA=$O(^BQI(90508,0)) I 'DA Q
 S BQIUPD(90508,DA_",",8.04)=$$NOW^XLFDT()
 S BQIUPD(90508,DA_",",8.06)=1
 S BQIUPD(90508,DA_",",24.1)=$G(ZTSK)
 D FILE^DIE("","BQIUPD","ERROR")
 K BQIUPD
 ;
 ; one month period
 NEW APCMED,APCMBD,APCMRPT,APCMPBD,APCMPED,APCMTIME,APCMRPTT,BQIPROV,APCMATTE,APCMIND
 NEW APCM100R,APCM13ON,APCM2ON,APCMECHI,APCMIMME,APCMN565,APCMOFFV,APCMRCIS,APCMTRAE
 NEW APCM4D,APCMAGEB,APCMAGEE,APCMBDAT,APCMBT,APCMEDAT,APCMEP,APCMET,APCMFILN,APCMGBL
 NEW APCMH,APCMHV,APCMIC,APCMJ,APCMP,APCMSEX,APCMVALU,APCMWPP,APCMX,BEGDT,BQIGREF,BQTDT
 NEW BQTMN,CDEN,CEXC,CNUM,CT,DFN,ENDT,F,FAC,GLOBAL,ID,IIEN,LABSNO,SD,PGLOB,PROU
 ;
 S PGLOB=$$CURPGL^BQIMUTAB()
 S PROU=$$CURPRT^BQIMUTAB()
 S BEGDT=$P($G(^BQI(90508,1,9)),U,1),ENDT=$P($G(^BQI(90508,1,9)),U,2)
 S BQTDT=$E(BEGDT,1,5)_"00"
 S APCMED=ENDT,APCMBD=BEGDT,APCMRPT=1,APCMDEMO="E"
 S APCMPED=$$FMADD^XLFDT(APCMED,-30),APCMPBD=$$FMADD^XLFDT(APCMBD,-60)
 S APCMTIME=1,APCMRPTT=1
 S GLOBAL=$NA(^TMP("BQIMUP1",$J))
 ;F X="S1.010.EP","S1.013.EP","S1.014.EP","S1.015.EP","S1.018.EP","S1.020.EP","S1.024.EP","S1.025.EP" D
 ;. S BQIPROV(BGPPROV)=""
 ;. S APCMATTE(X,BGPPROV)=""
 ;gather up measures for this report
 S X=0 F  S X=$O(@PGLOB@(X)) Q:X'=+X  I $P(@PGLOB@(X,0),U,2)="E" D
 . S ID=$P(@PGLOB@(X,0),U,1)
 . I $P(@PGLOB@(X,0),U,6)'="R" Q
 . S @GLOBAL@(BGPPROV,ID,"CURR")="",@GLOBAL@(BGPPROV,ID,"PREV")="",APCMATTE(ID,BGPPROV)=""
 . S BQIPROV(BGPPROV)="",APCMIND(X)=""
 ;
 ; Check if connection to server is working
 S CONN=1
 I PGLOB="^APCM24OB" D PHRC I 'CONN D
 . NEW MN
 . S MN=$O(@PGLOB@("B","S2.026.EP",""))
 . I MN'="" K APCMIND(MN)
 ;
 I $G(DUZ(2))="" D
 . D DZ^BQITASK1 M DUZ=^XTMP("BQIRMDR","DUZ")
 ;
 S APCMWPP=1
 ;I $T(BQI^APCM11E1)'="" D BQI^APCM11E1(.GLOBAL,.BQIPROV)
 D @("BQI^"_PROU_"(.GLOBAL,.BQIPROV)")
 ;
 S BQIGREF=GLOBAL
 D STORP(40)
 K @GLOBAL
 Q
 ;
PHRC ;EP - Check if PHR is installed, if performance report is 2014
 I $T(PHR^BPHRMUPM)="" Q
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIMUPRS D UNWIND^%ZTER"
 ;
 NEW BPHRP,EXEC,RESULT,BPHRR,BDT,EDT
 S BDT=DT,EDT=DT
 K BPARRAY
 D GETS^DIQ(90670.2,"1,","**","E","BPARRAY")
 S BPHRP("URLROOT")=$G(BPARRAY(90670.2,"1,",.02,"E"))
 S BPHRP("SERVICEPATH")=$G(BPARRAY(90670.2,"1,",.11,"E"))
 S BPHRP("PORT")=$G(BPARRAY(90670.2,"1,",.03,"E"))
 S BPHRP("TIMEOUT")=$G(BPARRAY(90670.2,"1,",.05,"E"))
 S BPHRP("USER")=$G(BPARRAY(90670.2,"1,",.07,"E"))
 S BPHRP("PASS")=$G(BPARRAY(90670.2,"1,",.08,"E"))
 ; Pass Patient ICN and BDT and EDT to web service call
 S BPHRP("EUID")=$G(BPHREUID)
 ; Change BDT and EDT to appropriate dates from FileMan date
 S BPHRP("FROM")=$$DATE^BPHRMUPM(BDT)_"T00:00:00"_$$TMZ^BPHRMUPM()
 S BPHRP("TO")=$$DATE^BPHRMUPM(EDT)_"T23:59:59"_$$TMZ^BPHRMUPM()
 ;
 ; Returns data
 S EXEC="S STS=##class(BPHR.WebServiceCalls).PMQueryRequest(.BPHRP,.BPHRR)" X EXEC
 I $P($G(STS),U,1)=0,$P(STS,U,2)["ERROR" S CONN=0
 Q
 ;
ERR ;EP - Error trap
 I $ZE["<ZSOAP>" S CONN=0
 D ^%ZTER
 Q
