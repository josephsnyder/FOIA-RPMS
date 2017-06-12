AVA93INS ;IHS//RNB - AVA 93.2 INSTITUTION UPDATE ; 20 JULY 2010 2:45 PM
 ;;93.2;VA SUPPORT FILES;**20**;JULY 20, 2010;Build 8
 ;
 ; Read through the INSTITUTION table looking to see if the station number
 ; field is valued, if so then report the Institution:
 ;      EIN code (subscript)
 ;      Name (Piece 1 of the 0 node)
 ;      value of station number (Piece 1 of the 99 node)
 ;
 ; AVASITE  - EIN for AUTTSITE reference
 ; AVASITDT - Data string of AUTTSITE(EIN,0)
 ; AVALOCPT - Location EIN for AUTTLOC
 ; AVALOCDT - Data string of AUTTLOC(EIN,0)
 ; AVAINTPT - EIN for DIC(4, INSTITUTION table
 ; AVALASU  - ASUFAC number from the AUTTLOC data
 ; AVAINTDT - Data string from the DIC(4,EIN,0) node
 ; AVAINT99 - Data string from the DIC(4,EIN,99) node
 ; AVAINTNM - Institution name field
 ; AVASTAT  - Station number from DIC(4
 ; STATION  - Station number to be assigned to the Institution
 ; QQ       - Quit flag
 ; 
 Q
 ;
PRE ;
 ; Check if site's Institution has the station field valued or not and if valued
 ; that it is the correctly assigned one
 ;
 N AVASITE,AVASITDT,AVALOCPT,AVALOCDT,AVAINTPT,AVALASU,AVAINTDT,AVAINT99,AVAINTNM
 N AVASTAT,STATION,QQ
 S U="^",QQ=0
 I '$G(DUZ) W !,"DUZ UNDEFINED OR 0." D SORRY(2) Q
 I '$L($G(DUZ(0))) W !,"DUZ(0) UNDEFINED OR NULL." D SORRY(2) Q
 S X=$P(^VA(200,DUZ,0),U)
 W !!,$$CJ^XLFSTR("Hello, "_$P(X,",",2)_" "_$P(X,","),IOM),!
 ;
 S %="STARTING PRE-PROCESS CHECKING" D MES^XPDUTL(%) W !
 S %="CHECKING IF AUTTSITE's INSTITUTION HAS A STATION CODE ALREADY SET" D MES^XPDUTL(%) W !
 ;
 S AVASITE=0 F  S AVASITE=$O(^AUTTSITE(AVASITE)) Q:(AVASITE'?1N.N)  D CHK1
 ;
 S %="CHECKING IF ASUFAC HAS MULTIPLE LOCATION ASSOCIATED WITH IT" D MES^XPDUTL(%) W !
 S %="RE-BUILDING 'C' INDEX FOR AUTTLOC" D MES^XPDUTL(%) W !
 ;
 ;Redo "C" index (index by ASUFAC Number)
 D ^XBFMK
 K ^AUTTLOC("C")
 S DIK="^AUTTLOC("
 S DIK(1)=".12^C"
 D ENALL^DIK
 ;
 S AVALASU=0 F  S AVALASU=$O(^AUTTLOC("C",AVALASU)) Q:AVALASU=""  D CHK2
 S ^XSTNUM(0)=QQ
 I QQ D  
 . S %="MUST CORRECT ANY OF THE INFORMATION DISPLAYED IN THIS PRE CHECK" D MES^XPDUTL(%)
 . S %="CALL HELP-DESK FOR ASSISTANCE IF NEEDED" D MES^XPDUTL(%) H 4
 . Q
 I 'QQ D  
 . W ! S %="NO ISSUES FOUND!" D MES^XPDUTL(%)  W !
 . S %="PROCEED WITH LOADING STATION NUMBERS" D MES^XPDUTL(%)
 . Q
 Q
CHK1 ;
 ;
 S AVASITDT=$G(^AUTTSITE(AVASITE,0))
 S AVALOCPT=$P(AVASITDT,U,1)
 I AVALOCPT="" S %="MESSAGE" D MES^XPDUTL(%) Q
 S AVALOCDT=$G(^AUTTLOC(AVALOCPT,0))
 S AVAINTPT=$P(AVALOCDT,U,1),AVALASU=$P(AVALOCDT,U,10)
 I AVAINTPT="" S %="MESSAGE 2" D MES^XPDUTL(%) Q
 I AVALASU="" S %="MESSAGE 2" D MES^XPDUTL(%) Q
 S AVAINTDT=$G(^DIC(4,AVAINTPT,0))
 S AVAINT99=$G(^DIC(4,AVAINTPT,99))
 S AVAINTNM=$P(AVAINTDT,U,1)
 S AVASTAT=$P(AVAINT99,U,1)
 I AVASTAT'="" D  
 . W !,"INSTITUTION NAME: ",AVAINTNM
 . W !,"INSTITUTION CODE: ",AVAINTPT
 . W !,?5,"STATION NUMBER: ",AVASTAT
 . S STATION=$O(^XSTNUM("D",AVALASU_" ",""))
 . I AVASTAT'=STATION W !,?5,"STATION NUMBER SHOULD BE: ",STATION
 . I AVASTAT=STATION W !,?5,"STATION NUMBER IS ALREADY ASSIGNED CORRECTLY!",! Q
 . S QQ=1
 . Q
 Q
CHK2 ;
 ;
 K EXTRASU
 S AVALC="",AVACNT=0
 F  S AVALC=$O(^AUTTLOC("C",AVALASU,AVALC)) Q:AVALC=""  D  
 . S AVALOCDT=$G(^AUTTLOC(AVALC,0))
 . S AVALCNM=$P(AVALOCDT,U,2),AVAINTPT=$P(AVALOCDT,U,1),AVAINACT=$P(AVALOCDT,U,21)
 . S AVAINTDT=$G(^DIC(4,AVAINTPT,0))
 . S AVAINTNM=$P(AVAINTDT,U,1)
 . I '$D(^DIC(4,AVAINTPT)) Q
 . I AVAINACT'="" Q
 . S EXTRASU(AVALC)=""
 . S AVACNT=AVACNT+1
 . Q
 I AVACNT=1 K EXTRASU
 I $D(EXTRASU) D  
 . W !,"THERE ARE MULTIPLE LOCATION ASSOCIATED WITH THE ASUFAC: ",AVALASU
 . S QQ=1
 Q
 ;
 ; <<<<<<<  AFTER PRE CHECK  >>>>>>
 ;
PROCS ;
 ; Set institution station number field
 ; STNM     - station number assigned/to be assigned
 ; AVALOCPT - EIN for AUTTLOC, location table
 ; AVALOCDT - Data string from AUTTLOC(EIN,0)
 ; AVAINTPT - EIN for DIC(4, Institution table
 ; AVALASU  - ASUFAC number key for "C" index read of AUTTLOC("C"
 ; AVAINTDT - Data string from DIC(4,EIN,0)
 ; AVAINTNM - Institution name
 ; EXTRASU  - Extra location reference for a single ASUFAC number flag/array
 ; AVALC    - Location index for array EXTRASU
 ; AVACNT   - Count variable for number of extra locations per ASUFAC numbers
 ; AVALOCAF - ASUFAC (ASUFAC) reference from the 
 ; STATION  - Station number to be assigned
 ; QQ       - Quit flag
 ; 
 I $G(^XSTNUM(0))=1 D  Q
 . S %="MUST CORRECT ANY OF THE INFORMATION DISPLAYED IN THIS PRE CHECK REPORT" D MES^XPDUTL(%)
 . S %="CALL HELP-DESK FOR ASSISTANCE IF NEEDED" D MES^XPDUTL(%)
 . Q
 N AVALOCPT,AVALOCDT,AVAINTPT,AVALASU,AVAINTDT,AVAINTNM,EXTRASU,AVALC,AVACNT,AVALOCAF,STATION,QQ,NN
 W !!,?5,"Institution Name",?45,"ASUFAC #",?54,"STATION NUMBER",!
 F NN=1:1:80 W "_"
 W !
 S U="^",QQ=0
 S AVALASU=0 F  S AVALASU=$O(^AUTTLOC("C",AVALASU)) Q:AVALASU=""  D PRC1
 ;
 ;Redo "D" index (index by station number)
 W !
 K ^DIC(4,"D")
 S DIK="^DIC(4,"
 S DIK(1)="99^D"
 D ENALL^DIK
 Q
PRC1 ;
 ;
 K EXTRASU
 S AVALC="",AVACNT=0
 F  S AVALC=$O(^AUTTLOC("C",AVALASU,AVALC)) Q:AVALC=""  D  
 . S AVALOCDT=$G(^AUTTLOC(AVALC,0))
 . S AVALCNM=$P(AVALOCDT,U,2),AVAINTPT=$P(AVALOCDT,U,1),AVAINACT=$P(AVALOCDT,U,21)
 . I '$D(^DIC(4,AVAINTPT)) Q
 . I AVAINACT'="" Q
 . S EXTRASU(AVALC)=""
 . S AVACNT=AVACNT+1
 . Q
 I AVACNT>1 S %="MULTIPLE LOCATION ASSOCIATED WITH ASUFAC #: "_AVALASU D MES^XPDUTL(%) Q
 S AVALOCPT="" F  S AVALOCPT=$O(EXTRASU(AVALOCPT)) Q:AVALOCPT=""  D PRC2
 Q
PRC2 ;
 ;
 S AVALOCDT=$G(^AUTTLOC(AVALOCPT,0))
 S AVAINTPT=$P(AVALOCDT,U,1)
 S AVALOCAF=$P(AVALOCDT,U,10)
 I AVALOCAF'=AVALASU S %="ASUFAC NUMBER DOES NOT MATCH WITH INDEX: "_AVALOCAF_" TO "_AVALASU D MES^XPDUTL(%) Q
 S AVAINTDT=$G(^DIC(4,AVAINTPT,0))
 S AVAINTNM=$P(AVAINTDT,U,1)
 I (AVALOCAF="") D  Q
 . S %="ASUFAC IS NULL FOR LOCATION: "_AVAINTPT_" - "_AVALOCAF D MES^XPDUTL(%)
 . Q
 I $D(^XSTNUM("D",AVALASU_" "))=0 D  Q
 . ;S %="ASUFAC "_AVALASU_" DOES NOT EXIST IN STATION NUMBER TEMP GLOBAL" D MES^XPDUTL(%)
 . Q
 S STATION=$O(^XSTNUM("D",AVALASU_" ",""))
 W !,?5,AVAINTNM,?46,AVALASU,?60,STATION
 S DA=AVAINTPT
 S DR="99////"_STATION
 S DIE="^DIC(4,"
 S AUMDA=DA
 D ^DIE
 Q
SORRY(X) ;
 KILL DIFQ
 S XPDQUIT=X
 W:'$D(ZTQUEUED) *7,!,$$CJ^XLFSTR("Sorry....",IOM),$$DIR^XBDIR("E","Press RETURN")
 Q
