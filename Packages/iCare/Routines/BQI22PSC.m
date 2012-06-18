BQI22PSC ;VNGT/HS/ALA-PostInstall Conversion ; 21 Mar 2011  2:39 PM
 ;;2.2;ICARE MANAGEMENT SYSTEM;;Jul 28, 2011;Build 37
 ;
EN ;EP - Entry Point
 ; Description
 ;   For each user and their panels,  recalculate the parameter string with the new format for visit data
 ;   and then file it using the BQI SET PANEL FILTERS RPC
 ; 
 NEW OWNR,PLIEN
 S OWNR=0
 I $D(^BQICARE(.5)) K ^BQICARE(.5)
 F  S OWNR=$O(^BQICARE(OWNR)) Q:'OWNR  D
 . S PLIEN=0
 . F  S PLIEN=$O(^BQICARE(OWNR,1,PLIEN)) Q:'PLIEN  D
 .. D PAR(OWNR,PLIEN)
 Q
 ;
PAR(COWNR,CPLIEN) ; Set up PARMS String
 NEW DA,IENS,FSOURCE,PPIEN,PTYP,N,NN,PARMS,MPARMS,NPARM,AN,ASN,ASPM
 NEW ATYP,BMXSEC,MASP,MM,MSN,NM,DATA,OKAY,PM,PRVAL,VM
 NEW CPARMS
 S DA(1)=COWNR,DA=CPLIEN,IENS=$$IENS^DILF(.DA)
 S FSOURCE=$$GET1^DIQ(90505.01,IENS,.14,"E")
 ;
 ; Find definition
 I FSOURCE="" Q
 S PPIEN=$$PP^BQIDCDF(FSOURCE) I PPIEN=-1 S BMXSEC="Pre-defined panel type "_FSOURCE_" was not found" Q
 ;
 S N=0,PARMS="",MPARMS="",OKAY=0
 I FSOURCE="FILTER",$G(^BQICARE(COWNR,1,CPLIEN,15,0))="" D  Q
 . NEW DIK,DA
 . S DA(1)=COWNR,DA=CPLIEN,DIK="^BQICARE("_DA(1)_",1,"
 . D ^DIK
 F  S N=$O(^BQICARE(COWNR,1,CPLIEN,15,N)) Q:'N  D
 . NEW DA,IENS
 . S DA(2)=COWNR,DA(1)=CPLIEN,DA=N,IENS=$$IENS^DILF(.DA)
 . S NAME=$$GET1^DIQ(90505.115,IENS,.01,"E")
 . I NAME="NUMVIS"!(NAME="CLIN")!(NAME="PROV") S OKAY=1
 . S PTYP=$$PTYP^BQIDCDF(FSOURCE,NAME)
 . S FILTER(N)=NAME
 . I '$D(^BQICARE(COWNR,1,CPLIEN,15,N,1)) D  Q
 .. NEW DA,IENS,NAME,VALUE
 .. S DA(2)=COWNR,DA(1)=CPLIEN,DA=N,IENS=$$IENS^DILF(.DA)
 .. I PTYP="T" S VALUE=$$GET1^DIQ(90505.115,IENS,.03,"E")
 .. I PTYP'="T" S VALUE=$$GET1^DIQ(90505.115,IENS,.02,"E")
 .. I PTYP="D" S VALUE=$$FMTE^BQIUL1(VALUE)
 .. S FILTER(N,1)=VALUE
 .. ; Check for associated parameters
 .. S ASN=0
 .. F  S ASN=$O(^BQICARE(COWNR,1,CPLIEN,15,N,2,ASN)) Q:'ASN  D
 ... NEW DA,IENS,ASSOC,AVALUE,VALUE
 ... S DA(3)=COWNR,DA(2)=CPLIEN,DA(1)=N,DA=ASN,IENS=$$IENS^DILF(.DA)
 ... S ASSOC=$$GET1^DIQ(90505.1152,IENS,.01,"E")
 ... S ATYP=$$PTYP^BQIDCDF(FSOURCE,ASSOC)
 ... S FILTER(N,1,ASN)=ASSOC
 ... I '$D(^BQICARE(COWNR,1,CPLIEN,15,N,2,ASN,1)) D  Q
 .... I ATYP="T" S VALUE=$$GET1^DIQ(90505.1152,IENS,.03,"E")
 .... I ATYP'="T" S VALUE=$$GET1^DIQ(90505.1152,IENS,.02,"E")
 .... I ATYP="D" S VALUE=$$FMTE^BQIUL1(VALUE)
 .... S FILTER(N,1,ASN,1)=VALUE
 ... S MSN=0
 ... F  S MSN=$O(^BQICARE(COWNR,1,CPLIEN,15,N,2,ASN,1,MSN)) Q:'MSN  D
 .... NEW DA,IENS,VALUE
 .... S DA(4)=COWNR,DA(3)=CPLIEN,DA(2)=N,DA(1)=ASN,DA=MSN,IENS=$$IENS^DILF(.DA)
 .... I ATYP="T" S VALUE=$$GET1^DIQ(90505.11521,IENS,.02,"E")
 .... I ATYP'="T" S VALUE=$$GET1^DIQ(90505.11521,IENS,.01,"E")
 .... I ATYP="D" S VALUE=$$FMTE^BQIUL1(VALUE)
 .... S FILTER(N,1,ASN,MSN)=VALUE
 . ;
 . S NN=0
 . F  S NN=$O(^BQICARE(COWNR,1,CPLIEN,15,N,1,NN)) Q:'NN  D
 .. NEW DA,IENS,VALUE
 .. S DA(3)=COWNR,DA(2)=CPLIEN,DA(1)=N,DA=NN,IENS=$$IENS^DILF(.DA)
 .. I PTYP="T" S VALUE=$$GET1^DIQ(90505.1151,IENS,.02,"E")
 .. I PTYP'="T" S VALUE=$$GET1^DIQ(90505.1151,IENS,.01,"E")
 .. I PTYP="D" S VALUE=$$FMTE^BQIUL1(VALUE)
 .. S FILTER(N,NN)=VALUE
 .. ; Check for associated parameters
 .. S ASN=0
 .. F  S ASN=$O(^BQICARE(COWNR,1,CPLIEN,15,N,1,NN,2,ASN)) Q:'ASN  D
 ... NEW DA,IENS,ASSOC,AVALUE,VALUE
 ... S DA(4)=COWNR,DA(3)=CPLIEN,DA(2)=N,DA(1)=NN,DA=ASN,IENS=$$IENS^DILF(.DA)
 ... S ASSOC=$$GET1^DIQ(90505.11512,IENS,.01,"E")
 ... S ATYP=$$PTYP^BQIDCDF(FSOURCE,ASSOC)
 ... S FILTER(N,NN,ASN)=ASSOC
 ... I '$D(^BQICARE(COWNR,1,CPLIEN,15,N,1,NN,2,ASN,1)) D  Q
 .... I ATYP="T" S VALUE=$$GET1^DIQ(90505.11512,IENS,.03,"E")
 .... I ATYP'="T" S VALUE=$$GET1^DIQ(90505.11512,IENS,.02,"E")
 .... I ATYP="D" S VALUE=$$FMTE^BQIUL1(VALUE)
 .... S FILTER(N,NN,ASN,1)=VALUE
 ... S MSN=0
 ... F  S MSN=$O(^BQICARE(COWNR,1,CPLIEN,15,N,1,NN,2,ASN,1,MSN)) Q:'MSN  D
 .... NEW DA,IENS,VALUE
 .... S DA(5)=COWNR,DA(4)=CPLIEN,DA(3)=N,DA(2)=NN,DA(1)=ASN,DA=MSN,IENS=$$IENS^DILF(.DA)
 .... I ATYP="T" S VALUE=$$GET1^DIQ(90505.115121,IENS,.02,"E")
 .... I ATYP'="T" S VALUE=$$GET1^DIQ(90505.115121,IENS,.01,"E")
 .... I ATYP="D" S VALUE=$$FMTE^BQIUL1(VALUE)
 .... S FILTER(N,NN,ASN,MSN)=VALUE
 ;
 I 'OKAY K FILTER Q
 ; Recreate PARMS string if panel definition contains visit detail
 D PAS(1)
 I $D(FILTER) D PAS(2)
 S PARMS=$$TKO^BQIUL1(PARMS,$C(28))
 S PM=""
 F  S PM=$O(FILTER(PM)) Q:PM=""  D
 . S NAME=FILTER(PM)
 . I NAME="PROV" D
 .. S VM=1,PRVAL=NAME_"="_FILTER(PM,VM)
 .. I PARMS'["RANGE",PARMS'["FROM" D
 ... I $E(PARMS,$L(PARMS))'=$C(28),PARMS'="" S PARMS=PARMS_$C(28)_"RANGE=Ever"_$C(28) Q
 ... S PARMS=PARMS_"RANGE=Ever"_$C(28)
 .. I PARMS'["NUMVIS" D
 ... I $E(PARMS,$L(PARMS))'=$C(28),PARMS'="" S PARMS=PARMS_$C(28)_"NUMVIS='<1" Q
 ... S PARMS=PARMS_"NUMVIS='<1"
 .. S PARMS=PARMS_$C(25)_PRVAL
 . I NAME="CLIN" D
 .. S VM=""
 .. F  S VM=$O(FILTER(PM,VM)) Q:VM=""  D
 ... S PARMS=PARMS_$C(25)_NAME_"="_FILTER(PM,VM)_$C(29)
 ... I $O(FILTER(PM,VM))'="" S PARMS=PARMS_NPARM
 .. S PARMS=$$TKO^BQIUL1(PARMS,$C(29))
 S CPARMS=$$TKO^BQIUL1(PARMS,$C(29))
 K FILTER,PARMS,NPARM,ADA,ADTM,ASSOC,AVAL,NAME,FNAME,MDA,Y
 D CON^BQIPLFL(.DATA,COWNR,CPLIEN,CPARMS)
 Q
 ;
PAS(PS) ; Build PARMS from each pass
 S PM=""
 F  S PM=$O(FILTER(PM)) Q:PM=""  D
 . S NAME=FILTER(PM)
 . I PS=1,NAME="PROV"!(NAME="CLIN")!(NAME="NUMVIS") Q
 . I PS=2,NAME="PROV"!(NAME="CLIN") Q
 . ;I PS=3 S PARMS=PARMS_$S($E(PARMS,$L(PARMS),$L(PARMS))'=$C(25):$C(25),1:"")
 . S PARMS=$G(PARMS)_NAME_"="
 . S VM=""
 . F  S VM=$O(FILTER(PM,VM)) Q:VM=""  D
 .. S AN=""
 .. F  S AN=$O(FILTER(PM,VM,AN)) Q:AN=""  D
 ... S MM="",MASP=""
 ... F  S MM=$O(FILTER(PM,VM,AN,MM)) Q:MM=""  D
 .... S MASP=$G(MASP)_FILTER(PM,VM,AN,MM)_$C(24)
 ... S MASP=$$TKO^BQIUL1(MASP,$C(24))
 ... S ASPM=FILTER(PM,VM,AN)_"="_MASP
 ... S MPRM(VM)=$S(AN'<2:$$TKO^BQIUL1(MPRM(VM),$C(29)),1:FILTER(PM,VM))_$C(25)_ASPM_$C(29)
 .. I '$D(MPRM(VM)) D
 ... I NAME'="NUMVIS" S MPRM(VM)=FILTER(PM,VM)_$C(29) Q
 ... I NAME="NUMVIS" S MPRM(VM)=FILTER(PM,VM)_"~"
 . S NM="",NPARM=""
 . F  S NM=$O(MPRM(NM)) Q:NM=""  D
 .. S PARMS=PARMS_MPRM(NM)
 .. I NAME="NUMVIS" S NPARM=NPARM_MPRM(NM)
 . I NAME'="NUMVIS" S PARMS=$$TKO^BQIUL1(PARMS,$C(29))
 . I NAME="NUMVIS" S PARMS=$$TKO^BQIUL1(PARMS,"~"),NPARM=$$TKO^BQIUL1(NPARM,"~")
 . S PARMS=PARMS_$S(PS<3:$C(28),$E(PARMS,$L(PARMS),$L(PARMS))'=$C(25):$C(25),1:"")
 . K MPRM,FILTER(PM)
 Q
