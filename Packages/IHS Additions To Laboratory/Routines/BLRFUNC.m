BLRFUNC ;IHS/OHPRD/FJE - IHS BLR FUNCTIONS;   [ 10/28/1998  7:11 AM ]
 ;;5.2;BLR;**1002;JUN 01, 1998
 ;;
 ;
 ;
 Q
SITE() ;
 N X
 S X=DUZ(2)_"^"_$P(^DIC(4,DUZ(2),0),U)_"^"_$P(^AUTTLOC(DUZ(2),0),U,10)
 Q X
 ;
