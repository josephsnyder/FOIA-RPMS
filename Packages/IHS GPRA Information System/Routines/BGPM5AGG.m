BGPM5AGG ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"882,00247188160 ",.02)
 ;;00247188160
 ;;9002226.02101,"882,00247188230 ",.01)
 ;;00247188230
 ;;9002226.02101,"882,00247188230 ",.02)
 ;;00247188230
 ;;9002226.02101,"882,00247188260 ",.01)
 ;;00247188260
 ;;9002226.02101,"882,00247188260 ",.02)
 ;;00247188260
 ;;9002226.02101,"882,00247188299 ",.01)
 ;;00247188299
 ;;9002226.02101,"882,00247188299 ",.02)
 ;;00247188299
 ;;9002226.02101,"882,00247200106 ",.01)
 ;;00247200106
 ;;9002226.02101,"882,00247200106 ",.02)
 ;;00247200106
 ;;9002226.02101,"882,00247200130 ",.01)
 ;;00247200130
 ;;9002226.02101,"882,00247200130 ",.02)
 ;;00247200130
 ;;9002226.02101,"882,00247202100 ",.01)
 ;;00247202100
 ;;9002226.02101,"882,00247202100 ",.02)
 ;;00247202100
 ;;9002226.02101,"882,00247202130 ",.01)
 ;;00247202130
 ;;9002226.02101,"882,00247202130 ",.02)
 ;;00247202130
 ;;9002226.02101,"882,00247202160 ",.01)
 ;;00247202160
 ;;9002226.02101,"882,00247202160 ",.02)
 ;;00247202160
 ;;9002226.02101,"882,00247205830 ",.01)
 ;;00247205830
 ;;9002226.02101,"882,00247205830 ",.02)
 ;;00247205830
 ;;9002226.02101,"882,00247210700 ",.01)
 ;;00247210700
 ;;9002226.02101,"882,00247210700 ",.02)
 ;;00247210700
 ;;9002226.02101,"882,00247210730 ",.01)
 ;;00247210730
 ;;9002226.02101,"882,00247210730 ",.02)
 ;;00247210730
 ;;9002226.02101,"882,00247210760 ",.01)
 ;;00247210760
 ;;9002226.02101,"882,00247210760 ",.02)
 ;;00247210760
 ;;9002226.02101,"882,00247210779 ",.01)
 ;;00247210779
 ;;9002226.02101,"882,00247210779 ",.02)
 ;;00247210779
 ;;9002226.02101,"882,00247210790 ",.01)
 ;;00247210790
 ;;9002226.02101,"882,00247210790 ",.02)
 ;;00247210790
 ;;9002226.02101,"882,00247215530 ",.01)
 ;;00247215530
 ;;9002226.02101,"882,00247215530 ",.02)
 ;;00247215530
 ;;9002226.02101,"882,00247215560 ",.01)
 ;;00247215560
 ;;9002226.02101,"882,00247215560 ",.02)
 ;;00247215560
 ;;9002226.02101,"882,00247215590 ",.01)
 ;;00247215590
 ;;9002226.02101,"882,00247215590 ",.02)
 ;;00247215590
 ;;9002226.02101,"882,00247217130 ",.01)
 ;;00247217130
 ;;9002226.02101,"882,00247217130 ",.02)
 ;;00247217130
 ;;9002226.02101,"882,00247223700 ",.01)
 ;;00247223700
 ;;9002226.02101,"882,00247223700 ",.02)
 ;;00247223700
 ;;9002226.02101,"882,00247223730 ",.01)
 ;;00247223730
 ;;9002226.02101,"882,00247223730 ",.02)
 ;;00247223730
 ;;9002226.02101,"882,00247230530 ",.01)
 ;;00247230530
 ;;9002226.02101,"882,00247230530 ",.02)
 ;;00247230530
 ;;9002226.02101,"882,00247230560 ",.01)
 ;;00247230560
 ;;9002226.02101,"882,00247230560 ",.02)
 ;;00247230560
 ;;9002226.02101,"882,00247230590 ",.01)
 ;;00247230590
 ;;9002226.02101,"882,00247230590 ",.02)
 ;;00247230590
 ;;9002226.02101,"882,00247230630 ",.01)
 ;;00247230630
 ;;9002226.02101,"882,00247230630 ",.02)
 ;;00247230630
 ;;9002226.02101,"882,00247230660 ",.01)
 ;;00247230660
 ;;9002226.02101,"882,00247230660 ",.02)
 ;;00247230660
 ;;9002226.02101,"882,00247230690 ",.01)
 ;;00247230690
 ;;9002226.02101,"882,00247230690 ",.02)
 ;;00247230690
 ;;9002226.02101,"882,00247231830 ",.01)
 ;;00247231830
 ;;9002226.02101,"882,00247231830 ",.02)
 ;;00247231830
 ;;9002226.02101,"882,00247231860 ",.01)
 ;;00247231860
 ;;9002226.02101,"882,00247231860 ",.02)
 ;;00247231860
 ;;9002226.02101,"882,00247231890 ",.01)
 ;;00247231890
 ;;9002226.02101,"882,00247231890 ",.02)
 ;;00247231890
 ;;9002226.02101,"882,00247232030 ",.01)
 ;;00247232030
 ;;9002226.02101,"882,00247232030 ",.02)
 ;;00247232030
 ;;9002226.02101,"882,00247232060 ",.01)
 ;;00247232060
 ;;9002226.02101,"882,00247232060 ",.02)
 ;;00247232060
 ;;9002226.02101,"882,00247232090 ",.01)
 ;;00247232090
 ;;9002226.02101,"882,00247232090 ",.02)
 ;;00247232090
 ;;9002226.02101,"882,00339522511 ",.01)
 ;;00339522511
 ;;9002226.02101,"882,00339522511 ",.02)
 ;;00339522511
 ;;9002226.02101,"882,00378001777 ",.01)
 ;;00378001777
 ;;9002226.02101,"882,00378001777 ",.02)
 ;;00378001777
 ;;9002226.02101,"882,00378008101 ",.01)
 ;;00378008101
 ;;9002226.02101,"882,00378008101 ",.02)
 ;;00378008101
 ;;9002226.02101,"882,00378008301 ",.01)
 ;;00378008301
 ;;9002226.02101,"882,00378008301 ",.02)
 ;;00378008301
 ;;9002226.02101,"882,00378008401 ",.01)
 ;;00378008401
 ;;9002226.02101,"882,00378008401 ",.02)
 ;;00378008401
 ;;9002226.02101,"882,00378008601 ",.01)
 ;;00378008601
 ;;9002226.02101,"882,00378008601 ",.02)
 ;;00378008601
 ;;9002226.02101,"882,00378022605 ",.01)
 ;;00378022605
 ;;9002226.02101,"882,00378022605 ",.02)
 ;;00378022605
 ;;9002226.02101,"882,00378022677 ",.01)
 ;;00378022677
 ;;9002226.02101,"882,00378022677 ",.02)
 ;;00378022677
 ;;9002226.02101,"882,00378025405 ",.01)
 ;;00378025405
 ;;9002226.02101,"882,00378025405 ",.02)
 ;;00378025405
 ;;9002226.02101,"882,00378025477 ",.01)
 ;;00378025477
 ;;9002226.02101,"882,00378025477 ",.02)
 ;;00378025477
 ;;9002226.02101,"882,00378027205 ",.01)
 ;;00378027205
 ;;9002226.02101,"882,00378027205 ",.02)
 ;;00378027205
 ;;9002226.02101,"882,00378027277 ",.01)
 ;;00378027277
 ;;9002226.02101,"882,00378027277 ",.02)
 ;;00378027277
 ;;9002226.02101,"882,00378054277 ",.01)
 ;;00378054277
 ;;9002226.02101,"882,00378054277 ",.02)
 ;;00378054277
 ;;9002226.02101,"882,00378054293 ",.01)
 ;;00378054293
 ;;9002226.02101,"882,00378054293 ",.02)
 ;;00378054293
 ;;9002226.02101,"882,00378054377 ",.01)
 ;;00378054377
 ;;9002226.02101,"882,00378054377 ",.02)
 ;;00378054377
 ;;9002226.02101,"882,00378054393 ",.01)
 ;;00378054393
 ;;9002226.02101,"882,00378054393 ",.02)
 ;;00378054393
 ;;9002226.02101,"882,00378054477 ",.01)
 ;;00378054477
 ;;9002226.02101,"882,00378054477 ",.02)
 ;;00378054477
 ;;9002226.02101,"882,00378054493 ",.01)
 ;;00378054493
 ;;9002226.02101,"882,00378054493 ",.02)
 ;;00378054493
 ;;9002226.02101,"882,00378071201 ",.01)
 ;;00378071201
 ;;9002226.02101,"882,00378071201 ",.02)
 ;;00378071201
 ;;9002226.02101,"882,00378072301 ",.01)
 ;;00378072301
 ;;9002226.02101,"882,00378072301 ",.02)
 ;;00378072301
 ;;9002226.02101,"882,00378072305 ",.01)
 ;;00378072305
 ;;9002226.02101,"882,00378072305 ",.02)
 ;;00378072305
 ;;9002226.02101,"882,00378101201 ",.01)
 ;;00378101201
 ;;9002226.02101,"882,00378101201 ",.02)
 ;;00378101201
 ;;9002226.02101,"882,00378101293 ",.01)
 ;;00378101293
 ;;9002226.02101,"882,00378101293 ",.02)
 ;;00378101293
 ;;9002226.02101,"882,00378105101 ",.01)
 ;;00378105101
 ;;9002226.02101,"882,00378105101 ",.02)
 ;;00378105101
 ;;9002226.02101,"882,00378105105 ",.01)
 ;;00378105105
 ;;9002226.02101,"882,00378105105 ",.02)
 ;;00378105105
 ;;9002226.02101,"882,00378105201 ",.01)
 ;;00378105201
 ;;9002226.02101,"882,00378105201 ",.02)
 ;;00378105201
 ;;9002226.02101,"882,00378105210 ",.01)
 ;;00378105210
 ;;9002226.02101,"882,00378105210 ",.02)
 ;;00378105210
 ;;9002226.02101,"882,00378105301 ",.01)
 ;;00378105301
 ;;9002226.02101,"882,00378105301 ",.02)
 ;;00378105301
 ;;9002226.02101,"882,00378105310 ",.01)
 ;;00378105310
 ;;9002226.02101,"882,00378105310 ",.02)
 ;;00378105310
 ;;9002226.02101,"882,00378105401 ",.01)
 ;;00378105401
 ;;9002226.02101,"882,00378105401 ",.02)
 ;;00378105401
 ;;9002226.02101,"882,00378105405 ",.01)
 ;;00378105405
 ;;9002226.02101,"882,00378105405 ",.02)
 ;;00378105405
 ;;9002226.02101,"882,00378111705 ",.01)
 ;;00378111705
 ;;9002226.02101,"882,00378111705 ",.02)
 ;;00378111705
 ;;9002226.02101,"882,00378111777 ",.01)
 ;;00378111777
 ;;9002226.02101,"882,00378111777 ",.02)
 ;;00378111777
 ;;9002226.02101,"882,00378201201 ",.01)
 ;;00378201201
 ;;9002226.02101,"882,00378201201 ",.02)
 ;;00378201201
 ;;9002226.02101,"882,00378201293 ",.01)
 ;;00378201293
 ;;9002226.02101,"882,00378201293 ",.02)
 ;;00378201293
 ;;9002226.02101,"882,00378202501 ",.01)
 ;;00378202501
 ;;9002226.02101,"882,00378202501 ",.02)
 ;;00378202501
 ;;9002226.02101,"882,00378202593 ",.01)
 ;;00378202593
 ;;9002226.02101,"882,00378202593 ",.02)
 ;;00378202593
 ;;9002226.02101,"882,00378207201 ",.01)
 ;;00378207201
 ;;9002226.02101,"882,00378207201 ",.02)
 ;;00378207201
 ;;9002226.02101,"882,00378207205 ",.01)
 ;;00378207205
 ;;9002226.02101,"882,00378207205 ",.02)
 ;;00378207205
 ;;9002226.02101,"882,00378207301 ",.01)
 ;;00378207301
 ;;9002226.02101,"882,00378207301 ",.02)
 ;;00378207301
 ;;9002226.02101,"882,00378207310 ",.01)
 ;;00378207310
 ;;9002226.02101,"882,00378207310 ",.02)
 ;;00378207310
 ;;9002226.02101,"882,00378207401 ",.01)
 ;;00378207401
 ;;9002226.02101,"882,00378207401 ",.02)
 ;;00378207401
 ;;9002226.02101,"882,00378207410 ",.01)
 ;;00378207410
 ;;9002226.02101,"882,00378207410 ",.02)
 ;;00378207410
 ;;9002226.02101,"882,00378207501 ",.01)
 ;;00378207501
 ;;9002226.02101,"882,00378207501 ",.02)
 ;;00378207501
 ;;9002226.02101,"882,00378207510 ",.01)
 ;;00378207510
 ;;9002226.02101,"882,00378207510 ",.02)
 ;;00378207510
 ;;9002226.02101,"882,00378207601 ",.01)
 ;;00378207601
 ;;9002226.02101,"882,00378207601 ",.02)
 ;;00378207601
 ;;9002226.02101,"882,00378207605 ",.01)
 ;;00378207605
 ;;9002226.02101,"882,00378207605 ",.02)
 ;;00378207605
 ;;9002226.02101,"882,00378207701 ",.01)
 ;;00378207701
 ;;9002226.02101,"882,00378207701 ",.02)
 ;;00378207701
 ;;9002226.02101,"882,00378207705 ",.01)
 ;;00378207705
 ;;9002226.02101,"882,00378207705 ",.02)
 ;;00378207705
 ;;9002226.02101,"882,00378300701 ",.01)
 ;;00378300701
 ;;9002226.02101,"882,00378300701 ",.02)
 ;;00378300701
 ;;9002226.02101,"882,00378300710 ",.01)
 ;;00378300710
 ;;9002226.02101,"882,00378300710 ",.02)
 ;;00378300710
 ;;9002226.02101,"882,00378301201 ",.01)
 ;;00378301201
 ;;9002226.02101,"882,00378301201 ",.02)
 ;;00378301201
 ;;9002226.02101,"882,00378301210 ",.01)
 ;;00378301210
 ;;9002226.02101,"882,00378301210 ",.02)
 ;;00378301210
 ;;9002226.02101,"882,00378301701 ",.01)
 ;;00378301701
 ;;9002226.02101,"882,00378301701 ",.02)
 ;;00378301701
 ;;9002226.02101,"882,00378301710 ",.01)
 ;;00378301710
 ;;9002226.02101,"882,00378301710 ",.02)
 ;;00378301710
 ;;9002226.02101,"882,00378302201 ",.01)
 ;;00378302201
 ;;9002226.02101,"882,00378302201 ",.02)
 ;;00378302201
 ;;9002226.02101,"882,00378324101 ",.01)
 ;;00378324101
 ;;9002226.02101,"882,00378324101 ",.02)
 ;;00378324101
 ;;9002226.02101,"882,00378324105 ",.01)
 ;;00378324105
 ;;9002226.02101,"882,00378324105 ",.02)
 ;;00378324105
 ;;9002226.02101,"882,00378324193 ",.01)
 ;;00378324193
 ;;9002226.02101,"882,00378324193 ",.02)
 ;;00378324193
 ;;9002226.02101,"882,00378324201 ",.01)
 ;;00378324201
 ;;9002226.02101,"882,00378324201 ",.02)
 ;;00378324201
 ;;9002226.02101,"882,00378324205 ",.01)
 ;;00378324205
 ;;9002226.02101,"882,00378324205 ",.02)
 ;;00378324205
 ;;9002226.02101,"882,00378324293 ",.01)
 ;;00378324293
 ;;9002226.02101,"882,00378324293 ",.02)
 ;;00378324293
 ;;9002226.02101,"882,00440723160 ",.01)
 ;;00440723160
 ;;9002226.02101,"882,00440723160 ",.02)
 ;;00440723160
 ;;9002226.02101,"882,00440723190 ",.01)
 ;;00440723190
 ;;9002226.02101,"882,00440723190 ",.02)
 ;;00440723190
 ;;9002226.02101,"882,00440723192 ",.01)
 ;;00440723192
 ;;9002226.02101,"882,00440723192 ",.02)
 ;;00440723192
 ;;9002226.02101,"882,00440723194 ",.01)
 ;;00440723194
 ;;9002226.02101,"882,00440723194 ",.02)
 ;;00440723194
 ;;9002226.02101,"882,00440723260 ",.01)
 ;;00440723260
 ;;9002226.02101,"882,00440723260 ",.02)
 ;;00440723260
 ;;9002226.02101,"882,00440723290 ",.01)
 ;;00440723290
 ;;9002226.02101,"882,00440723290 ",.02)
 ;;00440723290
 ;;9002226.02101,"882,00440723292 ",.01)
 ;;00440723292
 ;;9002226.02101,"882,00440723292 ",.02)
 ;;00440723292
 ;;9002226.02101,"882,00440723294 ",.01)
 ;;00440723294
