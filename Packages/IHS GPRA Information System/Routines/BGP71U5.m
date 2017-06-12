BGP71U5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"33261-0903-60 ")
 ;;1357
 ;;21,"33261-0903-90 ")
 ;;1358
 ;;21,"33261-0904-00 ")
 ;;1359
 ;;21,"33261-0904-30 ")
 ;;1360
 ;;21,"33261-0904-60 ")
 ;;1361
 ;;21,"33261-0904-90 ")
 ;;1362
 ;;21,"33261-0935-30 ")
 ;;1363
 ;;21,"33261-0935-60 ")
 ;;1364
 ;;21,"33261-0935-90 ")
 ;;1365
 ;;21,"33261-0950-00 ")
 ;;1366
 ;;21,"33261-0950-30 ")
 ;;1367
 ;;21,"33261-0950-60 ")
 ;;1368
 ;;21,"33261-0950-90 ")
 ;;1369
 ;;21,"33261-0967-00 ")
 ;;1370
 ;;21,"33261-0967-30 ")
 ;;1371
 ;;21,"33261-0967-60 ")
 ;;1372
 ;;21,"33261-0967-90 ")
 ;;1373
 ;;21,"33261-0974-00 ")
 ;;1374
 ;;21,"33261-0974-30 ")
 ;;1375
 ;;21,"33261-0974-60 ")
 ;;1376
 ;;21,"33261-0974-90 ")
 ;;1377
 ;;21,"33261-0977-00 ")
 ;;1378
 ;;21,"33261-0977-30 ")
 ;;1379
 ;;21,"33261-0977-60 ")
 ;;1380
 ;;21,"33261-0977-90 ")
 ;;1381
 ;;21,"33261-0982-00 ")
 ;;1382
 ;;21,"33261-0982-30 ")
 ;;1383
 ;;21,"33261-0982-60 ")
 ;;1384
 ;;21,"33261-0982-90 ")
 ;;1385
 ;;21,"33261-0996-30 ")
 ;;1386
 ;;21,"33261-0996-60 ")
 ;;1387
 ;;21,"33261-0996-90 ")
 ;;1388
 ;;21,"33342-0044-07 ")
 ;;1389
 ;;21,"33342-0044-10 ")
 ;;1390
 ;;21,"33342-0044-44 ")
 ;;1391
 ;;21,"33342-0045-07 ")
 ;;1392
 ;;21,"33342-0045-10 ")
 ;;1393
 ;;21,"33342-0045-44 ")
 ;;1394
 ;;21,"33342-0046-07 ")
 ;;1395
 ;;21,"33342-0046-10 ")
 ;;1396
 ;;21,"33342-0046-44 ")
 ;;1397
 ;;21,"33342-0047-07 ")
 ;;1398
 ;;21,"33342-0047-10 ")
 ;;1399
 ;;21,"33342-0048-07 ")
 ;;1400
 ;;21,"33342-0048-10 ")
 ;;1401
 ;;21,"33342-0049-07 ")
 ;;1402
 ;;21,"33342-0049-10 ")
 ;;1403
 ;;21,"33342-0050-07 ")
 ;;1404
 ;;21,"33342-0050-10 ")
 ;;1405
 ;;21,"33342-0050-44 ")
 ;;1406
 ;;21,"33342-0051-07 ")
 ;;1407
 ;;21,"33342-0051-10 ")
 ;;1408
 ;;21,"33342-0051-44 ")
 ;;1409
 ;;21,"33342-0052-07 ")
 ;;1410
 ;;21,"33342-0052-10 ")
 ;;1411
 ;;21,"33342-0052-44 ")
 ;;1412
 ;;21,"33342-0057-07 ")
 ;;1413
 ;;21,"33342-0057-10 ")
 ;;1414
 ;;21,"33342-0058-07 ")
 ;;1415
 ;;21,"33342-0058-10 ")
 ;;1416
 ;;21,"33342-0074-10 ")
 ;;1417
 ;;21,"33342-0074-44 ")
 ;;1418
 ;;21,"33342-0075-10 ")
 ;;1419
 ;;21,"33342-0075-15 ")
 ;;1420
 ;;21,"33342-0076-10 ")
 ;;1421
 ;;21,"33342-0076-15 ")
 ;;1422
 ;;21,"33342-0077-10 ")
 ;;1423
 ;;21,"33342-0077-15 ")
 ;;1424
 ;;21,"33342-0078-10 ")
 ;;1425
 ;;21,"33342-0078-15 ")
 ;;1426
 ;;21,"33358-0047-30 ")
 ;;1427
 ;;21,"33358-0048-30 ")
 ;;1428
 ;;21,"33358-0049-30 ")
 ;;1429
 ;;21,"33358-0050-30 ")
 ;;1430
 ;;21,"33358-0126-30 ")
 ;;1431
 ;;21,"33358-0127-30 ")
 ;;1432
 ;;21,"33358-0127-60 ")
 ;;1433
 ;;21,"33358-0128-30 ")
 ;;1434
 ;;21,"33358-0128-60 ")
 ;;1435
 ;;21,"33358-0211-30 ")
 ;;1436
 ;;21,"33358-0212-30 ")
 ;;1437
 ;;21,"33358-0213-30 ")
 ;;1438
 ;;21,"33358-0214-30 ")
 ;;1439
 ;;21,"33358-0214-60 ")
 ;;1440
 ;;21,"33358-0222-00 ")
 ;;1441
 ;;21,"35356-0060-30 ")
 ;;1442
 ;;21,"35356-0101-90 ")
 ;;1443
 ;;21,"35356-0131-30 ")
 ;;1444
 ;;21,"35356-0133-30 ")
 ;;1445
 ;;21,"35356-0216-30 ")
 ;;1446
 ;;21,"35356-0216-90 ")
 ;;1447
 ;;21,"35356-0256-30 ")
 ;;1448
 ;;21,"35356-0256-90 ")
 ;;1449
 ;;21,"35356-0257-30 ")
 ;;1450
 ;;21,"35356-0257-90 ")
 ;;1451
 ;;21,"35356-0258-30 ")
 ;;1452
 ;;21,"35356-0258-90 ")
 ;;1453
 ;;21,"35356-0268-30 ")
 ;;1454
 ;;21,"35356-0287-20 ")
 ;;1455
 ;;21,"35356-0287-30 ")
 ;;1456
 ;;21,"35356-0288-40 ")
 ;;1457
 ;;21,"35356-0289-40 ")
 ;;1458
 ;;21,"35356-0293-90 ")
 ;;1459
 ;;21,"35356-0294-90 ")
 ;;1460
 ;;21,"35356-0295-30 ")
 ;;1461
 ;;21,"35356-0296-30 ")
 ;;1462
 ;;21,"35356-0297-30 ")
 ;;1463
 ;;21,"35356-0298-30 ")
 ;;1464
 ;;21,"35356-0299-30 ")
 ;;1465
 ;;21,"35356-0300-30 ")
 ;;1466
 ;;21,"35356-0373-90 ")
 ;;1467
 ;;21,"35356-0374-15 ")
 ;;1468
 ;;21,"35356-0374-30 ")
 ;;1469
 ;;21,"35356-0406-30 ")
 ;;1470
 ;;21,"35356-0416-10 ")
 ;;1471
 ;;21,"35356-0416-20 ")
 ;;1472
 ;;21,"35356-0416-30 ")
 ;;1473
 ;;21,"35356-0427-30 ")
 ;;1474
 ;;21,"35356-0428-30 ")
 ;;1475
 ;;21,"35356-0432-30 ")
 ;;1476
 ;;21,"35356-0432-60 ")
 ;;1477
 ;;21,"35356-0432-90 ")
 ;;1478
 ;;21,"35356-0541-30 ")
 ;;1479
 ;;21,"35356-0587-30 ")
 ;;1480
 ;;21,"35356-0587-60 ")
 ;;1481
 ;;21,"35356-0587-90 ")
 ;;1482
 ;;21,"35356-0601-30 ")
 ;;1483
 ;;21,"35356-0695-30 ")
 ;;1484
 ;;21,"35356-0773-30 ")
 ;;1485
 ;;21,"35356-0777-30 ")
 ;;1486
 ;;21,"35356-0777-90 ")
 ;;1487
 ;;21,"35356-0778-30 ")
 ;;1488
 ;;21,"35356-0778-90 ")
 ;;1489
 ;;21,"35356-0779-30 ")
 ;;1490
 ;;21,"35356-0780-30 ")
 ;;1491
 ;;21,"35356-0854-30 ")
 ;;1492
 ;;21,"35356-0861-30 ")
 ;;1493
 ;;21,"35356-0869-30 ")
 ;;1494
 ;;21,"35356-0869-60 ")
 ;;1495
 ;;21,"35356-0869-90 ")
 ;;1496
 ;;21,"35356-0871-30 ")
 ;;1497
 ;;21,"35356-0879-10 ")
 ;;1498
 ;;21,"35356-0879-30 ")
 ;;1499
 ;;21,"35356-0879-60 ")
 ;;1500
 ;;21,"35356-0879-90 ")
 ;;1501
 ;;21,"35356-0883-30 ")
 ;;1502
 ;;21,"35356-0884-30 ")
 ;;1503
 ;;21,"35356-0884-90 ")
 ;;1504
 ;;21,"35356-0893-30 ")
 ;;1505
 ;;21,"35356-0893-60 ")
 ;;1506
 ;;21,"35356-0893-90 ")
 ;;1507
 ;;21,"35356-0910-30 ")
 ;;1508
 ;;21,"35356-0913-30 ")
 ;;1509
 ;;21,"35356-0917-30 ")
 ;;1510
 ;;21,"35356-0945-30 ")
 ;;1511
 ;;21,"35356-0945-60 ")
 ;;1512
 ;;21,"35356-0945-90 ")
 ;;1513
 ;;21,"35356-0948-30 ")
 ;;1514
 ;;21,"35356-0948-60 ")
 ;;1515
 ;;21,"35356-0948-90 ")
 ;;1516
 ;;21,"35356-0949-30 ")
 ;;1517
 ;;21,"35356-0960-30 ")
 ;;1518
 ;;21,"35356-0960-60 ")
 ;;1519
 ;;21,"35356-0960-90 ")
 ;;1520
 ;;21,"35356-0961-30 ")
 ;;1521
 ;;21,"35356-0961-60 ")
 ;;1522
 ;;21,"35356-0961-90 ")
 ;;1523
 ;;21,"35356-0965-30 ")
 ;;1524
 ;;21,"35356-0965-60 ")
 ;;1525
 ;;21,"35356-0965-90 ")
 ;;1526
 ;;21,"35356-0973-30 ")
 ;;1527
 ;;21,"35356-0973-60 ")
 ;;1528
 ;;21,"35356-0973-90 ")
 ;;1529
 ;;21,"35356-0976-30 ")
 ;;1530
 ;;21,"35356-0976-60 ")
 ;;1531
 ;;21,"35356-0979-30 ")
 ;;1532
 ;;21,"35356-0979-60 ")
 ;;1533
 ;;21,"35356-0998-30 ")
 ;;1534
 ;;21,"35356-0998-60 ")
 ;;1535
 ;;21,"35356-0998-90 ")
 ;;1536
 ;;21,"42254-0073-30 ")
 ;;1537
 ;;21,"42254-0074-30 ")
 ;;1538
 ;;21,"42254-0335-78 ")
 ;;1539
 ;;21,"42254-0353-90 ")
 ;;1540
 ;;21,"42291-0126-30 ")
 ;;1541
 ;;21,"42291-0127-30 ")
 ;;1542
 ;;21,"42291-0128-30 ")
 ;;1543
 ;;21,"42291-0129-30 ")
 ;;1544
 ;;21,"42291-0160-90 ")
 ;;1545
 ;;21,"42291-0161-90 ")
 ;;1546
 ;;21,"42291-0162-18 ")
 ;;1547
 ;;21,"42291-0162-50 ")
 ;;1548
 ;;21,"42291-0162-90 ")
 ;;1549
 ;;21,"42291-0163-18 ")
 ;;1550
 ;;21,"42291-0163-50 ")
 ;;1551
 ;;21,"42291-0163-90 ")
 ;;1552
 ;;21,"42291-0269-01 ")
 ;;1553
 ;;21,"42291-0342-90 ")
 ;;1554
 ;;21,"42291-0343-90 ")
 ;;1555
 ;;21,"42291-0390-01 ")
 ;;1556
 ;;21,"42291-0390-10 ")
 ;;1557
 ;;21,"42291-0390-90 ")
 ;;1558
 ;;21,"42291-0391-01 ")
 ;;1559
 ;;21,"42291-0391-10 ")
 ;;1560
 ;;21,"42291-0391-90 ")
 ;;1561
 ;;21,"42291-0392-01 ")
 ;;1562
 ;;21,"42291-0392-10 ")
 ;;1563
 ;;21,"42291-0392-90 ")
 ;;1564
 ;;21,"42291-0393-10 ")
 ;;1565
 ;;21,"42291-0393-30 ")
 ;;1566
 ;;21,"42291-0393-90 ")
 ;;1567
 ;;21,"42291-0394-10 ")
 ;;1568
 ;;21,"42291-0394-30 ")
 ;;1569
 ;;21,"42291-0394-90 ")
 ;;1570
 ;;21,"42291-0395-10 ")
 ;;1571
 ;;21,"42291-0395-30 ")
 ;;1572
 ;;21,"42291-0395-90 ")
 ;;1573
 ;;21,"42291-0701-90 ")
 ;;1574
 ;;21,"42291-0702-90 ")
 ;;1575
 ;;21,"42291-0703-90 ")
 ;;1576
 ;;21,"42291-0704-90 ")
 ;;1577
 ;;21,"42291-0705-90 ")
 ;;1578
 ;;21,"42291-0706-90 ")
 ;;1579
 ;;21,"42291-0707-90 ")
 ;;1580
 ;;21,"42291-0837-01 ")
 ;;1581
 ;;21,"42291-0838-01 ")
 ;;1582
 ;;21,"42291-0839-01 ")
 ;;1583
 ;;21,"42291-0876-90 ")
 ;;1584
 ;;21,"42291-0877-10 ")
 ;;1585
 ;;21,"42291-0877-90 ")
 ;;1586
 ;;21,"42291-0878-10 ")
 ;;1587
 ;;21,"42291-0878-90 ")
 ;;1588
 ;;21,"42291-0879-50 ")
 ;;1589
 ;;21,"42291-0879-90 ")
 ;;1590
 ;;21,"42291-0880-90 ")
 ;;1591
 ;;21,"42291-0881-10 ")
 ;;1592
 ;;21,"42291-0881-90 ")
 ;;1593
 ;;21,"42291-0882-10 ")
 ;;1594
 ;;21,"42291-0882-90 ")
 ;;1595
 ;;21,"42291-0883-50 ")
 ;;1596
 ;;21,"42291-0883-90 ")
 ;;1597
 ;;21,"42291-0884-90 ")
 ;;1598
 ;;21,"42291-0885-90 ")
 ;;1599
 ;;21,"42291-0886-90 ")
 ;;1600
 ;;21,"42291-0887-90 ")
 ;;1601
 ;;21,"42291-0888-90 ")
 ;;1602
 ;;21,"42549-0700-90 ")
 ;;1603
 ;;21,"42549-0707-90 ")
 ;;1604
 ;;21,"42571-0110-10 ")
 ;;1605
 ;;21,"42571-0110-90 ")
 ;;1606
 ;;21,"42571-0111-10 ")
 ;;1607
 ;;21,"42571-0111-90 ")
 ;;1608
 ;;21,"42571-0112-10 ")
 ;;1609
 ;;21,"42571-0112-90 ")
 ;;1610
 ;;21,"42806-0052-01 ")
 ;;1611
 ;;21,"42806-0053-01 ")
 ;;1612
 ;;21,"42806-0054-01 ")
 ;;1613
 ;;21,"43063-0007-01 ")
 ;;1614
 ;;21,"43063-0007-14 ")
 ;;1615
 ;;21,"43063-0007-30 ")
 ;;1616
 ;;21,"43063-0007-60 ")
 ;;1617
 ;;21,"43063-0007-90 ")
 ;;1618
 ;;21,"43063-0007-98 ")
 ;;1619
 ;;21,"43063-0032-01 ")
 ;;1620
 ;;21,"43063-0065-30 ")
 ;;1621
 ;;21,"43063-0065-90 ")
 ;;1622
 ;;21,"43063-0118-30 ")
 ;;1623
 ;;21,"43063-0118-90 ")
 ;;1624
 ;;21,"43063-0130-90 ")
 ;;1625
 ;;21,"43063-0131-30 ")
 ;;1626
 ;;21,"43063-0132-30 ")
 ;;1627
 ;;21,"43063-0138-90 ")
 ;;1628
 ;;21,"43063-0146-30 ")
 ;;1629
 ;;21,"43063-0171-14 ")
 ;;1630
 ;;21,"43063-0232-30 ")
 ;;1631
 ;;21,"43063-0232-60 ")
 ;;1632
 ;;21,"43063-0233-60 ")
 ;;1633
 ;;21,"43063-0234-60 ")
 ;;1634
 ;;21,"43063-0288-30 ")
 ;;1635
 ;;21,"43063-0288-90 ")
 ;;1636
 ;;21,"43063-0303-30 ")
 ;;1637
 ;;21,"43063-0303-90 ")
 ;;1638
 ;;21,"43063-0347-30 ")
 ;;1639
 ;;21,"43063-0402-60 ")
 ;;1640
 ;;21,"43063-0403-30 ")
 ;;1641
 ;;21,"43063-0414-01 ")
 ;;1642
 ;;21,"43063-0414-90 ")
 ;;1643
 ;;21,"43063-0458-30 ")
 ;;1644
 ;;21,"43063-0458-90 ")
 ;;1645
 ;;21,"43063-0482-90 ")
 ;;1646
 ;;21,"43063-0485-90 ")
 ;;1647
 ;;21,"43063-0502-30 ")
 ;;1648
 ;;21,"43063-0525-30 ")
 ;;1649
 ;;21,"43063-0525-90 ")
 ;;1650
 ;;21,"43063-0571-90 ")
 ;;1651
 ;;21,"43353-0009-30 ")
 ;;1652
 ;;21,"43353-0009-60 ")
 ;;1653
 ;;21,"43353-0037-30 ")
 ;;1654
 ;;21,"43353-0037-60 ")
 ;;1655
 ;;21,"43353-0037-80 ")
 ;;1656
 ;;21,"43353-0045-80 ")
 ;;1657
 ;;21,"43353-0057-60 ")
 ;;1658
 ;;21,"43353-0059-17 ")
 ;;1659
 ;;21,"43353-0059-30 ")
 ;;1660
 ;;21,"43353-0066-17 ")
 ;;1661
 ;;21,"43353-0067-83 ")
 ;;1662
 ;;21,"43353-0071-60 ")
 ;;1663
 ;;21,"43353-0113-45 ")
 ;;1664
 ;;21,"43353-0113-60 ")
 ;;1665
 ;;21,"43353-0121-30 ")
 ;;1666
 ;;21,"43353-0293-30 ")
 ;;1667
 ;;21,"43353-0293-60 ")
 ;;1668
 ;;21,"43353-0313-15 ")
 ;;1669
 ;;21,"43353-0313-60 ")
 ;;1670
 ;;21,"43353-0318-60 ")
 ;;1671
 ;;21,"43353-0333-30 ")
 ;;1672
 ;;21,"43353-0333-45 ")
 ;;1673
 ;;21,"43353-0350-30 ")
 ;;1674
 ;;21,"43353-0350-45 ")
 ;;1675
 ;;21,"43353-0350-60 ")
 ;;1676
 ;;21,"43353-0350-80 ")
 ;;1677
 ;;21,"43353-0365-15 ")
 ;;1678
 ;;21,"43353-0365-30 ")
 ;;1679
 ;;21,"43353-0365-45 ")
 ;;1680
 ;;21,"43353-0365-60 ")
 ;;1681
 ;;21,"43353-0459-45 ")
 ;;1682
 ;;21,"43353-0516-45 ")
 ;;1683
 ;;21,"43353-0521-60 ")
 ;;1684
 ;;21,"43353-0521-80 ")
 ;;1685
 ;;21,"43353-0643-60 ")
 ;;1686
 ;;21,"43353-0655-60 ")
 ;;1687
 ;;21,"43353-0662-80 ")
 ;;1688
 ;;21,"43353-0676-60 ")
 ;;1689
