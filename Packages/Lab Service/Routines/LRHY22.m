LRHY22 ;VA/DALOI/HOAK - HOWDY DEL A DUPLICATE TEST ; 13-Aug-2013 09:16 ; MKK
 ;;5.2;LAB SERVICE;**405,1033**;NOV 01, 1997
 ;
EN1 S LREND=0,LRSN=+LRT(LRJ),LRTSTI=+$P(LRT(LRJ),U,2),LRTSTS=+$P(LRT(LRJ),U,3)
 N LRODT
 S LRODT=LR3DTN
 I '$D(^LRO(69,LRODT,1,LRSN,2,LRTSTI,0))#2 W !,"Does not exist ",! Q
 S LRX=^LRO(69,LRODT,1,LRSN,2,LRTSTI,0),LRAD=+$P(LRX,U,3),LRAA=+$P(LRX,U,4),LRAN=+$P(LRX,U,5),LRNOP=0,LRONE="",LRACC=0,ORIFN=$P(LRX,U,7)
 S LRSS=$P($G(^LRO(68,LRAA,0)),U,2)
 S LRTNM=$P($G(^LAB(60,LRTSTS,0)),U)
 S LRNATURE="LAB"
 I '$L($G(LRNATURE)) D DC^LROR6() I $G(LRNATURE)=-1 W !!,$C(7),"NOTHING CHANGED" Q
 S LRIDT=+$P($G(^LRO(68,LRAA,1,LRAD,1,LRAN,3)),U,5)
 I LRIDT L +^LR(LRDFN,LRSS,LRIDT):$G(DILOCKTM,3) I '$T W !?5,"Someone else is editing this entry",! S LREND=1 Q
 Q:$G(LRSS)["MI"
 D SET^LRHYDEL I LRIDT L -^LR(LRDFN,LRSS,LRIDT)
 I $G(LRORD) L -^LRO(69,"C",+LRORD)
 ;
 Q
END K %,AGE,DFN,DIC,DIE,DOB,DQ,DR,J,LRAA,LRACC,LRACN0,LRAD,LRAN,LRCL,LRHYCT,LRCOL,LRDOC,LRDPF,LRDTM,LREND,LRIDT
 K LRNOW,LRLL,LRLLOC,LRNOP,LROD0,LROD1,LROD3,LRODT,LROOS,LRORD,LROS,LROSD,LROT,LROV,LRROD
 K LRSCNXB,LRSN,LRSPEC,LRSS,LRTC,LRTP,LRTSTS,LRT,LRTT,LRURG,LRUSI,LRUSNM,LRWRD,PNM,SEX,SSN,T,X,X1,X2,X3,X4,Y,Z,LRNATURE,ORIFN
 K LRACN,LRJ,LRTSTI
 Q
