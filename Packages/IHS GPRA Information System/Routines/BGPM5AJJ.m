BGPM5AJJ ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"889,43806072780 ",.01)
 ;;43806072780
 ;;9002226.02101,"889,43806072780 ",.02)
 ;;43806072780
 ;;9002226.02101,"889,43806073440 ",.01)
 ;;43806073440
 ;;9002226.02101,"889,43806073440 ",.02)
 ;;43806073440
 ;;9002226.02101,"889,43806073470 ",.01)
 ;;43806073470
 ;;9002226.02101,"889,43806073470 ",.02)
 ;;43806073470
 ;;9002226.02101,"889,43806073480 ",.01)
 ;;43806073480
 ;;9002226.02101,"889,43806073480 ",.02)
 ;;43806073480
 ;;9002226.02101,"889,43806096140 ",.01)
 ;;43806096140
 ;;9002226.02101,"889,43806096140 ",.02)
 ;;43806096140
 ;;9002226.02101,"889,43806097240 ",.01)
 ;;43806097240
 ;;9002226.02101,"889,43806097240 ",.02)
 ;;43806097240
 ;;9002226.02101,"889,43806097270 ",.01)
 ;;43806097270
 ;;9002226.02101,"889,43806097270 ",.02)
 ;;43806097270
 ;;9002226.02101,"889,43806098440 ",.01)
 ;;43806098440
 ;;9002226.02101,"889,43806098440 ",.02)
 ;;43806098440
 ;;9002226.02101,"889,44514051418 ",.01)
 ;;44514051418
 ;;9002226.02101,"889,44514051418 ",.02)
 ;;44514051418
 ;;9002226.02101,"889,44514051518 ",.01)
 ;;44514051518
 ;;9002226.02101,"889,44514051518 ",.02)
 ;;44514051518
 ;;9002226.02101,"889,44514087618 ",.01)
 ;;44514087618
 ;;9002226.02101,"889,44514087618 ",.02)
 ;;44514087618
 ;;9002226.02101,"889,44514088518 ",.01)
 ;;44514088518
 ;;9002226.02101,"889,44514088518 ",.02)
 ;;44514088518
 ;;9002226.02101,"889,45868417900 ",.01)
 ;;45868417900
 ;;9002226.02101,"889,45868417900 ",.02)
 ;;45868417900
 ;;9002226.02101,"889,49349005702 ",.01)
 ;;49349005702
 ;;9002226.02101,"889,49349005702 ",.02)
 ;;49349005702
 ;;9002226.02101,"889,49349010002 ",.01)
 ;;49349010002
 ;;9002226.02101,"889,49349010002 ",.02)
 ;;49349010002
 ;;9002226.02101,"889,49349016602 ",.01)
 ;;49349016602
 ;;9002226.02101,"889,49349016602 ",.02)
 ;;49349016602
 ;;9002226.02101,"889,49349017602 ",.01)
 ;;49349017602
 ;;9002226.02101,"889,49349017602 ",.02)
 ;;49349017602
 ;;9002226.02101,"889,49349017624 ",.01)
 ;;49349017624
 ;;9002226.02101,"889,49349017624 ",.02)
 ;;49349017624
 ;;9002226.02101,"889,49349018002 ",.01)
 ;;49349018002
 ;;9002226.02101,"889,49349018002 ",.02)
 ;;49349018002
 ;;9002226.02101,"889,49349018020 ",.01)
 ;;49349018020
 ;;9002226.02101,"889,49349018020 ",.02)
 ;;49349018020
 ;;9002226.02101,"889,49349018502 ",.01)
 ;;49349018502
 ;;9002226.02101,"889,49349018502 ",.02)
 ;;49349018502
 ;;9002226.02101,"889,49349018602 ",.01)
 ;;49349018602
 ;;9002226.02101,"889,49349018602 ",.02)
 ;;49349018602
 ;;9002226.02101,"889,49349019002 ",.01)
 ;;49349019002
 ;;9002226.02101,"889,49349019002 ",.02)
 ;;49349019002
 ;;9002226.02101,"889,49349022702 ",.01)
 ;;49349022702
 ;;9002226.02101,"889,49349022702 ",.02)
 ;;49349022702
 ;;9002226.02101,"889,49349023502 ",.01)
 ;;49349023502
 ;;9002226.02101,"889,49349023502 ",.02)
 ;;49349023502
 ;;9002226.02101,"889,49349027802 ",.01)
 ;;49349027802
 ;;9002226.02101,"889,49349027802 ",.02)
 ;;49349027802
 ;;9002226.02101,"889,49349028002 ",.01)
 ;;49349028002
 ;;9002226.02101,"889,49349028002 ",.02)
 ;;49349028002
 ;;9002226.02101,"889,49349031502 ",.01)
 ;;49349031502
 ;;9002226.02101,"889,49349031502 ",.02)
 ;;49349031502
 ;;9002226.02101,"889,49349035002 ",.01)
 ;;49349035002
 ;;9002226.02101,"889,49349035002 ",.02)
 ;;49349035002
 ;;9002226.02101,"889,49856071700 ",.01)
 ;;49856071700
 ;;9002226.02101,"889,49856071700 ",.02)
 ;;49856071700
 ;;9002226.02101,"889,49856071701 ",.01)
 ;;49856071701
 ;;9002226.02101,"889,49856071701 ",.02)
 ;;49856071701
 ;;9002226.02101,"889,49856071702 ",.01)
 ;;49856071702
 ;;9002226.02101,"889,49856071702 ",.02)
 ;;49856071702
 ;;9002226.02101,"889,49856071703 ",.01)
 ;;49856071703
 ;;9002226.02101,"889,49856071703 ",.02)
 ;;49856071703
 ;;9002226.02101,"889,49884028201 ",.01)
 ;;49884028201
 ;;9002226.02101,"889,49884028201 ",.02)
 ;;49884028201
 ;;9002226.02101,"889,49884028210 ",.01)
 ;;49884028210
 ;;9002226.02101,"889,49884028210 ",.02)
 ;;49884028210
 ;;9002226.02101,"889,49884032801 ",.01)
 ;;49884032801
 ;;9002226.02101,"889,49884032801 ",.02)
 ;;49884032801
 ;;9002226.02101,"889,49884032810 ",.01)
 ;;49884032810
 ;;9002226.02101,"889,49884032810 ",.02)
 ;;49884032810
 ;;9002226.02101,"889,49884032901 ",.01)
 ;;49884032901
 ;;9002226.02101,"889,49884032901 ",.02)
 ;;49884032901
 ;;9002226.02101,"889,49884032910 ",.01)
 ;;49884032910
 ;;9002226.02101,"889,49884032910 ",.02)
 ;;49884032910
 ;;9002226.02101,"889,49884033001 ",.01)
 ;;49884033001
 ;;9002226.02101,"889,49884033001 ",.02)
 ;;49884033001
 ;;9002226.02101,"889,49884033010 ",.01)
 ;;49884033010
 ;;9002226.02101,"889,49884033010 ",.02)
 ;;49884033010
 ;;9002226.02101,"889,49884045600 ",.01)
 ;;49884045600
 ;;9002226.02101,"889,49884045600 ",.02)
 ;;49884045600
 ;;9002226.02101,"889,49884045601 ",.01)
 ;;49884045601
 ;;9002226.02101,"889,49884045601 ",.02)
 ;;49884045601
 ;;9002226.02101,"889,49884045610 ",.01)
 ;;49884045610
 ;;9002226.02101,"889,49884045610 ",.02)
 ;;49884045610
 ;;9002226.02101,"889,49884045701 ",.01)
 ;;49884045701
 ;;9002226.02101,"889,49884045701 ",.02)
 ;;49884045701
 ;;9002226.02101,"889,49884045710 ",.01)
 ;;49884045710
 ;;9002226.02101,"889,49884045710 ",.02)
 ;;49884045710
 ;;9002226.02101,"889,49884094401 ",.01)
 ;;49884094401
 ;;9002226.02101,"889,49884094401 ",.02)
 ;;49884094401
 ;;9002226.02101,"889,49884094410 ",.01)
 ;;49884094410
 ;;9002226.02101,"889,49884094410 ",.02)
 ;;49884094410
 ;;9002226.02101,"889,49999001000 ",.01)
 ;;49999001000
 ;;9002226.02101,"889,49999001000 ",.02)
 ;;49999001000
 ;;9002226.02101,"889,49999001030 ",.01)
 ;;49999001030
 ;;9002226.02101,"889,49999001030 ",.02)
 ;;49999001030
 ;;9002226.02101,"889,49999001040 ",.01)
 ;;49999001040
 ;;9002226.02101,"889,49999001040 ",.02)
 ;;49999001040
 ;;9002226.02101,"889,49999001060 ",.01)
 ;;49999001060
 ;;9002226.02101,"889,49999001060 ",.02)
 ;;49999001060
 ;;9002226.02101,"889,49999010400 ",.01)
 ;;49999010400
 ;;9002226.02101,"889,49999010400 ",.02)
 ;;49999010400
 ;;9002226.02101,"889,49999010430 ",.01)
 ;;49999010430
 ;;9002226.02101,"889,49999010430 ",.02)
 ;;49999010430
 ;;9002226.02101,"889,49999010460 ",.01)
 ;;49999010460
 ;;9002226.02101,"889,49999010460 ",.02)
 ;;49999010460
 ;;9002226.02101,"889,49999010490 ",.01)
 ;;49999010490
 ;;9002226.02101,"889,49999010490 ",.02)
 ;;49999010490
 ;;9002226.02101,"889,49999017800 ",.01)
 ;;49999017800
 ;;9002226.02101,"889,49999017800 ",.02)
 ;;49999017800
 ;;9002226.02101,"889,49999017830 ",.01)
 ;;49999017830
 ;;9002226.02101,"889,49999017830 ",.02)
 ;;49999017830
 ;;9002226.02101,"889,49999020130 ",.01)
 ;;49999020130
 ;;9002226.02101,"889,49999020130 ",.02)
 ;;49999020130
 ;;9002226.02101,"889,49999020230 ",.01)
 ;;49999020230
 ;;9002226.02101,"889,49999020230 ",.02)
 ;;49999020230
 ;;9002226.02101,"889,49999022600 ",.01)
 ;;49999022600
 ;;9002226.02101,"889,49999022600 ",.02)
 ;;49999022600
 ;;9002226.02101,"889,49999022630 ",.01)
 ;;49999022630
 ;;9002226.02101,"889,49999022630 ",.02)
 ;;49999022630
 ;;9002226.02101,"889,49999022660 ",.01)
 ;;49999022660
 ;;9002226.02101,"889,49999022660 ",.02)
 ;;49999022660
 ;;9002226.02101,"889,49999028660 ",.01)
 ;;49999028660
 ;;9002226.02101,"889,49999028660 ",.02)
 ;;49999028660
 ;;9002226.02101,"889,49999045400 ",.01)
 ;;49999045400
 ;;9002226.02101,"889,49999045400 ",.02)
 ;;49999045400
 ;;9002226.02101,"889,49999045410 ",.01)
 ;;49999045410
 ;;9002226.02101,"889,49999045410 ",.02)
 ;;49999045410
 ;;9002226.02101,"889,49999045430 ",.01)
 ;;49999045430
 ;;9002226.02101,"889,49999045430 ",.02)
 ;;49999045430
 ;;9002226.02101,"889,49999045460 ",.01)
 ;;49999045460
 ;;9002226.02101,"889,49999045460 ",.02)
 ;;49999045460
 ;;9002226.02101,"889,49999045490 ",.01)
 ;;49999045490
 ;;9002226.02101,"889,49999045490 ",.02)
 ;;49999045490
 ;;9002226.02101,"889,49999048230 ",.01)
 ;;49999048230
 ;;9002226.02101,"889,49999048230 ",.02)
 ;;49999048230
 ;;9002226.02101,"889,49999048300 ",.01)
 ;;49999048300
 ;;9002226.02101,"889,49999048300 ",.02)
 ;;49999048300
 ;;9002226.02101,"889,49999048330 ",.01)
 ;;49999048330
 ;;9002226.02101,"889,49999048330 ",.02)
 ;;49999048330
 ;;9002226.02101,"889,49999048400 ",.01)
 ;;49999048400
 ;;9002226.02101,"889,49999048400 ",.02)
 ;;49999048400
 ;;9002226.02101,"889,49999048430 ",.01)
 ;;49999048430
 ;;9002226.02101,"889,49999048430 ",.02)
 ;;49999048430
 ;;9002226.02101,"889,49999051230 ",.01)
 ;;49999051230
 ;;9002226.02101,"889,49999051230 ",.02)
 ;;49999051230
 ;;9002226.02101,"889,49999055590 ",.01)
 ;;49999055590
 ;;9002226.02101,"889,49999055590 ",.02)
 ;;49999055590
 ;;9002226.02101,"889,49999057510 ",.01)
 ;;49999057510
 ;;9002226.02101,"889,49999057510 ",.02)
 ;;49999057510
 ;;9002226.02101,"889,49999057520 ",.01)
 ;;49999057520
 ;;9002226.02101,"889,49999057520 ",.02)
 ;;49999057520
 ;;9002226.02101,"889,49999057530 ",.01)
 ;;49999057530
 ;;9002226.02101,"889,49999057530 ",.02)
 ;;49999057530
 ;;9002226.02101,"889,49999057720 ",.01)
 ;;49999057720
 ;;9002226.02101,"889,49999057720 ",.02)
 ;;49999057720
 ;;9002226.02101,"889,49999086600 ",.01)
 ;;49999086600
 ;;9002226.02101,"889,49999086600 ",.02)
 ;;49999086600
 ;;9002226.02101,"889,49999087230 ",.01)
 ;;49999087230
 ;;9002226.02101,"889,49999087230 ",.02)
 ;;49999087230
 ;;9002226.02101,"889,49999093830 ",.01)
 ;;49999093830
 ;;9002226.02101,"889,49999093830 ",.02)
 ;;49999093830
 ;;9002226.02101,"889,49999093930 ",.01)
 ;;49999093930
 ;;9002226.02101,"889,49999093930 ",.02)
 ;;49999093930
 ;;9002226.02101,"889,49999099600 ",.01)
 ;;49999099600
 ;;9002226.02101,"889,49999099600 ",.02)
 ;;49999099600
 ;;9002226.02101,"889,50053310201 ",.01)
 ;;50053310201
 ;;9002226.02101,"889,50053310201 ",.02)
 ;;50053310201
 ;;9002226.02101,"889,50053310203 ",.01)
 ;;50053310203
 ;;9002226.02101,"889,50053310203 ",.02)
 ;;50053310203
 ;;9002226.02101,"889,50053310901 ",.01)
 ;;50053310901
 ;;9002226.02101,"889,50053310901 ",.02)
 ;;50053310901
 ;;9002226.02101,"889,50053310902 ",.01)
 ;;50053310902
 ;;9002226.02101,"889,50053310902 ",.02)
 ;;50053310902
 ;;9002226.02101,"889,50053311001 ",.01)
 ;;50053311001
 ;;9002226.02101,"889,50053311001 ",.02)
 ;;50053311001
 ;;9002226.02101,"889,50053311002 ",.01)
 ;;50053311002
 ;;9002226.02101,"889,50053311002 ",.02)
 ;;50053311002
 ;;9002226.02101,"889,50053311101 ",.01)
 ;;50053311101
 ;;9002226.02101,"889,50053311101 ",.02)
 ;;50053311101
 ;;9002226.02101,"889,50053311102 ",.01)
 ;;50053311102
 ;;9002226.02101,"889,50053311102 ",.02)
 ;;50053311102
 ;;9002226.02101,"889,50053311201 ",.01)
 ;;50053311201
 ;;9002226.02101,"889,50053311201 ",.02)
 ;;50053311201
 ;;9002226.02101,"889,50053311202 ",.01)
 ;;50053311202
 ;;9002226.02101,"889,50053311202 ",.02)
 ;;50053311202
 ;;9002226.02101,"889,50053381603 ",.01)
 ;;50053381603
 ;;9002226.02101,"889,50053381603 ",.02)
 ;;50053381603
 ;;9002226.02101,"889,50053381608 ",.01)
 ;;50053381608
 ;;9002226.02101,"889,50053381608 ",.02)
 ;;50053381608
 ;;9002226.02101,"889,50053381703 ",.01)
 ;;50053381703
 ;;9002226.02101,"889,50053381703 ",.02)
 ;;50053381703
 ;;9002226.02101,"889,50053381708 ",.01)
 ;;50053381708
 ;;9002226.02101,"889,50053381708 ",.02)
 ;;50053381708
 ;;9002226.02101,"889,50111046701 ",.01)
 ;;50111046701
 ;;9002226.02101,"889,50111046701 ",.02)
 ;;50111046701
 ;;9002226.02101,"889,50111046703 ",.01)
 ;;50111046703
 ;;9002226.02101,"889,50111046703 ",.02)
 ;;50111046703
 ;;9002226.02101,"889,50111046801 ",.01)
 ;;50111046801
 ;;9002226.02101,"889,50111046801 ",.02)
 ;;50111046801