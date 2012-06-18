BGP09X ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;;BGP RA CYCLOSPORINE NDC
 ;
 ; This routine loads Taxonomy BGP RA CYCLOSPORINE NDC
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
 ;;21,"00023-9163-32 ")
 ;;1
 ;;21,"00074-6463-32 ")
 ;;2
 ;;21,"00074-6479-32 ")
 ;;3
 ;;21,"00074-7269-50 ")
 ;;4
 ;;21,"00078-0109-01 ")
 ;;5
 ;;21,"00078-0110-22 ")
 ;;6
 ;;21,"00078-0240-15 ")
 ;;7
 ;;21,"00078-0241-15 ")
 ;;8
 ;;21,"00078-0246-15 ")
 ;;9
 ;;21,"00078-0248-15 ")
 ;;10
 ;;21,"00078-0274-22 ")
 ;;11
 ;;21,"00185-0932-30 ")
 ;;12
 ;;21,"00185-0933-30 ")
 ;;13
 ;;21,"38779-0660-03 ")
 ;;14
 ;;21,"38779-0660-04 ")
 ;;15
 ;;21,"38779-0660-05 ")
 ;;16
 ;;21,"38779-0660-06 ")
 ;;17
 ;;21,"50111-0885-42 ")
 ;;18
 ;;21,"50111-0909-43 ")
 ;;19
 ;;21,"50111-0920-43 ")
 ;;20
 ;;21,"51552-0663-01 ")
 ;;21
 ;;21,"51927-3196-00 ")
 ;;22
 ;;21,"54868-4793-00 ")
 ;;23
 ;;21,"55390-0122-10 ")
 ;;24
 ;;21,"60432-0140-50 ")
 ;;25
 ;;21,"60505-0133-00 ")
 ;;26
 ;;21,"60505-0134-00 ")
 ;;27
 ;;21,"62991-1533-01 ")
 ;;28
 ;;21,"62991-1533-02 ")
 ;;29
 ;;21,"63370-0057-10 ")
 ;;30
 ;;21,"63370-0057-15 ")
 ;;31
 ;;21,"63370-0057-25 ")
 ;;32
 ;;21,"63370-0057-35 ")
 ;;33
 ;;21,"63370-0057-45 ")
 ;;34
 ;;9002226,538,.01)
 ;;BGP RA CYCLOSPORINE NDC
 ;;9002226,538,.02)
 ;;RA GOLD NDC
 ;;9002226,538,.04)
 ;;n
 ;;9002226,538,.06)
 ;;@
 ;;9002226,538,.08)
 ;;@
 ;;9002226,538,.09)
 ;;3051208
 ;;9002226,538,.11)
 ;;@
 ;;9002226,538,.12)
 ;;@
 ;;9002226,538,.13)
 ;;1
 ;;9002226,538,.14)
 ;;@
 ;;9002226,538,.15)
 ;;@
 ;;9002226,538,.16)
 ;;@
 ;;9002226,538,.17)
 ;;@
 ;;9002226,538,3101)
 ;;@
 ;;9002226.02101,"538,00023-9163-32 ",.01)
 ;;00023-9163-32
 ;;9002226.02101,"538,00023-9163-32 ",.02)
 ;;00023-9163-32
 ;;9002226.02101,"538,00074-6463-32 ",.01)
 ;;00074-6463-32
 ;;9002226.02101,"538,00074-6463-32 ",.02)
 ;;00074-6463-32
 ;;9002226.02101,"538,00074-6479-32 ",.01)
 ;;00074-6479-32
 ;;9002226.02101,"538,00074-6479-32 ",.02)
 ;;00074-6479-32
 ;;9002226.02101,"538,00074-7269-50 ",.01)
 ;;00074-7269-50
 ;;9002226.02101,"538,00074-7269-50 ",.02)
 ;;00074-7269-50
 ;;9002226.02101,"538,00078-0109-01 ",.01)
 ;;00078-0109-01
 ;;9002226.02101,"538,00078-0109-01 ",.02)
 ;;00078-0109-01
 ;;9002226.02101,"538,00078-0110-22 ",.01)
 ;;00078-0110-22
 ;;9002226.02101,"538,00078-0110-22 ",.02)
 ;;00078-0110-22
 ;;9002226.02101,"538,00078-0240-15 ",.01)
 ;;00078-0240-15
 ;;9002226.02101,"538,00078-0240-15 ",.02)
 ;;00078-0240-15
 ;;9002226.02101,"538,00078-0241-15 ",.01)
 ;;00078-0241-15
 ;;9002226.02101,"538,00078-0241-15 ",.02)
 ;;00078-0241-15
 ;;9002226.02101,"538,00078-0246-15 ",.01)
 ;;00078-0246-15
 ;;9002226.02101,"538,00078-0246-15 ",.02)
 ;;00078-0246-15
 ;;9002226.02101,"538,00078-0248-15 ",.01)
 ;;00078-0248-15
 ;;9002226.02101,"538,00078-0248-15 ",.02)
 ;;00078-0248-15
 ;;9002226.02101,"538,00078-0274-22 ",.01)
 ;;00078-0274-22
 ;;9002226.02101,"538,00078-0274-22 ",.02)
 ;;00078-0274-22
 ;;9002226.02101,"538,00185-0932-30 ",.01)
 ;;00185-0932-30
 ;;9002226.02101,"538,00185-0932-30 ",.02)
 ;;00185-0932-30
 ;;9002226.02101,"538,00185-0933-30 ",.01)
 ;;00185-0933-30
 ;;9002226.02101,"538,00185-0933-30 ",.02)
 ;;00185-0933-30
 ;;9002226.02101,"538,38779-0660-03 ",.01)
 ;;38779-0660-03
 ;;9002226.02101,"538,38779-0660-03 ",.02)
 ;;38779-0660-03
 ;;9002226.02101,"538,38779-0660-04 ",.01)
 ;;38779-0660-04
 ;;9002226.02101,"538,38779-0660-04 ",.02)
 ;;38779-0660-04
 ;;9002226.02101,"538,38779-0660-05 ",.01)
 ;;38779-0660-05
 ;;9002226.02101,"538,38779-0660-05 ",.02)
 ;;38779-0660-05
 ;;9002226.02101,"538,38779-0660-06 ",.01)
 ;;38779-0660-06
 ;;9002226.02101,"538,38779-0660-06 ",.02)
 ;;38779-0660-06
 ;;9002226.02101,"538,50111-0885-42 ",.01)
 ;;50111-0885-42
 ;;9002226.02101,"538,50111-0885-42 ",.02)
 ;;50111-0885-42
 ;;9002226.02101,"538,50111-0909-43 ",.01)
 ;;50111-0909-43
 ;;9002226.02101,"538,50111-0909-43 ",.02)
 ;;50111-0909-43
 ;;9002226.02101,"538,50111-0920-43 ",.01)
 ;;50111-0920-43
 ;;9002226.02101,"538,50111-0920-43 ",.02)
 ;;50111-0920-43
 ;;9002226.02101,"538,51552-0663-01 ",.01)
 ;;51552-0663-01
 ;;9002226.02101,"538,51552-0663-01 ",.02)
 ;;51552-0663-01
 ;;9002226.02101,"538,51927-3196-00 ",.01)
 ;;51927-3196-00
 ;;9002226.02101,"538,51927-3196-00 ",.02)
 ;;51927-3196-00
 ;;9002226.02101,"538,54868-4793-00 ",.01)
 ;;54868-4793-00
 ;;9002226.02101,"538,54868-4793-00 ",.02)
 ;;54868-4793-00
 ;;9002226.02101,"538,55390-0122-10 ",.01)
 ;;55390-0122-10
 ;;9002226.02101,"538,55390-0122-10 ",.02)
 ;;55390-0122-10
 ;;9002226.02101,"538,60432-0140-50 ",.01)
 ;;60432-0140-50
 ;;9002226.02101,"538,60432-0140-50 ",.02)
 ;;60432-0140-50
 ;;9002226.02101,"538,60505-0133-00 ",.01)
 ;;60505-0133-00
 ;;9002226.02101,"538,60505-0133-00 ",.02)
 ;;60505-0133-00
 ;;9002226.02101,"538,60505-0134-00 ",.01)
 ;;60505-0134-00
 ;;9002226.02101,"538,60505-0134-00 ",.02)
 ;;60505-0134-00
 ;;9002226.02101,"538,62991-1533-01 ",.01)
 ;;62991-1533-01
 ;;9002226.02101,"538,62991-1533-01 ",.02)
 ;;62991-1533-01
 ;;9002226.02101,"538,62991-1533-02 ",.01)
 ;;62991-1533-02
 ;;9002226.02101,"538,62991-1533-02 ",.02)
 ;;62991-1533-02
 ;;9002226.02101,"538,63370-0057-10 ",.01)
 ;;63370-0057-10
 ;;9002226.02101,"538,63370-0057-10 ",.02)
 ;;63370-0057-10
 ;;9002226.02101,"538,63370-0057-15 ",.01)
 ;;63370-0057-15
 ;;9002226.02101,"538,63370-0057-15 ",.02)
 ;;63370-0057-15
 ;;9002226.02101,"538,63370-0057-25 ",.01)
 ;;63370-0057-25
 ;;9002226.02101,"538,63370-0057-25 ",.02)
 ;;63370-0057-25
 ;;9002226.02101,"538,63370-0057-35 ",.01)
 ;;63370-0057-35
 ;;9002226.02101,"538,63370-0057-35 ",.02)
 ;;63370-0057-35
 ;;9002226.02101,"538,63370-0057-45 ",.01)
 ;;63370-0057-45
 ;;9002226.02101,"538,63370-0057-45 ",.02)
 ;;63370-0057-45
 ;;
 ;;3148
 ;;
 ;;897
 ;;
 ;;3191
 ;;
 ;;3196
 ;;
 ;;3197
 ;;
 ;;3149
 ;;
 ;;3150
 ;;
 ;;3151
 ;;
 ;;3208
 ;;
 ;;3209
 ;;
 ;;3435
 ;;
 ;;3436
 ;;
 ;;584
 ;;
 ;;583
 ;;
 ;;2440
 ;;
 ;;2091
 ;;
 ;;2092
 ;;
 ;;2093
 ;;
 ;;2094
 ;;
 ;;2096
 ;;
 ;;2097
 ;;
 ;;2098
 ;;
 ;;2095
 ;;
 ;;3314
 ;;
 ;;3315
 ;;
 ;;3316
 ;;
 ;;300
 ;;
 ;;298
 ;;
 ;;299
 ;;
 ;;301
 ;;
 ;;3446
 ;;
 ;;3447
 ;;
 ;;3448
 ;;
 ;;3449
 ;;
 ;;3450
 ;;
 ;;3451
 ;;
 ;;3453
 ;;
 ;;3452
 ;;
 ;;296
 ;;
 ;;261
 ;;
 ;;262
 ;;
 ;;263
 ;;
 ;;1223
 ;;
 ;;1224
 ;;
 ;;302
 ;;
 ;;1084
 ;;
 ;;2089
 ;;
 ;;2090
 ;;
 ;;535
 ;;
 ;;536
 ;;
 ;;571
 ;;
 ;;572
 ;;
 ;;2527
 ;;
 ;;58
 ;;
 ;;60
 ;;
 ;;61
 ;;
 ;;63
 ;;
 ;;59
 ;;
 ;;62
 ;;
 ;;1524
 ;;
 ;;1525
 ;;
 ;;826
 ;;
 ;;828
 ;;
 ;;824
 ;;
 ;;825
 ;;
 ;;827
 ;;
 ;;829
 ;;
 ;;2553
 ;;
 ;;2554
 ;;
 ;;2555
 ;;
 ;;2556
 ;;
 ;;2557
 ;;
 ;;2558
 ;;
 ;;2559
 ;;
 ;;2560
 ;;
 ;;844
 ;;
 ;;2985
 ;;
 ;;2986
 ;;
 ;;2987
 ;;
 ;;2988
 ;;
 ;;2989
 ;;
 ;;2990
 ;;
 ;;1581
 ;;
 ;;1582
 ;;
 ;;3401
 ;;
 ;;3402
 ;;
 ;;3400
 ;;
 ;;1374
 ;;
 ;;1375
 ;;
 ;;1376
 ;;
 ;;392
 ;;
 ;;3234
 ;;
 ;;3235
 ;;
 ;;3
 ;;
 ;;4
 ;;
 ;;2911
 ;;
 ;;2912
 ;;
 ;;2913
 ;;
 ;;2914
 ;;
 ;;1115
 ;;
 ;;1116
 ;;
 ;;83
 ;;
 ;;395
 ;;
 ;;393
 ;;
 ;;2371
 ;;
 ;;2372
 ;;
 ;;2373
 ;;
 ;;394
 ;;
 ;;391
 ;;
 ;;1053
 ;;
 ;;2996
 ;;
 ;;2997
 ;;
 ;;2995
 ;;
 ;;1754
 ;;
 ;;611
 ;;
 ;;613
 ;;
 ;;614
 ;;
 ;;616
 ;;
 ;;1109
 ;;
 ;;1110
 ;;
 ;;1111
 ;;
 ;;1112
 ;;
 ;;1113
 ;;
 ;;1114
 ;;
 ;;1538
 ;;
 ;;3229
 ;;
 ;;3230
 ;;
 ;;3231
 ;;
 ;;612
 ;;
 ;;615
 ;;
 ;;1752
 ;;
 ;;1753
 ;;
 ;;3364
 ;;
 ;;3363
 ;;
 ;;2490
 ;;
 ;;2491
 ;;
 ;;345
 ;;
 ;;346
 ;;
 ;;347
 ;;
 ;;343
 ;;
 ;;344
 ;;
 ;;3225
 ;;
 ;;3226
 ;;
 ;;1105
 ;;
 ;;1106
 ;;
 ;;1107
 ;;
 ;;1108
 ;;
 ;;600
 ;;
 ;;601
 ;;
 ;;599
 ;;
 ;;1698
 ;;
 ;;1699
 ;;
 ;;1700
 ;;
 ;;1701
 ;;
 ;;1702
 ;;
 ;;595
 ;;
 ;;596
 ;;
 ;;597
 ;;
 ;;598
 ;;
 ;;246
 ;;
 ;;247
 ;;
 ;;248
 ;;
 ;;249
 ;;
 ;;250
 ;;
 ;;251
 ;;
 ;;334
 ;;
 ;;335
 ;;
 ;;336
 ;;
 ;;337
 ;;
 ;;338
 ;;
 ;;28
 ;;
 ;;1574
 ;;
 ;;1575
 ;;
 ;;1576
 ;;
 ;;624
 ;;
 ;;625
 ;;
 ;;626
 ;;
 ;;627
 ;;
 ;;348
 ;;
 ;;1052
 ;;
 ;;40
 ;;
 ;;2503
 ;;
 ;;2504
 ;;
 ;;928
 ;;
 ;;2507
 ;;
 ;;2508
 ;;
 ;;1539
 ;;
 ;;929
 ;;
 ;;2505
 ;;
 ;;2506
 ;;
 ;;1353
 ;;
 ;;830
 ;;
 ;;349
 ;;
 ;;1354
 ;;
 ;;1355
 ;;
 ;;1090
 ;;
 ;;1
 ;;
 ;;1091
 ;;
 ;;1092
 ;;
 ;;2345
 ;;
 ;;1051
 ;;
 ;;2346
 ;;
 ;;2347
 ;;
 ;;1639
 ;;
 ;;1640
 ;;
 ;;1638
 ;;
 ;;1688
 ;;
 ;;1687
 ;;
 ;;85
 ;;
 ;;86
 ;;
 ;;84
 ;;
 ;;88
 ;;
 ;;89
 ;;
 ;;90
 ;;
 ;;87
 ;;
 ;;91
 ;;
 ;;2568
 ;;
 ;;2569
 ;;
 ;;2991
 ;;
 ;;2992
 ;;
 ;;2993
 ;;
 ;;2994
 ;;
 ;;2565
 ;;
 ;;2566
 ;;
 ;;2567
 ;;
 ;;2131
 ;;
 ;;2132
 ;;
 ;;2127
 ;;
 ;;2128
 ;;
 ;;2129
 ;;
 ;;2130
 ;;
 ;;950
 ;;
 ;;951
 ;;
 ;;948
 ;;
 ;;949
 ;;
 ;;1283
 ;;
 ;;1284
 ;;
 ;;1809
 ;;
 ;;1810
 ;;
 ;;1811
 ;;
 ;;1812
 ;;
 ;;1813
 ;;
 ;;1814
 ;;
 ;;3379
 ;;
 ;;3380
 ;;
 ;;3381
 ;;
 ;;2121
 ;;
 ;;2122
 ;;
 ;;2123
 ;;
 ;;2124
 ;;
 ;;2125
 ;;
 ;;2126
 ;;
 ;;943
 ;;
 ;;944
 ;;
 ;;942
 ;;
 ;;946
 ;;
 ;;947
 ;;
 ;;945
 ;;
 ;;1054
 ;;
 ;;2528
 ;;
 ;;2529
 ;;
 ;;2530
 ;;
 ;;2531
 ;;
 ;;2532
 ;;
 ;;2533
 ;;
 ;;2976
 ;;
 ;;2977
 ;;
 ;;2978
 ;;
 ;;2979
 ;;
 ;;67
 ;;
 ;;2909
 ;;
 ;;2910
 ;;
 ;;64
 ;;
 ;;65
 ;;
 ;;66
 ;;
 ;;2
 ;;
 ;;1757
 ;;
 ;;1755
 ;;
 ;;1756
 ;;
 ;;923
 ;;
 ;;1760
 ;;
 ;;1758
 ;;
 ;;1759
 ;;
 ;;1763
 ;;
 ;;1762
 ;;
 ;;1761
 ;;
 ;;2492
 ;;
 ;;2494
 ;;
 ;;2496
 ;;
 ;;2495
 ;;
 ;;2493
 ;;
 ;;2497
 ;;
 ;;813
 ;;
 ;;815
 ;;
 ;;818
 ;;
 ;;814
 ;;
 ;;816
 ;;
 ;;817
 ;;
 ;;1779
 ;;
 ;;1780
 ;;
 ;;3190
 ;;
 ;;1078
 ;;
 ;;1079
 ;;
 ;;617
 ;;
 ;;618
 ;;
 ;;619
 ;;
 ;;620
 ;;
 ;;2335
 ;;
 ;;2336
 ;;
 ;;2337
 ;;
 ;;2338
 ;;
 ;;621
 ;;
 ;;1087
 ;;
 ;;1088
 ;;
 ;;1089
 ;;
 ;;1764
 ;;
 ;;1765
 ;;
 ;;1766
 ;;
 ;;1767
 ;;
 ;;1347
 ;;
 ;;1348
 ;;
 ;;1349
 ;;
 ;;1571
 ;;
 ;;1572
 ;;
 ;;1573
 ;;
 ;;2964
 ;;
 ;;2965
 ;;
 ;;2966
 ;;
 ;;2499
 ;;
 ;;2500
 ;;
 ;;2501
 ;;
 ;;2498
 ;;
 ;;35
 ;;
 ;;36
 ;;
 ;;37
 ;;
 ;;81
 ;;
 ;;82
 ;;
 ;;3397
 ;;
 ;;3398
 ;;
 ;;3399
 ;;
 ;;1578
 ;;
 ;;1579
 ;;
 ;;1580
 ;;
 ;;1815
 ;;
 ;;1816
 ;;
 ;;1817
 ;;
 ;;1818
 ;;
 ;;1819
 ;;
 ;;641
 ;;
 ;;642
 ;;
 ;;643
 ;;
 ;;2363
 ;;
 ;;2365
 ;;
 ;;2367
 ;;
 ;;2369
 ;;
 ;;2364
 ;;
 ;;2366
 ;;
 ;;2368
 ;;
 ;;2370
 ;;
 ;;841
 ;;
 ;;842
 ;;
 ;;843
 ;;
 ;;840
 ;;
 ;;2538
 ;;
 ;;2534
 ;;
 ;;2535
 ;;
 ;;2536
 ;;
 ;;2537
 ;;
 ;;2984
 ;;
 ;;2981
 ;;
 ;;2982
 ;;
 ;;2980
 ;;
 ;;2983
 ;;
 ;;1371
 ;;
 ;;1372
 ;;
 ;;1373
 ;;
 ;;937
 ;;
 ;;938
 ;;
 ;;939
 ;;
 ;;1083
 ;;
 ;;1081
 ;;
 ;;1082
 ;;
 ;;350
 ;;
 ;;3232
 ;;
 ;;3233
 ;;
 ;;1772
 ;;
 ;;1773
 ;;
 ;;1774
 ;;
 ;;1775
 ;;
 ;;1776
 ;;
 ;;1777
 ;;
 ;;3593
 ;;
 ;;3594
 ;;
 ;;3595
 ;;
 ;;1894
 ;;
 ;;1895
 ;;
 ;;1896
 ;;
 ;;1897
 ;;
 ;;1898
 ;;
 ;;1899
 ;;
 ;;1900
 ;;
 ;;1901
 ;;
 ;;2840
 ;;
 ;;2841
 ;;
 ;;2842
 ;;
 ;;2843
 ;;
 ;;2845
 ;;
 ;;2846
 ;;
 ;;570
 ;;
 ;;515
 ;;
 ;;516
 ;;
 ;;517
 ;;
 ;;518
 ;;
 ;;1912
 ;;
 ;;1902
 ;;
 ;;1903
 ;;
 ;;1904
 ;;
 ;;1905
 ;;
 ;;1906
 ;;
 ;;1907
 ;;
 ;;1908
 ;;
 ;;1909
 ;;
 ;;1910
 ;;
 ;;1911
 ;;
 ;;2839
 ;;
 ;;2834
 ;;
 ;;2835
 ;;
 ;;2836
 ;;
 ;;2837
 ;;
 ;;2838
 ;;
 ;;3110
 ;;
 ;;3111
 ;;
 ;;3112
 ;;
 ;;3113
 ;;
 ;;3114
 ;;
 ;;3115
 ;;
 ;;3354
 ;;
 ;;1487
 ;;
 ;;1488
 ;;
 ;;209
 ;;
 ;;210
 ;;
 ;;211
 ;;
 ;;212
 ;;
 ;;1888
 ;;
 ;;1889
 ;;
 ;;1890
 ;;
 ;;1891
 ;;
 ;;1892
 ;;
 ;;1893
 ;;
 ;;776
 ;;
 ;;777
 ;;
 ;;778
 ;;
 ;;779
 ;;
 ;;1189
 ;;
 ;;1190
 ;;
 ;;1191
 ;;
 ;;1192
 ;;
 ;;1193
 ;;
 ;;1194
 ;;
 ;;1195
 ;;
 ;;1196
 ;;
 ;;1197
 ;;
 ;;3378
 ;;
 ;;1281
 ;;
 ;;1279
 ;;
 ;;1282
 ;;
 ;;1280
 ;;
 ;;885
 ;
OTHER ; OTHER ROUTINES
 D ^BGP09X2
 D ^BGP09X3
 D ^BGP09X4
 D ^BGP09X5
 Q
