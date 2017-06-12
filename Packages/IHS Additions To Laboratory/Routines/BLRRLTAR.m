BLRRLTAR ; IHS/MSC/MKK - Reference Lab Test "Add" Routine  ; 22-Oct-2013 09:22 ; MKK
 ;;5.2;IHS LABORATORY;**1033**;NOV 1, 1997
 ;
 ; Code cloned from ADDTST^LRCE
 ;
 ; This routine will add a test to a given Accession when the incoming HL7 message from a Reference Lab
 ; has the OBX "ADDTEST" flag set.  No output.
 ;
 ; All IHS Ref Lab tests are "CH" subscripted tests (for now).
 ;
 ; NOTE: There will be no check on the LRLABKY variable.
 ;       It is assumed that the process running this routine MUST be able to add tests to an accession.
 ;
 ; LA76249 is the Message # from file 62.49
 ; BLRRLTST is the unique identifier of the test to be added (the IEN)
 ; BLRRLUID is the UID passed to this routine by the calling routine
 ;
EEP ; Ersatz EP
 D EEP^BLRGMENU
 Q
 ;
PEP ; EP 
EP ; EP
ADDTST(LA76249,BLRRLTST,BLRRLUID) ; EP
 NEW (BLRRLTST,BLRRLUID,DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,LA76249,LRDFN,LRODT,LRSN,IOXY,U,XPARSYS,XQXFLG)
 ;
 S X=$Q(^LRO(68,"C",BLRRLUID)),LRAA=+$QS(X,4),LRAD=+$QS(X,5),LRAN=+$QS(X,6)
 S ORDERNUM=+$G(^LRO(68,LRAA,1,LRAD,1,LRAN,.1))
 S LRODT=+$O(^LRO(69,"C",ORDERNUM,0)),LRSN=+$O(^LRO(69,"C",ORDERNUM,LRODT,0))
 ;
 D ^LRPARAM     ; Reset LRPARAM string
 ;
 S LRTS=BLRRLTST
 S LRURG=$$FIND1^DIC(62.05,,,"ROUTINE"),LRFLG=""
 D LRTSTSET
 Q
 ;
LRTSTSET ; EP - Code cloned from LRTSTSET
 I '($D(^LRO(68,LRAA,1,LRAD,1,LRAN,0))#2) W !?10,"Sorry  This accession "_LRAN_" No longer exist",!?10," Accession may have been deleted.",!,$C(7) G ADDTST^LRTSTJAM
 S ^LRO(68,LRAA,1,LRAD,1,LRAN,4,LRTS,0)=LRTS_"^"_LRURG,$P(^(0),U,9)=$G(LRTSP),^LRO(68,LRAA,1,LRAD,1,LRAN,4,"B",LRTS,LRTS)="",$P(^LRO(68,LRAA,1,LRAD,1,LRAN,3),U,4)=""
 S $P(^LRO(68,LRAA,1,LRAD,1,LRAN,4,0),U,3)=LRTS,$P(^(0),U,4)=$P(^(0),U,4)+1 I $P(LRPARAM,U,14),$P(^LRO(68,LRAA,0),U,16) D CAP^LRWLST12
 S LRACD=$P(^LRO(68,LRAA,1,LRAD,1,LRAN,0),"^",3),LRTSAD(1,LRTS)=""
 D EN^LA7ADL($P($G(^LRO(68,LRAA,1,LRAD,1,LRAN,.3),0),"^")) ;Check for automatic downloading
 I LRACD,LRACD'=LRAD S ^LRO(68,LRAA,1,LRACD,1,LRAN,4,LRTS,0)=LRTS_"^"_LRURG,$P(^(0),U,9)=+LRTS D
 .S ^LRO(68,LRAA,1,LRACD,1,LRAN,4,"B",LRTS,LRTS)="",$P(^LRO(68,LRAA,1,LRAD,1,LRAN,3),"^",4)="" I $P(LRPARAM,U,14),$P(^LRO(68,LRAA,0),U,16) D CAP^LRWLST12
 F  L +^LRO(69,LRODT,1,LRSN):1 Q:$T  W !?7,"Someone else is editing this order",!,$C(7) H 20
 K LRXDA,DA,DIC,DIE,DR
 S DIC="^LRO(69,"_LRODT_",1,"_LRSN_",2,",DA(2)=LRODT,DA(1)=LRSN
 S DIC(0)="LOX",DLAYGO=69,X=$P(^LAB(60,LRTS,0),"^") D ^DIC
69 ; EP
 I Y>0 D
 . S LRXDA(3)=$G(^LRO(68,LRAA,1,LRAD,1,LRAN,.3))
 . S (LRXDA,DA)=+Y,DIE=DIC,DR="1///^S X=LRURG;2///^S X=LRAD;3///^S X=LRAA;4///^S X=LRAN;8///^S X=""IP"";9///^S X=""L"""
 . I $L($P(LRXDA(3),U)) D
 . . S DR=DR_";13///^S X=$P(LRXDA(3),U)"
 . . S:$P(LRXDA(3),U,2) DR=DR_";14////^S X=$P(LRXDA(3),U,2);15////^S X=$P(LRXDA(3),U,3);16///^S X=$P(LRXDA(3),U,4);17///^S X=$P(LRXDA(3),U,5)"
 . D ^DIE
 . D:$G(LRTSP)
 . . S LRBETN=$O(^LRO(69,LRODT,1,LRSN,2,"B",LRTSP,""))
 . . I LRBETN D DADD^LRBEBA31(LRODT,LRSN,LRBETN,LRXDA,LRTS,$G(LRBERF))
 . K LRBETN,LRBERF
 I $G(LRXDA) D
 . N X,Y
 . S Y=$P($$FMTE^XLFDT($$NOW^XLFDT,"5Z"),":",1,2)
 . S X=1+$S($D(^LRO(69,LRODT,1,LRSN,2,LRXDA,1,0)):$P(^(0),"^",3),1:0),^(0)="^^"_X_"^"_DT,^(X,0)=" Added by "_$G(DUZ)_" on "_Y
 . S ^LRO(69,"AA",+$G(^LRO(69,LRODT,1,LRSN,.1)),LRODT_"|"_LRSN)=""
 . ;
 . ;
 I '$D(LRFLG) K DLAYGO,DA,DIC,DIE,DR,LRXDA L -^LRO(69,LRODT,1,LRSN) Q
SETOR ;
 I $G(LRXDA),$$VER^LR7OU1<3 D  ;OE/RR 2.5
 . I '$D(ORNATR) S ORNATR=$S($D(LRNATURE):LRNATURE,1:"") I '$D(LRNATURE) D:$P($G(^ORD(100.99,1,2)),"^",2) OT^LROR6 S LRNATURE=ORNATR
 . S X=^LRO(69,LRODT,1,LRSN,0),LRLB=$P(^(.1),"^"),X1=$S($D(^(1)):^(1),1:$P(X,"^",8)),ORVP=$P(^LR(+X,0),"^",3)_";"_$P(^DIC($P(^LR(+X,0),"^",2),0,"GL"),"^",2)
 . I ORNATR="C" S OREPDUZ=$P(X,"^",2),ORLOG=$P(X,"^",5),ORNATR=""
 . S LRORSAMP=$P(X,"^",3),LRORTYPE=$P(X,"^",4),ORNP=$P(X,"^",6),ORL=$S($L($P(X,"^",7)):$P(X,"^",7),1:"UNKNOWN")
 . S ORL=$S($O(^SC("C",ORL,0))'="":$O(^(0))_";SC(",1:""),ORSTRT=$P(X1,"^"),X=^LRO(69,LRODT,1,LRSN,2,LRXDA,0),ORIT=+X_";LAB(60,",LRORSPEC=$O(^LRO(69,LRODT,1,LRSN,4,0)),LRORSPEC=$S(LRORSPEC>0:$P(^(LRORSPEC,0),"^"),1:"")
 . S X=$S($D(LRORSAMP):$S($D(^LAB(62,+LRORSAMP,0)):$P(^(0),"^"),1:""),1:""),Y=$S($D(LRORSPEC):$S($D(^LAB(61,+LRORSPEC,0)):$P(^(0),"^"),1:""),1:"")
 . S ORTX(1)=$P(^LAB(60,+LRTS,0),"^")_$S(Y'[X!(X=Y):" "_X,1:"")_$S(X'[Y:" "_Y,1:"")
 . S ORTX(1)=ORTX(1)_" LB #"_LRLB_"    "_$S($D(LRORTYPE):LRORTYPE,1:"")_$S(LRURG=9!('LRURG):"",1:"   "_$P(^LAB(62.05,LRURG,0),"^"))
 . S ORPCL=$P(^LAB(69.9,1,1),"^",6),ORSTS=6,ORTO=$P(^LAB(60,+ORIT,0),"^",6) S:$P(^LAB(69.9,1,0),"^",9) ORPURG=$P(^(0),"^",9)
 . S ORPCL=$P(^LAB(69.9,1,1),"^",6)_";ORD(101,",ORPK=LRODT_"^"_LRSN_"^"_DA,DA=LRXDA
 . D FILE^ORX
 . S:$D(ORIFN) $P(^LRO(69,LRODT,1,LRSN,2,LRXDA,0),"^",7)=ORIFN
 . K LRLB,LRXDA,LRFLG,LRORSPEC,LRORSAMP,LRORTYPE
 N LTS S LTS(LRTS)=""
 D NEW^LR7OB1(LRODT,LRSN,"SN",$G(LRNATURE),.LTS,6)
 K DLAYGO,DA,DIC,DIE,DR,LRBERF,LRBEFN,LRBEX L -^LRO(69,LRODT,1,LRSN)
 Q
