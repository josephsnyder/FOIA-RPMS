PSJLMPRI ;BIR/MLM-INPATIENT LISTMAN IV PROFILE UTILITIES ;01 JUL 96 / 2:24 PM
 ;;5.0; INPATIENT MEDICATIONS ;**58,85,118**;16 DEC 97
 ;
 ; Reference to ^PS(55 is supported by DBIA 2191.
 ;
PIV(DFN,ON,PSJF,DN)       ;Setup LM display for IV order. 
 N DRG,ON55,P,PSJORIFN,TYP,V,X,Y,PSJFLAG S TYP="?" I ON["V" D
 .S Y=$G(^PS(55,DFN,"IV",+ON,0)) F X=2,3,4,5,8,9,17,23 S P(X)=$P(Y,U,X)
 .S TYP=$$ONE^PSJBCMA(DFN,ON,P(9),P(2),P(3)) I TYP'="O" S TYP="C"
 .S ON55=ON,P("OT")=$S(P(4)="A":"F",P(4)="H":"H",1:"I") D GTDRG^PSIVORFB,GTOT^PSIVUTL(P(4))
 .S P("PRY")=$P($G(^PS(55,DFN,"IV",+ON,.2)),U,4),PSJFLAG=$P($G(^(.2)),U,7)
 .S ND4=$G(^PS(55,DFN,"IV",+ON,4)),V=$S(P("PRY")="D":"d",1:" ")_$S((+PSJSYSU=1&'+$P(ND4,U)):"->",(+PSJSYSU=3&'+$P(ND4,U,4)):"->",1:"")
 .S PSJL=$$SETSTR^VALM1(V,PSJL,6,3)
 I ON'["V" S (P(2),P(3))="",P(17)=$P($G(^PS(53.1,+ON,0)),U,9),Y=$G(^(8)),P(4)=$P(Y,U),P(8)=$P(Y,U,5),P(9)=$P($G(^(2)),U),PSJFLAG=$P($G(^(.2)),U,7) D GTDRG^PSIVORFA,GTOT^PSIVUTL(P(4)) I $E(P("OT"))'="F",P(4)'="H" D PUD^PSJLMPRU(DFN,ON,PSJF,DN) Q
 I PSJFLAG D CNTRL^VALM10(PSJLN,1,4,IORVON,IORVOFF,0)
 NEW PSJIVFLG S PSJIVFLG=1
 S DRG=+$O(DRG("AD",0)) D:DRG PIVAD F  S DRG=$O(DRG("AD",DRG)) Q:'DRG  S PSJL="" D PIVAD
SOL ;
 S PSJL=$S($G(PSJIVFLG):PSJL_$S(ON["V":"in",1:"    in"),1:"        in")
 NEW DRGX,NAME
 S DRG=0 F  S DRG=+$O(DRG("SOL",DRG)) Q:'DRG  D NAME^PSIVUTL(DRG("SOL",DRG),39,.NAME,0) S DRGX=0 F  S DRGX=$O(NAME(DRGX)) Q:'DRGX  S PSJL=$$SETSTR^VALM1(NAME(DRGX),PSJL,12,60) D:$G(PSJIVFLG) PIV1 D SETTMP S PSJL="      "
 ;S DRG=0 F  S DRG=+$O(DRG("SOL",DRG)) Q:'DRG  D NAME^PSIVUTL(DRG("SOL",DRG),39,.NAME,0) S DRGX=0 F  S DRGX=$O(NAME(DRGX)) Q:'DRGX  S PSJL=$$SETSTR^VALM1(NAME(DRGX),PSJL,12,60) D:'$G(PSJIVFLG) SETTMP D:$G(PSJIVFLG) PIV1 S PSJL="      "
 Q
PIVAD ; Print IV Additives.
 NEW NAME
 D NAME^PSIVUTL(DRG("AD",DRG),39,.NAME,1)
 I $D(NAME(2)) S PSJL=$$SETSTR^VALM1(NAME(1),PSJL,9,60) D:$G(PSJIVFLG) PIV1 D SETTMP S PSJL="",PSJL=$$SETSTR^VALM1(NAME(2),PSJL,9,60) D SETTMP
 I '$D(NAME(2)) S PSJL=$$SETSTR^VALM1(NAME(1),PSJL,9,60) D:$G(PSJIVFLG) PIV1 D SETTMP
 Q
 ;
PIV1 ; Print Sched type, start/stop dates, and status.
 K PSJIVFLG
 F X=2,3 S P(X)=$E($$ENDTC^PSGMI(P(X)),1,$S($D(PSJEXTP):8,1:5))
 I '$D(PSJEXTP) S PSJL=$$SETSTR^VALM1(TYP,PSJL,50,1),PSJL=$$SETSTR^VALM1(P(2),PSJL,53,7),PSJL=$$SETSTR^VALM1(P(3),PSJL,60,7),PSJL=$$SETSTR^VALM1(P(17),PSJL,67,1)
 E  S PSJL=$$SETSTR^VALM1(TYP,PSJL,50,1),PSJL=$$SETSTR^VALM1(P(2),53,7),PSJL=$$SETSTR^VALM1(P(3),PSJL,63,7),PSJL=$$SETSTR^VALM1(P(17),PSJL,73,1)
 ;* D SETTMP
 Q
SETTMP ;
 S ^TMP($S($G(PSIVLBNM)]"":PSIVLBNM,1:"PSJPRO"),$J,PSJLN,0)=PSJL,PSJLN=PSJLN+1
 Q
