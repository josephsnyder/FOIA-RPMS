APCLRT1P ; IHS/CMI/LAB - PRINT CLINIC VISITS ;
 ;;2.0;IHS PCC SUITE;**5,7,11**;MAY 14, 2009;Build 58
 ;
 ;cmi/anch/maw 9/12/2007 code set versioning
 ;
INIT ;
 S APCLDT=$$FMTE^XLFDT(DT)
 S Y=APCLBD D DD^%DT S APCLBDD=Y S Y=APCLED D DD^%DT S APCLEDD=Y
 S APCLPG=0
 I '$D(^XTMP("APCLRT1",APCLJOB,APCLBTH)) D HEAD W !,"No visits to report."  G END
 ;
SET ;
 D HEAD
 S APCLVDFN=0
 S DFN=0 F  S DFN=$O(^XTMP("APCLRT1",APCLJOB,APCLBTH,DFN)) Q:DFN'=+DFN!($D(APCLQUIT))  D
 .S APCLVDFN=0 F  S APCLVDFN=$O(^XTMP("APCLRT1",APCLJOB,APCLBTH,DFN,APCLVDFN)) Q:APCLVDFN=""!($D(APCLQUIT))  D SET2
END ;
 D DONE^APCLOSUT
 K ^XTMP("APCLRT1",APCLJOB,APCLBTH)
 Q
SET2 ;
 S APCLVREC=^AUPNVSIT(APCLVDFN,0)
 I $G(APCLLOC)]"",$D(^AUPNPAT($P(APCLVREC,U,5),41,APCLLOC,0)) S APCLHRCN=$J($P(^AUTTLOC(APCLLOC,0),U,7),4)_" "_$P(^AUPNPAT($P(APCLVREC,U,5),41,APCLLOC,0),U,2) G PRN
 S APCLHRCN=$S($D(^AUPNPAT($P(APCLVREC,U,5),41,DUZ(2),0)):$J($P(^AUTTLOC(DUZ(2),0),U,7),4)_" "_$P(^AUPNPAT($P(APCLVREC,U,5),41,DUZ(2),0),U,2),1:"<NONE>")
PRN ;
 S APCLNAME=$E($P(^DPT($P(APCLVREC,U,5),0),U),1,15)
 K ^UTILITY("DIQ1",$J) S DIC=9000001,DA=$P(APCLVREC,U,5),DR=1102.99 D EN^DIQ1
 S APCLAGE=$G(^UTILITY("DIQ1",$J,9000001,$P(APCLVREC,U,5),1102.99)) K ^UTILITY("DIQ1",$J)
 S APCLVD=$E($P(APCLVREC,U),4,5)_"/"_$E($P(APCLVREC,U),6,7)_"/"_$E($P(APCLVREC,U),2,3) S Y=$P(APCLVREC,U) D DD^%DT S APCLVD=APCLVD_" "_$P(Y,"@",2)
 S APCLCLNP=$P(^DIC(40.7,$P(APCLVREC,U,8),0),U,2)
 S APCLFAC=$P(^AUTTLOC($P(APCLVREC,U,6),0),U,7)
PRINT1 ;
 I $Y>(IOSL-5) D HEAD Q:$D(APCLQUIT)
 W !,APCLNAME,?16,APCLHRCN,?28,APCLVD,?45,APCLCLNP,?49,APCLFAC S APCLFRST=0,APCLP=0
 F  S APCLP=$O(^AUPNVPOV("AD",APCLVDFN,APCLP)) Q:APCLP'=+APCLP  D
 .W:APCLFRST !
 .S APCLFRST=APCLFRST+1
 .;W ?54,$P(^ICD9($P(^AUPNVPOV(APCLP,0),U),0),U) W:$P(^AUPNVPOV(APCLP,0),U,4)]"" ?61,$E($P(^AUTNPOV($P(^AUPNVPOV(APCLP,0),U,4),0),U),1,19)  ;cmi/anch/maw 9/12/2007 orig line
 .W ?54,$P($$ICDDX^ICDEX($P(^AUPNVPOV(APCLP,0),U)),U,2) W:$P(^AUPNVPOV(APCLP,0),U,4)]"" ?64,$E($$VAL^XBDIQ1(9000010.07,APCLP,.04),1,15)  ;cmi/anch/maw 9/12/2007 csv
 .Q
PRINT2 ;
 S APCLV=0 F  S APCLV=$O(^XTMP("APCLRT1",APCLJOB,APCLBTH,DFN,APCLVDFN,APCLV)) Q:APCLV=""!($D(APCLQUIT))  S APCLDFN=0 D
 .S APCLVD=$E($P(^AUPNVSIT(APCLV,0),U),4,5)_"/"_$E($P(^AUPNVSIT(APCLV,0),U),6,7)_"/"_$E($P(^AUPNVSIT(APCLV,0),U),2,3) S Y=$P(^AUPNVSIT(APCLV,0),U) D DD^%DT S APCLVD=APCLVD_" "_$P(Y,"@",2)
 .S APCLCLNP=$S($P(^AUPNVSIT(APCLV,0),U,8):$P(^DIC(40.7,$P(^AUPNVSIT(APCLV,0),U,8),0),U,2),1:"--")
 .S APCLFAC=$S($P(^AUPNVSIT(APCLV,0),U,6):$P(^AUTTLOC($P(^AUPNVSIT(APCLV,0),U,6),0),U,7),1:"--")
 .I $Y>(IOSL-5) D HEAD Q:$D(APCLQUIT)
 .W !,?28,APCLVD,?45,APCLCLNP,?49,APCLFAC S (APCLFRST,APCLP)=0
 .F  S APCLP=$O(^AUPNVPOV("AD",APCLV,APCLP)) Q:APCLP'=+APCLP  D
 ..W:APCLFRST !
 ..S APCLFRST=APCLFRST+1
 ..;W ?54,$P(^ICD9($P(^AUPNVPOV(APCLP,0),U),0),U) W:$P(^AUPNVPOV(APCLP,0),U,4)]"" ?61,$E($P(^AUTNPOV($P(^AUPNVPOV(APCLP,0),U,4),0),U),1,19)  ;cmi/anch/maw 9/12/2007 orig line
 ..W ?54,$P($$ICDDX^ICDEX($P(^AUPNVPOV(APCLP,0),U)),U,2) W:$P(^AUPNVPOV(APCLP,0),U,4)]"" ?64,$E($$VAL^XBDIQ1(9000010.07,APCLP,.04),1,15)  ;cmi/anch/maw 9/12/2007 csv
 ..Q
 .Q
 W !
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
HEAD I 'APCLPG G HEAD1
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLQUIT="" Q
HEAD1 ;
 W:$D(IOF) @IOF S APCLPG=APCLPG+1
 W !
 S X=$P(^DIC(4,DUZ(2),0),U)
 W !!,$P(^VA(200,DUZ,0),"^",2),?(80-$L(X)/2),X,?70,"Page ",APCLPG
 ;W !?25,"ER VISITS AFTER CLINIC VISITS"
 S X="CLINIC VISITS WITHIN "_$S(APCLHR=7:"72 HOURS",1:"48 HOURS")_" AFTER CLINIC VISITS" W !,$$CTR(X,80)
 S X="RETURNS FROM CLINIC: "_$S(APCLFCLN:$P(^DIC(40.7,APCLFCLN,0),U),1:"ANY CLINIC") W !,$$CTR(X)
 S X="RETURNS TO CLINIC: "_$S(APCLTCLN:$P(^DIC(40.7,APCLTCLN,0),U),1:"ANY CLINIC") W !,$$CTR(X)
 I APCLPROV S X="RETURNS FROM PROVIDER: "_$P(^VA(200,APCLPROV,0),U) W !,$$CTR(X)
 S X="Incomplete Visits are "_$S(APCLEINC:"excluded.",1:"included.") W !,$$CTR(X)
 S X="Same diagnosis is "_$S(APCLSDX:"required.",1:"not required.") W !,$$CTR(X)
 W !?18,"VISITS DATES:  ",APCLBDD,"  TO  ",APCLEDD
 I $D(APCLLOC) S X="Locations: " D  W !,$$CTR(X,80)
 .S Y=0 F  S Y=$O(APCLLOC(Y)) Q:Y'=+Y  S X=X_$P(^AUTTLOC(Y,0),U,2)_" "
 I '$D(APCLLOC) S X="All Locations/Facilities included" W !,$$CTR(X,80)
 W !!?5,"NAME",?17,"HRCN",?28,"VISIT DATE&TIME",?45,"CLN",?49,"FAC",?54,"ICD",?64,"PROVIDER NARRATIVE"
 W !,$TR($J("",80)," ","-")
 W !
 Q
 ;
