BUD8RP6D ; IHS/CMI/LAB - UDS REPORT PROCESSOR 01 Dec 2008 5:11 PM ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
 ;
PAPD ;EP - called from xbdbque
 ;must have DOB between 1/1/06 and 12/31/06
 Q:$P(^DPT(DFN,0),U,2)'="F"
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 ;Q:BUDDOB<2440101
 ;Q:BUDDOB>2871231
 Q:BUDDOB<2390101
 Q:BUDDOB>2821231
 Q:BUDMEDV<1
 S BUD65TH=$E(BUDDOB,1,3)+65_$E(BUDDOB,4,7)
 I '$$VBBD(DFN,BUDDOB,$$FMADD^XLFDT(BUD65TH,-1)) Q  ;quit if no visiT before 65TH birthday
 K BUDPAP
 S BUDPD=$E(BUDBD,1,3)-2_$E(BUDBD,4,7)
 S BUDPAP=$$PAP(DFN,BUDDOB,BUDED)
 S BUDPAPD=$P(BUDPAP,U,2)
 I BUDPAPD'<BUDPD S BUDSECTD("PAP")=$G(BUDSECTD("PAP"))+1,BUDSECTD("PTS")=$G(BUDSECTD("PTS"))+1 D  Q
 .I $G(BUDPAP1L) D
 ..S Y=$$FMTE^XLFDT($P(BUDPAP,U,2))_U_$P(BUDPAP,U,3)_U I $P(BUDPAP,U,4) S Y=Y_$$PRIMPROV^APCLV($P(BUDPAP,U,4),"D")_U_$P(^AUPNVSIT($P(BUDPAP,U,4),0),U,7)_U_$$CLINIC^APCLV($P(BUDPAP,U,4),"E")_U_$$LOCENC^APCLV($P(BUDPAP,U,4),"E")
 ..S ^XTMP("BUD8RP6B",BUDJ,BUDH,"PAP1",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=Y
 ..Q
 Q:$$HYSTER(DFN,BUDED)  ;if no pap and has hysterectomy don't put in denominator or numerator
 ;put the rest in demoninator
 S BUDSECTD("PTS")=$G(BUDSECTD("PTS"))+1 D
 .I $G(BUDPAP2L) D
 ..S Y="" I BUDPAP="" S Y="Never"
 ..I Y="" S Y=$$FMTE^XLFDT($P(BUDPAP,U,2))_U_$P(BUDPAP,U,3)_U I $P(BUDPAP,U,4) S Y=Y_$$PRIMPROV^APCLV($P(BUDPAP,U,4),"D")_U_$P(^AUPNVSIT($P(BUDPAP,U,4),0),U,7)_U_$$CLINIC^APCLV($P(BUDPAP,U,4),"E")_U_$$LOCENC^APCLV($P(BUDPAP,U,4),"E")
 ..S ^XTMP("BUD8RP6B",BUDJ,BUDH,"PAP2",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=Y
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
 .Q:'$D(^BUDGSITE(BUDSITE,11,L))  ;not valid location
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
PAP(P,BDATE,EDATE) ;EP
 NEW BUDC,BUDLPAP,T,BUDLT,B,E,D,L,X,Z,J,T,BUD
 K BUDC
 S BUDC=""
 S BUDLPAP=""
 S T=$O(^ATXAX("B","BGP PAP LOINC CODES",0))
 S BUDLT=$O(^ATXLAB("B","BGP PAP SMEAR TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BUDC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BUDC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BUDC]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...S Z=$P(^AUPNVLAB(X,0),U),Z=$P($G(^LAB(60,Z,0)),U) I Z="PAP SMEAR" S BUDC="1^"_(9999999-D)_"^Lab "_Z_U_$P(^AUPNVLAB(X,0),U,3) Q
 ...I BUDLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BUDLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BUDC="1^"_(9999999-D)_"^Lab "_$$VAL^XBDIQ1(9000010.09,X,.01)_$P(^AUPNVLAB(X,0),U,3) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BUDC="1^"_(9999999-D)_"^Lab-loinc"_U_$P(^AUPNVLAB(X,0),U,3) Q
 ...Q
 S BUDLPAP=BUDC
 K BUD
 S T="BUD PAP SMEAR DXS"
 S X=$$LASTDX^BUD8UTL1(P,T,BDATE,EDATE) I X,$P(BUDLPAP,U,2)<$P(X,U,3) S BUDLPAP="1^"_$P(X,U,3)_"^DX: "_$P(X,U,2)_"^"_$P(^AUPNVPOV($P(X,U,5),0),U,3)
 K BUD S %=P_"^LAST PROCEDURE 91.46;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BUD(")
 I $D(BUD(1)),$P(BUDLPAP,U,2)<$P(BUD(1),U,1) S BUDLPAP="1^"_$P(BUD(1),U)_"^Procedures: 91.46^"_$P(BUD(1),U,5)
 S T=$O(^ATXAX("B","BUD CPT PAP 08",0))
 I T D  I X]"",$P(BUDLPAP,U,2)<$P(X,U,2) S BUDLPAP="1^"_$P(X,U,2)_"^CPT: "_$P(X,U,3)_"^"_$P(X,U,5)
 .S X=$$CPT^BUD8DU(P,BDATE,EDATE,T,6) I X]"" Q
 .S X=$$TRAN^BUD8DU(P,BDATE,EDATE,T,6)
 S T="PAP SMEAR",T=$O(^BWPN("B",T,0))
 I T D  I X]"",$P(BUDLPAP,U,2)<X S BUDLPAP="1^"_X_"^WH PAP SMEAR"
 .S X=$$WH^BUD8DU(P,BDATE,EDATE,T,3)
 Q BUDLPAP
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
 ;
HYSTER(P,EDATE) ;EP 
 I '$G(P) Q ""
 S X=$$LASTPRC^BUD8UTL1(P,"BUD HYSTERECTOMY PROCEDURES",$$DOB^AUPNPAT(P),EDATE)
 I X Q 1
 S T="HYSTERECTOMY",T=$O(^BWPN("B",T,0))
 I T D  I X]"" Q 1
 .S X=$$WH^BUD8DU(P,$$DOB^AUPNPAT(P),EDATE,T,2)
 S T=$O(^ATXAX("B","BUD HYSTERECTOMY CPTS",0))
 I T D  I X]"" Q 1
 .S X=$$CPT^BUD8DU(P,$P(^DPT(P,0),U,3),EDATE,T,3) I X]"" Q
 .S X=$$TRAN^BUD8DU(P,$P(^DPT(P,0),U,3),EDATE,T,3)
 S X=$$LASTDXI^BUD8UTL1(P,618.5,$$DOB^AUPNPAT(P),EDATE,1)
 I X Q 1
 Q ""
