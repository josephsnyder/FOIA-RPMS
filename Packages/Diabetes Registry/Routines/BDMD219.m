BDMD219 ; IHS/CMI/LAB - 2001 DIABETES AUDIT ; 21 Jan 2014  10:53 AM
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**2,4,5,6,7,8,9**;JUN 14, 2007;Build 78
 ;
 ;
 W:$D(IOF) @IOF
 W !!,"Checking for Taxonomies to support the 2001 Audit. ",!,"Please enter the device for printing.",!
ZIS ;
 S XBRC="",XBRP="TAXCHK^BDMD219",XBNS="",XBRX="XIT^BDMD219"
 D ^XBDBQUE
 D XIT
 Q
TAXCHK ;EP
 W:$D(IOF) @IOF
 K BDMQUIT
 W !,"Checking for Taxonomies to support the 2001 Audit...",!
 NEW A,BDMX,I,Y,Z,J
 K A
 S T="TAXS" F J=1:1 S Z=$T(@T+J),BDMX=$P(Z,";;",2),Y=$P(Z,";;",3) Q:BDMX=""  D
 .I '$D(^ATXAX("B",BDMX)) S A(BDMX)=Y_"^is Missing" Q
 .S I=$O(^ATXAX("B",BDMX,0))
 .I '$D(^ATXAX(I,21,"B")) S A(BDMX)=Y_"^has no entries "
 S T="LAB" F J=1:1 S Z=$T(@T+J),BDMX=$P(Z,";;",2),Y=$P(Z,";;",3) Q:BDMX=""  D
 .I '$D(^ATXLAB("B",BDMX)) S A(BDMX)=Y_"^is Missing " Q
 .S I=$O(^ATXLAB("B",BDMX,0))
 .I '$D(^ATXLAB(I,21,"B")) S A(BDMX)=Y_"^has no entries "
 I $Y>(IOSL-2) D PAGE
 I '$D(A) W !,"All taxonomies are present.",! K A,BDMX,Y,I,Z Q
 W !!,"In order for the 2001 Diabetes Audit to find all necessary data, several",!,"taxonomies must be established.  The following taxonomies are missing or have",!,"no entries:"
 S BDMX="" F  S BDMX=$O(A(BDMX)) Q:BDMX=""!($D(BDMQUIT))  D
 .I $Y>(IOSL-2) D PAGE Q:$D(BDMQUIT)
 .W !,$P(A(BDMX),U)," [",BDMX,"] ",$P(A(BDMX),U,2)
 .Q
DONE ;
 I $E(IOST)="C",IO=IO(0) S DIR(0)="EO",DIR("A")="End of taxonomy check.  HIT RETURN" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
XIT ;EP
 K BDM,BDMX,BDMQUIT,BDMLINE,BDMJ,BDMX,BDMTEXT,BDM
 K X,Y,J
 Q
LASTHF(P,C,BDATE,EDATE,F) ;EP - get last factor in category C for patient P
 I '$G(P) Q ""
 I $G(C)="" Q ""
 I $G(F)="" S F=""
 S C=$O(^AUTTHF("B",C,0)) ;ien of category passed
 I '$G(C) Q ""
 NEW H,D,O S H=0 K O
 F  S H=$O(^AUTTHF("AC",C,H))  Q:'+H  D
 .  Q:'$D(^AUPNVHF("AA",P,H))
 .  S D="" F  S D=$O(^AUPNVHF("AA",P,H,D)) Q:D'=+D  D
 .. Q:(9999999-D)>EDATE  ;after time frame
 .. Q:(9999999-D)<BDATE  ;before time frame
 .. S O(D)=$O(^AUPNVHF("AA",P,H,D,""))
 .  Q
 S D=$O(O(0))
 I D="" Q D
 I F="F" Q $P(^AUTTHF($P(^AUPNVHF(O(D),0),U),0),U)
 ;
 Q 1
 ;;
BANNER ;EP - banner for 2001 audit menu
 S BDMTEXT="TEXTD",BDM("VERSION")="2.0 (Patch 9)"
 F BDMJ=1:1 S BDMX=$T(@BDMTEXT+BDMJ),BDMX=$P(BDMX,";;",2) Q:BDMX="QUIT"!(BDMX="")  S BDMLINE=BDMJ
PRINT D ^XBCLS W:$D(IOF) @IOF
 F BDMJ=1:1:BDMLINE S BDMX=$T(@BDMTEXT+BDMJ),BDMX=$P(BDMX,";;",2) W !?80-$L(BDMX)\2,BDMX K BDMX
 W !?80-(8+$L(BDM("VERSION")))/2,"Version ",BDM("VERSION")
  G XIT:'$D(DUZ(2)) G:'DUZ(2) XIT S BDM("SITE")=$P(^DIC(4,DUZ(2),0),"^") W !!?80-$L(BDM("SITE"))\2,BDM("SITE")
 D XIT
 Q
TEXTD ;EP
 ;;****************************************
 ;;**     DIABETES MANAGEMENT SYSTEM     **
 ;;**   2001 Diabetes Audit Report Menu  **
 ;;****************************************
 ;;QUIT
PAGE ;
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BDMQUIT="" Q
 Q
TAXS ;
 ;;SURVEILLANCE DIABETES;;Diabetes Diagnoses Codes
 ;;SURVEILLANCE HYPERTENSION;;Hypertension Diagnoses Codes
 ;;SURVEILLANCE TUBERCULOSIS;;Tuberculosis Diagnoses Codes
 ;;DM AUDIT DIABETES EDUC TOPICS;;Diabetes Education Topics
 ;;DM AUDIT DIET EDUC TOPICS;;Diabetes Diet Education Topics
 ;;DM AUDIT EXERCISE EDUC TOPICS;;Diabetes Excercise Education Topics
 ;;DM AUDIT OTHER EDUC TOPICS;;Other Diabetes Education Topics
 ;;DM AUDIT SMOKING CESS EDUC;;Smoking Cess Education Topics
 ;;DM AUDIT TOBACCO HLTH FACTORS;;Tobacco Health Factors
 ;;DM AUDIT PROBLEM SMOKING DXS;;Smoking related diagnoses for Problem List
 ;;DM AUDIT PROBLEM HTN DIAGNOSES;;Hypertension Diagnoses
 ;;DM AUDIT PROBLEM DIABETES DX;;Diabetes Diagnoses
 ;;DM AUDIT SMOKING RELATED DXS;;Smoking related diagnoses for POVs
 ;;DM AUDIT CESSATION HLTH FACTOR;;Smoking Cessation Health Factors
 ;;DM AUDIT SELF MONITOR DRUGS;;Self Monitoring Drugs Taxonomy
 ;;DM AUDIT TB HEALTH FACTORS;;TB Status Health Factors
 ;;DM AUDIT INSULIN DRUGS;;Insulin Drug Taxonomy
 ;;DM AUDIT SULFONYLUREA DRUGS;;Sulfonylurea Drug Taxonomy
 ;;DM AUDIT METFORMIN DRUGS;;Metformin Drug Taxonomy
 ;;DM AUDIT ACARBOSE DRUGS;;Acarbose Drug Taxonomy
 ;;DM AUDIT LIPID LOWERING DRUGS;;Lipid Lowering Drug Taxonomy
 ;;DM AUDIT GLITAZONE DRUGS;;Glitzaone Drug Taxonomy
 ;;DM AUDIT ACE INHIBITORS;;ACE Inhibitor Drug Taxonomy
 ;;DM AUDIT ASPIRIN DRUGS;;Aspirin Drug Taxonomy
 ;;DM AUDIT SDM PROVIDERS;;SDM providers Taxonomy
 ;;DM AUDIT TYPE II DXS;;Type II Diagnoses
 ;;DM AUDIT TYPE I DXS;;Type I Diagnoses
 ;;
LAB ;
 ;;DM AUDIT URINE PROTEIN TAX;;Urine Protein Lab Taxonomy
 ;;DM AUDIT MICROALBUMINURIA TAX;;Microalbuminuia Lab Taxonomy
 ;;DM AUDIT HGB A1C TAX;;HGB A1C Lab Taxonomy
 ;;DM AUDIT GLUCOSE TESTS TAX;;Glucose Tests Taxonomy
 ;;DM AUDIT AST TAX;;AST Lab Taxonomy
 ;;DM AUDIT ALT TAX;;ALT Lab Taxonomy
 ;;DM AUDIT CREATININE TAX;;Creatinine Lab Taxonomy
 ;;DM AUDIT CHOLESTEROL TAX;;Cholesterol Lab Taxonomy
 ;;DM AUDIT LDL CHOLESTEROL TAX;;LDL Cholesterol Lab Taxonomy
 ;;DM AUDIT HDL TAX;;HDL Lab Taxonomy
 ;;DM AUDIT TRIGLYCERIDE TAX;;Triglyceride Lab Taxonomy
 ;;DM AUDIT URINALYSIS TAX;;Urinalysis Lab Taxonomy
 ;;
