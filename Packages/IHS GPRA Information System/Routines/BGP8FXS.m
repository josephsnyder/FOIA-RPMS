BGP8FXS ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP HEDIS SKL MUSCLE RELAX NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS SKL MUSCLE RELAX NDC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00005-3562-23 ")
 ;;954
 ;;21,"00005-3563-23 ")
 ;;1103
 ;;21,"00005-3563-31 ")
 ;;1104
 ;;21,"00006-0931-28 ")
 ;;556
 ;;21,"00006-0931-68 ")
 ;;557
 ;;21,"00031-7409-87 ")
 ;;946
 ;;21,"00031-7409-94 ")
 ;;947
 ;;21,"00031-7429-63 ")
 ;;955
 ;;21,"00031-7429-70 ")
 ;;956
 ;;21,"00031-7449-63 ")
 ;;1105
 ;;21,"00031-7449-70 ")
 ;;1106
 ;;21,"00031-7469-63 ")
 ;;71
 ;;21,"00037-2001-01 ")
 ;;93
 ;;21,"00037-2001-03 ")
 ;;94
 ;;21,"00037-2001-85 ")
 ;;95
 ;;21,"00037-2103-01 ")
 ;;35
 ;;21,"00037-2103-03 ")
 ;;36
 ;;21,"00037-2103-85 ")
 ;;37
 ;;21,"00037-2403-01 ")
 ;;27
 ;;21,"00045-0325-60 ")
 ;;421
 ;;21,"00086-0062-10 ")
 ;;839
 ;;21,"00086-0062-50 ")
 ;;840
 ;;21,"00089-0221-10 ")
 ;;1282
 ;;21,"00089-0231-10 ")
 ;;1
 ;;21,"00089-0233-10 ")
 ;;8
 ;;21,"00089-0233-50 ")
 ;;9
 ;;21,"00089-0540-06 ")
 ;;1370
 ;;21,"00091-7429-63 ")
 ;;957
 ;;21,"00091-7449-63 ")
 ;;1107
 ;;21,"00091-7449-70 ")
 ;;1108
 ;;21,"00093-0542-01 ")
 ;;422
 ;;21,"00093-0542-05 ")
 ;;423
 ;;21,"00115-2011-01 ")
 ;;1283
 ;;21,"00115-2011-02 ")
 ;;1284
 ;;21,"00115-3900-01 ")
 ;;958
 ;;21,"00115-3900-02 ")
 ;;959
 ;;21,"00115-3900-03 ")
 ;;960
 ;;21,"00115-3902-01 ")
 ;;1109
 ;;21,"00115-3902-02 ")
 ;;1110
 ;;21,"00115-3902-03 ")
 ;;1111
 ;;21,"00143-1176-01 ")
 ;;96
 ;;21,"00143-1176-05 ")
 ;;97
 ;;21,"00143-1176-10 ")
 ;;98
 ;;21,"00143-1290-01 ")
 ;;961
 ;;21,"00143-1290-05 ")
 ;;962
 ;;21,"00143-1292-01 ")
 ;;1112
 ;;21,"00143-1292-05 ")
 ;;1113
 ;;21,"00172-2813-60 ")
 ;;72
 ;;21,"00172-2813-70 ")
 ;;73
 ;;21,"00182-0572-01 ")
 ;;963
 ;;21,"00182-0572-05 ")
 ;;964
 ;;21,"00182-0572-89 ")
 ;;965
 ;;21,"00182-0573-01 ")
 ;;1114
 ;;21,"00182-0573-05 ")
 ;;1115
 ;;21,"00182-0573-89 ")
 ;;1116
 ;;21,"00182-1079-01 ")
 ;;99
 ;;21,"00182-1079-05 ")
 ;;100
 ;;21,"00182-1189-05 ")
 ;;424
 ;;21,"00182-1780-01 ")
 ;;409
 ;;21,"00182-1821-05 ")
 ;;38
 ;;21,"00182-1911-01 ")
 ;;74
 ;;21,"00182-1919-89 ")
 ;;558
 ;;21,"00185-0022-01 ")
 ;;1285
 ;;21,"00185-0022-10 ")
 ;;1286
 ;;21,"00185-0713-01 ")
 ;;2
 ;;21,"00185-0713-05 ")
 ;;3
 ;;21,"00185-0714-01 ")
 ;;10
 ;;21,"00185-0714-10 ")
 ;;11
 ;;21,"00185-0724-01 ")
 ;;39
 ;;21,"00185-0724-05 ")
 ;;40
 ;;21,"00185-0724-10 ")
 ;;41
 ;;21,"00185-0749-01 ")
 ;;28
 ;;21,"00185-0749-05 ")
 ;;29
 ;;21,"00185-0749-10 ")
 ;;30
 ;;21,"00223-0657-01 ")
 ;;101
 ;;21,"00223-0657-02 ")
 ;;102
 ;;21,"00223-0657-05 ")
 ;;103
 ;;21,"00223-0658-01 ")
 ;;42
 ;;21,"00223-0658-03 ")
 ;;43
 ;;21,"00223-0658-05 ")
 ;;44
 ;;21,"00223-1170-01 ")
 ;;1287
 ;;21,"00223-1170-02 ")
 ;;1288
 ;;21,"00223-1277-01 ")
 ;;966
 ;;21,"00223-1277-02 ")
 ;;967
 ;;21,"00223-1277-05 ")
 ;;968
 ;;21,"00223-1278-01 ")
 ;;1117
 ;;21,"00223-1278-02 ")
 ;;1118
 ;;21,"00223-1278-05 ")
 ;;1119
 ;;21,"00223-8150-10 ")
 ;;948
 ;;21,"00223-8200-10 ")
 ;;1371
 ;;21,"00247-0013-00 ")
 ;;1120
 ;;21,"00247-0013-03 ")
 ;;1121
 ;;21,"00247-0013-06 ")
 ;;1122
 ;;21,"00247-0013-07 ")
 ;;1123
 ;;21,"00247-0013-08 ")
 ;;1124
 ;;21,"00247-0013-09 ")
 ;;1125
 ;;21,"00247-0013-12 ")
 ;;1126
 ;;21,"00247-0013-15 ")
 ;;1127
 ;;21,"00247-0013-18 ")
 ;;1128
 ;;21,"00247-0013-20 ")
 ;;1129
 ;;21,"00247-0013-21 ")
 ;;1130
 ;;21,"00247-0013-25 ")
 ;;1131
 ;;21,"00247-0013-28 ")
 ;;1132
 ;;21,"00247-0013-30 ")
 ;;1133
 ;;21,"00247-0013-40 ")
 ;;1134
 ;;21,"00247-0013-60 ")
 ;;1135
 ;;21,"00247-0013-98 ")
 ;;1136
 ;;21,"00247-0059-00 ")
 ;;559
 ;;21,"00247-0059-01 ")
 ;;560
 ;;21,"00247-0059-02 ")
 ;;561
 ;;21,"00247-0059-03 ")
 ;;562
 ;;21,"00247-0059-04 ")
 ;;563
 ;;21,"00247-0059-05 ")
 ;;564
 ;;21,"00247-0059-06 ")
 ;;565
 ;;21,"00247-0059-07 ")
 ;;566
 ;;21,"00247-0059-08 ")
 ;;567
 ;;21,"00247-0059-09 ")
 ;;568
 ;;21,"00247-0059-10 ")
 ;;569
 ;;21,"00247-0059-12 ")
 ;;570
 ;;21,"00247-0059-14 ")
 ;;571
 ;;21,"00247-0059-15 ")
 ;;572
 ;;21,"00247-0059-18 ")
 ;;573
 ;;21,"00247-0059-20 ")
 ;;574
 ;;21,"00247-0059-21 ")
 ;;575
 ;;21,"00247-0059-28 ")
 ;;576
 ;;21,"00247-0059-30 ")
 ;;577
 ;;21,"00247-0059-40 ")
 ;;578
 ;;21,"00247-0059-42 ")
 ;;579
 ;;21,"00247-0059-60 ")
 ;;580
 ;;21,"00247-0059-90 ")
 ;;581
 ;;21,"00247-0059-98 ")
 ;;582
 ;;21,"00247-0059-99 ")
 ;;583
 ;;21,"00247-0088-00 ")
 ;;104
 ;;21,"00247-0088-02 ")
 ;;105
 ;;21,"00247-0088-04 ")
 ;;106
 ;;21,"00247-0088-07 ")
 ;;107
 ;;21,"00247-0088-10 ")
 ;;108
 ;;21,"00247-0088-14 ")
 ;;109
 ;;21,"00247-0088-15 ")
 ;;110
 ;;21,"00247-0088-16 ")
 ;;111
 ;;21,"00247-0088-18 ")
 ;;112
 ;;21,"00247-0088-20 ")
 ;;113
 ;;21,"00247-0088-21 ")
 ;;114
 ;;21,"00247-0088-28 ")
 ;;115
 ;;21,"00247-0088-30 ")
 ;;116
 ;;21,"00247-0088-40 ")
 ;;117
 ;;21,"00247-0088-52 ")
 ;;118
 ;;21,"00247-0088-56 ")
 ;;119
 ;;21,"00247-0088-60 ")
 ;;120
 ;;21,"00247-0112-03 ")
 ;;425
 ;;21,"00247-0112-04 ")
 ;;426
 ;;21,"00247-0112-10 ")
 ;;427
 ;;21,"00247-0112-12 ")
 ;;428
 ;;21,"00247-0112-14 ")
 ;;429
 ;;21,"00247-0112-15 ")
 ;;430
 ;;21,"00247-0112-16 ")
 ;;431
 ;;21,"00247-0112-20 ")
 ;;432
 ;;21,"00247-0112-24 ")
 ;;433
 ;;21,"00247-0112-28 ")
 ;;434
 ;;21,"00247-0112-30 ")
 ;;435
 ;;21,"00247-0112-40 ")
 ;;436
 ;;21,"00247-0180-03 ")
 ;;969
 ;;21,"00247-0180-04 ")
 ;;970
 ;;21,"00247-0180-06 ")
 ;;971
 ;;21,"00247-0180-10 ")
 ;;972
 ;;21,"00247-0180-12 ")
 ;;973
 ;;21,"00247-0180-14 ")
 ;;974
 ;;21,"00247-0180-15 ")
 ;;975
 ;;21,"00247-0180-20 ")
 ;;976
 ;;21,"00247-0180-21 ")
 ;;977
 ;;21,"00247-0180-24 ")
 ;;978
 ;;21,"00247-0180-28 ")
 ;;979
 ;;21,"00247-0180-40 ")
 ;;980
 ;;21,"00247-0180-60 ")
 ;;981
 ;;21,"00247-0286-06 ")
 ;;45
 ;;21,"00247-0286-16 ")
 ;;46
 ;;21,"00247-0286-18 ")
 ;;47
 ;;21,"00247-0286-20 ")
 ;;48
 ;;21,"00247-0286-30 ")
 ;;49
 ;;21,"00247-0286-40 ")
 ;;50
 ;;21,"00247-0324-02 ")
 ;;1289
 ;;21,"00247-0324-08 ")
 ;;1290
 ;;21,"00247-0324-10 ")
 ;;1291
 ;;21,"00247-0324-14 ")
 ;;1292
 ;;21,"00247-0324-20 ")
 ;;1293
 ;;21,"00247-0324-21 ")
 ;;1294
 ;;21,"00247-0324-28 ")
 ;;1295
 ;;21,"00247-0324-30 ")
 ;;1296
 ;;21,"00247-0341-20 ")
 ;;410
 ;;21,"00247-0341-30 ")
 ;;411
 ;;21,"00247-0367-10 ")
 ;;75
 ;;21,"00247-0367-18 ")
 ;;76
 ;;21,"00247-0367-20 ")
 ;;77
 ;;21,"00247-0367-28 ")
 ;;78
 ;;21,"00247-0367-30 ")
 ;;79
 ;;21,"00247-0367-40 ")
 ;;80
 ;;21,"00247-0367-56 ")
 ;;81
 ;;21,"00247-0368-02 ")
 ;;1297
 ;;21,"00247-0368-10 ")
 ;;1298
 ;;21,"00247-0368-14 ")
 ;;1299
 ;;21,"00247-0368-20 ")
 ;;1300
 ;;21,"00247-0368-30 ")
 ;;1301
 ;;21,"00247-0369-24 ")
 ;;31
 ;;21,"00247-0369-30 ")
 ;;32
 ;;21,"00247-0391-07 ")
 ;;584
 ;;21,"00247-0391-15 ")
 ;;585
 ;;21,"00247-0391-20 ")
 ;;586
 ;;21,"00247-0391-30 ")
 ;;587
 ;;21,"00247-0391-40 ")
 ;;588
 ;;21,"00254-2410-38 ")
 ;;121
 ;;21,"00259-0322-10 ")
 ;;1372
 ;;21,"00314-0549-10 ")
 ;;1373
 ;;21,"00339-5823-12 ")
 ;;82
 ;;21,"00364-0346-01 ")
 ;;982
 ;;21,"00364-0346-05 ")
 ;;983
 ;;21,"00364-0347-01 ")
 ;;1137
 ;;21,"00364-0347-05 ")
 ;;1138
 ;;21,"00364-0475-01 ")
 ;;122
 ;;21,"00364-0475-02 ")
 ;;123
 ;;21,"00364-0475-04 ")
 ;;124
 ;;21,"00364-0475-05 ")
 ;;125
 ;;21,"00364-2348-01 ")
 ;;589
 ;;21,"00364-2348-02 ")
 ;;590
 ;;21,"00364-2348-05 ")
 ;;591
 ;;21,"00364-2830-01 ")
 ;;1302
 ;;21,"00364-2830-04 ")
 ;;1303
 ;;21,"00378-0751-01 ")
 ;;592
 ;;21,"00378-0751-10 ")
 ;;593
 ;;21,"00378-0771-01 ")
 ;;818
 ;;21,"00378-0771-05 ")
 ;;819
 ;;21,"00378-3354-01 ")
 ;;4
 ;;21,"00378-3356-01 ")
 ;;12
 ;;21,"00378-3358-01 ")
 ;;1304
 ;;21,"00378-3358-05 ")
 ;;1305
 ;;21,"00405-0032-01 ")
 ;;51
 ;;21,"00405-4141-01 ")
 ;;126
 ;;21,"00405-4141-02 ")
 ;;127
 ;;21,"00405-4219-01 ")
 ;;437
 ;;21,"00405-4219-02 ")
 ;;438
 ;;21,"00405-4290-01 ")
 ;;594
 ;;21,"00405-4290-03 ")
 ;;595
 ;;21,"00405-4635-01 ")
 ;;984
 ;;21,"00405-4635-02 ")
 ;;985
 ;;21,"00405-4636-01 ")
 ;;1139
 ;;21,"00405-4636-02 ")
 ;;1140
 ;;21,"00405-4641-01 ")
 ;;83
 ;;21,"00456-1092-10 ")
 ;;1374
 ;;21,"00463-1092-10 ")
 ;;1375
 ;;21,"00463-1106-10 ")
 ;;949
 ;;21,"00527-1152-01 ")
 ;;1141
 ;;21,"00527-1152-05 ")
 ;;1142
 ;;21,"00527-1302-01 ")
 ;;986
 ;;21,"00527-1302-05 ")
 ;;987
 ;;21,"00536-3444-01 ")
 ;;439
 ;;21,"00555-0585-02 ")
 ;;440
 ;;21,"00555-0585-04 ")
 ;;441
 ;;21,"00591-2830-01 ")
 ;;1306
 ;;21,"00591-3222-47 ")
 ;;1376
 ;;21,"00591-3256-01 ")
 ;;820
 ;;21,"00591-5381-01 ")
 ;;988
 ;;21,"00591-5381-05 ")
 ;;989
 ;;21,"00591-5382-01 ")
 ;;1143
 ;;21,"00591-5382-05 ")
 ;;1144
 ;;21,"00591-5513-01 ")
 ;;128
 ;;21,"00591-5513-05 ")
 ;;129
 ;;21,"00591-5513-10 ")
 ;;130
 ;;21,"00591-5658-01 ")
 ;;596
 ;;21,"00591-5658-05 ")
 ;;597
 ;;21,"00591-5658-10 ")
 ;;598
 ;;21,"00603-2582-21 ")
 ;;131
 ;;21,"00603-2582-28 ")
 ;;132
 ;;21,"00603-2582-32 ")
 ;;133
 ;;21,"00603-2583-21 ")
 ;;52
 ;;21,"00603-2584-21 ")
 ;;33
 ;;21,"00603-2886-21 ")
 ;;442
 ;;21,"00603-2886-28 ")
 ;;443
 ;;21,"00603-3077-21 ")
 ;;599
 ;;21,"00603-3077-28 ")
 ;;600
 ;;21,"00603-3077-32 ")
 ;;601
 ;;21,"00603-4485-21 ")
 ;;990
 ;;21,"00603-4485-28 ")
 ;;991
 ;;21,"00603-4486-21 ")
 ;;1145
 ;;21,"00603-4486-28 ")
 ;;1146
 ;;21,"00603-4487-21 ")
 ;;992
 ;;21,"00603-4487-28 ")
 ;;993
 ;;21,"00603-4488-21 ")
 ;;1147
 ;;21,"00603-4488-28 ")
 ;;1148
 ;;21,"00603-4489-21 ")
 ;;84
 ;;21,"00615-0637-01 ")
 ;;994
 ;;21,"00615-0637-05 ")
 ;;995
 ;;21,"00615-0638-01 ")
 ;;1149
 ;;21,"00615-0638-05 ")
 ;;1150
 ;;21,"00615-1519-01 ")
 ;;134
 ;;21,"00615-1519-05 ")
 ;;135
 ;;21,"00615-1524-05 ")
 ;;85
 ;;21,"00615-3520-43 ")
 ;;602
 ;;21,"00615-3520-53 ")
 ;;603
 ;;21,"00615-3520-63 ")
 ;;604
 ;;21,"00677-0430-01 ")
 ;;996
 ;;21,"00677-0431-01 ")
 ;;1151
 ;;21,"00677-0431-05 ")
 ;;1152
 ;;21,"00677-0589-01 ")
 ;;136
 ;;21,"00677-0589-05 ")
 ;;137
 ;;21,"00677-0589-06 ")
 ;;138
 ;;21,"00677-0589-07 ")
 ;;139
 ;;21,"00677-0589-10 ")
 ;;140
 ;;21,"00677-1068-01 ")
 ;;53
 ;;21,"00677-1670-01 ")
 ;;444
 ;;21,"00677-1918-01 ")
 ;;605
 ;;21,"00677-1918-05 ")
 ;;606
 ;;21,"00677-1918-10 ")
 ;;607
 ;;21,"00686-0091-20 ")
 ;;997
 ;;21,"00686-0092-20 ")
 ;;1153
 ;;21,"00686-0476-20 ")
 ;;445
 ;;21,"00686-0644-20 ")
 ;;608
 ;;21,"00781-1050-01 ")
 ;;141
 ;;21,"00781-1050-05 ")
 ;;142
 ;;21,"00781-1050-10 ")
 ;;143
 ;;21,"00781-1304-13 ")
 ;;446
 ;;21,"00781-1324-01 ")
 ;;609
 ;;21,"00781-1324-10 ")
 ;;610
 ;;21,"00781-1649-01 ")
 ;;1307
 ;;21,"00781-1649-05 ")
 ;;1308
 ;;21,"00781-1750-01 ")
 ;;1154
 ;;21,"00781-1750-05 ")
 ;;1155
 ;;21,"00781-1750-13 ")
 ;;1156
 ;;21,"00781-1760-01 ")
 ;;998
 ;;21,"00781-1760-05 ")
 ;;999
 ;;21,"00781-1760-13 ")
 ;;1000
 ;;21,"00781-5005-01 ")
 ;;144
 ;;21,"00781-5005-05 ")
 ;;145
 ;;21,"00781-5005-10 ")
 ;;146
 ;;21,"00781-5032-01 ")
 ;;821
 ;;21,"00781-5032-10 ")
 ;;822
 ;;21,"00839-5101-06 ")
 ;;1157
 ;;21,"00839-5101-12 ")
 ;;1158
 ;;21,"00839-5132-06 ")
 ;;1001
 ;;21,"00839-5132-12 ")
 ;;1002
 ;;21,"00839-6246-06 ")
 ;;147
 ;;21,"00839-6246-16 ")
 ;;148
 ;;21,"00839-6284-06 ")
 ;;86
 ;;21,"00839-6359-30 ")
 ;;950
 ;;21,"00839-7162-06 ")
 ;;54
 ;;21,"00839-7162-12 ")
 ;;55
 ;;21,"00839-7445-06 ")
 ;;447
 ;;21,"00839-7445-12 ")
 ;;448
 ;;21,"00839-7566-16 ")
 ;;611
 ;;21,"00839-7711-06 ")
 ;;612
 ;;21,"00839-7711-16 ")
 ;;613
 ;;21,"00839-7725-06 ")
 ;;449
 ;;21,"00839-7725-12 ")
 ;;450
 ;;21,"00904-0227-40 ")
 ;;87
 ;;21,"00904-0227-60 ")
 ;;88
 ;;21,"00904-0294-60 ")
 ;;412
 ;;21,"00904-0300-40 ")
 ;;451
 ;;21,"00904-0300-60 ")
 ;;452
 ;;21,"00904-0302-40 ")
 ;;453
 ;;21,"00904-0302-60 ")
 ;;454
 ;;21,"00904-0355-40 ")
 ;;149
 ;;21,"00904-0355-60 ")
 ;;150
 ;;21,"00904-0355-61 ")
 ;;151
 ;;21,"00904-0355-70 ")
 ;;152
 ;;21,"00904-0355-80 ")
 ;;153
 ;;21,"00904-0356-40 ")
 ;;56
 ;;21,"00904-0356-60 ")
 ;;57
 ;;21,"00904-0858-10 ")
 ;;1377
 ;;21,"00904-2221-40 ")
 ;;614
 ;;21,"00904-2221-60 ")
 ;;615
 ;;21,"00904-2221-61 ")
 ;;616
 ;;21,"00904-2221-80 ")
 ;;617
 ;;21,"00904-2364-40 ")
 ;;1003
 ;;21,"00904-2364-60 ")
 ;;1004
 ;;21,"00904-2364-61 ")
 ;;1005
 ;;21,"00904-2365-40 ")
 ;;1159
 ;;21,"00904-2365-60 ")
 ;;1160
 ;;21,"00904-5238-60 ")
 ;;5
 ;;21,"00904-5239-60 ")
 ;;13
 ;;21,"00904-7586-40 ")
 ;;618
 ;;21,"00904-7586-60 ")
 ;;619
 ;;21,"00904-7586-61 ")
 ;;620
 ;;21,"00904-7586-80 ")
 ;;621
 ;;21,"00904-7809-40 ")
 ;;622
 ;;21,"00904-7809-60 ")
 ;;623
 ;;21,"00904-7809-61 ")
 ;;624
 ;;21,"00904-7809-80 ")
 ;;625
 ;;21,"10147-0790-01 ")
 ;;823
 ;;21,"11584-0411-01 ")
 ;;455
 ;;21,"11584-0411-05 ")
 ;;456
 ;;21,"11584-1016-02 ")
 ;;1378
 ;;21,"11584-1016-05 ")
 ;;1379
 ;
OTHER ; OTHER ROUTINES
 D ^BGP8FXSB
 D ^BGP8FXSC
 D ^BGP8FXSD
 D ^BGP8FXSE
 D ^BGP8FXSF
 D ^BGP8FXSG
 D ^BGP8FXSH
 D ^BGP8FXSI
 D ^BGP8FXSJ
 D ^BGP8FXSK
 D ^BGP8FXSL
 D ^BGP8FXSM
 D ^BGP8FXSN
 D ^BGP8FXSO
 D ^BGP8FXSP
 Q
