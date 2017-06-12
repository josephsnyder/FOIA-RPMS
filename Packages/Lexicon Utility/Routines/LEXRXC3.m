LEXRXC3 ;ISL/KER - Re-Index 757.01 ASL/APAR ;08/17/2011
 ;;2.0;LEXICON UTILITY;**81**;Sep 23, 1996;Build 10
 ;               
 ; Global Variables
 ;    ^LEX(               SACC 1.3
 ;    ^LEX(757.01,        SACC 1.3
 ;               
 ; External References
 ;    $$FMDIFF^XLFDT      ICR  10103
 ;    $$NOW^XLFDT         ICR  10103
 ;    $$UP^XLFSTR         ICR  10104
 ;           
 ; Local Variables NEWed or KILLed Elsewhere
 ;     LEXNAM     Task name       NEWed/KILLed by LEXRXXT
 ;     LEXTEST    Test variable   NEWed/KILLed by Developer
 ;     ZTQUEUED   Task flag       NEWed/KILLed by Taskman
 ;               
 Q
EN ; Main Entry Point
R75701 ; Repair file 757.01
 D RASL,RAPAR Q
RASL ;   Index    ^LEX(757.01,"ASL",STR,FREQ) 
 N LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXNDS,LEXPSCT,LEXSCT,LEXSTR,LEXTC,LEXTNG
 S LEXFI="757.01"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.01 ""ASL""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR="",LEXFI=757.01,LEXIDX="ASL",LEXIDXT="^LEX(757.01,""ASL"",STR,FREQ)"
 F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXSTR)) Q:'$L(LEXSTR)  D
 . S LEXNDS=LEXNDS+1
 . S LEXSCT=$$SCT^LEXRXC3(LEXSTR)
 . S LEXPSCT=$O(^LEX(LEXFI,LEXIDX,LEXSTR,0))
 . I +LEXPSCT>0,+LEXSCT'>0 D
 . . K ^LEX(LEXFI,LEXIDX,LEXSTR,+LEXPSCT)
 . . I $D(LEXTEST),'$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Invalid (deleted) ",LEXSTR
 . I +LEXPSCT>0,+LEXSCT>0,+LEXPSCT'=LEXSCT D
 . . K ^LEX(LEXFI,LEXIDX,LEXSTR,+LEXPSCT) S ^LEX(LEXFI,LEXIDX,LEXSTR,+LEXSCT)=""
 . . I $D(LEXTEST),'$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Re-Calculated ",LEXSTR
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"")
 I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
RAPAR ;   Index    ^LEX(757.01,"APAR",MC,IEN) 
 N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXIEN,LEXNDS,LEXOK,LEXPAR,LEXPR,LEXSTR
 S LEXFI="757.01"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.01 ""APAR""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR="",LEXFI=757.01,LEXIDX="APAR",LEXIDXT="^LEX(757.01,""APAR"",PARENT,IEN)"
 F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXSTR)) Q:'$L(LEXSTR)  D
 . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN)) Q:+LEXIEN'>0  D
 . . S LEXNDS=LEXNDS+1 N LEXOK,LEXPR S LEXPR=+($P($G(^LEX(LEXFI,LEXIEN,1)),"^",9))
 . . S LEXOK=0 S:LEXPR=LEXSTR LEXOK=1 I 'LEXOK D
 . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN) S:+LEXPR>0 ^LEX(LEXFI,LEXIDX,+LEXPR,LEXIEN)=""
 . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXSTR,?58,"  ",LEXIEN
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,LEXPAR S DA=LEXIEN S LEXPAR=$P($G(^LEX(757.01,DA,1)),"^",9) Q:'$L(LEXPAR)
 . I '$D(^LEX(757.01,LEXIDX,$E(LEXPAR,1,30),DA)) D
 . . S LEXERR=LEXERR+1 I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Missing",?58,"  ",DA
 . S:$L(LEXPAR) ^LEX(757.01,LEXIDX,$E(LEXPAR,1,30),DA)=""
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
 ;              
 ; Miscellaneous
SCT(X) ;  String Counter
 N LEXC,LEXW,LEXO,LEXT
 S (LEXC,LEXW)=$$UP^XLFSTR($G(X)),LEXT=0  Q:'$L(LEXW) 0
 S:$L(LEXW)>1 LEXO=$E(LEXW,1,($L(LEXW)-1))_$C(($A($E(LEXW,$L(LEXW)))-1))_"~"
 S:$L(LEXW)=1 LEXO=$C(($A(LEXW)-1))_"~"
 F  S LEXO=$O(^LEX(757.01,"AWRD",LEXO)) Q:'$L(LEXO)  Q:$E(LEXO,1,$L(LEXC))'=LEXC  D
 . N LEXM S LEXM=0 F  S LEXM=$O(^LEX(757.01,"AWRD",LEXO,LEXM)) Q:+LEXM'>0  D
 . . N LEXE S LEXE=0 F  S LEXE=$O(^LEX(757.01,"AWRD",LEXO,LEXM,LEXE)) Q:+LEXE'>0  D
 . . . S LEXT=LEXT+1
 S X=LEXT
 Q X
CLR ;   Clear
 K LEXNAM,LEXTEST,ZTQUEUED
 Q
