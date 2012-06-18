APCPAPOV ; IHS/TUCSON/LAB - GET POV/DX FOR APC RECORD AUGUST 14, 1992 ; [ 04/03/98  08:39 AM ]
 ;;2.0;IHS PCC DATA EXTRACTION SYSTEM;;APR 03, 1998
 ;
 ;
START ;
 S (APCPADX1,APCPADX2)="    ",(APCPT("AAR"),APCPT("AAC"),APCPT("AAP"),APCPT("INJC"))=""
 S (APCPT(1),APCPT(2))=0 F  S APCPT(2)=$O(^AUPNVPOV("AD",APCP("V DFN"),APCPT(2))) Q:APCPT(1)>1!(APCPT(2)'=+APCPT(2))!($D(APCPE("ERROR")))  S APCPT(1)=APCPT(1)+1 D GETPOV
 D EOJ
 Q
EOJ ;
 Q
 ;
 ;
GETPOV ;
 S APCPT("ICD PTR")=$P(^AUPNVPOV(APCPT(2),0),U),(APCPT("ICD CODE"),APCPT("X"),APCPT("ICD"))=$P(^ICD9(APCPT("ICD PTR"),0),U) D ^APCPCICD
 Q:$D(APCPE("ERROR"))
 S APCPT("ICD CODE")=$P(APCPT("ICD CODE"),".")_$P(APCPT("ICD CODE"),".",2)
 S APCPT("FR")=$P(^AUPNVPOV(APCPT(2),0),U,8) I APCPT("FR")="" S APCPT("FR")=2
 I $P(APCPT("ICD"),".")>799,APCPT("FR")=1,APCPT("INJC")="" D RIJ
 I $P(APCPT("ICD"),".")>799,APCPT("AAP")="",APCPT("FR")=1 D GETAAP
 I $P(APCPT("ICD"),".")>799,APCPT("AAR")'=1 S APCPT("AAR")=$P(^AUPNVPOV(APCPT(2),0),U,7) S APCPT("AAR")=$S(APCPT("AAR")=2:1,1:2)
 Q:$D(APCPE("ERROR"))
GETCODE ;
 I $E(APCPT("X"))="." D CODE10 G HIGH
 S APCPT("ICD")="09"_($P(APCPT("ICD"),".")_$P(APCPT("ICD"),".",2))_" "
 I $E(APCPT("X"))="V" S APCPT("X")=(9_$E(APCPT("X"),2,9999)-.000001),APCPT("X")="09V"_$E(APCPT("X"),2,9999),APCPT("X")=$P(APCPT("X"),".")_$P(APCPT("X"),".",2)_" " G HIGH
 S APCPT("X")="09"_APCPT("X")-.000001
 S APCPT("AC")="",APCPT("X")="0"_($P(APCPT("X"),".")_$P(APCPT("X"),".",2))_" "
HIGH S APCPT("HIGH")=$O(^AUTTRCD("AH",APCPT("X"))) I APCPT("HIGH")="" S APCPT("AC")=999 G SETPOV
 S APCPT("DA1")=$O(^AUTTRCD("AH",APCPT("HIGH"),"")) I APCPT("DA1")="" S APCPE("ERROR")="E065" Q
 S APCPT("DA2")=$O(^AUTTRCD("AH",APCPT("HIGH"),APCPT("DA1"),""))
 S APCPT("LOW")=$P(^AUTTRCD(APCPT("DA1"),11,APCPT("DA2"),0),U)_" "
 I APCPT("LOW")]APCPT("ICD") S APCPT("AC")=999 G SETPOV
 S APCPT("AC")=$P(^AUTTRCD(APCPT("DA1"),0),U)
SETPOV S APCPT("VAR")="APCPADX"_APCPT(1) S @APCPT("VAR")=APCPT("FR")_APCPT("AC")_U_APCPT("ICD CODE")
 Q
RIJ ;
 S APCPT("AAC")=$P(^AUPNVPOV(APCPT(2),0),U,9) Q:APCPT("AAC")=""  S (APCPT("AAC"),APCPT("INJX"))=$P(^ICD9(APCPT("AAC"),0),U)
 S APCPT("AAC")="09"_($P(APCPT("AAC"),".")_$P(APCPT("AAC"),".",2))_" "
 S APCPT("INJX")="09E"_($E(APCPT("INJX"),2,9999)-.000001)
 S APCPT("INJC")="",APCPT("INJX")=$P(APCPT("INJX"),".")_$P(APCPT("INJX"),".",2)_" "
 S APCPT("HIGH")=$O(^AUTTRIJ("AH",APCPT("INJX"))) I APCPT("HIGH")="" S APCPT("INJC")=999 Q
 S APCPT("DA1")=$O(^AUTTRIJ("AH",APCPT("HIGH"),"")) I APCPT("DA1")="" S APCPE("ERROR")="E065" Q
 S APCPT("DA2")=$O(^AUTTRIJ("AH",APCPT("HIGH"),APCPT("DA1"),""))
 S APCPT("LOW")=$P(^AUTTRIJ(APCPT("DA1"),11,APCPT("DA2"),0),U)_" "
 I APCPT("LOW")]APCPT("AAC") S APCPT("INJC")="" Q
 S APCPT("INJC")=$P(^AUTTRIJ(APCPT("DA1"),0),U)
 Q
 ;
CODE10 ;
 S APCPT("ICD")="10"_$P(APCPT("ICD"),".",2)_" "
 S APCPT("X")="10"_APCPT("X"),APCPT("X")=APCPT("X")-.000001,APCPT("X")=$P(APCPT("X"),".")_$P(APCPT("X"),".",2)_" ",APCPT("AC")=""
 Q
 ;
 ;
GETAAP ;
 S X=$P(^AUPNVPOV(APCPT(2),0),U,11) I X]"" S APCPT("AAP")=$S(X="A":"01",X="B":"02",X="C":"03",X="D":"04",X="E":"05",X="F":"06",X="G":"07",X="H":"08",X="I":"09",X="J":"10",X="K":"11",X="L":"12",1:"  ")
 Q
