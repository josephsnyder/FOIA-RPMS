BGPM5AHK ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"882,63304053411 ",.02)
 ;;63304053411
 ;;9002226.02101,"882,63304053477 ",.01)
 ;;63304053477
 ;;9002226.02101,"882,63304053477 ",.02)
 ;;63304053477
 ;;9002226.02101,"882,63304053501 ",.01)
 ;;63304053501
 ;;9002226.02101,"882,63304053501 ",.02)
 ;;63304053501
 ;;9002226.02101,"882,63304053510 ",.01)
 ;;63304053510
 ;;9002226.02101,"882,63304053510 ",.02)
 ;;63304053510
 ;;9002226.02101,"882,63304053511 ",.01)
 ;;63304053511
 ;;9002226.02101,"882,63304053511 ",.02)
 ;;63304053511
 ;;9002226.02101,"882,63304053577 ",.01)
 ;;63304053577
 ;;9002226.02101,"882,63304053577 ",.02)
 ;;63304053577
 ;;9002226.02101,"882,63304053601 ",.01)
 ;;63304053601
 ;;9002226.02101,"882,63304053601 ",.02)
 ;;63304053601
 ;;9002226.02101,"882,63304053605 ",.01)
 ;;63304053605
 ;;9002226.02101,"882,63304053605 ",.02)
 ;;63304053605
 ;;9002226.02101,"882,63304053701 ",.01)
 ;;63304053701
 ;;9002226.02101,"882,63304053701 ",.02)
 ;;63304053701
 ;;9002226.02101,"882,63304053705 ",.01)
 ;;63304053705
 ;;9002226.02101,"882,63304053705 ",.02)
 ;;63304053705
 ;;9002226.02101,"882,63304053801 ",.01)
 ;;63304053801
 ;;9002226.02101,"882,63304053801 ",.02)
 ;;63304053801
 ;;9002226.02101,"882,63304053805 ",.01)
 ;;63304053805
 ;;9002226.02101,"882,63304053805 ",.02)
 ;;63304053805
 ;;9002226.02101,"882,63304054890 ",.01)
 ;;63304054890
 ;;9002226.02101,"882,63304054890 ",.02)
 ;;63304054890
 ;;9002226.02101,"882,63304054990 ",.01)
 ;;63304054990
 ;;9002226.02101,"882,63304054990 ",.02)
 ;;63304054990
 ;;9002226.02101,"882,63304055090 ",.01)
 ;;63304055090
 ;;9002226.02101,"882,63304055090 ",.02)
 ;;63304055090
 ;;9002226.02101,"882,63304055190 ",.01)
 ;;63304055190
 ;;9002226.02101,"882,63304055190 ",.02)
 ;;63304055190
 ;;9002226.02101,"882,63304059901 ",.01)
 ;;63304059901
 ;;9002226.02101,"882,63304059901 ",.02)
 ;;63304059901
 ;;9002226.02101,"882,63304059910 ",.01)
 ;;63304059910
 ;;9002226.02101,"882,63304059910 ",.02)
 ;;63304059910
 ;;9002226.02101,"882,63304077501 ",.01)
 ;;63304077501
 ;;9002226.02101,"882,63304077501 ",.02)
 ;;63304077501
 ;;9002226.02101,"882,63304077505 ",.01)
 ;;63304077505
 ;;9002226.02101,"882,63304077505 ",.02)
 ;;63304077505
 ;;9002226.02101,"882,63304077510 ",.01)
 ;;63304077510
 ;;9002226.02101,"882,63304077510 ",.02)
 ;;63304077510
 ;;9002226.02101,"882,63304077530 ",.01)
 ;;63304077530
 ;;9002226.02101,"882,63304077530 ",.02)
 ;;63304077530
 ;;9002226.02101,"882,63304077590 ",.01)
 ;;63304077590
 ;;9002226.02101,"882,63304077590 ",.02)
 ;;63304077590
 ;;9002226.02101,"882,63304077601 ",.01)
 ;;63304077601
 ;;9002226.02101,"882,63304077601 ",.02)
 ;;63304077601
 ;;9002226.02101,"882,63304077605 ",.01)
 ;;63304077605
 ;;9002226.02101,"882,63304077605 ",.02)
 ;;63304077605
 ;;9002226.02101,"882,63304077610 ",.01)
 ;;63304077610
 ;;9002226.02101,"882,63304077610 ",.02)
 ;;63304077610
 ;;9002226.02101,"882,63304077630 ",.01)
 ;;63304077630
 ;;9002226.02101,"882,63304077630 ",.02)
 ;;63304077630
 ;;9002226.02101,"882,63304077690 ",.01)
 ;;63304077690
 ;;9002226.02101,"882,63304077690 ",.02)
 ;;63304077690
 ;;9002226.02101,"882,63304077701 ",.01)
 ;;63304077701
 ;;9002226.02101,"882,63304077701 ",.02)
 ;;63304077701
 ;;9002226.02101,"882,63304077705 ",.01)
 ;;63304077705
 ;;9002226.02101,"882,63304077705 ",.02)
 ;;63304077705
 ;;9002226.02101,"882,63304077710 ",.01)
 ;;63304077710
 ;;9002226.02101,"882,63304077710 ",.02)
 ;;63304077710
 ;;9002226.02101,"882,63304077730 ",.01)
 ;;63304077730
 ;;9002226.02101,"882,63304077730 ",.02)
 ;;63304077730
 ;;9002226.02101,"882,63304077790 ",.01)
 ;;63304077790
 ;;9002226.02101,"882,63304077790 ",.02)
 ;;63304077790
 ;;9002226.02101,"882,63304083401 ",.01)
 ;;63304083401
 ;;9002226.02101,"882,63304083401 ",.02)
 ;;63304083401
 ;;9002226.02101,"882,63304083410 ",.01)
 ;;63304083410
 ;;9002226.02101,"882,63304083410 ",.02)
 ;;63304083410
 ;;9002226.02101,"882,63304083501 ",.01)
 ;;63304083501
 ;;9002226.02101,"882,63304083501 ",.02)
 ;;63304083501
 ;;9002226.02101,"882,63304083510 ",.01)
 ;;63304083510
 ;;9002226.02101,"882,63304083510 ",.02)
 ;;63304083510
 ;;9002226.02101,"882,63304083601 ",.01)
 ;;63304083601
 ;;9002226.02101,"882,63304083601 ",.02)
 ;;63304083601
 ;;9002226.02101,"882,63304083610 ",.01)
 ;;63304083610
 ;;9002226.02101,"882,63304083610 ",.02)
 ;;63304083610
 ;;9002226.02101,"882,63304083701 ",.01)
 ;;63304083701
 ;;9002226.02101,"882,63304083701 ",.02)
 ;;63304083701
 ;;9002226.02101,"882,63304083710 ",.01)
 ;;63304083710
 ;;9002226.02101,"882,63304083710 ",.02)
 ;;63304083710
 ;;9002226.02101,"882,63629125301 ",.01)
 ;;63629125301
 ;;9002226.02101,"882,63629125301 ",.02)
 ;;63629125301
 ;;9002226.02101,"882,63629125302 ",.01)
 ;;63629125302
 ;;9002226.02101,"882,63629125302 ",.02)
 ;;63629125302
 ;;9002226.02101,"882,63629125401 ",.01)
 ;;63629125401
 ;;9002226.02101,"882,63629125401 ",.02)
 ;;63629125401
 ;;9002226.02101,"882,63629125402 ",.01)
 ;;63629125402
 ;;9002226.02101,"882,63629125402 ",.02)
 ;;63629125402
 ;;9002226.02101,"882,63629133801 ",.01)
 ;;63629133801
 ;;9002226.02101,"882,63629133801 ",.02)
 ;;63629133801
 ;;9002226.02101,"882,63629133802 ",.01)
 ;;63629133802
 ;;9002226.02101,"882,63629133802 ",.02)
 ;;63629133802
 ;;9002226.02101,"882,63629133803 ",.01)
 ;;63629133803
 ;;9002226.02101,"882,63629133803 ",.02)
 ;;63629133803
 ;;9002226.02101,"882,63629152201 ",.01)
 ;;63629152201
 ;;9002226.02101,"882,63629152201 ",.02)
 ;;63629152201
 ;;9002226.02101,"882,63629152202 ",.01)
 ;;63629152202
 ;;9002226.02101,"882,63629152202 ",.02)
 ;;63629152202
 ;;9002226.02101,"882,63629152203 ",.01)
 ;;63629152203
 ;;9002226.02101,"882,63629152203 ",.02)
 ;;63629152203
 ;;9002226.02101,"882,63629152204 ",.01)
 ;;63629152204
 ;;9002226.02101,"882,63629152204 ",.02)
 ;;63629152204
 ;;9002226.02101,"882,63629152205 ",.01)
 ;;63629152205
 ;;9002226.02101,"882,63629152205 ",.02)
 ;;63629152205
 ;;9002226.02101,"882,63629152501 ",.01)
 ;;63629152501
 ;;9002226.02101,"882,63629152501 ",.02)
 ;;63629152501
 ;;9002226.02101,"882,63629152502 ",.01)
 ;;63629152502
 ;;9002226.02101,"882,63629152502 ",.02)
 ;;63629152502
 ;;9002226.02101,"882,63629152503 ",.01)
 ;;63629152503
 ;;9002226.02101,"882,63629152503 ",.02)
 ;;63629152503
 ;;9002226.02101,"882,63629152601 ",.01)
 ;;63629152601
 ;;9002226.02101,"882,63629152601 ",.02)
 ;;63629152601
 ;;9002226.02101,"882,63629152602 ",.01)
 ;;63629152602
 ;;9002226.02101,"882,63629152602 ",.02)
 ;;63629152602
 ;;9002226.02101,"882,63629152603 ",.01)
 ;;63629152603
 ;;9002226.02101,"882,63629152603 ",.02)
 ;;63629152603
 ;;9002226.02101,"882,63629152604 ",.01)
 ;;63629152604
 ;;9002226.02101,"882,63629152604 ",.02)
 ;;63629152604
 ;;9002226.02101,"882,63629167901 ",.01)
 ;;63629167901
 ;;9002226.02101,"882,63629167901 ",.02)
 ;;63629167901
 ;;9002226.02101,"882,63629167902 ",.01)
 ;;63629167902
 ;;9002226.02101,"882,63629167902 ",.02)
 ;;63629167902
 ;;9002226.02101,"882,63629167903 ",.01)
 ;;63629167903
 ;;9002226.02101,"882,63629167903 ",.02)
 ;;63629167903
 ;;9002226.02101,"882,63629167904 ",.01)
 ;;63629167904
 ;;9002226.02101,"882,63629167904 ",.02)
 ;;63629167904
 ;;9002226.02101,"882,63629170601 ",.01)
 ;;63629170601
 ;;9002226.02101,"882,63629170601 ",.02)
 ;;63629170601
 ;;9002226.02101,"882,63629170602 ",.01)
 ;;63629170602
 ;;9002226.02101,"882,63629170602 ",.02)
 ;;63629170602
 ;;9002226.02101,"882,63629170603 ",.01)
 ;;63629170603
 ;;9002226.02101,"882,63629170603 ",.02)
 ;;63629170603
 ;;9002226.02101,"882,63629176101 ",.01)
 ;;63629176101
 ;;9002226.02101,"882,63629176101 ",.02)
 ;;63629176101
 ;;9002226.02101,"882,63629176102 ",.01)
 ;;63629176102
 ;;9002226.02101,"882,63629176102 ",.02)
 ;;63629176102
 ;;9002226.02101,"882,63629176103 ",.01)
 ;;63629176103
 ;;9002226.02101,"882,63629176103 ",.02)
 ;;63629176103
 ;;9002226.02101,"882,63629254101 ",.01)
 ;;63629254101
 ;;9002226.02101,"882,63629254101 ",.02)
 ;;63629254101
 ;;9002226.02101,"882,63629254102 ",.01)
 ;;63629254102
 ;;9002226.02101,"882,63629254102 ",.02)
 ;;63629254102
 ;;9002226.02101,"882,63629254103 ",.01)
 ;;63629254103
 ;;9002226.02101,"882,63629254103 ",.02)
 ;;63629254103
 ;;9002226.02101,"882,63629254104 ",.01)
 ;;63629254104
 ;;9002226.02101,"882,63629254104 ",.02)
 ;;63629254104
 ;;9002226.02101,"882,63629268801 ",.01)
 ;;63629268801
 ;;9002226.02101,"882,63629268801 ",.02)
 ;;63629268801
 ;;9002226.02101,"882,63629268802 ",.01)
 ;;63629268802
 ;;9002226.02101,"882,63629268802 ",.02)
 ;;63629268802
 ;;9002226.02101,"882,63629268803 ",.01)
 ;;63629268803
 ;;9002226.02101,"882,63629268803 ",.02)
 ;;63629268803
 ;;9002226.02101,"882,63629268804 ",.01)
 ;;63629268804
 ;;9002226.02101,"882,63629268804 ",.02)
 ;;63629268804
 ;;9002226.02101,"882,63629268805 ",.01)
 ;;63629268805
 ;;9002226.02101,"882,63629268805 ",.02)
 ;;63629268805
 ;;9002226.02101,"882,63629289601 ",.01)
 ;;63629289601
 ;;9002226.02101,"882,63629289601 ",.02)
 ;;63629289601
 ;;9002226.02101,"882,63629290801 ",.01)
 ;;63629290801
 ;;9002226.02101,"882,63629290801 ",.02)
 ;;63629290801
 ;;9002226.02101,"882,63629290802 ",.01)
 ;;63629290802
 ;;9002226.02101,"882,63629290802 ",.02)
 ;;63629290802
 ;;9002226.02101,"882,63629290803 ",.01)
 ;;63629290803
 ;;9002226.02101,"882,63629290803 ",.02)
 ;;63629290803
 ;;9002226.02101,"882,63629290804 ",.01)
 ;;63629290804
 ;;9002226.02101,"882,63629290804 ",.02)
 ;;63629290804
 ;;9002226.02101,"882,63629293501 ",.01)
 ;;63629293501
 ;;9002226.02101,"882,63629293501 ",.02)
 ;;63629293501
 ;;9002226.02101,"882,63629293502 ",.01)
 ;;63629293502
 ;;9002226.02101,"882,63629293502 ",.02)
 ;;63629293502
 ;;9002226.02101,"882,63629293503 ",.01)
 ;;63629293503
 ;;9002226.02101,"882,63629293503 ",.02)
 ;;63629293503
 ;;9002226.02101,"882,63629293504 ",.01)
 ;;63629293504
 ;;9002226.02101,"882,63629293504 ",.02)
 ;;63629293504
 ;;9002226.02101,"882,63629321701 ",.01)
 ;;63629321701
 ;;9002226.02101,"882,63629321701 ",.02)
 ;;63629321701
 ;;9002226.02101,"882,63629373901 ",.01)
 ;;63629373901
 ;;9002226.02101,"882,63629373901 ",.02)
 ;;63629373901
 ;;9002226.02101,"882,63629373902 ",.01)
 ;;63629373902
 ;;9002226.02101,"882,63629373902 ",.02)
 ;;63629373902
 ;;9002226.02101,"882,63629373903 ",.01)
 ;;63629373903
 ;;9002226.02101,"882,63629373903 ",.02)
 ;;63629373903
 ;;9002226.02101,"882,63629447001 ",.01)
 ;;63629447001
 ;;9002226.02101,"882,63629447001 ",.02)
 ;;63629447001
 ;;9002226.02101,"882,63629447002 ",.01)
 ;;63629447002
 ;;9002226.02101,"882,63629447002 ",.02)
 ;;63629447002
 ;;9002226.02101,"882,63739004201 ",.01)
 ;;63739004201
 ;;9002226.02101,"882,63739004201 ",.02)
 ;;63739004201
 ;;9002226.02101,"882,63739004301 ",.01)
 ;;63739004301
 ;;9002226.02101,"882,63739004301 ",.02)
 ;;63739004301
 ;;9002226.02101,"882,63739030210 ",.01)
 ;;63739030210
 ;;9002226.02101,"882,63739030210 ",.02)
 ;;63739030210
 ;;9002226.02101,"882,63739032205 ",.01)
 ;;63739032205
 ;;9002226.02101,"882,63739032205 ",.02)
 ;;63739032205
 ;;9002226.02101,"882,63739034810 ",.01)
 ;;63739034810
 ;;9002226.02101,"882,63739034810 ",.02)
 ;;63739034810
 ;;9002226.02101,"882,63739034910 ",.01)
 ;;63739034910
 ;;9002226.02101,"882,63739034910 ",.02)
 ;;63739034910
 ;;9002226.02101,"882,63739035010 ",.01)
 ;;63739035010
 ;;9002226.02101,"882,63739035010 ",.02)
 ;;63739035010
 ;;9002226.02101,"882,63874034701 ",.01)
 ;;63874034701
 ;;9002226.02101,"882,63874034701 ",.02)
 ;;63874034701
 ;;9002226.02101,"882,63874034702 ",.01)
 ;;63874034702
