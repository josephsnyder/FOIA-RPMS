ICDTBL4A ;ALB/EG/MRY - GROUPER UTILITY FUNCTIONS;11/8/07 1:12pm
 ;;18.0;DRG Grouper;**37,43,45,46,48,55**;Oct 20, 2000;Build 7
DRG405 ;
DRG406 ;
DRG407 S ICDRG=$S(ICDMCC=2:405,ICDMCC=1:406,1:407) Q
DRG408 ;
 I ICDOR["E"!(ICDOR["T") I $D(ICDOP(" 51.21"))!$D(ICDOP(" 51.22"))!$D(ICDOP(" 51.23"))!$D(ICDOP(" 51.24")) S ICDRG=$S(ICDMCC=2:411,ICDMCC=1:412,1:413) Q
 I ICDOR["3" S ICDRG=$S(ICDMCC=2:408,ICDMCC=1:409,1:410) Q
 I $D(ICDOP(" 51.21"))!$D(ICDOP(" 51.22")) S ICDRG=$S(ICDMCC=2:414,ICDMCC=1:415,1:416) Q
 I $D(ICDOP(" 51.23"))!$D(ICDOP(" 51.24")) S ICDRG=$S(ICDMCC=2:417,ICDMCC=1:418,1:419) Q
 I ICDOR["h" S ICDRG=$S(ICDMCC=2:420,ICDMCC=1:421,1:422) Q
 I ICDPD["M"&(ICDOR'["h") S ICDRG=$S(ICDMCC=2:435,ICDMCC=1:436,1:437) Q
 I ICDSD'="" S ICDRG=$S(ICDMCC=2:438,ICDMCC=1:439,1:440) Q
 S ICDRG=$S(ICDMCC=2&(ICDOR["O"):438,ICDMCC=1&(ICDOR["O"):439,1:440) Q
 Q
DRG409 ;
DRG410 D DRG408 Q
DRG411 ;
DRG412 ;
DRG413 D DRG408 Q
DRG414 ;
DRG415 ;
DRG416 D DRG408 Q
DRG417 ;
DRG418 ;
DRG419 D DRG408 Q
DRG420 ;
DRG421 ;
DRG422 D DRG408 Q
DRG423 ;
DRG424 ;
DRG425 S ICDRG=$S(ICDMCC=2:423,ICDMCC=1:424,1:425) Q
DRG432 ;
DRG433 ;
DRG434 S ICDRG=$S(ICDMCC=2:432,ICDMCC=1:433,1:434) Q
DRG435 ;
DRG436 ;
DRG437 D DRG408 Q
DRG438 ;
DRG439 ;
DRG440 D DRG408 Q
DRG441 ;
DRG442 ;
DRG443 S ICDRG=$S(ICDMCC=2:441,ICDMCC=1:442,1:443) Q
DRG444 ;
DRG445 ;
DRG446 S ICDRG=$S(ICDMCC=2:444,ICDMCC=1:445,1:446) Q
DRG453 ;
DRG454 ;
DRG455 ;
 N CNTA,CNTP S CNTA=0,CNTP=0
 I $D(ICDOP(" 81.02")) S CNTA=1
 I $D(ICDOP(" 81.04")) S CNTA=1
 I $D(ICDOP(" 81.06")) S CNTA=1
 I $D(ICDOP(" 81.32")) S CNTA=1
 I $D(ICDOP(" 81.36")) S CNTA=1
 I $D(ICDOP(" 81.03")) S CNTP=1
 I $D(ICDOP(" 81.05")) S CNTP=1
 I $D(ICDOP(" 81.07")) S CNTP=1
 I $D(ICDOP(" 81.08")) S CNTP=1
 I $D(ICDOP(" 81.33")) S CNTP=1
 I $D(ICDOP(" 81.35")) S CNTP=1
 I $D(ICDOP(" 81.37")) S CNTP=1
 I $D(ICDOP(" 81.38")) S CNTP=1
 I CNTA=1,CNTP=1 D
 . S ICDRG=$S(ICDMCC=2:453,ICDMCC=1:454,1:455) Q
 E  S ICDRG=""
 Q
DRG456 ;
DRG457 ;
DRG458 ;
 I ICDOR="" D DRG541^ICDTBL5A Q
 I ICDPD["6" S ICDRG=$S(ICDMCC=2:456,ICDMCC=1:457,1:458) Q
 I ICDPD["6",$D(ICDOP(" 81.64")) S ICDRG=$S(ICDMCC=2:456,ICDMCC=1:457,1:458) Q
 I ICDSD["6",$D(ICDOP(" 81.64")) S ICDRG=$S(ICDMCC=2:456,ICDMCC=1:457,1:458) Q
DRG459 ;
DRG460 S ICDRG=$S(ICDMCC=2:459,1:460) Q
DRG461 ;
DRG462 ;
 N ICDCT S ICDCT=""
 N CNT S CNT=0
 F  S ICDCT=$O(ICDSURG(ICDCT)) Q:ICDCT=""  D
 .I $P(ICDSURG(ICDCT),"^")="00.70"!($P(ICDSURG(ICDCT),"^")["00.70") S CNT=CNT+1 Q
 .I $P(ICDSURG(ICDCT),"^")="00.80"!($P(ICDSURG(ICDCT),"^")["00.80") S CNT=CNT+1 Q
 .I $P(ICDSURG(ICDCT),"^")="00.85"!($P(ICDSURG(ICDCT),"^")["00.85") S CNT=CNT+1 Q
 .I $P(ICDSURG(ICDCT),"^")="00.86"!($P(ICDSURG(ICDCT),"^")["00.86") S CNT=CNT+1 Q
 .I $P(ICDSURG(ICDCT),"^")="00.87"!($P(ICDSURG(ICDCT),"^")["00.87") S CNT=CNT+1 Q
 .I $P(ICDSURG(ICDCT),"^")="81.51" S CNT=CNT+1 Q
 .I $P(ICDSURG(ICDCT),"^")="81.52" S CNT=CNT+1 Q
 .I $P(ICDSURG(ICDCT),"^")="81.54" S CNT=CNT+1 Q
 .I $P(ICDSURG(ICDCT),"^")="81.56" S CNT=CNT+1 Q
 I CNT>1 S ICDRG=$S(ICDMCC=2:461,1:462) Q
 I $D(ICDOP(" 00.70"))!$D(ICDOP(" 00.80")) D DRG466 Q
 E  D DRG469 Q
DRG463 ;
DRG464 ;
DRG465 S ICDRG=$S(ICDMCC=2:463,ICDMCC=1:464,1:465) Q
DRG466 ;
DRG467 ;
DRG468 S ICDRG=$S(ICDMCC=2:466,ICDMCC=1:467,1:468) Q
DRG469 ;
DRG470 I ICDEXP=1 S ICDMCC=1
       S ICDRG=$S(ICDMCC=2:469,1:470) Q
DRG471 ;
DRG472 ;
DRG473 S ICDRG=$S(ICDMCC=2:471,ICDMCC=1:472,1:473) Q
DRG474 ;
DRG475 ;
DRG476 S ICDRG=$S(ICDMCC=2:474,ICDMCC=1:475,1:476) Q
DRG477 ;
DRG478 ;
DRG479 S ICDRG=$S(ICDMCC=2:477,ICDMCC=1:478,1:479) Q
DRG480 ;
DRG481 ;
DRG482 S ICDRG=$S(ICDMCC=2:480,ICDMCC=1:481,1:482) Q
DRG483 ;
DRG484 S ICDRG=$S(ICDMCC>0:483,1:484) Q
DRG485 ;
DRG486 ;
DRG487 I ICDPD["k" S ICDRG=$S(ICDMCC=2:485,ICDMCC=1:486,1:487) Q
 E  S ICDRG=""
DRG488 ;
DRG489 S ICDRG=$S(ICDMCC>0:488,1:489) Q
DRG490 ;
DRG491 ;
 I ICDPD["6" D DRG456 Q
 I ICDOR["F" D DRG456 Q
 S ICDRG=$S(ICDMCC>0:490,1:491) D  Q
 . I $D(ICDOP(" 84.59")) S ICDRG=490
 . I $D(ICDOP(" 84.62")) S ICDRG=490
 . I $D(ICDOP(" 84.65")) S ICDRG=490
 . I $D(ICDOP(" 84.80")) S ICDRG=490
 . I $D(ICDOP(" 84.82")) S ICDRG=490
 . I $D(ICDOP(" 84.84")) S ICDRG=490
 . I $D(ICDOP(" 03.93")),$D(ICDOP(" 86.94")) S ICDRG=490
 . I $D(ICDOP(" 03.93")),$D(ICDOP(" 86.95")) S ICDRG=490
 . I $D(ICDOP(" 03.93")),$D(ICDOP(" 86.97")) S ICDRG=490
 . I $D(ICDOP(" 03.93")),$D(ICDOP(" 86.98")) S ICDRG=490
DRG492 ;
DRG493 ;
DRG494 S ICDRG=$S(ICDMCC=2:492,ICDMCC=1:493,1:494) Q
DRG495 ;
DRG496 ;
DRG497 S ICDRG=$S(ICDMCC=2:495,ICDMCC=1:496,1:497) Q
DRG498 ;
DRG499 S ICDRG=$S(ICDMCC>0:498,1:499) Q
 Q
