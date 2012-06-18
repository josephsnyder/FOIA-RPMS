BDMD208 ; IHS/CMI/LAB - 2000 DIABETES AUDIT ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**2**;JUN 14, 2007
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning in WT
 ;
SETN ;set N = to v lab to use
 S N="" NEW A,G S (A,G)=0 F  S A=$O(BDM(A)) Q:A'=+A!(G)  S R=$P(^AUPNVLAB(+$P(BDM(A),U,4),0),U,4) I R]"",$$UP^XLFSTR(R)'="COMMENT" S G=A
 S N=$S(G:G,1:1)
 Q
SET3 ;find 3, kill others out of BDM
 NEW X,N1,N2,N3,A
 K A
 S X=0 F  S X=$O(BDM(X)) Q:X'=+X  S A($P(BDM(X),U),X)=""
 NEW D S D=0 F  S D=$O(A(D)) Q:D'=+D  D
 .S G=0,N=0 F  S N=$O(A(D,N)) Q:N'=+N  D
 ..;I $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"" S G=1 Q
 ..I $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"",$$UP^XLFSTR($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4))'="COMMENT" S G=1 Q
 .I G S N=0 F  S N=$O(A(D,N)) Q:N'=+N  I $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)="" K BDM(N)
 .Q
 Q
HT(P,BDATE,EDATE) ;EP
 I 'P Q ""
 NEW %,BDMARRY,H,E
 S %=P_"^LAST MEAS HT;DURING "_BDATE_"-"_EDATE NEW X S E=$$START1^APCLDF(%,"BDMARRY(") S H=$P($G(BDMARRY(1)),U,2)
 I H="" Q H
 I H["?" Q ""
 S H=$J(H,2,0)
 Q H
WT(P,BDATE,EDATE) ;EP
 I 'P Q ""
 NEW %,E,BDMW,X,BDMN,BDM,BDMD,BDMZ,BDMX,ICD
 K BDM S BDMW="" S BDMX=P_"^LAST 24 MEAS WT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(BDMX,"BDM(")
 S BDMN=0 F  S BDMN=$O(BDM(BDMN)) Q:BDMN'=+BDMN!(BDMW]"")  D
 .S BDMZ=$P(BDM(BDMN),U,5)
 .I '$D(^AUPNVPOV("AD",BDMZ)) S BDMW=$P(BDM(BDMN),U,2) Q
 . S BDMD=0 F  S BDMD=$O(^AUPNVPOV("AD",BDMZ,BDMD)) Q:'BDMD!(BDMW]"")  D
 .. ;S ICD=$P(^ICD9($P(^AUPNVPOV(BDMD,0),U),0),U) D  ;cmi/anch/maw 9/10/2007 orig line
 .. S ICD=$P($$ICDDX^ICDCODE($P(^AUPNVPOV(BDMD,0),U)),U,2) D  ;cmi/anch/maw 9/10/2007 csv
 ...I $E(ICD,1,3)="V22" Q
 ...I $E(ICD,1,3)="V23" Q
 ...I $E(ICD,1,3)="V27" Q
 ...I $E(ICD,1,3)="V28" Q
 ...I ICD>629.9999&(ICD<676.95) Q
 ...I ICD>61.49&(ICD<61.71) Q
 ...S BDMW=$P(BDM(BDMN),U,2)
 ..Q
 Q BDMW
BMI(P,BDATE,EDATE) ;EP
 I 'P Q -1
 NEW %,W,H,B,D,%DT
 S %DT="P",X=EDATE D ^%DT S D=Y
 S %=""
 I $$AGE^AUPNPAT(P,D)>19 D  Q %
 .S W=$$WT(P,BDATE,EDATE) I W="" Q
 .S HDATE=$$FMTE^XLFDT($$FMADD^XLFDT($P(^DPT(P,0),U,3),(19*365)))
 .S H=$$HT(P,HDATE,EDATE) I H="" Q
 .S W=W*.45359,H=(H*.0254),H=(H*H),%=(W/H),%=$J(%,4,1)
 S X=$$HTWTSD(P,BDATE,EDATE)
 I '$P(X,"^") Q %
 I '$P(X,"^",2) Q %
 S W=$P(X,"^"),H=$P(X,"^",2)
 ;S W=(W/5)*2.3,H=(H*2.5),H=(H*H)/10000,%=(W/H),%=$J(%,4,1)
 S W=W*.45359,H=(H*.0254),H=(H*H),%=(W/H),%=$J(%,4,1)
 Q %
HTWTSD(P,BDATE,EDATE) ;get last ht / wt on same day
 I '$G(P) Q ""
 NEW BDMWTS,BDMHTS,%,X,BDMWTS1,BDMHTS1
 S %=P_"^ALL MEAS HT;DURING "_BDATE_"-"_EDATE NEW X S E=$$START1^APCLDF(%,"BDMHTS(")
 ;set the array up by date
 K BDMHTS1 S X=0 F  S X=$O(BDMHTS(X)) Q:X'=+X  S BDMHTS1($P(BDMHTS(X),U))=X
 ;get all wts during time frame
 S %=P_"^ALL MEAS WT;DURING "_BDATE_"-"_EDATE NEW X S E=$$START1^APCLDF(%,"BDMWTS(")
 ;set the array up by date
 K BDMWTS1 S X=0 F  S X=$O(BDMWTS(X)) Q:X'=+X  S BDMWTS1($P(BDMWTS(X),U))=X
 NEW BDMCHT S BDMCHT="",X=9999999 F  S X=$O(BDMWTS1(X),-1) Q:X=""!(BDMCHT]"")  I $D(BDMHTS1(X)) S BDMCHT=$P(BDMWTS(BDMWTS1(X)),U,2)_U_$P(BDMHTS(BDMHTS1(X)),U,2)
 Q BDMCHT
CREAT(P,BDATE,EDATE,F) ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT CREATININE TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT CREATININE TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_$$FMTE^XLFDT($P(BDM(N),U),5)
CHOL(P,BDATE,EDATE,F) ;EP
 S:$G(F)="" F="E"
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT CHOLESTEROL TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT CHOLESTEROL TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_$$FMTE^XLFDT($P(BDM(N),U),5)
HDL(P,BDATE,EDATE,F) ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT HDL TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT HDL TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_$$FMTE^XLFDT($P(BDM(N),U),5)
LDL(P,BDATE,EDATE,F) ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT LDL CHOLESTEROL TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT LDL CHOLESTEROL TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_$$FMTE^XLFDT($P(BDM(N),U),5)
TRIG(P,BDATE,EDATE,F) ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT TRIGLYCERIDE TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT TRIGLYCERIDE TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_$$FMTE^XLFDT($P(BDM(N),U),5)
URIN(P,BDATE,EDATE) ;EP
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT URINALYSIS TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I $D(BDM(1)) Q "Yes  "_$$FMTE^XLFDT($P(BDM(1),U),5)
 NEW G S G=0
 NEW T S T=$O(^ATXLAB("B","DM AUDIT URINALYSIS TAX",0))
 I 'T Q ""
 S X=0 F  S X=$O(^ATXLAB(T,21,X)) Q:X'=+X!(G)  I $$REFUSAL^BDMD207(P,60,$P(^ATXLAB(T,21,X,0),U),BDATE,EDATE) S G=1
 Q $S(G:"Refused",1:"No")
PROTEIN(P,BDATE,EDATE) ;EP
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT URINE PROTEIN TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT URINE PROTEIN TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 NEW %,%1 S %=$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)
 S %1=$S(%="":"No result",%["+":"Yes ",%[">":"Yes ",$E(%)="P":"Yes ",$E(%)="p":"Yes ",$E(%)="c":"No result ",$E(%)="C":"No result ",+%>29:"Yes ",1:"No ")
 Q %1_%_" "_$$FMTE^XLFDT($P(BDM(N),U),"5")
MICRO(P,BDATE,EDATE) ;EP
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST LAB [DM AUDIT MICROALBUMINURIA TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 S D=$P(BDM(1),U),D=$$FMTE^XLFDT(D) K BDM S %=P_"^ALL LAB [DM AUDIT MICROALBUMINURIA TAX;DURING "_D_"-"_D,E=$$START1^APCLDF(%,"BDM(")
 NEW N D SETN
 NEW %,%1 S %=$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)
 S %1=$S(%="":"No result",%["+":"Pos ",%[">":"Pos ",$E(%)="P":"Pos ",$E(%)="p":"Pos ",$E(%)="c":"No result ",$E(%)="C":"No result ",+%>29:"Pos ",1:"Neg ")
 Q %1_%_" "_$$FMTE^XLFDT($P(BDM(N),U),"5")
HGBA1C(P,BDATE,EDATE) ;EP
 NEW BDM,X,%,E,R,V
 K BDM
 S %=P_"^LAST 20 LAB [DM AUDIT HGB A1C;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 D SET3
 K X S (%,C,R)="" F  S %=$O(BDM(%)) Q:%'=+%!(C>1)  S X(9999999-$P(BDM(%),U),1)=$P(^AUPNVLAB(+$P(BDM(%),U,4),0),U,4)
 S %=0,R="" F  S %=$O(X(%)) Q:%=""  S V=0 F  S V=$O(X(%,V)) Q:V=""  S R=R_X(%,V)_"^"_$$FMTE^XLFDT(9999999-%)_"^"_(9999999-%)_"^"
 Q R
BS(P,BDATE,EDATE) ;EP
 NEW BDM,X,%,E,R,V,C
 K BDM
 S %=P_"^LAST 200 LAB [DM AUDIT GLUCOSE TESTS TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 D SET3
 S (%,C,R)="" F  S %=$O(BDM(%)) Q:%=""!(C>2)  S R=R_$P(^AUPNVLAB(+$P(BDM(%),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(%),U,4),0),U,4)]"":" mg/dl ",1:"")_$$FMTE^XLFDT($P(BDM(%),U))_"^",C=C+1
 Q R
PPDS(P) ;
 NEW BDMS,E,X
 K BDMS
 S X=P_"^LAST HEALTH [DM AUDIT TB HEALTH FACTORS" S E=$$START1^APCLDF(X,"BDMS(")
 I $D(BDMS) Q 1
 N T S T=$O(^ATXAX("B","DM AUDIT TB HEALTH FACTORS",0))
 I 'T G PPDSPL
 N G S G=0,X=0 F  S X=$O(^AUPNHF("AA",P,X)) Q:X'=+X  I $D(^ATXAX(T,21,"B",X)) S G=1
 I G Q 1
PPDSPL ;CHECK PL
 N T S T=$O(^ATXAX("B","SURVEILLANCE TUBERCULOSIS",0))
 I 'T Q ""
 N X,Y,I S (X,Y,I)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  I $D(^AUPNPROB(X,0)) S Y=$P(^AUPNPROB(X,0),U) I $$ICD^ATXCHK(Y,T,9) S I=1
 I I Q 1
 ;check povs
 K BDMS S X=P_"^FIRST DX [SURVEILLANCE TUBERCULOSIS" S E=$$START1^APCLDF(X,"BDMS(")
 I $D(BDMS(1)) Q 1
 Q ""
PPD(P,EDATE,F) ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,E,G,BDATE,Y,%DT,D,R,R1,R2,ED
 S X=EDATE,%DT="P" D ^%DT S ED=Y
 I $$PPDS(P) Q "POS"
 K BDM
 S X=$O(^AUTTSK("B","PPD",0)) I 'X Q ""
 S G=0,D=9999999-ED-1 F  S D=$O(^AUPNVSK("AA",P,X,D)) Q:D=""  S G=0 F  S G=$O(^AUPNVSK("AA",P,X,D,G)) Q:G'=+G  S BDM(D,G)=$P($P(^AUPNVSIT($P(^AUPNVSK(G,0),U,3),0),U),".")_U_$P(^AUPNVSK(G,0),U,5)_U_$P(^AUPNVSK(G,0),U,4)
 I '$O(BDM(0)) D  Q $S(G:"Refused",1:"Unknown")
 .S X=EDATE,%DT="P" D ^%DT S BDATE=$$FMADD^XLFDT(Y,-365),BDATE=$$FMTE^XLFDT(BDATE),G=0 I $$REFUSAL^BDMD207(P,9999999.28,$O(^AUTTSK("B","PPD",0)),BDATE,EDATE) S G=1
 ;go through all ppds and find last reading or result
 S G="",D=0,X=0 F  S D=$O(BDM(D)) Q:D'=+D!(G)  S X=0 F  S X=$O(BDM(D,X)) Q:X'=+X  S R=$P(BDM(D,X),U,2),R1=$P(BDM(D,X),U,3) I R]""!(R1]"") S G=1,R2=9999999-D
 I F="I",(R]""!(R1]"")) Q R2
 I R]"",R>9 Q "POS"
 I R]"",R<10 Q "NEG"
 I R1]"",R1="P" Q "POS"
 I R1]"",R1="N" Q "NEG"
 Q "Unknown"
 ;
LASTNP(P,EDATE) ;EP - last negative ppd
 I $$PPD(P,EDATE)'="NEG" Q ""
 Q $$PPD(P,EDATE,"I")
