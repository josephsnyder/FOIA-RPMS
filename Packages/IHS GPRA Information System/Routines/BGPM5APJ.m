BGPM5APJ ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 09, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"998,60814010901 ",.02)
 ;;60814010901
 ;;9002226.02101,"998,60814010910 ",.01)
 ;;60814010910
 ;;9002226.02101,"998,60814010910 ",.02)
 ;;60814010910
 ;;9002226.02101,"998,60814010999 ",.01)
 ;;60814010999
 ;;9002226.02101,"998,60814010999 ",.02)
 ;;60814010999
 ;;9002226.02101,"998,60814011010 ",.01)
 ;;60814011010
 ;;9002226.02101,"998,60814011010 ",.02)
 ;;60814011010
 ;;9002226.02101,"998,60814011025 ",.01)
 ;;60814011025
 ;;9002226.02101,"998,60814011025 ",.02)
 ;;60814011025
 ;;9002226.02101,"998,60814011110 ",.01)
 ;;60814011110
 ;;9002226.02101,"998,60814011110 ",.02)
 ;;60814011110
 ;;9002226.02101,"998,60814017536 ",.01)
 ;;60814017536
 ;;9002226.02101,"998,60814017536 ",.02)
 ;;60814017536
 ;;9002226.02101,"998,62107002507 ",.01)
 ;;62107002507
 ;;9002226.02101,"998,62107002507 ",.02)
 ;;62107002507
 ;;9002226.02101,"998,62107002532 ",.01)
 ;;62107002532
 ;;9002226.02101,"998,62107002532 ",.02)
 ;;62107002532
 ;;9002226.02101,"998,62107002636 ",.01)
 ;;62107002636
 ;;9002226.02101,"998,62107002636 ",.02)
 ;;62107002636
 ;;9002226.02101,"998,62107002726 ",.01)
 ;;62107002726
 ;;9002226.02101,"998,62107002726 ",.02)
 ;;62107002726
 ;;9002226.02101,"998,62107002732 ",.01)
 ;;62107002732
 ;;9002226.02101,"998,62107002732 ",.02)
 ;;62107002732
 ;;9002226.02101,"998,62211022050 ",.01)
 ;;62211022050
 ;;9002226.02101,"998,62211022050 ",.02)
 ;;62211022050
 ;;9002226.02101,"998,62211022099 ",.01)
 ;;62211022099
 ;;9002226.02101,"998,62211022099 ",.02)
 ;;62211022099
 ;;9002226.02101,"998,62211022540 ",.01)
 ;;62211022540
 ;;9002226.02101,"998,62211022540 ",.02)
 ;;62211022540
 ;;9002226.02101,"998,62211022599 ",.01)
 ;;62211022599
 ;;9002226.02101,"998,62211022599 ",.02)
 ;;62211022599
 ;;9002226.02101,"998,62211031201 ",.01)
 ;;62211031201
 ;;9002226.02101,"998,62211031201 ",.02)
 ;;62211031201
 ;;9002226.02101,"998,62211031299 ",.01)
 ;;62211031299
 ;;9002226.02101,"998,62211031299 ",.02)
 ;;62211031299
 ;;9002226.02101,"998,62318002702 ",.01)
 ;;62318002702
 ;;9002226.02101,"998,62318002702 ",.02)
 ;;62318002702
 ;;9002226.02101,"998,62318002704 ",.01)
 ;;62318002704
 ;;9002226.02101,"998,62318002704 ",.02)
 ;;62318002704
 ;;9002226.02101,"998,62318002707 ",.01)
 ;;62318002707
 ;;9002226.02101,"998,62318002707 ",.02)
 ;;62318002707
 ;;9002226.02101,"998,62318002709 ",.01)
 ;;62318002709
 ;;9002226.02101,"998,62318002709 ",.02)
 ;;62318002709
 ;;9002226.02101,"998,62584012701 ",.01)
 ;;62584012701
 ;;9002226.02101,"998,62584012701 ",.02)
 ;;62584012701
 ;;9002226.02101,"998,62584012785 ",.01)
 ;;62584012785
 ;;9002226.02101,"998,62584012785 ",.02)
 ;;62584012785
 ;;9002226.02101,"998,63548360201 ",.01)
 ;;63548360201
 ;;9002226.02101,"998,63548360201 ",.02)
 ;;63548360201
 ;;9002226.02101,"998,63629176201 ",.01)
 ;;63629176201
 ;;9002226.02101,"998,63629176201 ",.02)
 ;;63629176201
 ;;9002226.02101,"998,63629176202 ",.01)
 ;;63629176202
 ;;9002226.02101,"998,63629176202 ",.02)
 ;;63629176202
 ;;9002226.02101,"998,63629176203 ",.01)
 ;;63629176203
 ;;9002226.02101,"998,63629176203 ",.02)
 ;;63629176203
 ;;9002226.02101,"998,63629176204 ",.01)
 ;;63629176204
 ;;9002226.02101,"998,63629176204 ",.02)
 ;;63629176204
 ;;9002226.02101,"998,63629282501 ",.01)
 ;;63629282501
 ;;9002226.02101,"998,63629282501 ",.02)
 ;;63629282501
 ;;9002226.02101,"998,63629282502 ",.01)
 ;;63629282502
 ;;9002226.02101,"998,63629282502 ",.02)
 ;;63629282502
 ;;9002226.02101,"998,63629282503 ",.01)
 ;;63629282503
 ;;9002226.02101,"998,63629282503 ",.02)
 ;;63629282503
 ;;9002226.02101,"998,63739002301 ",.01)
 ;;63739002301
 ;;9002226.02101,"998,63739002301 ",.02)
 ;;63739002301
 ;;9002226.02101,"998,63739002303 ",.01)
 ;;63739002303
 ;;9002226.02101,"998,63739002303 ",.02)
 ;;63739002303
 ;;9002226.02101,"998,63739002401 ",.01)
 ;;63739002401
 ;;9002226.02101,"998,63739002401 ",.02)
 ;;63739002401
 ;;9002226.02101,"998,63739002501 ",.01)
 ;;63739002501
 ;;9002226.02101,"998,63739002501 ",.02)
 ;;63739002501
 ;;9002226.02101,"998,63739027201 ",.01)
 ;;63739027201
 ;;9002226.02101,"998,63739027201 ",.02)
 ;;63739027201
 ;;9002226.02101,"998,63739027203 ",.01)
 ;;63739027203
 ;;9002226.02101,"998,63739027203 ",.02)
 ;;63739027203
 ;;9002226.02101,"998,63739027210 ",.01)
 ;;63739027210
 ;;9002226.02101,"998,63739027210 ",.02)
 ;;63739027210
 ;;9002226.02101,"998,63739043301 ",.01)
 ;;63739043301
 ;;9002226.02101,"998,63739043301 ",.02)
 ;;63739043301
 ;;9002226.02101,"998,63739043303 ",.01)
 ;;63739043303
 ;;9002226.02101,"998,63739043303 ",.02)
 ;;63739043303
 ;;9002226.02101,"998,63739043310 ",.01)
 ;;63739043310
 ;;9002226.02101,"998,63739043310 ",.02)
 ;;63739043310
 ;;9002226.02101,"998,63739043401 ",.01)
 ;;63739043401
 ;;9002226.02101,"998,63739043401 ",.02)
 ;;63739043401
 ;;9002226.02101,"998,63739043403 ",.01)
 ;;63739043403
 ;;9002226.02101,"998,63739043403 ",.02)
 ;;63739043403
 ;;9002226.02101,"998,63874000101 ",.01)
 ;;63874000101
 ;;9002226.02101,"998,63874000101 ",.02)
 ;;63874000101
 ;;9002226.02101,"998,63874000115 ",.01)
 ;;63874000115
 ;;9002226.02101,"998,63874000115 ",.02)
 ;;63874000115
 ;;9002226.02101,"998,63874000120 ",.01)
 ;;63874000120
 ;;9002226.02101,"998,63874000120 ",.02)
 ;;63874000120
 ;;9002226.02101,"998,63874000125 ",.01)
 ;;63874000125
 ;;9002226.02101,"998,63874000125 ",.02)
 ;;63874000125
 ;;9002226.02101,"998,63874000130 ",.01)
 ;;63874000130
 ;;9002226.02101,"998,63874000130 ",.02)
 ;;63874000130
 ;;9002226.02101,"998,63874000150 ",.01)
 ;;63874000150
 ;;9002226.02101,"998,63874000150 ",.02)
 ;;63874000150
 ;;9002226.02101,"998,63874099701 ",.01)
 ;;63874099701
 ;;9002226.02101,"998,63874099701 ",.02)
 ;;63874099701
 ;;9002226.02101,"998,63874099702 ",.01)
 ;;63874099702
 ;;9002226.02101,"998,63874099702 ",.02)
 ;;63874099702
 ;;9002226.02101,"998,63874099730 ",.01)
 ;;63874099730
 ;;9002226.02101,"998,63874099730 ",.02)
 ;;63874099730
 ;;9002226.02101,"998,63981022714 ",.01)
 ;;63981022714
 ;;9002226.02101,"998,63981022714 ",.02)
 ;;63981022714
 ;;9002226.02101,"998,64092014115 ",.01)
 ;;64092014115
 ;;9002226.02101,"998,64092014115 ",.02)
 ;;64092014115
 ;;9002226.02101,"998,64092021807 ",.01)
 ;;64092021807
 ;;9002226.02101,"998,64092021807 ",.02)
 ;;64092021807
 ;;9002226.02101,"998,64125010601 ",.01)
 ;;64125010601
 ;;9002226.02101,"998,64125010601 ",.02)
 ;;64125010601
 ;;9002226.02101,"998,65162024111 ",.01)
 ;;65162024111
 ;;9002226.02101,"998,65162024111 ",.02)
 ;;65162024111
 ;;9002226.02101,"998,65162024116 ",.01)
 ;;65162024116
 ;;9002226.02101,"998,65162024116 ",.02)
 ;;65162024116
 ;;9002226.02101,"998,65162038010 ",.01)
 ;;65162038010
 ;;9002226.02101,"998,65162038010 ",.02)
 ;;65162038010
 ;;9002226.02101,"998,65162038011 ",.01)
 ;;65162038011
 ;;9002226.02101,"998,65162038011 ",.02)
 ;;65162038011
 ;;9002226.02101,"998,65162038211 ",.01)
 ;;65162038211
 ;;9002226.02101,"998,65162038211 ",.02)
 ;;65162038211
 ;;9002226.02101,"998,65437003805 ",.01)
 ;;65437003805
 ;;9002226.02101,"998,65437003805 ",.02)
 ;;65437003805
 ;;9002226.02101,"998,65437003807 ",.01)
 ;;65437003807
 ;;9002226.02101,"998,65437003807 ",.02)
 ;;65437003807
 ;;9002226.02101,"998,65437003810 ",.01)
 ;;65437003810
 ;;9002226.02101,"998,65437003810 ",.02)
 ;;65437003810
 ;;9002226.02101,"998,66267002630 ",.01)
 ;;66267002630
 ;;9002226.02101,"998,66267002630 ",.02)
 ;;66267002630
 ;;9002226.02101,"998,66267002660 ",.01)
 ;;66267002660
 ;;9002226.02101,"998,66267002660 ",.02)
 ;;66267002660
 ;;9002226.02101,"998,66267002730 ",.01)
 ;;66267002730
 ;;9002226.02101,"998,66267002730 ",.02)
 ;;66267002730
 ;;9002226.02101,"998,66267002830 ",.01)
 ;;66267002830
 ;;9002226.02101,"998,66267002830 ",.02)
 ;;66267002830
 ;;9002226.02101,"998,66553000101 ",.01)
 ;;66553000101
 ;;9002226.02101,"998,66553000101 ",.02)
 ;;66553000101
 ;;9002226.02101,"998,66553000201 ",.01)
 ;;66553000201
 ;;9002226.02101,"998,66553000201 ",.02)
 ;;66553000201
 ;;9002226.02101,"998,66553000301 ",.01)
 ;;66553000301
 ;;9002226.02101,"998,66553000301 ",.02)
 ;;66553000301
 ;;9002226.02101,"998,67046016230 ",.01)
 ;;67046016230
 ;;9002226.02101,"998,67046016230 ",.02)
 ;;67046016230
 ;;9002226.02101,"998,67046016430 ",.01)
 ;;67046016430
 ;;9002226.02101,"998,67046016430 ",.02)
 ;;67046016430
 ;;9002226.02101,"998,67046016530 ",.01)
 ;;67046016530
 ;;9002226.02101,"998,67046016530 ",.02)
 ;;67046016530
 ;;9002226.02101,"998,67046016830 ",.01)
 ;;67046016830
 ;;9002226.02101,"998,67046016830 ",.02)
 ;;67046016830
 ;;9002226.02101,"998,67228026103 ",.01)
 ;;67228026103
 ;;9002226.02101,"998,67228026103 ",.02)
 ;;67228026103
 ;;9002226.02101,"998,67228026106 ",.01)
 ;;67228026106
 ;;9002226.02101,"998,67228026106 ",.02)
 ;;67228026106
 ;;9002226.02101,"998,67544065131 ",.01)
 ;;67544065131
 ;;9002226.02101,"998,67544065131 ",.02)
 ;;67544065131
 ;;9002226.02101,"998,68115043320 ",.01)
 ;;68115043320
 ;;9002226.02101,"998,68115043320 ",.02)
 ;;68115043320
 ;;9002226.02101,"998,68391041690 ",.01)
 ;;68391041690
 ;;9002226.02101,"998,68391041690 ",.02)
 ;;68391041690
 ;;9002226.02101,"998,68752000336 ",.01)
 ;;68752000336
 ;;9002226.02101,"998,68752000336 ",.02)
 ;;68752000336
 ;;9002226.02101,"998,68788018602 ",.01)
 ;;68788018602
 ;;9002226.02101,"998,68788018602 ",.02)
 ;;68788018602
 ;;9002226.02101,"998,70030041190 ",.01)
 ;;70030041190
 ;;9002226.02101,"998,70030041190 ",.02)
 ;;70030041190
 ;;9002226.02101,"998,70253021807 ",.01)
 ;;70253021807
 ;;9002226.02101,"998,70253021807 ",.02)
 ;;70253021807
 ;;9002226.02101,"998,75942000110 ",.01)
 ;;75942000110
 ;;9002226.02101,"998,75942000110 ",.02)
 ;;75942000110
 ;;9002226.02101,"998,75942000112 ",.01)
 ;;75942000112
 ;;9002226.02101,"998,75942000112 ",.02)
 ;;75942000112
 ;;9002226.02101,"998,75942000136 ",.01)
 ;;75942000136
 ;;9002226.02101,"998,75942000136 ",.02)
 ;;75942000136
 ;;9002226.02101,"998,75942000150 ",.01)
 ;;75942000150
 ;;9002226.02101,"998,75942000150 ",.02)
 ;;75942000150
 ;;9002226.02101,"998,75942000175 ",.01)
 ;;75942000175
 ;;9002226.02101,"998,75942000175 ",.02)
 ;;75942000175
