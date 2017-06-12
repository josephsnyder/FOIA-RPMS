BDWBHL1 ; IHS/CMI/LAB - BDW Populate Various DW1 HL7 Segments ;
 ;;1.0;IHS DATA WAREHOUSE;**2,4**;JAN 23, 2006;Build 24
 ;       
 ;
BULL ;EP - called from BDWBHL to send bulletin
 NEW XMSUB,XMDUZ,XMTEXT,XMY,BDWC,BDWBUL
 KILL BDWBUL
 S XMY(BDWUSER)=""
 D WRITEMSG
SUBJECT S XMSUB="* DATA WAREHOUSE PROCESSING COMPLETE *"
SENDER S XMDUZ="Data Warehouse Export System"
 S XMTEXT="BDWBUL("
 D ^XMD
 KILL BDWBUL
 Q
 ;
WRITEMSG ;
 S BDWC=0
 S X="*********** DATA WAREHOUSE EXPORT SYSTEM *************" D SET
 S X="This message is to inform you that the process has completed" D SET
 S X="and the file has been written to the export directory for" D SET
 S X=BDWDESC D SET
 S X=" " D SET
 I $G(BDWSFLG) D
 .S X="The autoftp to the data warehouse FAILED." D SET
 .S X="You will need to manually ftp the file named "_BDWPAFN D SET
 .S X="to the data warehouse." D SET
 Q
 ;;  
SET ;
 S BDWC=BDWC+1
 S BDWBUL(BDWC)=X
 Q
RESETFLG(BDW1DEST,BDW1LOG,BDW1PIEN) ;EP
 ;loop through all messages in ^BDWTMP
 ;if it is a reg message then reset flags in ZRB, ZRL, ZRC, ZRD, ZIN as stored in log
 NEW BDWX,BDWM,BDWZ,BDWY
 S BDWX=0 F  S BDWX=$O(^BDWXLOG(BDWPIEN,41,BDWX))  Q:BDWX'=+BDWX  D
 .S BDWM=$P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,7)
 .Q:BDWM=""
 .S BDWM=$O(^INTHU("AT",BDWM,0))
 .Q:'BDWM
 .Q:'$D(^INTHU(BDWM,0))
 .S BDWY=0 F  S BDWY=$O(^INTHU(BDWM,3,BDWY)) Q:BDWY'=+BDWY  D
 ..I $P(^INTHU(BDWM,3,BDWY,0),"|")="ZRB" S $P(^INTHU(BDWM,3,BDWY,0),"|",4)=$P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,8) I $P(^INTHU(BDWM,3,BDWY,0),"|",2)="" S $P(^INTHU(BDWM,3,BDWY,0),"|",2)=$$DATE^INHUT($P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,2),1)
 ..I $P(^INTHU(BDWM,3,BDWY,0),"|")="ZRL" S $P(^INTHU(BDWM,3,BDWY,0),"|",4)=$P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,9) I $P(^INTHU(BDWM,3,BDWY,0),"|",2)="" S $P(^INTHU(BDWM,3,BDWY,0),"|",2)=$$DATE^INHUT($P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,4),1)
 ..I $P(^INTHU(BDWM,3,BDWY,0),"|")="ZRC" S $P(^INTHU(BDWM,3,BDWY,0),"|",4)=$P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,10) I $P(^INTHU(BDWM,3,BDWY,0),"|",2)="" S $P(^INTHU(BDWM,3,BDWY,0),"|",2)=$$DATE^INHUT($P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,5),1)
 ..I $P(^INTHU(BDWM,3,BDWY,0),"|")="ZRD" S $P(^INTHU(BDWM,3,BDWY,0),"|",4)=$P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,11) I $P(^INTHU(BDWM,3,BDWY,0),"|",2)="" S $P(^INTHU(BDWM,3,BDWY,0),"|",2)=$$DATE^INHUT($P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,3),1)
 ..I $P(^INTHU(BDWM,3,BDWY,0),"|")="ZIN" S $P(^INTHU(BDWM,3,BDWY,0),"|",4)=$P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,12) I $P(^INTHU(BDWM,3,BDWY,0),"|",2)="" S $P(^INTHU(BDWM,3,BDWY,0),"|",2)=$$DATE^INHUT($P(^BDWXLOG(BDWPIEN,41,BDWX,0),U,6),1)
 ..Q
 .Q
 Q
 ;
 ;
AUTOSEND ;EP
 S BDWSFLG=$$SENDTO1^ZISHMSMU("DATA WAREHOUSE SEND",BDWPAFN)
 S BDWSFLG(1)=$P(BDWSFLG,"^",2)
 S BDWSFLG=+BDWSFLG
 Q:$D(ZTQUEUED)
 I BDWSFLG'=0 D
 . W:'$D(ZTQUEUED) !,"DW HL7 file was NOT successfully transferred to the data warehouse",!,"you will need to manually ftp it.",!
 . W:'$D(ZTQUEUED) !,BDWSFLG(1),!!
 ;
 Q
SKT ;EP
 K SKT
 ;S BDWCNT=0
 D ST^BDWUTIL1(.SKT,BHLVIEN)
 S BDWDA=0 F  S BDWDA=$O(SKT(BDWDA)) Q:'BDWDA  D
 . S BDWDATA=$G(SKT(BDWDA))
 . S BDWCNT=BDWCNT+1
 . S INDA("SKT",BDWCNT)=""
 . S INA("BDW1SKT1",BDWCNT)=BDWCNT
 . S INA("BDW1SKT2",BDWCNT)="SKT"
 . S INA("BDW1SKT3",BDWCNT)=$P(BDWDATA,U)
 . S INA("BDW1SKT5",BDWCNT)=$P(BDWDATA,U,2)_U_$P(BDWDATA,U,3)
 K BDWDA,BDWDATA,PED
 Q
IFC ;EP p5 ALPMR
 K IFC
 ;S BDWCNT=0
 D IFC^BDWUTIL1(.IFC,BHLVIEN)
 S BDWDA=0 F  S BDWDA=$O(IFC(BDWDA)) Q:'BDWDA  D
 . S BDWDATA=$G(IFC(BDWDA))
 . S BDWCNT=BDWCNT+1
 . S INDA("IFC",BDWCNT)=""
 . S INA("BDW1IFC1",BDWCNT)=BDWCNT
 . S INA("BDW1IFC2",BDWCNT)="IFC"
 . ;S INA("BDW1IFC3",BDWCNT)=$P(BDWDATA,U)
 . S INA("BDW1IFC5",BDWCNT)=$P(BDWDATA,U)_"^"_$P(BDWDATA,U,2)
 K BDWDA,BDWDATA,PED
 Q
PED ;EP
 K PED
 ;S BDWCNT=0
 D PED^BDWUTIL(.PED,BHLVIEN)
 S BDWDA=0 F  S BDWDA=$O(PED(BDWDA)) Q:'BDWDA  D
 . S BDWDATA=$G(PED(BDWDA))
 . S BDWCNT=BDWCNT+1
 . S INDA("PED",BDWCNT)=""
 . S INA("BDW1PED1",BDWCNT)=BDWCNT
 . S INA("BDW1PED2",BDWCNT)="PED"
 . S INA("BDW1PED3",BDWCNT)=$P(BDWDATA,U)
 . S INA("BDW1PED5",BDWCNT)=$P(BDWDATA,U,2)
 . S INA("BDW1PED13",BDWCNT)=$P(BDWDATA,U,3)
 K BDWDA,BDWDATA,PED
 Q
 ;
LAB ;EP
 K LAB
 ;S BDWCNT=0
 D LAB^BDWUTIL(.LAB,BHLVIEN)
 S BDWDA=0 F  S BDWDA=$O(LAB(BDWDA)) Q:'BDWDA  D
 . S BDWDATA=$G(LAB(BDWDA))
 . S BDWCNT=BDWCNT+1
 . S INDA("LAB",BDWCNT)=""
 . S INA("BDW1LAB1",BDWCNT)=BDWCNT
 . S INA("BDW1LAB2",BDWCNT)="LAB"
 . S INA("BDW1LAB3",BDWCNT)=$P(BDWDATA,U)_U_$P(BDWDATA,U,2)
 . S INA("BDW1LAB5",BDWCNT)=$P(BDWDATA,U,3)
 . S INA("BDW1LAB6",BDWCNT)=$P(BDWDATA,U,4)
 . S INA("BDW1LAB7",BDWCNT)=$P(BDWDATA,U,5)_U_$P(BDWDATA,U,6)
 K BDWDA,BDWDATA,LAB
 Q
CPT ;EP
 K CPT,AUPNCPT
 ;S BDWCNT=0
 D CPT^BDWUTIL(.CPT,BHLVIEN)
 S BDWDA=0 F  S BDWDA=$O(CPT(BDWDA)) Q:'BDWDA  D
 . S BDWDATA=$G(CPT(BDWDA))
 . S BDWCNT=BDWCNT+1
 . S INDA("CPT",BDWCNT)=""
 . S INA("BDW1CPT1",BDWCNT)=BDWCNT
 . S INA("BDW1CPT2",BDWCNT)="CPT"
 . S INA("BDW1CPT3",BDWCNT)=$P(BDWDATA,U)
 . S INA("BDW1CPT5",BDWCNT)=$P(BDWDATA,U,2)
 . S INA("BDW1CPT13",BDWCNT)=$TR($P(BDWDATA,U,3),"!","^")
 K BDWDA,BDWDATA,CPT
 Q
 ;
XAM ;EP
 K XAM
 ;S BDWCNT=0
 D EXAM^BDWUTIL(.XAM,BHLVIEN)
 S BDWDA=0 F  S BDWDA=$O(XAM(BDWDA)) Q:'BDWDA  D
 . S BDWDATA=$G(XAM(BDWDA))
 . S BDWCNT=BDWCNT+1
 . S INDA("XAM",BDWCNT)=""
 . S INA("BDW1XAM1",BDWCNT)=BDWCNT
 . S INA("BDW1XAM2",BDWCNT)="XAM"
 . S INA("BDW1XAM3",BDWCNT)=$P(BDWDATA,U)
 K BDWDA,BDWDATA,XAM
 Q
 ;
MSR ;EP
 K MSR
 ;S BDWCNT=0
 D MEAS^BDWUTIL(.MSR,BHLVIEN)
 S BDWDA=0 F  S BDWDA=$O(MSR(BDWDA)) Q:'BDWDA  D
 . S BDWDATA=$G(MSR(BDWDA))
 . S BDWCNT=BDWCNT+1
 . S INDA("MSR",BDWCNT)=""
 . S INA("BDW1MSR1",BDWCNT)=BDWCNT
 . S INA("BDW1MSR2",BDWCNT)="MSR"
 . S INA("BDW1MSR3",BDWCNT)=$P(BDWDATA,U)
 . S INA("BDW1MSR5",BDWCNT)=$P(BDWDATA,U,2)
 K BDWDA,BDWDATA,MSR
 Q
HF ;EP
 K HEF
 S BDWCNT=0
 D MC^BDWUTIL1(.HEF,BHLVIEN)
 S BDWDA=0 F  S BDWDA=$O(HEF(BDWDA)) Q:'BDWDA  D
 . S BDWDATA=$G(HEF(BDWDA))
 . S BDWCNT=BDWCNT+1
 . S INDA("HEF",BDWCNT)=""
 . S INA("BDW1HEF1",BDWCNT)=BDWCNT
 . S INA("BDW1HEF2",BDWCNT)="HF"
 . S INA("BDW1HEF3",BDWCNT)=$P(BDWDATA,U,3)_U_$P(BDWDATA,U,2)
 . S INA("BDW1HEF4",BDWCNT)=$P(BDWDATA,U,5)_U_$P(BDWDATA,U,4)
 K BDWDA,BDWDATA,HEF
 Q
 ;
ZIM ;EP - populate the dw1 ZIM segment
 K IMM
 S BDWCNT=0
 D IMM^BDWUTIL1(.IMM,BHLVIEN)
 S BDWDA=0 F  S BDWDA=$O(IMM(BDWDA)) Q:'BDWDA  D
 . S BDWDATA=$G(IMM(BDWDA))
 . S BDWCNT=BDWCNT+1
 . S INDA("ZIM",BDWCNT)=""
 . S INA("BDW1ZIM1",BDWCNT)=BDWCNT
 . S INA("BDW1ZIM2",BDWCNT)=$P(BDWDATA,U,3)  ;cmi/anch/maw 3/25/2008 for CVX codeset
 . S INA("BDW1ZIM3",BDWCNT)=$P(BDWDATA,U,2)
 . ;S INA("BDW1ZIM4",BDWCNT)=$P(BDWDATA,U,3)  ;cmi/anch/maw 4/16/2008 no longer wanted per Lisa Hunt email
 . S INA("BDW1ZIM5",BDWCNT)=$P(BDWDATA,U,4)
 . S INA("BDW1ZIM6",BDWCNT)=$P(BDWDATA,U,5)
 K BDWCNT,BDWDA,BDWDATA,IMM
 Q
 ;
DW1ALPMR(BHLPAT) ;-- generate an A08 for dw1 alpmr patient centric
 I 'BHLPAT Q $$MSG^BHLEVENT("PAT")
 S INDA=BHLPAT
 I $G(INA) S INA("BACKLOAD")=1
 D ^INHF("HL IHS DW1ALPMR A08 OUT PARENT",.INDA,.INA)
 D EOJ^BHLEVENT
 Q $P($$MSG^BHLEVENT(INHF),U)
 ;
