ADEATT4 ; IHS/HQT/MJL  - ATTENDING DDS STMNT PT 4 ;11:42 AM  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
 ;------->INIT
INIT U IO K ADELIN S $P(ADELIN,"=",79)="",ADEPAG=0
 ;------->D HEADER
 D HEAD
 ;------->CARRIER NAME
 D CAR
 ;------->PATIENT NAME
 D PAT
 ;------->PROVIDER
 D PROV
 ;------->PROCEDURES
 D PROC
 ;------->TOTAL CHARGE
 D TOT
 ;------->SIGNATURE
 D SIG
 ;------->END
END ;
 D ^%ZISC
 I $D(ZTQUEUED) S ZTREQ="@"
 K ADEPAG
 Q
LINE W $E(ADELIN,1,40-($L(ADETITL)/2)),ADETITL,$E(ADELIN,1,39-($L(ADETITL)/2)) Q
HEAD W:ADEPAG'=0 @IOF S ADEPAG=ADEPAG+1,ADETITL="ATTENDING DENTIST STATEMENT",ADELIN="",$P(ADELIN," ",50)="" S:ADEPAG>1 ADETITL=ADETITL_" Page "_ADEPAG D LINE S $Y=1
 I ADEPAG>1 S ADETITL="Patient: "_ADEPNM D LINE
 S ADELIN="",$P(ADELIN,"=",79)=""
 Q
CAR S ADETITL="Carrier Name and Address" W !! D LINE
 W !,ADEINSN S ADENOD=^AUTNINS(ADEINS,0)
 W ! W $P(ADENOD,U,2)
 W ! W $P(ADENOD,U,3)
 I +$P(ADENOD,U,4),$D(^DIC(5,$P(ADENOD,U,4),0)) W ?30,$P(^DIC(5,$P(ADENOD,U,4),0),U,2)
 W ?40,$P(ADENOD,U,5)
 Q
PAT S ADETITL="Patient Name and Address" W !! D LINE
 W !,ADEPNM
 S ADENOD="" I ADEINSN'["MEDICAID",ADEINSN'["MEDICARE",ADEINSN'["RAILROAD RETIREMENT" S ADENOD=$O(^AUPNPRVT(ADEPAT,11,"B",ADEINS,0)),ADENOD=^AUPNPRVT(ADEPAT,11,ADENOD,0)
 I $P(ADENOD,U,4)]"",$P(ADENOD,U,5)]"" W ?30,"Relationship to Sponsor: ",$P(^AUTTRLSH($P(ADENOD,U,5),0),U)
 W:$P(ADENOD,U,4)]"" !,"Sponsor: ",$P(ADENOD,U,4)
 I '$D(^DPT(ADEPAT,.11)) W !,"(Mailing Address Not Available)" Q
 S ADENOD=^DPT(ADEPAT,.11)
 W !,$P(ADENOD,U)
 W !,$P(ADENOD,U,4),?30,$P(^DIC(5,$P(ADENOD,U,5),0),U,2),?40,$P(ADENOD,U,6)
 ;W !,"PATIENT CITY",?30,"STATE",?40,"ZIP"
 W !!,"(Signature on File)"
 Q
PROV S ADETITL="Dentist Name" W !! D LINE
 W !,ADERDNM ;"DENTIST"
 S ADENOD=^AUTTLOC(DUZ(2),0)
 W !,$P(ADENOD,U,12) ;"DDS ADDRESS"
 ;W !,"DDS CITY",?30,"STATE",?40,"ZIP"
 W !,$P(ADENOD,U,13),?30,$P(^DIC(5,$P(ADENOD,U,14),0),U,2),?40,$P(ADENOD,U,15)
 W !,"Dentist SSN: ",$P(^DIC(16,ADERDNMD,0),U,9) ;"DDS SSN"
 Q
PROC S ADETITL="Treatment Provided" W ! D LINE
 W !,"Tooth",?10,"Description of Service",?35,"Date",?45,"Procedure",?60,"Fee" S ADETITL="" W ! D LINE
 S X=0 F J=0:0 S X=$O(ADEV(X)) Q:X=""  D PROC1,EOL
 Q
PROC1 Q:$P(ADEV(X),U,3)<1
 F K=1:1:$P(ADEV(X),U) D PROC2
 Q
PROC2 W !,$S($P($P(ADEV(X),U,2),",",K)]"":^ADEOPS($P($P(ADEV(X),U,2),",",K),88),1:"")
 W ?10,ADEDES(X)
 W ?35,$E(ADEVFM,4,5),"/",$E(ADEVFM,6,7),"/",$E(ADEVFM,2,3)
 W ?45,X
 W ?60,$J($P(ADEV(X),U,3),7,2)
 Q
EOL I IOSL-$Y<10 D HEAD
 Q
TOT S ADETITL="" W !! ; D LINE
 W !?35,"Total Fee Charged: ",?59,$J(ADETCH,8,2)
 W ! D LINE
 Q
SIG W !!! S $P(X,"_",50)="" W X
 W !,"Dentist Signature",?35,"Date"
 Q