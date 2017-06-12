BYIMIMM1 ;IHS/CIM/THL - IMMUNIZATION DATA EXCHANGE;
 ;;2.0;BYIM IMMUNIZATION DATA EXCHANGE;**3,4,5,6,7**;JUN 01, 2015;Build 242
 ;
 ;;CONTINUATION OF BYIMIMM
 ;
 ;-----
FILE ;ENTER FILE NAME OF IMPORT FILE
 K BYIMQUIT
 D PATH^BYIMIMM6
 I IPATH="" D NOPATH^BYIMIMM6 Q
 S DIR(0)="FO^3:50"
 S DIR("A",1)="The file from the State Registry must be in the drive/directory: "
 S DIR("A",2)="          ** "_IPATH_" **"
 S DIR("A")="Enter the name of the file from the State Registry"
 W !
 D ^DIR
 K DIR
 I X=""!(X[U) S BYIMQUIT="" Q
 S FILE=X
 Q
 ;-----
IMPORT ;EP;IMMUNIZATION IMPORT
 N AUTO,BYIMERR,BYIMJ,BYIMX,DATE,DIC,DIE,DIK,DR,DA,DLAYGO,HRN,IMM,IVDA,JJ,LOC,MSHX,NAME,NUM,PID,SEX,DOB,FACILITY,INHDA,STATUS,T,VALMBCK,VALMCC,VALMCNT,VDATE,X1,X2,YY,ZTQUEUED,DFNCNT,BYIMIMM,IMMCNT,NODFNCNT,NEWIMCNT,ADDIMCNT,MSGCNT,RXACNT
 D FILE
 Q:$D(BYIMQUIT)
 D PATH^BYIMIMM6
 I IPATH="" D  Q
 .W:'$D(ZTQUEUED) !!,"No directory path found."
 .H 4
I1 ;EP;FOR AUTO IMPORT MODE
 S Y=$$OPEN^%ZISH(IPATH,FILE,"R")
 I Y D  Q:$D(BYIMQUIT)
 .D:'$G(AUTOADD)&'$D(ZTQUEUED)
 ..W !!,*7,"Cannot find FILE: ",FILE
 ..W !,*7,"    in DIRECTORY: ",IPATH
 .S BYIMQUIT=""
 .D PAUSE^BYIMIMM6
 D CLOSE^%ZISH()
 D:'$G(AUTOIMP)
 .W !!,"Import of immunizations of patients from the"
 .W !,"State Immunization registry may take several minutes."
 .S DIR(0)="YO"
 .S DIR("A")="Do you want to proceed"
 .S DIR("B")="NO"
 .W !
 .D ^DIR
 .K DIR
 .S:Y'=1 BYIMQUIT=""
 Q:$D(BYIMQUIT)
 D NCNT^BYIMIMM2
 D IN(IPATH,FILE)
 Q
 ;-----
IN(IPATH,FILE) ;EP;TO PROCESS INCOMING FILE
 ;IPATH    - INBOUND FILE PATH
 ;FILE     - INBOUND FILE
 W:'$G(AUTOIMP) !!,"Please do not interrupt."
 S (DFNCNT,NODFNCNT,IMMCNT,NEWIMCNT,BYIMIMM,ADDIMCNT,MSGCNT,RXACNT)=0
 D READ(IPATH,FILE)
 D S1:$G(AUTOADD)
 D LOG^BYIMIMM4(FILE,"I",DFNCNT,RXACNT,NODFNCNT,NEWIMCNT,ADDIMCNT,IPATH)
 I '$G(AUTOIMP),'$G(AUTOADD),'$D(ZTQUEUED) D MATCH^BYIMIMM2
 D ADDIM
 K AUTOIMP,AUTOADD
 Q
 ;-----
READ(IPATH,FILE)    ;PEP pull up a file into the TMP global for display
 N Y,X,I,J,OPATH
 S MSGCNT=0
 S RXACNT=0
 S J=1
 S Y=$$OPEN^%ZISH(IPATH,FILE,"R")
 I Y D  Q
 .W:'$G(AUTOIMP) !,*7,"CANNOT OPEN (OR ACCESS) FILE '",IPATH,FILE,"'."
 .S BYIMQUIT=""
 ;THE READ STATEMENT BELOW IS A READ FROM A HOST FILE WHICH REQUIRES A
 ;DIRECT READ VS AN FM/DIR CALL SAC EXEMPTION REQUESTED
 K ^BYIMTMP($J,"BYIM IMM")
 N RX
 S RX="R"_" X:"_"DTIME"
 F I=1:1 U IO X RX S STATUS=$$STATUS^%ZISH Q:STATUS=1!(STATUS=-1)!(X="")  D:"|MSH|PID|RXA|"[("|"_$E(X,1,3)_"|") INSET^BYIMIMM2
 D CLOSE^%ZISH()
 Q:'$D(^BYIMTMP($J,"BYIM IMM"))
 D SET
 K ^BYIMTMP($J,"BYIM IMM")
 Q
 ;-----
SET ;EP;ID PATIENTS AND SET NEW IMMUNIZATIONS
 S AUTOADD=$P($G(^BYIMPARA(DUZ(2),0)),U,5)
 S INHDA=0
 F  S INHDA=$O(^BYIMTMP($J,"BYIM IMM",INHDA)) Q:'INHDA  D SET1(INHDA)
 I $G(OLDDUZ(2)) S Z=2,DUZ(Z)=OLDDUZ(2) K OLDDUZ
 Q:'$D(^BYIMXTMP("BYIM"))
 D FMINIT
 S BYIMCNT=BYIMJ
 Q
 ;-----
SET1(INHDA) ;EP;TO PROCESS INCOMING HL7 MESSAGE
 D ID ;VERIFY PATIENT ID
 I $D(BYIMQUIT) K BYIMQUIT Q
 S DFNCNT=$G(DFNCNT)+1
 D IMM ;CHECK EACH INCOMING IMMUNIZATION
 I '$D(ZTQUEUED) U 0 W "/"
 Q
 ;-----
ID ;ID PATIENT
 I $G(OLDDUZ(2)) S Z=2,DUZ(Z)=OLDDUZ(2) K OLDDUZ
 N J
 S PID=""
 S J=0
 F  S J=$O(^INTHU(INHDA,3,J)) Q:'J!(PID["PID|")  I $E(^(J,0),1,4)="PID|" S PID=^(0)
 I PID="" S BYIMQUIT="" Q
 S PIDX=$P(PID,"|",4)
 F J=1:1:$L(PIDX,"~") S X=$P($P(PIDX,"~",J),U) S:$E(X,1,4)="RPMS" X=$E(X,5,99) Q:$L(X)=12
 S HRN=+$E(X,7,99)
 S FACILITY=$E(X,1,6)
 S X=$P(PID,"|",6)
 S X=$P(X,U)_","_$P(X,U,2)_$S($P(X,U,3)]"":" "_$P(X,U,3),1:"")
 S (NAME,FULLNAME)=X
 I FACILITY]"",$O(^AUTTLOC("C",FACILITY,0)) S Z=2,OLDDUZ(Z)=DUZ(2),DUZ(Z)=$O(^AUTTLOC("C",FACILITY,0))
 S DOB=$E($P(PID,"|",8),1,8)-17000000
 S SEX=$P(PID,"|",9)
 S X=HRN
 S DIC="^DPT("
 S DIC(0)="MZ"
 S DIC("S")="I $P(^DPT(+Y,0),U,3)=DOB,$P(^(0),U,2)=SEX"
 S AUPNLK("ALL")=""
 S AUPNLK("INAC")=""
 D ^DIC
 K DIC,DINUM,DR,DA,DLAYGO
 S:$G(OLDDUZ(2)) Z=2,DUZ(Z)=OLDDUZ(2)
 I +Y<1 D
 .S X=$P(PID,"|",6)
 .S X=$P(X,U)_","_$P(X,U,2)_$S($P(X,U,3)]"":" "_$P(X,U,3),1:"")
 .S DIC="^DPT("
 .S DIC(0)="MZ"
 .S DIC("S")="I $P(^DPT(+Y,0),U,3)=DOB,$P(^(0),U,2)=SEX"
 .S AUPNLK("ALL")=""
 .S AUPNLK("INAC")=""
 .D ^DIC
 .K DIC,DINUM,DR,DA,DLAYGO
 I +Y<1 D
 .S X=$TR($P(PID,"|",6),".","")
 .S X=$P(X,U)_","_$P(X,U,2)
 .S DIC="^DPT("
 .S DIC(0)="MZ"
 .S DIC("S")="I $P(^DPT(+Y,0),U,3)=DOB,$P(^(0),U,2)=SEX"
 .D ^DIC
 .K DIC,DINUM,DR,DA,DLAYGO
 I +Y<1 D  Q:Y<1
 .D DIRECT
 .Q:Y>0
 .S BYIMQUIT=""
 .I $L(FULLNAME),$L(DOB),$L(SEX),'$D(^BYIMPARA("NMNAME",FULLNAME)) D
 ..;RECORD NO MATCH PATIENTS
 ..S DA(1)=DUZ(2)
 ..S DIC="^BYIMPARA("_DUZ(2)_",4,"
 ..S DIC(0)="LZ"
 ..S X=FULLNAME
 ..S DIC("DR")=".02////"_(DOB+17000000)_";.03////"_$E(FILE,7,14)_";.04////"_SEX_";.05////"_$G(MM)_";.06////"_$G(UIF)
 ..D FILE^DICN
 ..S NODFNCNT=$G(NODFNCNT)+1
 ..S Y=-1
 S DFN=+Y
 I '$D(^AUPNPAT(DFN,41,DUZ(2),0)) D
 .K OLDDUZ
 .N XX
 .S XX=0
 .F  S XX=$O(^AUPNPAT(DFN,41,XX)) Q:'XX!$G(OLDDUZ(2))  D
 ..S Z=2,OLDDUZ(Z)=DUZ(2)
 ..S Z=2,DUZ(Z)=XX
 ..K BYIMQUIT
 .S:'$G(OLDDUZ(2)) BYIMQUIT=""
 I $G(^DPT(DFN,.35)) S BYIMQUIT=""
 Q
 ;-----
DIRECT ;DIRECT FIND OF PATIENT
 D DIRECT^BYIMIMM3
 Q
 ;-----
IMM ;COMPARE INCOMING IMMUNIZATIONS WITH EXISTING IMMUNIZATIONS
 N X,Y,Z,ZZ,BYIMY,LOT
 S J=2
 F  S J=$O(^INTHU(INHDA,3,J)) Q:'J  S BYIMY=^(J,0) D:$E(BYIMY,1,3)="RXA"
 .S Z=$E($P(BYIMY,"|",4),1,8)-17000000
 .S Y=+$P($P(BYIMY,"|",6),U)
 .Q:Y=999
 .Q:'Y!'Z
 .S IMMCNT=$G(IMMCNT)+1
 .S IMM=Y
 .D CONVERT
 .S Y=IMM
 .S X=$P(BYIMY,"|",12)
 .S X=$P(X,U,4)_U_$P(X,U)
 .S VOL=+$P(BYIMY,"|",7)
 .S:'VOL!(VOL[999) VOL=""
 .S LOT=$P(BYIMY,"|",16)
 .S MAN=$P($P(BYIMY,"|",18),U,1,2)
 .S ^BYIMXTMP("BYIM",DOB,NAME,DFN,Y,Z)=INHDA_U_Z_U_X_U_LOT_U_MAN_U_VOL
 .Q:'$O(IMM(0))
 .S Y=0
 .F  S Y=$O(IMM(Y)) Q:'Y  D
 ..S ^BYIMXTMP("BYIM",DOB,NAME,DFN,Y,Z)=INHDA_U_Z_U_X
 S X=0
 F  S X=$O(^AUPNVIMM("AC",DFN,X)) Q:'X  D
 .S Y=$G(^AUPNVIMM(X,0))
 .S Z=$P($G(^AUPNVSIT(+$P(Y,U,3),0)),".")
 .S Y=+Y
 .Q:'Y!'Z
 .K ^BYIMXTMP("BYIM",DOB,NAME,DFN,Y,Z)
 .D KILL^BYIMIMM2
 Q
 ;-----
DEL ;EP;DEL IMMUNIZATIONS FROM THE STATE REGISTRY LIST
 N DEL
 S DEL=""
ADD ;EP;ADD NEW IMMUNIZATIONS FROM THE STATE REGISTRY
 K BYIMQUIT
 D SELECT
 I $D(BYIMQUIT) K BYIMQUIT Q
 D CLEAR^VALM1
 D NEWIMM
BACK S VALMBCK="R"
 Q
 ;-----
SELECT ;SELECT CHILD TO ADD
 I BYIMJ-3=0 D  Q
 .W !!,"No Immunizations to ",$S('$D(DEL):"Add",1:"Delete"),"..."
 .H 3
 S DIR(0)="LO^1:"_(BYIMJ-3)
 S DIR("A")="Select Immunization(s) to "_$S('$D(DEL):"add to RPMS",1:"delete from the list")
 W !
 D ^DIR
 K DIR
 I 'Y S BYIMQUIT="" Q
 M BYIMY=Y
 Q
 ;-----
S1 ;FOR AUTOADD TO SET ADD ARRAY
 N X,Y,Z,J
 F J=1:1:$G(BYIMJ)-3 S BYIMY(J)=J
NEWIMM ;ADD NEW IMMUNIZATION
 K BYIMPAUS
 N XX
 S XX=""
 F  S XX=$O(BYIMY(XX)) Q:XX=""  D
 .S YY=BYIMY(XX)
 .F JJ=1:1 S ZZ=$P(YY,",",JJ) Q:ZZ=""  D NI1
 Q
NI1 ;NEW IMMUNIZATION
 K NEWLOT
 S NUM=ZZ+3
 S (X,BYIMX)=$G(^BYIMTMP($J,"BYIM DISP","DFN",NUM))
 Q:$E(X)="*"!(X="")
 ;1 = NAME
 ;2 = DFN
 ;3 = ADMIN DATE
 ;4 = CVX CODE
 ;5 = IMM IEN
 ;6 = LOC
 ;7 = DOB
 ;8 = LOC2
 ;9 = LOT NUM
 ;10 = MVX CODE
 ;11 = MANUF NAME
 ;12 = VOLUME
 S NAME=$P(X,U)
 S DFN=$P(X,U,2)
 S VDATE=$P(X,U,3)
 S IMM=$P(X,U,4)
 D CONVERT
 S IVDA=$P(X,U,5)
 S LOC=$P(X,U,6)
 S LOC2=$P(X,U,8)
 I LOC="",LOC2]"" S LOC=LOC2
 S:LOC="" LOC="OTHER"
 S DOB=$P(X,U,7)
 S LOT=$P(X,U,9)
 S LOTDA=""
 S MVX=$P(X,U,10)
 S MAN=$P(X,U,11)
 S VOL=$P(X,U,12)
 I LOT]"",IMM]"",MVX]"" D
 .I $T(ADDLOT^BIRPC5)]"" D
 ..S BYIMDATA=LOT_"|"_IMM_"|"_MVX
 ..D ADDLOT^BIRPC5(.BYIMERR,BYIMDATA,.LOTDA)
 .I $T(ADDLOT^BIRPC5)="" D
 ..D LOT^BYIMIMM4(LOT,MAN,IVDA)
 K APCDALVR("APCDAFLG"),BYIMERR
 N BYIMDUZ,NEWLOT
 I $G(LOTDA),$P($G(^AUTTIML(LOTDA,0)),U,3) S $P(^(0),U,3)=0,NEWLOT=LOTDA
 S BYIMDUZ=DUZ
 D VISIT:'$D(DEL)
 S X="DUZ"
 S @X=BYIMDUZ
 I $G(NEWLOT) S $P(^AUTTIML(NEWLOT,0),U,3)=1 K NEWLOT
 Q:$G(BYIMERR)]""&'$D(DEL)
 S X=BYIMX
 K ^BYIMXTMP("BYIM",$P(X,U,7),$P(X,U),$P(X,U,2),$P(X,U,4),$P(X,U,3))
 K ^BYIMTMP($J,"BYIM IMM","DFN",NUM)
 S Z=VDATE
 S Y=$O(^AUTTIMM("C",IMM,0))
 Q:'Y!'Z
 D KILL^BYIMIMM2
 Q
 ;-----
VISIT ;FIND OR CREATE VISIT
 K BYIMDUZ
 S BYIMDUZ=DUZ
 D DUZ
 D LOCIN(LOC)
 N P
 S P="|"
 S BYIMERR=""
 S $P(BYIMDATA,P,1)="I"
 S $P(BYIMDATA,P,2)=DFN
 S $P(BYIMDATA,P,3)=IVDA
 S $P(BYIMDATA,P,6)=VDATE_".12"
 S $P(BYIMDATA,P,7)=LOCDA
 S $P(BYIMDATA,P,8)=$E($S($E(LOC2)?1U&(LOC2'=LOC):LOC2,1:LOC),1,50)
 S $P(BYIMDATA,P,9)="E"
 S $P(BYIMDATA,P,21)=$G(VOL)
 S $P(BYIMDATA,P,23)=DUZ(2)
 S $P(BYIMDATA,P,25)=1
 D ADDEDIT^BIRPC3(.BYIMERR,BYIMDATA,1)
 I $G(OLDDUZ(2)) S Z=2,DUZ(Z)=OLDDUZ(2) K OLDDUZ
 I BYIMERR]"" D  Q
 .K BYIMQUIT
 .S:BYIMERR["Lot Number" BYIMERR="**"_$P($G(^AUTTIML(+$G(LOTDA),0)),U)_"** "_BYIMERR
 .S BYIMERR=BYIMERR_" - V IMMUNIZATIONN CREATION FAILED"
 .S X="DUZ",@X=BYIMDUZ
 .N %X,%Y,X,XMB,XMDT,XMDUZ,Y1
 .S XMB="BYIM V IMM CREATION FAILED"
 .S XMB(1)=$P(^DPT(DFN,0),U)_"  (DOB: "_$E($P(^(0),U,3),4,5)_"/"_$E($P(^(0),U,3),6,7)_"/"_$E($P(^(0),U,3),1,3)+17000
 .S XMB(2)=IMM_" - "_$P($G(^AUTTIMM(IVDA,0)),U)
 .N X
 .S X=VDATE
 .S XMB(3)=$E(X,4,5)_"/"_$E(X,6,7)_"/"_$E(X,1,3)+1700
 .S XMB(4)=BYIMERR
 .S XMDUZ=.5
 .D ^XMB
 .I '$D(ZTQUEUED),$G(BYIMPAUS)'[U D
 ..W !!,"Visit not added:"
 ..W !,BYIMERR
 ..W !!,"Patient.....: ",XMB(1)
 ..W !,"Immunization: ",XMB(2)
 ..W !,"Visit Date..: ",XMB(3)
 ..D PAUSE^BYIMIMM6
 S ADDIMCNT=$G(ADDIMCNT)+1
 Q:'$G(LOTDA)
 D ADDLOT^BYIMIMM6(DFN,IVDA,LOTDA,VDATE)
 Q
 ;-----
CONVERT ;CONVERT INACTIVE VACCINE TO ACTIVE EQUIVALENT
 S:IMM=105 IMM=75,OLDIMM=105
 S:IMM=17 IMM=47,OLDIMM=17
 S:IMM=31 IMM=83,OLDIMM=31
 Q
 ;-----
FMINIT ;EP;PUT NEW IMMUNIZATIONS INTO TMP STORAGE FOR
 K ^BYIMTMP($J,"BYIM DISP")
 N A,B,C,X,Y,Z,J,XXX
 S J=3
 S DOB=9999999
 F  S DOB=$O(^BYIMXTMP("BYIM",DOB),-1) Q:'DOB  D
 .S A=""
 .F  S A=$O(^BYIMXTMP("BYIM",DOB,A)) Q:A=""  D
 ..S B=0
 ..F  S B=$O(^BYIMXTMP("BYIM",DOB,A,B)) Q:'B  D
 ...S C=0
 ...F  S C=$O(^BYIMXTMP("BYIM",DOB,A,B,C)) Q:'C  D
 ....S X=0
 ....F  S X=$O(^BYIMXTMP("BYIM",DOB,A,B,C,X)) Q:'X  S XXX=^(X) D FM
 S (BYIMJ,VALMCNT)=J
 S NEWIMCNT=J-3
 D BACK
 Q
 ;-----
FM ;SET DISPLAY GLOBAL
 S XX=$P(XXX,U,2)
 S DATE=$E(XX,4,5)_"/"_$E(XX,6,7)_"/"_(1700+$E(XX,1,3))
 S IVDA=+$O(^AUTTIMM("C",C,0))
 I 'IVDA S ^BYIMTMP($J,"BYIM TEST","NO IMM CODE: "_C)="" Q
 S IMM=$P($G(^AUTTIMM(+IVDA,0)),U,2)
 I IMM="" S ^BYIMTMP($J,"BYIM TEST","NO IMM CODE 2: "_IMM)="" Q
 S J=J+1
 S IMM=IMM_"-"_C
 S T=J-3
 S $E(T,5)=DOB+17000000
 S $E(T,14)=$E(A,1,28)
 S $E(T,43)=IMM
 S $E(T,60)=$P(XXX,U,5)
 S $E(T,71)=DATE
 S ^BYIMTMP($J,"BYIM DISP",J,0)=T
 S ^BYIMTMP($J,"BYIM DISP","DFN",J)=A_U_B_U_XX_U_C_U_IVDA_U_$P(XXX,U,3)_U_DOB_U_$P(XXX,U,4)_U_$P(XXX,U,5)_U_$P(XXX,U,6)_U_$P(XXX,U,7)_U_$P(XXX,U,8)
 ;A = NAME
 ;B = DFN
 ;XX = ADMIN DATE
 ;C = CVX CODE
 ;IVDA = IMM IEN
 ;$P(XXX,U,3) = LOC
 ;DOB = DOB
 ;$P(XXX,U,4) = LOC2
 ;$P(XXX,U,5) = LOT NUM
 ;$P(XXX,U,6) = MVX CODE
 ;$P(XXX,U,7) = MANUF NAME
 ;$P(XXX,U,8) = VOLUME
 S BYIMCNT=+T
 Q
 ;-----
HDR ;EP;FOR LIST HEADER
 S ^BYIMTMP($J,"BYIM DISP",1,0)="    "_$S($G(VALMCNT):"  ("_(VALMCNT-3)_")",1:"")_" Immunizations from the State Registry"
 S T="NUM"
 S $E(T,5)="DOB"
 S $E(T,14)="NAME"
 S $E(T,43)="IMMUNIZATION-CVX"
 S $E(T,60)="LOT NO."
 S $E(T,71)="DATE REC'D"
 S ^BYIMTMP($J,"BYIM DISP",2,0)=T
 S T="---"
 S $E(T,5)="--------"
 S $E(T,14)="----------------------------"
 S $E(T,43)="----------------"
 S $E(T,60)="----------"
 S $E(T,71)="----------"
 S ^BYIMTMP($J,"BYIM DISP",3,0)=T
 Q
 ;-----
START ;EP;
 S BYIMVALM="BYIM STATE IMMUNIZATIONS"
 D VALM(BYIMVALM)
 Q
VALM(BYIMVALM) ;EP; -- main entry point for list templates
 S VALMCC=1 ;1=screen mode, 0=scrolling mode
 D TERM^VALM0
 D CLEAR^VALM1
 D EN^VALM(BYIMVALM)
 D CLEAR^VALM1
 K ^BYIMTMP($J,"BYIM DISP")
 Q
 ;-----
PARAM ;EP;TO UPDATE PARAMETERS
 N DA,DR,DIC,DIE,BYIMDA
 D PADD
 Q:DA<1
 S DIE="^BYIMPARA("
 S DR="[BYIM SET PARAMETERS]"
 W @IOF
 W !!,"UPDATE Data Exchange Parameters for ",$P(^DIC(4,DA,0),U)
 W !
 D ^DIE
 D PATH^BYIMIMM6
 K DIE,DIC,DINUM,DR,DA,DD,DO,DIK,DLAYGO
 Q
 ;-----
PADD ;EP;TO ADD PARAMETER SITE
 K DIE,DIC,DINUM,DR,DA,DD,DO,DIK,DLAYGO
 S DIC="^BYIMPARA("
 S DIC(0)="AEMLQZ"
 S DIC("A")="Select SITE for Data Exchange Parameters: "
 S DIC("B")=$P(^DIC(4,DUZ(2),0),U)
 W @IOF
 W !!,"ADD Data Exchange Parameter Site"
 W !
 D ^DIC
 K DIE,DIC,DINUM,DR,DA,DD,DO,DIK,DLAYGO
 S (BYIMDA,DA)=+Y
 Q
 ;-----
DUZ ;SET DUZ FOR VISIT 'CREATED BY USER'
 K DIE,DIC,DINUM,DR,DA,DD,DO,DIK,DLAYGO
 N X,Y,Z
 S X="USER,IMMUNIZATION INTERFACE"
 S Y=$O(^VA(200,"B",X,0))
 D:'Y
 .S DIC="^VA(200,"
 .S DIC(0)="M"
 .S DIC("DR")="3////@"
 .D FILE^DICN
 .K DIE,DIC,DINUM,DR,DA,DD,DO,DIK,DLAYGO
 .S Y=+Y
 S:Y<1 Y=.5
 S X="DUZ",@X=+Y
 Q
 ;-----
ADDIM ;EP;PROCESS ADDITIONAL IMPORT FILES
 N BYIMAS
 S BYIMDA=DUZ(2)
 S BYIMAS=0
 F  S BYIMAS=$O(^BYIMPARA(BYIMDA,3,BYIMAS)) Q:'BYIMAS  D
 .S X=^BYIMPARA(BYIMDA,3,BYIMAS,0)
 .S IPATH=$P(X,U,3)
 .D ADDIM1
 Q
 ;-----
ADDIM1 ;PROCESS EACH ADDIONAL IMPORT SITE
 I '$G(AUTOIMP) D
 .W:'$D(ZTQUEUED) !!,"Processing additional import files."
 .W:'$D(ZTQUEUED) !,"Please do not interrupt."
 S (DFNCNT,NODFNCNT,IMMCNT,NEWIMCNT,BYIMIMM,ADDIMCNT,MSGCNT,RXACNT)=0
 D READ(IPATH,FILE)
 D S1:$G(AUTOADD)
 D LOG^BYIMIMM4(FILE,"I",DFNCNT,RXACNT,NODFNCNT,NEWIMCNT,ADDIMCNT,IPATH)
 I '$G(AUTOIMP),'$G(AUTOADD),'$D(ZTQUEUED) D MATCH^BYIMIMM2
 Q
 ;-----
LOCIN(LOC) ;PROCESS LOCATION DATA FOR FACILITY NAME OR CODE
 S:LOC="" LOC="OTHER"
 S LOCDA=0
 S LOCDA=$O(^BYIMPARA("RXA",LOC,0))
 S:LOCDA LOCDA=$O(^BYIMPARA("RXA",LOC,LOCDA,0))
 S:'LOCDA LOCDA=$S($O(^DIC(4,"B",LOC,0)):$O(^DIC(4,"B",LOC,0)),1:$O(^DIC(4,"B","OTHER",0)))
 I $P($G(^DIC(4,+LOCDA,0)),U)="OTHER",LOC2]"",$O(^DIC(4,"B",LOC2,0)) S LOCDA=$O(^DIC(4,"B",LOC2,0)),LOC=LOC2
 I $P(^DIC(4,+LOCDA,0),U)="OTHER",$P($G(^BISITE($S($G(OLDDUZ(2)):OLDDUZ(2),1:+$G(DUZ(2))),0)),U,3),LOCDA'=$P(^(0),U,3) S LOCDA=$P(^(0),U,3)
 Q:$P(^DIC(4,+LOCDA,0),U)'="OTHER"
 ;DETERMINE STATE FOR 'OTHER' FACILITY
 N X,Y,Z
 S X=$P($G(^DIC(4,+$G(DUZ(2)),0)),U,2)
 Q:'X
 S Z=0
 S Y=0
 F  S Y=$O(^DIC(4,"B","OTHER",Y)) Q:'Y!Z  D
 .S:$P($G(^DIC(4,Y,0)),U,2)=X Z=Y
 S:Z LOCDA=Z
 Q
 ;
