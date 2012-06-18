ATSERCHE ;TUCSON/DG;CALL FROM ATSERCH TO CHECK POINTER FIELDS  [ 10/25/91  1:22 PM ]
 ;;2.5;SEARCH TEMPLATE COMPARISON;;OCT 25, 1991
 ;
CHKPTRS ;MAKES SURE THE FILE POINTED TO ARE THE SAME FOR EACH FIELD
 ;I ATSEARCH(1,"SRCHRESLTREF")=ATSEARCH(2,"SRCHRESLTREF"),ATSEARCH(1,"FIELD")=.01 W !!,*7,"You can only choose a field other than the .01 field from this file.",!,"This field must point to a different file." Q
 ;PREVIOUS LINE REMOVED TO ALLOW THE DENTAL SYSTEM VERSION 5 TO COMPARE A TEMPLATE FROM ITS DENTAL PROCEDURE FILE TO ITSELF SINCE ITS .01 FIELD ENTRIES ARE NOT UNIQUE
 I ATSEARCH(1,"SRCHFILENUM")=ATSEARCH(2,"SRCHFILENUM"),ATSEARCH(2,"SRCHFILENUM")=ATSEARCH(1,"PTRFILENUM"),ATSEARCH(1,"SRCHFILENUM")=ATSEARCH(2,"PTRFILENUM") D CONT S ATSTOP="" Q
 ;LINE ABOVE DETERMINES THAT FILE WITH BOTH TEMPLATES HAS A .01 FIELD THAT IS NOT A POINTER, IT SETS ATSEARCH(1&2,"PTEDTOFILE")=0 SINCE BOTH TEMPLATES ARE LINKED TO A FILE WHOSE .01 FIELD DOESN'T
 ;POINT ANYWHERE (ACTS AS A POINTED TO FILE -  SEE GET3^ATSERCH4 WHICH IS CALLED FROM GET+2^ATSERCH4
 I ATSEARCH(2,"SRCHFILENUM")=ATSEARCH(1,"PTRFILENUM"),ATSEARCH(2,"FIELD")=".01" S ATSEARCH(2,"PTEDTOFILE")=0,ATSEARCH("PTRFILENUM")=ATSEARCH(2,"SRCHFILENUM"),ATSEARCH("PTRFILENAM")=$P(^DIC(ATSEARCH("PTRFILENUM"),0),U) S ATSTOP="" Q
 I ATSEARCH(1,"SRCHFILENUM")=ATSEARCH(2,"PTRFILENUM"),ATSEARCH(1,"FIELD")=".01" S ATSEARCH(1,"PTEDTOFILE")=0,ATSEARCH("PTRFILENUM")=ATSEARCH(1,"SRCHFILENUM"),ATSEARCH("PTRFILENAM")=$P(^DIC(ATSEARCH("PTRFILENUM"),0),U) S ATSTOP="" Q
 I ATSEARCH(1,"PTRFILENUM")'=ATSEARCH(2,"PTRFILENUM") D DINUM Q:$D(ATSTOP)
 I ATSEARCH(1,"PTRFILENUM")'=ATSEARCH(2,"PTRFILENUM") W !!,*7,"Fields do not point to the same file or one of the files is not the pointed",!,"to file!" Q
 E  S ATSTOP="",ATSEARCH("PTRFILENAM")=$P(^DIC(ATSEARCH(1,"PTRFILENUM"),0),U)
 Q
 ;
CONT ;CONTINUATION OF LINE CHKPTRS+2
 S (ATSEARCH(1,"PTEDTOFILE"),ATSEARCH(2,"PTEDTOFILE"))=0,ATSEARCH("PTRFILENUM")=ATSEARCH(1,"SRCHFILENUM")
 S ATSEARCH("PTRFILENAM")=$P(^DIC(ATSEARCH("PTRFILENUM"),0),U) S ATSTOP=""
 S ATSNPT=""
 Q
 ;
DINUM ;CHECKS IF ONE PTRFILE PTS TO THE OTHER, IF IT DOES IS IT DINUM TO THAT FILE
 S ATSPTR1=^DD(ATSEARCH(1,"PTRFILENUM"),.01,0),ATSPTR2=^DD(ATSEARCH(2,"PTRFILENUM"),.01,0)
 I $P(ATSPTR1,U,2)["P" S ATS1=$P(ATSPTR1,U,2) F ATSI=1:1:99 Q:$A($E(ATS1,ATSI))'>57&($A($E(ATS1,ATSI))'<48)!($E(ATS1,ATSI)="")
 I $D(ATS1) S ATS1=+$E(ATS1,ATSI,99)
 I $P(ATSPTR2,U,2)["P" S ATS2=$P(ATSPTR2,U,2) F ATSI=1:1:99 Q:$A($E(ATS2,ATSI))'>57&($A($E(ATS2,ATSI))'<48)!($E(ATS2,ATSI)="")
 I $D(ATS2) S ATS2=+$E(ATS2,ATSI,99)
 I $D(ATS1),ATS1=ATSEARCH(2,"PTRFILENUM"),$P(ATSPTR1,U,5)["DINUM" D DINUM1 S ATSEARCH(2,"PTRFILENUM")=ATSEARCH(1,"PTRFILENUM"),ATSEARCH("PTRFILENAM")=$P(^DIC(ATSEARCH(1,"PTRFILENUM"),0),U),ATSTOP="" G A
 I $D(ATS2),ATS2=ATSEARCH(1,"PTRFILENUM"),$P(ATSPTR2,U,5)["DINUM" D DINUM2 S ATSEARCH(1,"PTRFILENUM")=ATSEARCH(2,"PTRFILENUM"),ATSEARCH("PTRFILENAM")=$P(^DIC(ATSEARCH(1,"PTRFILENUM"),0),U),ATSTOP="" G A
 ;IF THE FILE POINTS TO THE OTHER AND IS DINUM SET THE PTRFILE TO THE FILE THAT IS DINUM TO THE OTHER
A K ATSPTR1,ATSPTR2,ATS1,ATS2
 Q
 ;
DINUM1 ;
 I ATSEARCH(2,"PTRFILENUM")=ATSEARCH(2,"SRCHFILENUM") S ATSEARCH(2,"PTEDTOFILE")=0
 Q
 ;
DINUM2 ;
 I ATSEARCH(1,"PTRFILENUM")=ATSEARCH(1,"SRCHFILENUM") S ATSEARCH(1,"PTEDTOFILE")=0
 Q
 ;
