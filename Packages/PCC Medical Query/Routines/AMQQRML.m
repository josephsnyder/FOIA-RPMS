AMQQRML ; IHS/CMI/THL - MAILING LABEL GENERATOR ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;-----
VAR K AMQQQUIT,AMQQLJB
RUN D EXIT
 F AMQQL("RUN")=1:1 S %=$P("FORMAT^TEST^SET",U,AMQQL("RUN")) Q:%=""  D @% Q:$D(AMQQQUIT)
EXIT K AMQQLHO,AMQQLLM,AMQQLTF,AMQQLLC,AMQQLLN,AMQQLCF,AMQQL,AMQQLDA,I,%
 Q
 ;
FORMAT W @IOF,!!,?15,"*****  ADDRESS LABEL UTILITY  *****",!!
 S DA(1)=DUZ(2)
 S X=$O(^AMQQ(8,DA(1),2,0))
 I X S X=+$G(^AMQQ(8,DA(1),2,X,0)) S:X X=$P($G(^%ZIS(1,X,0)),U)
 S DIC="^AMQQ(8,"_DA(1)_",2,"
 S DIC(0)="AEMQZ"
 S DIC("A")="Select LABEL PRINTING DEVICE: "
 S:X]"" DIC("B")=X
 D ^DIC
 I +Y<1 S AMQQQUIT="" Q
 K AMQQQUIT
 S (DA,AMQQLLP)=+Y
 S DA(1)=DUZ(2)
 S:'$D(^AMQQ(8,DA(1),2)) ^(2,0)="^9009078.02P^^"
 S DIE="^AMQQ(8,"_DA(1)_",2,"
 S DR=".06;.02;.03;.04;.05"
 D ^DIE
 S AMQQLTOP=$P($G(^AMQQ(8,DA(1),2,DA,0)),U,6)
 K DIE,DA,DR,DIC,D,D0,DI,DQ,D1
 I $D(DUOUT)!($D(DTOUT))!('$G(AMQQLLP)) S AMQQRERF="" D OUT Q
 S %=+$G(^AMQQ(8,DUZ(2),2,AMQQLLP,0))
 I '% D OUT Q
 I $G(^%ZIS(1,%,0))="" D OUT Q
 S AMQQLDA=AMQQLLP
 S AMQQLLP=%
 W !!
 Q
 ;
TEST W "Want to do a test print"
 S %=1
 D YN^DICN
 I $D(DUOUT)!($D(DTOUT))!($E(%Y)=U) Q
 S AMQQL("RUN")=2
 I "Yy"[$E(%Y) S AMQQLTF="" Q
 K AMQQLTF
 Q
 ;
OUT K DUOUT,DTOUT,POP S AMQQQUIT=""
 W !!,"Query terminated...",*7,!! H 2
 Q
 ;
SET I $D(AMQQLTF) G SET1
 S %=+^%ZIS(1,AMQQLLP,"SUBTYPE")
 S %=$P(^%ZIS(2,%,0),U)
 I %'["P-" G SET1
 W !!,"Want to run this print job in the background"
 S %=1
 D YN^DICN
 I $D(DUOUT)!($D(DTOUT))!($E(%Y)=U) D OUT Q
 I "Yy"[$E(%Y) S AMQQLJB=""
SET1 ;
 S %=^AMQQ(8,DUZ(2),2,AMQQLDA,0)
 F X=1:1:5 S @("AMQQL"_$P("LP^HO^CW^RH^LL",U,X))=$P(%,U,X)
 S %=AMQQLHO
 F X=1:1:(AMQQLLL-1) S %=%_U_(AMQQLHO+(AMQQLCW*X))
 S AMQQLHT=%
 S AMQQLBC=0
 S AMQQLGR="^UTILITY(""AMQQ"",$J,""LABEL"")"
 I $D(AMQQLTF) D
 .W !
 .S:$G(AMQQLLP) AMQQLPTR=$P(^%ZIS(1,AMQQLLP,0),U)
 .S:$D(AMQQLPTR) %ZIS("B")=AMQQLPTR
 .D ^%ZIS
 .Q:POP
 .U IO D EXAMPLE
 .K %ZIS("B")
PRINT S AMQQRMFL="OUTPUT^AMQQRML"
 Q
 ;
EXAMPLE W @IOF
 N X,Y,Z
 F X=1:1:AMQQLTOP W !
 F AMQQLTF=1:1:(AMQQLLL*3) S %="JOHN SMITH^1234 S. MAIN ST. XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX^^^TUCSON^3^85745" D OUTPUT
 D ^%ZISC
 W !,"Want to reset label settings"
 S %=1
 D YN^DICN
 I $D(DUOUT)!($D(DTOUT))!($E(%Y)=U) D OUT Q
 I "Yy"[$E(%Y) S AMQQL("RUN")=0 Q
 K AMQQLTF
 S AMQQL("RUN")=2
 Q
 ;
OUTPUT I $D(AMQQLTF) G S1
 I 'AMQP(0) Q
 I '$D(^DPT(AMQP(0),.11)) Q
 S %=^DPT(AMQP(0),.11)
 S Z=$P(^DPT(AMQP(0),0),U)
 S Z=$P(Z,",",2,9)_" "_$P(Z,",")
 S %=Z_U_%
S1 S Y=0
 S AMQQLLN=0
 S AMQQLBC=AMQQLBC+1
 S $P(%,U,4)=$P(%,U,5)
 S $P(%,U,5)=$P(%,U,6)
 S $P(%,U,6)=$E($P(%,U,7),1,5)
 I $P(%,U,2)="" S $P(%,U,2)="NO ADDRESS LISTED"
 I $P(%,U,4)="" S $P(%,U,4)="NO CITY"
 I $P(%,U,5)="" S $P(%,U,5)="NO STATE"
 E  S $P(%,U,5)=$P($G(^DIC(5,+$P(%,U,5),0)),U,2)
 I $P(%,U,6)="" S $P(%,U,6)="NO ZIP"
 S $P(%,U,4)=$E($P(%,U,4),1,$S($G(AMQQLCW):AMQQLCW-2,1:15))_", "_$P(%,U,5)_" "_$P(%,U,6)
 S $P(%,U,5)=""
 I $P(%,U,3)="" D
 .S $P(%,U,3)=$P(%,U,4)
 .S $P(%,U,4)=$P(%,U,5)
 .S $P(%,U,5)="   "
 S $P(%,U,6)="   "
S2 F X=1:1:6 S Z=$E($P(%,U,X),1,$S($G(AMQQLCW):AMQQLCW-2,1:23)) D GET
 I AMQQLBC=AMQQLLL D FLUSH
 Q
 ;
GET I Z="",X'=3,X'=4 S Z="            "
 I Z="" Q
 S Y=Y+1
 S @AMQQLGR@(AMQQLBC,Y)=Z
 Q
 ;
FLUSH ; - EP - FROM AMQQRML
 I $Y<AMQQLTOP F X=1:1:AMQQLTOP W !
 F AMQQLCT=1:1:6 D
 .F AMQQLBF=1:1:AMQQLLL I $D(@AMQQLGR@(AMQQLBF,AMQQLCT)) D
 ..W ?$P(AMQQLHT,U,AMQQLBF),@AMQQLGR@(AMQQLBF,AMQQLCT)
 ..I AMQQLCT>AMQQLLN S AMQQLLN=AMQQLCT
 ..I AMQQLBF=AMQQLLL W !
 ..Q
 .Q
 F X=1:1:(AMQQLRH-AMQQLLN) W !
 K @AMQQLGR
 S AMQQLBC=0
 I $Y+AMQQLTOP>IOSL W @IOF F X=1:1:AMQQLTOP W !
 Q
 ;
MAILX ; ENTRY POINT FROM AMQQCMPL
 S AMQQRMFL="OUTPUT^AMQQRML"
 I '$D(AMQQLLP) Q
 S IOP=$P(^%ZIS(1,AMQQLLP,0),U)
 D ^%ZIS
 I $D(AMQQLJB) D MAILTASK Q
 U IO D MAILRUN D ^%ZISC
 K AMQQRMFL,AMQQLJB,AMQQLGR,AMQQLLL,AMQQLRH,AMQQLHT,AMQQLLP,AMQQLLN,AMQQLHO,AMQQLCW,AMQQLCT,AMQQLBF,AMQQLBC
 Q
 ;
MAILRUN X AMQV(0)
 S AMQQLLL=0
 F X=0:0 S X=$O(@AMQQLGR@(X)) Q:'X  S AMQQLLL=X
 I AMQQLLL D FLUSH^AMQQRML
 I IOST["P-" W @IOF
 I $D(ZTQUEUED) D EXIT2^AMQQKILL S ZTREQ="@"
 Q
 ;
MAILTASK S ZTRTN="MAILRUN^AMQQRML"
 S ZTIO=ION
 S ZTDTH="NOW"
 S ZTDESC="QUERY UTILITY MAILING LABELS"
 F I=1:1 S %=$P("AMQQRMFL;AMQQL*;AMQV(;AMQQ200(;AMQQRV;AMQQNV;AMQQXV;^UTILITY(""AMQQ"",$J,;^UTILITY(""AMQQ RAND"",$J,;^UTILITY(""AMQQ TAX"",$J,",";",I) Q:%=""  S ZTSAVE(%)=""
 D ^%ZTLOAD
 D ^%ZISC
 W !!,$S($D(ZTSK):"Request queued!",1:"Request cancelled!"),!!!
 H 3
 W @IOF
 Q
 ;
HELP ; ENTRY POINT
 S XQH="AMQQLABEL"
 D EN1^XQH
 R !,"<>",X:DTIME
 Q
 ;
