APCDPOP ; IHS/CMI/LAB - post selection on V PROCEDURE ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
AGE ;IF THERE IS AGE CRITERIA DATA AVAILABLE CHECK TO SEE THAT IT FITS THE CRITERIA
 Q:$D(APCDTACC)
 Q:'$D(APCDTPCC)
 G:'$D(AUPNDAYS) XIT
 S APCDSY=Y,APCDY=+Y
 ;G:'$D(^ICD0(APCDY,9999999)) XIT
 ;I $P(^ICD0(APCDY,9999999),U)]"",($P(^ICD0(APCDY,9999999),U)>AUPNDAYS) D ACCEPT
 ;I $P(^ICD0(APCDY,9999999),U,2)]"",($P(^ICD0(APCDY,9999999),U,2)<AUPNDAYS) D ACCEPT
 NEW %,A,B
 S %=$$ICDOP^ICDCODE(APCDY)
 S (A,B)=""  ;CSV
 I $$VERSION^XPDUTL("BCSV")]"" D  I 1  ;CSV
 .S A="",B=""  ;CSV
 E  S A=$P($G(^ICD0(APCDY,9999999)),U),B=$P($G(^ICD0(APCDY,9999999)),U,2)
 I A]"",A>AUPNDAYS D ACCEPT
 I B]"",B<AUPNDAYS D ACCEPT
 D XIT
 Q
ACCEPT ;
 I $D(AUPNTALK) S APCDTACC="" Q
 I $D(ZTQUEUED) S APCDTACC="" Q
 W !!,$C(7),$C(7),"WARNING:  The Patient's age is outside the IHS edit age range for this ICD Code!",!
 I $D(AUPNDOB) S Y=AUPNDOB D DD^%DT S APCDRDOB=Y
 W "Patient's DOB:  ",$G(APCDRDOB),?35,"Patient's Age in Days:  ",AUPNDAYS,!,"ICD0 Edit Lower Age:  ",$P(^ICD0(APCDY,9999999),U),?35,"ICD0 Edit Upper Age:  ",$P(^ICD0(APCDY,9999999),U,2)
 W !!,"Do you still want to use this code" S %=2 D YN^DICN I %'=1 S Y=-1 Q
 S APCDTACC=1
 Q
XIT ;
 I Y'=-1,$D(APCDSY) S Y=APCDSY
 K APCDY,APCDRDOB,APCDSY
 Q
