LREPI2A ;VA/DALOI/CKA-EMERGING PATHOGENS HL7 BUILD ; 17-Oct-2014 09:22 ; MKK
 ;;5.2;LAB SERVICE;**281,1030,1034**;NOV 01, 1997;Build 88
 ;
START ;START
 S LRPROT=0 F  S LRPROT=$O(^TMP($J,LRPROT)) Q:+LRPROT'>0  D
 .D INIT^HLFNC2(LRPROT,.HL)
 .S LRMSGNM=1,LRMSGSZ=0,LRCS=$E(HL("ECH"))
 .S LRMSGDF=$S(+$P($G(^LAB(69.4,LRPROT,0)),U,3)>0:+$P($G(^LAB(69.4,LRPROT,0)),U,3),1:30000)
 .D EN,MOVE
 .F LRTND="ETI","TST","HEP" D:$D(^TMP($J,LRTND)) TOTAL
 .D EN,MOVE,SEND
 .D ALERT
 K LRDUZ,LRMSGDF,%,%X
 Q
SEND ;BUILD MESSAGE BUT DON'T SEND
 D HEAD
 I LRREP=2 D SPSHT^LREPIRS3 S ^XTMP("LREPILOCALSPSHT"_LRLRDT,"DONE")=1
 I LRREP=1 D REPORT^LREPIRS1 S ^XTMP("LREPILOCALREP"_LRLRDT,"DONE")=1
 K ^TMP("HLS",$J)
 K LRLC,LRHDGLC,HLFS,LRSEG,LRSPSHT,MSG,LRPID,LROBR,LRX
 Q
ALERT ;Send a Alert if desired.
 K XQA,XQAMSG,XQAOPT,XQAROU,XQAID,XQADATA,XQAFLAG
 S X="NOW",%DT="SRT" D ^%DT,DD^%DT
 S XQAMSG="The local report/spreadsheet finished generating at "_Y
 S XQA(LRDUZ)=""
 Q:'$D(XQA)
 D SETUP^XQALERT
 Q
EN ;ENTRY TO BUILD A MESSAGE
 S (LRCNT,LRPID)=1,DFN=0
 F  S DFN=$O(^TMP($J,LRPROT,DFN)) Q:+DFN'>0  D
 .D PID^LREPI3
 .S LRPV1=1,LRENDT=0,LRPFG="",LREFG=0,LRPVVV=0
 .F  S LRENDT=$O(^TMP($J,LRPROT,DFN,LRENDT)) S LRPFG="" Q:+LRENDT'>0!(LREFG)  D
 ..D PV1
 ..I $D(^TMP("LREPISRCH",$J,DFN)),LRPROT=LRPROTX D RXNT^LREPIPH
 ..S LRPATH=0,LRNTE=1,LRPVVV=1
 ..F  S LRPATH=$O(^TMP($J,LRPROT,DFN,LRENDT,LRPATH)) Q:+LRPATH'>0!(LREFG)  D
 ...D:LRPFG'=LRPATH NTE^LREPI3
 ...S LRPFG=LRPATH,LROBR=1,LRINVD=0
 ...F  S LRINVD=$O(^TMP($J,LRPROT,DFN,LRENDT,LRPATH,LRINVD)) Q:+LRINVD'>0!(LREFG)  D
 ....S LRND=""
 ....F  S LRND=$O(^TMP($J,LRPROT,DFN,LRENDT,LRPATH,LRINVD,LRND)) Q:LRND=""!(LREFG)  D
 .....S LRDFN=$$LRDFN^LR7OR1(DFN) Q:'LRDFN
 .....S LREFG=+$P($G(^LAB(69.5,LRPATH,0)),U,6)
 .....S:LRND'="PTF" LROBR=$$EN^LREPI1(LRDFN,LRND,LRINVD,LROBR)+1
 .....D:LRND="PTF" DG1^LREPI3
 .....D MOVE
 Q
TOTAL ;Report the total counts  ->    "ETI" or "TST" or "HEP"
 ;                                \/
 S LRITN=0 F  S LRITN=$O(^TMP($J,LRTND,LRITN)) Q:+LRITN'>0  D
 .S (LRNLT,LRTNM)=""
 .I LRTND="TST" D
 ..I '$D(^TMP($J,"TPROT",LRITN,LRPROT)) QUIT
 ..S LRTNM=$P($G(^LAB(60,LRITN,0)),U,1)
 ..S LRNL=$G(^LAB(60,LRITN,64)) Q:+LRNL'>0
 ..Q:'$D(^LAM(LRNL,0))
 ..S LRNLT=$P(^LAM(LRNL,0),U,2)
 .I LRTND="ETI" D
 ..I '$D(^TMP($J,"EPROT",LRITN)) QUIT
 ..S LRTNM=$P($G(^LAB(61.2,LRITN,0)),U,1)
 ..S LRNL=$G(^LAB(61.2,LRITN,64)) Q:+LRNL'>0
 ..Q:'$D(^LAM(LRNL,0))
 ..S LRNLT=$P(^LAM(LRNL,0),U,2)
 .I LRTND="STOT" D
 ..I '$D(^TMP($J,"SPROT",LRITN,LRPROT)) QUIT
 ..S LRTNM=""
 ..S LRNL=LRITN
 ..S LRNLT=""
 .I LRTND="HEP" D
 ..I '$D(^TMP($J,"HEP",LRITN)) QUIT
 ..S LRNLT=""
 ..I LRITN=1 S LRTNM="1-Declined Assessment for Hepatitis C"
 ..I LRITN=2 S LRTNM="2-No Risk Factors for Hepatitis C"
 ..I LRITN=3 S LRTNM="3-Previously Assessed for Hepatitis C"
 ..I LRITN=4 S LRTNM="4-Risk Factors for Hepatitis C"
 ..I LRITN=5 S LRTNM="5-Positive Test for Hepatitis C antibody"
 ..I LRITN=6 S LRTNM="6-Negative Test for Hepatitis C antibody"
 ..; I LRITN=7 S LRTNM="7- Hepatitis C diagnosis (ICD-9 based)"
 ..I LRITN=7 S LRTNM="7- Hepatitis C diagnosis (ICD based)"     ; IHS/MSC/MKK - LR*5.2*1034
 .K LRDATA
 .I '$G(LRTNM) D NAME
 .S LRDATA="NTE"_HLFS_HLFS_"T"_LRCS_LRNLT_LRCS_LRTNM_LRCS_+^TMP($J,LRTND,LRITN)
 .S LRCNT=LRCNT+1
 .S ^TMP("HLS",$J,LRCNT)=$$UP^XLFSTR(LRDATA)
 .K LRDATA
 .S (LRPCNT,LRPTOT)=0
 .F  S LRPCNT=$O(^TMP($J,LRTND,LRITN,LRPCNT)) Q:+LRPCNT'>0  S LRPTOT=LRPTOT+1
 .Q:LRPTOT'>0
 .I '$G(LRTNM) D NAME
 .S LRDATA="NTE"_HLFS_HLFS_"T"_LRCS_LRNLT_LRCS_"PATIENTS WITH "_LRTNM_LRCS_LRPTOT ;+^TMP($J,LRPCNT,LRITN)
 .S LRCNT=LRCNT+1
 .S ^TMP("HLS",$J,LRCNT)=$$UP^XLFSTR(LRDATA)
 Q
NAME ;
 Q:LRTND'="TST"
 S LRTNM=$P($G(^LAB(60,LRITN,0)),U,1)
 S LRNL=$G(^LAB(60,LRITN,64)) Q:+LRNL'>0
 Q:'$D(^LAM(LRNL,0))
 S LRNLT=$P(^LAM(LRNL,0),U,2)
 ;
 QUIT
HEAD ;ENTER A NTE FOR REPORT HEADER
 K LRDATA
 S LRDATA="NTE"_HLFS_HLFS_$S(LRRTYPE:"R",1:"")_LRCS
 I $G(LR31799Z)=1 S LRDATA=LRDATA_"*** H E P A T I T I S  C  MARCH 17 1999 ***"
 S LRDATA=LRDATA_"REPORTING DATE FROM "_$$HLDATE^HLFNC(LRRPS)
 S LRDATA=LRDATA_" TO "_$$HLDATE^HLFNC(LRRPE)
 S LRDATA=LRDATA
 I LRPROTX=LRPROT S LRDATA=LRDATA_LRCS_LRCS_"V3"
 I '$O(^TMP("HLS",$J,1)) S LRDATA=LRDATA_LRCS_"N"
 S ^TMP("HLS",$J,1)=$$UP^XLFSTR(LRDATA)
 K LRDATA
 Q
MOVE S LRMOVE=0
 F  S LRMOVE=$O(^TMP("HL7",$J,LRMOVE)) Q:+LRMOVE'>0  D
 .S LRCNT=LRCNT+1
 .S ^TMP("HLS",$J,LRCNT)=^TMP("HL7",$J,LRMOVE)
 K ^TMP("HL7",$J),LRMOVE
 Q
 ;
PV1 ;
 ;I $O(^TMP($J,LRPROT,DFN,LRENDT,""))!('$D(^TMP("LREPISRCH",$J,DFN)))!($P(LRNDTDA,"^",3))="UPDT" D PV1^LREPI3 S LRPVVV=1
 I LRPV1>1,$O(^TMP($J,LRPROT,DFN,LRENDT,LRPATH))="",$P($G(^TMP($J,LRPROT,DFN,LRENDT)),"^",3)'="UPDT" Q
 I $P($G(^TMP($J,LRPROT,DFN,LRENDT)),"^",3)="UPDT" D PV1^LREPI3 S LRPVVV=1 Q
 I $O(^TMP($J,LRPROT,DFN,LRENDT,""))]"" D PV1^LREPI3 S LRPVVV=1 Q
 I '$D(^TMP("LREPISRCH",$J,DFN)) D PV1^LREPI3 S LRPVVV=1 Q
 Q
