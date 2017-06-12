LEXRXF ;ISL/KER - Re-Index 757.21 B/C/AA ;04/21/2014
 ;;2.0;LEXICON UTILITY;**81,80**;Sep 23, 1996;Build 10
 ;               
 ; Global Variables
 ;    ^LEX(               SACC 1.3
 ;    ^LEX(757)           SACC 1.3
 ;    ^LEX(757.01)        SACC 1.3
 ;    ^LEX(757.011)       SACC 1.3
 ;    ^LEX(757.21)        SACC 1.3
 ;    ^LEXT(757.2)        SACC 1.3
 ;    ^TMP("LEXRX")       SACC 2.3.2.5.1
 ;    ^TMP("LEXRXF")      SACC 2.3.2.5.1
 ;    ^TMP("LEXTKN")      SACC 2.3.2.5.1
 ;    ^TMP("LEXWRD")      SACC 2.3.2.5.1
 ;               
 ; External References
 ;    $$FMDIFF^XLFDT      ICR  10103
 ;    $$NOW^XLFDT         ICR  10103
 ;    $$UP^XLFSTR         ICR  10104
 ;    FILE^DID            ICR   2052
 ;    IX1^DIK             ICR  10013
 ;    IX1^DIK             ICR  10013
 ;               
 ; Local Variables NEWed or KILLed Elsewhere
 ;     LEXFIX     Fix Index flag  NEWed/KILLed by LEXRXXT
 ;     LEXNAM     Task name       NEWed/KILLed by LEXRXXT
 ;     LEXSET     Re-Index flag   NEWed/KILLed by LEXRXXT
 ;     LEXQ       Quiet flat      NEWed/KILLed by LEXRXXT2
 ;     LEXTEST    Test variable   NEWed/KILLed by Developer
 ;     ZTQUEUED   Task flag       NEWed/KILLed by Taskman
 ;               
 Q
EN ; Main Entry Point
R75721 ; Repair file 757.21
 K ^TMP("LEXRXF",$J) D RB,RC,RAA,SET K ^TMP("LEXRXF",$J)
 Q
RB ;   Index    ^LEX(757.21,"B",EXP,IEN) 
 N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXIEN,LEXMC,LEXNDS,LEXOK,LEXSTR
 S LEXFI="757.21"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.21 ""B""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR="",LEXFI=757.21,LEXIDX="B",LEXIDXT="^LEX(757.21,""B"",EXP,IEN)"
 F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXSTR)) Q:'$L(LEXSTR)  D
 . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN)) Q:+LEXIEN'>0  D
 . . S LEXNDS=LEXNDS+1 N LEXOK,LEXEX S LEXEX=$P($G(^LEX(LEXFI,LEXIEN,0)),"^",1)
 . . S LEXOK=0 S:LEXEX=LEXSTR LEXOK=1 I 'LEXOK D
 . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN) S:$L(LEXEX) ^LEX(LEXFI,LEXIDX,LEXEX,LEXIEN)=""
 . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXSTR,?58,"  ",LEXIEN
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,DIK,X S DA=LEXIEN,X=$P($G(^LEX(LEXFI,DA,0)),"^",1) Q:'$L(X)
 . I '$D(^LEX(LEXFI,LEXIDX,X,DA)) D
 . . S LEXERR=LEXERR+1 I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Missing ",X,?58,"  ",DA
 . S:$L(X) ^LEX(LEXFI,LEXIDX,X,DA)=""
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
RC ;   Index    ^LEX(757.21,"C",EXP,IEN) 
 N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXIEN,LEXMC,LEXNDS,LEXOK,LEXSTR
 S LEXFI="757.21"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.21 ""C""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR="",LEXFI=757.21,LEXIDX="C",LEXIDXT="^LEX(757.21,""C"",EXP,IEN)"
 F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXSTR)) Q:'$L(LEXSTR)  D
 . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN)) Q:+LEXIEN'>0  D
 . . S LEXNDS=LEXNDS+1 N LEXOK,LEXEX,LEXEXP
 . . S LEXEX=$P($G(^LEX(LEXFI,LEXIEN,0)),"^",1)
 . . S LEXEXP=$E($$UP^XLFSTR($G(^LEX(757.01,+($G(LEXEX)),0))),1,63)
 . . S LEXOK=0 S:LEXEXP=LEXSTR LEXOK=1 I 'LEXOK D
 . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,"C",LEXSTR,LEXIEN) S:$L(LEXEXP) ^LEX(LEXFI,"C",LEXEXP,LEXIEN)=""
 . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,$E(LEXSTR,1,28),?58,"  ",LEXIEN
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,DIK,X,LEXEXP S DA=LEXIEN,X=$P($G(^LEX(LEXFI,DA,0)),"^",1),LEXEXP=$E($$UP^XLFSTR(^LEX(757.01,X,0)),1,63)
 . Q:+X'>0  Q:'$L(LEXEXP)
 . I '$D(^LEX(LEXFI,LEXIDX,LEXEXP,DA)) D
 . . S LEXERR=LEXERR+1 I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Missing ",$E(LEXEXP,1,20),?58,"  ",DA
 . S ^LEX(LEXFI,LEXIDX,LEXEXP,DA)=""
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
RAA ;   Index    ^LEX(757.21,("A"_SUBSET),WORD,IEN) 
 ;            ^LEX(757.21,"ADEN",WORD,IEN)
 ;            ^LEX(757.21,"AIMM",WORD,IEN)
 ;            ^LEX(757.21,"ANUR",WORD,IEN)
 ;            ^LEX(757.21,"ASOC",WORD,IEN)
 ;            ^LEX(757.21,[etc],WORD,IEN)
 N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXEX,LEXEXI,LEXELP,LEXEXP,LEXEXPS,LEXFI,LEXI,LEXID,LEXIDX,LEXIDXT,LEXIEN,LEXJ
 N LEXMC,LEXNDS,LEXOK,LEXSIDX,LEXSTR,LEXT,LEXTY,LEXW,LEXDENE,LEXIMME,LEXNURE,LEXSOCE,LEXDENN,LEXIMMN,LEXNURN,LEXSOCN,X
 S LEXFI="757.21" K ^TMP("LEXRXF",$J)
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.21 ""AA""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS)=0,LEXSTR="",LEXFI=757.21,LEXIDX=" "
 S LEXIDX=" " F  S LEXIDX=$O(^LEX(757.21,LEXIDX)) Q:'$L(LEXIDX)  D
 . Q:LEXIDX="B"  Q:LEXIDX="C"  Q:LEXIDX?1N.N
 . S LEXIDXT="^LEX(757.21,"""_LEXIDX_""",WORD,IEN)"
 . N LEXBEG,LEXEND,LEXTIM,LEXERR,LEXNDS,LEXELP
 . S LEXERR=$G(^TMP("LEXRXF",$J,LEXIDX,"E"))
 . S LEXNDS=$G(^TMP("LEXRXF",$J,LEXIDX,"N"))
 . S LEXELP=$G(^TMP("LEXRXF",$J,LEXIDX,"T"))
 . S LEXBEG=$$NOW^XLFDT H 2
 . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 . N LEXTNG,LEXTC S LEXFI="757.21",LEXTNG="Repairing"
 . I +($G(LEXFI))>0,$D(ZTQUEUED) D  Q:LEXTC=1
 . . S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,("Repairing File #757.21 """_LEXIDX_""""))
 . F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXSTR)) Q:'$L(LEXSTR)  D
 . . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN)) Q:+LEXIEN'>0  D
 . . . S LEXNDS=+($G(LEXNDS))+1,^TMP("LEXRXF",$J,LEXIDX,"N")=LEXNDS
 . . . I '$D(^LEX(757.21,LEXIEN,0)) D  Q
 . . . . S LEXERR=+($G(LEXERR))+1,^TMP("LEXRXF",$J,LEXIDX,"E")=LEXERR
 . . . . K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN)
 . . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXSTR,?58,"  ",LEXIEN
 . . . N LEXI,LEXIX K LEXEXPS
 . . . S LEXEX=+($G(^LEX(757.21,LEXIEN,0)))
 . . . S LEXMC=$P(^LEX(757.01,LEXEX,1),U,1)
 . . . S LEXID=$P($G(^LEX(757.21,LEXIEN,0)),U,2)
 . . . S LEXID=$P(^LEXT(757.2,LEXID,0),U,2) S:$L(LEXID) LEXID="A"_LEXID Q:'$L(LEXID)
 . . . S LEXEXI=0 F  S LEXEXI=$O(^LEX(757.01,"AMC",LEXMC,LEXEXI)) Q:+LEXEXI'>0  D
 . . . . N LEXTY,LEXT,LEXW,LEXJ,LEXEXP,LEXSIDX S LEXEXP=$G(^LEX(757.01,LEXEXI,0))
 . . . . S LEXTY=+($P($G(^LEX(757.01,LEXEXI,1)),U,2)) Q:LEXTY'>0
 . . . . S LEXT=+($P($G(^LEX(757.011,LEXTY,0)),"^",2)) Q:LEXT=0
 . . . . S LEXSIDX=LEXID K ^TMP("LEXTKN",$J) S X=LEXEXP,LEXIX=LEXIDX,LEXIDX="" D PTX^LEXTOKN S LEXIDX=LEXIX
 . . . . I $D(^TMP("LEXTKN",$J,0)),^TMP("LEXTKN",$J,0)>0 D
 . . . . . N LEXI S LEXI=0 F  S LEXI=$O(^TMP("LEXTKN",$J,LEXI)) Q:+LEXI'>0  D
 . . . . . . N LEXW S LEXW=$O(^TMP("LEXTKN",$J,LEXI,"")) Q:'$L(LEXW)  S LEXEXPS(LEXID,LEXW,LEXIEN)=""
 . . . . K ^TMP("LEXTKN",$J)
 . . . I $L(LEXIDX),$L(LEXSTR),$L(LEXIEN) D
 . . . . I '$D(LEXEXPS(LEXIDX,LEXSTR,LEXIEN)) D
 . . . . . S LEXERR=+($G(LEXERR))+1,^TMP("LEXRXF",$J,LEXIDX,"E")=LEXERR
 . . . . . K:'$D(LEXTEST) ^LEX(757.21,LEXIDX,LEXSTR,LEXIEN)
 . . . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXSTR,?58,"  ",LEXIEN
 . . . . . N LEXW S LEXW="" F  S LEXW=$O(LEXEXPS(LEXIDX,LEXW)) Q:'$L(LEXW)  D
 . . . . . . N LEXI S LEXI=0 F  S LEXI=$O(LEXEXPS(LEXIDX,LEXW,LEXI)) Q:+LEXI'>0  D
 . . . . . . . S ^LEX(757.21,LEXID,LEXW,LEXI)=""
 . . . K LEXEXPS
 . S LEXEND=$$NOW^XLFDT,LEXTIM=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 . S:$E(LEXTIM,1)=" "&($E(LEXTIM,3)=":") LEXTIM=$TR(LEXTIM," ","0")
 . S ^TMP("LEXRXF",$J,LEXIDX,"T")=LEXTIM
 I '$D(ZTQUEUED) W !,?8,"Check for missing records"
 N LEXIEN,LEXNDS,LEXBEG,LEXEND,LEXELP,LEXMIS
 S LEXBEG=$$NOW^XLFDT,LEXNDS=0,LEXMIS=0
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,LEXIX,LEXAIX,LEXERR,LEXEXP,LEXMC,LEXTEXP,LEXW S DA=LEXIEN
 . S LEXIX=$P($G(^LEX(LEXFI,DA,0)),"^",2),LEXIX=$P($G(^LEXT(757.2,+LEXIX,0)),"^",2)
 . S LEXAIX="A"_LEXIX
 . S LEXERR=$G(^TMP("LEXRXF",$J,LEXAIX,"E"))
 . K ^TMP("LEXWRD",$J)
 . S LEXEXP=+(^LEX(757.21,DA,0)),LEXMC=$P(^LEX(757.01,LEXEXP,1),U,1)
 . K ^TMP("LEXTKN",$J),^TMP("LEXWRD",$J)
 . S LEXNDS=LEXNDS+1
 . S LEXTEXP=0 F  S LEXTEXP=$O(^LEX(757.01,"AMC",LEXMC,LEXTEXP)) Q:+LEXTEXP=0  D
 . . N X,LEXIDX,LEXYPE,LEXT,LEXJ S X=$G(^LEX(757.01,LEXTEXP,0)),LEXIDX="" Q:'$L(X)
 . . S LEXYPE=+($P($G(^LEX(757.01,LEXTEXP,1)),U,2)) Q:LEXYPE'>0
 . . S LEXT=+($P($G(^LEX(757.011,LEXYPE,0)),"^",2)) Q:LEXT=0
 . . D PTX^LEXTOKN I $D(^TMP("LEXTKN",$J,0)),^TMP("LEXTKN",$J,0)>0 F LEXJ=1:1:^TMP("LEXTKN",$J,0) D
 . . . N LEXW S LEXW=$O(^TMP("LEXTKN",$J,LEXJ,"")) S:$L(LEXW) ^TMP("LEXWRD",$J,LEXW)=""
 . . K ^TMP("LEXTKN",$J) Q
 . S LEXW="" F  S LEXW=$O(^TMP("LEXWRD",$J,LEXW)) Q:'$L(LEXW)  D
 . . I '$D(^LEX(LEXFI,LEXAIX,LEXW,DA)) D
 . . . S LEXMIS=LEXMIS+0
 . . . S LEXERR=+($G(LEXERR))+1,^TMP("LEXRXF",$J,LEXAIX,"E")=LEXERR
 . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXAIX,?30,"Missing ",$E(LEXW,1,18),?58,"  ",DA
 . . S:$L(LEXW)&(+DA>0)&($L(LEXAIX))&($L(LEXFI)) ^LEX(LEXFI,LEXAIX,LEXW,DA)=""
 . K ^TMP("LEXWRD",$J),^TMP("LEXTKN",$J)
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,"AAAA",LEXNDS,LEXMIS,"^LEX(757.21,""ASUB"",WORD,IEN)",LEXELP)
 S LEXIDX=" " F  S LEXIDX=$O(^LEX(757.21,LEXIDX)) Q:'$L(LEXIDX)  D
 . Q:LEXIDX="B"  Q:LEXIDX="C"
 . N LEXFI,LEXERR,LEXELP,LEXNDS,LEXIDXT S LEXFI=757.21
 . S LEXERR=$G(^TMP("LEXRXF",$J,LEXIDX,"E"))
 . S LEXNDS=$G(^TMP("LEXRXF",$J,LEXIDX,"N"))
 . S LEXELP=$G(^TMP("LEXRXF",$J,LEXIDX,"T"))
 . S LEXIDXT="^LEX(757.21,"""_LEXIDX_""",WORD,IEN)"
 . S LEXERR=$S(+($G(LEXERR))>0:LEXERR,1:"")
 . S LEXNDS=$S(+($G(LEXNDS))>0:LEXNDS,1:"")
 . S LEXELP=$S($L($G(LEXELP))>0:LEXELP,1:"")
 . D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 K ^TMP("LEXRXF",$J)
 Q
 ;              
 ; Miscellaneous
SET ;   Re-Index Subset file 757.21 (Set logic only)
 Q:'$D(LEXSET)  N LEXTC,LEXPRE,LEXBEG,LEXEND,LEXELP,LEXNM,LEXFI,LEXRT
 N LEXOUT,LEXMSG S LEXFI=757.21
 D FILE^DID(LEXFI,"N","GLOBAL NAME","LEXOUT","LEXMSG")
 S LEXRT=$G(LEXOUT("GLOBAL NAME")) Q:LEXRT'["^LEX"
 S LEXPRE=$G(^TMP("LEXRX",$J,"T",1,"ELAP"))
 S LEXBEG=$$NOW^XLFDT,LEXNM=$$FN^LEXRXXM(LEXFI)
 S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,("Re-Indexing File #"_LEXFI))
 Q:LEXTC=1  I '$D(ZTQUEUED) W !,?8,"Re-Indexing",!
 N LEXIEN,LEXP3,LEXP4 S (LEXP3,LEXP4,LEXIEN)=0
 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,DIK S DA=+($G(LEXIEN))  D:$D(LEXFIX) FIX(DA)
 . I $D(^LEX(LEXFI,+LEXIEN,0)) D
 . . S LEXP3=LEXIEN,LEXP4=LEXP4+1
 . . S DA=LEXIEN,DIK=LEXRT D IX1^DIK
 Q:$D(LEXQ)  S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,"ALLIX",,,"Re-Index",LEXELP)
 S LEXELP=$$ADDT^LEXRXXM(LEXELP,LEXPRE)
 S ^TMP("LEXRX",$J,"T",1,"ELAP")=LEXELP
 Q
FIX(X) ;   Fix Deactivated Expressions in 757.21
 N DA,DIK,LEXEXP,LEXDFL Q:'$D(LEXFIX)  S DA=+($G(X)) Q:+DA'>0  Q:'$D(^LEX(757.21,+DA,0))
 S LEXEXP=+$G(^LEX(757.21,+DA,0)) Q:+LEXEXP'>0
 S LEXDFL=$P($G(^LEX(757.01,+LEXEXP,1)),"^",5) Q:+LEXDFL'>0
 I $D(LEXFIX) S DIK="^LEX(757.21," D ^DIK
 Q
CLR ;   Clear
 N LEXFIX,LEXNAM,LEXSET,LEXTEST,ZTQUEUED,LEXQ
 Q
