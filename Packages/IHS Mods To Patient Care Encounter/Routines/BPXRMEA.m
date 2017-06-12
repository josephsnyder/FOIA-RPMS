BPXRMEA ; IHS/MSC/MGH - Handle V Measurement findings. ;08-Nov-2013 12:59;DU
 ;;2.0;CLINICAL REMINDERS;**1001**;Feb 04, 2005;Build 21
 ;
 ;=============================================================
EVALFI(DFN,DEFARR,ENODE,FIEVAL) ;Evaluate V measurement findings.
 D EVALFI^PXRMINDX(DFN,.DEFARR,ENODE,.FIEVAL)
 Q
 ;
 ;=============================================================
EVALPL(FINDPA,ENODE,TERMARR,PLIST) ;Evaluate V measurement findings
 ;for patient lists.
 D EVALPL^PXRMINDL(.FINDPA,ENODE,.TERMARR,PLIST)
 Q
 ;
 ;=============================================================
EVALTERM(DFN,FINDPA,ENODE,TERMARR,TFIEVAL) ;Evaluate V measurement terms.
 D EVALTERM^PXRMINDX(DFN,.FINDPA,ENODE,.TERMARR,.TFIEVAL)
 Q
 ;
 ;=============================================================
GETDATA(DAS,FIEVT) ;Return data, for a specified V measurement entry.
 N MEADATA,EM,IND,STOP
 D VMEA^BPXRMPX(.MEADATA,DAS,"I")
 I $P(MEADATA(1),U,1)=-1 D  Q
 . S ^TMP("PXRMXMZ",$J,1,0)="Found V MEASURMENT entry "_DAS_" in the index, but not in the V measurement file"
 . D SEND^PXRMMSG("Bad entry in MeasurementASSOC PROBLEM index.")
 Q:$D(MEADATA(11))>10
 S FIEVT("TYPE")=$$EXTERNAL^DILFD(9999999.07,.03,"",MEADATA(3),.EM)
 S TEMP=$S(+MEADATA(5)'=0:^SC(MEADATA(5),0),1:"")
 S FIEVT("HOSPITAL LOCATION")=$P(TEMP,U,1)
 S FIEVT("LOCATION TYPE")=$P(TEMP,U,3)
 S STOP=$P(TEMP,U,7)
 I +MEADATA(6) D
 .S FIEVT("ENTERED BY")=$P(^VA(200,MEADATA(6),0),U,1)
 S (FIEVT("RATE"),FIEVT("VALUE"))=$P(MEADATA(7),U,1)
 S IND=0
 ;Load the external form of the qualifiers.
 F  S IND=$O(MEADATA(12,IND)) Q:IND=""  D
 . S TEMP=$P(MEADATA(12,IND),U,1)
 .I TEMP'="" S FIEVT("QUALIFIER",IND)=$P($G(^GMRD(120.52,+TEMP,0)),U,1)
 I STOP'="" S FIEVT("STOP CODE")=$P(^DIC(40.7,STOP,0),U,1,2)
 E  S FIEVT("STOP CODE")=""
 Q
 ;
 ;=============================================================
MHVOUT(INDENT,IFIEVAL,NLINES,TEXT) ;Produce the MHV output.
 N EM,FIEN,IND,JND,NAME,NOUT,PNAME,RESULT,TEMP,TEXTOUT,VDATE
 S FIEN=$P(IFIEVAL("FINDING"),";",1)
 S TEMP=^AUTTMSR(FIEN,0)
 S PNAME=$P(TEMP,U,1)
 S NAME=$$INSCHR^PXRMEXLC(INDENT," ")_"Vital: "_PNAME_" = "
 S IND=0
 F  S IND=+$O(IFIEVAL(IND)) Q:IND=0  D
 . S RESULT=$G(IFIEVAL(IND,"VALUE"))
 . ;I RESULT'="" S RESULT=$$EXTERNAL^DILFD(9000010.01,.04,"",RESULT,.EM)
 . S VDATE=IFIEVAL(IND,"DATE")
 . S TEMP=NAME_RESULT_" ("_$$EDATE^PXRMDATE(VDATE)_")"
 . D FORMATS^PXRMTEXT(INDENT+2,PXRMRM,TEMP,.NOUT,.TEXTOUT)
 . F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 S NLINES=NLINES+1,TEXT(NLINES)=""
 Q
 ;
 ;=============================================================
OUTPUT(INDENT,IFIEVAL,NLINES,TEXT) ;Produce the clinical
 ;maintenance output.
 N EM,FIEN,IND,JND,NOUT,PNAME,RESULT,TEMP,TEXTOUT,VDATE
 S FIEN=$P(IFIEVAL("FINDING"),";",1)
 S PNAME=$P(^AUTTMSR(FIEN,0),U,1)
 S NLINES=NLINES+1
 S TEXT(NLINES)=$$INSCHR^PXRMEXLC(INDENT," ")_"Vital: "_PNAME
 S IND=0
 F  S IND=+$O(IFIEVAL(IND)) Q:IND=0  D
 . S VDATE=IFIEVAL(IND,"DATE")
 . S TEMP=$$EDATE^PXRMDATE(VDATE)
 . S RESULT=$G(IFIEVAL(IND,"VALUE"))
 . I RESULT'="" D
 .. S TEMP=TEMP_" result - "_RESULT
 .. ;S TEMP=TEMP_$$EXTERNAL^DILFD(9000010.01,.04,"",RESULT,.EM)
 . D FORMATS^PXRMTEXT(INDENT+2,PXRMRM,TEMP,.NOUT,.TEXTOUT)
 . F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 . ;I IFIEVAL(IND,"COMMENTS")'="" D
 . ;S TEMP="Comments: "_IFIEVAL(IND,"COMMENTS")
 . ;D FORMATS^PXRMTEXT(INDENT+3,PXRMRM,TEMP,.NOUT,.TEXTOUT)
 . ;F JND=1:1:NOUT S NLINES=NLINES+1,TEXT(NLINES)=TEXTOUT(JND)
 S NLINES=NLINES+1,TEXT(NLINES)=""
 Q
 ;
SEVALFI(FILENUM,SNODE,DFN,ITEM,NGET,SDIR,BDT,EDT,NFOUND,FLIST) ;Find data
