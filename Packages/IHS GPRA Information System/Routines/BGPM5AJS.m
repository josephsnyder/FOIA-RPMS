BGPM5AJS ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"889,55154960800 ",.01)
 ;;55154960800
 ;;9002226.02101,"889,55154960800 ",.02)
 ;;55154960800
 ;;9002226.02101,"889,55154960900 ",.01)
 ;;55154960900
 ;;9002226.02101,"889,55154960900 ",.02)
 ;;55154960900
 ;;9002226.02101,"889,55154960908 ",.01)
 ;;55154960908
 ;;9002226.02101,"889,55154960908 ",.02)
 ;;55154960908
 ;;9002226.02101,"889,55154961208 ",.01)
 ;;55154961208
 ;;9002226.02101,"889,55154961208 ",.02)
 ;;55154961208
 ;;9002226.02101,"889,55160010601 ",.01)
 ;;55160010601
 ;;9002226.02101,"889,55160010601 ",.02)
 ;;55160010601
 ;;9002226.02101,"889,55160010610 ",.01)
 ;;55160010610
 ;;9002226.02101,"889,55160010610 ",.02)
 ;;55160010610
 ;;9002226.02101,"889,55160010701 ",.01)
 ;;55160010701
 ;;9002226.02101,"889,55160010701 ",.02)
 ;;55160010701
 ;;9002226.02101,"889,55160010710 ",.01)
 ;;55160010710
 ;;9002226.02101,"889,55160010710 ",.02)
 ;;55160010710
 ;;9002226.02101,"889,55160010801 ",.01)
 ;;55160010801
 ;;9002226.02101,"889,55160010801 ",.02)
 ;;55160010801
 ;;9002226.02101,"889,55160010810 ",.01)
 ;;55160010810
 ;;9002226.02101,"889,55160010810 ",.02)
 ;;55160010810
 ;;9002226.02101,"889,55160010901 ",.01)
 ;;55160010901
 ;;9002226.02101,"889,55160010901 ",.02)
 ;;55160010901
 ;;9002226.02101,"889,55160010905 ",.01)
 ;;55160010905
 ;;9002226.02101,"889,55160010905 ",.02)
 ;;55160010905
 ;;9002226.02101,"889,55160010910 ",.01)
 ;;55160010910
 ;;9002226.02101,"889,55160010910 ",.02)
 ;;55160010910
 ;;9002226.02101,"889,55160011801 ",.01)
 ;;55160011801
 ;;9002226.02101,"889,55160011801 ",.02)
 ;;55160011801
 ;;9002226.02101,"889,55160011901 ",.01)
 ;;55160011901
 ;;9002226.02101,"889,55160011901 ",.02)
 ;;55160011901
 ;;9002226.02101,"889,55160011910 ",.01)
 ;;55160011910
 ;;9002226.02101,"889,55160011910 ",.02)
 ;;55160011910
 ;;9002226.02101,"889,55160012001 ",.01)
 ;;55160012001
 ;;9002226.02101,"889,55160012001 ",.02)
 ;;55160012001
 ;;9002226.02101,"889,55160012010 ",.01)
 ;;55160012010
 ;;9002226.02101,"889,55160012010 ",.02)
 ;;55160012010
 ;;9002226.02101,"889,55160013201 ",.01)
 ;;55160013201
 ;;9002226.02101,"889,55160013201 ",.02)
 ;;55160013201
 ;;9002226.02101,"889,55160013301 ",.01)
 ;;55160013301
 ;;9002226.02101,"889,55160013301 ",.02)
 ;;55160013301
 ;;9002226.02101,"889,55289009330 ",.01)
 ;;55289009330
 ;;9002226.02101,"889,55289009330 ",.02)
 ;;55289009330
 ;;9002226.02101,"889,55289009360 ",.01)
 ;;55289009360
 ;;9002226.02101,"889,55289009360 ",.02)
 ;;55289009360
 ;;9002226.02101,"889,55289009390 ",.01)
 ;;55289009390
 ;;9002226.02101,"889,55289009390 ",.02)
 ;;55289009390
 ;;9002226.02101,"889,55289009393 ",.01)
 ;;55289009393
 ;;9002226.02101,"889,55289009393 ",.02)
 ;;55289009393
 ;;9002226.02101,"889,55289009397 ",.01)
 ;;55289009397
 ;;9002226.02101,"889,55289009397 ",.02)
 ;;55289009397
 ;;9002226.02101,"889,55289013197 ",.01)
 ;;55289013197
 ;;9002226.02101,"889,55289013197 ",.02)
 ;;55289013197
 ;;9002226.02101,"889,55289022701 ",.01)
 ;;55289022701
 ;;9002226.02101,"889,55289022701 ",.02)
 ;;55289022701
 ;;9002226.02101,"889,55289022730 ",.01)
 ;;55289022730
 ;;9002226.02101,"889,55289022730 ",.02)
 ;;55289022730
 ;;9002226.02101,"889,55289022790 ",.01)
 ;;55289022790
 ;;9002226.02101,"889,55289022790 ",.02)
 ;;55289022790
 ;;9002226.02101,"889,55289022797 ",.01)
 ;;55289022797
 ;;9002226.02101,"889,55289022797 ",.02)
 ;;55289022797
 ;;9002226.02101,"889,55289022801 ",.01)
 ;;55289022801
 ;;9002226.02101,"889,55289022801 ",.02)
 ;;55289022801
 ;;9002226.02101,"889,55289022803 ",.01)
 ;;55289022803
 ;;9002226.02101,"889,55289022803 ",.02)
 ;;55289022803
 ;;9002226.02101,"889,55289022806 ",.01)
 ;;55289022806
 ;;9002226.02101,"889,55289022806 ",.02)
 ;;55289022806
 ;;9002226.02101,"889,55289022814 ",.01)
 ;;55289022814
 ;;9002226.02101,"889,55289022814 ",.02)
 ;;55289022814
 ;;9002226.02101,"889,55289022830 ",.01)
 ;;55289022830
 ;;9002226.02101,"889,55289022830 ",.02)
 ;;55289022830
 ;;9002226.02101,"889,55289022860 ",.01)
 ;;55289022860
 ;;9002226.02101,"889,55289022860 ",.02)
 ;;55289022860
 ;;9002226.02101,"889,55289022890 ",.01)
 ;;55289022890
 ;;9002226.02101,"889,55289022890 ",.02)
 ;;55289022890
 ;;9002226.02101,"889,55289022897 ",.01)
 ;;55289022897
 ;;9002226.02101,"889,55289022897 ",.02)
 ;;55289022897
 ;;9002226.02101,"889,55289023301 ",.01)
 ;;55289023301
 ;;9002226.02101,"889,55289023301 ",.02)
 ;;55289023301
 ;;9002226.02101,"889,55289023310 ",.01)
 ;;55289023310
 ;;9002226.02101,"889,55289023310 ",.02)
 ;;55289023310
 ;;9002226.02101,"889,55289023312 ",.01)
 ;;55289023312
 ;;9002226.02101,"889,55289023312 ",.02)
 ;;55289023312
 ;;9002226.02101,"889,55289023360 ",.01)
 ;;55289023360
 ;;9002226.02101,"889,55289023360 ",.02)
 ;;55289023360
 ;;9002226.02101,"889,55289023390 ",.01)
 ;;55289023390
 ;;9002226.02101,"889,55289023390 ",.02)
 ;;55289023390
 ;;9002226.02101,"889,55289023397 ",.01)
 ;;55289023397
 ;;9002226.02101,"889,55289023397 ",.02)
 ;;55289023397
 ;;9002226.02101,"889,55289023401 ",.01)
 ;;55289023401
 ;;9002226.02101,"889,55289023401 ",.02)
 ;;55289023401
 ;;9002226.02101,"889,55289023430 ",.01)
 ;;55289023430
 ;;9002226.02101,"889,55289023430 ",.02)
 ;;55289023430
 ;;9002226.02101,"889,55289023460 ",.01)
 ;;55289023460
 ;;9002226.02101,"889,55289023460 ",.02)
 ;;55289023460
 ;;9002226.02101,"889,55289023490 ",.01)
 ;;55289023490
 ;;9002226.02101,"889,55289023490 ",.02)
 ;;55289023490
 ;;9002226.02101,"889,55289025430 ",.01)
 ;;55289025430
 ;;9002226.02101,"889,55289025430 ",.02)
 ;;55289025430
 ;;9002226.02101,"889,55289038230 ",.01)
 ;;55289038230
 ;;9002226.02101,"889,55289038230 ",.02)
 ;;55289038230
 ;;9002226.02101,"889,55289038293 ",.01)
 ;;55289038293
 ;;9002226.02101,"889,55289038293 ",.02)
 ;;55289038293
 ;;9002226.02101,"889,55289041301 ",.01)
 ;;55289041301
 ;;9002226.02101,"889,55289041301 ",.02)
 ;;55289041301
 ;;9002226.02101,"889,55289041314 ",.01)
 ;;55289041314
 ;;9002226.02101,"889,55289041314 ",.02)
 ;;55289041314
 ;;9002226.02101,"889,55289041330 ",.01)
 ;;55289041330
 ;;9002226.02101,"889,55289041330 ",.02)
 ;;55289041330
 ;;9002226.02101,"889,55289041360 ",.01)
 ;;55289041360
 ;;9002226.02101,"889,55289041360 ",.02)
 ;;55289041360
 ;;9002226.02101,"889,55289041390 ",.01)
 ;;55289041390
 ;;9002226.02101,"889,55289041390 ",.02)
 ;;55289041390
 ;;9002226.02101,"889,55289041393 ",.01)
 ;;55289041393
 ;;9002226.02101,"889,55289041393 ",.02)
 ;;55289041393
 ;;9002226.02101,"889,55289041394 ",.01)
 ;;55289041394
 ;;9002226.02101,"889,55289041394 ",.02)
 ;;55289041394
 ;;9002226.02101,"889,55289041397 ",.01)
 ;;55289041397
 ;;9002226.02101,"889,55289041397 ",.02)
 ;;55289041397
 ;;9002226.02101,"889,55289058730 ",.01)
 ;;55289058730
 ;;9002226.02101,"889,55289058730 ",.02)
 ;;55289058730
 ;;9002226.02101,"889,55289062730 ",.01)
 ;;55289062730
 ;;9002226.02101,"889,55289062730 ",.02)
 ;;55289062730
 ;;9002226.02101,"889,55289063030 ",.01)
 ;;55289063030
 ;;9002226.02101,"889,55289063030 ",.02)
 ;;55289063030
 ;;9002226.02101,"889,55289063090 ",.01)
 ;;55289063090
 ;;9002226.02101,"889,55289063090 ",.02)
 ;;55289063090
 ;;9002226.02101,"889,55289065330 ",.01)
 ;;55289065330
 ;;9002226.02101,"889,55289065330 ",.02)
 ;;55289065330
 ;;9002226.02101,"889,55289065390 ",.01)
 ;;55289065390
 ;;9002226.02101,"889,55289065390 ",.02)
 ;;55289065390
 ;;9002226.02101,"889,55289085530 ",.01)
 ;;55289085530
 ;;9002226.02101,"889,55289085530 ",.02)
 ;;55289085530
 ;;9002226.02101,"889,55289090230 ",.01)
 ;;55289090230
 ;;9002226.02101,"889,55289090230 ",.02)
 ;;55289090230
 ;;9002226.02101,"889,55289098630 ",.01)
 ;;55289098630
 ;;9002226.02101,"889,55289098630 ",.02)
 ;;55289098630
 ;;9002226.02101,"889,55289098830 ",.01)
 ;;55289098830
 ;;9002226.02101,"889,55289098830 ",.02)
 ;;55289098830
 ;;9002226.02101,"889,55289099330 ",.01)
 ;;55289099330
 ;;9002226.02101,"889,55289099330 ",.02)
 ;;55289099330
 ;;9002226.02101,"889,55289099360 ",.01)
 ;;55289099360
 ;;9002226.02101,"889,55289099360 ",.02)
 ;;55289099360
 ;;9002226.02101,"889,55289099390 ",.01)
 ;;55289099390
 ;;9002226.02101,"889,55289099390 ",.02)
 ;;55289099390
 ;;9002226.02101,"889,55370012200 ",.01)
 ;;55370012200
 ;;9002226.02101,"889,55370012200 ",.02)
 ;;55370012200
 ;;9002226.02101,"889,55370012400 ",.01)
 ;;55370012400
 ;;9002226.02101,"889,55370012400 ",.02)
 ;;55370012400
 ;;9002226.02101,"889,55370045707 ",.01)
 ;;55370045707
 ;;9002226.02101,"889,55370045707 ",.02)
 ;;55370045707
 ;;9002226.02101,"889,55370045807 ",.01)
 ;;55370045807
 ;;9002226.02101,"889,55370045807 ",.02)
 ;;55370045807
 ;;9002226.02101,"889,55370045907 ",.01)
 ;;55370045907
 ;;9002226.02101,"889,55370045907 ",.02)
 ;;55370045907
 ;;9002226.02101,"889,55370082007 ",.01)
 ;;55370082007
 ;;9002226.02101,"889,55370082007 ",.02)
 ;;55370082007
 ;;9002226.02101,"889,55370082008 ",.01)
 ;;55370082008
 ;;9002226.02101,"889,55370082008 ",.02)
 ;;55370082008
 ;;9002226.02101,"889,55390000310 ",.01)
 ;;55390000310
 ;;9002226.02101,"889,55390000310 ",.02)
 ;;55390000310
 ;;9002226.02101,"889,55390007310 ",.01)
 ;;55390007310
 ;;9002226.02101,"889,55390007310 ",.02)
 ;;55390007310
 ;;9002226.02101,"889,55390013020 ",.01)
 ;;55390013020
 ;;9002226.02101,"889,55390013020 ",.02)
 ;;55390013020
 ;;9002226.02101,"889,55390013040 ",.01)
 ;;55390013040
 ;;9002226.02101,"889,55390013040 ",.02)
 ;;55390013040
 ;;9002226.02101,"889,55390034810 ",.01)
 ;;55390034810
 ;;9002226.02101,"889,55390034810 ",.02)
 ;;55390034810
 ;;9002226.02101,"889,55390037310 ",.01)
 ;;55390037310
 ;;9002226.02101,"889,55390037310 ",.02)
 ;;55390037310
 ;;9002226.02101,"889,55567001500 ",.01)
 ;;55567001500
 ;;9002226.02101,"889,55567001500 ",.02)
 ;;55567001500
 ;;9002226.02101,"889,55567001535 ",.01)
 ;;55567001535
 ;;9002226.02101,"889,55567001535 ",.02)
 ;;55567001535
 ;;9002226.02101,"889,55567001600 ",.01)
 ;;55567001600
 ;;9002226.02101,"889,55567001600 ",.02)
 ;;55567001600
 ;;9002226.02101,"889,55567001635 ",.01)
 ;;55567001635
 ;;9002226.02101,"889,55567001635 ",.02)
 ;;55567001635
 ;;9002226.02101,"889,55567002500 ",.01)
 ;;55567002500
 ;;9002226.02101,"889,55567002500 ",.02)
 ;;55567002500
 ;;9002226.02101,"889,55567002506 ",.01)
 ;;55567002506
 ;;9002226.02101,"889,55567002506 ",.02)
 ;;55567002506
 ;;9002226.02101,"889,55567002518 ",.01)
 ;;55567002518
 ;;9002226.02101,"889,55567002518 ",.02)
 ;;55567002518
 ;;9002226.02101,"889,55567002535 ",.01)
 ;;55567002535
 ;;9002226.02101,"889,55567002535 ",.02)
 ;;55567002535
 ;;9002226.02101,"889,55567002800 ",.01)
 ;;55567002800
 ;;9002226.02101,"889,55567002800 ",.02)
 ;;55567002800
 ;;9002226.02101,"889,55567002815 ",.01)
 ;;55567002815
 ;;9002226.02101,"889,55567002815 ",.02)
 ;;55567002815
 ;;9002226.02101,"889,55567002818 ",.01)
 ;;55567002818
 ;;9002226.02101,"889,55567002818 ",.02)
 ;;55567002818
 ;;9002226.02101,"889,55567002835 ",.01)
 ;;55567002835
 ;;9002226.02101,"889,55567002835 ",.02)
 ;;55567002835
 ;;9002226.02101,"889,55567002900 ",.01)
 ;;55567002900
 ;;9002226.02101,"889,55567002900 ",.02)
 ;;55567002900
 ;;9002226.02101,"889,55567002915 ",.01)
 ;;55567002915
 ;;9002226.02101,"889,55567002915 ",.02)
 ;;55567002915
 ;;9002226.02101,"889,55567002918 ",.01)
 ;;55567002918
 ;;9002226.02101,"889,55567002918 ",.02)
 ;;55567002918
 ;;9002226.02101,"889,55567002935 ",.01)
 ;;55567002935
 ;;9002226.02101,"889,55567002935 ",.02)
 ;;55567002935
 ;;9002226.02101,"889,55887007401 ",.01)
 ;;55887007401
 ;;9002226.02101,"889,55887007401 ",.02)
 ;;55887007401
