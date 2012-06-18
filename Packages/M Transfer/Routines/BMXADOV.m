BMXADOV ; CIHA/CIHA/GIS - RPC CALL: GENERATE DATA FOR AN ADO DATASET 
 ;;4.0;BMX;;JUN 28, 2010
 ; 
 ; 
 ; 
 ; VSTG = VIEW STRING: SCHEMA NAME OR IEN~DAS~INDEX~START~STOP~MAX~FORMAT~TAG~ROUTINE~PARAM~JOIN
 ;  SCHEMA NAME/IEN: FROM THE BMX ADO SCHEMA FILE
 ;  DAS: THE DA STRING.  HIGHEST LEVEL IS FIRST, FOLLOWED BY SUBFILE IENS.  CAN BE CONVERTED TO AN 'IENS' STRING.
 ;   IF THE LAST ',' PIECE OF DAS IS DEFINED, THAT IS USED AS THE CURRENT STARTING SEED POINT FOR THE ITERATOR
 ;   THE NEXT INDEX VALUE AFTER THE SEED POINT WILL BE THE FIRST ENTRY SELECTED FOR THE CURRENT TRANSACTION
 ;  INDEX: THE INDEX THAT RUNS THE ITERATOR. IF NULL, THE ITERATOR WULL CYCLE BY IEN
 ;  START: STARTING LOOKUP VALUE IN THE OVERALL ITERATION (THE FIRST VALUE THAT CAN BE USED IN SPECIFIED INDEX)
 ;  STOP: THE LAST LOOKUP VALUE IN THE OVERALL ITERATION (THE LAST VALUE USED IN SPECIFIED INDEX)
 ;   START AND STOP MUST BE IN THE FORMAT (INTERNAL OR EXTERNAL) USED BY THE INDEX
 ;   IF THE INDEX IS ON A POINTER FIELD, AND POINTED TO FILED IS DINUMNED, THEN THE EXTERNAL VALUE CAN BE USED
 ;  MAX: MAXIMUM NUMBER OF ENTRIES REURNED IN THE TRANSACTION
 ;  FORMAT: RETURN INTERNAL OR EXTERNAL VALUES IN THE DATASET
 ;  TAG AND ROUTINE: ENTRY POINT FOR CUSTOM/COMPLEX ITERATION
 ;  PARAM: PARAMETER STRING PASSED TO THE ITERATOR ENTRY POINT.
 ;   ALSO USED WITH THE AA INDEX TO DEFINE PATIENT DFN, V FILE ATTRIBUTE TYPE AND SORT ORDER (C OR R)
 ;   E.G., 1|WT|R COULD BE PATIENT #1, MEASUREMENT TYPE="WEIGHT" AND REVERSE CHRONOLICAL PRESENTATION OF DATA 
 ;  JOIN: JOIN INSTRUCTIONS; E.G., ...~2,4,.04|2,5,.07|4,9,SUB"
 ; 
 ; 
VIEW(OUT,VSTG,TOT) ; EP-VIEW A DATA SET ; GATEWAY TO ALL ITERATORS
 ;
 ; DON'T CALL THIS EP UNLESS YOU WANT DATA RETURNED WITH THE SCHEMA!
 ; INPUT: VSTG AND THE TOTAL NUMBER OF NODES IN THE SCHEMA ARRAY
 ; OUTPUT: THE DATA NODES AND THE SEED (SEED IS STUFFED INTO 3RD PIECE OF INTRODUCTORY NODE OF SCHEMA ARRAY)
 ; RETURNS THE ADO DATASET IN THE ARRAY SPECIFIED BY 'OUT'
 ; THE SEED IS ALWAYS RETURNED IN 'LDA' REGARDLESS OF WHAT ITERATOR IS USED
 ; IF ITERATION IS COMPLETED THE SEED WILL HAVE A NULL VALUE
 ;
 ;
 ;
 N DAS,DA,IX,START,STOP,MAX,FMT,EP,IENS,OREF,CREF,FIEN,TAG,ROUTINE,X,Y,%,PARAM,NUM,FINFO,LIEN,LDA,LFILE,%DT,T
 S SIEN=+$G(VSTG) I SIEN,'$D(^BMXADO(SIEN,0)) S ERR="Invalid schema IEN" D ERR^BMXADO(ERR) Q
 I $G(TOT)<2 S ERR="Missing schema string" D ERR^BMXADO(ERR) Q  ; MUST HAVE A VALID SCHEMA STRING FOR EACH TRANSACTION
INIT ; INITIALIZE VARIABLES
 S T="~"
 S FIEN=$P(^BMXADO(SIEN,0),U,2) I '$D(^DD(FIEN,0)) S ERR="Invalid file number in schema file" D ERR^BMXADO(ERR) Q
 S DAS=$P(VSTG,T,2),IX=$P(VSTG,T,3)
 S START=$P(VSTG,T,4),STOP=$P(VSTG,T,5),MAX=$P(VSTG,T,6)
 I $L(START),$L(STOP),START,START=+START,STOP,STOP=+STOP
 S %=$T ; NUMERIC START AND STOP
 I %,START>STOP S ERR="Invalid start stop pair" D ERR^BMXADO(ERR) Q
 I '%,$L(START),$L(STOP),START]STOP S ERR="Invalid start stop pair" D ERR^BMXADO(ERR) Q
 I $L(MAX),(MAX'>0!(MAX'=MAX\1)) S ERR="Invalid MAX parameter" D ERR^BMXADO(ERR) Q
 S FMT=$P(VSTG,T,7),TAG=$P(VSTG,T,8),ROUTINE=$P(VSTG,T,9),PARAM=$P(VSTG,T,10),NUM=0
 I $L(TAG),'$L(ROUTINE) S ERR="Invalid EP info" D ERR^BMXADO(ERR) Q
 S EP=TAG_U_ROUTINE I EP=U S EP=""
 I $L(EP) X ("S %=$L($T("_EP_"))") I '% S ERR="Invalid EP info" D ERR^BMXADO(ERR) Q
 I FMT='"I" S FMT=""
 I MAX="" S MAX=100
 I $G(JOIN) S MAX=999999999 ; MAX IS UNLIMITED FOR SECONDARY DATA SETS DURING JOINS
 S IENS=$$IENS(DAS) ; CONVERT DA STRING TO IEN STRING ; DAS AND IENS MUST BE AVAILABLE TO ALL ITERATORS
 S OREF=$$ROOT^DILFD(FIEN,IENS) I '$L(OREF) S ERR="Unable to generate a vaild open reference" D ERR^BMXADO(ERR) Q
 S CREF=$$CREF^DILF(OREF) I '$L(CREF) S ERR="Unable to generate a vaild closed reference" D ERR^BMXADO(ERR) Q
DATA ; GET DATA
SPEC I $L(EP) D  Q  ; SPECIAL CASE: USE CUSTOM ITERATOR
 . I '$G(LDA) S LDA=""
 . X ("S LDA=$$"_EP_"(PARAM,IENS,MAX,.OUT,.TOT)")
 . D SEED(LDA)
 . Q
 I IX="" S LDA=$$NUMIT^BMXADOV1(+$G(DA)) D SEED(LDA) Q  ; NO INDEX USED: ITERATE IN IEN ORDER
 I IX="AA",FIEN=9000013!(FIEN=9000019) S IX="AC" ; 'AA' ITERATION UNNECESSARY FOR SOME FILES. BETTER TO USE 'AC'
 I '$L($O(@CREF@(IX,""))) Q  ; NO INDEXED DATA AVAILABLE, SO QUIT NOW
 I IX="AA" D  Q  ; SPECIAL CASE:  AA INDEX
 . I FIEN=9000011 S LDA=$$AAP^BMXADOV1 Q  ; THE AA INDEX FOR 'PROBLEMS'; LDA ALWAYS NULL
 . S LDA=$$AA^BMXADOV1 D SEED(LDA) ; THE VISIT/V-FILE AA INDEX
 . Q
 S FINFO=$$IXFLD(FIEN,IX) I FINFO="" Q  ; FILE INFO: IX FIELD NUMBER, TYPE, AND DINUM SUBTYPE
 I $P(FINFO,U,2)="D" D  ; PREP FOR DATE INDEX LOOKUP
 . I $L(START) S X=START D ^%DT S START=+Y
 . I $L(STOP) S X=STOP D ^%DT S STOP=+Y
 . Q
 I $P(FINFO,U,2)="P",$E(START)="`" D  Q  ; SPECIAL CASE: SHORTCUT TO POINTER LOOKUP FOR A SINGLE, SPECIFIC IEN.
 . S LIEN=+$E(START,2,99)
 . S LDA=$$LOOK^BMXADOV1(LIEN)
 . D SEED(LDA)
 . Q
 I $P(FINFO,U,4) S LFILE=$P(FINFO,U,3) I LFILE D  Q  ; SPECIAL CASE: DINUM -> TEXT LOOKUP.
 . S LDA=$$LOOK2^BMXADOV1(LFILE)
 . D SEED(LDA)
 . Q
 S LDA=$$LOOK1^BMXADOV1 ; STD INDEX LOOKUP: START FROM SCRATCH
 D SEED(LDA) ; CAPTURE RE-ENTRY SEED
 Q
 ; 
SEED(LDA) ; UPDATE THE SCHEMA STRING WITH THE SEED PARAMETER
 N X,Y
 S X=@OUT@(1)
 S Y=$P(X,U)
 S $P(Y,"|",3)=LDA
 S $P(X,U,1)=Y
 S @OUT@(1)=X
 Q
 ;
IENS(DAS) ;EP - CONVERT DAS STRING TO IENS STRING
 N I,L,IENS
 S DAS=$G(DAS)
 S DAS=$TR(DAS,"+","")
 S DAS=$TR(DAS,"-","")
 I '$L(DAS) Q ","
 I DAS="," S DAS=""
 S L=$L(DAS,C)
 S IENS=""
 F I=L:-1:1 S IENS=IENS_$P(DAS,C,I)_C
 Q IENS
 ;
IXFLD(FIEN,IX) ;EP - GIVEN AN FILE NUMMER AND INDEX NAME, RETURIN THE FIELD NUMBER, TYPE, AND DINUM SUBTYPE
 N FLD,TYPES,T,X,I
 I '$G(FIEN) Q ""
 I '$L($G(IX)) Q ""
 S FLD=$O(^DD(FIEN,0,"IX",IX,FIEN,0))
 I 'FLD Q FLD
 S TYPES="DNSFWCPVM",T=$P($G(^DD(FIEN,FLD,0)),U,2)
 F I=1:1 S X=$E(TYPES,I) Q:'$L(X)  I T[X Q
 I X="P" S X=X_U_+$P(T,"P",2) I $P(^DD(FIEN,FLD,0),U,5)["DINUM" S X=X_U_1
 S FLD=FLD_U_X
 Q FLD
 ; 
