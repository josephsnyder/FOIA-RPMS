ACRFPRNT ;IHS/OIRM/DSD/THL,AEF - PRINT AUTHORIZED REQUESTS;  [ 05/07/2007  3:39 PM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**3,20,22**;NOV 05, 2001
 ;;ROUTINE WHICH QUEUES SIGNED DOCUMENTS TO BE PRINTED AUTOMATICALLY
EN ;EP;TO PRINT REQUEST IN PROCUREMENT OFFICE ONCE APPROVED
 Q:$P(^ACRDOC(ACRDOCDA,0),U,4)=35
 K ACRX,ACRJST,ACRNOT,ACRCNG,ACRRSN
 N ACRSSNOK S ACRSSNOK=1 ;ACR*2.1*3.36
 I $P(ACRDOC0,U,19),ACRREF=103 D
 .S ACRREFXX=103
 .S ACRREF=116
 .;SHIFT REF CODE SO APPROVED BPA CALL IS PRINTED AS REQUISITION
 S ACRPODA=$P(ACRDOC0,U,8)
 I $P(^ACRPO(ACRPODA,0),U,8)="" S ACRPODA=1    ;FINANCE OFF MISSING ACR*2.1*22.10 IM24567
 N X,ACRPO0,ACRPODT,ACRPOC,ACRTOC,ACRTROC
 S (ACRPO0,X)=$G(^ACRPO(ACRPODA,0)) ;ACR*2.1*3.26
 S ACRPODT=$G(^ACRPO(ACRPODA,"DT")) ;ACR*2.1*3.26
 S ACRPOC=$P(ACRPODT,U,11)
 S ACRTOC=$P(ACRPODT,U,12)
 S ACRTROC=$P(ACRPODT,U,13)
 S ZTIO2=$P(X,U,8)
 S ZTIO7=$P(X,U,16)
 S ZTIO8=$P(X,U,17)
 S ZTIO9=$P(X,U,18)
 S ZTIO2=$P(^AUTTPRG(ZTIO2,"DT"),U,10)
 S ZTIO1=$P(ACRPO0,U,2)
 S ZTIO5=$P(ACRPO0,U,14)
 S ACRCOPY=$P(ACRPODT,U,6)
 S:ZTIO7 ZTIO7=$P(^AUTTPRG(ZTIO7,"DT"),U,10)
 S ZTIO6=$P(^ACRPO(1,0),U,15)
 S ACRLBDA=$P(ACRDOC0,U,6)
 S (ZTIO3,ZTIO4)=""
 S X=$G(^ACRLOCB(+ACRLBDA,0))
 S (ACRDPTDA,X)=$P(X,U,5)
 S X=$G(^AUTTPRG(+X,"DT"))
 S ZTIO3=$P(X,U,10)
 ;S ZTIO4=$P(X,U,12)     ; REMOVE LINE ;ACR*2.1*3.26
 ;SEND REQUISITIONS AND PO'S TO PROCUREMENT
 I "^116^204^103^349^326^210^"[(U_ACRREF_U) D
 .Q:ACRPOC=0
 .I ACRPOC,ACRPOC'[1 Q
 .S ZTIO=ZTIO1
 .D SEND
 ;SEND REQUISITIONS AND PO'S TO THE ORIGINATING DEPARTMENT IF PRINTER
 ;DIFFERENT FROM PROCUREMENT OFFICE PRINTER
 I "^116^204^103^349^326^210^"[(U_ACRREF_U),ZTIO3'=ZTIO1 D
 .Q:ACRPOC=0
 .I ACRPOC,ACRPOC'[3 Q
 .S ZTIO=ZTIO3
 .D SEND
 ;SEND TRAVEL ORDER TO ORIGINATING DEPARTMENT
 I ACRREF=130!(ACRREF=148) D
 .I ACRREF=130,ACRTOC=0 Q
 .I ACRREF=130,ACRTOC,ACRTOC'[3 Q
 .I ACRREF=148,ACRTROC=0 Q
 .I ACRREF=148,ACRTROC,ACRTROC'[3 Q
 .S ZTIO=ZTIO3
 .D SEND
 ;SEND TRAVEL ORDER TO CENTRAL PRINTER
 I ACRREF=130,ZTIO5,ZTIO3'=ZTIO5 D
 .Q:ACRTOC=0
 .I ACRTOC,ACRTOC'[1 Q
 .S ZTIO=ZTIO5
 .D SEND
 ;SEND TRAVEL ORDER TO FINANCE IF FINANCE PRINTER DIFFERENT FROM
 ;DEPARTMENT OR CENTRAL PRINTER
 I ACRREF=130!(ACRREF=148),ZTIO2'=$S(ACRREF=130&+ZTIO5:ZTIO5,1:ZTIO3) D
 .I ACRREF=130,ACRTOC=0 Q
 .I ACRREF=130,ACRTOC,ACRTOC'[2 Q
 .I ACRREF=148,ACRTROC=0 Q
 .I ACRREF=148,ACRTROC,ACRTROC'[2 Q
 .S ZTIO=ZTIO2
 .D SEND
 ;SEND TRAVEL ORDER TO REGIONAL FINANCE OFF IF REGIONAL FINANCE OFF
 ;PRINTER DIFFERENCT FROM FINANCE OFFICE, DEPARTMENT OR CENTRAL PRINTER
 I ACRREF=130!(ACRREF=148),ZTIO7]"",ZTIO7'=ZTIO2,ZTIO7'=$S(ACRREF=130&+ZTIO5:ZTIO5,1:ZTIO3) D
 .I ACRREF=130,ACRTOC=0 Q
 .I ACRREF=130,ACRTOC,ACRTOC'[2 Q
 .I ACRREF=148,ACRTROC=0 Q
 .I ACRREF=148,ACRTROC,ACRTROC'[2 Q
 .S ZTIO=ZTIO7
 .D SEND
 ;SEND PURCHASE ORDER AND TRAVEL VOUCHER TO FINANCE
 I "^103^349^326^210^600^"[(U_ACRREF_U)!(ACRREF=116&$P(^ACRDOC(ACRDOCDA,0),U,19)) D
 .;Q:ACRPOC=0                                  ;ACR*2.1*20.01  IM15926
 .I ACRREF'=600,ACRPOC=0 Q                     ;ACR*2.1*20.01  IM15926
 .I "^103^349^326^210^"[(U_ACRREF_U),ACRPOC,ACRPOC'[2 Q
 .S ZTIO=ZTIO2
 .D SEND
 ;SEND REQUISITION TO FINANCE IF INDICATED FOR THE PURCHASING OFFICE
 I ACRREF=116,$P(^ACRPO(ACRPODA,"DT"),U,9) D
 .S ZTIO=ZTIO2
 .D SEND
 ;SEND PURCHASE ORDER AND TRAVEL VOUCHER TO REGIONAL FINANCE OFFICE
 I ZTIO7]"",ZTIO7'=ZTIO2,"^103^349^326^210^600^"[(U_ACRREF_U)!(ACRREF=116&$P(^ACRDOC(ACRDOCDA,0),U,19)) D
 .S ZTIO=ZTIO7
 .D SEND
 ;SEND THE TRAVEL VOUCHER TO DEPARTMENT
 ;IF PRINTER NOT SAME AS FINANCE PRINTER        ;ACR*2.1*20.01  IM15926
 I ACRREF=600 D
 .S ZTIO=$S(+ZTIO4:ZTIO4,1:ZTIO3)
 .I ZTIO2]"",ZTIO2=ZTIO Q                       ;ACR*2.1*20.01  IM15926   
 .D SEND
 ;SEND REQUISITIONS AND PO'S TO AREA PROPERTY IF PRINTER
 ;DIFFERENT FROM PROCUREMENT OFFICE PRINTER AND PROPERTY ITEMS PURCHASED
 I "^116^204^103^349^326^210^"[(U_ACRREF_U),ZTIO6,ZTIO6'=ZTIO1 D
 .S ZTIO=ZTIO6
 .D PROP
 ;SEND REQUISITIONS AND PO'S TO AREA SUPPLY IF PRINTER
 ;DIFFERENT FROM PROCUREMENT OFFICE PRINTER AND SUPPLY ITEMS PURCHASED
 I "^116^204^103^349^326^210^"[(U_ACRREF_U),ZTIO8,ZTIO8'=ZTIO1 D
 .S ZTIO=ZTIO8
 .D SUPP
 .I $D(ACRQUIT) K ACRQUIT D SEND
 ;SEND TRAINING REQUEST TO AREA PERSONNEL PRINTER
 ;DIFFERENT FROM PROCUREMENT OFFICE PRINTER
 I ACRREF=148,ZTIO9,ZTIO9'=ZTIO1 D
 .I ACRREF=148,ACRTROC=0 Q
 .I ACRREF=148,ACRTROC,ACRTROC'[1 Q
 .S ZTIO=ZTIO9
 .D SEND
 K ZTIO,ZTIO1,ZTIO2,ZTIO3,ZTIO4,ZTIO5,ZTIO6,ZTIO7,ZTIO8,ZTIO9
 I $D(ACRREFXX),$P(ACRDOC0,U,19),ACRREF=116 D
 .S ACRREF=103
 .K ACRREFXX
 Q
SEND ;SELECT IO AND SEND TO TASKMAN
 Q:'ZTIO
 I "^103^349^326^210^130^600^148^"[(U_ACRREF_U) S ACRDHR=""
 I ACRREF=130,ZTIO3'=ZTIO S ACRITINY=""
 I $G(ACRAPVT)=9 S ACRTVAL=""
 S ZTIO=$P($G(^%ZIS(1,+ZTIO,0)),U)
 D TSK:ZTIO]""&(ZTIO'["HOST FILE")
 Q
EN1 ;EP;TO PRINT REQUEST
 S ACRLBDA=$P(ACROBL0,U,3)
 S ZTIO=$P(^ACRLOCB(ACRLBDA,0),U,5)
 S ZTIO=$G(^AUTTPRG(+ZTIO,"DT"))
 S ZTIO=$P(ZTIO,U,10)
 S ZTIO=$G(^%ZIS(1,+ZTIO,0))
 S ZTIO=$P(ZTIO,U)
 D:ZTIO]"" TSK
 S ACRQUIT=""
 Q
TSK ;QUEUE PRINT TASK
 D FS^ACRFZIS
 S ZTDTH=$H
 S ACRREFX=ACRREF
 S ACRREQST=""
 S ZTSAVE("ACR*")=""
 S ZIBH=$TR($H,",","")_$R(1000)
 S ZTSAVE("ZIBH")=""
 S:ACRREFX=103!(ACRREFX=349)!(ACRREFX=326) ACRPPO=""
 D TSKVAR
 D ^%ZTLOAD
 K ZTIO,ZTSAVE,ZTDESC,ZTRTN,ZTDTH,ZIBH
 Q
TSKVAR ;EP;SET REQUIRED PRINT JOB VARIABLES
 S ZTRTN="OPEN^ACRFZIS"
 S ACRRTN="^ACRFQ"
 S ZTDESC="PRINT "_$S('$D(ACRPO):"APPROVED REQUEST",1:"PURCHASE ORDER")_" "_$S('$D(ACRPO):$P(ACRDOC0,U),ACRREFX=130!(ACRREFX=600):$P(ACRDOC0,U),1:$P(^ACRDOC(ACRDOCDA,0),U,2))
 S ACRPRT=""
 Q
PROP ;PRINT TO AREA PROPERTY
 K ACRQUIT
 D PROP^ACRFRRPT
 I $D(ACRQUIT),ZTIO]"" D SEND
 K ACRQUIT
 Q
SUPP ;EP;TO PRINT REPORT TO SUPPLY OFFICE PRINTER
 K ACRQUIT
 N ACRSSDA
 S ACRSSDA=0
 F  S ACRSSDA=$O(^ACRSS("J",ACRDOCDA,ACRSSDA)) Q:'ACRSSDA!$D(ACRQUIT)  I $D(^ACRSS(ACRSSDA,0)) S ACROBJDA=$P(^(0),U,4) I ACROBJDA,$D(^AUTTOBJC(ACROBJDA,0)),$E(^(0),1,2)="26" S ACRQUIT="" Q
 Q
