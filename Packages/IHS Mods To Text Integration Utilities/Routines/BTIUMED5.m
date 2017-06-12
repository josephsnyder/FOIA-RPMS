BTIUMED5 ; SLC/JM - Active/Recent Med Objects Routine ;27-Apr-2016 11:31;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1006,1011,1016**;Jun 20, 1997;Build 10
 ;Patch 1011 changed to use pharmacy APIS
 Q
LIST(DFN,TARGET,ACTVONLY,ONELIST,CLASSORT,SUPPLIES,CLININC) ; EP
 ;
 ; Medication object for detailed meds for pharmacists
 ;
 ;
 ;Required Parameters:
 ;
 ;  DFN       Patient identifier
 ;
 ;  TARGET    Where the medication data will be stored
 ;
 ;Optional Parameters:
 ;
 ;  ACTVONLY  0 - Active and recently expired meds
 ;            1 - Active meds only
 ;            2 - Recently expired meds only
 ;            3 - Hold meds only
 ;
 ;
 ;  ONELIST   0 - Separates Active, Pending and Inactive
 ;                medications into separate lists
 ;            1 - Combines Active, Pending and Inactive
 ;                medications into the same list
 ;
 ;  CLASSORT  0 - Sort meds alphabetically
 ;            1 - Sort meds by drug class, and within the
 ;                same drug class, sort alphabetically
 ;            2 - Same as #1, but show drug class in header
 ;  SUPPLIES  0 - Supplies are excluded
 ;            1 - Supplies are included (Default)
 ;  CLININC   0-  Do not use
 ;            1-  Display in detailed format
 ;            2-  Sort by
 ;
 N NEXTLINE,EMPTY,INDEX,NODE,ISINP,KEEPMED,STATUS,ASTATS,PSTATS,OK,RXNO,CHRONIC
 N STATIDX,INPTYPE,OUTPTYPE,TYPE,MEDTYPE,CNT,DATA,DATA1,MED,IDATE,XSTR,LLEN,DAYS
 N LASTMEDT,LASTSTS,COUNT,TOTAL,SPACE60,DASH73,TEMP,LINE,TAB,HEADER,RXNUM,IEN,AUTO
 N DRUGCLAS,DRUGIDX,LASTCLAS,OLDTAB,OLDHEADR,UNKNOWNS,INDIC,LSTINDIC,PHARM,HSTATS
 N %,%H,STOP,LSTFD,ALLMEDS,CLASS,DETAILED,DRUG,REASON,REFILLS,FILLS,NRXN,HIEN,ERX
 S (NEXTLINE,TAB,HEADER,UNKNOWNS)=0,LLEN=47
 S PHARM=1
 K @TARGET,^TMP("PS",$J)
 ; Check for Pharmacy Package and required patches
 I '$$PATCHSOK^TIULMED3 G LISTX ;P213
 I '+$G(ACTVONLY) S ACTVONLY=0
 I '+$G(DETAILED) S DETAILED=0
 S ALLMEDS=3,DETAILED=1
 I '+$G(ONELIST) S ONELIST=0
 I '+$G(CLASSORT) S CLASSORT=0
 I $G(SUPPLIES)'="0" S SUPPLIES=1
 I '+$G(CLININC)  S CLININC=0
 S (EMPTY,HEADER)=1
 I ONELIST,'CLASSORT,'CLININC S HEADER=0
 S ASTATS="^ACTIVE^REFILL^HOLD^PROVIDER HOLD^ON CALL^ACTIVE (S)^"
 S PSTATS="^NON-VERIFIED^DRUG INTERACTIONS^INCOMPLETE^PENDING^"
 S HSTATS="^HOLD^"
 S ISINP=($G(^DPT(DFN,.1))'="") ; Is this an inpatient?
 S DAYS=$$GET^XPAR("ALL","BTIU EXPIRED MEDS",1,"E")
 S:$G(DAYS)<1 DAYS=365
 D ADDTITLE^BTIUMED1(DAYS)
 ;
 ; *** Scan medication data and skip unwanted meds ***
 ;
 D OCL^PSOORRL(DFN,$$FMADD^XLFDT(DT,-DAYS),"")
 S INDEX=0,INDIC="",AUTO=0,ERX=""
 F  S INDEX=$O(^TMP("PS",$J,INDEX))  Q:INDEX'>0  D
 .S NODE=$G(^TMP("PS",$J,INDEX,0))
 .S RXNO=+($P(NODE,U,1))
 .S AUTO=$P($G(^PSRX(RXNO,999999921)),U,3)
 .S CHRONIC=$P($G(^PSRX(RXNO,9999999)),U,2)
 .S KEEPMED=($L($P(NODE,U,2))>0) ;Discard Blank Meds
 .I KEEPMED D
 ..S STATUS=$P(NODE,U,9)
 ..I STATUS="SUSPENDED" S STATUS="ACTIVE (S)"
 ..I STATUS="ACTIVE/SUSP" S STATUS="ACTIVE (S)"
 ..I STATUS="PENDING" D
 ...S IEN=+($P(NODE,U))
 ...I IEN>0 S REFILLS=$P($G(^PS(52.41,IEN,0)),U,11)
 ...S $P(^TMP("PS",$J,INDEX,0),U,5)=REFILLS
 ..I $F(ASTATS,"^"_STATUS_"^")>0 S STATIDX=1
 ..E  I ($F(PSTATS,"^"_STATUS_"^")>0) S STATIDX=2
 ..E  S STATIDX=3
 ..I ACTVONLY=1 S KEEPMED=(STATIDX<3)
 ..I ACTVONLY=2 S KEEPMED=(STATIDX=3)
 ..I ACTVONLY=3 D
 ...S KEEPMED=""
 ...I STATUS="HOLD" S KEEPMED=4
 ..;I +ONELIST S STATIDX=1
 .I KEEPMED D
 ..S TYPE=$P($P(NODE,U),";",2)
 ..S TYPE=$S(TYPE="O":"OP",TYPE="I":"UD",1:"")
 ..S KEEPMED=(TYPE'="")
 .I KEEPMED D
 ..I $O(^TMP("PS",$J,INDEX,"A",0))>0 S TYPE="IV"
 ..E  I $O(^TMP("PS",$J,INDEX,"B",0))>0 S TYPE="IV"
 ..S MEDTYPE=1
 ..I ALLMEDS=3 S KEEPMED=MEDTYPE
 .S DRUGCLAS=" "
 .S MED=$P(NODE,U,2)
 .I KEEPMED,(CLASSORT!('SUPPLIES)) D
 ..S DRUGIDX=$$IENNAME^TIULMED2(MED)
 ..D GETCLASS
 ..I KEEPMED,+DRUGIDX=0 D  ;Find orderable item
 ...N IDX,ID,ORDIDX,TMPCLASS,CDONE,SDONE,TMPIDX,TMPNODE,ISSUPPLY
 ...S ID=$P(NODE,U),IDX=+ID,ID=$E(ID,$L(IDX)+1,$L(ID))
 ...S (DRUGIDX,ORDIDX)=0
 ...K ^TMP($J,"TIULMED")
 ...; IDX is Order #; ID indicates what file.  See IA 2400
 ...; R;O MED will always be in Drug File (Unless Drug File entry was
 ...;     changed after ordering.
 ...I ID="R;O" D
 ....D RX^PSO52API(DFN,"TIULMED",IDX,"","0,O") ; IA 4820
 ....S DRUGIDX=+$G(^TMP($J,"TIULMED",DFN,IDX,6))
 ....S ORDIDX=+$G(^TMP($J,"TIULMED",DFN,IDX,"OI"))
 ...I ID="P;O" D
 ....D PEN^PSO5241(DFN,"TIULMED",IDX) ; IA 4821
 ....S DRUGIDX=+$G(^TMP($J,"TIULMED",DFN,IDX,11))
 ....S ORDIDX=+$G(^TMP($J,"TIULMED",DFN,IDX,8))
 ...I ID="V;I" D
 ....D PSS436^PSS55(DFN,IDX,"TIULMED") ; IA 4826
 ....; Get ORDIDX before DRUGIDX since global is not there after DRUGIDX
 ....S ORDIDX=+$G(^TMP($J,"TIULMED",IDX,130))
 ....I ^TMP($J,"TIULMED",IDX,"ADD",0)=1 D
 .....S TMPIDX=$O(^TMP($J,"TIULMED",IDX,"ADD",0)) I +TMPIDX D
 ......S TMPIDX=+$G(^TMP($J,"TIULMED",IDX,"ADD",TMPIDX,.01))
 ......I +TMPIDX S DRUGIDX=$$DRGIEN^TIULMED2(TMPIDX) ; IA 4662
 ...S DRUGCLAS=""
 ...D GETCLASS
 ...I KEEPMED,+DRUGIDX=0,+ORDIDX,DRUGCLAS="" D
 ....S IDX=0,ISSUPPLY=2,CDONE='CLASSORT,SDONE=+SUPPLIES
 ....N LIST S LIST="TIULMED" K ^TMP($J,LIST)
 ....D DRGIEN^PSS50P7(ORDIDX,"",LIST) ; IA 4662
 ....F  S IDX=$O(^TMP($J,LIST,IDX)) Q:'IDX  D  Q:(CDONE&SDONE)
 .....S TMPCLASS=$$DRGCLASS^TIULMED2(IDX)
 .....S TMPNODE=U_TMPCLASS_U_$$DEA^TIULMED2(IDX)
 .....I 'CDONE,TMPCLASS="" S CDONE=1,DRUGCLAS=""
 .....I 'CDONE D
 ......I DRUGCLAS="" S DRUGCLAS=TMPCLASS
 ......E  I DRUGCLAS'=TMPCLASS S CDONE=1,DRUGCLAS=""
 .....I 'SDONE D
 ......S ISSUPPLY=(($E(TMPCLASS,1,2)="XA")&($P(TMPNODE,U,3)["S"))
 ......I 'ISSUPPLY S SDONE=1
 ....I 'SUPPLIES,(ISSUPPLY=1) S KEEPMED=0
 ..I (DRUGCLAS="")!('CLASSORT) S DRUGCLAS=" "
 ..I AUTO=1 D
 ...S ERX=$P($G(^PSRX(RXNO,999999921)),U,4)
 ...I +ERX S ERX=ERX_";"_RXNO
 ...S $P(^TMP("PS",$J,INDEX,0),U,9)=STATUS_" (X)"
 .;
 .; *** Save wanted meds in "B" temp xref, removing duplicates ***
 .;
 .I KEEPMED D
 ..D ADDMED^BTIUMED1(1) ; Get XSTR to check for duplicates
 ..S IDATE=$P(NODE,U,15)
 ..I $P($P(NODE,U),";")["N" S IDATE=$$DT^XLFDT
 ..I $P(NODE,U,9)="PENDING"!($P(NODE,U,9)="HOLD") S IDATE=$$DT^XLFDT
 ..S OK='$D(@TARGET@("B",MED,IDATE,XSTR))
 ..I 'OK,(IDATE>@TARGET@("B",MED,IDATE,XSTR)) S OK=1
 ..I OK D
 ...S @TARGET@("B",MED,IDATE,XSTR)=IDATE_U_INDEX_U_MEDTYPE_U_STATIDX_U_TYPE_U_DRUGCLAS_U_CHRONIC_U_ERX
 ...S EMPTY=0
 ...I DRUGCLAS=" " S UNKNOWNS=1
 ;
 ; *** Check for empty condition ***
 ;
 I EMPTY D  G LISTX
 .D ADD^BTIUMED1("No Medications Found")
 .D ADD^BTIUMED1(" ")
 ;
 ; *** Sort Meds in "C" temp xref - sort by Med Type, Status
 ;     Med Name, and reverse issue date, followed by a counter
 ;     to avoid erasing meds issued on the same day
 ;
 S MED="",CNT=1000000,OUTPTYPE=1
 F  S MED=$O(@TARGET@("B",MED)) Q:MED=""  D
 .S IDATE=""
 .F  S IDATE=$O(@TARGET@("B",MED,IDATE)) Q:IDATE=""  D
 ..S XSTR=""
 ..F  S XSTR=$O(@TARGET@("B",MED,IDATE,XSTR)) Q:XSTR=""  D
 ...S NODE=@TARGET@("B",MED,IDATE,XSTR)
 ...S DATA=MED_U_$P(NODE,U,3)_U_$P(NODE,U,5)_U_$P(NODE,19),CNT=CNT+1
 ...S @TARGET@("C",DATA,(9999999-$P(NODE,U))_CNT)=$P(NODE,U,2)_U_$P(NODE,U,5)_U_$P(NODE,U,7)_U_$P(NODE,U,8)
 K @TARGET@("B")
 ;
 ; Read sorted data and save final version to TARGET
 ;
 S (DATA,LASTCLAS,LSTINDIC)="",(LASTMEDT,LASTSTS,COUNT,TOTAL)=0
 S $P(SPACE60," ",60)=" ",$P(DASH73,"=",73)="="
 D WARNING^BTIUMED1
 F  S DATA=$O(@TARGET@("C",DATA)) Q:DATA=""  D
 .S DATA1=$P(DATA,U,2)
 .S MEDTYPE=$E(DATA1),STATIDX=$E(DATA1,2)
 .S DRUGCLAS=$P(DATA,U,2),MED=$P(DATA,U,3),CNT=""
 .F  S CNT=$O(@TARGET@("C",DATA,CNT)) Q:CNT=""  D
 ..S INDEX=@TARGET@("C",DATA,CNT)
 ..S TYPE=$P(INDEX,U,2),CHRONIC=$P(INDEX,U,3),ERX=$P(INDEX,U,4),INDEX=+INDEX
 ..S NODE=^TMP("PS",$J,INDEX,0)
 ..;If hold meds, find the reason and add it to the node data
 ..S STATUS=$P(NODE,U,9)
 ..I STATUS="HOLD" D
 ...S HIEN=+($P(NODE,U))
 ...S REASON=$$GET1^DIQ(52,HIEN,99,"E")
 ...S $P(NODE,U,18)=REASON
 ..S HIEN=$P(NODE,U)
 ..I CLININC>0 D
 ...;Patch 1016 changes for clinical indication
 ...I HIEN["R" D
 ....S HIEN=+HIEN
 ....S INDIC=$$GET1^DIQ(52,HIEN,9999999.21,"E")
 ....S $P(NODE,U,19)=INDIC
 ..I ERX'="" S $P(NODE,U,31)=ERX
 ..I $P($P(NODE,U),";")["N" S $P(NODE,U,2)=$P(NODE,U,2)_" (O)"
 ..I CHRONIC="Y" S $P(NODE,U,2)=$P(NODE,U,2)_" (C)"
 ..S RXNUM=$P($G(^PSRX(HIEN,0)),U,1)
 ..S $P(NODE,U,20)=RXNUM_" "
 ..S ^TMP("PS",$J,INDEX,0)=NODE
 ..D FILLS
 ..;E  S $P(NODE,U,2)="    "_$P(NODE,U,2)
 ..;I (MEDTYPE'=LASTMEDT)!(STATIDX'=LASTSTS)!(INDIC'=LSTINDIC) D  ; Create Header
 ..I (MEDTYPE'=LASTMEDT)!(CLININC=2&(INDIC'=LSTINDIC)) D  ; Create Header
 ...I CLASSORT'=2,DRUGCLAS'=" " S LASTCLAS=DRUGCLAS
 ...I 'HEADER Q
 ...S LASTMEDT=MEDTYPE,LASTSTS=STATIDX,TAB=0
 ...I COUNT>0 D ADD^BTIUMED1(" ")
 ...I CLASSORT D ADD^BTIUMED1(" ")
 ...S COUNT=0
 ...I MEDTYPE=OUTPTYPE D  I 1
 ....D ADD^BTIUMED1($E(SPACE60,1,3)_"RX No"_$E($E(SPACE60,1,38)_"Status"_SPACE60,1,52)_"Last Fill")
 ...S TEMP=""
 ...I 'ONELIST D
 ....S TEMP=TEMP_$S(MEDTYPE=INPTYPE:"Inpatient",1:"Outpatient")
 ....S TEMP="     "_TEMP_" Medications"
 ...I CLASSORT D
 ....S TEMP=TEMP_" (By Class)"
 ....I MEDTYPE=OUTPTYPE&(CLININC>0) S TEMP=TEMP_" (By Clinical Indication)"
 ...S TEMP=$E(TEMP_SPACE60,1,47)
 ...S TEMP=TEMP_"Refills"
 ...S TEMP=$E(TEMP_SPACE60,1,60)
 ...S TEMP=TEMP_"Expiration"
 ...D ADD^BTIUMED1(TEMP),ADD^BTIUMED1(DASH73)
 ..I CLASSORT,DRUGCLAS'="",DRUGCLAS'=LASTCLAS D
 ...S LASTCLAS=DRUGCLAS,OLDTAB=TAB,OLDHEADR=HEADER
 ..I CLININC=2,INDIC'=LSTINDIC D
 ...S LSTINDIC=INDIC,OLDTAB=TAB,OLDHEADR=HEADER
 ...S (TAB,HEADER)=0
 ...I COUNT>0 D ADD^BTIUMED1(" ")
 ...I (CLASSORT=2)!(DRUGCLAS=" ") D  I 1
 ....I DRUGCLAS=" " S TEMP="   ====== Drug Class Unknown "
 ....E  S TEMP="   ====== Drug Class: "_DRUGCLAS_" "
 ...I REASON=1 D
 ....I INDIC="" S TEMP="   ====== Unknown Indication "
 ....E  S TEMP="   ====== "_INDIC_"  "
 ...E  S TEMP="   "
 ...S TEMP=$E(TEMP_DASH73,1,LLEN-2)
 ...D ADD^BTIUMED1(TEMP)
 ...S HEADER=OLDHEADR,TAB=OLDTAB
 ..S COUNT=COUNT+1,TOTAL=TOTAL+1
 ..D ADDMED^BTIUMED1(0)
 I COUNT'=TOTAL D
 .S TAB=0
 .D ADD^BTIUMED1(" ")
 .D ADD^BTIUMED1(TOTAL_" Total Medications")
 D ADD^BTIUMED1(" ")
 D ADD^BTIUMED1("(X)behind status of medication depicts that the medication was sent to an external pharmacy")
 K @TARGET@("C")
LISTX K ^TMP("PS",$J)
 Q "~@"_$NA(@TARGET)
 ;
GETCLASS ; Get Drug Class, filter out supplies
 D GETCLASS^TIULMED3
 Q
FILLS ;Create and add nodes for fills and past fills.
 ;$G(^TMP("PS",$J,INDEX,0))
 K FILL
 N RFS,RF,RX2,RFL,FILL,II,PSIII,X,Y,Z
 S RX2=$S($D(^PSRX(HIEN,2)):^PSRX(HIEN,2),1:"")
 S RFL=1
 D FILOOP(HIEN,RX2)
 S Y=""
 F PSIII=0:0 S PSIII=$O(FILL(PSIII)) Q:'PSIII  D
 .S X=$P($G(FILL(PSIII)),U,1)
 .I X=0 Q
 .S Z=$$FMTE^XLFDT(X)
 .S Y=Y_Z_" "
 I Y'="" D
 .S ^TMP("PS",$J,INDEX,"FILL",0)=1
 .S ^TMP("PS",$J,INDEX,"FILL",1,0)=Y
 I CNT>0 S ^TMP("PS",$J,INDEX,"FILL",0)=1
 I RFL<6 D
 .K FILL
 .;Patch 1016 add a $G around the node
 .S NRXN=$P($G(^PSRX(HIEN,"OR1")),U,3)
 .I NRXN'="" D
 ..S RX2=$S($D(^PSRX(NRXN,2)):^PSRX(NRXN,2),1:"")
 ..D FILOOP(NRXN,RX2)
 ..S Y=""
 ..F PSIII=0:0 S PSIII=$O(FILL(PSIII)) Q:'PSIII  D
 ...S X=$P($G(FILL(PSIII)),U,1)
 ...I X=0 Q
 ...S Z=$$FMTE^XLFDT(X)
 ...S Y=Y_Z_" "
 ..I Y'="" D
 ...S ^TMP("PS",$J,INDEX,"FILLS",0)=1
 ...S ^TMP("PS",$J,INDEX,"FILLS",1,0)=Y
 Q
FILOOP(RX,RX2) ;
 S FILL(9999999-$P(RX2,"^",2))=+$P(RX2,"^",2)_"^"_$S($P(RX2,"^",15):"(R)",1:""),FILLS=+$P(HIEN,"^",9)
 F II=0:0 S II=$O(^PSRX(RX,1,II)) Q:'II  S FILL(9999999-^PSRX(RX,1,II,0))=+^PSRX(RX,1,II,0)_"^"_$S($P(^(0),"^",16):"(R)",1:"") S RFL=RFL+1
 Q
