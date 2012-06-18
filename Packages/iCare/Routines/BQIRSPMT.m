BQIRSPMT ;PRXM/HC/ALA-Print Selected Supplement ; 16 Oct 2007  3:30 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
EN(DATA,DFN,SUPL) ; EP -- BQI PATIENT SUPPLEMENT
 ;Description
 ;  Generates a Patient Supplement for a given DFN and Supplement
 ;
 ;Input
 ;  DFN  - Patient Internal ID
 ;  SUPL - Supplement IEN
 ;
 ;Output
 ;  DATA - Name of global in which data is stored(^TMP("BQIRSPMT"))
 ;
 NEW UID,BQII,EXEC,PRGM
 NEW HSTEXT,HSPATH,HSFN,Y,IOSL,IOST,IOM,I,N
 NEW APCHSPAT,APCHSHDR,APCHSTIM
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIRSPMT",UID))
 K @DATA
 ;
 S BQII=0
 ;
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIRSPMT D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 D HDR
 ;
 I $$TMPFL^BQIUL1("W",UID,DFN) G DONE
 ;
 S IOSL=999,IOM=80,IOST="P-OTHER80"
 ; APCHSPAT variable is required by APCH routines
 S APCHSPAT=DFN
 ;
 ; Sometimes the header needs to be defined
 S Y=DT X ^DD("DD") S APCHSDAT=Y D NOW^%DTC S X=% X ^DD("FUNC",2,1) S APCHSTIM=X
 S APCHSHDR="CONFIDENTIAL PATIENT INFORMATION -- "_$$FMTE^XLFDT(DT,5)_$J(APCHSTIM,9)_"  ["_$P(^VA(200,DUZ,0),U,2)_"]"
 S X="",$P(X,"*",((IOM-6-$L(APCHSHDR))\2)+1)="*"
 S APCHSHDR=X_" "_APCHSHDR_" "_X
 ;
 S EXEC=$G(^APCHSUP(SUPL,11)) I EXEC="" G DONE
 S PRGM=$P(EXEC,"^",2)
 I PRGM["(" S PRGM=$P(PRGM,"(",1)
 I $T(@("^"_PRGM))="" G DONE
 ;
 U IO X EXEC
 U IO W $C(9)
 ;
 I $$TMPFL^BQIUL1("C") G DONE
 ;
 I $$TMPFL^BQIUL1("R",UID,DFN) G DONE
 ;
 F  U IO R HSTEXT:.1 Q:HSTEXT[$C(9)  D
 . S HSTEXT=$$STRIP^XLFSTR(HSTEXT,"^")
 . I HSTEXT="" S HSTEXT=" "
 . S BQII=BQII+1,@DATA@(BQII)=HSTEXT_$C(13)_$C(10)
 S BQII=BQII+1,@DATA@(BQII)=$C(30)
 ;
 I $$TMPFL^BQIUL1("C") G DONE
 ;
 I $$TMPFL^BQIUL1("D",UID,DFN) G DONE
 ;
DONE ;
 ;
 S BQII=BQII+1,@DATA@(BQII)=$C(31)
 Q
 ;
HDR ;
 S @DATA@(BQII)="T00120REPORT_TEXT"_$C(30)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(BQII),$D(DATA) S BQII=BQII+1,@DATA@(BQII)=$C(31)
 I $$TMPFL^BQIUL1("C")
 Q
