ADEUPD8 ;IHS/OIT/ENM - ADE6.0 PATCH 18 [ 09/17/2008  3:43 PM ]
 ;;6.0;ADE;**18**;SEP 17, 2008
 ;
UPDATE(ADEFILE,ADEFLDS,ADEWPFLD,ADEIENST,ADETGRTN,ADESETX) ;EP
 N ADEFDA
 S ADENFLDS=$L(ADEFLDS,","),ADEDONE=0,ADERPEAT=0,ADEN="",ADETXT=0
 F ADEI=1:1 S ADEX=$P($T(@$P(ADETGRTN,"^")+ADEI^@$P(ADETGRTN,"^",2)),";;",2) S:ADEX="***END***" ADEDONE=1 D  Q:ADEDONE
 .I ADEX[U!ADEDONE D  K ADETEXT S ADETXT=0 Q
 ..F  D  Q:ADERPEAT<2
 ...S ADELSTN=ADEN D:ADESETX'="" @ADESETX D:ADELSTN]"" FILE D SETFDA Q
 .Q:$G(ADEWPFLD)=""
 .S ADETXT=ADETXT+1,ADETEXT(ADETXT)=ADEX
 K ADECURX,ADEDONE,ADEI,ADEI1,ADELSTN,ADEN,ADEEND,ADENFLDS,ADERPEAT,ADESVX,ADESTART,ADETXT,ADETEXT,ADEX,ADEX1
 Q
 ;
SETFDA ;EP
 ; Corresponds to values in X: the first is the field that is set with the first piece, etc.  If a value isn't used to set a field
 ; nothing should be entered for that piece; should be left empty e.g. ".01,02,,.09"
 F ADEI1=1:1:ADENFLDS S ADEFLD=$P(ADEFLDS,",",ADEI1) I ADEFLD'="" S ADEX1=$P(ADEX,U,ADEI1) S:ADEX1'="" ADEFDA(ADEFILE,ADEIENST,ADEFLD)=ADEX1
 S ADEN=$P(ADEX,U)
 Q
 ;
FILE ;EP
 D UPDATE^DIE(,"ADEFDA","ADEIEN","ADEEMSG")
 K ADEFDA,ADEEMSG
 ; get the IEN assigned
 I +$G(ADEIEN(1)),$G(ADETEXT(1))'="" D WP^DIE(ADEFILE,ADEIEN(1)_",",ADEWPFLD,,"ADETEXT","ADEEMSG")
 K ADEEMSG,ADEIEN
 Q
 ;
DELETES(ADETGRTN,ADESETX,ADEDIK)       ;EP
 F ADEI=1:1 S ADEX=$P($T(@$P(ADETGRTN,"^")+ADEI^@$P(ADETGRTN,"^",2)),";;",2) Q:ADEX="***END***"  D
 . D:ADESETX'="" @ADESETX
 . I ADEX'="" S DA=ADEX,DIE=ADEDIK,DR=".08////3080917" D ^DIE
 . Q
 Q
