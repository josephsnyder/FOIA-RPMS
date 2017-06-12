PXRMVCPT ; SLC/PKR - Code to handle VCPT data. ;05/05/2014
 ;;2.0;CLINICAL REMINDERS;**4,26**;Feb 04, 2005;Build 404
 ;
 ;===============================================
FPDAT(DFN,TAXARR,NGET,SDIR,BDT,EDT,FLIST) ;Find data for a patient.
 N CODESYS,CSYST,DATE,DS,EDTT,IND,NFOUND,NNODES,TLIST
 S NNODES=TAXARR("APDS",9000010.18,"NNODES")
 I NNODES=0 Q
 I $G(^PXRMINDX(9000010.18,"DATE BUILT"))="" D  Q
 . D NOINDEX^PXRMERRH("TX",TAXARR("IEN"),9000010.18)
 I '$D(^PXRMINDX(9000010.18,"PPI",DFN)) Q
 S EDTT=$S(EDT[".":EDT+.0000001,1:EDT+.240001)
 S DS=$S(SDIR=+1:BDT-.000001,1:EDTT)
 S CODESYS=""
 F  S CODESYS=$O(TAXARR("AE",CODESYS)) Q:CODESYS=""  D
 . S CSYST=$S(CODESYS="CPC":"P81",CODESYS="CPT":"P81",1:"NP81")
 . I (CSYST="P81"),$D(^PXRMINDX(9000010.18,"PPI",DFN)) D FPDP81(DFN,CODESYS,.TAXARR,NNODES,NGET,BDT,EDTT,DS,SDIR,.TLIST)
 . I (CSYST="NP81"),$D(^PXRMINDX(9000010.18,CODESYS,"PPI",DFN)) D FPDCSYS(DFN,CODESYS,.TAXARR,NNODES,NGET,BDT,EDTT,DS,SDIR,.TLIST)
 ;Return up to NGET of the most recent entries.
 S DATE="",NFOUND=0
 F  S DATE=$O(TLIST(DATE),SDIR) Q:(DATE="")!(NFOUND=NGET)  D
 . S IND=0
 . F  S IND=$O(TLIST(DATE,IND)) Q:(IND="")!(NFOUND=NGET)  D
 .. S NFOUND=NFOUND+1
 .. S FLIST(DATE,NFOUND,9000010.18)=TLIST(DATE,IND)
 Q
 ;
 ;===============================================
FPDP81(DFN,CODESYS,TAXARR,NNODES,NGET,BDT,EDTT,DS,SDIR,TLIST) ;Find data for a
 ;patient for pointers to file 81.
 N CODE,CODEP,DAS,DATE,NFOUND,NODE,TDATE,TIND
 S NFOUND=0
 F IND=1:1:NNODES D
 . S NODE=TAXARR("APDS",9000010.18,IND)
 . I '$D(^PXRMINDX(9000010.18,"PPI",DFN,NODE)) Q
 . S CODE=""
 . F  S CODE=$O(TAXARR("AE",CODESYS,CODE)) Q:CODE=""  D
 .. S CODEP=TAXARR("AE",CODESYS,CODE)
 .. I '$D(^PXRMINDX(9000010.18,"PPI",DFN,NODE,CODEP)) Q
 .. S DATE=DS
 .. F  S DATE=+$O(^PXRMINDX(9000010.18,"PPI",DFN,NODE,CODEP,DATE),SDIR) Q:$S(DATE=0:1,DATE<BDT:1,DATE>EDTT:1,1:0)  D
 ... S DAS=$O(^PXRMINDX(9000010.18,"PPI",DFN,NODE,CODEP,DATE,""))
 ... S NFOUND=NFOUND+1
 ... S TLIST(DATE,NFOUND)=DAS_U_DATE_U_CODESYS_U_CODE_U_NODE
 ... I NFOUND>NGET D
 .... S TDATE=$O(TLIST(""),-SDIR),TIND=$O(TLIST(TDATE,""))
 .... K TLIST(TDATE,TIND)
 Q
 ;
 ;===============================================
FPDCSYS(DFN,CODESYS,TAXARR,NNODES,NGET,BDT,EDTT,DS,SDIR,TLIST) ;Find data for
 ;a patient for coding systems not stored as a pointer.
 N CODE,DAS,DATE,NFOUND,NODE,TDATE,TIND
 ;Get the start and end of the taxonomy.
 I '$D(^PXRMINDX(9000010.18,CODESYS,"PPI",DFN)) Q
 S NFOUND=0
 F IND=1:1:NNODES D
 . S NODE=TAXARR("APDS",9000010.18,IND)
 . I '$D(^PXRMINDX(9000010.18,CODESYS,"PPI",DFN,NODE)) Q
 . S CODE=""
 . F  S CODE=$O(TAXARR("AE",CODESYS,CODE)) Q:CODE=""  D
 .. I '$D(^PXRMINDX(9000010.18,CODESYS,"PPI",DFN,NODE,CODE)) Q
 .. S DATE=DS
 .. F  S DATE=+$O(^PXRMINDX(9000010.18,CODESYS,"PPI",DFN,NODE,CODE,DATE),SDIR) Q:$S(DATE=0:1,DATE<BDT:1,DATE>EDTT:1,1:0)  D
 ... S DAS=$O(^PXRMINDX(9000010.18,CODESYS,"PPI",DFN,NODE,CODE,DATE,""))
 ... S NFOUND=NFOUND+1
 ... S TLIST(DATE,NFOUND)=DAS_U_DATE_U_CODESYS_U_CODE_U_NODE
 ... I NFOUND>NGET D
 .... S TDATE=$O(TLIST(""),-SDIR),TIND=$O(TLIST(TDATE,""))
 .... K TLIST(TDATE,TIND)
 Q
 ;
 ;===============================================
GETDATA(DAS,FIEVT) ;Return data for a specified V CPT entry.
 ;DBIA #4250.
 D VCPT^PXPXRM(DAS,.FIEVT)
 Q
 ;
 ;===============================================
GPLIST(TAXARR,NOCC,BDT,EDT,PLIST) ;Build patient list for V CPT entries.
 N CODE,CODEP,CODESYS,DAS,DATE,DFN,DS,NFOUND,NODE,NNODES,TEMP,TLIST
 S NNODES=TAXARR("APDS",9000010.18,"NNODES")
 I NNODES=0 Q
 I $G(^PXRMINDX(9000010.18,"DATE BUILT"))="" D  Q
 . D NOINDEX^PXRMERRH("TX",TAXARR("IEN"),9000010.18)
 S TLIST="GPLIST_PXRMVPOV"
 K ^TMP($J,TLIST)
 S DS=$S(EDT[".":EDT+.0000001,1:EDT+.240001)
 S CODESYS=""
 F  S CODESYS=$O(TAXARR("AE",CODESYS)) Q:CODESYS=""  D
 . S CODE=""
 . F  S CODE=$O(TAXARR("AE",CODESYS,CODE)) Q:(CODE="")  D
 .. I (CODESYS="CPT") D
 ... S CODEP=TAXARR("AE","CPT",CODE)
 ... I $D(^PXRMINDX(9000010.18,"IPP",CODEP)) D GPLCPT4(CODE,CODEP,.TAXARR,NNODES,BDT,DS,TLIST)
 .. I (CODESYS'="CPT"),$D(^PXRMINDX(9000010.18,CODESYS,"IPP",CODE)) D GPLCSYS(CODESYS,CODE,.TAXARR,NNODES,BDT,DS,TLIST)
 ;Return up to NOCC of the most recent entries for each patient.
 S DFN=0
 F  S DFN=$O(^TMP($J,TLIST,DFN)) Q:DFN=""  D
 . S DATE="",NFOUND=0
 . F  S DATE=$O(^TMP($J,TLIST,DFN,DATE),-1) Q:(DATE="")!(NFOUND=NOCC)  D
 .. S DAS=""
 .. F  S DAS=$O(^TMP($J,TLIST,DFN,DATE,DAS)) Q:DAS=""  D
 ... S NFOUND=NFOUND+1
 ... S TEMP=^TMP($J,TLIST,DFN,DATE,DAS)
 ... S ^TMP($J,PLIST,1,DFN,DATE,9000010.18)=DAS_U_DATE_U_TEMP
 K ^TMP($J,TLIST)
 Q
 ;
 ;===============================================
GPLCPT4(CODE,CODEP,TAXARR,NNODES,BDT,DS,TLIST) ;Build patient list for V CPT for
 ;CPT-4.
 N DAS,DATE,DFN,IND,NODE,TEMP
 F IND=1:1:NNODES D
 . S NODE=TAXARR("APDS",9000010.18,IND)
 . I '$D(^PXRMINDX(9000010.18,"IPP",CODEP,NODE)) Q
 . S DFN=0
 . F  S DFN=$O(^PXRMINDX(9000010.18,"IPP",CODEP,NODE,DFN)) Q:DFN=""  D
 .. S DATE=DS
 .. F  S DATE=+$O(^PXRMINDX(9000010.18,"IPP",CODEP,NODE,DFN,DATE),-1) Q:(DATE=0)!(DATE<BDT)  D
 ... S DAS=$O(^PXRMINDX(9000010.18,"IPP",CODEP,NODE,DFN,DATE,""))
 ... S ^TMP($J,TLIST,DFN,DATE,DAS)="CPT"_U_CODE_U_NODE
 Q
 ;
 ;===============================================
GPLCSYS(CODESYS,CODE,TAXARR,NNODES,BDT,DS,TLIST) ;Build patient list for V CPT
 ;for coding systems other than CPT-4.
 N DAS,DATE,DFN,IND,NODE,TEMP
 F IND=1:1:NNODES D
 . S NODE=TAXARR("APDS",9000010.18,IND)
 . I '$D(^PXRMINDX(9000010.18,CODESYS,"IPP",CODE,NODE)) Q
 . S DFN=0
 . F  S DFN=$O(^PXRMINDX(9000010.18,CODESYS,"IPP",CODE,NODE,DFN)) Q:DFN=""  D
 .. S DATE=DS
 .. F  S DATE=+$O(^PXRMINDX(9000010.18,CODESYS,"IPP",CODE,NODE,DFN,DATE),-1) Q:(DATE=0)!(DATE<BDT)  D
 ... S DAS=$O(^PXRMINDX(9000010.18,CODESYS,"IPP",CODE,NODE,DFN,DATE,""))
 ... S ^TMP($J,TLIST,DFN,DATE,DAS)=CODESYS_U_CODE_U_NODE
 Q
 ;
 ;===============================================
MHVOUT(INDENT,OCCLIST,IFIEVAL,NLINES,TEXT) ;Produce the MHV output.
 N CDATA,CODE,IND,JND,NAME,NIN,NOUT
 N PN,PP,RESULT,TEMP,TEXTOUT,VDATE
 S NAME="Encounter Procedure = "
 S IND=0
 F  S IND=$O(OCCLIST(IND)) Q:IND=""  D
 . S VDATE=IFIEVAL(IND,"DATE")
 . S CODE=IFIEVAL(IND,"CODE")
 . K CDATA
 .;DBIA #5679
 . S RESULT=$$CSDATA^LEXU(CODE,"CPT",VDATE,.CDATA)
 . S TEMP=NAME_$P(CDATA("LEX",1),U,2)_" ("_$$EDATE^PXRMDATE(VDATE)_")"
 . D FORMATS^PXRMTEXT(INDENT+2,PXRMRM,TEMP,.NOUT,.TEXTOUT)
 . F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 S NLINES=NLINES+1,TEXT(NLINES)=""
 Q
 ;
 ;===============================================
OUTPUT(INDENT,OCCLIST,IFIEVAL,NLINES,TEXT) ;Produce the clinical
 ;maintenance output.
 N CDATA,CODE,CODESYS,CODESYSN,D0,IND,JND,NIN,NOUT
 N PN,PP,RESULT,TEXTIN,TEXTOUT,VDATE
 S NLINES=NLINES+1
 S TEXT(NLINES)=$$INSCHR^PXRMEXLC(INDENT," ")_"Encounter Procedure:"
 ;DBIA #5679
 S CODESYSN=$P($$CSYS^LEXU("CPT"),U,4)
 S IND=0
 F  S IND=$O(OCCLIST(IND)) Q:IND=""  D
 . S VDATE=IFIEVAL(IND,"DATE")
 . S CODE=IFIEVAL(IND,"CODE")
 . S CODESYS=IFIEVAL(IND,"CODESYS")
 . K CDATA
 .;DBIA #5679
 . S RESULT=$$CSDATA^LEXU(CODE,CODESYS,VDATE,.CDATA)
 . S D0=$G(^AUPNVCPT(IFIEVAL(IND,"DAS"),0))
 . S PN=$P(D0,U,4)
 . I PN="" S PN="MISSING"
 . E  S PN=$P($G(^AUTNPOV(PN,0)),U,1)
 . S PP=$P(IFIEVAL(IND,"FILE SPECIFIC"),U,1)
 . S PP=$S(PP="Y":"YES",1:"NO")
 . S TEXTIN(1)=$$EDATE^PXRMDATE(VDATE)_"  "_CODE_" ("_CODESYSN_")"
 . S TEXTIN(2)=$P(CDATA("LEX",1),U,2)_"\\"
 . S TEXTIN(3)=" Principle Procedure: "_PP_"\\"
 . S TEXTIN(4)=" Prov. Narr. - "_PN
 . D FORMAT^PXRMTEXT(INDENT+2,PXRMRM,4,.TEXTIN,.NOUT,.TEXTOUT)
 . F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 . I IFIEVAL(IND,"COMMENTS")'="" D
 .. S TEMP="Comments: "_IFIEVAL(IND,"COMMENTS")
 .. D FORMATS^PXRMTEXT(INDENT+3,PXRMRM,TEMP,.NOUT,.TEXTOUT)
 .. F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 S NLINES=NLINES+1,TEXT(NLINES)=""
 Q
 ;
