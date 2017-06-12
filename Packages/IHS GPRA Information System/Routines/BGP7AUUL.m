BGP7AUUL ; IHS/CMI/LAB - AREA UPLOAD ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
DESC ;----- ROUTINE DESCRIPTION
 ;; 
 ;;This routine was copied from the BGP1ULF routine and modified to
 ;;remove user interaction and screen output and other unneeded stuff.
 ;;$$END
 ;
 N I,X F I=1:1 S X=$P($T(DESC+I),";;",2) Q:X["$$END"  D EN^DDIOL(X)
 Q
 ;
EN(BGPDIR,BGPFILE) ;EP -- MAIN ENTRY POINT
 ;      INPUT:
 ;      BGPDIR   =  DIRECTORY
 ;      BGPFILE  =  FILE TO BE PROCESSED
 ;
READF ;EP read file
 NEW Y,X,I,BGPC
 S BGPC=1
 S Y=$$OPEN^%ZISH(BGPDIR,BGPFILE,"R")
 I Y D  G EOJ
 . S BGPERR="UNABLE TO OPEN FILE '"_BGPDIR_BGPFILE_"'"
 . ;S $ZR="<NOTOPEN>READF^BGPGPULF"
 . ;D ^ZTER 
 KILL ^TMP("BGPGPUPL",$J)
 F I=1:1 U IO R X:DTIME S X=$$STRIP(X) Q:X=""  S ^TMP("BGPGPUPL",$J,BGPC,0)=X,BGPC=BGPC+1 Q:$$STATUS^%ZISH=-1
 D ^%ZISC
PROC ;
 S BGP0=$P($G(^TMP("BGPGPUPL",$J,1,0)),"|",9)
 S BGPG=$P($G(^TMP("BGPGPUPL",$J,1,0)),"|")
 F X=1:1:14,21 S Y="BGP"_X,@Y=$P(BGP0,U,X)
 ;find existing entry and if exists, delete it
 S (X,BGPOIEN)=0 F  S X=$O(^BGPGPDCG(X)) Q:X'=+X  D
 .I '$D(^BGPGPDCG(X,0)) K ^BGPGPDCG(X) Q
 .S Y=^BGPGPDCG(X,0)
 .Q:$P(Y,U)'=BGP1
 .Q:$P(Y,U,2)'=BGP2
 .Q:$P(Y,U,3)'=BGP3
 .Q:$P(Y,U,4)'=BGP4
 .Q:$P(Y,U,5)'=BGP5
 .Q:$P(Y,U,6)'=BGP7
 .Q:$P(Y,U,8)'=BGP8
 .Q:$P(Y,U,9)'=BGP9
 .Q:$P(Y,U,10)'=BGP10
 .Q:$P(Y,U,11)'=BGP11
 .Q:$P(Y,U,12)'=BGP12
 .Q:$P(Y,U,14)'=BGP14
 .Q:$P(Y,U,21)'=BGP21
 .S BGPOIEN=X
 D ^XBFMK
 I BGPOIEN S DA=BGPOIEN,DIK="^BGPGPDCG(" D ^DIK S DA=BGPOIEN,DIK="^BGPGPDPG(" D ^DIK S DA=BGPOIEN,DIK="^BGPGPDBG(" D ^DIK
 ;add entry
 L +^BGPGPDCG:10 I '$T D EOJ Q
 L +^BGPGPDPG:10 I '$T D EOJ Q
 L +^BGPGPDBG:10 I '$T D EOJ Q
 D GETIEN^BGP7UTL
 I 'BGPIEN D EOJ Q
CY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90558.03,DIC="^BGPGPDCG(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPGPDCG"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPGPDCG(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPGPDCG(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPGPDCG(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPGPDCG(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPGPDCG(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPGPDCG(" D IX1^DIK
PY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90558.04,DIC="^BGPGPDPG(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPGPDPG"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPGPDPG(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPGPDPG(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPGPDPG(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPGPDPG(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPGPDPG(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPGPDPG(" D IX1^DIK
BY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90558.05,DIC="^BGPGPDBG(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPGPDBG"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPGPDBG(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPGPDBG(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPGPDBG(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPGPDBG(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPGPDBG(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPGPDBG(" D IX1^DIK
 D EOJ
 Q
EOJ ;EP
 L -^BGPGPDCG
 L -^BGPGPDPG
 L -^BGPGPDBG
 K IOPAR
 D HOME^%ZIS
 K X,X1,X2,X3,X4,X5,X6
 K A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,V,W,X,Y,Z
 K N,N1,N2,N3,N4,N5,N6
 K DIC,DA,X,Y,%Y,%,BGPJ,BGPX,BGPTEXT,BGPLINE,BGP
 K BGP1,BGP2,BGP3,BGP4,BGP7,BGP7,BGP7,BGP8,BGP9,BGP10,BGP11,BGP12,BGP13,BGP14,BGP21
 Q
STRIP(Z) ;REMOVE CONTROLL CHARACTERS
 NEW I
 F I=1:1:$L(Z) I (32>$A($E(Z,I))) S Z=$E(Z,1,I-1)_""_$E(Z,I+1,999)
 Q Z
SCH ;EP - called from option to schedule the area aggregate for the next "2nd Friday"
 ;INFORM
 W !!,"This option is used to automatically schedule the Auto Area"
 W !,"file aggregation for the second Friday of the month.",!
 S BGPTASK=$$CHKFQT()
 I BGPTASK W !!,"The option is already scheduled to run: TASK # ",BGPTASK," at ",$$HTE^XLFDT($P(^%ZTSK(BGPTASK,0),U,6)),"." D DEL,PAUSE^BGP7DU,XIT^BGP7AUUP Q
 NEW BGPDT,BGPX,BGPY
 S BGPDT=DT
 ;get next "second Friday" in this month
 ;S BGPX=$E(DT,1,5)_"01"  ;first of this month
 S BGPY=0  ;friday counter
 ;S X=DT
 ;D DW^%DTC
 D
 . S BGPDT=$E(DT,1,5)_"01"
 . S X=BGPDT D DW^%DTC I X="FRIDAY" S BGPY=BGPY+1
 . F  D  Q:BGPY=2
 . . S (X,BGPDT)=$$FMADD^XLFDT(BGPDT,1)
 . . D DW^%DTC
 . . Q:X'="FRIDAY"
 . . S BGPY=BGPY+1
 I BGPDT<DT D
 .;ADD 1 TO bgpdt Until the month changs
 .S BGPY=0
 .S BGPDT=DT F  S BGPDT=$$FMADD^XLFDT(BGPDT,1) Q:$E(BGPDT,4,5)'=$E(DT,4,5)
 .S X=BGPDT D DW^%DTC I X="FRIDAY" S BGPY=BGPY+1
 .F  D  Q:BGPY=2
 ..S (X,BGPDT)=$$FMADD^XLFDT(BGPDT,1)
 ..D DW^%DTC
 ..Q:X'="FRIDAY"
 ..S BGPY=BGPY+1
 W !,"This option will be scheduled for ",$$FMTE^XLFDT(BGPDT)," at 12:00pm.",!
 K DIR
 S DIR(0)="Y",DIR("A")="Do you wish to continue and schedule it",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 I 'Y Q
 ;S BGPOPT="BGP 17 AUTO PROC SITE FILES"
 ;S BGPOPTD0=$O(^DIC(19,"B",BGPOPT,0))
 ;I 'BGPOPTD0 D  Q
 ;. D BMES^XPDUTL("'BGP 17 AUTO PROC SITE FILES' OPTION NOT FOUND!")
 ;. D PAUSE^BGP7DU
 ;. D XIT^BGP7AUUP
 ;Q:'BGPOPTD0
 ;S BGPD0=$O(^DIC(19.2,"B",BGPOPTD0,0))
 ;D ADDOPT(BGPOPTD0,.BGPD0)
 S BGPX=BGPDT_".12"
 ;D EDITOPT(BGPD0)
 ;ztload
 S ZTDTH=BGPX
 ;S ZTSAVE("BGP*")=""
 S ZTRTN="AUTO^BGP7AUUP"
 S ZTDESC="BGP7 AUTO GPRA AREA AGGREGATE"
 S ZTIO=""
 D ^%ZTLOAD
 S BGPTSK=$G(ZTSK)
 D BMES^XPDUTL("OPTION 'BGP7 AUTO AREA AGGREGATE' SCHEDULED AS TASK #"_BGPTSK)
 D PAUSE^BGP7DU,XIT^BGP7AUUP
 Q
SCHGUI ;EP -- gui scheduler
 NEW BGPDT,BGPX,BGPY
 S BGPDT=DT
 ;get next "second Friday" in this month
 ;S BGPX=$E(DT,1,5)_"01"  ;first of this month
 S BGPY=0  ;friday counter
 ;S X=DT
 ;D DW^%DTC
 D
 . S BGPDT=$E(DT,1,5)_"01"
 . S X=BGPDT D DW^%DTC I X="FRIDAY" S BGPY=BGPY+1
 . F  D  Q:BGPY=2
 . . S (X,BGPDT)=$$FMADD^XLFDT(BGPDT,1)
 . . D DW^%DTC
 . . Q:X'="FRIDAY"
 . . S BGPY=BGPY+1
 I BGPDT<DT D
 .;ADD 1 TO bgpdt Until the month changs
 .S BGPY=0
 .S BGPDT=DT F  S BGPDT=$$FMADD^XLFDT(BGPDT,1) Q:$E(BGPDT,4,5)'=$E(DT,4,5)
 .S X=BGPDT D DW^%DTC I X="FRIDAY" S BGPY=BGPY+1
 .F  D  Q:BGPY=2
 ..S (X,BGPDT)=$$FMADD^XLFDT(BGPDT,1)
 ..D DW^%DTC
 ..Q:X'="FRIDAY"
 ..S BGPY=BGPY+1
 S BGPX=BGPDT_".12"
 ;D EDITOPT(BGPD0)
 ;ztload
 S ZTDTH=BGPX
 ;S ZTSAVE("BGP*")=""
 S ZTRTN="AUTO^BGP7AUUP"
 S ZTDESC="BGP7 AUTO GPRA AREA AGGREGATE"
 S ZTIO=""
 D ^%ZTLOAD
 S BGPTSK=$G(ZTSK)
 Q
 ;
ADDOPT(BGPOPTD0,BGPD0) ;
 ;----- ADD OPTION TO OPTION SCHEDULING FILE
 ;
 N DD,DIC,DO,X,Y
 ;
 S BGPD0=$O(^DIC(19.2,"B",BGPOPTD0,0)) I BGPD0 Q
 S BGPD0=0
 S X=BGPOPTD0
 S DIC="^DIC(19.2,"
 S DIC(0)=""
 D FILE^DICN
 Q:+Y'>0
 S BGPD0=+Y
 Q
EDITOPT(BGPD0) ;
 ;----- EDIT OPTION SCHEDULING OPTION
 ;
 N %DT,%L,%X,%Y,BGPDT,BGPF,DIFROM,D,D0,DA,DI,DIC,DIE,DIE,DQ,DR,X,Y
 ;
 S BGPF="1M"
 S DA=BGPD0
 S DIE="^DIC(19.2,"
 S DR="2///^S X=BGPX;6///^S X=BGPF"
 D ^DIE
 Q
CHKFQT() ;EP - check for queued task (BGP AUTO GPRA EXTRACT and BGPSITE variable within the task
 NEW X,Y,Z,Q
 S Y=$$FMTH^XLFDT(DT)
 S Q=""  ;not found
 S X=0
 F  S X=$O(^%ZTSK(X)) Q:X'=+X  D
 .Q:$P($G(^%ZTSK(X,0)),U,1,2)'="AUTO^BGP7AUUP"
 .Q:$P($G(^%ZTSK(X,.03)),U,1)'="BGP7 AUTO GPRA AREA AGGREGATE"  ;"BGP 17 AUTO GPRA EXTRACT"  ;not the gpra export
 .Q:$P($G(^%ZTSK(X,0)),U,6)<Y
 .S Q=X  ;found it scheduled
 Q Q
DEL ;EP
 K DIR
 S DIR(0)="Y",DIR("A")="Do you wish to Un-Schedule the task",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) W !!,"Task still scheduled." Q
 I 'Y W !!,"Task still scheduled." Q
 D DELTASK^BGP7AUEX
 W !!,"Task Un-Scheduled.",!
 Q
