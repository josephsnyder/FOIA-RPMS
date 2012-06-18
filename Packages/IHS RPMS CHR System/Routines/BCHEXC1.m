BCHEXC1 ; IHS/TUCSON/LAB - RECORD REVIEW PROCESS ;  [ 01/03/03  1:41 PM ]
 ;;1.0;IHS RPMS CHR SYSTEM;**7,10,11,12,14**;OCT 28, 1996
 ;IHS/CMI/LAB - patch 10 new record format
 ;IHS/CMI/LAB tmp to xtmp, fix undef error
 ;
 ;Continuation of BCHEXC.  Record Review.
 ;
 ;
 ;
START ;
 S ^XTMP("BCHEXC",0)=$$FMADD^XLFDT(DT,14)_U_DT_U_"CHR EXPORT CHECK"
 S (BCHBT,BCHBTH)=$H,BCHJOB=$J,BCH("ERROR COUNT")=0,BCHO("RUN")="NEW"
 D DATE,XIT
 Q
 ;
DATE ; Run by date of service
 S X1=BCHBD,X2=-1 D C^%DTC S BCHSD=X
 S BCHODAT=BCHSD_".9999" F  S BCHODAT=$O(^BCHR("AEX",BCHODAT)) Q:BCHODAT=""!((BCHODAT\1)>BCHED)  D D1
 Q
 ;
XIT ;
 S BCHET=$H
 D EOJ
 Q
EOJ ;
 Q
D1 ;
 S (BCHR,BCHRCNT)=0 F  S BCHR=$O(^BCHR("AEX",BCHODAT,BCHR)) Q:BCHR'=+BCHR  I $D(^BCHR(BCHR,0)) S BCHREC=^BCHR(BCHR,0) D PROC
 Q
PROC ;
 K BCHE S BCHE=""
 S (X,C)=0 F  S X=$O(^BCHRPROB("AD",BCHR,X)) Q:X'=+X  S C=C+1
 I C=0 S BCHE="E021" G ER
 S X=0 F  S X=$O(^BCHRPROB("AD",BCHR,X)) Q:X'=+X  D
 .I $P(^BCHRPROB(X,0),U,4)="" S BCHE="E009" Q
 .I $P(^BCHRPROB(X,0),U,5)="" S BCHE="E026" Q
 .Q
 I BCHE="" D ^BCHEXD21
ER ;
 Q:$G(BCHE)=""
 S BCH("ERROR COUNT")=BCH("ERROR COUNT")+1
 S BCHE("ERR DFN")=$O(^BCHERR("B",BCHE,"")) I BCHE("ERR DFN")="" S BCHE("MSG")=BCHE_"-ERROR INFORMATION NOT IN ERROR FILE" G ERR
 S BCHE("MSG")=BCHE_"-"_$P(^BCHERR(BCHE("ERR DFN"),0),U,2) S:$L(BCHE("MSG"))=5 BCHE("MSG")=BCHE("MSG")_"- ERROR INFORMATION NOT IN ERROR FILE" S BCHE("MSG")=$E(BCHE("MSG"),1,45)
ERR S ^XTMP("BCHEXC",BCHJOB,BCHBT,"ERRORS",BCHR)=BCHE("MSG")
 Q
 ;
