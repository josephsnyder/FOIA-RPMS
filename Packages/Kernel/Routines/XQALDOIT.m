XQALDOIT ;ISC-SF.SEA/JLI - ALERT HANDLER ;07/05/12  12:19
 ;;8.0;KERNEL;**1,6,65,114,128,129,207,602**;Jul 10, 1995;Build 10
 ;Per VHA Directive 2004-038, this routine should not be modified
 ;
EN ;
 S XQAEXIT="DOIT^XQALERT1"
 S XQX=^TMP("XQ",$J,"XQA1",+XQX1),XQI=^(+XQX1,1),XQZ=^(2)
EN1 ;
 S XQADATA=$S(XQZ'="":XQZ,1:$P(XQX,U,9,99)),XQAID=$P(XQX,U,2),XQA1=$P(XQAID,";"),XQX2=+XQX1,XQX1=$P(XQX1,",",2,200) I XQX1'>0 S XQK=$O(XQX1(0)) I XQK>0 S XQX1=XQX1(XQK) K XQX1(XQK)
 S XQAROU=""
 S XQAKILL=1 I XQX2,$P(XQX,U,8)'="" S XQAROU=$P(XQX,U,7,8) K:XQA1="" ^XTV(8992,DUZ,"XQA",XQI)
 I XQAID'="" D
 . S XQXX=$O(^XTV(8992.1,"B",XQAID,0)),XQXY=0,XQADAT=$$NOW^XLFDT()
 . I XQXX>0 S XQXY=$O(^XTV(8992.1,XQXX,20,"B",DUZ,0)) I XQXY>0,$P(^XTV(8992.1,XQXX,20,XQXY,0),U,3)="" S $P(^XTV(8992.1,XQXX,20,XQXY,0),U,3)=XQADAT
 . K XQXX,XQXY
 I XQAROU'="",XQAROU'="^ " S XQAROUX=XQAROU D  G @XQAEXIT
 . N XQAROUX D @XQAROU
 . Q
 I XQAROU'="" S XQAROUX="^ " D  W !!,"Processed Alert Number ",XQX2,!?4,$P(XQX,U,3),! G @XQAEXIT
 . I $O(^XTV(8992,DUZ,"XQA",XQI,4,0))>0 D EN^DDIOL("",$NA(^XTV(8992,DUZ,"XQA",XQI,4)))
 . Q
 I XQX2 S XQAROUX=$P(XQX,U,7),XQMM("J")=XQAROUX_";"_$P(^DIC(19,XQY,0),U),XQRB=0 K:XQA1="" ^XTV(8992,DUZ,"XQA",XQI)
 K XQI,XQX,XQJ,XQK,XQXOUT,XQ1,XQII,XQA1,XQAREV,XQACNT,XQX2,%ZIS
 ;Need to reset count in zero node
 Q
 ;
ACTION(ALERTID) ;
 N XQAUSER
 S XQI=$O(^XTV(8992,"AXQA",ALERTID,DUZ,0))
 Q:XQI'>0
 S XQX=$G(^XTV(8992,DUZ,"XQA",XQI,0)) Q:XQX=""  S XQAUSER=DUZ
 S XQZ=$G(^XTV(8992,DUZ,"XQA",XQI,1))
 I $D(XQAGETAC) Q  ; just get data to return
 S XQAEXIT="ENDACT",XQX1=XQI
 I $P(XQX,U,8)'="" G EN1
 D EN1
ENDACT ;
 I $D(XQMM("J")) S XQMM("J")=$P(XQMM("J"),";")_";",XQALEXIT=1 D  D ^XQ74 K XQALEXIT,XQALMENU
 . K XQALMENU
 . N X S X=$P(XQMM("J"),";")
 . I X=+X S:$P(^DIC(19,X,0),U,4)="M" XQALMENU="" Q
 . S X=$O(^DIC(19,"B",X,0)) S:$P($G(^DIC(19,+X,0)),U,4)="M" XQALMENU=""
 I $D(XQX1),XQX1'>0 K XQX1
 I $D(XQAKILL) D DELETEA^XQALERT
 K XQAKILL,XQAROU,XQAID,XQADATA
 Q
 ;
DOOPT(OPTION) ;
 N XQX1,XQAKILL,XQAROU,XQADATA,XQAID,XQMM
 S XQMM("J")=OPTION
 D ENDACT
 Q
 ;
PRINT ;
 S XQIJ=$$NOW^XLFDT(),%ZIS="MQ" D ^%ZIS Q:POP  I $D(IO("Q")) K IO("Q") S ZTRTN="DQ^XQALDOIT",ZTIO=ION,ZTSAVE("XQIJ")="",ZTSAVE("^TMP(""XQ"",$J,""XQA2"",")="" D ^%ZTLOAD K ZTSK,ZTRTN,ZTIO,ZTSAVE Q
DQ ;
 U IO W @IOF,!!?10,"PENDING ALERTS  "_$P(^VA(200,+^XTV(8992,DUZ,0),0),U)_"   "_$E(XQIJ,4,5)_"/"_$E(XQIJ,6,7)_"/"_$E(XQIJ,2,3)_"  "_$E($P(XQIJ,".",2)_"00",1,2)_":"_$E($P(XQIJ,".",2)_"0000",3,4),!!
 F XQIJ=0:0 S XQIJ=$O(^TMP("XQ",$J,"XQA2",XQIJ)) Q:XQIJ'>0  W !,^(XQIJ,0)
 D ^%ZISC K XQIJ W:'$D(ZTQUEUED) !!
 Q
MORP K ^TMP("XQ",$J,"XQA2") S XQIK=0 F XQIJ=0:0 S XQIJ=$O(^TMP("XQ",$J,"XQA",XQIJ)) Q:XQIJ'>0  S XQIK=XQIK+1,XQIX=^(XQIJ),^TMP("XQ",$J,"XQA2",XQIK,0)=$J(XQIK,3)_". "_$P(XQIX,U,3)
 K XQIK,XQIX,XQIJ
 Q
MAIL ;
 S XMTEXT="^TMP(""XQ"",$J,""XQA2"",",XMSUB="LIST OF PENDING ALERTS",XMY(DUZ)="",XMDUZ=.5 D ^XMD K XMTEXT,XMSUB,XMDUZ,XMY W !!,"Message will be delivered as NEW mail to YOU.",!!
 Q
