AGED11 ; IHS/ASDS/EFG - EDIT - PAGE 8 (ADDITIONAL REGISTRATION INFO) ;    
 ;;7.1;PATIENT REGISTRATION;;AUG 25,2005
 ;
 N AD0
 I AGOPT(9)'="Y" G END
VAR ;EP
 ;D DRAW     ;WITH WRAP
 D DRAWLINE  ;NO FORMATTTING
 Q:$D(AGSEENLY)
 K DIR
 S DIR("?")="Enter your choice now."
 S DIR("?",1)="You can add or edit ADDITIONAL REGISTRATION INFORMATION,"
 S DIR("?",2)="OR you can enter 'P#' where P stands for 'page' and '#' stands for"
 S DIR("?",3)="the page you wish to jump to, OR enter '^' to go back one page"
 S DIR("?",4)="OR, enter '^^' to exit the edit screens, OR RETURN to go to the next screen."
 W !
 I $D(^AUPNPAT(DFN,13,0)) D
 . S DIR("A")="Do you wish to edit ADDITIONAL REGISTRATION INFORMATION? (Y/N) "
 E  S DIR("A")="Do you wish to enter ADDITIONAL REGISTRATION INFORMATION? (Y/N) "
 S DIR("B")="N"
 D READ^AGED1
 Q:$D(DTOUT)!$D(DFOUT)
 Q:$D(DUOUT)&$D(AGXTERN)
 Q:$D(AGXTERN)&(Y="N")
 G ^AGED11A:(Y="N")!(Y["n")
 G VAR:$D(AG("ERR"))
 G END:$D(DLOUT)
 I (Y["Y")!(Y["y") D FORK G VAR
 G:$D(AG("ED"))&'$D(AGXTERN) @("^AGED"_AG("ED"))
 G VAR
DRAW ;EP - PRINT ADDITIONAL INFO LINE BY LINE. WITH WRAP FORMATTING
 D HDR
 K ^UTILITY($J,"W")
 S DIWL=0
 S DIWR=75
 S DIWF="WC70|"
 S STOP=0
 S AD0=0
 F  S AD0=$O(^AUPNPAT(DFN,13,AD0)) Q:'AD0  D  Q:STOP
 .S X=$G(^AUPNPAT(DFN,13,AD0,0))
 .D ^DIWP
 .I $Y>20 K DIR S DIR(0)="E" D ^DIR S STOP=X=U Q:STOP  D HDR
 D ^DIWW
 W !,$G(AGLINE("-"))
 D VERIF^AGUTILS
 Q
DRAWLINE ;EP - PRINT ADDITIONAL INFO LINE BY LINE. NO FORMATTING
 S AG("PG")=8
 D ^AGED
 W !,$$CJ^XLFSTR("ADDITIONAL REGISTRATION INFO",IOM)
 W !,$G(AGLINE("-"))
 Q:'$O(^AUPNPAT(DFN,13,0))
 W ! F I=0:0 S I=$O(^AUPNPAT(DFN,13,I)) Q:'I  W ^(I,0),!
 W !,$G(AGLINE("-"))
 D VERIF^AGUTILS
 Q
FORK ;EP - WHICH TO DO ADD OR EDIT
 ;IF THERE IS INFORMATION IN WP FIELD THEN LETS ADD IT
 ;I $D(^AUPNPAT(DFN,13,0)),($O(^AUPNPAT(DFN,13,""),-1)'=0) D EDIT Q
 ;ENTER ADD ONLY WHEN FIRST ENTERING INFORMATION
 ;D ADDNEW(1)
 ;PER MEETING OF 3/11/2005 ADRIAN SAID THE USERS WERE WORRIED THEY COULD NOT EDIT WHAT
 ;THEY HAD ENTERED. ADRIAN REQUESTED WE CHANGE THE EDIT OF THIS FIELD SO THAT THERE
 ;WAS NO TIME/DATE STAMP. I MADE CLEAR THAT IF THIS WERE THE CASE THEN THE FIELD
 ;COULD NO LONGER BE VIEWED AS HISTORICAL NOR IN LEGAL TERMS AS "UNEDITABLE" AS IN
 ;CERTAIN MEDICAL FORMS ARE NOT ALLOWED TO BE ALTERED BY LAW.
 D REVEDIT  ;DO REVISED EDIT
 Q
 ;REVISED EDIT OF FIELD AFTER REQUEST FOR CHANGE AT 3/11/2005 MEETING
REVEDIT ;
 K DIE,DIC,DA,DIR
 S DIE="^AUPNPAT(",DR=1301,DA=DFN
 D ^DIE
 K DIE,DIC,DA,DIR
 D UPDATE1^AGED(DUZ(2),DFN,11,"")
 Q
 ;THIS SUB ROUTINE WA SINTIALLY REQUESTED IN PSECS AND THEN LATER REQUESTED TO
 ;BE REMOVED DURING TESTING PHASE
EDIT ;
 N LASTLINE
 K AGADINFO
 M AGADINFO=^AUPNPAT(DFN,13)   ;GET CURRENT INFO AND SAVE IN LOCAL ARRAY
 K ^AUPNPAT(DFN,13)            ;CLEAR OUT THE WP FLD
 D ADDNEW(1)                        ;GET THE NEW INFO TO BE ADDED
 ;NOW ADD THE NEW STUFF TO THE OLD WHICH IS SAVED IN AGADINFO
 S LASTLINE=$O(AGADINFO(""),-1)     ;LAST ENTRY ASSIGNED IN THE IEN SEQUENCE
 S LASTASS=$P(AGADINFO(0),U,3)     ;LAST ENTRY ASSIGNED
 S LASTTOT=$P(AGADINFO(0),U,4)     ;LAST TOTAL # OF ENTRIES
 S NEWLINE=LASTLINE+1
 S NEWREC=0
 F RECORD=NEWLINE:1 S NEWREC=$O(^AUPNPAT(DFN,13,NEWREC)) Q:'NEWREC  D
 .S LINE=$G(^AUPNPAT(DFN,13,NEWREC,0))
 .S AGADINFO(RECORD,0)=LINE
 .S $P(AGADINFO(0),U,3)=RECORD
 .S $P(AGADINFO(0),U,4)=$P(AGADINFO(0),U,4)+1
 K ^AUPNPAT(DFN,13)
 M ^AUPNPAT(DFN,13)=AGADINFO   ;UPDATE THE WP FLD WITH THE NEW AND OLD INFO
 Q
END K AG,DTOUT,DQOUT,DFOUT,DLOUT,DA,DR
 K Y,LASTLINE,LASTASS,LASTTOT,NEWLINE,NEWREC,RECORD,AGADINFO
 K NEWLINES,LINE,EDITDATE,NEWLINES,X,%DT,AD0,DIWL,DIWR,DIWF,ROUTID
 Q
 ;ADDING LINES WILL BE DONE WITHOUT ALLOWING THE USER TO EDIT LINES ALREADY ENETERED.
 ;THE PURPOSE OF TIME STAMPING IS TO PROVIDE A DIRECT LINK BETWEEN
 ;THE ENTRY OF DATA AND THE USER WHO ENTERED IT. IF THE USER IS
 ;ALLOWED TO EDIT THE TIME/DATE STAMP THERE IS NO LEGITIMACY TO IT'S
 ;IMPLEMENTATION
ADDNEW(FIRSTLIN) ;EP - ADD ADDITIONAL REGISTRATION INFORMATION
 N LASTLINE
 S DIE="^AUPNPAT(",DR=1301,DA=DFN D ^DIE    ;ACTUAL ADD
 ;                                          CANNOT CONTROL EDITING
 ;                                          OF LINES ALREADY ENTERED
 S NEWLINES=$P($G(^AUPNPAT(DFN,13,0)),U,4)  ;GET THE NEW LINE TOTAL
 Q:NEWLINES=""
 S AGINITIL=$P($G(^VA(200,DUZ,0)),U,2)      ;GET USER INITIAL
 S X="NOW",%DT="T" D ^%DT
 X ^DD("DD")
 S EDITDATE=Y
 S LINE=$G(^AUPNPAT(DFN,13,FIRSTLIN,0))    ;ADD TIME/DATE STAMP TO
 ;                                           FIRST LINE ENTERED
 S LINE=EDITDATE_","_LINE
 S ^AUPNPAT(DFN,13,FIRSTLIN,0)=LINE
 S LINE=$G(^AUPNPAT(DFN,13,NEWLINES,0))
 S LINE=LINE_" ,"_AGINITIL                  ;ADD INITIALS TO LAST
 ;                                           LINE ENTERED
 S ^AUPNPAT(DFN,13,NEWLINES,0)=LINE
 S ^AUPNPAT(DFN,13,NEWLINES+1,0)=" ",$P(^AUPNPAT(DFN,13,0),U,4)=$P($G(^AUPNPAT(DFN,13,0)),U,4)+1,$P(^AUPNPAT(DFN,13,0),U,3)=NEWLINES+1
 D UPDATE1^AGED(DUZ(2),DFN,11,"")   ;MOVED FROM ABOVE
 Q
HDR ;EP
 S AG("PG")=8
 S ROUTID=$P($T(+1)," ")  ;SET ROUTINE ID FOR PROGRAMMER VIEW
 D ^AGED
 W !,$$CJ^XLFSTR("ADDITIONAL REGISTRATION INFO",IOM),!
 W AGLINE("-")
 Q
ADD ;EP - Add a Patient.
 I AGOPT(9)="Y" D FORK
 G ADD^AGED13
