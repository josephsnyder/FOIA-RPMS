BGPMUUT5 ;IHS/MSC/MGH - Find lab results for date range ;16-Dec-11 13:21;MMT
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 Q
LAB(DATA,DFN,TAX,BDATE,EDATE,FLG) ; EP
 ;This function is designed to see if the patient has any labs
 ;in the given taxonomy in the date range
 ;
 N LRDFN,MAX,IDT,BGP1,BGP2,CNT,IEN
 S FLG=$G(FLG)
 S IEN=$O(^ATXAX("B",TAX,0))
 Q:IEN=""
 S MAX=9999
 S BGP2=9999999-$P(BDATE,"."),BGP1=9999999-$P(EDATE,".")-.24
 Q:'$D(^DPT(DFN,"LR"))  S LRDFN=+^DPT(DFN,"LR")
 S IDT=BGP1,CNT=0 F  S IDT=$O(^LR(LRDFN,"CH",IDT)) Q:IDT=""!(IDT>BGP2)  D:CNT'>MAX CHSET
 Q
CHSET ;Finds and evaluates chemistry tests
 N CDT,SITE,SPEC,PTR
 S CDT=+^LR(LRDFN,"CH",IDT,0),SITE=$P(^(0),U,5)
 Q:SITE=""
 S SPEC=$P($G(^LAB(61,SITE,0)),U,1),CNT=CNT+1
 S PTR=1 F  S PTR=$O(^LR(LRDFN,"CH",IDT,PTR)) Q:PTR<1  D
 .I FLG="" D NXTST
 .I FLG=1 D NXTCPT
 Q
NXTST ;Visit next node in
 N RESULT,FLAG,TEST,TNM,DESCR,%,THER,UNIT,HI,LO,CIS,LOINC
 S RESULT=$P(^LR(LRDFN,"CH",IDT,PTR),U),FLAG=$P(^(PTR),U,2),CIS=""
 I FLAG["*" S FLAG=$S(FLAG="L*":"LL",FLAG="H*":"HH",1:FLAG)
 S TEST=$O(^LAB(60,"C","CH;"_PTR_";1",0)) Q:TEST'>0
 S TNM=$P(^LAB(60,TEST,0),U,1)
 S LOINC=$P($G(^LAB(60,TEST,1,SITE,95.3)),U,1)
 I LOINC="" S LOINC=$P($G(^LAB(60,TEST,9999999)),U,2)
 Q:LOINC=""
 S %=$P($G(^LAB(95.3,LOINC,0)),U)_"-"_$P($G(^LAB(95.3,LOINC,0)),U,15)
 I $D(^ATXAX(IEN,21,"B",%)) D
 .S DATA(IDT)=RESULT
 Q
NXTCPT ;Get data
 N RESULT,FLAG,TEST,TNM,DESCR,%,THER,UNIT,HI,LO,CIS,CPT
 S RESULT=$P(^LR(LRDFN,"CH",IDT,PTR),U),FLAG=$P(^(PTR),U,2),CIS=""
 I FLAG["*" S FLAG=$S(FLAG="L*":"LL",FLAG="H*":"HH",1:FLAG)
 S TEST=$O(^LAB(60,"C","CH;"_PTR_";1",0)) Q:TEST'>0
 S TNM=$P(^LAB(60,TEST,0),U,1)
 S CPT=$P($G(^LAB(60,TEST,1,SITE,3)),U,1)
 I CPT="" S CPT=$P($G(^LAB(60,TEST,9999999)),U,1)
 Q:CPT=""
 I $D(^ATXAX(IEN,21,"B",CPT)) D
 .S DATA(IDT)=RESULT
 Q
LABCPT(DATA,DFN,TAX,BDATE,EDATE) ; EP
 N FLG
 S FLG=1
 D LAB(.DATA,DFN,TAX,BDATE,EDATE,FLG)
 Q
RHTYPE(DFN) ; EP
 ;This function is designed to see if the patient has RH in blood bank
 ;
 N LRDFN,IDT,RESULT
 S RESULT=0
 Q:'$D(^DPT(DFN,"LR")) 0
 S LRDFN=+^DPT(DFN,"LR")
 S IDT=0 F  S IDT=$O(^LR(LRDFN,"BB",IDT)) Q:IDT=""!+RESULT  D
 .S RESULT=$P($G(^LR(LRDFN,"BB",IDT,11)),U,1)
 .I RESULT'="" S RESULT=1_U_RESULT
 I RESULT="" S RESULT=0
 Q RESULT
ANTI(DFN)  ;EP
 ;Check blood bank for direct coombs
 N LRDFN,IDT,RESULT
 S RESULT=0
 Q:'$D(^DPT(DFN,"LR")) 0
 S LRDFN=+^DPT(DFN,"LR")
 S IDT=0 F  S IDT=$O(^LR(LRDFN,"BB",IDT)) Q:IDT=""!+RESULT  D
 .S RESULT=$P($G(^LR(LRDFN,"BB",IDT,6)),U,1)
 .I RESULT'="" S RESULT=1_U_RESULT
 I RESULT="" S RESULT=0
 Q RESULT
 ;
FTAX(BGPVAL) ;find a taxonomy in BGPMU for the given value
 S ATX="BGPMU" F  S ATX=$O(^ATXAX("B",ATX)) Q:ATX=""  Q:$E(ATX,1,5)'="BGPMU"  D
 .S ATXIEN=$O(^ATXAX("B",ATX,0))
 .I $D(^ATXAX(ATXIEN,21,"B",BGPVAL)) W !,ATX
 Q
MICRO(DFN,BDATE,EDATE,TAX) ;Retuns IEN of Lab test if pt has this LOINC code
 N IEN,CODE,B,E,D,L,G,X,J,START,END,TEST
 S (CODE,B,E,D,L,G,X,J)=""
 S IEN=$O(^ATXAX("B",TAX,0))
 Q:'IEN
 S START=BDATE-1,END=EDATE+1
 S B=9999999-START,E=9999999-END S D=E-1 F  S D=$O(^AUPNVMIC("AE",DFN,D)) Q:D'=+D!(D>B)!(G]"")  D
 .S L=0 F  S L=$O(^AUPNVMIC("AE",DFN,D,L)) Q:L'=+L!(G]"")  D
 ..S X=0 F  S X=$O(^AUPNVMIC("AE",DFN,D,L,X)) Q:X'=+X!(G]"")  D
 ...Q:'$D(^AUPNVMIC(X,0))
 ...S COMPLETE=$P($P($G(^AUPNVMIC(X,0)),U,9),".")
 ...;done in the correct time frame
 ...I (COMPLETE>BDATE!(COMPLETE=BDATE))&((COMPLETE<EDATE)!(COMPLETE=EDATE)) D
 ....S TEST=$P($G(^AUPNVMIC(X,0)),U,1)
 ....S J=$P($G(^LAB(60,TEST,9999999)),U,2) Q:J=""
 ....I $$LOINC2^BGPMUUT2(J,IEN) D
 .....S G=(9999999-D)_U_X Q
 Q G
