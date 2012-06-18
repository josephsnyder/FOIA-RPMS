PSGOES ;BIR/CML3-CREATE ORDERS USING ORDER SET ;19 Feb 99 / 12:53 PM
 ;;5.0; INPATIENT MEDICATIONS ;**12,22,30,34,50,58**;16 DEC 97
 ;
 ; Reference to ^PS(50.7 is supported by DBIA 2180.
 ; Reference to ^PS(55 is supported by DBIA 2191.
 ; Reference to ^PSDRUG is supported by DBIA 2192.
 ; Reference to ^VA(200 is supported by DBIA 10060.
 ; Reference to NOW^%DTC is supported by DBIA 10000.
 ; Reference to ^DIC is supported by DBIA 10006.
 ;
 K DIC,PSGOEOS S X=$P(X,"S.",2),DIC="^PS(53.2,",DIC(0)="QEM" D ^DIC K DIC G:Y'>0 DONE W "  (ORDER SET)" S PSGOESDA=+Y,PSGOES=1
 I '$D(^PS(53.2,+Y,2)) W "    Invalid Order Set" Q
 I $P(PSJSYSU,";",2) S PSGOESPR=DUZ
 E  D  G:Y'>0 DONE
 .S DIC="^VA(200,",DIC(0)="QEAM",DIC("A")="Select PROVIDER: ",X=$P($G(^PS(55,PSGP,5.1)),"^",2) I X S X=$P($G(^VA(200,X,0)),"^") I X]"" S Y=^("PS") I Y,$S('$P(Y,"^",4):1,1:$P(Y,"^",4)>DT) S DIC("B")=X
 .S DIC("S")="S X(1)=$G(^(""PS"")) I X(1),$S('$P(X(1),""^"",4):1,1:$P(X(1),""^"",4)>DT)" W ! D ^DIC K DIC I Y'>0 W $C(7),!!,"Provider is required for order sets." Q
 .S PSGOESPR=+Y S:$P($G(^PS(55,PSGP,5.1)),"^",2)'=+Y $P(^(5.1),"^",2)=+Y
 S PSJNOO=$$ENNOO^PSJUTL5("N")
 I $G(PSJNOO)<0 W !,$C(7),"...order set not entered..." G DONE
 F PSGOESN=0:0 S PSGOESN=$O(^PS(53.2,PSGOESDA,2,PSGOESN)) Q:'PSGOESN  I $D(^(PSGOESN,0)) S OSND=^(0) I $S($P(OSND,"^",3)="":0,$P(OSND,"^",4)="":0,$P(OSND,"^",4)="OC":1,1:$P(OSND,"^",5)]"") S PSGSI=$P($G(^(1)),"^") D GND Q:PSGQUIT
 ;
DONE ;
 K PSJNOON,PSJNOO
 S X="S.X" K %DT,N,OSND,PSGOESDA,PSGDDRG,PSGOESI,PSGOES,PSGOEOS,PSGOESN,PSGOESPR,PSGQUIT,PSGX,SDT,STDAY,X1,X2 Q
 ;
GND ;
 K PSGOEE,PSGSCH
 S (PSGPDRG,PSGX)=+OSND,PSGPDRGN=$P($G(^PS(50.7,PSGPDRG,0)),"^") S:PSGPDRGN="" PSGPDRGN=PSGPDRG W !!,"...entering ",$S(PSGPDRGN'=PSGPDRG:PSGPDRGN,1:"** UNKNOWN **"),"..." K Y,DIRUT D END^PSGSICHK S PSGQUIT=$D(DIRUT) Q:$G(Y)<0
 S PSGNEDFD=$P(OSND,"^",2,5),PSGMR=$P(OSND,"^",3),PSGST=$P(OSND,"^",4),PSGDO=$P(OSND,"^",9),PSGMRN=$$ENMRN^PSGMI(PSGMR)
 S:PSGMRN="" PSGMRN=PSGMR D NOW^%DTC S PSGDT=+$E(%,1,12) I PSGST="OC" S PSGSCH="ON CALL",(PSGS0XT,PSGS0Y)=""
 E  S X=$P(OSND,"^",5) W "." D ENOS^PSGS0 S:$D(X) PSGSCH=X I '$D(X) S (PSGSCH,PSGS0XT,PSGS0Y)=""
 S (PSGNESD,PSGNEFD)="" W "." I $P(OSND,"^",11)]"" S %DT="T",X=$P(OSND,"^",11) D ^%DT S PSGNESD=Y D ENFD^PSGNE3(PSGDT)
 D:$P(OSND,"^",11)="" ^PSGNE3 K PSGDRG,PSGORQF,^PS(53.45,PSJSYSP,1),^(2) S (N,Q)=0
 F  S Q=$O(^PS(53.2,PSGOESDA,2,PSGOESN,2,Q)) Q:'Q!$D(PSGORQF)  S PSGDRG=$G(^(Q,0)) I PSGDRG D
 .D ENDDC^PSGSICHK(PSGP,+PSGDRG) Q:$D(PSGORQF)
 .S:$P(PSGDRG,U,2)="" $P(PSGDRG,U,2)=1
 .S N=N+1,^PS(53.45,PSJSYSP,2,N,0)=PSGDRG,^PS(53.45,PSJSYSP,2,"B",+PSGDRG,N)="" W "."
 .I $P(^PSDRUG(+PSGDRG,2),U,3)'["U"!($S('+$G(^PSDRUG(+PSGDRG,"I")):0,^("I")'>DT:1,1:0)) S PSGOEAV="0^1" W:PSJSYSU $C(7),!?5,"...AS NON-VERIFIED - DATA INCOMPLETE..."
 I N S ^PS(53.45,PSJSYSP,2,0)="^53.4502P^"_N_"^"_N
 I $D(PSGORQF) W !,?5,"...ORDER FOR ",PSGPDRGN," NOT ENTERED...",! Q
 ;I PSGOEAV,$S($D(PSGOEOS):1,'PSGPDRG:1,PSGPDRG=PSGPDRGN:1,'PSGMR:1,PSGMR=PSGMRN:1,PSGSCH="":1,PSGST="":1,'PSGNESD:1,'PSGNEFD:1,+PSJSYSU=3:'N,1:0) S PSGOEAV="0^1" W:('$D(PSGOEOS)&PSJSYSU) $C(7),!?5,"...AS NON-VERIFIED - DATA INCOMPLETE..."
 I PSGOEAV,$S('PSGPDRG:1,PSGPDRG=PSGPDRGN:1,'PSGMR:1,PSGMR=PSGMRN:1,PSGSCH="":1,PSGST="":1,'PSGNESD:1,'PSGNEFD:1,+PSJSYSU=3:'N,1:0) S PSGOEAV="0^1" W:('$D(PSGOES)&PSJSYSU) $C(7),!?5,"...AS NON-VERIFIED - DATA INCOMPLETE..."
 S (PSGHSM,PSGSM)="",PSGPR=PSGOESPR D ^PSGOETO S PSGOEAV=$P(PSJSYSP0,"^",9)&PSJSYSU
 ; pharmacist label check, build label for order set only if auto verify turned on
 I PSJSYSL>0,(PSGOEAV),($P($G(^PS(55,PSGP,5,$S($D(DA):DA,1:+PSGORD),0)),U,9)="A") D
 .S $P(^PS(55,PSGP,5,$S($D(DA):DA,1:+PSGORD),7),U)=PSGDT S:$P(^(7),U,2)="" $P(^(7),U,2)="N" S PSGTOL=2,PSGUOW=DUZ,PSGTOO=1,DA=+PSGORD D ENL^PSGVDS
 ; ward clerk label check 
 I PSJSYSL>0,$P(PSJSYSU,";",3)<3,"12"[$P(PSJSYSW0,"^",12),'(PSGOEAV) D
 .I PSGORD["P" S $P(^PS(53.1,$S($D(DA):DA,1:+PSGORD),7),U)=PSGDT S:$P(^(7),U,2)="" $P(^(7),U,2)="N"
 .I PSGORD'["P" S $P(^PS(55,PSGP,5,$S($D(DA):DA,1:+PSGORD),7),U)=PSGDT S:$P(^(7),U,2)="" $P(^(7),U,2)="N"
 .S PSGTOL=2,PSGUOW=DUZ,PSGTOO=2,DA=+PSGORD D ENL^PSGVDS
 Q
