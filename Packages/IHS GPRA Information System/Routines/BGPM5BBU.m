BGPM5BBU ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON SEP 12, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1044,11722093299 ",.02)
 ;;11722093299
 ;;9002226.02101,"1044,11819009715 ",.01)
 ;;11819009715
 ;;9002226.02101,"1044,11819009715 ",.02)
 ;;11819009715
 ;;9002226.02101,"1044,11819009730 ",.01)
 ;;11819009730
 ;;9002226.02101,"1044,11819009730 ",.02)
 ;;11819009730
 ;;9002226.02101,"1044,11819009745 ",.01)
 ;;11819009745
 ;;9002226.02101,"1044,11819009745 ",.02)
 ;;11819009745
 ;;9002226.02101,"1044,11819009760 ",.01)
 ;;11819009760
 ;;9002226.02101,"1044,11819009760 ",.02)
 ;;11819009760
 ;;9002226.02101,"1044,11819009790 ",.01)
 ;;11819009790
 ;;9002226.02101,"1044,11819009790 ",.02)
 ;;11819009790
 ;;9002226.02101,"1044,11819010130 ",.01)
 ;;11819010130
 ;;9002226.02101,"1044,11819010130 ",.02)
 ;;11819010130
 ;;9002226.02101,"1044,11819010190 ",.01)
 ;;11819010190
 ;;9002226.02101,"1044,11819010190 ",.02)
 ;;11819010190
 ;;9002226.02101,"1044,11819010360 ",.01)
 ;;11819010360
 ;;9002226.02101,"1044,11819010360 ",.02)
 ;;11819010360
 ;;9002226.02101,"1044,11819010390 ",.01)
 ;;11819010390
 ;;9002226.02101,"1044,11819010390 ",.02)
 ;;11819010390
 ;;9002226.02101,"1044,11819010430 ",.01)
 ;;11819010430
 ;;9002226.02101,"1044,11819010430 ",.02)
 ;;11819010430
 ;;9002226.02101,"1044,11819010490 ",.01)
 ;;11819010490
 ;;9002226.02101,"1044,11819010490 ",.02)
 ;;11819010490
 ;;9002226.02101,"1044,11819012930 ",.01)
 ;;11819012930
 ;;9002226.02101,"1044,11819012930 ",.02)
 ;;11819012930
 ;;9002226.02101,"1044,12505003119 ",.01)
 ;;12505003119
 ;;9002226.02101,"1044,12505003119 ",.02)
 ;;12505003119
 ;;9002226.02101,"1044,12634019371 ",.01)
 ;;12634019371
 ;;9002226.02101,"1044,12634019371 ",.02)
 ;;12634019371
 ;;9002226.02101,"1044,12634040171 ",.01)
 ;;12634040171
 ;;9002226.02101,"1044,12634040171 ",.02)
 ;;12634040171
 ;;9002226.02101,"1044,12634068071 ",.01)
 ;;12634068071
 ;;9002226.02101,"1044,12634068071 ",.02)
 ;;12634068071
 ;;9002226.02101,"1044,12634075571 ",.01)
 ;;12634075571
 ;;9002226.02101,"1044,12634075571 ",.02)
 ;;12634075571
 ;;9002226.02101,"1044,12634090471 ",.01)
 ;;12634090471
 ;;9002226.02101,"1044,12634090471 ",.02)
 ;;12634090471
 ;;9002226.02101,"1044,13107000101 ",.01)
 ;;13107000101
 ;;9002226.02101,"1044,13107000101 ",.02)
 ;;13107000101
 ;;9002226.02101,"1044,13107000105 ",.01)
 ;;13107000105
 ;;9002226.02101,"1044,13107000105 ",.02)
 ;;13107000105
 ;;9002226.02101,"1044,13107000130 ",.01)
 ;;13107000130
 ;;9002226.02101,"1044,13107000130 ",.02)
 ;;13107000130
 ;;9002226.02101,"1044,13107000160 ",.01)
 ;;13107000160
 ;;9002226.02101,"1044,13107000160 ",.02)
 ;;13107000160
 ;;9002226.02101,"1044,13107000190 ",.01)
 ;;13107000190
 ;;9002226.02101,"1044,13107000190 ",.02)
 ;;13107000190
 ;;9002226.02101,"1044,13107000301 ",.01)
 ;;13107000301
 ;;9002226.02101,"1044,13107000301 ",.02)
 ;;13107000301
 ;;9002226.02101,"1044,13107000305 ",.01)
 ;;13107000305
 ;;9002226.02101,"1044,13107000305 ",.02)
 ;;13107000305
 ;;9002226.02101,"1044,13107000330 ",.01)
 ;;13107000330
 ;;9002226.02101,"1044,13107000330 ",.02)
 ;;13107000330
 ;;9002226.02101,"1044,13107000332 ",.01)
 ;;13107000332
 ;;9002226.02101,"1044,13107000332 ",.02)
 ;;13107000332
 ;;9002226.02101,"1044,13107000334 ",.01)
 ;;13107000334
 ;;9002226.02101,"1044,13107000334 ",.02)
 ;;13107000334
 ;;9002226.02101,"1044,13107000360 ",.01)
 ;;13107000360
 ;;9002226.02101,"1044,13107000360 ",.02)
 ;;13107000360
 ;;9002226.02101,"1044,13107000390 ",.01)
 ;;13107000390
 ;;9002226.02101,"1044,13107000390 ",.02)
 ;;13107000390
 ;;9002226.02101,"1044,13107000501 ",.01)
 ;;13107000501
 ;;9002226.02101,"1044,13107000501 ",.02)
 ;;13107000501
 ;;9002226.02101,"1044,13107000505 ",.01)
 ;;13107000505
 ;;9002226.02101,"1044,13107000505 ",.02)
 ;;13107000505
 ;;9002226.02101,"1044,13107000510 ",.01)
 ;;13107000510
 ;;9002226.02101,"1044,13107000510 ",.02)
 ;;13107000510
 ;;9002226.02101,"1044,13107000529 ",.01)
 ;;13107000529
 ;;9002226.02101,"1044,13107000529 ",.02)
 ;;13107000529
 ;;9002226.02101,"1044,13107000530 ",.01)
 ;;13107000530
 ;;9002226.02101,"1044,13107000530 ",.02)
 ;;13107000530
 ;;9002226.02101,"1044,13107000560 ",.01)
 ;;13107000560
 ;;9002226.02101,"1044,13107000560 ",.02)
 ;;13107000560
 ;;9002226.02101,"1044,13107000590 ",.01)
 ;;13107000590
 ;;9002226.02101,"1044,13107000590 ",.02)
 ;;13107000590
 ;;9002226.02101,"1044,13107000601 ",.01)
 ;;13107000601
 ;;9002226.02101,"1044,13107000601 ",.02)
 ;;13107000601
 ;;9002226.02101,"1044,13107000605 ",.01)
 ;;13107000605
 ;;9002226.02101,"1044,13107000605 ",.02)
 ;;13107000605
 ;;9002226.02101,"1044,13107000610 ",.01)
 ;;13107000610
 ;;9002226.02101,"1044,13107000610 ",.02)
 ;;13107000610
 ;;9002226.02101,"1044,13107000619 ",.01)
 ;;13107000619
 ;;9002226.02101,"1044,13107000619 ",.02)
 ;;13107000619
 ;;9002226.02101,"1044,13107000630 ",.01)
 ;;13107000630
 ;;9002226.02101,"1044,13107000630 ",.02)
 ;;13107000630
 ;;9002226.02101,"1044,13107000660 ",.01)
 ;;13107000660
 ;;9002226.02101,"1044,13107000660 ",.02)
 ;;13107000660
 ;;9002226.02101,"1044,13107000690 ",.01)
 ;;13107000690
 ;;9002226.02101,"1044,13107000690 ",.02)
 ;;13107000690
 ;;9002226.02101,"1044,13107000701 ",.01)
 ;;13107000701
 ;;9002226.02101,"1044,13107000701 ",.02)
 ;;13107000701
 ;;9002226.02101,"1044,13107000705 ",.01)
 ;;13107000705
 ;;9002226.02101,"1044,13107000705 ",.02)
 ;;13107000705
 ;;9002226.02101,"1044,13107000710 ",.01)
 ;;13107000710
 ;;9002226.02101,"1044,13107000710 ",.02)
 ;;13107000710
 ;;9002226.02101,"1044,13107000730 ",.01)
 ;;13107000730
 ;;9002226.02101,"1044,13107000730 ",.02)
 ;;13107000730
 ;;9002226.02101,"1044,13107000732 ",.01)
 ;;13107000732
 ;;9002226.02101,"1044,13107000732 ",.02)
 ;;13107000732
 ;;9002226.02101,"1044,13107000759 ",.01)
 ;;13107000759
 ;;9002226.02101,"1044,13107000759 ",.02)
 ;;13107000759
 ;;9002226.02101,"1044,13107000760 ",.01)
 ;;13107000760
 ;;9002226.02101,"1044,13107000760 ",.02)
 ;;13107000760
 ;;9002226.02101,"1044,13107000790 ",.01)
 ;;13107000790
 ;;9002226.02101,"1044,13107000790 ",.02)
 ;;13107000790
 ;;9002226.02101,"1044,13107001101 ",.01)
 ;;13107001101
 ;;9002226.02101,"1044,13107001101 ",.02)
 ;;13107001101
 ;;9002226.02101,"1044,13107001105 ",.01)
 ;;13107001105
 ;;9002226.02101,"1044,13107001105 ",.02)
 ;;13107001105
 ;;9002226.02101,"1044,13107001130 ",.01)
 ;;13107001130
 ;;9002226.02101,"1044,13107001130 ",.02)
 ;;13107001130
 ;;9002226.02101,"1044,13107001150 ",.01)
 ;;13107001150
 ;;9002226.02101,"1044,13107001150 ",.02)
 ;;13107001150
 ;;9002226.02101,"1044,13107001151 ",.01)
 ;;13107001151
 ;;9002226.02101,"1044,13107001151 ",.02)
 ;;13107001151
 ;;9002226.02101,"1044,13107001160 ",.01)
 ;;13107001160
 ;;9002226.02101,"1044,13107001160 ",.02)
 ;;13107001160
 ;;9002226.02101,"1044,13107001190 ",.01)
 ;;13107001190
 ;;9002226.02101,"1044,13107001190 ",.02)
 ;;13107001190
 ;;9002226.02101,"1044,13107001201 ",.01)
 ;;13107001201
 ;;9002226.02101,"1044,13107001201 ",.02)
 ;;13107001201
 ;;9002226.02101,"1044,13107001205 ",.01)
 ;;13107001205
 ;;9002226.02101,"1044,13107001205 ",.02)
 ;;13107001205
 ;;9002226.02101,"1044,13107001230 ",.01)
 ;;13107001230
 ;;9002226.02101,"1044,13107001230 ",.02)
 ;;13107001230
 ;;9002226.02101,"1044,13107001250 ",.01)
 ;;13107001250
 ;;9002226.02101,"1044,13107001250 ",.02)
 ;;13107001250
 ;;9002226.02101,"1044,13107001251 ",.01)
 ;;13107001251
 ;;9002226.02101,"1044,13107001251 ",.02)
 ;;13107001251
 ;;9002226.02101,"1044,13107001260 ",.01)
 ;;13107001260
 ;;9002226.02101,"1044,13107001260 ",.02)
 ;;13107001260
 ;;9002226.02101,"1044,13107001290 ",.01)
 ;;13107001290
 ;;9002226.02101,"1044,13107001290 ",.02)
 ;;13107001290
 ;;9002226.02101,"1044,13107001301 ",.01)
 ;;13107001301
 ;;9002226.02101,"1044,13107001301 ",.02)
 ;;13107001301
 ;;9002226.02101,"1044,13107001305 ",.01)
 ;;13107001305
 ;;9002226.02101,"1044,13107001305 ",.02)
 ;;13107001305
 ;;9002226.02101,"1044,13107001325 ",.01)
 ;;13107001325
 ;;9002226.02101,"1044,13107001325 ",.02)
 ;;13107001325
 ;;9002226.02101,"1044,13107001330 ",.01)
 ;;13107001330
 ;;9002226.02101,"1044,13107001330 ",.02)
 ;;13107001330
 ;;9002226.02101,"1044,13107001350 ",.01)
 ;;13107001350
 ;;9002226.02101,"1044,13107001350 ",.02)
 ;;13107001350
 ;;9002226.02101,"1044,13107001360 ",.01)
 ;;13107001360
 ;;9002226.02101,"1044,13107001360 ",.02)
 ;;13107001360
 ;;9002226.02101,"1044,13107001390 ",.01)
 ;;13107001390
 ;;9002226.02101,"1044,13107001390 ",.02)
 ;;13107001390
 ;;9002226.02101,"1044,13107003101 ",.01)
 ;;13107003101
 ;;9002226.02101,"1044,13107003101 ",.02)
 ;;13107003101
 ;;9002226.02101,"1044,13107003105 ",.01)
 ;;13107003105
 ;;9002226.02101,"1044,13107003105 ",.02)
 ;;13107003105
 ;;9002226.02101,"1044,13107003130 ",.01)
 ;;13107003130
 ;;9002226.02101,"1044,13107003130 ",.02)
 ;;13107003130
 ;;9002226.02101,"1044,13107003132 ",.01)
 ;;13107003132
 ;;9002226.02101,"1044,13107003132 ",.02)
 ;;13107003132
 ;;9002226.02101,"1044,13107003134 ",.01)
 ;;13107003134
 ;;9002226.02101,"1044,13107003134 ",.02)
 ;;13107003134
 ;;9002226.02101,"1044,13107003160 ",.01)
 ;;13107003160
 ;;9002226.02101,"1044,13107003160 ",.02)
 ;;13107003160
 ;;9002226.02101,"1044,13107003190 ",.01)
 ;;13107003190
 ;;9002226.02101,"1044,13107003190 ",.02)
 ;;13107003190
 ;;9002226.02101,"1044,13107003201 ",.01)
 ;;13107003201
 ;;9002226.02101,"1044,13107003201 ",.02)
 ;;13107003201
 ;;9002226.02101,"1044,13107003205 ",.01)
 ;;13107003205
 ;;9002226.02101,"1044,13107003205 ",.02)
 ;;13107003205
 ;;9002226.02101,"1044,13107003230 ",.01)
 ;;13107003230
 ;;9002226.02101,"1044,13107003230 ",.02)
 ;;13107003230
 ;;9002226.02101,"1044,13107003232 ",.01)
 ;;13107003232
 ;;9002226.02101,"1044,13107003232 ",.02)
 ;;13107003232
 ;;9002226.02101,"1044,13107003234 ",.01)
 ;;13107003234
 ;;9002226.02101,"1044,13107003234 ",.02)
 ;;13107003234
 ;;9002226.02101,"1044,13107003260 ",.01)
 ;;13107003260
 ;;9002226.02101,"1044,13107003260 ",.02)
 ;;13107003260
 ;;9002226.02101,"1044,13107003290 ",.01)
 ;;13107003290
 ;;9002226.02101,"1044,13107003290 ",.02)
 ;;13107003290
 ;;9002226.02101,"1044,13107015405 ",.01)
 ;;13107015405
 ;;9002226.02101,"1044,13107015405 ",.02)
 ;;13107015405
 ;;9002226.02101,"1044,13107015430 ",.01)
 ;;13107015430
 ;;9002226.02101,"1044,13107015430 ",.02)
 ;;13107015430
 ;;9002226.02101,"1044,13107015499 ",.01)
 ;;13107015499
 ;;9002226.02101,"1044,13107015499 ",.02)
 ;;13107015499
 ;;9002226.02101,"1044,13107015501 ",.01)
 ;;13107015501
 ;;9002226.02101,"1044,13107015501 ",.02)
 ;;13107015501
 ;;9002226.02101,"1044,13107015505 ",.01)
 ;;13107015505
 ;;9002226.02101,"1044,13107015505 ",.02)
 ;;13107015505
 ;;9002226.02101,"1044,13107015530 ",.01)
 ;;13107015530
 ;;9002226.02101,"1044,13107015530 ",.02)
 ;;13107015530
 ;;9002226.02101,"1044,13107015599 ",.01)
 ;;13107015599
 ;;9002226.02101,"1044,13107015599 ",.02)
 ;;13107015599
 ;;9002226.02101,"1044,13107015605 ",.01)
 ;;13107015605
 ;;9002226.02101,"1044,13107015605 ",.02)
 ;;13107015605
 ;;9002226.02101,"1044,13107015630 ",.01)
 ;;13107015630
 ;;9002226.02101,"1044,13107015630 ",.02)
 ;;13107015630
 ;;9002226.02101,"1044,13107015699 ",.01)
 ;;13107015699
 ;;9002226.02101,"1044,13107015699 ",.02)
 ;;13107015699
 ;;9002226.02101,"1044,13107015705 ",.01)
 ;;13107015705
 ;;9002226.02101,"1044,13107015705 ",.02)
 ;;13107015705
 ;;9002226.02101,"1044,13107015730 ",.01)
 ;;13107015730
 ;;9002226.02101,"1044,13107015730 ",.02)
 ;;13107015730
 ;;9002226.02101,"1044,13107015799 ",.01)
 ;;13107015799
 ;;9002226.02101,"1044,13107015799 ",.02)
 ;;13107015799