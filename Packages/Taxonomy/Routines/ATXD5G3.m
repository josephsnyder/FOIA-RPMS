ATXD5G3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"T71.113A ")
 ;;915
 ;;21,"T71.113D ")
 ;;916
 ;;21,"T71.113S ")
 ;;917
 ;;21,"T71.123A ")
 ;;918
 ;;21,"T71.123D ")
 ;;919
 ;;21,"T71.123S ")
 ;;920
 ;;21,"T71.133A ")
 ;;921
 ;;21,"T71.133D ")
 ;;922
 ;;21,"T71.133S ")
 ;;923
 ;;21,"T71.143A ")
 ;;924
 ;;21,"T71.143D ")
 ;;925
 ;;21,"T71.143S ")
 ;;926
 ;;21,"T71.153A ")
 ;;927
 ;;21,"T71.153D ")
 ;;928
 ;;21,"T71.153S ")
 ;;929
 ;;21,"T71.163A ")
 ;;930
 ;;21,"T71.163D ")
 ;;931
 ;;21,"T71.163S ")
 ;;932
 ;;21,"T71.193A ")
 ;;933
 ;;21,"T71.193D ")
 ;;934
 ;;21,"T71.193S ")
 ;;935
 ;;21,"T71.223A ")
 ;;936
 ;;21,"T71.223D ")
 ;;937
 ;;21,"T71.223S ")
 ;;938
 ;;21,"T71.233A ")
 ;;939
 ;;21,"T71.233D ")
 ;;940
 ;;21,"T71.233S ")
 ;;941
 ;;21,"T76.01XA ")
 ;;942
 ;;21,"T76.01XD ")
 ;;943
 ;;21,"T76.01XS ")
 ;;944
 ;;21,"T76.02XA ")
 ;;945
 ;;21,"T76.02XD ")
 ;;946
 ;;21,"T76.02XS ")
 ;;947
 ;;21,"X92.0XXA ")
 ;;948
 ;;21,"X92.0XXD ")
 ;;949
 ;;21,"X92.0XXS ")
 ;;950
 ;;21,"X92.1XXA ")
 ;;951
 ;;21,"X92.1XXD ")
 ;;952
 ;;21,"X92.1XXS ")
 ;;953
 ;;21,"X92.2XXA ")
 ;;954
 ;;21,"X92.2XXD ")
 ;;955
 ;;21,"X92.2XXS ")
 ;;956
 ;;21,"X92.3XXA ")
 ;;957
 ;;21,"X92.3XXD ")
 ;;958
 ;;21,"X92.3XXS ")
 ;;959
 ;;21,"X92.8XXA ")
 ;;960
 ;;21,"X92.8XXD ")
 ;;961
 ;;21,"X92.8XXS ")
 ;;962
 ;;21,"X92.9XXA ")
 ;;963
 ;;21,"X92.9XXD ")
 ;;964
 ;;21,"X92.9XXS ")
 ;;965
 ;;21,"X93.XXXA ")
 ;;966
 ;;21,"X93.XXXD ")
 ;;967
 ;;21,"X93.XXXS ")
 ;;968
 ;;21,"X94.0XXA ")
 ;;969
 ;;21,"X94.0XXD ")
 ;;970
 ;;21,"X94.0XXS ")
 ;;971
 ;;21,"X94.1XXA ")
 ;;972
 ;;21,"X94.1XXD ")
 ;;973
 ;;21,"X94.1XXS ")
 ;;974
 ;;21,"X94.2XXA ")
 ;;975
 ;;21,"X94.2XXD ")
 ;;976
 ;;21,"X94.2XXS ")
 ;;977
 ;;21,"X94.8XXA ")
 ;;978
 ;;21,"X94.8XXD ")
 ;;979
 ;;21,"X94.8XXS ")
 ;;980
 ;;21,"X94.9XXA ")
 ;;981
 ;;21,"X94.9XXD ")
 ;;982
 ;;21,"X94.9XXS ")
 ;;983
 ;;21,"X95.01XA ")
 ;;984
 ;;21,"X95.01XD ")
 ;;985
 ;;21,"X95.01XS ")
 ;;986
 ;;21,"X95.02XA ")
 ;;987
 ;;21,"X95.02XD ")
 ;;988
 ;;21,"X95.02XS ")
 ;;989
 ;;21,"X95.09XA ")
 ;;990
 ;;21,"X95.09XD ")
 ;;991
 ;;21,"X95.09XS ")
 ;;992
 ;;21,"X95.8XXA ")
 ;;993
 ;;21,"X95.8XXD ")
 ;;994
 ;;21,"X95.8XXS ")
 ;;995
 ;;21,"X95.9XXA ")
 ;;996
 ;;21,"X95.9XXD ")
 ;;997
 ;;21,"X95.9XXS ")
 ;;998
 ;;21,"X96.0XXA ")
 ;;999
 ;;21,"X96.0XXD ")
 ;;1000
 ;;21,"X96.0XXS ")
 ;;1001
 ;;21,"X96.1XXA ")
 ;;1002
 ;;21,"X96.1XXD ")
 ;;1003
 ;;21,"X96.1XXS ")
 ;;1004
 ;;21,"X96.2XXA ")
 ;;1005
 ;;21,"X96.2XXD ")
 ;;1006
 ;;21,"X96.2XXS ")
 ;;1007
 ;;21,"X96.3XXA ")
 ;;1008
 ;;21,"X96.3XXD ")
 ;;1009
 ;;21,"X96.3XXS ")
 ;;1010
 ;;21,"X96.4XXA ")
 ;;1011
 ;;21,"X96.4XXD ")
 ;;1012
 ;;21,"X96.4XXS ")
 ;;1013
 ;;21,"X96.8XXA ")
 ;;1014
 ;;21,"X96.8XXD ")
 ;;1015
 ;;21,"X96.8XXS ")
 ;;1016
 ;;21,"X96.9XXA ")
 ;;1017
 ;;21,"X96.9XXD ")
 ;;1018
 ;;21,"X96.9XXS ")
 ;;1019
 ;;21,"X97.XXXA ")
 ;;1020
 ;;21,"X97.XXXD ")
 ;;1021
 ;;21,"X97.XXXS ")
 ;;1022
 ;;21,"X98.0XXA ")
 ;;1023
 ;;21,"X98.0XXD ")
 ;;1024
 ;;21,"X98.0XXS ")
 ;;1025
 ;;21,"X98.1XXA ")
 ;;1026
 ;;21,"X98.1XXD ")
 ;;1027
 ;;21,"X98.1XXS ")
 ;;1028
 ;;21,"X98.2XXA ")
 ;;1029
 ;;21,"X98.2XXD ")
 ;;1030
 ;;21,"X98.2XXS ")
 ;;1031
 ;;21,"X98.3XXA ")
 ;;1032
 ;;21,"X98.3XXD ")
 ;;1033
 ;;21,"X98.3XXS ")
 ;;1034
 ;;21,"X98.8XXA ")
 ;;1035
 ;;21,"X98.8XXD ")
 ;;1036
 ;;21,"X98.8XXS ")
 ;;1037
 ;;21,"X98.9XXA ")
 ;;1038
 ;;21,"X98.9XXD ")
 ;;1039
 ;;21,"X98.9XXS ")
 ;;1040
 ;;21,"X99.0XXA ")
 ;;1041
 ;;21,"X99.0XXD ")
 ;;1042
 ;;21,"X99.0XXS ")
 ;;1043
 ;;21,"X99.1XXA ")
 ;;1044
 ;;21,"X99.1XXD ")
 ;;1045
 ;;21,"X99.1XXS ")
 ;;1046
 ;;21,"X99.2XXA ")
 ;;1047
 ;;21,"X99.2XXD ")
 ;;1048
 ;;21,"X99.2XXS ")
 ;;1049
 ;;21,"X99.8XXA ")
 ;;1050
 ;;21,"X99.8XXD ")
 ;;1051
 ;;21,"X99.8XXS ")
 ;;1052
 ;;21,"X99.9XXA ")
 ;;1053
 ;;21,"X99.9XXD ")
 ;;1054
 ;;21,"X99.9XXS ")
 ;;1055
 ;;21,"Y00.XXXA ")
 ;;1056
 ;;21,"Y00.XXXD ")
 ;;1057
 ;;21,"Y00.XXXS ")
 ;;1058
 ;;21,"Y01.XXXA ")
 ;;1059
 ;;21,"Y01.XXXD ")
 ;;1060
 ;;21,"Y01.XXXS ")
 ;;1061
 ;;21,"Y02.0XXA ")
 ;;1062
 ;;21,"Y02.0XXD ")
 ;;1063
 ;;21,"Y02.0XXS ")
 ;;1064
 ;;21,"Y02.1XXA ")
 ;;1065
 ;;21,"Y02.1XXD ")
 ;;1066
 ;;21,"Y02.1XXS ")
 ;;1067
 ;;21,"Y02.8XXA ")
 ;;1068
 ;;21,"Y02.8XXD ")
 ;;1069
 ;;21,"Y02.8XXS ")
 ;;1070
 ;;21,"Y03.0XXA ")
 ;;1071
 ;;21,"Y03.0XXD ")
 ;;1072
 ;;21,"Y03.0XXS ")
 ;;1073
 ;;21,"Y03.8XXA ")
 ;;1074
 ;;21,"Y03.8XXD ")
 ;;1075
 ;;21,"Y03.8XXS ")
 ;;1076
 ;;21,"Y04.0XXA ")
 ;;1077
 ;;21,"Y04.0XXD ")
 ;;1078
 ;;21,"Y04.0XXS ")
 ;;1079
 ;;21,"Y04.1XXA ")
 ;;1080
 ;;21,"Y04.1XXD ")
 ;;1081
 ;;21,"Y04.1XXS ")
 ;;1082
 ;;21,"Y04.2XXA ")
 ;;1083
 ;;21,"Y04.2XXD ")
 ;;1084
 ;;21,"Y04.2XXS ")
 ;;1085
 ;;21,"Y04.8XXA ")
 ;;1086
 ;;21,"Y04.8XXD ")
 ;;1087
 ;;21,"Y04.8XXS ")
 ;;1088
 ;;21,"Y08.01XA ")
 ;;1089
 ;;21,"Y08.01XD ")
 ;;1090
 ;;21,"Y08.01XS ")
 ;;1091
 ;;21,"Y08.02XA ")
 ;;1092
 ;;21,"Y08.02XD ")
 ;;1093
 ;;21,"Y08.02XS ")
 ;;1094
 ;;21,"Y08.09XA ")
 ;;1095
 ;;21,"Y08.09XD ")
 ;;1096
 ;;21,"Y08.09XS ")
 ;;1097
 ;;21,"Y08.81XA ")
 ;;1098
 ;;21,"Y08.81XD ")
 ;;1099
 ;;21,"Y08.81XS ")
 ;;1100
 ;;21,"Y08.89XA ")
 ;;1101
 ;;21,"Y08.89XD ")
 ;;1102
 ;;21,"Y08.89XS ")
 ;;1103
 ;;21,"Y09. ")
 ;;1104
 ;;9002226,160,.01)
 ;;APCL INJ ASSAULTS
 ;;9002226,160,.02)
 ;;APCL ASSAULT ECODES
 ;;9002226,160,.04)
 ;;n
 ;;9002226,160,.06)
 ;;@
 ;;9002226,160,.08)
 ;;1
 ;;9002226,160,.09)
 ;;3131112
 ;;9002226,160,.11)
 ;;@
 ;;9002226,160,.12)
 ;;157
 ;;9002226,160,.13)
 ;;1
 ;;9002226,160,.14)
 ;;BA
 ;;9002226,160,.15)
 ;;80
 ;;9002226,160,.16)
 ;;1
 ;;9002226,160,.17)
 ;;@
 ;;9002226,160,3101)
 ;;@
 ;;9002226.02101,"160,E960.0 ",.01)
 ;;E960.0
 ;;9002226.02101,"160,E960.0 ",.02)
 ;;E966.
 ;;9002226.02101,"160,E960.0 ",.03)
 ;;1
 ;;9002226.02101,"160,E968.0 ",.01)
 ;;E968.0
 ;;9002226.02101,"160,E968.0 ",.02)
 ;;E968.9
 ;;9002226.02101,"160,E968.0 ",.03)
 ;;1
 ;;9002226.02101,"160,T36.0X3A ",.01)
 ;;T36.0X3A 
 ;;9002226.02101,"160,T36.0X3A ",.02)
 ;;T36.0X3A 
 ;;9002226.02101,"160,T36.0X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T36.0X3D ",.01)
 ;;T36.0X3D 
 ;;9002226.02101,"160,T36.0X3D ",.02)
 ;;T36.0X3D 
 ;;9002226.02101,"160,T36.0X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T36.0X3S ",.01)
 ;;T36.0X3S 
 ;;9002226.02101,"160,T36.0X3S ",.02)
 ;;T36.0X3S 
 ;;9002226.02101,"160,T36.0X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T36.1X3A ",.01)
 ;;T36.1X3A 
 ;;9002226.02101,"160,T36.1X3A ",.02)
 ;;T36.1X3A 
 ;;9002226.02101,"160,T36.1X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T36.1X3D ",.01)
 ;;T36.1X3D 
 ;;9002226.02101,"160,T36.1X3D ",.02)
 ;;T36.1X3D 
 ;;9002226.02101,"160,T36.1X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T36.1X3S ",.01)
 ;;T36.1X3S 
 ;;9002226.02101,"160,T36.1X3S ",.02)
 ;;T36.1X3S 
 ;;9002226.02101,"160,T36.1X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T36.2X3A ",.01)
 ;;T36.2X3A 
 ;;9002226.02101,"160,T36.2X3A ",.02)
 ;;T36.2X3A 
 ;;9002226.02101,"160,T36.2X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T36.2X3D ",.01)
 ;;T36.2X3D 
 ;;9002226.02101,"160,T36.2X3D ",.02)
 ;;T36.2X3D 
 ;;9002226.02101,"160,T36.2X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T36.2X3S ",.01)
 ;;T36.2X3S 
 ;;9002226.02101,"160,T36.2X3S ",.02)
 ;;T36.2X3S 
 ;;9002226.02101,"160,T36.2X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T36.3X3A ",.01)
 ;;T36.3X3A 
 ;;9002226.02101,"160,T36.3X3A ",.02)
 ;;T36.3X3A 
 ;;9002226.02101,"160,T36.3X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T36.3X3D ",.01)
 ;;T36.3X3D 
 ;;9002226.02101,"160,T36.3X3D ",.02)
 ;;T36.3X3D 
 ;;9002226.02101,"160,T36.3X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T36.3X3S ",.01)
 ;;T36.3X3S 
 ;;9002226.02101,"160,T36.3X3S ",.02)
 ;;T36.3X3S 
 ;;9002226.02101,"160,T36.3X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T36.4X3A ",.01)
 ;;T36.4X3A 
 ;;9002226.02101,"160,T36.4X3A ",.02)
 ;;T36.4X3A 
 ;;9002226.02101,"160,T36.4X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T36.4X3D ",.01)
 ;;T36.4X3D 
 ;;9002226.02101,"160,T36.4X3D ",.02)
 ;;T36.4X3D 
 ;;9002226.02101,"160,T36.4X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T36.4X3S ",.01)
 ;;T36.4X3S 
 ;;9002226.02101,"160,T36.4X3S ",.02)
 ;;T36.4X3S 
 ;;9002226.02101,"160,T36.4X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T36.5X3A ",.01)
 ;;T36.5X3A 
 ;;9002226.02101,"160,T36.5X3A ",.02)
 ;;T36.5X3A 
 ;;9002226.02101,"160,T36.5X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T36.5X3D ",.01)
 ;;T36.5X3D 
 ;;9002226.02101,"160,T36.5X3D ",.02)
 ;;T36.5X3D 
 ;;9002226.02101,"160,T36.5X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T36.5X3S ",.01)
 ;;T36.5X3S 
 ;;9002226.02101,"160,T36.5X3S ",.02)
 ;;T36.5X3S 
 ;;9002226.02101,"160,T36.5X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T36.6X3A ",.01)
 ;;T36.6X3A 
 ;;9002226.02101,"160,T36.6X3A ",.02)
 ;;T36.6X3A 
 ;;9002226.02101,"160,T36.6X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T36.6X3D ",.01)
 ;;T36.6X3D 
 ;;9002226.02101,"160,T36.6X3D ",.02)
 ;;T36.6X3D 
 ;;9002226.02101,"160,T36.6X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T36.6X3S ",.01)
 ;;T36.6X3S 
 ;;9002226.02101,"160,T36.6X3S ",.02)
 ;;T36.6X3S 
 ;;9002226.02101,"160,T36.6X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T36.7X3A ",.01)
 ;;T36.7X3A 
 ;;9002226.02101,"160,T36.7X3A ",.02)
 ;;T36.7X3A 
 ;;9002226.02101,"160,T36.7X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T36.7X3D ",.01)
 ;;T36.7X3D 
 ;;9002226.02101,"160,T36.7X3D ",.02)
 ;;T36.7X3D 
 ;;9002226.02101,"160,T36.7X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T36.7X3S ",.01)
 ;;T36.7X3S 
 ;;9002226.02101,"160,T36.7X3S ",.02)
 ;;T36.7X3S 
 ;;9002226.02101,"160,T36.7X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T36.8X3A ",.01)
 ;;T36.8X3A 
 ;;9002226.02101,"160,T36.8X3A ",.02)
 ;;T36.8X3A 
 ;;9002226.02101,"160,T36.8X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T36.8X3D ",.01)
 ;;T36.8X3D 
 ;;9002226.02101,"160,T36.8X3D ",.02)
 ;;T36.8X3D 
 ;;9002226.02101,"160,T36.8X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T36.8X3S ",.01)
 ;;T36.8X3S 
 ;;9002226.02101,"160,T36.8X3S ",.02)
 ;;T36.8X3S 
 ;;9002226.02101,"160,T36.8X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T36.93XA ",.01)
 ;;T36.93XA 
 ;;9002226.02101,"160,T36.93XA ",.02)
 ;;T36.93XA 
 ;;9002226.02101,"160,T36.93XA ",.03)
 ;;30
 ;;9002226.02101,"160,T36.93XD ",.01)
 ;;T36.93XD 
 ;;9002226.02101,"160,T36.93XD ",.02)
 ;;T36.93XD 
 ;;9002226.02101,"160,T36.93XD ",.03)
 ;;30
 ;;9002226.02101,"160,T36.93XS ",.01)
 ;;T36.93XS 
 ;;9002226.02101,"160,T36.93XS ",.02)
 ;;T36.93XS 
 ;;9002226.02101,"160,T36.93XS ",.03)
 ;;30
 ;;9002226.02101,"160,T37.0X3A ",.01)
 ;;T37.0X3A 
 ;;9002226.02101,"160,T37.0X3A ",.02)
 ;;T37.0X3A 
 ;;9002226.02101,"160,T37.0X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T37.0X3D ",.01)
 ;;T37.0X3D 
 ;;9002226.02101,"160,T37.0X3D ",.02)
 ;;T37.0X3D 
 ;;9002226.02101,"160,T37.0X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T37.0X3S ",.01)
 ;;T37.0X3S 
 ;;9002226.02101,"160,T37.0X3S ",.02)
 ;;T37.0X3S 
 ;;9002226.02101,"160,T37.0X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T37.1X3A ",.01)
 ;;T37.1X3A 
 ;;9002226.02101,"160,T37.1X3A ",.02)
 ;;T37.1X3A 
 ;;9002226.02101,"160,T37.1X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T37.1X3D ",.01)
 ;;T37.1X3D 
 ;;9002226.02101,"160,T37.1X3D ",.02)
 ;;T37.1X3D 
 ;;9002226.02101,"160,T37.1X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T37.1X3S ",.01)
 ;;T37.1X3S 
 ;;9002226.02101,"160,T37.1X3S ",.02)
 ;;T37.1X3S 
 ;;9002226.02101,"160,T37.1X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T37.2X3A ",.01)
 ;;T37.2X3A 
 ;;9002226.02101,"160,T37.2X3A ",.02)
 ;;T37.2X3A 
 ;;9002226.02101,"160,T37.2X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T37.2X3D ",.01)
 ;;T37.2X3D 
 ;;9002226.02101,"160,T37.2X3D ",.02)
 ;;T37.2X3D 
 ;;9002226.02101,"160,T37.2X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T37.2X3S ",.01)
 ;;T37.2X3S 
 ;;9002226.02101,"160,T37.2X3S ",.02)
 ;;T37.2X3S 
 ;;9002226.02101,"160,T37.2X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T37.3X3A ",.01)
 ;;T37.3X3A 
 ;;9002226.02101,"160,T37.3X3A ",.02)
 ;;T37.3X3A 
 ;;9002226.02101,"160,T37.3X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T37.3X3D ",.01)
 ;;T37.3X3D 
 ;;9002226.02101,"160,T37.3X3D ",.02)
 ;;T37.3X3D 
 ;;9002226.02101,"160,T37.3X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T37.3X3S ",.01)
 ;;T37.3X3S 
 ;;9002226.02101,"160,T37.3X3S ",.02)
 ;;T37.3X3S 
 ;;9002226.02101,"160,T37.3X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T37.4X3A ",.01)
 ;;T37.4X3A 
 ;;9002226.02101,"160,T37.4X3A ",.02)
 ;;T37.4X3A 
 ;;9002226.02101,"160,T37.4X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T37.4X3D ",.01)
 ;;T37.4X3D 
 ;;9002226.02101,"160,T37.4X3D ",.02)
 ;;T37.4X3D 
 ;;9002226.02101,"160,T37.4X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T37.4X3S ",.01)
 ;;T37.4X3S 
 ;;9002226.02101,"160,T37.4X3S ",.02)
 ;;T37.4X3S 
 ;;9002226.02101,"160,T37.4X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T37.5X3A ",.01)
 ;;T37.5X3A 
 ;;9002226.02101,"160,T37.5X3A ",.02)
 ;;T37.5X3A 
 ;;9002226.02101,"160,T37.5X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T37.5X3D ",.01)
 ;;T37.5X3D 
 ;;9002226.02101,"160,T37.5X3D ",.02)
 ;;T37.5X3D 
 ;;9002226.02101,"160,T37.5X3D ",.03)
 ;;30
