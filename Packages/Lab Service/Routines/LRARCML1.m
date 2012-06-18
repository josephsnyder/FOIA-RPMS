LRARCML1 ; IHS/DIR/AAB - ARCHIVED WKLD COST REP BY MAJ SCTN ; [ 5/22/95 ]
 ;;5.2;LR;**1002**;JUN 01, 1998
 ;;5.2;LAB SERVICE;**59**;Aug 31, 1995
 ;same as LRCAPML1 except archived wkld file
EN ;
 D INITMAN^LRARCMR1
 S LRGETIN=$S(LRIN:0,1:1)
 F  D BUILD Q:(LREND)!('LRLOOP)!(LRBLDONE)
 Q
BUILD ; BUILD DATA SUBSET IN ^TMP
 D GTIN
 I 'LRIN S LRBLDONE=1 Q
 S (LRAPIGT,LRAPIGTU,LRCPIGT,LRCPIGTU)=0
 S LRCDT=LRCDTB-1
 F  S LRCDT=$O(^LAR(64.19999,LRIN,1,"B",LRCDT)) Q:(LRCDT>LRCDTE)!(LRCDT<1)  D
 . S LRCDTN=0,LRCDTN=$O(^LAR(64.19999,LRIN,1,"B",LRCDT,LRCDTN))
 . D DATCOM^LRARCMR1
 . W:$E(IOST,1,2)="C-" "."
 . S LRCC=""
 . F  S LRCC=$O(^LAR(64.19999,LRIN,1,LRCDTN,1,"B",LRCC)) Q:(LRCC="")  D CC
 S LRGTOTS=$G(^TMP("LRAR-WL",$J,0))
 S $P(LRGTOTS,U)=$P(LRGTOTS,U)+LRAPIGT+LRCPIGT
 S $P(LRGTOTS,U,2)=$P(LRGTOTS,U,2)+LRAPIGTU+LRCPIGTU
 S ^TMP("LRAR-WL",$J,0)=LRGTOTS
 S LRGTOTS=$G(^TMP("LRAR-WL",$J,"DIV","AP",LRIN,0))
 S $P(LRGTOTS,U)=$P(LRGTOTS,U)+LRAPIGT
 S $P(LRGTOTS,U,2)=$P(LRGTOTS,U,2)+LRAPIGTU
 S ^TMP("LRAR-WL",$J,"DIV","AP",LRIN,0)=LRGTOTS
 S LRGTOTS=$G(^TMP("LRAR-WL",$J,"DIV","CP",LRIN,0))
 S $P(LRGTOTS,U)=$P(LRGTOTS,U)+LRCPIGT
 S $P(LRGTOTS,U,2)=$P(LRGTOTS,U,2)+LRCPIGTU
 S ^TMP("LRAR-WL",$J,"DIV","CP",LRIN,0)=LRGTOTS
 Q
CC ;
 S LRCCN=0,LRCCN=$O(^LAR(64.19999,LRIN,1,LRCDTN,1,"B",LRCC,LRCCN))
 S LRCCZ=$P(^LAR(64.19999,LRIN,1,LRCDTN,1,LRCCN,0),U)
 S:$E(LRCCZ)="+" LRCCZ=$E(LRCCZ,2,99)
 S LRCAPNUM=$$WKLDCODE^LRARCU(LRCCZ)
 S LRCAPNAM=$$WKLDNAME^LRARCU(LRCAPIFN)
 D BMPMANL^LRARCMR1
 S LRCTM=$S(LRCTMB=0:"",1:LRCTMB-.001),LRFIRST=1
 F  S LRCTM=$O(^LAR(64.19999,LRIN,1,LRCDTN,1,LRCCN,1,"B",LRCTM)) Q:(LRCTM>LRCTME)!(LRCTM="")  S LRCTMN=0,LRCTMN=$O(^LAR(64.19999,LRIN,1,LRCDTN,1,LRCCN,1,"B",LRCTM,LRCTMN)) D TM
 Q
TM ;
 Q:'($D(^LAR(64.19999,LRIN,1,LRCDTN,1,LRCCN,1,LRCTMN,0))#2)  S LRX=^(0),LRX4=$G(^LAR(64.19999,LRIN,1,LRCDTN,1,LRCCN,1,LRCTMN,4))
 S LRMA=$P(LRX,U,5),X=LRMA D GETA S LRMA=+Y
 I LRAA Q:'$D(LRAA(LRMA))
 S LRUC=+$P(LRX,U,3),LRLDIV=$P(LRX,U,4),LRLSS=$P(LRX,U,6),LRSPEC=+$P(LRX4,U)
 S:LRLDIV="ANATOMIC PATHOLOGY" LRLDIV="AP"
 S:LRLDIV="CLINICAL PATHOLOGY" LRLDIV="CP"
 S:'LRUC LRUC=1
 S LRUW=+$P($G(^LAM(LRCAPIFN,0)),U,10),LRFIRST=0 S LRUWSP=+$P($G(^LAM(LRCAPIFN,5,LRSPEC,0)),U,2) S:LRUWSP LRUW=LRUWSP_"*" K LRUWSP
 S LRWC=LRUC*LRUW
 ;
 ;
 I +LRMA D
 . S LRREC=$G(^LRO(68,LRMA,0))
 . S LRMAA=$S($P(LRREC,U,11)]"":$P(LRREC,U,11),1:LRNDFN)
 . S LRMAN=$S($P(LRREC,U)]"":$P(LRREC,U),1:LRNDFN)
 . S LRMAN(LRMAA)=LRMAN
 I '+LRMA S (LRMAA,LRMAN)=LRNDFN,LRMAN(LRMAA)=LRMAN
 I LRLSS]"" D
 . S X=LRLSS D GETA S LRLSS=+Y
 . Q:'+LRLSS
 . S LRREC=$G(^LRO(68,LRLSS,0))
 . S LRLSSA=$S($P(LRREC,U,11)]"":$P(LRREC,U,11),1:LRNDFN)
 . S LRLSSN=$S($P(LRREC,U)]"":$P(LRREC,U),1:LRNDFN)
 . S LRLSSN(LRLSSA)=LRLSSN
 I '+LRLSS S (LRLSSA,LRLSSN)=LRNDFN,LRLSSN(LRLSSA)=LRLSSN
 ;
 ;
 I $D(^TMP("LRAR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA,LRCAPNAM))#2 S LRX=^(LRCAPNAM),LRX1=LRUC+$P(LRX,"^"),LRX2=LRWC+$P(LRX,"^",2),^(LRCAPNAM)=LRX1_"^"_LRX2_"^"_LRUW_"^"_LRCAPNUM
 E  S ^TMP("LRAR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA,LRCAPNAM)=LRUC_"^"_LRWC_"^"_LRUW_"^"_LRCAPNUM
 I LRLDIV="AP" S LRAPIGT=LRAPIGT+LRWC,LRAPIGTU=LRAPIGTU+LRUC
 E  S LRCPIGT=LRCPIGT+LRWC,LRCPIGTU=LRCPIGTU+LRUC
 I $D(^TMP("LRAR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA,0))#2 S LRX1=+$P(^(0),"^")+LRWC,LRX2=+$P(^(0),"^",2)+LRUC,^(0)=LRX1_"^"_LRX2
 E  S ^TMP("LRAR-WL",$J,"DIV",LRLDIV,LRIN,LRMAA,LRLSSA,0)=LRWC_"^"_LRUC
 I $D(^TMP("LRAR-WL",$J,"AA",LRMAA,LRLSSA,0))#2 S LRX1=+$P(^(0),"^")+LRWC,LRX2=+$P(^(0),"^",2)+LRUC,^(0)=LRX1_"^"_LRX2
 E  S ^TMP("LRAR-WL",$J,"AA",LRMAA,LRLSSA,0)=LRWC_"^"_LRUC
 Q
GTIN ;
 S:LRGETIN LRIN=+$O(^LAR(64.19999,LRIN))
 S:LRIN LRINN=$S($D(^LAR(64.19999,LRIN,0)):^(0),1:"UNDEFINED")
 S LRGETIN=1
 Q
GETA ;Get pointer value for file 68
 K DIC S DIC=68,DIC(0)="XMZ"
 D ^DIC Q:Y=-1
 Q
