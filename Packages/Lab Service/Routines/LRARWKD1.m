LRARWKD1 ; IHS/DIR/AAB - ARCHIVE WKLD DATA (64.1) ;  [ 07/22/2002  1:09 PM ]
 ;;5.2;LR;**1002,1013**;JUL 15, 2002
 ;;5.2;LAB SERVICE;**59**;July 31, 1995
 ;FIND ACTIVE LAB ARCHIVAL ACTIVITY
 S LRART=64.1,LRAR=2,LRARC=0 S LRARC=$O(^LAB(95.11,"O",1,LRART,LRARC)) G:LRARC="" ERROR D FILE^LRARU G:'$D(LRARC) EXIT
 ;UPDATE ACTION IN PROGRESS FIELDS IN LAB ARCHIVAL ACTIVITY FILE
 S LRAR=2 D MRK^LRARU1
 ;CREATE OR REBUILD SORT TEMPLATE CONTAINING ALL INSTITUTIONS
 I $D(^DIBT("B","LR ARCHIVE WKLD DATA 64.1")) S LRANUM=$O(^DIBT("B","LR ARCHIVE WKLD DATA 64.1",0)) K ^DIBT(LRANUM,1)
 E  S DIC="^DIBT(",DIC(0)="L",X="LR ARCHIVE WKLD DATA 64.1",DIC("DR")="2///TODAY;4///64.1" D FILE^DICN S LRANUM=$P(Y,U,1)
 S LRAINST=0
 F LRAI=0:0 S LRAINST=$O(^LRO(64.1,"B",LRAINST)) Q:LRAINST=""  S ^DIBT(LRANUM,1,LRAINST)=""
EXTRACT ;Call to extractor
 ;Message to user archiving data began
 S LRPED=+$P(^LAB(95.11,LRARC,1),U,2),LRPBD=$P(^(1),U)
 W !!?5,"Archiving WKLD DATA file"
 W !?5,"Beginning date: " S Y=LRPBD D DT^DIO2
 W !?5,"Ending date: " S Y=LRPED D DT^DIO2
RDY S DIR(0)="Y",DIR("A")="ARE YOU SURE YOU WANT TO CONTINUE",DIR("B")="NO" D ^DIR K DIR
 I $D(DIRUT)!('Y) D COMP^LRARU1 G EXIT
QUEUE ;QUEUE MOVING OF DATA TO DESTINATION FILE IN BACKGROUND
 S %ZIS="Q",%ZIS("B")="",%ZIS("A")="Start archiving and PRINT error report on device: " D ^%ZIS
 I POP D COMP^LRARU1 G EXIT
 I $D(IO("Q")) S ZTRTN="START^LRARWKD1",ZTSAVE("LR*")="",ZTDESC="ARCHIVE WKLD DATA",ZTIO=IO D ^%ZTLOAD W:$D(ZTSK) !,"TASK #",ZTSK D TASK^LRARU1 G EXIT
START ;ARCHIVING BEGINS
 U IO
 S LRED=LRPED+.99,LRBD=LRPBD-.0001
 S LRIND(64.111)=1
DIAXU S LRSCR(64.11)="I $P(^(0),U)<"_LRED_",$P(^(0),U)>"_LRBD
 D EXTRACT^DIAXU(64.1,"[LR ARCHIVE WKLD DATA 64.1]","[LRAR ARCHIVE WKLD DATA 64.1]","",.LRSCR,.LRIND,"^LAB(95.11,"_LRARC_")","^LAB(95.11,"_LRARC_",""RESULT"")")
LAAF ;UPDATE ENTRY TO LAB ARCHIVAL ACTIVITY FILE
 S LRAR=2 D UPDATE^LRARU1
 ;ARCHIVING ACTION COMPLETED
 D COMP^LRARU1
 S LRARID=LRARC
 D RESULT^LRARREP
EXIT K DIC,DIR,DIRUT,DTOUT,DUOUT,LRAI,LRAINST,LRANUM,LRAR,LRARC,LRART,LRDAT,LRIND,LRPBD,LRPED,LRSCR,X,Y
 D CLN^LRARU1
 Q
ERROR W !!,$C(7),"I cannot find an archival activity for file 64.1 with the correct archival status."
 G EXIT
 Q
