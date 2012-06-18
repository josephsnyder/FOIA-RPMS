ACHSUF ; IHS/ITSC/PMF - SET CHS FACILITY VARS, CHECK DATA INTEGRITY ;   [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 I $D(ACHSCHSS) S ACHSCHSS="V"
 E  S ACHSCHSS=""
 I '$D(^ACHS(9,DUZ(2),"CHK")) S ^ACHS(9,DUZ(2),"CHK")=""
 D FC
 I $D(ACHSERR),ACHSERR=1 G K
 D C0SUB
 I $D(ACHSERR),ACHSERR=1 G GLOBERR
 G ERR:'$D(^ACHS(9,DUZ(2),0))
 D FY
 G S16:'$D(ACHSFYWK(DUZ(2),ACHSCFY))
 S ACHSACWK=ACHSFYWK(DUZ(2),ACHSCFY)
 I ACHSACWK=0,'$D(^ACHS(9,DUZ(2),"FY",ACHSACFY,0)) G S16
 I $D(^ACHS(9,DUZ(2),"FY",ACHSACFY,"W",ACHSACWK,0)) S ACHS("ZL")=$P(^(0),U,2) G END:ACHS("ZL")="",S15:+ACHS("ZL")'<DT!(+ACHS("ZL")=DT)
 I ACHSACWK,$D(^ACHS(9,DUZ(2),"FY",ACHSACFY,"W",ACHSACWK,0)) S ACHS("ZL")=$P(^(0),U,2) G END:ACHS("ZL")="",S15:ACHS("ZL")'<DT!(+ACHS("ZL")=DT)
 ;
 G END:$D(^ACHS(9,DUZ(2),"FY",ACHSACFY,"W",ACHSACWK+1,0))
 G S17:'$D(^ACHS(9,DUZ(2),"FY",ACHSACFY,"W",ACHSACWK,1))
 ;
INIT ;EP
 S R=0
 I '$$LOCK^ACHS("^ACHS(9,DUZ(2))","+") W !,"LOCK FAILED AT INIT+2^ACHSUF" S ACHSERR=10 Q
I1 ;
 S R=$O(ACHSFYWK(DUZ(2),R))
 G INITEND:+R=0
 S X=+ACHSFYWK(DUZ(2),R),ACHSXX=$G(^ACHS(9,DUZ(2),"FY",R,"W",X,1))
 S ^ACHS(9,DUZ(2),"FY",R,"W",X+1,0)=X+1
 S ^ACHS(9,DUZ(2),"FY",R,"W",X+1,1)=ACHSXX
 S $P(^ACHS(9,DUZ(2),"FY",R,"W",0),U,4)=$P(^ACHS(9,DUZ(2),"FY",R,"W",0),U,4)+1,$P(^(0),U,3)=X+1
 G I1
 ;
INITEND ;
 I '$$LOCK^ACHS("^ACHS(9,DUZ(2))","-")
END ;
 S ACHSERR=0
 K ACHSGCHK
 D C0SUB
 G GLOBERR:ACHSERR>0
 S ^ACHS(9,DUZ(2),"CHK")=DT
K ;
 K ACHS("FYX"),ACHS("ZL"),ACHSACWK,ACHSCHSS,ACHSXX
 Q
 ;
ERR ;
 W:'$D(ACHSISAO) *7,!!,"  The Parameters For This Facility Are Incomplete"
ERR1 ;
 S ACHSERR=1
 W:'$D(ACHSISAO) !!?15,"PLEASE CONTACT YOUR SITE MANAGER FOR ASSISTANCE",!
 G K
 ;
INERR ;
 W:'$D(ACHSISAO) *7,!!,"  THE PARAMETER FILE FOR THIS FACILITY HAS NOT BEEN INITIALIZED,",!
 G ERR1
 ;
FNCDERR ;
 W:'$D(ACHSISAO) *7,!!?10,"THE FINANCE PARAMETERS FOR THIS FACILITY ARE INCOMPLETE,",!
 G ERR1
 ;
GLOBERR ;EP.
 W:'$D(ACHSISAO) *7,!!,"  AN ERROR HAS BEEN DETECTED IN GLOBAL STRUCTURE OF 'CHS DATA CONTROL' FILE"
 G ERR1
 ;
S15 ;
 W:ACHSCHSS'="V"&('$D(ACHSISAO)) !!,"The Control Register Has Been CLOSED For This Date"
 G S18
 ;
S16 ;
 Q:$D(ACHS("SETNEW"))
 Q:$D(ACHSISAO)
 U IO(0)
 W *7,*7,!!!,"THE CHS SYSTEM HAS NOT BEEN INITIALIZED FOR THE CURRENT FISCAL YEAR",!!
 S Y=$$DIR^XBDIR("Y","SHALL I SET IT UP FOR YOU NOW","NO","","","^D HELP^ACHS(""H"",""ACHSUF"")")
 I $D(DUOUT)!$D(DTOUT)!('Y) S ACHSERR=1 G K
 S ACHS("YR")=ACHSACFY,ACHSAUTO=""
 W !!,"SETTING UP NEW FISCAL YEAR.  PLEASE WAIT........"
 D AUTO^ACHSNEW
 I $D(ACHSERR),ACHSERR=1 G ERR1
 D C0SUB
 U IO(0)
 W *7,*7,!!,"A NEW FISCAL YEAR "_ACHSCFY_" HAS BEEN SET UP.",!,"PLEASE NOTIFY THE CONTRACT HEALTH MANAGER.",!
 I $$DIR^XBDIR("E","Press RETURN...")
 Q
 ;
S17 ;
 U IO(0)
 W:'$D(ACHSISAO) !!,"SYSTEM ERROR"
S18 ;
 W:ACHSCHSS'="V"&('$D(ACHSISAO)) *7,!!
 G END
 ;
C0SUB ;EP - Ensure the number of registers agree with 0th node.
 ; Set the ACHSFYWK array.
 ; ACHSRX is Fiscal Year.  ACHSRXX is Register (DCR) number.
 I ^ACHS(9,DUZ(2),"CHK")=DT D WK Q
 S (ACHSRX,ACHSRXX)=0
C1 ;
 S ACHSRX=$O(^ACHS(9,DUZ(2),"FY",ACHSRX))
 G C1:ACHSRX=0,CEND:+ACHSRX=0
 S (ACHSRXX,ACHSTCNT)=0
 S ACHSSRXX=""
C2 ;
 F ACHS=0:0 S ACHSRXX=$O(^ACHS(9,DUZ(2),"FY",ACHSRX,"W",ACHSRXX)) Q:+ACHSRXX=0  S ACHSFYWK(DUZ(2),ACHSRX)=ACHSRXX,ACHSTCNT=ACHSTCNT+1,ACHSSRXX=ACHSRXX,ACHS("FYX")=ACHSRX
C3 ;
 I '$D(^ACHS(9,DUZ(2),"FY",ACHSRX,"W")) S ACHSERR=1 G CEND
 I ACHSTCNT'=$P(^ACHS(9,DUZ(2),"FY",ACHSRX,"W",0),U,4) S ACHSERR=1
 I ACHSSRXX'=$P(^ACHS(9,DUZ(2),"FY",ACHSRX,"W",0),U,3) S ACHSERR=1
 G C1
 ;
CEND ;
 K ACHSTCNT,ACHSRX,ACHSRXX,ACHSSRXX
 Q
 ;
FY ;EP - Set FY and Current FY.
 S ACHSACFY=$E(DT,1,3)
 ;
 ; IHS facilities FY start date is Oct 1.
 I $P(^ACHSF(DUZ(2),0),U,8)'="Y" S $P(^ACHSF(DUZ(2),0),U,6)="1001",$P(^ACHSF(DUZ(2),0),U,7)=1
 ;
 ; 638 facilities not having FY start date will default to Oct 1.
 I '$P(^ACHSF(DUZ(2),0),U,6) S $P(^(0),U,6)="1001",$P(^(0),U,7)=1
 ;
 ; Calculate when the next FY starts.
 S ACHSFYDT=$E(DT,1,3)_$P($G(^ACHSF(DUZ(2),0)),U,6)
 I $E(DT,4,7)>($E(ACHSFYDT,4,7)-1) S ACHSFYDT=ACHSFYDT+10000
 ;
 ; Check if today is after FY start date, adjust with parameter.
 I $E(DT,4,7)>($P($G(^ACHSF(DUZ(2),0)),U,6)-1) S ACHSACFY=ACHSACFY+$P($G(^(0)),U,7)
 ; Some 638 facilities do not start FY until after the CY starts.
 I $E(DT,4,7)<($P($G(^ACHSF(DUZ(2),0)),U,6)),'$P($G(^(0)),U,7) S ACHSACFY=ACHSACFY-1
 S ACHSACFY=ACHSACFY+1700,ACHSCFY=ACHSACFY
 Q
 ;
FC ;EP - Set Finance Code.
 K ACHSERR
 S ACHSFC=$P($G(^AUTTLOC(DUZ(2),0)),U,17)
 I $L(ACHSFC)'=3 G FNCDERR
 S ACHSFC=$P($G(^AUTTAREA($P($G(^AUTTLOC(DUZ(2),0)),U,4),0)),U,3)_$E(ACHSFC,2,3)
 Q
 ;
WK ;SET ACHSFYWK ARRAY
 S ACHSRX=0
WK1 ;
 S ACHSRX=$O(^ACHS(9,DUZ(2),"FY",ACHSRX))
 G WK1:ACHSRX=0
 I +ACHSRX=0 K ACHSRX Q
 S ACHSFYWK(DUZ(2),ACHSRX)=$P($G(^ACHS(9,DUZ(2),"FY",ACHSRX,"W",0)),U,3)
 G WK1
 Q
 ;
H ;EP - From DIR via HELP^ACHS().
 ;;@;!,"IF YOU ANSWER 'Y' OR 'YES' A NEW FISCAL YEAR ENTRY WILL BE CREATED."
 ;;@;!,"IF YOU ANSWER 'N' OR 'NO' YOU WILL EXIT BACK TO THE MENU."
 ;;@;!,"IF YOU HAVE QUESTIONS PLEASE CONTACT YOUR CONTRACT HEALTH MANAGER.",!
 ;;@;$S($$DIR^XBDIR("E","Press <RETURN> To Continue...."):"",1:"")
 ;;###
 ;
