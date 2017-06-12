BGP61B2 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"43353-0620-07 ")
 ;;340
 ;;21,"43353-0620-10 ")
 ;;341
 ;;21,"43353-0620-14 ")
 ;;342
 ;;21,"43353-0620-15 ")
 ;;343
 ;;21,"43353-0620-20 ")
 ;;344
 ;;21,"43353-0620-28 ")
 ;;345
 ;;21,"43353-0620-30 ")
 ;;346
 ;;21,"43353-0620-45 ")
 ;;347
 ;;21,"43353-0620-53 ")
 ;;348
 ;;21,"43353-0620-59 ")
 ;;349
 ;;21,"43353-0620-60 ")
 ;;350
 ;;21,"43353-0670-07 ")
 ;;351
 ;;21,"43353-0670-10 ")
 ;;352
 ;;21,"43353-0670-14 ")
 ;;353
 ;;21,"43353-0670-15 ")
 ;;354
 ;;21,"43353-0670-20 ")
 ;;355
 ;;21,"43353-0670-21 ")
 ;;356
 ;;21,"43353-0670-25 ")
 ;;357
 ;;21,"43353-0670-28 ")
 ;;358
 ;;21,"43353-0670-30 ")
 ;;359
 ;;21,"43353-0670-40 ")
 ;;360
 ;;21,"43353-0670-45 ")
 ;;361
 ;;21,"43353-0670-53 ")
 ;;362
 ;;21,"43353-0670-59 ")
 ;;363
 ;;21,"43353-0670-60 ")
 ;;364
 ;;21,"43353-0670-62 ")
 ;;365
 ;;21,"43353-0727-30 ")
 ;;366
 ;;21,"43353-0727-60 ")
 ;;367
 ;;21,"43353-0743-30 ")
 ;;368
 ;;21,"43353-0743-60 ")
 ;;369
 ;;21,"43353-0841-30 ")
 ;;370
 ;;21,"47335-0586-83 ")
 ;;371
 ;;21,"47335-0587-88 ")
 ;;372
 ;;21,"47335-0588-88 ")
 ;;373
 ;;21,"47463-0012-28 ")
 ;;374
 ;;21,"47463-0012-30 ")
 ;;375
 ;;21,"47463-0012-60 ")
 ;;376
 ;;21,"47463-0012-90 ")
 ;;377
 ;;21,"47463-0396-28 ")
 ;;378
 ;;21,"47463-0396-30 ")
 ;;379
 ;;21,"47463-0824-30 ")
 ;;380
 ;;21,"47463-0824-60 ")
 ;;381
 ;;21,"47463-0824-71 ")
 ;;382
 ;;21,"47463-0824-90 ")
 ;;383
 ;;21,"47463-0825-06 ")
 ;;384
 ;;21,"47463-0825-30 ")
 ;;385
 ;;21,"47463-0825-71 ")
 ;;386
 ;;21,"47463-0825-90 ")
 ;;387
 ;;21,"47463-0827-30 ")
 ;;388
 ;;21,"47463-0854-30 ")
 ;;389
 ;;21,"49999-0037-00 ")
 ;;390
 ;;21,"49999-0037-10 ")
 ;;391
 ;;21,"49999-0037-15 ")
 ;;392
 ;;21,"49999-0037-20 ")
 ;;393
 ;;21,"49999-0037-30 ")
 ;;394
 ;;21,"49999-0037-60 ")
 ;;395
 ;;21,"49999-0037-90 ")
 ;;396
 ;;21,"49999-0453-15 ")
 ;;397
 ;;21,"49999-0453-30 ")
 ;;398
 ;;21,"49999-0604-15 ")
 ;;399
 ;;21,"49999-0604-30 ")
 ;;400
 ;;21,"49999-0604-60 ")
 ;;401
 ;;21,"49999-0737-00 ")
 ;;402
 ;;21,"49999-0737-14 ")
 ;;403
 ;;21,"49999-0737-15 ")
 ;;404
 ;;21,"49999-0737-30 ")
 ;;405
 ;;21,"49999-0737-60 ")
 ;;406
 ;;21,"49999-0737-90 ")
 ;;407
 ;;21,"49999-0763-00 ")
 ;;408
 ;;21,"49999-0763-30 ")
 ;;409
 ;;21,"49999-0764-30 ")
 ;;410
 ;;21,"49999-0764-60 ")
 ;;411
 ;;21,"49999-0778-30 ")
 ;;412
 ;;21,"49999-0779-15 ")
 ;;413
 ;;21,"49999-0779-30 ")
 ;;414
 ;;21,"49999-0931-00 ")
 ;;415
 ;;21,"49999-0931-02 ")
 ;;416
 ;;21,"49999-0931-15 ")
 ;;417
 ;;21,"49999-0931-30 ")
 ;;418
 ;;21,"49999-0931-60 ")
 ;;419
 ;;21,"49999-0932-00 ")
 ;;420
 ;;21,"49999-0932-30 ")
 ;;421
 ;;21,"49999-0932-60 ")
 ;;422
 ;;21,"50436-0193-01 ")
 ;;423
 ;;21,"50436-1006-01 ")
 ;;424
 ;;21,"50436-3026-01 ")
 ;;425
 ;;21,"50436-3030-01 ")
 ;;426
 ;;21,"50436-3030-02 ")
 ;;427
 ;;21,"50436-3031-01 ")
 ;;428
 ;;21,"50436-5537-01 ")
 ;;429
 ;;21,"50436-5538-01 ")
 ;;430
 ;;21,"50436-5538-04 ")
 ;;431
 ;;21,"50436-5539-01 ")
 ;;432
 ;;21,"50436-5539-04 ")
 ;;433
 ;;21,"51079-0349-01 ")
 ;;434
 ;;21,"51079-0349-03 ")
 ;;435
 ;;21,"51079-0414-01 ")
 ;;436
 ;;21,"51079-0414-03 ")
 ;;437
 ;;21,"51079-0724-01 ")
 ;;438
 ;;21,"51079-0724-20 ")
 ;;439
 ;;21,"51079-0725-01 ")
 ;;440
 ;;21,"51079-0725-20 ")
 ;;441
 ;;21,"52959-0362-10 ")
 ;;442
 ;;21,"52959-0362-15 ")
 ;;443
 ;;21,"52959-0362-20 ")
 ;;444
 ;;21,"52959-0362-30 ")
 ;;445
 ;;21,"52959-0362-60 ")
 ;;446
 ;;21,"52959-0363-10 ")
 ;;447
 ;;21,"52959-0363-15 ")
 ;;448
 ;;21,"52959-0363-20 ")
 ;;449
 ;;21,"52959-0363-21 ")
 ;;450
 ;;21,"52959-0363-25 ")
 ;;451
 ;;21,"52959-0363-30 ")
 ;;452
 ;;21,"52959-0363-60 ")
 ;;453
 ;;21,"52959-0727-00 ")
 ;;454
 ;;21,"52959-0727-10 ")
 ;;455
 ;;21,"52959-0727-30 ")
 ;;456
 ;;21,"52959-0852-00 ")
 ;;457
 ;;21,"52959-0852-10 ")
 ;;458
 ;;21,"52959-0852-12 ")
 ;;459
 ;;21,"52959-0852-30 ")
 ;;460
 ;;21,"52959-0852-60 ")
 ;;461
 ;;21,"52959-0870-30 ")
 ;;462
 ;;21,"52959-0879-02 ")
 ;;463
 ;;21,"52959-0879-10 ")
 ;;464
 ;;21,"52959-0879-14 ")
 ;;465
 ;;21,"52959-0879-15 ")
 ;;466
 ;;21,"52959-0879-20 ")
 ;;467
 ;;21,"52959-0879-28 ")
 ;;468
 ;;21,"52959-0879-30 ")
 ;;469
 ;;21,"52959-0879-42 ")
 ;;470
 ;;21,"52959-0879-60 ")
 ;;471
 ;;21,"52959-0879-90 ")
 ;;472
 ;;21,"52959-0880-00 ")
 ;;473
 ;;21,"52959-0880-02 ")
 ;;474
 ;;21,"52959-0880-10 ")
 ;;475
 ;;21,"52959-0880-14 ")
 ;;476
 ;;21,"52959-0880-15 ")
 ;;477
 ;;21,"52959-0880-20 ")
 ;;478
 ;;21,"52959-0880-28 ")
 ;;479
 ;;21,"52959-0880-30 ")
 ;;480
 ;;21,"52959-0880-45 ")
 ;;481
 ;;21,"52959-0880-60 ")
 ;;482
 ;;21,"52959-0880-90 ")
 ;;483
 ;;21,"52959-0881-30 ")
 ;;484
 ;;21,"52959-0919-00 ")
 ;;485
 ;;21,"52959-0919-30 ")
 ;;486
 ;;21,"52959-0919-60 ")
 ;;487
 ;;21,"52959-0957-30 ")
 ;;488
 ;;21,"52959-0971-30 ")
 ;;489
 ;;21,"53002-0502-05 ")
 ;;490
 ;;21,"53002-0502-10 ")
 ;;491
 ;;21,"53002-0502-20 ")
 ;;492
 ;;21,"53002-0502-30 ")
 ;;493
 ;;21,"53002-1292-01 ")
 ;;494
 ;;21,"53002-1292-02 ")
 ;;495
 ;;21,"53002-1292-03 ")
 ;;496
 ;;21,"53002-1594-01 ")
 ;;497
 ;;21,"53217-0149-30 ")
 ;;498
 ;;21,"53217-0149-60 ")
 ;;499
 ;;21,"53217-0150-30 ")
 ;;500
 ;;21,"53217-0150-60 ")
 ;;501
 ;;21,"53217-0151-30 ")
 ;;502
 ;;21,"53217-0151-60 ")
 ;;503
 ;;21,"54569-3827-03 ")
 ;;504
 ;;21,"54569-3828-01 ")
 ;;505
 ;;21,"54569-4837-00 ")
 ;;506
 ;;21,"54569-5684-00 ")
 ;;507
 ;;21,"54569-5696-00 ")
 ;;508
 ;;21,"54569-5760-00 ")
 ;;509
 ;;21,"54569-5760-01 ")
 ;;510
 ;;21,"54569-5906-00 ")
 ;;511
 ;;21,"54569-5906-01 ")
 ;;512
 ;;21,"54569-5906-02 ")
 ;;513
 ;;21,"54569-5906-03 ")
 ;;514
 ;;21,"54569-5906-04 ")
 ;;515
 ;;21,"54569-5907-00 ")
 ;;516
 ;;21,"54569-5907-01 ")
 ;;517
 ;;21,"54569-6118-00 ")
 ;;518
 ;;21,"54569-6118-01 ")
 ;;519
 ;;21,"54569-6231-00 ")
 ;;520
 ;;21,"54569-6231-01 ")
 ;;521
 ;;21,"54569-6378-00 ")
 ;;522
 ;;21,"54569-6543-00 ")
 ;;523
 ;;21,"54569-6544-00 ")
 ;;524
 ;;21,"54868-0845-00 ")
 ;;525
 ;;21,"54868-0845-01 ")
 ;;526
 ;;21,"54868-0845-02 ")
 ;;527
 ;;21,"54868-0845-03 ")
 ;;528
 ;;21,"54868-0846-00 ")
 ;;529
 ;;21,"54868-0846-01 ")
 ;;530
 ;;21,"54868-0846-02 ")
 ;;531
 ;;21,"54868-0846-03 ")
 ;;532
 ;;21,"54868-0846-04 ")
 ;;533
 ;;21,"54868-0846-05 ")
 ;;534
 ;;21,"54868-0846-06 ")
 ;;535
 ;;21,"54868-2642-00 ")
 ;;536
 ;;21,"54868-2642-01 ")
 ;;537
 ;;21,"54868-2642-02 ")
 ;;538
 ;;21,"54868-2642-03 ")
 ;;539
 ;;21,"54868-2642-04 ")
 ;;540
 ;;21,"54868-2643-00 ")
 ;;541
 ;;21,"54868-2643-01 ")
 ;;542
 ;;21,"54868-2643-02 ")
 ;;543
 ;;21,"54868-2643-04 ")
 ;;544
 ;;21,"54868-2643-05 ")
 ;;545
 ;;21,"54868-2643-06 ")
 ;;546
 ;;21,"54868-2643-07 ")
 ;;547
 ;;21,"54868-2643-08 ")
 ;;548
 ;;21,"54868-4431-00 ")
 ;;549
 ;;21,"54868-4431-01 ")
 ;;550
 ;;21,"54868-4431-02 ")
 ;;551
 ;;21,"54868-4431-03 ")
 ;;552
 ;;21,"54868-5139-00 ")
 ;;553
 ;;21,"54868-5139-01 ")
 ;;554
 ;;21,"54868-5273-00 ")
 ;;555
 ;;21,"54868-5273-01 ")
 ;;556
 ;;21,"54868-5273-02 ")
 ;;557
 ;;21,"54868-5394-00 ")
 ;;558
 ;;21,"54868-5394-01 ")
 ;;559
 ;;21,"54868-5394-02 ")
 ;;560
 ;;21,"54868-5394-03 ")
 ;;561
 ;;21,"54868-5426-00 ")
 ;;562
 ;;21,"54868-5426-01 ")
 ;;563
 ;;21,"54868-5426-02 ")
 ;;564
 ;;21,"54868-5426-03 ")
 ;;565
 ;;21,"54868-5426-04 ")
 ;;566
 ;;21,"54868-5439-00 ")
 ;;567
 ;;21,"54868-5439-01 ")
 ;;568
 ;;21,"54868-5461-00 ")
 ;;569
 ;;21,"54868-5461-01 ")
 ;;570
 ;;21,"54868-5461-02 ")
 ;;571
 ;;21,"54868-5908-00 ")
 ;;572
 ;;21,"54868-5908-01 ")
 ;;573
 ;;21,"54868-5909-00 ")
 ;;574
 ;;21,"54868-5909-01 ")
 ;;575
 ;;21,"54868-6189-00 ")
 ;;576
 ;;21,"54868-6189-01 ")
 ;;577
 ;;21,"54868-6215-00 ")
 ;;578
 ;;21,"54868-6215-01 ")
 ;;579
 ;;21,"54868-6215-02 ")
 ;;580
 ;;21,"54868-6215-03 ")
 ;;581
 ;;21,"55045-2271-00 ")
 ;;582
 ;;21,"55045-2271-01 ")
 ;;583
 ;;21,"55045-2271-02 ")
 ;;584
 ;;21,"55045-2271-06 ")
 ;;585
 ;;21,"55045-2271-07 ")
 ;;586
 ;;21,"55045-2271-08 ")
 ;;587
 ;;21,"55045-2271-09 ")
 ;;588
 ;;21,"55045-2812-06 ")
 ;;589
 ;;21,"55045-2812-07 ")
 ;;590
 ;;21,"55045-2812-08 ")
 ;;591
 ;;21,"55045-3034-07 ")
 ;;592
 ;;21,"55045-3302-08 ")
 ;;593
 ;;21,"55045-3438-08 ")
 ;;594
 ;;21,"55045-3461-08 ")
 ;;595
 ;;21,"55045-3462-08 ")
 ;;596
 ;;21,"55045-3633-01 ")
 ;;597
 ;;21,"55045-3633-02 ")
 ;;598
 ;;21,"55045-3811-01 ")
 ;;599
 ;;21,"55045-3811-02 ")
 ;;600
 ;;21,"55045-3811-03 ")
 ;;601
 ;;21,"55045-3811-06 ")
 ;;602
 ;;21,"55045-3812-01 ")
 ;;603
 ;;21,"55045-3812-03 ")
 ;;604
 ;;21,"55048-0012-28 ")
 ;;605
 ;;21,"55048-0012-30 ")
 ;;606
 ;;21,"55048-0012-60 ")
 ;;607
 ;;21,"55048-0012-90 ")
 ;;608
 ;;21,"55048-0396-28 ")
 ;;609
 ;;21,"55048-0396-30 ")
 ;;610
 ;;21,"55048-0824-30 ")
 ;;611
 ;;21,"55048-0824-60 ")
 ;;612
 ;;21,"55048-0824-71 ")
 ;;613
 ;;21,"55048-0824-90 ")
 ;;614
 ;;21,"55048-0825-06 ")
 ;;615
 ;;21,"55048-0825-30 ")
 ;;616
 ;;21,"55048-0825-71 ")
 ;;617
 ;;21,"55048-0825-90 ")
 ;;618
 ;;21,"55048-0827-30 ")
 ;;619
 ;;21,"55048-0854-30 ")
 ;;620
 ;;21,"55048-0881-30 ")
 ;;621
 ;;21,"55048-0891-30 ")
 ;;622
 ;;21,"55111-0478-01 ")
 ;;623
 ;;21,"55111-0478-05 ")
 ;;624
 ;;21,"55111-0479-01 ")
 ;;625
 ;;21,"55111-0479-05 ")
 ;;626
 ;;21,"55111-0617-01 ")
 ;;627
 ;;21,"55111-0619-01 ")
 ;;628
 ;;21,"55111-0629-30 ")
 ;;629
 ;;21,"55289-0014-30 ")
 ;;630
 ;;21,"55289-0205-30 ")
 ;;631
 ;;21,"55289-0399-02 ")
 ;;632
 ;;21,"55289-0399-03 ")
 ;;633
 ;;21,"55289-0399-10 ")
 ;;634
 ;;21,"55289-0399-14 ")
 ;;635
 ;;21,"55289-0399-30 ")
 ;;636
 ;;21,"55289-0399-60 ")
 ;;637
 ;;21,"55289-0399-79 ")
 ;;638
 ;;21,"55289-0399-90 ")
 ;;639
 ;;21,"55289-0419-01 ")
 ;;640
 ;;21,"55289-0419-06 ")
 ;;641
 ;;21,"55289-0419-10 ")
 ;;642
 ;;21,"55289-0419-14 ")
 ;;643
 ;;21,"55289-0419-15 ")
 ;;644
 ;;21,"55289-0419-21 ")
 ;;645
 ;;21,"55289-0419-30 ")
 ;;646
 ;;21,"55289-0419-60 ")
 ;;647
 ;;21,"55289-0572-30 ")
 ;;648
 ;;21,"55289-0729-06 ")
 ;;649
 ;;21,"55289-0729-12 ")
 ;;650
 ;;21,"55289-0729-30 ")
 ;;651
 ;;21,"55289-0792-06 ")
 ;;652
 ;;21,"55289-0792-10 ")
 ;;653
 ;;21,"55289-0792-12 ")
 ;;654
 ;;21,"55289-0792-20 ")
 ;;655
 ;;21,"55289-0792-30 ")
 ;;656
 ;;21,"55700-0132-30 ")
 ;;657
 ;;21,"55700-0133-30 ")
 ;;658
 ;;21,"55700-0135-30 ")
 ;;659
 ;;21,"55700-0153-30 ")
 ;;660
 ;;21,"55700-0154-30 ")
 ;;661
 ;;21,"55700-0172-30 ")
 ;;662
 ;;21,"55700-0172-60 ")
 ;;663
 ;;21,"55700-0190-30 ")
 ;;664
 ;;21,"55700-0251-30 ")
 ;;665
 ;;21,"58118-2605-03 ")
 ;;666
 ;;21,"58118-2605-06 ")
 ;;667
 ;;21,"58118-5316-03 ")
 ;;668
 ;;21,"58864-0700-15 ")
 ;;669
 ;;21,"58864-0891-06 ")
 ;;670
 ;;21,"59011-0255-30 ")
 ;;671
 ;;21,"59011-0256-30 ")
 ;;672
 ;;21,"60429-0530-01 ")
 ;;673
 ;;21,"60429-0530-05 ")
 ;;674
 ;;21,"60429-0530-20 ")
 ;;675
 ;;21,"60429-0530-30 ")
 ;;676
 ;;21,"60429-0530-60 ")
 ;;677
 ;;21,"60429-0530-90 ")
 ;;678
 ;;21,"60429-0531-01 ")
 ;;679
 ;;21,"60429-0531-05 ")
 ;;680
 ;;21,"60429-0531-15 ")
 ;;681
