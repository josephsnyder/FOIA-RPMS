PSIVHLD ;BIR/PR-ORDERS ON/OFF HOLD, ON/OFF CALL ;16 DEC 97 / 1:39 PM 
 ;;5.0; INPATIENT MEDICATIONS ;;16 DEC 97
 ;Needs DFN,PSIVNST (O or H)
 ;
STOP ;Put all orders on hold or on call
 N DA,DIE,DR,PSIVACT
 F ON1=0:0 S ON1=$O(^PS(55,DFN,"IV",ON1)) Q:'ON1  I "AR"[$P($G(^(ON1,0)),U,17) D
 .K DA,DIE,DR S PSIVACT=1,DA=ON1,DA(1)=DFN,DIE="^PS(55,"_DFN_",""IV"",",DR="100///"_PSIVNST,PSIVREA=PSIVNST D ^DIE,LOG
 Q
 ;
START ;Set all orders put on hold or oncall back to active if not expired.
 N DA,DIE,DR,ON1,PSIVACT,PSIVALT,PSIVHNW,PSIVREA
 D NOW^%DTC S PSIVHNW=%
 F ON1=0:0 S ON1=$O(^PS(55,DFN,"IV",ON1)) Q:'ON1  I $D(^(ON1,0)) S Y=^(0) I PSIVNST[$P(Y,U,17) D
 .K DA,DR,DIE S PSIVACT=1,DA=ON1,DA(1)=DFN,DIE="^PS(55,"_DFN_",""IV"",",P(17)=$S($P(Y,U,3)<PSIVHNW:"E",1:"A"),DR="100///"_P(17) D ^DIE
 .I P(17)'="E" S PSIVREA=$S(PSIVNST="H":"U",1:"C") D LOG
 Q
LOG ;Auto entry to log
 K PSIVALT S PSIVAL=$P($G(^PS(53.3,+PSGALO,0)),U),(ON,ON55)=ON1_"V"
 D LOG^PSIVORAL D:PSIVNST="H" HOLD^PSIVOE
 Q
