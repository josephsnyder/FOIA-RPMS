APCHS2F ; IHS/CMI/LAB - PART 2B OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS PCC SUITE;**10,15**;MAY 14, 2009;Build 11
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
 F APCHSIVD=0:0 S APCHSIVD=$O(^AUPNVSIT("AA",APCHSPAT,APCHSIVD)) Q:APCHSIVD=""!(APCHSIVD>APCHSDLM)  D  Q:APCHSNDM=0!($D(APCHSQIT))
 . D ONEDATE
 . Q:$D(APCHSQIT)
 . S:(APCHSDAT'=APCHSPVD)&APCHSDTU APCHSNDM=APCHSNDM-APCHSDTU,APCHSPVD=APCHSDAT
 . Q
 ;
OUTPTX ; <CLEANUP>
 K APCHSIVD,APCHSDTU,APCHSDAT,APCHSVDF,APCHSFAC,APCHSPFN,APCHSSCL,APCHSMTX,APCHSMOD,APCHSPVD,APCHSOVT,APCHSNDT,APCHSCLI,APCHSPDN,APCHSICD,APCHSICL,APCHSNRQ,APCHSDCX
 K APCHSNFL,APCHSNSH,APCHSCCL,APCHSNAB,APCHSVSC,APCHSITE,APCHSQIT,APCHSDCL,Y,APCHSDPR,APCHCSVD
 Q
 ;
ONEDATE ;
 S APCHSCCL=""
 S (Y,APCHCSVD)=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 S APCHSDTU=0,APCHSNDT=(APCHSDAT'=APCHSPVD)
 S APCHSVDF="" F APCHSQ=0:0 S APCHSVDF=$O(^AUPNVSIT("AA",APCHSPAT,APCHSIVD,APCHSVDF)) Q:APCHSVDF=""  D  Q:$D(APCHSQIT)
 . S APCHSSCL=""
 . S APCHSN=^AUPNVSIT(APCHSVDF,0)
 .  I $P(APCHSN,U,7)="E",'$D(^AUPNVPOV("AD",APCHSVDF)) Q  ;don't display events with no pov
 . Q:'$P(APCHSN,U,9)
 . Q:$P(APCHSN,U,11)
 . Q:APCHSOVT'[$P(APCHSN,U,7)  ;not correct service category
 . S APCHSFND=0 D CHKSCRN Q:'APCHSFND
 . D GETCLN,GETPROV,GETSITEV^APCHSUTL,DSPVIS
 . Q:$D(APCHSQIT)
 . Q
 Q
GETPROV ;
 S APCHSPRV=$$PRIMPROV^APCLV(APCHSVDF,"T")
 Q
GETCLN ;
 S APCHSCLI=$P(APCHSN,U,8) I APCHSCLI="" S APCHSCCL="<none>" Q
 S APCHSCLI=$P(APCHSN,U,8) Q:APCHSCLI=""
 Q:'$D(^DIC(40.7,APCHSCLI))
 I $D(^DIC(40.7,APCHSCLI,9999999)),$P(^(9999999),U,1)]"" S APCHSCLI=$P(^DIC(40.7,APCHSCLI,9999999),U,1),APCHSCCL=APCHSCLI Q
 S APCHSCLI=$E($P(^DIC(40.7,APCHSCLI,0),U,1),1,8)
 S APCHSCCL=APCHSCLI
 Q
CHKSCRN ;check for screening
 ;screen out any clinics
 NEW % S %=$P(APCHSN,U,8) I %,$D(^APCHSCTL(APCHSTYP,11,"B",%)) Q
 ;screen out primary provider disciplines
 NEW % S %=$$PP(APCHSVDF)
 Q:'%
 Q:$D(^APCHSCTL(APCHSTYP,9,"B",%))
 S APCHSFND=1
 Q
PP(V) ;get primary provider discipline ien
 I 'V Q ""
 I '$D(^AUPNVSIT(V)) Q ""
 NEW %,Y,P S P="",Y=0 F  S Y=$O(^AUPNVPRV("AD",V,Y)) Q:Y'=+Y  I $P(^AUPNVPRV(Y,0),U,4)="P" S P=$P(^AUPNVPRV(Y,0),U)
 I 'P Q P
 I $P(^DD(9000010.06,.01,0),U,2)[200,'$D(^VA(200,P)) Q ""
 I $P(^DD(9000010.06,.01,0),U,2)[6,'$D(^DIC(6,P)) Q ""
 S %=$$VALI^XBDIQ1($S($P(^DD(9000010.06,.01,0),U,2)[200:200,1:6),P,$S($P(^DD(9000010.06,.01,0),U,2)[200:53.5,1:2))
 Q %
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
 S APCHSICD=$P(APCHSN,U,1) D GETICDDX^APCHSUTL
 S APCHSNRQ=$P(APCHSN,U,4) D
 .I $$WANTPN^APCHSUTL(APCHSTYP) S APCHSNRQ=$$GET1^DIQ(9000010.07,APCHSPDN_",",.04)
 .I $P(APCHSN,U,29)]"" S APCHSNRQ=APCHSNRQ_" ["_$$VAL^XBDIQ1(9000010.07,APCHSPDN,.29)_"]" ;IHS/CMI/LAB V2.0 PATCH 15
 .I $P(APCHSN,U,5)]"" S APCHSNRQ=APCHSNRQ_"  (Stage: "_$P(APCHSN,U,5)_")"
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
 W ?10,APCHSFAC
 I APCHSDCX,APCHSDPR W ?23,$E(APCHSCLI,1,6),?30,APCHSPRV
 I APCHSDCX,'APCHSDPR W ?23,APCHSCLI
 I 'APCHSDCX,APCHSDPR W ?23,APCHSPRV
 S APCHSICL=APCHSDCL
 S:0 APCHSICD=APCHSVSC_":"_APCHSICD D PRTICD^APCHSUTL
 Q
 ;
