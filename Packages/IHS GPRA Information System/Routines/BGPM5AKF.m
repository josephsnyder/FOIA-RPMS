BGPM5AKF ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"889,63739002710 ",.01)
 ;;63739002710
 ;;9002226.02101,"889,63739002710 ",.02)
 ;;63739002710
 ;;9002226.02101,"889,63739002810 ",.01)
 ;;63739002810
 ;;9002226.02101,"889,63739002810 ",.02)
 ;;63739002810
 ;;9002226.02101,"889,63739036610 ",.01)
 ;;63739036610
 ;;9002226.02101,"889,63739036610 ",.02)
 ;;63739036610
 ;;9002226.02101,"889,63739040510 ",.01)
 ;;63739040510
 ;;9002226.02101,"889,63739040510 ",.02)
 ;;63739040510
 ;;9002226.02101,"889,63739042810 ",.01)
 ;;63739042810
 ;;9002226.02101,"889,63739042810 ",.02)
 ;;63739042810
 ;;9002226.02101,"889,63775071700 ",.01)
 ;;63775071700
 ;;9002226.02101,"889,63775071700 ",.02)
 ;;63775071700
 ;;9002226.02101,"889,63775071701 ",.01)
 ;;63775071701
 ;;9002226.02101,"889,63775071701 ",.02)
 ;;63775071701
 ;;9002226.02101,"889,63775071702 ",.01)
 ;;63775071702
 ;;9002226.02101,"889,63775071702 ",.02)
 ;;63775071702
 ;;9002226.02101,"889,63775071703 ",.01)
 ;;63775071703
 ;;9002226.02101,"889,63775071703 ",.02)
 ;;63775071703
 ;;9002226.02101,"889,63874033201 ",.01)
 ;;63874033201
 ;;9002226.02101,"889,63874033201 ",.02)
 ;;63874033201
 ;;9002226.02101,"889,63874033202 ",.01)
 ;;63874033202
 ;;9002226.02101,"889,63874033202 ",.02)
 ;;63874033202
 ;;9002226.02101,"889,63874033207 ",.01)
 ;;63874033207
 ;;9002226.02101,"889,63874033207 ",.02)
 ;;63874033207
 ;;9002226.02101,"889,63874033210 ",.01)
 ;;63874033210
 ;;9002226.02101,"889,63874033210 ",.02)
 ;;63874033210
 ;;9002226.02101,"889,63874033214 ",.01)
 ;;63874033214
 ;;9002226.02101,"889,63874033214 ",.02)
 ;;63874033214
 ;;9002226.02101,"889,63874033215 ",.01)
 ;;63874033215
 ;;9002226.02101,"889,63874033215 ",.02)
 ;;63874033215
 ;;9002226.02101,"889,63874033220 ",.01)
 ;;63874033220
 ;;9002226.02101,"889,63874033220 ",.02)
 ;;63874033220
 ;;9002226.02101,"889,63874033230 ",.01)
 ;;63874033230
 ;;9002226.02101,"889,63874033230 ",.02)
 ;;63874033230
 ;;9002226.02101,"889,63874033260 ",.01)
 ;;63874033260
 ;;9002226.02101,"889,63874033260 ",.02)
 ;;63874033260
 ;;9002226.02101,"889,63874033290 ",.01)
 ;;63874033290
 ;;9002226.02101,"889,63874033290 ",.02)
 ;;63874033290
 ;;9002226.02101,"889,63874036801 ",.01)
 ;;63874036801
 ;;9002226.02101,"889,63874036801 ",.02)
 ;;63874036801
 ;;9002226.02101,"889,63874036802 ",.01)
 ;;63874036802
 ;;9002226.02101,"889,63874036802 ",.02)
 ;;63874036802
 ;;9002226.02101,"889,63874036815 ",.01)
 ;;63874036815
 ;;9002226.02101,"889,63874036815 ",.02)
 ;;63874036815
 ;;9002226.02101,"889,63874036820 ",.01)
 ;;63874036820
 ;;9002226.02101,"889,63874036820 ",.02)
 ;;63874036820
 ;;9002226.02101,"889,63874036828 ",.01)
 ;;63874036828
 ;;9002226.02101,"889,63874036828 ",.02)
 ;;63874036828
 ;;9002226.02101,"889,63874036830 ",.01)
 ;;63874036830
 ;;9002226.02101,"889,63874036830 ",.02)
 ;;63874036830
 ;;9002226.02101,"889,63874036860 ",.01)
 ;;63874036860
 ;;9002226.02101,"889,63874036860 ",.02)
 ;;63874036860
 ;;9002226.02101,"889,63874038801 ",.01)
 ;;63874038801
 ;;9002226.02101,"889,63874038801 ",.02)
 ;;63874038801
 ;;9002226.02101,"889,63874038807 ",.01)
 ;;63874038807
 ;;9002226.02101,"889,63874038807 ",.02)
 ;;63874038807
 ;;9002226.02101,"889,63874038810 ",.01)
 ;;63874038810
 ;;9002226.02101,"889,63874038810 ",.02)
 ;;63874038810
 ;;9002226.02101,"889,63874038812 ",.01)
 ;;63874038812
 ;;9002226.02101,"889,63874038812 ",.02)
 ;;63874038812
 ;;9002226.02101,"889,63874038815 ",.01)
 ;;63874038815
 ;;9002226.02101,"889,63874038815 ",.02)
 ;;63874038815
 ;;9002226.02101,"889,63874038820 ",.01)
 ;;63874038820
 ;;9002226.02101,"889,63874038820 ",.02)
 ;;63874038820
 ;;9002226.02101,"889,63874038830 ",.01)
 ;;63874038830
 ;;9002226.02101,"889,63874038830 ",.02)
 ;;63874038830
 ;;9002226.02101,"889,63874040601 ",.01)
 ;;63874040601
 ;;9002226.02101,"889,63874040601 ",.02)
 ;;63874040601
 ;;9002226.02101,"889,63874040610 ",.01)
 ;;63874040610
 ;;9002226.02101,"889,63874040610 ",.02)
 ;;63874040610
 ;;9002226.02101,"889,63874040614 ",.01)
 ;;63874040614
 ;;9002226.02101,"889,63874040614 ",.02)
 ;;63874040614
 ;;9002226.02101,"889,63874040615 ",.01)
 ;;63874040615
 ;;9002226.02101,"889,63874040615 ",.02)
 ;;63874040615
 ;;9002226.02101,"889,63874040620 ",.01)
 ;;63874040620
 ;;9002226.02101,"889,63874040620 ",.02)
 ;;63874040620
 ;;9002226.02101,"889,63874040628 ",.01)
 ;;63874040628
 ;;9002226.02101,"889,63874040628 ",.02)
 ;;63874040628
 ;;9002226.02101,"889,63874040630 ",.01)
 ;;63874040630
 ;;9002226.02101,"889,63874040630 ",.02)
 ;;63874040630
 ;;9002226.02101,"889,63874040660 ",.01)
 ;;63874040660
 ;;9002226.02101,"889,63874040660 ",.02)
 ;;63874040660
 ;;9002226.02101,"889,63874040701 ",.01)
 ;;63874040701
 ;;9002226.02101,"889,63874040701 ",.02)
 ;;63874040701
 ;;9002226.02101,"889,63874040710 ",.01)
 ;;63874040710
 ;;9002226.02101,"889,63874040710 ",.02)
 ;;63874040710
 ;;9002226.02101,"889,63874040715 ",.01)
 ;;63874040715
 ;;9002226.02101,"889,63874040715 ",.02)
 ;;63874040715
 ;;9002226.02101,"889,63874040720 ",.01)
 ;;63874040720
 ;;9002226.02101,"889,63874040720 ",.02)
 ;;63874040720
 ;;9002226.02101,"889,63874040730 ",.01)
 ;;63874040730
 ;;9002226.02101,"889,63874040730 ",.02)
 ;;63874040730
 ;;9002226.02101,"889,63874040760 ",.01)
 ;;63874040760
 ;;9002226.02101,"889,63874040760 ",.02)
 ;;63874040760
 ;;9002226.02101,"889,63874040790 ",.01)
 ;;63874040790
 ;;9002226.02101,"889,63874040790 ",.02)
 ;;63874040790
 ;;9002226.02101,"889,63874045401 ",.01)
 ;;63874045401
 ;;9002226.02101,"889,63874045401 ",.02)
 ;;63874045401
 ;;9002226.02101,"889,63874045402 ",.01)
 ;;63874045402
 ;;9002226.02101,"889,63874045402 ",.02)
 ;;63874045402
 ;;9002226.02101,"889,63874045404 ",.01)
 ;;63874045404
 ;;9002226.02101,"889,63874045404 ",.02)
 ;;63874045404
 ;;9002226.02101,"889,63874045415 ",.01)
 ;;63874045415
 ;;9002226.02101,"889,63874045415 ",.02)
 ;;63874045415
 ;;9002226.02101,"889,63874045420 ",.01)
 ;;63874045420
 ;;9002226.02101,"889,63874045420 ",.02)
 ;;63874045420
 ;;9002226.02101,"889,63874045430 ",.01)
 ;;63874045430
 ;;9002226.02101,"889,63874045430 ",.02)
 ;;63874045430
 ;;9002226.02101,"889,63874045460 ",.01)
 ;;63874045460
 ;;9002226.02101,"889,63874045460 ",.02)
 ;;63874045460
 ;;9002226.02101,"889,63874046801 ",.01)
 ;;63874046801
 ;;9002226.02101,"889,63874046801 ",.02)
 ;;63874046801
 ;;9002226.02101,"889,63874046810 ",.01)
 ;;63874046810
 ;;9002226.02101,"889,63874046810 ",.02)
 ;;63874046810
 ;;9002226.02101,"889,63874046814 ",.01)
 ;;63874046814
 ;;9002226.02101,"889,63874046814 ",.02)
 ;;63874046814
 ;;9002226.02101,"889,63874046815 ",.01)
 ;;63874046815
 ;;9002226.02101,"889,63874046815 ",.02)
 ;;63874046815
 ;;9002226.02101,"889,63874046820 ",.01)
 ;;63874046820
 ;;9002226.02101,"889,63874046820 ",.02)
 ;;63874046820
 ;;9002226.02101,"889,63874046830 ",.01)
 ;;63874046830
 ;;9002226.02101,"889,63874046830 ",.02)
 ;;63874046830
 ;;9002226.02101,"889,63874046860 ",.01)
 ;;63874046860
 ;;9002226.02101,"889,63874046860 ",.02)
 ;;63874046860
 ;;9002226.02101,"889,63874046890 ",.01)
 ;;63874046890
 ;;9002226.02101,"889,63874046890 ",.02)
 ;;63874046890
 ;;9002226.02101,"889,63874048601 ",.01)
 ;;63874048601
 ;;9002226.02101,"889,63874048601 ",.02)
 ;;63874048601
 ;;9002226.02101,"889,63874048602 ",.01)
 ;;63874048602
 ;;9002226.02101,"889,63874048602 ",.02)
 ;;63874048602
 ;;9002226.02101,"889,63874048615 ",.01)
 ;;63874048615
 ;;9002226.02101,"889,63874048615 ",.02)
 ;;63874048615
 ;;9002226.02101,"889,63874048630 ",.01)
 ;;63874048630
 ;;9002226.02101,"889,63874048630 ",.02)
 ;;63874048630
 ;;9002226.02101,"889,63874048640 ",.01)
 ;;63874048640
 ;;9002226.02101,"889,63874048640 ",.02)
 ;;63874048640
 ;;9002226.02101,"889,63874048660 ",.01)
 ;;63874048660
 ;;9002226.02101,"889,63874048660 ",.02)
 ;;63874048660
 ;;9002226.02101,"889,63874067601 ",.01)
 ;;63874067601
 ;;9002226.02101,"889,63874067601 ",.02)
 ;;63874067601
 ;;9002226.02101,"889,63874067612 ",.01)
 ;;63874067612
 ;;9002226.02101,"889,63874067612 ",.02)
 ;;63874067612
 ;;9002226.02101,"889,63874067615 ",.01)
 ;;63874067615
 ;;9002226.02101,"889,63874067615 ",.02)
 ;;63874067615
 ;;9002226.02101,"889,63874067620 ",.01)
 ;;63874067620
 ;;9002226.02101,"889,63874067620 ",.02)
 ;;63874067620
 ;;9002226.02101,"889,64376050201 ",.01)
 ;;64376050201
 ;;9002226.02101,"889,64376050201 ",.02)
 ;;64376050201
 ;;9002226.02101,"889,64376050210 ",.01)
 ;;64376050210
 ;;9002226.02101,"889,64376050210 ",.02)
 ;;64376050210
 ;;9002226.02101,"889,64376050301 ",.01)
 ;;64376050301
 ;;9002226.02101,"889,64376050301 ",.02)
 ;;64376050301
 ;;9002226.02101,"889,64376050310 ",.01)
 ;;64376050310
 ;;9002226.02101,"889,64376050310 ",.02)
 ;;64376050310
 ;;9002226.02101,"889,64579038600 ",.01)
 ;;64579038600
 ;;9002226.02101,"889,64579038600 ",.02)
 ;;64579038600
 ;;9002226.02101,"889,64579038601 ",.01)
 ;;64579038601
 ;;9002226.02101,"889,64579038601 ",.02)
 ;;64579038601
 ;;9002226.02101,"889,64725003203 ",.01)
 ;;64725003203
 ;;9002226.02101,"889,64725003203 ",.02)
 ;;64725003203
 ;;9002226.02101,"889,64725021303 ",.01)
 ;;64725021303
 ;;9002226.02101,"889,64725021303 ",.02)
 ;;64725021303
 ;;9002226.02101,"889,64725021403 ",.01)
 ;;64725021403
 ;;9002226.02101,"889,64725021403 ",.02)
 ;;64725021403
 ;;9002226.02101,"889,64725027403 ",.01)
 ;;64725027403
 ;;9002226.02101,"889,64725027403 ",.02)
 ;;64725027403
 ;;9002226.02101,"889,64725027503 ",.01)
 ;;64725027503
 ;;9002226.02101,"889,64725027503 ",.02)
 ;;64725027503
 ;;9002226.02101,"889,64725027603 ",.01)
 ;;64725027603
 ;;9002226.02101,"889,64725027603 ",.02)
 ;;64725027603
 ;;9002226.02101,"889,64725039103 ",.01)
 ;;64725039103
 ;;9002226.02101,"889,64725039103 ",.02)
 ;;64725039103
 ;;9002226.02101,"889,65084028410 ",.01)
 ;;65084028410
 ;;9002226.02101,"889,65084028410 ",.02)
 ;;65084028410
 ;;9002226.02101,"889,65084035218 ",.01)
 ;;65084035218
 ;;9002226.02101,"889,65084035218 ",.02)
 ;;65084035218
 ;;9002226.02101,"889,65084035318 ",.01)
 ;;65084035318
 ;;9002226.02101,"889,65084035318 ",.02)
 ;;65084035318
 ;;9002226.02101,"889,65243001403 ",.01)
 ;;65243001403
 ;;9002226.02101,"889,65243001403 ",.02)
 ;;65243001403
 ;;9002226.02101,"889,65243001406 ",.01)
 ;;65243001406
 ;;9002226.02101,"889,65243001406 ",.02)
 ;;65243001406
 ;;9002226.02101,"889,65243001409 ",.01)
 ;;65243001409
 ;;9002226.02101,"889,65243001409 ",.02)
 ;;65243001409
 ;;9002226.02101,"889,65243001418 ",.01)
 ;;65243001418
 ;;9002226.02101,"889,65243001418 ",.02)
 ;;65243001418
 ;;9002226.02101,"889,65243001445 ",.01)
 ;;65243001445
 ;;9002226.02101,"889,65243001445 ",.02)
 ;;65243001445
 ;;9002226.02101,"889,65243004803 ",.01)
 ;;65243004803
 ;;9002226.02101,"889,65243004803 ",.02)
 ;;65243004803
 ;;9002226.02101,"889,65243004806 ",.01)
 ;;65243004806
 ;;9002226.02101,"889,65243004806 ",.02)
 ;;65243004806
 ;;9002226.02101,"889,65243004809 ",.01)
 ;;65243004809
 ;;9002226.02101,"889,65243004809 ",.02)
 ;;65243004809
 ;;9002226.02101,"889,65243004812 ",.01)
 ;;65243004812
 ;;9002226.02101,"889,65243004812 ",.02)
 ;;65243004812
 ;;9002226.02101,"889,65243004818 ",.01)
 ;;65243004818
 ;;9002226.02101,"889,65243004818 ",.02)
 ;;65243004818
 ;;9002226.02101,"889,65243004827 ",.01)
 ;;65243004827
 ;;9002226.02101,"889,65243004827 ",.02)
 ;;65243004827
 ;;9002226.02101,"889,65243004845 ",.01)
 ;;65243004845
 ;;9002226.02101,"889,65243004845 ",.02)
 ;;65243004845
 ;;9002226.02101,"889,65243009103 ",.01)
 ;;65243009103
 ;;9002226.02101,"889,65243009103 ",.02)
 ;;65243009103
