BGPM3ADP ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"68382006714 ")
 ;;985
 ;;21,"68382006716 ")
 ;;986
 ;;21,"68382006724 ")
 ;;987
 ;;21,"68382006805 ")
 ;;1195
 ;;21,"68382006806 ")
 ;;1196
 ;;21,"68382006810 ")
 ;;1197
 ;;21,"68382006814 ")
 ;;1198
 ;;21,"68382006816 ")
 ;;1199
 ;;21,"68382006819 ")
 ;;1200
 ;;21,"68382006840 ")
 ;;1201
 ;;21,"68382006905 ")
 ;;1458
 ;;21,"68382006906 ")
 ;;1459
 ;;21,"68382006910 ")
 ;;1460
 ;;21,"68382006914 ")
 ;;1461
 ;;21,"68382006916 ")
 ;;1462
 ;;21,"68533000500 ")
 ;;1320
 ;;21,"68533000512 ")
 ;;1321
 ;;21,"68533000525 ")
 ;;1322
 ;;21,"68533000540 ")
 ;;1323
 ;;21,"68533000600 ")
 ;;787
 ;;21,"68533000612 ")
 ;;788
 ;;21,"68533000625 ")
 ;;789
 ;;21,"68533000640 ")
 ;;790
 ;;21,"68533000700 ")
 ;;988
 ;;21,"68533000712 ")
 ;;989
 ;;21,"68533000740 ")
 ;;990
 ;;21,"68533000745 ")
 ;;991
 ;;21,"68533000800 ")
 ;;1202
 ;;21,"68533000812 ")
 ;;1203
 ;;21,"68533000822 ")
 ;;1204
 ;;21,"68533000840 ")
 ;;1205
 ;;21,"68533000900 ")
 ;;1463
 ;;21,"68533000912 ")
 ;;1464
 ;;21,"68533000922 ")
 ;;1465
 ;;21,"68533000940 ")
 ;;1466
 ;;21,"68533050550 ")
 ;;1324
 ;;21,"68533050590 ")
 ;;1325
 ;;21,"68533050650 ")
 ;;791
 ;;21,"68533050690 ")
 ;;792
 ;;21,"68533050750 ")
 ;;992
 ;;21,"68533050890 ")
 ;;1206
 ;;21,"68533050990 ")
 ;;1467
 ;;21,"68688009300 ")
 ;;793
 ;;21,"68688029200 ")
 ;;1468
 ;;21,"68688038400 ")
 ;;993
 ;;21,"68688087900 ")
 ;;1207
 ;;21,"68688092400 ")
 ;;1326
 ;;21,"68788005203 ")
 ;;994
 ;;21,"68788005206 ")
 ;;995
 ;;21,"68788005209 ")
 ;;996
 ;;21,"68788007403 ")
 ;;625
 ;;21,"68788007406 ")
 ;;626
 ;;21,"68788007409 ")
 ;;627
 ;;21,"68788057603 ")
 ;;396
 ;;21,"68788057606 ")
 ;;397
 ;;21,"68788057609 ")
 ;;398
 ;;21,"68788070603 ")
 ;;1208
 ;;21,"68788070606 ")
 ;;1209
 ;;21,"68788070609 ")
 ;;1210
 ;;21,"68788075503 ")
 ;;399
 ;;21,"68788075506 ")
 ;;400
 ;;21,"68788075509 ")
 ;;401
 ;;21,"68788079603 ")
 ;;794
 ;;21,"68788079606 ")
 ;;795
 ;;21,"68788079609 ")
 ;;796
 ;;21,"68788092603 ")
 ;;165
 ;;21,"68788092606 ")
 ;;166
 ;;21,"68788092609 ")
 ;;167
 ;;21,"68788092803 ")
 ;;628
 ;;21,"68788092806 ")
 ;;629
 ;;21,"68788092809 ")
 ;;630
 ;;21,"68788236403 ")
 ;;402
 ;;21,"68788236406 ")
 ;;403
 ;;21,"68788236409 ")
 ;;404
 ;;21,"68788263303 ")
 ;;168
 ;;21,"68788263306 ")
 ;;169
 ;;21,"68788263309 ")
 ;;170
 ;;21,"68788263403 ")
 ;;405
 ;;21,"68788263503 ")
 ;;631
 ;;21,"68788263506 ")
 ;;632
 ;;21,"68788263509 ")
 ;;633
 ;;9002226,785,.01)
 ;;BGPMU STATIN NDCS
 ;;9002226,785,.02)
 ;;MU CQM Statin NDC codes
 ;;9002226,785,.04)
 ;;@
 ;;9002226,785,.06)
 ;;@
 ;;9002226,785,.08)
 ;;@
 ;;9002226,785,.09)
 ;;@
 ;;9002226,785,.11)
 ;;@
 ;;9002226,785,.12)
 ;;@
 ;;9002226,785,.13)
 ;;@
 ;;9002226,785,.14)
 ;;@
 ;;9002226,785,.15)
 ;;@
 ;;9002226,785,.16)
 ;;@
 ;;9002226,785,.17)
 ;;@
 ;;9002226,785,3101)
 ;;@
 ;;9002226.02101,"785,00006074007 ",.01)
 ;;00006074007
 ;;9002226.02101,"785,00006074007 ",.02)
 ;;00006074007
 ;;9002226.02101,"785,00006388810 ",.01)
 ;;00006388810
 ;;9002226.02101,"785,00006388810 ",.02)
 ;;00006388810
 ;;9002226.02101,"785,00006388830 ",.01)
 ;;00006388830
 ;;9002226.02101,"785,00006388830 ",.02)
 ;;00006388830
 ;;9002226.02101,"785,00006388890 ",.01)
 ;;00006388890
 ;;9002226.02101,"785,00006388890 ",.02)
 ;;00006388890
 ;;9002226.02101,"785,00006388910 ",.01)
 ;;00006388910
 ;;9002226.02101,"785,00006388910 ",.02)
 ;;00006388910
 ;;9002226.02101,"785,00006388930 ",.01)
 ;;00006388930
 ;;9002226.02101,"785,00006388930 ",.02)
 ;;00006388930
 ;;9002226.02101,"785,00006388990 ",.01)
 ;;00006388990
 ;;9002226.02101,"785,00006388990 ",.02)
 ;;00006388990
 ;;9002226.02101,"785,00006389010 ",.01)
 ;;00006389010
 ;;9002226.02101,"785,00006389010 ",.02)
 ;;00006389010
 ;;9002226.02101,"785,00006389030 ",.01)
 ;;00006389030
 ;;9002226.02101,"785,00006389030 ",.02)
 ;;00006389030
 ;;9002226.02101,"785,00006389090 ",.01)
 ;;00006389090
 ;;9002226.02101,"785,00006389090 ",.02)
 ;;00006389090
 ;;9002226.02101,"785,00006389110 ",.01)
 ;;00006389110
 ;;9002226.02101,"785,00006389110 ",.02)
 ;;00006389110
 ;;9002226.02101,"785,00006389130 ",.01)
 ;;00006389130
 ;;9002226.02101,"785,00006389130 ",.02)
 ;;00006389130
 ;;9002226.02101,"785,00006389190 ",.01)
 ;;00006389190
 ;;9002226.02101,"785,00006389190 ",.02)
 ;;00006389190
 ;;9002226.02101,"785,00021331290 ",.01)
 ;;00021331290
 ;;9002226.02101,"785,00021331290 ",.02)
 ;;00021331290
 ;;9002226.02101,"785,00093057606 ",.01)
 ;;00093057606
 ;;9002226.02101,"785,00093057606 ",.02)
 ;;00093057606
 ;;9002226.02101,"785,00093057610 ",.01)
 ;;00093057610
 ;;9002226.02101,"785,00093057610 ",.02)
 ;;00093057610
 ;;9002226.02101,"785,00093057619 ",.01)
 ;;00093057619
 ;;9002226.02101,"785,00093057619 ",.02)
 ;;00093057619
 ;;9002226.02101,"785,00093057693 ",.01)
 ;;00093057693
 ;;9002226.02101,"785,00093057693 ",.02)
 ;;00093057693
 ;;9002226.02101,"785,00093092606 ",.01)
 ;;00093092606
 ;;9002226.02101,"785,00093092606 ",.02)
 ;;00093092606
 ;;9002226.02101,"785,00093092610 ",.01)
 ;;00093092610
 ;;9002226.02101,"785,00093092610 ",.02)
 ;;00093092610
 ;;9002226.02101,"785,00093092619 ",.01)
 ;;00093092619
 ;;9002226.02101,"785,00093092619 ",.02)
 ;;00093092619
 ;;9002226.02101,"785,00093092693 ",.01)
 ;;00093092693
 ;;9002226.02101,"785,00093092693 ",.02)
 ;;00093092693
 ;;9002226.02101,"785,00093092806 ",.01)
 ;;00093092806
 ;;9002226.02101,"785,00093092806 ",.02)
 ;;00093092806
 ;;9002226.02101,"785,00093092810 ",.01)
 ;;00093092810
 ;;9002226.02101,"785,00093092810 ",.02)
 ;;00093092810
 ;;9002226.02101,"785,00093092819 ",.01)
 ;;00093092819
 ;;9002226.02101,"785,00093092819 ",.02)
 ;;00093092819
 ;;9002226.02101,"785,00093092893 ",.01)
 ;;00093092893
 ;;9002226.02101,"785,00093092893 ",.02)
 ;;00093092893
 ;;9002226.02101,"785,00093715217 ",.01)
 ;;00093715217
 ;;9002226.02101,"785,00093715217 ",.02)
 ;;00093715217
 ;;9002226.02101,"785,00093715219 ",.01)
 ;;00093715219
 ;;9002226.02101,"785,00093715219 ",.02)
 ;;00093715219
 ;;9002226.02101,"785,00093715256 ",.01)
 ;;00093715256
 ;;9002226.02101,"785,00093715256 ",.02)
 ;;00093715256
 ;;9002226.02101,"785,00093715293 ",.01)
 ;;00093715293
 ;;9002226.02101,"785,00093715293 ",.02)
 ;;00093715293
 ;;9002226.02101,"785,00093715298 ",.01)
 ;;00093715298
 ;;9002226.02101,"785,00093715298 ",.02)
 ;;00093715298
 ;;9002226.02101,"785,00093715310 ",.01)
 ;;00093715310
 ;;9002226.02101,"785,00093715310 ",.02)
 ;;00093715310
 ;;9002226.02101,"785,00093715319 ",.01)
 ;;00093715319
 ;;9002226.02101,"785,00093715319 ",.02)
 ;;00093715319
 ;;9002226.02101,"785,00093715356 ",.01)
 ;;00093715356
 ;;9002226.02101,"785,00093715356 ",.02)
 ;;00093715356
 ;;9002226.02101,"785,00093715393 ",.01)
 ;;00093715393
 ;;9002226.02101,"785,00093715393 ",.02)
 ;;00093715393
 ;;9002226.02101,"785,00093715398 ",.01)
 ;;00093715398
 ;;9002226.02101,"785,00093715398 ",.02)
 ;;00093715398
 ;;9002226.02101,"785,00093715410 ",.01)
 ;;00093715410
 ;;9002226.02101,"785,00093715410 ",.02)
 ;;00093715410
 ;;9002226.02101,"785,00093715419 ",.01)
 ;;00093715419
 ;;9002226.02101,"785,00093715419 ",.02)
 ;;00093715419
 ;;9002226.02101,"785,00093715450 ",.01)
 ;;00093715450
 ;;9002226.02101,"785,00093715450 ",.02)
 ;;00093715450
 ;;9002226.02101,"785,00093715456 ",.01)
 ;;00093715456
 ;;9002226.02101,"785,00093715456 ",.02)
 ;;00093715456
 ;;9002226.02101,"785,00093715493 ",.01)
 ;;00093715493
 ;;9002226.02101,"785,00093715493 ",.02)
 ;;00093715493
 ;;9002226.02101,"785,00093715498 ",.01)
 ;;00093715498
 ;;9002226.02101,"785,00093715498 ",.02)
 ;;00093715498
 ;;9002226.02101,"785,00093715510 ",.01)
 ;;00093715510
 ;;9002226.02101,"785,00093715510 ",.02)
 ;;00093715510
 ;;9002226.02101,"785,00093715519 ",.01)
 ;;00093715519
 ;;9002226.02101,"785,00093715519 ",.02)
 ;;00093715519
 ;;9002226.02101,"785,00093715556 ",.01)
 ;;00093715556
 ;;9002226.02101,"785,00093715556 ",.02)
 ;;00093715556
 ;;9002226.02101,"785,00093715593 ",.01)
 ;;00093715593
 ;;9002226.02101,"785,00093715593 ",.02)
 ;;00093715593
 ;;9002226.02101,"785,00093715596 ",.01)
 ;;00093715596
 ;;9002226.02101,"785,00093715596 ",.02)
 ;;00093715596
 ;;9002226.02101,"785,00093715598 ",.01)
 ;;00093715598
 ;;9002226.02101,"785,00093715598 ",.02)
 ;;00093715598
 ;;9002226.02101,"785,00093715610 ",.01)
 ;;00093715610
 ;;9002226.02101,"785,00093715610 ",.02)
 ;;00093715610
 ;;9002226.02101,"785,00093715619 ",.01)
 ;;00093715619
 ;;9002226.02101,"785,00093715619 ",.02)
 ;;00093715619
 ;;9002226.02101,"785,00093715656 ",.01)
 ;;00093715656
 ;;9002226.02101,"785,00093715656 ",.02)
 ;;00093715656
 ;;9002226.02101,"785,00093715693 ",.01)
 ;;00093715693
 ;;9002226.02101,"785,00093715693 ",.02)
 ;;00093715693
 ;;9002226.02101,"785,00093715698 ",.01)
 ;;00093715698
 ;;9002226.02101,"785,00093715698 ",.02)
 ;;00093715698
 ;;9002226.02101,"785,00172057610 ",.01)
 ;;00172057610
 ;;9002226.02101,"785,00172057610 ",.02)
 ;;00172057610
 ;;9002226.02101,"785,00172057649 ",.01)
 ;;00172057649
 ;;9002226.02101,"785,00172057649 ",.02)
 ;;00172057649
 ;;9002226.02101,"785,00172057680 ",.01)
 ;;00172057680
 ;;9002226.02101,"785,00172057680 ",.02)
 ;;00172057680
 ;;9002226.02101,"785,00172092610 ",.01)
 ;;00172092610
 ;;9002226.02101,"785,00172092610 ",.02)
 ;;00172092610
 ;;9002226.02101,"785,00172092649 ",.01)
 ;;00172092649
 ;;9002226.02101,"785,00172092649 ",.02)
 ;;00172092649
 ;;9002226.02101,"785,00172092680 ",.01)
 ;;00172092680
 ;;9002226.02101,"785,00172092680 ",.02)
 ;;00172092680
 ;;9002226.02101,"785,00172092810 ",.01)
 ;;00172092810
 ;;9002226.02101,"785,00172092810 ",.02)
 ;;00172092810
 ;;9002226.02101,"785,00172092849 ",.01)
 ;;00172092849
 ;;9002226.02101,"785,00172092849 ",.02)
 ;;00172092849
 ;;9002226.02101,"785,00172092880 ",.01)
 ;;00172092880
 ;;9002226.02101,"785,00172092880 ",.02)
 ;;00172092880
 ;;9002226.02101,"785,00179143401 ",.01)
 ;;00179143401
 ;;9002226.02101,"785,00179143401 ",.02)
 ;;00179143401
 ;;9002226.02101,"785,00179143430 ",.01)
 ;;00179143430
 ;;9002226.02101,"785,00179143430 ",.02)
 ;;00179143430
 ;;9002226.02101,"785,00179143450 ",.01)
 ;;00179143450
 ;;9002226.02101,"785,00179143450 ",.02)
 ;;00179143450
 ;;9002226.02101,"785,00179143460 ",.01)
 ;;00179143460
 ;;9002226.02101,"785,00179143460 ",.02)
 ;;00179143460
 ;;9002226.02101,"785,00179143490 ",.01)
 ;;00179143490
 ;;9002226.02101,"785,00179143490 ",.02)
 ;;00179143490
 ;;9002226.02101,"785,00179143501 ",.01)
 ;;00179143501
 ;;9002226.02101,"785,00179143501 ",.02)
 ;;00179143501
 ;;9002226.02101,"785,00179143530 ",.01)
 ;;00179143530
 ;;9002226.02101,"785,00179143530 ",.02)
 ;;00179143530
 ;;9002226.02101,"785,00179143550 ",.01)
 ;;00179143550
 ;;9002226.02101,"785,00179143550 ",.02)
 ;;00179143550
 ;;9002226.02101,"785,00179143560 ",.01)
 ;;00179143560
 ;;9002226.02101,"785,00179143560 ",.02)
 ;;00179143560
 ;;9002226.02101,"785,00179143590 ",.01)
 ;;00179143590
 ;;9002226.02101,"785,00179143590 ",.02)
 ;;00179143590
 ;;9002226.02101,"785,00179152101 ",.01)
 ;;00179152101
 ;;9002226.02101,"785,00179152101 ",.02)
 ;;00179152101
 ;;9002226.02101,"785,00179152111 ",.01)
 ;;00179152111
 ;;9002226.02101,"785,00179152111 ",.02)
 ;;00179152111
 ;;9002226.02101,"785,00179152130 ",.01)
 ;;00179152130
 ;;9002226.02101,"785,00179152130 ",.02)
 ;;00179152130
