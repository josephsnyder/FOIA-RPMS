BGPM5APY ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON AUG 16, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54868062000 ")
 ;;1354
 ;;21,"54868062001 ")
 ;;1355
 ;;21,"54868062002 ")
 ;;1356
 ;;21,"54868062003 ")
 ;;1357
 ;;21,"54868062004 ")
 ;;1358
 ;;21,"54868062005 ")
 ;;1359
 ;;21,"54868100100 ")
 ;;1360
 ;;21,"54868100101 ")
 ;;1361
 ;;21,"54868109000 ")
 ;;1362
 ;;21,"54868109001 ")
 ;;1363
 ;;21,"54868109004 ")
 ;;1364
 ;;21,"54868109005 ")
 ;;1365
 ;;21,"54868109006 ")
 ;;1366
 ;;21,"54868129600 ")
 ;;1367
 ;;21,"54868129601 ")
 ;;1368
 ;;21,"54868129602 ")
 ;;1369
 ;;21,"54868141501 ")
 ;;1370
 ;;21,"54868141502 ")
 ;;1371
 ;;21,"54868150100 ")
 ;;1372
 ;;21,"54868150101 ")
 ;;1373
 ;;21,"54868150200 ")
 ;;1374
 ;;21,"54868177501 ")
 ;;1375
 ;;21,"54868177503 ")
 ;;1376
 ;;21,"54868177504 ")
 ;;1377
 ;;21,"54868196000 ")
 ;;1378
 ;;21,"54868196001 ")
 ;;1379
 ;;21,"54868196100 ")
 ;;1380
 ;;21,"54868196101 ")
 ;;1381
 ;;21,"54868196102 ")
 ;;1382
 ;;21,"54868196103 ")
 ;;1383
 ;;21,"54868197000 ")
 ;;1384
 ;;21,"54868197001 ")
 ;;1385
 ;;21,"54868197002 ")
 ;;1386
 ;;21,"54868197003 ")
 ;;1387
 ;;21,"54868228000 ")
 ;;1388
 ;;21,"54868228002 ")
 ;;1389
 ;;21,"54868236800 ")
 ;;1390
 ;;21,"54868236801 ")
 ;;1391
 ;;21,"54868236802 ")
 ;;1392
 ;;21,"54868264400 ")
 ;;1393
 ;;21,"54868264401 ")
 ;;1394
 ;;21,"54868264402 ")
 ;;1395
 ;;21,"54868264500 ")
 ;;1396
 ;;21,"54868264501 ")
 ;;1397
 ;;21,"54868264502 ")
 ;;1398
 ;;21,"54868264503 ")
 ;;1399
 ;;21,"54868266500 ")
 ;;1400
 ;;21,"54868266501 ")
 ;;1401
 ;;21,"54868266601 ")
 ;;1402
 ;;21,"54868266602 ")
 ;;1403
 ;;21,"54868266603 ")
 ;;1404
 ;;21,"54868266604 ")
 ;;1405
 ;;21,"54868327900 ")
 ;;1406
 ;;21,"54868327901 ")
 ;;1407
 ;;21,"54868327902 ")
 ;;1408
 ;;21,"54868327903 ")
 ;;1409
 ;;21,"54868330700 ")
 ;;1410
 ;;21,"54868330701 ")
 ;;1411
 ;;21,"54868344500 ")
 ;;1412
 ;;21,"54868344501 ")
 ;;1413
 ;;21,"54868372301 ")
 ;;1414
 ;;21,"54868372302 ")
 ;;1415
 ;;21,"54868372303 ")
 ;;1416
 ;;21,"54868372304 ")
 ;;1417
 ;;21,"54868372305 ")
 ;;1418
 ;;21,"54868372401 ")
 ;;1419
 ;;21,"54868372402 ")
 ;;1420
 ;;21,"54868372403 ")
 ;;1421
 ;;21,"54868372404 ")
 ;;1422
 ;;21,"54868372501 ")
 ;;1423
 ;;21,"54868372502 ")
 ;;1424
 ;;21,"54868372503 ")
 ;;1425
 ;;21,"54868372504 ")
 ;;1426
 ;;21,"54868376900 ")
 ;;1427
 ;;21,"54868384600 ")
 ;;1428
 ;;21,"54868384601 ")
 ;;1429
 ;;21,"54868384602 ")
 ;;1430
 ;;21,"54868384603 ")
 ;;1431
 ;;21,"54868389100 ")
 ;;1432
 ;;21,"54868400300 ")
 ;;1433
 ;;21,"54868406200 ")
 ;;1434
 ;;21,"54868406201 ")
 ;;1435
 ;;21,"54868408800 ")
 ;;1436
 ;;21,"54868408801 ")
 ;;1437
 ;;21,"54868408802 ")
 ;;1438
 ;;21,"54868419900 ")
 ;;1439
 ;;21,"54868419901 ")
 ;;1440
 ;;21,"54868419902 ")
 ;;1441
 ;;21,"54868420900 ")
 ;;1442
 ;;21,"54868433100 ")
 ;;1443
 ;;21,"54868433101 ")
 ;;1444
 ;;21,"54868433102 ")
 ;;1445
 ;;21,"54868433200 ")
 ;;1446
 ;;21,"54868433201 ")
 ;;1447
 ;;21,"54868433202 ")
 ;;1448
 ;;21,"54868435700 ")
 ;;1449
 ;;21,"54868435701 ")
 ;;1450
 ;;21,"54868435702 ")
 ;;1451
 ;;21,"54868435703 ")
 ;;1452
 ;;21,"54868435800 ")
 ;;1453
 ;;21,"54868435801 ")
 ;;1454
 ;;21,"54868435802 ")
 ;;1455
 ;;21,"54868435803 ")
 ;;1456
 ;;21,"54868441300 ")
 ;;1457
 ;;21,"54868441400 ")
 ;;1458
 ;;21,"54868441401 ")
 ;;1459
 ;;21,"54868441402 ")
 ;;1460
 ;;21,"54868442500 ")
 ;;1461
 ;;21,"54868442501 ")
 ;;1462
 ;;21,"54868442502 ")
 ;;1463
 ;;21,"54868442503 ")
 ;;1464
 ;;21,"54868442800 ")
 ;;1465
 ;;21,"54868442801 ")
 ;;1466
 ;;21,"54868442802 ")
 ;;1467
 ;;21,"54868442803 ")
 ;;1468
 ;;21,"54868447900 ")
 ;;1469
 ;;21,"54868447901 ")
 ;;1470
 ;;21,"54868447902 ")
 ;;1471
 ;;21,"54868449400 ")
 ;;1472
 ;;21,"54868452600 ")
 ;;1473
 ;;21,"54868452601 ")
 ;;1474
 ;;21,"54868453901 ")
 ;;1475
 ;;21,"54868454001 ")
 ;;1476
 ;;21,"54868454002 ")
 ;;1477
 ;;21,"54868455200 ")
 ;;1478
 ;;21,"54868455201 ")
 ;;1479
 ;;21,"54868455500 ")
 ;;1480
 ;;21,"54868455501 ")
 ;;1481
 ;;21,"54868460501 ")
 ;;1482
 ;;21,"54868460502 ")
 ;;1483
 ;;21,"54868461200 ")
 ;;1484
 ;;21,"54868463700 ")
 ;;1485
 ;;21,"54868463701 ")
 ;;1486
 ;;21,"54868463702 ")
 ;;1487
 ;;21,"54868463703 ")
 ;;1488
 ;;21,"54868463704 ")
 ;;1489
 ;;21,"54868464500 ")
 ;;1490
 ;;21,"54868464501 ")
 ;;1491
 ;;21,"54868464502 ")
 ;;1492
 ;;21,"54868464503 ")
 ;;1493
 ;;21,"54868464600 ")
 ;;1494
 ;;21,"54868464601 ")
 ;;1495
 ;;21,"54868464602 ")
 ;;1496
 ;;21,"54868464603 ")
 ;;1497
 ;;21,"54868464604 ")
 ;;1498
 ;;21,"54868464605 ")
 ;;1499
 ;;21,"54868465200 ")
 ;;1500
 ;;21,"54868465201 ")
 ;;1501
 ;;21,"54868465202 ")
 ;;1502
 ;;21,"54868465203 ")
 ;;1503
 ;;21,"54868465204 ")
 ;;1504
 ;;21,"54868465205 ")
 ;;1505
 ;;21,"54868465600 ")
 ;;1506
 ;;21,"54868465601 ")
 ;;1507
 ;;21,"54868465602 ")
 ;;1508
 ;;21,"54868465603 ")
 ;;1509
 ;;21,"54868465700 ")
 ;;1510
 ;;21,"54868465701 ")
 ;;1511
 ;;21,"54868465702 ")
 ;;1512
 ;;21,"54868465703 ")
 ;;1513
 ;;21,"54868465704 ")
 ;;1514
 ;;21,"54868465706 ")
 ;;1515
 ;;21,"54868465800 ")
 ;;1516
 ;;21,"54868465801 ")
 ;;1517
 ;;21,"54868465802 ")
 ;;1518
 ;;21,"54868465803 ")
 ;;1519
 ;;21,"54868465804 ")
 ;;1520
 ;;21,"54868467800 ")
 ;;1521
 ;;21,"54868467801 ")
 ;;1522
 ;;21,"54868467802 ")
 ;;1523
 ;;21,"54868467803 ")
 ;;1524
 ;;21,"54868467804 ")
 ;;1525
 ;;21,"54868472000 ")
 ;;1526
 ;;21,"54868472001 ")
 ;;1527
 ;;21,"54868472002 ")
 ;;1528
 ;;21,"54868472003 ")
 ;;1529
 ;;21,"54868472900 ")
 ;;1530
 ;;21,"54868478000 ")
 ;;1531
 ;;21,"54868478001 ")
 ;;1532
 ;;21,"54868478002 ")
 ;;1533
 ;;21,"54868478500 ")
 ;;1534
 ;;21,"54868478501 ")
 ;;1535
 ;;21,"54868478502 ")
 ;;1536
 ;;21,"54868478503 ")
 ;;1537
 ;;21,"54868486900 ")
 ;;1538
 ;;21,"54868488300 ")
 ;;1539
 ;;21,"54868488301 ")
 ;;1540
 ;;21,"54868488302 ")
 ;;1541
 ;;21,"54868488500 ")
 ;;1542
 ;;21,"54868488501 ")
 ;;1543
 ;;21,"54868497700 ")
 ;;1544
 ;;21,"54868497701 ")
 ;;1545
 ;;21,"54868497702 ")
 ;;1546
 ;;21,"54868498600 ")
 ;;1547
 ;;21,"54868498601 ")
 ;;1548
 ;;21,"54868498602 ")
 ;;1549
 ;;21,"54868505500 ")
 ;;1550
 ;;21,"54868506400 ")
 ;;1551
 ;;21,"54868506401 ")
 ;;1552
 ;;21,"54868507500 ")
 ;;1553
 ;;21,"54868507501 ")
 ;;1554
 ;;21,"54868507800 ")
 ;;1555
 ;;21,"54868507801 ")
 ;;1556
 ;;21,"54868508200 ")
 ;;1557
 ;;21,"54868508201 ")
 ;;1558
 ;;21,"54868508202 ")
 ;;1559
 ;;21,"54868508203 ")
 ;;1560
 ;;21,"54868509900 ")
 ;;1561
 ;;21,"54868509901 ")
 ;;1562
 ;;21,"54868510000 ")
 ;;1563
 ;;21,"54868510001 ")
 ;;1564
 ;;21,"54868510002 ")
 ;;1565
 ;;21,"54868517000 ")
 ;;1566
 ;;21,"54868517001 ")
 ;;1567
 ;;21,"54868518200 ")
 ;;1568
 ;;21,"54868518201 ")
 ;;1569
 ;;21,"54868518202 ")
 ;;1570
 ;;21,"54868519600 ")
 ;;1571
 ;;21,"54868519601 ")
 ;;1572
 ;;21,"54868519602 ")
 ;;1573
 ;;21,"54868524100 ")
 ;;1574
 ;;21,"54868524101 ")
 ;;1575
 ;;21,"54868524102 ")
 ;;1576
 ;;21,"54868524500 ")
 ;;1577
 ;;21,"54868524501 ")
 ;;1578
 ;;21,"54868524502 ")
 ;;1579
 ;;21,"54868524600 ")
 ;;1580
 ;;21,"54868524601 ")
 ;;1581
 ;;21,"54868527900 ")
 ;;1582
 ;;21,"54868528100 ")
 ;;1583
 ;;21,"54868528101 ")
 ;;1584
 ;;21,"54868529700 ")
 ;;1585
 ;;21,"54868532300 ")
 ;;1586
 ;;21,"54868532301 ")
 ;;1587
 ;;21,"54868534600 ")
 ;;1588
 ;;21,"54868534601 ")
 ;;1589
 ;;21,"54868541800 ")
 ;;1590
 ;;21,"54868542300 ")
 ;;1591
 ;;21,"54868542301 ")
 ;;1592
 ;;21,"54868546500 ")
 ;;1593
 ;;21,"54868546501 ")
 ;;1594
 ;;21,"54868546600 ")
 ;;1595
 ;;21,"54868546601 ")
 ;;1596
 ;;21,"54868546900 ")
 ;;1597
 ;;21,"54868546901 ")
 ;;1598
 ;;21,"54868548900 ")
 ;;1599
 ;;21,"54868550300 ")
 ;;1600
 ;;21,"54868550301 ")
 ;;1601
 ;;21,"54868559100 ")
 ;;1602
 ;;21,"54868574700 ")
 ;;1603
 ;;21,"54868574701 ")
 ;;1604
 ;;21,"54868578700 ")
 ;;1605
 ;;21,"54868592800 ")
 ;;1606
 ;;21,"54868597700 ")
 ;;1607
 ;;21,"54868619300 ")
 ;;1608
 ;;21,"54907040301 ")
 ;;1609
 ;;21,"54907040401 ")
 ;;1610
 ;;21,"54907077501 ")
 ;;1611
 ;;21,"54907077509 ")
 ;;1612
 ;;21,"54907077601 ")
 ;;1613
 ;;21,"54907077609 ")
 ;;1614
 ;;21,"54907077701 ")
 ;;1615
 ;;21,"54907077709 ")
 ;;1616
 ;;21,"54921013002 ")
 ;;1617
 ;;21,"54921013010 ")
 ;;1618
 ;;21,"54921013034 ")
 ;;1619
 ;;21,"54921013039 ")
 ;;1620
 ;;21,"54921013095 ")
 ;;1621
 ;;21,"54921013102 ")
 ;;1622
 ;;21,"54921013110 ")
 ;;1623
 ;;21,"54921013134 ")
 ;;1624
 ;;21,"54921013139 ")
 ;;1625
 ;;21,"54921013195 ")
 ;;1626
 ;;21,"54921013202 ")
 ;;1627
 ;;21,"54921013210 ")
 ;;1628
 ;;21,"54921013234 ")
 ;;1629
 ;;21,"54921013239 ")
 ;;1630
 ;;21,"54921013295 ")
 ;;1631
 ;;21,"54921013410 ")
 ;;1632
 ;;21,"54921013510 ")
 ;;1633
 ;;21,"54921014102 ")
 ;;1634
 ;;21,"54921014110 ")
 ;;1635
 ;;21,"54921014195 ")
 ;;1636
 ;;21,"54921014202 ")
 ;;1637
 ;;21,"54921014210 ")
 ;;1638
 ;;21,"54921014295 ")
 ;;1639
 ;;21,"54921014502 ")
 ;;1640
 ;;21,"54921014510 ")
 ;;1641
 ;;21,"54921014595 ")
 ;;1642
 ;;21,"55045206101 ")
 ;;1643
 ;;21,"55045206108 ")
 ;;1644
 ;;21,"55045222301 ")
 ;;1645
 ;;21,"55045229208 ")
 ;;1646
 ;;21,"55045231908 ")
 ;;1647
 ;;21,"55045237600 ")
 ;;1648
 ;;21,"55045237608 ")
 ;;1649
 ;;21,"55045237609 ")
 ;;1650
 ;;21,"55045238908 ")
 ;;1651
 ;;21,"55045279900 ")
 ;;1652
 ;;21,"55045279901 ")
 ;;1653
 ;;21,"55045279902 ")
 ;;1654
 ;;21,"55045279906 ")
 ;;1655
 ;;21,"55045279909 ")
 ;;1656
 ;;21,"55045282700 ")
 ;;1657
 ;;21,"55045282704 ")
 ;;1658
 ;;21,"55045282706 ")
 ;;1659
 ;;21,"55045282708 ")
 ;;1660
 ;;21,"55045282709 ")
 ;;1661
 ;;21,"55045282800 ")
 ;;1662
 ;;21,"55045283208 ")
 ;;1663
 ;;21,"55045292900 ")
 ;;1664
 ;;21,"55045292906 ")
 ;;1665
 ;;21,"55045292908 ")
 ;;1666
 ;;21,"55045293600 ")
 ;;1667
 ;;21,"55045293608 ")
 ;;1668
 ;;21,"55045293700 ")
 ;;1669
 ;;21,"55045293800 ")
 ;;1670
 ;;21,"55045293808 ")
 ;;1671
 ;;21,"55045297500 ")
 ;;1672
 ;;21,"55045297506 ")
 ;;1673
 ;;21,"55045297508 ")
 ;;1674
 ;;21,"55045300000 ")
 ;;1675
 ;;21,"55045300008 ")
 ;;1676
 ;;21,"55045305900 ")
 ;;1677
 ;;21,"55045305908 ")
 ;;1678
 ;;21,"55045315900 ")
 ;;1679
 ;;21,"55045315908 ")
 ;;1680
 ;;21,"55045317900 ")
 ;;1681
 ;;21,"55045318906 ")
 ;;1682
 ;;21,"55045322506 ")
 ;;1683
 ;;21,"55045322508 ")
 ;;1684
 ;;21,"55045335600 ")
 ;;1685
 ;;21,"55045337308 ")
 ;;1686
 ;;21,"55045340909 ")
 ;;1687
 ;;21,"55045364409 ")
 ;;1688
 ;;21,"55045377208 ")
 ;;1689
 ;;21,"55111013301 ")
 ;;1690
 ;;21,"55111013310 ")
 ;;1691
 ;;21,"55111013401 ")
 ;;1692
 ;;21,"55111013410 ")
 ;;1693
 ;;21,"55111062110 ")
 ;;1694
 ;;21,"55111062190 ")
 ;;1695
 ;;21,"55111062210 ")
 ;;1696
 ;;21,"55111062290 ")
 ;;1697
 ;;21,"55111062310 ")
 ;;1698
 ;;21,"55111062390 ")
 ;;1699
 ;;21,"55111062410 ")
 ;;1700
 ;;21,"55111062490 ")
 ;;1701
 ;;21,"55154035505 ")
 ;;1702
 ;;21,"55154052808 ")
 ;;1703
 ;;21,"55154052908 ")
 ;;1704
 ;;21,"55154068900 ")
 ;;1705
