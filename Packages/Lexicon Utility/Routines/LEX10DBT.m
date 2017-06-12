LEX10DBT ;ISL/KER - ICD-10 Diagnosis Lookup by Text ;04/21/2014
 ;;2.0;LEXICON UTILITY;**80**;Sep 23, 1996;Build 10
 ;               
 ; Global Variables
 ;    ^TMP("LEXDX"        SACC 2.3.2.5.1
 ;    ^TMP("LEXFND"       SACC 2.3.2.5.1
 ;    ^TMP("LEXHIT"       SACC 2.3.2.5.1
 ;    ^TMP("LEXSCH"       SACC 2.3.2.5.1
 ;               
 ; External References
 ;    $$DT^XLFDT          ICR  10103
 ;    $$FMDIFF^XLFDT      ICR  10103
 ;    $$NOW^XLFDT         ICR  10103
 ;               
 Q
I10T(X,LEXA,LEXD,LEXL,LEXF) ; Lookup by Text, Return Pruned List
 K ^TMP("LEXSCH",$J),^TMP("LEXFND",$J),^TMP("LEXHIT",$J)
 N DIC,LEXCT,LEXFIL,LEXLEN,LEXLI,LEXCDT,LEXVDT,LEXX,LEXPR,LEXPRL
 N LEXFND,LEXTOT,LEXPFL,LEXLV,LEXGV,LEXBG1,LEXEND,LEXBG2,LEXELP
 S LEXA(0)="-1" S LEXX=$G(X) Q:'$L(LEXX)
 S (LEXCDT,LEXVDT)=$G(LEXD),LEXFIL=$G(LEXF)
 S LEXLEN=1,LEXPR=0
 S LEXPRL=$G(LEXL) S:LEXPRL="" LEXPRL=30
 K ^TMP("LEXSCH",$J) D CONFIG^LEXSET("10D","10D")
 S ^TMP("LEXSCH",$J,"FIL",1)="Diagnosis"
 S ^TMP("LEXSCH",$J,"DIS",0)="ICD/10D/DS4/SCC/NAN/SCT"
 S ^TMP("LEXSCH",$J,"DIS",1)="Diagnosis"
 S ^TMP("LEXSCH",$J,"ADF",0)=1,LEXVDT=LEXCDT
 I LEXCDT'?7N D
 . S (DIC("S"),LEXFIL)="I $L($$D10^LEX10CS(+Y))",^TMP("LEXSCH",$J,"FIL",0)=LEXFIL
 . S ^TMP("LEXSCH",$J,"FIL",1)="Unversioned Diagnosis"
 . S ^TMP("LEXSCH",$J,"APP",0)=1 K ^TMP("LEXSCH",$J,"VDT") S LEXVDT=LEXCDT
 . S ^TMP("LEXSCH",$J,"DIS",0)="10D"
 . S ^TMP("LEXSCH",$J,"DIS",1)="ICD-10 Diagnosis"
 ;S:'$L(LEXFIL) LEXFIL="I $$SO^LEXU(Y,""10D"",+($G(LEXVDT)))"
 K LEX D LOOK^LEXA(LEXX,"10D",LEXLEN,"10D",LEXVDT)
 S LEXLV=+($G(LEX("LIST",0)))
 S LEXGV=$O(^TMP("LEXFND",$J,0),-1)
 S:+($G(LEX("LIST",0)))=LEXLEN&($O(^TMP("LEXFND",$J,0),-1)<0) LEXPR=1
 S LEXA(0)="-1^No matches found" Q:LEX=0
 ;S LEXA(0)="-1^Too many matches, please refine search" Q:+LEX>+LEXLEN
 S LEXA(0)=-1
 N LEXO,LEXN K ^TMP("LEXDX",$J)
 S LEXCT=0 S LEXN=0 F  S LEXN=$O(LEX("LIST",LEXN)) Q:+LEXN'>0  D
 . N LEXX,LEXIEN S LEXX=LEX("LIST",LEXN),LEXIEN=$P(LEXX,"^",1) D ADDDX
 S LEXO="" F  S LEXO=$O(^TMP("LEXFND",$J,LEXO)) Q:'$L(LEXO)  D
 . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^TMP("LEXFND",$J,LEXO,LEXIEN)) Q:+LEXIEN'>0  D
 . . Q:+LEXO'<0  D ADDDX
 K ^TMP("LEXSCH",$J),^TMP("LEXFND",$J),^TMP("LEXHIT",$J)
 S LEXFND=+($G(LEXCT))
 D REDUCE^LEX10DU(LEXPRL)
 D ARY^LEX10DU
 S LEXTOT=+($O(LEXA(" "),-1))
 S:LEXTOT>0&(LEXTOT<LEXFND) $P(LEXA(0),"^",2)=1
 K ^TMP("LEXDX",$J)
 Q
ADDDX ; Add DX
 Q:+($G(LEXIEN))'>0  Q:'$D(^LEX(757.01,+($G(LEXIEN)),0))
 N LEXSO,LEXSTA,LEXSIEN,LEXSEFF S LEXSO=$$D10ONE^LEXU(+LEXIEN,LEXVDT)
 S:'$L(LEXSO)&($G(LEXCDT)'?7N) LEXSO=$$D10^LEX10CS(+LEXIEN) Q:'$L(LEXSO)
 S LEXSTA=$$STATCHK^LEXSRC2(LEXSO,LEXVDT,,30)
 Q:$G(LEXCDT)?7N&(+LEXSTA'>0)  S LEXSIEN=$P(LEXSTA,"^",2)
 S LEXSEFF=$P($P(LEXSTA,"^",3),".",1) Q:$G(LEXCDT)?7N&(LEXSEFF'?7N)
 S ^TMP("LEXDX",$J,(LEXSO_" "))=LEXSIEN_"^"_LEXSEFF
 S LEXCT=LEXCT+1
 Q
