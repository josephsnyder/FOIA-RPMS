BGP53J7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54569-5682-01 ")
 ;;2339
 ;;21,"54569-5818-00 ")
 ;;2340
 ;;21,"54569-5818-01 ")
 ;;2341
 ;;21,"54569-5818-02 ")
 ;;2342
 ;;21,"54569-5819-00 ")
 ;;2343
 ;;21,"54569-5819-01 ")
 ;;2344
 ;;21,"54569-5819-02 ")
 ;;2345
 ;;21,"54569-5872-00 ")
 ;;2346
 ;;21,"54569-5895-00 ")
 ;;2347
 ;;21,"54569-5941-01 ")
 ;;2348
 ;;21,"54569-5968-00 ")
 ;;2349
 ;;21,"54569-5968-02 ")
 ;;2350
 ;;21,"54569-5969-00 ")
 ;;2351
 ;;21,"54569-6160-00 ")
 ;;2352
 ;;21,"54569-6192-00 ")
 ;;2353
 ;;21,"54569-6226-00 ")
 ;;2354
 ;;21,"54569-6227-00 ")
 ;;2355
 ;;21,"54569-6304-00 ")
 ;;2356
 ;;21,"54569-6305-00 ")
 ;;2357
 ;;21,"54569-6318-00 ")
 ;;2358
 ;;21,"54569-6322-00 ")
 ;;2359
 ;;21,"54569-8013-00 ")
 ;;2360
 ;;21,"54569-8522-00 ")
 ;;2361
 ;;21,"54569-8522-01 ")
 ;;2362
 ;;21,"54569-8579-00 ")
 ;;2363
 ;;21,"54569-8609-00 ")
 ;;2364
 ;;21,"54569-8702-00 ")
 ;;2365
 ;;21,"54569-8703-00 ")
 ;;2366
 ;;21,"54569-8703-01 ")
 ;;2367
 ;;21,"54738-0912-01 ")
 ;;2368
 ;;21,"54738-0913-01 ")
 ;;2369
 ;;21,"54738-0914-01 ")
 ;;2370
 ;;21,"54838-0512-40 ")
 ;;2371
 ;;21,"54838-0523-40 ")
 ;;2372
 ;;21,"54838-0540-70 ")
 ;;2373
 ;;21,"54838-0551-70 ")
 ;;2374
 ;;21,"54868-0062-02 ")
 ;;2375
 ;;21,"54868-0062-04 ")
 ;;2376
 ;;21,"54868-0064-02 ")
 ;;2377
 ;;21,"54868-0064-03 ")
 ;;2378
 ;;21,"54868-0064-04 ")
 ;;2379
 ;;21,"54868-0064-05 ")
 ;;2380
 ;;21,"54868-0064-06 ")
 ;;2381
 ;;21,"54868-0064-07 ")
 ;;2382
 ;;21,"54868-0065-00 ")
 ;;2383
 ;;21,"54868-0065-02 ")
 ;;2384
 ;;21,"54868-0065-03 ")
 ;;2385
 ;;21,"54868-0065-04 ")
 ;;2386
 ;;21,"54868-0065-05 ")
 ;;2387
 ;;21,"54868-0065-07 ")
 ;;2388
 ;;21,"54868-0065-08 ")
 ;;2389
 ;;21,"54868-0065-09 ")
 ;;2390
 ;;21,"54868-0066-02 ")
 ;;2391
 ;;21,"54868-0066-03 ")
 ;;2392
 ;;21,"54868-0066-05 ")
 ;;2393
 ;;21,"54868-0066-06 ")
 ;;2394
 ;;21,"54868-0122-00 ")
 ;;2395
 ;;21,"54868-0122-02 ")
 ;;2396
 ;;21,"54868-0426-00 ")
 ;;2397
 ;;21,"54868-0511-00 ")
 ;;2398
 ;;21,"54868-0511-01 ")
 ;;2399
 ;;21,"54868-0511-02 ")
 ;;2400
 ;;21,"54868-0511-05 ")
 ;;2401
 ;;21,"54868-1223-00 ")
 ;;2402
 ;;21,"54868-1223-01 ")
 ;;2403
 ;;21,"54868-1239-00 ")
 ;;2404
 ;;21,"54868-1239-01 ")
 ;;2405
 ;;21,"54868-1239-02 ")
 ;;2406
 ;;21,"54868-1239-03 ")
 ;;2407
 ;;21,"54868-1239-04 ")
 ;;2408
 ;;21,"54868-1344-02 ")
 ;;2409
 ;;21,"54868-1344-03 ")
 ;;2410
 ;;21,"54868-1344-04 ")
 ;;2411
 ;;21,"54868-1447-00 ")
 ;;2412
 ;;21,"54868-1534-00 ")
 ;;2413
 ;;21,"54868-1959-01 ")
 ;;2414
 ;;21,"54868-1959-02 ")
 ;;2415
 ;;21,"54868-1959-04 ")
 ;;2416
 ;;21,"54868-1964-02 ")
 ;;2417
 ;;21,"54868-1964-03 ")
 ;;2418
 ;;21,"54868-2192-00 ")
 ;;2419
 ;;21,"54868-2192-01 ")
 ;;2420
 ;;21,"54868-2192-03 ")
 ;;2421
 ;;21,"54868-2192-04 ")
 ;;2422
 ;;21,"54868-2192-05 ")
 ;;2423
 ;;21,"54868-2192-06 ")
 ;;2424
 ;;21,"54868-2192-07 ")
 ;;2425
 ;;21,"54868-2192-08 ")
 ;;2426
 ;;21,"54868-2206-01 ")
 ;;2427
 ;;21,"54868-2221-01 ")
 ;;2428
 ;;21,"54868-2221-03 ")
 ;;2429
 ;;21,"54868-2221-04 ")
 ;;2430
 ;;21,"54868-2221-05 ")
 ;;2431
 ;;21,"54868-2284-06 ")
 ;;2432
 ;;21,"54868-2317-03 ")
 ;;2433
 ;;21,"54868-2317-04 ")
 ;;2434
 ;;21,"54868-2357-00 ")
 ;;2435
 ;;21,"54868-2357-02 ")
 ;;2436
 ;;21,"54868-2357-03 ")
 ;;2437
 ;;21,"54868-2433-00 ")
 ;;2438
 ;;21,"54868-2433-02 ")
 ;;2439
 ;;21,"54868-2434-00 ")
 ;;2440
 ;;21,"54868-2434-02 ")
 ;;2441
 ;;21,"54868-2481-01 ")
 ;;2442
 ;;21,"54868-2481-02 ")
 ;;2443
 ;;21,"54868-2481-03 ")
 ;;2444
 ;;21,"54868-2482-00 ")
 ;;2445
 ;;21,"54868-2546-00 ")
 ;;2446
 ;;21,"54868-2552-00 ")
 ;;2447
 ;;21,"54868-2552-02 ")
 ;;2448
 ;;21,"54868-2637-00 ")
 ;;2449
 ;;21,"54868-2637-01 ")
 ;;2450
 ;;21,"54868-2637-03 ")
 ;;2451
 ;;21,"54868-2637-04 ")
 ;;2452
 ;;21,"54868-2637-05 ")
 ;;2453
 ;;21,"54868-2637-06 ")
 ;;2454
 ;;21,"54868-2637-07 ")
 ;;2455
 ;;21,"54868-2637-08 ")
 ;;2456
 ;;21,"54868-2833-00 ")
 ;;2457
 ;;21,"54868-2833-01 ")
 ;;2458
 ;;21,"54868-2835-01 ")
 ;;2459
 ;;21,"54868-2835-02 ")
 ;;2460
 ;;21,"54868-2835-03 ")
 ;;2461
 ;;21,"54868-2976-00 ")
 ;;2462
 ;;21,"54868-2976-02 ")
 ;;2463
 ;;21,"54868-2976-03 ")
 ;;2464
 ;;21,"54868-3033-00 ")
 ;;2465
 ;;21,"54868-3033-02 ")
 ;;2466
 ;;21,"54868-3414-00 ")
 ;;2467
 ;;21,"54868-3414-01 ")
 ;;2468
 ;;21,"54868-3414-02 ")
 ;;2469
 ;;21,"54868-3414-03 ")
 ;;2470
 ;;21,"54868-3414-05 ")
 ;;2471
 ;;21,"54868-3523-00 ")
 ;;2472
 ;;21,"54868-3523-01 ")
 ;;2473
 ;;21,"54868-3523-02 ")
 ;;2474
 ;;21,"54868-3523-03 ")
 ;;2475
 ;;21,"54868-3526-00 ")
 ;;2476
 ;;21,"54868-3962-00 ")
 ;;2477
 ;;21,"54868-4023-00 ")
 ;;2478
 ;;21,"54868-4055-00 ")
 ;;2479
 ;;21,"54868-4055-01 ")
 ;;2480
 ;;21,"54868-4065-00 ")
 ;;2481
 ;;21,"54868-4134-00 ")
 ;;2482
 ;;21,"54868-4159-00 ")
 ;;2483
 ;;21,"54868-4159-02 ")
 ;;2484
 ;;21,"54868-4159-03 ")
 ;;2485
 ;;21,"54868-4159-04 ")
 ;;2486
 ;;21,"54868-4226-00 ")
 ;;2487
 ;;21,"54868-4226-01 ")
 ;;2488
 ;;21,"54868-4252-00 ")
 ;;2489
 ;;21,"54868-4252-01 ")
 ;;2490
 ;;21,"54868-4252-02 ")
 ;;2491
 ;;21,"54868-4252-03 ")
 ;;2492
 ;;21,"54868-4252-04 ")
 ;;2493
 ;;21,"54868-4253-00 ")
 ;;2494
 ;;21,"54868-4253-01 ")
 ;;2495
 ;;21,"54868-4253-02 ")
 ;;2496
 ;;21,"54868-4253-03 ")
 ;;2497
 ;;21,"54868-4372-00 ")
 ;;2498
 ;;21,"54868-4372-01 ")
 ;;2499
 ;;21,"54868-4372-02 ")
 ;;2500
 ;;21,"54868-4394-00 ")
 ;;2501
 ;;21,"54868-4504-00 ")
 ;;2502
 ;;21,"54868-4504-01 ")
 ;;2503
 ;;21,"54868-4537-00 ")
 ;;2504
 ;;21,"54868-4537-01 ")
 ;;2505
 ;;21,"54868-4537-02 ")
 ;;2506
 ;;21,"54868-4537-03 ")
 ;;2507
 ;;21,"54868-4550-00 ")
 ;;2508
 ;;21,"54868-4550-01 ")
 ;;2509
 ;;21,"54868-4550-02 ")
 ;;2510
 ;;21,"54868-4560-00 ")
 ;;2511
 ;;21,"54868-4560-01 ")
 ;;2512
 ;;21,"54868-4562-00 ")
 ;;2513
 ;;21,"54868-4700-00 ")
 ;;2514
 ;;21,"54868-4700-01 ")
 ;;2515
 ;;21,"54868-4700-02 ")
 ;;2516
 ;;21,"54868-4700-03 ")
 ;;2517
 ;;21,"54868-4700-04 ")
 ;;2518
 ;;21,"54868-4700-05 ")
 ;;2519
 ;;21,"54868-4700-06 ")
 ;;2520
 ;;21,"54868-4775-00 ")
 ;;2521
 ;;21,"54868-4775-01 ")
 ;;2522
 ;;21,"54868-4775-02 ")
 ;;2523
 ;;21,"54868-4775-03 ")
 ;;2524
 ;;21,"54868-4791-00 ")
 ;;2525
 ;;21,"54868-4817-00 ")
 ;;2526
 ;;21,"54868-4817-01 ")
 ;;2527
 ;;21,"54868-4848-00 ")
 ;;2528
 ;;21,"54868-4892-00 ")
 ;;2529
 ;;21,"54868-4892-01 ")
 ;;2530
 ;;21,"54868-4935-00 ")
 ;;2531
 ;;21,"54868-4937-00 ")
 ;;2532
 ;;21,"54868-4937-01 ")
 ;;2533
 ;;21,"54868-4937-02 ")
 ;;2534
 ;;21,"54868-4937-03 ")
 ;;2535
 ;;21,"54868-4938-00 ")
 ;;2536
 ;;21,"54868-4985-00 ")
 ;;2537
 ;;21,"54868-4985-01 ")
 ;;2538
 ;;21,"54868-5080-00 ")
 ;;2539
 ;;21,"54868-5178-00 ")
 ;;2540
 ;;21,"54868-5178-01 ")
 ;;2541
 ;;21,"54868-5178-03 ")
 ;;2542
 ;;21,"54868-5192-00 ")
 ;;2543
 ;;21,"54868-5215-00 ")
 ;;2544
 ;;21,"54868-5215-01 ")
 ;;2545
 ;;21,"54868-5215-02 ")
 ;;2546
 ;;21,"54868-5275-00 ")
 ;;2547
 ;;21,"54868-5275-02 ")
 ;;2548
 ;;21,"54868-5315-00 ")
 ;;2549
 ;;21,"54868-5347-00 ")
 ;;2550
 ;;21,"54868-5365-00 ")
 ;;2551
 ;;21,"54868-5448-00 ")
 ;;2552
 ;;21,"54868-5562-00 ")
 ;;2553
 ;;21,"54868-5638-00 ")
 ;;2554
 ;;21,"54868-5638-01 ")
 ;;2555
 ;;21,"54868-5638-02 ")
 ;;2556
 ;;21,"54868-5638-03 ")
 ;;2557
 ;;21,"54868-5638-04 ")
 ;;2558
 ;;21,"54868-5638-05 ")
 ;;2559
 ;;21,"54868-5638-06 ")
 ;;2560
 ;;21,"54868-5639-00 ")
 ;;2561
 ;;21,"54868-5639-01 ")
 ;;2562
 ;;21,"54868-5639-02 ")
 ;;2563
 ;;21,"54868-5639-03 ")
 ;;2564
 ;;21,"54868-5658-00 ")
 ;;2565
 ;;21,"54868-5663-00 ")
 ;;2566
 ;;21,"54868-5663-01 ")
 ;;2567
 ;;21,"54868-5663-02 ")
 ;;2568
 ;;21,"54868-5736-00 ")
 ;;2569
 ;;21,"54868-5736-01 ")
 ;;2570
 ;;21,"54868-5754-00 ")
 ;;2571
 ;;21,"54868-5754-01 ")
 ;;2572
 ;;21,"54868-5754-02 ")
 ;;2573
 ;;21,"54868-5812-00 ")
 ;;2574
 ;;21,"54868-5927-00 ")
 ;;2575
 ;;21,"54868-5951-00 ")
 ;;2576
 ;;21,"55045-1463-00 ")
 ;;2577
 ;;21,"55045-1463-01 ")
 ;;2578
 ;;21,"55045-1463-02 ")
 ;;2579
 ;;21,"55045-1463-03 ")
 ;;2580
 ;;21,"55045-1463-04 ")
 ;;2581
 ;;21,"55045-1463-06 ")
 ;;2582
 ;;21,"55045-1463-07 ")
 ;;2583
 ;;21,"55045-1463-08 ")
 ;;2584
 ;;21,"55045-1463-09 ")
 ;;2585
 ;;21,"55045-1592-00 ")
 ;;2586
 ;;21,"55045-1592-01 ")
 ;;2587
 ;;21,"55045-1592-05 ")
 ;;2588
 ;;21,"55045-1592-06 ")
 ;;2589
 ;;21,"55045-1592-08 ")
 ;;2590
 ;;21,"55045-1592-09 ")
 ;;2591
 ;;21,"55045-1682-00 ")
 ;;2592
 ;;21,"55045-1682-01 ")
 ;;2593
 ;;21,"55045-1682-02 ")
 ;;2594
 ;;21,"55045-1682-03 ")
 ;;2595
 ;;21,"55045-1682-04 ")
 ;;2596
 ;;21,"55045-1682-05 ")
 ;;2597
 ;;21,"55045-1682-06 ")
 ;;2598
 ;;21,"55045-1682-08 ")
 ;;2599
 ;;21,"55045-1682-09 ")
 ;;2600
 ;;21,"55045-1715-00 ")
 ;;2601
 ;;21,"55045-1715-01 ")
 ;;2602
 ;;21,"55045-1715-02 ")
 ;;2603
 ;;21,"55045-1715-03 ")
 ;;2604
 ;;21,"55045-1715-07 ")
 ;;2605
 ;;21,"55045-1715-08 ")
 ;;2606
 ;;21,"55045-1715-09 ")
 ;;2607
 ;;21,"55045-1718-02 ")
 ;;2608
 ;;21,"55045-1718-06 ")
 ;;2609
 ;;21,"55045-1718-08 ")
 ;;2610
 ;;21,"55045-1718-09 ")
 ;;2611
 ;;21,"55045-1721-00 ")
 ;;2612
 ;;21,"55045-1721-08 ")
 ;;2613
 ;;21,"55045-1722-08 ")
 ;;2614
 ;;21,"55045-1724-00 ")
 ;;2615
 ;;21,"55045-1724-01 ")
 ;;2616
 ;;21,"55045-1724-06 ")
 ;;2617
 ;;21,"55045-1724-08 ")
 ;;2618
 ;;21,"55045-1724-09 ")
 ;;2619
 ;;21,"55045-1741-00 ")
 ;;2620
 ;;21,"55045-1741-01 ")
 ;;2621
 ;;21,"55045-1741-02 ")
 ;;2622
 ;;21,"55045-1741-03 ")
 ;;2623
 ;;21,"55045-1741-05 ")
 ;;2624
 ;;21,"55045-1741-06 ")
 ;;2625
 ;;21,"55045-1741-08 ")
 ;;2626
 ;;21,"55045-1741-09 ")
 ;;2627
 ;;21,"55045-1794-08 ")
 ;;2628
 ;;21,"55045-1837-01 ")
 ;;2629
 ;;21,"55045-1837-02 ")
 ;;2630
 ;;21,"55045-1837-06 ")
 ;;2631
 ;;21,"55045-1837-08 ")
 ;;2632
 ;;21,"55045-1837-09 ")
 ;;2633
 ;;21,"55045-1884-01 ")
 ;;2634
 ;;21,"55045-1884-02 ")
 ;;2635
 ;;21,"55045-1884-06 ")
 ;;2636
 ;;21,"55045-1884-08 ")
 ;;2637
 ;;21,"55045-1884-09 ")
 ;;2638
 ;;21,"55045-1920-01 ")
 ;;2639
 ;;21,"55045-1920-02 ")
 ;;2640
 ;;21,"55045-1920-06 ")
 ;;2641
 ;;21,"55045-1920-08 ")
 ;;2642
 ;;21,"55045-1920-09 ")
 ;;2643
 ;;21,"55045-1956-01 ")
 ;;2644
 ;;21,"55045-1956-02 ")
 ;;2645
 ;;21,"55045-1956-04 ")
 ;;2646
 ;;21,"55045-1956-06 ")
 ;;2647
 ;;21,"55045-1956-08 ")
 ;;2648
 ;;21,"55045-1956-09 ")
 ;;2649
 ;;21,"55045-1982-02 ")
 ;;2650
 ;;21,"55045-1982-08 ")
 ;;2651
 ;;21,"55045-1982-09 ")
 ;;2652
 ;;21,"55045-2084-01 ")
 ;;2653
 ;;21,"55045-2084-03 ")
 ;;2654
 ;;21,"55045-2084-06 ")
 ;;2655
 ;;21,"55045-2153-01 ")
 ;;2656
 ;;21,"55045-2153-08 ")
 ;;2657
 ;;21,"55045-2208-01 ")
 ;;2658
 ;;21,"55045-2208-03 ")
 ;;2659
 ;;21,"55045-2208-07 ")
 ;;2660
 ;;21,"55045-2208-08 ")
 ;;2661
 ;;21,"55045-2224-00 ")
 ;;2662
 ;;21,"55045-2224-02 ")
 ;;2663
 ;;21,"55045-2224-07 ")
 ;;2664
 ;;21,"55045-2224-08 ")
 ;;2665
 ;;21,"55045-2509-00 ")
 ;;2666
 ;;21,"55045-2509-01 ")
 ;;2667
 ;;21,"55045-2509-06 ")
 ;;2668
 ;;21,"55045-2509-08 ")
 ;;2669
 ;;21,"55045-2509-09 ")
 ;;2670
 ;;21,"55045-2546-08 ")
 ;;2671
 ;;21,"55045-2631-08 ")
 ;;2672
 ;;21,"55045-2705-00 ")
 ;;2673
 ;;21,"55045-2706-09 ")
 ;;2674
 ;;21,"55045-2907-00 ")
 ;;2675
 ;;21,"55045-2907-02 ")
 ;;2676
 ;;21,"55045-2907-06 ")
 ;;2677
 ;;21,"55045-2907-08 ")
 ;;2678
 ;;21,"55045-2907-09 ")
 ;;2679
 ;;21,"55045-2908-00 ")
 ;;2680
 ;;21,"55045-2908-02 ")
 ;;2681
 ;;21,"55045-2908-06 ")
 ;;2682
 ;;21,"55045-2908-08 ")
 ;;2683
 ;;21,"55045-2908-09 ")
 ;;2684
 ;;21,"55045-2934-00 ")
 ;;2685
 ;;21,"55045-2934-08 ")
 ;;2686
 ;;21,"55045-2985-00 ")
 ;;2687
 ;;21,"55045-2985-08 ")
 ;;2688
 ;;21,"55045-3088-08 ")
 ;;2689
 ;;21,"55045-3137-08 ")
 ;;2690
 ;;21,"55045-3171-08 ")
 ;;2691
 ;;21,"55045-3172-08 ")
 ;;2692
 ;;21,"55045-3172-09 ")
 ;;2693
 ;;21,"55045-3195-06 ")
 ;;2694
 ;;21,"55045-3195-08 ")
 ;;2695
 ;;21,"55045-3196-06 ")
 ;;2696
 ;;21,"55045-3196-08 ")
 ;;2697
 ;;21,"55045-3196-09 ")
 ;;2698
 ;;21,"55045-3197-06 ")
 ;;2699
 ;;21,"55045-3220-09 ")
 ;;2700
 ;;21,"55045-3341-06 ")
 ;;2701
 ;;21,"55045-3341-08 ")
 ;;2702
 ;;21,"55045-3368-08 ")
 ;;2703
 ;;21,"55045-3386-08 ")
 ;;2704
 ;;21,"55045-3387-08 ")
 ;;2705
 ;;21,"55045-3423-01 ")
 ;;2706
 ;;21,"55045-3423-02 ")
 ;;2707
 ;;21,"55045-3424-00 ")
 ;;2708
 ;;21,"55045-3424-08 ")
 ;;2709
 ;;21,"55045-3562-01 ")
 ;;2710
 ;;21,"55045-3566-01 ")
 ;;2711
 ;;21,"55045-3697-03 ")
 ;;2712
 ;;21,"55045-3757-08 ")
 ;;2713
 ;;21,"55045-3766-08 ")
 ;;2714
 ;;21,"55045-3799-01 ")
 ;;2715
 ;;21,"55111-0142-60 ")
 ;;2716
 ;;21,"55111-0147-01 ")
 ;;2717
 ;;21,"55111-0148-01 ")
 ;;2718
 ;;21,"55111-0148-10 ")
 ;;2719
 ;;21,"55111-0149-01 ")
 ;;2720
 ;;21,"55111-0149-30 ")
 ;;2721
 ;;21,"55111-0284-48 ")
 ;;2722
 ;;21,"55111-0342-01 ")
 ;;2723
 ;;21,"55111-0342-05 ")
 ;;2724
