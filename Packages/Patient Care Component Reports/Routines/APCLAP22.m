APCLAP22 ; IHS/CMI/LAB - NO DESCRIPTION PROVIDED ;
 ;;2.0;IHS PCC SUITE;**7,11**;MAY 14, 2009;Build 58
 ;
 ;cmi/anch/maw 9/7/2007 code set versioning in DX
 ;
DATE ;EP
 S APCLDATE=$P(APCLODAT,".")
 S X=APCLDATE D H^%DTC S APCLSRT2=$P("SUNDAY;MONDAY;TUESDAY;WEDNESDAY;THURSDAY;FRIDAY;SATURDAY",";",%Y+1) I APCLSRT2="" S APCLSRT2="UNKNOWN"
 Q
CLIN ;EP
 S APCLCLIN=$P(APCLVREC,U,8) I APCLCLIN="" S APCLCLIN="NO CLINIC ENTERED",APCLSRT2="99999" Q
CLIN1 S APCLSRT2=$P(^DIC(40.7,APCLCLIN,0),U,2),APCLCLIN=$P(^DIC(40.7,APCLCLIN,0),U)
 Q
SC ;EP
 K ^UTILITY("DIQ1",$J)
 K DIQ,DIC,DA,DR
 S DIC="^AUPNVSIT(",DR=".07",DA=APCLVDFN,DIQ(0)="E" D EN^DIQ1 K DIC,DA,DR,DIQ
 S APCLCAT=^UTILITY("DIQ1",$J,9000010,APCLVDFN,.07,"E")
 S APCLSRT2=$P(APCLVREC,U,7)
 K ^UTILITY("DIQ1",$J)
 Q
DX ;EP
 S APCLPPOV=$O(^AUPNVPOV("AD",APCLVDFN,""))
 I APCLPPOV="" S APCLDX="NO DIAGNOSIS ENTERED",APCLSRT2="-----" Q
 ;cmi/anch/maw 9/7/2007 mods for code set versioning
 N APCLVDT
 S APCLVDT=+$P($G(^AUPNVSIT(APCLVDFN,0)),".")
 ;cmi/anch/maw 9/7/2007 end of mods
 ;S APCLSRT2=$P(^ICD9($P(^AUPNVPOV(APCLPPOV,0),U),0),U)
 I $P($$ICDDX^ICDEX($P(^AUPNVPOV(APCLPPOV,0),U),APCLVDT),U,1)=-1 S APCLSRT2="?????",APCLDX=$P($$ICDDX^ICDEX($P(^AUPNVPOV(APCLPPOV,0),U),APCLVDT),U,2) Q
 S APCLSRT2=$P($$ICDDX^ICDEX($P(^AUPNVPOV(APCLPPOV,0),U),APCLVDT),U,2)
 ;S APCLDX=$P(^ICD9($P(^AUPNVPOV(APCLPPOV,0),U),0),U,3)
 S APCLDX=$P($$ICDDX^ICDEX($P(^AUPNVPOV(APCLPPOV,0),U),APCLVDT),U,4)
 Q
