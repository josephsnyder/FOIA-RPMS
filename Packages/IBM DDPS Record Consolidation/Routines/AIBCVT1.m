AIBCVT1 ;IHS/DDPS/DFM-IBM STAT RECORDS NODE PROCESSING [ 09/23/88  11:52 AM ]
 ;1.3; 9/23/88 RESTRUCTURE, ALLOW FOR REGISTRATION ELIGIBILITY FILE
 ;1.0; 3/28/88
PROCESS ;READ FACILITY HEADER RECORD
 S AIBZ=$O(@AIBGBLT) I AIBZ="" G EOJ
 S AIBZZ="",AIBZZ=$O(@AIBGBFT),AIBIN=@AIBGBFT I AIBZZ=0 G FACFOUND
 S AIBMSG="Facility Header Record Missing" G ABEND
FACFOUND ;FACILITY HEADER RECORD FOUND
 S AIBFNR=$P(AIBIN,U,5),AIBFCD=AIBZ,AIBFSQ=AIBFSQ+1 S:$L(AIBFSQ)>4 AIBFSQ=$E(AIBFSQ,2,5)+1
 S Y=$P(AIBIN,U,1) X ^DD("DD") S AIBFBD=Y,Y=$P(AIBIN,U,2) X ^DD("DD") S AIBFED=Y
 S AIBFCT=$P(AIBIN,U,3) D FACHEAD^AIBCVT2
READREC ;PROCESS INITIAL NODE FOR FACILITY
 S AIBCN1=1
READNODE ;PROCESS NEXT NODE
 S AIBZZ=$O(@AIBGBFT) I AIBZZ="" G NEXTFAC
 S AIBIN=@AIBGBFT,AIBNK=$P(AIBIN,U,1),AIBCK=$P(AIBC(AIBCN1),U,1),AIBC=$P(AIBC(AIBCN1),U,3)
 I AIBNK=AIBCK G GOODNODE
 I AIBCN1=AIBC(0) G CKTEMP
 F AIBC(0,0)=AIBCN1+1:1:AIBC(0) I AIBNK=$P(AIBC(AIBC(0,0)),U,1) G NODERR
CKTEMP ;CHECK IF SECONDARY FILE IS BEING CREATED
 I $L(AIBTMP)>0 D WRITET^AIBCVT3 G READREC
 G NODERR
GOODNODE ;PROCESS FIELDS IN NODE
 S AIBER=""
 F AIBI=1:1:AIBC D FIELDS^AIBCVT5 G:$L(AIBER)>0 ERROR
 S:AIBNK'="RG1" AIBCTI=AIBCTI+1
 G:AIBCN1=AIBC(0) EOD S AIBCN1=AIBCN1+1 G READNODE
NODERR ;PROCESS NODE ERROR
 S AIBMSG="Bad node key = "_AIBNK_" should be = "_AIBCK,AIBER="Y"
ERROR ;ERROR PROCESSING ROUTINE
 S AIBCTE=AIBCTE+1 D ERRMSP^AIBCVT6 G:AIBER="A" ABEND
 S AIBMSG=" Reject Node:"_AIBIN D ERRMSP^AIBCVT6 W ! G READREC
EOD ;RECORD COMPLETE
 S AIBCTO=AIBCTO+1
 I AIBRLN>250 G OVERFLOW
 S AIBOT=AIBOT_$J("",AIBRLN-$L(AIBOT))
 I $L(AIBOT)>AIBRLN S AIBOT=$E(AIBOT,1,AIBRLN)
 G WRITE
OVERFLOW ;MORE THAT 250 CHARACTER RECORD - OVERFLOW IN AIBOT(1)
 S AIBOT=AIBOT_$J("",250-$L(AIBOT))
 S AIBOT(1)=AIBOT(1)_$J("",AIBRLN-250-$L(AIBOT(1)))
 I $L(AIBOT(1))+$L(AIBOT)>AIBRLN S AIBOT(1)=$E(AIBOT(1),1,AIBRLN-$L(AIBOT))
WRITE ;PERFORM WRITE ROUTINE
 D ^AIBCVT3 G READREC
NEXTFAC ;WRITE FACILITY FOOTINGS, GO GET NEXT FACILITY
 D FACFOOT^AIBCVT2 G PROCESS
EOJ ;END OF GLOBAL PROCESSING
 S AIBA="E" G RETURN
ABEND ;ABNORMAL END OR PROCESSING
 S AIBA="A" G RETURN
RETURN ;RETURN TO CALLING ROUTINE
 QUIT
