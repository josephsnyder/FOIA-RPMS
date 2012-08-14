PSGOE1 ;BIR/CML3-ACTION ON INPATIENT ORDERS ;10 Mar 99 / 10:54 AM
 ;;5.0; INPATIENT MEDICATIONS ;**7,19,26,39,58,85,80**;16 DEC 97
 ;
 ; Reference to ^PS(55 is supported by DBIA #2191.
 ; Reference to ^PSDRUG( is supported by DBIA #2192.
 ; Reference to EN1^ORCFLAG is supported by DBIA #3620.
EN ;       
 K PSGDFLG,PSGPFLG S PSGOEA="^",PSGACT="",(PSGDI,PSGOENG,PSGPI,PSGRRF)=0
 Q:'$G(DUZ)
 D @$S(PSGORD["P":"NON",1:"ACT")
GO ;
 K A,ND,PSGE,PSGR,ST,X,X1,X2,Y I $D(ORACTION) K PSGDI,PSGOENG,PSGPI Q
 ;W:$G(PSGPFLG) !!?3,"(THE ORDERABLE ITEM IS CURRENTLY LISTED AS INACTIVE.)" W:$G(PSGDFLG) !!?3,"(ONE OR ALL DISPENSE DRUGS ARE CURRENTLY LISTED AS INACTIVE OR DO NOT MATCH",!?3,"THE ORDERABLE ITEM FOR THIS ORDER.)"
 ;I $G(PSGPFLG)!$G(PSGDFLG) K DIR S DIR(0)="E" D ^DIR K DIR
 ;S PSGCANFL=0 ;F  D ACTO W !!,"ACTION"_$S(PSGACTO]"":" ("_PSGACTO_")",1:"")_"? " R PSGOEA:DTIME W:'$T $C(7) S:'$T PSGOEA="^" Q:"^"[PSGOEA  D CHK D:C @PSGOEA Q:PSGCANFL
 Q
ENACTION(PSGP,PSGORD)        ;
 ;Returns string identifying the actions allowed on this order.
 D EN
 Q PSGACT
 ;I PSGCANFL<0 D EN2^PSGVW Q PSGACT
DONE ;
 I PSGORD["U"!(PSGORD["O") L -^PS(55,PSGP,5,+PSGORD)
 E  L -^PS(53.1,+PSGORD)
 K C,PSGACT,PSGDFLG,PSGPFLG,PSGDI,PSGOENG,PSGPI,PSGRRF Q
B ; bypass
 S PSGCANFL=1
 Q
C ; copy an order (does NOT discontinue original order)
 D ^PSGOD Q
D ; discontinue (or delete) an order
 I PSGOEAV,'$D(PSGODF) D ENDS^PSGPO Q
 D ENO^PSGOEC(PSGP,PSGORD) Q
E ; edit orders
 D ^PSGOEE Q
F ; finish released orders
 D ^PSGOEF Q
H(PSGP,PSGORD) ; hold
 S X=$G(^PS(55,PSGP,5,+PSGORD,4)) I $P(X,U,12),$P(X,U,13) W $C(7),!!,"WARNING!  THIS ORDER HAS BEEN MARKED FOR CANCELLATION."
 I $P($G(^PS(55,PSGP,5,+PSGORD,0)),"^",9)="H" D ^PSGOEH0 Q
 D ^PSGOEH1 Q
I ; mark (or unmark) a non-verified order as 'incomplete'
 D ^PSGOEI Q
L ; display logs
 D ^PSGOEL Q
N ; mark order as 'not to be given'
 D ^PSGOENG Q
O ; Outpatient (discharge) med
 W !!,"UNDER DEVELOPMENT, NOT CURRENTLY AVAILABLE."
 Q
P ; print expanded view
 D ^PSGVWP Q
R ; renew an order
 I 'PSJSYSU,$D(^PS(55,PSGP,5,+PSGORD,4)),$P(^(4),"^",15),$P(^(4),"^",16) W !!,"THIS ORDER IS ALREADY MARKED FOR RENEWAL!" Q
 I 'PSGRRF D ^PSGOER Q
 D ^PSGOERI Q
S ; show the order again
 D EN2^PSGVW Q
V ; verify an order
 D EN^PSGOEV Q
ACT ;
 S X=$G(^PS(55,PSGP,5,+PSGORD,0)),ND=$G(^(4)),ND2=$G(^(2)),PSGOENG=$P(X,"^",22),PSGR=$E("R",'PSGOENG)
 I $P(ND2,U,4)'>PSGDT D OLD Q
 S PSGE="E" I '$D(PSGOETOF) S (PSGDFLG,PSGDI)='$$DDOK^PSGOE2("^PS(55,"_PSGP_",5,"_+PSGORD_",1,",+$G(^PS(55,PSGP,5,+PSGORD,.2))),PSGPFLG='$$OIOK^PSGOE2(+$G(^PS(55,PSGP,5,+PSGORD,.2)))
 S:$P(X,"^",26) (PSGE,PSGR)=""
 I '$D(PSGOETOF) S PSGPI=$P(X,"^",2) I PSGPI S PSGPI=$P($G(^VA(200,PSGPI,"PS")),"^",4) S:PSGPI PSGPI=PSGPI'>DT
 S ST=$P(X,"^",9)="H"*4 S:ST (PSGE,PSGR)=""
 S PSGACT="D"_PSGE_$S($P(ND,"^",18+ST)&'$P(ND,"^",19+ST)&'$P(ND,"^",PSJSYSU):"",1:"H")_"L"_$S(ST:"",1:PSGR)
 I PSJSYSU,'$P(ND,"^",+PSJSYSU) S PSGACT=PSGACT_"V"
 I +PSJSYSU=3,$L($T(EN1^ORCFLAG)) S PSGACT=PSGACT_"G"
 Q
OLD ;
 S A=$P(X,"^",9),PSGACT=$E("H",A="H")_"L" I A'["D",A'["E" Q
 I 'PSGOENG,($D(^XUSEC("PSJU MGR",DUZ))!$D(^XUSEC("PSJ RPHARM",DUZ))) S PSGACT="LN"
 I PSJSYSU,'$P(ND,"^",+PSJSYSU) S:(A'["D")&(PSGPRIO'="DONE") PSGACT="D"_PSGACT S PSGACT=PSGACT_"V" Q
 Q:PSGR=""!'PSJPCAF  D NOW^%DTC S (PSGDT,X1)=+$E(%,1,12),X2=-4 D C^%DTC I $S('$P(ND2,"^",4):1,1:$P(ND2,"^",4)'>X) Q
 I A="E",$G(PSJPRI)'="D" S PSGACT=PSGACT_PSGR Q
 I PSJSYSU,$P(ND,"^",11) S PSGACT=PSGACT_PSGR,PSGRRF=1
 Q
NON ;
 S X=$G(^PS(53.1,+PSGORD,0)) I $P(X,"^",19),$D(^PS(55,PSGP,5,$P(X,"^",19))) L -^PS(53.1,+PSGORD) S PSGORD=$P(X,"^",19)_"U" G ACT
 I $S($P(X,"^",26):1,$P(X,"^",9)["D":1,1:$P(X,"^",9)["E") S:$P(X,U,9)="P"&($P(X,U,26)) PSGACT="D" S:(+PSJSYSU=3)&($L($T(EN1^ORCFLAG))) PSGACT=PSGACT_"G" Q
 I PSGORD["U" S PSGACT="DE" S:(+PSJSYSU=3)&($L($T(EN1^ORCFLAG))) PSGACT=PSGACT_"G" Q
 I '$D(PSGOETOF) S (PSGDFLG,PSGDI)='$$DDOK^PSGOE2("^PS(53.1,"_+PSGORD_",1,",+$G(^PS(53.1,+PSGORD,.2))),PSGPFLG='$$OIOK^PSGOE2(+$G(^PS(53.1,+PSGORD,.2)))
 S DRG=$$STUFFDD^PSGOE2 S:DRG ^PS(53.1,+PSGORD,1,0)="^53.11P^1^1",^PS(53.1,+PSGORD,1,1,0)=DRG,^PS(53.1,+PSGORD,1,"B",DRG,1)=""
 F DRG=0:0 S DRG=$O(^PS(53.1,+PSGORD,1,DRG)) Q:'DRG  S DRGPT=^(DRG,0) S INACTDT=$G(^PSDRUG(+DRGPT,"I")) I INACTDT,(INACTDT'>DT) S PSGDFLG=1
 I $P(X,U,9)="P" S PSGACT=$S(+PSJSYSU=3:"BDEF",$G(PSJRNF):"BDEF",1:"") S:(+PSJSYSU=3)&($L($T(EN1^ORCFLAG))) PSGACT=PSGACT_"G" Q
 I '$D(PSGOETOF) S PSGPI=$P(X,"^",2) I PSGPI S PSGPI=$P($G(^VA(200,PSGPI,"PS")),"^",4) S:PSGPI PSGPI=PSGPI'>DT
 S PSGACT="DEI" I PSJSYSU,'PSGPI,$P(X,"^",9)'="I" S PSGACT=PSGACT_"V"
 ;* S PSGACT="DEI" I PSJSYSU,'PSGDI,'PSGPI,$P(X,"^",9)'="I" S PSGACT=PSGACT_"V"
 I +PSJSYSU=3,$L($T(EN1^ORCFLAG)) S PSGACT=PSGACT_"G"
 I $P($G(PSGRDTX),U,2)]"",'$D(^PS(53.1,+PSGORD,2.5)) S $P(^PS(53.1,+PSGORD,2.5),U,2)=$P(PSGRDTX,U,2)
 Q
ACTO ;
 S PSGACTO="" I $G(PSGACT)]"" F X=1:1:$L(PSGACT) S PSGACTO=PSGACTO_$S($E(PSGACT,X)="D":"DC",1:$E(PSGACT,X))_" "
 S:PSGACTO]"" PSGACTO=$E(PSGACTO,1,$L(PSGACTO)-1) Q