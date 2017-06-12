LEXQL2 ;ISL/KER - Query - Lookup Code (Build List) ;04/21/2014
 ;;2.0;LEXICON UTILITY;**62,80**;Sep 23, 1996;Build 10
 ;               
 ; Global Variables
 ;    ^DIC(81.3,          ICR   4492
 ;    ^ICD0("BA"          ICR   4486
 ;    ^ICD9("BA"          ICR   4485
 ;    ^ICPT(              ICR   4489
 ;    ^ICPT("BA"          ICR   4489
 ;    ^TMP("LEXQL")       SACC 2.3.2.5.1
 ;    ^UTILITY($J         ICR  10011
 ;    
 ; External References
 ;    ^DIWP               ICR  10011
 ;    $$CODEABA^ICDEX     ICR   5747
 ;    $$ROOT^ICDEX        ICR   5747
 ;    $$DT^XLFDT          ICR  10103
 ;    $$FMTE^XLFDT        ICR  10103
 ;    $$UP^XLFSTR         ICR  10104
 ;               
ADD(X) ; Add to List
 N LEXIN,LEXINU,LEXO,LEXCO,LEXCT,LEXCS,LEXTO,LEXTT,LEXOC,LEXCT,LEXTY,LEXTD,LEXTMP
 N LEXKEY,LEXLEN,LEXRT,LEXSO,LEXTKNS S LEXTD=$$DT^XLFDT,U="^"
 S LEXIN=$G(X),LEXINU=$$UP^XLFSTR($$TM($G(LEXIN))) K LEXTKNS S LEXTTK=$$TOKN(LEXINU)
 S LEXLEN=$O(LEXTKNS(" "),-1)
 F LEXTMP="~","!","@","#","$","%","&","*","(",")","_","+","`","-","="," " S LEXSO=$P(LEXIN,LEXTMP,1)
 F LEXTMP="[","]","{","}",";","'","\",":","|",",","/","?","<",">" S LEXSO=$P(LEXSO,LEXTMP,1)
 S:+LEXLEN'>0 LEXLEN=$L(LEXSO)
 S LEXKEY=$O(LEXTKNS(LEXLEN,""),-1) S:'$L(LEXKEY) LEXKEY=LEXSO S LEXKEY=$TR(LEXKEY,"#","") Q:'$L(LEXKEY)
 K LEXTKNS(+LEXLEN,LEXKEY) S:+LEXTTK>0 LEXTTK=LEXTTK-1
 S LEXTT=LEXKEY
 S LEXTO=$E(LEXKEY,1,($L(LEXKEY)-1))_$C(($A($E(LEXKEY,$L(LEXKEY)))-1))_"~"
 S LEXCT=$TR(LEXSO,"#","")
 S LEXCO=$E(LEXSO,1,($L(LEXSO)-1))_$C(($A($E(LEXSO,$L(LEXSO)))-1))_"~"
 ;   ICD-10 DX
 S LEXRT=$$ROOT^ICDEX(80),LEXCS=30
 I ($L(LEXTT)>2&$$OK(LEXTT,LEXRT,"AD",LEXCS))!($L(LEXCT)>2&($$OK(LEXCT,LEXRT,"ABA",LEXCS))) D
 . S LEXTY=1 D ICD^LEXQL3($G(LEXINU),LEXCS)
 ;   ICD-10 PR
 S LEXRT=$$ROOT^ICDEX(80.1),LEXCS=31
 I ($L(LEXTT)>2&$$OK(LEXTT,LEXRT,"AD",LEXCS))!($L(LEXCT)>2&($$OK(LEXCT,LEXRT,"ABA",LEXCS))) D
 . S LEXTY=2 D ICD^LEXQL3($G(LEXINU),LEXCS)
 ;   ICD-9 DX
 S LEXRT=$$ROOT^ICDEX(80),LEXCS=1
 I ($L(LEXTT)>2&$$OK(LEXTT,LEXRT,"AD",LEXCS))!($L(LEXCT)>2&($$OK(LEXCT,LEXRT,"ABA",LEXCS))) D
 . S LEXTY=3 D ICD^LEXQL3($G(LEXINU),LEXCS)
 ;   ICD-9 PR
 S LEXRT=$$ROOT^ICDEX(80.1),LEXCS=2
 I ($L(LEXTT)>2&$$OK(LEXTT,LEXRT,"AD",LEXCS))!($L(LEXCT)>2&($$OK(LEXCT,LEXRT,"ABA",LEXCS))) D
 . S LEXTY=4 D ICD^LEXQL3($G(LEXINU),LEXCS)
 ;   CPT/HCPCS
 I ($L(LEXTT)>2&$$OK(LEXTT,"^ICPT(","C"))!($L(LEXCT)>2&($$OK(LEXCT,"^ICPT(","BA"))) D
 . S LEXTY=5 D CP^LEXQL4
 ;   CPT MOD
 I ($L(LEXCT)>0&($$OK(LEXCT,"^DIC(81.3,","BA"))) D
 . S LEXTY=6 D CM^LEXQL4
 ;   Re-Order List
 N LEXCT,LEXO,LEXT1,LEXT2,LEX S LEXO="" F  S LEXO=$O(^TMP("LEXQL",$J,"ADDLIST",LEXO)) Q:'$L(LEXO)  D
 . K LEX N LEXT1,LEXT2 S LEXT1=$$TM($G(^TMP("LEXQL",$J,"ADDLIST",LEXO)))
 . S LEXT2=$$TM($G(^TMP("LEXQL",$J,"ADDLIST",LEXO,2))) Q:'$L(LEXT2)
 . I $L(LEXT2) K LEX S LEX(1)=LEXT2 D PR(.LEX,70) Q:'$L($G(LEX(1)))
 . S LEXCT=+($G(LEXCT))+1 K ^TMP("LEXQL",$J,+LEXCT)
 . S ^TMP("LEXQL",$J,+LEXCT)=$G(LEX(1)),^TMP("LEXQL",$J,0)=+LEXCT
 . S:$L($G(LEX(2))) ^TMP("LEXQL",$J,+LEXCT,2)=$G(LEX(2))
 K ^TMP("LEXQL",$J,"ADDLIST")
 Q
 ;    
 ; Miscellaneous
VSO(X) ;   Verify Input
 N LEX,LEXIO,LEXIC,LEXUC,LEXUO S LEX=$G(X) Q:'$L(LEX) ""  Q:$L(LEX)'>1 $$UP^XLFSTR(LEX)
 S LEXIC=$G(LEX),LEXIO=$E(LEX,1,($L(LEX)-1))_$C(($A($E(LEX,$L(LEX)))-1))_"~ "
 S LEXUC=$$UP^XLFSTR(LEXIC),LEXUO=$$UP^XLFSTR(LEXIO)
 ; 80 ICD-9/10
 I $E($O(^ICD9("BA",LEXIO)),1,$L(LEXIC))=LEXIC Q LEXIC
 I $E($O(^ICD9("BA",LEXUO)),1,$L(LEXUC))=LEXUC Q LEXUC
 ; 80.1 ICD-9.10
 I $E($O(^ICD0("BA",LEXIO)),1,$L(LEXIC))=LEXIC Q LEXIC
 I $E($O(^ICD0("BA",LEXUO)),1,$L(LEXUC))=LEXUC Q LEXUC
 ; 81 CPT
 I $E($O(^ICPT("BA",LEXIO)),1,$L(LEXIC))=LEXIC Q LEXIC
 I $E($O(^ICPT("BA",LEXUO)),1,$L(LEXUC))=LEXUC Q LEXUC
 ; 81.3 CPT Modifier
 I $E($O(^DIC(81.3,"BA",LEXIO)),1,$L(LEXIC))=LEXIC Q LEXIC
 I $E($O(^DIC(81.3,"BA",LEXUO)),1,$L(LEXUC))=LEXUC Q LEXUC
 Q LEX
SD(X) ;   Short Date
 Q $TR($$FMTE^XLFDT(+($G(X)),"5DZ"),"@"," ")
FT(X,Y,LEX) ;   Format Text First
 N LEXT,LEXC,LEXD,LEXS S LEXC=$G(X),LEXD=$G(Y),LEXS=$G(LEX) S LEXC=$G(LEXC) Q:'$L(LEXC) ""
 S LEXT=$P($$STY(LEXC),U,2) Q:'$L(LEXT)  S LEXD=$G(LEXD) Q:'$L(LEXD) ""
 S LEXS=$G(LEXS),LEXT=$G(LEXT) S:$L(LEXD)&($L(LEXS)) LEXD=LEXD_" ("_LEXS_")" N LEXO
 S LEXO=LEXC S LEXO=LEXO_$J(" ",(9-$L(LEXO)))_$E(LEXD,1,54)
 S LEXO=LEXO_$J(" ",(63-$L(LEXO)))_LEXT S X=LEXO
 Q X
FC(X,Y,LEX) ;   Format Code First
 N LEXO,LEXT,LEXC,LEXD,LEXS S LEXC=$G(X),LEXD=$G(Y),LEXS=$G(LEX) Q:'$L(LEXC) ""
 S LEXT=$P($$STY(LEXC),"^",2) Q:'$L(LEXT) ""  Q:'$L(LEXD) ""
 S LEXS=$G(LEX),LEXO=LEXT_" "_LEXC_" ",LEXO=LEXO_$J(" ",(19-$L(LEXO))),LEXO=LEXO_" "_LEXD
 S:$L(LEXS)&(LEXO'[LEXS) LEXO=$E(LEXO,1,56)_" ("_LEXS_")" S X=LEXO
 Q X
STY(X) ;   Short Type
 N LEXSO S LEXSO=$G(X) Q:$L(LEXSO)'>1 ""
 Q:$$CODEABA^ICDEX(LEXSO,80,30)>0 "1^ICD-10 Dx"
 Q:$$CODEABA^ICDEX(LEXSO,80.1,31)>0 "2^ICD-10 Op"
 Q:$$CODEABA^ICDEX(LEXSO,80,1)>0 "3^ICD-9 Dx"
 Q:$$CODEABA^ICDEX(LEXSO,80.1,2)>0 "4^ICD-9 Op"
 Q:$D(^ICPT("BA",(LEXSO_" "))) "5^CPT-4/HCPCS"
 Q:$D(^DIC(81.3,"BA",(LEXSO_" "))) "6^CPT Mod"
 Q ""
LTY(X) ;   Long Type
 N LEXSO,LEX S LEXSO=$G(X) Q:$L(LEXSO)'>1 ""
 Q:$$CODEABA^ICDEX(LEXSO,80,30)>0 "1^ICD-10 Diagnosis Code"
 Q:$$CODEABA^ICDEX(LEXSO,80.1,31)>0 "2^ICD-10 Procedure Code"
 Q:$$CODEABA^ICDEX(LEXSO,80,1)>0 "3^ICD-9 Diagnosis Code"
 Q:$$CODEABA^ICDEX(LEXSO,80.1,2)>0 "4^ICD-9 Procedure Code"
 S LEX=$O(^ICPT("BA",(LEXSO_" "),0)) I LEX>0 D  Q:LEX["^" LEX
 . N LEXS S LEXS=$P($G(^ICPT(+LEX,0)),"^",6)
 . I LEXS="C" S LEX="5^CPT Procedure Code" Q
 . I LEXS="H" S LEX="6^HCPCS Procedure Code" Q
 . I LEXSO?5N S LEX="5^CPT Procedure Code" Q
 . S LEX="6^HCPCS Procedure Code"
 Q:$D(^DIC(81.3,"BA",(LEXSO_" "))) "7^CPT Modifier Code"
 Q ""
DS(X) ;   Trim Dubble Space Character
 S X=$G(X) Q:X'["  " X  F  Q:X'["  "  S X=$P(X,"  ",1)_" "_$P(X,"  ",2,299)
 Q X
PR(LEX,X) ;   Parse Array
 N DIW,DIWF,DIWI,DIWL,DIWR,DIWT,DIWTC,DIWX,DN,LEXI,LEXLEN,LEXC K ^UTILITY($J,"W") Q:'$D(LEX)
 S LEXLEN=+($G(X)) S:+LEXLEN'>0 LEXLEN=79 S LEXC=+($G(LEX)) S:+($G(LEXC))'>0 LEXC=$O(LEX(" "),-1) Q:+LEXC'>0
 S DIWL=1,DIWF="C"_+LEXLEN S LEXI=0 F  S LEXI=$O(LEX(LEXI)) Q:+LEXI=0  S X=$G(LEX(LEXI)) D ^DIWP
 K LEX S (LEXC,LEXI)=0 F  S LEXI=$O(^UTILITY($J,"W",1,LEXI)) Q:+LEXI=0  D
 . S LEX(LEXI)=$$TM($G(^UTILITY($J,"W",1,LEXI,0))," "),LEXC=LEXC+1
 S:$L(LEXC) LEX=LEXC K ^UTILITY($J,"W")
 Q
TM(X,Y) ;   Trim Character Y - Default " "
 S X=$G(X) Q:X="" X  S Y=$G(Y) S:'$L(Y) Y=" "
 F  Q:$E(X,1)'=Y  S X=$E(X,2,$L(X))
 F  Q:$E(X,$L(X))'=Y  S X=$E(X,1,($L(X)-1))
 Q X
OK(X,Y,LEX,LEXS) ;   User Input is Ok
 N LEXIX,LEXX,LEXO,LEXCT,LEXNX,LEXROOT
 S (LEXCT,LEXX)=$TR($G(X),"#","") Q:$L(LEXX)'>0 0  S LEXROOT=$G(Y),LEXIX=$G(LEX),LEXS=+($G(LEXS))
 Q:'$L(LEXROOT) 0  Q:"^D^AD^BA^ABA^C^"'[("^"_LEXIX_"^") 0
 S LEXO=$E(LEXX,1,($L(LEXX)-1))_$C(($A($E(LEXX,$L(LEXX)))-1))_"~"
 S:+LEXS'>0 LEXNX=$O(@(LEXROOT_""""_LEXIX_""","""_LEXO_""")"))
 S:+LEXS>0 LEXNX=$O(@(LEXROOT_""""_LEXIX_""","_+LEXS_","""_LEXO_""")"))
 Q:$E(LEXNX,1,$L(LEXCT))=LEXCT 1
 Q 0
TOKN(X) ;   Parse Tolkens
 N LEXX,LEXBEG,LEXEND,LEXCHR,LEXTTK,LEXTKN,LEXNOT K LEXTKNS S LEXX=$G(X),LEXBEG=1,LEXTTK=0
 S LEXNOT="^AND^THE^THEN^FOR^FROM^OTHER^THAN^WITH^THEIR^SOME^THIS^" F LEXEND=1:1:$L(LEXX)+1 D
 . S LEXCHR=$E(LEXX,LEXEND) I "~!@#$%&*()_+`-=[]{};'\:|,./?<> """[LEXCHR D
 . . S LEXTKN=$E(LEXX,LEXBEG,LEXEND-1),LEXBEG=LEXEND+1 I $L(LEXTKN)>2,$L(LEXTKN)<31,LEXNOT'[LEXTKN D
 . . . S:'$D(LEXTKNS($L(LEXTKN),LEXTKN)) LEXTTK=+($G(LEXTTK))+1
 . . . S LEXTKNS($L(LEXTKN),LEXTKN)=""
 S X=+($G(LEXTTK))
 Q X
SHO ;   Show TMP
 N LEXNN,LEXNC S LEXNN="^TMP(""LEXQL"","_$J_")",LEXNC="^TMP(""LEXQL"","_$J_","
 W ! F  S LEXNN=$Q(@LEXNN) Q:'$L(LEXNN)!(LEXNN'[LEXNC)  W !,LEXNN,"=",@LEXNN
 W !
 Q
