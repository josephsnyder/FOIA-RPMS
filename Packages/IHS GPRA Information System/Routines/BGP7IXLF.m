BGP7IXLF ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 11, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55154-5211-00 ")
 ;;46
 ;;21,"55154-5211-07 ")
 ;;47
 ;;21,"55154-5405-07 ")
 ;;352
 ;;21,"55154-5411-07 ")
 ;;48
 ;;21,"55154-5511-00 ")
 ;;49
 ;;21,"55154-5511-07 ")
 ;;50
 ;;21,"55154-5512-00 ")
 ;;353
 ;;21,"55154-5512-07 ")
 ;;354
 ;;21,"55154-5538-07 ")
 ;;648
 ;;21,"55160-0106-01 ")
 ;;649
 ;;21,"55160-0106-10 ")
 ;;650
 ;;21,"55160-0107-01 ")
 ;;651
 ;;21,"55160-0107-10 ")
 ;;652
 ;;21,"55160-0108-01 ")
 ;;653
 ;;21,"55160-0108-10 ")
 ;;654
 ;;21,"55160-0109-01 ")
 ;;655
 ;;21,"55160-0109-05 ")
 ;;656
 ;;21,"55160-0109-10 ")
 ;;657
 ;;21,"55160-0118-01 ")
 ;;442
 ;;21,"55160-0119-01 ")
 ;;443
 ;;21,"55160-0119-10 ")
 ;;444
 ;;21,"55160-0120-01 ")
 ;;445
 ;;21,"55160-0120-10 ")
 ;;446
 ;;21,"55160-0132-01 ")
 ;;488
 ;;21,"55160-0133-01 ")
 ;;489
 ;;21,"55175-0159-00 ")
 ;;447
 ;;21,"55175-0470-00 ")
 ;;658
 ;;21,"55175-0470-03 ")
 ;;659
 ;;21,"55175-0471-06 ")
 ;;846
 ;;21,"55175-1163-00 ")
 ;;355
 ;;21,"55175-1441-00 ")
 ;;183
 ;;21,"55175-1600-00 ")
 ;;891
 ;;21,"55175-1601-00 ")
 ;;1123
 ;;21,"55175-1601-05 ")
 ;;1124
 ;;21,"55175-1602-06 ")
 ;;660
 ;;21,"55175-3960-09 ")
 ;;138
 ;;21,"55175-4409-03 ")
 ;;264
 ;;21,"55175-4447-06 ")
 ;;892
 ;;21,"55175-4448-01 ")
 ;;986
 ;;21,"55175-4448-03 ")
 ;;987
 ;;21,"55175-4448-06 ")
 ;;988
 ;;21,"55175-5200-01 ")
 ;;1258
 ;;21,"55289-0093-30 ")
 ;;2304
 ;;21,"55289-0093-97 ")
 ;;2305
 ;;21,"55289-0096-50 ")
 ;;2287
 ;;21,"55289-0097-30 ")
 ;;2403
 ;;21,"55289-0131-97 ")
 ;;2452
 ;;21,"55289-0171-30 ")
 ;;2306
 ;;21,"55289-0227-30 ")
 ;;2312
 ;;21,"55289-0227-97 ")
 ;;2313
 ;;21,"55289-0228-01 ")
 ;;2418
 ;;21,"55289-0228-03 ")
 ;;2419
 ;;21,"55289-0228-14 ")
 ;;184
 ;;21,"55289-0228-30 ")
 ;;2420
 ;;21,"55289-0228-60 ")
 ;;2421
 ;;21,"55289-0228-97 ")
 ;;2422
 ;;21,"55289-0233-01 ")
 ;;2409
 ;;21,"55289-0233-10 ")
 ;;2410
 ;;21,"55289-0233-90 ")
 ;;2411
 ;;21,"55289-0233-97 ")
 ;;2412
 ;;21,"55289-0234-01 ")
 ;;2316
 ;;21,"55289-0234-30 ")
 ;;2317
 ;;21,"55289-0234-60 ")
 ;;2318
 ;;21,"55289-0234-90 ")
 ;;2319
 ;;21,"55289-0254-30 ")
 ;;2429
 ;;21,"55289-0413-01 ")
 ;;2307
 ;;21,"55289-0413-28 ")
 ;;356
 ;;21,"55289-0413-30 ")
 ;;2308
 ;;21,"55289-0413-90 ")
 ;;2309
 ;;21,"55289-0413-97 ")
 ;;2310
 ;;21,"55289-0416-97 ")
 ;;2311
 ;;21,"55289-0485-30 ")
 ;;2314
 ;;21,"55289-0587-30 ")
 ;;2346
 ;;21,"55289-0627-30 ")
 ;;2347
 ;;21,"55289-0630-30 ")
 ;;1099
 ;;21,"55289-0653-30 ")
 ;;2315
 ;;21,"55289-0855-30 ")
 ;;243
 ;;21,"55289-0988-30 ")
 ;;2360
 ;;21,"55289-0993-30 ")
 ;;2458
 ;;21,"55306-0080-01 ")
 ;;764
 ;;21,"55306-0207-01 ")
 ;;448
 ;;21,"55306-0244-01 ")
 ;;1259
 ;;21,"55306-0422-01 ")
 ;;661
 ;;21,"55306-0424-01 ")
 ;;662
 ;;21,"55306-0752-01 ")
 ;;1260
 ;;21,"55370-0122-07 ")
 ;;2404
 ;;21,"55370-0122-09 ")
 ;;2405
 ;;21,"55370-0124-07 ")
 ;;2334
 ;;21,"55370-0820-07 ")
 ;;2342
 ;;21,"55370-0820-08 ")
 ;;2343
 ;;21,"55370-0821-07 ")
 ;;2344
 ;;21,"55370-0821-08 ")
 ;;2345
 ;;21,"55567-0015-00 ")
 ;;490
 ;;21,"55567-0015-35 ")
 ;;491
 ;;21,"55567-0016-00 ")
 ;;492
 ;;21,"55567-0016-35 ")
 ;;493
 ;;21,"55567-0025-06 ")
 ;;51
 ;;21,"55567-0025-18 ")
 ;;52
 ;;21,"55567-0025-35 ")
 ;;53
 ;;21,"55567-0057-00 ")
 ;;998
 ;;21,"55567-0057-18 ")
 ;;999
 ;;21,"55567-0057-35 ")
 ;;1000
 ;;21,"55567-0058-00 ")
 ;;1001
 ;;21,"55567-0058-18 ")
 ;;1002
 ;;21,"55567-0058-35 ")
 ;;1003
 ;;21,"55567-0059-00 ")
 ;;1004
 ;;21,"55567-0059-06 ")
 ;;1005
 ;;21,"55567-0059-18 ")
 ;;1006
 ;;21,"55567-0059-35 ")
 ;;1007
 ;;21,"55567-0076-00 ")
 ;;1008
 ;;21,"55567-0076-06 ")
 ;;1009
 ;;21,"55567-0076-18 ")
 ;;1010
 ;;21,"55567-0076-35 ")
 ;;1011
 ;;21,"55567-0089-00 ")
 ;;2911
 ;;21,"55567-0090-00 ")
 ;;2912
 ;;21,"55806-0315-03 ")
 ;;185
 ;;21,"55806-0315-05 ")
 ;;186
 ;;21,"55806-0316-03 ")
 ;;54
 ;;21,"55806-0316-05 ")
 ;;55
 ;;21,"55806-0325-03 ")
 ;;503
 ;;21,"55806-0326-03 ")
 ;;494
 ;;21,"55829-0451-10 ")
 ;;2380
 ;;21,"55829-0452-10 ")
 ;;2545
 ;;21,"55829-0453-10 ")
 ;;2381
 ;;21,"55829-0454-10 ")
 ;;2353
 ;;21,"55829-0455-10 ")
 ;;2354
 ;;21,"55887-0191-30 ")
 ;;732
 ;;21,"55887-0191-60 ")
 ;;733
 ;;21,"55887-0191-90 ")
 ;;734
 ;;21,"55887-0192-30 ")
 ;;941
 ;;21,"55887-0192-60 ")
 ;;942
 ;;21,"55887-0192-90 ")
 ;;943
 ;;21,"55887-0259-30 ")
 ;;1261
 ;;21,"55887-0259-60 ")
 ;;1262
 ;;21,"55887-0259-82 ")
 ;;1263
 ;;21,"55887-0259-90 ")
 ;;1264
 ;;21,"55887-0348-30 ")
 ;;2993
 ;;21,"55887-0348-60 ")
 ;;2994
 ;;21,"55887-0348-90 ")
 ;;2995
 ;;21,"55887-0349-30 ")
 ;;2990
 ;;21,"55887-0349-60 ")
 ;;2991
 ;;21,"55887-0349-90 ")
 ;;2992
 ;;21,"55887-0401-30 ")
 ;;3027
 ;;21,"55887-0453-30 ")
 ;;3023
 ;;21,"55887-0453-60 ")
 ;;3024
 ;;21,"55887-0453-82 ")
 ;;3025
 ;;21,"55887-0453-90 ")
 ;;3026
 ;;21,"55887-0474-30 ")
 ;;2977
 ;;21,"55887-0474-60 ")
 ;;2978
 ;;21,"55887-0474-90 ")
 ;;2979
 ;;21,"55887-0559-30 ")
 ;;3005
 ;;21,"55887-0559-60 ")
 ;;3006
 ;;21,"55887-0559-82 ")
 ;;3007
 ;;21,"55887-0559-90 ")
 ;;3008
 ;;21,"55887-0599-30 ")
 ;;2929
 ;;21,"55887-0599-60 ")
 ;;2930
 ;;21,"55887-0599-82 ")
 ;;2931
 ;;21,"55887-0599-90 ")
 ;;2932
 ;;21,"55887-0838-30 ")
 ;;2946
 ;;21,"55887-0838-60 ")
 ;;2947
 ;;21,"55887-0838-82 ")
 ;;2948
 ;;21,"55887-0838-90 ")
 ;;2949
 ;;21,"55887-0998-30 ")
 ;;56
 ;;21,"55887-0998-60 ")
 ;;2920
 ;;21,"55887-0998-82 ")
 ;;2921
 ;;21,"55887-0998-90 ")
 ;;2922
 ;;21,"55953-0039-40 ")
 ;;2554
 ;;21,"55953-0039-80 ")
 ;;2555
 ;;21,"55953-0088-40 ")
 ;;2348
 ;;21,"55953-0088-70 ")
 ;;2349
 ;;21,"55953-0093-40 ")
 ;;2350
 ;;21,"55953-0093-70 ")
 ;;2351
 ;;21,"55953-0401-40 ")
 ;;2352
 ;;21,"55953-0727-40 ")
 ;;2444
 ;;21,"55953-0727-70 ")
 ;;2445
 ;;21,"55953-0727-80 ")
 ;;2446
 ;;21,"55953-0734-40 ")
 ;;2447
 ;;21,"55953-0734-70 ")
 ;;2448
 ;;21,"55953-0734-80 ")
 ;;2449
 ;;21,"55953-0961-40 ")
 ;;2467
 ;;21,"55953-0972-01 ")
 ;;1031
 ;;21,"55953-0972-40 ")
 ;;2468
 ;;21,"55953-0972-70 ")
 ;;1032
 ;;21,"55953-0984-40 ")
 ;;2469
 ;;21,"56126-0321-11 ")
 ;;2490
 ;;21,"56126-0322-11 ")
 ;;2408
 ;;21,"56126-0323-11 ")
 ;;2491
 ;;21,"56126-0324-11 ")
 ;;2470
 ;;21,"56126-0392-11 ")
 ;;2471
 ;;21,"57315-0025-04 ")
 ;;2913
 ;;21,"57315-0026-04 ")
 ;;2914
 ;;21,"57480-0355-01 ")
 ;;2595
 ;;21,"57480-0355-06 ")
 ;;2596
 ;;21,"57480-0356-01 ")
 ;;2696
 ;;21,"57480-0356-06 ")
 ;;2697
 ;;21,"57480-0357-01 ")
 ;;2597
 ;;21,"57480-0357-06 ")
 ;;2598
 ;;21,"57480-0446-01 ")
 ;;2724
 ;;21,"57480-0446-06 ")
 ;;2725
 ;;21,"57480-0447-01 ")
 ;;2565
 ;;21,"57480-0447-06 ")
 ;;2566
 ;;21,"57480-0802-01 ")
 ;;2494
 ;;21,"57480-0802-06 ")
 ;;2495
 ;;21,"57480-0803-01 ")
 ;;2496
 ;;21,"57480-0803-06 ")
 ;;265
 ;;21,"57480-0810-01 ")
 ;;2567
 ;;21,"57480-0811-01 ")
 ;;2568
 ;;21,"57664-0166-08 ")
 ;;2497
 ;;21,"57664-0166-18 ")
 ;;2498
 ;;21,"57664-0167-08 ")
 ;;2499
 ;;21,"57664-0167-18 ")
 ;;2500
 ;;21,"57664-0477-08 ")
 ;;2501
 ;;21,"57664-0477-18 ")
 ;;2502
 ;;21,"57664-0506-08 ")
 ;;2569
 ;;21,"57664-0506-18 ")
 ;;2570
 ;;21,"57866-0191-02 ")
 ;;847
 ;;21,"57866-0219-01 ")
 ;;187
 ;;21,"57866-0251-01 ")
 ;;2980
 ;;21,"57866-3330-01 ")
 ;;2726
 ;;21,"57866-3330-03 ")
 ;;2727
 ;;21,"57866-3330-05 ")
 ;;188
 ;;21,"57866-3331-01 ")
 ;;2571
 ;;21,"57866-3331-02 ")
 ;;2572
 ;;21,"57866-3331-03 ")
 ;;57
 ;;21,"57866-3332-01 ")
 ;;2613
 ;;21,"57866-3332-02 ")
 ;;58
 ;;21,"57866-3332-03 ")
 ;;139
 ;;21,"57866-4309-01 ")
 ;;2609
 ;;21,"57866-4309-02 ")
 ;;663
 ;;21,"57866-4309-03 ")
 ;;664
 ;;21,"57866-4313-01 ")
 ;;2750
 ;;21,"57866-4313-02 ")
 ;;665
 ;;21,"57866-4313-04 ")
 ;;848
 ;;21,"57866-4314-01 ")
 ;;2610
 ;;21,"57866-4314-02 ")
 ;;666
 ;;21,"57866-4315-01 ")
 ;;2516
 ;;21,"57866-4316-00 ")
 ;;667
 ;;21,"57866-4316-01 ")
 ;;2517
 ;;21,"57866-4911-01 ")
 ;;2518
 ;;21,"57866-4912-01 ")
 ;;2519
 ;;21,"57866-4913-01 ")
 ;;2520
 ;;21,"57866-4914-01 ")
 ;;2611
 ;;21,"57866-6337-01 ")
 ;;2730
 ;;21,"57866-6338-01 ")
 ;;2731
 ;;21,"57866-6339-01 ")
 ;;2607
 ;;21,"57866-6578-00 ")
 ;;357
 ;;21,"57866-6578-01 ")
 ;;2503
 ;;21,"57866-6578-02 ")
 ;;358
 ;;21,"57866-6578-03 ")
 ;;359
 ;;21,"57866-6578-05 ")
 ;;360
 ;;21,"57866-6579-01 ")
 ;;2504
 ;;21,"57866-6579-02 ")
 ;;361
 ;;21,"57866-6580-01 ")
 ;;362
 ;;21,"57866-6581-01 ")
 ;;363
 ;;21,"57866-6622-01 ")
 ;;2359
 ;;21,"57866-6623-01 ")
 ;;2430
 ;;21,"57866-9032-01 ")
 ;;2320
 ;;21,"57866-9032-02 ")
 ;;2321
 ;;21,"57866-9032-03 ")
 ;;2322
 ;;21,"57866-9032-04 ")
 ;;2323
 ;;21,"57866-9033-01 ")
 ;;2324
 ;;21,"57866-9033-02 ")
 ;;2325
 ;;21,"57866-9033-03 ")
 ;;2326
 ;;21,"57866-9033-04 ")
 ;;2327
 ;;21,"57866-9034-01 ")
 ;;2328
 ;;21,"57866-9034-02 ")
 ;;2329
 ;;21,"57866-9034-03 ")
 ;;2330
 ;;21,"57866-9034-04 ")
 ;;2331
 ;;21,"57866-9803-01 ")
 ;;189
 ;;21,"57866-9803-02 ")
 ;;2950
 ;;21,"58016-0136-00 ")
 ;;2355
 ;;21,"58016-0136-30 ")
 ;;2356
 ;;21,"58016-0331-00 ")
 ;;1072
 ;;21,"58016-0331-60 ")
 ;;1073
 ;;21,"58016-0331-90 ")
 ;;1074
 ;;21,"58016-0332-00 ")
 ;;59
 ;;21,"58016-0332-30 ")
 ;;60
 ;;21,"58016-0333-00 ")
 ;;2556
 ;;21,"58016-0333-15 ")
 ;;2557
 ;;21,"58016-0333-30 ")
 ;;2558
 ;;21,"58016-0333-60 ")
 ;;2559
 ;;21,"58016-0373-00 ")
 ;;244
 ;;21,"58016-0373-02 ")
 ;;245
 ;;21,"58016-0373-90 ")
 ;;246
 ;;21,"58016-0467-30 ")
 ;;2389
 ;;21,"58016-0526-00 ")
 ;;2661
 ;;21,"58016-0526-02 ")
 ;;2662
 ;;21,"58016-0526-30 ")
 ;;2663
 ;;21,"58016-0526-60 ")
 ;;2664
 ;;21,"58016-0526-90 ")
 ;;2665
 ;;21,"58016-0528-00 ")
 ;;2390
 ;;21,"58016-0528-15 ")
 ;;2391
 ;;21,"58016-0528-30 ")
 ;;2392
 ;;21,"58016-0528-60 ")
 ;;2393
 ;;21,"58016-0529-00 ")
 ;;2579
 ;;21,"58016-0529-10 ")
 ;;2580
 ;;21,"58016-0529-15 ")
 ;;2581
 ;;21,"58016-0529-20 ")
 ;;2582
 ;;21,"58016-0529-30 ")
 ;;2583
 ;;21,"58016-0529-50 ")
 ;;2584
 ;;21,"58016-0531-00 ")
 ;;2394
 ;;21,"58016-0531-15 ")
 ;;2395
 ;;21,"58016-0531-30 ")
 ;;2396
 ;;21,"58016-0532-00 ")
 ;;2431
 ;;21,"58016-0532-02 ")
 ;;2432
 ;;21,"58016-0532-15 ")
 ;;2433
 ;;21,"58016-0532-30 ")
 ;;2434
 ;;21,"58016-0532-60 ")
 ;;2435
 ;;21,"58016-0582-00 ")
 ;;2398
 ;;21,"58016-0582-15 ")
 ;;2399
 ;;21,"58016-0582-20 ")
 ;;2400
 ;;21,"58016-0582-30 ")
 ;;2401
 ;;21,"58016-0582-60 ")
 ;;2402
 ;;21,"58016-0600-12 ")
 ;;2629
 ;;21,"58016-0600-15 ")
 ;;2630
 ;;21,"58016-0600-20 ")
 ;;2631
 ;;21,"58016-0604-00 ")
 ;;2436
 ;;21,"58016-0640-00 ")
 ;;364
 ;;21,"58016-0640-15 ")
 ;;365
 ;;21,"58016-0640-20 ")
 ;;366
 ;;21,"58016-0640-30 ")
 ;;367
 ;;21,"58016-0720-15 ")
 ;;266
 ;;21,"58016-0771-00 ")
 ;;2521
 ;;21,"58016-0771-12 ")
 ;;2522
 ;;21,"58016-0771-15 ")
 ;;2523
 ;;21,"58016-0771-20 ")
 ;;2524
 ;;21,"58016-0771-30 ")
 ;;2525
 ;;21,"58016-0771-60 ")
 ;;2526
 ;;21,"58016-0859-00 ")
 ;;2472
 ;;21,"58016-0859-30 ")
 ;;2473
 ;;21,"58016-0859-60 ")
 ;;2474
 ;;21,"58016-0859-90 ")
 ;;2475
 ;;21,"58016-0974-00 ")
 ;;2486
 ;;21,"58016-0974-30 ")
 ;;2487
 ;;21,"58016-0974-60 ")
 ;;2488
 ;;21,"58016-0974-90 ")
 ;;2489
 ;;21,"58056-0115-10 ")
 ;;449
 ;;21,"58056-0115-50 ")
 ;;450
 ;;21,"58056-0124-10 ")
 ;;668
 ;;21,"58056-0124-81 ")
 ;;669
 ;;21,"58056-0125-10 ")
 ;;670
 ;;21,"58056-0125-81 ")
 ;;671
 ;;21,"58056-0126-10 ")
 ;;672
 ;;21,"58056-0126-81 ")
 ;;673
 ;;21,"58056-0127-10 ")
 ;;674
 ;;21,"58056-0127-81 ")
 ;;675
 ;;21,"58056-0128-10 ")
 ;;765
 ;;21,"58056-0128-81 ")
 ;;766
 ;;21,"58056-0129-10 ")
 ;;767
 ;;21,"58056-0129-81 ")
 ;;768
 ;;21,"58056-0130-10 ")
 ;;769
 ;;21,"58056-0130-81 ")
 ;;770
 ;;21,"58056-0131-10 ")
 ;;771
 ;;21,"58056-0131-81 ")
 ;;772
 ;;21,"58056-0153-04 ")
 ;;1265
 ;;21,"58056-0153-10 ")
 ;;1266
 ;;21,"58056-0204-04 ")
 ;;1267
 ;;21,"58056-0204-10 ")
 ;;1268
 ;;21,"58056-0215-10 ")
 ;;1180
 ;;21,"58056-0215-43 ")
 ;;1181
 ;;21,"58056-0216-43 ")
 ;;1182
 ;;21,"58056-0258-50 ")
 ;;451
 ;;21,"58056-0261-10 ")
 ;;190
 ;;21,"58056-0301-81 ")
 ;;676
 ;;21,"58056-0344-10 ")
 ;;1269
 ;;21,"58087-0057-12 ")
 ;;677
 ;;21,"58087-0058-12 ")
 ;;678
 ;;21,"58087-0070-30 ")
 ;;81
 ;;21,"58087-0070-60 ")
 ;;82
 ;;21,"58087-0071-30 ")
 ;;83
 ;;21,"58087-0071-60 ")
 ;;84
 ;;21,"58107-0002-90 ")
 ;;1075
 ;;21,"58107-0003-50 ")
 ;;1076
 ;;21,"58107-0004-15 ")
 ;;495
 ;;21,"58107-0005-75 ")
 ;;496
 ;;21,"58107-0006-90 ")
 ;;85
 ;;21,"58107-0007-45 ")
 ;;86
 ;;21,"58183-5711-31 ")
 ;;87
 ;;21,"58183-5711-52 ")
 ;;88
 ;;21,"58183-5721-31 ")
 ;;89
 ;;21,"58729-0486-01 ")
 ;;191
 ;;21,"58729-0486-10 ")
 ;;192
 ;;21,"58729-0487-01 ")
 ;;90
 ;;21,"58864-0016-01 ")
 ;;2981
 ;;21,"58864-0016-28 ")
 ;;368
 ;;21,"58864-0016-30 ")
 ;;369
 ;;21,"58864-0065-01 ")
 ;;1297
 ;;21,"58864-0065-30 ")
 ;;193
 ;;21,"58864-0363-30 ")
 ;;849
 ;;21,"58864-0367-01 ")
 ;;1183
