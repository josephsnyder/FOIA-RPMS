AGEDTPL ; IHS/ASDS/TPF - THIRD PARTY LIABILITY ;    
 ;;7.1;PATIENT REGISTRATION;**1,2,9**;AUG 25, 2005
 ;A NEW THIRD PART LIABILITY DISPLAY PAGE. REPLACES AGED4B WHICH IS
 ;OBSOLETE
 ;AG*7.1*9 - CHANGES TO CODE TO ADD CLAIM INFORMATION SECTION
 ;
EN(AD0,AD1,NEWENTRY,AGSELECT,AGELPINS) ;EP
 ;IF ITS A NEW ENTRY THEN DISP THE SCREEN, MSG, AND AUTOMATICALLY
 ;ENTER A NEW PATIENT RECORD THEN ASK FOR THE DATE OF INJURY
 K TPLDEL
 I NEWENTRY D  Q:EXIT
 .S EXIT=0
 .D DRAW,AMSG,NEWENTRY I +$G(Y)<0 S EXIT=1 W !,"Entry not made." D CLEAN(AD0) H 2 D END Q
 .D DESCAI
 .D CAUSE
 .D RESPNAM
 .D RESPSSN
 .D RESPINS
 .D POLEFF
 .D POLEND
 .D GRPNAME
 .D POLNO
 .D APATATTY
 .D CLM
 .D DTLWRK
 .D DTSDIS
 .D DTEDIS
 .D DTRWRK
 .D CNTINF
 .D NOTES
 .S COMPIEN=AD0_",1,"_AD1
 .;S AGSELECT=$$UPDTSEL^AGUTILS("FINDTPL",.AGINS,COMPIEN)
 .S AGSELECT=$$UPDTSEL^AGUTILS(.AGINS,COMPIEN,AGELP("INS"))  ;AG*7.1*1 IM18549 ERROR IN ERROR UPDATE
 .S NEWENTRY=0
 S COMPIEN=AD0_",1,"_AD1
VAR D DRAW
 Q:$D(AGSEENLY)
 W !,AGLINE("EQ")
 K DIR
 S DIR("A")="CHANGE which item? (1-"_AG("N")_") NONE// "
 D READ^AGED1
 ;CHECK TO SEE IF THERE ARE ANY DATE ENTRIES LEFT. IF NOT, CLEAR
 ;THE REMAINING TOP LEVEL RECORD SINCE NOTHING REALLY EXISTS FOR
 ;THIS PATIENT ANYMORE
 I Y="",'$O(^AUPNTPL(AD0,1,0)) D CLEAN(AD0) Q
 I Y[(",") G CONT
 I $D(MYERRS("C","E")),(Y'?1N.N),(Y'=AGOPT("ESCAPE")) W !,"ERRORS ON THIS PAGE. PLEASE FIX BEFORE EXITING!!" H 3 G VAR
 Q:Y=AGOPT("ESCAPE")
 G END:$D(DLOUT)!(Y["N")!$D(DUOUT),VAR:$D(AG("ERR"))
 Q:$D(DFOUT)!$D(DTOUT)
 I $D(DQOUT)!(+Y<1)!(+Y>AG("N")) W !!,"You must enter a number from 1 to ",AG("N") H 2 G VAR
CONT ;DATE OF INJURY; DESC OF INJURY; CAUSE OF INJURY; RESPONSIBLE
 ;PARTY NAME; RESPONSIBLE PARTY SSN; RESPONSIBLE INSURANCE COMPANY;
 ;POLICY EFF DATE; POLICY END DATE; GROUP NAME; GROUP #;
 ;POLICY #; PATIENT'S ATTORNEY; NOTES
 S AG("C")="DTACC,DESCAI,CAUSE,RESPNAM,RESPSSN,RESPINS,POLEFF,POLEND,GRPNAME,POLNO,APATATTY,CLM,DTLWRK,DTSDIS,DTEDIS,DTRWRK,CNTINF,NOTES"
 S AGY=Y
 F AGI=1:1 S AG("SEL")=+$P(AGY,",",AGI) Q:AG("SEL")<1!(AG("SEL")>AG("N"))  D @($P(AG("C"),",",AG("SEL")))
 ;AFTER EDITING THE SELECTION MUST BE UPDATED SO ANY ERRORS
 ;CORRECTED WILL BE REFLECTED ON THE REDRAWN SCREEN
 I $G(TPLDEL) Q
 ;S AGSELECT=$$UPDTSEL^AGUTILS("FINDTPL",.AGINS,COMPIEN)
 S AGSELECT=$$UPDTSEL^AGUTILS(.AGINS,COMPIEN,$P(AGSELECT,U,2))  ;AG*7.1*1 IM18549 ERROR IN ERROR UPDATE
 D UPDATE1^AGED(DUZ(2),DFN,3,"")
 K AGI,AGY
 G VAR
CLEAN(AD0) ;EP - CHECK HERE TO SEE IF ENTRIES HAVE ACTUALLY BEEN
 ;ENTERED. IF NOT, CLEAR THE REMAINING TOP LEVEL RECORD SINCE
 ;NOTHING REALLY EXISTS IN THIS RECORD
 I '$O(^AUPNTPL(AD0,1,0)) D CLEANZER(AD0)
 Q
CLEANZER(AD0) ;EP - CLEAN ZERO NODE WITH NO DATES
 K DIK,DA
 S DIK="^AUPNTPL(",DA=AD0 D ^DIK
 Q
END K AG,DLOUT,DTOUT,DFOUT,DQOUT,DA,DIC,DR,AGSCRN,Y,ADA,WDA,ADT,WDT
 K ADFN,WDFN,REC,ROUTID,TPLDEL,COMPIEN
 Q
DRAW ;EP
 S AG("PG")="4TPLA"
 S ROUTID=$P($T(+1)," ")
 S SEQHD="THIRD PARTY LIABILITY"
 D ^AGED
 K ^UTILITY("DIQ1",$J)
 W ?30,"THIRD PARTY LIABILITY"
 W !,AGLINE("-")
 D GETAW
 Q
GETAW ;DISPLAY
 F AG=1:1 D  Q:$G(AGSCRN)[("*END*")
 . S AGSCRN=$P($T(@1+AG),";;",2,14)
 . Q:AGSCRN[("*END*")
 . I AG=4 W !,"-RESPONSIBLE PARTY--------------------------------------------------------------"
 . I AG=7 W !,"-COVERAGE DATA------------------------------------------------------------------"
 . I AG=12 W !,"-CLAIM INFORMATION--------------------------------------------------------------"
 . I AG=18 W !,AGLINE("-")
 . S CAPTION=$P(AGSCRN,U)
 . S DIC=$P(AGSCRN,U,3)
 . S DR=$P(AGSCRN,U,4)
 . S NEWLINE=$P(AGSCRN,U,5)
 . S CAPDENT=$P(AGSCRN,U,2)
 .W @NEWLINE,$S(AG=2:3,AG=3:2,1:AG),".",@CAPDENT,$S($G(CAPTION)'="":CAPTION,1:$P($G(^DD(DIC,DR,0)),U)),": " ;AG*7.1*9 - Removed extra space after :
 .;IF EDITING DISP DATA ONLY
 .;E DISP ONLY THE CAPS
 .I 'NEWENTRY D
 .. S D0=AD0
 .. I DIC'["." S D0=D0_","
 .. E  S D0=AD1_","_D0_","
 .. W $$GET1^DIQ(DIC,D0,DR)
 .. ;I AG=2 D WRAP^AGUTILS($$GET1^DIQ(DIC,D0,DR),52,"WC10")
 .. I AG=9 W ?42,"GROUP NUMBER: ",$S($$GET1^DIQ(DIC,D0,DR,"I"):$P($G(^AUTNEGRP($$GET1^DIQ(DIC,D0,DR,"I"),0)),U,2),1:"")
 S AG("N")=AG-1
 W !,$G(AGLINE("-"))
 K MYERRS,MYVARS
 D FETCHERR^AGEDERR(AG("PG"),.MYERRS)
 S MYVARS("DFN")=DFN,MYVARS("FINDCALL")="FINDTPL",MYVARS("SITE")=DUZ(2),MYVARS("SELECTION")=$G(AGSELECT)
 I '$G(NEWENTRY) D EDITCHEK^AGEDERR(.MYERRS,.MYVARS,1)
 W !,$G(AGLINE("-"))
 D VERIF^AGUTILS
 I $D(AGSEENLY) S DIR("A")="Press return: ",DIR(0)="FO" D ^DIR Q
 Q
AMSG ;DISP THIS MSG IF THERE NO ENTRY IN THE THIRD PARTY LIABILITY
 ;FILE GLOBAL
 W !,"You must first enter the DATE OF INJURY"
 Q
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ; THIRD PARTY LIABILITY FLDS
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
NEWENTRY ;TOTALLY NEW ENTRY
 W !!
 K DIC,DIE,DR,DA
 S DIC="^AUPNTPL("
 S DIC(0)="L"
 S X="`"_DFN
 K DD,DO
 D ^DIC
 Q:Y<0
 S AD0=+Y
 S NEWENTRY=0
ADDDT ;
 K DIC,DIE,DR,DA
 S DA(1)=AD0
 S DIC="^AUPNTPL("_DA(1)_",1,"
 S DIC(0)="LAE"
 K DD,DO
 D ^DIC
 Q:Y<0
 S AD1=+Y
 I $G(AGELPINS)'="" D
 .S DIE="^AUPNTPL("_DA(1)_",1,"
 .S DA(1)=AD0
 .S DR=".02////^S X=AGELPINS"
 .S DA=AD1
 .D ^DIE
 Q
DTACC ;DATE OF INJURY
 I '$D(^AUPNTPL(AD0)) D NEWENTRY Q
 K DIC,DR,DIE,DA,DD,D0
 S TPLDEL=0
 S DA(1)=AD0
 S DA=AD1
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR=".01"
 D ^DIE
 I '$D(DA) S TPLDEL=1
 S:$G(D1)'="" AD1=D1  ;GET NEW SUBENTRY IEN
 K DIC,DR,DIE
 Q
DESCAI ;DESC OF INJURY
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="105"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
CAUSE ;CAUSE OF INJURY
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="104"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
RESPNAM ;RESPONSIBLE PARTY NAME
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="101"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
RESPSSN ;RESPONSIBLE PARTY SSN
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="102"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
RESPINS ;RESPONSIBLE PARTY INSURANCE COMPANY
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR=".02"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
POLEFF ;EFF DATE
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR=".04"
 D ^DIE
 K DIC,DR,DIE,DA
 ;COMPARE EFF AND END DATES
 I '$$GOODDT(AD0,AD1) G POLEFF
 Q
POLEND ;END DATE
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR=".05"
 D ^DIE
 K DIC,DR,DIE,DA
 ;COMPARE EFF AND END DATES
 I '$$GOODDT(AD0,AD1) G POLEND
 Q
GOODDT(AD0,AD1) ;EP - CHECK IF EFF AND END DATES MAKE SENSE
 N BDT,EDT
 S BDT=$P($G(^AUPNTPL(AD0,1,AD1,0)),U,4)
 S EDT=$P($G(^AUPNTPL(AD0,1,AD1,0)),U,5)
 I EDT,'BDT W !,"CANNOT HAVE AN ENDING DATE WITHOUT A BEGINNING DATE! TRY AGAIN" Q 0
 I EDT<BDT&(+EDT'=0) W !,"ENDING DATE IS LESS THAN THE EFFECTIVE DATE! TRY AGAIN" Q 0
 I BDT>EDT&(+EDT'=0) W !,"EFFECTIVE DATE IS GREATER THAN THE ENDING DATE! TRY AGAIN" Q 0
 Q 1
 ;
GDDDT(AD0,AD1) ;CHECK DISABILITY START/END DATES - AG*7.1*9
 N BDT,EDT
 S BDT=$$GET1^DIQ(9000041.0101,AD1_","_AD0_",",203,"I")  ;$P($G(^AUPNWC(WD0,1,WD1,0)),U,12)
 S EDT=$$GET1^DIQ(9000041.0101,AD1_","_AD0_",",204,"I")  ;$P($G(^AUPNWC(WD0,1,WD1,0)),U,13)
 I EDT,'BDT W !,"CANNOT HAVE AN ENDING DATE WITHOUT A BEGINNING DATE! TRY AGAIN" Q 0
 I EDT<BDT&(+EDT'=0) W !,"DISABILITY ENDING DATE IS LESS THAN THE EFFECTIVE DATE! TRY AGAIN" Q 0
 I BDT>EDT&(+EDT'=0) W !,"DISABILITY START DATE IS GREATER THAN THE ENDING DATE! TRY AGAIN" Q 0
 Q 1
CLM ;CLAIM # - AG*7.1*9
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="201"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
DTLWRK ;DATE LAST WORKED - AG*7.1*9
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="202"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
DTSDIS ;DISABILITY START DATE - AG*7.1*9
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="203"
 D ^DIE
 K DIC,DR,DIE,DA
 I '$$GDDDT(AD0,AD1) G DTSDIS
 Q
DTEDIS ;DISABILITY END DATE - AG*7.1*9
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="204"
 D ^DIE
 K DIC,DR,DIE,DA
 I '$$GDDDT(AD0,AD1) G DTEDIS
 Q
DTRWRK ;DATE AUTHORIZED TO WORK - AG*7.1*9
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="205"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
CNTINF ;CONTACT INFO - AG*7.1*9
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="206"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
GRPNAME ;GROUP NAME AND #
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR=".06"
 D ^DIE
 K DIC,DR,DIE,DA
GRPNUM ;GROUP #
 Q
POLNO ;INSURANCE POLICY #
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 I $$ISREQ^AGFLDREQ(9000041,.03) S DIE("NO^")="",DR=".03R"
 E  S DR=".03"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
APATATTY ;NAME OF PATIENT'S ATTORNEY
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="103"
 D ^DIE
 K DIC,DR,DIE,DA
 Q
NOTES ;NOTES
 W !
 K DIC,DR,DIE,DA,DD,DO
 S DA=AD1
 S DA(1)=AD0
 S DIE="^AUPNTPL("_DA(1)_",1,"
 S DR="106"
 W $$NOTELINE^AGUTILS(DR,9000041.0101,AD1_","_AD0_",",45)
 D ^DIE
 K DIC,DR,DIE,DA
 Q
 ; ****************************************************************
 ; ON LINES BELOW:
 ; PIECE 1= FIELD CAP
 ;          IF THIS IS FILLED IN IT WILL BE USED AS THE CAP ON THE SCREEN
 ;          IF IT IS NOT THEN THE FLD LBL FROM THE DD WILL BE USED
 ; PIECE 2= POSITION ON LINE TO DISP FLD CAP
 ; PIECE 3= FILE #
 ; PIECE 4= FLD #
 ; PIECE 5 - NEW LINE OR NOT
 ;
1 ;
 ;;TPL INJURY DATE^?4^9000041.0101^.01^!
 ;;CAUSE^?16^9000041.0101^104^?40
 ;;DESCRIPTION....^?4^9000041.0101^105^!
 ;;NAME...........^?4^9000041.0101^101^!
 ;;SOCIAL SECURITY NO^?49^9000041.0101^102^?46
 ;;INSURANCE COVERAGE^?4^9000041.0101^.02^!
 ;;EFFECTIVE DATE.^?4^9000041.0101^.04^!
 ;;ENDING DATE.^?16^9000041.0101^.05^?40
 ;;GROUP NAME.....^?4^9000041.0101^.06^!
 ;;POLICY NUMBER..^?4^9000041.0101^.03^!
 ;;PATIENT'S ATTORNEY^?42^9000041.0101^103^?39
 ;;CLAIM #^?4^9000041.0101^201^!
 ;;DATE LAST WORKED^?43^9000041.0101^202^?40
 ;;DISABILITY START DATE^?4^9000041.0101^203^!
 ;;DISABILITY END DATE^?44^9000041.0101^204^?40
 ;;DATE AUTHORIZED RETURN TO WORK^?4^9000041.0101^205^!
 ;;CONTACT INFO^?4^9000041.0101^206^!
 ;;NOTES^?4^9000041.0101^106^!
 ;;*END*
