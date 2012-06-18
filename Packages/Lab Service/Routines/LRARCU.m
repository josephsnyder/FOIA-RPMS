LRARCU ; IHS/DIR/AAB - LAB ARCHIVED CAP UTILITIES ; [ 5/22/95 ]
 ;;5.2;LR;**1002**;JUN 01, 1998
 ;;5.2;LAB SERVICE;**59**;Aug 31, 1995
 ;same as LRCAPU except archived wkld file
WKLDNAME(LRCC) ;Call with CAP code or IFN, returns WKLD proc name.
 ;Sets these vars:
 ;  LRCAPNAM=WKLD proc name
 ;  LRCAPFLG=Reportable flag
 ;  LRCAPNUM=the WKLD code #
 ;  LRCAPIFN=IFN of the WKLD entry
 ;The caller must kill these when done.
 ;Called by: LRARCAM5,LRARCMA1,LRARCML1,LRARCMR1,LRARCPTS,LRARCR2
 ;Called by:
 ;
 N LRNOD,LRNAM
 S LRNAM="*ERROR* CAN'T FIND WKLD CODE:  "_LRCC
 S LRCAPFLG=-1,(LRCAPNAM,LRCAPNUM,LRCAPIFN)=""
 Q:'$L($G(LRCC)) LRNAM
 I LRCC["." S LRCC=$O(^LAM("C",LRCC_" ",0)) Q:'LRCC LRNAM
 S LRNOD=$G(^LAM(LRCC,0)) Q:'$L(LRNOD) LRNAM
 S (LRCAPNAM,LRNAM)=$E($P(LRNOD,U),1,63),LRCAPNUM=$P(LRNOD,U,2)
 S LRCAPFLG=+$P(LRNOD,U,5),LRCAPIFN=LRCC
 S:LRCAPFLG (LRCAPNAM,LRNAM)="+"_LRCAPNAM
 Q LRNAM
WKLDCODE(LRCC) ;Call with WKLD proc name, returns WKLD code #.
 ;Sets these vars:
 ;  LRCAPNUM=the WKLD code #
 ;  LRCAPIFN=the IFN of the WKLD entry
 ;Called by: LRARCMA1,LRARCML1,LRARCPTS
 ;Called by:
 ;
 N LRNOD
 S (LRCAPNUM,LRCAPIFN)=""
 Q:'$L($G(LRCC)) LRCAPNUM
 S LRCAPIFN=$O(^LAM("B",LRCC,0)) Q:'LRCAPIFN LRCAPNUM
 S LRNOD=$G(^LAM(LRCAPIFN,0)) Q:'$L(LRNOD) LRCAPNUM
 S LRCAPNUM=$P(LRNOD,U,2)
 Q LRCAPNUM
WKLDCLN ;Kill WKLD vars
 ;CALLED BY: LRARCML/LRARCR4/LRARCMA
 K LRCAPIFN,LRCAPNAM,LRCAPNUM,LRCAPFLG
 Q
KILLALL ;Kill all variables used by archived wkld report routines
 K %,%DT,%ZIS,A,D0,DA,DIC,DIE,DIR,DIROUT,DIRUT,DR,DTOUT,DUOUT,DX,DY,I,IX
 K J,K,LR,LRAA,LRAACK,LRAANO,LRAAX,LRACCREC,LRACNT,LRAD,LRAGT,LRAN
 K LRANS,LRAPICGT,LRAPIGT,LRAPIGTU,LRAPIIGT,LRAPINGT,LRAPIOGT,LRAPSUB
 K LRARY,LRAST,LRBLDONE,LRBS,LRCAP,LRCAPAM5,LRCAPFLG,LRCAPIFN,LRCAPN
 K LRCAPNAM,LRCAPNUM,LRCAPS,LRCAPSUB,LRCAPT,LRCAPTOT,LRCC,LRCCN,LRCCNT
 K LRCCNX,LRCCX,LRCCZ,LRCDR,LRCDT,LRCDTB,LRCDTE,LRCDTN,LRCGT,LRCLHDR,LRCLHDR2,LRCLHDR3
 K LRCM,LRCNT,LRCNTL,LRCODE,LRCODSTR,LRCOL,LRCOM,LRCOMM,LRCONT,LRCP
 K LRCPICGT,LRCPIGT,LRCPIGTU,LRCPIIGT,LRCPINGT,LRCPIOGT,LRCPN,LRCPSUB,LRCPSX
 K LRCPT,LRCST,LRCTL,LRCTM,LRCTMB,LRCTME,LRCTMN,LRCTSX,LRCW,LRDA,LRDAT
 K LRDATD,LRDATE,LRDATX,LRDCN,LRDOT,LRDSH,LRDSHS,LRDT,LRDT1,LRDT2,LRDTH,LRDTYP
 K LRDUMMY,LREDT,LREND,LRERR,LRFIL,LRFILE,LRFIRST,LRFL,LRFLG,LRFR,LRFRD,LRFRV
 K LRGCN,LRGETIN,LRGMANL,LRGQC,LRGRPT,LRGSTND,LRGT,LRGTOT,LRGTOTS,LRGTREC,LRGTU
 K LRHD0,LRHDR,LRHDR2,LRHDR3,LRDHRFIT,LRHDRLEN,LRIAGT,LRICGT,LRICNT,LRICS
 K LRIFN,LRIGT,LRIGTU,LRIIGT,LRIN,LRINGT,LRINN,LRINST,LRIOGT,LRIOPAT,LRIPOT
 K LRIST,LRLAB,LRLARE,LRLC,LRLDIV,LRLINE,LRLMAC,LRLOC,LRLOOP,LRLSS,LRLSSA
 K LRLSSN,LRLTYP,LRMA,LRMAA,LRMAC,LRMACN,LRMAN,LRMANL,LRMCT,LRMII,LRMIO,LRMIPER
 K LRMNODE,LRMT,LRMTP,LRN,LRN1,LRN2,LRNAM,LRNCNT,LRNDFN,LRNGT,LRNOD,LRNODE
 K LRNPOT,LRNST,LRNT,LRNX,LRNX5,LRNX5D,LROCNT,LROGT,LROPOT,LROSOT,LROST
 K LROTHER,LRPAG,LRPAGE,LRPATOK,LRPG,LRPRD,LRPTF,LRPTR,LRPTYP,LRQC,LRRCNT
 K LRREC,LRREC2,LRREC3,LRREP,LRRPT,LRRPTM,LRRTYP,LRSB,LRSDT,LRSITE,LRSITNUM,LRSITSEL,LRSKIP,LRSOOT
 K LRSOT,LRSOT1,LRSP,LRSPEC,LRSQRM,LRST,LRSTAT,LRSTCS,LRSTD,LRSTND,LRSTR
 K LRSTRS,LRSTU,LRSTY,LRSUBF,LRSUBH,LRSUBH1,LRSUM,LRSUMM,LRSV,LRTC,LRTEST
 K LRTESTCP,LRTITLE,LRTMTOT,LRTO,LRTOD,LRTOST,LRTOT,LRTOT1,LRTOV,LRTRE
 K LRTRE1,LRTRE1T,LRTREAT,LRTREATN,LRTRET,LRTRN,LRTS,LRTSN,LRTST,LRTSTOT
 K LRTSTS,LRTYCSP,LRTYP,LRUC,LRURG,LRURGCNT,LRURGNAM,LRUW,LRUWSP
 K LRVD,LRVERD,LRWC,LRX,LRX1,LRX2,LRX4,LRXX1,LRXX2,LRZTSK,N,N0,NODE,POP,X,Y,Y1,Y2
 K ZTDESC,ZTIO,ZTQUEUED,ZTREQ,ZTRTN,ZTSAVE,ZTSK
 Q
DIS ;Display Accession workload  called by LRCAPVM
 N DA,DIC,D0,DIE,DX,DR,IX,LRICS,X,LREND
 S DR=0,DA(1)=0,DA(2)=LRAN,DA(3)=LRAD,DA(4)=LRAA,LRICS="^LRO(68,"_DA(4)_",1,"_DA(3)_",1,"_DA(2)_",4," W @IOF
 S IX=0 F  S IX=$O(LRTS(IX)) Q:IX<1!($G(LREND))  D
 . S DA(1)=IX,DIC=LRICS_DA(1)_",1," S X=$G(^LAB(60,DA(1),0)) I $L(X) W !,$P(X,U),! S DA=0 D
 . .F  S DA=$O(@(DIC_DA_")")) Q:DA<1!($G(LREND))  D EN^DIQ I $E(IOST,1,2)="C-"&($Y>16) D PAUSE W:'$G(LREND) @IOF
 Q
PRTINIT ;
 S (LRDSHS,LRSTRS)=""
 S $P(LRDSHS,"-",IOM)="-"
 S $P(LRSTRS,"*",IOM)="*"
 S LRPAG=0
 Q
PRTCLN ;
 K LRHDR,LRHDR2,LRHDR3,LRCLHDR,LRCLHDR2,LRCLHDR3,LRDSHS,LRSTRS,LRPAG
 Q
NPG ;New page
 D:$E(IOST,1,2)="C-" PAUSE
 Q:LREND
 W @IOF
 D HDR
 Q
HDR ;Header for 80 col.
 S LRPAG=LRPAG+1
 W:$D(LRHDR)#2 !?((80-$L(LRHDR))/2),LRHDR,?72,"Page ",$J(LRPAG,3),!
 W:$D(LRHDR2)#2 ?((80-$L(LRHDR2))/2),LRHDR2,!
 W:$D(LRHDR3)#2 ?((80-$L(LRHDR3))/2),LRHDR3,!
 W:$D(LRCLHDR)#2 !,LRCLHDR,!
 W:$D(LRCLHDR2)#2 LRCLHDR2,!
 W:$D(LRCLHDR3)#2 LRCLHDR3,!
 W $E(LRDSHS,1,80),!
 Q
PAUSE ;
 K DIR S DIR(0)="E" D ^DIR
 S:($D(DTOUT))!($D(DUOUT)) LREND=1
 Q
