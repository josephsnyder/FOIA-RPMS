ACHSODB ; IHS/ITSC/PMF - BUILD DCR REPORT FILE ;   [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 G A7:'$D(^TMP("ACHSOD",$J,DUZ(2),0))
 S ACHSZYR=0,ACHSZYR=$O(^TMP("ACHSOD",$J,DUZ(2),"DCR",ACHSZYR)) G A7:+ACHSZYR<1980 S X=$G(^TMP("ACHSOD",$J,DUZ(2),"DCR",ACHSZYR,0))
 D FY^ACHSUF
 S ACHSACFY=0
A0 ;
 S ACHSACFY=$O(^TMP("ACHSOD",$J,DUZ(2),"DCR",ACHSACFY))
 G A7:+ACHSACFY=0
 S X=$G(^TMP("ACHSOD",$J,DUZ(2),"DCR",ACHSACFY,0))
 S ^TMP("ACHSOD",$J,DUZ(2),"TRAN",ACHSACFY)=0
 S ^TMP("ACHSOD",$J,DUZ(2),"TOTAL",ACHSACFY)=0
 S ACHSIO=$P(X,U,2),ACHSBDT=$P(X,U,3),ACHSEDT=$P(X,U,4),ACHSACFY=$P(X,U,5),ACHSDCR=$P(X,U,6),ACHSACY=$E(ACHSACFY,4)
 S ACHSTRDT=ACHSBDT
A1 ;
 S ACHSTRDT=$O(^ACHSF(DUZ(2),"TB",ACHSTRDT))
 G A0:ACHSTRDT>ACHSEDT,A0:ACHSTRDT=""
 S ACHSACT1=""
A2 ;
 S ACHSACT1=$O(^ACHSF(DUZ(2),"TB",ACHSTRDT,ACHSACT1))
 G A1:ACHSACT1=""
 S ACHSDIEN=""
A3 ;
 S ACHSDIEN=$O(^ACHSF(DUZ(2),"TB",ACHSTRDT,ACHSACT1,ACHSDIEN))
 G A2:ACHSDIEN=""
 S ACHSACN=""
 G A3:'$D(^ACHSF(DUZ(2),"D",ACHSDIEN,0)) S ACHSDOCR=^(0)
 I ACHSDCR,$P(ACHSDOCR,U,14)'=ACHSACY G A3
 S ACHSDEST=$P(ACHSDOCR,U,17)
 S:ACHSDEST="" ACHSDEST="I"
 K ACHSBLKF
 I $D(^ACHSF(DUZ(2),"D",ACHSDIEN,"BT")) S ACHSBLKF=""
 S R=+$P(ACHSDOCR,U,19),ACHSADS=ACHSTRDT_U_$P(ACHSDIEN,U)_U_R_U_$P(ACHSDOCR,U,8)_U
A4 ;
 S ACHSACN=$O(^ACHSF(DUZ(2),"TB",ACHSTRDT,ACHSACT1,ACHSDIEN,ACHSACN))
 G A3:ACHSACN="",A4:'$D(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSACN,0))
 S (X,T)=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSACN,0)),U,2)
 S DFN=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSACN,0)),U,3)
 S Y=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSACN,0)),U,5)
 S (A,O)=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSACN,0)),U,4)
 S ACHSDOS=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSACN,0)),U,10)
 S ACHSACD=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,0)),U),ACHSSET=0
 I X="C",Y="P" S T="D"
 I T'="P" S A=0 G A5
 G A6:'$D(^ACHSF(DUZ(2),"D",ACHSDIEN,"PA"))
 S O=$G(^ACHSF(DUZ(2),"D",ACHSDIEN,"PA")),A=$P(O,U,6),O=$P(O,U,2)
 ;
A5 ;
 S ACHSTS=DFN_U_T_U_O_U_A_U_ACHSDOS,ACHSSET=1
 S:'$D(^TMP("ACHSOD",$J,DUZ(2),"DHR",ACHSACFY)) ^TMP("ACHSOD",$J,DUZ(2),"DHR",ACHSACFY)=0
 I T="S",ACHSDEST'="I" G A6
 I T="D",ACHSDEST'="I" G A6
 I T="ZA" G A6
 I T="IP" G A6
 I T="P" G A6
 I +$P(ACHSDOCR,U,3)=2 G A6
 S ^TMP("ACHSOD",$J,DUZ(2),"DHR",ACHSACFY)=^TMP("ACHSOD",$J,DUZ(2),"DHR",ACHSACFY)+1
A6 ;
 S ACHSTY=ACHSACT1
 ;
 I ACHSSET D
 . S ^TMP("ACHSOD",$J,DUZ(2),ACHSACFY,ACHSACD,ACHSDIEN,ACHSACN)=ACHSADS_ACHSTS
 . S:ACHSTY="C" O="-"_O D    ;IF ITS A CANCEL NEGATE
 . S ^TMP("ACHSOD",$J,DUZ(2),"TRAN",ACHSACFY)=^TMP("ACHSOD",$J,DUZ(2),"TRAN",ACHSACFY)+1
 . S ^TMP("ACHSOD",$J,DUZ(2),"TOTAL",ACHSACFY)=^TMP("ACHSOD",$J,DUZ(2),"TOTAL",ACHSACFY)+O
 ;
 ;
 S ACHSTY=$S(ACHSTY="I":"INITIAL",ACHSTY="P":"PAYMENTS",ACHSTY="S":"SUPPLEMENTS",ACHSTY="C":"CANCEL",ACHSTY="ZA":"ADJUSTMENT",ACHSTY="IP":"INTERIM PAYMENTS",1:"UNKNOWN")
 ;
 I ACHSSET,$D(ACHSTY) D
 .S:'$D(^TMP("ACHSOD",$J,DUZ(2),ACHSTY,ACHSACFY)) ^TMP("ACHSOD",$J,DUZ(2),ACHSTY,ACHSACFY)=0 S X=^TMP("ACHSOD",$J,DUZ(2),ACHSTY,ACHSACFY)
 .S $P(X,U)=$P(X,U)+1
 .S $P(X,U,2)=$P(X,U,2)+O
 .S ^TMP("ACHSOD",$J,DUZ(2),ACHSTY,ACHSACFY)=X
 ;
 ;SET THE FISCAL INTERMEDIARY
 S ACHSFI=$S(ACHSDEST="I":"IHS",1:"FISCAL AGENT")
 S:'$D(^TMP("ACHSOD",$J,DUZ(2),ACHSFI,ACHSACFY)) ^TMP("ACHSOD",$J,DUZ(2),ACHSFI,ACHSACFY)=0
 S ^TMP("ACHSOD",$J,DUZ(2),ACHSFI,ACHSACFY)=^TMP("ACHSOD",$J,DUZ(2),ACHSFI,ACHSACFY)+1
 G A4
 ;
A7 ;
 S F=0,B=9999998-ACHSBDT
REGCHECK ;
 S F=$O(^TMP("ACHSOD",$J,DUZ(2),F)),R="",W=0
 G END:F<1
 S N=$O(^ACHS(9,DUZ(2),"FY",F,"AR",B)) I N]"" S W=$O(^(N,0)) I W,$D(^ACHS(9,DUZ(2),"FY",F,"W",W,1)) S R=$G(^ACHS(9,DUZ(2),"FY",F,"W",W,1))
 I 'ACHSDCR,F'=ACHSCFY D CLSOPEN
 G REGCHECK
 ;
END ;
 K ACHSDCR,ACHSTRDT,ACHSACY,ACHSDEST,ACHSDOCR,ACHSFI,ACHSZYR
 G ^ACHSODP
 ;
CLSOPEN ;
 ;12/27/00  pmf  remove naked refs
 S $P(^ACHS(9,DUZ(2),"FY",F,"W",W,0),U,2)=ACHSEDT
 S R=$G(^ACHS(9,DUZ(2),"FY",F,"W",W,1))
 S ^ACHS(9,DUZ(2),"FY",F,"AR",9999999-ACHSEDT,W)=""
 ;
NEWREG ;
 S W=W+1
 I $D(^ACHS(9,DUZ(2),"FY",F,"W",W)) G NEWREG
 S ^ACHS(9,DUZ(2),"FY",F,"W",W,0)=W
 S ^ACHS(9,DUZ(2),"FY",F,"W",W,1)=R,X="^9002069.02^"
 I $D(^ACHS(9,DUZ(2),"FY",F,"W",0)) S X=$G(^ACHS(9,DUZ(2),"FY",F,"W",0))
 S $P(X,U,3)=W,$P(X,U,4)=$P(X,U,4)+1,^ACHS(9,DUZ(2),"FY",F,"W",0)=X
 Q
 ;