SROAWL1 ;BIR/ADM - REPORT OF CASE WORKLOAD TOTALS (CONTINUED) ; [ 12/10/99  7:42 AM ]
 ;;3.0; Surgery ;**38,47,60,62,68,50,86,88,92**;24 Jun 93
 ; SRTOTAL(1) = total of all cases completed (excluding aborted cases)
 ; SRTOTAL(2) = excluded cases
 ; SRTOTAL(3) = assessed cases
 ; SRTOTAL(4) = not logged major cases
 ; SRTOTAL(5) = cardiac cases
 ; SRTOTAL(6) = non-cardiac cases
 ; SRTOTAL(7) = assessed cases per day (at 20 days per month)
 ; SRTOTAL(8) = total major cases
 ; SRTOTAL(9) = total minor cases
 ;
 I SRP U IO
 N SRDIV,SRMULT S (SRDIV,SRMULT,SRSOUT)=0
 I SRT S (SRCNT,X)=0 D
 .F  S X=$O(^SRO(133,X)) Q:'X  I '$P($G(^SRO(133,X,0)),"^",21) S SRCNT=SRCNT+1,SRDIV(X)=$P(^SRO(133,X,0),"^")
 .I SRCNT>1 S SRMULT=1
BEG S SRSDATE=SRDT,X=+$E(SRDT,4,5),X=$S(X'=12:X+1,1:1),Y=$E(SRDT,1,3),Y=$S(X>1:Y,1:Y+1),SRED=Y_$S($L(X)=1:"0"_X,1:X)_"00" K SRTOTAL F I=1:1:9 S SRTOTAL(I)=0
 N SREXCL F I=1:1:9 S SREXCL(I)=0
 D MOS S Y=SRDT X ^DD("DD") S SRM="FOR "_Y,SRTITLE="REPORT OF MONTHLY SURGICAL CASE WORKLOAD" S:'$D(SRINSTP) SRINSTP="ALL DIVISIONS"
 F  S SRSDATE=$O(^SRF("AC",SRSDATE)) Q:SRSDATE>SRED!'SRSDATE  S SRTN=0 F  S SRTN=$O(^SRF("AC",SRSDATE,SRTN)) Q:'SRTN  I $D(^SRF(SRTN,0)),$$MANDIV^SROUTL0(SRINSTP,SRTN) D CASE
 F K="C","N" S SRDFN=0 F  S SRDFN=$O(^SRF("ARS",K,"I",SRDFN)) Q:'SRDFN  S SRTN=0 F  S SRTN=$O(^SRF("ARS",K,"I",SRDFN,SRTN)) Q:'SRTN  I $D(^SRF(SRTN,0)),$$MANDIV^SROUTL0(SRINSTP,SRTN) D OPDATE
 S SRTOTAL(7)=SRTOTAL(3)/20 D:'SRP INC D:SRP OUT G:SRSOUT END D:SRT TMIT
END K SRINSTP,SRTOTAL,^TMP("SRM",$J) I SRT,SRMULT S SRP=0 S SRDIV=$O(SRDIV(SRDIV)) Q:'SRDIV  D SITE,BEG
 Q
CASE ; examine case
 Q:$P($G(^SRF(SRTN,30)),"^")!$P($G(^SRF(SRTN,31)),"^",8)!'($P($G(^SRF(SRTN,.2)),"^",12)!($P($G(^SRF(SRTN,.2)),"^",3)))
 S SRTOTAL(1)=SRTOTAL(1)+1,SRMAJ=$S($P(^SRF(SRTN,0),"^",3)="J":1,1:0) S:SRMAJ SRTOTAL(8)=SRTOTAL(8)+1 I 'SRMAJ S SRTOTAL(9)=SRTOTAL(9)+1
 S SRA=$G(^SRF(SRTN,"RA")),SRTYPE=$P(SRA,"^",2) S:SRTYPE=""&SRMAJ SRTOTAL(4)=SRTOTAL(4)+1 S:SRTYPE="C" SRTOTAL(5)=SRTOTAL(5)+1
 S SRASS=$P(SRA,"^",6) D
 .I SRASS="N" S SRTOTAL(2)=SRTOTAL(2)+1,X=$P(SRA,"^",7) S:X SREXCL(X)=SREXCL(X)+1
 .I SRASS="Y" S SRTOTAL(3)=SRTOTAL(3)+1
 I SRTYPE="N",SRASS="Y" S SRTOTAL(6)=SRTOTAL(6)+1
 Q
OPDATE ; get date of operation
 S SRA=$G(^SRF(SRTN,"RA")) I $P(SRA,"^")'="I" K ^SRF("ARS",K,"I",SRDFN,SRTN) Q
 S SRTYPE=$P(SRA,"^",2) I SRTYPE'=K K ^SRF("ARS",K,"I",SRDFN,SRTN) Q
 S SRMONTH=$E($P(^SRF(SRTN,0),"^",9),1,5)_"00" I $D(^TMP("SRM",$J,SRMONTH,K)) S ^TMP("SRM",$J,SRMONTH,K)=^TMP("SRM",$J,SRMONTH,K)+1
 Q
OUT ; print report
 W:$Y @IOF W !,?(80-$L(SRINST)\2),SRINST,!,?(80-$L(SRTITLE)\2),SRTITLE,!,?(80-$L(SRM)\2),SRM,!,?15 F I=1:1:50 W "-"
 W !,?20,"TOTAL CASES PERFORMED",?54,"=",$J(SRTOTAL(1),6),!,?24,"TOTAL MAJOR CASES",?54,"=",$J(SRTOTAL(8),6),!,?24,"TOTAL MINOR CASES",?54,"=",$J(SRTOTAL(9),6)
 W !,?20,"CASES MEETING EXCLUSION CRITERIA",?54,"=",$J(SRTOTAL(2),6),!,?24,"ANESTHESIA TYPE",?54,"=",$J(SREXCL(1),6),!,?24,"EXCEEDS MAX. ASSESSMENTS",?54,"=",$J(SREXCL(2),6),!,?24,"EXCEEDS MAXIMUM TURPS",?54,"=",$J(SREXCL(3),6)
 W !,?24,"STUDY CRITERIA",?54,"=",$J(SREXCL(4),6),!,?24,"SCNR WAS ON A/L",?54,"=",$J(SREXCL(6),6),!,?24,"CONCURRENT CASE",?54,"=",$J(SREXCL(8),6),!,?24,"EXCEEDS MAXIMUM HERNIAS",?54,"=",$J(SREXCL(9),6)
 W !,?20,"ASSESSED CASES",?54,"=",$J(SRTOTAL(3),6),!,?20,"NOT LOGGED MAJOR CASES",?54,"=",$J(SRTOTAL(4),6)
 W !,?20,"CARDIAC CASES",?54,"=",$J(SRTOTAL(5),6),!,?20,"NON-CARDIAC CASES",?54,"=",$J(SRTOTAL(6),6),!,?20,"ASSESSED CASES PER DAY",?54,"=",$J(SRTOTAL(7),9,2),!,?15 F I=1:1:50 W "-"
 I $E(IOST)="C" D PRESS Q:SRSOUT  W @IOF
INC S (SRCT,SRT1,SRTC)=0 W:SRP !!!!,?12,"NUMBER OF INCOMPLETE ASSESSMENTS REMAINING FOR PAST YEAR",!!,?29,"CARDIAC",?40,"NON-CARDIAC",?56,"TOTAL",!,?29,"-------",?40,"-----------",?56,"-----"
 S SRMONTH=0,SRSST="" F  S SRMONTH=$O(^TMP("SRM",$J,SRMONTH)) Q:'SRMONTH  D
 .I SRP S Y=SRMONTH X ^DD("DD") W !,?19,Y
 .S SRC=^TMP("SRM",$J,SRMONTH,"C"),SRN=^TMP("SRM",$J,SRMONTH,"N"),SRTO=SRC+SRN,SRCT=SRCT+SRC,SRT1=SRT1+SRN,SRTC=SRTC+SRTO,SRSST=SRSST_SRMONTH_"^"_SRC_"^"_SRN_"^"
 .W:SRP ?30,$J(SRC,5),?43,$J(SRN,5),?55,$J(SRTO,5)
 W:SRP !,?29,"-------",?40,"-----------",?56,"-----",!,?30,$J(SRCT,5),?43,$J(SRT1,5),?55,$J(SRTC,5)
 Q
TMIT ; transmit report to national database
 S ISC=0,SRD=^XMB("NETNAME") I $E(SRD,1,3)="ISC"!(SRD["ISC-")!(SRD["ISC.")!(SRD["FORUM") S ISC=1
 K SRMSG S SRSTATN=$P($$SITE^SROVAR,"^",3)_$S(SRDIV:"-"_SRDIV,1:""),SRMSG(1)=SRSTATN_"^"_SRDT_"^"_DT F I=1:1:9 S SRMSG(1)=SRMSG(1)_"^"_SRTOTAL(I)
 F I=1,2,3,4,6,8,9 S SRMSG(1)=SRMSG(1)_"^"_SREXCL(I)
 I SRDIV S SRMSG(1)=SRMSG(1)_"^"_SRINST_"^"_$$GET1^DIQ(4,SRINSTP,99)
 S SRMSG(2)=SRSTATN_"^"_SRSST
 I $D(SRNOACK) S SRMSG(3)=SRSTATN_"^"_SRNOACK
 S XMSUB="SURGERY WORKLOAD "_SRM,XMDUZ=$S(DUZ:DUZ,1:"SCNR")
 I ISC S XMY("G.RISK ASSESSMENT")=""
 I 'ISC S (XMY("S.SRAWSERV@ISC-CHICAGO.VA.GOV"),XMY("G.SRCOSERV@ISC-CHICAGO.VA.GOV"))=""
 S XMTEXT="SRMSG(" D ^XMD K XMSUB,XMY,XMDUZ,XMTEXT
 Q
MOS ; set up array for past 12 months
 K SRMONTH S SRYR=$E(SRDT,1,3),SRMONTH=+$E(SRDT,4,5)
 S J=1 F  S:$L(SRMONTH)=1 SRMONTH="0"_SRMONTH S SRMONTH(J)=SRYR_SRMONTH_"00" S SRMONTH=+SRMONTH,SRMONTH=$S(SRMONTH=1:12,1:SRMONTH-1),SRYR=$S(SRMONTH=12:SRYR-1,1:SRYR),J=J+1 Q:J>13
 K ^TMP("SRM",$J) F I=1:1:13 F J="C","N" S ^TMP("SRM",$J,SRMONTH(I),J)=0
 Q
PRESS Q:$E(IOST)'="C"  W ! K DIR S DIR(0)="E" D ^DIR K DIR I 'Y S SRSOUT=1
 Q
SITE S SRINSTP=SRDIV(SRDIV),SRINST=$$GET1^DIQ(4,SRINSTP,.01)
 Q
