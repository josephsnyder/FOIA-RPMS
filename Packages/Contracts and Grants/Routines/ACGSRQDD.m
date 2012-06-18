ACGSRQDD ;IHS/OIRM/DSD/THL,AEF - CHECK REQUIRED FIELDS FOR DATA; [ 03/27/2000   2:22 PM ]
 ;;2.0t1;CONTRACT INFORMATION SYSTEM;;FEB 16, 2000
 ;;CHECK TO ENSURE THAT ALL REQUIRED FIELDS FOR DATA ARE ENTERED
D ;EP
I ;EP
 S DR="",DA=ACGRDA,DIE="^ACGS("
 F ACG=1,2,4,5,12,16,17,19,20,21 S:$P(^ACGS(ACGRDA,"DT"),U,ACG)="" DR=DR_ACG_"T;"
 F ACG=22,23,25,27,28,29,32,37 S ACGX=ACG-21 S:$P(^ACGS(ACGRDA,"DT1"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=45,51:1:53 S ACGX=ACG-35 S:$P(^ACGS(ACGRDA,"DT2"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=56,57,58,62,63 S ACGX=ACG-55 S:$P(^ACGS(ACGRDA,"DT3"),U,ACGX)="" DR=DR_ACG_"T;"
 D CHK
 Q
C ;EP
M ;EP
R ;EP
 S DR="",DA=ACGRDA,DIE="^ACGS("
 F ACG=12,17,19 S:$P(^ACGS(ACGRDA,"DT"),U,ACG)="" DR=DR_ACG_"T;"
 F ACG=22,27,28 S ACGX=ACG-21 S:$P(^ACGS(ACGRDA,"DT1"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=45,51:1:53 S ACGX=ACG-35 S:$P(^ACGS(ACGRDA,"DT2"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=56,57,58,62,63 S ACGX=ACG-55 S:$P(^ACGS(ACGRDA,"DT3"),U,ACGX)="" DR=DR_ACG_"T;"
 D CHK
 Q
Q ;EP
 S DR="",DA=ACGRDA,DIE="^ACGS("
 F ACG=12,17:1:19,20 S:$P(^ACGS(ACGRDA,"DT"),U,ACG)="" DR=DR_ACG_"T;"
 F ACG=22,27,28 S ACGX=ACG-21 S:$P(^ACGS(ACGRDA,"DT1"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=45,51:1:53 S ACGX=ACG-35 S:$P(^ACGS(ACGRDA,"DT2"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=56:1:58,62,63 S ACGX=ACG-55 S:$P(^ACGS(ACGRDA,"DT3"),U,ACGX)="" DR=DR_ACG_"T;"
 D CHK
 Q
G ;EP
N ;EP
 S DR="",DA=ACGRDA,DIE="^ACGS("
 F ACG=12,17,19,20 S:$P(^ACGS(ACGRDA,"DT"),U,ACG)="" DR=DR_ACG_"T;"
 F ACG=22,27,28 S ACGX=ACG-21 S:$P(^ACGS(ACGRDA,"DT1"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=45,51:1:53 S ACGX=ACG-35 S:$P(^ACGS(ACGRDA,"DT2"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=56:1:58,62 S ACGX=ACG-55 S:$P(^ACGS(ACGRDA,"DT3"),U,ACGX)="" DR=DR_ACG_"T;"
 D CHK
 Q
B ;EP
 S DR="",DA=ACGRDA,DIE="^ACGS("
 F ACG=12,13,17:1:20 S:$P(^ACGS(ACGRDA,"DT"),U,ACG)="" DR=DR_ACG_"T;"
 F ACG=30 S ACGX=ACG-21 S:$P(^ACGS(ACGRDA,"DT1"),U,ACGX)="" DR=DR_ACG_"T;"
 D CHK
 Q
O ;EP
 S DR="",DA=ACGRDA,DIE="^ACGS("
 F ACG=22,27,28 S ACGX=ACG-21 S:$P(^ACGS(ACGRDA,"DT1"),U,ACGX)="" DR=DR_ACG_"T;"
 D CHK
 Q
P ;EP
 S DR="",DA=ACGRDA,DIE="^ACGS("
 F ACG=12,13,15:1:19 S:$P(^ACGS(ACGRDA,"DT"),U,ACG)="" DR=DR_ACG_"T;"
 F ACG=22,27:1:31 S ACGX=ACG-21 S:$P(^ACGS(ACGRDA,"DT1"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=45,51:1:53 S ACGX=ACG-35 S:$P(^ACGS(ACGRDA,"DT2"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=56:1:58,62,63 S ACGX=ACG-55 S:$P(^ACGS(ACGRDA,"DT3"),U,ACGX)="" DR=DR_ACG_"T;"
 D CHK
 Q
T ;EP
U ;EP
 S DR="",DA=ACGRDA,DIE="^ACGS("
 F ACG=17 S:$P(^ACGS(ACGRDA,"DT"),U,ACG)="" DR=DR_ACG_"T;"
 F ACG=45,51:1:53 S ACGX=ACG-35 S:$P(^ACGS(ACGRDA,"DT2"),U,ACGX)="" DR=DR_ACG_"T;"
 F ACG=56,57,62,63 S ACGX=ACG-55 S:$P(^ACGS(ACGRDA,"DT3"),U,ACGX)="" DR=DR_ACG_"T;"
 D CHK
 Q
CHK Q:DR=""
 W !!,*7,*7,"THE FOLLOWING DATA IS REQUIRED FOR ALL PROCUREMENT PURPOSE CODE ACTIONS ",ACG1,!,"COMPLETE ALL THE FOLLOWING BEFORE PROCEEDING.",!!
 S DA=ACGRDA,DIE="^ACGS("
 D ^DIE
 K DA,DIE
 Q
 ;
