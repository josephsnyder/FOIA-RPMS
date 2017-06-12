BGP61F2 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00172-3759-80 ")
 ;;368
 ;;21,"00172-3760-00 ")
 ;;369
 ;;21,"00172-3760-10 ")
 ;;370
 ;;21,"00172-3760-60 ")
 ;;371
 ;;21,"00172-3760-70 ")
 ;;372
 ;;21,"00172-3760-80 ")
 ;;373
 ;;21,"00172-3761-00 ")
 ;;374
 ;;21,"00172-3761-10 ")
 ;;375
 ;;21,"00172-3761-60 ")
 ;;376
 ;;21,"00172-3761-70 ")
 ;;377
 ;;21,"00172-3762-00 ")
 ;;378
 ;;21,"00172-3762-10 ")
 ;;379
 ;;21,"00172-3762-60 ")
 ;;380
 ;;21,"00172-3762-70 ")
 ;;381
 ;;21,"00172-5032-60 ")
 ;;382
 ;;21,"00172-5032-70 ")
 ;;383
 ;;21,"00172-5033-00 ")
 ;;384
 ;;21,"00172-5033-10 ")
 ;;385
 ;;21,"00172-5033-60 ")
 ;;386
 ;;21,"00172-5033-70 ")
 ;;387
 ;;21,"00172-5034-60 ")
 ;;388
 ;;21,"00172-5034-70 ")
 ;;389
 ;;21,"00179-0135-44 ")
 ;;390
 ;;21,"00179-1984-30 ")
 ;;391
 ;;21,"00179-1985-30 ")
 ;;392
 ;;21,"00179-1988-30 ")
 ;;393
 ;;21,"00185-0025-01 ")
 ;;394
 ;;21,"00185-0025-10 ")
 ;;395
 ;;21,"00185-0041-09 ")
 ;;396
 ;;21,"00185-0041-10 ")
 ;;397
 ;;21,"00185-0042-09 ")
 ;;398
 ;;21,"00185-0042-10 ")
 ;;399
 ;;21,"00185-0047-09 ")
 ;;400
 ;;21,"00185-0047-10 ")
 ;;401
 ;;21,"00185-0048-01 ")
 ;;402
 ;;21,"00185-0048-05 ")
 ;;403
 ;;21,"00185-0053-01 ")
 ;;404
 ;;21,"00185-0053-05 ")
 ;;405
 ;;21,"00185-0101-01 ")
 ;;406
 ;;21,"00185-0101-10 ")
 ;;407
 ;;21,"00185-0102-01 ")
 ;;408
 ;;21,"00185-0102-10 ")
 ;;409
 ;;21,"00185-0102-33 ")
 ;;410
 ;;21,"00185-0103-01 ")
 ;;411
 ;;21,"00185-0103-10 ")
 ;;412
 ;;21,"00185-0104-01 ")
 ;;413
 ;;21,"00185-0104-10 ")
 ;;414
 ;;21,"00185-0124-01 ")
 ;;415
 ;;21,"00185-0152-01 ")
 ;;416
 ;;21,"00185-0152-10 ")
 ;;417
 ;;21,"00185-0173-01 ")
 ;;418
 ;;21,"00185-0173-10 ")
 ;;419
 ;;21,"00185-0204-01 ")
 ;;420
 ;;21,"00185-0211-01 ")
 ;;421
 ;;21,"00185-0236-01 ")
 ;;422
 ;;21,"00185-0277-01 ")
 ;;423
 ;;21,"00185-0325-01 ")
 ;;424
 ;;21,"00185-0341-01 ")
 ;;425
 ;;21,"00185-0342-01 ")
 ;;426
 ;;21,"00185-0505-01 ")
 ;;427
 ;;21,"00185-0505-05 ")
 ;;428
 ;;21,"00185-0610-01 ")
 ;;429
 ;;21,"00185-0610-10 ")
 ;;430
 ;;21,"00185-0620-01 ")
 ;;431
 ;;21,"00185-0620-10 ")
 ;;432
 ;;21,"00185-0640-01 ")
 ;;433
 ;;21,"00185-0820-01 ")
 ;;434
 ;;21,"00185-0820-05 ")
 ;;435
 ;;21,"00185-5400-01 ")
 ;;436
 ;;21,"00185-5400-10 ")
 ;;437
 ;;21,"00185-7100-01 ")
 ;;438
 ;;21,"00185-7100-10 ")
 ;;439
 ;;21,"00186-0004-31 ")
 ;;440
 ;;21,"00186-0008-31 ")
 ;;441
 ;;21,"00186-0016-28 ")
 ;;442
 ;;21,"00186-0016-31 ")
 ;;443
 ;;21,"00186-0016-54 ")
 ;;444
 ;;21,"00186-0032-28 ")
 ;;445
 ;;21,"00186-0032-31 ")
 ;;446
 ;;21,"00186-0032-54 ")
 ;;447
 ;;21,"00186-0162-28 ")
 ;;448
 ;;21,"00186-0162-54 ")
 ;;449
 ;;21,"00186-0322-28 ")
 ;;450
 ;;21,"00186-0322-54 ")
 ;;451
 ;;21,"00186-0324-54 ")
 ;;452
 ;;21,"00187-0140-30 ")
 ;;453
 ;;21,"00187-0140-90 ")
 ;;454
 ;;21,"00187-0141-30 ")
 ;;455
 ;;21,"00187-0141-90 ")
 ;;456
 ;;21,"00187-0142-10 ")
 ;;457
 ;;21,"00187-0142-30 ")
 ;;458
 ;;21,"00187-0142-90 ")
 ;;459
 ;;21,"00187-0143-10 ")
 ;;460
 ;;21,"00187-0143-30 ")
 ;;461
 ;;21,"00187-0143-90 ")
 ;;462
 ;;21,"00187-0146-01 ")
 ;;463
 ;;21,"00310-0130-11 ")
 ;;464
 ;;21,"00310-0131-11 ")
 ;;465
 ;;21,"00310-0132-11 ")
 ;;466
 ;;21,"00310-0133-11 ")
 ;;467
 ;;21,"00310-0134-11 ")
 ;;468
 ;;21,"00310-0135-11 ")
 ;;469
 ;;21,"00310-0141-11 ")
 ;;470
 ;;21,"00310-0142-11 ")
 ;;471
 ;;21,"00310-0145-11 ")
 ;;472
 ;;21,"00378-0081-01 ")
 ;;473
 ;;21,"00378-0083-01 ")
 ;;474
 ;;21,"00378-0084-01 ")
 ;;475
 ;;21,"00378-0086-01 ")
 ;;476
 ;;21,"00378-0226-77 ")
 ;;477
 ;;21,"00378-0254-77 ")
 ;;478
 ;;21,"00378-0272-77 ")
 ;;479
 ;;21,"00378-0441-01 ")
 ;;480
 ;;21,"00378-0443-01 ")
 ;;481
 ;;21,"00378-0444-01 ")
 ;;482
 ;;21,"00378-0447-01 ")
 ;;483
 ;;21,"00378-0542-77 ")
 ;;484
 ;;21,"00378-0543-77 ")
 ;;485
 ;;21,"00378-0544-77 ")
 ;;486
 ;;21,"00378-0712-01 ")
 ;;487
 ;;21,"00378-0723-01 ")
 ;;488
 ;;21,"00378-1012-01 ")
 ;;489
 ;;21,"00378-1051-01 ")
 ;;490
 ;;21,"00378-1052-01 ")
 ;;491
 ;;21,"00378-1052-10 ")
 ;;492
 ;;21,"00378-1053-01 ")
 ;;493
 ;;21,"00378-1053-10 ")
 ;;494
 ;;21,"00378-1054-01 ")
 ;;495
 ;;21,"00378-1054-05 ")
 ;;496
 ;;21,"00378-1075-93 ")
 ;;497
 ;;21,"00378-1076-93 ")
 ;;498
 ;;21,"00378-1077-93 ")
 ;;499
 ;;21,"00378-1078-93 ")
 ;;500
 ;;21,"00378-1117-77 ")
 ;;501
 ;;21,"00378-1418-77 ")
 ;;502
 ;;21,"00378-1418-93 ")
 ;;503
 ;;21,"00378-1419-10 ")
 ;;504
 ;;21,"00378-1419-77 ")
 ;;505
 ;;21,"00378-1419-93 ")
 ;;506
 ;;21,"00378-1420-77 ")
 ;;507
 ;;21,"00378-1420-93 ")
 ;;508
 ;;21,"00378-1721-93 ")
 ;;509
 ;;21,"00378-1722-93 ")
 ;;510
 ;;21,"00378-1723-93 ")
 ;;511
 ;;21,"00378-1724-93 ")
 ;;512
 ;;21,"00378-2012-01 ")
 ;;513
 ;;21,"00378-2022-05 ")
 ;;514
 ;;21,"00378-2022-77 ")
 ;;515
 ;;21,"00378-2023-05 ")
 ;;516
 ;;21,"00378-2023-77 ")
 ;;517
 ;;21,"00378-2023-93 ")
 ;;518
 ;;21,"00378-2024-05 ")
 ;;519
 ;;21,"00378-2024-77 ")
 ;;520
 ;;21,"00378-2024-93 ")
 ;;521
 ;;21,"00378-2025-01 ")
 ;;522
 ;;21,"00378-2072-01 ")
 ;;523
 ;;21,"00378-2073-01 ")
 ;;524
 ;;21,"00378-2073-10 ")
 ;;525
 ;;21,"00378-2074-01 ")
 ;;526
 ;;21,"00378-2074-10 ")
 ;;527
 ;;21,"00378-2075-01 ")
 ;;528
 ;;21,"00378-2075-10 ")
 ;;529
 ;;21,"00378-2076-01 ")
 ;;530
 ;;21,"00378-2076-05 ")
 ;;531
 ;;21,"00378-2077-01 ")
 ;;532
 ;;21,"00378-2901-77 ")
 ;;533
 ;;21,"00378-2901-93 ")
 ;;534
 ;;21,"00378-2902-77 ")
 ;;535
 ;;21,"00378-2902-93 ")
 ;;536
 ;;21,"00378-2903-77 ")
 ;;537
 ;;21,"00378-2903-93 ")
 ;;538
 ;;21,"00378-2920-77 ")
 ;;539
 ;;21,"00378-2920-93 ")
 ;;540
 ;;21,"00378-2921-77 ")
 ;;541
 ;;21,"00378-2921-93 ")
 ;;542
 ;;21,"00378-2922-77 ")
 ;;543
 ;;21,"00378-2922-93 ")
 ;;544
 ;;21,"00378-3001-05 ")
 ;;545
 ;;21,"00378-3001-77 ")
 ;;546
 ;;21,"00378-3002-05 ")
 ;;547
 ;;21,"00378-3002-77 ")
 ;;548
 ;;21,"00378-3003-05 ")
 ;;549
 ;;21,"00378-3003-77 ")
 ;;550
 ;;21,"00378-3007-01 ")
 ;;551
 ;;21,"00378-3007-10 ")
 ;;552
 ;;21,"00378-3012-01 ")
 ;;553
 ;;21,"00378-3012-10 ")
 ;;554
 ;;21,"00378-3017-01 ")
 ;;555
 ;;21,"00378-3017-10 ")
 ;;556
 ;;21,"00378-3022-01 ")
 ;;557
 ;;21,"00378-3033-77 ")
 ;;558
 ;;21,"00378-3033-93 ")
 ;;559
 ;;21,"00378-3034-77 ")
 ;;560
 ;;21,"00378-3034-93 ")
 ;;561
 ;;21,"00378-3241-01 ")
 ;;562
 ;;21,"00378-3242-01 ")
 ;;563
 ;;21,"00378-3243-01 ")
 ;;564
 ;;21,"00378-4041-77 ")
 ;;565
 ;;21,"00378-4042-77 ")
 ;;566
 ;;21,"00378-4042-93 ")
 ;;567
 ;;21,"00378-4043-77 ")
 ;;568
 ;;21,"00378-4043-93 ")
 ;;569
 ;;21,"00378-4725-01 ")
 ;;570
 ;;21,"00378-4735-01 ")
 ;;571
 ;;21,"00378-4745-01 ")
 ;;572
 ;;21,"00378-4775-01 ")
 ;;573
 ;;21,"00378-5807-93 ")
 ;;574
 ;;21,"00378-5813-77 ")
 ;;575
 ;;21,"00378-5814-77 ")
 ;;576
 ;;21,"00378-5815-77 ")
 ;;577
 ;;21,"00378-6321-05 ")
 ;;578
 ;;21,"00378-6321-77 ")
 ;;579
 ;;21,"00378-6322-05 ")
 ;;580
 ;;21,"00378-6322-77 ")
 ;;581
 ;;21,"00378-6323-05 ")
 ;;582
 ;;21,"00378-6323-77 ")
 ;;583
 ;;21,"00378-6324-05 ")
 ;;584
 ;;21,"00378-6324-77 ")
 ;;585
 ;;21,"00378-6325-05 ")
 ;;586
 ;;21,"00378-6325-77 ")
 ;;587
 ;;21,"00378-6629-93 ")
 ;;588
 ;;21,"00378-6895-01 ")
 ;;589
 ;;21,"00378-6896-01 ")
 ;;590
 ;;21,"00378-6896-05 ")
 ;;591
 ;;21,"00378-6897-01 ")
 ;;592
 ;;21,"00378-6897-05 ")
 ;;593
 ;;21,"00378-6898-01 ")
 ;;594
 ;;21,"00378-6898-05 ")
 ;;595
 ;;21,"00378-6899-01 ")
 ;;596
 ;;21,"00378-6900-01 ")
 ;;597
 ;;21,"00440-7140-30 ")
 ;;598
 ;;21,"00440-7140-81 ")
 ;;599
 ;;21,"00440-7140-85 ")
 ;;600
 ;;21,"00440-7140-90 ")
 ;;601
 ;;21,"00440-7141-30 ")
 ;;602
 ;;21,"00440-7141-81 ")
 ;;603
 ;;21,"00440-7141-85 ")
 ;;604
 ;;21,"00440-7141-90 ")
 ;;605
 ;;21,"00440-7142-30 ")
 ;;606
 ;;21,"00440-7142-81 ")
 ;;607
 ;;21,"00440-7142-85 ")
 ;;608
 ;;21,"00440-7142-90 ")
 ;;609
 ;;21,"00440-7143-30 ")
 ;;610
 ;;21,"00440-7143-81 ")
 ;;611
 ;;21,"00440-7143-85 ")
 ;;612
 ;;21,"00440-7143-90 ")
 ;;613
 ;;21,"00440-7190-30 ")
 ;;614
 ;;21,"00440-7190-90 ")
 ;;615
 ;;21,"00440-7192-30 ")
 ;;616
 ;;21,"00440-7192-90 ")
 ;;617
 ;;21,"00440-7193-30 ")
 ;;618
 ;;21,"00440-7193-90 ")
 ;;619
 ;;21,"00440-7230-60 ")
 ;;620
 ;;21,"00440-7230-90 ")
 ;;621
 ;;21,"00440-7230-92 ")
 ;;622
 ;;21,"00440-7230-94 ")
 ;;623
 ;;21,"00440-7231-30 ")
 ;;624
 ;;21,"00440-7231-60 ")
 ;;625
 ;;21,"00440-7231-90 ")
 ;;626
 ;;21,"00440-7231-91 ")
 ;;627
 ;;21,"00440-7231-92 ")
 ;;628
 ;;21,"00440-7231-94 ")
 ;;629
 ;;21,"00440-7232-30 ")
 ;;630
 ;;21,"00440-7232-60 ")
 ;;631
 ;;21,"00440-7232-90 ")
 ;;632
 ;;21,"00440-7232-91 ")
 ;;633
 ;;21,"00440-7232-92 ")
 ;;634
 ;;21,"00440-7232-94 ")
 ;;635
 ;;21,"00440-7345-99 ")
 ;;636
 ;;21,"00440-7485-90 ")
 ;;637
 ;;21,"00440-7486-10 ")
 ;;638
 ;;21,"00440-7486-30 ")
 ;;639
 ;;21,"00440-7486-60 ")
 ;;640
 ;;21,"00440-7486-90 ")
 ;;641
 ;;21,"00440-7486-91 ")
 ;;642
 ;;21,"00440-7487-30 ")
 ;;643
 ;;21,"00440-7487-90 ")
 ;;644
 ;;21,"00440-7488-90 ")
 ;;645
 ;;21,"00440-7550-45 ")
 ;;646
 ;;21,"00440-7550-90 ")
 ;;647
 ;;21,"00440-7551-45 ")
 ;;648
 ;;21,"00440-7551-90 ")
 ;;649
 ;;21,"00440-7552-45 ")
 ;;650
 ;;21,"00440-7552-90 ")
 ;;651
 ;;21,"00440-7552-92 ")
 ;;652
 ;;21,"00440-7674-81 ")
 ;;653
 ;;21,"00440-7674-85 ")
 ;;654
 ;;21,"00440-7674-89 ")
 ;;655
 ;;21,"00440-7674-90 ")
 ;;656
 ;;21,"00440-7675-30 ")
 ;;657
 ;;21,"00440-7675-81 ")
 ;;658
 ;;21,"00440-7675-85 ")
 ;;659
 ;;21,"00440-7675-89 ")
 ;;660
 ;;21,"00440-7675-90 ")
 ;;661
 ;;21,"00440-7676-14 ")
 ;;662
 ;;21,"00440-7676-30 ")
 ;;663
 ;;21,"00440-7676-45 ")
 ;;664
 ;;21,"00440-7676-81 ")
 ;;665
 ;;21,"00440-7676-85 ")
 ;;666
 ;;21,"00440-7676-89 ")
 ;;667
 ;;21,"00440-7676-90 ")
 ;;668
 ;;21,"00440-7677-81 ")
 ;;669
 ;;21,"00440-7677-85 ")
 ;;670
 ;;21,"00440-7677-89 ")
 ;;671
 ;;21,"00440-7677-90 ")
 ;;672
 ;;21,"00440-7682-30 ")
 ;;673
 ;;21,"00440-7683-30 ")
 ;;674
 ;;21,"00440-7683-60 ")
 ;;675
 ;;21,"00440-7684-30 ")
 ;;676
 ;;21,"00440-8072-06 ")
 ;;677
 ;;21,"00440-8270-06 ")
 ;;678
 ;;21,"00440-8272-06 ")
 ;;679
 ;;21,"00440-8567-30 ")
 ;;680
 ;;21,"00440-8567-60 ")
 ;;681
 ;;21,"00440-8567-90 ")
 ;;682
 ;;21,"00440-8568-30 ")
 ;;683
 ;;21,"00440-8568-60 ")
 ;;684
 ;;21,"00440-8568-90 ")
 ;;685
 ;;21,"00440-8569-30 ")
 ;;686
 ;;21,"00440-8569-60 ")
 ;;687
 ;;21,"00440-8569-90 ")
 ;;688
 ;;21,"00527-1919-01 ")
 ;;689
 ;;21,"00527-1920-01 ")
 ;;690
 ;;21,"00574-0110-01 ")
 ;;691
 ;;21,"00574-0112-15 ")
 ;;692
 ;;21,"00574-0134-01 ")
 ;;693
 ;;21,"00574-0135-01 ")
 ;;694
 ;;21,"00591-0405-01 ")
 ;;695
 ;;21,"00591-0405-05 ")
 ;;696
 ;;21,"00591-0406-01 ")
 ;;697
 ;;21,"00591-0406-10 ")
 ;;698
 ;;21,"00591-0407-01 ")
 ;;699
 ;;21,"00591-0407-10 ")
 ;;700
 ;;21,"00591-0408-01 ")
 ;;701
 ;;21,"00591-0408-10 ")
 ;;702
 ;;21,"00591-0409-01 ")
 ;;703
 ;;21,"00591-0409-05 ")
 ;;704
 ;;21,"00591-0860-01 ")
 ;;705
 ;;21,"00591-0860-05 ")
 ;;706
 ;;21,"00591-0861-01 ")
 ;;707
 ;;21,"00591-0861-05 ")
 ;;708
 ;;21,"00591-0862-01 ")
 ;;709
 ;;21,"00591-0862-05 ")
 ;;710
 ;;21,"00591-0885-01 ")
 ;;711
 ;;21,"00591-2167-19 ")
 ;;712
 ;;21,"00591-2167-30 ")
 ;;713
 ;;21,"00591-2168-10 ")
 ;;714
 ;;21,"00591-2168-19 ")
 ;;715
 ;;21,"00591-2169-10 ")
 ;;716
 ;;21,"00591-2169-19 ")
 ;;717
 ;;21,"00591-2170-05 ")
 ;;718
 ;;21,"00591-2170-19 ")
 ;;719
 ;;21,"00591-2315-10 ")
 ;;720
 ;;21,"00591-2315-19 ")
 ;;721
 ;;21,"00591-2316-10 ")
 ;;722
 ;;21,"00591-2316-19 ")
 ;;723
 ;;21,"00591-2317-10 ")
 ;;724
 ;;21,"00591-2317-19 ")
 ;;725
 ;;21,"00591-2318-19 ")
 ;;726
 ;;21,"00591-2319-19 ")
 ;;727
 ;;21,"00591-2782-19 ")
 ;;728
 ;;21,"00591-2782-30 ")
 ;;729
 ;;21,"00591-2783-19 ")
 ;;730
 ;;21,"00591-2783-30 ")
 ;;731
 ;;21,"00591-2784-19 ")
 ;;732
 ;;21,"00591-2784-30 ")
 ;;733
 ;;21,"00591-2785-19 ")
 ;;734
 ;;21,"00591-2785-30 ")
 ;;735
 ;;21,"00591-2786-19 ")
 ;;736
