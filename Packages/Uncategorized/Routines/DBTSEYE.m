DBTSEYE ;BAO/DMH  pull patient EYE RETINOPATHY [ 11/16/1999  9:10 PM ]
 ;
 ;
 ;
START ;
 ;
EYE(DBTSGBL,DBTSP)          ;dbtsret is return value, dbtsp input value of patient ien
 ;
 ;
TEST ;
 K ^DBTSTEMP(1)
 S DBTSGBL="^DBTSTEMP("_1_")"
 S ARRAY=0
 ;S DBTSP=299
 ;
 D ^XBKVAR
 I DUZ(2)=4526 S DUZ(2)=2348
 S DBTS("LOC")=$P($G(^AUTTLOC(DUZ(2),0)),"^",10)
 I DBTS("LOC")="" S DBTSRET(1)="-1" S ^DBTSTEMP(1,1)="-1"_$C(13)_$C(10) Q
 S DBTS("FN")="9000010.07E"
 S DBTS("IEN")=0
 I '$D(^DBTSEXDI("B","DIABETIC EYE EXAM")) S ^DBTSTEMP(1,1)="-1"_$C(13)_$C(10) Q   ;may want to chg.
EX ;
 S DTCT=0   ;comment out when go with live data
 B  
 F I=1:1 S DBTS("IEN")=$O(^AUPNVPOV("AC",DBTSP,DBTS("IEN"))) Q:+DBTS("IEN")=0  D
 .S REC=$G(^AUPNVPOV(DBTS("IEN"),0))
 .Q:REC=""
 .S DBTS("POV")=$P(REC,"^",1)
 .S DBTS("ICD")=$P($G(^ICD9(DBTS("POV"),0)),"^",1)
 .Q:DBTS("ICD")=""
 .D EYECK Q:DBTS("CFL")="N"
 .S DBTS("STAGE")=$P(REC,"^",5)
 .D STAGE
 .S DBTS("ICDNAME")=$P($G(^ICD9(DBTS("POV"),0)),"^",3)
 .S DBTS("VDFN")=$P(REC,U,3)
 .Q:DBTS("VDFN")=""
 .S DBTS("VREC")=$G(^AUPNVSIT(DBTS("VDFN"),0))
 .Q:DBTS("VREC")=""
 .S DBTS("CL")=$P(DBTS("VREC"),U,8)
 .Q:+DBTS("CL")=0
 .S DBTS("CLCODE")=$P(^DIC(40.7,DBTS("CL"),0),U,2)
 .Q:DBTS("CLCODE")'=18
 .S DBTS("MODDT")=$P(DBTS("VREC"),U,13)
 .S DBTS("V")=$P(DBTS("VREC"),"^",1)
 .Q:DBTS("V")=""
 .S DBTS("V")=$P(DBTS("V"),".",1)
 .Q:DBTS("V")=""
 .S DBTS("DT")=DBTS("V")
 .D DTCHK^DBTSUT
 .Q:$D(DBTS("BADDT"))
 .S DBTS("VDATE")=$E(DBTS("V"),4,5)_"/"_$E(DBTS("V"),6,7)_"/"_($E(DBTS("V"),1,3)+1700)
 .S DBTS("PAT")=DBTSP
 .S DBTS("CN")=$P($G(^AUPNPAT(DBTSP,41,DUZ(2),0)),"^",2)
 .S DBTS("ID")=DBTS("LOC")_"|"_DBTS("FN")_"|"_DBTS("IEN")
 .S DBTS("VID")=DBTS("LOC")_"|9000010|"_DBTS("VDFN")  ;dmh 11-10-99
 .D MODCK
 .Q:DBTS("OK")="N"
 .D NARR
 .I '$D(DBTS("PNAR")) S DBTS("PNAR")=""
 .S ARRAY=ARRAY+1
 .S DBTSRET(ARRAY)=DBTS("ID")_U_DBTS("LOC")_U_DBTS("AU")_U_DBTS("PAT")_U_"EYE"_U_DBTS("ICD")_U_DBTS("ICDNAME")_U_DBTS("VDATE")_U_DBTS("STAGE")_U_DBTS("PNAR")_U_DBTS("VID")
 .S ^DBTSTEMP(1,ARRAY)=DBTSRET(ARRAY)_$C(13)_$C(10)
 .D LOG
 .Q
 I ARRAY=0 S DBTSRET(1)="-2" S ^DBTSTEMP(1,1)="-2"_$C(13)_$C(10)
 I $D(^DBTSPAT(DBTSP,"EYE")) S $P(^DBTSPAT(DBTSP,"EYE"),"^",2)=DT
 Q
EYECK ;
 S DBTS("CFL")="N"
 S DBTS("EYE")=$O(^DBTSEXDI("B","DIABETIC EYE EXAM",0))
 I $D(^DBTSEXDI(DBTS("EYE"),11,"B",DBTS("POV"))) S DBTS("CFL")="Y"
 Q
STAGE ;
 I DBTS("STAGE")="" Q
 I ((DBTS("POV")="250.50")!(DBTS("POV")="362.83")),DBTS("STAGE")'=7 S DBTS("STAGE")="" Q
 I (DBTS("POV")="362.01"),(DBTS("STAGE")>0),(DBTS("STAGE")<4) Q
 I DBTS("POV")="362.01" S DBTS("STAGE")="" Q
 I (DBTS("POV")="362.02"),(DBTS("STAGE")>3),(DBTS("STAGE")<7) Q
 I DBTS("POV")="362.02" S DBTS("STAGE")="" Q
 Q
MODCK ;
 S DBTS("OK")="Y"
 S DBTS("AU")="A"
 ;Q                            ;for testing
 Q:'$D(^DBTSPAT(DBTSP,"EYE"))
 ;I $P(^DBTSPAT(DBTSP,"EYE"),"^",2)="" Q   ;11-16-99
 S DBTS("MREC")=$G(^DBTSPAT(DBTSP,"EYE"))
 Q:DBTS("MREC")=""
 S DBTS("LDFN")=$P(DBTS("MREC"),U,1)
 I $P(^DBTSPAT(DBTSP,"EYE"),"^",2)="" Q   ;11-16-99
 Q:+DBTS("LDFN")<DBTS("IEN")
 S DBTS("LDT")=$P(DBTS("MREC"),U,2)
 I (+DBTS("LDT")>DBTS("MODDT")),(DBTS("LDFN")>DBTS("IEN")) S DBTS("OK")="N" Q
 I (DBTS("LDT")'>DBTS("MODDT")) S DBTS("AU")="U" Q
 S DBTS("OK")="N" Q
 Q
LOG ;  update the patient log for the type of lab test
 I '$D(DT) D ^XBKVAR 
 I '$D(^DBTSPAT(DBTSP)) D
 .K ^DBTSPAT("B",DBTSP)
 .S X=DBTSP,DINUM=X,DIC(0)="XNL",DIC="^DBTSPAT(" D FILE^DICN
 I '$D(^DBTSPAT(DBTSP,"EYE")) S ^DBTSPAT(DBTSP,"EYE")=DBTS("IEN")_"^" Q
 I $G(DBTS("LDFN"))<DBTS("IEN") S $P(^DBTSPAT(DBTSP,"EYE"),"^",1)=DBTS("IEN")
 Q
NARR ;  loop thru all povs for the visit dfn and pull the prov. narr.
 ;   3/24/99
 S DBTS("PNAR")=""
 S POV=0
 F  S POV=$O(^AUPNVPOV("AD",DBTS("VDFN"),POV)) Q:POV=""  D
 .I '$D(^AUPNVPOV(POV,0)) Q
 .S DBTS("PN")=$P(^AUPNVPOV(POV,0),U,4)
 .Q:+DBTS("PN")=0
 .Q:'$D(^AUTNPOV(DBTS("PN"),0))
 .S NARR=$P(^AUTNPOV(DBTS("PN"),0),U,1)
 .I NARR'="" D NARR^DBTSUT
 .I DBTS("PNAR")="" S DBTS("PNAR")=NARR
 .E  S DBTS("PNAR")=DBTS("PNAR")_"  "_NARR
 .Q
 ;S NARR=DBTS("PNAR") D NARR2^DBTSUT S DBTS("PNAR")=NARR
 Q