ADEMBD ; IHS/HQT/MJL  - DELETE FOLLOWUP GROUPS ;06:46 PM  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
 ;------->GET TEMPLATE
 D TEM G:Y<1 END
 ;------->CONFIRM
 D CONF G:%'=1 END
 ;------->ROLL THRU TEMPLATE AND CALL DEL^ADEMDEL
 D ROLL
 ;------->END
END K ADEMDFN,ADEPAT,ADEQ,ADESUB,ADETMD Q
TEM K DIC S DIC="^DIBT(",DIC(0)="AEQMZ",DIC("S")="I $P(^(0),U,4)=9002003.2,$P(^(0),U,5)=DUZ,$D(^(""DIS""))" D ^DIC K DIC Q:Y<1
 S ADETMD=+Y
 Q
ROLL S ADEMDFN=0 F ADEQ=0:0 S ADEMDFN=$O(^DIBT(ADETMD,1,ADEMDFN)) Q:'+ADEMDFN  D R2
 Q
R2 I '$D(^ADEFOL(ADEMDFN)) W !,"#",ADEMDFN," Not Found on Followup List..." Q
 S ADEPAT=$P(^ADEFOL(ADEMDFN,0),U)
 S ADESUB=$P(^ADEFOL(ADEMDFN,0),U,2)
 D DEL^ADEMDEL
 W !,$P(^DPT(ADEPAT,0),U),"   --DELETED"
 Q
CONF W !!,"Are you SURE you want to delete all the entries in the Dental Followup File",!,"which were stored in the ",$P(^DIBT(ADETMD,0),U)," Sort Template" S %=2 D YN^DICN Q
