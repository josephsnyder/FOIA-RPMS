LRVER4 ;DALOI/CJS/DALOI/FHS - LAB ROUTINE DATA VERIFICATION ; 22-Oct-2013 09:22 ; MKK
 ;;5.2;LAB SERVICE;**14,42,112,121,140,171,153,188,279,283,1018,286,1027,1030,1033,1038**;NOV 01, 1997;Build 6
 ;
 N LRAMEND,LRRFLAG
 ;
LOOP ;
 D ENTRYAUD^BLRUTIL("LOOP^LRVER4 0.0")
 ;
 S LRLCT=0
 D UPDTCOML^BLRAAORU(+$G(LRDFN),+$G(LRIDT),+$G(LRODT),+$G(LRSN))    ; IHS/OIT/MKK - LR*5.2*1030
 I '$D(LRGVP) D
 . S:$D(LRWRDS) LRWRD=LRWRDS
 . ; W !!,PNM,"  SSN: ",SSN,"   " S LRLCT=LRLCT+1
 . W !!,PNM,"  HRCN: ",HRCN,"   " S LRLCT=LRLCT+1          ; IHS/OIT/MKK MODIFICATIONS LR*5.2*1027
 . I LRDPF=2 W "   LOC: ",$S(LRWRD'="":LRWRD,1:$S($L($P(^LRO(68,LRAA,1,LRAD,1,LRAN,0),U,7)):$P(^(0),U,7),1:"??"))
 ;
 W !,"Pat Info: ",$P($G(^LR(LRDFN,.091)),U)
 W ?34," Sex: "  W:$L($G(SEX)) $S(SEX="M":"MALE",SEX="F":"FEMALE",1:SEX)  ; IHS/OIT/MKK -- LR*5.2*1027
 ; W ?48," Age: ",$$CALCAGE^LRRPU(DOB,LRCDT)," as of ",$$FMTE^XLFDT(LRCDT,"1D")
 W ?48," Age: ",$$CALCAGE^LRRPU(+$G(VADM(3)),LRCDT)," as of ",$$FMTE^XLFDT(LRCDT,"1D")   ; IHS/OIT/MKK -- LR*5.2*1027
 S LRPRAC=$P(^LRO(68,LRAA,1,LRAD,1,LRAN,0),U,8)
 I LRPRAC>0,LRPRAC=+LRPRAC D GETS^DIQ(200,LRPRAC_",",".01;.132;.137;.138","E","LRPRAC(LRPRAC)","LRERR")
 W !,"Provider: "
 S LRLCT=LRLCT+2
 I LRPRAC'="",'$D(LRPRAC(LRPRAC,200)) W LRPRAC
 I LRPRAC,$D(LRPRAC(LRPRAC,200)) D
 . W LRPRAC(LRPRAC,200,LRPRAC_",",.01,"E"),?40," Voice pager: ",LRPRAC(LRPRAC,200,LRPRAC_",",.137,"E")
 . W !,"   Phone: ",LRPRAC(LRPRAC,200,LRPRAC_",",.132,"E"),?38," Digital pager: ",LRPRAC(LRPRAC,200,LRPRAC_",",.138,"E")
 . S LRLCT=LRLCT+1
 ;
 N PRAC,PR
 D PRAC^LR7OMERG(LRAA,LRAD,LRAN,.PRAC)
 I $O(PRAC(0)) D
 . S PR=0
 . F  S PR=$O(PRAC(PR)) Q:PR<1  I $D(^VA(200,PR,0)) W !?14,$P(^(0),"^") S LRLCT=LRLCT+1
 W ! S LRLCT=LRLCT+1
 S LRNX=0,LRVRM=2,T=""
 I $P(^LR(LRDFN,LRSS,LRIDT,0),U,7)'="" D
 . W !,"VOLUME: ",$P(^(0),U,7)
 . S LRLCT=LRLCT+1
 S LRACC=$P(Z1,U,6)
 W !,"ACCESSION:",?30,$P(Z2,U,6),?44," ",LRACC
 W !,?30,LRDAT(2) W ?44," ",LRDAT
 S LRLCT=LRLCT+2
 I $D(LRALERT),LRALERT<($P(LRPARAM,U,20)+1) D
 . W !?15 W:$E(IOST,1,2)="C-" @LRVIDO
 . W "Test ordered "_$P($G(^LAB(62.05,+LRALERT,0)),U)
 . W:$E(IOST,1,2)="C-" @LRVIDOF,$C(7)
 . S LRLCT=LRLCT+1
 ;
 I '$O(LRORD(0)) W !!?7,$C(7),"This is not a verifiable test/accession ",! Q
V ; EP
 D ENTRYAUD^BLRUTIL("V^LRVER4 0.0")
 ;
 I $D(LRGVP) D V20 Q
 G EDIT:($O(^LR(LRDFN,LRSS,LRIDT,1))=""!('LRVF&$D(LRPER)))&'$D(LRNUF)
 K LRNUF
 D V20,ND G V37:LRVF&'$D(X)#2,EDIT:LREDIT
 S LRTEC=$S($D(^LRO(68,LRAA,1,LRAD,2)):$P(^(2),U),1:$S($D(LRUSI):LRUSI,1:"")),LREDIT=0
V36 ;
 D ENTRYAUD^BLRUTIL("V36^LRVER4 3.0")
 ;
 Q:$D(LRGVP)
 K DIR
 S DIR(0)="SAO^E:Edit;C:Comments;W:Workload"
 S DIR("A")="SELECT ('E' to Edit, 'C' for Comments, 'W' Workload): "
 D ^DIR
 I $D(DIRUT) S X="^" G V37
 S X=Y
 S:$E(X)="E" LREDIT=1,X=""
 K LRNC
 I $E(X)="C" S LRNC=1 D COM K LRNC G V36
 I $E(X)="W" D  G LOOP
 . I $P(LRPARAM,U,14),$P($G(^LRO(68,LRAA,0)),U,16) D STD^LRCAPV,EN^LRCAPV S LREND=0 Q
 . W !?10," Workload is not activated."
 S X=$S(X="@":"",X="":LRTEC,1:X),LRTEC=X
 S:'$D(^LRO(68,LRAA,1,LRAD,2)) ^(2)="" S ^(2)=X_U_$P(^(2),U,2,99)
 G EDIT:LREDIT
V37 Q  ;LEAVE LRVER4, BACK TO LRVER3
 ;
 ;
V20 ;
 D ENTRYAUD^BLRUTIL("V20^LRVER4 0.0")
 ;
 I $G(LRCHG) D V21,DCOM^LRVERA Q
 S LRNX=$O(LRORD(LRNX)) G V35:LRNX<1 D SUBS
 G:'$G(LRTS) V20
 I '$D(LRSB(LRSB)),'$D(^LR(LRDFN,LRSS,LRIDT,LRSB)) G V20
 D V25^LRVER5
 ;
 D ENTRYAUD^BLRUTIL("V20^LRVER4 2.0")
 ;
 D:$D(LRGVP) PG Q:$D(LRGVP)&($D(DTOUT)!$D(DUOUT))
 ;
 W !,$P(^LAB(60,+LRTS,0),U)
 S X1=""
 I $D(^LR(LRDFN,LRSS,+LRLDT,LRSB)) D
 . S X1=$P(^(LRSB),U),X=X1
 . I $$GET1^DID(63.04,LRSB,"","TYPE","","LRERR")="SET" D
 . . S X=$$EXTERNAL^DILFD(63.04,LRSB,"",X1)
 . . I X="" S X=X1
 . W:X'="" ?30,@LRFP
 S (X,LRFLG)=""
 I $D(LRSB(LRSB)) D
 . N LRX
 . K LRNOVER(LRSB)
 . S (LRDL,LRX,X)=$P(LRSB(LRSB),U)
 . S LREDIT=0,LRFLG=$P(LRSB(LRSB),U,2)
 . I $$GET1^DID(63.04,LRSB,"","TYPE","","LRERR")="SET" D
 . . S X=$$EXTERNAL^DILFD(63.04,LRSB,"",LRX)
 . . I X="" S X=LRX
 . W ?44," ",@LRFP," ",LRFLG,?56," ",$P($P(LRSB(LRSB),U,5),"!",7) ;$P(LRNG,U,7)
 . S X=LRX
 . I X=""!(X="canc")!(X="comment")!(X="pending") Q
 . S Y=0
 . I LRDEL'="" S LRQ=1 X LRDEL K LRQ
 . W "  "
 . I '$D(LRQ),$E(LRFLG,2)="*" D DISPFLG^LRVER4
 ;
 S:$P(X,U)="" $P(LRSB(LRSB),U)=""
 I $P(X,U)'="" D
 . N I,LRX,LRY
 . S $P(LRSB(LRSB),U)=X,$P(LRSB(LRSB),U,2)=LRFLG
 . S LRX=$$TMPSB^LRVER1(LRSB),LRY=$P(LRSB(LRSB),U,3)
 . F I=1:1:$L(LRX,"!") I $P(LRY,"!",I)="" S $P(LRY,"!",I)=$P(LRX,"!",I)
 . S $P(LRSB(LRSB),U,3)=LRY
 . I $P($P(LRSB(LRSB),U,3),"!")="" D RONLT^LRVER3
 . D
 . . I $P(LRSB(LRSB),U,4)!($P(LRSB(LRSB),U)="pending") Q
 . . I '$D(LRSA(LRSB))#2 S $P(LRSB(LRSB),U,4)=$S($G(LRDUZ):LRDUZ,1:$G(DUZ)),$P(LRSB(LRSB),U,9)=$S($G(LRDUZ(2)):LRDUZ(2),$G(DUZ(2)):DUZ(2),1:"") Q
 . . I $P(LRSB(LRSB),U)=$P(LRSA(LRSB),U) S:$P(LRSA(LRSB),U,4) $P(LRSB(LRSB),U,4)=$P(LRSA(LRSB),U,4) S $P(LRSA(LRSB),U,3)=$P(LRSB(LRSB),U,3) Q
 . . S:'$P(LRSB(LRSB),U,4) $P(LRSB(LRSB),U,4)=$S($G(LRDUZ):LRDUZ,1:$G(DUZ)),$P(LRSB(LRSB),U,9)=$S($G(LRDUZ(2)):LRDUZ(2),$G(DUZ(2)):DUZ(2),1:"")
 . S $P(LRSB(LRSB),U,5)=$TR(LRNGS,U,"!")
 I '$D(LRNUF) S LRLCT=LRLCT+1 S:$X>80 LRLCT=LRLCT+1 D:LRLCT>22 WT G:$G(Y)'="^" V20
 ;
V35 ;
 D LRCFL:LRCFL]""
 D DCOM^LRVERA K LRNUF
 Q
 ;
 ;
LRCFL ;
 S LREXEC=LRCFL D ^LREXEC:LRCFL[""
 D:LRLCT>22 WT
 Q
 ;
 ;
EDIT ;
 K LROUT
 D ^LRVER5 S LRVRM=2 G:$G(LRCHG) LOOP G LRCFL:$D(LROUT)!$D(LRPER)
 G LOOP
 ;
 ;
RANGE ;
 N LRI,LRFIND
 S Y=X
 I X=""!(X="canc")!(X="comment")!(X="pending") Q
 W "  "
 F LRI=1:1:$L(X) S LRFIND=$E(X,LRI) Q:LRFIND?1(1N,1A,1".",1"-",1"<",1">")
 S X=$E(X,LRI,999)
 ;
 ; User has indicated specific normality to set - used when entering
 ; reference lab results and all the info to calculate is not available.
 I $G(LRRFLAG(LRSB)) S LRFLG=$P("L^L*^H^H*","^",LRRFLAG(LRSB))
 ;
 E  D RANGECHK
 I '$D(LRQ),$E(LRFLG,2)="*" D DISPFLG^LRVER4
RQ S X=Y
 Q
 ;
 ;
RANGECHK ; Check result against reference ranges and set flag
 ;
 I X[":"&((LRNG2[":")!(LRNG3[":")!(LRNG4[":")!(LRNG5[":")) D IHSCHECK  Q  ; IHS/MSC/MKK - LR*5.2*1033
 ;
 I $E(LRNG2,2)="<"!($E(LRNG3,2)=">")!($E(LRNG4,2)="<")!($E(LRNG5,2)=">") D IHSLOGIC  Q   ; IHS/MSC/MKK - LR*5.2*1033
 I $E(LRNG2,2)=">"!($E(LRNG3,2)="<")!($E(LRNG4,2)=">")!($E(LRNG5,2)="<") D IHSLOGIC  Q   ; IHS/MSC/MKK - LR*5.2*1033
 ;
 ; Check for numeric abnormal results
 I X?.1"-".N.1".".N D  Q
 . I LRNG4'="",LRNG4?.1"-".N.1".".N,X<LRNG4 S LRFLG="L*" Q
 . I LRNG5'="",LRNG5?.1"-".N.1".".N,X>LRNG5 S LRFLG="H*" Q
 . I LRNG2'="",LRNG2?.1"-".N.1".".N,X<LRNG2 S LRFLG="L" Q
 . I LRNG3'="",LRNG3?.1"-".N.1".".N,X>LRNG3 S LRFLG="H" Q
 ;
 ; Check for <> abnormal results
 ; "<" results checked against low values
 ; ">" results checked against high values
 I X?1(1"<",1">").N.1".".N D  Q
 . N LRX
 . S LRX=$E(X,2,$L(X))
 . I $E(X)="<" D  Q
 . . I LRNG4'="",LRNG4?.N.1".".N,LRX<LRNG4 S LRFLG="L*" Q
 . . I LRNG4'="",LRNG4?.N.1".".N,LRX=LRNG4 S LRFLG="L*" Q
 . . I LRNG2'="",LRNG2?.N.1".".N,LRX<LRNG2 S LRFLG="L" Q
 . . I LRNG2'="",LRNG2?.N.1".".N,LRX=LRNG2 S LRFLG="L" Q
 . I $E(X)=">" D  Q
 . . I LRNG5'="",LRNG5?.N.1".".N,LRX>LRNG5 S LRFLG="H*" Q
 . . I LRNG5'="",LRNG5?.N.1".".N,LRX=LRNG5 S LRFLG="H*" Q
 . . I LRNG3'="",LRNG3?.N.1".".N,LRX>LRNG3 S LRFLG="H" Q
 . . I LRNG3'="",LRNG3?.N.1".".N,LRX=LRNG3 S LRFLG="H" Q
 ;
 ; Check for ranges, i.e. 0-5, 6-10.
 ; Compare first value to abnormal value
 I X?1.N1"-"1.N D  Q
 . I LRNG4'="",LRNG4?.N.1".".N,+X<LRNG4 S LRFLG="L*" Q
 . I LRNG5'="",LRNG5?.N.1".".N,+X>LRNG5 S LRFLG="H*" Q
 . I LRNG2'="",LRNG2?.N.1".".N,+X<LRNG2 S LRFLG="L" Q
 . I LRNG3'="",LRNG3?.N.1".".N,+X>LRNG3 S LRFLG="H" Q
 ;
 Q
 ;
 ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1033
 ;       Special logic for Titer results
IHSCHECK ; EP
 NEW RESULT,CHEK
 ;
 S RESULT=$P(X,":",2)  Q:$L(RESULT)<1  ; If no result, skip
 ;
 S CHEK=$P(LRNG4,":",2)  I $L(CHEK),RESULT<CHEK S LRFLG="L*" Q
 S CHEK=$P(LRNG5,":",2)  I $L(CHEK),RESULT>CHEK S LRFLG="H*" Q
 S CHEK=$P(LRNG2,":",2)  I $L(CHEK),RESULT<CHEK S LRFLG="L" Q
 S CHEK=$P(LRNG3,":",2)  I $L(CHEK),RESULT>CHEK S LRFLG="H" Q
 Q
 ;
 ; Special logic for Ref Range beginning with > or < symbol
IHSLOGIC ; EP
 NEW IHSLRNG2,IHSLRNG3,IHSLRNG4,IHSLRNG5
 ;
 S (IHSLRNG2,IHSLRNG3,IHSLRNG4,IHSLRNG5)=""
 ;	
 D ENTRYAUD^BLRUTIL("IHSRESET^LRVER4 0.0")
 ;
 I $E(LRNG2,2)="<" D IHSRLOW(LRNG2,.IHSLRNG2)
 I $E(LRNG2,2)=">" D IHSHIGH(LRNG2,.IHSLRNG2)
 I $E(LRNG3,2)="<" D IHSRLOW(LRNG3,.IHSLRNG3)
 I $E(LRNG3,2)=">" D IHSHIGH(LRNG3,.IHSLRNG3)
 I $E(LRNG4,2)="<" D IHSRLOW(LRNG4,.IHSLRNG4)
 I $E(LRNG4,2)=">" D IHSHIGH(LRNG4,.IHSLRNG4)
 I $E(LRNG5,2)="<" D IHSRLOW(LRNG5,.IHSLRNG5)
 I $E(LRNG5,2)=">" D IHSHIGH(LRNG5,.IHSLRNG5)
 ;
 D ENTRYAUD^BLRUTIL("IHSRESET^LRVER4 1.0")
 ;
 I IHSLRNG4'="",IHSLRNG4?.1"-".N.1".".N,X<IHSLRNG4 S LRFLG="L*" Q
 I IHSLRNG5'="",IHSLRNG5?.1"-".N.1".".N,X>IHSLRNG5 S LRFLG="H*" Q
 I IHSLRNG2'="",IHSLRNG2?.1"-".N.1".".N,X<IHSLRNG2 S LRFLG="L" Q
 I IHSLRNG3'="",IHSLRNG3?.1"-".N.1".".N,X>IHSLRNG3 S LRFLG="H" Q
 Q
 ;
IHSRLOW(LRNG,IHSRNG) ; EP - Reset low
 NEW NUMDEC,SUBTRACT
 S SUBTRACT=1
 S NUMDEC=$L($P(LRNG,".",2))
 I NUMDEC S SUBTRACT="."_$TR($J("",NUMDEC)," ","0")_"1"
 S IHSRNG=$P($P(LRNG,"<",2)," ")-SUBTRACT
 Q
 ;
IHSHIGH(LRNG,IHSRNG) ; EP - Reset High
 NEW NUMDEC,ADDON
 S ADDON=1
 S NUMDEC=$L($P(LRNG,".",2))
 I NUMDEC S ADDON="."_$TR($J("",NUMDEC)," ","0")_"1"
 S IHSRNG=$P($P(LRNG,">",2)," ")+ADDON
 Q
 ; ----- END IHS/MSC/MKK - LR*5.2*1033
 ;
DISPFLG ; Display critical flags
 ;
 I $E(IOST,1,2)="C-" W $C(7),@LRVIDO
 W "CRITICAL ",$S($E(LRFLG,1)="L":"LOW",$E(LRFLG,1)="H":"HIGH",1:""),"!!"
 I $E(IOST,1,2)="C-" W @LRVIDOF,$C(7),$C(7)
 Q
 ;
 ;
SUBS ;
 S LRSB=LRORD(LRNX),LRTS=$S($D(^TMP("LR",$J,"TMP",LRSB)):^(LRSB),1:0)
 Q
 ;
 ;
ND ;
 K X,DIR
 Q:'LRVF
 I '$P($G(LRLABKY),U) D  Q
 . W !,"You're not authorized to edit verified data."
 . S LREDIT=0
 ;
 ; S DIR(0)="FO"
 ; S DIR("A")="If you need to change something, enter your initials"
 ; S DIR("?")="To change verified results, enter your initials."
 ; D ^DIR
 ; S X=Y K DIR
 ;
 ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1038 -- Mask User input.
 D  ; DO Statement used to ensure variables ANSWER, STEP, & TEXT are strictly local
 . NEW ANSWER,STEP,TEXT
 . K X
 . W !,"If you need to change something, enter your initials: "
 . S ANSWER=""
 . F STEP=1:1:4  R TEXT#1  S:TEXT="^" ANSWER="^"  Q:TEXT="^"!(TEXT="")  S ANSWER=ANSWER_TEXT  W $C(8),"*"
 . S LRINI=ANSWER
 . S X=ANSWER
 ; ----- END IHS/MSC/MKK - LR*5.2*1038
 ;
 I $$UP^XLFSTR(X)'=$$UP^XLFSTR(LRUSI) S LREDIT=0 K X QUIT
 I $D(X)#2,'$G(LRCHG) W ! D  S LRCHG=1
 . K LRSA S LRSA=1
 . F  S LRSA=$O(^LR(LRDFN,"CH",LRIDT,LRSA)) Q:'LRSA  S LRSA(LRSA)=^(LRSA)
 Q
 ;
 ;
WT ; EP
 D ENTRYAUD^BLRUTIL("WT^LRVER4 0.0")
 ;
 S LRLCT=0 Q:$D(LRGVP)
 W !,"PRESS ANY KEY TO CONTINUE, '^' TO STOP " R Y:DTIME S:'$T Y="^"
 Q
 ;
 ;
COM ;from LRVER5
 D ENTRYAUD^BLRUTIL("COM^LRVER4 0.0")
 ;
 Q:$D(LRGVP)
 ;
 I $G(^LR(LRDFN,"CH",LRIDT,1,1,0))["ASK AT ORDER" D AFTRAAOQ  Q   ; IHS/OIT/MKK - LR*5.2*1030
 D GETCCDTA^BLRCCPED(LRDFN,"CH",LRIDT)                            ; IHS/MSC/MKK - LR*5.2*1033
 ;
 K DR
 S DIE="^LR("_LRDFN_",""CH"",",DA=LRIDT,DA(1)=LRDFN,DR=.99
 D ^DIE,COM1:$D(LRNC)
 L +^LR(LRDFN,LRSS,LRIDT):5
 I $O(^LR(LRDFN,"CH",LRIDT,1,0))="" K ^LR(LRDFN,"CH",LRIDT,1)
 L -^LR(LRDFN,LRSS,LRIDT)
 Q
 ;
 ; ----- BEGIN IHS/OIT/MKK - LR*5.2*1030
AFTRAAOQ ; EP - Put any comments AFTER the Ask-At-Order Questions
 NEW COMMENTS,ERRS,FDA,IENS,LINE
 W !
 F LINE=1:1  D  Q:LINE<1
 . D ^XBFMK
 . S DIR(0)="FAO^1:75"
 . S DIR("A")="COMMENTS:"
 . D ^DIR
 . I $L($G(X))<1  S LINE=-1  Q
 . ;
 . S COMMENTS(LINE)=$G(X)
 ;
 Q:$D(COMMENTS)<1
 ;
 S LINE=.9999999
 F  S LINE=$O(COMMENTS(LINE))  Q:LINE=""  D
 . S IENS(1)=$O(^LR(LRDFN,"CH",LRIDT,1,"B"),-1)+1  ; Get next COMMENT line
 . S FDA(63.041,"+1,"_LRIDT_","_LRDFN_",",.01)=$G(COMMENTS(LINE))
 . D UPDATE^DIE(,"FDA","IENS","ERRS")
 Q
 ; ----- END IHS/OIT/MKK - LR*5.2*1030
 ;
VOL ;
 W !,"VOLUME: ",$P(^LR(LRDFN,LRSS,LRIDT,0),U,7),"//" R X:DTIME
 G VOL:X["?" S:X'=""&(X'[U) ^(0)=$P(^(0),U,1,6)_U_X_U_$P(^(0),U,8,10)
 G COM
 ;
 ;
COM1 ;
 N LRX Q:'$P(^LR(LRDFN,LRSS,LRIDT,0),U,3)
 D XREF^LRVER3A
 S LRX=0 F  S LRX=$O(^TMP("LR",$J,"TMP",LRX)) Q:LRX<1  S ^LRO(68,"AC",LRDFN,LRIDT,LRX)=""
 I $L($P(^LR(LRDFN,LRSS,LRIDT,0),U,9)),$E($P(^(0),U,9))'="-" S $P(^(0),U,9)="-"_$P(^(0),U,9)
 Q
 ;
 ;
PG Q:$Y<(IOSL+5)
 I $E(IOST,1,2)'="C-" W @IOF Q
 D PG^LRGVP
 Q
 ;
V21 ;
 N Y,LREND
 S LRSB=1,LRLCT=1
 F  S LRSB=+$O(LRSB(LRSB)) Q:'LRSB!($G(LREND))  D
 . N LRX
 . S LRTS=$O(^LAB(60,"C","CH;"_LRSB_";1",0)) Q:'LRTS
 . D V25^LRVER5
 . W !,$P(^LAB(60,LRTS,0),U) S X1=""
 . I $D(^LR(LRDFN,LRSS,+LRLDT,LRSB)) D
 . . S X1=$P(^(LRSB),U),(LRDL,X)=X1
 . . I $$GET1^DID(63.04,LRSB,"","TYPE","","LRERR")="SET" D
 . . . S X=$$EXTERNAL^DILFD(63.04,LRSB,"",X1)
 . . . I X="" S X=X1
 . . W:X'="" ?30,@LRFP
 . S (LRDL,LRX,X)=$P(LRSB(LRSB),U)
 . S LREDIT=0,LRFLG=$P(LRSB(LRSB),U,2)
 . I $$GET1^DID(63.04,LRSB,"","TYPE","","LRERR")="SET" D
 . . S X=$$EXTERNAL^DILFD(63.04,LRSB,"",LRX)
 . . I X="" S X=LRX
 . W ?44," ",@LRFP," ",LRFLG,?56," ",$P(LRNG,U,7)
 . S X=LRX
 . I X=""!(X="canc")!(X="comment")!(X="pending") Q
 . S Y=0
 . I LRDEL'="" S LRQ=1 X LRDEL K LRQ
 . W "  "
 . I '$D(LRQ),$E(LRFLG,2)="*" D DISPFLG^LRVER4
 . I '$D(LRNUF) S LRLCT=LRLCT+1 S:$X>80 LRLCT=LRLCT+1 D:LRLCT>15 WT S:$E($G(Y))="^" LREND=1
 Q
