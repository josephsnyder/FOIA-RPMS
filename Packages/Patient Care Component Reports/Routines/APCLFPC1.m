APCLFPC1 ; IHS/CMI/LAB - TOP FPR CPTS ;
 ;;2.0;IHS PCC SUITE;**2**;MAY 14, 2009
VISIT ;
 S APCLJOB=$J,APCLBT=$H
 K ^XTMP("APCLFPC",APCLJOB,APCLBT)
 D XTMP^APCLOSUT("APCLFPC","PCC - FREQ CPT")
 S %="^XTMP(""APCLFPC"",APCLJOB,APCLBT,",APCLA=%_"""CPT"",APCLCPT)",APCLD=%_"1)",APCLF=%_"3)",APCLTOT=0,APCLVTOT=0,APCLLINO=0,APCLGTOT=0
 S APCLDATE=APCLBD-.00001
 F  S APCLDATE=$O(^AUPNVSIT("B",APCLDATE)) Q:'APCLDATE  Q:(APCLDATE\1)>APCLED  D
 .F APCLVIEN=0:0 S APCLVIEN=$O(^AUPNVSIT("B",APCLDATE,APCLVIEN)) Q:'APCLVIEN  S APCLGTOT=APCLGTOT+1 I $D(^AUPNVSIT(APCLVIEN,0)),$D(^AUPNVCPT("AD",APCLVIEN)) D CK
 D SET
 S APCLET=$H
 Q
 ;
CK ;
 S APCLVREC=^AUPNVSIT(APCLVIEN,0),DFN=$P(APCLVREC,U,5)  Q:$$DEMO^APCLUTL(DFN,$G(APCLDEMO))
 Q:$P(APCLVREC,U,11)
 Q:'$P(APCLVREC,U,9)
 D SCREENS
 Q:$D(APCLSKIP)
CPT S APCLCPTN="",APCLVTOT=APCLVTOT+1,APCLC=0
 F  S APCLCPTN=$O(^AUPNVCPT("AD",APCLVIEN,APCLCPTN)) Q:'APCLCPTN  D
 .Q:'$D(^AUPNVCPT(APCLCPTN,0))
 .I $D(APCLCPTM),'$D(APCLCPTM($P(^AUPNVCPT(APCLCPTN,0),U))) Q  ;not one we want
 .S APCLCPT=+^(0),APCLC=APCLC+1,APCLPREC=^(0) D CPTX
 Q
 ;
CPTX I '$D(^ICPT($P(APCLPREC,U))) Q
 S APCLTOT=APCLTOT+1
 F X=APCLA D UTL
 Q
 ;
UTL ;I X=B,'$D(APCLAPC) Q
 I '$D(@X) S @X=0
 S %=@X,%=%+1,@X=%
 Q
 ;
SCREENS ;
 K APCLSKIP
 S APCLI=0 F  S APCLI=$O(^APCLVRPT(APCLRPT,11,APCLI)) Q:APCLI'=+APCLI!($D(APCLSKIP))  D
 .I '$P(^APCLVSTS(APCLI,0),U,8) D SINGLE Q
 .D MULT
 .Q
 Q
SINGLE ;
 K X,APCLSPEC S X="",APCLX=0
 X:$D(^APCLVSTS(APCLI,1)) ^(1)
 I X="" S APCLSKIP="" Q
 I '$D(APCLSPEC),'$D(^APCLVRPT(APCLRPT,11,APCLI,11,"B",X)) S APCLSKIP="" Q
 Q
MULT ;
 K APCLFOUN,APCLSKIP,APCLSPEC,X S APCLX=0,X=""
 X:$D(^APCLVSTS(APCLI,1)) ^(1)
 I $O(X(""))="" S APCLSKIP="" Q
 I '$D(APCLSPEC) S Y="" F  S Y=$O(X(Y)) Q:Y=""  I $D(^APCLVRPT(APCLRPT,11,APCLI,11,"B",Y)) S APCLFOUN="" Q
 I $D(APCLSPEC),$D(X) S APCLFOUN=1 Q
 S:'$D(APCLFOUN) APCLSKIP=""
 Q
SET F APCLCPT=0:0 S APCLCPT=$O(@APCLA) Q:'APCLCPT  S %=^(APCLCPT),@APCLD@(9999999-%,APCLCPT)=""
S1 S (X,I)=0 F  S X=$O(@APCLD@(X)) Q:'X  F Y=0:0 S Y=$O(@APCLD@(X,Y)) Q:'Y  S I=I+1,@APCLF@(I)=Y I I=APCLLNO G S3
S3 Q
 ;
 ;
FF I IOST["P-" W:$D(IOF) @IOF Q
 I $E(IOST)="C",IO=IO(0),$Y>(IOSL-4) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S X="^"
 W:$D(IOF) @IOF
 Q
 ;
