ADEMNG6 ; IHS/HQT/MJL  - DENTAL FOLLOWUP MGT PT 4 ;06:52 PM  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
 I 'Y G END
ZTM ;------->CREATE ENTRY IN ADEFOL
 I ADENEWM D NEWVS
 ;------->STUFF FIELDS
 K %DT,DIE,DA,DR D STUFA
END K DIC,ADEMDFN,ADEMDAT,ADEMPROD,ADEPRI,DIE,DA
 Q
 ;
NEWVS S DIC="^ADEFOL(",DIC(0)="LZ",X=ADEPAT,DIC("DR")="1///`"_ADESUB
 K DD,DO D FILE^DICN S ADEMDFN=$P(Y,U)
 Q
STUFA S DA=ADEMDFN,DR="2///"_ADEMDAT_";6///`"_ADEPROD_";4///"_ADEPRI_";3///"_ADEMACT,DIE="^ADEFOL("
 D ^DIE
 ;NOTE - HAD TO INSERT 'K %DT' IN THE INPUT XFORM OF FIELD 2 FOR THE
 ;ABOVE CALL TO DIE TO WORK!
