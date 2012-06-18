BGP7IXS ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 16, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;BGP HEDIS ACEI NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ACEI NDC
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
 ;;21,"00003-0338-50 ")
 ;;1481
 ;;21,"00003-0349-50 ")
 ;;1467
 ;;21,"00003-0384-50 ")
 ;;1459
 ;;21,"00003-0390-50 ")
 ;;1502
 ;;21,"00003-0450-51 ")
 ;;793
 ;;21,"00003-0450-54 ")
 ;;938
 ;;21,"00003-0450-75 ")
 ;;849
 ;;21,"00003-0452-50 ")
 ;;666
 ;;21,"00003-0452-51 ")
 ;;667
 ;;21,"00003-0452-75 ")
 ;;668
 ;;21,"00003-0482-50 ")
 ;;872
 ;;21,"00003-0482-51 ")
 ;;873
 ;;21,"00003-0482-75 ")
 ;;874
 ;;21,"00003-0485-50 ")
 ;;882
 ;;21,"00006-0014-28 ")
 ;;37
 ;;21,"00006-0014-68 ")
 ;;38
 ;;21,"00006-0014-82 ")
 ;;39
 ;;21,"00006-0014-87 ")
 ;;40
 ;;21,"00006-0014-94 ")
 ;;41
 ;;21,"00006-0015-28 ")
 ;;1413
 ;;21,"00006-0015-31 ")
 ;;1422
 ;;21,"00006-0015-58 ")
 ;;1423
 ;;21,"00006-0015-72 ")
 ;;1424
 ;;21,"00006-0019-28 ")
 ;;87
 ;;21,"00006-0019-54 ")
 ;;73
 ;;21,"00006-0019-58 ")
 ;;59
 ;;21,"00006-0019-72 ")
 ;;75
 ;;21,"00006-0019-82 ")
 ;;76
 ;;21,"00006-0019-86 ")
 ;;77
 ;;21,"00006-0019-87 ")
 ;;78
 ;;21,"00006-0019-94 ")
 ;;79
 ;;21,"00006-0106-28 ")
 ;;368
 ;;21,"00006-0106-31 ")
 ;;369
 ;;21,"00006-0106-54 ")
 ;;370
 ;;21,"00006-0106-58 ")
 ;;371
 ;;21,"00006-0106-72 ")
 ;;372
 ;;21,"00006-0106-82 ")
 ;;373
 ;;21,"00006-0106-86 ")
 ;;374
 ;;21,"00006-0106-87 ")
 ;;375
 ;;21,"00006-0106-94 ")
 ;;376
 ;;21,"00006-0140-31 ")
 ;;1657
 ;;21,"00006-0140-58 ")
 ;;1656
 ;;21,"00006-0142-31 ")
 ;;1498
 ;;21,"00006-0142-58 ")
 ;;1532
 ;;21,"00006-0145-31 ")
 ;;1645
 ;;21,"00006-0145-58 ")
 ;;1646
 ;;21,"00006-0207-28 ")
 ;;268
 ;;21,"00006-0207-31 ")
 ;;269
 ;;21,"00006-0207-54 ")
 ;;270
 ;;21,"00006-0207-58 ")
 ;;271
 ;;21,"00006-0207-72 ")
 ;;272
 ;;21,"00006-0207-82 ")
 ;;273
 ;;21,"00006-0207-86 ")
 ;;274
 ;;21,"00006-0207-87 ")
 ;;275
 ;;21,"00006-0207-94 ")
 ;;276
 ;;21,"00006-0237-58 ")
 ;;294
 ;;21,"00006-0712-28 ")
 ;;749
 ;;21,"00006-0712-68 ")
 ;;794
 ;;21,"00006-0712-82 ")
 ;;795
 ;;21,"00006-0712-87 ")
 ;;796
 ;;21,"00006-0712-94 ")
 ;;797
 ;;21,"00006-0713-28 ")
 ;;155
 ;;21,"00006-0713-68 ")
 ;;156
 ;;21,"00006-0713-82 ")
 ;;157
 ;;21,"00006-0713-87 ")
 ;;158
 ;;21,"00006-0713-94 ")
 ;;159
 ;;21,"00006-0714-28 ")
 ;;216
 ;;21,"00006-0714-68 ")
 ;;217
 ;;21,"00006-0714-82 ")
 ;;234
 ;;21,"00006-0714-87 ")
 ;;219
 ;;21,"00006-0714-94 ")
 ;;205
 ;;21,"00006-0720-68 ")
 ;;1510
 ;;21,"00032-1101-01 ")
 ;;1450
 ;;21,"00032-1102-01 ")
 ;;1449
 ;;21,"00032-1103-01 ")
 ;;1457
 ;;21,"00038-0130-10 ")
 ;;80
 ;;21,"00038-0130-34 ")
 ;;81
 ;;21,"00038-0130-39 ")
 ;;82
 ;;21,"00038-0131-10 ")
 ;;377
 ;;21,"00038-0131-34 ")
 ;;378
 ;;21,"00038-0131-39 ")
 ;;424
 ;;21,"00038-0132-10 ")
 ;;292
 ;;21,"00038-0132-34 ")
 ;;278
 ;;21,"00038-0132-39 ")
 ;;264
 ;;21,"00038-0134-10 ")
 ;;295
 ;;21,"00038-0134-39 ")
 ;;1247
 ;;21,"00038-0135-10 ")
 ;;1268
 ;;21,"00038-0141-10 ")
 ;;1647
 ;;21,"00038-0142-10 ")
 ;;1655
 ;;21,"00038-0145-10 ")
 ;;1587
 ;;21,"00048-5805-01 ")
 ;;1397
 ;;21,"00048-5805-41 ")
 ;;1380
 ;;21,"00048-5806-01 ")
 ;;1379
 ;;21,"00048-5806-41 ")
 ;;1415
 ;;21,"00048-5807-01 ")
 ;;1376
 ;;21,"00048-5807-41 ")
 ;;1375
 ;;21,"00071-0220-06 ")
 ;;1582
 ;;21,"00071-0220-23 ")
 ;;1581
 ;;21,"00071-0222-06 ")
 ;;1579
 ;;21,"00071-0222-23 ")
 ;;1578
 ;;21,"00071-0223-06 ")
 ;;1576
 ;;21,"00071-0223-23 ")
 ;;1610
 ;;21,"00071-0527-23 ")
 ;;1436
 ;;21,"00071-0527-40 ")
 ;;1430
 ;;21,"00071-0530-23 ")
 ;;1444
 ;;21,"00071-0530-40 ")
 ;;1445
 ;;21,"00071-0532-23 ")
 ;;1365
 ;;21,"00071-0532-40 ")
 ;;1364
 ;;21,"00071-0535-23 ")
 ;;1367
 ;;21,"00074-2278-13 ")
 ;;1396
 ;;21,"00074-2279-11 ")
 ;;1378
 ;;21,"00074-2279-13 ")
 ;;1377
 ;;21,"00074-2280-11 ")
 ;;1374
 ;;21,"00074-2280-13 ")
 ;;1373
 ;;21,"00078-0447-05 ")
 ;;510
 ;;21,"00078-0448-05 ")
 ;;511
 ;;21,"00078-0449-05 ")
 ;;513
 ;;21,"00078-0450-05 ")
 ;;527
 ;;21,"00083-0057-30 ")
 ;;1545
 ;;21,"00083-0057-32 ")
 ;;1602
 ;;21,"00083-0059-30 ")
 ;;321
 ;;21,"00083-0059-32 ")
 ;;617
 ;;21,"00083-0059-90 ")
 ;;618
 ;;21,"00083-0063-30 ")
 ;;634
 ;;21,"00083-0063-32 ")
 ;;635
 ;;21,"00083-0063-90 ")
 ;;636
 ;;21,"00083-0072-30 ")
 ;;1555
 ;;21,"00083-0072-32 ")
 ;;1621
 ;;21,"00083-0074-30 ")
 ;;1547
 ;;21,"00083-0074-32 ")
 ;;1616
 ;;21,"00083-0075-30 ")
 ;;1557
 ;;21,"00083-0075-32 ")
 ;;1609
 ;;21,"00083-0079-30 ")
 ;;608
 ;;21,"00083-0079-32 ")
 ;;609
 ;;21,"00083-0079-90 ")
 ;;610
 ;;21,"00083-0094-30 ")
 ;;698
 ;;21,"00083-0094-32 ")
 ;;699
 ;;21,"00083-0094-90 ")
 ;;700
 ;;21,"00087-0158-22 ")
 ;;28
 ;;21,"00087-0158-45 ")
 ;;72
 ;;21,"00087-0158-46 ")
 ;;116
 ;;21,"00087-0158-51 ")
 ;;1014
 ;;21,"00087-0158-85 ")
 ;;45
 ;;21,"00087-0609-41 ")
 ;;104
 ;;21,"00087-0609-42 ")
 ;;105
 ;;21,"00087-0609-45 ")
 ;;106
 ;;21,"00087-0609-51 ")
 ;;1033
 ;;21,"00087-0609-85 ")
 ;;107
 ;;21,"00087-1202-12 ")
 ;;61
 ;;21,"00087-1202-13 ")
 ;;62
 ;;21,"00087-1492-01 ")
 ;;1496
 ;;21,"00087-1493-01 ")
 ;;1494
 ;;21,"00091-3707-01 ")
 ;;1454
 ;;21,"00091-3707-09 ")
 ;;1455
 ;;21,"00091-3712-01 ")
 ;;1583
 ;;21,"00091-3715-01 ")
 ;;1400
 ;;21,"00091-3715-09 ")
 ;;1399
 ;;21,"00091-3720-01 ")
 ;;1624
 ;;21,"00091-3725-01 ")
 ;;1622
 ;;21,"00093-0017-01 ")
 ;;1453
 ;;21,"00093-0026-01 ")
 ;;42
 ;;21,"00093-0026-10 ")
 ;;58
 ;;21,"00093-0027-01 ")
 ;;798
 ;;21,"00093-0027-10 ")
 ;;799
 ;;21,"00093-0028-01 ")
 ;;175
 ;;21,"00093-0028-10 ")
 ;;161
 ;;21,"00093-0029-01 ")
 ;;221
 ;;21,"00093-0029-10 ")
 ;;222
 ;;21,"00093-0091-01 ")
 ;;735
 ;;21,"00093-0091-10 ")
 ;;736
 ;;21,"00093-0092-01 ")
 ;;669
 ;;21,"00093-0092-10 ")
 ;;670
 ;;21,"00093-0097-01 ")
 ;;875
 ;;21,"00093-0097-10 ")
 ;;876
 ;;21,"00093-0098-01 ")
 ;;883
 ;;21,"00093-0176-01 ")
 ;;1639
 ;;21,"00093-0177-01 ")
 ;;1471
 ;;21,"00093-0181-01 ")
 ;;1460
 ;;21,"00093-0182-01 ")
 ;;1503
 ;;21,"00093-1035-01 ")
 ;;1648
 ;;21,"00093-1036-01 ")
 ;;1654
 ;;21,"00093-1037-01 ")
 ;;1626
 ;;21,"00093-1044-01 ")
 ;;1488
 ;;21,"00093-1052-01 ")
 ;;1511
 ;;21,"00093-1052-10 ")
 ;;1512
 ;;21,"00093-1111-01 ")
 ;;1425
 ;;21,"00093-1112-01 ")
 ;;83
 ;;21,"00093-1112-10 ")
 ;;84
 ;;21,"00093-1113-01 ")
 ;;365
 ;;21,"00093-1113-10 ")
 ;;409
 ;;21,"00093-1114-01 ")
 ;;280
 ;;21,"00093-1114-10 ")
 ;;281
 ;;21,"00093-1115-01 ")
 ;;296
 ;;21,"00093-1115-05 ")
 ;;297
 ;;21,"00093-5124-01 ")
 ;;619
 ;;21,"00093-5125-01 ")
 ;;637
 ;;21,"00093-5125-05 ")
 ;;638
 ;;21,"00093-5126-01 ")
 ;;611
 ;;21,"00093-5126-05 ")
 ;;612
 ;;21,"00093-5127-01 ")
 ;;701
 ;;21,"00093-5150-01 ")
 ;;1412
 ;;21,"00093-5157-01 ")
 ;;340
 ;;21,"00093-5456-98 ")
 ;;1431
 ;;21,"00093-5457-98 ")
 ;;1435
 ;;21,"00093-5458-98 ")
 ;;1363
 ;;21,"00093-5459-98 ")
 ;;1351
 ;;21,"00093-7222-10 ")
 ;;90
 ;;21,"00093-7222-98 ")
 ;;91
 ;;21,"00093-7223-10 ")
 ;;108
 ;;21,"00093-7223-98 ")
 ;;109
 ;;21,"00093-7224-10 ")
 ;;63
 ;;21,"00093-7224-98 ")
 ;;64
 ;;21,"00093-8132-01 ")
 ;;737
 ;;21,"00093-8132-10 ")
 ;;738
 ;;21,"00093-8133-01 ")
 ;;671
 ;;21,"00093-8133-10 ")
 ;;672
 ;;21,"00093-8134-01 ")
 ;;877
 ;;21,"00093-8134-10 ")
 ;;878
 ;;21,"00093-8135-01 ")
 ;;884
 ;;21,"00143-1171-01 ")
 ;;739
 ;;21,"00143-1171-10 ")
 ;;740
 ;;21,"00143-1171-25 ")
 ;;741
 ;;21,"00143-1172-01 ")
 ;;561
 ;;21,"00143-1172-10 ")
 ;;562
 ;;21,"00143-1172-25 ")
 ;;563
 ;;21,"00143-1173-01 ")
 ;;837
 ;;21,"00143-1173-10 ")
 ;;866
 ;;21,"00143-1173-25 ")
 ;;864
 ;;21,"00143-1174-01 ")
 ;;885
 ;;21,"00143-1174-25 ")
 ;;886
 ;;21,"00143-1262-01 ")
 ;;1625
 ;;21,"00143-1262-10 ")
 ;;1662
 ;;21,"00143-1263-01 ")
 ;;1653
 ;;21,"00143-1263-10 ")
 ;;1652
 ;;21,"00143-1264-01 ")
 ;;1627
 ;;21,"00143-1264-10 ")
 ;;1628
 ;;21,"00143-1265-01 ")
 ;;1426
 ;;21,"00143-1266-01 ")
 ;;85
 ;;21,"00143-1266-10 ")
 ;;86
 ;;21,"00143-1267-01 ")
 ;;441
 ;;21,"00143-1267-10 ")
 ;;442
 ;;21,"00143-1268-01 ")
 ;;282
 ;;21,"00143-1268-10 ")
 ;;283
 ;;21,"00143-1270-01 ")
 ;;298
 ;;21,"00143-1270-10 ")
 ;;299
 ;;21,"00172-2515-60 ")
 ;;1477
 ;;21,"00172-2525-60 ")
 ;;1483
 ;;21,"00172-3757-00 ")
 ;;1269
 ;;21,"00172-3757-10 ")
 ;;1398
 ;;21,"00172-3757-60 ")
 ;;1421
 ;;21,"00172-3757-70 ")
 ;;1419
 ;;21,"00172-3758-00 ")
 ;;1258
 ;;21,"00172-3758-10 ")
 ;;236
 ;;21,"00172-3758-60 ")
 ;;438
 ;;21,"00172-3758-70 ")
 ;;206
 ;;21,"00172-3758-80 ")
 ;;383
 ;;21,"00172-3759-00 ")
 ;;991
 ;;21,"00172-3759-10 ")
 ;;443
 ;;21,"00172-3759-60 ")
 ;;444
 ;;21,"00172-3759-70 ")
 ;;445
 ;;21,"00172-3759-80 ")
 ;;446
 ;;21,"00172-3760-00 ")
 ;;1288
 ;;21,"00172-3760-10 ")
 ;;284
 ;;21,"00172-3760-60 ")
 ;;285
 ;;21,"00172-3760-70 ")
 ;;286
 ;;21,"00172-3760-80 ")
 ;;287
 ;;21,"00172-3761-00 ")
 ;;1248
 ;;21,"00172-3761-10 ")
 ;;300
 ;;21,"00172-3761-60 ")
 ;;301
 ;;21,"00172-3762-00 ")
 ;;1244
 ;;21,"00172-3762-60 ")
 ;;341
 ;;21,"00172-4195-00 ")
 ;;1062
 ;;21,"00172-4195-10 ")
 ;;44
 ;;21,"00172-4195-60 ")
 ;;30
 ;;21,"00172-4195-80 ")
 ;;46
 ;;21,"00172-4195-85 ")
 ;;47
 ;;21,"00172-4196-00 ")
 ;;947
 ;;21,"00172-4196-10 ")
 ;;800
 ;;21,"00172-4196-60 ")
 ;;801
 ;;21,"00172-4196-80 ")
 ;;802
 ;;21,"00172-4196-85 ")
 ;;803
 ;;21,"00172-4197-00 ")
 ;;1091
 ;;21,"00172-4197-10 ")
 ;;147
 ;;21,"00172-4197-60 ")
 ;;163
 ;;21,"00172-4197-80 ")
 ;;164
 ;;21,"00172-4197-85 ")
 ;;165
 ;;21,"00172-4198-00 ")
 ;;988
 ;;21,"00172-4198-10 ")
 ;;223
 ;;21,"00172-4198-60 ")
 ;;224
 ;;21,"00172-4198-64 ")
 ;;976
 ;;21,"00172-4198-70 ")
 ;;225
 ;;21,"00172-4198-80 ")
 ;;226
 ;;21,"00172-5015-60 ")
 ;;1461
 ;;21,"00172-5025-60 ")
 ;;1485
 ;;21,"00172-5032-60 ")
 ;;1629
 ;;21,"00172-5033-60 ")
 ;;1635
 ;;21,"00172-5033-70 ")
 ;;1637
 ;;21,"00172-5034-60 ")
 ;;1651
 ;;21,"00172-5034-70 ")
 ;;1649
 ;;21,"00172-5034-80 ")
 ;;1585
 ;;21,"00172-5350-60 ")
 ;;620
 ;;21,"00172-5350-70 ")
 ;;621
 ;;21,"00172-5351-00 ")
 ;;558
 ;;21,"00172-5351-10 ")
 ;;639
 ;;21,"00172-5351-60 ")
 ;;640
 ;;21,"00172-5351-70 ")
 ;;641
 ;;21,"00172-5351-80 ")
 ;;642
 ;;21,"00172-5352-00 ")
 ;;508
 ;;21,"00172-5352-10 ")
 ;;613
 ;;21,"00172-5352-60 ")
 ;;659
 ;;21,"00172-5352-70 ")
 ;;600
 ;;21,"00172-5352-80 ")
 ;;644
 ;;21,"00172-5353-00 ")
 ;;1071
 ;;21,"00172-5353-10 ")
 ;;702
 ;;21,"00172-5353-60 ")
 ;;661
 ;;21,"00172-5353-70 ")
 ;;690
 ;;21,"00172-5353-80 ")
 ;;688
 ;;21,"00172-5360-60 ")
 ;;1559
 ;;21,"00172-5361-60 ")
 ;;1554
 ;;21,"00172-5361-70 ")
 ;;1553
 ;;21,"00172-5362-60 ")
 ;;1466
 ;;21,"00172-5362-70 ")
 ;;1468
 ;;21,"00172-5363-60 ")
 ;;1571
 ;;21,"00172-5363-70 ")
 ;;1570
 ;;21,"00182-2622-01 ")
 ;;742
 ;;21,"00182-2622-05 ")
 ;;743
 ;;21,"00182-2622-10 ")
 ;;744
 ;;21,"00182-2623-00 ")
 ;;1048
 ;;21,"00182-2623-01 ")
 ;;564
 ;;21,"00182-2623-05 ")
 ;;565
 ;;21,"00182-2623-10 ")
 ;;566
 ;;21,"00182-2623-89 ")
 ;;567
 ;;21,"00182-2624-01 ")
 ;;823
 ;;21,"00182-2624-05 ")
 ;;824
 ;;21,"00182-2624-10 ")
 ;;825
 ;;21,"00182-2625-01 ")
 ;;887
 ;;21,"00185-0025-01 ")
 ;;1411
 ;;21,"00185-0025-10 ")
 ;;1410
 ;;21,"00185-0031-01 ")
 ;;745
 ;;21,"00185-0031-10 ")
 ;;746
 ;;21,"00185-0041-09 ")
 ;;92
 ;;21,"00185-0041-10 ")
 ;;93
 ;;21,"00185-0042-09 ")
 ;;110
 ;;21,"00185-0042-10 ")
 ;;111
 ;;21,"00185-0047-09 ")
 ;;65
 ;;21,"00185-0047-10 ")
 ;;66
 ;;21,"00185-0048-01 ")
 ;;647
 ;;21,"00185-0048-05 ")
 ;;648
 ;;21,"00185-0053-01 ")
 ;;643
 ;;21,"00185-0053-05 ")
 ;;602
 ;;21,"00185-0061-01 ")
 ;;568
 ;;21,"00185-0061-10 ")
 ;;569
 ;;21,"00185-0101-01 ")
 ;;447
 ;;21,"00185-0101-10 ")
 ;;448
 ;;21,"00185-0102-01 ")
 ;;288
 ;;21,"00185-0102-10 ")
 ;;289
 ;;21,"00185-0103-01 ")
 ;;342
 ;;21,"00185-0103-10 ")
 ;;343
 ;;21,"00185-0104-01 ")
 ;;302
 ;;21,"00185-0104-10 ")
 ;;303
 ;;21,"00185-0114-01 ")
 ;;48
 ;;21,"00185-0114-10 ")
 ;;49
 ;;21,"00185-0114-50 ")
 ;;50
 ;;21,"00185-0124-01 ")
 ;;1515
 ;;21,"00185-0127-01 ")
 ;;804
 ;;21,"00185-0127-10 ")
 ;;821
 ;;21,"00185-0127-50 ")
 ;;806
 ;;21,"00185-0147-01 ")
 ;;166
 ;;21,"00185-0147-10 ")
 ;;167
 ;;21,"00185-0147-50 ")
 ;;168
 ;;21,"00185-0151-01 ")
 ;;1489
 ;;21,"00185-0152-01 ")
 ;;1597
 ;;21,"00185-0152-10 ")
 ;;1596
 ;;21,"00185-0172-01 ")
 ;;1513
 ;;21,"00185-0172-10 ")
 ;;1514
 ;;21,"00185-0173-01 ")
 ;;1630
 ;;21,"00185-0173-10 ")
 ;;1631
 ;;21,"00185-0204-01 ")
 ;;1552
 ;;21,"00185-0211-01 ")
 ;;1464
 ;;21,"00185-0214-01 ")
 ;;227
 ;;21,"00185-0214-10 ")
 ;;228
 ;;21,"00185-0214-50 ")
 ;;229
 ;;21,"00185-0277-01 ")
 ;;1569
 ;;21,"00185-0471-01 ")
 ;;826
 ;;21,"00185-0471-10 ")
 ;;827
 ;;21,"00185-0505-01 ")
 ;;622
 ;;21,"00185-0505-05 ")
 ;;623
 ;;21,"00185-0591-01 ")
 ;;888
 ;
OTHER ; OTHER ROUTINES
 D ^BGP7IXSB
 D ^BGP7IXSC
 D ^BGP7IXSD
 D ^BGP7IXSE
 D ^BGP7IXSF
 D ^BGP7IXSG
 D ^BGP7IXSH
 D ^BGP7IXSI
 D ^BGP7IXSJ
 D ^BGP7IXSK
 D ^BGP7IXSL
 D ^BGP7IXSM
 D ^BGP7IXSN
 D ^BGP7IXSO
 D ^BGP7IXSP
 D ^BGP7IXSQ
 D ^BGP7IXSR
 D ^BGP7IXSS
 D ^BGP7IXST
 Q
