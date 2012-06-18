BGP1GRA ; IHS/CMI/LAB - BGP Gui Area Reports 5/2/2005 8:38:59 PM ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
 ;
 ;
 ;area GPRA reports
 Q
 ;
DEBUG(RETVAL,BGPSTR) ;run the debugger
 D DEBUG^%Serenji("AONM^BGP1GRA(.RETVAL,.BGPSTR)")
 Q
 ;
AGP(RETVAL,BGPSTR) ;-- queue National GPRA Report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPAF,BGPYN,BGPOT,BGPOPT,BGPRT,BGPFN,A,R
 I $G(BGPSTR)="" D CATSTR^BGPGR(.BGPSTR,.BGPSTR)
 S P="|",A="*",R="~"
 S BGPI=0
 S BGPERR=""
 S BGPAF=$P(BGPSTR,P)
 S BGPOT=$P(BGPSTR,P,2)
 S BGPFN=$P(BGPSTR,P,3)
 S BGPOPT="CRS 11 AREA NATIONAL GPRA REPORT"
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
 D EP^BGP1GAGP(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPAF,.BGPLIST,BGPOT,BGPFN,BGPRT,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
AELD(RETVAL,BGPSTR) ;-- area elder care report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPYN,BGPOT,BGPOPT,BGPRT
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
 S BGPFN=$P(BGPSTR,P,11)
 S BGPOPT="CRS 11 AREA ELDER CARE REPORT"
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GAEL(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPRT,.BGPLIST,BGPQTR,BGPPER,BGPBAS,BGPBEN,BGPOT,BGPRE,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
AHED(RETVAL,BGPSTR) ;-- area hedis report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPYN,BGPOT,BGPOPT,BGPRT
 N BGPQTR,BGPRE,BGPBAS,BGPBEN,BGPFAC,BGPFN
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
 S BGPFN=$P(BGPSTR,P,11)
 S BGPOPT="CRS 11 AREA HEDIS REPORT"
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GAHE(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPRT,.BGPLIST,BGPQTR,BGPPER,BGPBAS,BGPBEN,BGPOT,BGPRE,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
APER(RETVAL,BGPSTR) ;-- area performance report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPYN,BGPOT,BGPOPT,BGPRT
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
 S BGPFN=$P(BGPSTR,P,11)
 S BGPOPT="CRS 11 AREA GPRA PERFORMANCE REPORT"
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GAPU(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPRT,.BGPLIST,BGPQTR,BGPPER,BGPBAS,BGPBEN,BGPOT,BGPRE,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
CHW(RETVAL,BGPSTR) ;-- queue National GPRA Report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPAF,BGPYN,BGPOT,BGPMSG,BGPOPT,BGPRT,BGPFN,A,R,BGPOM,BGPFN
 I $G(BGPSTR)="" D CATSTR^BGPGR(.BGPSTR,.BGPSTR)
 S P="|",A="*",R="~"
 S BGPI=0
 S BGPERR=""
 S BGPAF=$P(BGPSTR,P)
 S BGPOPT="CRS 11 AREA HEIGHT AND WEIGHT DATA FILE"
 S BGPRT=$P(BGPSTR,P,4)
 S BGPLSTI=$P(BGPSTR,P,5)
 S BGPOM=$P(BGPSTR,P,6)
 S BGPFN=$P(BGPSTR,P,7)
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GACW(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPAF,.BGPLIST,BGPRT,BGPOM,BGPFN)
 S BGPMSG=$P(BGPERR,U,2)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
APED(RETVAL,BGPSTR) ;-- area elder care report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPYN,BGPOT,BGPOPT,BGPRT,BGPFN
 N BGPQTR,BGPRE,BGPBAS,BGPBEN,BGPFAC,A,R,BGPBG
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
 S BGPBG=$P(BGPSTR,P,10)
 S BGPFN=$P(BGPSTR,P,11)
 S BGPOPT="CRS 11 AREA PATIENT EDUCATION REPORT"
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GAPE(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPRT,.BGPLIST,BGPQTR,BGPPER,BGPBAS,BGPBEN,BGPOT,BGPRE,BGPFN,BGPBG)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
AONM(RETVAL,BGPSTR) ;-- area other national measures
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPYN,BGPOT,BGPOPT,BGPRT,BGPFN
 N BGPQTR,BGPRE,BGPBAS,BGPBEN,BGPFAC,A,R,BGPHC
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
 S BGPOPT="CRS 11 AREA OTHER NATIONAL MEASURES REPORT"
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GAON(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPRT,.BGPLIST,BGPQTR,BGPPER,BGPBAS,BGPBEN,BGPOT,BGPRE,BGPHC,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
ONM(RETVAL,BGPSTR) ;-- queue Other National Measures Report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPYN,BGPOT,BGPOPT,BGPRT,BGPIND,BGPLIST
 N BGPQTR,BGPRE,BGPBAS,BGPBEN,BGPINDI,R,BGPHC,BGPFN
 S P="|",R="~"
 S BGPI=0
 S BGPERR=""
 S BGPCT=$P($P(BGPSTR,P),R)
 I $P(BGPCT,R)'?.N S BGPCT=$O(^ATXAX("B",BGPCT,0))
 ;S BGPCT=$O(^ATXAX("B",BGPCT,0))
 S BGPYN=$P(BGPSTR,P,2)
 S BGPQTR=$P(BGPSTR,P,3)
 S BGPRT=$P(BGPSTR,P,4)
 S BGPRE=$P(BGPSTR,P,5)
 S BGPBAS=$P(BGPSTR,P,6)
 S BGPBEN=$P(BGPSTR,P,7)
 S BGPOT=$P(BGPSTR,P,8)
 S BGPMFITI=$P(BGPSTR,P,9)
 S BGPHC=$P(BGPSTR,P,10)
 S BGPFN=$P(BGPSTR,P,11)
 S BGPOPT="CRS 11 OTHER NATIONAL MEASURES REPORT"
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GDON(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPCT,BGPQTR,BGPRE,BGPBAS,BGPBEN,BGPYN,BGPOT,BGPRT,BGPMFITI,BGPHC,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
ONML(RETVAL,BGPSTR) ;-- queue other national measures patient lists
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPDT,BGPOT,BGPOPT,BGPRT,BGPPIEN,BGPPRV,BGPQTR,BGPLST,R,BGPIND,BGPINDL
 N BGPBLDT,BGPBEN,BGPFN
 S P="|",R="~"
 S BGPI=0
 S BGPERR=""
 I $G(BGPSTR)="" D CATSTR^BGP1GR(.BGPSTR,.BGPSTR)
 S BGPCT=$P($P(BGPSTR,P),R)
 I $P(BGPCT,R)'?.N S BGPCT=$O(^ATXAX("B",BGPCT,0))
 ;S BGPCT=$O(^ATXAX("B",BGPCT,0))
 S BGPDT=$P(BGPSTR,P,2)
 S BGPPIEN=$P($P(BGPSTR,P,3),R)
 S BGPPRV=$P($P(BGPSTR,P,3),R,2)
 S BGPOPT="CRS 11 OTHER NATIONAL MEASURES PAT LISTS"
 S BGPOT=$P(BGPSTR,P,4)
 S BGPRT=$P(BGPSTR,P,5)
 S BGPQTR=$P(BGPSTR,P,6)
 S BGPLST=$P(BGPSTR,P,7)
 S BGPMFITI=$P(BGPSTR,P,8)
 S BGPBLDT=$P(BGPSTR,P,9)
 S BGPBEN=$P(BGPSTR,P,10)
 S BGPFN=$P(BGPSTR,P,11)
 N I
 ;F I=11:1 D  Q:$P(BGPSTR,P,I)=""
 F I=13:1 D  Q:$P(BGPSTR,P,I)=""
 . Q:$P(BGPSTR,P,I)=""
 . N BGPNSTR
 . S BGPNSTR=$P(BGPSTR,P,I)
 . S BGPINDI=$P(BGPNSTR,R)
 . S BGPIND(BGPINDI)=""
 . N J
 . F J=2:1 D  Q:$P(BGPNSTR,R,J)=""
 .. Q:$P(BGPNSTR,R,J)=""
 .. N BGPSIND
 .. S BGPSIND=$P(BGPNSTR,R,J)
 .. S BGPINDL(BGPINDI,BGPSIND)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GNPL(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPCT,.BGPIND,.BGPINDL,BGPQTR,BGPDT,BGPLST,BGPPIEN,BGPPRV,BGPOT,BGPRT,BGPMFITI,BGPBLDT,BGPBEN,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
AGP9(RETVAL,BGPSTR) ;-- queue National GPRA Report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPAF,BGPYN,BGPOT,BGPOPT,BGPRT,BGPFN,A,R,BGPFLN
 I $G(BGPSTR)="" D CATSTR^BGPGR(.BGPSTR,.BGPSTR)
 S P="|",A="*",R="~"
 S BGPI=0
 S BGPERR=""
 S BGPAF=$P(BGPSTR,P)
 S BGPOT=$P(BGPSTR,P,2)
 S BGPFN=$P(BGPSTR,P,3)
 S BGPOPT="CRS 11 AREA GPRA REPORT FOR 10"
 S BGPRT=$P(BGPSTR,P,4)
 S BGPLSTI=$P(BGPSTR,P,5)
 S BGPFLN=$P(BGPSTR,P,7)
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T02500DATA"_$C(30)
 D EP^BGP1GAG9(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPAF,.BGPLIST,BGPOT,BGPFN,BGPRT,BGPFLN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
AGP10(RETVAL,BGPSTR) ;-- queue National GPRA Report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPAF,BGPYN,BGPOT,BGPOPT,BGPRT,BGPFN,A,R,BGPFLN
 I $G(BGPSTR)="" D CATSTR^BGPGR(.BGPSTR,.BGPSTR)
 S P="|",A="*",R="~"
 S BGPI=0
 S BGPERR=""
 S BGPAF=$P(BGPSTR,P)
 S BGPOT=$P(BGPSTR,P,2)
 S BGPFN=$P(BGPSTR,P,3)
 S BGPOPT="CRS 11 AREA GPRA REPORT FOR 10"
 S BGPRT=$P(BGPSTR,P,4)
 S BGPLSTI=$P(BGPSTR,P,5)
 S BGPFLN=$P(BGPSTR,P,7)
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T02500DATA"_$C(30)
 D EP^BGP1GAG9(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPAF,.BGPLIST,BGPOT,BGPFN,BGPRT,BGPFLN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
AGPSUM(RETVAL,BGPSTR) ;-- queue National GPRA Report
 S X="MERR^BGP1GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPAF,BGPYN,BGPOT,BGPOPT,BGPRT,BGPFN,A,R,BGPSUMON
 I $G(BGPSTR)="" D CATSTR^BGPGR(.BGPSTR,.BGPSTR)
 S P="|",A="*",R="~"
 S BGPI=0
 S BGPERR=""
 S BGPAF=$P(BGPSTR,P)
 S BGPOT=$P(BGPSTR,P,2)
 S BGPOPT="CRS 11 AREA NTL GPRA SUM"
 S BGPRT=$P(BGPSTR,P,4)
 S BGPLSTI=$P(BGPSTR,P,5)
 S BGPFN=$P(BGPSTR,P,7)
 S BGPSUMON=1
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP1GAGS(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPAF,.BGPLIST,BGPOT,BGPRT,BGPSUMON,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
