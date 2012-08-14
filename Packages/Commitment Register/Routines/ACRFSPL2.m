ACRFSPL2 ;IHS/OIRM/DSD/AEF - DHR-SPLITOUT [ 10/27/2004   4:18 PM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**13**;NOV 05, 2001
 ;
EN(ACRD0)          ;EP           ; ACR*2.1*13.01 IM13574
 ;----- MAIN ENTRY POINT
 ;
 ;      ACRD0  = COLOR BATCH IEN FROM DHR DATA RECORDS FILE TO BE
 ;               EXPORTED
 ;      ACRCTR = WHAT KIND OF EXPORT, I.E., ARM, BCS, PCC
 ;
 N %DEV,ACROUT
 D HFS(.%DEV)                     ;ACR*2.1*13.01 IM13574
 Q:$G(ACROUT)
 D CLOSE(ACRD0)                   ;ACR*2.1*13.01 IM13574
 Q:$G(ACROUT)
 D DATA(ACRD0)                    ;ACR*2.1*13.01 IM13574
 Q:'$D(^TMP("ACRDHR-EXP",$J))
 D EXP(%DEV)                      ;ACR*2.1*13.01 IM13574
 D CLOSE^ACRFZISH("FILE")         ;ACR*2.1*13.01 IM13574
 Q
CLOSE(ACRD0) ;----- SET EXPORT DATE
 ;
 N DA,DIE,DR,X,Y
 L +^AFSHRCDS(ACRD0):1
 I '$T W !,*7,"Users are active in this batch - TRY LATER" S ACROUT=1
 I $P(^AFSHRCDS(ACRD0,0),U,2) W !,*7,"This batch has already been exported" S ACROUT=1
 I '$G(ACROUT) D
 .S DIE="^AFSHRCDS("
 .S DA=ACRD0
 .D NOW^%DTC
 .S DR=".21///^S X=%"
 .D ^DIE
 L -^AFSHRCDS(ACRD0)
 Q
EXP(%DEV) ;----- EXPORT DHR DATA TO UNIX FILE  ; ACR*2.1*13.01 IM13574
 ;
 N X1,X2
 S X1=0
 F  S X1=$O(^TMP("ACRDHR-EXP",$J,X1)) Q:'X1  D
 . F X2=1:1:5 D
 . . U %DEV
 . . W ^TMP("ACRDHR-EXP",$J,X1,X2)
 Q
DATA(ACRD0) ;----- GATHER DHR DATA AND PUT INTO ^TMP GLOBAL  ; ACR*2.1*13.01 IM13574
 ;
 ;N ACRAMT,ACRCNT,ACRD1,ACRD2,ACRD3,AMT,CNT,DATA,X,Y,Z
 K ^TMP("ACRDHR",$J)
 S (ACRD1,ACRCNT)=0
 F  S ACRD1=$O(^AFSHRCDS(ACRD0,"D",ACRD1)) Q:'ACRD1  D
 . S ACRD2=0
 . F  S ACRD2=$O(^AFSHRCDS(ACRD0,"D",ACRD1,"I",ACRD2)) Q:'ACRD2  D
 . . S DATA=^AFSHRCDS(ACRD0,"D",ACRD1,"I",ACRD2,0)
 . . S (ACRD3,AMT,CNT)=0
 . . F  S ACRD3=$O(^AFSHRCDS(ACRD0,"D",ACRD1,"I",ACRD2,"S",ACRD3)) Q:'ACRD3  D
 . . . S ACRCNT=ACRCNT+1
 . . . S CNT=CNT+1
 . . . S X=^AFSHRCDS(ACRD0,"D",ACRD1,"I",ACRD2,"S",ACRD3,0)
 . . . S Y=ACRD0_U_ACRD1_U_$P(DATA,U)_U_ACRD3_U_$P(DATA,U,7)_U_ACRCNT
 . . . I $P(Y,U,5)="" S $P(Y,U,5)=$G(DUZ)
 . . . S AMT=$P(X,U,15)
 . . . I $P(X,U,5)=2 S AMT=0-AMT
 . . . S $P(^TMP("ACRDHR",$J,ACRD0,0),U)=ACRCNT
 . . . S $P(^TMP("ACRDHR",$J,ACRD0,0),U,2)=$P(^TMP("ACRDHR",$J,ACRD0,0),U,2)+AMT
 . . . S $P(^TMP("ACRDHR",$J,ACRD0,ACRD1,$P(DATA,U),0),U)=CNT
 . . . S $P(^TMP("ACRDHR",$J,ACRD0,ACRD1,$P(DATA,U),0),U,2)=$P(^TMP("ACRDHR",$J,ACRD0,ACRD1,$P(DATA,U),0),U,2)+AMT
 . . . D DATA^ACRFSPL6(X,Y)
 Q
HFS(%DEV) ;----- CREATE/OPEN UNIX FILE            ; ACR*2.1*13.06 IM14144
 N ACRFILE,X,Y,ZISH1                      ; ACR*2.1*13.06 IM14144
 D FILE(.ACRFILE)                         ; ACR*2.1*13.06 IM14144
 Q:$G(ACROUT)                             ; ACR*2.1*13.06 IM14144
 S ZISH1=$$ARMSDIR^ACRFSYS(1)             ; ACR*2.1*13.06 IM14144
 Q:ZISH1']""                              ; ACR*2.1*13.06 IM14144
 D HFS^ACRFZISH(ZISH1,ACRFILE,"W",.%DEV)  ; VERBOSE ; ACR*2.1*13.01 IM13574
 I $G(%DEV)']"" S ACROUT=1                ; ACR*2.1*13.01 IM13574
 Q
FILE(FILE) ;----- GET FILE NAME
 ;
 N DIC,I,Q,X,Y,Z
 L +^ACRF(9002196.3):4
 S FILE=""
 S Z=$S(ACRD0=1:"afsdhpb",ACRD0=2:"afsdhpr",ACRD0=3:"afsdhcb",ACRD0=4:"afsdhcr",ACRD0=5:"afsdhab",ACRD0=6:"afsdhar",1:"")
 I Z="" S ACROUT=1 Q
 F I=97:1:122 S Q=$C(I) I '$D(^ACRF(9002196.3,"B",Z_Q_"."_$E(DT,2,3)_$$JDT^XBFUNC(DT))) S FILE=Z_Q_"."_$E(DT,2,3)_$$JDT^XBFUNC(DT) Q
 I FILE="" S ACROUT=1 L -^ACRF(9002196.3) Q
 K DD,DO
 S DIC="^ACRF(9002196.3,"
 S DIC(0)=""
 S X=FILE
 S DIC("DR")=".02///^S X=DT"
 D FILE^DICN
 I Y'>0 S ACROUT=1
 L -^ACRF(9002196.3)
 Q