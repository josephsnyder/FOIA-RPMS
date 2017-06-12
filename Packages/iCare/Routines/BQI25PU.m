BQI25PU ;GDIT/HS/ALA-Update View ; 08 Jan 2015  8:06 AM
 ;;2.5;ICARE MANAGEMENT SYSTEM;**1**;May 24, 2016;Build 17
 ;
 ;
LAY ; Add new patient entries to 90506.1
 NEW BI,BJ,BK,BN,BQIUPD,ERROR,IEN,ND,NDATA,TEXT,VAL,TTEXT,BJJ
 F BI=1:1 S TEXT=$P($T(ARR+BI),";;",2) Q:TEXT=""  D
 . F BJ=1:1:$L(TEXT,"~") D
 .. S NDATA=$P(TEXT,"~",BJ)
 .. S ND=$P(NDATA,"|",1),VAL=$P(NDATA,"|",2)
 .. I ND=0 D
 ... NEW DIC,X,Y
 ... S DIC(0)="LQZ",DIC="^BQI(90506.1,",X=$P(VAL,U,1)
 ... D ^DIC
 ... S IEN=+Y
 ... I IEN=-1 K DO,DD D FILE^DICN S IEN=+Y
 .. I ND=1 S BQIUPD(90506.1,IEN_",",1)=VAL Q
 .. I ND=5 S BQIUPD(90506.1,IEN_",",5)=VAL Q
 .. F BK=1:1:$L(VAL,"^") D
 ... S BN=$O(^DD(90506.1,"GL",ND,BK,"")) I BN="" Q
 ... I $P(VAL,"^",BK)'="" S BQIUPD(90506.1,IEN_",",BN)=$P(VAL,"^",BK) Q
 ... I $P(VAL,"^",BK)="" S BQIUPD(90506.1,IEN_",",BN)="@"
 ... ;
 ... S TTEXT=$T(TIP+BI) Q:TTEXT=" Q"  D
 .... S TTEXT=$P(TTEXT,";;",2) I TTEXT="" Q
 .... F BJJ=1:1:$L(TTEXT,"~") D
 ..... S NDATA=$P(TTEXT,"~",BJJ) I NDATA="" Q
 ..... S ^BQI(90506.1,IEN,4,BJJ,0)=NDATA
 ..... S ^BQI(90506.1,IEN,4,0)="^^"_BJJ_"^"_BJJ
 . D FILE^DIE("","BQIUPD","ERROR")
 ;
 ; Re-Index File
 K ^BQI(90506.1,"AC"),^BQI(90506.1,"AD")
 NEW DIK
 S DIK="^BQI(90506.1,",DIK(1)=3.01
 D ENALL^DIK
 ;
 Q
 ;
TIP ;  Tooltips
 ;;The total number of pregnancies for this patient from the~Reproductive Factors file.~
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;Patient considered Active Clinical by CRS.~
 ;;Patient had 2 DM Visits Ever.~
 ;;Did patient have a DM Diagnosis ever recorded in RPMS.~
 ;;Patient's First DM Diagnosis was before Report Period.~
 ;;Patient had a DM Diagnosis in the Report Period.~
 ;;Patient had 1 DM Visit in Report Period.~
 ;;
 Q
 ;
ARR ; Array
 ;;0|PGGRAV^^Gravida^D^^^^I00002PGGRAV~1|S VAL=$$GRAV^BQIRGPG(DFN)~3|36^^^D^5~5|
 ;;0|LPCLC^^Last PC Visit Location^^^^^T00030LPCLC~1|S VAL=$$LALC^BQIUL2(DFN)~3|1^^Visit Related^O^65~5|
 ;;0|LVLC^^Last Visit Location^^^^^T00030LVLC~1|S VAL=$$LVLC^BQIULPT(DFN)~3|1^^Visit Related^O^64~5|
 ;;0|HCALT^^ALT Test^^^^^T00030HCALT~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Lab^D^4~5|S VAL=$$HLB^BQIRGHPC(DFN,STVW),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|HCANTI^^HCV Antibody Test^^^^^T00030HCANTI~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Lab^D^1~5|S VAL=$$HLB^BQIRGHPC(DFN,STVW),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|HCAST^^AST Test^^^^^T00030HCAST~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Lab^D^3~5|S VAL=$$HLB^BQIRGHPC(DFN,STVW),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|HCFIBRO^^Fibroscan^^^^^T00030HCFIBRO~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Procedure^D^9~5|S VAL=$$FIB^BQIRGHPC(DFN),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|HCGENO^^HCV Genotype Test^^^^^T00030HCGENO~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Lab^D^7~5|S VAL=$$HLB^BQIRGHPC(DFN,STVW),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|HCHEPA^^Hep A^^^^^T00030HCHEPA~1|~3|38^^Immunization^D^12~5|
 ;;0|HCHEPB^^Hep B^^^^^T00030HCHEPB~1|~3|38^^Immunization^D^11~5|
 ;;0|HCHIV^^HIV Test^^^^^T00030HCHIV~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Lab^D^8~5|S VAL=$$HLB^BQIRGHPC(DFN,STVW),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|HCLIVER^^Liver Ultrasound^^^^^T00030HCLIVER~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Procedure^D^10~5|S VAL=$$LU^BQIRGHPC(DFN),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|HCPLAT^^Platelet Test^^^^^T00030HCPLAT~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Lab^D^5~5|S VAL=$$HLB^BQIRGHPC(DFN,STVW),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|HCRNA^^HCV RNA Test^^^^^T00030HCRNA~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Lab^D^2~5|S VAL=$$HLB^BQIRGHPC(DFN,STVW),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|HCVIRAL^^HCV Viral Load Test^^^^^T00030HCVIRAL~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|38^^Lab^D^6~5|S VAL=$$HLB^BQIRGHPC(DFN,STVW),DATE=$P(VAL,U,2),VISIT=$P(VAL,U,3),OTHER=$P(VAL,U,4),VAL=$P(VAL,U,1)
 ;;0|GPACTCL^^CRS Active Clinical^D^^^^T00003GPACTCL~1|S VAL=$$ACTCL^BGP6D1(DFN,$$DATE^BQIUL1("T-12M"),DT)~3|1^^CRS Flag^O^58~5|
 ;;0|GPDM2V^^CRS Two DM Visits^D^^^^T00003GPDM2V~1|S VAL=$$V2DM^BGP6D1(DFN,$$DOB^AUPNPAT(DFN),DT)~3|1^^CRS Flag^O^63~5|
 ;;0|GPDMEV^^CRS DM DX Ever^D^^^^T00003GPDMEV~1|S VAL=$$DM^BGP6D1(DFN,,END)~3|1^^CRS Flag^O^59~5|
 ;;0|GPDMFD^^CRS First DM Dx^D^^^^T00003GPDMFD~1|S VAL=$$FIRSTDM^BGP6D1(DFN,$$DATE^BQIUL1("T-12M"))~3|1^^CRS Flag^O^61~5|
 ;;0|GPDMVYR^^CRS DM DX Report Period^D^^^^T00003GPDMVYR~1|S VAL=$$DM^BGP6D1(DFN,$$DATE^BQIUL1("T-12M"),DT)~3|1^^CRS Flag^O^60~5|
 ;;0|GPDMYV^^CRS One DM Visit^D^^^^T00003GPDMYV~1|S VAL=$$V1DM^BGP6D1(DFN,$$DATE^BQIUL1("T-12M"),DT)~3|1^^CRS Flag^O^62~5|
 ;;0|GPRM^2^Perf Met^O^^^^T00003GPRM^O^^^O^O^^95~1|S VAL=$$GMET^BQIULPT(DFN)~3|1^^Demographics^O^2~5|
 Q
