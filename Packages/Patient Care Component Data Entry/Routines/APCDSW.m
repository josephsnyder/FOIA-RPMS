APCDSW ; IHS/CMI/LAB - SWITCH TO V FILE ;
 ;;2.0;IHS PCC SUITE;**5,11,15**;MAY 14, 2009;Build 11
 ;
 ; APCDSWD=DICTIONARY NUMBER
 ; APCDSWCR=LINKING CROSS REFERENCE
 ; APCDSWV=VISIT DFN
 ;
 I $G(APCDVFIE)>0 S APCDLOOK=APCDVFIE Q
 S U="^"
 S APCDLOOK=""
 Q:'$D(APCDSWV)
 Q:APCDSWV=""
 Q:'$D(APCDSWD)
 Q:'APCDSWD
 Q:'$D(^DIC(APCDSWD,0,"GL"))
 S APCDSWG=^DIC(APCDSWD,0,"GL")
 I '$D(APCDSWCR),APCDSWD'=(APCDSWD\1),APCDSWD\1=9000010 S APCDSWCR="AD"
 I '$D(APCDSWCR),APCDSWD\1'=9000010 S APCDSWCR="AC"
 Q:'$D(APCDSWCR)
 Q:APCDSWCR=""
 W !
 S APCDSWDA=0 F APCDSWI=1:1 S APCDSWDA=$O(@(APCDSWG_""""_APCDSWCR_""",APCDSWV,APCDSWDA)")) Q:APCDSWDA=""  S DIC=APCDSWG,Y=APCDSWDA D GETVAL,WRITE
 S APCDSWI=APCDSWI-1
 S APCDSWAN="" S:APCDSWI=1 APCDSWAN=APCDSWI
RDR I APCDSWAN="",APCDSWI R !!,"Choose: ",APCDSWAN:$S($D(DTIME):DTIME,1:300)
 I APCDSWAN,$D(APCDSWT(APCDSWAN)) S APCDLOOK=APCDSWT(APCDSWAN)
 I APCDLOOK,APCDSWD=9000010.07,$$VAL^XBDIQ1(APCDSWD,APCDLOOK,1101)]"",$G(APCDMNE("NAME"))="IPV" W !!,"You cannot use this mnemonic with a V POV that has been SNOMED coded.",! S APCDLOOK="" G RDRK
 I APCDLOOK,APCDSWD=9000010.07,$$VAL^XBDIQ1(APCDSWD,APCDLOOK,1101)]"" D EN^XBNEW("MAP^APCDSW","APCDLOOK;VALM*")
RDRK K APCDSWV,APCDSWVA,APCDSWL,APCDSWCR,APCDSWD,APCDSWG,APCDSWDA,APCDSWI,APCDSWAN,APCDSWT,APCDSWN,APCDSWEX,APCDSWL,APCDSWP,APCDSWZ,APCDSWD2,APCDSWG2,APCDSWV2,Y
 W !
 Q
 ;
GETVAL ;
 S APCDSWD2=APCDSWD,APCDSWG2=APCDSWG,APCDSWV2=APCDSWDA
 F APCDSWL=0:0 S APCDSWVA=$P(@(APCDSWG2_APCDSWV2_",0)"),U) Q:$P(@("^DD("_APCDSWD2_",.01,0)"),U,2)'["P"  S APCDSWG2=U_$P(^(0),U,3),APCDSWD2=+$P($P(^(0),U,2),"P",2),APCDSWV2=APCDSWVA
 Q
 ;
WRITE ;
 NEW P,Q
 W !,APCDSWI,"  ",APCDSWVA," ","  ",$$VAL^XBDIQ1(APCDSWD,Y,.02),"  ",$$VAL^XBDIQ1(APCDSWD,Y,.03)
 I APCDSWD=9000010.07!(APCDSWD=9000010.08) W !?3,"Prov Narrative: ",$$VAL^XBDIQ1(APCDSWD,Y,.04)
 I APCDSWD=9000010.07,$$VAL^XBDIQ1(APCDSWD,Y,1101)]"" W !?3,"SNOMED CT: ",$$VAL^XBDIQ1(APCDSWD,Y,1101) ;," - ",$$VAL^XBDIQ1(APCDSWD,Y,1101.019)
 I APCDSWD=9000010.54 S APCDZ=Y D EN^XBNEW("DIQ^APCDSW","APCDZ")
 W @("$E("_DIC_"Y,0),0)")   ;RESET NAKED REFERENCE
 S APCDSWN=0,APCDSWT(APCDSWI)=APCDSWDA F APCDSWL=0:0 S APCDSWN=$O(@("^DD("_APCDSWD_",0,""ID"",APCDSWN)")) Q:APCDSWN=""  S APCDSWEX=^(APCDSWN) W @("$E("_DIC_"Y,0),0)") X APCDSWEX
 Q
DIQ ;
 F APCDF=2.01,2.02,1201:1:1204 I $D(^DD(9000010.54,APCDF,0)) S Z=$$VAL^XBDIQ1(9000010.54,APCDZ,APCDF) I Z]"" W !?2,$P(^DD(9000010.54,APCDF,0),U,1),":  ",Z
 Q
MAP ;EP - CALLED FROM XBDBQUE
 S D=$$VD^APCLV($P(^AUPNVPOV(APCDLOOK,0),U,3))
 S D=$$IMP^AUPNSICD(D)
 I D'=30 Q  ;ICD10 ONLY
 S APCDSMC=$$VAL^XBDIQ1(9000010.07,APCDLOOK,1101)
 ;GET MAP ADVICE
 S D=$$I10ADV^BSTSAPI("APCDSMA",APCDSMC)
 I 'D Q  ;NO MAP ADVICE
 ;ASK TO DISPLAY
 W !!,"This POV has been SNOMED coded and there is map advice available."
 K DIR
 S DIR(0)="Y",DIR("A")="Do you wish to see the Map Advice",DIR("B")=$P($G(^APCDSITE(DUZ(2),0)),U,37) S:DIR("B")="" DIR("B")="Y"
 KILL DA
 D ^DIR KILL DIR
 I $D(DIRUT) Q
 I 'Y Q
 S X=0 F  S X=$O(APCDV(X)) Q:X'=+X  S APCDJ(X,0)=APCDV(X)
 D DISPMAP
 K APCDSMA,APCDSMC
 Q
DISPMAP ;
 NEW APCDHDR
 S APCDHDR="Map Advice for Concept ID "_APCDSMC
 D VIEWR^XBLM("DISPMAP1^APCDSW",APCDHDR)
 Q
DISPMAP1 ;
 W !,"Provider Narrative: "_$$VAL^XBDIQ1(9000010.07,APCDLOOK,.04)
 W !,"FSN: "_$P($$CONC^AUPNVUTL(APCDSMC),U,2)
 W !,"Patient's Age at visit: ",$$AGE^AUPNPAT($$VALI^XBDIQ1(9000010.07,APCDLOOK,.02),$$VD^APCLV($$VALI^XBDIQ1(9000010.07,APCDLOOK,.03)),"E"),"   ",$$VAL^XBDIQ1(2,$$VALI^XBDIQ1(9000010.07,APCDLOOK,.02),.02)
 W !
 NEW X S X=0 F  S X=$O(APCDSMA(X)) Q:X'=+X  W !,APCDSMA(X)
 Q
