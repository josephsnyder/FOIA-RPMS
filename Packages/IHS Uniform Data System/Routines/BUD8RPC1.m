BUD8RPC1 ; IHS/CMI/LAB - UDS TABLE 6 11 Dec 2007 12:15 PM ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
 ;
PT ;
 I $G(BUDT6L) S ^XTMP("BUD8RPT1",BUDJ,BUDH,"T6",C,BUDCOM,BUDAGE,BUDSEX,DFN,BUDV)=$E(BUDVAL,1,20)
PT1 S $P(BUDT6("V"),U,C)=$P(BUDT6("V"),U,C)+1
 I $D(^TMP($J,"PATIENTS",DFN,C)) Q
 S ^TMP($J,"PATIENTS",DFN,C)=""
 S $P(BUDT6("P"),U,C)=$P(BUDT6("P"),U,C)+1
 Q
OT ;
 I $D(^XTMP("BUD8RPT1",BUDJ,BUDH,"T6",C,BUDCOM,BUDAGE,BUDSEX,DFN)) Q  ;patient already a hit on this line
 S ^XTMP("BUD8RPT1",BUDJ,BUDH,"ORPHANS",C,BUDCOM,BUDAGE,BUDSEX,DFN,BUDV)=$E(BUDVAL,1,20)
 Q
T6 ;EP
 S BUDV=0 F  S BUDV=$O(^TMP($J,"VISITS6DX",BUDV)) Q:BUDV'=+BUDV  D
 .S BUDP=$$PRIMPROV^APCLV(BUDV,"D") Q:BUDP=""
 .S BUDPOV=$$PRIMPOV^APCLV(BUDV,"C") Q:BUDPOV=""  S BUDPOVP=$$PRIMPOV^APCLV(BUDV,"I")
 .Q:$E(BUDPOV)="."
 .Q:$E(BUDPOV)="E"
 .D PRIMDX
SERV1 ;NOW DO SERVICES ON FULL LIST
 S BUDV=0 F  S BUDV=$O(^TMP($J,"VISITSLIST",BUDV)) Q:BUDV'=+BUDV  D SERV
 Q
PRIMDX ;
 I $E(BUDPOV,1,3)="042"!(BUDPOV="079.53") S C=1 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)="V08" S C=2 S BUDVAL=BUDPOV D PT Q
 S X=$E(BUDPOV,1,3) I X="010"!(X="011")!(X="012")!(X="013")!(X="014")!(X="015")!(X="016")!(X="017")!(X="018") S C=3 S BUDVAL=BUDPOV D PT Q
 S X=$E(BUDPOV,1,3) I X="090"!(X="091")!(X="092")!(X="093")!(X="094")!(X="095")!(X="096")!(X="097")!(X="098")!(X="099") S C=4 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=493 S C=5 S BUDVAL=BUDPOV D PT Q
 S X=$E(BUDPOV,1,3) I X=490!(X=491)!(X=492) S C=6 S BUDVAL=BUDPOV D PT Q
 S X=$E(BUDPOV,1,3) I X=174!(BUDPOV=198.81)!($E(BUDPOV,1,5)="233.0")!($E(BUDPOV,1,5)=793.8) S C=7 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=180!(BUDPOV=198.82)!($E(BUDPOV,1,5)="233.1")!($E(BUDPOV,1,5)="795.0") S C=8 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=250!($E(BUDPOV,1,5)="775.1") S C=9 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=391!($E(BUDPOV,1,5)="392.0")!($E(BUDPOV,1,3)>409)&($E(BUDPOV,1,3)<430) S C=10 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)>400&($E(BUDPOV,1,3)<406) S C=11 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=692 S C=12 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,5)="276.5" S C=13 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=991!($E(BUDPOV,1,3)=992) S C=14 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=381!($E(BUDPOV,1,3)=382) S C=15 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=770!($E(BUDPOV,1,3)=771)!($E(BUDPOV,1,3)>772)&($E(BUDPOV,1,3)<780),$E(BUDPOV,1,5)'="779.3" S C=16 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)>259&($E(BUDPOV,1,3)<270)!($E(BUDPOV,1,5)="779.3")!($E(BUDPOV,1,5)="783.3")!($E(BUDPOV,1,5)="783.4") S C=17 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=303!($E(BUDPOV,1,3)=291)!($E(BUDPOV,1,5)="357.5")!($E(BUDPOV,1,5)="305.0") S C=18 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,5)="292.1"!($E(BUDPOV,1,5)="292.2")!($E(BUDPOV,1,5)="292.3")!($E(BUDPOV,1,5)="292.4")!($E(BUDPOV,1,5)="292.5")!($E(BUDPOV,1,5)="292.6")!($E(BUDPOV,1,5)="292.7")!($E(BUDPOV,1,5)="292.8")!($E(BUDPOV,1,3)=304) D  Q
 .S C=19 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,5)="305.2"!($E(BUDPOV,1,5)="305.3")!($E(BUDPOV,1,5)="305.4")!($E(BUDPOV,1,5)="305.5")!($E(BUDPOV,1,5)="305.6")!($E(BUDPOV,1,5)="305.7")!($E(BUDPOV,1,5)="305.8")!($E(BUDPOV,1,5)="305.9") D  Q
 .S C=19 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,5)="357.6"!($E(BUDPOV,1,5)="648.3") S C=19 S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=296!(BUDPOV="300.4")!(BUDPOV="301.13")!($E(BUDPOV,1,3)="311") S C="40" S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,5)="300.0"!(BUDPOV="300.21")!(BUDPOV="300.22")!(BUDPOV="300.23")!(BUDPOV="300.29")!(BUDPOV="300.3")!(BUDPOV="308.3")!(BUDPOV="309.81") S C="41" S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,5)="312.8"!($E(BUDPOV,1,5)="312.9")!(BUDPOV="313.81")!($E(BUDPOV,1,3)="314") S C="42" S BUDVAL=BUDPOV D PT Q
 I $E(BUDPOV,1,3)=290!($E(BUDPOV,1,3)>292)&($E(BUDPOV,1,3)<303)!($E(BUDPOV,1,3)>305&($E(BUDPOV,1,3)<320)),'$$EXCL(BUDPOV) S C="43" S BUDVAL=BUDPOV D PT Q
 ;W !,"OOPS ",BUDPOV
 Q
EXCL(C) ;
 I $E(C,1,3)=296 Q 1
 I $E(C,1,5)="300.0" Q 1
 I C=300.21 Q 1
 I C=300.22 Q 1
 I C=300.23 Q 1
 I C=300.29 Q 1
 I C=300.3 Q 1
 I C=300.4 Q 1
 I C=301.13 Q 1
 I C=308.3 Q 1
 I C=309.81 Q 1
 I $E(C,1,3)=311 Q 1
 I $E(C,1,5)="312.8" Q 1
 I $E(C,1,5)="312.9" Q 1
 I C=313.81 Q 1
 I $E(C,1,3)=314 Q 1
 Q 0
SERV ;
 S BUDVAL=$$HIV(BUDV) I BUDVAL]"" S C=21 D PT
 S BUDVAL=$$MAMM(BUDV) I BUDVAL]"" S C=22 D PT
 I BUDVAL="" D
 .S BUDW=0 F  S BUDW=$O(^TMP($J,"MAMMS",BUDW)) Q:BUDW'=+BUDW  D
 ..;S D=$P($G(^BWPCD(BUDW,0)),U,12)
 ..S D=$S($$VERSION^XPDUTL("BW")<3:$P($G(^BWPCD(BUDW,0)),U,12),1:$P(^TMP($J,"MAMMS",BUDW),U,3))
 ..Q:D'=$P($P($G(^AUPNVSIT(BUDV,0)),U),".")  ;pap not on this visit date
 ..Q:$D(^TMP($J,"MAMDATE",$P($P(^AUPNVSIT(BUDV,0),U),".")))  ;ALREADY HAVE A PAP ON THIS DATE
 ..S C=22 D PT1 S ^XTMP("BUD8RPT1",BUDJ,BUDH,"T6",C,BUDCOM,BUDAGE,BUDSEX,DFN,"WH","MAM",BUDW)=^TMP($J,"MAMMS",BUDW)
 ..S ^TMP($J,"MAMDATE",$P($P($G(^AUPNVSIT(BUDV,0)),U),"."))=""
PAP1 S BUDVAL=$$PAP(BUDV) I BUDVAL]"" S C=23 D PT
 I BUDVAL="" D
 .S BUDW=0 F  S BUDW=$O(^TMP($J,"PAPS",BUDW)) Q:BUDW'=+BUDW  D
 ..;S D=$P($G(^BWPCD(BUDW,0)),U,12)
 ..S D=$S($$VERSION^XPDUTL("BW")<3:$P($G(^BWPCD(BUDW,0)),U,12),1:$P(^TMP($J,"PAPS",BUDW),U,3))
 ..Q:D'=$P($P($G(^AUPNVSIT(BUDV,0)),U),".")
 ..Q:$D(^TMP($J,"PAPDATE",$P($P(^AUPNVSIT(BUDV,0),U),".")))  ;ALREADY HAVE A PAP ON THIS DATE
 ..S C=23 D PT1 S ^XTMP("BUD8RPT1",BUDJ,BUDH,"T6",C,BUDCOM,BUDAGE,BUDSEX,DFN,"WH","PAP",BUDW)=^TMP($J,"PAPS",BUDW)
 ..S ^TMP($J,"PAPDATE",$P($P($G(^AUPNVSIT(BUDV,0)),U),"."))=""
 S BUDVAL=$$IMM(BUDV) I BUDVAL]"" S C=24 D PT
 S BUDVAL=$$CONTRA(BUDV) I BUDVAL]"" S C=25 D PT
 S Y=0 S BUDVAL=$$L26(BUDV) I BUDVAL]"" S C=26 D PT
 S BUDVAL=$$L27(BUDV) I BUDVAL]"" S C=27 D PT
 S BUDVAL=$$L28(BUDV) I BUDVAL]"" S C=28 D PT
 S BUDVAL=$$L29(BUDV) I BUDVAL]"" S C=29 D PT
 S BUDVAL=$$L30(BUDV) I BUDVAL]"" S C=30 D PT
 S BUDVAL=$$L31(BUDV) I BUDVAL]"" S C=31 D PT
 S BUDVAL=$$L32(BUDV) I BUDVAL]"" S C=32 D PT
 S BUDVAL=$$L33(BUDV) I BUDVAL]"" S C=33 D PT
 S BUDVAL=$$L34(BUDV) I BUDVAL]"" S C=34 D PT
 Q
CONTRA(BUDV) ;
 S G="",X=0 F  S X=$O(^AUPNVPOV("AD",BUDV,X)) Q:X'=+X!(G]"")  S R=$P(^AUPNVPOV(X,0),U),R=$P($$ICDDX^ICDCODE(R),U,2) I $E(R,1,3)="V25" S G=R
 Q G
L27(BUDV) ;
 I '$D(^AUPNVDEN("AD",BUDV)) Q ""
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I A=9110 S G=A
 .Q
 Q G
L28(BUDV) ;
 I '$D(^AUPNVDEN("AD",BUDV)) Q ""
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I A="0150"!(A="0120")!(A="0140")!(A="0160")!(A="0170")!(A="0180")!(A="0145") S G=A
 .Q
 Q G
L29(BUDV) ;
 I '$D(^AUPNVDEN("AD",BUDV)) Q ""
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I A=1110!(A=1120) S G=A
 .Q
 Q G
L30(BUDV) ;
 I '$D(^AUPNVDEN("AD",BUDV)) Q ""
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I A=1351 S G=A
 .Q
 Q G
L31(BUDV) ;
 S G=""
 I '$D(^AUPNVDEN("AD",BUDV)) G L31POV
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I A=1203!(A=1201)!(A=1204)!(A=1205)!(A=1206) S G=A
 .Q
 I G]"" Q G
L31POV ;
 S G=""
 S V=0 F  S V=$O(^AUPNVPOV("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVPOV(V,0)),U)
 .Q:'A
 .S A=$P($$ICDDX^ICDCODE(A),U,2)
 .I A="V07.31" S G=A
 .Q
 Q G
L32(BUDV) ;
 I '$D(^AUPNVDEN("AD",BUDV)) Q ""
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I $E(A,1,2)=21!($E(A,1,2)=23)!($E(A,1,2)=27) S G=A
 .Q
 Q G
L33(BUDV) ;
 I '$D(^AUPNVDEN("AD",BUDV)) Q ""
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I A=7111!(A=7140)!(A=7210)!(A=7220)!(A=7230)!(A=7240)!(A=7241)!(A=7250)!(A=7260)!(A=7261)!(A=7270)!(A=7272)!(A=7280) S G=A
 .Q
 Q G
L34(BUDV) ;
 I '$D(^AUPNVDEN("AD",BUDV)) Q ""
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I $E(A)=3!($E(A)=4)!($E(A)=5)!($E(A)=6)!($E(A)=8) S G=A
 .Q
 Q G
L26(BUDV) ;
 I $$AGE^AUPNPAT($P(^AUPNVSIT(BUDV,0),U,5),BUDCAD)>11 Q ""
 I $$CLINIC^APCLV(BUDV,"C")=24 Q "CLIN 24"
 I $$CLINIC^APCLV(BUDV,"C")=57 Q "CLIN 57"
 S X=0,G="" F  S X=$O(^AUPNVPOV("AD",BUDV,X)) Q:X'=+X!(G]"")  S R=$P(^AUPNVPOV(X,0),U),R=$P($$ICDDX^ICDCODE(R),U,2) I $E(R,1,3)="V20"!($E(R,1,3)="V29") S G=R
 I G]"" Q G
 S T=$O(^ATXAX("B","BUD L26 CPTS",0))
 S G="" I T S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P(^AUPNVCPT(X,0),U)
 .I $$ICD^ATXCHK(Z,T,1) S G=$P($$CPT^ICPTCOD(Z),U,2)
 .Q
 Q G
PAP(BUDV) ;
 S T=$O(^ATXLAB("B","BGP PAP SMEAR TAX",0))
 S G="" I T S X=0 F  S X=$O(^AUPNVLAB("AD",BUDV,X)) Q:X'=+X!(G]"")  S R=$P($G(^AUPNVLAB(X,0)),U) I R,$D(^ATXLAB(T,21,"B",R)) S G=$P(^LAB(60,R,0),U)
 I G]"" Q "V LAB: "_G
 S X=0 F  S X=$O(^AUPNVLAB("AD",BUDV,X)) Q:X'=+X!(G]"")  S R=$P(^AUPNVLAB(X,0),U),R=$P(^LAB(60,R,0),U) I R="PAP SMEAR" S G=R
 I G]"" Q "V LAB: "_G
 S T=$O(^ATXAX("B","BUD CPT PAP 08",0))
 S G="" I T S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P(^AUPNVCPT(X,0),U)
 .I $$ICD^ATXCHK(Z,T,1) S G=$P($$CPT^ICPTCOD(Z),U,2)
 .Q
 I G]"" Q "V CPT: "_G
 S X=0,G="" F  S X=$O(^AUPNVPOV("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P(^AUPNVPOV(X,0),U),Z=$P($$ICDDX^ICDCODE(Z),U,2)
 .I Z="V76.2"!(Z="V72.3")!(Z="V72.31")!(Z="V72.32")!(Z="V76.47")!(Z="V67.01")!($E(Z,1,5)="795.0") S G=Z
 I G]"" Q "V POV: "_G
 S X=0,G="" F  S X=$O(^AUPNVPRC("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P(^AUPNVPRC(X,0),U),Z=$P($$ICDOP^ICDCODE(Z),U,2)
 .I Z="91.46" S G=Z
 I G]"" Q "V PROCEDURE: "_G
 S T=$O(^ATXAX("B","BGP PAP LOINC CODES",0))
 S G="" I T S X=0 F  S X=$O(^AUPNVLAB("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S J=$P($G(^AUPNVLAB(X,11)),U,13)
 .Q:J=""
 .Q:'$$LOINC(J,T)
 .S G=J
 I G]"" Q "V LAB LOINC: "_G
 Q ""
IMM(BUDV) ;
 S T=$O(^ATXAX("B","BUD IMM CPTS",0))
 S G="" I T S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P(^AUPNVCPT(X,0),U)
 .I $$ICD^ATXCHK(Z,T,1) S G=$P($$CPT^ICPTCOD(Z),U,2)
 .Q
 I G]"" Q "V CPT: "_G
 S G="",X=0 F  S X=$O(^AUPNVIMM("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P(^AUPNVIMM(X,0),U),Z=+$P(^AUTTIMM(Z,0),U,3)
 .S BUDTIEN=$O(^BUDGCNTL("B","IMMUNIZATIONS LINE 24",0))
 .I $D(^BUDGCNTL(BUDTIEN,11,"B",Z)) S G=Z_" imm"
 .Q
 Q G
HIV(BUDV) ;
 S T=$O(^ATXLAB("B","BGP HIV TEST TAX",0))
 S G="" I T S X=0 F  S X=$O(^AUPNVLAB("AD",BUDV,X)) Q:X'=+X!(G]"")  S R=$P($G(^AUPNVLAB(X,0)),U) I R,$D(^ATXLAB(T,21,"B",R)) S G=$P(^LAB(60,R,0),U)
 I G]"" Q "V LAB: "_G
 S T=$O(^ATXAX("B","BUD CPT HIV TESTS",0))
 S G="" I T S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P(^AUPNVCPT(X,0),U)
 .I $$ICD^ATXCHK(Z,T,1) S G=$P($$CPT^ICPTCOD(Z),U,2)
 .Q
 I G]"" Q "V CPT: "_G
 S T=$O(^ATXAX("B","BGP HIV TEST LOINC CODES",0))
 S G="" I T S X=0 F  S X=$O(^AUPNVLAB("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S J=$P($G(^AUPNVLAB(X,11)),U,13)
 .Q:J=""
 .Q:'$$LOINC(J,T)
 .S G=J
 I G]"" Q "V LAB LOINC: "_G
 Q ""
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
MAMM(BUDV) ;
 S X=0,G="" F  S X=$O(^AUPNVRAD("AD",BUDV,X)) Q:X'=+X  D
 .S Z=$P(^AUPNVRAD(X,0),U),Z=$P(^RAMIS(71,Z,0),U,9) I Z S Y=$P($$CPT^ICPTCOD(Z),U,2)
 .;I Z=76091!(Z=76090)!(Z=76092)!(Z="G0202")!(Z="G0204")!(Z="G0206")!(Z=77055)!(Z=77056)!(Z=77057)!(Z=77058)!(Z=77059) S G=Z
 .I $$ICD^ATXCHK(Z,$O(^ATXAX("B","BGP CPT MAMMOGRAM",0)),1) S G=Y
 I G Q "V RAD: "_G
 S X=0,G="" F  S X=$O(^AUPNVPOV("AD",BUDV,X)) Q:X'=+X  D
 .S Z=$P(^AUPNVPOV(X,0),U),Z=$P($$ICDDX^ICDCODE(Z),U,2)
 .I Z="V76.11"!(Z="V76.12")!(Z="793.80")!(Z=793.81)!(Z=793.89) S G=Z
 I G]"" Q "V POV: "_G
 S X=0,G="" F  S X=$O(^AUPNVPRC("AD",BUDV,X)) Q:X'=+X  D
 .S Z=$P(^AUPNVPRC(X,0),U),Z=$P($$ICDOP^ICDCODE(Z),U,2)
 .I Z="87.37"!(Z="87.36") S G=Z
 I G]"" Q "V PROC: "_G
 S X=0,G="" F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X  D
 .S Z=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Z),U,2)
 .;I Z=76091!(Z=76090)!(Z=76092)!(Z="G0202")!(Z="G0204")!(Z="G0206")!(Z=77055)!(Z=77056)!(Z=77057)!(Z=77058)!(Z=77059) S G="V CPT: "_Z
 .I $$ICD^ATXCHK(Z,$O(^ATXAX("B","BGP CPT MAMMOGRAM",0)),1) S G=Y
 I G Q "V CPT: "_Y
 Q ""
TEST ;
 S X=$$MAMM(28797)
 Q
