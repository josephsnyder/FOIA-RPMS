BGP61F5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"33342-0077-10 ")
 ;;1462
 ;;21,"33342-0077-15 ")
 ;;1463
 ;;21,"33342-0078-10 ")
 ;;1464
 ;;21,"33342-0078-15 ")
 ;;1465
 ;;21,"33358-0047-30 ")
 ;;1466
 ;;21,"33358-0048-30 ")
 ;;1467
 ;;21,"33358-0049-30 ")
 ;;1468
 ;;21,"33358-0050-30 ")
 ;;1469
 ;;21,"33358-0126-30 ")
 ;;1470
 ;;21,"33358-0127-30 ")
 ;;1471
 ;;21,"33358-0127-60 ")
 ;;1472
 ;;21,"33358-0128-30 ")
 ;;1473
 ;;21,"33358-0128-60 ")
 ;;1474
 ;;21,"33358-0211-30 ")
 ;;1475
 ;;21,"33358-0212-30 ")
 ;;1476
 ;;21,"33358-0213-30 ")
 ;;1477
 ;;21,"33358-0214-30 ")
 ;;1478
 ;;21,"33358-0214-60 ")
 ;;1479
 ;;21,"33358-0222-00 ")
 ;;1480
 ;;21,"35356-0060-30 ")
 ;;1481
 ;;21,"35356-0101-90 ")
 ;;1482
 ;;21,"35356-0131-30 ")
 ;;1483
 ;;21,"35356-0133-30 ")
 ;;1484
 ;;21,"35356-0216-30 ")
 ;;1485
 ;;21,"35356-0216-90 ")
 ;;1486
 ;;21,"35356-0256-30 ")
 ;;1487
 ;;21,"35356-0256-90 ")
 ;;1488
 ;;21,"35356-0257-30 ")
 ;;1489
 ;;21,"35356-0257-90 ")
 ;;1490
 ;;21,"35356-0258-30 ")
 ;;1491
 ;;21,"35356-0258-90 ")
 ;;1492
 ;;21,"35356-0268-30 ")
 ;;1493
 ;;21,"35356-0287-20 ")
 ;;1494
 ;;21,"35356-0287-30 ")
 ;;1495
 ;;21,"35356-0288-40 ")
 ;;1496
 ;;21,"35356-0289-40 ")
 ;;1497
 ;;21,"35356-0293-90 ")
 ;;1498
 ;;21,"35356-0294-90 ")
 ;;1499
 ;;21,"35356-0295-30 ")
 ;;1500
 ;;21,"35356-0296-30 ")
 ;;1501
 ;;21,"35356-0297-30 ")
 ;;1502
 ;;21,"35356-0298-30 ")
 ;;1503
 ;;21,"35356-0299-30 ")
 ;;1504
 ;;21,"35356-0300-30 ")
 ;;1505
 ;;21,"35356-0373-90 ")
 ;;1506
 ;;21,"35356-0374-15 ")
 ;;1507
 ;;21,"35356-0374-30 ")
 ;;1508
 ;;21,"35356-0406-30 ")
 ;;1509
 ;;21,"35356-0416-10 ")
 ;;1510
 ;;21,"35356-0416-20 ")
 ;;1511
 ;;21,"35356-0416-30 ")
 ;;1512
 ;;21,"35356-0427-30 ")
 ;;1513
 ;;21,"35356-0428-30 ")
 ;;1514
 ;;21,"35356-0432-30 ")
 ;;1515
 ;;21,"35356-0432-60 ")
 ;;1516
 ;;21,"35356-0432-90 ")
 ;;1517
 ;;21,"35356-0541-30 ")
 ;;1518
 ;;21,"35356-0587-30 ")
 ;;1519
 ;;21,"35356-0587-60 ")
 ;;1520
 ;;21,"35356-0587-90 ")
 ;;1521
 ;;21,"35356-0601-30 ")
 ;;1522
 ;;21,"35356-0695-30 ")
 ;;1523
 ;;21,"35356-0773-30 ")
 ;;1524
 ;;21,"35356-0777-30 ")
 ;;1525
 ;;21,"35356-0777-90 ")
 ;;1526
 ;;21,"35356-0778-30 ")
 ;;1527
 ;;21,"35356-0778-90 ")
 ;;1528
 ;;21,"35356-0779-30 ")
 ;;1529
 ;;21,"35356-0780-30 ")
 ;;1530
 ;;21,"35356-0854-30 ")
 ;;1531
 ;;21,"35356-0861-30 ")
 ;;1532
 ;;21,"35356-0869-30 ")
 ;;1533
 ;;21,"35356-0869-60 ")
 ;;1534
 ;;21,"35356-0869-90 ")
 ;;1535
 ;;21,"35356-0871-30 ")
 ;;1536
 ;;21,"35356-0879-30 ")
 ;;1537
 ;;21,"35356-0879-60 ")
 ;;1538
 ;;21,"35356-0879-90 ")
 ;;1539
 ;;21,"35356-0883-30 ")
 ;;1540
 ;;21,"35356-0884-30 ")
 ;;1541
 ;;21,"35356-0884-90 ")
 ;;1542
 ;;21,"35356-0893-30 ")
 ;;1543
 ;;21,"35356-0893-60 ")
 ;;1544
 ;;21,"35356-0893-90 ")
 ;;1545
 ;;21,"35356-0910-30 ")
 ;;1546
 ;;21,"35356-0913-30 ")
 ;;1547
 ;;21,"35356-0917-30 ")
 ;;1548
 ;;21,"35356-0945-30 ")
 ;;1549
 ;;21,"35356-0945-60 ")
 ;;1550
 ;;21,"35356-0945-90 ")
 ;;1551
 ;;21,"35356-0948-30 ")
 ;;1552
 ;;21,"35356-0948-60 ")
 ;;1553
 ;;21,"35356-0948-90 ")
 ;;1554
 ;;21,"35356-0949-30 ")
 ;;1555
 ;;21,"35356-0960-30 ")
 ;;1556
 ;;21,"35356-0960-60 ")
 ;;1557
 ;;21,"35356-0960-90 ")
 ;;1558
 ;;21,"35356-0961-30 ")
 ;;1559
 ;;21,"35356-0961-60 ")
 ;;1560
 ;;21,"35356-0961-90 ")
 ;;1561
 ;;21,"35356-0965-30 ")
 ;;1562
 ;;21,"35356-0965-60 ")
 ;;1563
 ;;21,"35356-0965-90 ")
 ;;1564
 ;;21,"35356-0973-30 ")
 ;;1565
 ;;21,"35356-0973-60 ")
 ;;1566
 ;;21,"35356-0973-90 ")
 ;;1567
 ;;21,"35356-0976-30 ")
 ;;1568
 ;;21,"35356-0976-60 ")
 ;;1569
 ;;21,"35356-0979-30 ")
 ;;1570
 ;;21,"35356-0979-60 ")
 ;;1571
 ;;21,"35356-0998-30 ")
 ;;1572
 ;;21,"35356-0998-60 ")
 ;;1573
 ;;21,"35356-0998-90 ")
 ;;1574
 ;;21,"42254-0072-30 ")
 ;;1575
 ;;21,"42254-0073-30 ")
 ;;1576
 ;;21,"42254-0074-30 ")
 ;;1577
 ;;21,"42254-0156-30 ")
 ;;1578
 ;;21,"42254-0156-90 ")
 ;;1579
 ;;21,"42254-0192-90 ")
 ;;1580
 ;;21,"42254-0255-90 ")
 ;;1581
 ;;21,"42254-0328-90 ")
 ;;1582
 ;;21,"42254-0335-78 ")
 ;;1583
 ;;21,"42254-0353-90 ")
 ;;1584
 ;;21,"42254-0385-30 ")
 ;;1585
 ;;21,"42254-0385-90 ")
 ;;1586
 ;;21,"42254-0409-30 ")
 ;;1587
 ;;21,"42254-0409-90 ")
 ;;1588
 ;;21,"42254-0435-30 ")
 ;;1589
 ;;21,"42254-0435-90 ")
 ;;1590
 ;;21,"42254-0436-30 ")
 ;;1591
 ;;21,"42254-0436-90 ")
 ;;1592
 ;;21,"42254-0437-30 ")
 ;;1593
 ;;21,"42254-0437-90 ")
 ;;1594
 ;;21,"42291-0126-30 ")
 ;;1595
 ;;21,"42291-0127-30 ")
 ;;1596
 ;;21,"42291-0128-30 ")
 ;;1597
 ;;21,"42291-0129-30 ")
 ;;1598
 ;;21,"42291-0160-90 ")
 ;;1599
 ;;21,"42291-0161-90 ")
 ;;1600
 ;;21,"42291-0162-18 ")
 ;;1601
 ;;21,"42291-0162-50 ")
 ;;1602
 ;;21,"42291-0162-90 ")
 ;;1603
 ;;21,"42291-0163-18 ")
 ;;1604
 ;;21,"42291-0163-50 ")
 ;;1605
 ;;21,"42291-0163-90 ")
 ;;1606
 ;;21,"42291-0269-01 ")
 ;;1607
 ;;21,"42291-0340-90 ")
 ;;1608
 ;;21,"42291-0341-90 ")
 ;;1609
 ;;21,"42291-0342-90 ")
 ;;1610
 ;;21,"42291-0343-90 ")
 ;;1611
 ;;21,"42291-0390-01 ")
 ;;1612
 ;;21,"42291-0390-10 ")
 ;;1613
 ;;21,"42291-0390-90 ")
 ;;1614
 ;;21,"42291-0391-01 ")
 ;;1615
 ;;21,"42291-0391-10 ")
 ;;1616
 ;;21,"42291-0391-90 ")
 ;;1617
 ;;21,"42291-0392-01 ")
 ;;1618
 ;;21,"42291-0392-10 ")
 ;;1619
 ;;21,"42291-0392-90 ")
 ;;1620
 ;;21,"42291-0393-10 ")
 ;;1621
 ;;21,"42291-0393-30 ")
 ;;1622
 ;;21,"42291-0393-90 ")
 ;;1623
 ;;21,"42291-0394-10 ")
 ;;1624
 ;;21,"42291-0394-30 ")
 ;;1625
 ;;21,"42291-0394-90 ")
 ;;1626
 ;;21,"42291-0395-10 ")
 ;;1627
 ;;21,"42291-0395-30 ")
 ;;1628
 ;;21,"42291-0395-90 ")
 ;;1629
 ;;21,"42291-0701-90 ")
 ;;1630
 ;;21,"42291-0702-90 ")
 ;;1631
 ;;21,"42291-0703-90 ")
 ;;1632
 ;;21,"42291-0704-90 ")
 ;;1633
 ;;21,"42291-0705-90 ")
 ;;1634
 ;;21,"42291-0706-90 ")
 ;;1635
 ;;21,"42291-0707-90 ")
 ;;1636
 ;;21,"42291-0837-01 ")
 ;;1637
 ;;21,"42291-0838-01 ")
 ;;1638
 ;;21,"42291-0839-01 ")
 ;;1639
 ;;21,"42291-0880-90 ")
 ;;1640
 ;;21,"42291-0881-10 ")
 ;;1641
 ;;21,"42291-0881-90 ")
 ;;1642
 ;;21,"42291-0882-10 ")
 ;;1643
 ;;21,"42291-0882-90 ")
 ;;1644
 ;;21,"42291-0883-50 ")
 ;;1645
 ;;21,"42291-0883-90 ")
 ;;1646
 ;;21,"42291-0884-90 ")
 ;;1647
 ;;21,"42291-0885-90 ")
 ;;1648
 ;;21,"42291-0886-90 ")
 ;;1649
 ;;21,"42291-0887-90 ")
 ;;1650
 ;;21,"42291-0888-90 ")
 ;;1651
 ;;21,"42549-0700-90 ")
 ;;1652
 ;;21,"42549-0705-90 ")
 ;;1653
 ;;21,"42549-0707-30 ")
 ;;1654
 ;;21,"42549-0707-90 ")
 ;;1655
 ;;21,"42549-0735-90 ")
 ;;1656
 ;;21,"42571-0110-10 ")
 ;;1657
 ;;21,"42571-0110-90 ")
 ;;1658
 ;;21,"42571-0111-10 ")
 ;;1659
 ;;21,"42571-0111-90 ")
 ;;1660
 ;;21,"42571-0112-10 ")
 ;;1661
 ;;21,"42571-0112-90 ")
 ;;1662
 ;;21,"42806-0052-01 ")
 ;;1663
 ;;21,"42806-0053-01 ")
 ;;1664
 ;;21,"42806-0054-01 ")
 ;;1665
 ;;21,"43063-0007-01 ")
 ;;1666
 ;;21,"43063-0007-14 ")
 ;;1667
 ;;21,"43063-0007-30 ")
 ;;1668
 ;;21,"43063-0007-60 ")
 ;;1669
 ;;21,"43063-0007-90 ")
 ;;1670
 ;;21,"43063-0007-98 ")
 ;;1671
 ;;21,"43063-0032-01 ")
 ;;1672
 ;;21,"43063-0065-30 ")
 ;;1673
 ;;21,"43063-0065-90 ")
 ;;1674
 ;;21,"43063-0118-30 ")
 ;;1675
 ;;21,"43063-0118-90 ")
 ;;1676
 ;;21,"43063-0130-90 ")
 ;;1677
 ;;21,"43063-0131-30 ")
 ;;1678
 ;;21,"43063-0132-30 ")
 ;;1679
 ;;21,"43063-0138-90 ")
 ;;1680
 ;;21,"43063-0146-30 ")
 ;;1681
 ;;21,"43063-0171-14 ")
 ;;1682
 ;;21,"43063-0232-30 ")
 ;;1683
 ;;21,"43063-0232-60 ")
 ;;1684
 ;;21,"43063-0233-60 ")
 ;;1685
 ;;21,"43063-0234-60 ")
 ;;1686
 ;;21,"43063-0288-30 ")
 ;;1687
 ;;21,"43063-0288-90 ")
 ;;1688
 ;;21,"43063-0303-30 ")
 ;;1689
 ;;21,"43063-0303-90 ")
 ;;1690
 ;;21,"43063-0347-30 ")
 ;;1691
 ;;21,"43063-0402-60 ")
 ;;1692
 ;;21,"43063-0403-30 ")
 ;;1693
 ;;21,"43063-0414-01 ")
 ;;1694
 ;;21,"43063-0414-90 ")
 ;;1695
 ;;21,"43063-0458-30 ")
 ;;1696
 ;;21,"43063-0458-90 ")
 ;;1697
 ;;21,"43063-0482-90 ")
 ;;1698
 ;;21,"43063-0485-90 ")
 ;;1699
 ;;21,"43063-0502-30 ")
 ;;1700
 ;;21,"43063-0525-30 ")
 ;;1701
 ;;21,"43063-0525-90 ")
 ;;1702
 ;;21,"43063-0571-90 ")
 ;;1703
 ;;21,"43353-0009-30 ")
 ;;1704
 ;;21,"43353-0009-60 ")
 ;;1705
 ;;21,"43353-0045-80 ")
 ;;1706
 ;;21,"43353-0293-30 ")
 ;;1707
 ;;21,"43353-0293-60 ")
 ;;1708
 ;;21,"43353-0313-15 ")
 ;;1709
 ;;21,"43353-0313-60 ")
 ;;1710
 ;;21,"43353-0318-60 ")
 ;;1711
 ;;21,"43353-0333-30 ")
 ;;1712
 ;;21,"43353-0333-45 ")
 ;;1713
 ;;21,"43353-0350-30 ")
 ;;1714
 ;;21,"43353-0350-45 ")
 ;;1715
 ;;21,"43353-0350-60 ")
 ;;1716
 ;;21,"43353-0350-80 ")
 ;;1717
 ;;21,"43353-0365-15 ")
 ;;1718
 ;;21,"43353-0365-30 ")
 ;;1719
 ;;21,"43353-0365-45 ")
 ;;1720
 ;;21,"43353-0365-60 ")
 ;;1721
 ;;21,"43353-0459-45 ")
 ;;1722
 ;;21,"43353-0516-45 ")
 ;;1723
 ;;21,"43353-0521-60 ")
 ;;1724
 ;;21,"43353-0521-80 ")
 ;;1725
 ;;21,"43353-0643-60 ")
 ;;1726
 ;;21,"43353-0655-60 ")
 ;;1727
 ;;21,"43353-0662-80 ")
 ;;1728
 ;;21,"43353-0676-60 ")
 ;;1729
 ;;21,"43353-0712-60 ")
 ;;1730
 ;;21,"43353-0722-60 ")
 ;;1731
 ;;21,"43353-0726-60 ")
 ;;1732
 ;;21,"43353-0726-80 ")
 ;;1733
 ;;21,"43353-0728-60 ")
 ;;1734
 ;;21,"43353-0729-30 ")
 ;;1735
 ;;21,"43353-0729-45 ")
 ;;1736
 ;;21,"43353-0729-60 ")
 ;;1737
 ;;21,"43353-0730-30 ")
 ;;1738
 ;;21,"43353-0730-60 ")
 ;;1739
 ;;21,"43353-0800-60 ")
 ;;1740
 ;;21,"43353-0865-60 ")
 ;;1741
 ;;21,"43353-0865-80 ")
 ;;1742
 ;;21,"43353-0866-30 ")
 ;;1743
 ;;21,"43353-0866-60 ")
 ;;1744
 ;;21,"43353-0867-60 ")
 ;;1745
 ;;21,"43353-0870-45 ")
 ;;1746
 ;;21,"43353-0910-83 ")
 ;;1747
 ;;21,"43353-0926-60 ")
 ;;1748
 ;;21,"43353-0968-60 ")
 ;;1749
 ;;21,"43353-0968-80 ")
 ;;1750
 ;;21,"43353-0976-30 ")
 ;;1751
 ;;21,"43353-0976-60 ")
 ;;1752
 ;;21,"43353-0977-60 ")
 ;;1753
 ;;21,"43353-0993-30 ")
 ;;1754
 ;;21,"43353-0993-60 ")
 ;;1755
 ;;21,"43353-0993-80 ")
 ;;1756
 ;;21,"43386-0080-03 ")
 ;;1757
 ;;21,"43386-0080-09 ")
 ;;1758
 ;;21,"43386-0081-03 ")
 ;;1759
 ;;21,"43386-0081-09 ")
 ;;1760
 ;;21,"43386-0082-03 ")
 ;;1761
 ;;21,"43386-0082-09 ")
 ;;1762
 ;;21,"43386-0083-03 ")
 ;;1763
 ;;21,"43386-0083-09 ")
 ;;1764
 ;;21,"43386-0710-05 ")
 ;;1765
 ;;21,"43386-0710-09 ")
 ;;1766
 ;;21,"43386-0711-05 ")
 ;;1767
 ;;21,"43386-0711-09 ")
 ;;1768
 ;;21,"43386-0712-05 ")
 ;;1769
 ;;21,"43386-0712-09 ")
 ;;1770
 ;;21,"43547-0277-03 ")
 ;;1771
 ;;21,"43547-0277-09 ")
 ;;1772
 ;;21,"43547-0277-50 ")
 ;;1773
 ;;21,"43547-0278-03 ")
 ;;1774
 ;;21,"43547-0278-09 ")
 ;;1775
 ;;21,"43547-0278-50 ")
 ;;1776
 ;;21,"43547-0279-03 ")
 ;;1777
 ;;21,"43547-0279-09 ")
 ;;1778
 ;;21,"43547-0279-50 ")
 ;;1779
 ;;21,"43547-0330-03 ")
 ;;1780
 ;;21,"43547-0330-09 ")
 ;;1781
 ;;21,"43547-0331-03 ")
 ;;1782
 ;;21,"43547-0331-09 ")
 ;;1783
 ;;21,"43547-0335-10 ")
 ;;1784
 ;;21,"43547-0336-10 ")
 ;;1785
 ;;21,"43547-0336-50 ")
 ;;1786
 ;;21,"43547-0337-10 ")
 ;;1787
 ;;21,"43547-0337-50 ")
 ;;1788
 ;;21,"43547-0338-10 ")
 ;;1789
 ;;21,"43547-0338-50 ")
 ;;1790
 ;;21,"43547-0351-10 ")
 ;;1791
 ;;21,"43547-0351-50 ")
 ;;1792
 ;;21,"43547-0352-10 ")
 ;;1793
 ;;21,"43547-0352-11 ")
 ;;1794
 ;;21,"43547-0353-10 ")
 ;;1795
 ;;21,"43547-0353-11 ")
 ;;1796
 ;;21,"43547-0354-10 ")
 ;;1797
 ;;21,"43547-0354-11 ")
 ;;1798
 ;;21,"43547-0355-10 ")
 ;;1799
 ;;21,"43547-0355-50 ")
 ;;1800
 ;;21,"43547-0356-10 ")
 ;;1801
 ;;21,"43547-0356-11 ")
 ;;1802
 ;;21,"43547-0360-09 ")
 ;;1803
 ;;21,"43547-0360-50 ")
 ;;1804
 ;;21,"43547-0361-03 ")
 ;;1805
 ;;21,"43547-0361-09 ")
 ;;1806
 ;;21,"43547-0361-11 ")
 ;;1807
 ;;21,"43547-0362-03 ")
 ;;1808
 ;;21,"43547-0362-09 ")
 ;;1809
 ;;21,"43547-0362-11 ")
 ;;1810
 ;;21,"43683-0147-30 ")
 ;;1811
 ;;21,"43683-0148-30 ")
 ;;1812
 ;;21,"47463-0020-30 ")
 ;;1813
 ;;21,"47463-0021-30 ")
 ;;1814
 ;;21,"47463-0022-30 ")
 ;;1815
 ;;21,"47463-0023-30 ")
 ;;1816
 ;;21,"47463-0024-30 ")
 ;;1817
 ;;21,"47463-0039-30 ")
 ;;1818
 ;;21,"47463-0040-30 ")
 ;;1819
 ;;21,"47463-0043-30 ")
 ;;1820
