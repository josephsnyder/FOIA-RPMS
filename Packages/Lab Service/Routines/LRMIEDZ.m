LRMIEDZ ;AVAMC/REG/SLC/CJS/BA - MICROBIOLOGY EDIT ROUTINE ;2/25/03  22:20
 ;;5.2;LAB SERVICE;**1030**;NOV 01, 1997
 ;;5.2;LAB SERVICE;**295**;Sep 27, 1994;Build 5
 ;from LRVR and option LRMIEDZ
BEGIN S LREND=0,LRACC="",LRSS="MI",LRVT="RE" D ^LRPARAM,DATE
END ;from LRFAST,LRVER
 I $D(LRCSQ),$O(^XTMP("LRCAP",LRCSQ,DUZ,0)) D STD^LRCAPV
ANN D:$P(LRPARAM,U,14) ANN^LRCAPV ; Force workload program
 K DD,DR,GLB,LRCAPMS,LRCDEF,LRCDEF0,LRCNT,LRCODE,LRCODEN,LRCSQ,LRCY,LRP,LRPN,LRQC,LRSSC,LRSSCX,LRSTD,LRT,LRTIME,NODE,NODE0,ZTSK
 K %,A6,AGE,C,D,D0,D1,DA,DFN,DIC,DIE,DLAYGO,DOB,DTOUT,DUOUT,DX,I,II,J,K,LRAA,LRACC,LRAD,LRANOK,LRBG0,LRBUG,LRCAPOK,LRCDT,LRDFN,LRDPF,LREAL,LREND,LRFIFO,LRI,LRIDT,LRLLOC,LRMIDEF,LRMIOTH,LRNB,LRODA,LRODIE,LRVT
 K LRODT,LRPTP,LRSAME,LRSB,LRSCREEN,LRSN,LRSPEC,LRSS,LRTEC,LRTS,LRTX,LRUNDO,LRWRD,N,PNM,POP,S,SEX,SSN,X,Y,Z
 K HRCN  ; IHS/OIT/MKK -- LR*5.2*1030
 Q
DATE D ^LRMIU4 Q:LRAA<1  D:$P(LRPARAM,U,14) ^LRCAPV G:LREND ANN
 S DIC=60,DIC("S")="I $P(^(0),U,4)=""MI""",DIC(0)="AEMOQ",DIC("A")="Select TEST/PROCEDURE: " D ^DIC K DIC Q:$D(DUOUT)  S LRPTP=+Y
 I Y<1 W !,"None Preselected",!,"Accession # ",LRAN
 S LRMIDEF=$P(^LAB(69.9,1,1),U,10),LRMIOTH=$P(^(1),U,11) D ^LRMIEDZ2
 Q
UNDO ;from LRMIEDZ2
 ;W:'$P(^LR(LRDFN,"MI",LRIDT,0),U,9) !,"Report is changed to 'AMENDED'",!
 S $P(^LR(LRDFN,"MI",LRIDT,0),U,9)=1,$P(^(0),U,3,4)=U,$P(^LRO(68,LRAA,1,LRAD,1,LRAN,3),U,4)="",$P(^LRO(68,LRAA,1,LRAD,1,+LRAN,4,LRTS,0),U,4,5)=DUZ_U_DT,^LRO(68,LRAA,1,LRAD,1,"AD",DT,+LRAN)="",^LRO(68,LRAA,1,LRAD,1,"AC",DT,+LRAN)=""
 ; D UPDATE^LRPXRM(LRDFN,"MI",LRIDT)   ; IHS/OIT/MKK - LR*5.2*1030 - RPMS Does NOT use Clinical Reminders
 Q
