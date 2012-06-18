ACGSRQD1 ;IHS/OIRM/DSD/THL,AEF - CHECK REQUIRED FIELDS FOR DATA; [ 03/27/2000   2:22 PM ]
 ;;2.0t1;CONTRACT INFORMATION SYSTEM;;FEB 16, 2000
 ;;CHECK TO ENSURE THAT ALL REQUIRED FIELDS FOR DATA ARE ENTERED
CHK ;EP
 S ZTRTN="CHK1^ACGSRQD1",ZTDESC="CIS MISSING DATA REPORT",ZTSAVE("ACGC")=""
 D ^ACGSZIS
 I $D(IO("Q")) D DONE^ACGSZIS Q
 D CHK1,DONE^ACGSZIS
 Q
CHK1 ;EP;
 I '$D(ZTQUEUED) S (ACGIOP,IOP)=ION D ^%ZIS I POP S ACGQUIT="" Q
 U IO
 D CHK^ACGSRQDC
 Q:'$D(^TMP("ACGC",$J))
 D CHKHD
 S (ACG2,ACG22)=0,ACG55=""
 F  S ACG2=$O(^TMP("ACGC",$J,ACG2)) Q:'ACG2!$D(ACGQUIT)  D
 .I $Y>(IOSL-5),'$D(ACGQUIT) D:IOST["C-"&'$D(ACGQUIT) HOLD^ACGSMENU Q:$D(ACGQUIT)  D CHKHD
 .S ACG5=""
 .F  S ACG5=$O(^TMP("ACGC",$J,ACG2,ACG5)) Q:ACG5=""!$D(ACGQUIT)  D
 ..D:ACG5'=ACG55 CHKV
 ..W:$E(ACG2,1,9)'=ACG22 !?10,$E(ACG2,1,9)
 ..W ?23,$E(ACG2,10,12)
 ..S ACG22=$E(ACG2,1,9)
 ..I $Y>(IOSL-5),$O(^TMP("ACGC",$J,ACG2,ACG5)) D:IOST["C-"&'$D(ACGQUIT) HOLD^ACGSMENU Q:$D(ACGQUIT)  D CHKHD,CHKV W !?10,$E(ACG2,1,9),?23,$E(ACG2,10,12)
 ..S ACGF=0
 ..F  S ACGF=$O(^TMP("ACGC",$J,ACG2,ACG5,ACGF)) Q:'ACGF!$D(ACGQUIT)  D
 ...W ?28,$P(^DD(9002330,ACGF,.1),U),!
 ...I $Y>(IOSL-5),$O(^TMP("ACGC",$J,ACG2,ACG5,ACGF)) D:IOST["C-"&'$D(ACGQUIT) HOLD^ACGSMENU Q:$D(ACGQUIT)  D CHKHD,CHKV W !?10,$E(ACG2,1,9),?23,$E(ACG2,10,12)
 D:IOST["C-"&'$D(ACGQUIT) HOLD^ACGSMENU
 Q
CHKHD W:$D(IOF) @IOF
 S ACGX="MISSING DATA REPORT"
 W !?80-$L(ACGX)\2,ACGX K ACGX
 Q
CHKV W !!?10,"CONTRACTOR:  "
 W ACG5,!?10,"-----------  -------------------------------"
 S ACG55=ACG5
 Q
END ;
