BGP6PESL ; IHS/CMI/LAB - FY 06 DISPLAY IND LISTS ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;; ;
RT ;EP
 ;for each measure list, choose report type
 W !!,"Select List Type.",!,"NOTE:  If you select All Patients, your list may be",!,"hundreds of pages and take hours to print.",!
 S DIR(0)="S^R:Random Patient List;P:Patient List by Provider"_$S($G(BGPEDPP):";O:One Education Provider;E:Patient List by Education Provider",1:"")_";A:All Patients",DIR("A")="Choose report type for the Lists"
 S DIR("B")="R" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S BGPQUIT="" K BGPLIST Q
 S BGPLIST=Y
 I BGPLIST="A" Q
 I BGPLIST="E" D  Q
 .W !!,"Please Note:  The education provider is obtained from the V Patient Ed File"
 .W !,"and is recorded with each topic.  If the provider is not documented with the"
 .W !,"topic the provider listed in the report will be 'Unknown'.",!
 I BGPLIST="P" D  G:BGPLPROV="" RT Q
 .S BGPLPROV="",BGPLPRV=""
 .S DIR(0)="9000001,.14",DIR("A")="Enter Designated Provider Name" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) Q
 .I Y="" Q
 .S BGPLPRV=+Y,BGPLPROV=Y(0,0)
 I BGPLIST="O" D  G:BGPEPROV="" RT Q
 .S BGPEPROV="",BGPEPRV=""
 .S DIR(0)="9000001,.14",DIR("A")="Enter Education Provider Name" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) Q
 .I Y="" Q
 .S BGPEPRV=+Y,BGPEPROV=Y(0,0)
 .W !!,"Please Note:  The education provider is obtained from the V Patient Ed File"
 .W !,"and is recorded with each topic.  If the provider is not documented with the"
 .W !,"topic the topic/patient will not be listed on the patient list.",!
 Q
EP ;EP - CALLED FROM OPTION
 D EN
 Q
EOJ1 ;EP
 K BGPGLIST,BGPTIND,BGPHIGH,BGPANS,BGPC,BGPGANS,BGPGC,BGPGI,BGPI,BGPX
 Q
 ;; ;
EN ;EP -- main entry point for GPRA LIST DISPLAY
 D EN^VALM("BGP 16 PATED LIST SELECTION")
 D CLEAR^VALM1
 D FULL^VALM1
 W:$D(IOF) @IOF
 D EOJ1
 Q
 ;
HDR ; -- header code
 S VALMHDR(1)="IHS 2016 Patient Education Performance Measure Lists of Patients"
 S VALMHDR(2)="* indicates the list has been selected"
 Q
 ;
INIT ; -- init variables and list array
 K BGPGLIST,BGPNOLI S BGPHIGH=""
 S (X,C,I)=0 F  S X=$O(BGPIND(X)) Q:X'=+X  D
 .I $P(^BGPPEIM(X,0),U,4)]"" S C=C+1 D  Q
 ..S BGPGLIST(C,0)=C_")",$E(BGPGLIST(C,0),5)=$P(^BGPPEIM(X,0),U,4),BGPGLIST("IDX",C,C)=X I $D(BGPLIST(X)) S BGPGLIST(C,0)="*"_BGPGLIST(C,0)
 .I $P(^BGPPEIM(X,0),U,4)="" S C=C+1 D
 ..S BGPGLIST(C,0)="NO patient list available for measure:  "_$P(^BGPPEIM(X,0),U,2),BGPGLIST("IDX",C,C)=X,BGPNOLI(X)="" I $D(BGPLIST(X)) S BGPGLIST(C,0)="*"_BGPGLIST(C,0)
 S (VALMCNT,BGPHIGH)=C
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 Q
 ;
EXPND ; -- expand code
 Q
 ;
BACK ;go back to listman
 D TERM^VALM0
 S VALMBCK="R"
 D INIT
 D HDR
 K DIR
 K X,Y,Z,I
 Q
 ;
ADD ;EP - add an item to the selected list - called from a protocol
 W ! S DIR(0)="LO^1:"_BGPHIGH,DIR("A")="Which item(s)" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No items selected." G ADDX
 I $D(DIRUT) W !,"No items selected." G ADDX
 D FULL^VALM1 W:$D(IOF) @IOF
 S BGPGANS=Y,BGPGC="" F BGPGI=1:1 S BGPGC=$P(BGPGANS,",",BGPGI) Q:BGPGC=""  S BGPI=$O(BGPGLIST("IDX",BGPGC,0)),BGPI=BGPGLIST("IDX",BGPGC,BGPI) I $D(BGPIND(BGPI)),'$D(BGPNOLI(BGPI)) S BGPLIST(BGPI)=""
ADDX ;
 D BACK
 Q
ADDALL ;
 F X=1:1:BGPHIGH S I=$G(BGPGLIST("IDX",X,X)) I $D(BGPIND(I)),'$D(BGPNOLI(I)) S BGPLIST(I)=""
 D BACK
 Q
 ;
REM ;
 W ! S DIR(0)="LO^1:"_BGPHIGH,DIR("A")="Which item(s)" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No items selected." G ADDX
 I $D(DIRUT) W !,"No items selected." G ADDX
 D FULL^VALM1 W:$D(IOF) @IOF
 S BGPGANS=Y,BGPGC="" F BGPGI=1:1 S BGPGC=$P(BGPGANS,",",BGPGI) Q:BGPGC=""  K BGPLIST(BGPGC)
REMX ;
 D BACK
 Q
 ;
PT ;EP
 S (BGPROT,BGPDELT,BGPDELF)=""
 W !!,"Please choose an output type.  For an explanation of the delimited",!,"file please see the user manual.",!
 S DIR(0)="S^P:Print Report on Printer or Screen;D:Create Delimited output file (for use in Excel);B:Both a Printed Report and Delimited File",DIR("A")="Select an Output Option",DIR("B")="P" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 S BGPROT=Y
 Q:BGPROT="P"
 S BGPDELF="",BGPDELT=""
 W !!,"You have selected to create a delimited output file.  You can have this",!,"output file created as a text file in the pub directory, ",!,"OR you can have the delimited output display on your screen so that"
 W !,"you can do a file capture.  Keep in mind that if you choose to",!,"do a screen capture you CANNOT Queue your report to run in the background!!",!!
 S DIR(0)="S^S:SCREEN - delimited output will display on screen for capture;F:FILE - delimited output will be written to a file in pub",DIR("A")="Select output type",DIR("B")="S" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G PT
 S BGPDELT=Y
 Q:BGPDELT="S"
 S DIR(0)="F^1:40",DIR("A")="Enter a filename for the delimited output (no more than 40 characters)" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G PT
 S BGPDELF=Y
 W !!,"When the report is finished your delimited output will be found in the",!,$$GETDEDIR^BGP6UTL2()," directory.  The filename will be ",BGPDELF,".txt",!
 Q
