BDMD115 ; IHS/CMI/LAB -IHS -CUMULATIVE REPORT 03 Feb 2011 5:38 PM ; 
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**4**;JUN 14, 2007
 ;
 ;
CUML ;EP
 K BDMCUML
 S BDMCUML(10)="Gender"
 S BDMCUML(20)="Age"
 S BDMCUML(25)="Diabetes Type"
 S BDMCUML(30)="Duration of Diabetes"
 S BDMCUML(40)="Weight Control (BMI)"
 S BDMCUML(50)="Blood Sugar Control"
 S BDMCUML(70)="Tuberculosis Status"
 S BDMCUML(60)="Mean Blood Pressure"
 S BDMCUML(80)="Tobacco use"
 S BDMCUML(90)="DIABETES TREATMENT"
 S BDMCUML(100)="ANTIPLATELET THERAPY (Men age >50, Women >60)"
 S BDMCUML(110)="ACE INHIBITOR (OR ARB) USE"
 S BDMCUML(115)="LIPID LOWERING AGENT USE"
 S BDMCUML(300)="Depression on Problem List or as POVs"
 S BDMCUML(301)="Depression Screening?"
 S BDMCUML(120)="EXAMS - Yearly"
 S BDMCUML(130)="DIABETES-RELATED EDUCATION - Yearly"
 S BDMCUML(140)="IMMUNIZATIONS"
 S BDMCUML(145)="LABORATORY EXAMS"
 S BDMCUML(150)="Electrocardiogram (Age 30 and above)"
 S BDMCUML(170)="Creatinine obtained during audit period"
 S BDMCUML(175)="Estimated GFR documented during audit period"
 S BDMCUML(180)="Total Cholesterol obtained in past 12 months"
 S BDMCUML(190)="LDL Cholesterol obtained during audit period"
 S BDMCUML(195)="HDL Cholesterol obtained during audit period"
 S BDMCUML(200)="Triglycerides obtained during audit period"
 ;
PROCESS ;
 S BDMNOGO=0
 S BDMPD=0 F  S BDMPD=$O(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD)) Q:BDMPD'=+BDMPD  D CUML1
 Q
 ;
CUML1 ;
GENDER ;
 I $$DODX^BDMD116(BDMPD,BDMDMRG,"I")>BDMADAT S BDMNOGO=BDMNOGO+1 Q
 ;gender BDMCUML(10)="Gender^total^females^males"
 S $P(BDMCUML(10),U,2)=$P(BDMCUML(10),U,2)+1
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,20))
 S P=$S($E(V)="F":3,$E(V)="M":4,1:5)
 S $P(BDMCUML(10),U,P)=$P(BDMCUML(10),U,P)+1
AGE ;
 S V=$$AGE^AUPNPAT(BDMPD,BDMADAT)
 ;BDMCUML(20)="Age^total^<15^15-44^45-64^>65^unknown"
 S $P(BDMCUML(20),U,2)=$P(BDMCUML(20),U,2)+1
 S P=$S(V<15:3,V>14&(V<45):4,V>44&(V<65):5,V>64:6,1:7)
 S $P(BDMCUML(20),U,P)=$P(BDMCUML(20),U,P)+1
TYPE ;
 ;BDMCUML(25)="Total^Type 1^Type 2"
 S X=$$TYPE^BDMD116(BDMPD,BDMDMRG,BDMADAT)
 S $P(BDMCUML(25),U,2)=$P(BDMCUML(25),U,2)+1
 S P=$S(X="":4,X=1:3,X=2:4,1:4)
 S $P(BDMCUML(25),U,P)=$P(BDMCUML(25),U,P)+1
DURDMC ;
 ;BDMCUML(30)="Duration of Diabetes^total^<10^10 or more^no date of dx on problem list or cms register^less than 1 year"
 S $P(BDMCUML(30),U,2)=$P(BDMCUML(30),U,2)+1
 S V=$$DURDM^BDMD114(BDMPD,BDMDMRG,BDMADAT)
 S P=$S(V="":5,V<10:3,1:4)
 S $P(BDMCUML(30),U,P)=$P(BDMCUML(30),U,P)+1
 I V]"",V<1 S $P(BDMCUML(30),U,6)=$P(BDMCUML(30),U,6)+1
BMI ;
 ;BDMCUML(40)="Weight Control (BMI) - does not add up to 100%^total^total^overweight^obese^height or weight missing"
 ;S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,112))
 S H=$$LASTHT^BDMD113(BDMPD,BDMRED,"I") S:H]"" H=$J(H,5,2)
 S W=+$$LASTWT^BDMD113(BDMPD,BDMBDAT,BDMRED),W=$S(W=0:"",1:W),W=W+.5,W=$P(W,".")
 S V=$$BMIEPI^BDMD119(H,W)
 S $P(BDMCUML(40),U,2)=$P(BDMCUML(40),U,2)+1
 D
 .I V="" S $P(BDMCUML(40),U,5)=$P(BDMCUML(40),U,5)+1 Q
 .I $$OW^BDMD114(BDMPD,V,BDMADAT) S $P(BDMCUML(40),U,3)=$P(BDMCUML(40),U,3)+1 Q
 .I $$OB^BDMD114(BDMPD,V,BDMADAT) S $P(BDMCUML(40),U,4)=$P(BDMCUML(40),U,4)+1 Q
 .S $P(BDMCUML(40),U,6)=$P(BDMCUML(40),U,6)+1 Q
HGB ;
 ;use last hgba1c value only
 ;BDMCUML(50)=
 S $P(BDMCUML(50),U,2)=$P(BDMCUML(50),U,2)+1
 S V=$P($G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,78)),U,2)
 S P=""
 I V=""!(V="?") S P=9 G HGBS
 I V["<" S P=3
 I V[">" S P=8
 I P G HGBS
 S V=$$STV^BDMD118(V,5)
 I V="" S P=9 G HGBS
 S V=+V
 S P=$S(V="":9,V<7.0:3,V>6.9&(V<8.0):4,V>7.9&(V<9.0):5,V>8.9&(V<10.0):6,V<11.0&(V>9.9):7,V>10.9:8,1:9)
HGBS ;
 S $P(BDMCUML(50),U,P)=$P(BDMCUML(50),U,P)+1
BPC ;blood pressure control
 ;take last 3 bp's and get mean systolic and mean diastolic
 S $P(BDMCUML(60),U,2)=$P(BDMCUML(60),U,2)+1
 S S=$$SYSMEAN(BDMPD,BDMRBD,BDMRED)
 S D=$$DIAMEAN(BDMPD,BDMRBD,BDMRED)
 D
 .I S=""!(D="") S $P(BDMCUML(60),U,8)=$P(BDMCUML(60),U,8)+1 Q
 .I S<120&(D<70) S $P(BDMCUML(60),U,3)=$P(BDMCUML(60),U,3)+1 Q
 .I S<130&(D<80) S $P(BDMCUML(60),U,4)=$P(BDMCUML(60),U,4)+1 Q
 .I S<140&(D<90) S $P(BDMCUML(60),U,5)=$P(BDMCUML(60),U,5)+1 Q
 .I S<160&(D<95) S $P(BDMCUML(60),U,6)=$P(BDMCUML(60),U,6)+1 Q
 .S $P(BDMCUML(60),U,7)=$P(BDMCUML(60),U,7)+1
TBSTAT ;
 S $P(BDMCUML(70),U,2)=$P(BDMCUML(70),U,2)+1
 S V=$$TBCODE^BDMD116(BDMPD,BDMRED,BDMDMRG)
 S $P(BDMCUML(70),U,(V+2))=$P(BDMCUML(70),U,(V+2))+1
TOBACCO ;
 S $P(BDMCUML(80),U,2)=$P(BDMCUML(80),U,2)+1
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,27))
 S V1=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,28))
 I +V=1 S $P(BDMCUML(80),U,3)=$P(BDMCUML(80),U,3)+1 S P=$S($E(V1)="1":4,$E(V1)="2":5,1:6) S $P(BDMCUML(80),U,P)=$P(BDMCUML(80),U,P)+1
 I +V=2 S $P(BDMCUML(80),U,7)=$P(BDMCUML(80),U,7)+1
 I +V=3 S $P(BDMCUML(80),U,8)=$P(BDMCUML(80),U,8)+1
DMTX ;diabetes treatment
 S BDM6MBD=$$FMADD^XLFDT(BDMADAT,-(6*31)),BDM6MBD=$$FMTE^XLFDT(BDM6MBD)
 S $P(BDMCUML(90),U,2)=$P(BDMCUML(90),U,2)+1
 S V=$$THERAPY^BDMD116(BDMPD,BDM6MBD,BDMRED)  ;^ pieced with each item  or =1 for diet alone or =13 for refused
 I V=1 S $P(BDMCUML(90),U,3)=$P(BDMCUML(90),U,3)+1 G ASPIRIN  ;DIET ALONE
 I V="R" S $P(BDMCUML(90),U,15)=$P(BDMCUML(90),U,15)+1 G ASPIRIN  ;REFUSAL
 N I,INS,ORAL,OTHER
 S (INS,ORAL,OTHER)=""
 F I=1:1 S Q=$P(V,U,I) Q:Q=""  D
 . S P=$S(Q=2:4,Q=3:5,Q=4:6,Q=5:7,Q=6:8,Q=7:9,Q=8:10,Q=9:11,Q=10:12,Q=11:13,Q=12:14,1:"") S $P(BDMCUML(90),U,P)=$P(BDMCUML(90),U,P)+1
 . I Q=2 S INS=1 Q
 . I Q=8 S OTHER=1 Q  ;byetta
 . I Q=10 S OTHER=1 Q  ;amylin
 . I Q=11 S OTHER=1 Q  ;GLP VICTOZA
 . S ORAL=ORAL+1
 ;
 I INS,ORAL S $P(BDMCUML(90),U,17)=$P(BDMCUML(90),U,17)+1 G ASPIRIN
 I INS,OTHER S $P(BDMCUML(90),U,17)=$P(BDMCUML(90),U,17)+1 G ASPIRIN
 I INS G ASPIRIN
 I ORAL>1 S $P(BDMCUML(90),U,16)=$P(BDMCUML(90),U,16)+1  ;
 ;
ASPIRIN ;
 ;only tally if patient is 30 and older
 ;G ACE:$$AGE^AUPNPAT(BDMPD,BDMADAT)<41  ;changed to 41 from 30 with 2010
 I $$SEX^AUPNPAT(BDMPD)="M",$$AGE^AUPNPAT(BDMPD,BDMADAT)<51 G ACE
 I $$SEX^AUPNPAT(BDMPD)="F",$$AGE^AUPNPAT(BDMPD,BDMADAT)<61 G ACE
 S $P(BDMCUML(100),U,2)=$P(BDMCUML(100),U,2)+1
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,62))
 S P=$S($E(V)=1:3,$E(V)=3:5,$E(V)=2:4,1:4)
 S $P(BDMCUML(100),U,P)=$P(BDMCUML(100),U,P)+1
ACE ;110 title^total pts^total pts with protein^# of those on ace^# with htn^# of those on ace"
 S $P(BDMCUML(110),U,2)=$P(BDMCUML(110),U,2)+1
 ;set 3rd piece with # with proteinuria
 S P=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,92))  ;URINE PROTEIN VALUE
 S H=$E($G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,34)))
 S A=$E($G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,60)))
 I A S $P(BDMCUML(110),U,3)=$P(BDMCUML(110),U,3)+1  ;TOTAL ACE
 I $E(H)=1 S $P(BDMCUML(110),U,5)=$P(BDMCUML(110),U,5)+1 I A=1 S $P(BDMCUML(110),U,7)=$P(BDMCUML(110),U,7)+1  ;TOTAL HTN
 I $P(P,U,5)=1 S V=$P(P,U,2) D  ;THIS IS THE A/C RATIO, COUNT ANYTHING GREATER THAN 29.999999
 .I V["<" Q
 .I V[">" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 D  Q  ;this would be the >300 value
 ..I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .I V["-" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 D  Q  ;this would be the 30-300 value
 ..I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .I V["300" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 D  Q  ;this would be the 30-300 value
 ..I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .S V=$$STV^BDMD118(V,8)
 .I V>29.999999 S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q  ;this would cover numeric values
 I $P(P,U,5)=2 S V=$P(P,U,2) D  ;THIS IS THE PCR COUNT ANYTHING GREATER THAN 0.2
 .S V=$$STV^BDMD118(V,5,1)
 .I V>0.2 S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 D  Q
 ..I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 I $P(P,U,5)=3 S V=$P(P,U,2) D   ;this is the 24 hour urine protein
 .I V["<" Q
 .S V=$$STV^BDMD118(V,5,1)
 .I V>300 S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 D  Q
 ..I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 I $P(P,U,5)=4 S V=$P(P,U,2) D  ;this is the micro strips with a 30-300 value
 .I V["<" Q
 .I V[">" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 D  Q  ;this would be the >300 value
 ..I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .I V["-" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 D  Q  ;this would be the 30-300 value
 ..I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .I V["300" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 D  Q  ;this would be the 30-300 value
 ..I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .S V=$$STV^BDMD118(V,8)
 .I V>29.999999 S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q  ;this would cover numeric values
 I $P(P,U,5)=5 S V=$P(P,U,2) D  ;this is the micral, use anything >=20  (not less than 20)
 .S V=$$STV^BDMD118(V,8,2)
 .I V,V'<20 S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 I $P(P,U,5)=6 S V=$P(P,U,2) D  ;this is the urine dipstick, count anything 1+ or above
 .I V["+"!(V[">")!($E(V)="p")!($E(V)="P") S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .I $E($$UP^XLFSTR(V))="S" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .I $E($$UP^XLFSTR(V))="M" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .I $E($$UP^XLFSTR(V))="L" S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
 .I +V>29 S $P(BDMCUML(110),U,4)=$P(BDMCUML(110),U,4)+1 I A=1 S $P(BDMCUML(110),U,8)=$P(BDMCUML(110),U,8)+1 Q
LIPIDAG ;lipid agents
 S BDMLPC=0,BDMREF=0
 S BDM6M=$$FMADD^XLFDT(BDMADAT,-(6*31))
 S $P(BDMCUML(115),U,2)=$P(BDMCUML(115),U,2)+1
 S V=$$STATIN^BDMD116(BDMPD,BDM6M,BDMADAT)
 I V]"" S BDMLPC=BDMLPC+1,$P(BDMCUML(115),U,6)=$P(BDMCUML(115),U,6)+1
 S V=$$FIBRATE^BDMD116(BDMPD,BDM6M,BDMADAT)
 I V]"" S BDMLPC=BDMLPC+1,$P(BDMCUML(115),U,7)=$P(BDMCUML(115),U,7)+1
 S V=$$NIACIN^BDMD116(BDMPD,BDM6M,BDMADAT)
 I V]"" S BDMLPC=BDMLPC+1,$P(BDMCUML(115),U,8)=$P(BDMCUML(115),U,8)+1
 S V=$$BILE^BDMD116(BDMPD,BDM6M,BDMADAT)
 I V]"" S BDMLPC=BDMLPC+1,$P(BDMCUML(115),U,9)=$P(BDMCUML(115),U,9)+1
 S V=$$EZET^BDMD116(BDMPD,BDM6M,BDMADAT)
 I V]"" S BDMLPC=BDMLPC+1,$P(BDMCUML(115),U,10)=$P(BDMCUML(115),U,10)+1
 S V=$$FISHOIL^BDMD116(BDMPD,BDM6M,BDMADAT)
 I V]"" S BDMLPC=BDMLPC+1,$P(BDMCUML(115),U,11)=$P(BDMCUML(115),U,11)+1
 S V=$$LOVAZA^BDMD116(BDMPD,BDM6M,BDMADAT)
 I V]"" S BDMLPC=BDMLPC+1,$P(BDMCUML(115),U,12)=$P(BDMCUML(115),U,12)+1
 I BDMLPC=0 S $P(BDMCUML(115),U,5)=$P(BDMCUML(115),U,5)+1
 I BDMLPC=1 S $P(BDMCUML(115),U,3)=$P(BDMCUML(115),U,3)+1,$P(BDMCUML(115),U,13)=$P(BDMCUML(115),U,13)+1
 I BDMLPC>1 S $P(BDMCUML(115),U,4)=$P(BDMCUML(115),U,4)+1,$P(BDMCUML(115),U,13)=$P(BDMCUML(115),U,13)+1
LIPID ;115
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,61))
 S L=$$LDL^BDMD118(BDMPD,BDMBDAT,BDMADAT,"I"),L=$P(L,U)
 S T=$$CHOL^BDMD118(BDMPD,BDMBDAT,BDMADAT,"I"),T=$P(T,U)
 S T=$$STV^BDMD118(T,5,1)
 S L=$$STV^BDMD118(L,5,1)
DEP ;
 S $P(BDMCUML(300),U,2)=$P(BDMCUML(300),U,2)+1
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,200))
 I $E(V)="1" S $P(BDMCUML(300),U,3)=$P(BDMCUML(300),U,3)+1
 I $E(V)'="1" S $P(BDMCUML(301),U,2)=$P(BDMCUML(301),U,2)+1 D
 .S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,210))
 .I $E(V)="1" S $P(BDMCUML(301),U,3)=$P(BDMCUML(301),U,3)+1
 .I $E(V)="2" S $P(BDMCUML(301),U,4)=$P(BDMCUML(301),U,4)+1
 .I $E(V)="3" S $P(BDMCUML(301),U,5)=$P(BDMCUML(301),U,5)+1
EXAMS ;
 S:'$D(BDMCUML(120)) BDMCUML(120)="EXAMS - Yearly"
 S $P(BDMCUML(120),U,2)=$P(BDMCUML(120),U,2)+1
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,38))
 I $E(V)="1" S $P(BDMCUML(120),U,3)=$P(BDMCUML(120),U,3)+1
 I $E(V)="3" S $P(BDMCUML(120),U,6)=$P(BDMCUML(120),U,6)+1
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,40))
 I $E(V)="1" S $P(BDMCUML(120),U,4)=$P(BDMCUML(120),U,4)+1
 I $E(V)="3" S $P(BDMCUML(120),U,7)=$P(BDMCUML(120),U,7)+1
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,42))
 I $E(V)="1" S $P(BDMCUML(120),U,5)=$P(BDMCUML(120),U,5)+1
 I $E(V)="3" S $P(BDMCUML(120),U,8)=$P(BDMCUML(120),U,8)+1
 I $P(^DPT(BDMPD,0),U,2)="F" S $P(BDMCUML(120),U,9)=$P(BDMCUML(120),U,9)+1
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,108))
 I $E(V)="1" S $P(BDMCUML(120),U,10)=$P(BDMCUML(120),U,10)+1
 I $E(V)="3" S $P(BDMCUML(120),U,11)=$P(BDMCUML(120),U,11)+1
EDUC ;
 S:'$D(BDMCUML(130)) BDMCUML(130)="DIABETES-RELATED EDUCATION - Yearly"
 S $P(BDMCUML(130),U,2)=$P(BDMCUML(130),U,2)+1
 S G=0,V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,44))
 I $E(V)="1"!($E(V)=2)!($E(V)=3) S $P(BDMCUML(130),U,3)=$P(BDMCUML(130),U,3)+1 S G=1
 I $E(V)="5" S $P(BDMCUML(130),U,7)=$P(BDMCUML(130),U,7)+1
 I $E(V)="1" S $P(BDMCUML(130),U,10)=$P(BDMCUML(130),U,10)+1 S G=1
 I $E(V)="3" S $P(BDMCUML(130),U,10)=$P(BDMCUML(130),U,10)+1 S G=1  ;cmi/maw 1/15/08
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,46))
 I $E(V)="1" S $P(BDMCUML(130),U,4)=$P(BDMCUML(130),U,4)+1 S G=1
 I $E(V)="3" S $P(BDMCUML(130),U,8)=$P(BDMCUML(130),U,8)+1
 S V=$G(^XTMP("BDMDM11",BDMJOB,BDMBTH,"AUDIT",BDMPD,48))
 I $E(V)="3" S $P(BDMCUML(130),U,9)=$P(BDMCUML(130),U,9)+1
 I $E(V)="1" S $P(BDMCUML(130),U,5)=$P(BDMCUML(130),U,5)+1 S G=1
 I G S $P(BDMCUML(130),U,6)=$P(BDMCUML(130),U,6)+1
 D ^BDMD111
 Q
SYSMEAN(P,BDATE,EDATE) ;EP
 NEW X,Z S X=$$BPS^BDMD113(P,BDATE,EDATE,"I")
 I X="" Q ""
 NEW Y,C S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C<2 Q ""
 S Z=C
 S C=0 F Y=1:1:Z S C=$P($P(X,";",Y),"/")+C
 Q C\Z
DIAMEAN(P,BDATE,EDATE) ;EP
 NEW X,Z S X=$$BPS^BDMD113(P,BDATE,EDATE,"I")
 I X="" Q ""
 NEW Y,C S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C<2 Q ""
 S Z=C
 S C=0 F Y=1:1:Z S C=$P($P(X,";",Y),"/",2)+C
 Q C\Z
