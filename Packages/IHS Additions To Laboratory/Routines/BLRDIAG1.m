BLRDIAG1 ;IHS/ITSC/TPF - DELETE TEST FROM ACCESSION WHEN EXITING SIGN SYMPTOM PROMPT
 ;;5.2T9;LR;**1018**;Nov 17, 2004
 ;;5.2;LR;**1015**;Nov 18, 2002
 ;
TESTDEL ;EP ;IHS/ITSC/TPF 01/03/2003 FOR LAB POV
 N II S LRI=0 F  S LRI=$O(^LRO(69,LRODT,1,LRSN,2,LRI)) Q:LRI<1  I LRTSTS=+^(LRI,0) S II(LRTSTS)="" D NEW^LR7OB1(LRODT,LRSN,$S($G(LRMSTATI)=""!($G(LRMSTATI)=1):"OC",1:"SC"),$G(LRNATURE),.II,$G(LRMSTATI)) D
 . I $$VER^LR7OU1<3 S ORIFN=$P(^LRO(69,LRODT,1,LRSN,2,LRI,0),U,7) I ORIFN D DC^LRCENDE1
 . S $P(^LRO(69,LRODT,1,LRSN,2,LRI,0),"^",3,6)="^^^",$P(^(0),"^",9,11)="CA^L^"_DUZ
 . S X=1+$S($D(^LRO(69,LRODT,1,LRSN,2,LRI,1,0)):$P(^(0),"^",3),1:0),^(0)="^^"_X_"^"_DT,^(X,0)=LRCCOM
 K ORIFN,ORSTS S I=0 F  S I=$O(^LRO(68,LRAA,1,LRAD,1,LRAN,4,LRTSTS,1,I)) Q:I<1  S X=+^(I,0) K ^LRO(68,LRAA,1,LRAD,1,LRAN,4,"AB",X,LRTSTS,I) K:LROWDT&(LROWDT'=LRAD) ^LRO(68,LRAA,1,LROWDT,1,LRAN,4,"AB",X,LRTSTS,I)
 S LRSB=$P(^LAB(60,LRTSTS,0),U,5) I $L(LRSB) S LRSB=$P(LRSB,";",2) K ^LR(LRDFN,"CH",LRIDT,LRSB)
 K ^LRO(68,LRAA,1,LRAD,1,LRAN,4,LRTSTS),^LRO(68,LRAA,1,LRAD,1,LRAN,4,"B",LRTSTS) K:LROWDT&(LROWDT'=LRAD) ^LRO(68,LRAA,1,LROWDT,1,LRAN,4,LRTSTS),^LRO(68,LRAA,1,LROWDT,1,LRAN,4,"B",LRTSTS) W !?5,LRTNM," DELETED"
 ;
 ;The following lines added per appendix A of RPMS Lab E-Sig Enhancement V 5.2 Technical manual IHS/HQW/SCR - 8/23/01 
 S LRSS=$P($G(^LRO(68,LRAA,0)),U,2)
 I $$ADDON^BLRUTIL("LR*5.2*1013","BLRALAF",DUZ(2)) D ^BLRALAF
 ;
 ;D:BLRLOG ^BLRSLTL("M","D",$G(BLROPT))   ;IHS/OIRM TUC/AAB 11/14/96
 D:BLRLOG ^BLREVTQ("M","D",$G(BLROPT),,LRAA_","_LRAD_","_LRAN)
FX3 ;I $O(^LRO(68,LRAA,1,LRAD,1,LRAN,4,0))<1,'$P(^LRO(68,LRAA,1,LRAD,1,LRAN,3),U,4) K ^LR(LRDFN,LRSS,LRIDT,99) G FX4
 ;S $P(^LRO(68,LRAA,1,LRAD,1,LRAN,4,0),U,3)=$O(^("B",0))
 L -^LR(LRDFN,LRSS,LRIDT) L -^LRO(68,LRAA,1,LRAD,1,LRAN)
 ;G FX1
FX4 ;W !,"No tests left, remove accession" S %=1 D YN^DICN W:%=0 !,"Answer 'Y' or 'N'" G:%=0 FX3 I %=1 D SKPLR^LRCENDE1 D  L -^LR(LRDFN,LRSS,LRIDT) L -^LRO(68,LRAA,1,LRAD,1,LRAN) G FIX
 ;I $D(^LR(LRDFN,LRSS,LRIDT,0)),'$P(^(0),U,3) K ^LR(LRDFN,LRSS,LRIDT)
 I $D(^LR(LRDFN,LRSS,LRIDT,0)),'$P(^(0),U,3) D
 .;
 .;The following lines added per appendix A of RPMS Lab E-Sig Enhancement V 5.2 Technical manual IHS/HQW/SCR - 8/23/01
 .;PRIOR TO DELETING ENTIRE RECORD, IF ELECTRONIC SIGNATURE PLUG-IN  
 .;EXISTS THEN KILL THE CROSS-REFERENCE
 .S BLRADATA=$G(^LR(LRDFN,LRSS,LRIDT,9009027))
 .S BLRARFL=+$P(BLRADATA,U),BLRARPHY=$P(BLRADATA,U,2)
 .I $$ADDON^BLRUTIL("LR*5.2*1013","BLRALAF",DUZ(2)) D KX^BLRALUT1
 .K BLRADATA,BLRARFL,BLRARPHY  ;IHS/ITSC/TPF 12/04/01 PREVIOUS LINES ADDED FOR E-SIG
 .K ^LR(LRDFN,LRSS,LRIDT)
 ;
 S $P(^LRO(68,LRAA,1,LRAD,1,LRAN,4,0),U,3)="",$P(^(0),U,4)=0
 Q