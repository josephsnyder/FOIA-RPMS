PXRMRPCB ; SLC/PJH - Functions returning REMINDER data ;24-Mar-2006 13:15;MGH
 ;;1.5;CLINICAL REMINDERS;**1004**;Jun 19, 2000
 ;IHS/CIA/MGH - 8/11/05 Patch to use correct field number for education outcomes and standards
 Q
 ;
EDL(ORY,OREM) ;return list of education topics for a reminder
 ; ien^name^print name
 ;
 N DATA,EDIEN,EDNAME,EDPNAM,FIND,ELIST,OCNT,SUB
 S SUB=0,OCNT=0
 F  S SUB=$O(^PXD(811.9,OREM,20,SUB)) Q:'SUB  D
 .S FIND=$P($G(^PXD(811.9,OREM,20,SUB,0)),U)
 .I $P(FIND,";",2)="AUTTEDT(" D EDTP(FIND) Q
 .I $P(FIND,";",2)="PXRMD(811.5," D EDTERM($P(FIND,";")) Q
 Q
 ;
EDTERM(TERM) ;Get any education topics on the reminder term
 N TSUB,TFIND
 S TSUB=0
 F  S TSUB=$O(^PXRMD(811.5,TERM,20,TSUB)) Q:'TSUB  D
 .S TFIND=$P($G(^PXRMD(811.5,TERM,20,TSUB,0)),U) Q:TFIND=""
 .I $P(TFIND,U)["AUTTEDT(" D EDTP(TFIND)
 Q
 ;
EDTP(FIND) ;Get education topic name
 S EDIEN=$P(FIND,";") Q:'EDIEN  Q:$D(ELIST(EDIEN))  S ELIST(EDIEN)=""
 S DATA=$G(^AUTTEDT(EDIEN,0)) Q:DATA=""
 S EDPNAM=$P(DATA,U,4),EDNAME=$P(DATA,U)
 S OCNT=OCNT+1,ORY(OCNT)=EDIEN_U_EDNAME_U_EDPNAM
 Q
 ;
EDU(ORY,OREDU) ;return education details in WP format
 ; display text only
 ;
 N DIC,DR,DA,DIQ
 K ^UTILITY("DIQ1",$J)
 ;IHS/CIA/MGH Field numbers changed to reflect differences in patient education files
 ;S DR=".01;.04;11;12"
 S DR=".01;.04;1101;1102"
 S DIC=9999999.09
 S DA=OREDU
 S DIQ(0)="EN"
 D EN^DIQ1
 ;
 ; Construct output array
 N OCNT,SUB,SUB1,LIT,IC,LITS
 S DIC=9999999.09,OCNT=0
 S LITS="NAME : ;PRINT NAME : ;EDUCATIONAL OUTCOME : ;"
 S LITS=LITS_"EDUCATIONAL STANDARDS : "
 F IC=1:1 S SUB=$P(DR,";",IC),LIT=$P(LITS,";",IC) Q:SUB=""  D
 .S SUB1="",OCNT=OCNT+1,ORY(OCNT)=" "
 .I IC>2 S ORY(OCNT+1)=LIT,LIT="",OCNT=OCNT+2,ORY(OCNT)=" "
 .F  S SUB1=$O(^UTILITY("DIQ1",$J,DIC,OREDU,SUB,SUB1)) Q:SUB1=""  D
 ..S OCNT=OCNT+1
 ..S ORY(OCNT)=LIT_$G(^UTILITY("DIQ1",$J,DIC,OREDU,SUB,SUB1))
 ..S LIT=""
 K ^UTILITY("DIQ1",$J)
 Q
 ;
EDS(ORY,OREDU) ;return education subtopics
 ; ien^name^sub-topic sequence number
 ;
 N DIC,DR,DA,DATA,DIQ,NODE,NULL,OCNT,REF,SUB,TEMP
 N EDIEN,EDNAME,EDSEQ,EDPNAM
 S NULL=1,OCNT=0
 K ^UTILITY("DIQ1",$J)
 F NODE=1:1 D  Q:EDIEN=""
 .S REF=9999999.091001
 .S DR=10
 .S DA(REF)=NODE
 .S DR(REF)=".01;3"
 .S DIC=9999999.09
 .S DA=OREDU
 .S DIQ(0)="EIN"
 .D EN^DIQ1
 .S EDIEN=$G(^UTILITY("DIQ1",$J,REF,NODE,.01,"I"))
 .I EDIEN="" K ^UTILITY("DIQ1",$J) Q
 .S EDNAME=$G(^UTILITY("DIQ1",$J,REF,NODE,.01,"E"))
 .S EDSEQ=$G(^UTILITY("DIQ1",$J,REF,NODE,3,"E")) S:EDSEQ="" EDSEQ=" "
 .S EDPNAM=$P($G(^AUTTEDT(EDIEN,0)),U,4)
 .S TEMP(EDSEQ,EDIEN)=EDIEN_U_EDNAME_U_EDPNAM_U_EDSEQ
 .K ^UTILITY("DIQ1",$J)
 ;Output array in sequence order
 S EDSEQ=""
 F  S EDSEQ=$O(TEMP(EDSEQ)) Q:EDSEQ=""  D
 .S EDIEN=""
 .F  S EDIEN=$O(TEMP(EDSEQ,EDIEN)) Q:EDIEN=""  D
 ..S OCNT=OCNT+1,ORY(OCNT)=TEMP(EDSEQ,EDIEN)
 Q