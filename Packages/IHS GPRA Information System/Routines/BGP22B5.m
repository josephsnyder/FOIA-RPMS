BGP22B5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 21, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"43353-0662-80 ")
 ;;2604
 ;;21,"43353-0667-60 ")
 ;;3859
 ;;21,"43353-0668-45 ")
 ;;3798
 ;;21,"43353-0668-60 ")
 ;;3799
 ;;21,"43353-0671-30 ")
 ;;3918
 ;;21,"43353-0671-45 ")
 ;;3919
 ;;21,"43353-0676-60 ")
 ;;550
 ;;21,"43353-0712-60 ")
 ;;380
 ;;21,"43683-0147-30 ")
 ;;2021
 ;;21,"43683-0148-30 ")
 ;;551
 ;;21,"47463-0020-30 ")
 ;;76
 ;;21,"47463-0021-30 ")
 ;;16
 ;;21,"47463-0022-30 ")
 ;;112
 ;;21,"47463-0023-30 ")
 ;;3318
 ;;21,"47463-0024-30 ")
 ;;3322
 ;;21,"47463-0039-30 ")
 ;;756
 ;;21,"47463-0040-30 ")
 ;;833
 ;;21,"47463-0043-30 ")
 ;;676
 ;;21,"47463-0220-30 ")
 ;;1423
 ;;21,"47463-0221-30 ")
 ;;1299
 ;;21,"47463-0222-30 ")
 ;;1521
 ;;21,"47463-0223-30 ")
 ;;1658
 ;;21,"47463-0250-30 ")
 ;;4038
 ;;21,"47463-0251-30 ")
 ;;4063
 ;;21,"47463-0252-30 ")
 ;;3617
 ;;21,"47463-0253-30 ")
 ;;3637
 ;;21,"47463-0375-30 ")
 ;;3721
 ;;21,"47463-0376-30 ")
 ;;3749
 ;;21,"47463-0387-30 ")
 ;;2339
 ;;21,"47463-0387-60 ")
 ;;2340
 ;;21,"47463-0387-90 ")
 ;;2341
 ;;21,"47463-0388-30 ")
 ;;2605
 ;;21,"47463-0388-60 ")
 ;;2606
 ;;21,"47463-0388-90 ")
 ;;2607
 ;;21,"47463-0389-30 ")
 ;;2022
 ;;21,"47463-0390-30 ")
 ;;462
 ;;21,"47463-0390-60 ")
 ;;463
 ;;21,"47463-0409-30 ")
 ;;381
 ;;21,"47463-0410-30 ")
 ;;552
 ;;21,"47463-0410-90 ")
 ;;553
 ;;21,"47463-0429-30 ")
 ;;2773
 ;;21,"47463-0618-30 ")
 ;;4000
 ;;21,"47463-0619-30 ")
 ;;4006
 ;;21,"47463-0620-30 ")
 ;;4017
 ;;21,"49158-0500-01 ")
 ;;1424
 ;;21,"49158-0500-10 ")
 ;;1425
 ;;21,"49158-0501-01 ")
 ;;1659
 ;;21,"49158-0501-10 ")
 ;;1660
 ;;21,"49158-0502-01 ")
 ;;1300
 ;;21,"49158-0502-10 ")
 ;;1301
 ;;21,"49158-0503-01 ")
 ;;1522
 ;;21,"49158-0503-10 ")
 ;;1523
 ;;21,"49848-0008-90 ")
 ;;3860
 ;;21,"49884-0556-01 ")
 ;;2152
 ;;21,"49884-0556-10 ")
 ;;2153
 ;;21,"49884-0557-01 ")
 ;;2703
 ;;21,"49884-0557-10 ")
 ;;2704
 ;;21,"49884-0558-01 ")
 ;;1935
 ;;21,"49884-0558-10 ")
 ;;1936
 ;;21,"49884-0559-01 ")
 ;;2237
 ;;21,"49884-0559-10 ")
 ;;2238
 ;;21,"49884-0560-01 ")
 ;;2526
 ;;21,"49884-0560-10 ")
 ;;2527
 ;;21,"49884-0591-01 ")
 ;;1400
 ;;21,"49884-0591-10 ")
 ;;1401
 ;;21,"49884-0592-01 ")
 ;;1622
 ;;21,"49884-0592-10 ")
 ;;1623
 ;;21,"49884-0593-01 ")
 ;;1258
 ;;21,"49884-0593-10 ")
 ;;1259
 ;;21,"49884-0594-01 ")
 ;;1484
 ;;21,"49884-0594-10 ")
 ;;1485
 ;;21,"49884-0619-01 ")
 ;;945
 ;;21,"49884-0619-10 ")
 ;;946
 ;;21,"49884-0620-01 ")
 ;;1015
 ;;21,"49884-0620-10 ")
 ;;1016
 ;;21,"49884-0621-01 ")
 ;;1130
 ;;21,"49884-0621-10 ")
 ;;1131
 ;;21,"49884-0622-01 ")
 ;;909
 ;;21,"49884-0635-01 ")
 ;;2460
 ;;21,"49884-0635-10 ")
 ;;2461
 ;;21,"49884-0686-01 ")
 ;;310
 ;;21,"49884-0687-01 ")
 ;;284
 ;;21,"49884-0793-01 ")
 ;;965
 ;;21,"49884-0793-74 ")
 ;;985
 ;;21,"49884-0794-01 ")
 ;;1036
 ;;21,"49884-0794-10 ")
 ;;1037
 ;;21,"49884-0794-74 ")
 ;;1074
 ;;21,"49884-0795-01 ")
 ;;1147
 ;;21,"49884-0795-10 ")
 ;;1148
 ;;21,"49884-0795-74 ")
 ;;1185
 ;;21,"49884-0796-01 ")
 ;;914
 ;;21,"49884-0815-01 ")
 ;;249
 ;;21,"49884-0816-01 ")
 ;;256
 ;;21,"49884-0817-01 ")
 ;;262
 ;;21,"49884-0818-01 ")
 ;;269
 ;;21,"49884-0861-01 ")
 ;;245
 ;;21,"49884-0862-01 ")
 ;;189
 ;;21,"49884-0863-01 ")
 ;;204
 ;;21,"49884-0864-01 ")
 ;;229
 ;;21,"49884-0929-01 ")
 ;;53
 ;;21,"49884-0929-05 ")
 ;;54
 ;;21,"49884-0930-01 ")
 ;;77
 ;;21,"49884-0930-05 ")
 ;;78
 ;;21,"49884-0931-01 ")
 ;;113
 ;;21,"49884-0931-05 ")
 ;;114
 ;;21,"49884-0932-01 ")
 ;;17
 ;;21,"49884-0932-05 ")
 ;;18
 ;;21,"49884-0952-01 ")
 ;;138
 ;;21,"49884-0952-05 ")
 ;;139
 ;;21,"49884-0953-01 ")
 ;;37
 ;;21,"49884-0953-05 ")
 ;;38
 ;;21,"49884-0990-09 ")
 ;;2957
 ;;21,"49884-0991-09 ")
 ;;2988
 ;;21,"49884-0992-09 ")
 ;;3017
 ;;21,"49884-0993-09 ")
 ;;2929
 ;;21,"49999-0105-00 ")
 ;;1075
 ;;21,"49999-0105-10 ")
 ;;1076
 ;;21,"49999-0105-30 ")
 ;;1077
 ;;21,"49999-0105-60 ")
 ;;1078
 ;;21,"49999-0182-10 ")
 ;;2023
 ;;21,"49999-0182-30 ")
 ;;2024
 ;;21,"49999-0182-60 ")
 ;;2025
 ;;21,"49999-0183-10 ")
 ;;2342
 ;;21,"49999-0183-30 ")
 ;;2343
 ;;21,"49999-0183-60 ")
 ;;2344
 ;;21,"49999-0183-90 ")
 ;;2345
 ;;21,"49999-0239-00 ")
 ;;1661
 ;;21,"49999-0239-30 ")
 ;;1662
 ;;21,"49999-0239-60 ")
 ;;1663
 ;;21,"49999-0240-00 ")
 ;;1302
 ;;21,"49999-0240-30 ")
 ;;1303
 ;;21,"49999-0287-30 ")
 ;;757
 ;;21,"49999-0294-30 ")
 ;;3275
 ;;21,"49999-0295-00 ")
 ;;2774
 ;;21,"49999-0295-10 ")
 ;;2775
 ;;21,"49999-0295-30 ")
 ;;2776
 ;;21,"49999-0305-30 ")
 ;;3669
 ;;21,"49999-0321-00 ")
 ;;554
 ;;21,"49999-0321-30 ")
 ;;555
 ;;21,"49999-0321-60 ")
 ;;556
 ;;21,"49999-0345-00 ")
 ;;1524
 ;;21,"49999-0345-30 ")
 ;;1525
 ;;21,"49999-0469-10 ")
 ;;2608
 ;;21,"49999-0469-30 ")
 ;;2609
 ;;21,"49999-0469-60 ")
 ;;2610
 ;;21,"49999-0469-90 ")
 ;;2611
 ;;21,"49999-0511-30 ")
 ;;1186
 ;;21,"49999-0511-60 ")
 ;;1187
 ;;21,"49999-0543-00 ")
 ;;4075
 ;;21,"49999-0543-30 ")
 ;;4076
 ;;21,"49999-0759-30 ")
 ;;758
 ;;21,"49999-0761-00 ")
 ;;382
 ;;21,"49999-0761-30 ")
 ;;383
 ;;21,"49999-0815-30 ")
 ;;3961
 ;;21,"49999-0815-90 ")
 ;;3962
 ;;21,"49999-0823-00 ")
 ;;294
 ;;21,"49999-0870-00 ")
 ;;2482
 ;;21,"49999-0871-30 ")
 ;;3082
 ;;21,"49999-0871-90 ")
 ;;3083
 ;;21,"49999-0877-00 ")
 ;;4039
 ;;21,"49999-0877-30 ")
 ;;4040
 ;;21,"49999-0877-90 ")
 ;;4041
 ;;21,"49999-0878-00 ")
 ;;4094
 ;;21,"49999-0878-30 ")
 ;;4095
 ;;21,"49999-0878-90 ")
 ;;4096
 ;;21,"49999-0879-00 ")
 ;;3618
 ;;21,"49999-0879-30 ")
 ;;3619
 ;;21,"49999-0880-00 ")
 ;;3653
 ;;21,"49999-0880-30 ")
 ;;3654
 ;;21,"49999-0880-90 ")
 ;;3655
 ;;21,"49999-0924-00 ")
 ;;464
 ;;21,"49999-0924-10 ")
 ;;465
 ;;21,"49999-0924-30 ")
 ;;466
 ;;21,"49999-0924-60 ")
 ;;467
 ;;21,"49999-0934-30 ")
 ;;3189
 ;;21,"49999-0940-30 ")
 ;;3920
 ;;21,"49999-0940-90 ")
 ;;3921
 ;;21,"49999-0943-00 ")
 ;;3588
 ;;21,"49999-0943-90 ")
 ;;3589
 ;;21,"49999-0946-30 ")
 ;;19
 ;;21,"49999-0947-30 ")
 ;;79
 ;;21,"49999-0948-30 ")
 ;;115
 ;;21,"49999-0988-30 ")
 ;;3682
 ;;21,"49999-0991-90 ")
 ;;3800
 ;;21,"50111-0891-01 ")
 ;;1383
 ;;21,"50111-0891-03 ")
 ;;1377
 ;;21,"50111-0892-01 ")
 ;;1596
 ;;21,"50111-0892-03 ")
 ;;1592
 ;;21,"50111-0893-01 ")
 ;;1234
 ;;21,"50111-0893-03 ")
 ;;1229
 ;;21,"50111-0894-01 ")
 ;;1465
 ;;21,"50111-0894-03 ")
 ;;1460
 ;;21,"51079-0145-01 ")
 ;;677
 ;;21,"51079-0145-20 ")
 ;;678
 ;;21,"51079-0146-01 ")
 ;;759
 ;;21,"51079-0146-20 ")
 ;;760
 ;;21,"51079-0256-40 ")
 ;;2185
 ;;21,"51079-0261-40 ")
 ;;2483
 ;;21,"51079-0697-40 ")
 ;;384
 ;;21,"51079-0698-40 ")
 ;;468
 ;;21,"51079-0699-40 ")
 ;;557
 ;;21,"51079-0750-01 ")
 ;;3861
 ;;21,"51079-0750-20 ")
 ;;3862
 ;;21,"51079-0751-01 ")
 ;;3922
 ;;21,"51079-0751-20 ")
 ;;3923
 ;;21,"51079-0752-01 ")
 ;;3801
 ;;21,"51079-0752-20 ")
 ;;3802
 ;;21,"51079-0757-01 ")
 ;;3504
 ;;21,"51079-0757-20 ")
 ;;3505
 ;;21,"51079-0863-01 ")
 ;;986
 ;;21,"51079-0863-20 ")
 ;;987
 ;;21,"51079-0864-01 ")
 ;;1079
 ;;21,"51079-0864-20 ")
 ;;1080
 ;;21,"51079-0950-01 ")
 ;;1426
 ;;21,"51079-0950-20 ")
 ;;1427
 ;;21,"51079-0951-01 ")
 ;;1664
 ;;21,"51079-0951-20 ")
 ;;1665
 ;;21,"51079-0952-01 ")
 ;;1304
 ;;21,"51079-0952-20 ")
 ;;1305
 ;;21,"51079-0953-01 ")
 ;;1526
 ;;21,"51079-0953-20 ")
 ;;1527
 ;;21,"51079-0977-20 ")
 ;;278
 ;;21,"51079-0981-01 ")
 ;;2777
 ;;21,"51079-0981-20 ")
 ;;2778
 ;;21,"51079-0981-30 ")
 ;;2779
 ;;21,"51079-0981-40 ")
 ;;2780
 ;;21,"51079-0981-56 ")
 ;;2781
 ;;21,"51079-0981-57 ")
 ;;2705
 ;;21,"51079-0981-60 ")
 ;;2782
 ;;21,"51079-0982-01 ")
 ;;2026
 ;;21,"51079-0982-17 ")
 ;;2027
 ;;21,"51079-0982-19 ")
 ;;2028
 ;;21,"51079-0982-20 ")
 ;;2029
 ;;21,"51079-0982-30 ")
 ;;2030
 ;;21,"51079-0982-40 ")
 ;;2031
 ;;21,"51079-0982-56 ")
 ;;2032
 ;;21,"51079-0982-57 ")
 ;;1939
 ;;21,"51079-0982-60 ")
 ;;2033
 ;;21,"51079-0983-01 ")
 ;;2346
 ;;21,"51079-0983-17 ")
 ;;2347
 ;;21,"51079-0983-19 ")
 ;;2348
 ;;21,"51079-0983-20 ")
 ;;2349
 ;;21,"51079-0983-30 ")
 ;;2350
 ;;21,"51079-0983-40 ")
 ;;2351
 ;;21,"51079-0983-56 ")
 ;;2352
 ;;21,"51079-0983-57 ")
 ;;2240
 ;;21,"51079-0983-60 ")
 ;;2353
 ;;21,"51079-0984-01 ")
 ;;2612
 ;;21,"51079-0984-20 ")
 ;;2613
 ;;21,"51079-0984-40 ")
 ;;2614
 ;;21,"51079-0984-50 ")
 ;;2615
 ;;21,"51655-0278-25 ")
 ;;1149
 ;;21,"51655-0279-24 ")
 ;;915
 ;;21,"51655-0286-24 ")
 ;;1666
 ;;21,"51655-0287-24 ")
 ;;1306
 ;;21,"51655-0311-25 ")
 ;;1038
 ;;21,"51655-0975-24 ")
 ;;966
 ;;21,"51672-4037-01 ")
 ;;1428
 ;;21,"51672-4037-03 ")
 ;;1429
 ;;21,"51672-4038-01 ")
 ;;1667
 ;;21,"51672-4038-03 ")
 ;;1668
 ;;21,"51672-4039-01 ")
 ;;1307
 ;;21,"51672-4039-03 ")
 ;;1308
 ;;21,"51672-4040-01 ")
 ;;1528
 ;;21,"51672-4040-03 ")
 ;;1529
 ;;21,"51672-4045-01 ")
 ;;318
 ;;21,"51672-4046-01 ")
 ;;295
 ;;21,"52152-0238-08 ")
 ;;615
 ;;21,"52152-0238-30 ")
 ;;616
 ;;21,"52152-0239-08 ")
 ;;623
 ;;21,"52152-0239-30 ")
 ;;624
 ;;21,"52152-0240-08 ")
 ;;632
 ;;21,"52152-0240-30 ")
 ;;633
 ;;21,"52544-0668-01 ")
 ;;1379
 ;;21,"52544-0668-05 ")
 ;;1380
 ;;21,"52544-0669-01 ")
 ;;1590
 ;;21,"52544-0669-05 ")
 ;;1591
 ;;21,"52544-0670-01 ")
 ;;1227
 ;;21,"52544-0670-05 ")
 ;;1228
 ;;21,"52544-0671-01 ")
 ;;1459
 ;;21,"52959-0137-15 ")
 ;;385
 ;;21,"52959-0180-30 ")
 ;;1309
 ;;21,"52959-0180-60 ")
 ;;1310
 ;;21,"52959-0498-00 ")
 ;;386
 ;;21,"52959-0728-15 ")
 ;;2034
 ;;21,"52959-0728-20 ")
 ;;2035
 ;;21,"52959-0728-30 ")
 ;;2036
 ;;21,"52959-0728-90 ")
 ;;2037
 ;;21,"52959-0729-30 ")
 ;;2354
 ;;21,"52959-0729-60 ")
 ;;2355
 ;;21,"52959-0729-90 ")
 ;;2356
 ;;21,"52959-0753-00 ")
 ;;2616
 ;;21,"52959-0753-30 ")
 ;;2617
 ;;21,"52959-0756-30 ")
 ;;4097
 ;;21,"52959-0831-30 ")
 ;;761
 ;;21,"52959-0835-30 ")
 ;;834
 ;;21,"52959-0835-60 ")
 ;;835
 ;;21,"52959-0841-30 ")
 ;;679
 ;;21,"52959-0841-60 ")
 ;;680
 ;;21,"52959-0854-20 ")
 ;;2783
 ;;21,"52959-0854-30 ")
 ;;2784
 ;;21,"52959-0907-30 ")
 ;;230
 ;;21,"52959-0942-30 ")
 ;;1530
 ;;21,"52959-0973-30 ")
 ;;2186
 ;;21,"52959-0975-30 ")
 ;;2785
 ;;21,"52959-0997-30 ")
 ;;558
 ;;21,"53002-0431-00 ")
 ;;1081
 ;;21,"53002-0431-30 ")
 ;;1082
 ;;21,"53002-0431-60 ")
 ;;1083
 ;;21,"53002-1086-00 ")
 ;;1188
 ;;21,"53002-1086-03 ")
 ;;1189
 ;;21,"53002-1086-06 ")
 ;;1190
 ;;21,"53002-1123-00 ")
 ;;2038
 ;;21,"53002-1123-03 ")
 ;;2039
 ;;21,"53002-1123-06 ")
 ;;2040
 ;;21,"53002-1178-00 ")
 ;;2357
 ;;21,"53002-1178-03 ")
 ;;2358
 ;;21,"53002-1178-06 ")
 ;;2359
 ;;21,"53002-1225-00 ")
 ;;2786
 ;;21,"53002-1225-03 ")
 ;;2787
 ;;21,"53002-1225-06 ")
 ;;2788
 ;;21,"53002-1463-00 ")
 ;;2618
 ;;21,"53002-1463-03 ")
 ;;2619
 ;;21,"54348-0099-30 ")
 ;;870
 ;;21,"54348-0100-30 ")
 ;;641
 ;;21,"54458-0956-10 ")
 ;;836
 ;;21,"54458-0957-10 ")
 ;;762
 ;;21,"54458-0958-10 ")
 ;;681
 ;;21,"54458-0959-10 ")
 ;;895
 ;;21,"54458-0991-05 ")
 ;;559
 ;;21,"54458-0991-10 ")
 ;;560
 ;;21,"54458-0992-10 ")
 ;;469
 ;;21,"54458-0993-09 ")
 ;;387
 ;;21,"54458-0994-10 ")
 ;;2620
 ;;21,"54458-0995-10 ")
 ;;2484
 ;;21,"54458-0996-10 ")
 ;;2360
 ;;21,"54458-0997-10 ")
 ;;2041
 ;;21,"54458-0998-09 ")
 ;;2789
 ;;21,"54458-0999-09 ")
 ;;2187
 ;;21,"54569-0522-00 ")
 ;;938
 ;;21,"54569-0522-01 ")
 ;;943
 ;;21,"54569-0522-03 ")
 ;;944
 ;;21,"54569-0523-00 ")
 ;;1008
 ;;21,"54569-0523-02 ")
 ;;1014
 ;;21,"54569-0606-00 ")
 ;;1605
 ;;21,"54569-0606-01 ")
 ;;1606
 ;;21,"54569-0607-00 ")
 ;;1240
 ;;21,"54569-0607-01 ")
 ;;1241
 ;;21,"54569-0612-00 ")
 ;;1478
 ;;21,"54569-1752-03 ")
 ;;1924
 ;;21,"54569-1944-00 ")
 ;;1934
 ;;21,"54569-1944-01 ")
 ;;1922
 ;;21,"54569-1944-02 ")
 ;;2042
 ;;21,"54569-1944-03 ")
 ;;1915
 ;;21,"54569-2051-01 ")
 ;;2227
 ;;21,"54569-2665-01 ")
 ;;2234
 ;;21,"54569-2665-02 ")
 ;;2225
 ;;21,"54569-3258-01 ")
 ;;1381
 ;;21,"54569-3300-00 ")
 ;;2690
 ;;21,"54569-3300-01 ")
 ;;2691
 ;;21,"54569-3359-00 ")
 ;;726
 ;;21,"54569-3359-01 ")
 ;;717
 ;;21,"54569-3359-02 ")
 ;;718
 ;;21,"54569-3423-00 ")
 ;;639
 ;;21,"54569-3423-01 ")
 ;;645
 ;;21,"54569-3423-04 ")
 ;;640
 ;;21,"54569-3713-00 ")
 ;;3118
 ;;21,"54569-3714-00 ")
 ;;3190
 ;;21,"54569-3733-02 ")
 ;;869
 ;;21,"54569-3771-00 ")
 ;;2693
 ;;21,"54569-3808-00 ")
 ;;1740
 ;;21,"54569-3809-00 ")
 ;;1792
 ;;21,"54569-3984-00 ")
 ;;2926
 ;;21,"54569-3984-01 ")
 ;;2924
 ;;21,"54569-3985-00 ")
 ;;2968
 ;;21,"54569-4246-00 ")
 ;;1084
 ;;21,"54569-4246-01 ")
 ;;1033
 ;;21,"54569-4246-03 ")
 ;;1085
 ;;21,"54569-4246-04 ")
 ;;1086
 ;;21,"54569-4246-05 ")
 ;;1087
 ;;21,"54569-4247-00 ")
 ;;1191
 ;;21,"54569-4247-02 ")
 ;;1192
 ;;21,"54569-4247-03 ")
 ;;1143
 ;;21,"54569-4276-00 ")
 ;;2888
 ;;21,"54569-4437-00 ")
 ;;3827
 ;;21,"54569-4438-00 ")
 ;;3924
 ;;21,"54569-4438-01 ")
 ;;3880
 ;;21,"54569-4454-00 ")
 ;;2986
 ;;21,"54569-4572-00 ")
 ;;3722
