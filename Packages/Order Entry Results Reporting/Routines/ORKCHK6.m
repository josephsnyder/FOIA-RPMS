ORKCHK6 ; slc/CLA - Support routine called by ORKCHK to do SESSION mode order checks ;07-Dec-2009 23:22;PLS
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**6,32,74,87,94,123,162,190,1005**;Dec 17, 1997
 ; Modified - IHS/MSC/PLS - 12/07/09 - Added Allergy-Drug Interaction order check during SESSION type
 Q
 ;
EN(ORKS,ORKDFN,ORKA,ORENT,ORKTMODE) ;perform order checking for entire ordering session
 Q:$$GET^XPAR("DIV^SYS^PKG","ORK SYSTEM ENABLE/DISABLE",1,"I")="D"
 ;
 N OI,ORKDG,HL7,ODT,ORNUM,HL7NPTR,HL7NTXT,HL7NCOD,HL7LPTR,HL7LTXT,HL7LCOD
 N ORKMSG,ORKDGI,ORKT,ORKTXT,ORKPDATA
 ;
 S OI=$P(ORKA,"|"),ORKDG=$P(ORKA,"|",2),HL7=$P(ORKA,"|",3)
 S ODT=$P(ORKA,"|",4),ORNUM=$P(ORKA,"|",5),ORKPDATA=$P(ORKA,"|",6)
 S HL7NPTR=$P(HL7,U),HL7NTXT=$P(HL7,U,2),HL7NCOD=$P(HL7,U,3)
 S HL7LPTR=$P(HL7,U,4),HL7LTXT=$P(HL7,U,5),HL7LCOD=$P(HL7,U,6)
 ;
 S:ORKDG="PSJ" ORKDG="PSI"
 I $E(ORKDG,1,2)="PS" D PHARM
 I $E(ORKDG,1,2)'="PS" D MLM^ORKCHK2(.ORKS,ORKDFN,ORKA,ORENT,"SESSION")
 Q
 ;
PHARM ;process pharmacy order checks:
 N ORPSPKG,ORPSA,ORKDD
 N ORCRITN,ORCRITF,ORCRITD,ORSIGN,ORSIGF,ORSIGD,ORDUPN,ORDUPF,ORDUPD,ORDUPC,ORDUPCF,ORDUPCD
 N ORALLRN,ORALLRF,ORALLRD  ;Patch 1005
 ;
 D PARAMS("CRITICAL DRUG INTERACTION",.ORCRITN,.ORCRITF,.ORCRITD)
 D PARAMS("SIGNIFICANT DRUG INTERACTION",.ORSIGN,.ORSIGF,.ORSIGD)
 D PARAMS("DUPLICATE DRUG ORDER",.ORDUPN,.ORDUPF,.ORDUPD)
 D PARAMS("DUPLICATE DRUG CLASS ORDER",.ORDUPCN,.ORDUPCF,.ORDUPCD)
 D PARAMS("ALLERGY-DRUG INTERACTION",.ORALLRN,.ORALLRF,.ORALLRD)  ;Patch 1005
 ;
 ;dispense drug selected:
 I $L($G(HL7LPTR)),($G(HL7LCOD)="99PSD") D
 .D RXOCS
 .D MLM^ORKCHK2(.ORKS,ORKDFN,ORKA,ORENT,"SESSION")
 ;
 ;dispense drug NOT selected, split OI into dispense drugs:
 I '$L($G(HL7LPTR)) D
 .S ORPSPKG=$E(ORKDG,3)
 .I ORPSPKG="H" S ORPSPKG="X"  ;change to "X" if "H"erbal/non-VA med
 .I "IOX"[ORPSPKG D OI2DD(.ORPSA,OI,ORPSPKG)
 .S ORKDD=0 F  S ORKDD=$O(ORPSA(ORKDD)) Q:'ORKDD  D
 ..S HL7LTXT=ORPSA(ORKDD)
 ..S HL7NPTR=$P(ORKDD,";",2)
 ..S HL7LPTR=+ORKDD
 ..S HL7LCOD="99PSD",HL7NCOD="99NDF"
 ..S $P(HL7,U)=HL7NPTR,$P(HL7,U,3)=HL7NCOD
 ..S $P(HL7,U,4)=HL7LPTR,$P(HL7,U,5)=HL7LTXT,$P(HL7,U,6)=HL7LCOD
 ..S $P(ORKA,"|",3)=HL7  ;set these for MLM OCX call
 ..D RXOCS
 ..D MLM^ORKCHK2(.ORKS,ORKDFN,ORKA,ORENT,"SESSION")
 Q
 ;
RXOCS ;drug-drug interaction, duplicate drug order, duplicate drug class
 ; The following line has been modified to add the Allery-Drug Interaction
 Q:ORALLRF_ORCRITF_ORSIGF_ORDUPF_ORDUPCF'["E"  ;quit if none are "E"nabled
 N ORKRX,ORPSNUM
 N ORKAL  ;Patch 1005
 I $L($G(HL7LPTR)),($G(HL7LCOD)="99PSD") D
 .D CHKSESS^ORKPS(.ORKRX,ORKDFN,HL7LPTR,OI,ORKPDATA,ORKDG)
 .N CHK,XX S CHK=0,XX=""
 .F  S CHK=$O(ORKRX(CHK)) Q:'CHK  D
 ..S XX=ORKRX(CHK)
 ..;
 ..;critical drug interaction:
 ..I $P(XX,U)="DI",$P(XX,U,5)="CRITICAL" D
 ...Q:ORCRITF="D"
 ...S ORPSNUM=$P(XX,U,8)  ;get the associated order number
 ...I $L(ORPSNUM),$G(^OR(100,+ORPSNUM,0)) S ORKT=$$FULLTEXT^ORQOR1(+ORPSNUM),ORKTXT=$P(ORKT,U)_" ["_$P(ORKT,U,2)_"]"
 ...E  S ORKTXT=$P(XX,U,3)
 ...S ORKMSG=$P(XX,U,5)_" drug-drug interaction: "_$P(XX,U,6)_" & "_$P(XX,U,7)
 ...S ORKS("ORK",ORCRITD_","_$G(ORNUM)_","_ORPSNUM_","_$E(ORKMSG,1,225))=ORNUM_U_ORCRITN_U_ORCRITD_U_ORKMSG_" ("_ORKTXT_")"_U_$G(ORPSNUM)
 ..;
 ..;significant drug interaction:
 ..I $P(XX,U)="DI",$P(XX,U,5)="SIGNIFICANT" D
 ...Q:ORSIGF="D"
 ...S ORPSNUM=$P(XX,U,8)  ;get the associated order number
 ...I $L(ORPSNUM),$G(^OR(100,+ORPSNUM,0)) S ORKT=$$FULLTEXT^ORQOR1(+ORPSNUM),ORKTXT=$P(ORKT,U)_" ["_$P(ORKT,U,2)_"]"
 ...E  S ORKTXT=$P(XX,U,3)
 ...S ORKMSG=$P(XX,U,5)_" drug-drug interaction: "_$P(XX,U,6)_" & "_$P(XX,U,7)
 ...S ORKS("ORK",ORSIGD_","_$G(ORNUM)_","_ORPSNUM_","_$E(ORKMSG,1,225))=ORNUM_U_ORSIGN_U_ORSIGD_U_ORKMSG_" ("_ORKTXT_")"_U_$G(ORPSNUM)
 ..;
 ..;duplicate drug:
 ..I $P(XX,U)="DD" D
 ...Q:ORDUPF="D"
 ...S ORPSNUM=$P(XX,U,4)  ;get the associated order number
 ...I $L(ORPSNUM),$G(^OR(100,+ORPSNUM,0)) S ORKT=$$FULLTEXT^ORQOR1(+ORPSNUM),ORKTXT=$P(ORKT,U)_" ["_$P(ORKT,U,2)_"]"
 ...E  S ORKTXT=$P(XX,U,3)
 ...S ORKMSG="Duplicate order: "_ORKTXT
 ...S ORKS("ORK",ORDUPD_","_$G(ORNUM)_","_ORPSNUM_",Duplicate order: "_$P(XX,U,3))=ORNUM_U_ORDUPN_U_ORDUPD_U_ORKMSG_U_$G(ORPSNUM)
 ..;
 ..;duplicate class:
 ..I $P(XX,U)="DC" D
 ...Q:ORDUPCF="D"
 ...S ORPSNUM=$P(XX,U,6)  ;get the associated order number
 ...I $L(ORPSNUM),$G(^OR(100,+ORPSNUM,0)) S ORKT=$$FULLTEXT^ORQOR1(+ORPSNUM),ORKTXT=$P(ORKT,U)_" ["_$P(ORKT,U,2)_"]"
 ...E  S ORKTXT=$P(XX,U,5)
 ...S ORKMSG="Duplicate drug class order: "_$P(XX,U,3)
 ...S ORKS("ORK",ORDUPCD_","_$G(ORNUM)_","_ORPSNUM_","_$E(ORKMSG,1,225))=ORNUM_U_ORDUPCN_U_ORDUPCD_U_ORKMSG_" ("_ORKTXT_")"_U_$G(ORPSNUM)
 ;drug-allergy interaction  ;Patch 1005
 I $L($G(HL7NPTR)),($G(HL7NCOD)="99NDF") D
 .D RXN^ORQQAL(.ORKAL,ORKDFN,"DR",HL7NPTR,$G(HL7LPTR)) I (ORKAL>0) D
 ..Q:$L($P(ORKAL,U,2))<1
 ..S ORKMSG="Previous adverse reaction to: "_$P(ORKAL,U,2)
 ..S ORKS("ORK",ORALLRD_","_$G(ORNUM)_","_$E(ORKMSG,1,225))=ORNUM_U_ORALLRN_U_ORALLRD_U_ORKMSG
 Q
 ;
OI2DD(ORPSA,OROI,ORPSPKG) ;rtn dispense drugs for a PS OI
 N PSOI
 Q:'$D(^ORD(101.43,OROI,0))
 S PSOI=$P($P(^ORD(101.43,OROI,0),U,2),";")
 Q:+$G(PSOI)<1
 D DRG^PSSUTIL1(.ORPSA,PSOI,ORPSPKG)
 Q
 ;
PARAMS(ORKNAME,ORKNUM,ORKFLAG,ORKDNGR) ; get parameter values for an order chk
 S ORKNUM=0,ORKNUM=$O(^ORD(100.8,"B",ORKNAME,ORKNUM))
 S ORKFLAG=$$GET^XPAR(ORENT,"ORK PROCESSING FLAG",ORKNUM,"I")
 S ORKDNGR=$$GET^XPAR("DIV^SYS^PKG","ORK CLINICAL DANGER LEVEL",ORKNUM,"I")
 Q
