BGP1GRB ; IHS/CMI/LAB - BGP Gui Area Reports 5/2/2005 8:38:59 PM ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
 ;
 ;
 ;area GPRA reports
 Q
 ;
DEBUG(RETVAL,BGPSTR) ;run the debugger
 D DEBUG^%Serenji("FOR^BGP1GRB(.RETVAL,.BGPSTR)")
 Q
 ;
FOR(RETVAL,BGPSTR) ;-- gpra patient forcast report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPGDA,P,R,BGPLST,BGPDIV,BGPBADT,BGPEADT,BGPCLN,BGPPATL,BGPPATI,BGPPAT,BGPCLNL,BGPST,BGPSTI,BGPCNT,BGPFN,BGPANY,BGPAO,BGPAOD,BGPSTM
 S P="|",R="~"
 S RETVAL="^BGPTMP("_$J_")"
 S BGPI=0
 S BGPOPT="CRS 11 PATIENT FORECAST REPORT"
 I $G(BGPSTR)="" D CATSTR^BGP1GU(.BGPSTR,.BGPSTR)
 S BGPLST=$P(BGPSTR,P)
 S BGPDIV=$P(BGPSTR,P,2)
 I BGPDIV]"" S BGPDIV=$O(^DG(40.8,"B",BGPDIV,0))
 S BGPBADT=$P(BGPSTR,P,3)
 S BGPEADT=$P(BGPSTR,P,4)
 S BGPCLNL=$P(BGPSTR,P,5)
 S BGPPATL=$P(BGPSTR,P,6)
 S BGPPATI=$P(BGPSTR,P,7)
 I BGPPATI]"" S BGPPATL(BGPPATI)="",BGPPAT(BGPPATI)=""
 S BGPRT=$P(BGPSTR,P,8)
 S BGPST=$P(BGPSTR,P,9)
 S BGPFN=$P(BGPSTR,P,10)
 S BGPANY=$P(BGPSTR,P,11)
 S BGPAO=$P(BGPSTR,P,12)
 S BGPAOD=$P(BGPSTR,P,13)
 S BGPSTM=$P(BGPSTR,P,14)
 I $G(BGPSTM)]"",BGPSTM'?.N S BGPSTM=$O(^DIBT("B",BGPSTM,0))
 ;I BGPST]"" S BGPSTI=$O(^DIBT("B",BGPST,0))
 I BGPCLNL]"",BGPCLNL'="A" D
 . N I
 . F I=1:1 D  Q:$P(BGPCLNL,R,I)=""
 .. Q:$P(BGPCLNL,R,I)=""
 .. S BGPCLN($P(BGPCLNL,R,I))=$P(BGPCLNL,R,I)
 I BGPPATL]"" D
 . N J
 . F J=1:1 D  Q:$P(BGPPATL,R,J)=""
 .. Q:$P(BGPPATL,R,J)=""
 .. S BGPPAT($P(BGPPATL,R,J))=$P(BGPPATL,R,J)
 I $G(BGPST) D
 . N BGPDA
 . S BGPCNT=0
 . S BGPDA=0 F  S BGPDA=$O(^DIBT(BGPST,1,BGPDA)) Q:'BGPDA  D
 .. S BGPCNT=BGPCNT+1
 .. S BGPPAT(BGPCNT)=BGPDA
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GFOR(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPLST,BGPDIV,BGPBADT,BGPEADT,.BGPCLN,.BGPPAT,BGPRT,BGPFN,BGPANY,BGPAO,BGPAOD,BGPSTM)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
FORD(RETVAL,BGPSTR) ;-- return the patient forecast denominator
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N P,BGPRDT,BGPFN
 S P="|"
 S BGPRDT=$P(BGPSTR,P)
 S BGPFN=$P(BGPSTR,P,2)
 S RETVAL="^BGPTMP("_$J_")"
 S BGPI=0
 S BGPGUI=1
 S BGPOPT="CRS 11 PATIENT FORECAST DENOMINATOR DEFINITIONS"
 D ^XBFMK
 D GUILOG(BGPOPT,BGPRDT,BGPFN)
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 K ZTSAVE S ZTSAVE("*")=""
 S ZTIO="",ZTDTH=$S(BGPRDT]"":BGPRDT,1:$$NOW^XLFDT),ZTRTN="GUIECP^BGP1DPA",ZTDESC="GUI Denominator Definitions" D ^%ZTLOAD
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
AEO(RETVAL,BGPSTR) ;-- area EO report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPYN,BGPOT,BGPOPT,BGPRT,BGPHC
 N BGPQTR,BGPRE,BGPBAS,BGPBEN,BGPFAC,A,R,BGPFN
 I $G(BGPSTR)="" D CATSTR^BGPGR(.BGPSTR,.BGPSTR)
 S P="|",A="*",R="~"
 S BGPI=0
 S BGPERR=""
 S BGPQTR=$P(BGPSTR,P)
 S BGPRT=$P(BGPSTR,P,2)
 S BGPRE=$P(BGPSTR,P,3)
 S BGPPER=$P(BGPSTR,P,4)
 S BGPBAS=$P(BGPSTR,P,5)
 S BGPBEN=$P(BGPSTR,P,6)
 S BGPOT=$P(BGPSTR,P,7)
 S BGPLSTI=$P(BGPSTR,P,8)
 S BGPHC=$P(BGPSTR,P,9)
 S BGPFN=$P(BGPSTR,P,11)
 S BGPOPT="CRS 11 AREA EO REPORT"
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GAEO(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPRT,.BGPLIST,BGPQTR,BGPPER,BGPBAS,BGPBEN,BGPOT,BGPRE,BGPHC,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
GUILOG(BGPOPT,RDT,FN) ;-- log in the GUI REPORT FILE
 D NOW^%DTC
 S BGPNOW=$G(%)
 K DD,D0,DIC
 S X=DUZ_$$NOW^XLFDT
 S X=FN
 S BGPGFNM=X
 S DIC="^BGPGUIB(",DIC(0)="L",DIADD=1,DLAYGO=90546.08,DIC("DR")=".02////"_DUZ_";.03////"_$S(RDT]"":RDT,1:$$NOW^XLFDT)_";.05///"_BGPOPT_";.06///R;.07///P"
 K DD,D0,DO D FILE^DICN K DLAYGO,DIADD,DD,D0,DO
 I Y=-1 S BGPIEN=-1 Q
 S BGPIEN=+Y
 Q
 ;
FOR9(RETVAL,BGPSTR) ;-- gpra patient forcast report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPGDA,P,R,BGPLST,BGPDIV,BGPBADT,BGPEADT,BGPCLN,BGPPATL,BGPPATI,BGPPAT,BGPCLNL,BGPST,BGPSTI,BGPCNT,BGPFN
 S P="|",R="~"
 S RETVAL="^BGPTMP("_$J_")"
 S BGPI=0
 S BGPOPT="CRS 11 PATIENT FORECAST REPORT 11"
 I $G(BGPSTR)="" D CATSTR^BGP1GU(.BGPSTR,.BGPSTR)
 S BGPLST=$P(BGPSTR,P)
 S BGPDIV=$P(BGPSTR,P,2)
 I BGPDIV]"" S BGPDIV=$O(^DG(40.8,"B",BGPDIV,0))
 S BGPBADT=$P(BGPSTR,P,3)
 S BGPEADT=$P(BGPSTR,P,4)
 S BGPCLNL=$P(BGPSTR,P,5)
 S BGPPATL=$P(BGPSTR,P,6)
 S BGPPATI=$P(BGPSTR,P,7)
 I BGPPATI]"" S BGPPATL(BGPPATI)="",BGPPAT(BGPPATI)=""
 S BGPRT=$P(BGPSTR,P,8)
 S BGPST=$P(BGPSTR,P,9)
 S BGPFN=$P(BGPSTR,P,10)
 I BGPST]"" S BGPSTI=$O(^DIBT("B",BGPST,0))
 I BGPCLNL]"",BGPCLNL'="A" D
 . N I
 . F I=1:1 D  Q:$P(BGPCLNL,R,I)=""
 .. Q:$P(BGPCLNL,R,I)=""
 .. S BGPCLN($P(BGPCLNL,R,I))=$P(BGPCLNL,R,I)
 I BGPPATL]"" D
 . N J
 . F J=1:1 D  Q:$P(BGPPATL,R,J)=""
 .. Q:$P(BGPPATL,R,J)=""
 .. S BGPPAT($P(BGPPATL,R,J))=$P(BGPPATL,R,J)
 I $G(BGPSTI) D
 . N BGPDA
 . S BGPCNT=0
 . S BGPDA=0 F  S BGPDA=$O(^DIBT(BGPSTI,1,BGPDA)) Q:'BGPDA  D
 .. S BGPCNT=BGPCNT+1
 .. S BGPPAT(BGPCNT)=BGPDA
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GFO9(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPLST,BGPDIV,BGPBADT,BGPEADT,.BGPCLN,.BGPPAT,BGPRT,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
FOR10(RETVAL,BGPSTR) ;-- gpra patient forcast report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPGDA,P,R,BGPLST,BGPDIV,BGPBADT,BGPEADT,BGPCLN,BGPPATL,BGPPATI,BGPPAT,BGPCLNL,BGPST,BGPSTI,BGPCNT,BGPFN
 S P="|",R="~"
 S RETVAL="^BGPTMP("_$J_")"
 S BGPI=0
 S BGPOPT="CRS 11 PATIENT FORECAST REPORT 11"
 I $G(BGPSTR)="" D CATSTR^BGP1GU(.BGPSTR,.BGPSTR)
 S BGPLST=$P(BGPSTR,P)
 S BGPDIV=$P(BGPSTR,P,2)
 I BGPDIV]"" S BGPDIV=$O(^DG(40.8,"B",BGPDIV,0))
 S BGPBADT=$P(BGPSTR,P,3)
 S BGPEADT=$P(BGPSTR,P,4)
 S BGPCLNL=$P(BGPSTR,P,5)
 S BGPPATL=$P(BGPSTR,P,6)
 S BGPPATI=$P(BGPSTR,P,7)
 I BGPPATI]"" S BGPPATL(BGPPATI)="",BGPPAT(BGPPATI)=""
 S BGPRT=$P(BGPSTR,P,8)
 S BGPST=$P(BGPSTR,P,9)
 S BGPFN=$P(BGPSTR,P,10)
 I BGPST]"" S BGPSTI=$O(^DIBT("B",BGPST,0))
 I BGPCLNL]"",BGPCLNL'="A" D
 . N I
 . F I=1:1 D  Q:$P(BGPCLNL,R,I)=""
 .. Q:$P(BGPCLNL,R,I)=""
 .. S BGPCLN($P(BGPCLNL,R,I))=$P(BGPCLNL,R,I)
 I BGPPATL]"" D
 . N J
 . F J=1:1 D  Q:$P(BGPPATL,R,J)=""
 .. Q:$P(BGPPATL,R,J)=""
 .. S BGPPAT($P(BGPPATL,R,J))=$P(BGPPATL,R,J)
 I $G(BGPSTI) D
 . N BGPDA
 . S BGPCNT=0
 . S BGPDA=0 F  S BGPDA=$O(^DIBT(BGPSTI,1,BGPDA)) Q:'BGPDA  D
 .. S BGPCNT=BGPCNT+1
 .. S BGPPAT(BGPCNT)=BGPDA
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GFO9(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPLST,BGPDIV,BGPBADT,BGPEADT,.BGPCLN,.BGPPAT,BGPRT,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
ADASH(RETVAL,BGPSTR) ;-- area dashboard
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPAF,BGPYN,BGPOT,BGPOPT,BGPRT,BGPFN,A,R
 I $G(BGPSTR)="" D CATSTR^BGPGR(.BGPSTR,.BGPSTR)
 S P="|",A="*",R="~"
 S BGPI=0
 S BGPERR=""
 S BGPAF=$P(BGPSTR,P)
 S BGPOT=$P(BGPSTR,P,2)
 S BGPFN=$P(BGPSTR,P,3)
 S BGPOPT="CRS 11 AREA NATIONAL GPRA DASHBOARD REPORT"
 S BGPRT=$P(BGPSTR,P,4)
 S BGPLSTI=$P(BGPSTR,P,5)
 S BGPFN=$P(BGPSTR,P,7)
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T02500DATA"_$C(30)
 D EP^BGP1GADB(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPAF,.BGPLIST,BGPOT,BGPRT,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;