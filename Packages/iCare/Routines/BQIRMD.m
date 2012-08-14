BQIRMD ;PRXM/HC/DLS - Patient Medications ; 18 Jan 2006  11:56 AM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 Q
 ;
EN(DATA,DFN,DRANGE,PARMS) ; EP -- BQI PATIENT MEDICATIONS
 ;Description
 ;  Generates a Medication Report for a given DFN and Relative Date.
 ;
 ;Input
 ;  DFN    - Patient Internal ID
 ;  DRANGE - Date to pull Patient Meds from (to the present).
 ;  PARMS  - Parameters for special filtering
 ;  
 ;Output
 ;  DATA - Name of global in which data is stored(^TMP("BQIRMD"))
 ;  
 NEW UID,X,BQII,REG,PDATA,RGRP,VAL,VALUE,FILTER,FDATA,CGRP,ASDATA,BQ
 NEW RMEDDT,MEDDT,MEDIEN,MEDTYPE,VSDTM,VISIT,ASN,ASNAME,ASSOC,ASVAL,BQQ
 NEW MED,INST,QTY,DAYS,RDRANGE,ORPHY,MEDI,REGIEN,TREF,TN,TAX,NAME,CGFL,RGFL
 NEW ASV,BN,II
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIRMD",UID))
 K @DATA
 ;
 S BQII=0
 ;
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIRMD D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S PARMS=$G(PARMS,"")
 I PARMS="" D
 . S LIST="",BN=""
 . F  S BN=$O(PARMS(BN)) Q:BN=""  S LIST=LIST_PARMS(BN)
 . K PARMS
 . S PARMS=LIST
 . K LIST
 ;
 F BQ=1:1:$L(PARMS,$C(28)) S FILTER(BQ)=$P(PARMS,$C(28),BQ)
 F BQQ=1:1:BQ D
 . S PDATA=$G(FILTER(BQQ)) Q:PDATA=""
 . S NAME=$P(PDATA,"=",1),VALUE=$P(PDATA,"=",2,99)
 . S FDATA(BQQ)=NAME
 . F II=1:1:$L(VALUE,$C(29)) D
 .. S VAL=$P(VALUE,$C(29),II),ASSOC=$P(VAL,$C(25),2,99)
 .. S FILTER(BQQ,II)=$P(VAL,$C(25),1)
 .. I ASSOC'="" D
 ... F ASN=1:1:$L(ASSOC,$C(25)) D
 .... S ASDATA=$P(ASSOC,$C(25),ASN)
 .... S ASVAL=$P(ASDATA,"=",2),ASNAME=$P(ASDATA,"=",1)
 .... S FILTER(BQQ,II,ASN)=ASNAME
 .... I ASVAL'[$C(24) S FILTER(BQQ,II,ASN,1)=ASVAL Q
 .... F ASV=1:1:$L(ASVAL,$C(24)) S FILTER(BQQ,II,ASN,ASV)=$P(ASVAL,$C(24),ASV)
 .. I ASSOC="" S FILTER(BQQ,II)=VAL
 I $D(FDATA) F BQQ=1:1:BQ S FILTER(BQQ)=FDATA(BQQ)
 K FDATA,PARMS
 ;
 NEW BQQ,MBQ,NAME,VALUE,SBQ,MSBQ
 K REG,CGRP
 S BQQ="",CGFL=0,RGFL=0
 F  S BQQ=$O(FILTER(BQQ)) Q:BQQ=""  D
 . ;S NAME=FILTER(BQQ)
 . S MBQ=""
 . F  S MBQ=$O(FILTER(BQQ,MBQ)) Q:MBQ=""  D
 .. S VALUE=FILTER(BQQ,MBQ),NAME=FILTER(BQQ)
 .. ;I NAME="REG" S REG(VALUE)="",RGFL=1
 .. I NAME="REG" S RGFL=1
 .. S @NAME@(VALUE)=""
 .. ;I NAME="CGRP" S CGRP(VALUE)=""
 .. S SBQ=""
 .. F  S SBQ=$O(FILTER(BQQ,MBQ,SBQ)) Q:SBQ=""  D
 ... ;S NAME=FILTER(BQQ,MBQ,SBQ)
 ... S MSBQ=""
 ... F  S MSBQ=$O(FILTER(BQQ,MBQ,SBQ,MSBQ)) Q:MSBQ=""  D
 .... S VALUE=FILTER(BQQ,MBQ,SBQ,MSBQ),NAME=FILTER(BQQ,MBQ,SBQ)
 .... ;I NAME="CGRP" S CGRP(VALUE)="",CGFL=1
 .... I NAME="CGRP" S CGFL=1
 .... S @NAME@(VALUE)=""
 ;
 ; Get med taxonomies
 S TREF=$NA(^TMP("BQITAX",UID))
 K @TREF
 S REG=""
 F  S REG=$O(REG(REG)) Q:REG=""  D
 . S REGIEN=$$FIND1^DIC(90507,,"MX",REG)
 . S TN=0
 . F  S TN=$O(^BQI(90507,REGIEN,10,TN)) Q:'TN  D
 .. I $P(^BQI(90507,REGIEN,10,TN,0),U,5)'="M" Q
 .. S RGRP=$P(^BQI(90507,REGIEN,10,TN,0),U,7)
 .. I CGFL,RGRP'="",'$D(CGRP(RGRP)) Q
 .. S TAX=$P(^BQI(90507,REGIEN,10,TN,0),U,1)
 .. D BLD^BQITUTL(TAX,TREF)
 ;
 D HDR
 S DRANGE=$$DATE^BQIUL1($G(DRANGE))
 S RDRANGE=9999999-DRANGE
 S MEDDT=""
 F  S MEDDT=$O(^AUPNVMED("AA",DFN,MEDDT)) Q:MEDDT=""!(MEDDT>RDRANGE)  D
 . S MEDIEN=0
 . F  S MEDIEN=$O(^AUPNVMED("AA",DFN,MEDDT,MEDIEN)) Q:MEDIEN=""  D
 . . S RMEDDT=9999999-MEDDT
 . . S VSDTM=$$FMTE^BQIUL1(RMEDDT)
 . . S MED=$$GET1^DIQ(9000010.14,MEDIEN,.01,"E") I MED="" Q
 . . S MEDI=$$GET1^DIQ(9000010.14,MEDIEN,.01,"I")
 . . ;I REG'="",'$D(@TREF@(MEDI)) Q
 . . I RGFL,'$D(@TREF@(MEDI)) Q
 . . S VISIT=$$GET1^DIQ(9000010.14,MEDIEN,.03,"I") I VISIT="" Q
 . . S INST=$$GET1^DIQ(9000010.14,MEDIEN,.05,"E")
 . . S QTY=$$GET1^DIQ(9000010.14,MEDIEN,.06,"E") S:QTY="" QTY="-1"
 . . S DAYS=$$GET1^DIQ(9000010.14,MEDIEN,.07,"E")
 . . S ORPHY=$$GET1^DIQ(9000010.14,MEDIEN,1202,"E")
 . . S BQII=BQII+1
 . . S @DATA@(BQII)=VISIT_U_VSDTM_U_MED_U_INST_U_QTY_U_DAYS_U_ORPHY_$C(30)
 ;
 ; Check for refusals
 D REF
 ;
DONE ; -- exit code
 S BQII=BQII+1,@DATA@(BQII)=$C(31)
 Q
 ;
HDR ;
 S @DATA@(BQII)="I00010VISIT_IEN^D00030VISIT_DATETIME^T00099MED_NAME^T00200MED_INSTR^N00010MED_QTY^I00010MED_DAYS^T00035ORD_PHY"_$C(30)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(BQII),$D(DATA) S BQII=BQII+1,@DATA@(BQII)=$C(31)
 Q
 ;
REF ; Check for refusals
 NEW MEDN,RVDT,REVDT,RFIEN,MED,INST,ORPHY,QTY,DAYS,VISIT
 S MEDN=""
 F  S MEDN=$O(^AUPNPREF("AA",DFN,50,MEDN)) Q:MEDN=""  D
 . S RVDT=""
 . F  S RVDT=$O(^AUPNPREF("AA",DFN,50,MEDN,RVDT)) Q:RVDT=""  D
 .. ; Reverse the reverse date
 .. S REVDT=9999999-RVDT
 .. I DRANGE'="",(REVDT\1)<DRANGE Q
 .. S RFIEN=""
 .. F  S RFIEN=$O(^AUPNPREF("AA",DFN,50,MEDN,RVDT,RFIEN)) Q:RFIEN=""  D
 ... S MED=$$GET1^DIQ(50,MEDN_",",.01,"E")
 ... S INST=$$GET1^DIQ(9000022,RFIEN_",",.07,"E")
 ... S ORPHY=$$GET1^DIQ(9000022,RFIEN_",",1204,"E")
 ... S QTY=-1,DAYS="",VISIT=""
 ... S BQII=BQII+1,@DATA@(BQII)=VISIT_U_$$FMTE^BQIUL1(REVDT)_U_MED_U_INST_U_QTY_U_DAYS_U_ORPHY_$C(30)
 Q