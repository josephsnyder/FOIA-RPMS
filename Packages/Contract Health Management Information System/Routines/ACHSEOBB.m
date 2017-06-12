ACHSEOBB ; IHS/ITSC/TPF/PMF - PROCESS EOBRS (2/6) CONTINUATION ;    
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**21,22,23**;JUN 11, 2001;Build 37
 ;ACHS*3.1*22;FIXED SCC IN B RECORD;CHANGES FOR ALLOWING PROCESS OF ICD9 FILE FIX
 ;
 ; ACHS*3.1*23 9.19.13 IHS.OIT.FCJ CHANGED TO CHECK FOR RECORD "J" ICD-10 RECORDS
 ; ACHS*3.1*23 9.19.13 IHS.OIT.FCJ ADDED J REC, MODS TO G REC FIXED H REC
 ;
M1 ;EP
 ;
 ;IF CAME IN THRU OPTION ACHSFEOBR THEN PRINT CANCEL DOCUMENTS
 I ACHSISAO,$$AOP^ACHS(2,6)="Y" D ^ACHSEOB2
 ;
 ;IF 'UPDATE DOCUMENT FROM EOBR' = YES THEN CALL UPDATE DOCUMENT
 ;DOES THIS REALLY SWITCH DUZ(2)'S - yes it does.  pmf
 I 'ACHSISAO,$$PARM^ACHS(2,15)="Y" S ACHSDUZ2=DUZ(2) D ^ACHSEOB3 S ACHSYAYA=19,DUZ(2)=ACHSDUZ2 D ^ACHSUF K ACHSYAYA
 ;
 ;I 'PRINT EOBR'S' = YES PRINT EOBR SUMMARY REPORT
 ;I 'ACHSISAO,$$PARM^ACHS(2,14)="Y" D ^ACHSEOB2  ;ACHS*3.1*21
 ;
 ;A= HEADING A    H=SUMMARY
 I $E(ACHSEOBR,19)'="A"!$E(ACHSEOBR,19)'="H"!$E(ACHSEOBR,1,2)'="**" G M1A
 U IO(0)
 ;IF CHAR 19 NOT EQUAL TO 'A' OR 'H' OR FIRST TWO CHARS NOT '**' THEN ERROR?????? 
 W *7,*7,!!,"LAST RECORD READ WAS OUT OF SEQUENCE",!!,"CONTACT YOUR SITEMANAGER - SEE ^ACHSEOBR(""SEQ-ERROR"").",!!
 S ^ACHSEOBR("SEQ-ERROR")=ACHSEOBR,ACHSTERR=5    ;CHAR 19 ERROR
 Q
 ;
M1A ;
 I $G(ACHSEOBR("A",12))'="" D
 .S ^ACHSEOBR("P",$E(ACHSEOBR("A",12),2,12),ACHSCTR(1))=ACHSZFPT
 .S ACHSOLD=$E(ACHSEOBR,1,18)
 .S X=ACHSEOBR
 K ^TMP("ACHSEOB",$J),ACHSEOBR,ACHSERRE
 S ACHSEOBR=X
 Q
 ;
REC ;EP
 I $L(ACHSEOBR)<80 S ACHSEOBR=ACHSEOBR_$J("",80-$L(ACHSEOBR))
 ;I "ABCDEFGHI"'[$E(ACHSEOBR,19) U IO(0) W *7,!,"A Record was found that was not type 'A' thru 'I'.",!,"'",ACHSEOBR,"'" S ACHSTERR=10 Q
 I "ABCDEFGHIJ"'[$E(ACHSEOBR,19) U IO(0) W *7,!,"A Record was found that was not type 'A' thru 'J'.",!,"'",ACHSEOBR,"'" S ACHSTERR=10 Q  ;ACHS*3.1*23
 ;
PRT ;EP - From EOBR Error Report.
 ;DETAIL RECORD
 I $E(ACHSEOBR,19)="F" D REC1 S ^TMP("ACHSEOB",$J,"F",+$E(ACHSEOBR,20,22))=ACHSEOBR D GBLD^ACHSEOB1 Q
 ;
 ;PROCEDURES RECORD
 I $E(ACHSEOBR,19)="G" S ^TMP("ACHSEOB",$J,"G",+$E(ACHSEOBR,20,22))=$E(ACHSEOBR,23,65) Q
 ;
REC1 ;EP - Set values of EOBR being processed into local array.
 D REC2(ACHSEOBR,.ACHSEOBR)
 S ACHSREJ=$S($D(ACHSEOBR("E")):"E",$D(ACHSEOBR("J")):"J",1:"")   ;ACHS*3.1*23
 Q
 ;NEW SECTION OF CODE
REC2(ACHSREC,ACHSARRY) ;EP - DIVIDE A RECORD INTO ITS RESPECTIVE FIELDS
 ;
 N ACHS,ACHSRT,ACHSRL
 S ACHSRT=$E(ACHSREC,19)
 I ACHSRT="C",$E(ACHSREC,20,22)="002" S ACHSRT="CA"
 I ACHSRT="H",$E(ACHSREC,20,22)="002" S ACHSRT="HA"    ;ACHS*3.1*21
 I ACHSRT="G",$$PARM^ACHS(0,17),DT>($$PARM^ACHS(0,17)-1) S ACHSRT="G1"  ;ACHS*3.1*23
 I ACHSRT="E",$$PARM^ACHS(0,17),DT>($$PARM^ACHS(0,17)-1) S ACHSRT="E1"  ;ACHS*3.1*23
 I ACHSRT="E",$P($G(ACHSMEDA),".",2)="ICD" S ACHSRT="E1"  ;ACHS*3.1*22 USE E1 ICD-CODE W DEC
 S ACHSRL=$T(@ACHSRT)
 ;ACHS*3.1*23 NEW SECTION FOR PROCESSING "J" RECORD
 I ACHSRT="J" D
 .S ACHSRJCT=+$E(ACHSREC,20,22),ACHSEDXT=ACHSRJCT*3  ;TOTAL DX
 .F ACHS=2:1 S X=$P(ACHSRL,";;",ACHS) Q:X=""  D
 ..D SIGN^ACHSEOB1:$P(X,".",4)="S"
 ..I ((ACHS=15)!(ACHS=16)!(ACHS=17))&(ACHSRJCT>1) D  Q
 ...S ACHSARRY(ACHSRT,$P(X+ACHSEDXT,"."))=$E(ACHSREC,$P(X,".",2),$P(X,".",3))
 ..S ACHSARRY(ACHSRT,$P(X,"."))=$E(ACHSREC,$P(X,".",2),$P(X,".",3))
 ;REPLACED NXT 3 LINES WITH $S
 ;I ACHSRT="CA" S ACHSRT="C"
 ;I ACHSRT="HA" S ACHSRT="H"    ;ACHS*3.1*21
 ;I ACHSRT="E1" S ACHSRT="E"    ;ACHS*3.1*22 RESET VAR TO E
 S ACHSRT=$S(ACHSRT="CA":"C",ACHSRT="HA":"H",ACHSRT="E1":"E",ACHSRT="G1":"G",1:ACHSRT)
 F ACHS=2:1 S X=$P(ACHSRL,";;",ACHS) Q:X=""  D SIGN^ACHSEOB1:$P(X,".",4)="S" S ACHSARRY(ACHSRT,$P(X,"."))=$E(ACHSREC,$P(X,".",2),$P(X,".",3))
 Q
 ;
 ; fld# . start_position . end_position . Sign ; See Tech Manual for rec layout
 ;         Y2K changes
 ;         TAG A CH: 11.46.51 TO 11.46.53 (CCYYMMDD)
 ;               CH: 12.52.63 TO 12.54.65 -- SHIFTED
 ;               CH: 13.64.70 TO 13.66.72 -- SHIFTED
 ;               CH: 14.71.76 TO 14.73.78 -- SHIFTED
 ;               CH: 15.77.78 TO 15.79.80 -- SHIFTED
A ;;1.1.2;;2.3.4;;3.5.6;;4.7.8;;5.9.18;;8.23.31;;9.32.38;;10.39.45;;11.46.53;;12.54.65;;13.66.72;;14.73.78;;15.79.80
 ;
 ;      TAG B RECORD CHANGED  ACHS*3.1*22
 ;      13.73.74;;14.75.78 TO 14.71.76
B ;;8.23.52;;9.53.59;;10.60.67;;11.68.69;;12.70.72;;14.73.76
 ;
 ;                Y2K changes
 ;          TAG C CH: 14.56.61 DROPPED
 ;                CH: 15.62.67 DROPPED
 ;                CH: 16.68.80 TO 16.56.68
C ;;8.23.38;;9.39.42;;10.43.43;;11.44.44;;12.45.54;;13.55.55;;16.56.68
 ;
CA ;;14.23.30;;15.31.38
 ;
D ;;8.23.52;;9.53.61.S;;10.62.70.S;;11.71.79.S
 ;
E ;;8.23.31.S;;9.32.32;;10.33.41.S;;11.42.50.S;;12.51.55;;13.56.60;;14.61.65;;15.66.70;;16.71.75
 ;ACHS*3.1*22 NEW E1 LINE TO READ IN DX CODE WITH DECIMAL USED FOR ICD9 FX
 ;               CH: 12.51.55 to 12.51.56 -- SHIFTED
 ;               CH: 13.56.60 to 13.57.62 -- SHIFTED
 ;               CH: 14.61.65 to 14.63.68 -- SHIFTED
 ;               CH: 15.66.70 to 15.69.74 -- SHIFTED
 ;               CH: 16.71.75 to 16.75.80 -- SHIFTED
E1 ;;8.23.31.S;;9.32.32;;10.33.41.S;;11.42.50.S;;12.51.56;;13.57.62;;14.63.68;;15.69.74;;16.75.80
 ;
 ;              Y2K changes
 ;        TAG F ADD: 7.20.22
 ;               CH: 8.23.28 TO 8.23.30 (CCYYMMDD)
 ;               CH: 9.29.34 TO 9.31.38 (CCYYMMDD)
 ;               CH: 10.35.39 TO 10.39.43 -- SHIFTED
 ;               CH: 11.40.42 TO 11.44.46 -- SHIFTED
 ;               CH: 12.43.51 TO 12.47.55 -- SHIFTED
 ;               CH: 13.52.60 TO 13.56.64 -- SHIFTED
 ;               CH: 14.61.64 TO 14.65.68 -- SHIFTED
 ;               CH: 15.65.66 TO 15.69.70 -- SHIFTED
 ;               CH: 16.67.71 TO 16.71.75 -- SHIFTED
F ;;7.20.22;;8.23.30;;9.31.38;;10.39.43;;11.44.46;;12.47.55.S;;13.56.64.S;;14.65.68;;15.69.70;;16.71.75
 ;
G ;;8.23.26;;9.27.30;;10.31.34
 ;
 ;ACHS*3.1*23 CHANGE TO THIS FOR ICD-10 
G1 ;;8.23.29;;9.30.36;;10.37.43;11.44.50;12.51.57 
 ;
 ;          Y2K chsnges
 ;          TAG H CH: 9.29.34  DROPPED
 ;                CH: 10.35.40 DROPPED
 ;               ADD: 16.66.70
H ;;1.1.2;;2.3.4;;4.7.8;;8.23.28;;11.41.45;;12.46.50;;13.51.55;;14.56.65.S;;16.66.70;;15.71.80.S
 ;
HA ;;9.23.30;;10.31.38
I ;;8.23.29;;9.30.33;;10.34.38.S;;11.39.41;;12.42.50.S;;13.51.56.S;;14.57.66.S
 ;
 ;ACHS*3.1*23 NEW J DX RECORD FOR ICD-10
J ;;8.23.31.S;;9.32.32;;10.33.41.S;;11.42.50.S;;12.51.58;;13.59.66;;14.67.74
 ;
 ;
AREA ;EP - Update Area parameter file after processing FI EOBR file.
 S:'$D(^ACHSAOP(DUZ(2),17,0)) ^ACHSAOP(DUZ(2),17,0)=$$ZEROTH^ACHS(9002079,17)
 S DIC="^ACHSAOP("_DUZ(2)_",17,",DA(1)=DUZ(2),DIC(0)="LMN",X=ACHSEOBD,DINUM=X
 K DD,DO D FILE^DICN
 I +Y<1 U IO(0) W !,*7,"UNABLE TO POST EOBR PROCESS DATE - NOTIFY SUPERVISOR",!,$$DIR^XBDIR("E","Enter <RETURN> to Continue")
 S $P(^ACHSAOP(DUZ(2),2),U,11)=ACHSEOBD
 ;S $P(^ACHSAOP(DUZ(2),2),U,9)=+$P(ACHSUFLS(ACHSFILE),U,5)  ;ACHS*3.1*22
 S:+ACHSAOSQ'=0 $P(^ACHSAOP(DUZ(2),2),U,9)=+$P(ACHSUFLS(ACHSFILE),U,5)  ;ACHS*3.1*22;DO NOT SET IF ICD9 FILE
 S:+$P(^ACHSAOP(DUZ(2),2),U,9)=999 $P(^ACHSF(DUZ(2),2),U,9)=0
 S:ACHSMCNT>0 $P(^ACHSAOP(DUZ(2),2),U,10)=DT
 Q:'$L($$AOP^ACHS(2,7))
 I $$MV^%ZISH($$AOP^ACHS(2,1),ACHSMEDA,$$AOP^ACHS(2,7),ACHSMEDA) W !,*7,"Archive of '",$$AOP^ACHS(2,1),ACHSMEDA,"' to '",$$AOP^ACHS(2,7),ACHSMEDA,"' failed..." I 1
 E  W !,"'",$$AOP^ACHS(2,1),ACHSMEDA,"' Archived to '",$$AOP^ACHS(2,7),ACHSMEDA,"'"
 S ACHSISAC=1  ;ACHS*3.1*21 ADDED VAR FOR CONTINUING TO SPLIT OUT
 Q
 ;
FAC ;EP - Update CHS FACILITY with EOB Seq # and Process date.
 S:'$D(^ACHSF(DUZ(2),17,0)) ^ACHSF(DUZ(2),17,0)=$$ZEROTH^ACHS(9002080,17)
 S DIC="^ACHSF("_DUZ(2)_",17,",DIC(0)="LMN",DA(1)=DUZ(2),X=ACHSEOBD,DINUM=X
 K DD,DO D FILE^DICN
 S $P(^ACHSF(DUZ(2),2),U,21)=ACHSSEQN
 Q
 ;
FACSRCH ;EP
 K ACHSUFLS
 I $$LIST^%ZISH($$IM^ACHS,ACHSMEDA_"*",.ACHSUFLS) G ABEND^ACHSEOB
 Q:'$O(ACHSUFLS(0))
 S ACHSUFLS=0
C01 ;
 S ACHSUFLS=$O(ACHSUFLS(ACHSUFLS))
 G C0END:+ACHSUFLS=0
 S Y=ACHSUFLS(ACHSUFLS)
 I $$OS^ACHS=1,Y[".z" D
 .S ACHSHCMD="unpack "_$$IM^ACHS_Y
 .;
 .;IHS/ITSC/PMF  1/12/01  change call of vendor routine to call
 .;of routine in our namespace.
 .S ACHSRTCD=$$TERMINAL^ACHSHCMD(ACHSHCMD)
 .;
 .S ACHSUFLS(ACHSUFLS)=$P(Y,".z",1)
 .Q
 ;
 I $$OS^ACHS=1,Y[".Z" D
 .S ACHSHCMD="uncompress "_$$IM^ACHS_Y
 .;
 .;IHS/ITSC/PMF  1/12/01  change call of vendor routine to call
 .;of routine in our namespace.
 .S ACHSRTCD=$$TERMINAL^ACHSHCMD(ACHSHCMD)
 .;
 .S ACHSUFLS(ACHSUFLS)=$P(Y,".Z",1)
 ;
 I $$OPEN^%ZISH($$IM^ACHS,ACHSUFLS(ACHSUFLS),"R") G ABEND^ACHSEOB
 U IO
 R X:DTIME     ;SAC-FILE READ
 E  G ABEND^ACHSEOB
 D ^%ZISC
 I $E(X,1,2)'="$$" S $P(ACHSUFLS(ACHSUFLS)," ",5)="BAD" G C01
 S ACHSUFLS(ACHSUFLS)=ACHSUFLS(ACHSUFLS)_" "_$P(X,"$$",2)
 G C01
 ;
C0END ;
 S IONOFF=""
 D ^%ZISC
 D FILDEL^ACHSEOBC
C1 ;
 U IO(0)
 W !!," Files Available for Processing are Listed Below:",!?40,"Last Fac Seq # Processed = ",$J($$PARM^ACHS(2,21),5)
 W !!?5,"Number",?15,"File Name",?45,"EOBR Proc Date",?65,"Fac Seq #",!?5,"------",?15,"----------------",?45,"--------------",?65,"---------"
 S (ACHSI,ACHSJ,ACHSII)=0
C2 ;
 S ACHSII=$O(ACHSUFLS("C",ACHSII))
 G C5:+ACHSII=0
 S ACHSI=0
C3 ;
 S ACHSI=$O(ACHSUFLS("C",ACHSII,ACHSI))
 G C2:+ACHSI=0
 S ACHSJ=ACHSJ+1,ACHSK(ACHSJ)=ACHSI
 U IO(0)
 W !?5,$J(ACHSJ,3),?15,$P(ACHSUFLS(ACHSK(ACHSJ))," ",1),?45,$$FMTE^XLFDT($P(ACHSUFLS(ACHSK(ACHSJ))," ",2)),?67,$J(+$P(ACHSUFLS(ACHSK(ACHSJ))," ",3),5)
 G C3
 ;
C5 ;
 Q
 ;
KILL ;EP
 ;ACHS*3.1*21 REMOVED ACHSISAO
 K %MT,ACHSDIEN,ACHSCTR,ACHSDA,ACHSDERR,ACHSDOCR,ACHSDUZ2,ACHSEOBR,ACHSEOIO,ACHSMSG,ACHSOLD,ACHSTERR,ACHSTDA,DX,DY,ACHSMEDA,ACHSMEDY,ACHSSUF
 K ACHSDATE,ACHSDELD,ACHSDSAV,ACHSEBET,ACHSEOBD,ACHSERDT,ACHSERPT,ACHSERR,ACHSERRC,ACHSFILE,ACHSFNAM,ACHSFSIZ,ACHSHCMD
 K ACHSHFS1,ACHSI,ACHSII,ACHSISEQ,ACHSLCTR,ACHSLEOB,ACHSLMT,ACHSMCNT,ACHSMFLG,ACHSMSEQ,ACHSOMSG,ACHSPDT,ACHSPG,ACHSQUIT,ACHSR,ACHSRCT,ACHSRDAT,ACHSRPT,ACHSRR,ACHSSEL,ACHSTIME,ACHSUFLS
 K ACHSXX,ACHSZ3,ACHSZFCT,ACHSZFLC,ACHSZFNM,ACHSZFPT,ACHSZRC,ACHSZZ,DIC,DIR,X,Y,Z,X1,X2,ACHSZDEV,ACHSZFN,ACHSZFO,ACHSZIN,ACHSZZA
 K ACHSSEQN,ACHSEDXT
 K ^ACHSUSE("EOBR")
 Q
 ;
