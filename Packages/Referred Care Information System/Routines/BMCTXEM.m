BMCTXEM ; IHS/PHXAO/TMJ -CREATED BY ^ATXSTX ON APR 12, 1996 ;
 ;;4.0;REFERRED CARE INFO SYSTEM;;JAN 09, 2006
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"123,39531 ",.01)
 ;;39531
 ;;9002226.02101,"123,39541 ",.01)
 ;;39541
 ;;9002226.02101,"123,40701 ",.01)
 ;;40701
 ;;9002226.02101,"123,40844 ",.01)
 ;;40844
 ;;9002226.02101,"123,40845 ",.01)
 ;;40845
 ;;9002226.02101,"123,41135 ",.01)
 ;;41135
 ;;9002226.02101,"123,41140 ",.01)
 ;;41140
 ;;9002226.02101,"123,41145 ",.01)
 ;;41145
 ;;9002226.02101,"123,41150 ",.01)
 ;;41150
 ;;9002226.02101,"123,41153 ",.01)
 ;;41153
 ;;9002226.02101,"123,41155 ",.01)
 ;;41155
 ;;9002226.02101,"123,42415 ",.01)
 ;;42415
 ;;9002226.02101,"123,42420 ",.01)
 ;;42420
 ;;9002226.02101,"123,42426 ",.01)
 ;;42426
 ;;9002226.02101,"123,42845 ",.01)
 ;;42845
 ;;9002226.02101,"123,42894 ",.01)
 ;;42894
 ;;9002226.02101,"123,43045 ",.01)
 ;;43045
 ;;9002226.02101,"123,43105 ",.01)
 ;;43105
 ;;9002226.02101,"123,43106 ",.01)
 ;;43106
 ;;9002226.02101,"123,43107 ",.01)
 ;;43107
 ;;9002226.02101,"123,43108 ",.01)
 ;;43108
 ;;9002226.02101,"123,43110 ",.01)
 ;;43110
 ;;9002226.02101,"123,43111 ",.01)
 ;;43111
 ;;9002226.02101,"123,43112 ",.01)
 ;;43112
 ;;9002226.02101,"123,43113 ",.01)
 ;;43113
 ;;9002226.02101,"123,43115 ",.01)
 ;;43115
 ;;9002226.02101,"123,43116 ",.01)
 ;;43116
 ;;9002226.02101,"123,43117 ",.01)
 ;;43117
 ;;9002226.02101,"123,43118 ",.01)
 ;;43118
 ;;9002226.02101,"123,43119 ",.01)
 ;;43119
 ;;9002226.02101,"123,43120 ",.01)
 ;;43120
 ;;9002226.02101,"123,43121 ",.01)
 ;;43121
 ;;9002226.02101,"123,43122 ",.01)
 ;;43122
 ;;9002226.02101,"123,43123 ",.01)
 ;;43123
 ;;9002226.02101,"123,43124 ",.01)
 ;;43124
 ;;9002226.02101,"123,43135 ",.01)
 ;;43135
 ;;9002226.02101,"123,43305 ",.01)
 ;;43305
 ;;9002226.02101,"123,43310 ",.01)
 ;;43310
 ;;9002226.02101,"123,43312 ",.01)
 ;;43312
 ;;9002226.02101,"123,43320 ",.01)
 ;;43320
 ;;9002226.02101,"123,43321 ",.01)
 ;;43321
 ;;9002226.02101,"123,43324 ",.01)
 ;;43324
 ;;9002226.02101,"123,43325 ",.01)
 ;;43325
 ;;9002226.02101,"123,43330 ",.01)
 ;;43330
 ;;9002226.02101,"123,43331 ",.01)
 ;;43331
 ;;9002226.02101,"123,43340 ",.01)
 ;;43340
 ;;9002226.02101,"123,43360 ",.01)
 ;;43360
 ;;9002226.02101,"123,43361 ",.01)
 ;;43361
 ;;9002226.02101,"123,43400 ",.01)
 ;;43400
 ;;9002226.02101,"123,43401 ",.01)
 ;;43401
 ;;9002226.02101,"123,43405 ",.01)
 ;;43405
 ;;9002226.02101,"123,43415 ",.01)
 ;;43415
 ;;9002226.02101,"123,43425 ",.01)
 ;;43425
 ;;9002226.02101,"123,43501 ",.01)
 ;;43501
 ;;9002226.02101,"123,43502 ",.01)
 ;;43502
 ;;9002226.02101,"123,43620 ",.01)
 ;;43620
 ;;9002226.02101,"123,43621 ",.01)
 ;;43621
 ;;9002226.02101,"123,43622 ",.01)
 ;;43622
 ;;9002226.02101,"123,43631 ",.01)
 ;;43631
 ;;9002226.02101,"123,43632 ",.01)
 ;;43632
 ;;9002226.02101,"123,43633 ",.01)
 ;;43633
 ;;9002226.02101,"123,43634 ",.01)
 ;;43634
 ;;9002226.02101,"123,43638 ",.01)
 ;;43638
 ;;9002226.02101,"123,43639 ",.01)
 ;;43639
 ;;9002226.02101,"123,43640 ",.01)
 ;;43640
 ;;9002226.02101,"123,43825 ",.01)
 ;;43825
 ;;9002226.02101,"123,43842 ",.01)
 ;;43842
 ;;9002226.02101,"123,43843 ",.01)
 ;;43843
 ;;9002226.02101,"123,43846 ",.01)
 ;;43846
 ;;9002226.02101,"123,43847 ",.01)
 ;;43847
 ;;9002226.02101,"123,43848 ",.01)
 ;;43848
 ;;9002226.02101,"123,43850 ",.01)
 ;;43850
 ;;9002226.02101,"123,43855 ",.01)
 ;;43855
 ;;9002226.02101,"123,43860 ",.01)
 ;;43860
 ;;9002226.02101,"123,43865 ",.01)
 ;;43865
 ;;9002226.02101,"123,43880 ",.01)
 ;;43880
 ;;9002226.02101,"123,44040 ",.01)
 ;;44040
 ;;9002226.02101,"123,44125 ",.01)
 ;;44125
 ;;9002226.02101,"123,44140 ",.01)
 ;;44140
 ;;9002226.02101,"123,44141 ",.01)
 ;;44141
 ;;9002226.02101,"123,44143 ",.01)
 ;;44143
 ;;9002226.02101,"123,44144 ",.01)
 ;;44144
 ;;9002226.02101,"123,44145 ",.01)
 ;;44145
 ;;9002226.02101,"123,44146 ",.01)
 ;;44146
 ;;9002226.02101,"123,44147 ",.01)
 ;;44147
 ;;9002226.02101,"123,44150 ",.01)
 ;;44150
 ;;9002226.02101,"123,44151 ",.01)
 ;;44151
 ;;9002226.02101,"123,44152 ",.01)
 ;;44152
 ;;9002226.02101,"123,44153 ",.01)
 ;;44153
 ;;9002226.02101,"123,44155 ",.01)
 ;;44155
 ;;9002226.02101,"123,44156 ",.01)
 ;;44156
 ;;9002226.02101,"123,44160 ",.01)
 ;;44160
 ;;9002226.02101,"123,44603 ",.01)
 ;;44603
 ;;9002226.02101,"123,44605 ",.01)
 ;;44605
 ;;9002226.02101,"123,44661 ",.01)
 ;;44661
 ;;9002226.02101,"123,44680 ",.01)
 ;;44680
 ;;9002226.02101,"123,45110 ",.01)
 ;;45110
 ;;9002226.02101,"123,45111 ",.01)
 ;;45111
 ;;9002226.02101,"123,45112 ",.01)
 ;;45112
 ;;9002226.02101,"123,45113 ",.01)
 ;;45113
 ;;9002226.02101,"123,45114 ",.01)
 ;;45114
 ;;9002226.02101,"123,45116 ",.01)
 ;;45116
 ;;9002226.02101,"123,45120 ",.01)
 ;;45120
 ;;9002226.02101,"123,45121 ",.01)
 ;;45121
 ;;9002226.02101,"123,45123 ",.01)
 ;;45123
 ;;9002226.02101,"123,45135 ",.01)
 ;;45135
 ;;9002226.02101,"123,45540 ",.01)
 ;;45540
 ;;9002226.02101,"123,45550 ",.01)
 ;;45550
 ;;9002226.02101,"123,45563 ",.01)
 ;;45563
 ;;9002226.02101,"123,45805 ",.01)
 ;;45805
 ;;9002226.02101,"123,45825 ",.01)
 ;;45825
 ;;9002226.02101,"123,46730 ",.01)
 ;;46730
 ;;9002226.02101,"123,46735 ",.01)
 ;;46735
