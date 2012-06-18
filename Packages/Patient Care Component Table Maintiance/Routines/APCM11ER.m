APCM11ER ;IHS/CMI/LAB - IHS MU;
 ;;2.0;IHS PCC SUITE;**6,7**;MAY 14, 2009;Build 11
 ;
 ;
CALC(N,O) ;ENTRY POINT
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",1)
 Q Z
 ;
SB(X) ;EP - Strip 
 NEW %
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
 ;
C(X,X2,X3) ;
 S X3=""
 I X'?.N Q $$LBLK^APCLUTL(X,7)
 D COMMA^%DTC
 S X=$$STRIP^XLFSTR(X," ")
 Q $$LBLK^APCLUTL(X,7)
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name .
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;
SETN ;EP - set numerator fields
 S APCMCYN=$$V(1,APCMRPT,N,P,APCMPROV,$S($G(APCMTOT):"T",1:"I"),APCMRPTT) ;SPDX
 S APCMPRN=$$V(2,APCMRPT,N,P,APCMPROV,$S($G(APCMTOT):"T",1:"I"),APCMRPTT) ;SPDX
 Q:$P(^APCMMUM(APCMIC,0),U,6)="A"  ;no % on attestation measures
 S APCMCYP=$S(APCMCYD:((APCMCYN/APCMCYD)*100),1:"")
 S APCMPRP=$S(APCMPRD:((APCMPRN/APCMPRD)*100),1:"")
 Q
 ;
V(T,R,N,P,PROV,K,RT) ;EP ;SPDX
 NEW X,Y,Z,I,J
 I RT=1 S I=PROV_";VA(200,"
 I RT=2 S I=PROV_";AUTTLOC("
 I K="T" S I="TOTAL"
 I T=1 D  Q X
 .S J=$O(^APCMMUDC(R,$S(K="I":11,1:12),"B",I,0))
 .I 'J S X=0 Q
 .S X=$P($G(^APCMMUDC(R,$S(K="I":11,1:12),J,N)),U,P)
 I T=2 D  Q X
 .S J=$O(^APCMMUDP(R,$S(K="I":11,1:12),"B",I,0))
 .I 'J S X=0 Q
 .S X=$P($G(^APCMMUDP(R,$S(K="I":11,1:12),J,N)),U,P)
 Q ""
SUM ;EP - summary sheet for each provider
 K APCMTOT
 K APCMPROV
 S APCMGPG=0
 S APCMQUIT=""
 I APCMRPTT=2 G SUMHOS
 S X=0 F  S X=$O(APCMPRV(X)) Q:X'=+X  S APCMPROV($P(^VA(200,X,0),U),X)=""
 S APCMPNAM="" F  S APCMPNAM=$O(APCMPROV(APCMPNAM)) Q:APCMPNAM=""!(APCMQUIT)  D
 .S APCMPROV=0 F  S APCMPROV=$O(APCMPROV(APCMPNAM,APCMPROV)) Q:APCMPROV=""!(APCMQUIT)  D SUM1,W^APCM11EH(" ",0,0,APCMPTYP) D
 ..D W^APCM11EH("* Indicates Public Health Perfomance Measure.  At least one must be",0,1,APCMPTYP),W^APCM11EH("selected in the Menu Set options.",0,1,APCMPTYP),W^APCM11EH(" ",0,1,APCMPTYP),W^APCM11EH(" ",0,1,APCMPTYP)
 Q
SUMHOS ;
 S APCMPNAM=$P(^DIC(4,APCMFAC,0),U,1)
 S APCMPROV=APCMFAC
 D SUM1 D W^APCM11EH("* Indicates Public Health Perfomance Measure.  At least one must be",0,1,APCMPTYP),W^APCM11EH("selected in the Menu Set options.",0,1,APCMPTYP),W^APCM11EH(" ",0,1,APCMPTYP)
 Q
 ;
SUM1 ;
 K APCMINDO
 S X=0 F  S X=$O(APCMIND(X)) Q:X'=+X  D
 .S C=$P(^APCMMUM(X,0),U,3)
 .S O=$P(^APCMMUM(X,0),U,10)
 .I O="" Q  ;not on summary sheet
 .S APCMINDO(C,O,X)=""
 S APCMCM="" I APCMPTYP="P" D SUMH
 I APCMPTYP="D" D
 .S X="STAGE 1 "_$S(APCMRPTT=1:"EP ",1:"HOSPITAL ")_"MEANINGFUL USE PERFORMANCE REPORT SUMMARY" D W^APCM11EH(X,0,2,APCMPTYP)
 .S X="Summary Report for "_APCMPNAM D W^APCM11EH(X,0,2,APCMPTYP)
 .S X="^Excl^#^#^Current^Prev^Stage 1^Attest" D W^APCM11EH(X,0,2,APCMPTYP)
 .S X="Performance Measure^?^Den^Num^Period^Period^Target^?" D W^APCM11EH(X,0,1,APCMPTYP)
 .S X=$S(APCMCM="M":"MENU SET MEASURES",1:"CORE MEASURES") D W^APCM11EH(X,0,2,APCMPTYP)
 S APCMCM="" F  S APCMCM=$O(APCMINDO(APCMCM)) Q:APCMCM=""!(APCMQUIT)  D
 .I APCMCM="M" D W^APCM11EH("MENU SET MEASURES",0,2,APCMPTYP)
 .S APCMMO=0 F  S APCMMO=$O(APCMINDO(APCMCM,APCMMO)) Q:APCMMO=""!(APCMQUIT)  D
 ..S APCMIC=0 F  S APCMIC=$O(APCMINDO(APCMCM,APCMMO,APCMIC)) Q:APCMIC=""!(APCMQUIT)  D SUM2
 D W^APCM11EH(" ",0,1,APCMPTYP)
 Q
SUM2 ;
 I APCMPTYP="P",APCMGPG=0 D SUMH Q:APCMQUIT
 I APCMPTYP="P",$Y>(APCMIOSL-4) D SUMH Q:APCMQUIT
 ;I APCMPTYP="D" D W^APCM11EH(" ",0,2,APCMPTYP)
 S APCMDF=$P(^APCMMUM(APCMIC,0),U,8)
 ;get NUMERATOR value
 S APCMNP=$P(^DD(9001300.0311,APCMDF,0),U,4),N=$P(APCMNP,";"),P=$P(APCMNP,";",2)
 S APCMCYD=$$V(1,APCMRPT,N,P,APCMPROV,$S($G(APCMTOT):"T",1:"I"),APCMRPTT)
 S APCMPRD=$$V(2,APCMRPT,N,P,APCMPROV,$S($G(APCMTOT):"T",1:"I"),APCMRPTT)
 I $P(^APCMMUM(APCMIC,0),U,6)="A" S (APCMPRN,APCMCYN)="" G WSUM
 S APCMNF=$P(^APCMMUM(APCMIC,0),U,9)  ;numerator field
 S APCMNP=$P(^DD(9001300.0311,APCMNF,0),U,4),N=$P(APCMNP,";"),P=$P(APCMNP,";",2)
 D SETN
WSUM ;write out line
 I APCMPTYP="P",$Y>(APCMIOSL-2) D SUMH Q:APCMQUIT
 I APCMPTYP="P" D
 .D W^APCM11EH($S($L(APCMMO)=1:" "_APCMMO,1:APCMMO)_". "_$E($P(^APCMMUM(APCMIC,0),U,14),1,22),0,2,APCMPTYP)
 .S APCMEF=$P(^APCMMUM(APCMIC,0),U,11)
 .I APCMEF]"" D
 ..S APCMNP=$P(^DD(9001300.0311,APCMEF,0),U,4),N=$P(APCMNP,";"),P=$P(APCMNP,";",2)
 ..S APCMEV=$$V(1,APCMRPT,N,P,APCMPROV,$S($G(APCMTOT):"T",1:"I"),APCMRPTT)
 ..D W^APCM11EH($S(APCMEV]"":"Yes",1:"No"),0,0,APCMPTYP,,28)
 .I APCMEF="" D W^APCM11EH("N/A",0,0,APCMPTYP,,28)  ;
 .D W^APCM11EH($S($P(^APCMMUM(APCMIC,0),U,6)="A":"    N/A",1:$$C(APCMCYD,0,7)),0,0,APCMPTYP,,33)
 .D W^APCM11EH($S($P(^APCMMUM(APCMIC,0),U,6)="A":"    N/A",1:$$C(APCMCYN,0,7)),0,0,APCMPTYP,,42)
 .D W^APCM11EH($S($P(^APCMMUM(APCMIC,0),U,6)="A":"   N/A",1:$J(APCMCYP,5,1)_"%"),0,0,APCMPTYP,,51)
 .D W^APCM11EH($S($P(^APCMMUM(APCMIC,0),U,6)="A":"   N/A",1:$J(APCMPRP,5,1)_"%"),0,0,APCMPTYP,,59)
TARGET .D W^APCM11EH($G(^APCMMUM(APCMIC,13,1,0)),0,0,APCMPTYP,,68)
 .I $P(^APCMMUM(APCMIC,0),U,6)'="A" D W^APCM11EH("N/A",0,0,APCMPTYP,,76)
 .I $P(^APCMMUM(APCMIC,0),U,6)="A" D W^APCM11EH(APCMCYD,0,0,APCMPTYP,,76)
 I APCMPTYP="D" D
 .S APCMX=APCMMO_". "_$P(^APCMMUM(APCMIC,0),U,14)
 .S APCMEF=$P(^APCMMUM(APCMIC,0),U,11)
 .I APCMEF]"" D
 ..S APCMNP=$P(^DD(9001300.0311,APCMEF,0),U,4),N=$P(APCMNP,";"),P=$P(APCMNP,";",2)
 ..S APCMEV=$$V(1,APCMRPT,N,P,APCMPROV,$S($G(APCMTOT):"T",1:"I"),APCMRPTT)
 ..;S $P(APCMX,U,2)=$S(APCMRPTT=1:"Yes",1:"No")
 ..S $P(APCMX,U,2)=$S(APCMEV]"":"Yes",1:"No")   ;IHS/CMI/LAB - fix display
 .I APCMEF="" S $P(APCMX,U,2)="N/A"
 .S $P(APCMX,U,3)=$S($P(^APCMMUM(APCMIC,0),U,6)="A":"N/A",1:APCMCYD)
 .S $P(APCMX,U,4)=$S($P(^APCMMUM(APCMIC,0),U,6)="A":"N/A",1:APCMCYN)  ;$S($P(^APCMMUM(APCMIC,0),U,6)="A":APCMCYD,1:$$SB($J(APCMCYP,5,1))_"%")
 .S $P(APCMX,U,5)=$S($P(^APCMMUM(APCMIC,0),U,6)="A":"N/A",1:$$SB($J(APCMCYP,5,1))_"%")
 .S $P(APCMX,U,6)=$S($P(^APCMMUM(APCMIC,0),U,6)="A":"N/A",1:$$SB($J(APCMPRP,5,1))_"%")
TARG .S $P(APCMX,U,7)=$G(^APCMMUM(APCMIC,13,1,0))
 .I $P(^APCMMUM(APCMIC,0),U,6)'="A" S $P(APCMX,U,8)="N/A"
 .I $P(^APCMMUM(APCMIC,0),U,6)="A" S $P(APCMX,U,8)=APCMCYD
 .D W^APCM11EH(APCMX,0,2,APCMPTYP,1)
 Q
SUMH ;
 G:'APCMGPG SUMH1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCMQUIT=1 Q
 ;
SUMH1 ;
 I APCMPTYP="P" W:$D(IOF) @IOF S APCMGPG=APCMGPG+1
 I APCMPTYP="P" S X=$P(^VA(200,DUZ,0),U,2),$E(X,35)=$$FMTE^XLFDT(DT),$E(X,70)="Page "_APCMGPG D W^APCM11EH(X,0,1,APCMPTYP)
 I APCMRPTT=1 D W^APCM11EH("*** IHS 2011 Stage 1 Meaningful Use Performance Report for EPs ***",1,2,APCMPTYP)
 I APCMRPTT=2 D W^APCM11EH("** IHS 2011 Stage 1 MU Performance Report for Eligible Hospitals/CAHs **",1,2,APCMPTYP)
 I $G(APCMPROV),APCMRPTT=1 S X="Provider Name: "_$P(^VA(200,APCMPROV,0),U,1) D W^APCM11EH(X,1,1,APCMPTYP)
 I $G(APCMPROV),APCMRPTT=2 S X="Facility: "_$P(^DIC(4,APCMPROV,0),U,1) D W^APCM11EH(X,1,1,APCMPTYP)
 S X="Report Period:  "_$$FMTE^XLFDT(APCMBD)_" to "_$$FMTE^XLFDT(APCMED) D W^APCM11EH(X,1,1,APCMPTYP)
 I $G(APCMWPP) S X="Previous Period:  "_$$FMTE^XLFDT(APCMPBD)_" to "_$$FMTE^XLFDT(APCMPED) D W^APCM11EH(X,1,1,APCMPTYP)
 S X=$$REPEAT^XLFSTR("-",80) D W^APCM11EH(X,0,1,APCMPTYP)
 D W^APCM11EH("STAGE 1 "_$S(APCMRPTT=1:"EP ",1:"HOSPITAL ")_"MEANINGFUL USE PERFORMANCE REPORT SUMMARY",1,1,APCMPTYP)
 ;I '$G(APCMTOT) D W^APCM11EH("Provider: "_APCMPNAM,0,2,APCMPTYP)
 I $G(APCMTOT) D
 .K K S X=0 F  S X=$O(APCMPRV(X)) Q:X'=+X  S K($P(^VA(200,X,0),U,1))=""
 .S C=0,T=3,X="",Y=""
 .F  S X=$O(K(X)) Q:X=""  D
 ..I Y="" S $E(Y,3)=X Q
 ..I Y]"" S $E(Y,40)=X D W^APCM11EH(Y,0,1,APCMPTYP) S Y=""
 .I Y]"" D W^APCM11EH(Y,0,1,APCMPTYP)
 S X=$$REPEAT^XLFSTR("-",80) D W^APCM11EH(X,0,1,APCMPTYP)
 ;S X="",$E(X,40)="Current",$E(X,52)="Previous",$E(X,64)="Stage 1" D W^APCM11EH(X,0,1,APCMPTYP)
 S X="",$E(X,28)="Excl",$E(X,37)="#",$E(X,46)="#",$E(X,51)="Current",$E(X,61)="Prev",$E(X,67)="Stage 1",$E(X,75)="Attest" D W^APCM11EH(X,0,1,APCMPTYP)
 S X="",X="Performance Measures",$E(X,30)="?",$E(X,36)="Den",$E(X,45)="Num",$E(X,51)="Period",$E(X,60)="Period",$E(X,67)="Target",$E(X,77)="?" D W^APCM11EH(X,0,1,APCMPTYP)
 D W^APCM11EH($$REPEAT^XLFSTR("-",80),0,1,APCMPTYP)
 S X=$S(APCMCM="M":"MENU SET MEASURES",1:"CORE MEASURES") D W^APCM11EH(X,0,1,APCMPTYP)
 Q
