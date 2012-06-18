ACHSCONV ; IHS/ITSC/PMF -CHS CONVERT CHS DENIAL DATA FROM OLD TO NEW STRUCTURE ;     [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 S $ZT="ERROR"
 S %H=$H D YX^%DTC S NOW=Y
 S ^ACHSINST(ACHSVERS,$ZN,"ENTERED")=NOW
 ;
 I '$G(CVERSION) S ^ACHSINST(ACHSVERS,$ZN,"CONVERSION NOT DONE, FIRST TIME INSTALL")=NOW Q
 ;
 I +CVERSION>3 W !!,"THE CONVERSION OF 'CHS DENIAL DATA' FILE TO THE NEW DATA",!,"STRUCTURE HAS ALREADY BEEN PERFORMED!",!,"CONVERSION PROCESS WILL BE BYPASSED!" S ^ACHSINST(ACHSVERS,$ZN,"CONVERSION DID NOT TAKE PLACE")=NOW Q
 ;
 ;
 D COPYG   ;COPY EXISTING GLOBAL TO BACKUP GLOBAL
 ;
 D CONV    ;CONVERT EXISTING DATA TO NEW DATA STRUCTURE
 ;
 S %H=$H D YX^%DTC S NOW=Y
 S ^ACHSINST(ACHSVERS,$ZN,"FINISHED")=NOW
 S ^ACHSINST(ACHSVERS,"CHS INSTALL","STATUS")="INSTALL FINISHED "_NOW
 Q
 ;
COPYG ;
 ;COPY ACHSDEN TO ACHSDEN1
 S %H=$H D YX^%DTC S NOW=Y
 S ^ACHSINST(ACHSVERS,"COPYG^"_$ZN,"ENTERED")=NOW
 ;
 M ^ACHSDEN1=^ACHSDEN
 ;
 S %H=$H D YX^%DTC S NOW=Y
 S ^ACHSINST(ACHSVERS,"COPYG^"_$ZN,"FINISHED")=NOW
 Q
 ;
CONV ;CONVERT FROM OLD DATA STRUCTURE TO NEW
 ;
 I '$D(^ACHSINST(ACHSVERS,"COPYG^"_$ZN,"FINISHED")) D  Q
 . W !!,"CONVERSION OF OLD DATA STRUCTURE ATTEMPTED WITHOUT OLD STRUCTURE BEING FINISHED!!"
 . S ^ACHSINST(ACHSVERS,"ERROR",$ZN,"GLOBAL COPY OF ACHSDEN DID NOT FINISH")=NOW
 . S ERROR=1,XPDABORT=1 D START^ACHSPOSM(ERROR)
 . Q
 ;
 I '$D(^ACHSDEN1) W !!,"COPY OF OLD DATA STRUCTURE NOT FOUND!!" S ^ACHSINST(ACHSVERS,"ERROR",$ZN,"ACHSDEN1 NOT FOUND")=NOW S ERROR=1,XPDABORT=1 D START^ACHSPOSM(ERROR) Q
 ;
 ;OKAY WE GOT A COPY OF THE OLD DATA LETS GO AHEAD
 ;
 ;ALLOW KILL OF ACHSDEN;TURN OFF 'NOKILL' GLOBAL CHARACTERISTIC
 D CALL^%GCH("D","ACHSDEN","N")
 ; 
 ;IF QF NOT = 0 PROBLEM;USUALLY DEVICE 63 WAS BUSY
 I QF W !!,"PROBLEM TURNING OFF 'NOKILL' GLOBAL CHARACTERISTIC FOR ACHSDEN" S ^ACHSINST(ACHSVERS,"ERROR",$ZN,"PROBLEM TURNING OFF 'NOKILL' GLOBAL CHARACTERISTIC FOR ACHSDEN")=NOW S ERROR=1,XPDABORT=1 D START^ACHSPOSM(ERROR) Q
 ;
 ;kill the old data.  SAC does not allow for a total global kill
 S ^ACHSDEN="" F  S ^ACHSDEN=$O(^ACHSDEN(^ACHSDEN)) Q:^ACHSDEN=""  K ^ACHSDEN(^ACHSDEN)
 ;
 K ^ACHSINST("INSURER FILE")   ;RESET INSURER SEARCH
 W !!,LINE
 S %H=$H D YX^%DTC S NOW=Y
 S ^ACHSINST(ACHSVERS,"CONV^"_$ZN,"ENTERED")=NOW
 ;
REDO S NUMENTRY=0
 S STOP=0
 S CM=","
 ;
 S NODE="^ACHSDEN1"
 F  S NODE=$Q(@NODE) Q:NODE=""!(STOP)  D
 .;
 .;SKIP X-REFS WE DO NOT NEED TO CONVERT THESE.
 .S FIRSTSUB=$P($P(NODE,CM),"(",2)
 .I FIRSTSUB?1""""1A.E1"""" S STOP=1 Q
 .;
 .;check for alpha subscripts, indicating a cross reference
 .;do not process these
 .S FOUND=0 F XXI=3:1:99 S XXS=$P($P(NODE,"(",2),CM,XXI) Q:XXS=""  I XXS?1""""1A.E1"""" S FOUND=1 Q
 .K XXI,XXS I FOUND Q
 .K FOUND
 .;
 .;
 .;CHECK FOR NEW DATA STRUCTURE MIXED WITH OLD AND SKIP
 .I NODE[("""D""") D ASIS Q                  ;COPY AS IS
 .I NODE[(",0)"),$L(NODE,",")=2 D REC0 Q
 .I NODE[(",10)") D REC10 Q
 .I NODE[(",100)") D REC100 Q
 .I NODE[(",200,") D REC200 Q
 .I NODE[(",210,") D REC210 Q
 .I NODE[(",290)") D REC290 Q
 .I NODE[(",300,") D REC300 Q
 .I NODE[(",400)") D REC400 Q
 .I NODE[(",500,") D REC500 Q
 .I NODE[(",600,") D REC600 Q
 .I NODE[(",650)") D REC650 Q
 .I NODE[(",700,") D REC700 Q
 ;
 S ^ACHSDEN(0)="CHS DENIAL DATA^9002071I"_U_$S($G(ISSUEFAC)="":0,1:ISSUEFAC)_U_$S($G(NUMENTRY)="":0,1:NUMENTRY)
 ;
 ;DO COUNTS OF FACILITIES AND ITEMS WITHIN FACILITY
 S FAC=0 F CNT=1:1 S FAC=$O(^ACHSDEN(FAC)) Q:+FAC=0  D
 .;S ^ACHSDEN(0)="CHS DENIAL DATA"_U_"9002071I"_U_FAC_U_CNT
 .S ITEM=0 F CNT2=1:1 S ITEM=$O(^ACHSDEN(FAC,"D",ITEM)) Q:+ITEM=0  D
 ..S ^ACHSDEN(FAC,"D",0)=U_"9002071.01A"_U_ITEM_U_CNT2
 ;
 W !!
 W LINE
 ;
 D REINDEX
 ;
 S %H=$H D YX^%DTC S NOW=Y
 S ^ACHSINST(ACHSVERS,"CONV^"_$ZN,"FINISHED")=NOW
 ;
 Q
REINDEX ;REINDEX DENIAL DATA FILE
 ;
 S %H=$H D YX^%DTC S NOW=Y
 S ^ACHSINST(ACHSVERS,"REINDEX^"_$ZN,"ENTERED")=NOW
 ;
 W !,"Re-indexing new Denial file..."
 S DIK="^ACHSDEN("
 D IXALL^DIK
 S %H=$H D YX^%DTC S NOW=Y
 W !,"Denial Updates Completed at ",$$FMTE^XLFDT(%)
 ;
 S ^ACHSINST(ACHSVERS,"REINDEX^"_$ZN,"FINISHED")=NOW
 ;
 Q
 ;
 ;COPY AS IS THIS IS THE NEW DATA STRUCTURE
ASIS ;
 S RECORD=$G(@NODE)
 S SUB1=$P(NODE,"(",2,299)
 S ASISNODE="^ACHSDEN("_SUB1
 S @ASISNODE=RECORD
 ;
 Q
 ;GET THE ZERO NODE AND REARRANGE THE PIECES
REC0 ;
 ;
 S NUMENTRY=NUMENTRY+1
 S REC0=$G(@NODE)
 S DENIAL=$P(REC0,U)
 S ISSUEDT=$P(REC0,U,2)
 S SERVDT=$P(REC0,U,3)
 S ISREG=$P(REC0,U,4)
 S PAT=$P(REC0,U,5)
 S ISSUEBY=$P(REC0,U,6)
 S REQDT=$P(REC0,U,7)
 S ISSUEFAC=$P(REC0,U,8)
 ;
 I ISSUEFAC="" D
 .   W !,"ISSUED BY FACILITY FIELD IS NULL!!"
 .   W !,"THE DENIAL #: ",DENIAL," SHOULD BE REVIEWED, FACILITY UNKNOWN!!"
 .   S ISSUEFAC="""UNKNOWN"""
 I DENIAL[("#") D
 .   W !,"DENIAL PLACEHOLDER ",DENIAL," HAS BEEN CONVERTED"
 .   W !,"TO THE NEW FORMAT. YOU MAY WANT TO REVIEW THE ENTRY."
 ;
 ;
 S ENTRYNUM=$P($P(NODE,","),"(",2)
 ;
 ;CHECK FOR EXISTING ENTRIES HERE (THIS SHOULD ONLY HAPPEN IN SITES WITH
 ;THE OLD STRUCTURE MIXED WITH THE NEW)
 I $D(^ACHSDEN(ISSUEFAC,"D",ENTRYNUM)) W !,"ENTRY "_ENTRYNUM_" ALREADY EXISTS FOR THIS "_ISSUEFAC_"!" S ENTRYNUM=$O(^ACHSDEN(ISSUEFAC,"D","A"),-1)+1
 ;
 S NEWNODE="^ACHSDEN("_ISSUEFAC
 S @(NEWNODE_",0)")=ISSUEFAC
 S NODE0=NEWNODE_",""D"","_ENTRYNUM_",0)"
 S @NODE0=DENIAL_U_ISSUEDT_U_ISSUEBY_U_SERVDT_U_REQDT_U_ISREG_U_PAT
 ;
 Q
REC10 ;EP 
 S REC10=$G(@NODE)     ;NO CHANGE IN PIECES
 S NODE10=NEWNODE_",""D"","_ENTRYNUM_",10)"
 S @NODE10=REC10
 Q
REC100 ;EP
 S REC100=$G(@NODE)   ;NO CHANGE IN PIECES
 S NODE100=NEWNODE_",""D"","_ENTRYNUM_",100)"
 S @NODE100=REC100
 Q
REC200 ;EP
 S REC200=$G(@NODE)
 I $P(REC200,U,2)="9002071.01PA" S $P(REC200,U,2)="9002071.02PA"
 S NODE200=NEWNODE_",""D"","_ENTRYNUM_",200"_$S(ENTRYNUM=200:$P(NODE,"200,200",2,99),1:$P(NODE,",200",2,99))
 S @NODE200=REC200
 Q
REC210 ;EP
 S REC210=$G(@NODE)   ;NO CHANGE IN PIECES
 I $P(REC210,U,2)="9002071.05A" S $P(REC210,U,2)="9002071.03A"
 S NODE210=NEWNODE_",""D"","_ENTRYNUM_",210"_$S(ENTRYNUM=210:$P(NODE,"210,210",2,99),1:$P(NODE,",210",2,99))
 S @NODE210=REC210
 Q
REC290 ;EP
 ;B
 S REC290=$G(@NODE)   ;CHANGE TO NODE 250 SAME PIECE
 S NODE250=NEWNODE_",""D"","_ENTRYNUM_",250)"
 S @NODE250=REC290
 Q
REC300 ;EP
 ;B
 S REC300=$G(@NODE)     ;NO CHANGE IN PIECES
 I $P(REC300,U,2)="9002071.02PA" S $P(REC300,U,2)="9002071.04PA"
 S NODE300=NEWNODE_",""D"","_ENTRYNUM_",300"_$S(ENTRYNUM=300:$P(NODE,"300,300",2,99),1:$P(NODE,",300",2,99))
 S @NODE300=REC300
 Q
REC400 ;EP
 S REC400=$G(@NODE)     ;PIECES CHANGE
 S DEFSER=$P(REC400,U)
 S PRICAT=$P(REC400,U,4)
 S MPRICAT=""
 S:PRICAT'="" MPRICAT=$O(^ACHSMPRI("B",PRICAT,MPRICAT))
 S APPEAL=$P(REC400,U,5)
 S NREC400=DEFSER_U_MPRICAT_U_APPEAL
 S NODE400=NEWNODE_",""D"","_ENTRYNUM_",400)"
 S @NODE400=NREC400
 Q
REC500 ;EP
 S REC500=$G(@NODE)
 I $P(REC500,U,2)="9002071.03PA" S $P(REC500,U,2)="9002071.05PA"
 S NODE500=NEWNODE_",""D"","_ENTRYNUM_",500"_$S(ENTRYNUM=500:$P(NODE,"500,500",2,99),1:$P(NODE,",500",2,99))
 S @NODE500=REC500
 Q
REC600 ;EP
 S REC600=$G(@NODE)
 I $P(REC600,U,2)="9002071.04PA" S $P(REC600,U,2)="9002071.06PA"
 S NODE600=NEWNODE_",""D"","_ENTRYNUM_",600"_$S(ENTRYNUM=600:$P(NODE,"600,600",2,99),1:$P(NODE,",600",2,99))
 S @NODE600=REC600
 Q
REC650 ;EP
 S REC650=$G(@NODE)
 S NODE500=NEWNODE_",""D"","_ENTRYNUM_",500,1,0)"
 I $D(@NODE500) D
 .S COM500=NEWNODE_",""D"","_ENTRYNUM_",500,1,1,0)"
 .S COM500C=NEWNODE_",""D"","_ENTRYNUM_",500,1,1,1,0)"
 .S @COM500=U_"9002071.53^1^1"
 .S @COM500C=REC650
 S NODE600=NEWNODE_",""D"","_ENTRYNUM_",600,1,0)"
 I $D(@NODE600) D
 .S COM600=NEWNODE_",""D"","_ENTRYNUM_",600,1,1,0)"
 .S COM600C=NEWNODE_",""D"","_ENTRYNUM_",600,1,1,1,0)"
 .S @COM600=U_"9002071.63^1^1"
 .S @COM600C=REC650
 ;B
 Q
REC700 ;EP
 S REC700=$G(@NODE)     ;CHANGE FROM 700 TO 800 FIELD GROUP
 I $P(REC700,U,2)="9002071.06A" S $P(REC700,U,2)="9002071.08PA"
 S NODE800=NEWNODE_",""D"","_ENTRYNUM_",800"_$S(ENTRYNUM=700:$P(NODE,"700,700",2,99),1:$P(NODE,",700",2,99))
 S @NODE800=REC700
 ;OLD PIECE ONE IS A FREE TEXT ENTRY AND MUST BE CHANGED TO A POINTER
 S OLDFREE=$P(@NODE800,U)
 I $L(OLDFREE)<5 Q
 D FINDINS(OLDFREE)     ;FIND POSSIBLE INSURER USING OLD FREE TEXT ENTRY
 ;S OLDFREE="2131"  ;***TPF TESTING
 Q
 ;FIND POSSIBLE INSURER IN FILE INSURER^9999999.18
FINDINS(FREETEXT) ;
 S NAME=""
 F  S NAME=$O(^AUTNINS("B",NAME)) Q:NAME=""  D
 .S INSPTR=$O(^AUTNINS("B",NAME,""))
 .S:NAME[FREETEXT ^ACHSINST(ACHSVERS,"OTHER INSURER ENTRY FOR ","DOCUMENT  "_DENIAL,"AND CONTAINS",NAME)=FREETEXT_U_"POSSIBLE POINTER VALUE="_INSPTR
 .S:NAME=FREETEXT ^ACHSINST(ACHSVERS,"OTHER INSURER ENTRY FOR ","DOCUMENT  "_DENIAL,"AND EQUALS",NAME)=FREETEXT_U_"POSSIBLE POINTER VALUE="_INSPTR
 Q
 ;
ERROR S ^ACHSINST(ACHSVERS,"ERROR",$ZN,"ERROR TRAP CALLED")=NOW
 S XPDABORT=1
 G ^%ET
 Q
 ;
