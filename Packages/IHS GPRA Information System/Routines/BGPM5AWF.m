BGPM5AWF ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1033,60760011420 ",.01)
 ;;60760011420
 ;;9002226.02101,"1033,60760011420 ",.02)
 ;;60760011420
 ;;9002226.02101,"1033,60760011421 ",.01)
 ;;60760011421
 ;;9002226.02101,"1033,60760011421 ",.02)
 ;;60760011421
 ;;9002226.02101,"1033,60760011428 ",.01)
 ;;60760011428
 ;;9002226.02101,"1033,60760011428 ",.02)
 ;;60760011428
 ;;9002226.02101,"1033,60760011430 ",.01)
 ;;60760011430
 ;;9002226.02101,"1033,60760011430 ",.02)
 ;;60760011430
 ;;9002226.02101,"1033,60760011440 ",.01)
 ;;60760011440
 ;;9002226.02101,"1033,60760011440 ",.02)
 ;;60760011440
 ;;9002226.02101,"1033,60760017420 ",.01)
 ;;60760017420
 ;;9002226.02101,"1033,60760017420 ",.02)
 ;;60760017420
 ;;9002226.02101,"1033,60760017421 ",.01)
 ;;60760017421
 ;;9002226.02101,"1033,60760017421 ",.02)
 ;;60760017421
 ;;9002226.02101,"1033,60760017424 ",.01)
 ;;60760017424
 ;;9002226.02101,"1033,60760017424 ",.02)
 ;;60760017424
 ;;9002226.02101,"1033,60760017428 ",.01)
 ;;60760017428
 ;;9002226.02101,"1033,60760017428 ",.02)
 ;;60760017428
 ;;9002226.02101,"1033,60760017430 ",.01)
 ;;60760017430
 ;;9002226.02101,"1033,60760017430 ",.02)
 ;;60760017430
 ;;9002226.02101,"1033,60760017440 ",.01)
 ;;60760017440
 ;;9002226.02101,"1033,60760017440 ",.02)
 ;;60760017440
 ;;9002226.02101,"1033,60760026120 ",.01)
 ;;60760026120
 ;;9002226.02101,"1033,60760026120 ",.02)
 ;;60760026120
 ;;9002226.02101,"1033,60760026821 ",.01)
 ;;60760026821
 ;;9002226.02101,"1033,60760026821 ",.02)
 ;;60760026821
 ;;9002226.02101,"1033,60760026828 ",.01)
 ;;60760026828
 ;;9002226.02101,"1033,60760026828 ",.02)
 ;;60760026828
 ;;9002226.02101,"1033,60760026830 ",.01)
 ;;60760026830
 ;;9002226.02101,"1033,60760026830 ",.02)
 ;;60760026830
 ;;9002226.02101,"1033,60760033704 ",.01)
 ;;60760033704
 ;;9002226.02101,"1033,60760033704 ",.02)
 ;;60760033704
 ;;9002226.02101,"1033,60760033708 ",.01)
 ;;60760033708
 ;;9002226.02101,"1033,60760033708 ",.02)
 ;;60760033708
 ;;9002226.02101,"1033,60760033716 ",.01)
 ;;60760033716
 ;;9002226.02101,"1033,60760033716 ",.02)
 ;;60760033716
 ;;9002226.02101,"1033,60760033721 ",.01)
 ;;60760033721
 ;;9002226.02101,"1033,60760033721 ",.02)
 ;;60760033721
 ;;9002226.02101,"1033,60760033728 ",.01)
 ;;60760033728
 ;;9002226.02101,"1033,60760033728 ",.02)
 ;;60760033728
 ;;9002226.02101,"1033,60760033760 ",.01)
 ;;60760033760
 ;;9002226.02101,"1033,60760033760 ",.02)
 ;;60760033760
 ;;9002226.02101,"1033,60760033790 ",.01)
 ;;60760033790
 ;;9002226.02101,"1033,60760033790 ",.02)
 ;;60760033790
 ;;9002226.02101,"1033,60760056214 ",.01)
 ;;60760056214
 ;;9002226.02101,"1033,60760056214 ",.02)
 ;;60760056214
 ;;9002226.02101,"1033,60760056220 ",.01)
 ;;60760056220
 ;;9002226.02101,"1033,60760056220 ",.02)
 ;;60760056220
 ;;9002226.02101,"1033,60760069305 ",.01)
 ;;60760069305
 ;;9002226.02101,"1033,60760069305 ",.02)
 ;;60760069305
 ;;9002226.02101,"1033,60760069315 ",.01)
 ;;60760069315
 ;;9002226.02101,"1033,60760069315 ",.02)
 ;;60760069315
 ;;9002226.02101,"1033,60760069328 ",.01)
 ;;60760069328
 ;;9002226.02101,"1033,60760069328 ",.02)
 ;;60760069328
 ;;9002226.02101,"1033,60760069330 ",.01)
 ;;60760069330
 ;;9002226.02101,"1033,60760069330 ",.02)
 ;;60760069330
 ;;9002226.02101,"1033,60760069340 ",.01)
 ;;60760069340
 ;;9002226.02101,"1033,60760069340 ",.02)
 ;;60760069340
 ;;9002226.02101,"1033,60760071608 ",.01)
 ;;60760071608
 ;;9002226.02101,"1033,60760071608 ",.02)
 ;;60760071608
 ;;9002226.02101,"1033,60760071616 ",.01)
 ;;60760071616
 ;;9002226.02101,"1033,60760071616 ",.02)
 ;;60760071616
 ;;9002226.02101,"1033,60760071618 ",.01)
 ;;60760071618
 ;;9002226.02101,"1033,60760071618 ",.02)
 ;;60760071618
 ;;9002226.02101,"1033,60760071621 ",.01)
 ;;60760071621
 ;;9002226.02101,"1033,60760071621 ",.02)
 ;;60760071621
 ;;9002226.02101,"1033,60760071624 ",.01)
 ;;60760071624
 ;;9002226.02101,"1033,60760071624 ",.02)
 ;;60760071624
 ;;9002226.02101,"1033,60760071628 ",.01)
 ;;60760071628
 ;;9002226.02101,"1033,60760071628 ",.02)
 ;;60760071628
 ;;9002226.02101,"1033,60760071630 ",.01)
 ;;60760071630
 ;;9002226.02101,"1033,60760071630 ",.02)
 ;;60760071630
 ;;9002226.02101,"1033,60760071640 ",.01)
 ;;60760071640
 ;;9002226.02101,"1033,60760071640 ",.02)
 ;;60760071640
 ;;9002226.02101,"1033,60760072421 ",.01)
 ;;60760072421
 ;;9002226.02101,"1033,60760072421 ",.02)
 ;;60760072421
 ;;9002226.02101,"1033,60760072428 ",.01)
 ;;60760072428
 ;;9002226.02101,"1033,60760072428 ",.02)
 ;;60760072428
 ;;9002226.02101,"1033,60760072430 ",.01)
 ;;60760072430
 ;;9002226.02101,"1033,60760072430 ",.02)
 ;;60760072430
 ;;9002226.02101,"1033,60760081510 ",.01)
 ;;60760081510
 ;;9002226.02101,"1033,60760081510 ",.02)
 ;;60760081510
 ;;9002226.02101,"1033,60760081514 ",.01)
 ;;60760081514
 ;;9002226.02101,"1033,60760081514 ",.02)
 ;;60760081514
 ;;9002226.02101,"1033,60760081520 ",.01)
 ;;60760081520
 ;;9002226.02101,"1033,60760081520 ",.02)
 ;;60760081520
 ;;9002226.02101,"1033,60793013010 ",.01)
 ;;60793013010
 ;;9002226.02101,"1033,60793013010 ",.02)
 ;;60793013010
 ;;9002226.02101,"1033,60793013110 ",.01)
 ;;60793013110
 ;;9002226.02101,"1033,60793013110 ",.02)
 ;;60793013110
 ;;9002226.02101,"1033,61073004105 ",.01)
 ;;61073004105
 ;;9002226.02101,"1033,61073004105 ",.02)
 ;;61073004105
 ;;9002226.02101,"1033,61073004205 ",.01)
 ;;61073004205
 ;;9002226.02101,"1033,61073004205 ",.02)
 ;;61073004205
 ;;9002226.02101,"1033,61106473003 ",.01)
 ;;61106473003
 ;;9002226.02101,"1033,61106473003 ",.02)
 ;;61106473003
 ;;9002226.02101,"1033,61106473203 ",.01)
 ;;61106473203
 ;;9002226.02101,"1033,61106473203 ",.02)
 ;;61106473203
 ;;9002226.02101,"1033,61258833801 ",.01)
 ;;61258833801
 ;;9002226.02101,"1033,61258833801 ",.02)
 ;;61258833801
 ;;9002226.02101,"1033,61314062810 ",.01)
 ;;61314062810
 ;;9002226.02101,"1033,61314062810 ",.02)
 ;;61314062810
 ;;9002226.02101,"1033,61392051225 ",.01)
 ;;61392051225
 ;;9002226.02101,"1033,61392051225 ",.02)
 ;;61392051225
 ;;9002226.02101,"1033,61392051230 ",.01)
 ;;61392051230
 ;;9002226.02101,"1033,61392051230 ",.02)
 ;;61392051230
 ;;9002226.02101,"1033,61392051231 ",.01)
 ;;61392051231
 ;;9002226.02101,"1033,61392051231 ",.02)
 ;;61392051231
 ;;9002226.02101,"1033,61392051239 ",.01)
 ;;61392051239
 ;;9002226.02101,"1033,61392051239 ",.02)
 ;;61392051239
 ;;9002226.02101,"1033,61392071432 ",.01)
 ;;61392071432
 ;;9002226.02101,"1033,61392071432 ",.02)
 ;;61392071432
 ;;9002226.02101,"1033,61392071445 ",.01)
 ;;61392071445
 ;;9002226.02101,"1033,61392071445 ",.02)
 ;;61392071445
 ;;9002226.02101,"1033,61392071454 ",.01)
 ;;61392071454
 ;;9002226.02101,"1033,61392071454 ",.02)
 ;;61392071454
 ;;9002226.02101,"1033,61392071491 ",.01)
 ;;61392071491
 ;;9002226.02101,"1033,61392071491 ",.02)
 ;;61392071491
 ;;9002226.02101,"1033,61392073130 ",.01)
 ;;61392073130
 ;;9002226.02101,"1033,61392073130 ",.02)
 ;;61392073130
 ;;9002226.02101,"1033,61392073131 ",.01)
 ;;61392073131
 ;;9002226.02101,"1033,61392073131 ",.02)
 ;;61392073131
 ;;9002226.02101,"1033,61392073132 ",.01)
 ;;61392073132
 ;;9002226.02101,"1033,61392073132 ",.02)
 ;;61392073132
 ;;9002226.02101,"1033,61392073139 ",.01)
 ;;61392073139
 ;;9002226.02101,"1033,61392073139 ",.02)
 ;;61392073139
 ;;9002226.02101,"1033,61392073145 ",.01)
 ;;61392073145
 ;;9002226.02101,"1033,61392073145 ",.02)
 ;;61392073145
 ;;9002226.02101,"1033,61392073151 ",.01)
 ;;61392073151
 ;;9002226.02101,"1033,61392073151 ",.02)
 ;;61392073151
 ;;9002226.02101,"1033,61392073154 ",.01)
 ;;61392073154
 ;;9002226.02101,"1033,61392073154 ",.02)
 ;;61392073154
 ;;9002226.02101,"1033,61392073160 ",.01)
 ;;61392073160
 ;;9002226.02101,"1033,61392073160 ",.02)
 ;;61392073160
 ;;9002226.02101,"1033,61392073190 ",.01)
 ;;61392073190
 ;;9002226.02101,"1033,61392073190 ",.02)
 ;;61392073190
 ;;9002226.02101,"1033,61392073191 ",.01)
 ;;61392073191
 ;;9002226.02101,"1033,61392073191 ",.02)
 ;;61392073191
 ;;9002226.02101,"1033,61392073230 ",.01)
 ;;61392073230
 ;;9002226.02101,"1033,61392073230 ",.02)
 ;;61392073230
 ;;9002226.02101,"1033,61392073231 ",.01)
 ;;61392073231
 ;;9002226.02101,"1033,61392073231 ",.02)
 ;;61392073231
 ;;9002226.02101,"1033,61392073232 ",.01)
 ;;61392073232
 ;;9002226.02101,"1033,61392073232 ",.02)
 ;;61392073232
 ;;9002226.02101,"1033,61392073239 ",.01)
 ;;61392073239
 ;;9002226.02101,"1033,61392073239 ",.02)
 ;;61392073239
 ;;9002226.02101,"1033,61392073245 ",.01)
 ;;61392073245
 ;;9002226.02101,"1033,61392073245 ",.02)
 ;;61392073245
 ;;9002226.02101,"1033,61392073251 ",.01)
 ;;61392073251
 ;;9002226.02101,"1033,61392073251 ",.02)
 ;;61392073251
 ;;9002226.02101,"1033,61392073254 ",.01)
 ;;61392073254
 ;;9002226.02101,"1033,61392073254 ",.02)
 ;;61392073254
 ;;9002226.02101,"1033,61392073260 ",.01)
 ;;61392073260
 ;;9002226.02101,"1033,61392073260 ",.02)
 ;;61392073260
 ;;9002226.02101,"1033,61392073290 ",.01)
 ;;61392073290
 ;;9002226.02101,"1033,61392073290 ",.02)
 ;;61392073290
 ;;9002226.02101,"1033,61392073291 ",.01)
 ;;61392073291
 ;;9002226.02101,"1033,61392073291 ",.02)
 ;;61392073291
 ;;9002226.02101,"1033,61392077425 ",.01)
 ;;61392077425
 ;;9002226.02101,"1033,61392077425 ",.02)
 ;;61392077425
 ;;9002226.02101,"1033,61392077430 ",.01)
 ;;61392077430
 ;;9002226.02101,"1033,61392077430 ",.02)
 ;;61392077430
 ;;9002226.02101,"1033,61392077431 ",.01)
 ;;61392077431
 ;;9002226.02101,"1033,61392077431 ",.02)
 ;;61392077431
 ;;9002226.02101,"1033,61392077439 ",.01)
 ;;61392077439
 ;;9002226.02101,"1033,61392077439 ",.02)
 ;;61392077439
 ;;9002226.02101,"1033,61392078230 ",.01)
 ;;61392078230
 ;;9002226.02101,"1033,61392078230 ",.02)
 ;;61392078230
 ;;9002226.02101,"1033,61392078231 ",.01)
 ;;61392078231
 ;;9002226.02101,"1033,61392078231 ",.02)
 ;;61392078231
 ;;9002226.02101,"1033,61392078232 ",.01)
 ;;61392078232
 ;;9002226.02101,"1033,61392078232 ",.02)
 ;;61392078232
 ;;9002226.02101,"1033,61392078239 ",.01)
 ;;61392078239
 ;;9002226.02101,"1033,61392078239 ",.02)
 ;;61392078239
 ;;9002226.02101,"1033,61392078245 ",.01)
 ;;61392078245
 ;;9002226.02101,"1033,61392078245 ",.02)
 ;;61392078245
 ;;9002226.02101,"1033,61392078251 ",.01)
 ;;61392078251
 ;;9002226.02101,"1033,61392078251 ",.02)
 ;;61392078251
 ;;9002226.02101,"1033,61392078254 ",.01)
 ;;61392078254
 ;;9002226.02101,"1033,61392078254 ",.02)
 ;;61392078254
 ;;9002226.02101,"1033,61392078260 ",.01)
 ;;61392078260
 ;;9002226.02101,"1033,61392078260 ",.02)
 ;;61392078260
 ;;9002226.02101,"1033,61392078290 ",.01)
 ;;61392078290
 ;;9002226.02101,"1033,61392078290 ",.02)
 ;;61392078290
 ;;9002226.02101,"1033,61392078291 ",.01)
 ;;61392078291
 ;;9002226.02101,"1033,61392078291 ",.02)
 ;;61392078291
 ;;9002226.02101,"1033,61392078330 ",.01)
 ;;61392078330
 ;;9002226.02101,"1033,61392078330 ",.02)
 ;;61392078330
 ;;9002226.02101,"1033,61392078331 ",.01)
 ;;61392078331
 ;;9002226.02101,"1033,61392078331 ",.02)
 ;;61392078331
 ;;9002226.02101,"1033,61392078332 ",.01)
 ;;61392078332
 ;;9002226.02101,"1033,61392078332 ",.02)
 ;;61392078332
 ;;9002226.02101,"1033,61392078339 ",.01)
 ;;61392078339
 ;;9002226.02101,"1033,61392078339 ",.02)
 ;;61392078339
 ;;9002226.02101,"1033,61392078345 ",.01)
 ;;61392078345
 ;;9002226.02101,"1033,61392078345 ",.02)
 ;;61392078345
 ;;9002226.02101,"1033,61392078351 ",.01)
 ;;61392078351
 ;;9002226.02101,"1033,61392078351 ",.02)
 ;;61392078351
 ;;9002226.02101,"1033,61392078354 ",.01)
 ;;61392078354
 ;;9002226.02101,"1033,61392078354 ",.02)
 ;;61392078354
 ;;9002226.02101,"1033,61392078360 ",.01)
 ;;61392078360