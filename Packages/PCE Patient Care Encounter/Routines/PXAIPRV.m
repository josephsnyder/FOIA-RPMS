PXAIPRV ;ISL/JVS,ESW - SET THE PROVIDER NODES ; 11/25/02 3:36pm
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**5,108**;Aug 12, 1996
 ;
 Q
PRV ;--CREAT PROVIDERS
 ;
SET ;--SET AND NEW VARIABLES
 N AFTER0,AFTER12,AFTER801,AFTER811,AFTER812
 N BEFOR0,BEFOR12,BEFOR801,BEFOR811,BEFOR812
 N PXAA,PXAB,SUB,PIECE,PXAAX,IENB,STOP
 ;
 K PXAERR
 S PXAERR(8)=PXAK
 S PXAERR(7)="PROVIDER"
 ;
 S SUB="" F  S SUB=$O(@PXADATA@("PROVIDER",PXAK,SUB)) Q:SUB=""  D
 .S PXAA(SUB)=@PXADATA@("PROVIDER",PXAK,SUB)
 ;
 ;--VALIDATE ENOUGH DATA
 D VAL^PXAIPRVV Q:$G(STOP)
 ;
SETVARA ;--SET VISIT VARIABLES
 S $P(AFTER0,"^",1)=$G(PXAA("NAME"))
 I $G(PXAA("DELETE")) S $P(AFTER0,"^",1)="@"
 S $P(AFTER0,"^",2)=$G(PATIENT)
 S $P(AFTER0,"^",3)=$G(PXAVISIT)
 S $P(AFTER0,"^",4)=$S($G(PXAA("PRIMARY"))=1:"P",1:"S")
 S $P(AFTER0,"^",5)=$S($G(PXAA("ATTENDING"))=1:"A",$G(PXAA("ATTENDING"))=0:"@",1:"")
 S $P(AFTER811,"^",1)=$G(PXAA("COMMENT"))
 ;
 ;
 S $P(AFTER812,"^",2)=$G(PXAPKG)
 S $P(AFTER812,"^",3)=$G(PXASOURC)
 ;
SETPXKA ;--SET PXK ARRAY AFTER
 S ^TMP("PXK",$J,"PRV",PXAK,0,"AFTER")=AFTER0
 S ^TMP("PXK",$J,"PRV",PXAK,811,"AFTER")=AFTER811
 S ^TMP("PXK",$J,"PRV",PXAK,812,"AFTER")=AFTER812
 ;
SETVARB ;--SET VARIABLES BEFORE
 ;
 ;--CHECK FOR PRIMARY DESIGNATION
 N ITEM,PXBSKY,PXBKY,PXBSAM,PXBCNT,PRVDR,FPRI
 D PRV^PXBGPRV(PXAVISIT,.PXBSKY,.PXBKY,.PXBSAM,.PXBCNT,.PRVDR,.FPRI)
 ;CHECK NAME
 S PXAAX("NAME")=$P($G(^VA(200,$G(PXAA("NAME")),0)),"^",1)
 I '$G(PXAPREDT) D
1 .I $D(PRVDR),$P($G(PRVDR("PRIMARY")),U)'=PXAAX("NAME") S PRI=1
2 .I $G(PRI) S $P(^TMP("PXK",$J,"PRV",PXAK,0,"AFTER"),"^",4)="S"
3 .I $G(PRI),$G(PXAA("NAME"))'["@" D VAL04^PXAIPRVV,ERR^PXAI
4 .I $P(AFTER0,"^",4)="P" S PRI=1
 ;
 ;--GET IEN FOR 'PXK NODE'
 I $G(PXAA("DELETE"))=1 S PXAAX("NAME")=$P($G(^VA(200,PXAA("NAME"),0)),"^",1)
 S ITEM="" I PXBCNT>0,$G(PXAAX("NAME"))]"" S ITEM=$O(PXBKY(PXAAX("NAME"),0))
 I ITEM]"" S (^TMP("PXK",$J,"PRV",PXAK,"IEN"),IENB)=$O(PXBSKY(ITEM,0))
 ;
 I $G(IENB) D
 .F PIECE=0,811,812 S ^TMP("PXK",$J,"PRV",PXAK,PIECE,"BEFORE")=$G(^AUPNVPRV(IENB,PIECE))
 E  D
 .S (BEFOR0,BEFOR811,BEFOR812)=""
 .;
SETPXKB .;--SET PXK ARRAY BEFORE
 .S ^TMP("PXK",$J,"PRV",PXAK,0,"BEFORE")=BEFOR0
 .S ^TMP("PXK",$J,"PRV",PXAK,811,"BEFORE")=BEFOR811
 .S ^TMP("PXK",$J,"PRV",PXAK,812,"BEFORE")=BEFOR812
 .S ^TMP("PXK",$J,"PRV",PXAK,"IEN")=""
 ;
MISC ;--MISCELLANEOUS NODE
 ;
 Q
OTHER   ;---ADD OTHER PROVIDERS TO V PROVIDER FOR OTHER ENTRIES
 ;
 ; generate data, PXBSKY(), about currently filed providers
 ;
 N PXBSKY
 I $G(PXAVISIT) D PRV^PXBGPRV(PXAVISIT,.PXBSKY)
 ;
 N IEN,AFTER0,CNT,PXAK,STOP,FF
 S IEN="",CNT=1000
 ;
 ;---^TMP("PXAIADDPRV",$J,'IEN')=""
 ;
 F  S IEN=$O(^TMP("PXAIADDPRV",$J,IEN)),CNT=CNT+1 Q:IEN=""  D
 .;
 .;verify if an entry for a provider already exists
 .;
 .S STOP=0
 .I $D(^TMP("PXK",$J,"PRV")) S PXAK="" D  Q:STOP
 ..F  S PXAK=$O(^TMP("PXK",$J,"PRV",PXAK)) Q:PXAK=""  D  Q:STOP
 ...I +$G(^TMP("PXK",$J,"PRV",PXAK,0,"AFTER"))=IEN S STOP=1
 .S FF="PXBSKY" F  S FF=$Q(@FF) Q:FF=""  I @FF=IEN S STOP=1 Q
 .Q:STOP
 .;
 .S $P(AFTER0,"^",1)=IEN
 .S $P(AFTER0,"^",2)=$P(^AUPNVSIT(PXAVISIT,0),"^",5)
 .S $P(AFTER0,"^",3)=PXAVISIT
 .S $P(AFTER0,"^",4)="S"
 .S $P(AFTER812,"^",2)=$G(PXAPKG)
 .S $P(AFTER812,"^",3)=$G(PXASOURC)
 .S ^TMP("PXK",$J,"PRV",CNT,0,"AFTER")=$G(AFTER0)
 .S ^TMP("PXK",$J,"PRV",CNT,811,"AFTER")=""
 .S ^TMP("PXK",$J,"PRV",CNT,812,"AFTER")=$G(AFTER812)
 .S ^TMP("PXK",$J,"PRV",CNT,0,"BEFORE")=""
 .S ^TMP("PXK",$J,"PRV",CNT,811,"BEFORE")=""
 .S ^TMP("PXK",$J,"PRV",CNT,811,"BEFORE")=""
 .S ^TMP("PXK",$J,"PRV",CNT,"IEN")=""
 Q
PRIM ;--SET A PROVIDER AS PRIMARY
 N PXBCNT,PXBKY,PXBSAM,PXBSKY,AFTER0,FPRI,PRVDR,PXASOR
 D PRV^PXBGPRV(PXAVISIT,.PXBSKY,.PXBKY,.PXBSAM,.PXBCNT,.PRVDR,.FPRI)
 I $D(PRVDR) Q
 I '$D(PXBSKY) Q
 ;----ADDED
 S PXASOR=$G(^TMP("PXK",$J,"SOR"))
 K ^TMP("PXK",$J)
 S ^TMP("PXK",$J,"SOR")=$G(PXASOR)
 S ^TMP("PXK",$J,"VST",1,"IEN")=PXAVISIT
 ;-------
 ;
 S $P(AFTER0,"^",1)=$P(^AUPNVPRV($O(PXBSKY(1,0)),0),"^",1)
 S $P(AFTER0,"^",2)=$P(^AUPNVSIT(PXAVISIT,0),"^",5)
 S $P(AFTER0,"^",3)=PXAVISIT
 S $P(AFTER0,"^",4)="P"
 S ^TMP("PXK",$J,"PRV",22222,0,"AFTER")=AFTER0
 S ^TMP("PXK",$J,"PRV",22222,0,"BEFORE")=$G(^AUPNVPRV($O(PXBSKY(1,0)),0))
 S ^TMP("PXK",$J,"PRV",22222,"IEN")=$O(PXBSKY(1,0))
 D EN1^PXKMAIN
 K PXRDR
 Q
