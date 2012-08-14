VAFCHIS ;SF/CMC-TESTING CROSS REFERENCE ;11/20/97
 ;;5.3;Registration;**149,255,307**;Aug 13, 1993
 ;
ICN(OLD,ENT) ;
 ;
 I '$D(OLD)!('$D(ENT)) Q
 N NEWICN,DIC,Y
 ;checking that CIRN PD/MPI is installed
 N X S X="MPIF001" X ^%ZOSF("TEST") Q:'$T
 N X S X="MPIFAPI" X ^%ZOSF("TEST") Q:'$T
 N X S X="MPIFMER" X ^%ZOSF("TEST") Q:'$T
 S NEWICN=+$$GETICN^MPIF001(ENT)
 Q:OLD=NEWICN!(OLD="")
 ; ^ UPDATE ICN WITH SAME ICN DON'T PUT IT IN HISTORY OR SEND MERGE MSG
 ;
 S OLDDA=DA,OLDX=OLD
 N DA
 ;
 D NOW^%DTC
 S HAP=%
 S NODE=$$MPINODE^MPIFAPI(ENT)
 S X=OLD
 S DIC="^DPT("_ENT_",""MPIFHIS"",",DIC(0)="L"
 I '$D(^DPT(ENT,"MPIFHIS",0)) S ^DPT(ENT,"MPIFHIS",0)="^2.0992A^0^0"
 S DIC("P")=$P(^DPT(ENT,"MPIFHIS",0),"^",2)
 S DA(1)=ENT
 D ^DIC
 ;
 S $P(^DPT(ENT,"MPIFHIS",+Y,0),"^",2)=$P(NODE,"^",2)
 S $P(^DPT(ENT,"MPIFHIS",+Y,0),"^",3)=$P(NODE,"^",3)
 S $P(^DPT(ENT,"MPIFHIS",+Y,0),"^",4)=HAP
 ;
 S ^DPT("AICN",OLD,ENT)=""
 K NODE,%,HAP
 S X=OLDX,DA=OLDDA
 K OLDX,OLDDA
 ;
 ;Send "Merge" (change) ICN message to all subscribers
 N ERROR,FLG
 S FLG=1
 I $P($$GETICN^MPIF001(DA),"^")'="" D MER^MPIFMER(DA,X,.ERROR,FLG)
 Q
CMOR(OLD,RGDFN) ;ALS 6/23/00
 ; Create CMOR History node
 I '$D(OLD)!('$D(RGDFN)) Q
 N NEWCMOR
 S NEWCMOR=$$GETVCCI^MPIF001(RGDFN)
 Q:OLD=NEWCMOR!(OLD="")
 ;
 D NOW^%DTC
 S CHGDT=%
 S NODE=$$MPINODE^MPIFAPI(RGDFN)
 S X=OLD
 S DIC="^DPT("_RGDFN_",""MPICMOR"",",DIC(0)="L"
 I '$D(^DPT(RGDFN,"MPICMOR",0)) S ^DPT(RGDFN,"MPICMOR",0)="^2.0993A^0^0"
 S DIC("P")=$P(^DPT(RGDFN,"MPICMOR",0),"^",2)
 S DA(1)=RGDFN
 D ^DIC
 ; add CMOR activity score and calculation date to node
 S $P(^DPT(RGDFN,"MPICMOR",+Y,0),"^",2)=$P(NODE,"^",6)
 S $P(^DPT(RGDFN,"MPICMOR",+Y,0),"^",3)=$P(NODE,"^",7)
 S $P(^DPT(RGDFN,"MPICMOR",+Y,0),"^",4)=CHGDT
 ;
 K NODE,%,Y,DIC,CHGDT
 Q