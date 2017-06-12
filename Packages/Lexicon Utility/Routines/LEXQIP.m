LEXQIP ;ISL/KER - Query - ICD Procedure - Extract ;04/21/2014
 ;;2.0;LEXICON UTILITY;**62,73,80**;Sep 23, 1996;Build 10
 ;               
 ; Global Variables
 ;    ^TMP("LEXQIP")      SACC 2.3.2.5.1
 ;    ^TMP("LEXQIPA")     SACC 2.3.2.5.1
 ;    ^TMP("LEXQIPO")     SACC 2.3.2.5.1
 ;               
 ; External References
 ;    GETS^DIQ            ICR   2056
 ;    $$CODEC^ICDEX       ICR   5747
 ;    $$CSI^ICDEX         ICR   5747
 ;    $$DTBR^ICDEX        ICR   5747
 ;    $$HIST^ICDEX        ICR   5747
 ;    $$ICDOP^ICDEX       ICR   5747
 ;    $$LA^ICDEX          ICR   5747
 ;    $$LD^ICDEX          ICR   5747
 ;    $$MOR^ICDEX         ICR   5747
 ;    $$ROOT^ICDEX        ICR   5747
 ;    $$SD^ICDEX          ICR   5747
 ;    $$DT^XLFDT          ICR  10103
 ;    $$UP^XLFSTR         ICR  10104
 ;               
 ; Local Variables NEWed or KILLed Elsewhere
 ;    None
 ; 
EN ; Main Entry Point
 N LEXENV S LEXENV=$$EV^LEXQM Q:+LEXENV'>0  N DIC,DTOUT,DUOUT,ICDFMT,ICDSYS,ICDVDT,LEX,LEX1,LEX2,LEX3,LEXAD,LEXBOD,LEXBRD
 N LEXBRW,LEXC,LEXCC,LEXCDT,LEXCHR,LEXD,LEXDAT,LEXDDT,LEXDG,LEXDI,LEXDR,LEXDRG,LEXDRG1,LEXDRG2,LEXDRGC,LEXDRGD,LEXDRGI
 N LEXDRI,LEXDTXT,LEXDX,LEXE,LEXEDT,LEXEE,LEXEF,LEXEFF,LEXELDT,LEXENV,LEXES,LEXEXIT,LEXFA,LEXFUL,LEXH,LEXHDR,LEXHIS,LEXHR
 N LEXI,LEXI1,LEXI2,LEXIA,LEXICP,LEXICPC,LEXID,LEXIDI,LEXIEN,LEXIENS,LEXINC,LEXINCC,LEXINOT,LEXINT,LEXIREQ,LEXL,LEXLA
 N LEXLAST,LEXLC,LEXLD,LEXLDD,LEXLDT,LEXLEF,LEXLEN,LEXLHI,LEXLS,LEXLSD,LEXLTXT,LEXM,LEXMC,LEXMDCC,LEXMDCE,LEXMDCI,LEXMI
 N LEXMOR,LEXMR,LEXMSG,LEXN,LEXNAM,LEXOD,LEXODD,LEXPC,LEXR,LEXREF,LEXRT,LEXS,LEXSD,LEXSDD,LEXSDT,LEXSO,LEXST,LEXSTA
 N LEXSTAT,LEXSTR,LEXSY,LEXSYS,LEXT,LEXTEST,LEXTMP,LEXUD,LEXUM,LEXVDT,LEXVTXT,LEXW,LEXWN,LEXX,X,Y S LEXEXIT=0,LEXCDT=""
 K ^TMP("LEXQIP",$J),^TMP("LEXQIPO",$J),^TMP("LEXQIPA",$J)
 F  S LEXCDT=$$AD^LEXQM,LEXAD=LEXCDT Q:'$L(LEXCDT)  Q:+($G(LEXEXIT))>0  S LEXEDT=$P(LEXCDT,"^",1),LEXCDT=$P(LEXCDT,"^",2) Q:LEXCDT'?7N  D LOOK Q:LEXCDT'?7N  Q:+($G(LEXEXIT))>0
 K ^TMP("LEXQIP",$J),^TMP("LEXQIPO",$J),^TMP("LEXQIPA",$J)
 Q
LOOK ; ICD Lookup Loop
 N LEXDG,LEXST,LEXSD,LEXLD,LEXMOR,LEXWN,LEXCC,LEXMC,LEXICP,LEXICPC
 S LEXCDT=$G(LEXCDT),LEXEDT=$$ED^LEXQM(LEXCDT) I LEXCDT'?7N S LEXCDT="" Q
 S LEXLEN=62 F  S LEXICP=$$ICP^LEXQIPA  D  Q:LEXICP="^"!(LEXICP="^^")
 . S:LEXICP="^^" LEXEXIT=1 Q:LEXICP="^"!(LEXICP="^^")
 . K LEXST,LEXSD,LEXLD,LEXWN,LEXCC,LEXMOR,LEXMC,^TMP("LEXQIP",$J)
 . N LEXIEN,LEXLDT,LEXELDT,LEXINC,LEXINOT,LEXIREQ,LEXINCC,LEXSO,LEXNAM
 . S LEXIEN=+($G(LEXICP)),LEXLDT=+($G(LEXCDT)) Q:+LEXIEN'>0  Q:LEXLDT'?7N
 . S LEXELDT=$$SD^LEXQM(LEXLDT) Q:'$L(LEXELDT)
 . D CSV,EN^LEXQIP3
 Q
CSV ; Code Set Versioning Display
 N LEXEDT,LEXIEN,LEXIENS,LEXLTXT,LEXSTAT,LEXSYS,LEXMSG,LEXDAT
 N LEXT,LEXTMP S LEXCDT=$G(LEXCDT),LEXEDT=$$ED^LEXQM(LEXCDT)
 I LEXCDT'?7N S (LEXICP,LEXCDT)="" Q
 S LEXIEN=+($G(LEXICP)),LEXSO=$$CODEC^ICDEX(80.1,+LEXIEN)
 S LEXLTXT=$P($G(LEXICP),"^",3) S LEXSYS=$$CSI^ICDEX(80.1,+LEXIEN)
 Q:+LEXIEN'>0  Q:'$L(LEXSO)  Q:+LEXSYS'>0
 S LEXDAT=$$ICDOP^ICDEX(LEXSO,LEXCDT,LEXSYS,"E")
 S LEXSO=$P(LEXDAT,"^",2),LEXNAM=$P(LEXDAT,"^",5)
 I '$L(LEXNAM)!($P(LEXNAM,"^",1)=-1) D
 . N LEXLA S LEXLA=$$LA^ICDEX(80.1,+LEXIEN,9999999)
 . S LEXNAM=$$SD^ICDEX(80.1,+LEXIEN,LEXLA)
 Q:'$L($G(LEXNAM))
 ;
 ; "Unversioned" Fields
 ; 
 ;   ,01   Code
 ;   1.1   Coding System
 ;   1.2   Identifier
 ;   1.4   MDC24
 ;   1.7   ICD Expanded
 ;   1.8   Exclude from Lookup
 ;   20    MAJOR O.R. PROC
 ;   
 S LEXTMP=$$MOR^ICDEX(+LEXIEN) D:$L(LEXTMP) OR^LEXQIP2(LEXTMP,.LEXMOR)
 ;            
 ; Get the "Versioned" Fields
 ;            
 ;   Date/Status          80.166  (66)
 S LEXST=$$EF(+($G(LEXIEN)),+LEXCDT),LEXSTAT=+($P(LEXST,"^",2))
 ;   Procedure Name       80.167  (67)
 D SDS(+($G(LEXIEN)),+LEXCDT,.LEXSD,62,LEXSTAT)
 ;   Description          80.168  (68)
 D LDS(+($G(LEXIEN)),+LEXCDT,.LEXLD,62,LEXSTAT)
 ;   Warning Message
 D WN(+LEXCDT,.LEXWN,62)
 ;   MDC/DRG Groups       80.171  (71)
 D MDCDRG^LEXQIP2(+LEXIEN,+LEXCDT,.LEXDG,LEXLEN)
 Q
 ;      
EF(X,LEXCDT) ; Effective Dates
 N LEX,LEXAD,LEXBRD,LEXBRW,LEXEE,LEXEF,LEXES,LEXFA,LEXH,LEXI,LEXID,LEXIEN,LEXRT,LEXLS,LEXSO,LEXSYS,LEXST S LEXIEN=+($G(X)),LEXCDT=+($G(LEXCDT))
 S LEXRT=$$ROOT^ICDEX(80.1) Q:+LEXIEN'>0 "^^"  S LEXSO=$$CODEC^ICDEX(80.1,+LEXIEN) Q:'$L(LEXSO)!($P(LEXSO,"^",1)="-1")  Q:LEXCDT'?7N "^^"
 S LEXSYS=$$CSI^ICDEX(80.1,+LEXIEN),LEX=$$ICDOP^ICDEX(LEXSO,LEXCDT,LEXSYS,"E")
 S LEXFA=$$FA(+LEXIEN),(LEXLS,LEXST)=$P(LEX,"^",10),LEXID=$P(LEX,"^",12),LEXAD=$P(LEX,"^",13),LEXBRD=2781001,LEXBRW=""
 I LEXCDT<LEXBRD&(+LEXFA=LEXBRD) D
 . S LEXBRW="Warning:  The 'Based on Date' provided precedes the initial Code Set Business Rule date of "
 . S LEXBRW=LEXBRW_$$SD^LEXQM(LEXBRD)_", the Effective date may be inaccurate."
 S LEXES=$S(+LEXST>0:"Active",1:"Inactive")
 S:+LEXST'>0&(+LEXAD'>0) LEXES="Not Applicable",LEXLS=-1
 S:+LEXFA>0&(+LEXCDT>0)&(LEXFA>LEXCDT) LEXES="Pending",LEXLS=-1,LEXST=0,LEXBRW=""
 S:LEXST>0 LEXEF=LEXAD S:LEXST'>0 LEXEF=LEXID
 S:LEXST'>0&(+LEXID'>0) LEXEF=LEXFA S LEXEE=$$SD^LEXQM(LEXEF)
 I LEXST'>0,+LEXID'>0,$L(LEXEE),+LEXEF>LEXCDT S LEXEE="(future activation of "_LEXEE_")",LEXEF=""
 S X=LEXLS_"^"_LEXST_"^"_LEXEF_"^"_LEXES_"^"_LEXEE S:$L(LEXBRW) $P(X,"^",6)=LEXBRW
 Q X
 ; 
SDS(X,LEXVDT,LEX,LEXLEN,LEXSTA) ; Operation/Procedure (short description)
 ; 
 ; LEX=# of Lines
 ; LEX(0)=External Date of Operation/Procedure Name
 ; LEX(#)=Operation/Procedure Name
 ; 
 N LEXBRD,LEXBRW,LEXC,LEXD,LEXDDT,LEXE,LEXEE,LEXEFF,LEXFA
 N LEXHIS,LEXI,LEXIA,LEXIEN,LEXL,LEXLA,LEXLAST,LEXLEF
 N LEXLHI,LEXLSD,LEXM,LEXOD,LEXODD,LEXR,LEXS,LEXSD,LEXSDD
 N LEXSDT,LEXSO,LEXSY,LEXT S LEXIEN=$G(X) Q:+LEXIEN'>0
 S LEXVDT=+($G(LEXVDT)) S:LEXVDT'?7N LEXVDT=$$DT^XLFDT
 S LEXSTA=+($G(LEXSTA)) S LEXSO=$$CODEC^ICDEX(80.1,+LEXIEN)
 S LEXSY=$$CSI^ICDEX(80.1,+LEXIEN)
 S LEXLA=$$LA^ICDEX(80.1,+LEXIEN,9999999),LEXFA=$$FA(+LEXIEN)
 S LEXLAST=$$ICDOP^ICDEX(LEXSO,LEXLA,LEXSY,"E")
 S LEXLSD=$P(LEXLAST,"^",5),LEXBRD=$$DTBR^ICDEX(LEXVDT,0,LEXSY),LEXBRW=""
 S LEXSD=$$SD^ICDEX(80.1,+LEXIEN,LEXVDT,.LEXS)
 S LEXSD=$G(LEXS(1)),LEXSDD=$P($G(LEXS(0)),"^",2)
 S:'$L(LEXSD) LEXSDD="--/--/----" S LEXM=""
 I $P(LEXSD,"^",1)="-1"!('$L(LEXSD)) D
 . S LEXM="Operation/Procedure Short Name is not available."
 . I (LEXVDT'?7N!(LEXFA'?7N)),LEXVDT<LEXFA D
 . . S LEXM=LEXM_"  The date provided precedes the initial activation of the code"
 . I LEXVDT?7N&(LEXFA?7N),LEXVDT<LEXFA D
 . . S LEXM=LEXM_"  The date provided ("_$$ED^LEXQM(LEXVDT)_") precedes the initial activation ("_$$ED^LEXQM(LEXFA)_") of the code"
 . S:$L(LEXM) LEXM="NOTE:  "_LEXM S LEXOD=LEXLSD,LEXODD="--/--/----"
 I $L(LEXSD)&($P(LEXSD,"^",1)'="-1") D
 . S LEXM="" S LEXOD=LEXSD,LEXODD=$S(LEXSDD?7N:$$ED^LEXQM(LEXSDD),1:"--/--/----")
 S:'$L(LEXOD) LEXOD="Operation/Procedure Short Name not found"
 S:'$L(LEXODD) LEXODD="--/--/----"
 K LEX,LEXT S LEXT(1)=LEXOD D PR^LEXQM(.LEXT,(LEXLEN-7))
 S LEXI=0 F  S LEXI=$O(LEXT(LEXI)) Q:+LEXI'>0  S LEXT=$G(LEXT(LEXI)) S LEX(LEXI)=LEXT
 I $L($G(LEXM)) D
 . K LEX,LEXT N LEXC S LEXT(1)=LEXM D PR^LEXQM(.LEXT,(LEXLEN-7))
 . S LEXI=0 F  S LEXI=$O(LEXT(LEXI)) Q:+LEXI'>0  S LEXT=$G(LEXT(LEXI)) S LEXC=$O(LEX(" "),-1)+1,LEX(LEXC)=LEXT
 S:$D(LEX(1)) LEX(0)=LEXODD
 Q
LDS(X,LEXVDT,LEX,LEXLEN,LEXSTA) ; Operation/Procedure (short description)
 ; 
 ; LEX=# of Lines
 ; LEX(0)=External Date of Operation/Procedure Name
 ; LEX(#)=Operation/Procedure Name
 ; 
 N LEXBRD,LEXBRW,LEXC,LEXD,LEXDDT,LEXE,LEXEE,LEXEFF,LEXFA
 N LEXHIS,LEXI,LEXIA,LEXIEN,LEXL,LEXLA,LEXLAST,LEXLEF
 N LEXLHI,LEXLSD,LEXM,LEXOD,LEXODD,LEXR,LEXS,LEXLD,LEXLDD
 N LEXSDT,LEXSO,LEXSY,LEXT S LEXIEN=$G(X) Q:+LEXIEN'>0
 S LEXVDT=+($G(LEXVDT)) S:LEXVDT'?7N LEXVDT=$$DT^XLFDT
 S LEXSTA=+($G(LEXSTA)) S LEXSO=$$CODEC^ICDEX(80.1,+LEXIEN)
 S LEXSY=$$CSI^ICDEX(80.1,+LEXIEN)
 S LEXLA=$$LA^ICDEX(80.1,+LEXIEN,9999999),LEXFA=$$FA(+LEXIEN)
 S LEXLSD=$$LD^ICDEX(80.1,+LEXIEN,LEXLA)
 S LEXBRD=$$DTBR^ICDEX(LEXVDT,0,LEXSY),LEXBRW=""
 S LEXLD=$$LD^ICDEX(80.1,+LEXIEN,LEXVDT,.LEXS,245)
 S LEXLD=$G(LEXS(1)),LEXLDD=$P($G(LEXS(0)),"^",2)
 S:'$L(LEXLD) LEXLDD="--/--/----" S LEXM=""
 I $P(LEXLD,"^",1)="-1"!('$L(LEXLD)) D
 . S LEXM="Operation/Procedure Description is not available."
 . I (LEXVDT'?7N!(LEXFA'?7N)),LEXVDT<LEXFA D
 . . S LEXM=LEXM_"  The date provided precedes the initial activation of the code"
 . I LEXVDT?7N&(LEXFA?7N),LEXVDT<LEXFA D
 . . S LEXM=LEXM_"  The date provided ("_$$ED^LEXQM(LEXVDT)_") precedes the initial activation ("_$$ED^LEXQM(LEXFA)_") of the code"
 . S:$L(LEXM) LEXM="NOTE:  "_LEXM S LEXOD=LEXLSD,LEXODD="--/--/----"
 I $L(LEXLD)&($P(LEXLD,"^",1)'="-1") D
 . S LEXM="" S LEXOD=LEXLD,LEXODD=$S(LEXLDD?7N:$$ED^LEXQM(LEXLDD),1:"--/--/----")
 S:'$L(LEXOD) LEXOD="Operation/Procedure Description not found"
 S:'$L(LEXODD) LEXODD="--/--/----"
 K LEX,LEXT S LEXT(1)=LEXOD D PR^LEXQM(.LEXT,(LEXLEN-7))
 S LEXI=0 F  S LEXI=$O(LEXT(LEXI)) Q:+LEXI'>0  S LEXT=$G(LEXT(LEXI)) S LEX(LEXI)=LEXT
 I $L($G(LEXM)) D
 . K LEX,LEXT N LEXC S LEXT(1)=LEXM D PR^LEXQM(.LEXT,(LEXLEN-7))
 . S LEXI=0 F  S LEXI=$O(LEXT(LEXI)) Q:+LEXI'>0  S LEXT=$G(LEXT(LEXI)) S LEXC=$O(LEX(" "),-1)+1,LEX(LEXC)=LEXT
 S:$D(LEX(1)) LEX(0)=LEXODD
 Q
 ;
WN(X,LEX,LEXLEN) ; Warning
 ;            
 ; LEX=# of Lines
 ; LEX(0)=External Date
 ; LEX(#)=Warning
 ;            
 N LEXVDT,LEXREF,LEXIA,LEXTMP K LEX S LEXVDT=$G(X) Q:LEXVDT'?7N  S LEXLEN=+$G(LEXLEN) S LEXIA=$$IA(LEXVDT,LEXIEN) Q:+LEXIA'>0  S:+LEXLEN>62 LEXLEN=62
 S LEXTMP(1)="Warning:  The 'Based on Date' provided precedes Code Set Versioning.  The Operation/Procedure (Short Name) and Description may be inaccurate for "_$$SD^LEXQM(LEXVDT)
 D PR^LEXQM(.LEXTMP,LEXLEN) K LEX S LEXI=0 F  S LEXI=$O(LEXTMP(LEXI)) Q:+LEXI'>0  S LEX(LEXI)=$G(LEXTMP(LEXI))
 S LEX=$O(LEX(" "),-1),LEX(0)=$$SD^LEXQM(LEXVDT)
 Q
 ; Miscellaneous
FA(X) ;   First Activation
 N LEXFA,LEXH,LEXI,LEXIEN,LEXSO,LEXSY
 S LEXIEN=+($G(X)) S X="",LEXSO=$$CODEC^ICDEX(80.1,+LEXIEN),LEXSY=$$CSI^ICDEX(80.1,+LEXIEN)
 K LEXH S X=$$HIST^ICDEX(LEXSO,.LEXH,LEXSY) S LEXFA="",LEXI=0
 F  S LEXI=$O(LEXH(LEXI)) Q:+LEXI'>0!($L(LEXFA))  S:+($G(LEXH(LEXI)))>0&(LEXI?7N) LEXFA=LEXI Q:$L(LEXFA)
 S X=LEXFA
 Q X
IA(X,Y) ;   Inaccurate
 N LEXBRD,LEXVDT,LEXIEN,LEXSYS S LEXVDT=+($G(X)),LEXIEN=+($G(Y)) Q:+LEXIEN'>0 0
 S LEXSYS=$$CSI^ICDEX(80.1,+LEXIEN) Q:+LEXSYS'>0 0  S:'$L(LEXVDT) LEXVDT=$$DT^XLFDT
 S:LEXVDT#10000=0 LEXVDT=LEXVDT+101 S:LEXVDT#100=0 LEXVDT=LEXVDT+1
 S LEXBRD=$$DTBR^ICDEX(LEXVDT,0,LEXSYS) S X=$S(LEXVDT<LEXBRD:1,1:0)
 Q X
