ATXXB22 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"2W0JX6Z ")
 ;;8345
 ;;21,"2W0JX7Z ")
 ;;8346
 ;;21,"2W0JXYZ ")
 ;;8347
 ;;21,"2W0KX0Z ")
 ;;8348
 ;;21,"2W0KX1Z ")
 ;;8349
 ;;21,"2W0KX2Z ")
 ;;8350
 ;;21,"2W0KX3Z ")
 ;;8351
 ;;21,"2W0KX4Z ")
 ;;8352
 ;;21,"2W0KX5Z ")
 ;;8353
 ;;21,"2W0KX6Z ")
 ;;8354
 ;;21,"2W0KX7Z ")
 ;;8355
 ;;21,"2W0KXYZ ")
 ;;8356
 ;;21,"2W0LX0Z ")
 ;;8357
 ;;21,"2W0LX1Z ")
 ;;8358
 ;;21,"2W0LX2Z ")
 ;;8359
 ;;21,"2W0LX3Z ")
 ;;8360
 ;;21,"2W0LX4Z ")
 ;;8361
 ;;21,"2W0LX5Z ")
 ;;8362
 ;;21,"2W0LX6Z ")
 ;;8363
 ;;21,"2W0LX7Z ")
 ;;8364
 ;;21,"2W0LXYZ ")
 ;;8365
 ;;21,"2W0MX0Z ")
 ;;8366
 ;;21,"2W0MX1Z ")
 ;;8367
 ;;21,"2W0MX2Z ")
 ;;8368
 ;;21,"2W0MX3Z ")
 ;;8369
 ;;21,"2W0MX4Z ")
 ;;8370
 ;;21,"2W0MX5Z ")
 ;;8371
 ;;21,"2W0MX6Z ")
 ;;8372
 ;;21,"2W0MX7Z ")
 ;;8373
 ;;21,"2W0MXYZ ")
 ;;8374
 ;;21,"2W0NX0Z ")
 ;;8375
 ;;21,"2W0NX1Z ")
 ;;8376
 ;;21,"2W0NX2Z ")
 ;;8377
 ;;21,"2W0NX3Z ")
 ;;8378
 ;;21,"2W0NX4Z ")
 ;;8379
 ;;21,"2W0NX5Z ")
 ;;8380
 ;;21,"2W0NX6Z ")
 ;;8381
 ;;21,"2W0NX7Z ")
 ;;8382
 ;;21,"2W0NXYZ ")
 ;;8383
 ;;21,"2W0PX0Z ")
 ;;8384
 ;;21,"2W0PX1Z ")
 ;;8385
 ;;21,"2W0PX2Z ")
 ;;8386
 ;;21,"2W0PX3Z ")
 ;;8387
 ;;21,"2W0PX4Z ")
 ;;8388
 ;;21,"2W0PX5Z ")
 ;;8389
 ;;21,"2W0PX6Z ")
 ;;8390
 ;;21,"2W0PX7Z ")
 ;;8391
 ;;21,"2W0PXYZ ")
 ;;8392
 ;;21,"2W0QX0Z ")
 ;;8393
 ;;21,"2W0QX1Z ")
 ;;8394
 ;;21,"2W0QX2Z ")
 ;;8395
 ;;21,"2W0QX3Z ")
 ;;8396
 ;;21,"2W0QX4Z ")
 ;;8397
 ;;21,"2W0QX5Z ")
 ;;8398
 ;;21,"2W0QX6Z ")
 ;;8399
 ;;21,"2W0QX7Z ")
 ;;8400
 ;;21,"2W0QXYZ ")
 ;;8401
 ;;21,"2W0RX0Z ")
 ;;8402
 ;;21,"2W0RX1Z ")
 ;;8403
 ;;21,"2W0RX2Z ")
 ;;8404
 ;;21,"2W0RX3Z ")
 ;;8405
 ;;21,"2W0RX4Z ")
 ;;8406
 ;;21,"2W0RX5Z ")
 ;;8407
 ;;21,"2W0RX6Z ")
 ;;8408
 ;;21,"2W0RX7Z ")
 ;;8409
 ;;21,"2W0RXYZ ")
 ;;8410
 ;;21,"2W0SX0Z ")
 ;;8411
 ;;21,"2W0SX1Z ")
 ;;8412
 ;;21,"2W0SX2Z ")
 ;;8413
 ;;21,"2W0SX3Z ")
 ;;8414
 ;;21,"2W0SX4Z ")
 ;;8415
 ;;21,"2W0SX5Z ")
 ;;8416
 ;;21,"2W0SX6Z ")
 ;;8417
 ;;21,"2W0SX7Z ")
 ;;8418
 ;;21,"2W0SXYZ ")
 ;;8419
 ;;21,"2W0TX0Z ")
 ;;8420
 ;;21,"2W0TX1Z ")
 ;;8421
 ;;21,"2W0TX2Z ")
 ;;8422
 ;;21,"2W0TX3Z ")
 ;;8423
 ;;21,"2W0TX4Z ")
 ;;8424
 ;;21,"2W0TX5Z ")
 ;;8425
 ;;21,"2W0TX6Z ")
 ;;8426
 ;;21,"2W0TX7Z ")
 ;;8427
 ;;21,"2W0TXYZ ")
 ;;8428
 ;;21,"2W0UX0Z ")
 ;;8429
 ;;21,"2W0UX1Z ")
 ;;8430
 ;;21,"2W0UX2Z ")
 ;;8431
 ;;21,"2W0UX3Z ")
 ;;8432
 ;;21,"2W0UX4Z ")
 ;;8433
 ;;21,"2W0UX5Z ")
 ;;8434
 ;;21,"2W0UX6Z ")
 ;;8435
 ;;21,"2W0UX7Z ")
 ;;8436
 ;;21,"2W0UXYZ ")
 ;;8437
 ;;21,"2W0VX0Z ")
 ;;8438
 ;;21,"2W0VX1Z ")
 ;;8439
 ;;21,"2W0VX2Z ")
 ;;8440
 ;;21,"2W0VX3Z ")
 ;;8441
 ;;21,"2W0VX4Z ")
 ;;8442
 ;;21,"2W0VX5Z ")
 ;;8443
 ;;21,"2W0VX6Z ")
 ;;8444
 ;;21,"2W0VX7Z ")
 ;;8445
 ;;21,"2W0VXYZ ")
 ;;8446
 ;;21,"2W10X6Z ")
 ;;8447
 ;;21,"2W10X7Z ")
 ;;8448
 ;;21,"2W11X6Z ")
 ;;8449
 ;;21,"2W11X7Z ")
 ;;8450
 ;;21,"2W12X6Z ")
 ;;8451
 ;;21,"2W12X7Z ")
 ;;8452
 ;;21,"2W13X6Z ")
 ;;8453
 ;;21,"2W13X7Z ")
 ;;8454
 ;;21,"2W14X6Z ")
 ;;8455
 ;;21,"2W14X7Z ")
 ;;8456
 ;;21,"2W15X6Z ")
 ;;8457
 ;;21,"2W15X7Z ")
 ;;8458
 ;;21,"2W16X6Z ")
 ;;8459
 ;;21,"2W16X7Z ")
 ;;8460
 ;;21,"2W17X6Z ")
 ;;8461
 ;;21,"2W17X7Z ")
 ;;8462
 ;;21,"2W18X6Z ")
 ;;8463
 ;;21,"2W18X7Z ")
 ;;8464
 ;;21,"2W19X6Z ")
 ;;8465
 ;;21,"2W19X7Z ")
 ;;8466
 ;;21,"2W1AX6Z ")
 ;;8467
 ;;21,"2W1AX7Z ")
 ;;8468
 ;;21,"2W1BX6Z ")
 ;;8469
 ;;21,"2W1BX7Z ")
 ;;8470
 ;;21,"2W1CX6Z ")
 ;;8471
 ;;21,"2W1CX7Z ")
 ;;8472
 ;;21,"2W1DX6Z ")
 ;;8473
 ;;21,"2W1DX7Z ")
 ;;8474
 ;;21,"2W1EX6Z ")
 ;;8475
 ;;21,"2W1EX7Z ")
 ;;8476
 ;;21,"2W1FX6Z ")
 ;;8477
 ;;21,"2W1FX7Z ")
 ;;8478
 ;;21,"2W1GX6Z ")
 ;;8479
 ;;21,"2W1GX7Z ")
 ;;8480
 ;;21,"2W1HX6Z ")
 ;;8481
 ;;21,"2W1HX7Z ")
 ;;8482
 ;;21,"2W1JX6Z ")
 ;;8483
 ;;21,"2W1JX7Z ")
 ;;8484
 ;;21,"2W1KX6Z ")
 ;;8485
 ;;21,"2W1KX7Z ")
 ;;8486
 ;;21,"2W1LX6Z ")
 ;;8487
 ;;21,"2W1LX7Z ")
 ;;8488
 ;;21,"2W1MX6Z ")
 ;;8489
 ;;21,"2W1MX7Z ")
 ;;8490
 ;;21,"2W1NX6Z ")
 ;;8491
 ;;21,"2W1NX7Z ")
 ;;8492
 ;;21,"2W1PX6Z ")
 ;;8493
 ;;21,"2W1PX7Z ")
 ;;8494
 ;;21,"2W1QX6Z ")
 ;;8495
 ;;21,"2W1QX7Z ")
 ;;8496
 ;;21,"2W1RX6Z ")
 ;;8497
 ;;21,"2W1RX7Z ")
 ;;8498
 ;;21,"2W1SX6Z ")
 ;;8499
 ;;21,"2W1SX7Z ")
 ;;8500
 ;;21,"2W1TX6Z ")
 ;;8501
 ;;21,"2W1TX7Z ")
 ;;8502
 ;;21,"2W1UX6Z ")
 ;;8503
 ;;21,"2W1UX7Z ")
 ;;8504
 ;;21,"2W1VX6Z ")
 ;;8505
 ;;21,"2W1VX7Z ")
 ;;8506
 ;;21,"2W20X4Z ")
 ;;8507
 ;;21,"2W21X4Z ")
 ;;8508
 ;;21,"2W22X4Z ")
 ;;8509
 ;;21,"2W23X4Z ")
 ;;8510
 ;;21,"2W24X4Z ")
 ;;8511
 ;;21,"2W25X4Z ")
 ;;8512
 ;;21,"2W26X4Z ")
 ;;8513
 ;;21,"2W27X4Z ")
 ;;8514
 ;;21,"2W28X4Z ")
 ;;8515
 ;;21,"2W29X4Z ")
 ;;8516
 ;;21,"2W2AX4Z ")
 ;;8517
 ;;21,"2W2BX4Z ")
 ;;8518
 ;;21,"2W2CX4Z ")
 ;;8519
 ;;21,"2W2DX4Z ")
 ;;8520
 ;;21,"2W2EX4Z ")
 ;;8521
 ;;21,"2W2FX4Z ")
 ;;8522
 ;;21,"2W2GX4Z ")
 ;;8523
 ;;21,"2W2HX4Z ")
 ;;8524
 ;;21,"2W2JX4Z ")
 ;;8525
 ;;21,"2W2KX4Z ")
 ;;8526
 ;;21,"2W2LX4Z ")
 ;;8527
 ;;21,"2W2MX4Z ")
 ;;8528
 ;;21,"2W2NX4Z ")
 ;;8529
 ;;21,"2W2PX4Z ")
 ;;8530
 ;;21,"2W2QX4Z ")
 ;;8531
 ;;21,"2W2RX4Z ")
 ;;8532
 ;;21,"2W2SX4Z ")
 ;;8533
 ;;21,"2W2TX4Z ")
 ;;8534
 ;;21,"2W2UX4Z ")
 ;;8535
 ;;21,"2W2VX4Z ")
 ;;8536
 ;;21,"2W30X1Z ")
 ;;8537
 ;;21,"2W30X2Z ")
 ;;8538
 ;;21,"2W30X3Z ")
 ;;8539
 ;;21,"2W30XYZ ")
 ;;8540
 ;;21,"2W31X1Z ")
 ;;8541
 ;;21,"2W31X2Z ")
 ;;8542
 ;;21,"2W31X3Z ")
 ;;8543
 ;;21,"2W31X9Z ")
 ;;8544
 ;;21,"2W31XYZ ")
 ;;8545
 ;;21,"2W32X1Z ")
 ;;8546
 ;;21,"2W32X2Z ")
 ;;8547
 ;;21,"2W32X3Z ")
 ;;8548
 ;;21,"2W32XYZ ")
 ;;8549
 ;;21,"2W33X1Z ")
 ;;8550
 ;;21,"2W33X2Z ")
 ;;8551
 ;;21,"2W33X3Z ")
 ;;8552
 ;;21,"2W33XYZ ")
 ;;8553
 ;;21,"2W34X1Z ")
 ;;8554
 ;;21,"2W34X2Z ")
 ;;8555
 ;;21,"2W34X3Z ")
 ;;8556
 ;;21,"2W34XYZ ")
 ;;8557
 ;;21,"2W35X1Z ")
 ;;8558
 ;;21,"2W35X2Z ")
 ;;8559
 ;;21,"2W35X3Z ")
 ;;8560
 ;;21,"2W35XYZ ")
 ;;8561
 ;;21,"2W36X1Z ")
 ;;8562
 ;;21,"2W36X2Z ")
 ;;8563
 ;;21,"2W36X3Z ")
 ;;8564
 ;;21,"2W36XYZ ")
 ;;8565
 ;;21,"2W37X1Z ")
 ;;8566
 ;;21,"2W37X2Z ")
 ;;8567
 ;;21,"2W37X3Z ")
 ;;8568
 ;;21,"2W37XYZ ")
 ;;8569
 ;;21,"2W38X1Z ")
 ;;8570
 ;;21,"2W38X2Z ")
 ;;8571
 ;;21,"2W38X3Z ")
 ;;8572
 ;;21,"2W38XYZ ")
 ;;8573
 ;;21,"2W39X1Z ")
 ;;8574
 ;;21,"2W39X2Z ")
 ;;8575
 ;;21,"2W39X3Z ")
 ;;8576
 ;;21,"2W39XYZ ")
 ;;8577
 ;;21,"2W3AX1Z ")
 ;;8578
 ;;21,"2W3AX2Z ")
 ;;8579
 ;;21,"2W3AX3Z ")
 ;;8580
 ;;21,"2W3AXYZ ")
 ;;8581
 ;;21,"2W3BX1Z ")
 ;;8582
 ;;21,"2W3BX2Z ")
 ;;8583
 ;;21,"2W3BX3Z ")
 ;;8584
 ;;21,"2W3BXYZ ")
 ;;8585
 ;;21,"2W3CX1Z ")
 ;;8586
 ;;21,"2W3CX2Z ")
 ;;8587
 ;;21,"2W3CX3Z ")
 ;;8588
 ;;21,"2W3CXYZ ")
 ;;8589
 ;;21,"2W3DX1Z ")
 ;;8590
 ;;21,"2W3DX2Z ")
 ;;8591
 ;;21,"2W3DX3Z ")
 ;;8592
 ;;21,"2W3DXYZ ")
 ;;8593
 ;;21,"2W3EX1Z ")
 ;;8594
 ;;21,"2W3EX2Z ")
 ;;8595
 ;;21,"2W3EX3Z ")
 ;;8596
 ;;21,"2W3EXYZ ")
 ;;8597
 ;;21,"2W3FX1Z ")
 ;;8598
 ;;21,"2W3FX2Z ")
 ;;8599
 ;;21,"2W3FX3Z ")
 ;;8600
 ;;21,"2W3FXYZ ")
 ;;8601
 ;;21,"2W3GX1Z ")
 ;;8602
 ;;21,"2W3GX2Z ")
 ;;8603
 ;;21,"2W3GX3Z ")
 ;;8604
 ;;21,"2W3GXYZ ")
 ;;8605
 ;;21,"2W3HX1Z ")
 ;;8606
 ;;21,"2W3HX2Z ")
 ;;8607
 ;;21,"2W3HX3Z ")
 ;;8608
 ;;21,"2W3HXYZ ")
 ;;8609
 ;;21,"2W3JX1Z ")
 ;;8610
 ;;21,"2W3JX2Z ")
 ;;8611
 ;;21,"2W3JX3Z ")
 ;;8612
 ;;21,"2W3JXYZ ")
 ;;8613
 ;;21,"2W3KX1Z ")
 ;;8614
 ;;21,"2W3KX2Z ")
 ;;8615
 ;;21,"2W3KX3Z ")
 ;;8616
 ;;21,"2W3KXYZ ")
 ;;8617
 ;;21,"2W3LX1Z ")
 ;;8618
 ;;21,"2W3LX2Z ")
 ;;8619
 ;;21,"2W3LX3Z ")
 ;;8620
 ;;21,"2W3LXYZ ")
 ;;8621
 ;;21,"2W3MX1Z ")
 ;;8622
 ;;21,"2W3MX2Z ")
 ;;8623
 ;;21,"2W3MX3Z ")
 ;;8624
 ;;21,"2W3MXYZ ")
 ;;8625
 ;;21,"2W3NX1Z ")
 ;;8626
 ;;21,"2W3NX2Z ")
 ;;8627
 ;;21,"2W3NX3Z ")
 ;;8628
 ;;21,"2W3NXYZ ")
 ;;8629
 ;;21,"2W3PX1Z ")
 ;;8630
 ;;21,"2W3PX2Z ")
 ;;8631
 ;;21,"2W3PX3Z ")
 ;;8632
 ;;21,"2W3PXYZ ")
 ;;8633
 ;;21,"2W3QX1Z ")
 ;;8634
 ;;21,"2W3QX2Z ")
 ;;8635
 ;;21,"2W3QX3Z ")
 ;;8636
 ;;21,"2W3QXYZ ")
 ;;8637
 ;;21,"2W3RX1Z ")
 ;;8638
 ;;21,"2W3RX2Z ")
 ;;8639
 ;;21,"2W3RX3Z ")
 ;;8640
 ;;21,"2W3RXYZ ")
 ;;8641
 ;;21,"2W3SX1Z ")
 ;;8642
 ;;21,"2W3SX2Z ")
 ;;8643
 ;;21,"2W3SX3Z ")
 ;;8644
 ;;21,"2W3SXYZ ")
 ;;8645
 ;;21,"2W3TX1Z ")
 ;;8646
 ;;21,"2W3TX2Z ")
 ;;8647
 ;;21,"2W3TX3Z ")
 ;;8648
 ;;21,"2W3TXYZ ")
 ;;8649
 ;;21,"2W3UX1Z ")
 ;;8650
 ;;21,"2W3UX2Z ")
 ;;8651
 ;;21,"2W3UX3Z ")
 ;;8652
 ;;21,"2W3UXYZ ")
 ;;8653
 ;;21,"2W3VX1Z ")
 ;;8654
 ;;21,"2W3VX2Z ")
 ;;8655
 ;;21,"2W3VX3Z ")
 ;;8656
 ;;21,"2W3VXYZ ")
 ;;8657
 ;;21,"2W40X5Z ")
 ;;8658
 ;;21,"2W41X5Z ")
 ;;8659
 ;;21,"2W42X5Z ")
 ;;8660
 ;;21,"2W43X5Z ")
 ;;8661
 ;;21,"2W44X5Z ")
 ;;8662
 ;;21,"2W45X5Z ")
 ;;8663
 ;;21,"2W46X5Z ")
 ;;8664
 ;;21,"2W47X5Z ")
 ;;8665
 ;;21,"2W48X5Z ")
 ;;8666
 ;;21,"2W49X5Z ")
 ;;8667
 ;;21,"2W4AX5Z ")
 ;;8668
 ;;21,"2W4BX5Z ")
 ;;8669
 ;;21,"2W4CX5Z ")
 ;;8670
 ;;21,"2W4DX5Z ")
 ;;8671
 ;;21,"2W4EX5Z ")
 ;;8672
 ;;21,"2W4FX5Z ")
 ;;8673
 ;;21,"2W4GX5Z ")
 ;;8674
 ;;21,"2W4HX5Z ")
 ;;8675
 ;;21,"2W4JX5Z ")
 ;;8676
 ;;21,"2W4KX5Z ")
 ;;8677
 ;;21,"2W4LX5Z ")
 ;;8678
 ;;21,"2W4MX5Z ")
 ;;8679
 ;;21,"2W4NX5Z ")
 ;;8680
 ;;21,"2W4PX5Z ")
 ;;8681
 ;;21,"2W4QX5Z ")
 ;;8682
 ;;21,"2W4RX5Z ")
 ;;8683
 ;;21,"2W4SX5Z ")
 ;;8684
 ;;21,"2W4TX5Z ")
 ;;8685
 ;;21,"2W4UX5Z ")
 ;;8686
 ;;21,"2W4VX5Z ")
 ;;8687
 ;;21,"2W50X0Z ")
 ;;8688
 ;;21,"2W50X1Z ")
 ;;8689
 ;;21,"2W50X2Z ")
 ;;8690
 ;;21,"2W50X3Z ")
 ;;8691
 ;;21,"2W50X4Z ")
 ;;8692
 ;;21,"2W50X5Z ")
 ;;8693
 ;;21,"2W50X6Z ")
 ;;8694
 ;;21,"2W50X7Z ")
 ;;8695
 ;;21,"2W50XYZ ")
 ;;8696
 ;;21,"2W51X0Z ")
 ;;8697
 ;;21,"2W51X1Z ")
 ;;8698
 ;;21,"2W51X2Z ")
 ;;8699
 ;;21,"2W51X3Z ")
 ;;8700
 ;;21,"2W51X4Z ")
 ;;8701
 ;;21,"2W51X5Z ")
 ;;8702
 ;;21,"2W51X6Z ")
 ;;8703
 ;;21,"2W51X7Z ")
 ;;8704
 ;;21,"2W51X9Z ")
 ;;8705
 ;;21,"2W51XYZ ")
 ;;8706
 ;;21,"2W52X0Z ")
 ;;8707
 ;;21,"2W52X1Z ")
 ;;8708
 ;;21,"2W52X2Z ")
 ;;8709
 ;;21,"2W52X3Z ")
 ;;8710
 ;;21,"2W52X4Z ")
 ;;8711
 ;;21,"2W52X5Z ")
 ;;8712
 ;;21,"2W52X6Z ")
 ;;8713
 ;;21,"2W52X7Z ")
 ;;8714
 ;;21,"2W52XYZ ")
 ;;8715
 ;;21,"2W53X0Z ")
 ;;8716
 ;;21,"2W53X1Z ")
 ;;8717
 ;;21,"2W53X2Z ")
 ;;8718
 ;;21,"2W53X3Z ")
 ;;8719
 ;;21,"2W53X4Z ")
 ;;8720
 ;;21,"2W53X5Z ")
 ;;8721
 ;;21,"2W53X6Z ")
 ;;8722
 ;;21,"2W53X7Z ")
 ;;8723
 ;;21,"2W53XYZ ")
 ;;8724
 ;;21,"2W54X0Z ")
 ;;8725
 ;;21,"2W54X1Z ")
 ;;8726
 ;;21,"2W54X2Z ")
 ;;8727
 ;;21,"2W54X3Z ")
 ;;8728
 ;;21,"2W54X4Z ")
 ;;8729
 ;;21,"2W54X5Z ")
 ;;8730
 ;;21,"2W54X6Z ")
 ;;8731
 ;;21,"2W54X7Z ")
 ;;8732
 ;;21,"2W54XYZ ")
 ;;8733
 ;;21,"2W55X0Z ")
 ;;8734
 ;;21,"2W55X1Z ")
 ;;8735
 ;;21,"2W55X2Z ")
 ;;8736
 ;;21,"2W55X3Z ")
 ;;8737
 ;;21,"2W55X4Z ")
 ;;8738
 ;;21,"2W55X5Z ")
 ;;8739
 ;;21,"2W55X6Z ")
 ;;8740
