BLRALBM3 ;DAOU/ALA-Build Micro Results - AFM, FUNGUS  [ 11/18/2002  1:34 PM ]
 ;;5.2;LR;**1013,1015**;NOV 18, 2002
 ;
 ;
 ;
TB ;EP
 I '$L($P($G(^LR(LRDFN,"MI",LRIDT,11)),U)) Q:'$D(LRWRDVEW)  Q:LRSB'=11
 NEW BLRAMIC
 S BLRAMIC=$G(^LR(LRDFN,"MI",LRIDT,11))
 S LRTUS=$P(BLRAMIC,U,2),DZ=$P(BLRAMIC,U,5)
 S LRAFS=$P(BLRAMIC,U,3),LRAMT=$P(BLRAMIC,U,4),Y=$P(BLRAMIC,U) D D^LRU
 S BLRAZ="* MYCOBACTERIOLOGY "_$S(LRTUS="F":"FINAL",LRTUS="P":"PRELIMINARY",1:"")_" REPORT => "_Y_"   TECH CODE: "_DZ
 S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=BLRAZ
 S LRPRE=23 D PRE^BLRALBM1
 K LRTA I $D(^LR(LRDFN,"MI",LRIDT,12,0)),$P(^(0),U,4)>0 S LRTA=0
 D:LRAFS'=""!($D(LRTA)) AFS
 I $D(^LR(LRDFN,"MI",LRIDT,13,0)),$P(^(0),U,4)>0 D
 . S BLRAZ="Mycobacteriology Remark(s):" S B=0
 . F  S B=+$O(^LR(LRDFN,"MI",LRIDT,13,B)) Q:B<1  D
 .. S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=$E(BLRABLKS,1,3)_$G(^LR(LRDFN,"MI",LRIDT,13,B,0))
 Q
 ;
AFS I LRAFS'="" D
 . S BLRAZ=$S(LRAFS["D":"Direct",LRAFS["C":"Concentrate",1:"")_" Acid Fast Stain:  "_$S(LRAFS["P":"Positive",LRAFS["N":"Negative",1:LRAFS)
 . S BLRAZ=BLRAZ_"   "
 . S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=BLRAZ
 . I $L(LRAMT) S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=$E(BLRABLKS,1,3)_"Quantity: "_LRAMT
 K ^TMP("LR",$J,"T"),LRTSTS
 I $D(LRTA) D
 . S LRTSTS=0 F A=0:1 S LRTA=+$O(^LR(LRDFN,"MI",LRIDT,12,LRTA)) Q:LRTA<1  D
 .. S BLRAAFS=$G(^LR(LRDFN,"MI",LRIDT,12,LRTA,0))
 .. S (LRBUG(LRTA),LRTBC)=$P(BLRAAFS,U),LRQU=$P(BLRAAFS,U,2)
 .. S LRTBC=$P($G(^LAB(61.2,LRTBC,0)),U) D LIST
 Q
 ;
LIST S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)="Mycobacterium: "_LRTBC
 I $L(LRQU) S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=$E(BLRABLKS,1,3)_"Quantity: "_LRQU
 S:$D(^LR(LRDFN,"MI",LRIDT,12,LRTA,2)) LRTSTS=LRTSTS+1
 I $D(^LR(LRDFN,"MI",LRIDT,12,LRTA,1,0)) D
 . S BLRAZ="   Comment: "
 . S B=0 F  S B=+$O(^LR(LRDFN,"MI",LRIDT,12,LRTA,1,B)) Q:B<1  D
 .. S BLRAZ=BLRAZ_$G(^LR(LRDFN,"MI",LRIDT,12,LRTA,1,B,0))
 .. S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=BLRAZ,BLRAZ=""
 ;
SEN S LRTB=2 F  S LRTB=+$O(^LR(LRDFN,"MI",LRIDT,12,LRTA,LRTB)) Q:LRTB'["2."!(LRTB="")  D
 . S LRTBA=$O(^DD(63.39,"GL",LRTB,1,0)),LRTBA=$P($G(^DD(63.39,LRTBA,0)),U)
 . S LRTBS=$G(^LR(LRDFN,"MI",LRIDT,12,LRTA,LRTB))
 . S BLRAZ=LRTBA,BLRAZ1=20 D Z1 S BLRAZ=BLRAZ_LRTBS
 . S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=BLRAZ
 K LRTB,LRTBA,LRTBS
 Q
 ;
FUNG ;EP
 I '$L($P($G(^LR(LRDFN,"MI",LRIDT,8)),U)) Q:'$D(LRWRDVEW)  Q:LRSB'=8
 NEW BLRAMIC
 S BLRAMIC=$G(^LR(LRDFN,"MI",LRIDT,8))
 S LRTUS=$P(BLRAMIC,U,2),DZ=$P(BLRAMIC,U,3),Y=$P(BLRAMIC,U) D D^LRU
 S BLRAZ="* MYCOLOGY "_$S(LRTUS="F":"FINAL",LRTUS="P":"PRELIMINARY",1:"")_" REPORT => "_Y_"   TECH CODE: "_DZ
 S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=BLRAZ
 S LRPRE=22 D PRE^BLRALBM1
 I $D(^LR(LRDFN,"MI",LRIDT,15)) D
 . S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)="MYCOLOGY SMEAR/PREP:"
 . S LRMYC=0 F  S LRMYC=+$O(^LR(LRDFN,"MI",LRIDT,15,LRMYC)) Q:LRMYC<1  D
 .. S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=$G(^LR(LRDFN,"MI",LRIDT,15,LRMYC,0))
 I $D(^LR(LRDFN,"MI",LRIDT,9,0)),$P(^(0),U,4)>0 D
 . S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)="Fungus/Yeast: " D SHOW
 I $D(^LR(LRDFN,"MI",LRIDT,10,0)),$P(^(0),U,4)>0 D
 . S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)="Mycology Remark(s):"
 . S LRMYC=0 F  S LRMYC=+$O(^LR(LRDFN,"MI",LRIDT,10,LRMYC)) Q:LRMYC<1  D
 .. S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=$E(BLRABLKS,1,3)_$G(^LR(LRDFN,"MI",LRIDT,10,LRMYC,0))
 Q
 ;
SHOW S LRTA=0 F  S LRTA=+$O(^LR(LRDFN,"MI",LRIDT,9,LRTA)) Q:LRTA<1  D
 . S BLRABUG=$G(^LR(LRDFN,"MI",LRIDT,9,LRTA,0))
 . S (LRBUG(LRTA),LRTBC)=$P(BLRABUG,U),LRQU=$P(BLRABUG,U,2)
 . S LRTBC=$P($G(^LAB(61.2,LRTBC,0)),U) D LIST1
 Q
 ;
LIST1 S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=LRTBC
 I $L(LRQU) S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=$E(BLRABLKS,1,3)_"Quantity: "_LRQU
 I $D(^LR(LRDFN,"MI",LRIDT,9,LRTA,1,0)) D
 . S BLRAZ="   Comment:"
 . S B=0 F  S B=+$O(^LR(LRDFN,"MI",LRIDT,9,LRTA,1,B)) Q:B<1  D
 .. S BLRAZ=BLRAZ,BLRAZ1=13 D Z1
 .. S BLRAZ=BLRAZ_$G(^LR(LRDFN,"MI",LRIDT,9,LRTA,1,B,0))
 .. S BLRADSP=BLRADSP+1,^TMP($J,"BLRA",BLRADSP,0)=BLRAZ,BLRAZ=""
 Q
 ;
Z1 ;  Pad with trailing spaces
 F BLRAI=1:1:(BLRAZ1-$L(BLRAZ)) S BLRAZ=BLRAZ_" "
 Q
