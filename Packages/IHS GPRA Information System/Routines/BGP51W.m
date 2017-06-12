BGP51W ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP PQA DIABETES ALL CLASS NDC
 ;
 ; This routine loads Taxonomy BGP PQA DIABETES ALL CLASS NDC
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
 ;;21,"00003-1427-11 ")
 ;;2360
 ;;21,"00003-1428-11 ")
 ;;2361
 ;;21,"00003-4214-11 ")
 ;;2039
 ;;21,"00003-4214-21 ")
 ;;2040
 ;;21,"00003-4215-11 ")
 ;;2041
 ;;21,"00003-4215-21 ")
 ;;2042
 ;;21,"00003-4215-31 ")
 ;;2043
 ;;21,"00003-4215-41 ")
 ;;2044
 ;;21,"00003-4221-11 ")
 ;;2371
 ;;21,"00003-4222-16 ")
 ;;2370
 ;;21,"00003-4223-11 ")
 ;;2372
 ;;21,"00006-0078-61 ")
 ;;2391
 ;;21,"00006-0078-62 ")
 ;;2392
 ;;21,"00006-0078-82 ")
 ;;2393
 ;;21,"00006-0080-61 ")
 ;;2394
 ;;21,"00006-0080-62 ")
 ;;2395
 ;;21,"00006-0080-82 ")
 ;;2396
 ;;21,"00006-0081-31 ")
 ;;2397
 ;;21,"00006-0081-54 ")
 ;;2398
 ;;21,"00006-0081-82 ")
 ;;2399
 ;;21,"00006-0112-28 ")
 ;;2054
 ;;21,"00006-0112-31 ")
 ;;2055
 ;;21,"00006-0112-54 ")
 ;;2056
 ;;21,"00006-0221-01 ")
 ;;2046
 ;;21,"00006-0221-28 ")
 ;;2047
 ;;21,"00006-0221-31 ")
 ;;2048
 ;;21,"00006-0221-54 ")
 ;;2049
 ;;21,"00006-0277-01 ")
 ;;2057
 ;;21,"00006-0277-28 ")
 ;;2058
 ;;21,"00006-0277-31 ")
 ;;2059
 ;;21,"00006-0277-33 ")
 ;;2060
 ;;21,"00006-0277-54 ")
 ;;2061
 ;;21,"00006-0277-82 ")
 ;;2062
 ;;21,"00006-0533-31 ")
 ;;2400
 ;;21,"00006-0533-54 ")
 ;;2401
 ;;21,"00006-0535-31 ")
 ;;2402
 ;;21,"00006-0535-54 ")
 ;;2403
 ;;21,"00006-0537-31 ")
 ;;2404
 ;;21,"00006-0537-54 ")
 ;;2405
 ;;21,"00006-0575-52 ")
 ;;2373
 ;;21,"00006-0575-61 ")
 ;;2374
 ;;21,"00006-0575-62 ")
 ;;2375
 ;;21,"00006-0575-82 ")
 ;;2376
 ;;21,"00006-0577-52 ")
 ;;2387
 ;;21,"00006-0577-61 ")
 ;;2388
 ;;21,"00006-0577-62 ")
 ;;2389
 ;;21,"00006-0577-82 ")
 ;;2390
 ;;21,"00006-0753-31 ")
 ;;2406
 ;;21,"00006-0753-54 ")
 ;;2407
 ;;21,"00006-0753-82 ")
 ;;2408
 ;;21,"00006-0757-31 ")
 ;;2409
 ;;21,"00006-0757-54 ")
 ;;2410
 ;;21,"00006-0757-82 ")
 ;;2411
 ;;21,"00006-0773-31 ")
 ;;2412
 ;;21,"00006-0773-54 ")
 ;;2413
 ;;21,"00006-0773-82 ")
 ;;2414
 ;;21,"00009-0141-01 ")
 ;;724
 ;;21,"00009-0171-05 ")
 ;;910
 ;;21,"00009-0341-01 ")
 ;;919
 ;;21,"00009-0352-01 ")
 ;;938
 ;;21,"00009-0352-04 ")
 ;;939
 ;;21,"00009-3449-01 ")
 ;;960
 ;;21,"00009-3449-03 ")
 ;;961
 ;;21,"00039-0051-10 ")
 ;;649
 ;;21,"00039-0051-50 ")
 ;;650
 ;;21,"00039-0052-10 ")
 ;;734
 ;;21,"00039-0052-70 ")
 ;;735
 ;;21,"00039-0053-05 ")
 ;;618
 ;;21,"00039-0221-10 ")
 ;;35
 ;;21,"00039-0222-10 ")
 ;;63
 ;;21,"00039-0223-10 ")
 ;;125
 ;;21,"00049-0170-01 ")
 ;;510
 ;;21,"00049-0174-02 ")
 ;;549
 ;;21,"00049-0178-07 ")
 ;;607
 ;;21,"00049-0178-08 ")
 ;;608
 ;;21,"00049-1550-66 ")
 ;;547
 ;;21,"00049-1550-73 ")
 ;;548
 ;;21,"00049-1560-66 ")
 ;;605
 ;;21,"00049-1560-73 ")
 ;;606
 ;;21,"00049-1620-30 ")
 ;;509
 ;;21,"00049-4110-66 ")
 ;;346
 ;;21,"00049-4120-66 ")
 ;;490
 ;;21,"00078-0351-05 ")
 ;;1984
 ;;21,"00078-0352-05 ")
 ;;1995
 ;;21,"00087-6060-05 ")
 ;;983
 ;;21,"00087-6060-10 ")
 ;;984
 ;;21,"00087-6063-13 ")
 ;;1798
 ;;21,"00087-6064-13 ")
 ;;1930
 ;;21,"00087-6070-05 ")
 ;;1334
 ;;21,"00087-6071-11 ")
 ;;1553
 ;;21,"00087-6072-11 ")
 ;;2466
 ;;21,"00087-6073-11 ")
 ;;2502
 ;;21,"00087-6074-11 ")
 ;;2561
 ;;21,"00087-6077-31 ")
 ;;2448
 ;;21,"00087-6078-31 ")
 ;;2465
 ;;21,"00093-1048-01 ")
 ;;985
 ;;21,"00093-1048-10 ")
 ;;986
 ;;21,"00093-1048-19 ")
 ;;987
 ;;21,"00093-1048-93 ")
 ;;988
 ;;21,"00093-1048-98 ")
 ;;989
 ;;21,"00093-1049-01 ")
 ;;1396
 ;;21,"00093-1049-10 ")
 ;;1397
 ;;21,"00093-1049-19 ")
 ;;1332
 ;;21,"00093-1049-93 ")
 ;;1333
 ;;21,"00093-1049-98 ")
 ;;1395
 ;;21,"00093-2046-05 ")
 ;;2266
 ;;21,"00093-2046-56 ")
 ;;2267
 ;;21,"00093-2046-98 ")
 ;;2268
 ;;21,"00093-2047-05 ")
 ;;2197
 ;;21,"00093-2047-56 ")
 ;;2198
 ;;21,"00093-2047-98 ")
 ;;2199
 ;;21,"00093-2048-05 ")
 ;;2115
 ;;21,"00093-2048-56 ")
 ;;2116
 ;;21,"00093-2048-98 ")
 ;;2117
 ;;21,"00093-5049-06 ")
 ;;2656
 ;;21,"00093-5049-86 ")
 ;;2657
 ;;21,"00093-5050-06 ")
 ;;2671
 ;;21,"00093-5050-86 ")
 ;;2672
 ;;21,"00093-5710-01 ")
 ;;2481
 ;;21,"00093-5710-05 ")
 ;;2482
 ;;21,"00093-5710-19 ")
 ;;2495
 ;;21,"00093-5710-83 ")
 ;;2496
 ;;21,"00093-5710-93 ")
 ;;2499
 ;;21,"00093-5711-01 ")
 ;;2533
 ;;21,"00093-5711-05 ")
 ;;2534
 ;;21,"00093-5711-19 ")
 ;;2535
 ;;21,"00093-5711-93 ")
 ;;2536
 ;;21,"00093-5712-01 ")
 ;;2635
 ;;21,"00093-5712-05 ")
 ;;2636
 ;;21,"00093-5712-19 ")
 ;;2637
 ;;21,"00093-5712-93 ")
 ;;2638
 ;;21,"00093-7212-01 ")
 ;;1956
 ;;21,"00093-7214-01 ")
 ;;1699
 ;;21,"00093-7214-10 ")
 ;;1700
 ;;21,"00093-7214-98 ")
 ;;1701
 ;;21,"00093-7254-01 ")
 ;;49
 ;;21,"00093-7255-01 ")
 ;;124
 ;;21,"00093-7256-01 ")
 ;;173
 ;;21,"00093-7256-52 ")
 ;;174
 ;;21,"00093-7261-05 ")
 ;;2537
 ;;21,"00093-7262-05 ")
 ;;2634
 ;;21,"00093-7267-01 ")
 ;;1912
 ;;21,"00093-7267-10 ")
 ;;1913
 ;;21,"00093-7455-01 ")
 ;;2423
 ;;21,"00093-7456-01 ")
 ;;2447
 ;;21,"00093-7457-01 ")
 ;;2459
 ;;21,"00093-8034-01 ")
 ;;916
 ;;21,"00093-8035-01 ")
 ;;934
 ;;21,"00093-8035-05 ")
 ;;935
 ;;21,"00093-8036-01 ")
 ;;953
 ;;21,"00093-8342-01 ")
 ;;646
 ;;21,"00093-8343-01 ")
 ;;714
 ;;21,"00093-8343-05 ")
 ;;715
 ;;21,"00093-8343-10 ")
 ;;716
 ;;21,"00093-8343-98 ")
 ;;717
 ;;21,"00093-8344-01 ")
 ;;876
 ;;21,"00093-8344-05 ")
 ;;877
 ;;21,"00093-8344-10 ")
 ;;878
 ;;21,"00093-8344-19 ")
 ;;879
 ;;21,"00093-8344-93 ")
 ;;880
 ;;21,"00093-8344-98 ")
 ;;881
 ;;21,"00093-9364-01 ")
 ;;882
 ;;21,"00093-9364-05 ")
 ;;883
 ;;21,"00093-9364-10 ")
 ;;884
 ;;21,"00093-9433-01 ")
 ;;718
 ;;21,"00093-9433-05 ")
 ;;719
 ;;21,"00093-9477-53 ")
 ;;645
 ;;21,"00143-9918-01 ")
 ;;917
 ;;21,"00143-9919-01 ")
 ;;932
 ;;21,"00143-9919-05 ")
 ;;933
 ;;21,"00143-9920-01 ")
 ;;954
 ;;21,"00143-9920-05 ")
 ;;955
 ;;21,"00143-9920-10 ")
 ;;956
 ;;21,"00169-0081-81 ")
 ;;1998
 ;;21,"00169-0081-83 ")
 ;;1996
 ;;21,"00169-0082-81 ")
 ;;2007
 ;;21,"00169-0082-83 ")
 ;;2006
 ;;21,"00169-0084-81 ")
 ;;2021
 ;;21,"00169-0084-83 ")
 ;;2022
 ;;21,"00169-0092-01 ")
 ;;2422
 ;;21,"00169-0093-01 ")
 ;;2421
 ;;21,"00169-4060-12 ")
 ;;12
 ;;21,"00169-4060-13 ")
 ;;13
 ;;21,"00172-3649-00 ")
 ;;235
 ;;21,"00172-3649-10 ")
 ;;236
 ;;21,"00172-3649-60 ")
 ;;237
 ;;21,"00172-3649-70 ")
 ;;238
 ;;21,"00172-3650-00 ")
 ;;376
 ;;21,"00172-3650-10 ")
 ;;377
 ;;21,"00172-3650-60 ")
 ;;378
 ;;21,"00172-3650-70 ")
 ;;379
 ;;21,"00173-0834-18 ")
 ;;2303
 ;;21,"00173-0835-13 ")
 ;;2339
 ;;21,"00173-0836-13 ")
 ;;2341
 ;;21,"00173-0837-18 ")
 ;;2685
 ;;21,"00173-0838-18 ")
 ;;2686
 ;;21,"00173-0839-18 ")
 ;;2692
 ;;21,"00173-0840-18 ")
 ;;2693
 ;;21,"00173-0841-13 ")
 ;;2643
 ;;21,"00173-0842-13 ")
 ;;2644
 ;;21,"00173-0843-13 ")
 ;;2645
 ;;21,"00173-0844-13 ")
 ;;2647
 ;;21,"00173-0845-13 ")
 ;;2648
 ;;21,"00173-0866-35 ")
 ;;1
 ;;21,"00173-0867-35 ")
 ;;2
 ;;21,"00182-2646-89 ")
 ;;720
 ;;21,"00185-0213-01 ")
 ;;1190
 ;;21,"00185-0213-05 ")
 ;;1191
 ;;21,"00185-0215-01 ")
 ;;1545
 ;;21,"00185-0215-05 ")
 ;;1546
 ;;21,"00185-0221-01 ")
 ;;1694
 ;;21,"00185-0221-05 ")
 ;;1695
 ;;21,"00185-4416-01 ")
 ;;1916
 ;;21,"00185-4416-05 ")
 ;;1917
 ;;21,"00228-2751-11 ")
 ;;2493
 ;;21,"00228-2751-50 ")
 ;;2494
 ;;21,"00228-2752-11 ")
 ;;2538
 ;;21,"00228-2752-50 ")
 ;;2539
 ;;21,"00228-2753-11 ")
 ;;2632
 ;;21,"00228-2753-50 ")
 ;;2633
 ;;21,"00228-2898-03 ")
 ;;500
 ;;21,"00228-2899-10 ")
 ;;531
 ;;21,"00228-2899-50 ")
 ;;532
 ;;21,"00228-2899-96 ")
 ;;533
 ;;21,"00228-2900-10 ")
 ;;563
 ;;21,"00228-2900-11 ")
 ;;564
 ;;21,"00228-2900-50 ")
 ;;565
 ;;21,"00228-2900-96 ")
 ;;566
 ;;21,"00378-0048-05 ")
 ;;2149
 ;;21,"00378-0048-77 ")
 ;;2150
 ;;21,"00378-0048-93 ")
 ;;2151
 ;;21,"00378-0197-01 ")
 ;;14
 ;;21,"00378-0197-05 ")
 ;;15
 ;;21,"00378-0210-01 ")
 ;;33
 ;;21,"00378-0210-10 ")
 ;;34
 ;;21,"00378-0215-01 ")
 ;;970
 ;;21,"00378-0215-05 ")
 ;;971
 ;;21,"00378-0217-01 ")
 ;;965
 ;;21,"00378-0228-05 ")
 ;;2221
 ;;21,"00378-0228-77 ")
 ;;2222
 ;;21,"00378-0228-93 ")
 ;;2223
 ;;21,"00378-0234-01 ")
 ;;1195
 ;;21,"00378-0234-05 ")
 ;;1196
 ;;21,"00378-0240-01 ")
 ;;1541
 ;;21,"00378-0244-01 ")
 ;;1698
 ;;21,"00378-0318-05 ")
 ;;2296
 ;;21,"00378-0318-77 ")
 ;;2297
 ;;21,"00378-0318-93 ")
 ;;2298
 ;;21,"00378-0350-01 ")
 ;;1955
 ;;21,"00378-0352-01 ")
 ;;1914
 ;;21,"00378-0352-05 ")
 ;;1915
 ;;21,"00378-0551-01 ")
 ;;969
 ;;21,"00378-1105-01 ")
 ;;239
 ;;21,"00378-1105-05 ")
 ;;240
 ;;21,"00378-1110-01 ")
 ;;374
 ;;21,"00378-1110-05 ")
 ;;375
 ;;21,"00378-1113-01 ")
 ;;918
 ;;21,"00378-1125-01 ")
 ;;930
 ;;21,"00378-1125-10 ")
 ;;931
 ;;21,"00378-1142-01 ")
 ;;957
 ;;21,"00378-1550-91 ")
 ;;2658
 ;;21,"00378-1575-91 ")
 ;;2676
 ;;21,"00378-3121-01 ")
 ;;2000
 ;;21,"00378-3121-05 ")
 ;;2001
 ;;21,"00378-3122-01 ")
 ;;2009
 ;;21,"00378-3123-01 ")
 ;;2024
 ;;21,"00378-3131-01 ")
 ;;2424
 ;;21,"00378-3132-01 ")
 ;;2446
 ;;21,"00378-3133-01 ")
 ;;2460
 ;;21,"00378-4011-01 ")
 ;;50
 ;;21,"00378-4012-01 ")
 ;;123
 ;;21,"00378-4013-01 ")
 ;;175
 ;;21,"00378-7185-05 ")
 ;;1203
 ;;21,"00378-7186-05 ")
 ;;1538
 ;;21,"00378-7187-05 ")
 ;;1704
 ;;21,"00406-2028-01 ")
 ;;1192
 ;;21,"00406-2028-05 ")
 ;;1193
 ;;21,"00406-2028-10 ")
 ;;1194
 ;;21,"00406-2029-01 ")
 ;;1542
 ;;21,"00406-2029-05 ")
 ;;1543
 ;;21,"00406-2029-10 ")
 ;;1544
 ;;21,"00406-2030-05 ")
 ;;1696
 ;;21,"00406-2030-10 ")
 ;;1697
 ;;21,"00440-7565-14 ")
 ;;228
 ;;21,"00440-7565-30 ")
 ;;229
 ;;21,"00440-7565-60 ")
 ;;230
 ;;21,"00440-7565-90 ")
 ;;231
 ;;21,"00440-7566-30 ")
 ;;383
 ;;21,"00440-7566-60 ")
 ;;384
 ;;21,"00440-7566-90 ")
 ;;385
 ;;21,"00440-7566-91 ")
 ;;386
 ;;21,"00440-7566-92 ")
 ;;387
 ;;21,"00440-7568-90 ")
 ;;534
 ;;21,"00440-7568-92 ")
 ;;535
 ;;21,"00440-7569-90 ")
 ;;561
 ;;21,"00440-7569-92 ")
 ;;562
 ;;21,"00440-7570-20 ")
 ;;713
 ;;21,"00440-7571-14 ")
 ;;868
 ;;21,"00440-7571-30 ")
 ;;869
 ;;21,"00440-7571-60 ")
 ;;870
 ;;21,"00440-7571-90 ")
 ;;871
 ;;21,"00440-7571-91 ")
 ;;872
 ;;21,"00440-7571-92 ")
 ;;873
 ;;21,"00440-7571-94 ")
 ;;874
 ;;21,"00440-7571-95 ")
 ;;875
 ;;21,"00440-7585-90 ")
 ;;2492
 ;;21,"00440-7587-90 ")
 ;;2540
 ;;21,"00440-7589-90 ")
 ;;2630
 ;;21,"00440-7589-95 ")
 ;;2631
 ;;21,"00440-7739-14 ")
 ;;1197
 ;;21,"00440-7739-60 ")
 ;;1198
 ;;21,"00440-7739-90 ")
 ;;1199
 ;;21,"00440-7739-92 ")
 ;;1200
 ;;21,"00440-7739-94 ")
 ;;1201
 ;;21,"00440-7739-95 ")
 ;;1202
 ;;21,"00440-7745-90 ")
 ;;1539
 ;;21,"00440-7745-92 ")
 ;;1540
 ;;21,"00440-7746-90 ")
 ;;1702
 ;;21,"00440-7746-92 ")
 ;;1703
 ;;21,"00440-7748-90 ")
 ;;1910
 ;;21,"00440-7748-92 ")
 ;;1911
 ;;21,"00574-0240-01 ")
 ;;2002
 ;;21,"00574-0241-01 ")
 ;;2011
 ;;21,"00574-0242-01 ")
 ;;2025
 ;;21,"00591-0460-01 ")
 ;;232
 ;;21,"00591-0460-05 ")
 ;;233
 ;;21,"00591-0460-10 ")
 ;;234
 ;;21,"00591-0461-01 ")
 ;;380
 ;;21,"00591-0461-05 ")
 ;;381
 ;;21,"00591-0461-10 ")
 ;;382
 ;;21,"00591-0844-01 ")
 ;;536
 ;;21,"00591-0844-10 ")
 ;;537
 ;;21,"00591-0844-15 ")
 ;;538
 ;;21,"00591-0845-01 ")
 ;;558
 ;;21,"00591-0845-10 ")
 ;;559
 ;;21,"00591-0845-15 ")
 ;;560
 ;;21,"00591-0900-30 ")
 ;;499
 ;;21,"00591-2719-60 ")
 ;;1966
 ;;21,"00591-2720-60 ")
 ;;1970
 ;;21,"00591-3205-05 ")
 ;;2143
 ;;21,"00591-3205-19 ")
 ;;2144
 ;;21,"00591-3205-30 ")
 ;;2145
 ;;21,"00591-3206-05 ")
 ;;2227
 ;;21,"00591-3206-19 ")
 ;;2228
 ;;21,"00591-3206-30 ")
 ;;2229
 ;;21,"00591-3207-05 ")
 ;;2290
 ;;21,"00591-3207-19 ")
 ;;2291
 ;;21,"00591-3207-30 ")
 ;;2292
 ;;21,"00591-3354-01 ")
 ;;1980
 ;;21,"00591-3355-01 ")
 ;;1990
 ;;21,"00591-3971-01 ")
 ;;2425
 ;;21,"00591-3972-01 ")
 ;;2445
 ;;21,"00591-3973-01 ")
 ;;2461
 ;;21,"00597-0140-30 ")
 ;;2036
 ;;21,"00597-0140-61 ")
 ;;2037
 ;;21,"00597-0140-90 ")
 ;;2038
 ;;21,"00597-0146-18 ")
 ;;2364
 ;;21,"00597-0146-60 ")
 ;;2365
 ;;21,"00597-0147-18 ")
 ;;2366
 ;;21,"00597-0147-60 ")
 ;;2367
 ;;21,"00597-0148-18 ")
 ;;2368
 ;;21,"00597-0148-60 ")
 ;;2369
 ;;21,"00603-3744-21 ")
 ;;51
 ;;21,"00603-3744-28 ")
 ;;52
 ;;21,"00603-3745-21 ")
 ;;121
 ;;21,"00603-3745-28 ")
 ;;122
 ;;21,"00603-3746-21 ")
 ;;176
 ;;21,"00603-3746-28 ")
 ;;177
 ;;21,"00603-4467-21 ")
 ;;1204
 ;;21,"00603-4467-28 ")
 ;;1205
 ;;21,"00603-4467-32 ")
 ;;1206
 ;;21,"00603-4468-21 ")
 ;;1535
 ;;21,"00603-4468-28 ")
 ;;1536
 ;;21,"00603-4468-32 ")
 ;;1537
 ;;21,"00603-4469-21 ")
 ;;1705
 ;;21,"00603-4469-28 ")
 ;;1706
 ;;21,"00603-4469-32 ")
 ;;1707
 ;;21,"00781-1146-01 ")
 ;;723
 ;;21,"00781-1191-01 ")
 ;;732
 ;;21,"00781-1191-10 ")
 ;;733
 ;;21,"00781-1452-01 ")
 ;;225
 ;;21,"00781-1452-10 ")
 ;;226
 ;;21,"00781-1453-01 ")
 ;;388
 ;;21,"00781-1453-10 ")
 ;;389
 ;
OTHER ; OTHER ROUTINES
 D ^BGP51W10
 D ^BGP51W11
 D ^BGP51W12
 D ^BGP51W13
 D ^BGP51W14
 D ^BGP51W15
 D ^BGP51W16
 D ^BGP51W17
 D ^BGP51W18
 D ^BGP51W19
 D ^BGP51W2
 D ^BGP51W20
 D ^BGP51W21
 D ^BGP51W22
 D ^BGP51W23
 D ^BGP51W24
 D ^BGP51W25
 D ^BGP51W26
 D ^BGP51W27
 D ^BGP51W28
 D ^BGP51W29
 D ^BGP51W3
 D ^BGP51W30
 D ^BGP51W31
 D ^BGP51W32
 D ^BGP51W4
 D ^BGP51W5
 D ^BGP51W6
 D ^BGP51W7
 D ^BGP51W8
 D ^BGP51W9
 Q
