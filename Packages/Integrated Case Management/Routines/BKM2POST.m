BKM2POST ;APTIV/HC/ALA-Post Install for version 2.0 ; 28 Jan 2008  5:33 PM
 ;;2.0;HIV MANAGEMENT SYSTEM;;May 29, 2009
 ;
 ;
EN ;Entry point
 NEW DA,DIK
 S DA(1)=1,DA=0,DIK="^BKM(90450,"_DA(1)_",11,"
 F  S DA=$O(^BKM(90450,1,11,DA)) Q:'DA  D ^DIK
 M ^BKM(90450,1,11)=^XTMP("BKM 2.0",11)
 K ^XTMP("BKM 2.0")
 ;
 ; Set up date to inactivate the roll and scroll version of HMS
 NEW BKMHIV,BKMUPD,NM,IEN
 S BKMHIV=$$HIVIEN^BKMIXX3()
 S BKMUPD(90450,BKMHIV_",",.08)=$$DATE^BQIUL1("T+3M")
 S BKMUPD(90450,BKMHIV_",",30)="@"
 S NM="BKM"
 F  S NM=$O(^DIC(19,"B",NM)) Q:NM=""!($E(NM,1,3)'="BKM")  D
 . S IEN=""
 . F  S IEN=$O(^DIC(19,"B",NM,IEN)) Q:IEN=""  D
 .. S BKMUPD(19,IEN_",",2)="@"
 D FILE^DIE("","BKMUPD","ERROR")
 ;
 ; Add new HIV taxonomies
 D ^BKMFTX
 D ^BKMGTX
 ;
LTAX ;  Add Lab Taxonomies to ^ATXLAB
 NEW X,DIC,DLAYGO,DA,DR,DIE,Y,LTAX
 S DIC="^ATXLAB(",DIC(0)="L",DLAYGO=9002228
 ; Loop through the Taxonomies as stored in routine BKMVTAX4.
 D LDLAB(.LTAX)
 F BJ=1:1 Q:'$D(LTAX(BJ))  S X=LTAX(BJ) D
 . I $D(^ATXLAB("B",X)) Q  ; Skip pre-existing Lab taxonomies
 . D ^DIC S DA=+Y
 . I DA<1 Q
 . S BQTXUP(9002228,DA_",",.02)=$P(X," ",2,999)
 . S BQTXUP(9002228,DA_",",.05)=DUZ
 . S BQTXUP(9002228,DA_",",.06)=DT
 . S BQTXUP(9002228,DA_",",.09)=60
 . D FILE^DIE("I","BQTXUP")
 . S BQTXUP(9002228,DA_",",.08)="B"
 . D FILE^DIE("E","BQTXUP")
 ;
 K DA,BJ,BQTXUP
 ;
 ; Update site-defined medication taxonomies
 NEW BGPX,BGPNDCT
 S BGPX="BKMV EI MEDS",BGPNDCT="BKMV EI MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BKMTXB
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BQIBTXD
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKMV II MEDS",BGPNDCT="BKMV II MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BQIBTXL
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BQIBTXE
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKMV MAC PROPH MEDS",BGPNDCT="BKMV MAC PROPH MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BKMTXC
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BQIBTXF
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKMV NNRTI MEDS",BGPNDCT="BKMV NNRTI MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BKMTXD
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BQIBTXG
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKMV NRTI MEDS",BGPNDCT="BKMV NRTI MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BKMTXE
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BQIBTXH
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKMV NRTI/NNRTI MEDS",BGPNDCT="BKMV NRTI/NNRTI MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BQIBTXM
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BQIBTXI
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKMV PCP PROPH MEDS",BGPNDCT="BKMV PCP PROPH MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BKMTXF
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BKMDTXP
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKMV PI MEDS",BGPNDCT="BKMV PI MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BKMTXG
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BQIBTXJ
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKM TB MEDS",BGPNDCT="BKM TB MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BKMTXA
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BKMDTXD
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKMV NRTI COMBO MEDS",BGPNDCT="BKMV NRTI COMBO MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BKMGTXE
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BKMFTXZ
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 S BGPX="BKMV PI BOOSTER MEDS",BGPNDCT="BKMV PI BOOSTER MED NDCS" D
 . I $O(^ATXAX("B",BGPX,""))="" D ^BKMGTXF
 . I $O(^ATXAX("B",BGPNDCT,""))="" D ^BKMGTXC
 . D SITEMED^BQI2POST(BGPX,BGPNDCT)
 ;
TX ; Reset the variable pointer values for the taxonomies
 NEW BQIDA,N,X,IEN,VAL,BQIUPD
 S BQIDA=1
 S N=0
 F  S N=$O(^BQI(90508,BQIDA,10,N)) Q:'N  D
 . S X=$P(^BQI(90508,BQIDA,10,N,0),U,1)
 . S IEN=N_","_BQIDA_","
 . I $P(^BQI(90508,BQIDA,10,N,0),U,5)="T" S VAL=$$STXPT^BQI2POST(X,"L")
 . E  S VAL=$$STXPT^BQI2POST(X,"N")
 . S BQIUPD(90508.03,IEN,.02)=VAL
 I $D(BQIUPD) D FILE^DIE("","BQIUPD","ERROR")
 ;
 NEW REG,N,X,IEN,VAL,BQIUPD,RP
 S REG=0
 F  S REG=$O(^BQI(90507,REG)) Q:'REG  D
 . S N=0
 . F  S N=$O(^BQI(90507,REG,10,N)) Q:'N  D
 .. S X=$P(^BQI(90507,REG,10,N,0),U,1)
 .. S IEN=N_","_REG_","
 .. I $P(^BQI(90507,REG,10,N,0),U,5)="T" S VAL=$$STXPT^BQI2POST(X,"L")
 .. E  S VAL=$$STXPT^BQI2POST(X,"N")
 .. S BQIUPD(90507.01,IEN,.02)=VAL
 . I $D(BQIUPD) D FILE^DIE("","BQIUPD","ERROR")
 . ;
 . S RP=0
 . F  S RP=$O(^BQI(90507,REG,20,RP)) Q:'RP  D
 .. S N=0
 .. F  S N=$O(^BQI(90507,REG,20,RP,10,N)) Q:'N  D
 ... S X=$P(^BQI(90507,REG,20,RP,10,N,0),U,1)
 ... S IEN=N_","_RP_","_REG_","
 ... S TIEN=$O(^BQI(90507,REG,10,"B",X,""))
 ... I $P(^BQI(90507,REG,10,TIEN,0),U,5)="T" S VAL=$$STXPT^BQI2POST(X,"L")
 ... E  S VAL=$$STXPT^BQI2POST(X,"N")
 ... S BQIUPD(90507.03,IEN,.02)=VAL
 . I $D(BQIUPD) D FILE^DIE("","BQIUPD","ERROR")
 ;
 ; Load HMS Supplement in ^APCHSUP
 NEW BKMDATA,BKMI,BKMJ,BKMD,CIEN
 F BKMI=1 S BKMDATA=$P($T(SUP+BKMI),";;",2) D
 . NEW X,DIC,DA,BKMUPD,Y
 . S X=$P(BKMDATA,"|",1)
 . S DIC="^APCHSUP(",DIC(0)="LZ" D ^DIC
 . ; If this is not a new entry, quit
 . I $P(Y,U,3)'=1 Q
 . S DA=+Y
 . S BKMUPD(9001022,DA_",",1100)=$P(BKMDATA,"|",2)
 . D FILE^DIE("E","BKMUPD","ERROR")
 . F BKMJ=1:1 S BKMD=$T(@("S"_BKMI)+BKMJ) Q:BKMD[" Q"  S BKWP(BKMJ)=$P(BKMD,";;",2)
 . D WP^DIE(9001022,DA_",",1200,"","BKWP","ERROR")
 . K BKWP
 ;
 ;Move the comments into the new fields, if site has populated HMS register
 ;  STATUS COMMENTS, DIAGNOSIS COMMENTS, and ETIOLOGY COMMENTS
 S HIEN=0
 F  S HIEN=$O(^BKM(90451,HIEN)) Q:'HIEN  D
 . S RIEN=0
 . F  S RIEN=$O(^BKM(90451,HIEN,1,RIEN)) Q:'RIEN  D
 .. NEW DA,IENS
 .. S DA(1)=HIEN,DA=RIEN,IENS=$$IENS^DILF(.DA)
 .. S PAIRS="1;20^2.7;21^7.5;22"
 .. S FILE=90451.01
 .. D MOVE(FILE,IENS,PAIRS)
 .. S AIEN=0
 .. F  S AIEN=$O(^BKM(90451,HIEN,1,RIEN,40,AIEN)) Q:'AIEN  D
 ... NEW DA,IENS
 ... S DA(2)=HIEN,DA(1)=RIEN,DA=AIEN,IENS=$$IENS^DILF(.DA)
 ... S PAIRS="3;20",FILE=90451.03
 ... D MOVE(FILE,IENS,PAIRS)
 .. S CIEN=0
 .. F  S CIEN=$O(^BKM(90451,HIEN,1,RIEN,50,CIEN)) Q:'CIEN  D
 ... NEW DA,IENS
 ... S DA(2)=HIEN,DA(1)=RIEN,DA=CIEN,IENS=$$IENS^DILF(.DA)
 ... S PAIRS="2;20",FILE=90451.07
 ... D MOVE(FILE,IENS,PAIRS)
 Q
 ;
MOVE(FILE,IENS,PAIRS) ;EP
 NEW FROM,TO,PAIR
 F I=1:1:$L(PAIRS,U) D
 . S PAIR=$P(PAIRS,U,I),FROM=$P(PAIR,";",1),TO=$P(PAIR,";",2)
 . K TEXT
 . S TEXT(1,0)=$$GET1^DIQ(FILE,IENS,FROM,"E")
 . I $G(TEXT(1,0))="" Q
 . D WP^DIE(FILE,IENS,TO,"","TEXT","ERROR")
 Q
 ;
SUP ; Load HMS Supplement in ^APCHSUP
 ;;HMS PATIENT CARE SUPPLEMENT|D EP^BKMVSUP(APCHSPAT)
 Q
 ;
S1 ;;
 ;;The HMS Supplement has been designed to display information
 ;;specifically related to HIV.  You will be able to see, at a glance, the
 ;;relevant labs, related diagnoses, medications and reminders.
 Q
 ;
LDLAB(ARRAY) ;EP - Load site-populated Lab tests
 NEW I,TEXT
 F I=1:1 S TEXT=$P($T(LAB+I),";;",2) Q:TEXT=""  S ARRAY(I)=TEXT
 Q
 ;
LAB ;EP - LAB TESTS (SITE-POPULATED)
 ;;BKM HEP A TAX
 ;;
