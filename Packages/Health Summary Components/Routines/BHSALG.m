BHSALG ; IHS/MSC/MGH - ALL Health Summary Allergies ;04-Aug-2011 14:20;DU
 ;;1.0;HEALTH SUMMARY COMPONENTS;**5,6**;March 17, 2006;Build 5
 ;
 ;Patch 6 updated for allergy review
 ; External References
 ;   DBIA 10096  ^%ZOSF("TEST"
 ;   DBIA 10035  ^DPT(
 ;   DBIA   905  ^GMR(120.8
 ;   DBIA  2056  $$GET1^DIQ (file #120.86 and #200)
 ;   DBIA 10011  ^DIWP
 ;   DBIA 10099  EN1^GMRADPT
 ;   DBIA 10060  ^VA(200,
 ;   DBIA  3449  ^GMR(120.86,
 ;
ALLRG ; Allergies
 N X,GMTSALAS,GMTSALAD,GMTSALAW,GMTSALAT,GMTSAV,GMTSAFN,GMRAL,GMTSAL,GMRAUNDT,GMRAUNRE,GMRAUOTH,GMTSNO,GMTSN1
 N GMTSALNM,GMTSCNT,GMTSEACT,GMTSLN,GMTSMECH,GMTSPRT,GMTSTY,CC,C,KK,INACT,GMRAUNFX,GMTSRC,GMTSSTM,INIEN
 N ALLRG,TITLE,JJ,RXN,ADR,IN,JK
 K GMTSA S (SEQ,ALLRG)=0,TITLE="ALL ALLERGY/ADVERSE REACTION (AR)"
 S X="GMRADPT" X ^%ZOSF("TEST")
 I $T D  Q:$D(GMTSQIT)
 . D GETALLRG D:ALLRG TITLE,ALLRGP D:'ALLRG&($L($G(GMTSALAS))) TITLE,NKA
 I 'ALLRG,'$L($G(GMTSALAS)) D
 . D UNASS(DFN)
 . I 'ALLRG D CKP^GMTSUP Q:$D(GMTSQIT)  W !,"Unknown, please evaluate",!
 K ALL,CC,CCC,CD,DIWF,DIWL,DIWR,GMTSALF,GMRAIIEN,GMTSALNM,GMTSNODE,GMTSPRT,I,II,JJ,KK,L,M,MX,N,Z,X,SEQ,GMTSA,ALLRG,TITLE,GMRA,GMRAL,GMTSEACT,GMTSMECH,GMTSTY,GMTSPFN,GMTSAL,GMTSCNT,GMTSLN,ODT
 Q
ALLRGP ; Allergy Print
 D UNASS(DFN)
 S II="" F  S II=$O(GMTSAL(II)) Q:II']""  I $O(GMTSAL(II,""))]"" D
 . D CKP^GMTSUP Q:$D(GMTSQIT)  W !?2,$S(II="D":"Drug:",II="DF":"Drug/Food:",II="DFO":"Drug/Food/Other:",II="DO":"Drug/Other:",II="F":"Food:",II="FO":"Food/Other:",II="O":"Other:",1:II_":")
 . S JJ="" F  S JJ=$O(GMTSAL(II,JJ)) Q:JJ=""  D
 ..N WKK S KK=""  F  S KK=$O(GMTSAL(II,JJ,KK)) Q:KK=""  D
 ...S L=0 F  S L=$O(GMTSAL(II,JJ,KK,L)) Q:'L  D
 ....S ADR=$P($G(GMTSAL(II,JJ,KK,L)),U,1)
 ....S IN=$$INACCK(ADR)
 ....D CKP^GMTSUP Q:$D(GMTSQIT)
 ....D AUTOV
 ....I IN=1 S JK="INACTIVE-"_JJ
 ....I IN=0 S JK=JJ
 ....W !?5,JK_": " S:$L(KK)>40 WKK=KK,WKK=$$WRAP^GMTSORC(WKK,40) W ?15,$S($L(KK)>40:$P(WKK,"|"),1:KK) D
 ....D EN1^GMRAOR2(ADR,"RXN")
 ....I II="D"  D CLS,ING
 ....I GMTSAV=1 W ?5,"(AV"
 ....E  W ?5,$S($P(GMTSAL(II,JJ,KK,L),U,5)=1:" (V",$P(GMTSAL(II,JJ,KK,L),U,5)=0:" (NV",1:"")
 ....W $S($P($G(^GMR(120.8,GMTSALNM,0)),U,6)="h":"/Historical)",$P($G(^(0)),U,6)="o":"/Observed)",1:")")
 ....I $L($P($G(WKK),"|",2)) D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?15,$P(WKK,"|",2)
 ....;IHS/MSC/MGH source added
 ....I $P(GMTSAL(II,JJ,KK,L),U,11)'="" D
 .....S GMTSRC=$P(GMTSAL(II,JJ,KK,L),U,11) S GMTSRC=$P($G(^BEHOAR(90460.05,GMTSRC,0)),U,1)
 .....W !,?10,"Source: "_GMTSRC
 ....I $P(GMTSAL(II,JJ,KK,L),U,12)'="" D
 .....S GMTSNO=$P(GMTSAL(II,JJ,KK,L),U,12)
 .....I GMTSNO'="" S GMTSN1=$P($G(^BEHOAR(90460.06,GMTSNO,0)),U,1)_" "_$P($G(^BEHOAR(90460.06,GMTSNO,0)),U,2)
 .....W !,?10,"Snomed: "_GMTSN1
 ....S (M,MX,ALL)=0 F  S M=$O(GMTSAL(II,JJ,KK,L,"S",M)) Q:M=""  D  Q:$D(GMTSQIT)
 .....I ALL=0 D CKP^GMTSUP Q:$D(GMTSQIT)
 .....W !?10,"REACTION: "
 .....S MX=MX+1
 .....;W:MX>1 ", "
 .....S N=$P(GMTSAL(II,JJ,KK,L,"S",M),";")
 .....S ALL=1 I (74)'>($X+$L(N)) D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?15,N Q
 .....S ALL=1 W N
 .....;IHS/MSC/MGH source of reaction added
 .....I $P($G(GMTSAL(II,JJ,KK,L,"S",M)),U,3)'="" D
 ......S GMTSSRC=$P($G(GMTSAL(II,JJ,KK,L,"S",M)),U,3) S GMTSSRC=$P($G(^BEHOAR(90460.05,GMTSSRC,0)),U,1)
 ......S GMTSSTM=$P($G(GMTSAL(II,JJ,KK,L,"S",M)),U,2) S X=GMTSSTM D REGDTM4^GMTSU
 ......D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?15,"Date Noted: "_X
 ......D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?15,"Reaction Source: "_GMTSSRC,!
 ....;IHS/MSC/MGH Inactivation data
 ....S M=0 F  S M=$O(^GMR(120.8,GMTSALNM,9999999.12,M)) Q:'+M  D  Q:$D(GMTSQIT)
 .....S GMRAIIEN=M_","_GMTSALNM_","
 .....D INACTIVE(GMRAIIEN)
 ....D SIGBLK($P(GMTSAFN,U,5))
 ....D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?10,"Date/Time:  " S ODT=$P(GMTSAFN,U,4) S X=ODT D REGDTM4^GMTSU W X,!
 ....D DATES
 ....S CC="" F  S CC=$O(^GMR(120.8,GMTSALNM,26,"B",CC)) Q:CC=""  D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?15,"Comments at: " S X=CC D REGDTM4^GMTSU S CD=X S CCC=0 F  S CCC=$O(^GMR(120.8,GMTSALNM,26,"B",CC,CCC)) Q:'CCC  D TEXT
COMMON1 ;additional stuff for CHHIT bjpc 2.0 patch 5
 ;get date last reviewed and display
 N BHSX
 S BHSX=$$LASTALR^APCLAPI6(DFN,,DT,"A")
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W !,"Allergy List Reviewed On: ",?36,$$FMTE^XLFDT($P(BHSX,U,1)) W ?51,"By: ",?54,$E($S($P(BHSX,U,3):$P($G(^VA(200,$P(BHSX,U,3),0)),U),1:""),1,25),!
 S BHSX=$$LASTALU^APCLAPI6(DFN,,DT,"A")
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W "Allergy List Updated On: ",?36,$$FMTE^XLFDT($P(BHSX,U,1)) W ?51,"By: ",?54,$E($S($P(BHSX,U,3):$P($G(^VA(200,$P(BHSX,U,3),0)),U),1:""),1,25),!
 S BHSX=$$LASTNAA^APCLAPI6(DFN,,DT,"A")
 D CKP^GMTSUP Q:$D(GMTSQIT)
 W "No Allergies Documented On: ",?36,$$FMTE^XLFDT($P(BHSX,U,1)) W ?51,"By: ",$E($S($P(BHSX,U,3):$P($G(^VA(200,$P(BHSX,U,3),0)),U),1:""),1,25),!
 Q
NKA ; No known allergies
 D UNASS(DFN)
 D CKP^GMTSUP Q:$D(GMTSQIT)  W:$L($G(GMTSALAS))!($L($G(GMTSALAD))) !
 D CKP^GMTSUP Q:$D(GMTSQIT)  W:$L($G(GMTSALAS)) ?15,$G(GMTSALAS),!
 D CKP^GMTSUP Q:$D(GMTSQIT)  W:$L($G(GMTSALAS))!($L($G(GMTSALAD)))!($L($G(GMTSALAW))) ?15,"Assessment date:   ",$G(GMTSALAD),!
 D CKP^GMTSUP Q:$D(GMTSQIT)  W:$L($G(GMTSALAW)) ?15,"Assessed by:   ",GMTSALAW,!
 D CKP^GMTSUP Q:$D(GMTSQIT)  W:$L($G(GMTSALAW))&($L($G(GMTSALAT))) ?25,"Title:   ",GMTSALAT,!
 Q
GETALLRG ; Get Allergies
 S GMRA="0^0^111^1" D EN1^GMRADPT I GMRAL="" S ALLRG=0 Q
 I +($G(DFN))>0,+($G(GMRAL))=0 D ALLAS S ALLRG=0 Q
 I $D(GMRAL)>9 D
 . S I=0 F GMTSCNT=1:1 S I=$O(GMRAL(I)) Q:'I  D
 .. S GMTSTY=$P(GMRAL(I),U,7) Q:GMTSTY']""
 .. S GMTSEACT=$P(GMRAL(I),U,2) Q:GMTSEACT']""
 .. S GMTSMECH=$P($P(GMRAL(I),U,8),";")
 .. S:GMTSMECH']"" GMTSMECH="UNKNOWN"
 .. S GMTSAL(GMTSTY,GMTSMECH,GMTSEACT,GMTSCNT)=I_"^"_GMRAL(I)
 .. S GMTSRC=$P(GMRAL(I),U,10)
 .. S JJ=0 F  S JJ=$O(GMRAL(I,"S",JJ)) Q:'JJ  S GMTSAL(GMTSTY,GMTSMECH,GMTSEACT,GMTSCNT,"S",JJ)=GMRAL(I,"S",JJ) I $D(GMRAL(I,"I",JJ)) S GMTSAL(GMTSTY,GMTSMECH,GMTSEACT,GMTSCNT,"I",JJ)=GMRAL(I,"I",JJ)
 .. S ALLRG=1
 Q
ALLAS ; Allergy Assessment
 N X,GMTSALG1,GMTSALG2,GMTSALG3,GMTSAU S (GMTSALAS,GMTSALAD,GMTSALAW)="" S GMTSALAS="No known allergies"
 S GMTSALAD=$$GET1^DIQ(120.86,+($G(DFN)),3,"I",,"GMTSALG2") S:$D(GMTSALG2) GMTSALAD="" S:+GMTSALAD=0 GMTSALAD=""
 I +GMTSALAD>0 S X=GMTSALAD D REGDT4^GMTSU S GMTSALAD=X
 S GMTSAU=$$GET1^DIQ(120.86,+($G(DFN)),2,"I")
 S GMTSALAW=$$GET1^DIQ(200,(+GMTSAU_","),.01,"E",,"GMTSALG3")
 S GMTSALAT=$$GET1^DIQ(200,(+GMTSAU_","),20.3)
 S:$D(GMTSALG3) (GMTSALAW,GMTSALAT)=""
 Q
AUTOV ; Autoverify
 S GMTSAV=0,GMTSALNM=$P(GMTSAL(II,JJ,KK,L),U),GMTSAFN=$G(^GMR(120.8,GMTSALNM,0))
 I $P(GMTSAFN,U,18)="",$P(GMTSAFN,U,16)=1 S GMTSAV=1
 Q
TITLE ; Print title
 D CKP^GMTSUP Q:$D(GMTSQIT)
 I $D(GMTSPNF) W ?21,TITLE,!
 E  W ?21,"Title: ",TITLE,!
 Q
TEXT ; Setup for print of allergy comments
 W ?31,CD D CKP^GMTSUP Q:$D(GMTSQIT)
 K ^UTILITY($J,"W") S GMTSLN=0 F  S GMTSLN=$O(^GMR(120.8,GMTSALNM,26,CCC,2,GMTSLN)) Q:'GMTSLN  S GMTSPRT=^GMR(120.8,GMTSALNM,26,CCC,2,GMTSLN,0) D FORMAT
 I $D(^UTILITY($J,"W")) F GMTSLN=1:1:^UTILITY($J,"W",DIWL) D LINE Q:$D(GMTSQIT)
 K ^UTILITY($J,"W")
 Q:'GMTSLN
 W ! Q
FORMAT ; Formats each line
 S DIWL=3,DIWR=80,DIWF="C58",X=GMTSPRT D ^DIWP
 Q
LINE ; Writes formatted lines of text
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?15,^UTILITY($J,"W",DIWL,GMTSLN,0)
 Q
SIGBLK(GMTSALF) ; Signature block
 Q:+GMTSALF'>0  N GMTSSB,GMTSST,GMTSSN S GMTSSB=$$GET1^DIQ(200,(+GMTSALF_","),20.2),GMTSST=$$GET1^DIQ(200,(+GMTSALF_","),20.3),GMTSSN=$$GET1^DIQ(200,(+GMTSALF_","),.01)
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !!,?10,"Originator: ",$S(GMTSSB'="":GMTSSB,1:GMTSSN)
 D CKP^GMTSUP Q:$D(GMTSQIT)  W:$L(GMTSST) !,?10,"Title:      ",GMTSST
 Q
INACCK(GMTSALNM) ;CHECK FOR INACTIVE
 N CK,M,INACT,REACT
 S CK=0
 S M=9999999 F  S M=$O(^GMR(120.8,GMTSALNM,9999999.12,M),-1) Q:'+M  D
 .S INACT=$P($G(^GMR(120.8,GMTSALNM,9999999.12,M,0)),U,1)
 .S REACT=$P($G(^GMR(120.8,GMTSALNM,9999999.12,M,0)),U,4)
 .I +INACT&(REACT="") S CK=1
 Q CK
INACTIVE(IIEN) ;IHS/MSC/MGH Display the inactive data as needed
 N X,X1,X2,X3,X4,X5
 S X=$$GET1^DIQ(120.899999912,IIEN,.01),X2=$$GET1^DIQ(120.899999912,IIEN,1),X3=$$GET1^DIQ(120.899999912,IIEN,2)
 S X4=$$GET1^DIQ(120.899999912,IIEN,3),X5=$$GET1^DIQ(120.899999912,IIEN,4)
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?15,"Inactivation: ",X_"( "_X2_" )"
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?20,"Inactivated by: ",X3
 I X4'="" D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?15,"Reactivation: ",X4,?40,"by "_X5
 Q
UNASS(DFN) ;IHS/MSC/MGH Check if patient is unassessable
 N Y,IIEN
 S (GMRAUNDT,GMRAUNRE,GMRAUNFX)=""
 I '$D(^GMR(120.86,DFN,9999999.11)) Q
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?1,"UNASSESSABLE DATA",!
 S Y=0 F  S Y=$O(^GMR(120.86,DFN,9999999.11,Y)) Q:'+Y  D
 .S INIEN=Y_","_DFN
 .S GMRAUNDT=$$GET1^DIQ(120.869999911,INIEN,.01)
 .S GMRAUNRE=$$GET1^DIQ(120.869999911,INIEN,1)
 .S GMRAUNFX=$$GET1^DIQ(120.869999911,INIEN,4)
 .S GMRAUOTH=$$GET1^DIQ(120.869999911,INIEN,5)
 .D PRUN
 Q
PRUN ;IHS/MSC/MGH Print unassessable
 D CKP^GMTSUP Q:$D(GMTSQIT)  W:$L($G(GMRAUNDT)) !,?3,"Unassessable Date: ",GMRAUNDT
 D CKP^GMTSUP Q:$D(GMTSQIT)  W:$L($G(GMRAUNRE)) ?50,"Reason ",GMRAUNRE_" "_GMRAUOTH
 D CKP^GMTSUP Q:$D(GMTSQIT)  W:$L($G(GMRAUNFX)) !,?3,"Resolved: ",GMRAUNFX,!
 Q
CLS ;Drug classes
 N CNT,LP,TITLE
 S CNT=0
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?5,"Drug Classes: "
 S LP=0 F  S LP=$O(RXN("V",LP)) Q:'LP  D
 .S CNT=CNT+1
 .D CKP^GMTSUP Q:$D(GMTSQIT)  W ?25,$P($G(RXN("V",LP)),U,2),!
 Q
ING ;Drug classes
 N CNT,LP,TITLE
 S CNT=0
 D CKP^GMTSUP Q:$D(GMTSQIT)  W !,?5,"Ingredients: "
 S LP=0 F  S LP=$O(RXN("I",LP)) Q:'LP  D
 .S CNT=CNT+1
 .D CKP^GMTSUP Q:$D(GMTSQIT)  W ?25,$P($G(RXN("I",LP)),U,1),!
 Q
DATES ;Get verification data and last edited
 N VER,VBY,VERTX
 S VER=$P(RXN,U,4)
 S VERTX=$S(VER="VERIFIED":"Verified on: ",1:"Not verified")
 D CKP^GMTSUP Q:$D(GMTSQIT)  W ?10,VERTX
 I VER="VERIFIED" D
 .D CKP^GMTSUP Q:$D(GMTSQIT)  W ?25,$$FMTE^XLFDT($P(RXN,U,9)),!
 .D CKP^GMTSUP Q:$D(GMTSQIT)  W ?10,"Verified by: "_$P(RXN,U,8),!
 E  W !
 ;Date last modified
 N LP,MOD,IIEN,X,Y
 S LP=9999999 S LP=$O(^GMR(120.8,ADR,9999999.14,LP),-1) Q:'+LP  D
 .S MOD=$G(^GMR(120.8,ADR,9999999.14,LP,0))
 .S IIEN=LP_","_ADR_","
 .S X=$$GET1^DIQ(120.899999914,IIEN,.01),Y=$$GET1^DIQ(120.899999914,IIEN,.02)
 .S X=X_" by "_Y
 .D CKP^GMTSUP Q:$D(GMTSQIT)  W ?10,"Last Modified: "_X,!
 W !
 Q
