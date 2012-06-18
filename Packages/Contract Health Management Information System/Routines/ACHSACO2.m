ACHSACO2 ; IHS/ITSC/TPF/PMF - AREA CONSOLIDATION (3/3) PLACE ENTRY INTO THE CHS AO PROCESSING LOG ;JUL 10, 2008
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**13,14,19**;JUN 11,2001
 ;ACHS*3.1*13 6.14.2007 IHS/OIT/FCJ ADDED "U" TYPE RECORDS AND MOFIFIED DISPLAY ON TOTALS
 ;ACHS*3.1*14 9.12.2007 IHS/OIT/FCJ FX SETTING FI "AA" RECORD
 ;
END ;EP.
 U IO(0)
 W !!?10,"T Y P E   O F   D A T A",?45,"# TRANSFERRED",!!
 S ACHSOK=1,ACHSTOTL=0
 F ACHSY=2:1:7,"U" D  ;ACHS*3.1*13 IHS/OIT/FCJ ADDED "U" TYPE RECORD 
 .S ACHSTOTL=ACHSTOTL+ACHSTOTL(ACHSY)
 .I ACHSY="U" W ?7,"8.",?10,$$REC^ACHSACO1(8),?50,$J(ACHSTOTL(ACHSY),6),! Q  ;ACHS*3.1*13 IHS/OIT/FCJ ADDED "U" TYPE RECORD
 .W ?7,ACHSY,".",?10,$$REC^ACHSACO1(ACHSY),?50,$J(ACHSTOTL(ACHSY),6),!
 ;
 W !?20,"TOTAL ALL TYPES",?50,$J(ACHSTOTL,6),!
 S DIC="^ACHSAOLG(",(X,DINUM)=$P(ACHSXD2,U,1)
 S DIC(0)="ZML",DLAYGO=9002077
 D ^DIC
 K DLAYGO
 ;
 I +Y<0 D  Q
 . U IO(0)
 . W *7,"Unable to log Facility name in '",$P($G(^ACHSAOLG(0)),U),"' file",!
 . S ACHSOK=0
 ;
 ;
 I +Y'=ACHSFCPT D  Q
 . U IO(0)
 . W *7,"Facility Lookup error in '",$P($G(^ACHSAOLG(0)),U),"' file",!
 . S ACHSOK=0
 ;
 ;
 S DA(1)=+Y
 I '$D(^ACHSAOLG(ACHSFCPT,1,ACHSDRUN)) S ^ACHSAOLG(ACHSFCPT,1,0)=$$ZEROTH^ACHS(9002077,1)
 S DIC="^ACHSAOLG("_DA(1)_",1,"
 S (DA,X,DINUM)=ACHSDRUN
 D ^DIC
 ;
 I +Y<1 D  Q
 . U IO(0)
 . W *7,"Unable to log Facility Export date in '",$P($G(^ACHSAOLG(0)),U),"' file",!
 . S ACHSOK=0
 ;
 ;
 S Z=+$P(Y,U,2)                              ;CHS AO PROCESSING LOG FILE
 S $P(^ACHSAOLG(ACHSFCPT,1,Z,0),U,2)=ACHSFREC   ;'BEGINNING DATE'
 S $P(^ACHSAOLG(ACHSFCPT,1,Z,0),U,3)=ACHSLREC   ;'ENDING DATE'
 S $P(^ACHSAOLG(ACHSFCPT,1,Z,0),U,4)=ACHSNRCD   ;'DHR RECORD COUNT'
 S $P(^ACHSAOLG(ACHSFCPT,1,Z,0),U,5)=DT         ;AP PROCESSING DATE'
 S $P(^ACHSAOLG(ACHSFCPT,1,Z,0),U,6)=ACHSFN     ;FILE NAME  ;ACHS*3.1*19
 ;
 ;ACHS*3.1*14 9.12.2007 IHS/OIT/FCJ SHOULD CHECK TYPE 5 FI REC NOT DHR, CHG 2 TO 5 IN NXT 2 LINES
 I '$D(ACHSTOTL(5)) G S16
 I ACHSTOTL(5)<1 G S16
 ;
 S:'$D(ACHSCTFI) ACHSCTFI=0
 S ACHSCTFI=ACHSCTFI+1
 S ^ACHSBCBS(ACHSCTFI)="AA"_$P(ACHSXD2,U)_" "_$E(ACHSFREC,4,7)_$E(ACHSFREC,2,3)_" "_$E(ACHSLREC,4,7)_$E(ACHSLREC,2,3)_" "_$E(ACHSDRUN,4,7)_$E(ACHSDRUN,2,3)_$J("",51)
S16 ;
 S ^ACHSZOCT("BCBS")=ACHSCTFI
 S ^ACHSZOCT("AOPD")=ACHSCTPD
 S $P(^ACHSAOVU(0),U)=ACHSCTV
 S $P(^ACHSAOVU(0),U,2)=ACHSCTVS
 S ^ACHSZOCT("PIG")=ACHSCTPG
 S ^ACHSPIG(0,0)=ACHSCTPG
 S ^ACHSUFMS(0)=ACHSCTUA
 S ^ACHSUFMS("COUNT")=ACHSCTUF  ;ACHS*3.1*13 IHS/OIT/FCJ ADDED TOTAL REC COUNT FOR UFMS RECORDS
K ; Close device, kill vars, quit. 
 D ^%ZISC ; ,EN^XBVK("ACHS"),^ACHSVAR
 Q
 ;
TERR ;EP.
 U IO(0)
 W *7,!!,"An Error has been detected while transferring CHS data.",!!,"Please notify your supervisor.",!
 D RTRN^ACHS
 D K
 Q
 ;
END1 ;EP.
 S ACHSOK=1
 U IO(0)
 W !!,"No CHS Data Transferred"
 D RTRN^ACHS
 D K
 Q
 ;
REPORT ;EP
 U ACHSIO
 X:$D(ACHSPPO) ACHSPPO  ;IF SLAVE PRINTER SETTINGS EXECUTE THEM
 K ACHSZFAC("TOTAL")
 S ACHSZFAC("TOTAL")=0
 W @IOF,!?22,"AREA OFFICE CHS CONSOLIDATION REPORT",!,$$C^XBFUNC("FOR "_$$LOC^ACHS,80),!,$$C^XBFUNC($$FMTE^XLFDT(DT),80),!,$$REPEAT^XLFSTR("-",79)
REPORTA ;ACHS*3.1*13 IHS/OIT/FCJ MODIFIED REPORT PAGE
 W !,"FACILITY FAC-CD  |------R E C O R D   T Y P E S------|",?53,"TOTAL",?63,"EXP-DATE",!,$$REPEAT^XLFSTR("-",79),!?15
 F %=2:1:7,"U" W $J(%,5)  ;ACHS*3.1*13 IHS/OIT/FCJ ADDED "U"
 W !,$$REPEAT^XLFSTR("-",79),!
 S ACHSI="",ACHSII=""
REPORT1 ;
 S ACHSI=$O(ACHSZFAC(ACHSI))
 G REPORTND:+ACHSI=0
 S ACHSII=""
 ;
 ;'INSTITUTION NAME'                    'ASUFAC INDEX'
 W $E($P($G(^DIC(4,ACHSI,0)),U),1,8),?9,$P($G(^AUTTLOC(ACHSI,0)),U,10)
REPORT1A ;
 S ACHSII=$O(ACHSZFAC(ACHSI,ACHSII))
 G REPORT1:ACHSII=""
 W ?15
 D REPORT1B
 S ACHSZTOT=0
 ;ACHS*3.1*13 IHS/OIT/FCJ ADDED "U" TO NXT LINE
 F ACHSJ=2:1:7,"U" S:$D(ACHSZFAC(ACHSI,ACHSII,ACHSJ)) ACHSZTOT=ACHSZTOT+ACHSZFAC(ACHSI,ACHSII,ACHSJ)
 W ?53,$J(ACHSZTOT,4),?63,$$DASHDATE($P(ACHSZFAC(ACHSI,ACHSII,0),U,2))
 W !,"  BEG-REC DATE:",$$DASHDATE($P(ACHSZFAC(ACHSI,ACHSII,0),U,3)),"  END-REC DATE:",$$DASHDATE($P(ACHSZFAC(ACHSI,ACHSII,0),U,4)),!
 S ACHSZFAC("TOTAL")=ACHSZFAC("TOTAL")+ACHSZTOT
 G REPORT1A
 ;
REPORTND ;
 W !?5,"TOTALS",?15
 ;ACHS*3.1*13 IHS/OIT/FCJ ADDED "U" TO NXT LINE
 F ACHSJ=2:1:7,"U" W $S($D(ACHSZFAC("TOTAL",ACHSJ)):$J(ACHSZFAC("TOTAL",ACHSJ),5),1:$J("",5))
 W ?53,$J(ACHSZFAC("TOTAL"),5),!?5
REPORTNX ;
 I $D(ACHSPPC) W @IOF X ACHSPPC     ;CLOSE SLAVE DEVICE
 Q
 ;
FACSUM ;
 S ACHSK="",ACHSKK="",ACHSZFAC("TOTAL")=0
FACSUM1 ;
 S ACHSK=$O(ACHSZFAC(ACHSK))
 I +ACHSK=0 D FACSUMND Q
FACSUM2 ;
 S ACHSKK=$O(ACHSZFAC(ACHSK,ACHSKK))
 G FACSUM1:+ACHSKK=0
 S ACHSZFAC("TOTAL")=ACHSZFAC("TOTAL")+$P(ACHSZFAC(ACHSK,ACHSKK),U,5)
 G FACSUM2
 ;
FACSUMND ;
 Q
 ;
REPORT1B ;
 ;ACHS*3.1*13 IHS/OIT/FCJ ADDED "U" TO NXT LINE
 F ACHSJ=2:1:7,"U" D
 . I '$D(ACHSZFAC(ACHSI,ACHSII,ACHSJ)) W $J("",5) Q
 . W $J($G(ACHSZFAC(ACHSI,ACHSII,ACHSJ)),5)
 . S ACHSZFAC("TOTAL",ACHSJ)=$G(ACHSZFAC("TOTAL",ACHSJ))+ACHSZFAC(ACHSI,ACHSII,ACHSJ)
 ;
 Q
 ;
DASHDATE(X) ; Return FM date in mm-dd-yy format
 Q $E(X,4,5)_"-"_$E(X,6,7)_"-"_$E(X,2,3)
 ;
