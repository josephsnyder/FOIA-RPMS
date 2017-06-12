APCDETPD ; IHS/CMI/LAB - POV ICDUP ;
 ;;2.0;IHS PCC SUITE;**11**;MAY 14, 2009;Build 58
 ;
START ;
 D EN^XBNEW("START1^APCDETPD","APCDTSKI;APCDTDX;APCDTERR;APCDPAT;APCDTDI")
 Q
START1 ;EP
 S APCDTPCC="",APCDINPE=1
 S APCDD=APCDTDI
 I APCDD="" S APCDD=DT
 NEW APCDIMP,APCDANS
I ;
 S APCDIMP=$$IMP^AUPNSICD(APCDD)
LEX ;EP - called from input template
 ;reader call to get TEXT for code
 K DIR
 K ^TMP("LEXSCH",$J)
 I APCDIMP=1 D CONFIG^LEXSET("ICD","ICD",$P(APCDD,"."))
 I APCDIMP=30 D CONFIG^LEXSET("10D","10D",$P(APCDD,"."))
 S DIR(0)="FO^1:60",DIR("A")="Enter DIAGNOSIS"
 S DIR("?")=$S($G(APCDTIN9):"^D HELP9^AUPNSIC9",1:"^D HELP^AUPNSICH")
 S DIR("??")=$S($G(APCDTIN9):"^D HELP9^AUPNSIC9",1:"^D HELP^AUPNSICH")
 KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S APCDTSKI=1,APCDLOOK="" G XITL
 I Y="" S APCDTSKI=1,APCDLOOK="" G XITL
 S APCDUINP=Y
 S %=""
 I APCDUINP=".9999" S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999"),$P(APCDD,"."),APCDIMP,"E") G LEXN
 I APCDIMP=30,APCDUINP="ZZZ.999" S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999"),$P(APCDD,"."),APCDIMP,"E") G LEXN
 I APCDIMP=30,$E(APCDUINP,1,4)="ZZZ." S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999"),$P(APCDD,"."),APCDIMP,"E") G LEXN
 I $E(APCDUINP,1,7)="UNCODED" S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999"),$P(APCDD,"."),APCDIMP,"E") G LEXN
 I APCDUINP["UNCODED D" S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999"),$P(APCDD,"."),APCDIMP,"E") G LEXN
 K ^TMP("LEXSCH",$J),^TMP("LEXHIT",$J),LEX,^TMP("LEXFND",$J)
 I APCDIMP=1 D CONFIG^LEXSET("ICD","ICD",$P(APCDD,"."))
 I APCDIMP=30 D CONFIG^LEXSET("10D","10D",$P(APCDD,"."))
 S X=APCDUINP
 I APCDIMP=1 S DIC("S")="I $$ICDONE9^APCDETPD(+Y,LEXVDT)"
 I APCDIMP=30 S DIC("S")="I $$ICDONE1^APCDETPD(+Y,LEXVDT)"
 S DIC("A")="Enter DIAGNOSIS"
 I APCDIMP=1 D LOOK^LEXA(X,"ICD",999,"ICD",$P(APCDD,"."))
 I APCDIMP=30 D LOOK^LEXA(X,"10D",999,"10D",$P(APCDD,"."))
 I 'LEX D  G LEX
 .S X=0 F  S X=$O(LEX("HLP",X)) Q:X'=+X  W !,LEX("HLP",X)
 ;display all codes and call reader
 S APCDANS=""
 D GETANS^APCDAPOV
 I APCDY="^" W ! G LEX
 I APCDY="" W ! G LEX
 I '$G(APCDY) W ! G LEX
 I APCDIMP=1 S Y=$$ICDONE^LEXU($P(^TMP("LEXHIT",$J,APCDY),U,1),$P(APCDD,"."))
 I APCDIMP=30 S Y=$$ONE^LEXU($P(^TMP("LEXHIT",$J,APCDY),U,1),$P(APCDD,"."),"10D")
 K DO,^TMP("LEXSCH",$J)
 I $G(Y)="" W !!,"lexicon isn't passing back an ICD code." S APCDTERR=1,APCDLOOK="" G XITL
 S %=$$ICDDX^ICDEX(Y,$P(APCDD,"."),APCDIMP,"E")
 I $P(%,U,1)="-1" W !!,"lexicon isn't passing back an ICD code." S APCDTERR=1,APCDLOOK="" G XITL
LEXN ;
 S APCDTDX=+%
 W !
XITL K Y,X,DO,D,DD,DIPGM,APCDTPCC
 Q
ICDONE9(ALEX,ALEXVDT) ;EP - Return one ICD code for an expression
 ;    LEX      IEN of file 757.01
 ;    LEXVDT   Date to use for screening by codes
 N ALEXICD
 S ALEXVDT=$S(+$G(ALEXVDT)>0:ALEXVDT,1:$$DT^XLFDT)
 S ALEX=$$ONE^LEXSRC(ALEX,"ICD",ALEXVDT) Q:ALEX="" ""
 S ALEXICD=$$ICDDX^ICDEX(ALEX,ALEXVDT,1,"E")
 Q:$P(ALEXICD,"^",2)="INVALID CODE" ""
 Q:'$$CHK^AUPNCIX($P(ALEXICD,U,1),,APCDTDI) ""
 Q 1
ICDONE1(ALEX,ALEXVDT) ;EP - Return one ICD code for an expression
 ;    LEX      IEN of file 757.01
 ;    LEXVDT   Date to use for screening by codes
 N ALEXICD,ALEVXDT,%
 S ALEX=$$ONE^LEXU(ALEX,ALEXVDT,"10D") Q:ALEX="" ""
 S ALEXICD=$$ICDDX^ICDEX(ALEX,ALEXVDT,30,"E")
 Q:$P(ALEXICD,"^",2)="INVALID CODE" ""
 Q:'$$CHK^AUPNCIX($P(ALEXICD,U,1),,APCDTDI) ""
 Q 1
