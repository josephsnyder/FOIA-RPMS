BUD2ZA5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 16, 2012;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58016097984 ")
 ;;1654
 ;;21,"58016097987 ")
 ;;1655
 ;;21,"58016097989 ")
 ;;1656
 ;;21,"58016097990 ")
 ;;1657
 ;;21,"58016097991 ")
 ;;1658
 ;;21,"58016097992 ")
 ;;1659
 ;;21,"58016097993 ")
 ;;1660
 ;;21,"58016097996 ")
 ;;1661
 ;;21,"58016097997 ")
 ;;1662
 ;;21,"58016097998 ")
 ;;1663
 ;;21,"58016097999 ")
 ;;1664
 ;;21,"58056038106 ")
 ;;1665
 ;;21,"58056038250 ")
 ;;1666
 ;;21,"58864071060 ")
 ;;1667
 ;;21,"58864078030 ")
 ;;1668
 ;;21,"58864078060 ")
 ;;1669
 ;;21,"58864078130 ")
 ;;1670
 ;;21,"59591001768 ")
 ;;1671
 ;;21,"59630062899 ")
 ;;1672
 ;;21,"59762026001 ")
 ;;1673
 ;;21,"59762026002 ")
 ;;1674
 ;;21,"59762026003 ")
 ;;1675
 ;;21,"59762045001 ")
 ;;1676
 ;;21,"59772558501 ")
 ;;1677
 ;;21,"59772558502 ")
 ;;1678
 ;;21,"59772558520 ")
 ;;1679
 ;;21,"59772558901 ")
 ;;1680
 ;;21,"59772558902 ")
 ;;1681
 ;;21,"59772558920 ")
 ;;1682
 ;;21,"59930163801 ")
 ;;1683
 ;;21,"59930163802 ")
 ;;1684
 ;;21,"60312036300 ")
 ;;1685
 ;;21,"60312036400 ")
 ;;1686
 ;;21,"60312036500 ")
 ;;1687
 ;;21,"60312036600 ")
 ;;1688
 ;;21,"60312054300 ")
 ;;1689
 ;;21,"60312054307 ")
 ;;1690
 ;;21,"60312054328 ")
 ;;1691
 ;;21,"60312054330 ")
 ;;1692
 ;;21,"60312054331 ")
 ;;1693
 ;;21,"60312054340 ")
 ;;1694
 ;;21,"60312054354 ")
 ;;1695
 ;;21,"60312054382 ")
 ;;1696
 ;;21,"60312080000 ")
 ;;1697
 ;;21,"60312080100 ")
 ;;1698
 ;;21,"60312080200 ")
 ;;1699
 ;;21,"60312080300 ")
 ;;1700
 ;;21,"60312089200 ")
 ;;1701
 ;;21,"60312089210 ")
 ;;1702
 ;;21,"60312089230 ")
 ;;1703
 ;;21,"60312089290 ")
 ;;1704
 ;;21,"60346036798 ")
 ;;1705
 ;;21,"60429008105 ")
 ;;1706
 ;;21,"60429008118 ")
 ;;1707
 ;;21,"60429008160 ")
 ;;1708
 ;;21,"60505003400 ")
 ;;1709
 ;;21,"60505003401 ")
 ;;1710
 ;;21,"60505003402 ")
 ;;1711
 ;;21,"60505003404 ")
 ;;1712
 ;;21,"60505003406 ")
 ;;1713
 ;;21,"60505003408 ")
 ;;1714
 ;;21,"60505017700 ")
 ;;1715
 ;;21,"60505017701 ")
 ;;1716
 ;;21,"60505017703 ")
 ;;1717
 ;;21,"60505017709 ")
 ;;1718
 ;;21,"60505017800 ")
 ;;1719
 ;;21,"60505017801 ")
 ;;1720
 ;;21,"60505017803 ")
 ;;1721
 ;;21,"60505017809 ")
 ;;1722
 ;;21,"60505017900 ")
 ;;1723
 ;;21,"60505017901 ")
 ;;1724
 ;;21,"60505017903 ")
 ;;1725
 ;;21,"60505017909 ")
 ;;1726
 ;;21,"60809012255 ")
 ;;1727
 ;;21,"60809012272 ")
 ;;1728
 ;;21,"60814056701 ")
 ;;1729
 ;;21,"60814056801 ")
 ;;1730
 ;;21,"60935001000 ")
 ;;1731
 ;;21,"60935001001 ")
 ;;1732
 ;;21,"61258336901 ")
 ;;1733
 ;;21,"61258337000 ")
 ;;1734
 ;;21,"61258337100 ")
 ;;1735
 ;;21,"61392009325 ")
 ;;1736
 ;;21,"61392009330 ")
 ;;1737
 ;;21,"61392009331 ")
 ;;1738
 ;;21,"61392009339 ")
 ;;1739
 ;;21,"61392009360 ")
 ;;1740
 ;;21,"61392009365 ")
 ;;1741
 ;;21,"61392009390 ")
 ;;1742
 ;;21,"61392011630 ")
 ;;1743
 ;;21,"61392011631 ")
 ;;1744
 ;;21,"61392011632 ")
 ;;1745
 ;;21,"61392011639 ")
 ;;1746
 ;;21,"61392011645 ")
 ;;1747
 ;;21,"61392011651 ")
 ;;1748
 ;;21,"61392011654 ")
 ;;1749
 ;;21,"61392011660 ")
 ;;1750
 ;;21,"61392011690 ")
 ;;1751
 ;;21,"61392011691 ")
 ;;1752
 ;;21,"61392073731 ")
 ;;1753
 ;;21,"61392073739 ")
 ;;1754
 ;;21,"61392079725 ")
 ;;1755
 ;;21,"61392079730 ")
 ;;1756
 ;;21,"61392079731 ")
 ;;1757
 ;;21,"61392079739 ")
 ;;1758
 ;;21,"61442014101 ")
 ;;1759
 ;;21,"61442014110 ")
 ;;1760
 ;;21,"61442014201 ")
 ;;1761
 ;;21,"61442014210 ")
 ;;1762
 ;;21,"61442014301 ")
 ;;1763
 ;;21,"61442014310 ")
 ;;1764
 ;;21,"61947000600 ")
 ;;1765
 ;;21,"61947000700 ")
 ;;1766
 ;;21,"62037079101 ")
 ;;1767
 ;;21,"62037079105 ")
 ;;1768
 ;;21,"62037079160 ")
 ;;1769
 ;;21,"62037079201 ")
 ;;1770
 ;;21,"62037079205 ")
 ;;1771
 ;;21,"62037079210 ")
 ;;1772
 ;;21,"62037079260 ")
 ;;1773
 ;;21,"62037079301 ")
 ;;1774
 ;;21,"62037079305 ")
 ;;1775
 ;;21,"62037079310 ")
 ;;1776
 ;;21,"62037079360 ")
 ;;1777
 ;;21,"62269032029 ")
 ;;1778
 ;;21,"62269032060 ")
 ;;1779
 ;;21,"62318003404 ")
 ;;1780
 ;;21,"62318003408 ")
 ;;1781
 ;;21,"63126028110 ")
 ;;1782
 ;;21,"63126028160 ")
 ;;1783
 ;;21,"63126028210 ")
 ;;1784
 ;;21,"63126028260 ")
 ;;1785
 ;;21,"63126028310 ")
 ;;1786
 ;;21,"63126028360 ")
 ;;1787
 ;;21,"63304078910 ")
 ;;1788
 ;;21,"63304078930 ")
 ;;1789
 ;;21,"63304078990 ")
 ;;1790
 ;;21,"63304079010 ")
 ;;1791
 ;;21,"63304079030 ")
 ;;1792
 ;;21,"63304079090 ")
 ;;1793
 ;;21,"63304079110 ")
 ;;1794
 ;;21,"63304079130 ")
 ;;1795
 ;;21,"63304079190 ")
 ;;1796
 ;;21,"63304079210 ")
 ;;1797
 ;;21,"63304079230 ")
 ;;1798
 ;;21,"63304079250 ")
 ;;1799
 ;;21,"63304079290 ")
 ;;1800
 ;;21,"63304079310 ")
 ;;1801
 ;;21,"63304079330 ")
 ;;1802
 ;;21,"63304079350 ")
 ;;1803
 ;;21,"63304079390 ")
 ;;1804
 ;;21,"63304090090 ")
 ;;1805
 ;;21,"63304090105 ")
 ;;1806
 ;;21,"63304090190 ")
 ;;1807
 ;;21,"63629139001 ")
 ;;1808
 ;;21,"63629139002 ")
 ;;1809
 ;;21,"63629139003 ")
 ;;1810
 ;;21,"63629146401 ")
 ;;1811
 ;;21,"63629146402 ")
 ;;1812
 ;;21,"63629146403 ")
 ;;1813
 ;;21,"63629178401 ")
 ;;1814
 ;;21,"63629178402 ")
 ;;1815
 ;;21,"63629338501 ")
 ;;1816
 ;;21,"63629338502 ")
 ;;1817
 ;;21,"63629338503 ")
 ;;1818
 ;;21,"63629338504 ")
 ;;1819
 ;;21,"63629338505 ")
 ;;1820
 ;;21,"63629339201 ")
 ;;1821
 ;;21,"63629339301 ")
 ;;1822
 ;;21,"63629339302 ")
 ;;1823
 ;;21,"63629339303 ")
 ;;1824
 ;;21,"63629339304 ")
 ;;1825
 ;;21,"63629340801 ")
 ;;1826
 ;;21,"63629340804 ")
 ;;1827
 ;;21,"63629358301 ")
 ;;1828
 ;;21,"63629358302 ")
 ;;1829
 ;;21,"63672000101 ")
 ;;1830
 ;;21,"63672000103 ")
 ;;1831
 ;;21,"63672000201 ")
 ;;1832
 ;;21,"63672000203 ")
 ;;1833
 ;;21,"63672000301 ")
 ;;1834
 ;;21,"63672000303 ")
 ;;1835
 ;;21,"63672000401 ")
 ;;1836
 ;;21,"63672000403 ")
 ;;1837
 ;;21,"63739011401 ")
 ;;1838
 ;;21,"63739011403 ")
 ;;1839
 ;;21,"63739028010 ")
 ;;1840
 ;;21,"63739028015 ")
 ;;1841
 ;;21,"63739028101 ")
 ;;1842
 ;;21,"63739028103 ")
 ;;1843
 ;;21,"63739028110 ")
 ;;1844
 ;;21,"63739028115 ")
 ;;1845
 ;;21,"63739028201 ")
 ;;1846
 ;;21,"63739028203 ")
 ;;1847
 ;;21,"63739028210 ")
 ;;1848
 ;;21,"63739041910 ")
 ;;1849
 ;;21,"63739042010 ")
 ;;1850
 ;;21,"63739042110 ")
 ;;1851
 ;;21,"63739042210 ")
 ;;1852
 ;;21,"63739043510 ")
 ;;1853
 ;;21,"63739043610 ")
 ;;1854
 ;;21,"63739043710 ")
 ;;1855
 ;;21,"63739043810 ")
 ;;1856
 ;;21,"63874036301 ")
 ;;1857
 ;;21,"63874036310 ")
 ;;1858
 ;;21,"63874036320 ")
 ;;1859
 ;;21,"63874036330 ")
 ;;1860
 ;;21,"63874036360 ")
 ;;1861
 ;;21,"63874036390 ")
 ;;1862
 ;;21,"64725014403 ")
 ;;1863
 ;;21,"64896051101 ")
 ;;1864
 ;;21,"64896052201 ")
 ;;1865
 ;;21,"64896053301 ")
 ;;1866
 ;;21,"64896521102 ")
 ;;1867
 ;;21,"64896521106 ")
 ;;1868
 ;;21,"64896521302 ")
 ;;1869
 ;;21,"64896551101 ")
 ;;1870
 ;;21,"64896551102 ")
 ;;1871
 ;;21,"64896551103 ")
 ;;1872
 ;;21,"64896551105 ")
 ;;1873
 ;;21,"64915014160 ")
 ;;1874
 ;;21,"65162041810 ")
 ;;1875
 ;;21,"65162041811 ")
 ;;1876
 ;;21,"65162042010 ")
 ;;1877
 ;;21,"65162042011 ")
 ;;1878
 ;;21,"65162042110 ")
 ;;1879
 ;;21,"65243003506 ")
 ;;1880
 ;;21,"65243003518 ")
 ;;1881
 ;;21,"65243028403 ")
 ;;1882
 ;;21,"65243028406 ")
 ;;1883
 ;;21,"65243028409 ")
 ;;1884
 ;;21,"65243028412 ")
 ;;1885
 ;;21,"65243028418 ")
 ;;1886
 ;;21,"65243035203 ")
 ;;1887
 ;;21,"65243035206 ")
 ;;1888
 ;;21,"65243035209 ")
 ;;1889
 ;;21,"65243035218 ")
 ;;1890
 ;;21,"65243035245 ")
 ;;1891
 ;;21,"65243036103 ")
 ;;1892
 ;;21,"65243036106 ")
 ;;1893
 ;;21,"65243036109 ")
 ;;1894
 ;;21,"65243036115 ")
 ;;1895
 ;;21,"65243036145 ")
 ;;1896
 ;;21,"65243036503 ")
 ;;1897
 ;;21,"65243036506 ")
 ;;1898
 ;;21,"65243036509 ")
 ;;1899
 ;;21,"65243036515 ")
 ;;1900
 ;;21,"65243036545 ")
 ;;1901
 ;;21,"65243036903 ")
 ;;1902
 ;;21,"65243036906 ")
 ;;1903
 ;;21,"65243036909 ")
 ;;1904
 ;;21,"65243036915 ")
 ;;1905
 ;;21,"65243036945 ")
 ;;1906
 ;;21,"65841006505 ")
 ;;1907
 ;;21,"65841006506 ")
 ;;1908
 ;;21,"65841006510 ")
 ;;1909
 ;;21,"65841006514 ")
 ;;1910
 ;;21,"65841006516 ")
 ;;1911
 ;;21,"65841006605 ")
 ;;1912
 ;;21,"65841006606 ")
 ;;1913
 ;;21,"65841006610 ")
 ;;1914
 ;;21,"65841006614 ")
 ;;1915
 ;;21,"65841006616 ")
 ;;1916
 ;;21,"65841006624 ")
 ;;1917
 ;;21,"65841006705 ")
 ;;1918
 ;;21,"65841006706 ")
 ;;1919
 ;;21,"65841006710 ")
 ;;1920
 ;;21,"65841006714 ")
 ;;1921
 ;;21,"65841006716 ")
 ;;1922
 ;;21,"65841006724 ")
 ;;1923
 ;;21,"65841006805 ")
 ;;1924
 ;;21,"65841006806 ")
 ;;1925
 ;;21,"65841006810 ")
 ;;1926
 ;;21,"65841006814 ")
 ;;1927
 ;;21,"65841006816 ")
 ;;1928
 ;;21,"65841006840 ")
 ;;1929
 ;;21,"65841006905 ")
 ;;1930
 ;;21,"65841006906 ")
 ;;1931
 ;;21,"65841006910 ")
 ;;1932
 ;;21,"65841006914 ")
 ;;1933
 ;;21,"65841006916 ")
 ;;1934
 ;;21,"65862005000 ")
 ;;1935
 ;;21,"65862005001 ")
 ;;1936
 ;;21,"65862005011 ")
 ;;1937
 ;;21,"65862005026 ")
 ;;1938
 ;;21,"65862005030 ")
 ;;1939
 ;;21,"65862005090 ")
 ;;1940
 ;;21,"65862005099 ")
 ;;1941
 ;;21,"65862005100 ")
 ;;1942
 ;;21,"65862005101 ")
 ;;1943
 ;;21,"65862005119 ")
 ;;1944
 ;;21,"65862005126 ")
 ;;1945
 ;;21,"65862005130 ")
 ;;1946
 ;;21,"65862005190 ")
 ;;1947
 ;;21,"65862005199 ")
 ;;1948
 ;;21,"65862005200 ")
 ;;1949
 ;;21,"65862005201 ")
 ;;1950
 ;;21,"65862005226 ")
 ;;1951
 ;;21,"65862005230 ")
 ;;1952
 ;;21,"65862005271 ")
 ;;1953
 ;;21,"65862005290 ")
 ;;1954
 ;;21,"65862005299 ")
 ;;1955
 ;;21,"65862005300 ")
 ;;1956
 ;;21,"65862005301 ")
 ;;1957
 ;;21,"65862005322 ")
 ;;1958
 ;;21,"65862005330 ")
 ;;1959
 ;;21,"65862005341 ")
 ;;1960
 ;;21,"65862005390 ")
 ;;1961
 ;;21,"65862005399 ")
 ;;1962
 ;;21,"65862005400 ")
 ;;1963
 ;;21,"65862005423 ")
 ;;1964
 ;;21,"65862005430 ")
 ;;1965
 ;;21,"65862005439 ")
 ;;1966
 ;;21,"65862005490 ")
 ;;1967
 ;;21,"65862005499 ")
 ;;1968
 ;;21,"66116027730 ")
 ;;1969
 ;;21,"66116031830 ")
 ;;1970
 ;;21,"66116031930 ")
 ;;1971
 ;;21,"66116045130 ")
 ;;1972
 ;;21,"66116081730 ")
 ;;1973
 ;;21,"66116081830 ")
 ;;1974
 ;;21,"66116083230 ")
 ;;1975
 ;;21,"66116083330 ")
 ;;1976
 ;;21,"66116084730 ")
 ;;1977
 ;;21,"66116086330 ")
 ;;1978
 ;;21,"66267043620 ")
 ;;1979
 ;;21,"66267043630 ")
 ;;1980
 ;;21,"66267043640 ")
 ;;1981
 ;;21,"66267043660 ")
 ;;1982
 ;;21,"66267043690 ")
 ;;1983
 ;;21,"66267043692 ")
 ;;1984
 ;;21,"66267050610 ")
 ;;1985
 ;;21,"66267050615 ")
 ;;1986
 ;;21,"66267050620 ")
 ;;1987
 ;;21,"66267050630 ")
 ;;1988
 ;;21,"66267050640 ")
 ;;1989
 ;;21,"66267050660 ")
 ;;1990
 ;;21,"66267050690 ")
 ;;1991
 ;;21,"66267055520 ")
 ;;1992
 ;;21,"66267055528 ")
 ;;1993
 ;;21,"66267055530 ")
 ;;1994
 ;;21,"66267055540 ")
 ;;1995
 ;;21,"66267055560 ")
 ;;1996
 ;;21,"66267055590 ")
 ;;1997
 ;;21,"66267056130 ")
 ;;1998
 ;;21,"66267056190 ")
 ;;1999
 ;;21,"66336031030 ")
 ;;2000
 ;;21,"66336031060 ")
 ;;2001
 ;;21,"66336036760 ")
 ;;2002
 ;;21,"66336041205 ")
 ;;2003
 ;;21,"66336041230 ")
 ;;2004
 ;;21,"66336095330 ")
 ;;2005
 ;;21,"66336095390 ")
 ;;2006
 ;;21,"66336095430 ")
 ;;2007
 ;;21,"66336098630 ")
 ;;2008
 ;;21,"66394000130 ")
 ;;2009
 ;;21,"66394000190 ")
 ;;2010
 ;;21,"66394000230 ")
 ;;2011
 ;;21,"66394000290 ")
 ;;2012
 ;;21,"66394000330 ")
 ;;2013
 ;;21,"66394000390 ")
 ;;2014
 ;;21,"66394000430 ")
 ;;2015
 ;;21,"66394000490 ")
 ;;2016
 ;;21,"66394000530 ")
 ;;2017
 ;;21,"66394000590 ")
 ;;2018
 ;;21,"66484074100 ")
 ;;2019
 ;;21,"66484074106 ")
 ;;2020
 ;;21,"67046023030 ")
 ;;2021
 ;;21,"67046067130 ")
 ;;2022
 ;;21,"67046067230 ")
 ;;2023
 ;;21,"67046067430 ")
 ;;2024
 ;;21,"67046067530 ")
 ;;2025
 ;;21,"67228023803 ")
 ;;2026
 ;;21,"67228023806 ")
 ;;2027
 ;;21,"67228025703 ")
 ;;2028
 ;;21,"67228025706 ")
 ;;2029
 ;;21,"67228025803 ")
 ;;2030
 ;;21,"67228025806 ")
 ;;2031
 ;;21,"67228025903 ")
 ;;2032
 ;;21,"67228025906 ")
 ;;2033
 ;;21,"67228028803 ")
 ;;2034
 ;;21,"67228028806 ")
 ;;2035
 ;;21,"67228029403 ")
 ;;2036
 ;;21,"67228029406 ")
 ;;2037
 ;;21,"67228034003 ")
 ;;2038
 ;;21,"67228034006 ")
 ;;2039
 ;;21,"67228034803 ")
 ;;2040
 ;;21,"67228034806 ")
 ;;2041
 ;;21,"67228035403 ")
 ;;2042
 ;;21,"67228035406 ")
 ;;2043
 ;;21,"67228036003 ")
 ;;2044
 ;;21,"67228036006 ")
 ;;2045
 ;;21,"67228042703 ")
 ;;2046
 ;;21,"67228044903 ")
 ;;2047
 ;;21,"67228044906 ")
 ;;2048
 ;;21,"67228045803 ")
 ;;2049
 ;;21,"67228045806 ")
 ;;2050
 ;;21,"67228046603 ")
 ;;2051
 ;;21,"67228046606 ")
 ;;2052
 ;;21,"67228046803 ")
 ;;2053
 ;;21,"67228046806 ")
 ;;2054
 ;;21,"67253074106 ")
 ;;2055
 ;;21,"67253074109 ")
 ;;2056
 ;;21,"67253074150 ")
 ;;2057
 ;;21,"67317337301 ")
 ;;2058
 ;;21,"67317337401 ")
 ;;2059
 ;;21,"67317337501 ")
 ;;2060
