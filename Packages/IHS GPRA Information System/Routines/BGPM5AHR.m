BGPM5AHR ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"882,67544062131 ",.02)
 ;;67544062131
 ;;9002226.02101,"882,67544062145 ",.01)
 ;;67544062145
 ;;9002226.02101,"882,67544062145 ",.02)
 ;;67544062145
 ;;9002226.02101,"882,67544062160 ",.01)
 ;;67544062160
 ;;9002226.02101,"882,67544062160 ",.02)
 ;;67544062160
 ;;9002226.02101,"882,67544066731 ",.01)
 ;;67544066731
 ;;9002226.02101,"882,67544066731 ",.02)
 ;;67544066731
 ;;9002226.02101,"882,67544066760 ",.01)
 ;;67544066760
 ;;9002226.02101,"882,67544066760 ",.02)
 ;;67544066760
 ;;9002226.02101,"882,67544067832 ",.01)
 ;;67544067832
 ;;9002226.02101,"882,67544067832 ",.02)
 ;;67544067832
 ;;9002226.02101,"882,67544067845 ",.01)
 ;;67544067845
 ;;9002226.02101,"882,67544067845 ",.02)
 ;;67544067845
 ;;9002226.02101,"882,67544067860 ",.01)
 ;;67544067860
 ;;9002226.02101,"882,67544067860 ",.02)
 ;;67544067860
 ;;9002226.02101,"882,67544068731 ",.01)
 ;;67544068731
 ;;9002226.02101,"882,67544068731 ",.02)
 ;;67544068731
 ;;9002226.02101,"882,67544068732 ",.01)
 ;;67544068732
 ;;9002226.02101,"882,67544068732 ",.02)
 ;;67544068732
 ;;9002226.02101,"882,67544070531 ",.01)
 ;;67544070531
 ;;9002226.02101,"882,67544070531 ",.02)
 ;;67544070531
 ;;9002226.02101,"882,67544070631 ",.01)
 ;;67544070631
 ;;9002226.02101,"882,67544070631 ",.02)
 ;;67544070631
 ;;9002226.02101,"882,67544071132 ",.01)
 ;;67544071132
 ;;9002226.02101,"882,67544071132 ",.02)
 ;;67544071132
 ;;9002226.02101,"882,67544071731 ",.01)
 ;;67544071731
 ;;9002226.02101,"882,67544071731 ",.02)
 ;;67544071731
 ;;9002226.02101,"882,67544072431 ",.01)
 ;;67544072431
 ;;9002226.02101,"882,67544072431 ",.02)
 ;;67544072431
 ;;9002226.02101,"882,67544077932 ",.01)
 ;;67544077932
 ;;9002226.02101,"882,67544077932 ",.02)
 ;;67544077932
 ;;9002226.02101,"882,67544081832 ",.01)
 ;;67544081832
 ;;9002226.02101,"882,67544081832 ",.02)
 ;;67544081832
 ;;9002226.02101,"882,67544086131 ",.01)
 ;;67544086131
 ;;9002226.02101,"882,67544086131 ",.02)
 ;;67544086131
 ;;9002226.02101,"882,67544086132 ",.01)
 ;;67544086132
 ;;9002226.02101,"882,67544086132 ",.02)
 ;;67544086132
 ;;9002226.02101,"882,67544086832 ",.01)
 ;;67544086832
 ;;9002226.02101,"882,67544086832 ",.02)
 ;;67544086832
 ;;9002226.02101,"882,67544093330 ",.01)
 ;;67544093330
 ;;9002226.02101,"882,67544093330 ",.02)
 ;;67544093330
 ;;9002226.02101,"882,67544096032 ",.01)
 ;;67544096032
 ;;9002226.02101,"882,67544096032 ",.02)
 ;;67544096032
 ;;9002226.02101,"882,67544099730 ",.01)
 ;;67544099730
 ;;9002226.02101,"882,67544099730 ",.02)
 ;;67544099730
 ;;9002226.02101,"882,67544099760 ",.01)
 ;;67544099760
 ;;9002226.02101,"882,67544099760 ",.02)
 ;;67544099760
 ;;9002226.02101,"882,67544099960 ",.01)
 ;;67544099960
 ;;9002226.02101,"882,67544099960 ",.02)
 ;;67544099960
 ;;9002226.02101,"882,67544099980 ",.01)
 ;;67544099980
 ;;9002226.02101,"882,67544099980 ",.02)
 ;;67544099980
 ;;9002226.02101,"882,67651001801 ",.01)
 ;;67651001801
 ;;9002226.02101,"882,67651001801 ",.02)
 ;;67651001801
 ;;9002226.02101,"882,67651001805 ",.01)
 ;;67651001805
 ;;9002226.02101,"882,67651001805 ",.02)
 ;;67651001805
 ;;9002226.02101,"882,67651001901 ",.01)
 ;;67651001901
 ;;9002226.02101,"882,67651001901 ",.02)
 ;;67651001901
 ;;9002226.02101,"882,67651001905 ",.01)
 ;;67651001905
 ;;9002226.02101,"882,67651001905 ",.02)
 ;;67651001905
 ;;9002226.02101,"882,67651002001 ",.01)
 ;;67651002001
 ;;9002226.02101,"882,67651002001 ",.02)
 ;;67651002001
 ;;9002226.02101,"882,67651002005 ",.01)
 ;;67651002005
 ;;9002226.02101,"882,67651002005 ",.02)
 ;;67651002005
 ;;9002226.02101,"882,67651002101 ",.01)
 ;;67651002101
 ;;9002226.02101,"882,67651002101 ",.02)
 ;;67651002101
 ;;9002226.02101,"882,67651002105 ",.01)
 ;;67651002105
 ;;9002226.02101,"882,67651002105 ",.02)
 ;;67651002105
 ;;9002226.02101,"882,67787020005 ",.01)
 ;;67787020005
 ;;9002226.02101,"882,67787020005 ",.02)
 ;;67787020005
 ;;9002226.02101,"882,67787020010 ",.01)
 ;;67787020010
 ;;9002226.02101,"882,67787020010 ",.02)
 ;;67787020010
 ;;9002226.02101,"882,67787020090 ",.01)
 ;;67787020090
 ;;9002226.02101,"882,67787020090 ",.02)
 ;;67787020090
 ;;9002226.02101,"882,67787020105 ",.01)
 ;;67787020105
 ;;9002226.02101,"882,67787020105 ",.02)
 ;;67787020105
 ;;9002226.02101,"882,67787020110 ",.01)
 ;;67787020110
 ;;9002226.02101,"882,67787020110 ",.02)
 ;;67787020110
 ;;9002226.02101,"882,67787020190 ",.01)
 ;;67787020190
 ;;9002226.02101,"882,67787020190 ",.02)
 ;;67787020190
 ;;9002226.02101,"882,67787020210 ",.01)
 ;;67787020210
 ;;9002226.02101,"882,67787020210 ",.02)
 ;;67787020210
 ;;9002226.02101,"882,67787020290 ",.01)
 ;;67787020290
 ;;9002226.02101,"882,67787020290 ",.02)
 ;;67787020290
 ;;9002226.02101,"882,67787022901 ",.01)
 ;;67787022901
 ;;9002226.02101,"882,67787022901 ",.02)
 ;;67787022901
 ;;9002226.02101,"882,67787023001 ",.01)
 ;;67787023001
 ;;9002226.02101,"882,67787023001 ",.02)
 ;;67787023001
 ;;9002226.02101,"882,67787026790 ",.01)
 ;;67787026790
 ;;9002226.02101,"882,67787026790 ",.02)
 ;;67787026790
 ;;9002226.02101,"882,67787026890 ",.01)
 ;;67787026890
 ;;9002226.02101,"882,67787026890 ",.02)
 ;;67787026890
 ;;9002226.02101,"882,67787026990 ",.01)
 ;;67787026990
 ;;9002226.02101,"882,67787026990 ",.02)
 ;;67787026990
 ;;9002226.02101,"882,67787027090 ",.01)
 ;;67787027090
 ;;9002226.02101,"882,67787027090 ",.02)
 ;;67787027090
 ;;9002226.02101,"882,67787027101 ",.01)
 ;;67787027101
 ;;9002226.02101,"882,67787027101 ",.02)
 ;;67787027101
 ;;9002226.02101,"882,67787027110 ",.01)
 ;;67787027110
 ;;9002226.02101,"882,67787027110 ",.02)
 ;;67787027110
 ;;9002226.02101,"882,67787027201 ",.01)
 ;;67787027201
 ;;9002226.02101,"882,67787027201 ",.02)
 ;;67787027201
 ;;9002226.02101,"882,67787027210 ",.01)
 ;;67787027210
 ;;9002226.02101,"882,67787027210 ",.02)
 ;;67787027210
 ;;9002226.02101,"882,67787027301 ",.01)
 ;;67787027301
 ;;9002226.02101,"882,67787027301 ",.02)
 ;;67787027301
 ;;9002226.02101,"882,67787027305 ",.01)
 ;;67787027305
 ;;9002226.02101,"882,67787027305 ",.02)
 ;;67787027305
 ;;9002226.02101,"882,67787027310 ",.01)
 ;;67787027310
 ;;9002226.02101,"882,67787027310 ",.02)
 ;;67787027310
 ;;9002226.02101,"882,67787027401 ",.01)
 ;;67787027401
 ;;9002226.02101,"882,67787027401 ",.02)
 ;;67787027401
 ;;9002226.02101,"882,67787027405 ",.01)
 ;;67787027405
 ;;9002226.02101,"882,67787027405 ",.02)
 ;;67787027405
 ;;9002226.02101,"882,67787027410 ",.01)
 ;;67787027410
 ;;9002226.02101,"882,67787027410 ",.02)
 ;;67787027410
 ;;9002226.02101,"882,68071004845 ",.01)
 ;;68071004845
 ;;9002226.02101,"882,68071004845 ",.02)
 ;;68071004845
 ;;9002226.02101,"882,68071009530 ",.01)
 ;;68071009530
 ;;9002226.02101,"882,68071009530 ",.02)
 ;;68071009530
 ;;9002226.02101,"882,68071010430 ",.01)
 ;;68071010430
 ;;9002226.02101,"882,68071010430 ",.02)
 ;;68071010430
 ;;9002226.02101,"882,68071015330 ",.01)
 ;;68071015330
 ;;9002226.02101,"882,68071015330 ",.02)
 ;;68071015330
 ;;9002226.02101,"882,68071015360 ",.01)
 ;;68071015360
 ;;9002226.02101,"882,68071015360 ",.02)
 ;;68071015360
 ;;9002226.02101,"882,68071015390 ",.01)
 ;;68071015390
 ;;9002226.02101,"882,68071015390 ",.02)
 ;;68071015390
 ;;9002226.02101,"882,68071015745 ",.01)
 ;;68071015745
 ;;9002226.02101,"882,68071015745 ",.02)
 ;;68071015745
 ;;9002226.02101,"882,68071015790 ",.01)
 ;;68071015790
 ;;9002226.02101,"882,68071015790 ",.02)
 ;;68071015790
 ;;9002226.02101,"882,68071015792 ",.01)
 ;;68071015792
 ;;9002226.02101,"882,68071015792 ",.02)
 ;;68071015792
 ;;9002226.02101,"882,68071021692 ",.01)
 ;;68071021692
 ;;9002226.02101,"882,68071021692 ",.02)
 ;;68071021692
 ;;9002226.02101,"882,68071039030 ",.01)
 ;;68071039030
 ;;9002226.02101,"882,68071039030 ",.02)
 ;;68071039030
 ;;9002226.02101,"882,68071043612 ",.01)
 ;;68071043612
 ;;9002226.02101,"882,68071043612 ",.02)
 ;;68071043612
 ;;9002226.02101,"882,68071049330 ",.01)
 ;;68071049330
 ;;9002226.02101,"882,68071049330 ",.02)
 ;;68071049330
 ;;9002226.02101,"882,68071076928 ",.01)
 ;;68071076928
 ;;9002226.02101,"882,68071076928 ",.02)
 ;;68071076928
 ;;9002226.02101,"882,68071077130 ",.01)
 ;;68071077130
 ;;9002226.02101,"882,68071077130 ",.02)
 ;;68071077130
 ;;9002226.02101,"882,68084005801 ",.01)
 ;;68084005801
 ;;9002226.02101,"882,68084005801 ",.02)
 ;;68084005801
 ;;9002226.02101,"882,68084006001 ",.01)
 ;;68084006001
 ;;9002226.02101,"882,68084006001 ",.02)
 ;;68084006001
 ;;9002226.02101,"882,68084006011 ",.01)
 ;;68084006011
 ;;9002226.02101,"882,68084006011 ",.02)
 ;;68084006011
 ;;9002226.02101,"882,68084006101 ",.01)
 ;;68084006101
 ;;9002226.02101,"882,68084006101 ",.02)
 ;;68084006101
 ;;9002226.02101,"882,68084006111 ",.01)
 ;;68084006111
 ;;9002226.02101,"882,68084006111 ",.02)
 ;;68084006111
 ;;9002226.02101,"882,68084006201 ",.01)
 ;;68084006201
 ;;9002226.02101,"882,68084006201 ",.02)
 ;;68084006201
 ;;9002226.02101,"882,68084006211 ",.01)
 ;;68084006211
 ;;9002226.02101,"882,68084006211 ",.02)
 ;;68084006211
 ;;9002226.02101,"882,68084006401 ",.01)
 ;;68084006401
 ;;9002226.02101,"882,68084006401 ",.02)
 ;;68084006401
 ;;9002226.02101,"882,68084006411 ",.01)
 ;;68084006411
 ;;9002226.02101,"882,68084006411 ",.02)
 ;;68084006411
 ;;9002226.02101,"882,68084009800 ",.01)
 ;;68084009800
 ;;9002226.02101,"882,68084009800 ",.02)
 ;;68084009800
 ;;9002226.02101,"882,68084009806 ",.01)
 ;;68084009806
 ;;9002226.02101,"882,68084009806 ",.02)
 ;;68084009806
 ;;9002226.02101,"882,68084009900 ",.01)
 ;;68084009900
 ;;9002226.02101,"882,68084009900 ",.02)
 ;;68084009900
 ;;9002226.02101,"882,68084009906 ",.01)
 ;;68084009906
 ;;9002226.02101,"882,68084009906 ",.02)
 ;;68084009906
 ;;9002226.02101,"882,68084026601 ",.01)
 ;;68084026601
 ;;9002226.02101,"882,68084026601 ",.02)
 ;;68084026601
 ;;9002226.02101,"882,68084026611 ",.01)
 ;;68084026611
 ;;9002226.02101,"882,68084026611 ",.02)
 ;;68084026611
 ;;9002226.02101,"882,68084026701 ",.01)
 ;;68084026701
 ;;9002226.02101,"882,68084026701 ",.02)
 ;;68084026701
 ;;9002226.02101,"882,68084026711 ",.01)
 ;;68084026711
 ;;9002226.02101,"882,68084026711 ",.02)
 ;;68084026711
 ;;9002226.02101,"882,68084026801 ",.01)
 ;;68084026801
 ;;9002226.02101,"882,68084026801 ",.02)
 ;;68084026801
 ;;9002226.02101,"882,68084026811 ",.01)
 ;;68084026811
 ;;9002226.02101,"882,68084026811 ",.02)
 ;;68084026811
 ;;9002226.02101,"882,68084029411 ",.01)
 ;;68084029411
 ;;9002226.02101,"882,68084029411 ",.02)
 ;;68084029411
 ;;9002226.02101,"882,68084029421 ",.01)
 ;;68084029421
 ;;9002226.02101,"882,68084029421 ",.02)
 ;;68084029421
 ;;9002226.02101,"882,68084039001 ",.01)
 ;;68084039001
 ;;9002226.02101,"882,68084039001 ",.02)
 ;;68084039001
 ;;9002226.02101,"882,68084039011 ",.01)
 ;;68084039011
 ;;9002226.02101,"882,68084039011 ",.02)
 ;;68084039011
 ;;9002226.02101,"882,68084039101 ",.01)
 ;;68084039101
 ;;9002226.02101,"882,68084039101 ",.02)
 ;;68084039101
 ;;9002226.02101,"882,68084039111 ",.01)
 ;;68084039111
 ;;9002226.02101,"882,68084039111 ",.02)
 ;;68084039111
 ;;9002226.02101,"882,68084039201 ",.01)
 ;;68084039201
 ;;9002226.02101,"882,68084039201 ",.02)
 ;;68084039201
 ;;9002226.02101,"882,68084039211 ",.01)
 ;;68084039211
 ;;9002226.02101,"882,68084039211 ",.02)
 ;;68084039211
 ;;9002226.02101,"882,68115012715 ",.01)
 ;;68115012715
 ;;9002226.02101,"882,68115012715 ",.02)
 ;;68115012715
 ;;9002226.02101,"882,68115012860 ",.01)
 ;;68115012860
 ;;9002226.02101,"882,68115012860 ",.02)
 ;;68115012860
 ;;9002226.02101,"882,68115012890 ",.01)
 ;;68115012890
