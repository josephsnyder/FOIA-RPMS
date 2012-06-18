BLRALSR ;DAOU/ALA-Lab Review Signing Report 
 ;;5.2T9;LR;**1018**;Nov 17, 2004
 ;;5.2;LR;**1013,1015**;Nov 18, 2002
 ;
 ;**Program Description**
 ;  This program sets up the data for the report which
 ;  tells who signed for who.
 ;
EN ;
 K Y,BLRNS,BLRABDT,BLRAEDT
 D EN^DDIOL("","","!!")
 S %DT("A")="Select START DATE for Report: ",%DT="AE" D ^%DT
 Q:Y<0!(Y["^")
 S BLRABDT=Y
 S %DT("A")="Select END DATE for Report: ",%DT="AE" D ^%DT
 Q:Y<0!(Y["^")
 S BLRAEDT=Y
 I BLRAEDT<BLRABDT D
 . W !!,"The END DATE is 'LESS' than START DATE"
 . R !,"Press return to continue, or '^' to Quit",BLRNS:DTIME
 Q:$G(BLRNS)[U
 I $D(BLRNS) G EN
 ;
 S BLRABDT=BLRABDT+.000001,BLRAEDT=BLRAEDT+.999999
 ;
 K ^TMP("BLRASIGN",$J),%DT,Y,BLRNS
 S BLRADUZ=DUZ D FND
 ;
 D EN^BLRAL4
 ;
 K BLRA0,BLRACCN,BLRADATA,BLRADT,BLRADTT,BLRADUZ,BLRALINE,BLRALVAR
 K BLRAOPH,BLRAOPNM,BLRAP,BLRAPFL,BLRAPIEN,BLRAPNM,BLRARPHY,BLRVD
 K BLRSS,BLRARPNM,BLRASDTM,BLRASPHY,BLRASPNM,BLRIDT
 Q
FND ;  Find results
 S BLRVD=""
 F  S BLRVD=$O(^LR("BLRA",BLRADUZ,2,BLRVD)) Q:BLRVD=""  D
 . S BLRAP=""
 . F  S BLRAP=$O(^LR("BLRA",BLRADUZ,2,BLRVD,BLRAP)) Q:BLRAP=""  D
 .. ;S BLRIDT=$P(BLRVD,"-",2),BLRSS=$G(^LR("BLRA",BLRADUZ,2,BLRVD,BLRAP))
 .. ;----- BEGIN IHS MODIFICATIONS LR*5.2
 .. S BLRSS=""
 .. F  S BLRSS=$O(^LR("BLRA",BLRADUZ,2,BLRVD,BLRAP,BLRSS)) Q:BLRSS=""  D
 ... S BLRIDT=$P(BLRVD,"-",2)
 ... ;----- END IHS MODIFICATIONS
 ... S BLRA0=$G(^LR(BLRAP,BLRSS,BLRIDT,0)),BLRACCN=$P(BLRA0,U,6)
 ... S BLRADTT=$P(BLRA0,U,1)
 ... S BLRADATA=$G(^LR(BLRAP,BLRSS,BLRIDT,9009027))
 ...;----- BEGIN IHS MODIFICATIONS LR*5.2*1016 IHS TESTING CHANGES
 ...Q:BLRADATA=""
 ...;----- END IHS MODIFICATIONS
 ... ;
 ... S BLRARPHY=$P(BLRADATA,U,2),BLRARPNM=$P($G(^VA(200,BLRARPHY,0)),U,1)
 ... ;
 ... S BLRASPHY=$P(BLRADATA,U,3),BLRASPNM=$P($G(^VA(200,BLRASPHY,0)),U,1)
 ... ;
 ... S BLRAOPH=$P(BLRA0,U,$S(BLRSS="MI":7,1:10)),BLRAOPNM=$P($G(^VA(200,BLRAOPH,0)),U,1)
 ... S BLRAPFL=$P($G(^LR(BLRAP,0)),U,2),BLRAPIEN=$P($G(^(0)),U,3)
 ... S BLRAPNM=$$GET1^DIQ(BLRAPFL,BLRAPIEN,.01,"E")
 ... ;
 ... S BLRASDTM=$P(BLRADATA,U,5)
 ... Q:BLRASDTM<BLRABDT!(BLRASDTM>BLRAEDT)
 ... ;
 ... S ^TMP("BLRASIGN",$J,-BLRVD,BLRAP,BLRSS)=BLRACCN_U_BLRAPNM_U_$$FMTE^XLFDT(BLRADTT,2)_U_BLRARPNM_U_BLRASPNM_U_$$FMTE^XLFDT(BLRASDTM,2)
 Q
