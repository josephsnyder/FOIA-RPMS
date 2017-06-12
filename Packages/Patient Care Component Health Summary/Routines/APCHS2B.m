APCHS2B ; IHS/CMI/LAB - PART 2B OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS PCC SUITE;**10,11,15**;MAY 14, 2009;Build 11
 ;
OUTPT ; ********** OUTPATIENT ENCOUNTERS * 9000010/9000010.07 **********
 ; <SETUP>
 Q:'$D(^AUPNVSIT("AA",APCHSPAT))
 S APCHSOVT="ARSCOTE" ; NOTE: THIS CONTROLS TYPES OF VISITS DISPLAYED
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 ; <DISPLAY>
 S APCHSPVD=0
 S APCHSPFN=""
 S APCHSDCX="",APCHSDPR=""
 I $D(^APCHSCTL(APCHSTYP,2)),$P(^(2),U,3)="Y" S APCHSDCX=1
 I $D(^APCHSCTL(APCHSTYP,2)),$P(^(2),U,5)=1 S APCHSDPR=1
 I 'APCHSDPR,'APCHSDCX S APCHSDCL=23
 I APCHSDCX,'APCHSDPR S APCHSDCL=32
 I APCHSDCX,APCHSDPR S APCHSDCL=35
 I 'APCHSDCX,APCHSDPR S APCHSDCL=28
 F APCHSIVD=0:0 S APCHSIVD=$O(^AUPNVSIT("AA",APCHSPAT,APCHSIVD)) Q:APCHSIVD=""!(APCHSIVD>APCHSDLM)  D  Q:APCHSNDM=0!(APCHSQT)
 .  S APCHSQT=1
 .  D ONEDATE
 .  Q:$D(APCHSQIT)
 .  S:(APCHSDAT'=APCHSPVD)&APCHSDTU APCHSNDM=APCHSNDM-APCHSDTU,APCHSPVD=APCHSDAT
 .  S APCHSQT=0
 .  Q
 ;
OUTPTX ; <CLEANUP>
 K APCHSIVD,APCHSDTU,APCHSDAT,APCHSVDF,APCHSFAC,APCHSPFN,APCHSSCL,APCHSMTX,APCHSMOD,APCHSPVD,APCHSOVT,APCHSNDT,APCHSCLI,APCHSPDN,APCHSICD,APCHSICL,APCHSNRQ,APCHSDPR,APCHSDCX
 K APCHSNFL,APCHSNSH,APCHSCCL,APCHSNAB,APCHSVSC,APCHSITE,APCHSQT,APCHSDCL,Y,APCHCSVD
 Q
 ;
ONEDATE ;
 S APCHSCCL=""
 S (Y,APCHCSVD)=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 ;S (APCHSPFN,APCHSSCL)="",APCHSDTU=0,APCHSNDT=(APCHSDAT'=APCHSPVD)
 S APCHSDTU=0,APCHSNDT=(APCHSDAT'=APCHSPVD)
 S APCHSVDF="" F APCHSQ=0:0 S APCHSVDF=$O(^AUPNVSIT("AA",APCHSPAT,APCHSIVD,APCHSVDF)) Q:APCHSVDF=""  D  Q:APCHSQT
 .  S APCHSQT=1
 .  S APCHSSCL=""
 .  S APCHSN=^AUPNVSIT(APCHSVDF,0)
 .  I $P(APCHSN,U,7)="E",'$D(^AUPNVPOV("AD",APCHSVDF)) S APCHSQT=0 Q  ;don't display events with no pov
 .  I $P(APCHSN,U,7)="I",'$D(^AUPNVPOV("AD",APCHSVDF)) S APCHSQT=0 Q  ;don't display in hosp visits with no pov
 .  I +$P(APCHSN,U,9),'$P(APCHSN,U,11) D GETCLN,GETPROV,GETSITEV^APCHSUTL D
 ..  I APCHSOVT[APCHSVSC D DSPVIS
 ..  Q
 .  Q:$D(APCHSQIT)
 .  S APCHSQT=0
 .  Q
 Q
 ;
GETPROV ;
 S APCHSPRV=$$PRIMPROV^APCLV(APCHSVDF,"T")
 Q
GETCLN ;
 S APCHSCLI=$P(APCHSN,U,8) I APCHSCLI="" S APCHSCCL="<none>" Q
 S APCHSCLI=$P(APCHSN,U,8) Q:APCHSCLI=""
 Q:'$D(^DIC(40.7,APCHSCLI))
 I $D(^DIC(40.7,APCHSCLI,9999999)),$P(^(9999999),U,1)]"" S APCHSCLI=$E($P(^DIC(40.7,APCHSCLI,9999999),U,1),1,6),APCHSCCL=APCHSCLI Q
 S APCHSCLI=$E($P(^DIC(40.7,APCHSCLI,0),U,1),1,8)
 S APCHSCCL=APCHSCLI
 Q
DSPVIS ;
 S APCHSDTU=1
 I $O(^AUPNVPOV("AD",APCHSVDF,""))="" D NOPOV Q
 S APCHSPDN="" F APCHSQ=0:0 S APCHSPDN=$O(^AUPNVPOV("AD",APCHSVDF,APCHSPDN)) Q:'APCHSPDN  S APCHSN=^AUPNVPOV(APCHSPDN,0) D HASPOV
 Q
 ;
NOPOV ;
 S (APCHSICD,APCHSNRQ)="<purpose of visit not yet entered>",APCHSMOD=""
 G COMMON
 ;
HASPOV ;
 S APCHCSVD=$$VD^APCLV(APCHSVDF)
 S APCHSICD=$P(APCHSN,U,1) D GETICDDX^APCHSUTL
 S APCHSNRQ=$P(APCHSN,U,4) D
 .I $$WANTPN^APCHSUTL(APCHSTYP) S APCHSNRQ=$$GET1^DIQ(9000010.07,APCHSPDN_",",.04)
 .I $P(APCHSN,U,29)]"" S APCHSNRQ=APCHSNRQ_" ["_$$VAL^XBDIQ1(9000010.07,APCHSPDN,.29)_"]" ;IHS/CMI/LAB V2.0 PATCH 15
 .I $P(APCHSN,U,5)]"" S APCHSNRQ=APCHSNRQ_"  (Stage: "_$P(APCHSN,U,5)_")"  ;IHS/CMI/LAB - patched to display stage of 0
 S APCHSMOD=$P(APCHSN,U,6)
COMMON ;
 X APCHSCKP Q:$D(APCHSQIT)  S:APCHSNPG APCHSNDT=1
 I APCHSNDT W APCHSDAT S (APCHSPFN,APCHSSCL)="",APCHSNDT=0
 I APCHSNSH=APCHSPFN S APCHSFAC=""
 E  S (APCHSFAC,APCHSPFN)=APCHSNSH,APCHSSCL=""
 I APCHSCCL=APCHSSCL S APCHSCLI=""
 E  S (APCHSCLI,APCHSSCL)=APCHSCCL
 I APCHSICD["<purpose of visit not"&(APCHSSCL="<none>") S APCHSCLI=""
 I APCHSMOD]"" S APCHSMTX=$P(^DD(9000010.07,.06,0),U,3),APCHSMTX=$P($P(APCHSMTX,APCHSMOD_":",2),";",1),APCHSMTX=$P(APCHSMTX,",",1),APCHSICD=APCHSMTX_" "_APCHSICD
 S:$D(^AUPNVCHS("AD",APCHSVDF)) APCHSNTE="*** CHS ***"
 ;S APCHSICL=$S(APCHSCLI'=" ":35,1:23)
 W ?10,APCHSFAC
 I APCHSDCX,APCHSDPR W ?23,$E(APCHSCLI,1,6),?30,APCHSPRV
 I APCHSDCX,'APCHSDPR W ?23,APCHSCLI
 I 'APCHSDCX,APCHSDPR W ?23,APCHSPRV
 S APCHSICL=APCHSDCL
 S:0 APCHSICD=APCHSVSC_":"_APCHSICD D PRTICD^APCHSUTL
 Q
INHOSP ; ********** INHOSPITAL ENCOUNTERS * 9000010/9000010.07 **********
 ; <SETUP>
 Q:'$D(^AUPNVSIT("AA",APCHSPAT))
 S APCHSOVT="I" ; NOTE: This controls types of visits displayed
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 ; <DISPLAY>
 S APCHSDCX="",APCHSDPR=""
 I $D(^APCHSCTL(APCHSTYP,2)),$P(^(2),U,3)="Y" S APCHSDCX=1
 I $D(^APCHSCTL(APCHSTYP,2)),$P(^(2),U,5)=1 S APCHSDPR=1
 I 'APCHSDPR,'APCHSDCX S APCHSDCL=23
 I APCHSDCX,'APCHSDPR S APCHSDCL=32
 I APCHSDCX,APCHSDPR S APCHSDCL=35
 I 'APCHSDCX,APCHSDPR S APCHSDCL=28
 S APCHSPVD=0
 F APCHSIVD=0:0 S APCHSIVD=$O(^AUPNVSIT("AA",APCHSPAT,APCHSIVD)) Q:APCHSIVD=""!(APCHSIVD>APCHSDLM)  D ONEDATE Q:$D(APCHSQIT)  S:(APCHSDAT'=APCHSPVD)&APCHSDTU APCHSNDM=APCHSNDM-APCHSDTU,APCHSPVD=APCHSDAT Q:APCHSNDM=0
 ; <CLEANUP>
INHOSPX K APCHSIVD,APCHSDTU,APCHSDAT,APCHSVDF,APCHSFAC,APCHSPFN,APCHSSCL,APCHSMTX,APCHSMOD,APCHSPVD,APCHSOVT,APCHSNDT,APCHSCLI,APCHSPDN,APCHSICD,APCHSICL,APCHSNRQ
 K APCHSNFL,APCHSNSH,APCHSNAB,APCHSVSC,APCHSITE,Y
 Q
 ;
