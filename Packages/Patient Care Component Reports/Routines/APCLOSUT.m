APCLOSUT ; IHS/CMI/LAB - PRINTING UTILITIES ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
XTMP(N,D) ;EP - set xtmp 0 node
 Q:$G(N)=""
 S ^XTMP(N,0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^"_$G(D)
 Q
CALC ;ENTRY POINT
 I (+Y=0)!(+X=0) S Z="**" G COMMA ;IHS/CMI/LAB - fixed per ANMC
 S Z=(((X/Y)-1)*100),Z=$FN(Z,"+,",1)
COMMA ;
 S X=$FN(X,",")
 ;S X2=0,X3=$S($L(X)>3:($L(X)+($L(X)\3)),1:$L(X)) D COMMA^%DTC S X=$E(X,1,($L(X)-1))
 Q
DONE ;ENTRY POINT - END OF REPORT TIME DISPLAY
 I $D(APCLET) S APCLTS=(86400*($P(APCLET,",")-$P(APCLBT,",")))+($P(APCLET,",",2)-$P(APCLBT,",",2)),APCLH=$P(APCLTS/3600,".") S:APCLH="" APCLH=0 D
 .S APCLTS=APCLTS-(APCLH*3600),APCLM=$P(APCLTS/60,".") S:APCLM="" APCLM=0 S APCLTS=APCLTS-(APCLM*60),APCLS=APCLTS W !!,"RUN TIME (H.M.S): ",APCLH,".",APCLM,".",APCLS
 I $E(IOST)="C",IO=IO(0) S DIR(0)="EO",DIR("A")="End of report.  HIT RETURN" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 ;W:$D(IOF) @IOF
 K APCLTS,APCLS,APCLH,APCLM,APCLET
 Q
SET ;ENTRY POINT
 S APCL1="AMBPOVC",APCL3="AMBPOV" D SET1
 S APCL1="AMBAPCC",APCL3="AMBAPC" D SET1
 S APCL1="AMBINJCAUSEC",APCL3="AMBINJCAUSE" D SET1
 S APCL1="DENTPOVC",APCL3="DENTPOV" D SET1
 S APCL1="AMBPROVC",APCL3="AMBPROV" D SET1
 S APCL1="AMBTYPEC",APCL3="AMBTYPE" D SET1
 S APCL1="AMBCATC",APCL3="AMBCAT" D SET1
 S APCL1="AMBCLINC",APCL3="AMBCLIN" D SET1
 S APCL1="AMBLOCC",APCL3="AMBLOC" D SET1
 Q
SET1 S APCL2="^XTMP("""_APCLOS_""",APCLJOB,APCLBTH,"""_APCL3_""",X)"
 S X="" F  S X=$O(@APCL2) Q:X=""  S %=^(X) S ^XTMP(APCLOS,APCLJOB,APCLBTH,APCL1,9999999-%,X)=%
 Q
EOJ ;ENTRY POINT
 K %DT,DFN,Y,X,C,DIRUT,DIR,J,H,X1,X2,X3
 K APCLFYEY,APCLFYE,APCLFYBE,APCLFYB,APCLDTP,APCLMFY,APCLMON,APCLSU,APCLSUF,APCLLOCT,APCLTYPE,APCL,APCLFYBY,APCLRPT,APCLJ,APCLOS,APCLPYB,APCLPYE,APCLQUIT,APCLSQ,APCLP,APCLDIC,APCLDICB,APCLLOC,APCLFY,APCLNBC,APCLNBCD,APCLNBDY
 K APCLBT,APCLJOB,APCLERR,APCLACED,APCLRD
 Q
