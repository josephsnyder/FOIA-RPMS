AGEVINU ; cmi/flag/maw - AGEV Update Insurance Information ; 
 ;;7.1;PATIENT REGISTRATION;;AUG 25,2005
 ;
MCD(AGEVPAT) ;EP - file medicaid data
 S (AGEVMCDE,AGEVMCME)=""
 I AGEVIID="" S AGEVERCD="NOMCDN" X AGEVERR Q
 I AGEVPED="" S AGEVERCD="NOMCDED" X AGEVERR Q
 S AGEVMCD=0
 F  S AGEVMCD=$O(^AUPNMCD("B",AGEVPAT,AGEVMCD)) Q:AGEVMCD=""  D
 . I $P(^AUPNMCD(AGEVMCD,0),U,3)=AGEVIID S AGEVMCDE=AGEVMCD Q
 .Q
 I AGEVMCDE="" D  Q
 . S DIC="^AUPNMCD(",DIC(0)="L",DLAYGO=9000005,X=AGEVPAT
 . S DIC("DR")=".02////"_AGEVICN_";.03///"_AGEVIID_";.04///"_AGEVMST
 . S DIC("DR")=DIC("DR")_";.05///"_AGEVNOI
 . KILL DD,DO
 . D FILE^DICN
 . I Y<0 S AGEVERCD="NOMCD" X AGEVERR Q
 . S AGEVMCDE=+Y
 . S DIC="^AUPNMCD("_AGEVMCDE_",11,",DIC("P")=$P(^DD(9000004,1101,0),U,2)
 . S DIC(0)="L",DA(1)=AGEVMCDE,X=AGEVPED,DIC("DR")=".02///"_AGEVPEXD
 . S DIC("DR")=DIC("DR")_";.03///"_AGEVCT
 . D ^DIC
 . I Y<0 S AGEVERCD="NOMCDM" X AGEVERR Q
 .Q
 S AGEVMCM=0
 F  S AGEVMCM=$O(^AUPNMCD(AGEVMCDE,11,AGEVMCM)) Q:AGEVMCM=""  D
 . S AGEVDATA=$G(^AUPNMCD(AGEVMCDE,11,AGEVMCM,0))
 . I AGEVMCM=AGEVPED,$P(AGEVDATA,U,3)=AGEVCT S AGEVMCME=AGEVMCM Q
 .Q
 Q:'$D(^AUPNMCR(AGEVMCDE,0))
 I AGEVMCME="" D  Q
 . S DIC="^AUPNMCD("_AGEVMCDE_",11,",DIC("P")=$P(^DD(9000004,1101,0),U,2)
 . S DIC(0)="L",DA(1)=AGEVMCDE,X=AGEVPED,DIC("DR")=".02///"_AGEVPEXD
 . S DIC("DR")=DIC("DR")_";.03///"_AGEVCT
 . D ^DIC
 . I Y<0 S AGEVERCD="NOMCDM" X AGEVERR Q
 .Q
 S DIE="^AUPNMCD("_AGEVMCDE_",11,",DA(1)=AGEVMCDE,DA=AGEVMCME
 S DR=".02///"_AGEVPEXD_";.03///"_AGEVCT
 D ^DIE
 I $D(Y) S AGEVERCD="NOUPMCDM" X AGEVERR Q
 Q
 ;
MCR(AGEVPAT) ;EP - file medicare data
 S AGEVMCRE=""
 I AGEVIID="" S AGEVERCD="NOMCRN" X AGEVERR Q
 I AGEVPED="" S AGEVERCD="NOMCRED" X AGEVERR Q
 I '$D(^AUPNMCR(AGEVPAT,0)) D  Q
 . S DIC="^AUPNMCR(",DLAYGO=9000003,X=AGEVPAT,DINUM=X,DIC(0)="L"
 . S DIC("DR")=".02////"_AGEVICN_";.03///"_AGEVIID_";.04///"_AGEVSUF
 . KILL DD,DO
 . D FILE^DICN
 . K DINUM
 . I Y<0 S AGEVERCD="NOMCR" X AGEVERR Q
 . S DIC="^AUPNMCR("_AGEVPAT_",11,",DIC("P")=$P(^DD(9000003,1101,0),U,2)
 . S DIC(0)="L",DA(1)=AGEVPAT,X=AGEVPED
 . S DIC("DR")=".02///"_AGEVPEXD_";.03///"_AGEVCT
 . D ^DIC
 . I Y<0 S AGEVERCD="NOMCRM" X AGEVERR Q
 .Q
 S DIE="^AUPNMCR(",DA=AGEVPAT,DR=".03///"_AGEVIID_";.04///"_AGEVGN
 S DR=DR_";2101///"_AGEVNOI
 D ^DIE
 I $D(Y) S AGEVERCD="NOUPMCR" X AGEVERR Q
 S AGEVMCR=0
 F  S AGEVMCR=$O(^AUPNMCR(AGEVPAT,11,AGEVMCR)) Q:AGEVMCR=""  D
 . S AGEVDATA=$G(^AUPNMCR(AGEVPAT,11,AGEVMCR,0))
 . I $P(AGEVDATA,U)=AGEVPED,$P(AGEVDATA,U,3)=AGEVCT S AGEVMCRE=AGEVMCR Q
 .Q
 Q:'$D(^AUPNMCR(AGEVPAT,0))
 I AGEVMCRE="" D  Q
 . S DIC="^AUPNMCR("_AGEVPAT_",11,",DIC("P")=$P(^DD(9000003,1101,0),U,2)
 . S DIC(0)="L",DA(1)=AGEVPAT,X=AGEVPED
 . S DIC("DR")=".02///"_AGEVPEXD_";.03///"_AGEVCT
 . D ^DIC
 . I Y<0 S AGEVERCD="NOMCRM" X AGEVERR Q
 .Q
 S DIE="^AUPNMCR("_DFN_",11,",DA(1)=AGEVPAT,DA=AGEVMCRE
 S DR=".02///"_AGEVPEXD
 D ^DIE
 I $D(Y) S AGEVERCD="NOUPMCRM" X AGEVERR Q
 Q
 ;
PI(AGEVPAT) ;EP - file private insurance data
 S AGEVPH=""
 I AGEVICN="" S AGEVERCD="NOICN" X AGEVERR Q
 Q:AGEVIID=""
 S AGEVMA=0
 F  S AGEVMA=$O(^AUPN3PPH("D",AGEVIID,AGEVMA)) Q:AGEVMA=""  D
 . I $P(^AUPN3PPH(AGEVMA,0),U,3)=AGEVICNI S AGEVPH=AGEVMA Q
 .Q
 I AGEVPH="" D  Q:$D(AGEVERCD)
 . Q:AGEVNOI=""
 . S DIC="^AUPN3PPH(",X=AGEVNOI,DLAYGO=9000003.1,DIC(0)="L"
 . S DIC("DR")=".03////"_AGEVICN_";.04///"_AGEVIID
 . S DIC("DR")=DIC("DR")_";.09///"_AGEVSTR
 . S DIC("DR")=DIC("DR")_";.11///"_AGEVCTY_";.12///"_AGEVST
 . S DIC("DR")=DIC("DR")_";.13///"_AGEVZP_";.17///"_AGEVPED
 . S DIC("DR")=DIC("DR")_";.18///"_AGEVPEXD
 . KILL DD,D0,DO
 . D FILE^DICN
 . I Y<0 S AGEVERCD="NO3PPH" X AGEVERR Q
 . S AGEVPH=+Y
 .Q
 Q:AGEVNOI=""
 I $D(^AUPNPRVT(AGEVPAT,0)) D UPI^AGEVINU Q
 S DIC="^AUPNPRVT(",DLAYGO=9000006,DIC(0)="L",X=AGEVPAT,DINUM=X
 KILL DD,DO
 D FILE^DICN
 KILL DINUM
 I Y<0 S AGEVERCD="NOPIE" X AGEVERR Q
 S DIC="^AUPNPRVT("_AGEVPAT_",11,"
 S DIC("P")=$P(^DD(9000006,1101,0),U,2),DIC(0)="L",DA(1)=AGEVPAT
 S X="`"_AGEVICN,DIC("DR")=".02///"_AGEVIID_";.04///"_AGEVNOI
 S DIC("DR")=DIC("DR")_";.06///"_AGEVPED_";.07///"_AGEVPEXD
 S DIC("DR")=DIC("DR")_";.08////"_AGEVPH
 D ^DIC
 I Y<0 S AGEVERCD="NOPIEM" X AGEVERR Q
 Q
 ;
UPI ;EP -- update private insurance
 S AGEVPIMM=""
 S AGEVPIM=0
 F  S AGEVPIM=$O(^AUPNPRVT(AGEVPAT,11,AGEVPIM)) Q:AGEVPIM=""  D
 . S AGEVDATA=$G(^AUPNPRVT(AGEVPAT,11,AGEVPIM,0))
 . I $P(AGEVDATA,U)=AGEVICNI,$P(AGEVDATA,U,6)=AGEVPED,$P(AGEVDATA,U,8)=AGEVPH S AGEVPIMM=AGEVPIM Q
 .Q
 I AGEVPIMM="" D  Q
 . S DIC="^AUPNPRVT("_AGEVPAT_",11,"
 . S DIC("P")=$P(^DD(9000006,1101,0),U,2),DIC(0)="L",DA(1)=AGEVPAT
 . S X="`"_AGEVICN,DIC("DR")=".02///"_AGEVIID_";.04///"_AGEVNOI
 . S DIC("DR")=DIC("DR")_";.06///"_AGEVPED_";.07///"_AGEVPEXD
 . S DIC("DR")=DIC("DR")_";.08///"_AGEVPH
 . D ^DIC
 . I Y<0 S AGEVERCD="NOPIEM" X AGEVERR Q
 .Q
 S DIE="^AUPNPRVT("_AGEVPAT_",11,"
 S DIC("P")=$P(^DD(9000006,1101,0),U,2),DA=AGEVPIMM,DA(1)=AGEVPAT
 S DR=".02///"_AGEVIID_";.04///"_AGEVNOI
 S DR=DR_";.07///"_AGEVPEXD
 D ^DIE
 I $D(Y) S AGEVERCD="NOUPIEM" X AGEVERR Q
 Q
 ;
EOJ ;-- kill variables     
 D EN^XBVK("AGEV")  ;should I use this instead
 K AGEVICN,AGEVGN,AGEVGNM,AGEVPED,AGEVPEXD,AGEVNOI,AGEVIDOB,AGEVSTR
 K AGEVCTY,AGEVST,AGEVZP,AGEVISX,AGEVIID,AGEVIT,AGEVMCD,AGEVMCDE,AGEVMCM
 K AGEVMCME,AGEVMCR,AGEVMCRE,AGEVMA,AGEVPH,AGEVICNI
 Q
