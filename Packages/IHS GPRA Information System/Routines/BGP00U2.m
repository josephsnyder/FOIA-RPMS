BGP00U2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;
 ;;2809
 ;;
 ;;2810
 ;;
 ;;2516
 ;;
 ;;2811
 ;;
 ;;3180
 ;;
 ;;3172
 ;;
 ;;3173
 ;;
 ;;3174
 ;;
 ;;3175
 ;;
 ;;3176
 ;;
 ;;3177
 ;;
 ;;3178
 ;;
 ;;3179
 ;;
 ;;2814
 ;;
 ;;2815
 ;;
 ;;2517
 ;;
 ;;2518
 ;;
 ;;2519
 ;;
 ;;2520
 ;;
 ;;2816
 ;;
 ;;2521
 ;;
 ;;2522
 ;;
 ;;2523
 ;;
 ;;2524
 ;;
 ;;2525
 ;;
 ;;2526
 ;;
 ;;2940
 ;;
 ;;931
 ;;
 ;;932
 ;;
 ;;933
 ;;
 ;;934
 ;;
 ;;935
 ;;
 ;;936
 ;;
 ;;1022
 ;;
 ;;1017
 ;;
 ;;1018
 ;;
 ;;1019
 ;;
 ;;1020
 ;;
 ;;1021
 ;;
 ;;553
 ;;
 ;;554
 ;;
 ;;555
 ;;
 ;;556
 ;;
 ;;907
 ;;
 ;;908
 ;;
 ;;909
 ;;
 ;;910
 ;;
 ;;911
 ;;
 ;;912
 ;;
 ;;913
 ;;
 ;;914
 ;;
 ;;915
 ;;
 ;;1262
 ;;
 ;;1263
 ;;
 ;;1264
 ;;
 ;;1265
 ;;
 ;;1266
 ;;
 ;;1267
 ;;
 ;;1268
 ;;
 ;;1481
 ;;
 ;;1482
 ;;
 ;;1361
 ;;
 ;;1362
 ;;
 ;;1363
 ;;
 ;;1364
 ;;
 ;;1365
 ;;
 ;;1366
 ;;
 ;;1367
 ;;
 ;;1483
 ;;
 ;;2405
 ;;
 ;;2350
 ;;
 ;;2406
 ;;
 ;;2351
 ;;
 ;;3347
 ;;
 ;;3337
 ;;
 ;;3338
 ;;
 ;;3339
 ;;
 ;;3340
 ;;
 ;;3341
 ;;
 ;;3342
 ;;
 ;;3343
 ;;
 ;;3344
 ;;
 ;;3345
 ;;
 ;;3346
 ;;
 ;;2112
 ;;
 ;;2970
 ;;
 ;;2971
 ;;
 ;;2972
 ;;
 ;;2973
 ;;
 ;;2974
 ;;
 ;;3103
 ;;
 ;;2975
 ;;
 ;;557
 ;;
 ;;558
 ;;
 ;;559
 ;;
 ;;560
 ;;
 ;;281
 ;;
 ;;282
 ;;
 ;;283
 ;;
 ;;1069
 ;;
 ;;1068
 ;;
 ;;2444
 ;;
 ;;2445
 ;;
 ;;2446
 ;;
 ;;2968
 ;;
 ;;2969
 ;;
 ;;3102
 ;;
 ;;1269
 ;;
 ;;1270
 ;;
 ;;1271
 ;;
 ;;1272
 ;;
 ;;42
 ;;
 ;;43
 ;;
 ;;3383
 ;;
 ;;3384
 ;;
 ;;3385
 ;;
 ;;1480
 ;;
 ;;1357
 ;;
 ;;1358
 ;;
 ;;1359
 ;;
 ;;1360
 ;;
 ;;278
 ;;
 ;;193
 ;;
 ;;45
 ;;
 ;;194
 ;;
 ;;46
 ;;
 ;;195
 ;;
 ;;47
 ;;
 ;;48
 ;;
 ;;49
 ;;
 ;;187
 ;;
 ;;188
 ;;
 ;;189
 ;;
 ;;190
 ;;
 ;;44
 ;;
 ;;191
 ;;
 ;;192
 ;;
 ;;561
 ;;
 ;;562
 ;;
 ;;3218
 ;;
 ;;3216
 ;;
 ;;3217
 ;;
 ;;576
 ;;
 ;;577
 ;;
 ;;498
 ;;
 ;;499
 ;;
 ;;500
 ;;
 ;;501
 ;;
 ;;502
 ;;
 ;;503
 ;;
 ;;504
 ;;
 ;;505
 ;;
 ;;297
 ;;
 ;;495
 ;;
 ;;496
 ;;
 ;;497
 ;;
 ;;2404
 ;;
 ;;2349
 ;;
 ;;873
 ;;
 ;;874
 ;;
 ;;875
 ;;
 ;;876
 ;;
 ;;877
 ;;
 ;;878
 ;;
 ;;880
 ;;
 ;;881
 ;;
 ;;2947
 ;;
 ;;2941
 ;;
 ;;2942
 ;;
 ;;2932
 ;;
 ;;2943
 ;;
 ;;2944
 ;;
 ;;2945
 ;;
 ;;2946
 ;;
 ;;2352
 ;;
 ;;2353
 ;;
 ;;2354
 ;;
 ;;2355
 ;;
 ;;318
 ;;
 ;;319
 ;;
 ;;320
 ;;
 ;;506
 ;;
 ;;507
 ;;
 ;;508
 ;;
 ;;510
 ;;
 ;;511
 ;;
 ;;314
 ;;
 ;;315
 ;;
 ;;316
 ;;
 ;;317
 ;;
 ;;3577
 ;;
 ;;3563
 ;;
 ;;3564
 ;;
 ;;3565
 ;;
 ;;3566
 ;;
 ;;3567
 ;;
 ;;3568
 ;;
 ;;3569
 ;;
 ;;3570
 ;;
 ;;3571
 ;;
 ;;3572
 ;;
 ;;3573
 ;;
 ;;3574
 ;;
 ;;3575
 ;;
 ;;3576
 ;;
 ;;3556
 ;;
 ;;3557
 ;;
 ;;3558
 ;;
 ;;3559
 ;;
 ;;3560
 ;;
 ;;3561
 ;;
 ;;3562
 ;;
 ;;284
 ;;
 ;;1313
 ;;
 ;;1310
 ;;
 ;;1311
 ;;
 ;;1312
 ;;
 ;;509
 ;;
 ;;1173
 ;;
 ;;1174
 ;;
 ;;1175
 ;;
 ;;1176
 ;;
 ;;1177
 ;;
 ;;1178
 ;;
 ;;1179
 ;;
 ;;1180
 ;;
 ;;1181
 ;;
 ;;17
 ;;
 ;;18
 ;;
 ;;19
 ;;
 ;;1314
 ;;
 ;;1315
 ;;
 ;;1316
 ;;
 ;;1317
 ;;
 ;;3291
 ;;
 ;;3280
 ;;
 ;;3281
 ;;
 ;;3282
 ;;
 ;;3283
 ;;
 ;;3284
 ;;
 ;;3285
 ;;
 ;;3286
 ;;
 ;;3287
 ;;
 ;;3288
 ;;
 ;;3289
 ;;
 ;;3290
 ;;
 ;;879
 ;;
 ;;588
 ;;
 ;;589
 ;;
 ;;590
 ;;
 ;;591
 ;;
 ;;593
 ;;
 ;;594
 ;;
 ;;592
 ;;
 ;;2956
 ;;
 ;;2958
 ;;
 ;;2957
 ;;
 ;;2959
 ;;
 ;;2961
 ;;
 ;;2960
 ;;
 ;;924
 ;;
 ;;925
 ;;
 ;;926
 ;;
 ;;927
 ;;
 ;;1050
 ;;
 ;;2484
 ;;
 ;;1734
 ;;
 ;;1737
 ;;
 ;;1735
 ;;
 ;;1730
 ;;
 ;;1736
 ;;
 ;;1731
 ;;
 ;;1732
 ;;
 ;;1733
 ;;
 ;;1743
 ;;
 ;;1746
 ;;
 ;;1744
 ;;
 ;;1738
 ;;
 ;;1745
 ;;
 ;;1739
 ;;
 ;;1740
 ;;
 ;;1741
 ;;
 ;;1742
 ;;
 ;;1750
 ;;
 ;;1751
 ;;
 ;;1747
 ;;
 ;;1748
 ;;
 ;;1749
 ;;
 ;;2482
 ;;
 ;;2483
 ;;
 ;;2481
 ;;
 ;;2485
 ;;
 ;;2486
 ;;
 ;;2488
 ;;
 ;;2489
 ;;
 ;;2487
 ;;
 ;;1671
 ;;
 ;;652
 ;;
 ;;653
 ;;
 ;;651
 ;;
 ;;649
 ;;
 ;;650
 ;;
 ;;647
 ;;
 ;;1664
 ;;
 ;;1666
 ;;
 ;;2136
 ;;
 ;;1661
 ;;
 ;;1665
 ;;
 ;;1662
 ;;
 ;;1660
 ;;
 ;;2134
 ;;
 ;;2137
 ;;
 ;;1668
 ;;
 ;;1669
 ;;
 ;;1674
 ;;
 ;;1676
 ;;
 ;;2140
 ;;
 ;;1675
 ;;
 ;;1670
 ;;
 ;;1672
 ;;
 ;;2141
 ;;
 ;;2145
 ;;
 ;;1678
 ;;
 ;;1681
 ;;
 ;;1684
 ;;
 ;;1685
 ;;
 ;;1686
 ;;
 ;;2148
 ;;
 ;;1680
 ;;
 ;;1677
 ;;
 ;;1682
 ;;
 ;;3152
 ;;
 ;;3154
 ;;
 ;;3155
 ;;
 ;;3437
 ;;
 ;;1085
 ;;
 ;;657
 ;;
 ;;654
 ;;
 ;;655
 ;;
 ;;656
 ;;
 ;;3198
 ;;
 ;;1543
 ;;
 ;;266
 ;;
 ;;1095
 ;;
 ;;1094
 ;;
 ;;537
 ;;
 ;;539
 ;;
 ;;538
 ;;
 ;;2142
 ;;
 ;;1679
 ;;
 ;;1683
 ;;
 ;;2144
 ;;
 ;;2147
 ;;
 ;;2149
 ;;
 ;;2143
 ;;
 ;;2146
 ;;
 ;;2150
 ;;
 ;;954
 ;;
 ;;1234
 ;;
 ;;1228
 ;;
 ;;1231
 ;;
 ;;1233
 ;;
 ;;1227
 ;;
 ;;1229
 ;;
 ;;1230
 ;;
 ;;1232
 ;;
 ;;898
 ;;
 ;;3404
 ;;
 ;;3405
 ;;
 ;;3406
 ;;
 ;;2378
 ;;
 ;;2376
 ;;
 ;;2374
 ;;
 ;;2375
 ;;
 ;;2377
 ;;
 ;;1382
 ;;
 ;;1381
 ;;
 ;;1380
 ;;
 ;;1383
 ;;
 ;;1384
 ;;
 ;;1526
 ;;
 ;;3318
 ;;
 ;;3317
 ;;
 ;;1055
 ;;
 ;;2570
 ;;
 ;;2573
 ;;
 ;;2571
 ;;
 ;;2572
 ;;
 ;;2574
 ;;
 ;;2578
 ;;
 ;;2579
 ;;
 ;;2575
 ;;
 ;;2577
 ;;
 ;;2576
 ;;
 ;;2581
 ;;
 ;;2582
 ;;
 ;;2580
 ;;
 ;;2586
 ;;
 ;;2587
 ;;
 ;;2589
 ;;
 ;;2584
 ;;
 ;;2585
 ;;
 ;;2590
 ;;
 ;;2593
 ;;
 ;;2591
 ;;
 ;;2999
 ;;
 ;;3000
 ;;
 ;;2998
 ;;
 ;;3001
 ;;
 ;;3003
 ;;
 ;;3004
 ;;
 ;;3005
 ;;
 ;;3006
 ;;
 ;;3002
 ;;
 ;;542
 ;;
 ;;541
 ;;
 ;;2442
 ;;
 ;;2441
 ;;
 ;;2135
 ;;
 ;;1659
 ;;
 ;;1663
 ;;
 ;;3371
 ;;
 ;;1238
 ;;
 ;;1236
 ;;
 ;;1237
 ;;
 ;;1584
 ;;
 ;;1585
 ;;
 ;;1586
 ;;
 ;;1379
 ;;
 ;;3153
 ;;
 ;;3210
 ;;
 ;;2138
 ;;
 ;;1667
 ;;
 ;;1673
 ;;
 ;;2139
 ;;
 ;;955
 ;;
 ;;957
 ;;
 ;;956
 ;;
 ;;268
 ;;
 ;;648
 ;;
 ;;92
 ;;
 ;;94
 ;;
 ;;95
 ;;
 ;;93
 ;;
 ;;96
 ;;
 ;;1086
 ;;
 ;;2588
 ;;
 ;;2592
 ;;
 ;;2103
 ;;
 ;;2102
 ;;
 ;;2105
 ;;
 ;;2106
 ;;
 ;;2107
 ;;
 ;;2101
 ;;
 ;;2099
 ;;
 ;;2100
 ;;
 ;;543
 ;;
 ;;573
 ;;
 ;;398
 ;;
 ;;399
 ;;
 ;;400
 ;;
 ;;401
 ;;
 ;;847
 ;;
 ;;845
 ;;
 ;;846
 ;;
 ;;2916
 ;;
 ;;2917
 ;;
 ;;2915
 ;;
 ;;397
 ;;
 ;;396
 ;;
 ;;304
 ;;
 ;;403
 ;;
 ;;404
 ;;
 ;;402
 ;;
 ;;3459
 ;;
 ;;3457
 ;;
 ;;3458
 ;;
 ;;3456
 ;;
 ;;3464
 ;;
 ;;3461
 ;;
 ;;3463
 ;;
 ;;3465
 ;;
 ;;3462
 ;;
 ;;3460
 ;;
 ;;6
 ;;
 ;;5
 ;;
 ;;1286
 ;;
 ;;1287
 ;;
 ;;1285
 ;;
 ;;2133
 ;;
 ;;1289
 ;;
 ;;1290
 ;;
 ;;1288
 ;;
 ;;3240
 ;;
 ;;3238
 ;;
 ;;3241
 ;;
 ;;3239
 ;;
 ;;3242
 ;;
 ;;1123
 ;;
 ;;1119
 ;;
 ;;1121
 ;;
 ;;1118
 ;;
 ;;1120
 ;;
 ;;1122
 ;;
 ;;1125
 ;;
 ;;1124
 ;;
 ;;1385
 ;;
 ;;3156
 ;;
 ;;1235
 ;;
 ;;267
 ;;
 ;;2583
 ;;
 ;;2108
 ;;
 ;;540
 ;;
 ;;2594
 ;;
 ;;2104
 ;;
 ;;3319
 ;;
 ;;3370
 ;;
 ;;759
 ;;
 ;;758
 ;;
 ;;754
 ;;
 ;;755
 ;;
 ;;756
 ;;
 ;;757
 ;;
 ;;1914
 ;;
 ;;1917
 ;;
 ;;1918
 ;;
 ;;1915
 ;;
 ;;1916
 ;;
 ;;1920
 ;;
 ;;1919
 ;;
 ;;1926
 ;;
 ;;1928
 ;;
 ;;1922
 ;;
 ;;1924
 ;;
 ;;1921
 ;;
 ;;1925
 ;;
 ;;1927
 ;;
 ;;1923
 ;;
 ;;1929
 ;;
 ;;1936
 ;;
 ;;1930
 ;;
 ;;1933
 ;;
 ;;1935
 ;;
 ;;1934
 ;;
 ;;1931
 ;;
 ;;1932
 ;;
 ;;1937
 ;;
 ;;3205
 ;;
 ;;3206
 ;;
 ;;3207
 ;;
 ;;3188
 ;;
 ;;3187
 ;;
 ;;2118
 ;;
 ;;2116
 ;;
 ;;2117
 ;;
 ;;2113
 ;;
 ;;2114
 ;;
 ;;2115
 ;;
 ;;1104
 ;;
 ;;1103
 ;;
 ;;1537
 ;;
 ;;585
 ;;
 ;;1554
 ;;
 ;;1562
 ;;
 ;;1563
 ;;
 ;;762
 ;;
 ;;764
 ;;
 ;;760
 ;;
 ;;761
 ;;
 ;;763
 ;;
 ;;587
 ;;
 ;;1024
 ;;
 ;;1023
 ;;
 ;;287
 ;;
 ;;285
 ;;
 ;;286
 ;;
 ;;289
 ;;
 ;;288
 ;;
 ;;290
 ;;
 ;;769
 ;;
 ;;766
 ;;
 ;;768
 ;;
 ;;765
 ;;
 ;;767
 ;;
 ;;1025
 ;;
 ;;563
 ;;
 ;;3195
 ;;
 ;;2120
 ;;
 ;;1273
 ;;
 ;;1274
 ;;
 ;;1275
 ;;
 ;;564
 ;;
 ;;565
 ;;
 ;;566
 ;;
 ;;1485
 ;;
 ;;1484
 ;;
 ;;1486
 ;;
 ;;917
 ;;
 ;;916
 ;;
 ;;919
 ;;
 ;;918
 ;;
 ;;2407
 ;;
 ;;2408
 ;;
 ;;2410
 ;;
 ;;2409
 ;;
 ;;2411
 ;;
 ;;1071
 ;;
 ;;1070
 ;;
 ;;292
 ;;
 ;;291
 ;;
 ;;2829
 ;;
 ;;2819
 ;;
 ;;2820
 ;;
 ;;2818
 ;;
 ;;2824
 ;;
 ;;2822
 ;;
 ;;2823
 ;;
 ;;2826
 ;;
 ;;2821
 ;;
 ;;2833
 ;;
 ;;2831
 ;;
 ;;2830
 ;;
 ;;2828
 ;;
 ;;2827
 ;;
 ;;2832
 ;;
 ;;568
 ;;
 ;;567
 ;;
 ;;3349
 ;;
 ;;3352
 ;;
 ;;3351
 ;;
 ;;3353
 ;;
 ;;3350
 ;;
 ;;3348
 ;;
 ;;3105
 ;;
 ;;3107
 ;;
 ;;3106
 ;;
 ;;3108
 ;;
 ;;3424
 ;;
 ;;3425
 ;;
 ;;1278
 ;;
 ;;1277
 ;;
 ;;1276
 ;;
 ;;3104
 ;;
 ;;1611
 ;;
 ;;1612
 ;;
 ;;2451
 ;;
 ;;2450
 ;;
 ;;2449
 ;;
 ;;2448
 ;;
 ;;512
 ;;
 ;;198
 ;;
 ;;199
 ;;
 ;;197
 ;;
 ;;2447
 ;;
 ;;200
 ;;
 ;;202
 ;;
 ;;203
 ;;
 ;;201
 ;;
 ;;921
 ;;
 ;;569
 ;;
 ;;580
 ;;
 ;;581
 ;;
 ;;582
 ;;
 ;;513
 ;;
 ;;196
 ;;
 ;;2948
 ;;
 ;;514
 ;;
 ;;3586
 ;;
 ;;3585
 ;;
 ;;3584
 ;;
 ;;3583
 ;;
 ;;3582
 ;;
 ;;3587
 ;;
 ;;3580
 ;;
 ;;3579
 ;;
 ;;3581
 ;;
 ;;3578
 ;;
 ;;321
 ;;
 ;;883
 ;;
 ;;1913
 ;;
 ;;882
 ;;
 ;;1319
 ;;
 ;;1320
 ;;
 ;;1318
 ;;
 ;;3293
 ;;
 ;;3292
 ;;
 ;;3294
 ;;
 ;;1184
 ;;
 ;;1182
 ;;
 ;;1185
 ;;
 ;;1183
 ;;
 ;;1187
 ;;
 ;;1186
 ;;
 ;;1188
 ;;
 ;;2413
 ;;
 ;;2412
 ;;
 ;;2414
 ;;
 ;;205
 ;;
 ;;204
 ;;
 ;;1322
 ;;
 ;;1321
 ;;
 ;;721
 ;;
 ;;717
 ;;
 ;;719
 ;;
 ;;718
 ;;
 ;;720
 ;;
 ;;2304
 ;;
 ;;2311
 ;;
 ;;2312
 ;;
 ;;2308
 ;;
 ;;2305
 ;;
 ;;2310
 ;;
 ;;2306
 ;;
 ;;2307
 ;;
 ;;2309
 ;;
 ;;2322
 ;;
 ;;2315
 ;;
 ;;2318
 ;;
 ;;2321
 ;;
 ;;2313
 ;;
 ;;2317
 ;;
 ;;2314
 ;;
 ;;2316
 ;;
 ;;2320
 ;;
 ;;724
 ;;
 ;;722
 ;;
 ;;723
 ;;
 ;;2299
 ;;
 ;;2302
 ;;
 ;;2300
 ;;
 ;;2301
 ;;
 ;;2303
 ;;
 ;;725
 ;;
 ;;726
 ;;
 ;;1550
 ;;
 ;;984
 ;;
 ;;1245
 ;;
 ;;1246
 ;;
 ;;1247
 ;;
 ;;1434
 ;;
 ;;1433
 ;;
 ;;1429
 ;;
 ;;1430
 ;;
 ;;1431
 ;;
 ;;1432
 ;;
 ;;1428
 ;;
 ;;2396
 ;;
 ;;2394
 ;;
 ;;2395
 ;;
 ;;2692
 ;;
 ;;2690
 ;;
 ;;2689
 ;;
 ;;2686
 ;;
 ;;2687
 ;;
 ;;2688
 ;;
 ;;2691
 ;;
 ;;2701
 ;;
 ;;2698
 ;;
 ;;2693
 ;;
 ;;2697
 ;;
 ;;2694
 ;;
 ;;2699
 ;;
 ;;2695
 ;;
 ;;2696
 ;;
 ;;2700
 ;;
 ;;3056
 ;;
 ;;3059
 ;;
 ;;3058
 ;;
 ;;3057
 ;;
 ;;269
 ;;
 ;;270
 ;;
 ;;3055
 ;;
 ;;3327
 ;;
 ;;3326
 ;;
 ;;1595
 ;;
 ;;1596
 ;;
 ;;174
 ;;
 ;;173
 ;;
 ;;252
 ;;
 ;;172
 ;;
 ;;175
 ;;
 ;;171
 ;;
 ;;170
 ;;
 ;;169
 ;;
 ;;168
 ;;
 ;;2685
 ;;
 ;;1248
 ;;
 ;;467
 ;;
 ;;466
 ;;
 ;;462
 ;;
 ;;461
 ;;
 ;;464
 ;;
 ;;468
 ;;
 ;;465
 ;;
 ;;463
 ;;
 ;;2930
 ;;
 ;;2931
 ;;
 ;;865
 ;;
 ;;866
 ;;
 ;;867
 ;;
 ;;310
 ;;
 ;;309
 ;;
 ;;459
 ;;
 ;;460
 ;;
 ;;457
 ;;
 ;;455
 ;;
 ;;456
 ;;
 ;;458
 ;;
 ;;12
 ;;
 ;;10
 ;;
 ;;11
 ;;
 ;;3524
 ;;
 ;;3525
 ;;
 ;;3526
 ;;
 ;;3528
 ;;
 ;;3527
 ;;
 ;;3529
 ;;
 ;;3530
 ;;
 ;;3531
 ;;
 ;;3532
 ;;
 ;;469
 ;;
 ;;471
 ;;
 ;;470
 ;;
 ;;474
 ;;
 ;;476
 ;;
 ;;477
 ;;
 ;;472
 ;;
 ;;475
 ;;
 ;;473
