SRSTCH ;B'HAM ISC/SJA - SCHEDULE REQUESTED CASES ; [ 04/18/03  4:51 PM ]
 ;;3.0; Surgery ;**114**;24 Jun 93
 I '$G(SRTN) Q
 N SRFL,SRFLD,SRM,SRP,SRT,SRTNO,SRTNC,SRX,SRY,SRZ,Y
 S SRFL=0,SRTNO=SRTN W @IOF D CASE
 I $D(^SRF(SRTN,"CON")),$P(^("CON"),"^")'="" S (SRTN,SRTNC)=$G(^SRF(SRTN,"CON")) D CASE S SRTN=SRTNO
 I 'SRFL Q
 W ! K DIR S DIR("A")="OK to delete",DIR("B")="NO",DIR(0)="Y" D ^DIR K DIR,SRX
 I $D(DTOUT)!$D(DUOUT)!('Y) S SRSOUT=1 Q
DEL W !,"Deleting information..." H 2
 F SRM=.21,.22,.23,.24,.205,.232 K SRY S SRY(130,SRTN_",",SRM)="@" D FILE^DIE("","SRY")
 I $G(SRTNC) F SRM=.21,.22,.23,.24,.205,.232 K SRY S SRY(130,SRTNC_",",SRM)="@" D FILE^DIE("","SRY")
 Q
CASE ; display list of entered items
 K SRX,SRY
 S DIC="^SRF(",DA=SRTN,DIQ="SRY",DIQ(0)="I",DR=".21;.22;.23;.24;.205;.232" D EN^DIQ1 K DA,DIC,DIQ,DR
 S SRZ=0 F  S SRZ=$O(SRY(130,SRTN,SRZ)) Q:'SRZ  I SRY(130,SRTN,SRZ,"I")'="" D TR S SRT=$T(@SRP),SRFLD=$P(SRT,";;",2),SRX(SRZ)=$P(SRFLD,"^",2)
 Q:'$D(SRX)
 W !!,"The following information for case #"_SRTN_" and must be removed before continuing:",!
 F SRZ=.21,.22,.23,.24,.205,.232 I $G(SRX(SRZ))'="" S SRFL=1 W !,?5,SRX(SRZ)
 Q
TR S SRP=SRZ,SRP=$TR(SRP,"1234567890.,","ABCDEFGHIJPK")
 Q
PBA ;;.21^ANES CARE START TIME
PBB ;;.22^TIME OPERATION BEGAN
PBC ;;.23^TIME OPERATION ENDS
PBD ;;.24^ANES CARE END TIME
PBJE ;;.205^TIME PAT IN OR
PBCB ;;.232^TIME PAT OUT OR
