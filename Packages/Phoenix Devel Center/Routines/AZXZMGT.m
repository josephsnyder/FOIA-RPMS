AZXZMGT ;SUPPORT DATABASE MANAGEMENT REPORTS [ 04/30/92  8:04 AM ]
 ;04/01/92   JOHN H. LYNCH
 ;
 ;A TOOL USED FOR CREATING REPORTS FROM
 ;THE SUPPORT LOG DATABASE ON SERVICE UNITS
 ;UNDER THE PHOENIX AREA INDIAN HEALTH SERVICE.
 
MAIN ;AZXZMGT PROGRAM CONTROL
 ;SET LOCAL VARIABLES
 D ^XBKSET  ;THIS LINE SHOULD BE UNCOMMENTED IF RUNNING IN
            ;PROGRAMMERS' MODE ONLY!
 
 D MAINMENU
 K OPTION
 Q
 
MAINMENU ;MAIN MENU OF OPTIONS
 ;CLEAR SCREEN
 W @IOF
 
 W !!!,?27,"RPMS Support Database"
 W !,?21,"Phoenix Area Indian Health Service"
 W !,?26,"Management Reports Menu"
 W !!!,?21,"Management Time Report.........[1]"
 W !,?21,"For Future Use.................[2]"
 W !,?21,"For Future Use.................[3]"
 W !,?21,"For Future Use.................[4]"
 W !,?21,"Quit...........................[5]"
 W !!,?33,"Option: " R OPTION
 I OPTION'?1N G MAINMENU         ;ILLEGAL OPTION
 I OPTION=1 D ^AZXZMGT1 G MAINMENU  
 I OPTION=2 G MAINMENU
 I OPTION=3 G MAINMENU
 I OPTION=4 G MAINMENU
 I OPTION=5 Q  
 G MAINMENU
 Q
