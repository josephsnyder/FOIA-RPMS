BUD9RPTD ; IHS/CMI/LAB - UDS REPORT PROCESSOR ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
 ;
GETV ;EP - get all visits for this patient and tally in BUDTV
 ;^TMP($J,"VISITS") has all visits
 ;^TMP($J,"VISITSLIST") is visit list 1 in the SRD
 ;^TMP($J,"VISITS35") is used for table 3 and 5
 ;^TMP($J,"VISITS6DX") is used for table 6 dxs and includes 2 visits on same day to same provider
 K ^TMP($J)
 S BUDTV=0,BUDT35V=0,BUDT6V=0,BUDMEDV=0,BUDMEDVI=""
 S A="^TMP($J,""VISITS"",",B=DFN_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BUDBD)_"-"_$$FMTE^XLFDT(BUDED),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"VISITS",1)) Q
 S BUDX=0 F  S BUDX=$O(^TMP($J,"VISITS",BUDX)) Q:BUDX'=+BUDX  S BUDVSIT=$P(^TMP($J,"VISITS",BUDX),U,5) D
 .Q:'$D(^AUPNVSIT(BUDVSIT,0))
 .Q:'$P(^AUPNVSIT(BUDVSIT,0),U,9)
 .Q:$P(^AUPNVSIT(BUDVSIT,0),U,11)
 .S BUDVLOC=$P(^AUPNVSIT(BUDVSIT,0),U,6)
 .Q:BUDVLOC=""
 .Q:'$D(^BUDNSITE(BUDSITE,11,BUDVLOC))  ;not valid location
 .Q:"AHSORMEI"'[$P(^AUPNVSIT(BUDVSIT,0),U,7)
 .S BUDCLINC=$$CLINIC^APCLV(BUDVSIT,"C")
 .S BUDTIEN=$O(^BUDNCNTL("B","FIRST LEVEL CLINIC EXCLUSIONS",0))
 .I BUDCLINC]"",$D(^BUDNCNTL(BUDTIEN,11,"B",BUDCLINC)) Q  ;not a clinic code we want in any table
 .;now eliminate subsequent visits to same provider on same day  = item 4 in SRD visit definition
 .S BUDVDATE=$$VD^APCLV(BUDVSIT)
 .S BUDPP=$$PRIMPROV^APCLV(BUDVSIT,"I")
 .I $P(^AUPNVSIT(BUDVSIT,0),U,7)="I" G SET  ;don't count I visits
 .I '$D(^AUPNVPOV("AD",BUDVSIT)) G SET
 .S S=0
 .I BUDPP]"" D
 ..S D=$P($G(^TMP($J,"SAMEPROV",DFN,BUDVDATE,BUDPP)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already had a visit to this provider on this date
 ..S ^TMP($J,"SAMEPROV",DFN,BUDVDATE,BUDPP)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S  ;quit if already had a visit to this provider
 .S BUDPP=$$PRIMPROV^APCLV(BUDVSIT,"D")
 .I BUDPP="" G SET
MEDC .;NOW CHECK FOR MEDICAL CARE, CAN ONLY HAVE 1 PER LOCATION OF ENCOUNTER
 .S S=0
 .S BUDTIEN=$O(^BUDNCNTL("B","MEDICAL CARE LINE NUMBERS",0))
 .;S BUDPP=$$PRIMPROV^APCLV(BUDVSIT,"D")
 .I $E($$VAL^XBDIQ1(9000010,BUDVSIT,.06),1,3)="CHS",BUDPP=15 S BUDLINE=2 G MEDC1
 .S BUDY=$O(^BUDNTFIV("C",BUDPP,0)) I BUDY="" S BUDLINE=35 G MEDC1
 .S BUDLINE=$O(^BUDNTFIV("AA",BUDPP,""))
MEDC1 .S S=0
 .I $D(^BUDNCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"MEDCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a medical care visit on this date
 ..S ^TMP($J,"MEDCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 ..S BUDMEDV=BUDMEDV+1,BUDMEDVI=BUDVSIT
 .Q:S  ;don't count this one, already counted one medical
DENT .;NOW CHECK FOR DENTAL CARE
 .S S=0
 .S BUDTIEN=$O(^BUDNCNTL("B","DENTAL LINE NUMBERS",0))
 .S S=0
 .I $D(^BUDNCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"DENTCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a DENTAL care visit on this date
 ..S ^TMP($J,"DENTCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S  ;don't count this one, already counted one DENTAL
MH .;NOW CHECK FOR MH CARE
 .S S=0
 .S BUDTIEN=$O(^BUDNCNTL("B","MENTAL HEALTH LINE NUMBERS",0))
 .S P=$$PRIMPOV^APCLV(BUDVSIT,"C")
 .I $E(P,1,3)=303!($E(P,1,3)="304")!($E(P,1,3)="305") G SUB
 .S S=0
 .I $D(^BUDNCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"MHCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a MH care visit on this date
 ..S ^TMP($J,"MHCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S  ;don't count this one, already counted one MH
SUB .;
 .S S=0
 .S BUDTIEN=$O(^BUDNCNTL("B","SUBSTANCE LINE NUMBERS",0))
 .S S=0
 .I $D(^BUDNCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"SUBCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a SUB care visit on this date
 ..S ^TMP($J,"SUBCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S  ;don't count this one, already counted one SUBSTANCE
OTH .;can have only 1 in each category
 .S BUDTIEN=$O(^BUDNTFIV("B",22,0))
 .S S=0
 .I $D(^BUDNTFIV(BUDTIEN,11,"B",BUDPP)) D
 ..S D=$P($G(^TMP($J,"OTHSERV",DFN,BUDVDATE,BUDVLOC,BUDPP)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q
 ..S ^TMP($J,"OTHSERV",DFN,BUDVDATE,BUDVLOC,BUDPP)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S
ENAB .;NOW CHECK FOR ENABLING
 .S S=0
 .S BUDTIEN=$O(^BUDNCNTL("B","ENABLING LINE NUMBERS",0))
 .S S=0
 .I $D(^BUDNCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"ENABCARE",DFN,BUDVDATE,BUDVLOC,BUDPP)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a ENABLING care visit on this date
 ..S ^TMP($J,"ENABCARE",DFN,BUDVDATE,BUDVLOC,BUDPP)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S   ;don't count this one, already counted onE ENABLING
SET .S BUDTV=BUDTV+1
 .S ^TMP($J,"VISITSLIST",BUDVSIT)=""  ;USED IN TABLE 6A SERVICES ONLY
 .;NOW get all for table 3A, 3B, 5 AND 6 dxs, same list but include duplicates
 .I '$D(^AUPNVPOV("AD",BUDVSIT)) Q
 .;must have a primary dx other than .9999
 .S Y=$$PRIMPOV^APCLV(BUDVSIT,"C") I Y=".9999" Q
 .;the above make it a "complete" visit
 .S BUDTIEN=$O(^BUDNCNTL("B","CLINIC EXCLUSIONS",0))
 .I BUDCLINC]"",$D(^BUDNCNTL(BUDTIEN,11,"B",BUDCLINC)) Q  ;exclude these clinics
 .Q:"EI"[$P(^AUPNVSIT(BUDVSIT,0),U,7)  ;new in 07 to exclude these from tables 3,5
 .Q:BUDPP=""  ;no primary provider
 .S BUDT35V=BUDT35V+1
 .S ^TMP($J,"VISITS356A",BUDVSIT)=""
 ;now get all mamms and paps in date range and count as orphans if at this facility and no mam on that date in pcc
 Q:BUDT35V=0  ;not a patient of interest
 ;Q:'$D(^BWP(DFN))
 S T="MAMMOGRAM SCREENING",T=$O(^BWPN("B",T,0))
 S T1="MAMMOGRAM DX BILAT",T1=$O(^BWPN("B",T1,0))
 S T2="MAMMOGRAM DX UNILAT",T2=$O(^BWPN("B",T2,0))
 I $$VERSION^XPDUTL("BW")<3  D
 .S (G,V)=0 F  S V=$O(^BWPCD("C",DFN,V)) Q:V=""  D
 ..Q:'$D(^BWPCD(BUDVSIT,0))
 ..S D=$P(^BWPCD(BUDVSIT,0),U,12)
 ..S J=$P(^BWPCD(BUDVSIT,0),U,4) I J=T!(J=T1)!(J=T2) D  Q
 ...Q:D<BUDBD
 ...Q:D>BUDED
 ...Q:$P($G(^BWPCD(BUDVSIT,"PCC")),U,1)]""  ;already in pcc
 ...S L=$P(^BWPCD(BUDVSIT,0),U,10)
 ...Q:L=""
 ...Q:'$D(^BUDNSITE(BUDSITE,11,L))  ;not valid location
 ...S ^TMP($J,"MAMMS",V)="WH "_$$VAL^XBDIQ1(9002086.1,V,.04)_U_$$FMTE^XLFDT(D)
 .Q
 ;;E  D
 ;.S T="MAMMOGRAM SCREENING",T=$O(^BWVPDT("B",T,0))
 ;.S T1="MAMMOGRAM DX BILAT",T1=$O(^BWVPDT("B",T1,0))
 ;.S T2="MAMMOGRAM DX UNILAT",T2=$O(^BWVPDT("B",T2,0))
 ;.S D=$$FINDLSTD^BWVPRD(DFN,T_"^"_T1_"^"_T2,BUDBD,BUDED)
 ;.Q:D=0
 ;.Q:D=""
 ;.;check location here
 ;.S ^TMP($J,"MAMMS",1)="WH MAMMOGRAM "_U_$$FMTE^XLFDT(D)_U_D
 S T="PAP SMEAR",T=$O(^BWPN("B",T,0))
 I $$VERSION^XPDUTL("BW")<3  D
 .S (G,BUDVSIT)=0 F  S BUDVSIT=$O(^BWPCD("C",DFN,BUDVSIT)) Q:BUDVSIT=""  D
 ..Q:'$D(^BWPCD(BUDVSIT,0))
 ..S D=$P(^BWPCD(BUDVSIT,0),U,12)
 ..S J=$P(^BWPCD(BUDVSIT,0),U,4) I J=T D  Q
 ...Q:D<BUDBD
 ...Q:D>BUDED
 ...Q:$P($G(^BWPCD(BUDVSIT,"PCC")),U,1)]""  ;already in pcc
 ...S L=$P(^BWPCD(BUDVSIT,0),U,10)
 ...Q:L=""
 ...Q:'$D(^BUDNSITE(BUDSITE,11,L))  ;not valid location
 ...S ^TMP($J,"PAPS",BUDVSIT)="WH PAP SMEAR"_U_$$FMTE^XLFDT(D)
 .Q
 ;E  D
 ;.S T="PAP SMEAR",T=$O(^BWVPDT("B",T,0))
 ;.S D=$$FINDLSTD^BWVPRD(DFN,T,BUDBD,BUDED)
 ;.Q:D=0
 ;.Q:D=""
 ;.;check location here
 ;.S ^TMP($J,"PAPS",1)="WH PAP SMEAR "_U_$$FMTE^XLFDT(D)_U_D
 ;.S ^DIBT(4370,1,DFN)=""
 ;.Q
 Q
