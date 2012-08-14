BGPMUHD1 ; IHS/MSC/SAT - Delimited MU measure NQF0435 ;07-Apr-2011 13:15;DU
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;Delimited output
 ; STK2^BGPMUHD1   = delimited routine for 0435 STK-2 Antithrombolytic Therapy at discharge
 ; STK3^BGPMUHD1   = delimited routine for 0436 STK-3 Anticoagulation Therapy at discharge
 ; STK4^BGPMUHD2   = delimited routine for 0437 STK-4 thrombolytic therapy within 3 hours
 ; STK5^BGPMUHD2   = delimited routine for 0438 STK-5 Antithrombolytic Therapy by end of day 2
 ; STK6^BGPMUHD3   = delimited routine for 0439 STK-6 Statin Medicine at Discharge
 ; STK8^BGPMUHD3   = delimited routine for 0440 STK-8 Educational Materials at discharge
 ; STK10^BGPMUHD4   = delimited routine for 0441 STK-10 Rehabilitation Service at discharge
 ;
 ; VTE1^BGPMUHD5 = delimited routine for 0371 VTE-1 Prophylaxis within 24 hours
 ; VTE2^BGPMUHD5 = delimited routine for 0372 VTE-2 Prophylaxis for ICU pts
 ; VTE3^BGPMUHD6 = delimited routine for 0373 VTE-3 Anticoagulation overlap therapy
 ; VTE4^BGPMUHD6 = delimited routine for 0374 VTE-4 Platelet monitoring for UFH
 ; VTE5^BGPMUHD7 = delimited routine for 0375 VTE-5 VTE discharge instructions
 ; VTE6^BGPMUHD7 = delimited routine for 0376 VTE-6 Potentially preventable VTE
 ;Delimited output for Stroke Measure 0435
STK2 ;EP
 D P1B
 K ^TMP("BGPMU0435")
 Q
P1B ;Write individual measure
 N BGPPTYPE,X,Y,Z,DEN,NUM,PC,STRING1,STRING2,PRD,PRN,PRD1,PRD6,PRN1
 S BGPPROV=""
 S BGPPTYPE="D"
 S STRING1=$$435^BGPMUHP2("C")
 S STRING2=$$435^BGPMUHP2("P")
 S STRING3=$$435^BGPMUHP2("B")
 D SUM435
 S PRD1=$P(STRING1,U,1)-$P(STRING2,U,1)  ;change from prev year Pts w/ Ischemic Stroke (line 1)
 S PRD2=$P(STRING1,U,5)-$P(STRING2,U,5)  ;% change from prev year # w/ antithrombolytic therapy ...
 S PRD3=$P(STRING1,U,5)-$P(STRING3,U,5)  ;% change from base year # w/ antithrombolytic therapy ...
 S PRD4=$P(STRING1,U,6)-$P(STRING2,U,6)  ;% change from prev year # w/ antithrombolytic therapy ...
 S PRD5=$P(STRING1,U,6)-$P(STRING3,U,6)  ;% change from prev year # w/ antithrombolytic therapy ...
 I $P(STRING3,U,1)'=0 S PRD6=$$ROUND^BGPMUA01(($P(STRING1,U,1)/$P(STRING3,U,1)),3)*100
 E  S PRD6=0
 S X=U_"REPORT PERIOD"_U_"%"_U_"PREV YR PERIOD"_U_"%"_U_"CHG FROM PREV YR"_U_"BASE YR"_U_"%"_U_"CHG FROM BASE %"
 D S^BGPMUDEL(X,1,1)
 S X="# Discharges for Pts w/ischemic stroke"_U_$P(STRING1,U,1)_U_U_$P(STRING2,U,1)_U_U_U_$P(STRING3,U,1)_U_U
 D S^BGPMUDEL(X,1,1)
 S X="# Excluded (Exc)"_U_$P(STRING1,U,4)_U_U_$P(STRING2,U,4)_U_U_U_$P(STRING3,U,4)
 D S^BGPMUDEL(X,1,1)
 S X="# Discharges for Pts w/ischemic stroke Less Exc"_U_($P(STRING1,U,1)-$P(STRING1,U,4))_U_U_($P(STRING2,U,1)-$P(STRING2,U,4))_U_U_U_($P(STRING3,U,1)-$P(STRING3,U,4))
 D S^BGPMUDEL(X,1,1)
 S X="# w/antithrombolytic therapy at discharge"_U_$P(STRING1,U,2)_U_$J($P(STRING1,U,5),5,1)_U_$P(STRING2,U,2)_U_$J($P(STRING2,U,5),5,1)_U_$FN(PRD2,",+",1)_U_$P(STRING3,U,2)_U_$J($P(STRING3,U,5),5,1)_U_$FN(PRD3,",+",1)
 D S^BGPMUDEL(X,2,1)
 S X="# w/o antithrombolytic therapy at discharge"_U_$P(STRING1,U,3)_U_$J($P(STRING1,U,6),5,1)_U_$P(STRING2,U,3)_U_$J($P(STRING2,U,6),5,1)_U_$FN(PRD4,",+",1)_U_$P(STRING3,U,3)_U_$J($P(STRING3,U,6),5,1)_U_$FN(PRD5,",+",1)
 D S^BGPMUDEL(X,1,1)
 I $D(BGPLIST(BGPIC)) D TC
 Q
TC ;Do the Details
 N PT,NODE,NAME,BP
 S X="**** CONFIDENTIAL PATIENT INFORMATION COVERED BY PRIVACY ACT ****" D S^BGPMUDEL(X,2,1)
 S X="Ischemic stroke patients prescribed antithrombolytic therapy at hospital discharge, if any." D S^BGPMUDEL(X,2,1)
 S X="Patients who do not meet the numerator criteria are listed first (NM:), followed by patients who do meet the numerator criteria (M:).  Excluded patients are listed last." D S^BGPMUDEL(X,2,1)
 S X="The following are the abbreviations used in the denominator and numerator columns:" D S^BGPMUDEL(X,2,1)
 S X="ISC=Inpatient w/Diagnosis of Ischemic Stroke" D S^BGPMUDEL(X,1,1)
 S X="PATIENT NAME"_U_"HRN"_U_"COMMUNITY"_U_"SEX"_U_"AGE"_U_"DENOMINATOR"_U_"NUMERATOR" D S^BGPMUDEL(X,2,1)
 S PTCT=0
 I (BGPLIST="A")!(BGPLIST="D")&($D(^TMP("BGPMU0435",$J,"PAT","C","NOT"))) D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0435"","_$J_",""PAT"",""C"",""NOT"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D D435(NODE)
 I (BGPLIST="A")!(BGPLIST="N")&($D(^TMP("BGPMU0435",$J,"PAT","C","NUM"))) D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0435"","_$J_",""PAT"",""C"",""NUM"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D D435(NODE)
 ;Excluded patients
 I BGPLIST="A"&($D(^TMP("BGPMU0435",$J,"PAT","C","EXC"))) D
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0435"","_$J_",""PAT"",""C"",""EXC"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D DEXC435(NODE)
 S X="Total # of patients on list: "_PTCT D S^BGPMUDEL(X,2,1)
 Q
 ;
D435(NODE) ;GET DATA
 D D436(NODE)
 Q
D436(NODE) ;GET DATA
 N BGPI,DATA,NAME,HRN,DEN,NUM,AGE,DFN
 S DFN=$P(NODE,U,1)
 S NAME=$E($$GET1^DIQ(2,$P(NODE,U,1),.01),1,23)
 S HRN=$$HRN^AUPNPAT(DFN,DUZ(2))
 S AGE=$$AGE^AUPNPAT(DFN,BGPED)
 S SEX=$$SEX^AUPNPAT(DFN)
 S COMM=$E($$GET1^DIQ(9000001,DFN,1118),1,10)
 S DEN=$P($P($P(NODE,U,2),";",1),":",1)
 S NUM=$P(NODE,U,3)
 S X=NAME_U_HRN_U_COMM_U_SEX_U_AGE_U_"ISC "_$$FMTE^XLFDT(DEN,2)_$S($L($P(NODE,"U",2),";")>1:";",1:"")_U_$S(NUM'="":"M:"_$$FMTE^XLFDT($P(NUM,".",1),2)_$S($L($P(NODE,"U",2),";")>1:";",1:""),1:"NM:")
 D S^BGPMUDEL(X,1,1)
 Q
DEXC436(NODE) ;GET DATA
 D DEXC435(NODE)
 Q
DEXC435(NODE) ;GET DATA
 N BGPI,DATA,NAME,HRN,DEN,NUM,AGE,DFN
 S DFN=$P(NODE,U,1)
 S NAME=$E($$GET1^DIQ(2,$P(NODE,U,1),.01),1,23)
 S HRN=$$HRN^AUPNPAT(DFN,DUZ(2))
 S AGE=$$AGE^AUPNPAT(DFN,BGPED)
 S SEX=$$SEX^AUPNPAT(DFN)
 S COMM=$E($$GET1^DIQ(9000001,DFN,1118),1,10)
 S DEN=$P($P($P(NODE,U,2),";",1),":",1)
 S NUM=$P(NODE,U,3)
 S X=NAME_U_HRN_U_COMM_U_SEX_U_AGE_U_"Excluded"
 D S^BGPMUDEL(X,1,1)
 Q
 ;
 ;Delimited output for Stroke Measure 0436
STK3 ;EP
 D P1
 K ^TMP("BGPMU0436")
 Q
P1 ;Write individual measure
 N BGPPTYPE,X,Y,Z,DEN,NUM,PC,STRING1,STRING2,PRD,PRN,PRD1,PRD6,PRN1
 S BGPPROV=""
 S BGPPTYPE="D"
 S STRING1=$$436^BGPMUHP2("C")
 S STRING2=$$436^BGPMUHP2("P")
 S STRING3=$$436^BGPMUHP2("B")
 D SUM436
 S PRD1=$P(STRING1,U,1)-$P(STRING2,U,1)  ;change from prev year Pts w/ Ischemic Stroke (line 1)
 S PRD2=$P(STRING1,U,5)-$P(STRING2,U,5)  ;% change from prev year # w/ antithrombolytic therapy ...
 S PRD3=$P(STRING1,U,5)-$P(STRING3,U,5)  ;% change from base year # w/ antithrombolytic therapy ...
 S PRD4=$P(STRING1,U,6)-$P(STRING2,U,6)  ;% change from prev year # w/ antithrombolytic therapy ...
 S PRD5=$P(STRING1,U,6)-$P(STRING3,U,6)  ;% change from prev year # w/ antithrombolytic therapy ...
 I $P(STRING3,U,1)'=0 S PRD6=$$ROUND^BGPMUA01(($P(STRING1,U,1)/$P(STRING3,U,1)),3)*100
 E  S PRD6=0
 S X=U_"REPORT PERIOD"_U_"%"_U_"PREV YR PERIOD"_U_"%"_U_"CHG FROM PREV YR"_U_"BASE YR"_U_"%"_U_"CHG FROM BASE %"
 D S^BGPMUDEL(X,1,1)
 S X="# Discharges for Pts w/ischemic stroke & atrial fib/flutter"_U_$P(STRING1,U,1)_U_U_$P(STRING2,U,1)_U_U_U_$P(STRING3,U,1)_U_U
 D S^BGPMUDEL(X,1,1)
 S X="# Excluded (Exc)"_U_$P(STRING1,U,4)_U_U_$P(STRING2,U,4)_U_U_U_$P(STRING3,U,4)
 D S^BGPMUDEL(X,1,1)
 S X="# Discharges for Pts w/ischemic stroke & atrial fib/flutter Less Exc"_U_($P(STRING1,U,1)-$P(STRING1,U,4))_U_U_($P(STRING2,U,1)-$P(STRING2,U,4))_U_U_U_($P(STRING3,U,1)-$P(STRING3,U,4))
 D S^BGPMUDEL(X,1,1)
 S X="# w/anticoag therapy at discharge"_U_$P(STRING1,U,2)_U_$J($P(STRING1,U,5),5,1)_U_$P(STRING2,U,2)_U_$J($P(STRING2,U,5),5,1)_U_$FN(PRD2,",+",1)_U_$P(STRING3,U,2)_U_$J($P(STRING3,U,5),5,1)_U_$FN(PRD3,",+",1)
 D S^BGPMUDEL(X,2,1)
 S X="# w/o anticoag therapy at discharge"_U_$P(STRING1,U,3)_U_$J($P(STRING1,U,6),5,1)_U_$P(STRING2,U,3)_U_$J($P(STRING2,U,6),5,1)_U_$FN(PRD4,",+",1)_U_$P(STRING3,U,3)_U_$J($P(STRING3,U,6),5,1)_U_$FN(PRD5,",+",1)
 D S^BGPMUDEL(X,1,1)
 I $D(BGPLIST(BGPIC)) D TC3
 Q
TC3 ;Do the Details
 N PT,NODE,NAME,BP
 S X="**** CONFIDENTIAL PATIENT INFORMATION COVERED BY PRIVACY ACT ****" D S^BGPMUDEL(X,2,1)
 S X="Ischemic stroke patients with atrial fibrillation/flutter who are prescribed anticoagulation therapy at hospital discharge, if any." D S^BGPMUDEL(X,2,1)
 S X="Patients who do not meet the numerator criteria are listed first (NM:), followed by patients who do meet the numerator criteria (M:).  Excluded patients are listed last." D S^BGPMUDEL(X,2,1)
 S X="The following are the abbreviations used in the denominator and numerator columns:" D S^BGPMUDEL(X,2,1)
 S X="ISC=Inpatient w/diagnosis of ischemic stroke & atrial fibrillation/flutter" D S^BGPMUDEL(X,1,1)
 S X="PATIENT NAME"_U_"HRN"_U_"COMMUNITY"_U_"SEX"_U_"AGE"_U_"DENOMINATOR"_U_"NUMERATOR" D S^BGPMUDEL(X,2,1)
 S PTCT=0
 I (BGPLIST="A")!(BGPLIST="D")&($D(^TMP("BGPMU0436",$J,"PAT","C","NOT"))) D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0436"","_$J_",""PAT"",""C"",""NOT"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D D436(NODE)
 I (BGPLIST="A")!(BGPLIST="N")&($D(^TMP("BGPMU0436",$J,"PAT","C","NUM"))) D
 .K BGPARR
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0436"","_$J_",""PAT"",""C"",""NUM"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D D436(NODE)
 ;Excluded patients
 I BGPLIST="A"&($D(^TMP("BGPMU0436",$J,"PAT","C","EXC"))) D
 .D PTLSORT^BGPMUUTL(.BGPARR,"^TMP(""BGPMU0436"","_$J_",""PAT"",""C"",""EXC"")")
 .S PT=0 F  S PT=$O(BGPARR(PT)) Q:PT=""  D
 ..S PTCT=PTCT+1
 ..S NODE=$G(BGPARR(PT))
 ..D DEXC436(NODE)
 S X="Total # of patients on list: "_PTCT D S^BGPMUDEL(X,2,1)
 Q
 ;
SUM435 ;Populate "BGPMU SUMMARY" for Stroke Measure 0435
 ;Initialize iCare/summary global
 N BGPDNCNT,BGPSSTR,J,N
 S J=$J
 S BGPDNCNT=0
 K ^TMP("BGPMU SUMMARY",J,BGPIC)
 S ^TMP("BGPMU SUMMARY",J,BGPIC)="0435"_U_"STK-2"
 S N=1 ;only 1 numerator
 ;Setup summary page/iCare ^TMP global
 S CDEN1CT=+$G(^TMP("BGPMU0435",J,"C","DEN"))                 ;current
 S CNUM1CT=+$G(^TMP("BGPMU0435",J,"C","NUM"))
 S CEXC1CT=+$G(^TMP("BGPMU0435",J,"C","EXC"))
 S CMP=$S((CDEN1CT-CEXC1CT)>0:$$ROUND^BGPMUA01(CNUM1CT/(CDEN1CT-CEXC1CT),3)*100,1:0)
 S PDEN1CT=+$G(^TMP("BGPMU0435",J,"P","DEN"))                 ;previous
 S PNUM1CT=+$G(^TMP("BGPMU0435",J,"P","NUM"))
 S PEXC1CT=+$G(^TMP("BGPMU0435",J,"P","EXC"))
 S PMP=$S((PDEN1CT-PEXC1CT)>0:$$ROUND^BGPMUA01(PNUM1CT/(PDEN1CT-PEXC1CT),3)*100,1:0)
 S BDEN1CT=+$G(^TMP("BGPMU0435",J,"B","DEN"))                 ;baseline
 S BNUM1CT=+$G(^TMP("BGPMU0435",J,"B","NUM"))
 S BEXC1CT=+$G(^TMP("BGPMU0435",J,"B","EXC"))
 S BMP=$S((BDEN1CT-BEXC1CT)>0:$$ROUND^BGPMUA01(BNUM1CT/(BDEN1CT-BEXC1CT),3)*100,1:0)
 S BGPDNCNT=BGPDNCNT+1
 S BGPSSTR="MU.EP.0435."_N_U_"# w/antithrom therapy at disch"_U_CEXC1CT_U_CDEN1CT_U_CNUM1CT_U_CMP_U_U_U_U
 ; 11 12 13 14
 S BGPSSTR=BGPSSTR_U_PEXC1CT_U_PDEN1CT_U_PNUM1CT_U_PMP
 ; 15 16 17 18
 S BGPSSTR=BGPSSTR_U_BEXC1CT_U_BDEN1CT_U_BNUM1CT_U_BMP
 S ^TMP("BGPMU SUMMARY",J,BGPIC,BGPDNCNT)=BGPSSTR
 Q
 ;
SUM436 ;Populate "BGPMU SUMMARY" for Stroke Measure 0436
 ;Initialize iCare/summary global
 N BGPDNCNT,BGPSSTR,J,N
 S J=$J
 S BGPDNCNT=0
 K ^TMP("BGPMU SUMMARY",J,BGPIC)
 S ^TMP("BGPMU SUMMARY",J,BGPIC)="0436"_U_"STK-3"
 S N=1 ;only 1 numerator
 ;Setup summary page/iCare ^TMP global
 S CDEN1CT=+$G(^TMP("BGPMU0436",J,"C","DEN"))                 ;current
 S CNUM1CT=+$G(^TMP("BGPMU0436",J,"C","NUM"))
 S CEXC1CT=+$G(^TMP("BGPMU0436",J,"C","EXC"))
 S CMP=$S((CDEN1CT-CEXC1CT)>0:$$ROUND^BGPMUA01(CNUM1CT/(CDEN1CT-CEXC1CT),3)*100,1:0)
 S PDEN1CT=+$G(^TMP("BGPMU0436",J,"P","DEN"))                 ;previous
 S PNUM1CT=+$G(^TMP("BGPMU0436",J,"P","NUM"))
 S PEXC1CT=+$G(^TMP("BGPMU0436",J,"P","EXC"))
 S PMP=$S((PDEN1CT-PEXC1CT)>0:$$ROUND^BGPMUA01(PNUM1CT/(PDEN1CT-PEXC1CT),3)*100,1:0)
 S BDEN1CT=+$G(^TMP("BGPMU0436",J,"B","DEN"))                 ;baseline
 S BNUM1CT=+$G(^TMP("BGPMU0436",J,"B","NUM"))
 S BEXC1CT=+$G(^TMP("BGPMU0436",J,"B","EXC"))
 S BMP=$S((BDEN1CT-BEXC1CT)>0:$$ROUND^BGPMUA01(BNUM1CT/(BDEN1CT-BEXC1CT),3)*100,1:0)
 S BGPDNCNT=BGPDNCNT+1
 S BGPSSTR="MU.EP.0436."_N_U_"# w/anticoag therapy at disch"_U_CEXC1CT_U_CDEN1CT_U_CNUM1CT_U_CMP_U_U_U_U
 ; 11 12 13 14
 S BGPSSTR=BGPSSTR_U_PEXC1CT_U_PDEN1CT_U_PNUM1CT_U_PMP
 ; 15 16 17 18
 S BGPSSTR=BGPSSTR_U_BEXC1CT_U_BDEN1CT_U_BNUM1CT_U_BMP
 S ^TMP("BGPMU SUMMARY",J,BGPIC,BGPDNCNT)=BGPSSTR
 Q
 ;
XML0435 ;XML output for Stroke Measure 0435
 ; BGPXML(i)=Population Number^Numerator Number^Denominator Count
 N STRING
 S STRING=$$435^BGPMUHP2("C")
 S BGPXML(1)="NQF_0435"_U_U_+$P(STRING,U,1)_U_+$P(STRING,U,2)
 K ^TMP("BGPMU0435",$J)
 Q
 ;
XML0436 ;XML output for Stroke Measure 0436
 ; BGPXML(i)=Population Number^Numerator Number^Denominator Count
 N STRING
 S STRING=$$435^BGPMUHP2("C")
 S BGPXML(1)="NQF_0436"_U_U_+$P(STRING,U,1)_U_+$P(STRING,U,2)
 K ^TMP("BGPMU0436",$J)
 Q