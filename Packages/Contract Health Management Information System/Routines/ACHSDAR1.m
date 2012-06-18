ACHSDAR1 ; IHS/ITSC/TPF/PMF - PATIENT ALTERNATE RESOURCE LETTER (2/2) ;  
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**18**;JUN 11, 2001
 ;
START ;EP
 ;
 S ACHSQUIT=0
 U IO
 D BM^ACHS           ;SET BOTTOM MARGIN TO ACHDBM
 S ACHSBM=ACHSBM-4
 S ACHDONE=""
 F I=1:1:4 W "*** OFFICE COPY *** "
 W !!!
 S ACHSPG=1
 S DIWL=5
 S DIWR=$S($G(IOM):IOM,1:75)
 S DIWF="W"
DOC ;
 D HEADER^ACHSDNL2
 W !!!?DIWL-1,$$FMTE^XLFDT($$DN^ACHS(0,2))     ;'DATE DENIAL ISSUED'
 S ACHDOC="Document number: "_$$DN^ACHS(0,1)   ;DENIAL NUMBER'
 W ?(DIWR-$L(ACHDOC)),ACHDOC,!!
 ;
 ;IF 'PATIENT REGISTERED?" GET NON-REGISTERED PATIENT DATA 
 I $$DN^ACHS(0,6)'="Y" S ACHDPAT=$G(^ACHSDEN(DUZ(2),"D",ACHSA,10)),ACHDNAMP=$P($P($G(^ACHSDEN(DUZ(2),"D",ACHSA,10)),U),",",2)_" "_$P($P($G(^ACHSDEN(DUZ(2),"D",ACHSA,10)),U),",") G DOC1
 ;
 ;OTHER WISE GET THE PATIENT DATA FROM PATIENT FILE
 S ACHDPAT=$G(^DPT($$DN^ACHS(0,7),.11))
 S ACHDPAT=U_$P(ACHDPAT,U)_" "_$P(ACHDPAT,U,2)_" "_$P(ACHDPAT,U,3)_U_$P(ACHDPAT,U,4)_U_$P(ACHDPAT,U,5)_U_$P(ACHDPAT,U,6)
 S ACHDPAT=$P($G(^DPT($$DN^ACHS(0,7),0)),U)_ACHDPAT
 S ACHDNAMP=$P($P(ACHDPAT,U),",",2)_" "_$P($P(ACHDPAT,U),",",1)
DOC1 ;
 W !!?DIWL-1,ACHDNAMP,!?DIWL-1,$P(ACHDPAT,U,2),!?DIWL-1,$P(ACHDPAT,U,3)_", "_$P($G(^DIC(5,$P(ACHDPAT,U,4),0)),U,2)_"  "_$P(ACHDPAT,U,5),!
 W !!?DIWL-1,"Re:              Patient: ",$P($P(ACHDPAT,U),",",2)_" "_$P($P(ACHDPAT,U),",")
 W !?DIWL+8,"Date of service: ",$$FMTE^XLFDT($$DN^ACHS(0,4))
 ;
 ;GET PROVIDER INFORMATION
 D PROV^ACHSDAR5 Q:$G(ACHSQUIT)
 ;
 ;GET ALTERNATE RESOURCES INFORMATION
 D ALTR^ACHSDAR5 Q:$G(ACHSQUIT)
 ;
 ;GET 'OTHER IHS RESOURCES'
 D IHSRES^ACHSDAR5 Q:$G(ACHSQUIT)
 ;
 W !!?DIWL-1,"Dear ",$P($P(ACHDPAT,U),",",2)_" "_$P($P(ACHDPAT,U),",")_",",!!
 ; --- Alternate Resource Text (Top)
 S ACHDX=0
 F  S ACHDX=$O(^ACHSDENR(DUZ(2),10,ACHDX)) Q:'ACHDX  D  Q:$G(ACHSQUIT)
 .S X=$G(^ACHSDENR(DUZ(2),10,ACHDX,0))
 .D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 D ^DIWW
 ;
 ;DO FORM ?????
 ;S DIWF="I5C60W",ACHDOP=0
 ;F  S ACHDOP=$O(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,3,ACHDOP)) G NDOC:'ACHDOP D OPT
 ;
OPT ; --- Alternate Resource Options
 ;S ACHDX=0
 ;F  S ACHDX=$O(^ACHSDENR(DUZ(2),12,ACHDOP,1,ACHDX)) Q:'ACHDX  D  Q:$G(ACHSQUIT)
 ;.S X=$G(^ACHSDENR(DUZ(2),12,ACHDOP,1,ACHDX,0)) D ^DIWP,PG:$Y>ACHSBM  Q:$G(ACHSQUIT)
 ;D ^DIWW
 ;
 ;D OPTXT:$P($G(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,3,ACHDOP,0)),U)=4
 ;S:$P($G(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,3,ACHDOP,0)),U)=2 ACHDNDOC=""
 ;Q
 ;
 ;WRITE OPTION TEXT
OPTXT ;   
 ;W !
 ;S ACHDZ=0
 ;F  S ACHDZ=$O(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,3,ACHDOP,1,ACHDZ)) Q:'ACHDZ  D  Q:$G(ACHSQUIT)
 ;.S X=$G(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,3,ACHDOP,1,ACHDZ,0))
 ;.D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 ;D ^DIWW
 ;Q
 ;
 ;NO ALTERNATE RESOURCES DOCUMENTED
NDOC ;
 I $D(ACHDNDOC) D  Q:$G(ACHSQUIT)  D ^DIWW S DIWL=5,DIWR=$S($G(IOM):IOM,1:75)
 . W !!?9,"Documentation Needed For Appeal:",!!
 . S ACHD=0,DIWL=10,DIWR=$S($G(IOM):(IOM-5),1:70)
 . F  S ACHD=$O(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,1,ACHD)) Q:+ACHD=0  D  Q:$G(ACHSQUIT)
 .S X=$G(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,1,ACHD,0))
 .D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 ;
BOTTXT ;
 D PG:$Y>ACHSBM
 Q:$G(ACHSQUIT)
 W !!
 K DIWF
 S DIWL=5,DIWR=$S($G(IOM):IOM,1:75)
 ; --- Alternate Resource Text (Bottom)
 S X=^ACHSDENR(DUZ(2),0),ACHSDBCN=$P(X,U,12),ACHSDBCP=$P(X,U,13)   ;ACHS*3.1*18
 S ACHDX=0
 F  S ACHDX=$O(^ACHSDENR(DUZ(2),11,ACHDX)) Q:'ACHDX  D  Q:$G(ACHSQUIT)
 .;S X=$G(^ACHSDENR(DUZ(2),11,ACHDX,0)) D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)  ;ACHS*3.1*18
 .S X=$G(^ACHSDENR(DUZ(2),11,ACHDX,0))
 .I X["ACHSDBCN" S X=$P(X,"ACHSDBCN",1)_ACHSDBCN_$P(X,"ACHSDBCN",2)
 .I X["ACHSDBCP" S X=$P(X,"ACHSDBCP",1)_ACHSDBCP_$P(X,"ACHSDBCP",2)
 .D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 D ^DIWW
 ;
SUD ; --- SUD Signature Block
 D PG:$Y>(ACHSBM-15)
 Q:$G(ACHSQUIT)
 W !!?30,"Sincerely yours,",!!!!?30,$$SUD^ACHS(1)
 I $L($$SUD^ACHS(7)) W !?30,$$SUD^ACHS(7)
 W !?30,$$SUD^ACHS(2),!?30,$$SUD^ACHS(3),", ",$P($G(^DIC(5,$$SUD^ACHS(4),0)),U,2),"  ",$$SUD^ACHS(5),!?30,"Telephone: ",$$SUD^ACHS(6)
CMT ; --- Office Comments
 G:'$D(ACHDONE) END
 W !!!,"    Denial Number: ",$$DN^ACHS(0,1)
 ;
 W !,"     Chart Number: "
 ;
 ;IS THE 'PATIENT REGISTERED?'
 I $$DN^ACHS(0,6)="Y" D
 .;IF REGISTERED IS THERE A 'REGISTERED PATIENT' PTR?
 .W:'$$DN^ACHS(0,7) !!,"CANNOT FIND A PATIENT POINTER FOR A APPARENTLY REGISTERED PATIENT WITHIN THE 'CHS DENIAL DATA' FILE!!",!,"REPORT THIS TO YOUR SITE MANAGER IMMEDIATELY!",!,"DOCUMENT IEN: ",ACHSA
 .Q:'$$DN^ACHS(0,6)
 .W $P($G(^AUPNPAT($$DN^ACHS(0,7),41,DUZ(2),0)),U,2)
 W $S($L($$DN^ACHS(10,6)):$$DN^ACHS(10,6),1:"No Chart Number Available")
 ;
 I $$DN^ACHS(850,1)'="Y" W !,"No Receipt Information Available",! G CMT1
 W !,"Method of receipt: ",$$DN^ACHS(850,2)
 W !,"  Date of receipt: ",$$FMTE^XLFDT($$DN^ACHS(850,3))
 W !,"      Received by: ",$$DN^ACHS(850,4)
CMT1 ;
 G:'$D(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,0)) END
 W !,"CHS Office Comments: ",!
 S ACHD=0
 F  S ACHD=$O(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,2,ACHD)) Q:'ACHD  D  Q:$G(ACHSQUIT)
 .S X=$G(^ACHSDEN(DUZ(2),"D",ACHSA,800,ACHDALRS,2,ACHD,0))
 .D ^DIWP,PG:$Y>ACHSBM Q:$G(ACHSQUIT)
 D ^DIWW
END ;EP
 W !!!
 I $D(ACHDONE) D  G DOC
 . F I=1:1:4 W "*** OFFICE COPY *** "
 . K ACHDONE
 . W @IOF
 . S ACHSPG=1,DIWL=5,DIWR=$S($G(IOM):IOM,1:75),DIWF="W"
 ;
END1 ;EP  from ACHSDAR
 I IO=IO(0) D RTRN^ACHS
 W @IOF
 K ACHSA,ACHDALRS,ACHDOCT,ACHDLKER,DIR,ACHDA,ACHDALRS,ACHD,ACHDX,ACHDI,ACHDQ,ACHDOP,ACHDPAT,ACHDNDOC
 D ^%ZISC
 Q
 ;
PG ; --- Pagination for the Alternate Resource Letter.
 Q:$G(ACHSQUIT)!$D(DUOUT)!$D(DTOUT)
 D RTRN^ACHS
 S ACHSPG=ACHSPG+1
 W @IOF,!!!?DIWL-1,ACHDNAMP,?($S($G(IOM):IOM,1:75)-$L(ACHDOC)),ACHDOC,!?($S($G(IOM):IOM,1:75)-$L("Page "_ACHSPG)),"Page ",ACHSPG,!!
 Q
 ;
