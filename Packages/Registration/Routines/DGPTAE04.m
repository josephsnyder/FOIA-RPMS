DGPTAE04 ;ALB/MTC - 401 Edit Checks Cont ; 13 NOV 92
 ;;5.3;Registration;;Aug 13, 1993
 ;
TRAN ;-- verify transplant status
 I " 12"'[DGPT40PT S DGPTERC=417
 Q
 ;
CHIEF ;
 N FLAG,I
 Q:"VMN"[DGPTSCS
 I "1234567"'[DGPTSCS S DGPTERC=407 Q
 S FLAG=1 F I=10,11,30,40,42 I DGPTSTTY["^"_I_"^" S FLAG=0 Q
 S:FLAG DGPTERC=407
 Q
FAST ;
 N FLAG,I
 Q:DGPTSFA=" "
 S FLAG=0 F I=20:1:26 I DGPTSTTY["^"_I_"^" S FLAG=1,DGPTSFA=" " Q
 I FLAG Q
 I "12345678"'[DGPTSFA S DGPTERC=408 Q
 Q
ANES ;
 N FLAG,I
 Q:DGPTSAT=" "
 S FLAG=0 F I=20:1:26 I DGPTSTTY["^"_I_"^" S FLAG=1,DGPTSAT=" " Q
 I FLAG Q
 I "0123456789RX"'[DGPTSAT S DGPTERC=409 Q
 S DGPTERC=409 F I=10,11,30,40,42 I DGPTSTTY["^"_I_"^" S DGPTERC=0 Q
 Q
 ;
FIRST ;-- Edit surgeries - present in ICD0 OPERATIONS, current, gender ok
 ;
 I (+DGPTSO1=1371)!(+DGPTSO1=39610)!(+DGPTSO1=39611)!(+DGPTSO1=39612) S DGPTERC=450 D ERR G:DGPTEDFL EXIT
LOOP ;
 F DGPTL3=1:1:5 S DGPTERC=0 D CHKOPC I DGPTERC D ERR G:DGPTEDFL EXIT
 Q
CHKOPC ;
 S DGPTOC=(@("DGPTSO"_DGPTL3)),DGPTOC=$P(DGPTOC," ",1) Q:DGPTOC=""
 S DGPTERC=410+DGPTL3
 S DGPTOC=$E(DGPTOC_"       ",1,2)_"."_$E(DGPTOC,3,7)
 I $D(^ICD0("AB",DGPTOC)) S DGPTERC=0 D GEN Q
 Q
GEN ;
 S DGPTOPP=$O(^ICD0("AB",DGPTOC,0)) I DGPTOPP="" S DGPTERC=451 Q
 I '$D(^ICD0(DGPTOPP,0)) S DGPTERC=451 Q
 I $P(^ICD0(DGPTOPP,0),U,10)]""&(DGPTGEN'=$P(^(0),U,10)) S DGPTERC=451 Q
CURR ;
 I ($P(^ICD0(DGPTOPP,0),U,9)=1)&($P(DGPTSDD,1,7)>$P(^(0),U,11)) S DGPTERC=474+DGPTL3 Q
SAVE ;
 S @("DGPTSO"_DGPTL3)=DGPTOC
ARRAY ;
 S DGPTOPAR(DGPTSDD)=$S($D(DGPTOPAR(DGPTSDD)):DGPTOPAR(DGPTSDD)_U_DGPTOPP,1:DGPTOPP_U)
 Q
EXIT ;
 K DGPTL3,DGPTOC,DGPTOC1,DGPTOPP
 Q
ERR ;
 D WRTERR^DGPTAE(DGPTERC,NODE,SEQ)
 Q
