BEHOVM4 ;IHS/MSC/MGH - Storing BMI values ;22-Sep-2014 09:41;DU
 ;;1.1;BEH COMPONENTS;**001010**;Sep 18, 2007
 ;=================================================================
BMISAVE(RET,DFN,WT,WTDT,VIEN) ;Store the BMI based on wt
 N VTWT,VTHT,RSWT,RSHT,BMI,AGE,DONE,IEN,EIE,VTBMIP,SEX,BMIPCT,VDT
 S VTWT=$$VTYPE^BEHOVM("WT"),VTHT=$$VTYPE^BEHOVM("HT")
 S VTBMI=$$VTYPE^BEHOVM("BMI"),VTBMIP=$$VTYPE^BEHOVM("BMIP")
 S AGE=$$PTAGE^BGOUTL(DFN,WTDT)
 S SEX=$P(^DPT(DFN,0),U,2)
 Q:AGE<2
 ;S VDT=$$GET1^DIQ(9000010,VIEN,.01,"I")
 S VDT=$$VD^APCLV(VIEN)  ;visit date
 S RSHT=$$LASTHT^APCDBMI(DFN,VDT)
 Q:'$P(RSHT,U,1)
 S RSWT=WT
 S RSWT=RSWT*.45359,RSHT=RSHT*.0254,RSHT=RSHT*RSHT,BMI=RSWT/RSHT
 Q:'+BMI
 D STORE(.RET,VTBMI,BMI)
 I RET=0 D
 .S DATA=0
 .I AGE>1&(AGE<19) D
 ..Q:SEX="U"
 ..S BMIPCT=$$BMIPCT^BEHOVM2(BMI,DFN,WTDT)
 ..I BMIPCT>0 D STORE(.DATA,VTBMIP,BMIPCT)
 ..I DATA=0 S RET=0
 ..E  S RET=DATA
 Q
STORE(DATA,TYPE,VALUE) ;Store the results
 N FDA,BIEN,ERR
 S DATA=0
 S FDA=$NA(FDA(9000010.01,"+1,"))
 S @FDA@(.01)=TYPE
 S @FDA@(.02)=DFN
 S @FDA@(.03)=VIEN
 S @FDA@(.04)=VALUE
 S @FDA@(.07)=$$NOW^XLFDT
 S @FDA@(1204)=DUZ
 S @FDA@(1201)=WTDT
 S @FDA@(1216)=$$NOW^XLFDT
 S @FDA@(1217)=DUZ
 S @FDA@(1218)=$$NOW^XLFDT
 S @FDA@(1219)=DUZ
 D UPDATE^DIE(,"FDA","BIEN","ERR")
 I $D(ERR) S DATA="-1^Unable to store BMI"
 E  S DATA=0
 Q
BLDXRF(VTYP,START,END) ;
 N X,Y,Z,TT,CVISIT,CTYPE,XREF,MDATE,EIE,VIEN
 S X=0
 K ^TMP("BEHOVM",$J,VTYP)
 S XREF="AA"
 F  S X=$O(^AUPNVMSR(XREF,DFN,VTYP,X)) Q:'X  D
 .S VIEN=0 F  S VIEN=$O(^AUPNVMSR(XREF,DFN,VTYP,X,VIEN)) Q:'VIEN  D
 ..S Z=$G(^AUPNVMSR(VIEN,0)),Y=+$G(^(12)),Y=$S(Y:9999999-Y,1:X)
 ..S Y=$S(XREF="AA":Y,1:X)
 ..Q:+Z'=VTYP
 ..Q:$P(Z,U,2)'=DFN
 ..S MDATE=$S(XREF="AA":Y,1:X)
 ..Q:MDATE<START
 ..Q:MDATE>END
 ..;IHS/MSC/MGH  Quit if entered in error
 ..S EIE=$$GET1^DIQ(9000010.01,VIEN,2,"I")
 ..Q:EIE=1
 ..S ^TMP("BEHOVM",$J,VTYP,MDATE,VIEN)=""
 Q
DELBMI(IEN) ;Delete and redo BMI on same visit if wt was in error
 N DFN,VIEN,DATE,VTBMI,MIEN,EVDT,VTBMIP,BEHDATA,RESULT,BEHRESULT
 S BEHRESULT=""
 S VTBMI=$$VTYPE^BEHOVM("BMI"),VTBMIP=$$VTYPE^BEHOVM("BMIP")
 S DFN=$$GET1^DIQ(9000010.01,IEN,.02,"I")
 S VIEN=$$GET1^DIQ(9000010.01,IEN,.03,"I")
 S EVDT=$$GET1^DIQ(9000010.01,IEN,1201,"I")
 S MIEN="" F  S MIEN=$O(^AUPNVMSR("AB",EVDT,MIEN)) Q:MIEN=""  D
 .I $P($G(^AUPNVMSR(MIEN,0)),U,1)=VTBMI D
 ..S BEHDATA=MIEN_U_DUZ_U_"INVALID RECORD"
 ..D EIE^BEHOVM2(.RESULT,BEHDATA)
 .I $P($G(^AUPNVMSR(MIEN,0)),U,1)=VTBMIP D
 ..S BEHDATA=MIEN_U_DUZ_U_"INVALID RECORD"
 ..D EIE^BEHOVM2(.RESULT,BEHDATA)
 Q
DELBMIS(IEN,DFN) ;Delete all BMIs done from this date forward to a newer Ht
 N DFN,VIEN,DATE,VTBMI,MIEN,EVDT,VTBMIP,BEHDATA,VTHT,VTWT,VDT
 N GOODHT,NEXTAFT,NEXTBACK,INVDT
 S VTWT=$$VTYPE^BEHOVM("WT"),VTHT=$$VTYPE^BEHOVM("HT")
 S VTBMI=$$VTYPE^BEHOVM("BMI"),VTBMIP=$$VTYPE^BEHOVM("BMIP")
 S DFN=$$GET1^DIQ(9000010.01,IEN,.02,"I")
 S VIEN=$$GET1^DIQ(9000010.01,IEN,.03,"I")
 S VDT=$$GET1^DIQ(9000010,VIEN,.01,"I")
 S EVDT=$$GET1^DIQ(9000010.01,IEN,1201,"I")
 I EVDT="" S EVDT=VDT
 ;Get the next most recent ht later than the bad one
 S START=DT+1,END=3000101
 S:START<END X=START,START=END,END=X
 S START=9999999-$S(START#1:START,1:START+.9),END=9999999-END
 S RMAX=9999
 D BLDXRF(VTHT,START,END)
 S INVDT=9999999-EVDT
 ;If the ht was replaced, find this one first
 S NEXTAFT=$O(^TMP("BEHOVM",$J,VTHT,INVDT,""))
 I NEXTAFT="" D
 .S INVDT=$O(^TMP("BEHOVM",$J,VTHT,INVDT),-1)
 .I INVDT'="" D
 ..S NEXTAFT=$O(^TMP("BEHOVM",$J,VTHT,INVDT,$C(1)),-1)
 ..S START=$P($G(^AUPNVMSR(NEXTAFT,12)),U,1)+1
 I NEXTAFT'="" S START=$P($G(^AUPNVMSR(NEXTAFT,12)),U,1)+1
 E  S START=DT+1
 ;Get the next most recent ht prior to the bad one
 S INVDT=9999999-EVDT
 S INVDT=$P(EVDT,".",1)
 S INVDT=$O(^TMP("BEHOVM",$J,VTHT,INVDT)) D
 .I INVDT'="" D
 ..S NEXTBACK=$O(^TMP("BEHOVM",$J,VTHT,INVDT,""))
 ..I NEXTBACK'=""  D
 ...S GOODHT=$$GET1^DIQ(9000010.01,NEXTBACK,.04)
 ...S END=$P($G(^AUPNVMSR(NEXTBACK,12)),U,1)
 ..I NEXTBACK="" S END=3000101
 .E  S END=3000101
 ;Get a listing of all the BMI's more recent than the bad one and prior to the good one
 S:START<END X=START,START=END,END=X
 S START=9999999-$S(START#1:START,1:START+.9),END=9999999-END
 S RMAX=9999
 D BLDXRF(VTBMIP,START,END),CHECK(VTBMIP,START,END)
 D BLDXRF(VTBMI,START,END),CHECK(VTBMI,START,END)
 ;If there is a good height, find WT for this visit and redo the item
 I +GOODHT D ADDBACK(VIEN,GOODHT,START,END)
 Q
CHECK(ITEM,START,END) ;
 ;Now loop through all the BAD BMIs and mark them EIE
 N IDT,VIEN,BEHDATA
 S IDT="" F  S IDT=$O(^TMP("BEHOVM",$J,ITEM,IDT)) Q:'IDT  D
 .S VIEN=$C(1)
 .F  S VIEN=$O(^TMP("BEHOVM",$J,ITEM,IDT,VIEN),-1) Q:VIEN=""  D
 ..S BEHDATA=VIEN_U_DUZ_U_4
 ..D EIE^BEHOVM2(.RESULT,BEHDATA)
 Q
ADDBACK(VMIEN,HT,START,END) ;
 ;Find all the weights in this same date range and redo the BMIs
 N VTWT,IDT,VIEN,VST,RET
 S VTWT=$$VTYPE^BEHOVM("WT")
 D BLDXRF(VTWT,START,END)
 S IDT="" F  S IDT=$O(^TMP("BEHOVM",$J,VTWT,IDT)) Q:'IDT  D
 .S VIEN=$C(1)
 .F  S VIEN=$O(^TMP("BEHOVM",$J,VTWT,IDT,VIEN),-1) Q:'VIEN  D
 ..S WT=$P($G(^AUPNVMSR(VIEN,0)),U,4),WTDT=$P($G(^AUPNVMSR(VIEN,12)),U,1)
 ..S VST=$P($G(^AUPNVMSR(VIEN,0)),U,3)
 ..D BMISAVE(.RET,DFN,WT,WTDT,VST)
 Q
