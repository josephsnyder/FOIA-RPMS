ABMCPTCK ; IHS/SD/SDR - Claim Summary-CPT check ;   
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;
 ; IHS/SD/SDR - v2.5 p9 - task 2
 ;    Created routine to check for existance of CPT codes
 ;    in V files.  Visit DFN (ABMVDFN) and list of CPTs (ABMLIST) must be passed
 ; IHS/SD/SDR - v2.5 p10 - IM20329
 ;   Added Published Entry Point to return list of CPTs on visit
 ;
 ; IHS/SD/SDR - v2.6 CSV
 ;
CPTCHK(ABMVDFN,ABMLIST) ;PEP-Check if CPT codes exist on visit
 Q:$G(ABMVDFN)=""
 S ABMCFLG=0
 D VISIT Q:ABMCFLG=1 ABMCFLG
 D PROC Q:ABMCFLG=1 ABMCFLG
 D PATED Q:ABMCFLG=1 ABMCFLG
 D CPT Q:ABMCFLG=1 ABMCFLG
 D TRANS Q:ABMCFLG=1 ABMCFLG
 D LINEITEM Q:ABMCFLG=1 ABMCFLG
 Q ABMCFLG
CPTLIST(ABMPCDFN) ;PEP-create list of CPTs on visit
 S ABMCPTS=1
 K ABMLIST
 S ABMVDFN=0
 F  S ABMVDFN=$O(^ABMDCLM(DUZ(2),ABMPCDFN,11,ABMVDFN)) Q:+ABMVDFN=0  D
 .D VISIT
 .D PROC
 .D PATED
 .D CPT
 .D TRANS
 .D LINEITEM
 Q ABMCPTS
VISIT ;  note: must be in range 99201-99499 (E&M codes)
 S ABMCFLG=0
 Q:$P($G(^AUPNVSIT(ABMVDFN,0)),U,17)=""
 S ABMICPT=$P($G(^AUPNVSIT(ABMVDFN,0)),U,17)
 I $D(ABMLIST($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))) S ABMCFLG=1  ;CSV-c
 I $G(ABMCPTS)=1 S ABMCPTS($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))=""  ;CSV-c
 Q
PROC ;
 S ABMCFLG=0
 S ABMIEN=0
 F  S ABMIEN=$O(^AUPNVPRC("AD",ABMVDFN,ABMIEN)) Q:+ABMIEN=0  D  Q:ABMCFLG=1
 .Q:$P($G(^AUPNVPRC(ABMIEN,0)),U,16)=""
 .S ABMICPT=$P($G(^AUPNVPRC(ABMIEN,0)),U,16)
 .I $D(ABMLIST($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))) S ABMCFLG=1  ;CSV-c
 .I $G(ABMCPTS)=1 S ABMCPTS($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))=""  ;CSV-c
 Q
PATED ;
 S ABMCFLG=0
 S ABMIEN=0
 F  S ABMIEN=$O(^AUPNVPED("AD",ABMVDFN,ABMIEN)) Q:+ABMIEN=0  D  Q:ABMCFLG=1
 .Q:$P($G(^AUPNVPED(ABMIEN,0)),U,9)=""
 .S ABMICPT=$P($G(^AUPNVPED(ABMIEN,0)),U,9)
 .I $D(ABMLIST($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))) S ABMCFLG=1  ;CSV-c
 .I $G(ABMCPTS)=1 S ABMCPTS($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))=""  ;CSV-c
 Q
CPT ;
 S ABMCFLG=0
 S ABMIEN=0
 F  S ABMIEN=$O(^AUPNVCPT("AD",ABMVDFN,ABMIEN)) Q:+ABMIEN=0  D  Q:ABMCFLG=1
 .Q:$P($G(^AUPNVCPT(ABMIEN,0)),U)=""
 .S ABMICPT=$P($G(^AUPNVCPT(ABMIEN,0)),U)
 .I $D(ABMLIST($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))) S ABMCFLG=1  ;CSV-c
 .I $G(ABMCPTS)=1 S ABMCPTS($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))=""  ;CSV-c
 Q
TRANS ;
 S ABMCFLG=0
 S ABMIEN=0
 F  S ABMIEN=$O(^AUPNVTC("AD",ABMVDFN,ABMIEN)) Q:+ABMIEN=0  D  Q:ABMCFLG=1
 .Q:$P($G(^AUPNVTC(ABMIEN,0)),U,7)=""
 .S ABMICPT=$P($G(^AUPNVTC(ABMIEN,0)),U,7)
 .I $D(ABMLIST($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))) S ABMCFLG=1  ;CSV-c
 .I $G(ABMCPTS)=1 S ABMCPTS($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))=""  ;CSV-c
 Q
LINEITEM ;
 S ABMCFLG=0
 S ABMIEN=0
 F  S ABMIEN=$O(^AUPNVLI("AD",ABMVDFN,ABMIEN)) Q:+ABMIEN=0  D  Q:ABMCFLG=1
 .Q:$P($G(^AUPNVLI(ABMIEN,0)),U,15)=""
 .S ABMICPT=$P($G(^AUPNVLI(ABMIEN,0)),U,15)
 .I $D(ABMLIST($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))) S ABMCFLG=1  ;CSV-c
 .I $G(ABMCPTS)=1 S ABMCPTS($P($$CPT^ABMCVAPI(ABMICPT,ABMP("VDT")),U,2))=""  ;CSV-c
 Q
