BGPM5BDB ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON SEP 12, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1044,58016050890 ",.01)
 ;;58016050890
 ;;9002226.02101,"1044,58016050890 ",.02)
 ;;58016050890
 ;;9002226.02101,"1044,58016050891 ",.01)
 ;;58016050891
 ;;9002226.02101,"1044,58016050891 ",.02)
 ;;58016050891
 ;;9002226.02101,"1044,58016050892 ",.01)
 ;;58016050892
 ;;9002226.02101,"1044,58016050892 ",.02)
 ;;58016050892
 ;;9002226.02101,"1044,58016050893 ",.01)
 ;;58016050893
 ;;9002226.02101,"1044,58016050893 ",.02)
 ;;58016050893
 ;;9002226.02101,"1044,58016050896 ",.01)
 ;;58016050896
 ;;9002226.02101,"1044,58016050896 ",.02)
 ;;58016050896
 ;;9002226.02101,"1044,58016050897 ",.01)
 ;;58016050897
 ;;9002226.02101,"1044,58016050897 ",.02)
 ;;58016050897
 ;;9002226.02101,"1044,58016050898 ",.01)
 ;;58016050898
 ;;9002226.02101,"1044,58016050898 ",.02)
 ;;58016050898
 ;;9002226.02101,"1044,58016050899 ",.01)
 ;;58016050899
 ;;9002226.02101,"1044,58016050899 ",.02)
 ;;58016050899
 ;;9002226.02101,"1044,58016051900 ",.01)
 ;;58016051900
 ;;9002226.02101,"1044,58016051900 ",.02)
 ;;58016051900
 ;;9002226.02101,"1044,58016051901 ",.01)
 ;;58016051901
 ;;9002226.02101,"1044,58016051901 ",.02)
 ;;58016051901
 ;;9002226.02101,"1044,58016051902 ",.01)
 ;;58016051902
 ;;9002226.02101,"1044,58016051902 ",.02)
 ;;58016051902
 ;;9002226.02101,"1044,58016051903 ",.01)
 ;;58016051903
 ;;9002226.02101,"1044,58016051903 ",.02)
 ;;58016051903
 ;;9002226.02101,"1044,58016051904 ",.01)
 ;;58016051904
 ;;9002226.02101,"1044,58016051904 ",.02)
 ;;58016051904
 ;;9002226.02101,"1044,58016051905 ",.01)
 ;;58016051905
 ;;9002226.02101,"1044,58016051905 ",.02)
 ;;58016051905
 ;;9002226.02101,"1044,58016051906 ",.01)
 ;;58016051906
 ;;9002226.02101,"1044,58016051906 ",.02)
 ;;58016051906
 ;;9002226.02101,"1044,58016051907 ",.01)
 ;;58016051907
 ;;9002226.02101,"1044,58016051907 ",.02)
 ;;58016051907
 ;;9002226.02101,"1044,58016051908 ",.01)
 ;;58016051908
 ;;9002226.02101,"1044,58016051908 ",.02)
 ;;58016051908
 ;;9002226.02101,"1044,58016051909 ",.01)
 ;;58016051909
 ;;9002226.02101,"1044,58016051909 ",.02)
 ;;58016051909
 ;;9002226.02101,"1044,58016051910 ",.01)
 ;;58016051910
 ;;9002226.02101,"1044,58016051910 ",.02)
 ;;58016051910
 ;;9002226.02101,"1044,58016051912 ",.01)
 ;;58016051912
 ;;9002226.02101,"1044,58016051912 ",.02)
 ;;58016051912
 ;;9002226.02101,"1044,58016051914 ",.01)
 ;;58016051914
 ;;9002226.02101,"1044,58016051914 ",.02)
 ;;58016051914
 ;;9002226.02101,"1044,58016051915 ",.01)
 ;;58016051915
 ;;9002226.02101,"1044,58016051915 ",.02)
 ;;58016051915
 ;;9002226.02101,"1044,58016051916 ",.01)
 ;;58016051916
 ;;9002226.02101,"1044,58016051916 ",.02)
 ;;58016051916
 ;;9002226.02101,"1044,58016051918 ",.01)
 ;;58016051918
 ;;9002226.02101,"1044,58016051918 ",.02)
 ;;58016051918
 ;;9002226.02101,"1044,58016051920 ",.01)
 ;;58016051920
 ;;9002226.02101,"1044,58016051920 ",.02)
 ;;58016051920
 ;;9002226.02101,"1044,58016051921 ",.01)
 ;;58016051921
 ;;9002226.02101,"1044,58016051921 ",.02)
 ;;58016051921
 ;;9002226.02101,"1044,58016051924 ",.01)
 ;;58016051924
 ;;9002226.02101,"1044,58016051924 ",.02)
 ;;58016051924
 ;;9002226.02101,"1044,58016051925 ",.01)
 ;;58016051925
 ;;9002226.02101,"1044,58016051925 ",.02)
 ;;58016051925
 ;;9002226.02101,"1044,58016051926 ",.01)
 ;;58016051926
 ;;9002226.02101,"1044,58016051926 ",.02)
 ;;58016051926
 ;;9002226.02101,"1044,58016051927 ",.01)
 ;;58016051927
 ;;9002226.02101,"1044,58016051927 ",.02)
 ;;58016051927
 ;;9002226.02101,"1044,58016051928 ",.01)
 ;;58016051928
 ;;9002226.02101,"1044,58016051928 ",.02)
 ;;58016051928
 ;;9002226.02101,"1044,58016051930 ",.01)
 ;;58016051930
 ;;9002226.02101,"1044,58016051930 ",.02)
 ;;58016051930
 ;;9002226.02101,"1044,58016051932 ",.01)
 ;;58016051932
 ;;9002226.02101,"1044,58016051932 ",.02)
 ;;58016051932
 ;;9002226.02101,"1044,58016051935 ",.01)
 ;;58016051935
 ;;9002226.02101,"1044,58016051935 ",.02)
 ;;58016051935
 ;;9002226.02101,"1044,58016051936 ",.01)
 ;;58016051936
 ;;9002226.02101,"1044,58016051936 ",.02)
 ;;58016051936
 ;;9002226.02101,"1044,58016051940 ",.01)
 ;;58016051940
 ;;9002226.02101,"1044,58016051940 ",.02)
 ;;58016051940
 ;;9002226.02101,"1044,58016051942 ",.01)
 ;;58016051942
 ;;9002226.02101,"1044,58016051942 ",.02)
 ;;58016051942
 ;;9002226.02101,"1044,58016051944 ",.01)
 ;;58016051944
 ;;9002226.02101,"1044,58016051944 ",.02)
 ;;58016051944
 ;;9002226.02101,"1044,58016051945 ",.01)
 ;;58016051945
 ;;9002226.02101,"1044,58016051945 ",.02)
 ;;58016051945
 ;;9002226.02101,"1044,58016051948 ",.01)
 ;;58016051948
 ;;9002226.02101,"1044,58016051948 ",.02)
 ;;58016051948
 ;;9002226.02101,"1044,58016051950 ",.01)
 ;;58016051950
 ;;9002226.02101,"1044,58016051950 ",.02)
 ;;58016051950
 ;;9002226.02101,"1044,58016051956 ",.01)
 ;;58016051956
 ;;9002226.02101,"1044,58016051956 ",.02)
 ;;58016051956
 ;;9002226.02101,"1044,58016051960 ",.01)
 ;;58016051960
 ;;9002226.02101,"1044,58016051960 ",.02)
 ;;58016051960
 ;;9002226.02101,"1044,58016051967 ",.01)
 ;;58016051967
 ;;9002226.02101,"1044,58016051967 ",.02)
 ;;58016051967
 ;;9002226.02101,"1044,58016051969 ",.01)
 ;;58016051969
 ;;9002226.02101,"1044,58016051969 ",.02)
 ;;58016051969
 ;;9002226.02101,"1044,58016051970 ",.01)
 ;;58016051970
 ;;9002226.02101,"1044,58016051970 ",.02)
 ;;58016051970
 ;;9002226.02101,"1044,58016051971 ",.01)
 ;;58016051971
 ;;9002226.02101,"1044,58016051971 ",.02)
 ;;58016051971
 ;;9002226.02101,"1044,58016051972 ",.01)
 ;;58016051972
 ;;9002226.02101,"1044,58016051972 ",.02)
 ;;58016051972
 ;;9002226.02101,"1044,58016051973 ",.01)
 ;;58016051973
 ;;9002226.02101,"1044,58016051973 ",.02)
 ;;58016051973
 ;;9002226.02101,"1044,58016051975 ",.01)
 ;;58016051975
 ;;9002226.02101,"1044,58016051975 ",.02)
 ;;58016051975
 ;;9002226.02101,"1044,58016051976 ",.01)
 ;;58016051976
 ;;9002226.02101,"1044,58016051976 ",.02)
 ;;58016051976
 ;;9002226.02101,"1044,58016051977 ",.01)
 ;;58016051977
 ;;9002226.02101,"1044,58016051977 ",.02)
 ;;58016051977
 ;;9002226.02101,"1044,58016051979 ",.01)
 ;;58016051979
 ;;9002226.02101,"1044,58016051979 ",.02)
 ;;58016051979
 ;;9002226.02101,"1044,58016051980 ",.01)
 ;;58016051980
 ;;9002226.02101,"1044,58016051980 ",.02)
 ;;58016051980
 ;;9002226.02101,"1044,58016051981 ",.01)
 ;;58016051981
 ;;9002226.02101,"1044,58016051981 ",.02)
 ;;58016051981
 ;;9002226.02101,"1044,58016051982 ",.01)
 ;;58016051982
 ;;9002226.02101,"1044,58016051982 ",.02)
 ;;58016051982
 ;;9002226.02101,"1044,58016051983 ",.01)
 ;;58016051983
 ;;9002226.02101,"1044,58016051983 ",.02)
 ;;58016051983
 ;;9002226.02101,"1044,58016051984 ",.01)
 ;;58016051984
 ;;9002226.02101,"1044,58016051984 ",.02)
 ;;58016051984
 ;;9002226.02101,"1044,58016051987 ",.01)
 ;;58016051987
 ;;9002226.02101,"1044,58016051987 ",.02)
 ;;58016051987
 ;;9002226.02101,"1044,58016051989 ",.01)
 ;;58016051989
 ;;9002226.02101,"1044,58016051989 ",.02)
 ;;58016051989
 ;;9002226.02101,"1044,58016051990 ",.01)
 ;;58016051990
 ;;9002226.02101,"1044,58016051990 ",.02)
 ;;58016051990
 ;;9002226.02101,"1044,58016051991 ",.01)
 ;;58016051991
 ;;9002226.02101,"1044,58016051991 ",.02)
 ;;58016051991
 ;;9002226.02101,"1044,58016051992 ",.01)
 ;;58016051992
 ;;9002226.02101,"1044,58016051992 ",.02)
 ;;58016051992
 ;;9002226.02101,"1044,58016051993 ",.01)
 ;;58016051993
 ;;9002226.02101,"1044,58016051993 ",.02)
 ;;58016051993
 ;;9002226.02101,"1044,58016051996 ",.01)
 ;;58016051996
 ;;9002226.02101,"1044,58016051996 ",.02)
 ;;58016051996
 ;;9002226.02101,"1044,58016051997 ",.01)
 ;;58016051997
 ;;9002226.02101,"1044,58016051997 ",.02)
 ;;58016051997
 ;;9002226.02101,"1044,58016051998 ",.01)
 ;;58016051998
 ;;9002226.02101,"1044,58016051998 ",.02)
 ;;58016051998
 ;;9002226.02101,"1044,58016051999 ",.01)
 ;;58016051999
 ;;9002226.02101,"1044,58016051999 ",.02)
 ;;58016051999
 ;;9002226.02101,"1044,58016056700 ",.01)
 ;;58016056700
 ;;9002226.02101,"1044,58016056700 ",.02)
 ;;58016056700
 ;;9002226.02101,"1044,58016056701 ",.01)
 ;;58016056701
 ;;9002226.02101,"1044,58016056701 ",.02)
 ;;58016056701
 ;;9002226.02101,"1044,58016056702 ",.01)
 ;;58016056702
 ;;9002226.02101,"1044,58016056702 ",.02)
 ;;58016056702
 ;;9002226.02101,"1044,58016056703 ",.01)
 ;;58016056703
 ;;9002226.02101,"1044,58016056703 ",.02)
 ;;58016056703
 ;;9002226.02101,"1044,58016056704 ",.01)
 ;;58016056704
 ;;9002226.02101,"1044,58016056704 ",.02)
 ;;58016056704
 ;;9002226.02101,"1044,58016056705 ",.01)
 ;;58016056705
 ;;9002226.02101,"1044,58016056705 ",.02)
 ;;58016056705
 ;;9002226.02101,"1044,58016056706 ",.01)
 ;;58016056706
 ;;9002226.02101,"1044,58016056706 ",.02)
 ;;58016056706
 ;;9002226.02101,"1044,58016056707 ",.01)
 ;;58016056707
 ;;9002226.02101,"1044,58016056707 ",.02)
 ;;58016056707
 ;;9002226.02101,"1044,58016056708 ",.01)
 ;;58016056708
 ;;9002226.02101,"1044,58016056708 ",.02)
 ;;58016056708
 ;;9002226.02101,"1044,58016056709 ",.01)
 ;;58016056709
 ;;9002226.02101,"1044,58016056709 ",.02)
 ;;58016056709
 ;;9002226.02101,"1044,58016056710 ",.01)
 ;;58016056710
 ;;9002226.02101,"1044,58016056710 ",.02)
 ;;58016056710
 ;;9002226.02101,"1044,58016056712 ",.01)
 ;;58016056712
 ;;9002226.02101,"1044,58016056712 ",.02)
 ;;58016056712
 ;;9002226.02101,"1044,58016056714 ",.01)
 ;;58016056714
 ;;9002226.02101,"1044,58016056714 ",.02)
 ;;58016056714
 ;;9002226.02101,"1044,58016056715 ",.01)
 ;;58016056715
 ;;9002226.02101,"1044,58016056715 ",.02)
 ;;58016056715
 ;;9002226.02101,"1044,58016056716 ",.01)
 ;;58016056716
 ;;9002226.02101,"1044,58016056716 ",.02)
 ;;58016056716
 ;;9002226.02101,"1044,58016056718 ",.01)
 ;;58016056718
 ;;9002226.02101,"1044,58016056718 ",.02)
 ;;58016056718
 ;;9002226.02101,"1044,58016056720 ",.01)
 ;;58016056720
 ;;9002226.02101,"1044,58016056720 ",.02)
 ;;58016056720
 ;;9002226.02101,"1044,58016056721 ",.01)
 ;;58016056721
 ;;9002226.02101,"1044,58016056721 ",.02)
 ;;58016056721
 ;;9002226.02101,"1044,58016056724 ",.01)
 ;;58016056724
 ;;9002226.02101,"1044,58016056724 ",.02)
 ;;58016056724
 ;;9002226.02101,"1044,58016056725 ",.01)
 ;;58016056725
 ;;9002226.02101,"1044,58016056725 ",.02)
 ;;58016056725
 ;;9002226.02101,"1044,58016056726 ",.01)
 ;;58016056726
 ;;9002226.02101,"1044,58016056726 ",.02)
 ;;58016056726
 ;;9002226.02101,"1044,58016056727 ",.01)
 ;;58016056727
 ;;9002226.02101,"1044,58016056727 ",.02)
 ;;58016056727
 ;;9002226.02101,"1044,58016056728 ",.01)
 ;;58016056728
 ;;9002226.02101,"1044,58016056728 ",.02)
 ;;58016056728
 ;;9002226.02101,"1044,58016056730 ",.01)
 ;;58016056730
 ;;9002226.02101,"1044,58016056730 ",.02)
 ;;58016056730
 ;;9002226.02101,"1044,58016056732 ",.01)
 ;;58016056732
 ;;9002226.02101,"1044,58016056732 ",.02)
 ;;58016056732
 ;;9002226.02101,"1044,58016056735 ",.01)
 ;;58016056735
 ;;9002226.02101,"1044,58016056735 ",.02)
 ;;58016056735
 ;;9002226.02101,"1044,58016056736 ",.01)
 ;;58016056736
 ;;9002226.02101,"1044,58016056736 ",.02)
 ;;58016056736
 ;;9002226.02101,"1044,58016056740 ",.01)
 ;;58016056740
 ;;9002226.02101,"1044,58016056740 ",.02)
 ;;58016056740
 ;;9002226.02101,"1044,58016056742 ",.01)
 ;;58016056742
 ;;9002226.02101,"1044,58016056742 ",.02)
 ;;58016056742
 ;;9002226.02101,"1044,58016056744 ",.01)
 ;;58016056744
 ;;9002226.02101,"1044,58016056744 ",.02)
 ;;58016056744
 ;;9002226.02101,"1044,58016056745 ",.01)
 ;;58016056745
 ;;9002226.02101,"1044,58016056745 ",.02)
 ;;58016056745
 ;;9002226.02101,"1044,58016056748 ",.01)
 ;;58016056748
 ;;9002226.02101,"1044,58016056748 ",.02)
 ;;58016056748
 ;;9002226.02101,"1044,58016056750 ",.01)
 ;;58016056750
