BGP06D3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"33358-0110-30 ")
 ;;790
 ;;21,"33358-0111-20 ")
 ;;791
 ;;21,"33358-0111-30 ")
 ;;792
 ;;21,"33358-0179-30 ")
 ;;793
 ;;21,"33358-0180-01 ")
 ;;794
 ;;21,"33358-0181-20 ")
 ;;795
 ;;21,"33358-0181-30 ")
 ;;796
 ;;21,"33358-0182-20 ")
 ;;797
 ;;21,"33358-0182-30 ")
 ;;798
 ;;21,"33358-0302-08 ")
 ;;799
 ;;21,"33358-0302-10 ")
 ;;800
 ;;21,"33358-0302-30 ")
 ;;801
 ;;21,"33358-0302-60 ")
 ;;802
 ;;21,"35356-0123-60 ")
 ;;803
 ;;21,"37205-0060-71 ")
 ;;804
 ;;21,"37205-0565-26 ")
 ;;805
 ;;21,"37937-0091-44 ")
 ;;806
 ;;21,"37937-0564-07 ")
 ;;807
 ;;21,"41157-0006-11 ")
 ;;808
 ;;21,"41167-0001-40 ")
 ;;809
 ;;21,"41167-0006-10 ")
 ;;810
 ;;21,"41167-0006-13 ")
 ;;811
 ;;21,"43063-0049-02 ")
 ;;812
 ;;21,"43063-0049-06 ")
 ;;813
 ;;21,"43063-0095-06 ")
 ;;814
 ;;21,"43063-0179-06 ")
 ;;815
 ;;21,"43292-0556-31 ")
 ;;816
 ;;21,"43292-0557-65 ")
 ;;817
 ;;21,"45800-0235-30 ")
 ;;818
 ;;21,"45985-0652-16 ")
 ;;819
 ;;21,"47682-0182-32 ")
 ;;820
 ;;21,"47682-0182-47 ")
 ;;821
 ;;21,"47682-0182-64 ")
 ;;822
 ;;21,"47682-0847-87 ")
 ;;823
 ;;21,"47682-0858-87 ")
 ;;824
 ;;21,"49348-0044-04 ")
 ;;825
 ;;21,"49348-0044-10 ")
 ;;826
 ;;21,"49348-0044-44 ")
 ;;827
 ;;21,"49348-0045-34 ")
 ;;828
 ;;21,"49348-0072-09 ")
 ;;829
 ;;21,"49348-0073-09 ")
 ;;830
 ;;21,"49348-0074-03 ")
 ;;831
 ;;21,"49348-0074-06 ")
 ;;832
 ;;21,"49348-0205-37 ")
 ;;833
 ;;21,"49348-0206-04 ")
 ;;834
 ;;21,"49348-0282-08 ")
 ;;835
 ;;21,"49348-0292-09 ")
 ;;836
 ;;21,"49348-0348-54 ")
 ;;837
 ;;21,"49348-0349-09 ")
 ;;838
 ;;21,"49348-0349-10 ")
 ;;839
 ;;21,"49348-0349-54 ")
 ;;840
 ;;21,"49348-0375-08 ")
 ;;841
 ;;21,"49348-0375-10 ")
 ;;842
 ;;21,"49348-0471-04 ")
 ;;843
 ;;21,"49348-0564-04 ")
 ;;844
 ;;21,"49348-0564-07 ")
 ;;845
 ;;21,"49348-0611-09 ")
 ;;846
 ;;21,"49348-0779-04 ")
 ;;847
 ;;21,"49884-0043-01 ")
 ;;848
 ;;21,"49884-0043-10 ")
 ;;849
 ;;21,"49999-0003-00 ")
 ;;850
 ;;21,"49999-0003-06 ")
 ;;851
 ;;21,"49999-0003-15 ")
 ;;852
 ;;21,"49999-0003-20 ")
 ;;853
 ;;21,"49999-0003-21 ")
 ;;854
 ;;21,"49999-0003-24 ")
 ;;855
 ;;21,"49999-0003-30 ")
 ;;856
 ;;21,"49999-0003-40 ")
 ;;857
 ;;21,"49999-0003-60 ")
 ;;858
 ;;21,"49999-0024-00 ")
 ;;859
 ;;21,"49999-0024-12 ")
 ;;860
 ;;21,"49999-0024-24 ")
 ;;861
 ;;21,"49999-0024-30 ")
 ;;862
 ;;21,"49999-0024-60 ")
 ;;863
 ;;21,"49999-0035-24 ")
 ;;864
 ;;21,"49999-0035-30 ")
 ;;865
 ;;21,"49999-0035-60 ")
 ;;866
 ;;21,"49999-0036-12 ")
 ;;867
 ;;21,"49999-0036-60 ")
 ;;868
 ;;21,"49999-0090-05 ")
 ;;869
 ;;21,"49999-0090-10 ")
 ;;870
 ;;21,"49999-0090-12 ")
 ;;871
 ;;21,"49999-0090-15 ")
 ;;872
 ;;21,"49999-0090-20 ")
 ;;873
 ;;21,"49999-0090-30 ")
 ;;874
 ;;21,"49999-0090-60 ")
 ;;875
 ;;21,"49999-0091-04 ")
 ;;876
 ;;21,"49999-0091-15 ")
 ;;877
 ;;21,"49999-0091-20 ")
 ;;878
 ;;21,"49999-0091-30 ")
 ;;879
 ;;21,"49999-0091-60 ")
 ;;880
 ;;21,"49999-0152-04 ")
 ;;881
 ;;21,"49999-0247-04 ")
 ;;882
 ;;21,"49999-0262-04 ")
 ;;883
 ;;21,"49999-0269-06 ")
 ;;884
 ;;21,"49999-0314-04 ")
 ;;885
 ;;21,"49999-0326-04 ")
 ;;886
 ;;21,"49999-0493-18 ")
 ;;887
 ;;21,"49999-0594-05 ")
 ;;888
 ;;21,"49999-0594-30 ")
 ;;889
 ;;21,"49999-0594-90 ")
 ;;890
 ;;21,"49999-0657-04 ")
 ;;891
 ;;21,"49999-0902-20 ")
 ;;892
 ;;21,"50111-0307-01 ")
 ;;893
 ;;21,"50111-0307-02 ")
 ;;894
 ;;21,"50111-0307-03 ")
 ;;895
 ;;21,"50111-0308-01 ")
 ;;896
 ;;21,"50111-0308-02 ")
 ;;897
 ;;21,"50111-0308-03 ")
 ;;898
 ;;21,"50111-0309-01 ")
 ;;899
 ;;21,"50111-0309-02 ")
 ;;900
 ;;21,"50111-0309-03 ")
 ;;901
 ;;21,"50111-0314-01 ")
 ;;902
 ;;21,"50111-0314-03 ")
 ;;903
 ;;21,"50383-0578-04 ")
 ;;904
 ;;21,"50383-0578-16 ")
 ;;905
 ;;21,"50383-0579-04 ")
 ;;906
 ;;21,"50383-0579-08 ")
 ;;907
 ;;21,"50383-0579-16 ")
 ;;908
 ;;21,"50383-0579-28 ")
 ;;909
 ;;21,"50383-0581-04 ")
 ;;910
 ;;21,"50383-0581-16 ")
 ;;911
 ;;21,"50383-0796-16 ")
 ;;912
 ;;21,"50383-0801-16 ")
 ;;913
 ;;21,"50383-0803-16 ")
 ;;914
 ;;21,"50383-0804-16 ")
 ;;915
 ;;21,"50383-0866-04 ")
 ;;916
 ;;21,"50383-0866-16 ")
 ;;917
 ;;21,"50383-0880-16 ")
 ;;918
 ;;21,"50428-4770-66 ")
 ;;919
 ;;21,"50428-4770-68 ")
 ;;920
 ;;21,"50428-4770-69 ")
 ;;921
 ;;21,"50428-4770-70 ")
 ;;922
 ;;21,"50428-4770-71 ")
 ;;923
 ;;21,"50428-4770-72 ")
 ;;924
 ;;21,"50428-4770-73 ")
 ;;925
 ;;21,"50428-4770-84 ")
 ;;926
 ;;21,"50486-0616-16 ")
 ;;927
 ;;21,"50486-0616-32 ")
 ;;928
 ;;21,"50486-0621-16 ")
 ;;929
 ;;21,"50580-0174-24 ")
 ;;930
 ;;21,"50580-0176-04 ")
 ;;931
 ;;21,"50580-0176-08 ")
 ;;932
 ;;21,"50580-0176-10 ")
 ;;933
 ;;21,"50580-0176-14 ")
 ;;934
 ;;21,"50580-0176-15 ")
 ;;935
 ;;21,"50580-0176-24 ")
 ;;936
 ;;21,"50580-0176-50 ")
 ;;937
 ;;21,"50580-0176-70 ")
 ;;938
 ;;21,"50580-0176-74 ")
 ;;939
 ;;21,"50580-0182-20 ")
 ;;940
 ;;21,"50580-0182-40 ")
 ;;941
 ;;21,"50580-0182-52 ")
 ;;942
 ;;21,"50580-0233-24 ")
 ;;943
 ;;21,"50580-0233-48 ")
 ;;944
 ;;21,"50580-0234-24 ")
 ;;945
 ;;21,"50580-0252-08 ")
 ;;946
 ;;21,"50580-0347-18 ")
 ;;947
 ;;21,"50580-0348-18 ")
 ;;948
 ;;21,"50580-0426-10 ")
 ;;949
 ;;21,"50580-0426-23 ")
 ;;950
 ;;21,"50580-0426-24 ")
 ;;951
 ;;21,"50580-0427-08 ")
 ;;952
 ;;21,"50580-0443-22 ")
 ;;953
 ;;21,"50580-0443-24 ")
 ;;954
 ;;21,"50580-0482-10 ")
 ;;955
 ;;21,"50580-0482-15 ")
 ;;956
 ;;21,"50580-0482-24 ")
 ;;957
 ;;21,"50580-0482-26 ")
 ;;958
 ;;21,"50580-0482-35 ")
 ;;959
 ;;21,"50580-0482-45 ")
 ;;960
 ;;21,"50580-0482-50 ")
 ;;961
 ;;21,"50580-0482-70 ")
 ;;962
 ;;21,"50580-0552-04 ")
 ;;963
 ;;21,"50580-0664-12 ")
 ;;964
 ;;21,"50580-0664-24 ")
 ;;965
 ;;21,"50580-0777-04 ")
 ;;966
 ;;21,"50580-0814-08 ")
 ;;967
 ;;21,"50580-0815-04 ")
 ;;968
 ;;21,"50580-0843-10 ")
 ;;969
 ;;21,"50580-0843-13 ")
 ;;970
 ;;21,"50580-0843-24 ")
 ;;971
 ;;21,"50580-0843-25 ")
 ;;972
 ;;21,"50580-0843-48 ")
 ;;973
 ;;21,"50580-0843-72 ")
 ;;974
 ;;21,"50991-0607-16 ")
 ;;975
 ;;21,"51079-0066-01 ")
 ;;976
 ;;21,"51079-0066-19 ")
 ;;977
 ;;21,"51079-0066-20 ")
 ;;978
 ;;21,"51079-0077-20 ")
 ;;979
 ;;21,"51079-0078-01 ")
 ;;980
 ;;21,"51079-0078-20 ")
 ;;981
 ;;21,"51079-0530-01 ")
 ;;982
 ;;21,"51079-0530-20 ")
 ;;983
 ;;21,"51079-0531-01 ")
 ;;984
 ;;21,"51079-0531-20 ")
 ;;985
 ;;21,"51079-0532-01 ")
 ;;986
 ;;21,"51079-0532-20 ")
 ;;987
 ;;21,"51079-0895-01 ")
 ;;988
 ;;21,"51079-0895-20 ")
 ;;989
 ;;21,"51079-0967-01 ")
 ;;990
 ;;21,"51079-0967-19 ")
 ;;991
 ;;21,"51079-0967-20 ")
 ;;992
 ;;21,"51285-0881-05 ")
 ;;993
 ;;21,"51285-0882-05 ")
 ;;994
 ;;21,"51641-0030-46 ")
 ;;995
 ;;21,"51641-0030-64 ")
 ;;996
 ;;21,"51641-0030-76 ")
 ;;997
 ;;21,"51641-0030-94 ")
 ;;998
 ;;21,"51645-0709-05 ")
 ;;999
 ;;21,"51655-0078-24 ")
 ;;1000
 ;;21,"51655-0078-30 ")
 ;;1001
 ;;21,"51655-0078-54 ")
 ;;1002
 ;;21,"51655-0079-24 ")
 ;;1003
 ;;21,"51655-0079-27 ")
 ;;1004
 ;;21,"51655-0079-80 ")
 ;;1005
 ;;21,"51655-0084-27 ")
 ;;1006
 ;;21,"51655-0084-53 ")
 ;;1007
 ;;21,"51655-0088-24 ")
 ;;1008
 ;;21,"51655-0088-52 ")
 ;;1009
 ;;21,"51655-0113-24 ")
 ;;1010
 ;;21,"51655-0113-25 ")
 ;;1011
 ;;21,"51655-0113-27 ")
 ;;1012
 ;;21,"51655-0113-54 ")
 ;;1013
 ;;21,"51655-0113-80 ")
 ;;1014
 ;;21,"51655-0276-52 ")
 ;;1015
 ;;21,"51655-0533-52 ")
 ;;1016
 ;;21,"51991-0189-04 ")
 ;;1017
 ;;21,"51991-0189-16 ")
 ;;1018
 ;;21,"51991-0298-16 ")
 ;;1019
 ;;21,"51991-0583-01 ")
 ;;1020
 ;;21,"52152-0014-02 ")
 ;;1021
 ;;21,"52152-0015-02 ")
 ;;1022
 ;;21,"52152-0311-02 ")
 ;;1023
 ;;21,"52152-0311-05 ")
 ;;1024
 ;;21,"52152-0312-02 ")
 ;;1025
 ;;21,"52152-0312-05 ")
 ;;1026
 ;;21,"52152-0313-02 ")
 ;;1027
 ;;21,"52152-0313-05 ")
 ;;1028
 ;;21,"52544-0699-01 ")
 ;;1029
 ;;21,"52544-0699-05 ")
 ;;1030
 ;;21,"52544-0699-10 ")
 ;;1031
 ;;21,"52544-0700-01 ")
 ;;1032
 ;;21,"52544-0700-05 ")
 ;;1033
 ;;21,"52544-0700-10 ")
 ;;1034
 ;;21,"52544-0704-01 ")
 ;;1035
 ;;21,"52544-0704-05 ")
 ;;1036
 ;;21,"52544-0704-10 ")
 ;;1037
 ;;21,"52544-0800-01 ")
 ;;1038
 ;;21,"52544-0800-05 ")
 ;;1039
 ;;21,"52544-0801-01 ")
 ;;1040
 ;;21,"52735-0402-41 ")
 ;;1041
 ;;21,"52735-0404-01 ")
 ;;1042
 ;;21,"52735-0404-05 ")
 ;;1043
 ;;21,"52735-0756-12 ")
 ;;1044
 ;;21,"52735-0757-12 ")
 ;;1045
 ;;21,"52735-0763-04 ")
 ;;1046
 ;;21,"52959-0043-00 ")
 ;;1047
 ;;21,"52959-0043-04 ")
 ;;1048
 ;;21,"52959-0043-10 ")
 ;;1049
 ;;21,"52959-0043-15 ")
 ;;1050
 ;;21,"52959-0043-20 ")
 ;;1051
 ;;21,"52959-0043-24 ")
 ;;1052
 ;;21,"52959-0043-30 ")
 ;;1053
 ;;21,"52959-0043-50 ")
 ;;1054
 ;;21,"52959-0043-60 ")
 ;;1055
 ;;21,"52959-0053-06 ")
 ;;1056
 ;;21,"52959-0053-10 ")
 ;;1057
 ;;21,"52959-0053-12 ")
 ;;1058
 ;;21,"52959-0053-15 ")
 ;;1059
 ;;21,"52959-0053-20 ")
 ;;1060
 ;;21,"52959-0053-30 ")
 ;;1061
 ;;21,"52959-0053-52 ")
 ;;1062
 ;;21,"52959-0074-12 ")
 ;;1063
 ;;21,"52959-0074-13 ")
 ;;1064
 ;;21,"52959-0074-15 ")
 ;;1065
 ;;21,"52959-0074-16 ")
 ;;1066
 ;;21,"52959-0074-20 ")
 ;;1067
 ;;21,"52959-0074-21 ")
 ;;1068
 ;;21,"52959-0074-24 ")
 ;;1069
 ;;21,"52959-0074-30 ")
 ;;1070
 ;;21,"52959-0074-40 ")
 ;;1071
 ;;21,"52959-0074-50 ")
 ;;1072
 ;;21,"52959-0074-60 ")
 ;;1073
 ;;21,"52959-0118-03 ")
 ;;1074
 ;;21,"52959-0118-05 ")
 ;;1075
 ;;21,"52959-0118-06 ")
 ;;1076
 ;;21,"52959-0118-08 ")
 ;;1077
 ;;21,"52959-0123-03 ")
 ;;1078
 ;;21,"52959-0123-06 ")
 ;;1079
 ;;21,"52959-0134-04 ")
 ;;1080
 ;;21,"52959-0134-08 ")
 ;;1081
 ;;21,"52959-0229-04 ")
 ;;1082
 ;;21,"52959-0433-10 ")
 ;;1083
 ;;21,"52959-0433-15 ")
 ;;1084
 ;;21,"52959-0433-20 ")
 ;;1085
 ;;21,"52959-0433-30 ")
 ;;1086
 ;;21,"52959-0433-40 ")
 ;;1087
 ;;21,"52959-0433-60 ")
 ;;1088
 ;;21,"52959-0451-02 ")
 ;;1089
 ;;21,"52959-0451-30 ")
 ;;1090
 ;;21,"52959-0481-10 ")
 ;;1091
 ;;21,"52959-0481-12 ")
 ;;1092
 ;;21,"52959-0481-20 ")
 ;;1093
 ;;21,"52959-0481-30 ")
 ;;1094
 ;;21,"52959-0534-01 ")
 ;;1095
 ;;21,"52959-0534-02 ")
 ;;1096
 ;;21,"52959-0534-10 ")
 ;;1097
 ;;21,"52959-0534-12 ")
 ;;1098
 ;;21,"52959-0534-15 ")
 ;;1099
 ;;21,"52959-0534-20 ")
 ;;1100
 ;;21,"52959-0534-28 ")
 ;;1101
 ;;21,"52959-0534-30 ")
 ;;1102
 ;;21,"52959-0534-45 ")
 ;;1103
 ;;21,"52959-0534-60 ")
 ;;1104
 ;;21,"52959-0534-90 ")
 ;;1105
 ;;21,"52959-0568-04 ")
 ;;1106
 ;;21,"52959-0582-03 ")
 ;;1107
 ;;21,"52959-0700-04 ")
 ;;1108
 ;;21,"52959-0700-06 ")
 ;;1109
 ;;21,"52959-0700-08 ")
 ;;1110
 ;;21,"52959-0804-04 ")
 ;;1111
 ;;21,"52959-0804-08 ")
 ;;1112
 ;;21,"52959-0833-06 ")
 ;;1113
 ;;21,"52959-0833-20 ")
 ;;1114
 ;;21,"52959-0882-30 ")
 ;;1115
 ;;21,"52959-0914-30 ")
 ;;1116
 ;;21,"53100-0128-22 ")
 ;;1117
 ;;21,"53100-0128-23 ")
 ;;1118
 ;;21,"53100-0128-32 ")
 ;;1119
 ;;21,"53100-0128-33 ")
 ;;1120
 ;;21,"53100-0128-51 ")
 ;;1121
 ;;21,"53100-0128-70 ")
 ;;1122
 ;;21,"53100-0128-75 ")
 ;;1123
 ;;21,"53100-0128-80 ")
 ;;1124
 ;;21,"53265-0387-10 ")
 ;;1125
 ;;21,"53265-0387-11 ")
 ;;1126
 ;;21,"53265-0387-50 ")
 ;;1127
 ;;21,"53265-0388-10 ")
 ;;1128
 ;;21,"53265-0388-11 ")
 ;;1129
 ;;21,"53265-0388-50 ")
 ;;1130
 ;;21,"53265-0389-10 ")
 ;;1131
 ;;21,"53265-0389-11 ")
 ;;1132
 ;;21,"53265-0389-50 ")
 ;;1133
 ;;21,"53265-0405-10 ")
 ;;1134
 ;;21,"53265-0406-10 ")
 ;;1135
 ;;21,"53265-0406-11 ")
 ;;1136
 ;;21,"53265-0407-10 ")
 ;;1137
 ;;21,"53489-0126-01 ")
 ;;1138
 ;;21,"53489-0126-05 ")
 ;;1139
 ;;21,"53489-0126-10 ")
 ;;1140
 ;;21,"53489-0127-01 ")
 ;;1141
 ;;21,"53489-0127-05 ")
 ;;1142
 ;;21,"53489-0127-10 ")
 ;;1143
 ;;21,"53489-0128-01 ")
 ;;1144
 ;;21,"53489-0128-05 ")
 ;;1145
 ;;21,"53489-0128-10 ")
 ;;1146
 ;;21,"53746-0064-10 ")
 ;;1147
 ;;21,"54569-0239-00 ")
 ;;1148
 ;;21,"54569-0239-01 ")
 ;;1149
 ;;21,"54569-0239-02 ")
 ;;1150
 ;;21,"54569-0239-03 ")
 ;;1151
 ;;21,"54569-0239-08 ")
 ;;1152
 ;;21,"54569-0241-00 ")
 ;;1153
 ;;21,"54569-0241-02 ")
 ;;1154
 ;;21,"54569-0241-03 ")
 ;;1155
 ;;21,"54569-0241-04 ")
 ;;1156
 ;;21,"54569-0241-05 ")
 ;;1157
 ;;21,"54569-0358-03 ")
 ;;1158
 ;;21,"54569-0406-00 ")
 ;;1159
 ;;21,"54569-0406-01 ")
 ;;1160
 ;;21,"54569-0406-03 ")
 ;;1161
 ;;21,"54569-0406-05 ")
 ;;1162
 ;;21,"54569-0409-01 ")
 ;;1163
 ;;21,"54569-0409-03 ")
 ;;1164
 ;;21,"54569-0409-04 ")
 ;;1165
 ;;21,"54569-0411-01 ")
 ;;1166
 ;;21,"54569-0413-00 ")
 ;;1167
 ;;21,"54569-0413-01 ")
 ;;1168
 ;;21,"54569-0413-04 ")
 ;;1169
 ;;21,"54569-0413-05 ")
 ;;1170
 ;;21,"54569-0413-06 ")
 ;;1171
 ;;21,"54569-0413-08 ")
 ;;1172
 ;;21,"54569-0413-09 ")
 ;;1173
 ;;21,"54569-1046-00 ")
 ;;1174
 ;;21,"54569-1055-00 ")
 ;;1175
 ;;21,"54569-1056-00 ")
 ;;1176
 ;;21,"54569-1640-01 ")
 ;;1177
 ;;21,"54569-1754-00 ")
 ;;1178
 ;;21,"54569-1754-01 ")
 ;;1179
 ;;21,"54569-1754-09 ")
 ;;1180
