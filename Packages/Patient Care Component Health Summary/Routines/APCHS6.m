APCHS6 ; IHS/CMI/LAB - PART 6 OF APCHS -- SUMMARY PRODUCTION COMPONENTS 18 Jun 2008 10:07 AM ; 16 Dec 2015  2:42 PM
 ;;2.0;IHS PCC SUITE;**4,11,12,14**;MAY 14, 2009;Build 12
 ;
 ;
FMH ; ******* FAMILY HISTORY * 9000014 *******
 G FMH^APCHS61
PMH ; ******** PERSONAL HISTORY * 9000013 *******
 ;
 Q:'$D(^AUPNPH("AC",APCHSPAT))
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 ;
 S APCHSDFN="" F APCHSQ=0:0 S APCHSDFN=$O(^AUPNPH("AC",APCHSPAT,APCHSDFN)) Q:APCHSDFN=""  D PHDSP
 ;
PMHX K APCHSDFN,APCHSN,APCHSICD,APCHSICL,APCHSNRQ,APCHSDAT,APCHSDTH
 Q
PHDSP S APCHSN=^AUPNPH(APCHSDFN,0)
 ;S APCHSICD=$P(APCHSN,U,1) D GETICDDX^APCHSUTL
 S APCHSICD=$P(APCHSN,U,1) D GETICDDX^APCHSUTL
 S Y=$P(APCHSN,U,3) X APCHSCVD S APCHSDAT=Y
 S APCHSDTH=$P(APCHSN,U,5) I APCHSDTH]"" S Y=APCHSDTH X APCHSCVD S APCHSDTH=Y
 S APCHSNRQ=$P(APCHSN,U,4)
 D GETNARR^APCHSUTL
 K APCHSDTE S:APCHSDTH]"" APCHSNTE="(onset: "_APCHSDTH_")"
 X APCHSCKP Q:$D(APCHSQIT)  W APCHSDAT S APCHSICL=10 D PRTICD^APCHSUTL
 Q
 ;
HOS ;  HISTORY OF SURGERY * 9000010.08 (V PROCEDURE) & V CPT *******
 K APCHHOSA,APCHHOSC
 I '$D(^AUPNVPRC("AC",APCHSPAT)),'$D(^AUPNVCPT("AC",APCHSPAT)),'$D(^AUPNVTC("AC",APCHSPAT)) G HOSX
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 S APCHSCNT=0
 ;K ^TMP($J,"APCHMPRCTAX") ;IHS/CMI/LAB - ICD SPEED UP
 ;S F=$NA(^TMP($J,"APCHMPRCTAX"))  ;IHS/CMI/LAB - ICD SPEED UP
 ;D BLDTAX^ATXAPI("APCH MINOR SURGICAL PROCS",F,$O(^ATXAX("B","APCH MINOR SURGICAL PROCS",0)))  ;IHS/CMI/LAB - ICD SPEED UP
 ; <DISPLAY>
 S APCHSIVD=0 F  S APCHSIVD=$O(^AUPNVPRC("AA",APCHSPAT,APCHSIVD)) Q:'APCHSIVD  D
 .S APCHSDFN=0 F  S APCHSDFN=$O(^AUPNVPRC("AA",APCHSPAT,APCHSIVD,APCHSDFN)) Q:'APCHSDFN  D
 ..S APCHSICD=$P(^AUPNVPRC(APCHSDFN,0),U)
 ..S APCHSN=^AUPNVPRC(APCHSDFN,0)
 ..D HOSCHK Q:APCHSICD=""
 ..S APCHSCNT=APCHSCNT+1
 ..S APCHCSVD=+^AUPNVSIT($P(APCHSN,U,3),0)\1
 ..D GETICDOP^APCHSUTL
 ..S Y=$P(APCHSN,U,3),Y=+^AUPNVSIT(Y,0)\1 X APCHSCVD S APCHSDAT=Y
 ..S APCHSNRQ=$P(APCHSN,U,4)
 ..I APCHSNRQ D GETNARR^APCHSUTL
 ..I APCHSNRQ="" S APCHSNRQ=$P($$ICDOP^ICDEX($P(APCHSN,U,1),+^AUPNVSIT($P(APCHSN,U,3),0)\1,,"I"),U,5)
 ..S APCHSDS="DATE?" D
 ...S Y=$P(APCHSN,U,6) I Y]"" X APCHSCVD S APCHSDS=Y Q
 ...S Y=(9999999-APCHSIVD) X APCHSCVD S APCHSDS=Y
 ..D GETOPRV
 ..S APCHHOSA(APCHSIVD,"PRC",APCHSDFN)=APCHSDS_U_APCHSNRQ_U_APCHSOP_U_APCHSICD
 ;now go through v cpt
 ;K ^TMP($J,"APCHMCPTTAX")   ;IHS/CMI/LAB - ICD SPEED UP
 ;S F=$NA(^TMP($J,"APCHMCPTTAX"))  ;IHS/CMI/LAB - ICD SPEED UP
 ;D BLDTAX^ATXAPI("APCH HS MAJOR PROCEDURE CPTS",F,$O(^ATXAX("B","APCH HS MAJOR PROCEDURE CPTS",0)))  ;IHS/CMI/LAB - ICD SPEED UP
 S APCHT=$O(^ATXAX("B","APCH HS MAJOR PROCEDURE CPTS",0))
 S APCHCPTI=0 F  S APCHCPTI=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI)) Q:APCHCPTI'=+APCHCPTI  D
 .I '$$ICD^ATXAPI(APCHCPTI,APCHT,1) Q  ;not a cpt wanted on this component  ;IHS/CMI/LAB - ICD SPEED UP
 .;I '$D(^TMP($J,"APCHMCPTTAX",APCHCPTI)) Q  ;NOT A MAJOR ONE  ;IHS/CMI/LAB - ICD SPEED UP
 .S APCHSIVD=0 F  S APCHSIVD=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI,APCHSIVD)) Q:APCHSIVD=""  D
 ..S APCHSIEN=0 F  S APCHSIEN=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI,APCHSIVD,APCHSIEN)) Q:APCHSIEN'=+APCHSIEN  D
 ...S Y=(9999999-APCHSIVD) X APCHSCVD S APCHSDS=Y
 ...S APCHSN=^AUPNVCPT(APCHSIEN,0)
 ...S APCHSICD=$P(APCHSN,U,1)
 ...D GETCPT^APCHSUTL
 ...S APCHSNRQ=$P(APCHSN,U,4)
 ...I APCHSNRQ D GETNARR^APCHSUTL
 ...N APCHSVDT
 ...S APCHSVDT=$P(+^AUPNVSIT($P(APCHSN,U,3),0),".")
 ...I APCHSNRQ="" S APCHSNRQ=$P($$CPT^ICPTCOD($P(APCHSN,U,1),APCHSVDT),U,3)
 ...S APCHHOSA(APCHSIVD,"CPT",APCHSIEN)=APCHSDS_U_APCHSNRQ_U_$S($P($G(^AUPNVCPT(APCHSIEN,12)),U,4):$$VAL^XBDIQ1(9000010.18,APCHSIEN,1204),1:$$VAL^XBDIQ1(9000010.18,APCHSIEN,1202))_U_APCHSICD  ;
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
 .Q:APCHCPTI=""  ;IHS/CMI/LAB - ICD SPEED UP
 .I '$$ICD^ATXAPI(APCHCPTI,APCHT,1) Q  ;not a cpt wanted on this component   ;IHS/CMI/LAB - ICD SPEED UP
 .;I '$D(^TMP($J,"APCHMCPTTAX",APCHCPTI)) Q  ;NOT A MAJOR ONE  ;IHS/CMI/LAB - ICD SPEED UP
 .Q:$D(APCHHOSC(APCHSIVD,"CPT",APCHCPT))
 .;S APCHSNRQ=$P(^ICPT(APCHCPTI,0),U,2)
 .S APCHSNRQ=$P($$CPT^ICPTCOD(APCHCPTI,V),U,3)
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
 ;
 ; now display refusals for icd procedures
 S APCHSFN=80.1,APCHST="PROCEDURE"
 S APCHSS="S %=0,APCHSICD=$P(^AUPNPREF(APCHSI,0),U,6) Q:'APCHSICD  D HOSCHK^APCHS6 I APCHSICD S %=1"
 D DISPREF^APCHS3C
 S APCHSFN=81,APCHST="CPT"
 S APCHSS="S %=0,APCHCPT=$P(^AUPNPREF(APCHSI,0),U,6) Q:'APCHCPT  D HOSCPTCH^APCHS6 S %=1"
 D DISPREF^APCHS3C
HOSX K APCHSFN,APCHSOP,APCHST,APCHSS,APCHSDFN,APCHSICD,APCHSNRQ,APCHSDAT,APCHSDS,APCHSICL,APCHSIVD,APCHSCOD,APCHSCNT,APCHSOPN,APCHSOP,Y
 K APCHHOSA,APCHHOSC
 ;K ^TMP($J,"APCHMCPTTAX"),^TMP($J,"APCHMPRCTAX")
 Q
HOSO ;  HISTORY OF SURGERY * 9000010.08 (V PROCEDURE) *******
 ; <SETUP>
 Q:'$D(^AUPNVPRC("AC",APCHSPAT))
 X APCHSCKP Q:$D(APCHSQIT)  X:'APCHSNPG APCHSBRK
 S APCHSCNT=0
 ; <DISPLAY>
 S APCHSIVD=0 F APCHSQ=0:0 S APCHSIVD=$O(^AUPNVPRC("AA",APCHSPAT,APCHSIVD)) Q:'APCHSIVD  S APCHSDFN=0 F APCHSQ=0:0 S APCHSDFN=$O(^AUPNVPRC("AA",APCHSPAT,APCHSIVD,APCHSDFN)) Q:'APCHSDFN  D HOSDSP Q:$D(APCHSQIT)
 I 'APCHSCNT X APCHSCKP Q:$D(APCHSQIT)  W "Minor procedures are on file but have not been displayed.",!
 ; <CLEANUP>
HOSOX K APCHSDFN,APCHSICD,APCHSNRQ,APCHSDAT,APCHSDS,APCHSICL,APCHSIVD,APCHSCOD,APCHSCNT,APCHSOPN,APCHSOP,Y
 Q
HOSDSP S APCHSN=^AUPNVPRC(APCHSDFN,0)
 S APCHSICD=$P(APCHSN,U,1)
 D HOSCHK Q:APCHSICD=""
 S APCHSCNT=APCHSCNT+1
 S APCHCSVD=+^AUPNVSIT($P(APCHSN,U,3),0)\1
 D GETICDOP^APCHSUTL
 S Y=$P(APCHSN,U,3),Y=+^AUPNVSIT(Y,0)\1 X APCHSCVD S APCHSDAT=Y
 S APCHSNRQ=$P(APCHSN,U,4)
 I APCHSNRQ D GETNARR^APCHSUTL
 I APCHSNRQ="" S APCHSNRQ=$P($$ICDOP^ICDEX($P(APCHSN,U,1),+^AUPNVSIT($P(APCHSN,U,3),0)\1,,"I"),U,5)  ;cmi/anch/maw 8/28/2007 CSV
 S APCHSDS="DATE?",Y=$P(APCHSN,U,6) I Y]"" X APCHSCVD S APCHSDS=Y
 D GETOPRV
 X APCHSCKP Q:$D(APCHSQIT)
 W APCHSDS W ?10,APCHSOP S APCHSNTE="" S APCHSICL=26 D PRTICD^APCHSUTL
 K APCHSOP
 Q
HOSCHK ;PEP - CHECK TO SEE IF A PROCEDURE IS MINOR
 ;IF ^TMP IS THERE USE IT, OTHERWISE USE OLD SLOW CHECK - RETURN BACK TO $$ICD^ATXAPI
 I $$ICD^ATXAPI(APCHSICD,$O(^ATXAX("B","APCH MINOR SURGICAL PROCS",0)),0) S APCHSICD=""
 ;S APCHSCOD=+^ICD0(APCHSICD,0)  cmi/anch/maw
 ;S APCHSCOD=$P($$ICDOP^ICDEX(APCHSICD),U,2)  ;cmi/anch/maw CSV
 ;I APCHSCOD\1>85 S APCHSICD="" Q
 ;I APCHSCOD=69.7 S APCHSICD="" Q
 ;I APCHSCOD\1=23 S APCHSICD="" Q
 ;I APCHSCOD\1=24 S APCHSICD="" Q
 ;I $E(APCHSCOD,1,4)="38.9" S APCHSICD="" Q
 ;I APCHSCOD=73.09 S APCHSICD="" Q
 ;I APCHSCOD="38.29" S APCHSICD="" Q  ;blood draw
 ;I APCHSCOD="57.94" S APCHSICD="" Q  ;insertion of urinary catheter
 Q
GETOPRV ;get Operating Prov
 NEW APCHSOPN
 S APCHSOP=""
 S APCHSOPN=$P(APCHSN,U,11)
 Q:'+APCHSOPN
 S APCHSOP=$E($S($P($G(^AUTTSITE(1,0)),U,22):$P(^VA(200,APCHSOPN,0),U),1:$P(^DIC(16,APCHSOPN,0),U)),1,15) ;provider name
 Q
 ;;
 ;
CPTALL ;EP - display all cpt codes, date limits are applicable
 I '$D(^AUPNVCPT("AA",APCHSPAT)),'$D(^AUPNVTC("AC",APCHSPAT)) Q
 ; <DISPLAY>
 K APCHCPTA
 S APCHCPTI=0 F  S APCHCPTI=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI)) Q:APCHCPTI=""  D
 .S APCHSIVD="" F  S APCHSIVD=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI,APCHSIVD)) Q:APCHSIVD=""!(APCHSIVD>APCHSDLM)  D
 ..S APCHIEN=0 F  S APCHIEN=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI,APCHSIVD,APCHIEN)) Q:APCHIEN'=+APCHIEN  D
 ...S APCHCPT=$$VAL^XBDIQ1(9000010.18,APCHIEN,.01)
 ...S APCHCPTA(APCHSIVD,APCHCPT,APCHIEN)=$P($$CPT^ICPTCOD(APCHCPTI,(9999999-APCHSIVD)),U,3)_U_$$VAL^XBDIQ1(9000010.18,APCHIEN,.16)_U_$$VALI^XBDIQ1(9000010,$P(^AUPNVCPT(APCHIEN,0),U,3),.06)
 ...S Y=$$VALI^XBDIQ1(9000010,$P(^AUPNVCPT(APCHIEN,0),U,3),.08) S $P(APCHCPTA(APCHSIVD,APCHCPT,APCHIEN),U,4)=Y
 ;now get tran codes
 S APCHIEN=0 F  S APCHIEN=$O(^AUPNVTC("AC",APCHSPAT,APCHIEN)) Q:APCHIEN=""  D
 .Q:'$D(^AUPNVTC(APCHIEN))
 .S V=$P(^AUPNVTC(APCHIEN,0),U,3)
 .Q:'V
 .Q:'$D(^AUPNVSIT(V,0))
 .S V=$P($P(^AUPNVSIT(V,0),U),".")
 .S APCHSIVD=9999999-V
 .Q:APCHSIVD>APCHSDLM
 .S APCHCPT=$$VAL^XBDIQ1(9000010.33,APCHIEN,.07)
 .Q:APCHCPT=""
 .S APCHCPTI=$P(^AUPNVTC(APCHIEN,0),U,7)
 .Q:$D(APCHCPTA(APCHSIVD,APCHCPT))
 .S APCHCPTA(APCHSIVD,APCHCPT,APCHIEN)=$P($$CPT^ICPTCOD(APCHCPTI,(9999999-APCHSIVD)),U,3)_U_1_U_$$VALI^XBDIQ1(9000010,$P(^AUPNVTC(APCHIEN,0),U,3),.06)
 .S Y=$$VALI^XBDIQ1(9000010,$P(^AUPNVTC(APCHIEN,0),U,3),.08) S $P(APCHCPTA(APCHSIVD,APCHCPT,APCHIEN),U,4)=Y
 G:'$D(APCHCPTA) CPTALLX
 X APCHSCKP Q:$D(APCHSQIT)
 X:'APCHSNPG APCHSBRK
 S APCHSIVD=0 F  S APCHSIVD=$O(APCHCPTA(APCHSIVD)) Q:APCHSIVD=""!($D(APCHSQIT))  D
 .X APCHSCKP Q:$D(APCHSQIT)  I APCHSNPG W ?28,"CODE",?34,"CPT NARRATIVE",?72,"UNITS",!
 .W $$DATE^APCHSMU((9999999-APCHSIVD))
 .S APCHCPT="" F  S APCHCPT=$O(APCHCPTA(APCHSIVD,APCHCPT)) Q:APCHCPT=""!($D(APCHSQIT))  D
 ..S APCHIEN=0 F  S APCHIEN=$O(APCHCPTA(APCHSIVD,APCHCPT,APCHIEN)) Q:APCHIEN'=+APCHIEN!($D(APCHSQIT))  D
 ...X APCHSCKP Q:$D(APCHSQIT)  I APCHSNPG W ?28,"CODE",?35,"CPT NARRATIVE",?72,"UNITS",!
 ...S %=$P(APCHCPTA(APCHSIVD,APCHCPT,APCHIEN),U,3)
 ...I % W ?9,$P($G(^AUTTLOC(%,0)),U,2)
 ...S %=$P(APCHCPTA(APCHSIVD,APCHCPT,APCHIEN),U,4)
 ...I % W ?22,$P($G(^DIC(40.7,%,9999999)),U)
 ...W ?28,APCHCPT,?35,$E($P(APCHCPTA(APCHSIVD,APCHCPT,APCHIEN),U,1),1,36)
 ...W ?73,$P(APCHCPTA(APCHSIVD,APCHCPT,APCHIEN),U,2)
 ...W !
 ;
 ;display CPT refusals
 S APCHST="CPT",APCHSFN=81 D DISPREF^APCHS3C
 K APCHST,APCHSFN
CPTALLX K APCHSIVD,APCHSDAT,APCHCPT,APCHIEN,APCHCPTA,APCHCPTI
 Q
CPTALLC ;EP - CPT DISPLAY
 S APCHMRO=0
CPTALLC1 ;EP - display all cpt codes, date limits are applicable
 I '$D(^AUPNVCPT("AA",APCHSPAT)),'$D(^AUPNVTC("AC",APCHSPAT)) Q
 ; <DISPLAY>
 K APCHCPTA
 S APCHCPTI=0 F  S APCHCPTI=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI)) Q:APCHCPTI=""  D
 .S APCHSIVD="",APCHSIVC=0 F  S APCHSIVD=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI,APCHSIVD)) Q:APCHSIVD=""!(APCHSIVD>APCHSDLM)  D
 ..S APCHIEN=0 F  S APCHIEN=$O(^AUPNVCPT("AA",APCHSPAT,APCHCPTI,APCHSIVD,APCHIEN)) Q:APCHIEN'=+APCHIEN  D
 ...S APCHCPT=$$VAL^XBDIQ1(9000010.18,APCHIEN,.01)
 ...S APCHCPTA(APCHCPT,APCHSIVD,APCHIEN)=$P($$CPT^ICPTCOD(APCHCPTI,(9999999-APCHSIVD)),U,3)_U_$$VAL^XBDIQ1(9000010.18,APCHIEN,.16)_U_$$VALI^XBDIQ1(9000010,$P(^AUPNVCPT(APCHIEN,0),U,3),.06)
 ...S Y=$$VALI^XBDIQ1(9000010,$P(^AUPNVCPT(APCHIEN,0),U,3),.08) S $P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,4)=Y
 ;now get tran codes
 S APCHIEN=0 F  S APCHIEN=$O(^AUPNVTC("AC",APCHSPAT,APCHIEN)) Q:APCHIEN=""  D
 .Q:'$D(^AUPNVTC(APCHIEN))
 .S V=$P(^AUPNVTC(APCHIEN,0),U,3)
 .Q:'V
 .Q:'$D(^AUPNVSIT(V,0))
 .S V=$P($P(^AUPNVSIT(V,0),U),".")
 .S APCHSIVD=9999999-V
 .Q:APCHSIVD>APCHSDLM
 .S APCHCPT=$$VAL^XBDIQ1(9000010.33,APCHIEN,.07)
 .Q:APCHCPT=""
 .S APCHCPTI=$P(^AUPNVTC(APCHIEN,0),U,7)
 .Q:$D(APCHCPTA(APCHCPT,APCHSIVD))
 .S APCHCPTA(APCHCPT,APCHSIVD,APCHIEN)=$P($$CPT^ICPTCOD(APCHCPTI,(9999999-APCHSIVD)),U,3)_U_1_U_$$VALI^XBDIQ1(9000010,$P(^AUPNVTC(APCHIEN,0),U,3),.06)
 .S Y=$$VALI^XBDIQ1(9000010,$P(^AUPNVTC(APCHIEN,0),U,3),.08) S $P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,4)=Y
 G:'$D(APCHCPTA) CPTALLCX
 X APCHSCKP Q:$D(APCHSQIT)
 X:'APCHSNPG APCHSBRK
 S APCHCPT=0,APCHMRC=0 F  S APCHCPT=$O(APCHCPTA(APCHCPT)) Q:APCHCPT=""!($D(APCHSQIT))  D
 .X APCHSCKP Q:$D(APCHSQIT)  I APCHSNPG W ?1,"CODE",?7,"DATE",?17,"CPT NARRATIVE",?54,"UNITS",?60,"FACILITY",?74,"CLN",!
 .W APCHCPT
 .I APCHMRO D MREDISP Q
 .S APCHSIVD="" F  S APCHSIVD=$O(APCHCPTA(APCHCPT,APCHSIVD)) Q:APCHSIVD=""!($D(APCHSQIT))  D
 ..S APCHMRC=0 S APCHIEN=0 F  S APCHIEN=$O(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN)) Q:APCHIEN'=+APCHIEN!($D(APCHSQIT))  D
 ...X APCHSCKP Q:$D(APCHSQIT)  I APCHSNPG W ?1,"CODE",?7,"DATE",?17,"CPT NARRATIVE",?54,"UNITS",?60,"FACILITY",?74,"CLN",!
 ...S APCHMRC=APCHMRC+1
 ...W ?7,$$DATE^APCHSMU((9999999-APCHSIVD))
 ...W ?17,$E($P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,1),1,35)
 ...W ?54,$P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,2)
 ...S %=$P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,3)
 ...I % W ?60,$P($G(^AUTTLOC(%,0)),U,2)
 ...S %=$P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,4)
 ...I % W ?74,$E($P($G(^DIC(40.7,%,9999999)),U),1,3)
 ...W !
 ;display refusals
 S APCHST="CPT",APCHSFN=81 D DISPREF^APCHS3C
 K APCHST,APCHSFN,APCHMRO
CPTALLCX K APCHSIVD,APCHSDAT,APCHCPT,APCHIEN,APCHCPTA,APCHCPTI
 Q
MREDISP ;
 S APCHSIVD=0,APCHSIVD=$O(APCHCPTA(APCHCPT,APCHSIVD)) D
 .S APCHIEN=0,APCHIEN=$O(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN)) D
 ..X APCHSCKP Q:$D(APCHSQIT)  I APCHSNPG W ?1,"CODE",?7,"DATE",?17,"CPT NARRATIVE",?54,"UNITS",?60,"FACILITY",?74,"CLN",!
 ..W ?7,$$DATE^APCHSMU((9999999-APCHSIVD))
 ..W ?17,$E($P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,1),1,35)
 ..W ?54,$P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,2)
 ..S %=$P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,3)
 ..I % W ?60,$P($G(^AUTTLOC(%,0)),U,2)
 ..S %=$P(APCHCPTA(APCHCPT,APCHSIVD,APCHIEN),U,4)
 ..I % W ?74,$P($G(^DIC(40.7,%,9999999)),U)
 ..W !
 .Q
 Q
CPTMRE ;EP - most recent of each cpt
 S APCHMRO=1
 G CPTALLC1
