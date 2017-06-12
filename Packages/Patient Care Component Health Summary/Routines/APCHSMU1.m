APCHSMU1 ; IHS/CMI/LAB - utilities for hmr ;
 ;;2.0;IHS PCC SUITE;**2,11,16**;MAY 14, 2009;Build 9
 ;
 ;
GETMEDS(P,APCHMBD,APCHMED,TAXM,TAXN,TAXC,APCHNAME,APCHZ) ;EP
 S TAXM=$G(TAXM)
 S TAXN=$G(TAXN)
 S TAXC=$G(TAXC)
 K ^TMP($J,"MEDS"),APCHZ
 S APCHNAME=$G(APCHNAME)
 NEW APCHC1,APCHINED,APCHINBD,APCHMIEN,APCHD,X,Y,T,T1,D,G,T2,C
 S APCHC1=0 K APCHZ
 S APCHINED=(9999999-APCHMED)-1,APCHINBD=(9999999-APCHMBD)
 F  S APCHINED=$O(^AUPNVMED("AA",P,APCHINED)) Q:APCHINED=""!(APCHINED>APCHINBD)  D
 .S APCHMIEN=0 F  S APCHMIEN=$O(^AUPNVMED("AA",P,APCHINED,APCHMIEN)) Q:APCHMIEN'=+APCHMIEN  D
 ..Q:'$D(^AUPNVMED(APCHMIEN,0))
 ..S APCHD=$P(^AUPNVMED(APCHMIEN,0),U)
 ..Q:APCHD=""
 ..Q:'$D(^PSDRUG(APCHD,0))
 ..S APCHC1=APCHC1+1
 ..S ^TMP($J,"MEDS","ORDER",(9999999-APCHINED),APCHC1)=(9999999-APCHINED)_U_$P(^PSDRUG(APCHD,0),U)_U_$P(^PSDRUG(APCHD,0),U)_U_APCHMIEN_U_$P(^AUPNVMED(APCHMIEN,0),U,3)
 ;reorder
 S APCHC1=0,X=0
 F  S X=$O(^TMP($J,"MEDS","ORDER",X)) Q:X'=+X  D
 .S Y=0 F  S Y=$O(^TMP($J,"MEDS","ORDER",X,Y)) Q:Y'=+Y  D
 ..S APCHC1=APCHC1+1
 ..S ^TMP($J,"MEDS",APCHC1)=^TMP($J,"MEDS","ORDER",X,Y)
 K ^TMP($J,"MEDS","ORDER")
 S T="" I TAXM]"" S T=$O(^ATXAX("B",TAXM,0))
 S T1="" I TAXN]"" S T1=$O(^ATXAX("B",TAXN,0))
 S T2="" I TAXC]"" S T2=$O(^ATXAX("B",TAXC,0))
 S APCHC1=0,X=0 F  S X=$O(^TMP($J,"MEDS",X)) Q:X'=+X  S Y=+$P(^TMP($J,"MEDS",X),U,4) D
 .Q:'$D(^AUPNVMED(Y,0))
 .S G=0
 .S D=$P(^AUPNVMED(Y,0),U)
 .S C=$P($G(^PSDRUG(D,0)),U,2)
 .I C]"",T2,$D(^ATXAX(T2,21,"B",C)) S G=1
 .S C=$P($G(^PSDRUG(D,2)),U,4)
 .I C]"",T1,$D(^ATXAX(T1,21,"B",C)) S G=1
 .I T,$D(^ATXAX(T,21,"B",D)) S G=1
 .I APCHNAME]"",$P(^PSDRUG(D,0),U)[APCHNAME S G=1
 .I TAXM="",TAXN="",TAXC="",APCHNAME="" S G=1  ;WANTS ALL MEDS
 .I G=1 S APCHC1=APCHC1+1,APCHZ(APCHC1)=^TMP($J,"MEDS",X)
 .Q
 K ^TMP($J,"MEDS")
 K APCHINED,APCHINBD,APCHMBD,APCHMED,APCHD,APCHC1,APCHNAME
 Q
CPTI(P,BDATE,EDATE,CPTI,SCEX,SCLN,SMOD) ;EP - did patient have this cpt (ien) in date range
 I '$G(P) Q ""
 I $G(CPTI)="" Q ""
 I $G(BDATE)="" Q ""
 I $G(EDATE)="" Q ""
 S SCEX=$G(SCEX)
 S SCLN=$G(SCLN)
 S SMOD=$G(SMOD)
 I '$D(^ICPT(CPTI)) Q ""  ;not a valid cpt ien
 I '$D(^AUPNVCPT("AA",P)) Q ""  ;no cpts for this patient
 NEW D,BD,ED,X,Y,D,G,V,I,M,M1,Z,J,K,Q
 S ED=9999999-EDATE-1,BD=9999999-BDATE,G=""
 F  S ED=$O(^AUPNVCPT("AA",P,CPTI,ED)) Q:ED=""!($P(ED,".")>BD)!(G)  D
 .S I=0 F  S I=$O(^AUPNVCPT("AA",P,CPTI,ED,I)) Q:I'=+I!(G)  D
 ..S V=$P($G(^AUPNVCPT(I,0)),U,3)
 ..I SCEX]"",SCEX[$P(^AUPNVSIT(V,0),U,7) Q
 ..I SCLN]"",$$CLINIC^APCLV(V,"C")=SCLN Q
 ..S M=$$VAL^XBDIQ1(9000010.18,I,.08)
 ..S M1=$$VAL^XBDIQ1(9000010.18,I,.09)
 ..S Q=0
 ..I SMOD]"" F J=1:1 S K=$P(SMOD,";",J) Q:K=""  I K=M S Q=1
 ..Q:Q
 ..I SMOD]"" F J=1:1 S K=$P(SMOD,";",J) Q:K=""  I K=M1 S Q=1
 ..Q:Q
 ..S G="1"_"^"_(9999999-ED)
 Q G
 ;
TRANI(P,BDATE,EDATE,CPTI) ;EP
 I '$G(P) Q ""
 I $G(TRANI)="" Q ""
 I $G(BDATE)="" Q ""
 I $G(EDATE)="" Q ""
 I '$D(^ICPT(CPTI)) Q ""
 I '$D(^AUPNVTC("AC",P)) Q ""  ;no cpts for this patient
 NEW X,V,C,G
 S G=""
 S X=0 F  S X=$O(^AUPNVTC("AC",P,X)) Q:X'=+X  D
 .S C=$P($G(^AUPNVTC(X,0)),U,7)
 .Q:C'=CPTI
 .S V=$P(^AUPNVTC(X,0),U,3)
 .S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:V<BDATE
 .Q:V>EDATE
 .S G="1"_"^"_V
 Q G
 ;
CPTREFT(P,BDATE,EDATE,T) ;EP - return ien of CPT entry if patient had this CPT
 I '$G(P) Q ""
 I '$G(T) Q ""
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 NEW G,X,Y,Z,I
 S G=""
 S I=0 F  S I=$O(^AUPNPREF("AA",P,81,I)) Q:I=""!($P(G,U))  D
 .S (X,G)=0 F  S X=$O(^AUPNPREF("AA",P,81,I,X)) Q:X'=+X!($P(G,U))  S Y=0 F  S Y=$O(^AUPNPREF("AA",P,81,I,X,Y)) Q:Y'=+Y  S D=$P(^AUPNPREF(Y,0),U,3) I D'<BDATE&(D'>EDATE) D
 ..Q:'$$ICD^ATXAPI(I,T,1)
 ..S G="1^"_D_"^"_$P(^AUPNPREF(Y,0),U,7)
 .Q
 Q G
REFTAX(P,F,T,B,E) ;EP - refused an item in a taxonomy
 I '$G(P) Q ""
 I '$G(F) Q ""
 I '$G(T) Q ""
 I $G(B)="" Q ""
 I $G(E)="" Q ""
 NEW G,X,Y,%DT,T1 S X=B,%DT="P" D ^%DT S B=Y
 S X=E,%DT="P" D ^%DT S E=Y
 S T1=0,G="" F  S T1=$O(^ATXAX(T,21,"B",T1)) Q:T1=""!(G)  D
 .S (X,G)=0 F  S X=$O(^AUPNPREF("AA",P,F,T1,X)) Q:X'=+X!(G)  S Y=0 F  S Y=$O(^AUPNPREF("AA",P,F,T1,X,Y)) Q:Y'=+Y  S D=$P(^AUPNPREF(Y,0),U,3) I D'<B&(D'>E) S G="1^"_D_"^"_$P(^AUPNPREF(Y,0),U,7)
 Q G
IPLSNO(P,T,B) ;EP - any problem list entry with a SNOMED in T
 NEW OUT,IN,C,G,Y,X,I,SNL,SNI
 S OUT="SNL"
 S B=$G(B)
 S X=$$SUBLST^BSTSAPI(OUT,T)
 ;BUILD INDEX
 S C=0 F  S C=$O(SNL(C)) Q:C'=+C  S I=$P(SNL(C),U,1) I I]"" S SNI(I)=SNL(C)
 K SNL
 ;LOOP PROBLEM LIST
 S (X,G)=""
 F  S X=$O(^AUPNPROB("APCT",P,X)) Q:X=""!(G)  D
 .S Y=0 F  S Y=$O(^AUPNPROB("APCT",P,X,Y)) Q:Y'=+Y!(G)  D
 ..Q:'$D(^AUPNPROB(Y,0))
 ..Q:$P(^AUPNPROB(Y,0),U,12)="D"  ;deleted
 ..I 'B Q:$P(^AUPNPROB(Y,0),U,12)="I"  ;inactive - per susan 5.3.16
 ..I $D(SNI(X)) S G=1_U_$$CONCPT^AUPNVUTL(X)_" on their Problem List"
 Q G
PAPCPTS ;;
 ;;88141
 ;;88142
 ;;88143
 ;;88144
 ;;88145
 ;;88146
 ;;88147
 ;;88148
 ;;88150
 ;;88152
 ;;88153
 ;;88154
 ;;88155
 ;;88156
 ;;88157
 ;;88158
 ;;88164
 ;;88165
 ;;88166
 ;;88167
 ;;
FLUCPTS ;;
 ;;90657
 ;;90656
 ;;90658
 ;;90655
 ;;90724
 ;;90711
 ;;90659
 ;;90660
 ;;
SIGCPTS ;;
 ;;45330
 ;;45331
 ;;45332
 ;;45333
 ;;45334
 ;;45336
 ;;45337
 ;;45338
 ;;45339
 ;;45341
 ;;45342
 ;;45345
 ;;
BECPTS ;;
 ;;74270
 ;;74275
 ;;74280
 ;;
COLOCPTS ;;
 ;;45355
 ;;45360
 ;;45361
 ;;45362
 ;;45363
 ;;45364
 ;;45365
 ;;45366
 ;;45367
 ;;45368
 ;;45369
 ;;45370
 ;;45371
 ;;45372
 ;;45378
 ;;45379
 ;;45380
 ;;45382
 ;;45383
 ;;45384
 ;;45385
 ;;45387
 ;;
