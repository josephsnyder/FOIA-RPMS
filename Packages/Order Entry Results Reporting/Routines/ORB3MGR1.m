ORB3MGR1 ; SLC/AEB - Manager Options - Notifications Parameters ;9/22/97
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**31,74,85,88,105,139,173**;Dec 17, 1997
 ;
 ;Calls to Add/Change/Delete Parameters
 ;
URG ; Notification Urgency - By Entity
 ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set URGENCY Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB URGENCY",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
DEL ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set DELETE MECHANISM Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB DELETE MECHANISM",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
REGR ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set REGULAR (DEFAULT) RECIPIENTS Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB DEFAULT RECIPIENTS",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
REGDEV ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set REGULAR (DEFAULT) RECIPIENT DEVICES Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB DEFAULT RECIPIENT DEVICES",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
TITLR ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set PROVIDER RECIPIENTS Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB PROVIDER RECIPIENTS",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
PFLAG ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set PROCESSING FLAG Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB PROCESSING FLAG",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
ERASE ;
 N ORBT,ORBX,ORBPAR,ORBER,DUOUT,DIRUT
 S ORBT="Erase Notifications"
 S ORBER=0
 Q:$D(DUOUT)!(ORBER="")
 D TITLE(ORBT)
 W !!!,?5,"1.  Erase all notifications for a User "
 W !!,?5,"2.  Erase all notifications for a Patient "
 W !!,?5,"3.  Erase all instances of a notification (regardless of Patient or User) "
 W !!,?5,"4.  Erase specific notifications for a User "
 W !!,?5,"5.  Edit Erase All Notifications parameter for a User ",!!
 K DIR S DIR(0)="NAO^1:5",DIR("A")="Select Erase option:  "
 D ^DIR S ORBER=Y K DIR Q:$D(DIRUT)
 K Y,X,DTOUT,DUOUT,DIRUT
 I (ORBER=1) D RECIPURG^ORB3MGR2
 I (ORBER=2) D PTPURG^ORB3MGR2
 I (ORBER=3) D NOTIPURG^ORB3MGR2
 I (ORBER=4) D USERDEL^ORB3MGR2
 I (ORBER=5) D ERASEALL^ORB3MGR2
 D ERASE
 Q
 ;
FLGOI ;
 N ORBT,ORBOI,DIRUT,DUOUT,Y
 S ORBT="Flag ORDERABLE ITEMS to send Notifications"
 F  D  Q:$D(DUOUT)!(Y="")
 .S Y=0
 .D TITLE(ORBT)
 .W !!,"1.  Flag INPATIENT orders/results/expiring orders."
 .W !,"2.  Flag OUTPATIENT orders/results/expiring orders."
 .W !,"3.  Flag Lab tests for Threshold Exceeded alerts.",!
 .K DIR S DIR(0)="NAO^1:3",DIR("A")="Select ""1"" to flag INPT orders/results, ""2"" to flag OUTPT orders/results, ""3"" to set Lab Thresholds: "
 .D ^DIR S ORBOI=Y K DIR Q:$D(DIRUT)
 .K X,DTOUT,DUOUT,DIRUT
 .I ORBOI=1 D INPTOI
 .I ORBOI=2 D OUTPTOI
 .I ORBOI=3 D LABTHRES^ORB3MGR2
 Q
INPTOI ;
 N ORBT,ORBPAR,ORBOI,DIRUT,DUOUT,PIEN,Y
 S ORBT="Flag INPATIENT orderable items to send Notifications/Alerts"
 F  D  Q:$D(DUOUT)!(Y="")
 .D TITLE(ORBT)
 .W !!,"1.  Flag Inpatient ORDERS."
 .W !,"2.  Flag Inpatient RESULTS."
 .W !,"3.  Flag Inpatient EXPIRING orders.",!
 .S PIEN=0,Y=0
 .K DIR S DIR(0)="NAO^1:3",DIR("A")="Select ""1"" to flag inpt ORDERS, ""2"" to flag inpt RESULTS, ""3"" to flag inpt EXPIRING orders: "
 .D ^DIR S ORBOI=Y K DIR Q:$D(DIRUT)
 .K X,DTOUT,DUOUT,DIRUT
 .I ORBOI=1 D
 ..S PIEN=$O(^XTV(8989.51,"B","ORB OI ORDERED - INPT",PIEN)) Q:PIEN=""
 ..S ORBPAR=PIEN
 .I ORBOI=2 D
 ..S PIEN=$O(^XTV(8989.51,"B","ORB OI RESULTS - INPT",PIEN)) Q:PIEN=""
 ..S ORBPAR=PIEN
 .I ORBOI=3 D
 ..S PIEN=$O(^XTV(8989.51,"B","ORB OI EXPIRING - INPT",PIEN)) Q:PIEN=""
 ..S ORBPAR=PIEN
 .D PROC(ORBPAR)
 Q
 ;
OUTPTOI ;
 N ORBT,ORBPAR,ORBOI,DIRUT,DUOUT,PIEN,Y
 S ORBT="Flag OUTPATIENT orderable items to send Notifications"
 F  D  Q:$D(DUOUT)!(Y="")
 .D TITLE(ORBT)
 .W !!,"1.  Flag Outpatient ORDERS."
 .W !,"2.  Flag Outpatient RESULTS."
 .W !,"3.  Flag Outpatient EXPIRING orders.",!
 .S PIEN=0,Y=0
 .K DIR S DIR(0)="NAO^1:3",DIR("A")="Select ""1"" to flag outpt ORDERS, ""2"" to flag outpt RESULTS, ""3"" to flag outpt EXPIRING orders: "
 .D ^DIR S ORBOI=Y K DIR Q:$D(DIRUT)
 .K X,DTOUT,DUOUT,DIRUT
 .I ORBOI=1 D
 ..S PIEN=$O(^XTV(8989.51,"B","ORB OI ORDERED - OUTPT",PIEN)) Q:PIEN=""
 ..S ORBPAR=PIEN
 .I ORBOI=2 D
 ..S PIEN=$O(^XTV(8989.51,"B","ORB OI RESULTS - OUTPT",PIEN)) Q:PIEN=""
 ..S ORBPAR=PIEN
 .I ORBOI=3 D
 ..S PIEN=$O(^XTV(8989.51,"B","ORB OI EXPIRING - OUTPT",PIEN)) Q:PIEN=""
 ..S ORBPAR=PIEN
 .D PROC(ORBPAR)
 Q
 ;
ARC ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set ARCHIVE PERIOD Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB ARCHIVE PERIOD",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
FSUPER ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set FORWARD SUPERVISOR Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB FORWARD SUPERVISOR",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
FSURR ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set FORWARD SURROGATES Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB FORWARD SURROGATES",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
FREVIEW ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set FORWARD BACKUP REVIEWER Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB FORWARD BACKUP REVIEWER",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
FLGOB ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set FLAGGED ORDERS BULLETIN Parameters for Notifications",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB FLAGGED ORDERS BULLETIN",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
SYSEN ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Enable or Disable Notification System",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB SYSTEM ENABLE/DISABLE",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
UVMED ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set Delay for Unverified Medication Orders",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB UNVERIFIED MED ORDER",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
UNVER ;
 N ORBT,ORBPAR,PIEN
 S ORBT="Set Delay for All Unverified Orders",PIEN=0
 S PIEN=$O(^XTV(8989.51,"B","ORB UNVERIFIED ORDER",PIEN)) Q:PIEN=""
 S ORBPAR=PIEN
 D TITLE(ORBT) D PROC(ORBPAR)
 Q
 ;
TITLE(ORBT)  ;
 ; Center and write title - Parameter to be set
 S IOP=0 D ^%ZIS K IOP W @IOF
 W !,?(80-$L(ORBT)-1/2),ORBT
 Q
 ;
PROC(ORBPAR) ; Process Parameter Settings
 D EDITPAR^XPAREDIT(ORBPAR)
 Q
