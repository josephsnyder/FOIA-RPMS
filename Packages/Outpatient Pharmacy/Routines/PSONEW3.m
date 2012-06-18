PSONEW3 ;IHS/DSD/JCM - EDIT TEMPLATE DURING NEW RX ORDER ENTRY ;23-Jan-2009 10:15;PLS
 ;;7.0;OUTPATIENT PHARMACY;**1006,1008**;DEC 1997
 ; Modified - IHS/CIA/PLS - 01/02/04 - Lines: New jump labels and JUMP+2
 ;            IHS/MSC/PLS - 08/20/07 - Line label 35 changed to call TRPDCLS^APSPDIR entry point.
 ;                          03/13/08 - Added label 52
 ;                          01/23/09 - Added label 53
START ;
 S (PSONEW("DFLG"),PSONEW("FIELD"),PSONEW3)=0
 ;
1 S PSONEW("FLD")=1 D ISSDT^PSODIR2(.PSONEW) ; Get Issue Date
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
2 S PSONEW("FLD")=2 D FILLDT^PSODIR2(.PSONEW) ; Get Fill date
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
3 S:$G(POERR) PSONEW("ISSUE DATE")=PSOID
 S PSONEW("FLD")=3 D PTSTAT^PSODIR1(.PSONEW) ; Get Patient Status
 ;K PSTMAX S PSDAYS=PSONEW("DAYS SUPPLY"),PSRF=PSONEW("# OF REFILLS"),PTST=$P(^PS(53,PSONEW("PATIENT STATUS"),0),"^"),PTDY=$P(^(0),"^",3),PTRF=$P(^(0),"^",4) D EDSTAT^PSOUTLA
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
35 ; IHS/CIA/PLS - 01/02/04 - Get Triplicate number
 I $$TRPDCLS^APSPDIR($G(PSOTRIP),$G(PSODRUG("DEA"))) D  G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 .S PSONEW("FLD")=35 D TRIP^APSPDIR(.PSONEW)
 ;
40 ; IHS/CIA/PLS - 01/02/04 - Get NDC Number
 I $G(PSONDC)=1 D  G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 .S PSONEW("FLD")=40 D NDC^APSPDIR(.PSONEW)
 .K PSONEW("AWP"),PSONEW("COST")
 ;
50 ; IHS/CIA/PLS - 01/02/04 - Get AWP Price
 I $G(PSOAWP)=1 D  G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 .S PSONEW("FLD")=50 D AWP^APSPDIR(.PSONEW)
 ;
51 ; IHS/CIA/PLS - 01/02/04 - Get Cost of Drug
 I $G(PSOCOST)=1 D  G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 .S PSONEW("FLD")=51 D COST^APSPDIR(.PSONEW)
 ;
52 ; IHS/MSC/PLS - 03/13/08 - Get SUBSTITUTION
 D  G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 .S PSONEW("FLD")=52 D SUBS^APSPDIR(.PSONEW)
53 ; IHS/MSC/PLS - 01/23/09 - Get Cash Due
 I $$GET1^DIQ(9009033,PSOSITE,319,"I") D  G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 .S PSONEW("FLD")=53 D CASHDUE^APSPDIR(.PSONEW)
 ; IHS/CIA/PLS - 01/02/04 - Branching logic
 G:(($G(APSPMAN)=3)!($G(APSPMAN)="")) 4 G:$G(APSPMAN)=2 57
54 ; IHS/CIA/PLS - 01/02/04 - Get Manufacturer data
 S PSONEW("FLD")=54 D MANUF^APSPDIR(.PSONEW)
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
55 ; IHS/CIA/PLS - 01/02/04 - Get Lot #
 S PSONEW("FLD")=55 D LOT^APSPDIR(.PSONEW)
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
57 ; IHS/CIA/PLS - 01/02/04 - Get Expiration Date
 S PSONEW("FLD")=57 D EXPDATE^APSPDIR(.PSONEW)
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
4 S PSONEW("FLD")=4 D PROV^PSODIR(.PSONEW) ; Get Provider
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
101 ; IHS/CIA/PLS - 01/02/04 - Branching logic
 S PSONEW("BST")=PSOBILST G:$G(PSOBILRX)'=1 120
115 ; IHS/CIA/PLS - 01/02/04 - Billing Status
 S PSONEW("FLD")=115 D BST^APSPDIR(.PSONEW)
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
117 ; IHS/CIA/PLS - 01/02/04 - Get Insurer info
 S PSONEW("FLD")=117 D INSURER^APSPDIR(.PSONEW)
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
120 ; IHS/CIA/PLS - 01/02/04 - Get Chronic Med data
 I $G(APSPCMP) S PSONEW("FLD")=120 D CM^APSPDIR(.PSONEW)
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
5 S PSONEW("FLD")=5 D CLINIC^PSODIR2(.PSONEW) ; Get Clinic
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
6 S PSONEW("FLD")=6 D ^PSODRG ; Get drug and related information
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
7 S PSONEW("FLD")=7 D QTY^PSODIR1(.PSONEW) ; Get quantity
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
8 S PSONEW("FLD")=8 D DAYS^PSODIR1(.PSONEW) ; Get days supply
 ;K PSMAX,PSTMAX S PSDAYS=PSONEW("DAYS SUPPLY"),PSRF=PSONEW("# OF REFILLS"),PTST=$P(^PS(53,PSONEW("PATIENT STATUS"),0),"^"),PTDY=$P(^(0),"^",3),PTRF=$P(^(0),"^",4),PSODEA=PSODRUG("DEA"),CS=0 D EDNEW^PSOUTLA
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
9 S PSONEW("FLD")=9 D REFILL^PSODIR1(.PSONEW) ; Get # of refills
 ;K PSMAX,PSTMAX S PSDAYS=PSONEW("DAYS SUPPLY"),PSRF=PSONEW("# OF REFILLS"),PTST=$P(^PS(53,PSONEW("PATIENT STATUS"),0),"^"),PTDY=$P(^(0),"^",3),PTRF=$P(^(0),"^",4),PSODEA=PSODRUG("DEA"),CS=0 D EDNEW^PSOUTLA
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
10 S PSONEW("FLD")=10 D SIG^PSODIR1(.PSONEW) ; Get sig
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
11 S PSONEW("FLD")=11 D COPIES^PSODIR1(.PSONEW) ; Get # of copies
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
12 S PSONEW("FLD")=12 D MW^PSODIR2(.PSONEW) ; Get Mail/Window Info
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
13 S PSONEW("FLD")=13 D RMK^PSODIR2(.PSONEW) ; Get Remarks
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
 ; IHS/CIA/PLS - 01/02/04 - Next two lines commented out.
14 ;I $G(DUZ("AG"))="I" S PSONEW("FLD")=14 D EXP^PSODIR2(.PSONEW) ; Get Expiration Date - Indian Health Service ONLY
 ;G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
15 S PSONEW("FLD")=15 D CLERK^PSODIR2(.PSONEW) ; Get Clerk Code
 G:PSONEW("DFLG") END G:PSONEW("FIELD") @PSONEW("FIELD")
 ;
END ;
 K PSONEW3
 Q
 ;
JUMP ;
 S PSONEW("FIELD")=$S(+Y=3:3,+Y=6:6,+Y=10:10,+Y=7:7,+Y=10.6:11,+Y=8:8,+Y=9:9,+Y=4:4,+Y=29:14,+Y=5:5,+Y=11:12,+Y=12:13,+Y=1:1,+Y=22:2,1:PSONEW("FLD"))
 ; IHS/CIA/PLS - 01/02/04 - Added $S for additional fields
 ; IHS/MSC/PLS - 01/23/09 - Added 53 to $S
 ;S PSONEW("FIELD")=$S(+Y=9999999.06:50,+Y=9999999.02:120,+Y=9999999.07:115,+Y=28:54,+Y=24:55,+Y=26:57,+Y=9999999.12:117,+Y=17:51,+Y=9999999.14:35,1:PSONEW("FIELD"))
 S PSONEW("FIELD")=$S(+Y=9999999.06:50,+Y=9999999.02:120,+Y=9999999.07:115,+Y=28:54,+Y=24:55,+Y=26:57,+Y=9999999.12:117,+Y=17:51,+Y=9999999.14:35,+Y=9999999.26:53,1:PSONEW("FIELD"))
 Q
