LRAPLG2 ; IHS/DIR/AAB - LOG-IN DATA FROM FILE #63 3/26/96 19:08 ;
 ;;5.2;LR;**1002**;JUN 01, 1998
 ;;5.2;LAB SERVICE;**72,115**;Sep 27, 1994
 S LRAN=X,LRFND=1 S LRDFN=$O(^LR(LRXREF,LRH(2),LRABV,LRAN,0)) I 'LRDFN G END
 S LRI=$O(^LR(LRXREF,LRH(2),LRABV,LRAN,LRDFN,0)) I '$D(^LR(LRDFN,0))!('LRI&(LRSS'="AU")) G END
 S X=^LR(LRDFN,0),(LRDPF,LRPFN)=$P(X,U,2),DFN=$P(X,U,3) I 'LRPFN!('DFN) G END
 S LRPF=^DIC(LRPFN,0,"GL"),LRP=@(LRPF_DFN_",0)"),SSN=$P(LRP,U,9),LRP=$P(LRP,U) D SSN^LRU
 I LRSS="AU" G:'$D(^LR(LRDFN,"AU")) END S X=^("AU"),LRRC=$P(X,U),LRSVC=$P(X,U,14),(LRCS,LRMD,LRSIT,LRLLOC,LRC(5))="",DA=LRDFN D D^LRAUAW S LRSD=LR(63,12)
 I LRSS'="AU" G:'$D(^LR(LRDFN,LRSS,LRI,0)) END S X=^(0),LRSD=$P(X,U),LRRC=$P(X,U,10),LRMD=$P(X,U,7),LRSIT=$P(X,U,5),LRCS=$P(X,U,11),LRLLOC=$P(X,U,8),LRC(5)=""
 S Y=LRRC D D^LRU
 ;W $C(7),!!,"Accession # ",LRAN," for ",LRH(0),!,"In ",$P(LRAA(1)," ",1)," file but not in Accession file.",!,"Entry: ",LRP," ID: ",SSN,"  Dated: ",Y,!,"Enter in Accession file " S %=2 D YN^LRU
 W $C(7),!!,"Accession # ",LRAN," for ",LRH(0),!,"In ",$P(LRAA(1)," ",1)," file but not in Accession file.",!,"Entry: ",LRP," ID: ",HRCN,"  Dated: ",Y,!,"Enter in Accession file " S %=2 D YN^LRU  ;IHS/OIRM TUC/AAB 10/08/97
 I %'=1 D END^LRAPLG1 Q
 I '$D(LRTS) S LRTS=""
 L +^LRO(68,LRAA) S ^LRO(68,LRAA,1,LRAD,1,LRAN,0)=LRDFN_"^^"_LRRC_"^^^^"_LRLLOC_"^"_LRMD(1)_"^"_LRSVC_"^"_DUZ,^(3)=LRSD_"^^^^"_LRI_"^"_LRC(5)
 S ^LRO(68,LRAA,1,LRAD,1,0)=$P(^LRO(68,LRAA,1,LRAD,1,0),"^",1,2)_"^"_LRAN_"^"_($P(^(0),"^",4)+1),^LRO(68,LRAA,1,"AC",DUZ(2),LRAD,LRAN)="" L -^LRO(68,LRAA) K LRSD
 S:LRRC ^LRO(68,LRAA,1,LRAD,1,"E",LRRC,LRAN)=""
 I "AUCYEMSP"'[LRSS S ^LRO(68,LRAA,1,LRAD,1,LRAN,5,0)="^68.05PA^1^1",^LRO(68,LRAA,1,LRAD,1,LRAN,5,1,0)=LRSIT_"^"_LRCS
 Q
 Q
END K ^LR(LRXREF,LRH(2),LRABV,LRAN) W $C(7),!!,"Sorry, try again",!! D END^LRAPLG1 Q
