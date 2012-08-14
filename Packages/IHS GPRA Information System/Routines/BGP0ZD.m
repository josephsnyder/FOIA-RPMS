BGP0ZD ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;;BGP RA OA NSAID NDC
 ;
 ; This routine loads Taxonomy BGP RA OA NSAID NDC
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
 ;;21,"00004-0028-28 ")
 ;;3148
 ;;21,"00004-0273-01 ")
 ;;897
 ;;21,"00004-6202-01 ")
 ;;3191
 ;;21,"00004-6203-01 ")
 ;;3196
 ;;21,"00004-6203-14 ")
 ;;3197
 ;;21,"00004-6313-01 ")
 ;;3149
 ;;21,"00004-6314-01 ")
 ;;3150
 ;;21,"00004-6316-01 ")
 ;;3151
 ;;21,"00004-6415-01 ")
 ;;3208
 ;;21,"00004-6416-01 ")
 ;;3209
 ;;21,"00006-0675-61 ")
 ;;3435
 ;;21,"00006-0697-61 ")
 ;;3436
 ;;21,"00006-3376-66 ")
 ;;584
 ;;21,"00006-3406-17 ")
 ;;583
 ;;21,"00008-0690-01 ")
 ;;2440
 ;;21,"00009-7385-01 ")
 ;;2091
 ;;21,"00009-7385-02 ")
 ;;2092
 ;;21,"00009-7386-01 ")
 ;;2093
 ;;21,"00009-7386-02 ")
 ;;2094
 ;;21,"00009-7387-01 ")
 ;;2096
 ;;21,"00009-7387-02 ")
 ;;2097
 ;;21,"00009-7387-03 ")
 ;;2098
 ;;21,"00009-7387-04 ")
 ;;2095
 ;;21,"00025-1381-31 ")
 ;;3314
 ;;21,"00025-1381-34 ")
 ;;3315
 ;;21,"00025-1381-51 ")
 ;;3316
 ;;21,"00025-1411-34 ")
 ;;300
 ;;21,"00025-1411-60 ")
 ;;298
 ;;21,"00025-1411-90 ")
 ;;299
 ;;21,"00025-1421-60 ")
 ;;301
 ;;21,"00025-1520-31 ")
 ;;3446
 ;;21,"00025-1520-34 ")
 ;;3447
 ;;21,"00025-1520-51 ")
 ;;3448
 ;;21,"00025-1525-31 ")
 ;;3449
 ;;21,"00025-1525-34 ")
 ;;3450
 ;;21,"00025-1525-51 ")
 ;;3451
 ;;21,"00025-1530-01 ")
 ;;3453
 ;;21,"00025-1530-02 ")
 ;;3452
 ;;21,"00028-0205-01 ")
 ;;296
 ;;21,"00028-0258-01 ")
 ;;261
 ;;21,"00028-0262-01 ")
 ;;262
 ;;21,"00028-0264-01 ")
 ;;263
 ;;21,"00029-4851-20 ")
 ;;1223
 ;;21,"00029-4852-20 ")
 ;;1224
 ;;21,"00036-1421-34 ")
 ;;302
 ;;21,"00045-0416-60 ")
 ;;1084
 ;;21,"00045-0448-04 ")
 ;;2089
 ;;21,"00045-0448-16 ")
 ;;2090
 ;;21,"00046-0738-81 ")
 ;;535
 ;;21,"00046-0739-81 ")
 ;;536
 ;;21,"00046-0829-81 ")
 ;;571
 ;;21,"00046-0839-81 ")
 ;;572
 ;;21,"00054-3630-63 ")
 ;;2527
 ;;21,"00054-4221-25 ")
 ;;58
 ;;21,"00054-4221-31 ")
 ;;60
 ;;21,"00054-4222-25 ")
 ;;61
 ;;21,"00054-4222-31 ")
 ;;63
 ;;21,"00054-8221-25 ")
 ;;59
 ;;21,"00054-8222-25 ")
 ;;62
 ;;21,"00069-3220-66 ")
 ;;1524
 ;;21,"00069-3230-66 ")
 ;;1525
 ;;21,"00074-2287-31 ")
 ;;826
 ;;21,"00074-2287-61 ")
 ;;828
 ;;21,"00074-2288-31 ")
 ;;824
 ;;21,"00074-3793-01 ")
 ;;825
 ;;21,"00074-3795-01 ")
 ;;827
 ;;21,"00074-3796-01 ")
 ;;829
 ;;21,"00093-0147-01 ")
 ;;2553
 ;;21,"00093-0147-05 ")
 ;;2554
 ;;21,"00093-0147-20 ")
 ;;2555
 ;;21,"00093-0148-01 ")
 ;;2556
 ;;21,"00093-0148-05 ")
 ;;2557
 ;;21,"00093-0149-01 ")
 ;;2558
 ;;21,"00093-0149-05 ")
 ;;2559
 ;;21,"00093-0149-10 ")
 ;;2560
 ;;21,"00093-0314-01 ")
 ;;844
 ;;21,"00093-0536-01 ")
 ;;2985
 ;;21,"00093-0536-05 ")
 ;;2986
 ;;21,"00093-0536-10 ")
 ;;2987
 ;;21,"00093-0537-01 ")
 ;;2988
 ;;21,"00093-0537-05 ")
 ;;2989
 ;;21,"00093-0537-10 ")
 ;;2990
 ;;21,"00093-0711-01 ")
 ;;1581
 ;;21,"00093-0711-05 ")
 ;;1582
 ;;21,"00093-0755-01 ")
 ;;3401
 ;;21,"00093-0755-05 ")
 ;;3402
 ;;21,"00093-0755-06 ")
 ;;3400
 ;;21,"00093-0756-01 ")
 ;;1374
 ;;21,"00093-0757-01 ")
 ;;1375
 ;;21,"00093-0757-05 ")
 ;;1376
 ;;21,"00093-0892-01 ")
 ;;392
 ;;21,"00093-0924-01 ")
 ;;3234
 ;;21,"00093-0924-05 ")
 ;;3235
 ;;21,"00093-0948-01 ")
 ;;3
 ;;21,"00093-0948-05 ")
 ;;4
 ;;21,"00093-1005-01 ")
 ;;2911
 ;;21,"00093-1005-05 ")
 ;;2912
 ;;21,"00093-1006-01 ")
 ;;2913
 ;;21,"00093-1006-05 ")
 ;;2914
 ;;21,"00093-1015-01 ")
 ;;1115
 ;;21,"00093-1016-01 ")
 ;;1116
 ;;21,"00093-1041-01 ")
 ;;83
 ;;21,"00093-1118-01 ")
 ;;395
 ;;21,"00093-1122-01 ")
 ;;393
 ;;21,"00093-3193-01 ")
 ;;2371
 ;;21,"00093-3195-01 ")
 ;;2372
 ;;21,"00093-3195-05 ")
 ;;2373
 ;;21,"00093-7172-01 ")
 ;;394
 ;;21,"00093-8397-01 ")
 ;;391
 ;;21,"00093-8815-01 ")
 ;;1053
 ;;21,"00143-9908-01 ")
 ;;2996
 ;;21,"00143-9908-05 ")
 ;;2997
 ;;21,"00143-9916-01 ")
 ;;2995
 ;;21,"00172-3648-70 ")
 ;;1754
 ;;21,"00172-4029-60 ")
 ;;611
 ;;21,"00172-4029-80 ")
 ;;613
 ;;21,"00172-4030-60 ")
 ;;614
 ;;21,"00172-4030-70 ")
 ;;616
 ;;21,"00172-4098-10 ")
 ;;1109
 ;;21,"00172-4098-60 ")
 ;;1110
 ;;21,"00172-4098-70 ")
 ;;1111
 ;;21,"00172-4099-10 ")
 ;;1112
 ;;21,"00172-4099-60 ")
 ;;1113
 ;;21,"00172-4099-70 ")
 ;;1114
 ;;21,"00172-4141-60 ")
 ;;1538
 ;;21,"00172-4348-10 ")
 ;;3229
 ;;21,"00172-4348-60 ")
 ;;3230
 ;;21,"00172-4348-70 ")
 ;;3231
 ;;21,"00182-1681-89 ")
 ;;612
 ;;21,"00182-1682-89 ")
 ;;615
 ;;21,"00182-1809-89 ")
 ;;1752
 ;;21,"00182-1810-89 ")
 ;;1753
 ;;21,"00182-1895-01 ")
 ;;3364
 ;;21,"00182-1899-01 ")
 ;;3363
 ;;21,"00182-8240-89 ")
 ;;2490
 ;;21,"00182-8241-89 ")
 ;;2491
 ;;21,"00185-0139-01 ")
 ;;345
 ;;21,"00185-0139-05 ")
 ;;346
 ;;21,"00185-0139-10 ")
 ;;347
 ;;21,"00185-0140-01 ")
 ;;343
 ;;21,"00185-0140-05 ")
 ;;344
 ;;21,"00185-0141-01 ")
 ;;3225
 ;;21,"00185-0141-05 ")
 ;;3226
 ;;21,"00185-0145-01 ")
 ;;1105
 ;;21,"00185-0145-05 ")
 ;;1106
 ;;21,"00185-0146-01 ")
 ;;1107
 ;;21,"00185-0146-05 ")
 ;;1108
 ;;21,"00185-0720-01 ")
 ;;600
 ;;21,"00185-0720-05 ")
 ;;601
 ;;21,"00185-0720-60 ")
 ;;599
 ;;21,"00223-1091-05 ")
 ;;1698
 ;;21,"00223-1092-01 ")
 ;;1699
 ;;21,"00223-1092-05 ")
 ;;1700
 ;;21,"00223-1093-01 ")
 ;;1701
 ;;21,"00223-1093-05 ")
 ;;1702
 ;;21,"00223-1195-01 ")
 ;;595
 ;;21,"00223-1195-05 ")
 ;;596
 ;;21,"00223-1196-01 ")
 ;;597
 ;;21,"00223-1196-05 ")
 ;;598
 ;;21,"00228-2550-06 ")
 ;;246
 ;;21,"00228-2550-11 ")
 ;;247
 ;;21,"00228-2550-96 ")
 ;;248
 ;;21,"00228-2551-06 ")
 ;;249
 ;;21,"00228-2551-11 ")
 ;;250
 ;;21,"00228-2551-96 ")
 ;;251
 ;;21,"00228-2599-11 ")
 ;;334
 ;;21,"00228-2599-50 ")
 ;;335
 ;;21,"00228-2632-11 ")
 ;;336
 ;;21,"00228-2671-11 ")
 ;;337
 ;;21,"00228-2671-50 ")
 ;;338
 ;;21,"00228-2717-11 ")
 ;;28
 ;;21,"00378-0076-01 ")
 ;;1574
 ;;21,"00378-0093-01 ")
 ;;1575
 ;;21,"00378-0093-05 ")
 ;;1576
 ;;21,"00378-0143-01 ")
 ;;624
 ;;21,"00378-0143-10 ")
 ;;625
 ;;21,"00378-0147-01 ")
 ;;626
 ;;21,"00378-0147-05 ")
 ;;627
 ;;21,"00378-0237-01 ")
 ;;348
 ;;21,"00378-0313-01 ")
 ;;1052
 ;;21,"00378-0355-01 ")
 ;;40
 ;;21,"00378-0377-01 ")
 ;;2503
 ;;21,"00378-0377-05 ")
 ;;2504
 ;;21,"00378-0427-01 ")
 ;;928
 ;;21,"00378-0451-01 ")
 ;;2507
 ;;21,"00378-0451-05 ")
 ;;2508
 ;;21,"00378-0471-01 ")
 ;;1539
 ;;21,"00378-0531-01 ")
 ;;929
 ;;21,"00378-0555-01 ")
 ;;2505
 ;;21,"00378-0555-05 ")
 ;;2506
 ;;21,"00378-1010-01 ")
 ;;1353
 ;;21,"00378-1134-01 ")
 ;;830
 ;;21,"00378-1242-01 ")
 ;;349
 ;;21,"00378-2020-01 ")
 ;;1354
 ;;21,"00378-2020-05 ")
 ;;1355
 ;;21,"00378-2150-01 ")
 ;;1090
 ;;21,"00378-2474-01 ")
 ;;1
 ;;21,"00378-3000-01 ")
 ;;1091
 ;;21,"00378-3000-05 ")
 ;;1092
 ;;21,"00378-4070-01 ")
 ;;2345
 ;;21,"00378-5200-01 ")
 ;;1051
 ;;21,"00378-5750-01 ")
 ;;2346
 ;;21,"00378-8200-01 ")
 ;;2347
 ;;21,"00463-6113-05 ")
 ;;1639
 ;;21,"00463-6114-05 ")
 ;;1640
 ;;21,"00463-6311-05 ")
 ;;1638
 ;;21,"00472-1270-16 ")
 ;;1688
 ;;21,"00472-1270-94 ")
 ;;1687
 ;;21,"00591-0338-01 ")
 ;;85
 ;;21,"00591-0338-10 ")
 ;;86
 ;;21,"00591-0338-60 ")
 ;;84
 ;;21,"00591-0339-01 ")
 ;;88
 ;;21,"00591-0339-05 ")
 ;;89
 ;;21,"00591-0339-10 ")
 ;;90
 ;;21,"00591-0339-60 ")
 ;;87
 ;;21,"00591-0676-01 ")
 ;;91
 ;;21,"00591-0791-01 ")
 ;;2568
 ;;21,"00591-0791-05 ")
 ;;2569
 ;;21,"00591-0792-01 ")
 ;;2991
 ;;21,"00591-0792-05 ")
 ;;2992
 ;;21,"00591-0793-01 ")
 ;;2993
 ;;21,"00591-0793-05 ")
 ;;2994
 ;;21,"00591-0821-01 ")
 ;;2565
 ;;21,"00591-0822-01 ")
 ;;2566
 ;;21,"00591-0822-05 ")
 ;;2567
 ;;21,"00591-2137-01 ")
 ;;2131
 ;;21,"00591-2137-05 ")
 ;;2132
 ;;21,"00591-4010-01 ")
 ;;2127
 ;;21,"00591-4010-05 ")
 ;;2128
 ;;21,"00591-4011-01 ")
 ;;2129
 ;;21,"00591-4011-05 ")
 ;;2130
 ;;21,"00591-5660-01 ")
 ;;950
 ;;21,"00591-5660-05 ")
 ;;951
 ;;21,"00591-5661-01 ")
 ;;948
 ;;21,"00591-5661-05 ")
 ;;949
 ;;21,"00597-0029-01 ")
 ;;1283
 ;;21,"00597-0030-01 ")
 ;;1284
 ;;21,"00603-4018-21 ")
 ;;1809
 ;;21,"00603-4018-28 ")
 ;;1810
 ;;21,"00603-4019-21 ")
 ;;1811
 ;;21,"00603-4019-28 ")
 ;;1812
 ;;21,"00603-4020-21 ")
 ;;1813
 ;;21,"00603-4020-28 ")
 ;;1814
 ;;21,"00603-6215-21 ")
 ;;3379
 ;;21,"00603-6216-21 ")
 ;;3380
 ;;21,"00603-6217-21 ")
 ;;3381
 ;;21,"00677-1031-01 ")
 ;;2121
 ;;21,"00677-1031-05 ")
 ;;2122
 ;;21,"00677-1032-01 ")
 ;;2123
 ;;21,"00677-1032-05 ")
 ;;2124
 ;;21,"00677-1119-01 ")
 ;;2125
 ;;21,"00677-1119-05 ")
 ;;2126
 ;;21,"00677-1173-01 ")
 ;;943
 ;;21,"00677-1173-05 ")
 ;;944
 ;;21,"00677-1173-06 ")
 ;;942
 ;;21,"00677-1174-01 ")
 ;;946
 ;;21,"00677-1174-05 ")
 ;;947
 ;;21,"00677-1174-06 ")
 ;;945
 ;;21,"00677-1425-01 ")
 ;;1054
 ;;21,"00781-1163-01 ")
 ;;2528
 ;;21,"00781-1163-05 ")
 ;;2529
 ;;21,"00781-1164-01 ")
 ;;2530
 ;;21,"00781-1164-05 ")
 ;;2531
 ;;21,"00781-1165-01 ")
 ;;2532
 ;;21,"00781-1165-05 ")
 ;;2533
 ;;21,"00781-1187-01 ")
 ;;2976
 ;;21,"00781-1187-10 ")
 ;;2977
 ;;21,"00781-1188-01 ")
 ;;2978
 ;;21,"00781-1188-10 ")
 ;;2979
 ;;21,"00781-1381-01 ")
 ;;67
 ;;21,"00781-1646-01 ")
 ;;2909
 ;;21,"00781-1653-01 ")
 ;;2910
 ;;21,"00781-1785-01 ")
 ;;64
 ;;21,"00781-1787-01 ")
 ;;65
 ;;21,"00781-1789-01 ")
 ;;66
 ;;21,"00781-5017-01 ")
 ;;2
 ;;21,"00904-1748-40 ")
 ;;1757
 ;;21,"00904-1748-60 ")
 ;;1755
 ;;21,"00904-1748-61 ")
 ;;1756
 ;;21,"00904-3379-60 ")
 ;;923
 ;;21,"00904-5186-40 ")
 ;;1760
 ;;21,"00904-5186-60 ")
 ;;1758
 ;;21,"00904-5186-61 ")
 ;;1759
 ;;21,"00904-5187-40 ")
 ;;1763
 ;;21,"00904-5187-60 ")
 ;;1762
 ;;21,"00904-5187-61 ")
 ;;1761
 ;;21,"00904-5535-61 ")
 ;;2492
 ;;21,"00904-5536-61 ")
 ;;2494
 ;;21,"00904-5537-61 ")
 ;;2496
 ;;21,"00904-5590-40 ")
 ;;2495
 ;;21,"00904-5590-60 ")
 ;;2493
 ;;21,"00904-5591-40 ")
 ;;2497
 ;;21,"10019-0021-09 ")
 ;;813
 ;;21,"10019-0022-09 ")
 ;;815
 ;;21,"10019-0022-32 ")
 ;;818
 ;;21,"10019-0029-02 ")
 ;;814
 ;;21,"10019-0030-03 ")
 ;;816
 ;;21,"10019-0030-04 ")
 ;;817
 ;;21,"10768-7019-01 ")
 ;;1779
 ;;21,"10768-7019-02 ")
 ;;1780
 ;;21,"11584-0465-01 ")
 ;;3190
 ;;21,"38779-0052-04 ")
 ;;1078
 ;;21,"38779-0052-05 ")
 ;;1079
 ;;21,"38779-0076-03 ")
 ;;617
 ;;21,"38779-0076-04 ")
 ;;618
 ;;21,"38779-0076-05 ")
 ;;619
 ;;21,"38779-0076-08 ")
 ;;620
 ;;21,"38779-0078-04 ")
 ;;2335
 ;;21,"38779-0078-05 ")
 ;;2336
 ;;21,"38779-0078-08 ")
 ;;2337
 ;;21,"38779-0078-09 ")
 ;;2338
 ;;21,"38779-0079-09 ")
 ;;621
 ;;21,"38779-0237-03 ")
 ;;1087
 ;;21,"38779-0237-04 ")
 ;;1088
 ;;21,"38779-0237-05 ")
 ;;1089
 ;;21,"38779-0299-04 ")
 ;;1764
 ;;21,"38779-0299-05 ")
 ;;1765
 ;;21,"38779-0299-08 ")
 ;;1766
 ;;21,"38779-0299-09 ")
 ;;1767
 ;;21,"38779-0302-04 ")
 ;;1347
 ;;21,"38779-0302-05 ")
 ;;1348
 ;;21,"38779-0302-08 ")
 ;;1349
 ;;21,"38779-0362-04 ")
 ;;1571
 ;;21,"38779-0362-05 ")
 ;;1572
 ;;21,"38779-0362-08 ")
 ;;1573
 ;;21,"38779-0484-04 ")
 ;;2964
 ;;21,"38779-0484-05 ")
 ;;2965
 ;;21,"38779-0484-08 ")
 ;;2966
 ;;21,"38779-0548-04 ")
 ;;2499
 ;;21,"38779-0548-05 ")
 ;;2500
 ;;21,"38779-0548-08 ")
 ;;2501
 ;;21,"38779-0548-09 ")
 ;;2498
 ;;21,"38779-1698-04 ")
 ;;35
 ;;21,"38779-1698-05 ")
 ;;36
 ;;21,"38779-1698-08 ")
 ;;37
 ;;21,"49452-2583-01 ")
 ;;81
 ;;21,"49452-2583-02 ")
 ;;82
 ;;21,"49452-2597-01 ")
 ;;3397
 ;;21,"49452-2597-02 ")
 ;;3398
 ;;21,"49452-2597-03 ")
 ;;3399
 ;;21,"49452-3178-01 ")
 ;;1578
 ;;21,"49452-3178-02 ")
 ;;1579
 ;;21,"49452-3178-03 ")
 ;;1580
 ;;21,"49452-3657-01 ")
 ;;1815
 ;;21,"49452-3657-02 ")
 ;;1816
 ;;21,"49452-3657-03 ")
 ;;1817
 ;;21,"49452-3657-04 ")
 ;;1818
 ;;21,"49452-3657-05 ")
 ;;1819
 ;;21,"49452-3670-01 ")
 ;;641
 ;;21,"49452-3670-02 ")
 ;;642
 ;;21,"49452-3670-03 ")
 ;;643
 ;;21,"49452-3916-02 ")
 ;;2363
 ;;21,"49452-3916-03 ")
 ;;2365
 ;;21,"49452-3916-04 ")
 ;;2367
 ;;21,"49452-3916-06 ")
 ;;2369
 ;;21,"49452-3917-02 ")
 ;;2364
 ;;21,"49452-3917-03 ")
 ;;2366
 ;;21,"49452-3917-04 ")
 ;;2368
 ;;21,"49452-3917-05 ")
 ;;2370
 ;;21,"49452-3919-01 ")
 ;;841
 ;;21,"49452-3919-02 ")
 ;;842
 ;;21,"49452-3919-03 ")
 ;;843
 ;;21,"49452-3919-05 ")
 ;;840
 ;;21,"49452-4815-01 ")
 ;;2538
 ;;21,"49452-4815-02 ")
 ;;2534
 ;;21,"49452-4815-03 ")
 ;;2535
 ;;21,"49452-4815-04 ")
 ;;2536
 ;;21,"49452-4815-05 ")
 ;;2537
 ;;21,"49452-4817-01 ")
 ;;2984
 ;;21,"49452-4817-02 ")
 ;;2981
 ;;21,"49452-4817-03 ")
 ;;2982
 ;;21,"49452-4817-04 ")
 ;;2980
 ;;21,"49452-4817-06 ")
 ;;2983
 ;;21,"49452-5476-01 ")
 ;;1371
 ;;21,"49452-5476-02 ")
 ;;1372
 ;;21,"49452-5476-03 ")
 ;;1373
 ;;21,"49452-7583-01 ")
 ;;937
 ;;21,"49452-7583-02 ")
 ;;938
 ;;21,"49452-7583-03 ")
 ;;939
 ;;21,"49452-7832-05 ")
 ;;1083
 ;;21,"49452-7834-01 ")
 ;;1081
 ;;21,"49452-7834-04 ")
 ;;1082
 ;;21,"49884-0596-01 ")
 ;;350
 ;;21,"49884-0723-01 ")
 ;;3232
 ;;21,"49884-0723-05 ")
 ;;3233
 ;
OTHER ; OTHER ROUTINES
 D ^BGP0ZD10
 D ^BGP0ZD11
 D ^BGP0ZD12
 D ^BGP0ZD13
 D ^BGP0ZD14
 D ^BGP0ZD15
 D ^BGP0ZD16
 D ^BGP0ZD17
 D ^BGP0ZD18
 D ^BGP0ZD19
 D ^BGP0ZD2
 D ^BGP0ZD20
 D ^BGP0ZD21
 D ^BGP0ZD22
 D ^BGP0ZD23
 D ^BGP0ZD24
 D ^BGP0ZD25
 D ^BGP0ZD26
 D ^BGP0ZD27
 D ^BGP0ZD28
 D ^BGP0ZD29
 D ^BGP0ZD3
 D ^BGP0ZD30
 D ^BGP0ZD31
 D ^BGP0ZD32
 D ^BGP0ZD33
 D ^BGP0ZD34
 D ^BGP0ZD35
 D ^BGP0ZD36
 D ^BGP0ZD37
 D ^BGP0ZD38
 D ^BGP0ZD39
 D ^BGP0ZD4
 D ^BGP0ZD40
 D ^BGP0ZD41
 D ^BGP0ZD42
 D ^BGP0ZD43
 D ^BGP0ZD44
 D ^BGP0ZD45
 D ^BGP0ZD46
 D ^BGP0ZD47
 D ^BGP0ZD5
 D ^BGP0ZD6
 D ^BGP0ZD7
 D ^BGP0ZD8
 D ^BGP0ZD9
 Q