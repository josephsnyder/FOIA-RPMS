BGP05Z3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
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
 ;;
 ;;3271
 ;;
 ;;3268
 ;;
 ;;3269
 ;;
 ;;3266
 ;;
 ;;3267
 ;;
 ;;3270
 ;;
 ;;1307
 ;;
 ;;1158
 ;;
 ;;1156
 ;;
 ;;1157
 ;;
 ;;1154
 ;;
 ;;1155
 ;;
 ;;311
 ;;
 ;;1161
 ;;
 ;;1162
 ;;
 ;;1160
 ;;
 ;;1159
 ;;
 ;;1306
 ;;
 ;;1305
 ;;
 ;;2323
 ;;
 ;;2319
 ;;
 ;;162
 ;;
 ;;2702
 ;;
 ;;478
 ;;
 ;;1703
 ;;
 ;;1704
 ;;
 ;;1705
 ;;
 ;;1706
 ;;
 ;;1707
 ;;
 ;;1708
 ;;
 ;;3223
 ;;
 ;;3224
 ;;
 ;;2461
 ;;
 ;;2462
 ;;
 ;;2463
 ;;
 ;;2464
 ;;
 ;;2465
 ;;
 ;;2466
 ;;
 ;;1253
 ;;
 ;;1254
 ;;
 ;;1255
 ;;
 ;;1256
 ;;
 ;;1257
 ;;
 ;;1258
 ;;
 ;;1259
 ;;
 ;;2109
 ;;
 ;;2110
 ;;
 ;;1470
 ;;
 ;;1471
 ;;
 ;;1472
 ;;
 ;;1473
 ;;
 ;;1475
 ;;
 ;;1476
 ;;
 ;;2020
 ;;
 ;;2006
 ;;
 ;;2007
 ;;
 ;;2009
 ;;
 ;;2010
 ;;
 ;;2011
 ;;
 ;;2013
 ;;
 ;;2014
 ;;
 ;;2016
 ;;
 ;;2017
 ;;
 ;;2004
 ;;
 ;;1987
 ;;
 ;;1988
 ;;
 ;;1989
 ;;
 ;;1990
 ;;
 ;;1991
 ;;
 ;;1992
 ;;
 ;;1993
 ;;
 ;;1994
 ;;
 ;;1995
 ;;
 ;;1996
 ;;
 ;;1997
 ;;
 ;;2000
 ;;
 ;;2001
 ;;
 ;;734
 ;;
 ;;735
 ;;
 ;;736
 ;;
 ;;257
 ;;
 ;;258
 ;;
 ;;259
 ;;
 ;;260
 ;;
 ;;253
 ;;
 ;;254
 ;;
 ;;255
 ;;
 ;;256
 ;;
 ;;1561
 ;;
 ;;2400
 ;;
 ;;2401
 ;;
 ;;2402
 ;;
 ;;2403
 ;;
 ;;551
 ;;
 ;;552
 ;;
 ;;575
 ;;
 ;;574
 ;;
 ;;488
 ;;
 ;;489
 ;;
 ;;490
 ;;
 ;;491
 ;;
 ;;3211
 ;;
 ;;3212
 ;;
 ;;1096
 ;;
 ;;1097
 ;;
 ;;3377
 ;;
 ;;1981
 ;;
 ;;1984
 ;;
 ;;1999
 ;;
 ;;2002
 ;;
 ;;2003
 ;;
 ;;2005
 ;;
 ;;2008
 ;;
 ;;2012
 ;;
 ;;2015
 ;;
 ;;2773
 ;;
 ;;2774
 ;;
 ;;2775
 ;;
 ;;2776
 ;;
 ;;2777
 ;;
 ;;2778
 ;;
 ;;2779
 ;;
 ;;2780
 ;;
 ;;2781
 ;;
 ;;2784
 ;;
 ;;2785
 ;;
 ;;2786
 ;;
 ;;2787
 ;;
 ;;2789
 ;;
 ;;2790
 ;;
 ;;2792
 ;;
 ;;2793
 ;;
 ;;2794
 ;;
 ;;2796
 ;;
 ;;2797
 ;;
 ;;2937
 ;;
 ;;2938
 ;;
 ;;2939
 ;;
 ;;870
 ;;
 ;;871
 ;;
 ;;872
 ;;
 ;;3199
 ;;
 ;;3200
 ;;
 ;;3201
 ;;
 ;;3202
 ;;
 ;;1551
 ;;
 ;;1552
 ;;
 ;;1553
 ;;
 ;;3091
 ;;
 ;;3092
 ;;
 ;;3093
 ;;
 ;;3094
 ;;
 ;;3095
 ;;
 ;;3096
 ;;
 ;;3097
 ;;
 ;;3099
 ;;
 ;;2443
 ;;
 ;;312
 ;;
 ;;313
 ;;
 ;;492
 ;;
 ;;493
 ;;
 ;;494
 ;;
 ;;3164
 ;;
 ;;3165
 ;;
 ;;3166
 ;;
 ;;3167
 ;;
 ;;3168
 ;;
 ;;3169
 ;;
 ;;3159
 ;;
 ;;3160
 ;;
 ;;3161
 ;;
 ;;3162
 ;;
 ;;3163
 ;;
 ;;2762
 ;;
 ;;2764
 ;;
 ;;2765
 ;;
 ;;2766
 ;;
 ;;2767
 ;;
 ;;2768
 ;;
 ;;2769
 ;;
 ;;3547
 ;;
 ;;3548
 ;;
 ;;3331
 ;;
 ;;3332
 ;;
 ;;3333
 ;;
 ;;3334
 ;;
 ;;3335
 ;;
 ;;3336
 ;;
 ;;3420
 ;;
 ;;3421
 ;;
 ;;3422
 ;;
 ;;3423
 ;;
 ;;3086
 ;;
 ;;3087
 ;;
 ;;3088
 ;;
 ;;3089
 ;;
 ;;743
 ;;
 ;;744
 ;;
 ;;745
 ;;
 ;;746
 ;;
 ;;747
 ;;
 ;;1527
 ;;
 ;;1528
 ;;
 ;;1529
 ;;
 ;;1530
 ;;
 ;;3550
 ;;
 ;;3551
 ;;
 ;;3552
 ;;
 ;;3553
 ;;
 ;;3555
 ;;
 ;;487
 ;;
 ;;1469
 ;;
 ;;272
 ;;
 ;;271
 ;;
 ;;273
 ;;
 ;;1010
 ;;
 ;;1011
 ;;
 ;;1608
 ;;
 ;;1609
 ;;
 ;;1610
 ;;
 ;;3442
 ;;
 ;;3443
 ;;
 ;;1974
 ;;
 ;;1975
 ;;
 ;;1976
 ;;
 ;;1977
 ;;
 ;;1978
 ;;
 ;;1979
 ;;
 ;;1980
 ;;
 ;;1982
 ;;
 ;;1983
 ;;
 ;;1985
 ;;
 ;;1986
 ;;
 ;;274
 ;;
 ;;275
 ;;
 ;;276
 ;;
 ;;277
 ;;
 ;;3278
 ;;
 ;;3279
 ;;
 ;;1172
 ;;
 ;;1170
 ;;
 ;;1171
 ;;
 ;;1308
 ;;
 ;;549
 ;;
 ;;550
 ;;
 ;;3157
 ;;
 ;;742
 ;;
 ;;740
 ;;
 ;;741
 ;;
 ;;3213
 ;;
 ;;3214
 ;;
 ;;3215
 ;;
 ;;1260
 ;;
 ;;1261
 ;;
 ;;1309
 ;;
 ;;1100
 ;;
 ;;1101
 ;;
 ;;1102
 ;;
 ;;16
 ;;
 ;;3192
 ;;
 ;;3193
 ;;
 ;;1012
 ;;
 ;;1013
 ;;
 ;;1014
 ;;
 ;;3158
 ;;
 ;;902
 ;;
 ;;903
 ;;
 ;;904
 ;;
 ;;905
 ;;
 ;;906
 ;;
 ;;544
 ;;
 ;;545
 ;;
 ;;546
 ;;
 ;;547
 ;;
 ;;548
 ;;
 ;;2539
 ;;
 ;;2540
 ;;
 ;;2543
 ;;
 ;;2544
 ;;
 ;;2548
 ;;
 ;;2550
 ;;
 ;;379
 ;;
 ;;380
 ;;
 ;;819
 ;;
 ;;820
 ;;
 ;;822
 ;;
 ;;821
 ;;
 ;;3029
 ;;
 ;;3030
 ;;
 ;;3031
 ;;
 ;;3033
 ;;
 ;;3032
 ;;
 ;;3491
 ;;
 ;;3492
 ;;
 ;;3493
 ;;
 ;;3495
 ;;
 ;;3494
 ;;
 ;;438
 ;;
 ;;439
 ;;
 ;;441
 ;;
 ;;440
 ;;
 ;;1137
 ;;
 ;;1138
 ;;
 ;;1139
 ;;
 ;;1140
 ;;
 ;;1291
 ;;
 ;;1292
 ;;
 ;;1293
 ;;
 ;;1295
 ;;
 ;;1294
 ;;
 ;;1296
 ;;
 ;;1297
 ;;
 ;;1298
 ;;
 ;;1300
 ;;
 ;;1299
 ;;
 ;;147
 ;;
 ;;148
 ;;
 ;;149
 ;;
 ;;150
 ;;
 ;;307
 ;;
 ;;305
 ;;
 ;;308
 ;;
 ;;306
 ;;
 ;;142
 ;;
 ;;143
 ;;
 ;;144
 ;;
 ;;146
 ;;
 ;;145
 ;;
 ;;1141
 ;;
 ;;1142
 ;;
 ;;1143
 ;;
 ;;1144
 ;;
 ;;1407
 ;;
 ;;1408
 ;;
 ;;1409
 ;;
 ;;3255
 ;;
 ;;3256
 ;;
 ;;3257
 ;;
 ;;3258
 ;;
 ;;3259
 ;;
 ;;2632
 ;;
 ;;2634
 ;;
 ;;2633
 ;;
 ;;2635
 ;;
 ;;2926
 ;;
 ;;2927
 ;;
 ;;2928
 ;;
 ;;2929
 ;;
 ;;3496
 ;;
 ;;3497
 ;;
 ;;3498
 ;;
 ;;3499
 ;;
 ;;3500
 ;;
 ;;3501
 ;;
 ;;3502
 ;;
 ;;3503
 ;;
 ;;3504
 ;;
 ;;3506
 ;;
 ;;3505
 ;;
 ;;1241
 ;;
 ;;1242
 ;;
 ;;1243
 ;;
 ;;1410
 ;;
 ;;1411
 ;;
 ;;1412
 ;;
 ;;1414
 ;;
 ;;1413
 ;;
 ;;1590
 ;;
 ;;1591
 ;;
 ;;1592
 ;;
 ;;1593
 ;;
 ;;431
 ;;
 ;;432
 ;;
 ;;434
 ;;
 ;;433
 ;;
 ;;435
 ;;
 ;;437
 ;;
 ;;436
 ;;
 ;;702
 ;;
 ;;703
 ;;
 ;;704
 ;;
 ;;705
 ;;
 ;;857
 ;;
 ;;858
 ;;
 ;;3320
 ;;
 ;;3321
 ;;
 ;;3322
 ;;
 ;;3323
 ;;
 ;;2223
 ;;
 ;;2384
 ;;
 ;;2385
 ;;
 ;;2386
 ;;
 ;;899
 ;;
 ;;697
 ;;
 ;;698
 ;;
 ;;699
 ;;
 ;;3024
 ;;
 ;;3025
 ;;
 ;;3026
 ;;
 ;;3027
 ;;
 ;;3028
 ;;
 ;;700
 ;;
 ;;701
 ;;
 ;;2636
 ;;
 ;;2637
 ;;
 ;;2638
 ;;
 ;;2639
 ;;
 ;;2640
 ;;
 ;;2641
 ;;
 ;;2642
 ;;
 ;;2643
 ;;
 ;;2645
 ;;
 ;;2644
 ;;
 ;;2231
 ;;
 ;;2224
 ;;
 ;;2225
 ;;
 ;;2226
 ;;
 ;;2227
 ;;
 ;;2228
 ;;
 ;;2229
 ;;
 ;;2232
 ;;
 ;;2230
 ;;
 ;;1565
 ;;
 ;;1566
 ;;
 ;;1567
 ;;
 ;;3359
 ;;
 ;;3360
 ;;
 ;;3361
 ;;
 ;;3221
 ;;
 ;;3222
 ;;
 ;;444
 ;;
 ;;445
 ;;
 ;;443
 ;;
 ;;442
 ;;
 ;;3372
 ;;
 ;;3260
 ;;
 ;;3261
 ;;
 ;;3262
 ;;
 ;;3263
 ;;
 ;;3324
 ;;
 ;;151
 ;;
 ;;3034
 ;;
 ;;3035
 ;;
 ;;706
 ;;
 ;;707
 ;;
 ;;708
 ;;
 ;;2234
 ;;
 ;;2235
 ;;
 ;;2236
 ;;
 ;;2233
 ;;
 ;;2237
 ;;
 ;;2238
 ;;
 ;;2241
 ;;
 ;;2242
 ;;
 ;;2239
 ;;
 ;;2240
 ;;
 ;;2248
 ;;
 ;;2250
 ;;
 ;;2247
 ;;
 ;;2246
 ;;
 ;;2249
 ;;
 ;;2245
 ;;
 ;;2252
 ;;
 ;;2251
 ;;
 ;;2244
 ;;
 ;;2243
 ;;
 ;;976
 ;;
 ;;978
 ;;
 ;;977
 ;;
 ;;979
 ;;
 ;;2388
 ;;
 ;;2387
 ;;
 ;;709
 ;;
 ;;1415
 ;;
 ;;1594
 ;;
 ;;1244
 ;;
 ;;2935
 ;;
 ;;2936
 ;;
 ;;2646
 ;;
 ;;2649
 ;;
 ;;2648
 ;;
 ;;2647
 ;;
 ;;2653
 ;;
 ;;2650
 ;;
 ;;2654
 ;;
 ;;2652
 ;;
 ;;2651
 ;;
 ;;3040
 ;;
 ;;3042
 ;;
 ;;3038
 ;;
 ;;3036
 ;;
 ;;3037
 ;;
 ;;3039
 ;;
 ;;3041
 ;;
 ;;3043
 ;;
 ;;7
 ;;
 ;;152
 ;;
 ;;153
 ;;
 ;;446
 ;;
 ;;859
 ;;
 ;;860
 ;;
 ;;3508
 ;;
 ;;3510
 ;;
 ;;3509
 ;;
 ;;3511
 ;;
 ;;3512
 ;;
 ;;3507
