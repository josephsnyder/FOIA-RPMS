ACRFPRC1 ;IHS/OIRM/DSD/THL,AEF - PROCESS PENDING DOCUMENTS;  [ 08/17/2006   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**19,20**;NOV 05, 2001
 ;;CONTINUATION OF ACRFPRCS
EN ;EP;TO APPROVE DOCUMENTS
 D APPROVE
EXIT K ACRAPDAF,ACRAPDAS,ACRINDV,ACRORD,ACRP11,^TMP("ACRDATA",$J,ACRDUZ,ACRJJ),ACRJJ,ACRNAM,ACRDUZ1,ACRX,ACRGLB,ACRPC,ACRTXDA,ACRNUM
 Q
APPROVE ;EP;PROCESS EACH APPROVAL OF A DOCUMENT
 I '$D(ACRESIG) S (ACRQUIT,ACROUT)="" Q
 N ACRDUZ
 S ACRDUZ=$P(^ACRAPVS(ACRAPDA,"DT"),U,2)
 S ACRAPVT=$P(^ACRAPVS(ACRAPDA,0),U,3)
 S ACRDOC=$P(ACRDOC0,U)
 S:$P(ACRDOC0,U,2)]""&($P(ACRDOC0,U,2)'=ACRDOC) ACRDOC=ACRDOC_" ("_$P(ACRDOC0,U,2)_")"
 S Y=$$SIGSCR(ACRAPVT,.ACRAPVS,$P($G(^ACRDOC(ACRDOCDA,"TO")),U,9),$P($G(^ACRDOC(ACRDOCDA,"TRNG")),U,2),DUZ)
 I +Y D  Q
 . S ACRAPVS=$P(Y,U,2)
 . D W^ACRFPRC9
 . K ACRAPVS
 D AUX^ACRFPRC5
 Q:$D(ACRQUIT)
 I '$D(ACRPSUM) D CAPPEND^ACRFCERT,BAPPEND^ACRFBOIL
 I ACRAPVT=1,'$P(ACRDOC0,U,24) D
 .S DIR(0)="YO"
 .S DIR("A")="Review Small Purchase Check List Now"
 .S DIR("B")="YES"
 .W !
 .I '$D(^ACRSPCL("B",ACRDOCDA)) D  Q
 ..W !!,"No SMALL PURCHASE CHECK LIST on file for this Document."
 ..D PAUSE^ACRFWARN
 ..K ACRQUIT
 .D DIR^ACRFDIC
 .Q:+Y'=1
 .D PCLIST^ACRFPO3
 D ASUM^ACRFEA42
 I DUZ'=ACRDUZ D
 .;S ACRNAM=$P(^VA(200,DUZ,0),U)  ;ACR*2.1*19.02 IM16848
 .S ACRNAM=$$NAME2^ACRFUTL1(DUZ)  ;ACR*2.1*19.02 IM16848
 .S ACRNAM=$P($P(ACRNAM,",",2)," ")_" "_$P(ACRNAM,",")
 .S ACRDOC=$P(ACRDOC0,U)
 .S:$P(^ACRDOC(ACRDOCDA,0),U,2)]""&($P(^(0),U,2)'=ACRDOC) ACRDOC=ACRDOC_" ("_$P(^(0),U,2)_")"
 .W !!?10,@ACRON,$J(ACRNAM,30),@ACROF
 .W !?12,"You are SIGNING Document No."
 .W !?10,@ACRON,$J(ACRDOC,30),@ACROF
 .;S ACRDUZX=$P(^VA(200,ACRDUZ,0),U)  ;ACR*2.1*19.02 IM16848
 .S ACRDUZX=$$NAME2^ACRFUTL1(ACRDUZ)  ;ACR*2.1*19.02 IM16848
 .S ACRDUZX=$P($P(ACRDUZX,",",2)," ")_" "_$P(ACRDUZX,",")
 .S ACRAPVTX=$P(^ACRAPVT(ACRAPVT,0),U)
 .I "^2^23^24^"[(U_ACRAPVT_U),$E(DT,4,5)<10,DT\10000+1700<$P(^ACRLOCB($P(ACRDOC0,U,6),"DT"),U) S ACRAPVTX="SUB. TO AVAIL. OF FUNDS"
 .W !?6,"for ",@ACRON,$J(ACRDUZX,30),@ACROF
 .W !?7,"as ",@ACRON,$J(ACRAPVTX,30),@ACROF
 I $D(ACRAPDA)#2,ACRAPDA,$P($G(^ACRAPVS(ACRAPDA,0)),U,4)=99 W !!,@ACRON,"APPROVAL FOR RECERTIFICATION OF FUNDS",@ACROF
 D EXCEED^ACRFWARN
OPS I ACRAPVT'=41 D  I 1
 .S DIR(0)="S^A:APPROVE;D:DISAPPROVE;R:RETURN FOR CHANGE/CLARIFICATION;H:HOLD;P:PRINT/DISPLAY DOCUMENT"
 .S DIR("A")="APPROVAL"
 E  D
 .S DIR(0)="S^A:ACKNOWLEDGE RECEIPT OF REQUESTED SUPPLIES/SERVICES;H:HOLD"
 .S DIR("A")="Which one"
 I ACRREF=600,ACRAPVT'=43&(ACRAPVT'=15) S DIR(0)="S^A:APPROVE;R:RETURN FOR CHANGE/CLARIFICATION;H:HOLD;P:PRINT/DISPLAY DOCUMENT"
 W !
 D DIR^ACRFDIC
 Q:$D(ACRQUIT)!$D(ACROUT)
 Q:Y="H"
 S ACRAPDAS=Y
 I ACRAPDAS="P" D  G OPS
 .N ACRREQST
 .S (ACRREQST,ACRPRT)=""
 .K ACRREV,ACRPSUM
 .D REQ^ACRFQ
 .S ACRREV=""
 I "AD"[ACRAPDAS D CONFIRM^ACRFPRC4 I $D(ACRQUIT) K ACRQUIT Q
 I ACRAPDAS="A",$$REQTP^ACRFSSU(ACRDOCDA)["CREDIT CARD" D     ;ACR*2.1*20.14
 .N ACRVND                                    ;ACR*2.1*20.14
 .S ACRVND=$P(^ACRDOC(ACRDOCDA,"PO"),U,5)     ;ACR*2.1*20.14          
 .D CHKVNDR^ACRFVLK                           ;ACR*2.1*20.14
 I $D(ACRQUIT) K ACRQUIT Q                    ;ACR*2.1*20.14
RETURN ;EP;
 I ACRAPDAS="R" D
 .W !!,"Explain below the reason you are returning the document"
 .W !,"and the requested change and/or clarification needed."
 Q:'$D(ACRAPDA)#2
 S ACRCNG=$G(^ACRAPVS(ACRAPDA,"CNG"))
 S ACRRSN=$G(^ACRAPVS(ACRAPDA,"RSN"))
 S ^ACRAPVS(ACRAPDA,"CNG")=""
 S ^ACRAPVS(ACRAPDA,"RSN")=""
 S DA=ACRAPDA
 S DIE="^ACRAPVS("
 S DR="[ACR REQUEST APPROVAL]"
 W !
 D DIE^ACRFDIC
 I ACRAPDAS="R" D  I 1
 .I $P($G(^ACRAPVS(ACRAPDA,0)),U,3)=9,$P($G(^ACROBL(ACRDOCDA,"APV")),U,8)="A" D  Q
 ..S DA=ACRDOCDA
 ..S DIE="^ACRTVAL("
 ..S DR=".03///@;.04///@"
 ..D DIE^ACRFDIC
 .S DA=ACRDOCDA
 .S DIE="^ACRDOC("
 .S DR="5T;6////0;6.5////"_ACRAPDA
 .W !
 .D DIE^ACRFDIC
 .K ^TMP("ACRDATA",$J,ACRDUZ,ACRJJ),^TMP("ACRALT",$J,ACRDUZ,ACRJJ)
 .S DA=ACRAPDA
 .S DIE="^ACRAPVS("
 .S DR="6////"_DUZ
 .D DIE^ACRFDIC
 .I ^ACRAPVS(ACRAPDA,"CNG")]""!(^ACRAPVS(ACRAPDA,"RSN")]"") D CHANGE^ACRFPRC9
 I ACRAPDAS="A",+$G(^ACRDOC(ACRDOCDA,"DT"))=1 D
 .S DA=ACRDOCDA
 .S DIE="^ACRDOC("
 .S DR="5///0;6///@;6.5///@"
 .W !
 .D DIE^ACRFDIC
 I (ACRAPDAS]""&(ACRAPDAS'="A"))!(ACRCNG'=$G(^ACRAPVS(ACRAPDA,"CNG")))!(ACRRSN'=$G(^ACRAPVS(ACRAPDA,"RSN"))) D ^ACRFXMY
 Q:ACRAPDAS="R"
 I ACRAPDAS="" K ACRQUIT Q
 I DUZ'=ACRDUZ D  K ACRREQ,ACRREQ1
 .S ACRREQ=$O(^ACRAPL("AC",ACRDUZ,+ACRAPVT,0))
 .Q:'ACRREQ
 .S ACRREQ1=$G(^ACRAPL(ACRREQ,"DT1"))
 .S ACRREQ=$G(^ACRAPL(ACRREQ,"DT"))
 .Q:'$L(ACRREQ)
 .N J
 .F J=1:1:4 I $P(ACRREQ,U,J)=DUZ,$P(ACRREQ1,U,J)=1 K ACRREQ,ACRREQ1 Q
 .Q:$D(ACRREQ)
 .D NOW^%DTC
 .S Y=%
 .X ^DD("DD")
 .S XMB(1)="On "_Y_" "_$G(ACRNAM)_" signed"
 .S XMB(2)="Document No.:  "_ACRDOC_"  ("_ACRID_")"
 .S XMB(3)="on your behalf as "_$P(^ACRAPVT(ACRAPVT,0),U)
 .S XMY(ACRDUZ)=""
 .S XMDUZ=.5
 .S XMTEXT="XMB("
 .S XMSUB="REQUEST APPROVAL ALTERNATE"
 .S XMB="ACR APPROVAL ALTERNATE"
 .D ^XMD
 .K ACRAPV,ACRCNG,ACRRSN,XMB,XMDUZ,XMSUB,XMY,XMTEXT
 D APX^ACRFPRC3
 I $G(ACRUSERZ),$G(ACRAPDAZ) D ZZ^ACRFPRC3 K ACRUSERZ,ACRAPDAZ
 D:$D(ACRSIGN) AP1^ACRFPRC3
 I "^2^23^24^"[(U_ACRAPVT_U),ACRAPDAS="A",$E(DT,4,5)<10,DT\10000+1700<$P(^ACRLOCB($P(ACRDOC0,U,6),"DT"),U) D RECERT^ACRFPRC4
 K ^TMP("ACRDATA",$J,ACRDUZ,ACRJJ),^TMP("ACRALT",$J,ACRDUZ,ACRJJ)
 I $P($G(ACRDOC0),U)]"" K ^TMP("ACRDATA",$J,ACRDUZ,$P(ACRDOC0,U)),^TMP("ACRALT",$J,ACRDUZ,$P(ACRDOC0,U))
 Q
SIGSCR(ACRAPVT,ACRAPVS,ACRTRAV,ACRATT,DUZ)       ;EP
 ;----- EXTRINSIC FUNCTION - SCREEN FOR RESTRICTED APPROVAL SIGNATURES
 ;
 ;      ACRAPVT = APPROVAL TYPE
 ;      ACRAPVS = APPROVAL SIGNATURE ARRAY
 ;      ACRTRAV = TRAVELER, i.e., $P(^ACRDOC(D0,"TO"),U,9)
 ;      ACRATT  = ATTENDEE
 ;
 ;      Returns Y:
 ;        1st piece = 0 if no restriction, 1 if restriction
 ;        2nd piece = restricted signature names
 ;
 S Y=0
 I ACRAPVT=5,$G(ACRAPVS(2))[(U_DUZ_U) S Y=1_U_"APPROVING and FUNDS CERTIFYING"
 I ACRAPVT=2,$G(ACRAPVS(5))[(U_DUZ_U) S Y=1_U_"APPROVING and FUNDS CERTIFYING"
 I ACRAPVT=21,$G(ACRAPVS(36))[(U_DUZ_U)!(DUZ=ACRTRAV) S Y=1_U_"AUTHORIZING TRAVEL and as the TRAVELER"
 I ACRAPVT=37,$G(ACRAPVS(40))[(U_DUZ_U) S Y=1_U_"APPROVING THE TRAVEL VOUCHER and as the TRAVELER"
 I ACRAPVT=38,$G(ACRAPVS(40))[(U_DUZ_U) S Y=1_U_"CERTIFYING THE TRAVEL PAYMENT and as the TRAVELER"
 I ACRAPVT=39,$G(ACRAPVS(40))[(U_DUZ_U) S Y=1_U_"AUDITING THE TRAVEL VOUCHER and as the TRAVELER"
 I ACRAPVT=43,$G(ACRAPVS(36))[(U_DUZ_U)!(DUZ=ACRTRAV) S Y=1_U_"TRAVEL ORDER AUDITOR and as the TRAVELER"
 I ACRAPVT=45,$G(ACRAPVS(40))[(U_DUZ_U) S Y=1_U_"RECOMMENDING THE TRAVEL VOUCHER and as the TRAVELER"
 I ACRAPVT=1,$G(ACRAPVS(2))[(U_DUZ_U) S Y=1_U_"AUTHORIZING and FUNDS CERTIFYING"
 I ACRAPVT=1,$G(ACRAPVS(5))[(U_DUZ_U) S Y=1_U_"AUTHORIZING and APPROVING"
 I ACRAPVT=7,$G(ACRAPVS(1))[(U_DUZ_U) S Y=1_U_"RECEIVING and AUTHORIZING"
 I ACRAPVT=8,$G(ACRAPVS(36))[(U_DUZ_U)!(DUZ=ACRTRAV) S Y=1_U_"RECOMMENDING TRAVEL and as the TRAVELER"
 I ACRAPVT=9,DUZ=ACRATT S Y=1_U_"INITIATING SUPERVISOR and as the ATTENDEE"
 Q Y
