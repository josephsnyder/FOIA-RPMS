BGP5GU ; IHS/CMI/LAB - BGP Gui Utilities 10/29/2004 3:28:39 PM 19 Sep 2005 5:28 PM 27 Apr 2010 10:28 PM ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;
DEBUG(RETVAL,BGPSTR) ;run the debugger
 D DEBUG^%Serenji("UPL^BGP5GU(.RETVAL,.BGPSTR)")
 Q
 ;
KEYS(RETVAL,BGPSTR) ;-- return keys for user
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N BGPDA,BGPNS,P,BGPDATA,BGPKEYI,BGPKEY,BGPI
 S BGPI=0
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00030KEYS"_$C(30)
 S P="|"
 S BGPNS=$P(BGPSTR,P)
 S BGPDA=0 F  S BGPDA=$O(^VA(200,DUZ,51,BGPDA)) Q:'BGPDA  D
 . S BGPDATA=$G(^VA(200,DUZ,51,BGPDA,0))
 . S BGPKEYI=$P(BGPDATA,U)
 . S BGPKEY=$P($G(^DIC(19.1,BGPKEYI,0)),U)
 . I BGPNS'="*" Q:$E(BGPKEY,1,$L(BGPNS))'[BGPNS
 . S BGPI=BGPI+1
 . S ^BGPTMP($J,BGPI)=BGPKEY_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)_$G(BGPERR)
 Q
 ;
SP(RETVAL,BGPSTR) ;-- get the site parameter entry
 N BGPDA,BGPI,P
 S P="|"
 S BGPSE=$P(BGPSTR,P)
 I BGPSE="" S BGPSE=DUZ(2)
 I BGPSE'?.N S BGPSE=$O(^DIC(4,"B",BGPSE,0))
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S BGPI=0
 S ^BGPTMP($J,BGPI)="T00010BMXIEN^T00050Location^T00050Home Location^T00050Community Taxonomy^T00001EISS"_$C(30)
 S BGPDA=0 F  S BGPDA=$O(^BGPSITE("B",BGPSE,BGPDA)) Q:'BGPDA  D
 . N BGPDATA,BGPLI,BGPL,BGPLA,BGPHI,BGPH,BGPHA,BGPTX,BGPTXI,BGPEISS
 . S BGPDATA=$G(^BGPSITE(BGPDA,0))
 . S BGPLI=$P(BGPDATA,U)
 . S BGPL=$P($G(^DIC(4,BGPLI,0)),U)
 . S BGPLA=$P($G(^AUTTLOC(BGPLI,0)),U,10)
 . S BGPHI=$P(BGPDATA,U,2)
 . S BGPH=$S($G(BGPHI):$P($G(^DIC(4,BGPHI,0)),U),1:"")
 . S BGPHA=$S($G(BGPHI):$P($G(^AUTTLOC(BGPHI,0)),U,10),1:"")
 . S BGPTXI=$P(BGPDATA,U,5)
 . S BGPTX=$S($P(BGPDATA,U,5):$P($G(^ATXAX($P(BGPDATA,U,5),0)),U),1:"")
 . S BGPEISS=$S($P(BGPDATA,U,8):1,1:0)
 . S BGPI=BGPI+1
 . S ^BGPTMP($J,BGPI)=BGPDA_U_$S($G(BGPLI):BGPLI_"~"_BGPL,1:"")_U_$S($G(BGPHI):BGPHI_"~"_BGPH,1:"")_U_$S($G(BGPTXI):BGPTXI_"~"_$G(BGPTX),1:"")_U_$G(BGPEISS)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)_$G(BGPERR)
 Q
 ;
TAXCHK(RETVAL,BGPSTR) ;-- check taxonomies for National GPRA Report
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,BGPRTN,P,BGPCALL
 S P="|"
 S BGPI=0
 S BGPERR=""
 S BGPRTN=$P(BGPSTR,P)
 S BGPCALL=$P(BGPSTR,P,2)
 I BGPCALL="GPU" S BGPYGPU=1
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 S BGPJ=0
 S IOM=80
 D GUIR^BGPXBLM("GUICHK^"_BGPRTN,"^XTMP(""BGPTAX"",$J)")
 S BGPDA=.5 F  S BGPDA=$O(^XTMP("BGPTAX",$J,BGPDA)) Q:'BGPDA  D
 . N BGPDATA
 . S BGPI=BGPI+1
 . S BGPDATA=$G(^XTMP("BGPTAX",$J,BGPDA))
 . S ^BGPTMP($J,BGPI)=BGPDATA_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)_BGPERR
 K ^XTMP("BGPTAX",$J)
 Q
 ;
CATSTR(BGPSRET,STR) ;EP -- concatenate a long string in
 N BGPDA
 S BGPSRET=""
 S BGPDA=0 F  S BGPDA=$O(STR(BGPDA)) Q:'BGPDA  D
 . S BGPSRET=BGPSRET_$G(STR(BGPDA))
 Q
 ;
MERR ; MUMPS ERROR TRAP
 N BGPX
 X ("S BGPX=$"_"ZE")
 S BGPX="MUMPS error: """_BGPX_""""
 D ^%ZTER
 D ERR(BGPX)
 Q
 ;
ERR(ERR) ; BMX ADO SCHEMA ERROR PROCESSOR
 N BGPXA
 S BGPXA="0|"_ERR_$C(31)  ;cmi/maw changed to end of table marker crs 8.0 p2
 S @RETVAL@(1)=BGPXA
 Q
 ;
FAC(RETVAL,BGPSTR) ;-- return facilities based on parameters passed
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPYN,BGPOT,BGPOPT,BGPRT
 N BGPQTR,BGPRE,BGPBAS,BGPBEN,BGPFAC
 S P="|"
 S BGPI=0
 S BGPERR=""
 S BGPRT=$P(BGPSTR,P)
 S BGPPER=$P(BGPSTR,P,2)
 S BGPQTR=$P(BGPSTR,P,3)
 S BGPBAS=$P(BGPSTR,P,4)
 S BGPBEN=$P(BGPSTR,P,5)
 S BGPNGR09=$P(BGPSTR,P,6)  ;crs 8.0 p3 for area 09 report
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00007BMXIEN^T00030Service Unit^T00030Facility^T00020Begin Date^T00020End Date^T00020Base Beg^T00020Base End^T00020Date Run"_$C(30)
 D GET^BGP5ASL(.BGPFAC,.BGPFILE,BGPRT,BGPPER,BGPQTR,BGPBAS,BGPBEN)
 N BGPDA  S BGPDA=0 F  S BGPDA=$O(BGPFAC(BGPDA)) Q:'BGPDA  D
 . S BGPI=BGPI+1
 . S ^BGPTMP($J,BGPI)=BGPDA_U_$G(BGPFAC(BGPDA))_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)_BGPERR
 D EN^XBVK("BGP")
 Q
 ;
SITE(RETVAL,BGPSTR) ;-- save the site parameters
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPFAC,BGPTAX,BGPHLOC,R,BGPEISS
 S P="|",R="~"
 S BGPI=0
 S BGPERR=""
 S BGPFAC=$P($P(BGPSTR,P),R)
 S BGPTAX=$P($P(BGPSTR,P,2),R)
 S BGPHLOC=$P($P(BGPSTR,P,3),R)
 S BGPHLOCI=$O(^AUTTLOC("B",BGPHLOC,0))
 S BGPEISS=$P(BGPSTR,P,4)
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00007BMXIEN^T00030Error"_$C(30)
 N BGPFDA,BGPIENS,BGPERR
 I $O(^BGPSITE("B",BGPFAC,0)) D
 . S BGPIENS=$O(^BGPSITE("B",BGPFAC,0))_","
 . S BGPFDA(90241.02,BGPIENS,.05)=BGPTAX
 . S BGPFDA(90241.02,BGPIENS,.02)=BGPHLOC
 . S BGPFDA(90241.02,BGPIENS,.04)=BGPEISS
 . D FILE^DIE("K","BGPFDA","BGPERR(1)")
 . I $G(BGPERR(1)) D  Q
 .. S BGPI=BGPI+1
 .. S ^BGPTMP($J,BGPI)="1^Error Saving Site Parameters"
 . S BGPI=BGPI+1
 . S ^BGPTMP($J,BGPI)="0^Site Parameters Saved"
 I '$O(^BGPSITE("B",BGPFAC,0)) D
 . S BGPIENS=""
 . S BGPIENS(1)=BGPFAC
 . S BGPFDA(90241.02,"+1,",.01)=BGPFAC
 . S BGPFDA(90241.02,"+1,",.02)=BGPHLOC
 . S BGPFDA(90241.02,"+1,",.04)=BGPEISS
 . S BGPFDA(90241.02,"+1,",.05)=BGPTAX
 . D UPDATE^DIE("","BGPFDA","BGPIENS","BGPERR(1)")
 . I $G(BGPERR(1)) D  Q
 .. S BGPI=BGPI+1
 .. S ^BGPTMP($J,BGPI)="1^Error Saving Site Parameters"
 . S BGPI=BGPI+1
 . S ^BGPTMP($J,BGPI)="0^Site Parameters Saved"
 S ^BGPTMP($J,BGPI+1)=$C(31)_BGPERR
 D EN^XBVK("BGP")
 Q
 ;
LST(RETVAL,BGPSTR) ;-- list files
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPYN,BGPOT,BGPOPT,BGPRT
 S P="|"
 S BGPI=0
 S BGPERR=""
 S BGPCT=$P(BGPSTR,P)
 S BGPCT=$O(^ATXAX("B",BGPCT,0))
 S BGPYN=$P(BGPSTR,P,2)
 S BGPOT=$P(BGPSTR,P,3)
 S BGPOPT=$P(BGPSTR,P,4)
 S BGPRT=$P(BGPSTR,P,5)
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP5GLST(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPCT,BGPYN,BGPOT,BGPRT)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)_BGPERR
 D EN^XBVK("BGP")
 Q
 ;
DELRPT(RETVAL,BGPSTR) ;-- delete a report out of the BGP 15 GUI REPORT file
 S X="MERR^BGPGU",@^%ZOSF("TRAP") ; m error trap
 N P,R,I
 S P="|",R="~"
 S BGPERR=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 I BGPSTR'[R S BGPSTR=R_BGPSTR  ;ihs/cmi/maw v11.1 04/29/2014
 F I=2:1 D  Q:$P(BGPSTR,R,I)=""
 . N BGPI
 . Q:$P(BGPSTR,R,I)=""
 . S BGPI=$P(BGPSTR,R,I)
 . S DIK="^BGPGUIK(",DA=BGPI D ^DIK
 S ^BGPTMP($J,0)="T00250DATA"_$C(30)
 S ^BGPTMP($J,1)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,2)=$C(31)_BGPERR
 Q
 ;
ST(RETVAL,BGPSTR) ;-- return search templates by file
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N P,BGPI,R,BGPFLS
 S P="|",R="~"
 S BGPFLS=$P(BGPSTR,P)
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S BGPI=0
 S ^BGPTMP($J,BGPI)="T00007BMXIEN^T00050Search Template"_$C(30)
 N I
 F I=1:1 D  Q:$P(BGPFLS,R,I)=""
 . Q:$P(BGPFLS,R,I)=""
 . S BGPFLS($P(BGPFLS,R,I))=$P(BGPFLS,R,I)
 N BGPDA
 S BGPDA=0 F  S BGPDA=$O(^DIBT(BGPDA)) Q:'BGPDA  D
 . N BGPFL
 . S BGPFL=$P($G(^DIBT(BGPDA,0)),U,4)
 . Q:'BGPFL
 . Q:'$D(BGPFLS(BGPFL))
 . S BGPI=BGPI+1
 . S ^BGPTMP($J,BGPI)=BGPDA_U_$P($G(^DIBT(BGPDA,0)),U)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
UPL(RETVAL,BGPSTR) ;-- upload a file
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N BGPOPT
 S BGPP="|",BGPR="~"
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S BGPI=0
 I $G(BGPSTR)="" D CATSTR(.BGPSTR,.BGPSTR)
 S BGPOPT="BGP 15 UPLOAD FILES"
 F BGPII=2:1 D  Q:$P(BGPSTR,BGPP,BGPII)=""
 . Q:$P(BGPSTR,BGPP,BGPII)=""
 . N BGPFD,BGPDIR,BGPFL
 . S BGPFD=$P(BGPSTR,BGPP,BGPII)
 . S BGPDIR=$P(BGPFD,BGPR,1)
 . S BGPFL=$P(BGPFD,BGPR,2)
 . D EP^BGP5GUPL(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPDIR,BGPFL,DT)
 S ^BGPTMP($J,BGPI)="T00001Error^T00080ErrorMessage"_$C(30)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
LSTF(RETVAL,BGPSTR) ;-- list files
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N P,BGPDIR,BGPFL,BGPOPT,BGPI
 S P="|"
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S BGPI=0
 S BGPDIR=$P(BGPSTR,P)
 K BGPLIST S BGPLIST="",X=$$LIST^%ZISH(BGPDIR,"BG151*",.BGPLIST)
 S BGPOPT="BGP 15 UPLOAD FILES"
 S ^BGPTMP($J,BGPI)="T00080Directory^T00080File Name"_$C(30)
 N BGPDA
 S BGPDA=0 F  S BGPDA=$O(BGPLIST(BGPDA)) Q:'BGPDA  D
 . N BGPFL
 . S BGPFL=$G(BGPLIST(BGPDA))
 . S BGPI=BGPI+1
 . S ^BGPTMP($J,BGPI)=BGPDIR_U_BGPFL_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
CHK(BGPRET,BGPSTR) ;check report status
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N P,BGPDUZ2,BGPI
 S P="|"
 S BGPDUZ=$P(BGPSTR,P)
 K ^BGPTMP($J)
 S BGPRET="^BGPTMP("_$J_")"
 S BGPI=0
 S ^BGPTMP($J,BGPI)="T00007BMXIEN^T00030Name^T00030User^T00030Start Time^T00030End Time^T00030Type of Report^T00020Report Status^T00020Type of Output^T00250Export File(s)^T00020Start Time Internal^T00020End Time Internal"_$C(30)
 N BGPDA
 S BGPDA=0 F  S BGPDA=$O(^BGPGUIK("AUSR",BGPDUZ,BGPDA)) Q:'BGPDA  D
 . N BGPIEN
 . S BGPIEN=0 F  S BGPIEN=$O(^BGPGUIK("AUSR",BGPDUZ,BGPDA,BGPIEN)) Q:'BGPIEN  D
 .. N BGPDATA,BGPNM,BGPUSER,BGPST,BGPET,BGPTOR,BGPRS,BGPTOO,BGPFLS,BGPSTI,BGPETI
 .. S BGPDATA=$G(^BGPGUIK(BGPIEN,0))
 .. S BGPNM=$P(BGPDATA,U)
 .. S BGPUSER=$P($G(^VA(200,$P(BGPDATA,U,2),0)),U)
 .. S BGPST=$$LVDT($P($P(BGPDATA,U,3),"."))
 .. N BGPSTT
 .. S BGPSTT=$P($$FMTE^XLFDT($P(BGPDATA,U,3)),"@",2)
 .. S BGPSTI=$P(BGPDATA,U,3)
 .. S BGPST=BGPST_" "_BGPSTT
 .. S BGPET=$$LVDT($P($P(BGPDATA,U,4),"."))
 .. N BGPETT
 .. S BGPETT=$P($$FMTE^XLFDT($P(BGPDATA,U,4)),"@",2)
 .. S BGPETI=$P(BGPDATA,U,4)
 .. S BGPET=BGPET_" "_BGPETT
 .. I $P(BGPDATA,U,4)="",$$SEVEN($P($P(BGPDATA,U,3),".")) D  Q
 ... S DIK="^BGPGUIK(",DA=BGPIEN D ^DIK
 .. S BGPTOR=$P(BGPDATA,U,5)
 .. S BGPRS=$$GET1^DIQ(90554.19,BGPIEN,.06)
 .. I BGPSTI>$$NOW^XLFDT() D
 ... Q:$G(BGPRS)="COMPLETED"
 ... S BGPRS="QUEUED"
 .. S BGPTSK=$$CHKFQT^BGPGUA(BGPIEN)
 .. I $G(BGPTSK) S BGPRS="ERRORED"
 .. S BGPTOO=$$GET1^DIQ(90554.19,BGPIEN,.07)
 .. S BGPFLS=$$GET1^DIQ(90554.19,BGPIEN,1)
 .. S BGPI=BGPI+1
 .. S ^BGPTMP($J,BGPI)=BGPIEN_U_BGPNM_U_BGPUSER_U_BGPST_U_BGPET_U_BGPTOR_U_BGPRS_U_BGPTOO_U_BGPFLS_U_BGPSTI_U_BGPETI_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 Q
 ;
LVDT(PDT) ;EP - return date for list view format
 I PDT="" Q ""
 ;Q ($E(PDT,1,3)+1700)_"-"_$E(PDT,4,5)_"-"_$E(PDT,6,7)
 Q $E(PDT,4,5)_"/"_$E(PDT,6,7)_"/"_($E(PDT,1,3)+1700)
 ;
SEVEN(ST) ;EP -- check to see if the start date is over 7 days ago
 I $$FMDIFF^XLFDT(DT,ST)>7 Q 1
 ;S X1=ST,X2=7 D C^%DTC
 ;I X<DT Q 1
 Q 0
 ;
LABTAXC(RETVAL,BGPSTR) ;EP - from remote procedure
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,BGPRT,P,BGPOPT,BGPR,BGPFN
 S P="|"
 S BGPI=0
 S BGPERR=""
 S BGPOPT=$P(BGPSTR,P)
 S BGPOPT="CRS 14 LAB TAXONOMY REPORT"  ;8.0 p2
 S BGPRT=$P(BGPSTR,P,2)
 S BGPR=$P(BGPSTR,P,3)
 S BGPFN=$P(BGPSTR,P,4)
 S BGPJ=0
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP5GLTX(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPRT,BGPR,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
MEDTAXC(RETVAL,BGPSTR) ;EP - from remote procedure
 S X="MERR^BGP5GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,BGPRT,P,BGPOPT,BGPR,BGPFN
 S P="|"
 S BGPI=0
 S BGPERR=""
 S BGPOPT=$P(BGPSTR,P)
 S BGPOPT="CRS 14 MEDICATION TAXONOMY REPORT"  ;8.0 p2
 S BGPRT=$P(BGPSTR,P,2)
 S BGPR=$P(BGPSTR,P,3)
 S BGPFN=$P(BGPSTR,P,4)
 S BGPJ=0
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP^BGP5GMTX(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPRT,BGPR,BGPFN)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=+$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
UPDTAX(BGPRET,BGPSTR) ;update taxonomies based on option selected
 S X="MERR^BGPGU",@^%ZOSF("TRAP") ; m error trap
 N P,BGPOPT,BGPI
 S P="|"
 S BGPI=0
 K ^BGPTMP($J)
 S BGPRET="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00080TAXONOMY NAME"_$C(30)
 S BGPRPTT1=1
 S BGPOPT=$P(BGPSTR,P)
 I BGPOPT="TAXNTL" D
 . S BGPRPTT1=1
 I BGPOPT="TAXCMS" D
 . S BGPRPTT1=5
 I BGPOPT="TAXCRS" D
 . S BGPRPTT1=9
 I BGPOPT="TAXONM" D
 . S BGPRPTT1=7
 I BGPOPT="TAXEO" D
 . S BGPRPTT1=8
 D INIT^BGP5CTS
 I BGPOPT="TAXALL" D
 . D INIT^BGP5XTV
 N BGPDA,BGPT
 S BGPDA=0 F  S BGPDA=$O(BGPTAX("IDX",BGPDA)) Q:'BGPDA  D
 . N BGPN,BGPFL,BGPRO,BGPFLT
 . S BGPI=BGPI+1
 . S BGPT=$P($G(BGPTAX("IDX",BGPDA,BGPDA)),U)
 . S BGPTT=$P($G(BGPTAX("IDX",BGPDA,BGPDA)),U,2)
 . I BGPTT="T" D
 .. S BGPN=$P($G(^ATXAX(BGPT,0)),U)
 .. S BGPRO=$S($P($G(^ATXAX(BGPT,0)),U,22):"Read Only",1:"Editable")
 .. S BGPFL=$P($G(^ATXAX(BGPT,0)),U,15)
 .. S BGPFLT=$S(BGPFL=50:"Med",1:"Tax")
 . I BGPTT="L" D
 .. S BGPN=$P($G(^ATXLAB(BGPT,0)),U)
 .. S BGPRO=$S($P($G(^ATXLAB(BGPT,0)),U,22):"Read Only",1:"Editable")
 .. S BGPFL=$P($G(^ATXLAB(BGPT,0)),U,9)
 .. S BGPFLT="Lab"
 . S ^BGPTMP($J,BGPI)=BGPN_"("_BGPRO_"/"_BGPFLT_"/"_BGPFL_")"_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 Q
 ;
NEWTAX(BGPRET,BGPSTR) ;update taxonomies based on option selected
 S X="MERR^BGPGU",@^%ZOSF("TRAP") ; m error trap
 N P,BGPOPT,BGPI
 S P="|"
 S BGPI=0
 K ^BGPTMP($J)
 S BGPRET="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00080Taxonomy Name^T00010Taxonomy IEN^T00001ReadOnly^T00020File Number^T00003Tax Type"_$C(30)
 S BGPRPTT1=1
 S BGPOPT=$P(BGPSTR,P)
 I BGPOPT="TAXNTL" D
 . S BGPRPTT1=1
 I BGPOPT="TAXCMS" D
 . S BGPRPTT1=5
 I BGPOPT="TAXCRS" D
 . S BGPRPTT1=9
 I BGPOPT="TAXONM" D
 . S BGPRPTT1=7
 I BGPOPT="TAXEO" D
 . S BGPRPTT1=8
 D INIT^BGP5CTS
 I BGPOPT="TAXALL" D
 . D INIT^BGP5XTV
 N BGPDA,BGPT
 S BGPDA=0 F  S BGPDA=$O(BGPTAX("IDX",BGPDA)) Q:'BGPDA  D
 . N BGPN,BGPFL,BGPRO,BGPFLT
 . S BGPI=BGPI+1
 . S BGPT=$P($G(BGPTAX("IDX",BGPDA,BGPDA)),U)
 . S BGPTT=$P($G(BGPTAX("IDX",BGPDA,BGPDA)),U,2)
 . I BGPTT="T" D
 .. S BGPN=$P($G(^ATXAX(BGPT,0)),U)
 .. S BGPRO=$S($P($G(^ATXAX(BGPT,0)),U,22):"Read Only",1:"Editable")
 .. S BGPFL=$P($G(^ATXAX(BGPT,0)),U,15)
 .. S BGPFLT=$S(BGPFL=50:"Med",1:"Tax")
 . I BGPTT="L" D
 .. S BGPN=$P($G(^ATXLAB(BGPT,0)),U)
 .. S BGPRO=$S($P($G(^ATXLAB(BGPT,0)),U,22):"Read Only",1:"Editable")
 .. S BGPFL=$P($G(^ATXLAB(BGPT,0)),U,9)
 .. S BGPFLT="Lab"
 . S ^BGPTMP($J,BGPI)=BGPN_U_BGPT_U_$E(BGPRO,1,1)_U_BGPFL_U_BGPFLT_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 Q
 ;
MFI(BGPRET,BGPSTR) ;-- check to see if this is an mfi site
 S X="MERR^BGPGU",@^%ZOSF("TRAP") ; m error trap
 N P,BGPOPT,BGPI,BGPDUZ2
 S P="|"
 S BGPI=0
 K ^BGPTMP($J)
 S BGPRET="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00001MFI"_$C(30)
 S BGPI=0
 S BGPDUZ2=$P(BGPSTR,P)
 S ^BGPTMP($J,1)=$S($E($P($G(^AUTTLOC(BGPDUZ2,0)),U,10),1,1)=3:1,1:0)_$C(30)
 S ^BGPTMP($J,2)=$C(31)
 Q
 ;
