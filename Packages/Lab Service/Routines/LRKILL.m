LRKILL ; IHS/DIR/AAB - CLEAN-UP AFTER LR ROUTINES 7/28/89 17:27 ;  [ 07/22/2002  1:22 PM ]
 ;;5.2T9;LR;**1001,1003,1013,1018**;Nov 17, 2004
 ;
 ;;5.2;LAB SERVICE;**71**;Sep 27, 1994
 ;K LRBLOOD,LRPARAM,LRPLASMA,LRSERUM,LRUNKNOW,LRURINE,BLRF  ;IHS/OIRM/TUCSON/MJL 12/9/96
 K LRBLOOD,LRPARAM,LRPLASMA,LRSERUM,LRUNKNOW,LRURINE,BLRF,BLRQSITE  ;IHS/DIR TUC/AAB 04/07/98
 K LRPANEL,LRTM60,LRDT0,LRORN,LRLABKY,VA("BID"),VA("PID")
 ;K LRVIDO,LRVIDOF,LRPCEVSO D KVAR^BLRDPT
 ;----- BEGIN IHS MODIFICATIONS LR*5.2*1018
 K LRVIDO,LRVIDOF,LRPCEVSO,BLROPT D @$S($$ISPIMS^BLRUTIL:"KVAR^VADPT",1:"KVAR^BLRDPT") K ^UTILITY("TB",$J)  ;IHS/OIRM TUC/AAB
 ;----- END IHS MODIFICATIONS
 K LR,LRABV,LRAX,LRBLOOD,LRCAPA,LRDPAF,LRDT0,LRH,LRSF,LRT,LRU,LRWHO
 D ^LRORDK
 Q
