BGP51J ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP HEDIS CENTRAL NERVOUS NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS CENTRAL NERVOUS NDC
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
 ;;21,"00024-5401-31 ")
 ;;1886
 ;;21,"00024-5401-50 ")
 ;;1887
 ;;21,"00024-5421-31 ")
 ;;2155
 ;;21,"00024-5421-50 ")
 ;;2156
 ;;21,"00024-5501-10 ")
 ;;2494
 ;;21,"00024-5501-31 ")
 ;;2495
 ;;21,"00024-5501-50 ")
 ;;2496
 ;;21,"00024-5521-10 ")
 ;;2563
 ;;21,"00024-5521-31 ")
 ;;2564
 ;;21,"00024-5521-34 ")
 ;;2565
 ;;21,"00024-5521-50 ")
 ;;2566
 ;;21,"00037-0110-16 ")
 ;;605
 ;;21,"00037-0113-60 ")
 ;;603
 ;;21,"00037-0114-60 ")
 ;;604
 ;;21,"00037-6010-30 ")
 ;;2615
 ;;21,"00037-6050-30 ")
 ;;2614
 ;;21,"00054-0084-25 ")
 ;;1781
 ;;21,"00054-0085-25 ")
 ;;1855
 ;;21,"00054-0086-25 ")
 ;;2022
 ;;21,"00054-0086-29 ")
 ;;2023
 ;;21,"00054-0087-25 ")
 ;;2358
 ;;21,"00054-0087-29 ")
 ;;2359
 ;;21,"00054-0273-13 ")
 ;;1524
 ;;21,"00054-0274-13 ")
 ;;1530
 ;;21,"00054-0275-13 ")
 ;;1534
 ;;21,"00054-0276-13 ")
 ;;1538
 ;;21,"00054-0290-13 ")
 ;;1317
 ;;21,"00054-0291-25 ")
 ;;1332
 ;;21,"00054-0292-25 ")
 ;;1373
 ;;21,"00093-0073-01 ")
 ;;2024
 ;;21,"00093-0074-01 ")
 ;;2360
 ;;21,"00093-5268-01 ")
 ;;1782
 ;;21,"00093-5269-01 ")
 ;;1854
 ;;21,"00093-5537-56 ")
 ;;1316
 ;;21,"00093-5538-01 ")
 ;;1333
 ;;21,"00093-5539-01 ")
 ;;1372
 ;;21,"00093-9612-12 ")
 ;;1296
 ;;21,"00095-0240-01 ")
 ;;625
 ;;21,"00095-0950-05 ")
 ;;2616
 ;;21,"00095-3000-01 ")
 ;;608
 ;;21,"00095-7029-01 ")
 ;;638
 ;;21,"00095-7075-01 ")
 ;;609
 ;;21,"00143-1115-01 ")
 ;;864
 ;;21,"00143-1115-05 ")
 ;;865
 ;;21,"00143-1445-05 ")
 ;;1626
 ;;21,"00143-1445-10 ")
 ;;1627
 ;;21,"00143-1450-05 ")
 ;;1633
 ;;21,"00143-1450-10 ")
 ;;1634
 ;;21,"00143-1455-05 ")
 ;;1677
 ;;21,"00143-1455-10 ")
 ;;1678
 ;;21,"00143-1458-05 ")
 ;;1687
 ;;21,"00143-1458-10 ")
 ;;1688
 ;;21,"00143-1785-01 ")
 ;;990
 ;;21,"00143-1785-10 ")
 ;;991
 ;;21,"00143-1785-30 ")
 ;;992
 ;;21,"00143-1787-01 ")
 ;;757
 ;;21,"00143-1787-05 ")
 ;;758
 ;;21,"00143-3000-01 ")
 ;;1042
 ;;21,"00143-3909-01 ")
 ;;1783
 ;;21,"00143-3910-01 ")
 ;;1853
 ;;21,"00179-1980-15 ")
 ;;2025
 ;;21,"00179-1980-30 ")
 ;;2026
 ;;21,"00179-1981-30 ")
 ;;2361
 ;;21,"00187-0842-01 ")
 ;;623
 ;;21,"00187-0844-01 ")
 ;;607
 ;;21,"00228-3481-11 ")
 ;;2503
 ;;21,"00228-3481-50 ")
 ;;2504
 ;;21,"00228-3482-11 ")
 ;;2585
 ;;21,"00228-3482-50 ")
 ;;2586
 ;;21,"00378-0042-01 ")
 ;;595
 ;;21,"00378-0073-01 ")
 ;;598
 ;;21,"00378-0211-01 ")
 ;;581
 ;;21,"00378-0211-05 ")
 ;;582
 ;;21,"00378-0277-01 ")
 ;;583
 ;;21,"00378-0277-05 ")
 ;;584
 ;;21,"00378-0330-01 ")
 ;;586
 ;;21,"00378-0330-05 ")
 ;;587
 ;;21,"00378-0442-01 ")
 ;;588
 ;;21,"00378-0442-05 ")
 ;;589
 ;;21,"00378-0574-01 ")
 ;;596
 ;;21,"00378-0574-05 ")
 ;;597
 ;;21,"00378-0612-01 ")
 ;;1700
 ;;21,"00378-0612-10 ")
 ;;1701
 ;;21,"00378-0614-01 ")
 ;;1706
 ;;21,"00378-0614-10 ")
 ;;1707
 ;;21,"00378-0616-01 ")
 ;;1716
 ;;21,"00378-0616-10 ")
 ;;1717
 ;;21,"00378-0618-01 ")
 ;;1721
 ;;21,"00378-0618-10 ")
 ;;1722
 ;;21,"00378-1049-01 ")
 ;;1148
 ;;21,"00378-1049-10 ")
 ;;1149
 ;;21,"00378-2610-01 ")
 ;;93
 ;;21,"00378-2610-10 ")
 ;;94
 ;;21,"00378-2625-01 ")
 ;;259
 ;;21,"00378-2625-10 ")
 ;;260
 ;;21,"00378-2650-01 ")
 ;;337
 ;;21,"00378-2650-10 ")
 ;;338
 ;;21,"00378-2675-01 ")
 ;;482
 ;;21,"00378-2675-93 ")
 ;;483
 ;;21,"00378-2685-01 ")
 ;;504
 ;;21,"00378-2685-93 ")
 ;;505
 ;;21,"00378-2695-01 ")
 ;;576
 ;;21,"00378-2695-93 ")
 ;;577
 ;;21,"00378-3025-01 ")
 ;;1098
 ;;21,"00378-3050-01 ")
 ;;1113
 ;;21,"00378-3075-01 ")
 ;;1122
 ;;21,"00378-3125-01 ")
 ;;1157
 ;;21,"00378-3125-10 ")
 ;;1158
 ;;21,"00378-4250-01 ")
 ;;1251
 ;;21,"00378-4250-10 ")
 ;;1252
 ;;21,"00378-5270-01 ")
 ;;1315
 ;;21,"00378-5271-01 ")
 ;;1334
 ;;21,"00378-5271-10 ")
 ;;1335
 ;;21,"00378-5272-01 ")
 ;;1374
 ;;21,"00378-5272-10 ")
 ;;1375
 ;;21,"00378-5305-01 ")
 ;;1936
 ;;21,"00378-5305-05 ")
 ;;1937
 ;;21,"00378-5310-01 ")
 ;;2255
 ;;21,"00378-5310-05 ")
 ;;2256
 ;;21,"00378-5375-01 ")
 ;;1273
 ;;21,"00378-5375-10 ")
 ;;1274
 ;;21,"00378-6410-01 ")
 ;;1283
 ;;21,"00378-6410-10 ")
 ;;1284
 ;;21,"00378-6805-01 ")
 ;;1771
 ;;21,"00378-6810-01 ")
 ;;1840
 ;;21,"00378-6810-10 ")
 ;;1841
 ;;21,"00406-9906-03 ")
 ;;1094
 ;;21,"00406-9907-03 ")
 ;;1106
 ;;21,"00406-9908-03 ")
 ;;1119
 ;;21,"00406-9920-01 ")
 ;;1443
 ;;21,"00406-9920-03 ")
 ;;1444
 ;;21,"00406-9921-01 ")
 ;;1481
 ;;21,"00406-9921-03 ")
 ;;1482
 ;;21,"00406-9922-03 ")
 ;;1522
 ;;21,"00406-9923-03 ")
 ;;1528
 ;;21,"00406-9924-03 ")
 ;;1532
 ;;21,"00406-9925-03 ")
 ;;1536
 ;;21,"00406-9926-03 ")
 ;;1540
 ;;21,"00406-9931-03 ")
 ;;1523
 ;;21,"00406-9932-03 ")
 ;;1529
 ;;21,"00406-9933-03 ")
 ;;1533
 ;;21,"00406-9934-03 ")
 ;;1537
 ;;21,"00409-2349-31 ")
 ;;1694
 ;;21,"00440-7090-30 ")
 ;;78
 ;;21,"00440-7091-30 ")
 ;;297
 ;;21,"00440-7091-60 ")
 ;;298
 ;;21,"00440-7091-90 ")
 ;;299
 ;;21,"00440-7091-91 ")
 ;;300
 ;;21,"00440-7091-92 ")
 ;;301
 ;;21,"00440-7091-94 ")
 ;;302
 ;;21,"00440-7092-30 ")
 ;;313
 ;;21,"00440-7092-60 ")
 ;;314
 ;;21,"00440-7092-90 ")
 ;;315
 ;;21,"00440-7092-91 ")
 ;;316
 ;;21,"00440-7092-94 ")
 ;;317
 ;;21,"00440-7093-30 ")
 ;;489
 ;;21,"00440-7094-90 ")
 ;;496
 ;;21,"00440-7183-20 ")
 ;;1564
 ;;21,"00440-7205-10 ")
 ;;868
 ;;21,"00440-7205-18 ")
 ;;869
 ;;21,"00440-7205-20 ")
 ;;870
 ;;21,"00440-7205-30 ")
 ;;871
 ;;21,"00440-7205-60 ")
 ;;872
 ;;21,"00440-7210-10 ")
 ;;999
 ;;21,"00440-7210-18 ")
 ;;1000
 ;;21,"00440-7210-30 ")
 ;;1001
 ;;21,"00440-7211-30 ")
 ;;1041
 ;;21,"00440-7307-30 ")
 ;;1095
 ;;21,"00440-7308-30 ")
 ;;1107
 ;;21,"00440-7309-30 ")
 ;;1120
 ;;21,"00440-7635-90 ")
 ;;1445
 ;;21,"00440-7636-90 ")
 ;;1483
 ;;21,"00440-7702-30 ")
 ;;1381
 ;;21,"00440-8085-01 ")
 ;;1637
 ;;21,"00440-8085-30 ")
 ;;1638
 ;;21,"00440-8085-90 ")
 ;;1639
 ;;21,"00440-8085-91 ")
 ;;1640
 ;;21,"00440-8085-92 ")
 ;;1641
 ;;21,"00440-8085-94 ")
 ;;1642
 ;;21,"00440-8085-95 ")
 ;;1643
 ;;21,"00440-8754-02 ")
 ;;1938
 ;;21,"00440-8754-14 ")
 ;;1939
 ;;21,"00440-8754-30 ")
 ;;1940
 ;;21,"00440-8754-60 ")
 ;;1941
 ;;21,"00440-8755-07 ")
 ;;2250
 ;;21,"00440-8755-10 ")
 ;;2251
 ;;21,"00440-8755-14 ")
 ;;2252
 ;;21,"00440-8755-30 ")
 ;;2253
 ;;21,"00440-8755-60 ")
 ;;2254
 ;;21,"00456-0678-01 ")
 ;;900
 ;;21,"00456-0679-01 ")
 ;;650
 ;;21,"00527-1312-01 ")
 ;;1078
 ;;21,"00527-1552-01 ")
 ;;938
 ;;21,"00527-1695-01 ")
 ;;780
 ;;21,"00527-1695-05 ")
 ;;781
 ;;21,"00535-0011-01 ")
 ;;841
 ;;21,"00535-0012-01 ")
 ;;646
 ;;21,"00591-2640-01 ")
 ;;639
 ;;21,"00591-2640-05 ")
 ;;640
 ;;21,"00591-2641-01 ")
 ;;1022
 ;;21,"00591-3219-01 ")
 ;;937
 ;;21,"00591-3220-01 ")
 ;;1039
 ;;21,"00591-3369-01 ")
 ;;782
 ;;21,"00591-3369-05 ")
 ;;783
 ;;21,"00591-3546-01 ")
 ;;1076
 ;;21,"00591-3546-05 ")
 ;;1077
 ;;21,"00591-5238-01 ")
 ;;1549
 ;;21,"00591-5238-10 ")
 ;;1550
 ;;21,"00591-5239-01 ")
 ;;1548
 ;;21,"00603-1508-58 ")
 ;;1690
 ;;21,"00603-2212-02 ")
 ;;72
 ;;21,"00603-2212-16 ")
 ;;73
 ;;21,"00603-2212-21 ")
 ;;74
 ;;21,"00603-2212-32 ")
 ;;75
 ;;21,"00603-2213-02 ")
 ;;305
 ;;21,"00603-2213-21 ")
 ;;306
 ;;21,"00603-2213-30 ")
 ;;307
 ;;21,"00603-2213-32 ")
 ;;308
 ;;21,"00603-2214-21 ")
 ;;309
 ;;21,"00603-2214-32 ")
 ;;310
 ;;21,"00603-2215-21 ")
 ;;491
 ;;21,"00603-2215-25 ")
 ;;492
 ;;21,"00603-2216-21 ")
 ;;493
 ;;21,"00603-2216-25 ")
 ;;494
 ;;21,"00603-2217-21 ")
 ;;579
 ;;21,"00603-2540-21 ")
 ;;610
 ;;21,"00603-2544-02 ")
 ;;784
 ;;21,"00603-2544-20 ")
 ;;785
 ;;21,"00603-2544-21 ")
 ;;786
 ;;21,"00603-2544-28 ")
 ;;787
 ;;21,"00603-2544-32 ")
 ;;788
 ;;21,"00603-2545-21 ")
 ;;866
 ;;21,"00603-2545-28 ")
 ;;867
 ;;21,"00603-2546-21 ")
 ;;644
 ;;21,"00603-2548-21 ")
 ;;998
 ;;21,"00603-2553-21 ")
 ;;1040
 ;;21,"00603-5165-21 ")
 ;;1628
 ;;21,"00603-5165-32 ")
 ;;1629
 ;;21,"00603-5166-02 ")
 ;;1666
 ;;21,"00603-5166-16 ")
 ;;1667
 ;;21,"00603-5166-20 ")
 ;;1668
 ;;21,"00603-5166-21 ")
 ;;1669
 ;;21,"00603-5166-22 ")
 ;;1670
 ;;21,"00603-5166-32 ")
 ;;1671
 ;;21,"00603-5167-21 ")
 ;;1680
 ;;21,"00603-5167-32 ")
 ;;1681
 ;;21,"00603-5168-21 ")
 ;;1684
 ;;21,"00603-5168-32 ")
 ;;1685
 ;;21,"00603-6468-09 ")
 ;;1942
 ;;21,"00603-6468-16 ")
 ;;1943
 ;;21,"00603-6468-21 ")
 ;;1944
 ;;21,"00603-6468-28 ")
 ;;1945
 ;;21,"00603-6468-32 ")
 ;;1946
 ;;21,"00603-6469-09 ")
 ;;2243
 ;;21,"00603-6469-13 ")
 ;;2244
 ;;21,"00603-6469-16 ")
 ;;2245
 ;;21,"00603-6469-20 ")
 ;;2246
 ;;21,"00603-6469-21 ")
 ;;2247
 ;;21,"00603-6469-28 ")
 ;;2248
 ;;21,"00603-6469-32 ")
 ;;2249
 ;;21,"00641-0476-21 ")
 ;;1692
 ;;21,"00641-0476-25 ")
 ;;1693
 ;;21,"00641-0477-21 ")
 ;;1695
 ;;21,"00641-0477-25 ")
 ;;1696
 ;;21,"00642-0162-10 ")
 ;;856
 ;;21,"00682-0804-01 ")
 ;;648
 ;;21,"00682-1400-01 ")
 ;;622
 ;;21,"00781-1486-01 ")
 ;;76
 ;;21,"00781-1486-10 ")
 ;;77
 ;;21,"00781-1487-01 ")
 ;;303
 ;;21,"00781-1487-10 ")
 ;;304
 ;;21,"00781-1488-01 ")
 ;;311
 ;;21,"00781-1488-10 ")
 ;;312
 ;;21,"00781-1489-01 ")
 ;;490
 ;;21,"00781-1490-01 ")
 ;;495
 ;;21,"00781-1491-01 ")
 ;;578
 ;;21,"00781-1762-01 ")
 ;;1436
 ;;21,"00781-1764-01 ")
 ;;1446
 ;;21,"00781-1764-10 ")
 ;;1447
 ;;21,"00781-1764-13 ")
 ;;1448
 ;;21,"00781-1766-01 ")
 ;;1484
 ;;21,"00781-1766-10 ")
 ;;1485
 ;;21,"00781-1766-13 ")
 ;;1486
 ;;21,"00781-1840-01 ")
 ;;1542
 ;;21,"00781-2027-01 ")
 ;;1096
 ;;21,"00781-2037-01 ")
 ;;1108
 ;;21,"00781-2047-01 ")
 ;;1121
 ;;21,"00781-5315-01 ")
 ;;2505
 ;;21,"00781-5315-05 ")
 ;;2506
 ;;21,"00781-5316-01 ")
 ;;2596
 ;;21,"00781-5316-05 ")
 ;;2597
 ;;21,"00781-5317-01 ")
 ;;1933
 ;;21,"00781-5317-10 ")
 ;;1934
 ;;21,"00781-5318-01 ")
 ;;2239
 ;;21,"00781-5318-10 ")
 ;;2240
 ;;21,"00832-0400-00 ")
 ;;1769
 ;;21,"00832-0400-10 ")
 ;;1770
 ;;21,"00832-0401-00 ")
 ;;1842
 ;;21,"00832-0401-10 ")
 ;;1843
 ;;21,"00904-0201-61 ")
 ;;292
 ;;21,"00904-0202-61 ")
 ;;318
 ;;21,"00904-3892-60 ")
 ;;1002
 ;;21,"00904-6082-61 ")
 ;;1935
 ;;21,"00904-6083-61 ")
 ;;2238
 ;;21,"00955-1702-10 ")
 ;;2508
 ;;21,"00955-1703-10 ")
 ;;2593
 ;;21,"10267-2929-03 ")
 ;;601
 ;;21,"10267-2929-05 ")
 ;;602
 ;;21,"10370-0116-10 ")
 ;;2594
 ;;21,"10370-0116-50 ")
 ;;2595
 ;;21,"10370-0117-10 ")
 ;;2507
 ;;21,"10544-0040-15 ")
 ;;2241
 ;;21,"10544-0059-30 ")
 ;;876
 ;;21,"10544-0109-30 ")
 ;;291
 ;;21,"10544-0110-30 ")
 ;;319
 ;;21,"10544-0250-30 ")
 ;;79
 ;;21,"10544-0548-30 ")
 ;;2242
 ;;21,"10551-0091-10 ")
 ;;1554
 ;;21,"11584-0029-01 ")
 ;;636
 ;;21,"11584-0030-01 ")
 ;;624
 ;;21,"12634-0401-71 ")
 ;;147
 ;;21,"12634-0944-71 ")
 ;;2362
 ;;21,"13668-0007-01 ")
 ;;2057
 ;;21,"13668-0007-05 ")
 ;;2058
 ;;21,"13668-0007-10 ")
 ;;2059
 ;;21,"13668-0007-15 ")
 ;;2060
 ;;21,"13668-0007-30 ")
 ;;2061
 ;;21,"13668-0007-71 ")
 ;;2062
 ;;21,"13668-0007-74 ")
 ;;2063
 ;;21,"13668-0007-90 ")
 ;;2064
 ;;21,"13668-0008-01 ")
 ;;2363
 ;;21,"13668-0008-05 ")
 ;;2364
 ;;21,"13668-0008-10 ")
 ;;2365
 ;;21,"13668-0008-15 ")
 ;;2366
 ;;21,"13668-0008-30 ")
 ;;2367
 ;;21,"13668-0008-71 ")
 ;;2368
 ;;21,"13668-0008-74 ")
 ;;2369
 ;;21,"13668-0008-90 ")
 ;;2370
 ;;21,"13925-0158-16 ")
 ;;1619
 ;;21,"15338-0600-60 ")
 ;;1599
 ;;21,"16571-0330-16 ")
 ;;1691
 ;;21,"16590-0009-20 ")
 ;;1875
 ;;21,"16590-0009-30 ")
 ;;1876
 ;;21,"16590-0009-60 ")
 ;;1877
 ;;21,"16590-0009-90 ")
 ;;1878
 ;;21,"16590-0010-20 ")
 ;;2149
 ;;21,"16590-0010-28 ")
 ;;2150
 ;;21,"16590-0010-30 ")
 ;;2151
 ;;21,"16590-0010-56 ")
 ;;2152
 ;;21,"16590-0010-60 ")
 ;;2153
 ;;21,"16590-0010-90 ")
 ;;2154
 ;;21,"16590-0011-28 ")
 ;;26
 ;;21,"16590-0011-30 ")
 ;;27
 ;;21,"16590-0011-45 ")
 ;;28
 ;;21,"16590-0011-56 ")
 ;;29
 ;;21,"16590-0011-60 ")
 ;;30
 ;;21,"16590-0011-72 ")
 ;;31
 ;;21,"16590-0011-82 ")
 ;;32
 ;;21,"16590-0011-90 ")
 ;;33
 ;;21,"16590-0012-15 ")
 ;;139
 ;;21,"16590-0012-28 ")
 ;;140
 ;;21,"16590-0012-30 ")
 ;;141
 ;;21,"16590-0012-56 ")
 ;;142
 ;;21,"16590-0012-60 ")
 ;;143
 ;;21,"16590-0012-72 ")
 ;;144
 ;;21,"16590-0012-82 ")
 ;;145
 ;;21,"16590-0012-90 ")
 ;;146
 ;;21,"16590-0013-28 ")
 ;;412
 ;;21,"16590-0013-30 ")
 ;;413
 ;;21,"16590-0013-60 ")
 ;;414
 ;;21,"16590-0013-82 ")
 ;;415
 ;;21,"16590-0013-90 ")
 ;;416
 ;;21,"16590-0022-15 ")
 ;;661
 ;;21,"16590-0022-20 ")
 ;;662
 ;;21,"16590-0022-30 ")
 ;;663
 ;;21,"16590-0022-50 ")
 ;;664
 ;;21,"16590-0022-60 ")
 ;;665
 ;;21,"16590-0022-72 ")
 ;;666
 ;;21,"16590-0022-90 ")
 ;;667
 ;;21,"16590-0081-28 ")
 ;;1240
 ;;21,"16590-0081-30 ")
 ;;1241
 ;;21,"16590-0081-60 ")
 ;;1242
 ;;21,"16590-0081-72 ")
 ;;1243
 ;;21,"16590-0081-90 ")
 ;;1244
 ;
OTHER ; OTHER ROUTINES
 D ^BGP51J10
 D ^BGP51J11
 D ^BGP51J12
 D ^BGP51J13
 D ^BGP51J14
 D ^BGP51J15
 D ^BGP51J16
 D ^BGP51J17
 D ^BGP51J18
 D ^BGP51J19
 D ^BGP51J2
 D ^BGP51J20
 D ^BGP51J21
 D ^BGP51J22
 D ^BGP51J23
 D ^BGP51J24
 D ^BGP51J25
 D ^BGP51J26
 D ^BGP51J27
 D ^BGP51J28
 D ^BGP51J29
 D ^BGP51J3
 D ^BGP51J30
 D ^BGP51J31
 D ^BGP51J4
 D ^BGP51J5
 D ^BGP51J6
 D ^BGP51J7
 D ^BGP51J8
 D ^BGP51J9
 Q
