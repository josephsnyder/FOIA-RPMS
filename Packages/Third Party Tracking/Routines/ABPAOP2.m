ABPAOP2 ;BUILD INSURER MAILING LABEL FILE; [ 06/04/91  1:30 PM ]
 ;;1.4;AO PVT-INS TRACKING;*0*;IHS-OKC/KJR;JULY 25, 1991
 ;CALLED BY A12I+8^ABPAOP1 DURING RECORD POSTING FUNCTION
A0 G ABORT
 ;
A1 I $D(ABPAMLBL("DFN"))'=1 D
 .K DIC,DIE,DA,DR S DIC="^ABPAMLBL(",DIC(0)="LZ"
 .S X=DT D ^DIC S ABPAMLBL("DFN")=+Y
 .S ^ABPAMLBL(ABPAMLBL("DFN"),"L",0)="^9002270.51PA^^0"
 ;
A2 I $D(^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,0))'=1 D
 .S ^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,0)=LOCCD
 .S ^ABPAMLBL(ABPAMLBL("DFN"),"L","B",LOCCD,LOCCD)=""
 .S $P(^ABPAMLBL(ABPAMLBL("DFN"),"L",0),"^",3)=LOCCD
 .S $P(^ABPAMLBL(ABPAMLBL("DFN"),"L",0),"^",4)=$P(^ABPAMLBL(ABPAMLBL("DFN"),"L",0),"^",4)+1
 .S ^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,"I",0)="^9002270.511PA^^0"
 ;
A3 S ABPAMLBL("NAME")=$P(^AUTNINS(INSDFN,0),"^")
 I $D(^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,"I",INSDFN,0))=0 D  Q
 .S ^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,"I",INSDFN,0)=INSDFN_"^"_ABPAMLBL("NAME")
 .S ^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,"I","AC",ABPAMLBL("NAME"),INSDFN)=""
 .S ^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,"I","B",INSDFN,INSDFN)=""
 .S $P(^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,"I",0),"^",3)=INSDFN
 .S $P(^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,"I",0),"^",4)=$P(^ABPAMLBL(ABPAMLBL("DFN"),"L",LOCCD,"I",0),"^",4)+1
 Q
 ;
ABORT W !!,"ACCESS DENIED!!!" Q
