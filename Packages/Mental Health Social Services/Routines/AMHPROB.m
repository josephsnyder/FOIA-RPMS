AMHPROB ; IHS/CMI/LAB - Display Problems and Notes ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
 ;Called from data entry templates to display problems, AMHPAT must equal the patient DFN
 Q:'$G(AMHPAT)
 W !!,"PCC Problem List for ",$P(^DPT(AMHPAT,0),U),"."
 S AMHTCVD="S:Y]"""" Y=+Y,Y=$E(Y,4,5)_""/""_$E(Y,6,7)_""/""_$E(Y,2,3)"
 S AMHTTAT="A" D COMMON S AMHTTAT="I" D COMMON
 K AMHTCVD,AMHTQ,Y
 D PROBX
 W !,"Press any key to continue" R X:DTIME
 K X
 Q
COMMON ;
 I '$D(^AUPNPROB("AC",AMHPAT)) W !,"********** No ",$S(AMHTTAT="A":"ACTIVE",1:"INACTIVE")," Problems on file for this Patient",! Q
 K AMHTDFT S AMHTNDF=0
 S AMHTFAC="" F AMHTQ=0:0 S AMHTFAC=$O(^AUPNPROB("AA",AMHPAT,AMHTFAC)) Q:'AMHTFAC  D PROBSCH
 I AMHTNDF=0 W !,"********** No ",$S(AMHTTAT="A":"ACTIVE",1:"INACTIVE")," Problems on file for this Patient",! Q
 W !!,"******************",$S(AMHTTAT="A":"  ACTIVE ",1:"  INACTIVE "),"PROBLEMS AND NOTES  ********************",!!
 S AMHTFPP="" F AMHTQ=0:0 S AMHTFPP=$O(AMHTDFT(AMHTFPP)) Q:AMHTFPP=""  S AMHTDFN=AMHTDFT(AMHTFPP) D PROBDSP
PROBX K AMHTDFT,AMHTNDF,AMHTFPP,AMHTFAC,AMHTPLN,AMHTPBN,AMHTDTM,AMHTDTN,AMHTPRB,AMHTTAT,AMHTNFP,AMHTNRQ,AMHTPNM,AMHTDFN,AMHTFCN,AMHTICD,AMHTICL,AMHTILN,AMHTN
 K AMHTNFL,AMHTNSH,AMHTNAB,AMHTVSC,AMHTITE
 Q
PROBSCH ;
 S AMHTPRB="" F AMHTQ=0:0 S AMHTPRB=$O(^AUPNPROB("AA",AMHPAT,AMHTFAC,AMHTPRB)) Q:AMHTPRB=""  S AMHTDFN=$O(^(AMHTPRB,"")) S:$P(^AUPNPROB(AMHTDFN,0),U,12)=AMHTTAT AMHTNDF=AMHTNDF+1,AMHTDFT(AMHTFAC_AMHTPRB)=AMHTDFN
 Q
PROBDSP ;
 S AMHTN=^AUPNPROB(AMHTDFN,0)
 S AMHTNRQ=$P(AMHTN,U,5)
 D GETNARR I 1
 E  S AMHTNRQ=""
 S AMHTDOO=$P(AMHTN,U,13) I AMHTDOO]"" S Y=AMHTDOO X AMHTCVD S AMHTDOO=Y
 S AMHTITE=$P(AMHTN,U,6)
 D GETSITE
 S AMHTPNM=$P(AMHTN,U,7)
 S AMHTPNM=AMHTNAB_AMHTPNM
 S Y=$P(AMHTN,U,3) X AMHTCVD S AMHTDTM=Y
 S Y=$P(AMHTN,U,8) X AMHTCVD S AMHTDTN=Y
 S AMHTPLN=AMHTPNM_$E("         ",1,12-$L(AMHTPNM))_AMHTDTM
 W AMHTPLN S AMHTICL=22,AMHTILN=56 D PRTICD
 D NOTEDSP
 Q
NOTEDSP ; DISPLAY NOTES UNDER PROBLEM
 S AMHTNFP=0 F AMHTQ=0:0 S AMHTNFP=$O(^AUPNPROB(AMHTDFN,11,AMHTNFP)) Q:'AMHTNFP  D DSPFACN
 Q
DSPFACN ; DISPLAY NOTES FOR SELECTED FACILITY
 Q:$D(^AUPNPROB(AMHTDFN,11,AMHTNFP,11,0))'=1
 Q:$O(^AUPNPROB(AMHTDFN,11,AMHTNFP,11,0))=""
 S AMHTITE=^AUPNPROB(AMHTDFN,11,AMHTNFP,0) D GETSITE S AMHTFCN=AMHTNAB
 S AMHTNDF=0 F AMHTQ=0:0 S AMHTNDF=$O(^AUPNPROB(AMHTDFN,11,AMHTNFP,11,AMHTNDF)) Q:'AMHTNDF  D DSPN ; ACC
 Q
DSPN ; DISPLAY SINGLE NOTE
 S AMHTN=^AUPNPROB(AMHTDFN,11,AMHTNFP,11,AMHTNDF,0)
 Q:$P(AMHTN,U,4)="I"
 F AMHTQ=0:0 Q:$E(AMHTFCN)'=" "  S AMHTFCN=$E(AMHTFCN,2,99)
 S AMHTDOI=$P(AMHTN,U,5) I AMHTDOI]"" S Y=AMHTDOI X AMHTCVD S AMHTDOI=Y
 W AMHTPNM,AMHTFCN,$P(AMHTN,U),?12,AMHTDOI,?24,$P(AMHTN,U,3),!
 K AMHTDOI
 Q
 ;
PRTICD ;
 S:AMHTNRQ="" AMHTNRQ="<no narrative provided>" S AMHTICD=""
 S AMHTTXT=AMHTICD D PRTTXT
 Q
 ;
PRTTXT ; GENERALIZED TEXT PRINTER
 S AMHTDLT=1,AMHTILN=80-AMHTICL-1
 I AMHTDOO]"" S AMHTNRQ=AMHTNRQ_"  (ONSET: "_AMHTDOO_")"
 F AMHTQ=0:0 S:AMHTNRQ]""&(($L(AMHTNRQ)+$L(AMHTTXT)+2)<255) AMHTTXT=$S(AMHTTXT]"":AMHTTXT_"; ",1:"")_AMHTNRQ,AMHTNRQ="" Q:AMHTTXT=""  D PRTTXT2
 K AMHTILN,AMHTDLT,AMHTF,AMHTC,AMHTTXT,AMHTDOO
 Q
PRTTXT2 D GETFRAG W ?AMHTICL W AMHTF,! S AMHTICL=AMHTICL+AMHTDLT,AMHTILN=AMHTILN-AMHTDLT,AMHTDLT=0
 Q
GETFRAG I $L(AMHTTXT)<AMHTILN S AMHTF=AMHTTXT,AMHTTXT="" Q
 F AMHTC=AMHTILN:-1:1 Q:$E(AMHTTXT,AMHTC)=" "
 S AMHTF=$E(AMHTTXT,1,AMHTC-1),AMHTTXT=$E(AMHTTXT,AMHTC+1,255)
 Q
 ;
GETNARR ;
 I AMHTNRQ]"" S AMHTNRQ=$S($D(^AUTNPOV(AMHTNRQ)):$P(^AUTNPOV(AMHTNRQ,0),U),1:"***** "_AMHTNRQ_" *****")
 E  S AMHTNRQ=""
 Q
 ;
GETSITE ;
 S:AMHTITE="" AMHTITE="null"
 S %=$G(^AUTTLOC(AMHTITE,0))
 S AMHTNFL=$P(%,U),AMHTNFL=$S($D(^DIC(4,AMHTITE,0)):$P(^(0),U),1:"<"_AMHTITE_">")
 S AMHTNSH=$P(%,U,2) I AMHTNSH="" S AMHTNSH="<"_AMHTITE_">"
 S AMHTNAB=$J($P(%,U,7),4) I AMHTNAB="" S AMHTNAB="<"_AMHTITE_">"
 Q
