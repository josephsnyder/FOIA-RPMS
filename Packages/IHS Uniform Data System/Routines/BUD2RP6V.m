BUD2RP6V ; IHS/CMI/LAB - UDS REPORT PROCESSOR 01 Dec 2012 5:11 PM ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
 ;
ADOLWT ;EP - called from xbdbque
 ;must have DOB between 1/1/06 and 12/31/06
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUD27RB=($E(BUDBD,1,3)-17)_"0101"
 S BUD2RB=($E(BUDED,1,3)-2)_"1231"
 S BUD3RB=($E(BUDED,1,3)-3)_"1231"
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUD3BD=$E(BUDDOB,1,3)+3_$E(BUDDOB,4,7)
 Q:BUD3BD>BUDED
 S BUD27BD=$E(BUDDOB,1,3)+17_$E(BUDDOB,4,7)
 Q:$$AGE^AUPNPAT(DFN,BUDED)>17
 Q:BUDMEDV<1
 S BUD27TH=$E(BUDDOB,1,3)+17_$E(BUDDOB,4,7)
 I '$$VBBD(DFN,BUDDOB,$$FMADD^XLFDT(BUD27TH,-1)) Q
 K BUDPAP
 ;S BUDPD=$E(BUDBD,1,3)-2_$E(BUDBD,4,7)
 Q:$$PREG^BUD2RP6B(DFN,$$FMADD^XLFDT(BUDED,-609),BUDED)
 S BUDPAP=$$BMINPA(DFN,BUDBD,BUDED,BUDAGE)
 Q:BUDPAP="REF"
 S G=0 F X=1:1:3 I $P(BUDPAP,U,X)]"" S G=G+1
 I G=3 S BUDSECTE("AWT")=$G(BUDSECTE("AWT"))+1
 ;put the rest in demoninator
 S BUDSECTE("PTS")=$G(BUDSECTE("PTS"))+1 D
 .I $G(BUDWAC2L) D
 ..I G'=3 S ^XTMP("BUD2RP6B",BUDJ,BUDH,"WAC2",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=BUDPAP
 .I $G(BUDWAC1L) D
 ..I G=3 S ^XTMP("BUD2RP6B",BUDJ,BUDH,"WAC1",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=BUDPAP
 Q
 ;
 ;
VBBD(P,BDATE,EDATE) ;EP
 NEW BUDVL,G
 K BUDVL
 S G=""
 S A="BUDVL(",B=DFN_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(BUDVL) Q ""
 S X=0 F  S X=$O(BUDVL(X)) Q:X'=+X  S V=$P(BUDVL(X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:'$D(^AUPNVPRV("AD",V))
 .Q:'$D(^AUPNVPOV("AD",V))
 .S L=$P(^AUPNVSIT(V,0),U,6)
 .Q:L=""
 .Q:'$D(^BUDRSITE(BUDSITE,11,L))  ;not valid location
 .Q:$P(^AUPNVSIT(V,0),U,7)="C"
 .Q:$P(^AUPNVSIT(V,0),U,7)="T"
 .Q:$P(^AUPNVSIT(V,0),U,7)="N"
 .Q:$P(^AUPNVSIT(V,0),U,7)="D"
 .Q:$P(^AUPNVSIT(V,0),U,7)="X"
 .Q:$P(^AUPNVSIT(V,0),U,7)="E"
 .S G=V
 .Q
 Q G
 ;
BMINPA(P,BDATE,EDATE,AGE) ;EP
 NEW %,W,H,B,D,%DT,RETVAL,BUDBMI,BUDNE,BUDPA
 S BUDBMI=$$BMI(P,BDATE,EDATE,AGE)
 I BUDBMI="" S BUDBMI=$$BMIPROC(P,BDATE,EDATE)
 I BUDBMI="" I $$REF(P,$$FMADD^XLFDT($$VD^APCLV(BUDLASTV),-(6*30.5)),$$VD^APCLV(BUDLASTV)) Q "REF"
 S BUDNE=$$NUTR(P,BDATE,EDATE)
 S BUDPA=$$PA(P,BDATE,EDATE)
 Q BUDBMI_U_BUDNE_U_BUDPA
BMIPROC(P,BDATE,EDATE) ;EP
 NEW A
 S A=$$LASTDX^BUD2UTL1(P,"BUD BMI PROCS",BDATE,EDATE)
 I A Q "POV "_$P(A,U,2)
 Q ""
REF(P,BDATE,EDATE) ;EP
 NEW H,W
 S H=$$REFRNU^BUD2UTL1(P,9999999.07,$O(^AUTTMSR("B","HT",0)),BDATE,EDATE)
 I H="" Q 1
 S W=$$REFRNU^BUD2UTL1(P,9999999.07,$O(^AUTTMSR("B","WT",0)),BDATE,EDATE)
 I W="" Q 1
 Q ""
BMI(P,BDATE,EDATE,AGE) ;EP
 NEW HDATE,BUDBMIH,W,H,X
 S BUDBMIH=""
 I AGE>18,AGE<51 D  Q BUDBMIH
 .S HDATE=$$FMADD^XLFDT(BDATE,-(5*365)),HDATE=$$FMTE^XLFDT(HDATE)
 .;S BDATE=$$FMADD^XLFDT(BDATE,-(5*365))
 .S BDATE=$$FMTE^XLFDT(BDATE),EDATE=$$FMTE^XLFDT(EDATE)
 .S W=$P($$WT(P,BDATE,EDATE),U,1) I W=""!(W="?") Q
 .S H=$$HT(P,HDATE,EDATE) I H="" Q
 .S W=W*.45359,H=(H*.0254),H=(H*H),BUDBMIH=(W/H)
 I AGE>50 D  Q BUDBMIH
 .S HDATE=$$FMADD^XLFDT(BDATE,-(2*365)),HDATE=$$FMTE^XLFDT(HDATE)
 .S BDATE=$$FMTE^XLFDT(BDATE),EDATE=$$FMTE^XLFDT(EDATE)
 .S W=$P($$WT(P,BDATE,EDATE),U,1) I W=""!(W="?") Q
 .S HDATE=BDATE
 .S H=$$HT(P,HDATE,EDATE) I H="" Q
 .S W=W*.45359,H=(H*.0254),H=(H*H),BUDBMIH=(W/H)
 I AGE<19 D  Q BUDBMIH
 .S X=$$HTWTSD(P,BDATE,EDATE)
 .I '$P(X,"^") Q
 .I '$P(X,"^",2) Q
 .S W=$P(X,"^"),H=$P(X,"^",2)
 .S W=W*.45359,H=(H*.0254),H=(H*H),BUDBMIH=(W/H)
 .Q
 Q ""
HT(P,BDATE,EDATE) ;EP
 I 'P Q ""
 NEW %,BUDARRY,H,E
 S %=P_"^LAST MEAS HT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(%,"BUDARRY(") S H=$P($G(BUDARRY(1)),U,2)
 I H="" Q H
 I H["?" Q ""
 S H=$J(H,2,0)
 Q H
WT(P,BDATE,EDATE) ;EP
 I 'P Q ""
 NEW %,E,BUDLW,X,BUDLN,BUDL,BUDLD,BUDLZ,BUDLX,ICD
 K BUDL S BUDLW="" S BUDLX=P_"^LAST 24 MEAS WT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(BUDLX,"BUDL(")
 S BUDLN=0 F  S BUDLN=$O(BUDL(BUDLN)) Q:BUDLN'=+BUDLN!(BUDLW]"")  D
 .S BUDLZ=$P(BUDL(BUDLN),U,5)
 .I '$D(^AUPNVPOV("AD",BUDLZ)) S BUDLW=$P(BUDL(BUDLN),U,2) Q
 . S BUDLD=0 F  S BUDLD=$O(^AUPNVPOV("AD",BUDLZ,BUDLD)) Q:'BUDLD!(BUDLW]"")  D
 .. S D=$P(BUDL(BUDLN),U)
 .. S ICD=$P($$ICDDX^ICDCODE($P(^AUPNVPOV(BUDLD,0),U),D),U,2) D
 ...I $E(ICD,1,3)="V22" Q
 ...I $E(ICD,1,3)="V23" Q
 ...I $E(ICD,1,3)="V27" Q
 ...I $E(ICD,1,3)="V28" Q
 ...I ICD>629.9999&(ICD<676.95) Q
 ...I ICD>61.49&(ICD<61.71) Q
 ...S BUDLW=$P(BUDL(BUDLN),U,2)
 ..Q
 Q BUDLW
HTWTSD(P,BDATE,EDATE) ;get last ht / wt on same day
 I '$G(P) Q ""
 KILL BUDLWTS,BUDLHTS,%,X,BUDLWTS1,BUDLHTS1,Y
 ;get all hts during time frame
 S %=P_"^ALL MEAS HT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(%,"BUDLHTS(")
 S Y=0 F  S Y=$O(BUDLHTS(Y)) Q:Y'=+Y  I $P(BUDLHTS(Y),U,2)="?"!($P(BUDLHTS(Y),U,2)="") K BUDLHTS(Y)
 ;set the array up by date
 K BUDLHTS1 S X=0 F  S X=$O(BUDLHTS(X)) Q:X'=+X  S BUDLHTS1($P(BUDLHTS(X),U))=X
 ;get all wts during time frame
 S %=P_"^ALL MEAS WT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(%,"BUDLWTS(")
 S Y=0 F  S Y=$O(BUDLWTS(Y)) Q:Y'=+Y  I $P(BUDLWTS(Y),U,2)="?"!($P(BUDLWTS(Y),U,2)="") K BUDLWTS(Y)
 ;set the array up by date
 K BUDLWTS1 S X=0 F  S X=$O(BUDLWTS(X)) Q:X'=+X  S BUDLWTS1($P(BUDLWTS(X),U))=X
 S BUDLCHT="",X=9999999 F  S X=$O(BUDLWTS1(X),-1) Q:X=""!(BUDLCHT]"")  I $D(BUDLHTS1(X)) S BUDLCHT=$P(BUDLWTS(BUDLWTS1(X)),U,2)_U_$P(BUDLHTS(BUDLHTS1(X)),U,2)
 Q BUDLCHT
 ;
NUTR(P,BDATE,EDATE) ;EP
 NEW BUDALLED,BUDG,X,E,%,D,T,Y
 S Y="BUDALLED("
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S (X,D)=0,%="",T="" F  S X=$O(BUDALLED(X)) Q:X'=+X!(%]"")  D
 .S T=$P(^AUPNVPED(+$P(BUDALLED(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I $P(T,"-",2)="N"!($P(T,"-",2)="DT")!($P(T,"-",2)="MNT") S %=T Q
 .I $P(T,"-",1)="97802"!($P(T,"-",1)="97803")!($P(T,"-",1)="97804") S %=T Q
 I %]"" Q %
 S T=$O(^ATXAX("B","BUD NUTRITION CPT",0))
 S %=$$CPT^BUD2DU(P,BDATE,EDATE,T,5)
 I %]"" Q "CPT: "_$P(%,U,2)
 Q ""
PA(P,BDATE,EDATE) ;EP
 NEW BUDALLED,BUDG,X,E,%,D,T,Y
 K BUDG S X=P_"^LAST DX V65.41;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,"BUDG(")
 I $D(BUDG(1)) Q "POV V65.41"
 S Y="BUDALLED("
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BUDALLED(1)) Q ""
 S (X,D)=0,%="",T="" F  S X=$O(BUDALLED(X)) Q:X'=+X!(%]"")  D
 .S T=$P(^AUPNVPED(+$P(BUDALLED(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I $P(T,"-",2)="EX" S %=T Q
 .I $P(T,"-",1)="V65.41" S %=T Q
 Q %
ADULT ;EP
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUD28RB=($E(BUDBD,1,3)-18)_"1231"
 Q:BUDDOB>BUD28RB
 Q:BUDMEDV<1
 S BUD28TH=$E(BUDDOB,1,3)+18_$E(BUDDOB,4,7)
 I '$$VBBD(DFN,$$FMADD^XLFDT(BUD28TH,1),BUDED) Q  ;quit if no visiT AFTER 18TH BIRTHDAY
 ;HAD V66.7 WITHIN 6 MONTHS BEFORE LAST VISIT DATE
 Q:$$LASTDX^BUD2UTL1(DFN,"V66.7",$$FMADD^XLFDT($$VD^APCLV(BUDLASTV),-(6*30.5)),$$VD^APCLV(BUDLASTV))
 K BUDBMI,BUDOW,BUDUW
 S (BUDBMI,BUDOW,BUDUW,BUDPLAN)=""
 ;S BUDPD=$E(BUDBD,1,3)-2_$E(BUDBD,4,7)
 Q:$$PREG^BUD2RP6B(DFN,$$FMADD^XLFDT(BUDED,-609),BUDED)
 S BUDBMI=$$BMI(DFN,$$FMADD^XLFDT($$VD^APCLV(BUDLASTV),-(6*30.5)),$$VD^APCLV(BUDLASTV),BUDAGE)
 ;I BUDBMI="" I $$REF(P,$$FMADD^XLFDT($$VD^APCLV(BUDLASTV),-(6*30.5)),$$VD^APCLV(BUDLASTV)) Q
 I BUDBMI="" S BUDPLAN=$$PLAN(DFN,BUDBD,BUDED) I BUDPLAN]"" S G=0 S ^XTMP("BUD2RP6B",BUDJ,BUDH,"AWS2",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=BUDBMI_U_$S(BUDOW]"":"OVERWEIGHT",BUDUW]"":"UNDERWEIGHT",1:"")_U_BUDPLAN Q  ;NO BMI
 I BUDBMI="" Q
 I BUDAGE<65 D  G N
 .I BUDBMI>25 S BUDOW="OW"
 .I BUDBMI<18.5 S BUDUW="UW"
 I BUDBMI'<30 S BUDOW="OW"
 I BUDBMI<22 S BUDUW="UW"
 ;put the rest in demoninator
N I BUDOW="",BUDUW="" Q  ;not over/underweight & HAD BMI
 S BUDWTDT=$$BMI^BUD2RP6R(DFN,$$FMADD^XLFDT($$VD^APCLV(BUDLASTV),-(6*30.5)),$$VD^APCLV(BUDLASTV),BUDAGE)
 S BUDPLAN=$$PLAN(DFN,BUDWTDT,BUDED)
 S G=0
 I BUDPLAN]"" S G=1,BUDSECTF("PLAN")=$G(BUDSECTF("PLAN"))+1
 ;put the rest in demoninator
 S BUDSECTF("PTS")=$G(BUDSECTF("PTS"))+1 D
 .I $G(BUDAWS2L) D
 ..I 'G S ^XTMP("BUD2RP6B",BUDJ,BUDH,"AWS2",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=BUDBMI_U_$S(BUDOW]"":"OVERWEIGHT",BUDUW]"":"UNDERWEIGHT",1:"")_U_BUDPLAN
 .I $G(BUDAWS1L) D
 ..I G S ^XTMP("BUD2RP6B",BUDJ,BUDH,"AWS1",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=BUDBMI_U_$S(BUDOW]"":"OVERWEIGHT",BUDUW]"":"UNDERWEIGHT",1:"")_U_BUDPLAN
 Q
 ;
PLAN(P,BD,ED) ;
 NEW G,Y,X,E,T,%,Z,BUDALLED
 ;S BD=D,ED=D
 ;check for cpt codes
 S G=$$CPT^BUD2UTL1(P,BD,ED,$O(^ATXAX("B","BUD WT PLAN CPTS",0)),5)
 I G]"" Q $P(G,U,2)_" on "_$$FMTE^XLFDT($P(G,U,1))
 S G=$$LASTDX^BUD2UTL1(P,"BUD WT PLAN DXS",BD,ED)
 I G Q $P(G,U,2)_" on "_$$FMTE^XLFDT($P(G,U,3))
 K BUDALLED
 S Y="BUDALLED("
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BD)_"-"_$$FMTE^XLFDT(ED) S E=$$START1^APCLDF(X,Y)
 S (X,D)=0,%="",T="" F  S X=$O(BUDALLED(X)) Q:X'=+X!(%]"")  D
 .S T=$P(^AUPNVPED(+$P(BUDALLED(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .S E=$P(BUDALLED(X),U,1)
 .I $P(T,"-",2)="EX"!($P(T,"-",2)="LA")!($P(T,"-",2)="N")!($P(T,"-",2)="DT")!($P(T,"-",2)="MNT") S %=T_U_E Q
 .I $P(T,"-",1)="OBS"!($P(T,"-",1)="V65.3")!($P(T,"-",1)="V65.41")!($P(T,"-",1)="278.00")!($P(T,"-",1)="278.01") S %=T_U_E Q
 I %]"" Q $P(%,U,1)_" on "_$$FMTE^XLFDT($P(%,U,2))
 ;now check for a clinic or provider visit
 NEW BUDG,W,R
 K BUDG
 S %=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BD)_"-"_$$FMTE^XLFDT(ED),E=$$START1^APCLDF(%,"BUDG(")
 S (X,Y,D)="" F  S X=$O(BUDG(X)) Q:X'=+X!(Y)  D
 .S Z=0 F  S Z=$O(^AUPNVPRV("AD",$P(BUDG(X),U,5),Z)) Q:Z'=+Z!(Y)  D
 ..S W=$P($G(^AUPNVPRV(Z,0)),U,1)
 ..Q:W=""
 ..S R=$$VALI^XBDIQ1(200,W,53.5)
 ..I R="" Q
 ..S R=$P($G(^DIC(7,R,9999999)),U,1)
 ..I R="07"!(R=29) S Y=1,D="Provider "_R_" on "_$$FMTE^XLFDT($P(BUDG(X),U)) Q
 ..S R=$$CLINIC^APCLV($P(BUDG(X),U,5),"C") I R=67!(R=36) S Y=1,D="Clinic "_R_" on "_$$FMTE^XLFDT($P(BUDG(X),U)) Q
 I Y Q D
 Q ""
G1 ;EP
 NEW BUDGOT
 S BUDGOT=""
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUD28RB=($E(BUDBD,1,3)-18)_"1231"
 Q:BUDDOB>BUD28RB
 Q:BUDMEDV<1
 S BUD28TH=$E(BUDDOB,1,3)+18_$E(BUDDOB,4,7)
 I '$$VBBD(DFN,$$FMADD^XLFDT(BUD28TH,1),BUDED) Q
 S X=$$GETV^BUD2RP6U(DFN,BUDDOB,BUDED,BUDSITE)
 Q:X<2
 K BUDTOBS,BUDTOBD
 S BUDTOBDD=$E(BUDBD,1,3)-1_$E(BUDBD,4,7)
 S BUDTOBS=$$TOBACCO(DFN,$$DOB^AUPNPAT(DFN),BUDED)
 I BUDTOBS]"",$P(BUDTOBS,U,3)'<BUDTOBDD S BUDSECG1("ABM")=$G(BUDSECG1("ABM"))+1,BUDGOT=1
 ;put the rest in demoninator
 S BUDSECG1("PTS")=$G(BUDSECG1("PTS"))+1 D
 .I $G(BUDTUA2L) D
 ..I 'BUDGOT S ^XTMP("BUD2RP6B",BUDJ,BUDH,"TUA2",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=BUDTOBS
 .I $G(BUDTUA1L) D
 ..I BUDGOT S ^XTMP("BUD2RP6B",BUDJ,BUDH,"TUA1",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=BUDTOBS
 Q
 ;
TOBACCO(P,BDATE,EDATE) ;
 ;TOBACCO SCREENING IN DATE RANGE?
 NEW BUDTOB,BUDX,BUDPV,BUDLAST
 K BUDLAST
 D TOBACCO1
 I BUDTOB]"" S BUDLAST($P(BUDTOB,U,3))=BUDTOB
 ;PATIENT ED
 S BUDTOB=$$TOBPED(P,BDATE,EDATE)
 I BUDTOB]"" S X=$P(BUDTOB,U,3),BUDLAST(X)=BUDTOB
 S BUDPV=$$LASTDX^BUD2UTL1(P,"BUD TOBACCO SCREEN DXS",BDATE,EDATE)
 I BUDPV S BUDLAST($P(BUDPV,U,3))=$P(BUDPV,U,2)_U_$$FMTE^XLFDT($P(BUDPV,U,3))_U_$P(BUDPV,U,3)  ; Q BUDTOB
 S BUDCPT=$$CPT^BUD2UTL1(P,BDATE,EDATE,$O(^ATXAX("B","BUD TOBACCO SCREEN CPTS",0)),7)
 I BUDCPT]"" S BUDLAST($P(BUDCPT,U,3))=BUDCPT    ;S BUDTOB=BUDCPT Q BUDTOB
 I '$D(BUDLAST) Q ""
 S BUDX=0 F  S BUDX=$O(BUDLAST(BUDX)) Q:BUDX'=+BUDX  S BUDTOB=BUDX
 Q BUDLAST(BUDTOB)
TOBACCO1 ;
 K BUDTOB
 S BUDTOB=$$LASTHF(P,"TOBACCO (SMOKING)",BDATE,EDATE) K O,D,H
 I BUDTOB]"" S BUDLAST($P(BUDTOB,U,3))=BUDTOB
 S BUDTOB=$$LASTHF(P,"TOBACCO (SMOKELESS - CHEWING/DIP)",BDATE,EDATE) K O,D,H
 I BUDTOB]"" S BUDLAST($P(BUDTOB,U,3))=BUDTOB
 S BUDTOB=$$LASTHF(P,"TOBACCO (EXPOSURE)",BDATE,EDATE) K O,D,H
 I BUDTOB]"" S BUDLAST($P(BUDTOB,U,3))=BUDTOB
 S BUDTOB=$$LASTHF(P,"TOBACCO",BDATE,EDATE) K O,D,H
 I BUDTOB]"" S BUDLAST($P(BUDTOB,U,3))=BUDTOB
 Q
TOBACCO0 ;
 S (X,Y)=0 F  S X=$O(^AUPNHF("AA",P,X)) Q:X'=+X!(Y)  I $$VAL^XBDIQ1(9999999.64,X,.03)="TOBACCO" S Y=X
 Q:'Y
 S E=$O(^AUPNHF("AA",P,Y,0)) Q:'E
 I (9999999-E)>EDATE Q
 I (9999999-E)<BDATE Q
 S Y=$P(^AUTTHF(Y,0),U)
 S BUDTOB=Y_"^"_$$FMTE^XLFDT(9999999-E)_"^"_(9999999-E)
 K Y,E,X
 Q
 ;
LASTHF(P,C,BDATE,EDATE) ;EP
 S C=$O(^AUTTHF("B",C,0))
 I '$G(C) Q ""
 S (H,D)=0 K O
 F  S H=$O(^AUTTHF("AC",C,H))  Q:'+H  D
 .Q:'$D(^AUPNVHF("AA",P,H))
 .S D="" F  S D=$O(^AUPNVHF("AA",P,H,D)) Q:D'=+D  D
 ..Q:(9999999-D)>EDATE
 ..Q:(9999999-D)<BDATE
 ..S O(D)=$O(^AUPNVHF("AA",P,H,D,""))
 .Q
 S D=$O(O(0))
 I D="" Q D
 Q $$VAL^XBDIQ1(9000010.23,O(D),.01)_"^"_$$FMTE^XLFDT(9999999-D)_"^"_(9999999-D)
 ;
TOBPED(P,BDATE,EDATE) ;EP
 NEW Y,X,E,D,T,%,BUDG,BUDPED
 K BUDPED
 S Y="BUDG("
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BUDG) Q ""
 S (X,D)=0,%="",T="" F  S X=$O(BUDG(X)) Q:X'=+X  D
 .S T=$P(^AUPNVPED(+$P(BUDG(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I $P(T,"-")="TO" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-",2)="TO" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-",2)="SHS" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="305.1" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="649.00" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="649.01" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="649.02" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="649.03" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="649.04" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="V15.82" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="1034F" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="1035F" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="1036F" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 .I $P(T,"-")="1000F" S BUDPED($P(BUDG(X),U))=T_U_$$FMTE^XLFDT($P(BUDG(X),U))_U_$P(BUDG(X),U) Q
 I '$D(BUDPED) Q ""
 S X=0 F  S X=$O(BUDPED(X)) Q:X'=+X  S %=X
 Q BUDPED(%)
G2 ;
 D G2^BUD2RP6U
 Q
