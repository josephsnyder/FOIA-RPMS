IB20PT32	;ALB/CPM - IB V2.0 POST INIT, RESOLVE TABLE POINTERS ; 02-SEP-93
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	;
ATAT	; Resolve pointers to file #350.1 from file #350.1
	W !!,">>> Updating pointers to file #350.1 from file #350.1... "
	F IBI=1:1 S IBX=$P($T(ACT+IBI),";;",2,99) Q:IBX=""  D
	.S IBNEW=$O(^IBE(350.1,"B",$P(IBX,"^"),0))
	.S IBCAN=$O(^IBE(350.1,"B",$P(IBX,"^",2),0))
	.S IBUPD=$O(^IBE(350.1,"B",$P(IBX,"^",3),0))
	.F IBJ=IBNEW,IBCAN,IBUPD D
	..S DIE="^IBE(350.1,",DA=IBJ
	..S DR=".06////"_IBCAN_";.07////"_IBUPD_";.09////"_IBNEW
	..D ^DIE K DA,DR,DIE W "."
	;
	; - update only new action type
	F IBI=1:1 S IBX=$P($T(ACT1+IBI),";;",2,99) Q:IBX=""  D
	.S IBJ=$O(^IBE(350.1,"B",IBX,0)) Q:'IBJ
	.S DIE="^IBE(350.1,",DA=IBJ,DR=".09////"_IBJ
	.D ^DIE K DA,DR,DIE W "."
	;
	K IBI,IBX,IBNEW,IBCAN,IBUPD,IBJ
	Q
	;
	;
ACT	;New Action (#350.1)^Cancel Action (#350.1)^Update Action (#350.1)
	;;DG CHAMPVA PER DIEM NEW^DG CHAMPVA PER DIEM CANCEL^DG CHAMPVA PER DIEM UPDATE
	;
	; - others that may need to be updated
	;
	;;DG FEE SERVICE (INPT) NEW^DG FEE SERVICE (INPT) CANCEL^DG FEE SERVICE (INPT) UPDATE
	;;DG NHCU COPAY NEW^DG NHCU COPAY CANCEL^DG NHCU COPAY UPDATE
	;;DG NHCU PER DIEM NEW^DG NHCU PER DIEM CANCEL^DG NHCU PER DIEM UPDATE
	;;DG INPT COPAY (ALC) NEW^DG INPT COPAY (ALC) CANCEL^DG INPT COPAY (ALC) UPDATE
	;;DG INPT COPAY (BLI) NEW^DG INPT COPAY (BLI) CANCEL^DG INPT COPAY (BLI) UPDATE
	;;DG INPT COPAY (INT) NEW^DG INPT COPAY (INT) CANCEL^DG INPT COPAY (INT) UPDATE
	;;DG INPT COPAY (MED) NEW^DG INPT COPAY (MED) CANCEL^DG INPT COPAY (MED) UPDATE
	;;DG INPT COPAY (NEU) NEW^DG INPT COPAY (NEU) CANCEL^DG INPT COPAY (NEU) UPDATE
	;;DG INPT COPAY (PSY) NEW^DG INPT COPAY (PSY) CANCEL^DG INPT COPAY (PSY) UPDATE
	;;DG INPT COPAY (REH) NEW^DG INPT COPAY (REH) CANCEL^DG INPT COPAY (REH) UPDATE
	;;DG INPT COPAY (SPI) NEW^DG INPT COPAY (SPI) CANCEL^DG INPT COPAY (SPI) UPDATE
	;;DG INPT COPAY (SUR) NEW^DG INPT COPAY (SUR) CANCEL^DG INPT COPAY (SUR) UPDATE
	;;DG INPT PER DIEM NEW^DG INPT PER DIEM CANCEL^DG INPT PER DIEM UPDATE
	;;DG FEE SERVICE (OPT) NEW^DG FEE SERVICE (OPT) CANCEL^DG FEE SERVICE (OPT) UPDATE
	;;DG OPT COPAY NEW^DG OPT COPAY CANCEL^DG OPT COPAY UPDATE
	;
	;
ACT1	;New Action (#350.1)
	;;CHAMPVA SUBSISTENCE LIMIT
	;
	; - others that may need to be updated
	;
	;;MEDICARE DEDUCTIBLE
	;;HOSPITAL ADMISSION
	;;NHCU ADMISSION
	;;IB OPT MEDICARE RATE 1
	;;IB OPT MEDICARE RATE 2
	;;IB OPT MEDICARE RATE 3
	;;IB OPT MEDICARE RATE 4
	;;IB OPT MEDICARE RATE 5
	;;IB OPT MEDICARE RATE 6
	;;IB OPT MEDICARE RATE 7
	;;IB OPT MEDICARE RATE 8
	;;IB OPT MEDICARE RATE 9
