BUDBRP6N ; IHS/CMI/LAB - UDS REPORT PROCESSOR ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
K ;EP ;CRC
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUD50RB=($E(BUDBD,1,3)-51)_"1231"
 S BUD75RB=($E(BUDBD,1,3)-74)_"0101"
 Q:BUDDOB<BUD75RB
 Q:BUDDOB>BUD50RB
 Q:BUDMEDV<1
 Q:$$CRC(DFN,BUDED)  ;has crc dx
 S BUDCRCT=$$SCREEN(DFN,,$$VD^APCLV(BUDLASTV))
 I BUDCRCT]"" S BUDSECTK("CRC")=$G(BUDSECTK("CRC"))+1
 ;put the rest in demoninator
 S BUDCRCL=""
 S BUDSECTK("PTS")=$G(BUDSECTK("PTS"))+1 D
 .I $G(BUDCRC2L) D
 ..I BUDCRCT="" D LAST S ^XTMP("BUDBRP6B",BUDJ,BUDH,"CRC2",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=$P(BUDCRCL,U)  ;_U_$P(BUDCRCT,U,2)
 .I $G(BUDCRC1L) D
 ..I BUDCRCT]"" S ^XTMP("BUDBRP6B",BUDJ,BUDH,"CRC1",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=$P(BUDCRCT,U)  ;_U_$P(BUDCRCT,U,2)
 Q
LAST ;
 NEW LAST,COLO,SIG,FOBT
 S BUDCRCL=""
 S COLO=$$COLO(DFN,$$DOB^AUPNPAT(DFN),BUDED)  ;get last one ever
 S BUDCRCL=COLO
 S SIG=$$SIG(DFN,$$DOB^AUPNPAT(DFN),BUDED)  ;get last sig
 I $P(SIG,U,2)>$P(BUDCRCL,U,2) S BUDCRCL=SIG
 S FOBT=$$FOB(DFN,$$DOB^AUPNPAT(DFN),BUDED)
 I $P(FOBT,U,2)>$P(BUDCRCL,U,2) S BUDCRCL=FOBT
 Q
SCREEN(P,BDATE,EDATE) ;
 NEW BUDCOLO,BUDSIG,BUDFOB
 S BUDCOLO=$$COLO(DFN,,EDATE)
 I BUDCOLO]"" Q BUDCOLO
 S BUDSIG=$$SIG(DFN,,EDATE)
 I BUDSIG]"" Q BUDSIG
 S BUDFOB=$$FOB(P,,EDATE)
 I BUDFOB]"" Q BUDFOB
 Q ""
CRC(P,EDATE) ;EP
 NEW BUDG,X,E,Y,T
 K BUDG
 S Y="BUDG("
 S X=P_"^LAST DX [BUD COLORECTAL CANCER DXS;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(1)) Q 1  ;has a dx
 S T=$O(^ATXAX("B","BUD COLORECTAL CANCER CPTS",0))
 I T D  I X]"" Q 1
 .S X=$$CPT^BUDBDU(P,$$DOB^AUPNPAT(P),EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BUDBDU(P,$$DOB^AUPNPAT(P),EDATE,T,5)
 S BUDG=$$LASTPRC^BUDBUTL1(P,"BUD COLORECTAL CANCER PROCS",$$DOB^AUPNPAT(P),EDATE)
 I BUDG Q 1
 S X=$$PLTAX^BUDBDU(P,"BUD COLORECTAL CANCER DXS")
 I X Q 1
 ;S T=$O(^ATXAX("B","BUD COLORECTAL CANCER PROCS",0))
 ;I T D  I X]"" Q 1
 ;.S X=$$CPT^BUDBDU(P,$$DOB^AUPNPAT(P),EDATE,T,5) I X]"" Q
 ;.S X=$$TRAN^BUDBDU(P,$$DOB^AUPNPAT(P),EDATE,T,5)
 Q 0
SIG(P,BDATE,EDATE) ;EP
 NEW BUDLSIG
 S BUDLSIG=""
 I $G(BDATE)="" S BDATE=$E(EDATE,1,3)-6_$E(EDATE,4,7) ;$$FMADD^XLFDT(EDATE,6*(-365))
 S BUDG=$$LASTPRC^BUDBUTL1(P,"BGP SIG PROCS",BDATE,EDATE)
 I $P(BUDG,U)=1 S BUDLSIG="SIG: Proc "_$P(BUDG,U,2)_":"_$$DATE^BUDBDU($P(BUDG,U,3))_U_$P(BUDG,U,3)
 ;
 S T=$O(^ATXAX("B","BUD SIG CPTS",0))
 I T D  I X]"",$P(BUDLSIG,U,3)<$P(X,U,1) S BUDLSIG="SIG: CPT "_$P(X,U,2)_":"_$$DATE^BUDBDU($P(X,U,1))_U_$P(X,U,1)
 .S X=$$CPT^BUDBDU(P,BDATE,EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BUDBDU(P,BDATE,EDATE,T,5)
 Q BUDLSIG
COLO(P,BDATE,EDATE) ;EP
 K BUDG
 S BUDLCOLO=""
 I $G(BDATE)="" S BDATE=$E(EDATE,1,3)-10_$E(EDATE,4,7) ;$$FMADD^XLFDT(EDATE,10*(-365))
 S BUDG=$$LASTPRC^BUDBUTL1(P,"BGP COLO PROCS",BDATE,EDATE)
 I $P(BUDG,U)=1 S BUDLCOLO="COLO: Proc "_$P(BUDG,U,2)_":"_$$DATE^BUDBDU($P(BUDG,U,3))_U_$P(BUDG,U,3)
 K BUDG
 S %=P_"^LAST DIAGNOSIS [BGP COLO DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)),$P(BUDLCOLO,U,3)<$P(BUDG(1),U,1) S BUDLCOLO="COLO: DX V76.51"_":"_$$DATE^BUDBDU($P(BUDG(1),U))
 S T=$O(^ATXAX("B","BUD COLO CPTS",0))
 I T D  I X]"",$P(BUDLCOLO,U,3)<$P(X,U,1) S BUDLCOLO="COLO: CPT "_$P(X,U,2)_":"_$$DATE^BUDBDU($P(X,U,1))_U_$P(X,U,1)
 .S X=$$CPT^BUDBDU(P,BDATE,EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BUDBDU(P,BDATE,EDATE,T,5)
 Q BUDLCOLO
FOB(P,BDATE,EDATE) ;EP
 I $G(BDATE)="" S BDATE=$E(EDATE,1,3)-2_$E(EDATE,4,7) ;$$FMADD^XLFDT(EDATE,2*(-365))
 S BUDC="",BUDLFOB=""
 S T=$O(^ATXAX("B","BGP FOBT LOINC CODES",0))
 S BUDLT=$O(^ATXLAB("B","BGP GPRA FOB TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BUDC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BUDC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BUDC]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BUDLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BUDLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BUDC="FOB: Lab "_$$VAL^XBDIQ1(9000010.09,X,.01)_":"_$$DATE^BUDBDU(9999999-D)_U_(9999999-D) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BUDC="FOB: LAB LOINC "_$$VAL^XBDIQ1(9000010.09,X,.01)_":"_$$DATE^BUDBDU(9999999-D)_U_(9999999-D) Q
 ...Q
 S BUDLFOB=BUDC
 S T=$O(^ATXAX("B","BUD FOBT CPTS",0))
 I T D  I X]"",$P(BUDLFOB,U,2)<$P(X,U,1) S BUDLFOB="FOB: CPT "_$P(X,"^",2)_":"_$$DATE^BUDBDU($P(X,U,1))_"^"_$P(X,U,1)
 .S X=$$CPT^BUDBDU(P,BDATE,EDATE,T,5) I X]"" Q
 Q BUDLFOB
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
