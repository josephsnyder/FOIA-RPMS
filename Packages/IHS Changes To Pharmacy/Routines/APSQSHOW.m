APSQSHOW ;IHS/ASDS/ENM/POC/CIA/PLS - SHOW RX THAT ARE OUTSIDE (ONLY IN V MED FILE AS EVENTS) ;12-Feb-2008 16:02;SM
 ;;7.0;IHS PHARMACY MODIFICATIONS;**1006**;Sep 23, 2004
 ;S EN ="SHOW" TO SHOW ENTRIES
 ;S EN ="INVEN" TO PROCESS INTERVENTIONS
EN(EN,NVFLG) ;EP - IHS/MSC/PLS - 11/16/07 - New EP
 ; Modified - IHS/CIA/PLS - 01/14/04 - Added FMTLINE API
 Q:'$D(EN)
 S NVFLG=$G(NVFLG,0)
 K ARR
 S PSODFN=$G(PSODFN,$G(DFN,0))   ; IHS/CIA/PLS - 01/25/04
 Q:'PSODFN
 S X1=DT,X2=-365 D C^%DTC S ARREDATE=X
 ;S ERR=$$MEDS^APSPORXF(PSODFN,"ARR(",ARREDATE,DT,"E")
 ;Q:ERR
 D FAST
 D ALL
 I EN="SHOW" I $Y+5>IOSL K DIR S DIR(0)="E" D ^DIR K DIR S:$D(DUOUT) PSOQFLG=1 K DIRUT,DTOUT,DUOUT,DIROUT
 D:EN="SHOW" CLEAN1
 ;WE'LL CLEAN UP FROM PSODSPL
 K EN
 Q
ALL S ARRNUM=0 F  Q:$G(ARRNUM)=""  S ARRNUM=$O(ARR(ARRNUM)) Q:(ARRNUM="")!($G(PSOQFLG)=1)  D
 .S ARRNODE=ARR(ARRNUM)
 .S ARRDYS=$P(ARRNODE,U,9)
 .S ARRISS=$P(ARRNODE,U,3)
 .S X1=ARRISS,X2=$S(ARRDYS*2>60:ARRDYS*2,1:60) ;AT LEAST 60 DAYS OR TIMES 2 OF DYS SUPPLY
 .D C^%DTC Q:DT>X
 .S ARRDRIEN=$P(ARRNODE,U,4)
 .S ARRQTY=$P(ARRNODE,U,8)
 .S ARRDRUG=$S($P(ARRNODE,U,6)]"":"%"_$P(ARRNODE,U,6),1:$P(ARRNODE,U,5))
 .S ARRDRUG=$E(ARRDRUG,1,20)_" ["_$E($P(ARRNODE,U,11),1,10)_"]"
 .S ARRNDF=$S($G(^PSDRUG(ARRDRIEN,"ND"))]"":+^("ND")_"A"_$P(^("ND"),"^",3),1:0)
 .S ARRCLASS=$P(^PSDRUG(ARRDRIEN,0),U,2)
 .D @EN
 .Q
 Q
SHOW W !
 W ?1,"OUTSIDE RX"
 W ?13," ",$E(ARRDRUG,1,30),?49,$J(ARRQTY,3)
 W ?53,$E(ARRISS,4,5),"-",$E(ARRISS,6,7),?74,$J(ARRDYS,3)
 ;I $Y+2>IOSL K DIR S DIR(0)="E" D ^DIR K DIR S:$D(DUOUT) PSOQFLG=1 K DIRUT,DTOUT,DUOUT,DIROUT
 Q
 ;
INVEN ;
 S AZOSD(ARRDRUG)="^99^^^"_ARRCLASS_"^^"_ARRNDF_"^"_ARRDYS
 Q
CLEAN1 K EN
CLEAN D EN^XBVK("ARR")
 Q
FAST ;FASTER LOOKUP HARDCODED
 ;K ARRNUM
 ;REMEMBER THE DATES ARE IN REVERSE ORDER
 S ARRDATST=9999999-ARREDATE,ARRDA=0,ARRREVDT="" ;ARRDATST=END DATE
 F  S ARRREVDT=$O(^AUPNVMED("AA",PSODFN,ARRREVDT)) Q:ARRREVDT=""!(ARRREVDT=ARRDATST)  F  S ARRDA=$O(^AUPNVMED("AA",PSODFN,ARRREVDT,ARRDA)) Q:ARRDA=""  D
 .S ARRSTR=$G(^AUPNVMED(ARRDA,0))
 .I $G(NVFLG) Q:$P($G(^AUPNVMED(ARRDA,11)),U,8)  ; Prevent Non-VA Meds from appearing twice.
 .Q:'ARRSTR
 .S ARRVISIT=$P(ARRSTR,"^",3)
 .Q:'ARRVISIT
 .Q:$P($G(^AUPNVSIT(ARRVISIT,0)),"^",7)'="E"  ;GOT TO BE EVENT
 .S ARRDAY=+$G(^AUPNVSIT(ARRVISIT,0)),ARRDAY=$P(ARRDAY,".",1) ;DATE
 .Q:'ARRDAY
 .;THESE LINES UNCOMMENTED IF WANT TO LIMIT DRUGS SHOWING BY DAYS SUPPLY
 .S ARRDAY1=$P(ARRSTR,"^",7) ;DAYS SUPPLY
 .I ARRDAY1 S ARRDAY1=2*ARRDAY1,X1=ARRDAY,X2=ARRDAY1 D C^%DTC Q:DT>X
 .;END OF SUBROUTINE THAT LIMITS SHOWING DRUGS TO 2 X DAYS SUPPLY IHS/OKCAO/POC 6/25/98
 .;S ARRDIEN=$P(ARRSTR,"^",3)
 .S ARRDIEN=+ARRSTR
 .Q:'ARRDIEN
 .S ARRDRUG=$P($G(^PSDRUG(ARRDIEN,0)),"^",1)
 .Q:ARRDRUG=""
 .I $P(ARRSTR,"^",4)]"" S ARRDRUG="%"_$P(ARRSTR,"^",4) ;IF NON TABLE DRUG
 .S ARROUTLC=$P($G(^AUPNVSIT(ARRVISIT,21)),"^",1)
 .S ARRNUM=$G(ARRNUM)+1
 .S ARR(ARRNUM)=ARRDA_"^"_ARRVISIT_"^"_ARRDAY_"^"_ARRDIEN_"^"_ARRDRUG_"^^"_$P(ARRSTR,"^",5)_"^"_$P(ARRSTR,"^",6)_"^"_$P(ARRSTR,"^",7)_"^^"_ARROUTLC
 .Q
 Q
 ; Returns formatted list of outside Rxs in data
FMTLINES(DATA,CNT,NVFLG) ; EP  IHS/CIA/PLS - 01/15/04
 N ARR,ARRDA,ARRDATST,ARRDAY,ARRDAY1,ARRDIEN,ARRDRUG,ARREDATE
 N ARRNUM,ARROUTLC,ARRREVDT,ARRNODE,ARRDYS,ARRISS,X1,X2,ARRQTY
 N ARRSTR,ARRVISIT,ARRNDF,ARRCLASS,ARRDRIEN,NODE
 S NVFLG=$G(NVFLG,0)
 S PSODFN=$G(PSODFN,$G(DFN,0))   ; IHS/CIA/PLS - 01/25/04
 Q:'PSODFN
 S ARREDATE=$$FMADD^XLFDT(DT,-365)
 D FAST
 S ARRNUM=0 F  Q:$G(ARRNUM)=""  S ARRNUM=$O(ARR(ARRNUM)) Q:'ARRNUM  D
 .S ARRNODE=ARR(ARRNUM)
 .S ARRDYS=$P(ARRNODE,U,9)
 .S ARRISS=$P(ARRNODE,U,3)
 .Q:DT>$$FMADD^XLFDT(ARRISS,$S(ARRDYS*2>60:ARRDYS*2,1:60))   ; At least 60 days or 2x days supply
 .S ARRDRIEN=$P(ARRNODE,U,4)
 .S ARRQTY=$P(ARRNODE,U,8)
 .S ARRDRUG=$S($P(ARRNODE,U,6)]"":"%"_$P(ARRNODE,U,6),1:$P(ARRNODE,U,5))
 .S ARRDRUG=$E(ARRDRUG,1,20)_" ["_$E($P(ARRNODE,U,11),1,10)_"]"
 .S ARRNDF=$S($G(^PSDRUG(ARRDRIEN,"ND"))]"":+^("ND")_"A"_$P(^("ND"),"^",3),1:0)
 .S ARRCLASS=$P(^PSDRUG(ARRDRIEN,0),U,2)
 .S CNT=CNT+1
 .S NODE="OUTSIDE RX       "_$E(ARRDRUG,1,30)_"         "_$J(ARRQTY,3)_"    "_$E(ARRISS,4,5)
 .S NODE=NODE_"-"_$E(ARRISS,6,7)_"          "_$J(ARRDYS,4)
 .S @DATA@(CNT,0)=NODE
 Q
