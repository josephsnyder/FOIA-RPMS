ABMDEDIK ; IHS/ASDST/DMJ - DELETE Claims ;
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;
 S ABM("X")=""
 S ABM="" F  S ABM=$O(^DD(9002274.3,0,"IX",ABM)) Q:ABM=""  D
 .S ABM("X")=ABM("X")_ABM_","
 .Q
 I ABM("X")="AD,AINP,APC,AS,AV,B," G KILL
 I ABM("X")="AD,APC,AS,AV,B," G KILL
 S DIK="^ABMDCLM(DUZ(2)," D ^DIK
 Q
 ;
KILL Q:'$D(^ABMDCLM(DUZ(2),DA,0))  S ABM(0)=^(0),$P(^ABMDCLM(DUZ(2),0),U,4)=$P(ABM(0),U,4)-1
 K ^ABMDCLM(DUZ(2),"B",+ABM(0),DA)
 K ^ABMDCLM(DUZ(2),"AD",$P(ABM(0),U,2),DA)
 K ^ABMDCLM(DUZ(2),"AS",$P(ABM(0),U,4),DA)
 I $P($G(^ABMDCLM(DUZ(2),DA,5)),U,9)]"" K ^ABMDCLM(DUZ(2),"AINP",$P(^(5),U,9),DA)
 S ABM=0 F  S ABM=$O(^ABMDCLM(DUZ(2),DA,11,ABM)) Q:'ABM  D
 .S ABM(0)=$G(^ABMDCLM(DUZ(2),DA,11,ABM,0)) Q:'ABM(0)
 .K ^ABMDCLM(DUZ(2),"AV",+ABM(0),DA,ABM)
 S ABM=0 F  S ABM=$O(^ABMDCLM(DUZ(2),DA,15,ABM)) Q:'ABM  D
 .S ABM(0)=$G(^ABMDCLM(DUZ(2),DA,15,ABM,0)) Q:'ABM(0)
 .K ^ABMDCLM(DUZ(2),"APC",+ABM(0),DA,ABM)
 K ^ABMDCLM(DUZ(2),DA)
 Q