LRVRKIL ;DALISC/FHS - LAB ROUTINE DATA VERFICATION VARIABLE KILLER ;03/24/92 17:30 [ 04/10/2003  12:08 PM ]
 ;;5.2T9;LR;**1004,1018**;Nov 17, 2004
 ;;5.2;LAB SERVICE;**153**;Sep 27, 1994
 ;Formerly apart of LRVR
EN ;From LRVR
 ;D ^%ZISC,KVA^VADPT
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1018
 ;D ^%ZISC,KVA^BLRDPT  ;IHS/DIR TUC/AAB 06/23/98
 D ^%ZISC D @$S($$ISPIMS^BLRUTIL:"KVA^VADPT",1:"KVA^BLRDPT")
 ;----- END IHS MODIFICATIONS
 K D1,DL,LRAL,LRALERT,LRCAPWA,LRCDEFOX,LRLD,LRNOCODE,LRORU3,LRPCEVSO
 K LRPRAC,LRRB,LRSUFO,LRTM60,LRTREA,LRTT,LRURGW,ORIFN,RSITE,X,XP
 K X3,LRT,LRCFL,LRCSQ,D0,GLB,LRAA,LRCAPMS,LRCDEF,LRCDEF0,LRCNT,LRCODE,LRCODEN,LRCWT,LRI,LRNOW,NOW,LRP,LRPN,LRQC,LRSSC,LRSSCX,LRSTD,NODE,NODE0,S2,ZTSK,LRTIME,Y
 ;K EAMODE,LROUTINE,LRPANEL,LRSAMP,LRSN,LRSP,LRSPEC,LRSS,LRSUB,LRTN,LRTS,LRTSTLM,LRTYPE,LRUSI,LRUSNM,LRVERVER,LRVF,^TMP("LR",$J,"VTO"),LRVTS,LRWRD,N,PNM,SEX,SSN,X,X1,X2,X6,X7,Y,Z,VA("PID"),VA("BID")
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1018
 K EAMODE,LROUTINE,LRPANEL,LRSAMP,LRSN,LRSP,LRSPEC,LRSS,LRSUB,LRTN,LRTS,LRTSTLM,LRTYPE,LRUSI,LRUSNM,LRVERVER,LRVF,^TMP("LR",$J,"VTO"),LRVTS,LRWRD,N,PNM,SEX,SSN,HRCN,X,X1,X2,X6,X7,Y,Z,VA("PID"),VA("BID")  ;IHS/ANMC/CLS 08/18/96
 ;----- END IHS MODIFICATIONS
 K ^TMP("LR",$J,"TMP"),%,A,AGE,B,DFN,DIC,DOB,I,IFN,LRNOECHO,LRSBCOM,LRLKOK,I1,J,LRACC,LRCDT,LRCEN,LRCW,LRDAT,LRDFN,LRDPF,LRDV,LRDVF,LREAL,LREDIT
 K LRNOW,LRTEC,LRAA,LRACD,LRAD,LRAN,LRAOD,LREND,LRMA,LRMACH,LRMAX2,LRMAXX,LRPROF,LRSQ,LRTNSV,LRTY,LRVRM,S,Z1,Z2,DX,LRLL,LRODTSV,LRSPN,LRTRCP,LRTSE,KK,NOW,LRCFL,LRSNSV,G,G6
 K LRFLG,LRIDT,LRINI,LRLCT,LRLK,LRLLOC,LRMETH,LRNG2,LRNG3,LRNG4,LRNG5,LRNT,LRNTN,LRNX,LRODT,LROUT,LRORD,LRPER,LRM Q