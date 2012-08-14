SROCMP ;B'HAM ISC/MAM - PERIOPERATIVE OCCURRENCES ; [ 07/27/98   2:33 PM ]
 ;;3.0; Surgery ;**22,26,29,38,50**;24 Jun 93
BEG U IO S SRSOUT=0,PAGE=1 K ^TMP("SR",$J) S Y=DT X ^DD("DD") S SRPRINT="DATE PRINTED: "_Y,SRSDT=SRSD-.0001,SREDT=SRED+.9999
 N SRFRTO S Y=SRSD X ^DD("DD") S SRFRTO="FROM: "_Y_"  TO: ",Y=SRED X ^DD("DD") S SRFRTO=SRFRTO_Y
 F  S SRSDT=$O(^SRF("AC",SRSDT)) Q:SRSDT>SREDT!('SRSDT)!(SRSOUT)  S SRTN=0 F  S SRTN=$O(^SRF("AC",SRSDT,SRTN)) Q:'SRTN!(SRSOUT)  I $O(^SRF(SRTN,10,0))!$O(^SRF(SRTN,16,0)),$D(^SRF(SRTN,0)),$$MANDIV^SROUTL0(SRINSTP,SRTN) D UTIL
 S (SRSS,SRHDR)=0 F  S SRSS=$O(^TMP("SR",$J,SRSS)) Q:SRSS=""!(SRSOUT)  D HDR^SROCMP2 S SRSDATE=0 F  S SRSDATE=$O(^TMP("SR",$J,SRSS,SRSDATE)) Q:'SRSDATE!(SRSOUT)  D MORE
 G:SRSOUT END
 I '$D(^TMP("SR",$J)) D HDR^SROCMP2 G:SRSOUT END W !!,"There are no perioperative occurrences recorded for the selected date range."
 F I=$Y:1:IOSL-9 W !
 S X="" D FOOT^SROCMP2
 I SRBOTH S SRSOUT=0 D BEG^SROMORT S SRSOUT=1
END W:$E(IOST)="P" @IOF I $D(ZTQUEUED) K ^TMP("SR",$J) Q:$G(ZTSTOP)  S ZTREQ="@" Q
 D ^%ZISC,^SRSKILL K SRTN W @IOF
 Q
MORE S SRTN=0 F  S SRTN=$O(^TMP("SR",$J,SRSS,SRSDATE,SRTN)) Q:'SRTN  D SET
 Q
UTIL ; set ^TMP
 S Y=$P(^SRF(SRTN,0),"^",4) S:'Y Y="ZZ" I SRSP,'$D(SRSP(Y)) Q
 S SRSS=$S(Y:$P(^SRO(137.45,Y,0),"^"),1:"SURGICAL SPECIALTY NOT ENTERED")
 S ^TMP("SR",$J,SRSS,SRSDT,SRTN)=""
 Q
SET ; set variables to print
 K SRC S DFN=$P(^SRF(SRTN,0),"^") D DEM^VADPT S SRNM=VADM(1),SRSSN=VA("PID"),Y=$P(^SRF(SRTN,0),"^",9) D D^DIQ S SROD=$E(Y,1,18)
OPS S SROPER=$P(^SRF(SRTN,"OP"),"^"),OPER=0 F  S OPER=$O(^SRF(SRTN,13,OPER)) Q:OPER=""  D OTHER
 K SRP,Z S:$L(SROPER)<50 SRP(1)=SROPER I $L(SROPER)>49 S SROPER=SROPER_"  " F M=1:1 D OPER Q:Z=""
COMP ; perioperative occurrences
 S (SRFG,SRIC,SRPC)=0 F  S SRIC=$O(^SRF(SRTN,10,SRIC)) Q:SRIC=""  S SRFG=SRFG+1,SRC(SRFG)=$P(^(SRIC,0),"^")_"^"_$P(^(0),"^",6)_"^^"_$S($D(^SRF(SRTN,10,SRIC,2)):$P(^(2),"^"),1:"")_"^10^"_SRIC
 S SRPC=0 F  S SRPC=$O(^SRF(SRTN,16,SRPC)) Q:SRPC=""  S SRFG=SRFG+1,SRC(SRFG)=$P(^SRF(SRTN,16,SRPC,0),"^")_" *^"_$P(^(0),"^",6)_"^"_$P(^(0),"^",7)_"^"_$S($D(^SRF(SRTN,16,SRPC,2)):$P(^(2),"^"),1:"")_"^16^"_SRPC
PRINT ; print perioperative occurrence information
 I $Y+10>IOSL D HDR^SROCMP2 I SRSOUT Q
 S SRHDR=1 W !!,SRNM,?29,SRP(1) S SRC=$O(SRC(0)) W ?80,$P(SRC(SRC),"^") D DATE W ?129,$P(SRC(SRC),"^",2)
 W !,VA("PID") W:$D(SRP(2)) ?29,SRP(2) W ?80,$P(SRC(SRC),"^",4)
 W !,SROD W:$D(SRP(3)) ?29,SRP(3) D TEXT W:$D(SRP(4))!SRT ! W:$D(SRP(4)) ?29,SRP(4) D:SRT WP
 I SRC F  S SRC=$O(SRC(SRC)) Q:'SRC!SRSOUT  D
 .I $Y+10>IOSL D HDR^SROCMP2 I SRSOUT Q
 .W !,?80,$P(SRC(SRC),"^") D DATE W ?129,$P(SRC(SRC),"^",2),!,?80,$P(SRC(SRC),"^",4),! D TEXT I SRT W ! D WP
 Q
WP ; print perioperative occurrence comments
 K ^UTILITY($J,"W") S CM=0 F  S CM=$O(^SRF(SRTN,SRX,SRY,1,CM)) Q:'CM  S X=^SRF(SRTN,SRX,SRY,1,CM,0),DIWL=81,DIWR=132 D ^DIWP
 I $D(^UTILITY($J,"W")) F J=1:1:^UTILITY($J,"W",81) D
 .I $Y+7>IOSL D HDR^SROCMP2 W ! I SRSOUT Q
 .W ?81,^UTILITY($J,"W",81,J,0),!
 Q
TEXT ; check for comments
 S SRT=0,SRX=$P(SRC(SRC),"^",5),SRY=$P(SRC(SRC),"^",6) I $O(^SRF(SRTN,SRX,SRY,1,0)) S SRT=1 I SRT W ?80,">>> Comments:"
 Q
OTHER ; other operations
 S SRLONG=1 I $L(SROPER)+$L($P(^SRF(SRTN,13,OPER,0),"^"))>250 S SRLONG=0,OPER=999,SROPERS=" ..."
 I SRLONG S SROPERS=$P(^SRF(SRTN,13,OPER,0),"^")
 S SROPER=SROPER_$S(SROPERS=" ...":SROPERS,1:", "_SROPERS)
 Q
OPER ; break procedure if greater than 50 characters
 S SRP(M)="" F LOOP=1:1 S Z=$P(SROPER," ") Q:Z=""  Q:$L(SRP(M))+$L(Z)'<50  S SRP(M)=SRP(M)_Z_" ",SROPER=$P(SROPER," ",2,200)
 Q
DATE I $P(SRC(SRC),"^",3)'="" S SRDT=$P(SRC(SRC),"^",3) I SRDT W "  ("_$E(SRDT,4,5)_"/"_$E(SRDT,6,7)_"/"_$E(SRDT,2,3)_")"
 Q