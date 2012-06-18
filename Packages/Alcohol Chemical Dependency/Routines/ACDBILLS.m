ACDBILLS ;IHS/ADC/EDE/KML - BILL FILE STATUS;
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
 ;
 ; This routine prints the status of the CDMIS BILL file
 ; entries.
 ;
START ;
 D MAIN
 D EOJ
 Q
 ;
MAIN ;
 D INIT
 Q:ACDQ
 D DBQUE
 Q
 ;
INIT ;
 S ACDQ=1
 S (ACDCTR,ACDCPR,ACDCNP,ACDCCV,ACDFC1,ACDFC2,ACDFC3)=0
 S ACDQ=0
 Q
 ;
DBQUE ; call to XBDBQUE
 S XBRP="STATUS^ACDBILLS",XBRC="CMP^ACDBILLS",XBRX="EOJ^ACDBILLS",XBNS="ACD"
 D ^XBDBQUE
 Q
 ;
CMP ; EP-FOR XBDBQUE
 ; all action takes place in status EP
 Q
 ;
STATUS ; EP-RINT BILL FILE STATUS
 S ACDBIEN=0
 F  S ACDBIEN=$O(^ACDBILL(ACDBIEN)) Q:'ACDBIEN  D COUNT
 D PRINT
 D PAUSE^ACDDEU
 Q
 ;
PRINT ; PRINT OUTPUT
 D HEAD
 W "RECORD COUNT",?22,"IIF",?35,"TDC",?50,"CS",!
 W ?3,$J(ACDCTR,5),?20,$J(ACDFC1,5),?33,$J(ACDFC2,5),?47,$J(ACDFC3,5),!
 W !,"PRINTED    NOT PRINTED     COVERAGE",!
 W ?1,$J(ACDCPR,5),?15,$J(ACDCNP,5),?28,$J(ACDCCV,5),!
 Q
 ;
COUNT ; COUNT EACH RECORD
 S ACDCTR=ACDCTR+1
 Q:'$D(^ACDBILL(ACDBIEN,0))  ;          corrupt database
 S X=^ACDBILL(ACDBIEN,0)
 S Y="ACDFC"_$P(X,U,3) S @Y=@Y+1
 I $P(X,U,7)'="" S ACDCPR=ACDCPR+1 Q
 S ACDCNP=ACDCNP+1
 S ACDDFNP=$P(X,U,2),ACDVIEN=$P(X,U,4)
 D CHKCOV^ACDPCCL
 S ACDCCV=ACDCCV+ACD3PCOV
 Q
 ;
HEAD ; PRINT HEADER
 I '$D(ZTQUEUED),'$D(IO("S")),$E(IOST,1,2)="C-" W @IOF
 W !,$$CTR^ACD("CDMIS BILL FILE STATUS REFPORT",80),!!
 W "Run at ",ACDSITE," for ",$$USR^ACD()," on ",$$FMTE^XLFDT(DT),!
 W $$REPEAT^XLFSTR("=",80),!!
 Q
 ;
EOJ ;
 K ACD3PCOV,ACD3PDAT,ACDFC1,ACDFC2,ACDFC3
 K ACDBIEN,ACDCCV,ACDCNP,ACDCPR,ACDCTR,ACDDFNP,ACDQ,ACDVIEN
 Q
