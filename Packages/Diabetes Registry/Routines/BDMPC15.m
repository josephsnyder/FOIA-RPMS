BDMPC15 ; IHS/CMI/LAB -IHS -CUMULATIVE REPORT ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**8,9**;JUN 14, 2007;Build 78
 ;
 ;
CUML ;EP
 K BDMCUML
 S BDMCUML(10)="Gender"
 S BDMCUML(20)="Age"
 S BDMCUML(25)="IFG"
 S BDMCUML(30)="IGT"
 S BDMCUML(31)="Metabolic Syndrome"
 S BDMCUML(32)="Other Abnormal Glucose"
 S BDMCUML(40)="Weight Control (BMI) - does not add up to 100%"
 S BDMCUML(60)="Blood Pressure Control - based on mean of last 3 bp's"
 S BDMCUML(80)="Tobacco use"
 S BDMCUML(90)="DIABETES TREATMENT"
 S BDMCUML(100)="ANTI-PLATELET THERAPY"
 S BDMCUML(110)="ACE INHIBITOR (OR ARB) USE"
 S BDMCUML(115)="LIPID LOWERING AGENT USE"
 ;
PROCESS ;
 S BDMPD=0 F  S BDMPD=$O(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD)) Q:BDMPD'=+BDMPD  D CUML1
 Q
 ;
CUML1 ;
GENDER ;
 ;gender BDMCUML(10)="Gender^total^females^males"
 S $P(BDMCUML(10),U,2)=$P(BDMCUML(10),U,2)+1
 S V=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,20))
 S P=$S($E(V)="F":3,$E(V)="M":4,1:5)
 S $P(BDMCUML(10),U,P)=$P(BDMCUML(10),U,P)+1
AGE ;
 S V=$$AGE^AUPNPAT(BDMPD,BDMADAT)
 ;BDMCUML(20)="Age^total^<15^15-44^45-64^>65^unknown"
 S $P(BDMCUML(20),U,2)=$P(BDMCUML(20),U,2)+1
 S P=$S(V<15:3,V>14&(V<45):4,V>44&(V<65):5,V>64:6,1:7)
 S $P(BDMCUML(20),U,P)=$P(BDMCUML(20),U,P)+1
IFG ;
 ;BDMCUML(25)="Total^YES^NO"
 S X=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,200))
 S $P(BDMCUML(25),U,2)=$P(BDMCUML(25),U,2)+1
 S P=$S(X="Yes":3,1:4)
 S $P(BDMCUML(25),U,P)=$P(BDMCUML(25),U,P)+1
IGT ;
 ;BDMCUML(30)="Total^YES^NO"
 S X=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,210))
 S $P(BDMCUML(30),U,2)=$P(BDMCUML(30),U,2)+1
 S P=$S(X="Yes":3,1:4)
 S $P(BDMCUML(30),U,P)=$P(BDMCUML(30),U,P)+1
MS ;
 ;BDMCUML(31)="Total^YES^NO"
 S X=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,220))
 S $P(BDMCUML(31),U,2)=$P(BDMCUML(31),U,2)+1
 S P=$S(X="Yes":3,1:4)
 S $P(BDMCUML(31),U,P)=$P(BDMCUML(31),U,P)+1
ABNG ;
 ;BDMCUML(32)="Total^YES^NO"
 S X=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,230))
 S $P(BDMCUML(32),U,2)=$P(BDMCUML(32),U,2)+1
 S P=$S(X="Yes":3,1:4)
 S $P(BDMCUML(32),U,P)=$P(BDMCUML(32),U,P)+1
BMI ;
 ;BDMCUML(40)="Weight Control (BMI) - does not add up to 100%^total^total^overweight^obese^height or weight missing"
 S V=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,112))
 S $P(BDMCUML(40),U,2)=$P(BDMCUML(40),U,2)+1
 D
 .I V="" S $P(BDMCUML(40),U,5)=$P(BDMCUML(40),U,5)+1 Q
 .I $$OW^BDMDD14(BDMPD,V,BDMADAT) S $P(BDMCUML(40),U,3)=$P(BDMCUML(40),U,3)+1
 .I $$OB^BDMDD14(BDMPD,V,BDMADAT) S $P(BDMCUML(40),U,4)=$P(BDMCUML(40),U,4)+1
BPC ;blood pressure control
 ;take last 3 bp's and get mean systolic and mean diastolic
 S $P(BDMCUML(60),U,2)=$P(BDMCUML(60),U,2)+1
 S S=$$SYSMEAN(BDMPD,BDMRBD,BDMRED)
 S D=$$DIAMEAN(BDMPD,BDMRBD,BDMRED)
 D
 .I S=""!(D="") S $P(BDMCUML(60),U,8)=$P(BDMCUML(60),U,8)+1 Q
 .I S<120&(D<70) S $P(BDMCUML(60),U,3)=$P(BDMCUML(60),U,3)+1 Q
 .I S<131&(D<81) S $P(BDMCUML(60),U,4)=$P(BDMCUML(60),U,4)+1 Q
 .I S<140&(D<90) S $P(BDMCUML(60),U,5)=$P(BDMCUML(60),U,5)+1 Q
 .I S<160&(D<95) S $P(BDMCUML(60),U,6)=$P(BDMCUML(60),U,6)+1 Q
 .S $P(BDMCUML(60),U,7)=$P(BDMCUML(60),U,7)+1
TOBACCO ;
 S $P(BDMCUML(80),U,2)=$P(BDMCUML(80),U,2)+1
 S V=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,27))
 S V1=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,28))
 I +V=1 S $P(BDMCUML(80),U,3)=$P(BDMCUML(80),U,3)+1 S P=$S($E(V1)="1":4,$E(V1)="2":5,1:5) S $P(BDMCUML(80),U,P)=$P(BDMCUML(80),U,P)+1
 I +V=2 S $P(BDMCUML(80),U,6)=$P(BDMCUML(80),U,6)+1
 I +V=3 S $P(BDMCUML(80),U,7)=$P(BDMCUML(80),U,7)+1
DMTX ;diabetes treatment
 S BDM6MBD=$$FMADD^XLFDT(BDMADAT,-(6*31)),BDM6MBD=$$FMTE^XLFDT(BDM6MBD)
 S $P(BDMCUML(90),U,2)=$P(BDMCUML(90),U,2)+1
 S V=$$THERAPY^BDMPC16(BDMPD,BDM6MBD,BDMRED)
 I V=1 S $P(BDMCUML(90),U,3)=$P(BDMCUML(90),U,3)+1
 I $L(V)=1 S P=$S(V=2:4,V=3:5,V=4:6,V=5:7,V=6:8,1:"") S $P(BDMCUML(90),U,P)=$P(BDMCUML(90),U,P)+1
 I $L(V)>1,V["2" S $P(BDMCUML(90),U,10)=$P(BDMCUML(90),U,10)+1
 I $L(V)>1,V'[2 S $P(BDMCUML(90),U,9)=$P(BDMCUML(90),U,9)+1
ASPIRIN ;
 S $P(BDMCUML(100),U,2)=$P(BDMCUML(100),U,2)+1
 S V=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,62))
 S P=$S($E(V)="A":3,$E(V)="O":4,$E(V)="B":5,$E(V)="N":6,1:7)
 S $P(BDMCUML(100),U,P)=$P(BDMCUML(100),U,P)+1
ACE ;110 title^total pts^total pts with protein^# of those on ace^# with htn^# of those on ace"
 S $P(BDMCUML(110),U,2)=$P(BDMCUML(110),U,2)+1
 ;set 3rd piece with # with proteinuria
 ;S P=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,94))
 S H=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,34))
 S A=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,60))
 ;I $E(P)="Y" S $P(BDMCUML(110),U,3)=$P(BDMCUML(110),U,3)+1 I $E(A)="Y" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1
 I $E(H)="Y" S $P(BDMCUML(110),U,5)=$P(BDMCUML(110),U,5)+1 I $E(A)="Y" S $P(BDMCUML(110),U,6)=$P(BDMCUML(110),U,6)+1
LIPID ;115
 S V=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,61))
 S L=$$LDL^BDMDC18(BDMPD,BDMBDAT,BDMADAT,"I"),L=$P(L,U)
 S T=$$CHOL^BDMDC18(BDMPD,BDMBDAT,BDMADAT,"I"),T=$P(T,U)
 I T]"",T'<240 S $P(BDMCUML(115),U,3)=$P(BDMCUML(115),U,3)+1 I "SOB"[$E(V) S $P(BDMCUML(115),U,4)=$P(BDMCUML(115),U,4)+1
 I L]"",L>100 S $P(BDMCUML(115),U,5)=$P(BDMCUML(115),U,5)+1 I "SOB"[$E(V) S $P(BDMCUML(115),U,6)=$P(BDMCUML(115),U,6)+1
 ;lipid agents
 ;7 - all w/agent  8 - all with statin only 9 - all with non-statin 10 - both.fx
 I "SOB"[$E(V) S $P(BDMCUML(115),U,7)=$P(BDMCUML(115),U,7)+1
 I $E(V)="S" S $P(BDMCUML(115),U,8)=$P(BDMCUML(115),U,8)+1
 I $E(V)="O" S $P(BDMCUML(115),U,9)=$P(BDMCUML(115),U,9)+1
 I $E(V)="B" S $P(BDMCUML(115),U,10)=$P(BDMCUML(115),U,10)+1
EDUC ;
 S:'$D(BDMCUML(130)) BDMCUML(130)="DIABETES-RELATED EDUCATION - Yearly"
 S $P(BDMCUML(130),U,2)=$P(BDMCUML(130),U,2)+1
 S G=0,V=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,44))
 I $E(V)="Y" S $P(BDMCUML(130),U,3)=$P(BDMCUML(130),U,3)+1 S G=1
 I $E(V)="R" S $P(BDMCUML(130),U,7)=$P(BDMCUML(130),U,7)+1
 S V=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,46))
 I $E(V)="Y" S $P(BDMCUML(130),U,4)=$P(BDMCUML(130),U,4)+1 S G=1
 I $E(V)="R" S $P(BDMCUML(130),U,8)=$P(BDMCUML(130),U,8)+1
 ;S V=$G(^XTMP("BDMPC1",BDMJOB,BDMBTH,"AUDIT",BDMPD,48))
 ;I $E(V)="R" S $P(BDMCUML(130),U,9)=$P(BDMCUML(130),U,9)+1
 ;I $E(V)="Y" S $P(BDMCUML(130),U,5)=$P(BDMCUML(130),U,5)+1 S G=1
 I G S $P(BDMCUML(130),U,6)=$P(BDMCUML(130),U,6)+1
 D ^BDMPC11
 Q
SYSMEAN(P,BDATE,EDATE) ;EP
 NEW X S X=$$BPS^BDMPC13(P,BDATE,EDATE,"I")
 I X="" Q ""
 NEW Y,C S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C'=3 Q ""
 S C=0 F Y=1:1:3 S C=$P($P(X,";",Y),"/")+C
 Q C\3
 Q ""
DIAMEAN(P,BDATE,EDATE) ;EP
 NEW X S X=$$BPS^BDMPC13(P,BDATE,EDATE,"I")
 I X="" Q ""
 NEW Y,C S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C'=3 Q ""
 S C=0 F Y=1:1:3 S C=$P($P(X,";",Y),"/",2)+C
 Q C\3
