ABMDRDE ; IHS/ASDST/DMJ - Detailed Claim Data Display ;  
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;Original;TMD;09/21/95 12:47 PM
 ;
CLM ;
 K ABM,ABMP,ABMD,ABMM
 D MULT^ABMDEDIC
 G XIT:$D(DTOUT)!$D(DUOUT)!'$D(ABMM)
 S ABMP("PG")=0,U="^",ABMP("HEAD2")="CLAIM DATA"
 ;
ZIS W !! S %ZIS("A")="Output DEVICE: ",%ZIS="NQ" D ^%ZIS G:POP XIT
 I IO'=IO(0) D QUE,HOME^%ZIS Q
 I $D(IO("S")) S IOP=ION D ^%ZIS
 G BEGIN
QUE K IO("Q") I IO=IO(0) W !,"Cannot Queue to Screen or Slave Printer!",! G ZIS
 S ZTRTN="ENT^ABMDRDE",ZTDESC="3P BILLING CLAIM DATA DETAILED DISPLAY" F ABM="ZTRTN","ZTDESC","ABMM(" S ZTSAVE(ABM)=""
 D ^%ZTLOAD
TSK I $D(ZTSK) W !,"(Job Queued, Task Number: ",ZTSK,")"
 Q
 ;
ENT ;TaskMan Entry Point
 S ABMD("QUEON")=""
BEGIN U IO
 S ABMQUIET=1
 S ABMP("DERP OPT")=1      ;IHS/PIMC/JLG  12/16/99; Flag for other rtns
 S ABMM="" F  S ABMM=$O(ABMM(ABMM)) Q:'ABMM  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)!$D(DIROUT)
 .S ABMP("CDFN")=ABMM,ABMP("SCRN")=1,ABMP("RTN")="^ABMDE1"
 .S ABMD("CTR")=0,ABMP("DDL")=""
 .S ABMP("GL")="^ABMPCLM("_ABMP("CDFN")_","
 .S ABMP("PDFN")=$P(^ABMDCLM(DUZ(2),ABMP("CDFN"),0),U,1),ABMP("VTYP")=$P(^(0),U,7)
 .S ABMP("DERP OPT")=1      ;IHS/PIMC/JLG  1/21/00; Flag for other rtns
 .D ^ABMDEVAR
 .D SCRN^ABMDE
 .I '$D(IO("S")),'$D(ABMD("QUEON")),$E(IOST)="C",'$D(DUOUT),'$D(DTOUT),'$D(DIRUT) K DIR S DIR(0)="E" D ^DIR K DIR
 D POUT^ABMDRUTL
 I $D(IO("S")) D ^%ZISC
 ;
XIT K ABMP,ABM,ABMD,POP,ZTSK,DIRUT,DTOUT,IO("Q"),DIR,DIRUT,DIQ
 Q
