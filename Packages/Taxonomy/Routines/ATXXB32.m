ATXXB32 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"BP4HZZZ ")
 ;;12235
 ;;21,"BP4LZZ1 ")
 ;;12236
 ;;21,"BP4LZZZ ")
 ;;12237
 ;;21,"BP4MZZ1 ")
 ;;12238
 ;;21,"BP4MZZZ ")
 ;;12239
 ;;21,"BP4NZZ1 ")
 ;;12240
 ;;21,"BP4NZZZ ")
 ;;12241
 ;;21,"BP4PZZ1 ")
 ;;12242
 ;;21,"BP4PZZZ ")
 ;;12243
 ;;21,"BQ000ZZ ")
 ;;12244
 ;;21,"BQ001ZZ ")
 ;;12245
 ;;21,"BQ00YZZ ")
 ;;12246
 ;;21,"BQ00ZZ1 ")
 ;;12247
 ;;21,"BQ00ZZZ ")
 ;;12248
 ;;21,"BQ010ZZ ")
 ;;12249
 ;;21,"BQ011ZZ ")
 ;;12250
 ;;21,"BQ01YZZ ")
 ;;12251
 ;;21,"BQ01ZZ1 ")
 ;;12252
 ;;21,"BQ01ZZZ ")
 ;;12253
 ;;21,"BQ03ZZ1 ")
 ;;12254
 ;;21,"BQ03ZZZ ")
 ;;12255
 ;;21,"BQ04ZZ1 ")
 ;;12256
 ;;21,"BQ04ZZZ ")
 ;;12257
 ;;21,"BQ070ZZ ")
 ;;12258
 ;;21,"BQ071ZZ ")
 ;;12259
 ;;21,"BQ07YZZ ")
 ;;12260
 ;;21,"BQ07ZZZ ")
 ;;12261
 ;;21,"BQ080ZZ ")
 ;;12262
 ;;21,"BQ081ZZ ")
 ;;12263
 ;;21,"BQ08YZZ ")
 ;;12264
 ;;21,"BQ08ZZZ ")
 ;;12265
 ;;21,"BQ0DZZZ ")
 ;;12266
 ;;21,"BQ0FZZZ ")
 ;;12267
 ;;21,"BQ0G0ZZ ")
 ;;12268
 ;;21,"BQ0G1ZZ ")
 ;;12269
 ;;21,"BQ0GYZZ ")
 ;;12270
 ;;21,"BQ0GZZZ ")
 ;;12271
 ;;21,"BQ0H0ZZ ")
 ;;12272
 ;;21,"BQ0H1ZZ ")
 ;;12273
 ;;21,"BQ0HYZZ ")
 ;;12274
 ;;21,"BQ0HZZZ ")
 ;;12275
 ;;21,"BQ0JZZZ ")
 ;;12276
 ;;21,"BQ0KZZZ ")
 ;;12277
 ;;21,"BQ0LZZZ ")
 ;;12278
 ;;21,"BQ0MZZZ ")
 ;;12279
 ;;21,"BQ0PZZZ ")
 ;;12280
 ;;21,"BQ0QZZZ ")
 ;;12281
 ;;21,"BQ0VZZZ ")
 ;;12282
 ;;21,"BQ0WZZZ ")
 ;;12283
 ;;21,"BQ0X0ZZ ")
 ;;12284
 ;;21,"BQ0X1ZZ ")
 ;;12285
 ;;21,"BQ0XYZZ ")
 ;;12286
 ;;21,"BQ0Y0ZZ ")
 ;;12287
 ;;21,"BQ0Y1ZZ ")
 ;;12288
 ;;21,"BQ0YYZZ ")
 ;;12289
 ;;21,"BQ100ZZ ")
 ;;12290
 ;;21,"BQ101ZZ ")
 ;;12291
 ;;21,"BQ10YZZ ")
 ;;12292
 ;;21,"BQ10ZZZ ")
 ;;12293
 ;;21,"BQ110ZZ ")
 ;;12294
 ;;21,"BQ111ZZ ")
 ;;12295
 ;;21,"BQ11YZZ ")
 ;;12296
 ;;21,"BQ11ZZZ ")
 ;;12297
 ;;21,"BQ13ZZZ ")
 ;;12298
 ;;21,"BQ14ZZZ ")
 ;;12299
 ;;21,"BQ170ZZ ")
 ;;12300
 ;;21,"BQ171ZZ ")
 ;;12301
 ;;21,"BQ17YZZ ")
 ;;12302
 ;;21,"BQ17ZZZ ")
 ;;12303
 ;;21,"BQ180ZZ ")
 ;;12304
 ;;21,"BQ181ZZ ")
 ;;12305
 ;;21,"BQ18YZZ ")
 ;;12306
 ;;21,"BQ18ZZZ ")
 ;;12307
 ;;21,"BQ1DZZZ ")
 ;;12308
 ;;21,"BQ1FZZZ ")
 ;;12309
 ;;21,"BQ1G0ZZ ")
 ;;12310
 ;;21,"BQ1G1ZZ ")
 ;;12311
 ;;21,"BQ1GYZZ ")
 ;;12312
 ;;21,"BQ1GZZZ ")
 ;;12313
 ;;21,"BQ1H0ZZ ")
 ;;12314
 ;;21,"BQ1H1ZZ ")
 ;;12315
 ;;21,"BQ1HYZZ ")
 ;;12316
 ;;21,"BQ1HZZZ ")
 ;;12317
 ;;21,"BQ1JZZZ ")
 ;;12318
 ;;21,"BQ1KZZZ ")
 ;;12319
 ;;21,"BQ1LZZZ ")
 ;;12320
 ;;21,"BQ1MZZZ ")
 ;;12321
 ;;21,"BQ1PZZZ ")
 ;;12322
 ;;21,"BQ1QZZZ ")
 ;;12323
 ;;21,"BQ1VZZZ ")
 ;;12324
 ;;21,"BQ1WZZZ ")
 ;;12325
 ;;21,"BQ1X0ZZ ")
 ;;12326
 ;;21,"BQ1X1ZZ ")
 ;;12327
 ;;21,"BQ1XYZZ ")
 ;;12328
 ;;21,"BQ1XZZZ ")
 ;;12329
 ;;21,"BQ1Y0ZZ ")
 ;;12330
 ;;21,"BQ1Y1ZZ ")
 ;;12331
 ;;21,"BQ1YYZZ ")
 ;;12332
 ;;21,"BQ1YZZZ ")
 ;;12333
 ;;21,"BQ200ZZ ")
 ;;12334
 ;;21,"BQ201ZZ ")
 ;;12335
 ;;21,"BQ20YZZ ")
 ;;12336
 ;;21,"BQ20ZZZ ")
 ;;12337
 ;;21,"BQ210ZZ ")
 ;;12338
 ;;21,"BQ211ZZ ")
 ;;12339
 ;;21,"BQ21YZZ ")
 ;;12340
 ;;21,"BQ21ZZZ ")
 ;;12341
 ;;21,"BQ230ZZ ")
 ;;12342
 ;;21,"BQ231ZZ ")
 ;;12343
 ;;21,"BQ23YZZ ")
 ;;12344
 ;;21,"BQ23ZZZ ")
 ;;12345
 ;;21,"BQ240ZZ ")
 ;;12346
 ;;21,"BQ241ZZ ")
 ;;12347
 ;;21,"BQ24YZZ ")
 ;;12348
 ;;21,"BQ24ZZZ ")
 ;;12349
 ;;21,"BQ270ZZ ")
 ;;12350
 ;;21,"BQ271ZZ ")
 ;;12351
 ;;21,"BQ27YZZ ")
 ;;12352
 ;;21,"BQ27ZZZ ")
 ;;12353
 ;;21,"BQ280ZZ ")
 ;;12354
 ;;21,"BQ281ZZ ")
 ;;12355
 ;;21,"BQ28YZZ ")
 ;;12356
 ;;21,"BQ28ZZZ ")
 ;;12357
 ;;21,"BQ2B0ZZ ")
 ;;12358
 ;;21,"BQ2B1ZZ ")
 ;;12359
 ;;21,"BQ2BYZZ ")
 ;;12360
 ;;21,"BQ2C0ZZ ")
 ;;12361
 ;;21,"BQ2C1ZZ ")
 ;;12362
 ;;21,"BQ2CYZZ ")
 ;;12363
 ;;21,"BQ2D0ZZ ")
 ;;12364
 ;;21,"BQ2D1ZZ ")
 ;;12365
 ;;21,"BQ2DYZZ ")
 ;;12366
 ;;21,"BQ2DZZZ ")
 ;;12367
 ;;21,"BQ2F0ZZ ")
 ;;12368
 ;;21,"BQ2F1ZZ ")
 ;;12369
 ;;21,"BQ2FYZZ ")
 ;;12370
 ;;21,"BQ2FZZZ ")
 ;;12371
 ;;21,"BQ2G0ZZ ")
 ;;12372
 ;;21,"BQ2G1ZZ ")
 ;;12373
 ;;21,"BQ2GYZZ ")
 ;;12374
 ;;21,"BQ2GZZZ ")
 ;;12375
 ;;21,"BQ2H0ZZ ")
 ;;12376
 ;;21,"BQ2H1ZZ ")
 ;;12377
 ;;21,"BQ2HYZZ ")
 ;;12378
 ;;21,"BQ2HZZZ ")
 ;;12379
 ;;21,"BQ2J0ZZ ")
 ;;12380
 ;;21,"BQ2J1ZZ ")
 ;;12381
 ;;21,"BQ2JYZZ ")
 ;;12382
 ;;21,"BQ2JZZZ ")
 ;;12383
 ;;21,"BQ2K0ZZ ")
 ;;12384
 ;;21,"BQ2K1ZZ ")
 ;;12385
 ;;21,"BQ2KYZZ ")
 ;;12386
 ;;21,"BQ2KZZZ ")
 ;;12387
 ;;21,"BQ2L0ZZ ")
 ;;12388
 ;;21,"BQ2L1ZZ ")
 ;;12389
 ;;21,"BQ2LYZZ ")
 ;;12390
 ;;21,"BQ2LZZZ ")
 ;;12391
 ;;21,"BQ2M0ZZ ")
 ;;12392
 ;;21,"BQ2M1ZZ ")
 ;;12393
 ;;21,"BQ2MYZZ ")
 ;;12394
 ;;21,"BQ2MZZZ ")
 ;;12395
 ;;21,"BQ2P0ZZ ")
 ;;12396
 ;;21,"BQ2P1ZZ ")
 ;;12397
 ;;21,"BQ2PYZZ ")
 ;;12398
 ;;21,"BQ2PZZZ ")
 ;;12399
 ;;21,"BQ2Q0ZZ ")
 ;;12400
 ;;21,"BQ2Q1ZZ ")
 ;;12401
 ;;21,"BQ2QYZZ ")
 ;;12402
 ;;21,"BQ2QZZZ ")
 ;;12403
 ;;21,"BQ2R0ZZ ")
 ;;12404
 ;;21,"BQ2R1ZZ ")
 ;;12405
 ;;21,"BQ2RYZZ ")
 ;;12406
 ;;21,"BQ2RZZZ ")
 ;;12407
 ;;21,"BQ2S0ZZ ")
 ;;12408
 ;;21,"BQ2S1ZZ ")
 ;;12409
 ;;21,"BQ2SYZZ ")
 ;;12410
 ;;21,"BQ2SZZZ ")
 ;;12411
 ;;21,"BQ2V0ZZ ")
 ;;12412
 ;;21,"BQ2V1ZZ ")
 ;;12413
 ;;21,"BQ2VYZZ ")
 ;;12414
 ;;21,"BQ2VZZZ ")
 ;;12415
 ;;21,"BQ2W0ZZ ")
 ;;12416
 ;;21,"BQ2W1ZZ ")
 ;;12417
 ;;21,"BQ2WYZZ ")
 ;;12418
 ;;21,"BQ2WZZZ ")
 ;;12419
 ;;21,"BQ2X0ZZ ")
 ;;12420
 ;;21,"BQ2X1ZZ ")
 ;;12421
 ;;21,"BQ2XYZZ ")
 ;;12422
 ;;21,"BQ2XZZZ ")
 ;;12423
 ;;21,"BQ2Y0ZZ ")
 ;;12424
 ;;21,"BQ2Y1ZZ ")
 ;;12425
 ;;21,"BQ2YYZZ ")
 ;;12426
 ;;21,"BQ2YZZZ ")
 ;;12427
 ;;21,"BQ30Y0Z ")
 ;;12428
 ;;21,"BQ30YZZ ")
 ;;12429
 ;;21,"BQ30ZZZ ")
 ;;12430
 ;;21,"BQ31Y0Z ")
 ;;12431
 ;;21,"BQ31YZZ ")
 ;;12432
 ;;21,"BQ31ZZZ ")
 ;;12433
 ;;21,"BQ33Y0Z ")
 ;;12434
 ;;21,"BQ33YZZ ")
 ;;12435
 ;;21,"BQ33ZZZ ")
 ;;12436
 ;;21,"BQ34Y0Z ")
 ;;12437
 ;;21,"BQ34YZZ ")
 ;;12438
 ;;21,"BQ34ZZZ ")
 ;;12439
 ;;21,"BQ37Y0Z ")
 ;;12440
 ;;21,"BQ37YZZ ")
 ;;12441
 ;;21,"BQ37ZZZ ")
 ;;12442
 ;;21,"BQ38Y0Z ")
 ;;12443
 ;;21,"BQ38YZZ ")
 ;;12444
 ;;21,"BQ38ZZZ ")
 ;;12445
 ;;21,"BQ3DY0Z ")
 ;;12446
 ;;21,"BQ3DYZZ ")
 ;;12447
 ;;21,"BQ3DZZZ ")
 ;;12448
 ;;21,"BQ3FY0Z ")
 ;;12449
 ;;21,"BQ3FYZZ ")
 ;;12450
 ;;21,"BQ3FZZZ ")
 ;;12451
 ;;21,"BQ3GY0Z ")
 ;;12452
 ;;21,"BQ3GYZZ ")
 ;;12453
 ;;21,"BQ3GZZZ ")
 ;;12454
 ;;21,"BQ3HY0Z ")
 ;;12455
 ;;21,"BQ3HYZZ ")
 ;;12456
 ;;21,"BQ3HZZZ ")
 ;;12457
 ;;21,"BQ3JY0Z ")
 ;;12458
 ;;21,"BQ3JYZZ ")
 ;;12459
 ;;21,"BQ3JZZZ ")
 ;;12460
 ;;21,"BQ3KY0Z ")
 ;;12461
 ;;21,"BQ3KYZZ ")
 ;;12462
 ;;21,"BQ3KZZZ ")
 ;;12463
 ;;21,"BQ3LY0Z ")
 ;;12464
 ;;21,"BQ3LYZZ ")
 ;;12465
 ;;21,"BQ3LZZZ ")
 ;;12466
 ;;21,"BQ3MY0Z ")
 ;;12467
 ;;21,"BQ3MYZZ ")
 ;;12468
 ;;21,"BQ3MZZZ ")
 ;;12469
 ;;21,"BQ3PY0Z ")
 ;;12470
 ;;21,"BQ3PYZZ ")
 ;;12471
 ;;21,"BQ3PZZZ ")
 ;;12472
 ;;21,"BQ3QY0Z ")
 ;;12473
 ;;21,"BQ3QYZZ ")
 ;;12474
 ;;21,"BQ3QZZZ ")
 ;;12475
 ;;21,"BQ3VY0Z ")
 ;;12476
 ;;21,"BQ3VYZZ ")
 ;;12477
 ;;21,"BQ3VZZZ ")
 ;;12478
 ;;21,"BQ3WY0Z ")
 ;;12479
 ;;21,"BQ3WYZZ ")
 ;;12480
 ;;21,"BQ3WZZZ ")
 ;;12481
 ;;21,"BQ40ZZZ ")
 ;;12482
 ;;21,"BQ41ZZZ ")
 ;;12483
 ;;21,"BQ42ZZZ ")
 ;;12484
 ;;21,"BQ47ZZZ ")
 ;;12485
 ;;21,"BQ48ZZZ ")
 ;;12486
 ;;21,"BQ49ZZZ ")
 ;;12487
 ;;21,"BR00ZZ1 ")
 ;;12488
 ;;21,"BR00ZZZ ")
 ;;12489
 ;;21,"BR010ZZ ")
 ;;12490
 ;;21,"BR011ZZ ")
 ;;12491
 ;;21,"BR01YZZ ")
 ;;12492
 ;;21,"BR01ZZZ ")
 ;;12493
 ;;21,"BR020ZZ ")
 ;;12494
 ;;21,"BR021ZZ ")
 ;;12495
 ;;21,"BR02YZZ ")
 ;;12496
 ;;21,"BR02ZZZ ")
 ;;12497
 ;;21,"BR030ZZ ")
 ;;12498
 ;;21,"BR031ZZ ")
 ;;12499
 ;;21,"BR03YZZ ")
 ;;12500
 ;;21,"BR03ZZZ ")
 ;;12501
 ;;21,"BR040ZZ ")
 ;;12502
 ;;21,"BR041ZZ ")
 ;;12503
 ;;21,"BR04YZZ ")
 ;;12504
 ;;21,"BR04ZZZ ")
 ;;12505
 ;;21,"BR050ZZ ")
 ;;12506
 ;;21,"BR051ZZ ")
 ;;12507
 ;;21,"BR05YZZ ")
 ;;12508
 ;;21,"BR05ZZZ ")
 ;;12509
 ;;21,"BR060ZZ ")
 ;;12510
 ;;21,"BR061ZZ ")
 ;;12511
 ;;21,"BR06YZZ ")
 ;;12512
 ;;21,"BR06ZZZ ")
 ;;12513
 ;;21,"BR07ZZ1 ")
 ;;12514
 ;;21,"BR07ZZZ ")
 ;;12515
 ;;21,"BR08ZZZ ")
 ;;12516
 ;;21,"BR09ZZ1 ")
 ;;12517
 ;;21,"BR09ZZZ ")
 ;;12518
 ;;21,"BR0BZZZ ")
 ;;12519
 ;;21,"BR0CZZZ ")
 ;;12520
 ;;21,"BR0D0ZZ ")
 ;;12521
 ;;21,"BR0D1ZZ ")
 ;;12522
 ;;21,"BR0DYZZ ")
 ;;12523
 ;;21,"BR0DZZZ ")
 ;;12524
 ;;21,"BR0FZZZ ")
 ;;12525
 ;;21,"BR0GZZ1 ")
 ;;12526
 ;;21,"BR0GZZZ ")
 ;;12527
 ;;21,"BR0HZZZ ")
 ;;12528
 ;;21,"BR100ZZ ")
 ;;12529
 ;;21,"BR101ZZ ")
 ;;12530
 ;;21,"BR10YZZ ")
 ;;12531
 ;;21,"BR10ZZZ ")
 ;;12532
 ;;21,"BR110ZZ ")
 ;;12533
 ;;21,"BR111ZZ ")
 ;;12534
 ;;21,"BR11YZZ ")
 ;;12535
 ;;21,"BR11ZZZ ")
 ;;12536
 ;;21,"BR120ZZ ")
 ;;12537
 ;;21,"BR121ZZ ")
 ;;12538
 ;;21,"BR12YZZ ")
 ;;12539
 ;;21,"BR12ZZZ ")
 ;;12540
 ;;21,"BR130ZZ ")
 ;;12541
 ;;21,"BR131ZZ ")
 ;;12542
 ;;21,"BR13YZZ ")
 ;;12543
 ;;21,"BR13ZZZ ")
 ;;12544
 ;;21,"BR140ZZ ")
 ;;12545
 ;;21,"BR141ZZ ")
 ;;12546
 ;;21,"BR14YZZ ")
 ;;12547
 ;;21,"BR14ZZZ ")
 ;;12548
 ;;21,"BR150ZZ ")
 ;;12549
 ;;21,"BR151ZZ ")
 ;;12550
 ;;21,"BR15YZZ ")
 ;;12551
 ;;21,"BR15ZZZ ")
 ;;12552
 ;;21,"BR160ZZ ")
 ;;12553
 ;;21,"BR161ZZ ")
 ;;12554
 ;;21,"BR16YZZ ")
 ;;12555
 ;;21,"BR16ZZZ ")
 ;;12556
 ;;21,"BR170ZZ ")
 ;;12557
 ;;21,"BR171ZZ ")
 ;;12558
 ;;21,"BR17YZZ ")
 ;;12559
 ;;21,"BR17ZZZ ")
 ;;12560
 ;;21,"BR180ZZ ")
 ;;12561
 ;;21,"BR181ZZ ")
 ;;12562
 ;;21,"BR18YZZ ")
 ;;12563
 ;;21,"BR18ZZZ ")
 ;;12564
 ;;21,"BR190ZZ ")
 ;;12565
 ;;21,"BR191ZZ ")
 ;;12566
 ;;21,"BR19YZZ ")
 ;;12567
 ;;21,"BR19ZZZ ")
 ;;12568
 ;;21,"BR1B0ZZ ")
 ;;12569
 ;;21,"BR1B1ZZ ")
 ;;12570
 ;;21,"BR1BYZZ ")
 ;;12571
 ;;21,"BR1BZZZ ")
 ;;12572
 ;;21,"BR1C0ZZ ")
 ;;12573
 ;;21,"BR1C1ZZ ")
 ;;12574
 ;;21,"BR1CYZZ ")
 ;;12575
 ;;21,"BR1CZZZ ")
 ;;12576
 ;;21,"BR1D0ZZ ")
 ;;12577
 ;;21,"BR1D1ZZ ")
 ;;12578
 ;;21,"BR1DYZZ ")
 ;;12579
 ;;21,"BR1DZZZ ")
 ;;12580
 ;;21,"BR1F0ZZ ")
 ;;12581
 ;;21,"BR1F1ZZ ")
 ;;12582
 ;;21,"BR1FYZZ ")
 ;;12583
 ;;21,"BR1FZZZ ")
 ;;12584
 ;;21,"BR1G0ZZ ")
 ;;12585
 ;;21,"BR1G1ZZ ")
 ;;12586
 ;;21,"BR1GYZZ ")
 ;;12587
 ;;21,"BR1GZZZ ")
 ;;12588
 ;;21,"BR1H0ZZ ")
 ;;12589
 ;;21,"BR1H1ZZ ")
 ;;12590
 ;;21,"BR1HYZZ ")
 ;;12591
 ;;21,"BR1HZZZ ")
 ;;12592
 ;;21,"BR200ZZ ")
 ;;12593
 ;;21,"BR201ZZ ")
 ;;12594
 ;;21,"BR20YZZ ")
 ;;12595
 ;;21,"BR20ZZZ ")
 ;;12596
 ;;21,"BR270ZZ ")
 ;;12597
 ;;21,"BR271ZZ ")
 ;;12598
 ;;21,"BR27YZZ ")
 ;;12599
 ;;21,"BR27ZZZ ")
 ;;12600
 ;;21,"BR290ZZ ")
 ;;12601
 ;;21,"BR291ZZ ")
 ;;12602
 ;;21,"BR29YZZ ")
 ;;12603
 ;;21,"BR29ZZZ ")
 ;;12604
 ;;21,"BR2C0ZZ ")
 ;;12605
 ;;21,"BR2C1ZZ ")
 ;;12606
 ;;21,"BR2CYZZ ")
 ;;12607
 ;;21,"BR2CZZZ ")
 ;;12608
 ;;21,"BR2D0ZZ ")
 ;;12609
 ;;21,"BR2D1ZZ ")
 ;;12610
 ;;21,"BR2DYZZ ")
 ;;12611
 ;;21,"BR2DZZZ ")
 ;;12612
 ;;21,"BR2F0ZZ ")
 ;;12613
 ;;21,"BR2F1ZZ ")
 ;;12614
 ;;21,"BR2FYZZ ")
 ;;12615
 ;;21,"BR2FZZZ ")
 ;;12616
 ;;21,"BR30Y0Z ")
 ;;12617
 ;;21,"BR30YZZ ")
 ;;12618
