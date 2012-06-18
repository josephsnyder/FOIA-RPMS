AFSLDKG ;IHS/OIRM/DSD/JDM,HJT - GEN TREAS DISKETTE FROM UNIX FILE; [ 10/27/2004   4:21 PM ]
 ;;3.0t1;1166 APPROVALS FOR PAYMENT;**13**;
 ;;MODIFIED FOR CACHE' COMPLIANCE ;ACR*2.1*9
 ;Modified for Y2K Compliance  1/11/99HJT
 ;Generates treasury diskette format file from unix export file
 ;CHANGES PER THL 090397
 S %H=$H
 D YX^%DTC
 S AFSLMMDD=$E(X,4,7)
LISTFLES ;
 ;I $D(AFSLTRFL) G READIN1           ;ACR*2.1*13.06 IM14144
 ;S AFSLEXFN=AFSLFTXN                ;ACR*2.1*13.06 IM14144
 ;S AFSEXFN="/usr/spool/afsdata/"_AFSLEXFN        ;ACR*2.1*13.06 IM14144
 ;G READIN2     ;Never gets to the following lines ;ACR*2.1*13.06 IM14144
 ;D ^XBCLS                           ;ACR*2.1*13.06 IM14144
 ;W !?20,"IHS 1166/APPROVALS FOR PAYMENT SYSTEM",! ;ACR*2.1*13.06 IM14144
 ;W !?10,"1166 AFP FILES AVAILABLE FOR GENERATION OF TREAS DISKETTE",!!;ACR*2.1*13.06 IM14144
 ;S AFSLCMD="cd /usr/spool/afsdata;ls -l afslut* |more";ACR*2.1*13.06 IM14144
 ;D HOSTCMD^AFSLCKZC                        ;ACR*2.1*13.06 IM14144
 N ARMSDIR                                  ;ACR*2.1*13.06 IM14144
 S ARMSDIR=$$ARMSDIR^ACRFSYS(1)             ;ACR*2.1*13.06 IM14144
 I ARMSDIR="" G FINI                        ;ACR*2.1*13.06 IM14144
 I $D(AFSLTRFL) G READIN1
 S AFSLEXFN=AFSLFTXN
 S AFSEXFN=ARMSDIR_AFSLEXFN                 ;ACR*2.1*13.06 IM14144
 G READIN2
READIN1 ;
 S DIR("A")="FILENAME TO USE"
 S DIR(0)="F^11:14"
 D ^DIR
 I X["^"!(X="") G FINI
 I X["?" W !!,"Enter filename (i.e., afsluta.93105)" G READIN1
 S AFSLXPFX=$E(X,1,6)
 I AFSLXPFX'="afslut" D  G READIN1
 .W !!,"FILENAME: ",X,"  IS INVALID FOR THIS OPTION."
 .H 2
 .W *7
 S AFSLEXFN=X
 ;S AFSEXFN="/usr/spool/afsdata/"_X          ;ACR*2.1*13.06 IM14144
 ;I $D(AFSLTRFL)
 S AFSEXFN=ARMSDIR_X                         ;ACR*2.1*13.06 IM14144
READIN2 ;
 S AFSLDEV=IO(0)
 G READIN3
 S %ZIS("A")="Device to List ECS File Contents? "
 D ^%ZIS
 S AFSLDEV=IO
READIN3 ;
 S AFSLSDEV=IO(0)
 I '$D(AFSLTRFL) S AFSLFY=AFSLSFY G READIN4
 S DIR("A")="TREASURY SCHEDULE FY"
 S DIR(0)="N^1000:9999:0"
 U AFSLSDEV
 D ^DIR
 I X["^"!(X="") G FINI
 I X["?" W !!,"Enter the 4 digit fiscal year of Treasury schedule contained in the file" G READIN3
 S AFSLFY=X
READIN4 ;
 I '$D(AFSLTRFL) S AFSLSH11="0000"_AFSLSCHX,AFSLSCDX=AFSLSH11,X=0 G GETLST
 S DIR("A")="TREASURY SCHED#"
 S DIR(0)="F^6:6"
 U AFSLSDEV
 D ^DIR
 I X["^"!(X="") G FINI
 I X["?" W !!,"Enter a 6 character Treasury Schedule#" G READIN4
 S AFSLSH11="0000"_X
 S AFSLSCDX=AFSLSH11
 S X="0"
GETLST ;
 K AFSLTRFL
 ;I '$O(^AFSLDKGL(X)) G DOITX
 S X=$O(^AFSLDKGL(99999999),-1)
 ;G GETLST
DOITX ;
 W !,"PLEASE WAIT.."
 I X="0" S AFSLNXDK="001" G CONT
 S AFSLLSDK=$P(^AFSLDKGL(X,0),U,5)
 I $P(AFSLLSDK,"-",2)=AFSLMMDD S AFSLNXDK=$P(AFSLLSDK,"-",1),AFSLNXDK=AFSLNXDK+1 G CONT
 I $P(AFSLLSDK,"-",2)'=AFSLMMDD S AFSLNXDK=1 G CONT
CONT ;
 S AFSLSYMT=0
 S AFSLNXDK=$E("000",1,3-$L(AFSLNXDK))_AFSLNXDK
 I '$D(AFSLXFLG) D ASKTYP
 I AFSLXFLG'=1&(AFSLXFLG'=2)&(AFSLXFLG'=3) G FINI
 ;I AFSLXFLG,123[AFSLXFLG D                 ; ACR*2.1*13.02 IM13574
 ;.D:AFSLXFLG=1 ^AFSLDKG2                   ; ACR*2.1*13.02 IM13574
 ;.D:AFSLXFLG=2 ^AFSLACH                    ; ACR*2.1*13.02 IM13574
 ;.D:AFSLXFLG=3 ^AFSLACHT                   ; ACR*2.1*13.02 IM13574
 ;.I IO>50,IO<55 D ^%ZISC                   ; ACR*2.1*13.02 IM13574
 K AFSLQFLG
 ;I AFSLXFLG=1 D ^AFSLDKG2 F I=51:1:54 S IO=I D ^%ZISC ;ACR*2.1*13.02 IM13574
 ;I AFSLXFLG=2 D ^AFSLACH F I=51:1:54 S IO=I D ^%ZISC ;ACR*2.1*13.02 IM13574
 ;I AFSLXFLG=3 D ^AFSLACHT F I=51:1:54 S IO=I D ^%ZISC ;ACR*2.1*13.02 IM13574
 I AFSLXFLG=1 D ^AFSLDKG2                       ; ACR*2.1*13.02 IM13574
 I AFSLXFLG=2 D ^AFSLACH                        ; ACR*2.1*13.02 IM13574
 I AFSLXFLG=3 D ^AFSLACHT                       ; ACR*2.1*13.02 IM13574
 D CLOSE^AFSLCK1                                ; ACR*2.1*13.02 IM13574
 I $D(AFSJFLG) K AFSJFLG G FINI
 I $D(AFSLMFLG) G FINI
 S AFSLECSX=AFSLNXDK_"-"_AFSLMMDD
 I $D(AFSLRFLG) D
 .U AFSLSDEV
 .W !,"   *** BUT,"
 .W !,"PAYEE INFORMATION HAS BEEN DELETED OR CHANGED SINCE PAYMENT WAS ENTERED INTO THIS SCHEDULE."
 .W !,"YOU SHOULD EDIT THE PAYMENT AND RE-SELECT THE PAYEE (FIELD# 11) & RE-EXPORT"
 .W !,"THE BATCH/SCHEDULE."
 I $D(AFSLRFLG) D
 .U AFSLSDEV
 .;W !!,"*** I WILL NOW REMOVE FILE: ",AFSLNXDK_"-"_AFSLMMDD,".  PRESS <RETURN/ENTER>" ;ACR*2.1*13.02 IM13574
 .;R AFSLRTNX:300                                ;ACR*2.1*13.02 IM13574
 .;K AFSLRTNX                                    ;ACR*2.1*13.02 IM13574
 .W !!,"*** REMOVING FILE: "_AFSLNXDK_"-"_AFSLMMDD ;ACR*2.1*13.02 IM13574
 .D PAUSE^ACRFWARN                               ;ACR*2.1*13.02 IM13574
 .Q:$D(ACROUT)                                   ;ACR*2.1*13.02 IM13574
 I $D(AFSLRFLG) D
 .;S AFSLCMD="cd /usr/spool/afsdata;rm "_AFSLNXDK_"-"_AFSLMMDD ;ACR*2.1*13.06 IM14144
 .N ARMSDIR                   ;ACR*2.1*13.06 IM14144
 .S ARMSDIR=$$ARMSDIR^ACRFSYS(1) ;ACR*2.1*13.06 IM14144
 .Q:ARMSDIR']""              ;ACR*2.1*13.06 IM14144
 .S AFSLCMD="cd "_ARMSDIR_";rm "_AFSLNXDK_"-"_AFSLMMDD
 .K ARMSDIR
 .D HOSTCMD^AFSLCKZC
 .K AFSLRFLG
FINI ;
 ;F I=51:1:54 S IO=I D ^%ZISC                  ;ACR*2.1*13.02 IM13574
 ;I $D(%DEV) S IO=%DEV D ^%ZISC                ;ACR*2.1*13.02 IM13574
 ;I $D(AFSLKDEV) S IO=AFSLKDEV D ^%ZISC        ;ACR*2.1*13.02 IM13574
 D CLOSE^AFSLCK1                               ;ACR*2.1*13.02 IM13574
 I $D(TSTXX) QUIT
 K %FN,%FO,%IN,%ZA,D,D0,DA,DI,DIC,DIC(0),DIE,DIR,DQ,DR,I,J,K,L,M,X,Y
 K AFSEXFN,AFSLACSY,AFSLASTX,AFSLASTZ,AFSLADD1,AFSLADD2,AFSLADD3,AFSLADD4,AFSLADR1,AFSLADR2,AFSLAID,AFSLALC,AFSLALCC,AFSLALCP,AFSLANAM,AFSLPSSN,AFSLTID,AFSLTNAM,AFSLTNOD,AFSLTSSN,AFSLVSFX
 K AFSLB50,AFSLBFL1,AFSLBFL2,AFSLBFL3,AFSLBFL4,AFSLBFL5,AFSLBLCC,AFSLCMD,AFSLENCD,AFSLEXFN,AFSLFY,AFSLGFLG,AFSLKDEV,AFSLLSDK,AFSLMFLG,AFSLXPFX
 K AFSLMMDD,AFSLNOW,AFSLNXDK,AFSLNXTD,AFSLNZA,AFSLNZC,AFSLPCNT,AFSLPTYP,AFSLRCT,AFSLRCTY,AFSLRECN,AFSLRFC,AFSLSAMT,AFSLSCDX,AFSLSCHD,AFSLSCR,AFSLSDK,AFSLSH11,AFSLSHDR
 K AFSLSICT,AFSLSPAC,AFSLSTRL,AFSLSYMT,AFSLTAMT,AFSLTDEV,AFSLTMXX,AFSLVEIN,AFSLVNAM,AFSLXA,AFSLXC,AFSLXFLG,AFSLXX,AFSLZROS
 K AFSLACT,AFSLAPPN,AFSLASY,AFSLB80,AFSLDAN,AFSLIDN,AFSLNXAN,AFSLNXPN,AFSLNXVX,AFSLPIDL,AFSLPNOT,AFSLPYNM,AFSLRTN,AFSLSDEV,AFSLSKED,AFSLTOT,AFSLVCT,AFSLVID
 F I=1:1:10 K AFSLASY(I),AFSLSAM(I)
 F I=1:1:14 K AFSLPREC(I)
 K I
 QUIT
ASKTYP ;
 K DIR
 S DIR(0)="S^1:ECS (Checks) Format-1;2:ECS (VENDOR ACH) Format;3:ECS (TRAVEL ACH) Format"
 S DIR("A")="VERSION: "
 U AFSLSDEV
 D ^DIR
 I $D(DTOUT)!($D(DIROUT))!($D(DIRUT))!($D(DUOUT)) S X="^"
 S AFSLXFLG=X
 Q
