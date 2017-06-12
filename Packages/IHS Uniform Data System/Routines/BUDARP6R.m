BUDARP6R ; IHS/CMI/LAB - UDS REPORT PROCESSOR 01 Dec 2013 5:11 PM ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
BMI(P,BDATE,EDATE,AGE) ;EP
 NEW HDATE,BUDBMIH,W,H,X,WD
 S BUDBMIH="",WD=""
 I AGE>18,AGE<51 D  Q WD
 .S HDATE=$$FMADD^XLFDT(BDATE,-(5*365)),HDATE=$$FMTE^XLFDT(HDATE)
 .;S BDATE=$$FMADD^XLFDT(BDATE,-(5*365))
 .S BDATE=$$FMTE^XLFDT(BDATE),EDATE=$$FMTE^XLFDT(EDATE)
 .S W=$$WT(P,BDATE,EDATE)
 .S WD=$P(W,U,2)
 .S W=$P(W,U,1) I W=""!(W="?") Q
 .;S HDATE=$$FMTE^XLFDT($$FMADD^XLFDT($P(^DPT(P,0),U,3),(19*365)))
 .;S HDATE=BDATE
 .S H=$$HT(P,HDATE,EDATE) I H="" Q
 .S W=W*.45359,H=(H*.0254),H=(H*H),BUDBMIH=(W/H)
 I AGE>50 D  Q WD
 .S HDATE=$$FMADD^XLFDT(BDATE,-(2*365)),HDATE=$$FMTE^XLFDT(HDATE)
 .S BDATE=$$FMTE^XLFDT(BDATE),EDATE=$$FMTE^XLFDT(EDATE)
 .S W=$$WT(P,BDATE,EDATE)
 .S WD=$P(W,U,2)
 .S W=$P(W,U,1) I W=""!(W="?") Q
 .;S HDATE=$$FMTE^XLFDT($$FMADD^XLFDT($P(^DPT(P,0),U,3),(19*365)))
 .S HDATE=BDATE
 .S H=$$HT(P,HDATE,EDATE) I H="" Q
 .S W=W*.45359,H=(H*.0254),H=(H*H),BUDBMIH=(W/H)
 I AGE<19 D  Q WD
 .S X=$$HTWTSD(P,BDATE,EDATE)
 .I '$P(X,"^") Q
 .I '$P(X,"^",2) Q
 .S W=$P(X,"^"),H=$P(X,"^",2),WD=$P(X,U,3)
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
 NEW %,E,BUDLW,X,BUDLN,BUDL,BUDLD,BUDLZ,BUDLX,ICD,BUDLWD
 K BUDL S BUDLW="",BUDLWD="" S BUDLX=P_"^LAST 24 MEAS WT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(BUDLX,"BUDL(")
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
 ...S BUDLW=$P(BUDL(BUDLN),U,2),BUDLWD=$P(BUDL(BUDLN),U,1)
 ..Q
 Q BUDLW_U_BUDLWD
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
 S BUDLCHT="",X=9999999 F  S X=$O(BUDLWTS1(X),-1) Q:X=""!(BUDLCHT]"")  I $D(BUDLHTS1(X)) S BUDLCHT=$P(BUDLWTS(BUDLWTS1(X)),U,2)_U_$P(BUDLHTS(BUDLHTS1(X)),U,2)_U_X
 Q BUDLCHT
