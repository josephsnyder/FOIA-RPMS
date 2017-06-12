APCHS6A ; IHS/CMI/LAB - PART 6 OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS PCC SUITE;**11,12,14**;MAY 14, 2009;Build 12
 ;
 ;cmi/anch/maw 8/27/2007 code set versioninig in HOSCHK, HOSDSP, MINOR
 ;
MINORO ; ******** MINOR HISTORY OF SURGERY * 9000010.08 (V PROCEDURE) *******
 ; <SETUP>
 Q:'$D(^AUPNVPRC("AC",APCHSPAT))
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 ; <DISPLAY>
 S APCHSIVD=0 F APCHSQ=0:0 S APCHSIVD=$O(^AUPNVPRC("AA",APCHSPAT,APCHSIVD)) Q:'APCHSIVD  S APCHSDFN=0 F APCHSQ=0:0 S APCHSDFN=$O(^AUPNVPRC("AA",APCHSPAT,APCHSIVD,APCHSDFN)) Q:'APCHSDFN  D HOSDSP Q:$D(APCHSQIT)
 S APCHSFN=80.1,APCHST="PROCEDURE"
 S APCHSS="S %=0,APCHSICD=$P(^AUPNPREF(APCHSI,0),U,6) Q:'APCHSICD  D HOSCHK^APCHS6A I APCHSICD S %=1"
 D DISPREF^APCHS3C
 K APCHSFN,APCHST,APCHSS
 ;
 ; <CLEANUP>
MINOROX K APCHSDFN,APCHSICD,APCHSNRQ,APCHSDAT,APCHSDS,APCHSICL,APCHSIVD,APCHSCOD,APCHSOPN,APCHSOP,Y
 Q
HOSDSP S APCHSN=^AUPNVPRC(APCHSDFN,0)
 S APCHSICD=$P(APCHSN,U,1)
 D HOSCHK Q:APCHSICD=""
 S APCHCSVD=+^AUPNVSIT($P(APCHSN,U,3),0)\1
 D GETICDOP^APCHSUTL
 S Y=$P(APCHSN,U,3),Y=+^AUPNVSIT(Y,0)\1 X APCHSCVD S APCHSDAT=Y
 S APCHSNRQ=$P(APCHSN,U,4)
 ;D GETNARR^APCHSUTL
 I APCHSNRQ D GETNARR^APCHSUTL
 ;I APCHSNRQ="" S APCHSNRQ=$P(^ICD0($P(APCHSN,U,1),0),U,4)  cmi/anch/maw 8/28/2007 orig line
 I APCHSNRQ="" S APCHSNRQ=$P($$ICDOP^ICDEX($P(APCHSN,U,1),+^AUPNVSIT($P(APCHSN,U,3),0)\1,,"I"),U,5)  ;cmi/anch/maw 8/28/2007 code set versioning
 S APCHSDS="DATE?",Y=$P(APCHSN,U,6) I Y]"" X APCHSCVD S APCHSDS=Y
 D GETOPRV
 X APCHSCKP Q:$D(APCHSQIT)
 W APCHSDS W ?10,APCHSOP S APCHSNTE="" S APCHSICL=26 D PRTICD^APCHSUTL
 K APCHSOP
 ;W APCHSDS S APCHSNTE="" S APCHSICL=10 D PRTICD^APCHSUTL
 Q
HOSCHK ;
 ;I $D(^TMP($J,"APCHMPRCTAX")) S:'$D(^TMP($J,"APCHMPRCTAX",APCHSICD)) APCHSICD="" Q
 ;
 ;THE FOLLOWING IS FOR ANYONE CALLING THIS API FROM OUTSIDE THIS ROUTINE. (E.G. BCCD)
 ;S APCHSCOD=$P($$ICDOP^ICDEX(APCHSICD,,,"I"),U,2)  ;cmi/anch/maw 8/27/2007 code set versioning
 I $$ICD^ATXAPI(APCHSICD,$O(^ATXAX("B","APCH MINOR SURGICAL PROCS",0)),0) Q
 ;Q:APCHSCOD\1>85
 ;Q:APCHSCOD=69.7
 ;Q:APCHSCOD\1=23
 ;Q:APCHSCOD\1=24
 S APCHSICD=""
 Q
GETOPRV ;get Operating Provider
 NEW APCHSOPN
 S APCHSOP=""
 S APCHSOPN=$P(APCHSN,U,11)
 Q:'+APCHSOPN
 S APCHSOP=$E($S($P($G(^AUTTSITE(1,0)),U,22):$P(^VA(200,APCHSOPN,0),U),1:$P(^DIC(16,APCHSOPN,0),U)),1,15) ;provider name
 Q
MINOR ; ************* HISTORY OF SURGERY * 9000010.08 (V PROCEDURE) & V CPT *******
 ; <SETUP>
 K APCHHOSA,APCHHOSC
 I '$D(^AUPNVPRC("AC",APCHSPAT)),'$D(^AUPNVCPT("AC",APCHSPAT)) G MINORX
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 S APCHSCNT=0
 ;K ^TMP($J,"APCHMPRCTAX")  ;IHS/CMI/LAB - ICD SPEED UP
 ;S F=$NA(^TMP($J,"APCHMPRCTAX"))  ;IHS/CMI/LAB - ICD SPEED UP
 ;D BLDTAX^ATXAPI("APCH MINOR SURGICAL PROCS",F,$O(^ATXAX("B","APCH MINOR SURGICAL PROCS",0)))  ;IHS/CMI/LAB - ICD SPEED UP
 ; <DISPLAY>
 S APCHSIVD=0 F  S APCHSIVD=$O(^AUPNVPRC("AA",APCHSPAT,APCHSIVD)) Q:'APCHSIVD  D
 .S APCHSDFN=0 F  S APCHSDFN=$O(^AUPNVPRC("AA",APCHSPAT,APCHSIVD,APCHSDFN)) Q:'APCHSDFN  D
 ..S APCHSICD=$P(^AUPNVPRC(APCHSDFN,0),U)
 ..S APCHSN=^AUPNVPRC(APCHSDFN,0)
 ..D HOSCHK Q:APCHSICD=""
 ..S APCHSCNT=APCHSCNT+1
 ..S APCHCSVD=(9999999-APCHSIVD)
 ..D GETICDOP^APCHSUTL
 ..S Y=$P(APCHSN,U,3),Y=+^AUPNVSIT(Y,0)\1 X APCHSCVD S APCHSDAT=Y
 ..S APCHSNRQ=$P(APCHSN,U,4)
 ..I APCHSNRQ D GETNARR^APCHSUTL
 ..;I APCHSNRQ="" S APCHSNRQ=$P(^ICD0($P(APCHSN,U,1),0),U,4)  cmi/anch/maw 8/28/2007 orig line
 ..I APCHSNRQ="" S APCHSNRQ=$P($$ICDOP^ICDEX($P(APCHSN,U,1),APCHCSVD,,"I"),U,5)  ;cmi/anch/maw 8/28/2007 code set versioning
 ..;S APCHSDS="DATE?",Y=$P(APCHSN,U,6) I Y]"" X APCHSCVD S APCHSDS=Y
 ..S APCHSDS="DATE?" D
 ...S Y=$P(APCHSN,U,6) I Y]"" X APCHSCVD S APCHSDS=Y Q
 ...S Y=(9999999-APCHSIVD) X APCHSCVD S APCHSDS=Y
 ..D GETOPRV
 ..S APCHHOSA(APCHSIVD,"PRC",APCHSDFN)=APCHSDS_U_APCHSNRQ_U_APCHSOP
 ;now go through v cpt
 S APCHT=$O(^ATXAX("B","APCH HS MINOR PROCEDURE CPTS",0))
 ;K ^TMP($J,"APCHMCPTTAX")   ;IHS/CMI/LAB - ICD SPEED UP
 ;S F=$NA(^TMP($J,"APCHMCPTTAX"))  ;IHS/CMI/LAB - ICD SPEED UP
 ;D BLDTAX^ATXAPI("APCH HS MINOR PROCEDURE CPTS",F,$O(^ATXAX("B","APCH HS MINOR PROCEDURE CPTS",0)))  ;IHS/CMI/LAB - ICD SPEED UP
 S APCHCPTI=0 F  S APCHCPTI=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI)) Q:APCHCPTI'=+APCHCPTI  D
 .I '$$ICD^ATXAPI(APCHCPTI,APCHT,1) Q  ;not a cpt wanted on this component
 .;Q:'$D(^TMP($J,"APCHMCPTTAX",APCHCPTI))  ;NOT A MINOR CPT
 .S APCHSIVD=0 F  S APCHSIVD=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI,APCHSIVD)) Q:APCHSIVD=""  D
 ..S APCHSIEN=0 F  S APCHSIEN=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI,APCHSIVD,APCHSIEN)) Q:APCHSIEN'=+APCHSIEN  D
 ...S Y=(9999999-APCHSIVD) X APCHSCVD S APCHSDS=Y
 ...S APCHSN=^AUPNVCPT(APCHSIEN,0)
 ...S APCHSICD=$P(APCHSN,U,1)
 ...D GETCPT^APCHSUTL
 ...S APCHSNRQ=$P(APCHSN,U,4)
 ...I APCHSNRQ D GETNARR^APCHSUTL
 ...;cmi/anch/maw 8/28/2007 mods for code set versioning
 ...;I APCHSNRQ="" S APCHSNRQ=$P(^ICPT($P(APCHSN,U,1),0),U,2)
 ...N APCHSVDT
 ...S APCHSVDT=$S($P(APCHSN,U,3):$P(+$G(^AUPNVSIT($P(APCHSN,U,3),0)),"."),1:"")
 ...I APCHSNRQ="" S APCHSNRQ=$P($$CPT^ICPTCOD($P(APCHSN,U,1),APCHSVDT),U,3)
 ...;cmi/anch/maw 8/28/2007 end of mods
 ...S APCHHOSA(APCHSIVD,"CPT",APCHSIEN)=APCHSDS_U_APCHSNRQ_U_$S($P($G(^AUPNVCPT(APCHSIEN,12)),U,4):$$VAL^XBDIQ1(9000010.18,APCHSIEN,1204),1:$$VAL^XBDIQ1(9000010.18,APCHSIEN,1202))_U_APCHSICD
 ...S APCHHOSC(APCHSIVD,"CPT",$P(^ICPT($P(APCHSN,U,1),0),U,1))=""
 ;now get all tran codes hcpcs
 S APCHSIEN=0 F  S APCHSIEN=$O(^AUPNVTC("AC",APCHSPAT,APCHSIEN)) Q:APCHSIEN=""  D
 .Q:'$D(^AUPNVTC(APCHSIEN))
 .S V=$P(^AUPNVTC(APCHSIEN,0),U,3)
 .Q:'V
 .Q:'$D(^AUPNVSIT(V,0))
 .S V=$P($P(^AUPNVSIT(V,0),U),".")
 .S Y=V X APCHSCVD S APCHSDS=Y
 .S APCHSIVD=9999999-V
 .S APCHCPT=$$VAL^XBDIQ1(9000010.33,APCHSIEN,.07)
 .S APCHCPTI=$P(^AUPNVTC(APCHSIEN,0),U,7)
 .;Q:'$D(^TMP($J,"APCHMCPTTAX",APCHCPTI))  ;NOT A MINOR CPT ;IHS/CMI/LAB - ICD SPEED UP
 .I '$$ICD^ATXAPI(APCHCPTI,APCHT,1) Q  ;not a cpt wanted on this component
 .Q:$D(APCHHOSC(APCHSIVD,"CPT",APCHCPT))
 .S APCHSNRQ=$P(^ICPT(APCHCPTI,0),U,2)
 .S APCHSICD=APCHCPTI
 .D GETCPT^APCHSUTL
 .S APCHHOSA(APCHSIVD,"CPT",APCHSIEN)=APCHSDS_U_APCHSNRQ_U_$S($P($G(^AUPNVTC(APCHSIEN,12)),U,4):$$VAL^XBDIQ1(9000010.33,APCHSIEN,1204),1:$$VAL^XBDIQ1(9000010.33,APCHSIEN,1202))_U_APCHSICD
 ;now display the procedures/cpt codes
 S APCHSIVD=0 F  S APCHSIVD=$O(APCHHOSA(APCHSIVD)) Q:APCHSIVD=""!($D(APCHSQIT))  D
 . X APCHSCKP Q:$D(APCHSQIT)
 . S APCHIEN=0 F  S APCHIEN=$O(APCHHOSA(APCHSIVD,"PRC",APCHIEN)) Q:APCHIEN'=+APCHIEN!($D(APCHSQIT))  D
 .. S APCHSOP=$P(APCHHOSA(APCHSIVD,"PRC",APCHIEN),U,3)
 .. S APCHSNRQ=$P(APCHHOSA(APCHSIVD,"PRC",APCHIEN),U,2)
 .. S APCHSDS=$P(APCHHOSA(APCHSIVD,"PRC",APCHIEN),U,1)
 .. S APCHSICD=$P(APCHHOSA(APCHSIVD,"PRC",APCHIEN),U,4)
 .. W APCHSDS,?10,$E(APCHSOP,1,15) S APCHSNTE="" S APCHSICL=26 D PRTICD^APCHSUTL
 . S APCHIEN=0 F  S APCHIEN=$O(APCHHOSA(APCHSIVD,"CPT",APCHIEN)) Q:APCHIEN'=+APCHIEN!($D(APCHSQIT))  D
 .. S APCHSOP=$P(APCHHOSA(APCHSIVD,"CPT",APCHIEN),U,3)
 .. S APCHSNRQ=$P(APCHHOSA(APCHSIVD,"CPT",APCHIEN),U,2)
 .. S APCHSDS=$P(APCHHOSA(APCHSIVD,"CPT",APCHIEN),U,1)
 .. S APCHSICD=$P(APCHHOSA(APCHSIVD,"CPT",APCHIEN),U,4)
 .. W APCHSDS,?10,$E(APCHSOP,1,15) S APCHSNTE="" S APCHSICL=26 D PRTICD^APCHSUTL
 I 'APCHSCNT X APCHSCKP Q:$D(APCHSQIT)  W "Minor procedures are on file but have not been displayed.",!
 ; <CLEANUP>
 ; now display refusals for icd procedures
 S APCHSFN=80.1,APCHST="PROCEDURE"
 S APCHSS="S %=0,APCHSICD=$P(^AUPNPREF(APCHSI,0),U,6) Q:'APCHSICD  D HOSCHK^APCHS6A I APCHSICD S %=1"
 D DISPREF^APCHS3C
 S APCHSFN=81,APCHST="CPT"
 S APCHSS="S %=0,APCHCPT=$P(^AUPNPREF(APCHSI,0),U,6) Q:'APCHCPT  I $$ICD^ATXAPI(APCHCPT,$O(^ATXAX(""B"",""APCH HS MINOR PROCEDURE CPTS"",0)),1) S %=1"
 D DISPREF^APCHS3C
HOSX K APCHSFN,APCHSOP,APCHST,APCHSS,APCHSDFN,APCHSICD,APCHSNRQ,APCHSDAT,APCHSDS,APCHSICL,APCHSIVD,APCHSCOD,APCHSCNT,APCHSOPN,APCHSOP,Y
 K APCHHOSA,APCHHOSC
 ;K ^TMP($J,"APCHMPRCTAX"),^TMP($J,"APCHMCPTTAX")
 Q
MINORX K APCHSFN,APCHSOP,APCHST,APCHSS,APCHSDFN,APCHSICD,APCHSNRQ,APCHSDAT,APCHSDS,APCHSICL,APCHSIVD,APCHSCOD,APCHSCNT,APCHSOPN,APCHSOP,Y
 Q
