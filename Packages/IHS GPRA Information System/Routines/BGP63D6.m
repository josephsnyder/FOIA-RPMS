BGP63D6 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63874-0379-10 ")
 ;;1897
 ;;21,"63874-0379-30 ")
 ;;1898
 ;;21,"63874-0423-01 ")
 ;;775
 ;;21,"63874-0423-07 ")
 ;;776
 ;;21,"63874-0423-10 ")
 ;;777
 ;;21,"63874-0423-14 ")
 ;;778
 ;;21,"63874-0423-20 ")
 ;;779
 ;;21,"63874-0423-30 ")
 ;;780
 ;;21,"63874-0423-60 ")
 ;;781
 ;;21,"63874-0514-01 ")
 ;;1317
 ;;21,"63874-0514-10 ")
 ;;1318
 ;;21,"63874-0514-14 ")
 ;;1319
 ;;21,"63874-0514-15 ")
 ;;1320
 ;;21,"63874-0514-16 ")
 ;;1321
 ;;21,"63874-0514-20 ")
 ;;1322
 ;;21,"63874-0514-28 ")
 ;;1323
 ;;21,"63874-0514-30 ")
 ;;1324
 ;;21,"63874-0514-60 ")
 ;;1325
 ;;21,"63874-0514-90 ")
 ;;1326
 ;;21,"63874-0522-01 ")
 ;;1057
 ;;21,"63874-0522-15 ")
 ;;1058
 ;;21,"63874-0522-30 ")
 ;;1059
 ;;21,"63874-0522-60 ")
 ;;1060
 ;;21,"63874-0558-01 ")
 ;;1691
 ;;21,"63874-0558-10 ")
 ;;1692
 ;;21,"63874-0558-14 ")
 ;;1693
 ;;21,"63874-0558-16 ")
 ;;1694
 ;;21,"63874-0558-28 ")
 ;;1695
 ;;21,"63874-0558-30 ")
 ;;1696
 ;;21,"63874-0558-60 ")
 ;;1697
 ;;21,"63874-0558-90 ")
 ;;1698
 ;;21,"63874-0581-10 ")
 ;;1796
 ;;21,"63874-0581-30 ")
 ;;1797
 ;;21,"63874-0581-90 ")
 ;;1798
 ;;21,"63874-0655-01 ")
 ;;496
 ;;21,"63874-0655-10 ")
 ;;497
 ;;21,"63874-0655-20 ")
 ;;498
 ;;21,"63874-0655-30 ")
 ;;499
 ;;21,"63874-0655-60 ")
 ;;500
 ;;21,"63874-0987-01 ")
 ;;656
 ;;21,"63874-0987-10 ")
 ;;657
 ;;21,"63874-0987-14 ")
 ;;658
 ;;21,"63874-0987-20 ")
 ;;659
 ;;21,"63874-0987-30 ")
 ;;660
 ;;21,"63874-0987-60 ")
 ;;661
 ;;21,"63874-1114-09 ")
 ;;1403
 ;;21,"64455-0140-30 ")
 ;;570
 ;;21,"64455-0140-90 ")
 ;;571
 ;;21,"64455-0141-10 ")
 ;;782
 ;;21,"64455-0141-30 ")
 ;;783
 ;;21,"64455-0141-90 ")
 ;;784
 ;;21,"64455-0142-10 ")
 ;;501
 ;;21,"64455-0142-30 ")
 ;;502
 ;;21,"64455-0142-90 ")
 ;;503
 ;;21,"64455-0143-10 ")
 ;;662
 ;;21,"64455-0143-30 ")
 ;;663
 ;;21,"64455-0143-90 ")
 ;;664
 ;;21,"64679-0902-01 ")
 ;;285
 ;;21,"64679-0902-02 ")
 ;;286
 ;;21,"64679-0902-05 ")
 ;;287
 ;;21,"64679-0903-01 ")
 ;;348
 ;;21,"64679-0903-02 ")
 ;;349
 ;;21,"64679-0903-05 ")
 ;;350
 ;;21,"64679-0904-01 ")
 ;;404
 ;;21,"64679-0904-02 ")
 ;;405
 ;;21,"64679-0904-05 ")
 ;;406
 ;;21,"64679-0905-01 ")
 ;;256
 ;;21,"64679-0905-04 ")
 ;;257
 ;;21,"64679-0923-02 ")
 ;;572
 ;;21,"64679-0923-03 ")
 ;;573
 ;;21,"64679-0923-09 ")
 ;;574
 ;;21,"64679-0923-10 ")
 ;;575
 ;;21,"64679-0924-02 ")
 ;;785
 ;;21,"64679-0924-03 ")
 ;;786
 ;;21,"64679-0924-09 ")
 ;;787
 ;;21,"64679-0924-10 ")
 ;;788
 ;;21,"64679-0925-02 ")
 ;;504
 ;;21,"64679-0925-03 ")
 ;;505
 ;;21,"64679-0925-09 ")
 ;;506
 ;;21,"64679-0925-10 ")
 ;;507
 ;;21,"64679-0926-02 ")
 ;;665
 ;;21,"64679-0926-03 ")
 ;;666
 ;;21,"64679-0926-09 ")
 ;;667
 ;;21,"64679-0926-10 ")
 ;;668
 ;;21,"64679-0927-01 ")
 ;;1142
 ;;21,"64679-0927-02 ")
 ;;1143
 ;;21,"64679-0927-05 ")
 ;;1144
 ;;21,"64679-0927-09 ")
 ;;1145
 ;;21,"64679-0928-01 ")
 ;;1699
 ;;21,"64679-0928-05 ")
 ;;1700
 ;;21,"64679-0928-06 ")
 ;;1701
 ;;21,"64679-0928-10 ")
 ;;1702
 ;;21,"64679-0929-01 ")
 ;;1061
 ;;21,"64679-0929-05 ")
 ;;1062
 ;;21,"64679-0929-06 ")
 ;;1063
 ;;21,"64679-0929-10 ")
 ;;1064
 ;;21,"64679-0941-01 ")
 ;;1327
 ;;21,"64679-0941-05 ")
 ;;1328
 ;;21,"64679-0941-06 ")
 ;;1329
 ;;21,"64679-0941-10 ")
 ;;1330
 ;;21,"64679-0942-01 ")
 ;;1537
 ;;21,"64679-0942-02 ")
 ;;1538
 ;;21,"64679-0942-05 ")
 ;;1539
 ;;21,"64679-0942-09 ")
 ;;1540
 ;;21,"64679-0953-01 ")
 ;;1404
 ;;21,"64679-0953-02 ")
 ;;1405
 ;;21,"64679-0953-05 ")
 ;;1406
 ;;21,"64679-0953-09 ")
 ;;1407
 ;;21,"65162-0751-03 ")
 ;;240
 ;;21,"65162-0751-10 ")
 ;;241
 ;;21,"65162-0751-50 ")
 ;;242
 ;;21,"65162-0752-03 ")
 ;;65
 ;;21,"65162-0752-10 ")
 ;;66
 ;;21,"65162-0752-50 ")
 ;;67
 ;;21,"65162-0753-03 ")
 ;;140
 ;;21,"65162-0753-10 ")
 ;;141
 ;;21,"65162-0753-50 ")
 ;;142
 ;;21,"65162-0754-03 ")
 ;;202
 ;;21,"65162-0754-10 ")
 ;;203
 ;;21,"65162-0754-50 ")
 ;;204
 ;;21,"65243-0303-03 ")
 ;;1703
 ;;21,"65243-0314-03 ")
 ;;1541
 ;;21,"65862-0037-01 ")
 ;;1146
 ;;21,"65862-0037-05 ")
 ;;1147
 ;;21,"65862-0037-99 ")
 ;;1148
 ;;21,"65862-0038-01 ")
 ;;1704
 ;;21,"65862-0038-05 ")
 ;;1705
 ;;21,"65862-0038-99 ")
 ;;1706
 ;;21,"65862-0039-01 ")
 ;;1065
 ;;21,"65862-0039-05 ")
 ;;1066
 ;;21,"65862-0039-99 ")
 ;;1067
 ;;21,"65862-0040-01 ")
 ;;1331
 ;;21,"65862-0040-05 ")
 ;;1332
 ;;21,"65862-0040-99 ")
 ;;1333
 ;;21,"65862-0041-01 ")
 ;;1408
 ;;21,"65862-0041-05 ")
 ;;1409
 ;;21,"65862-0041-99 ")
 ;;1410
 ;;21,"65862-0042-01 ")
 ;;1542
 ;;21,"65862-0042-05 ")
 ;;1543
 ;;21,"65862-0042-99 ")
 ;;1544
 ;;21,"65862-0116-01 ")
 ;;68
 ;;21,"65862-0117-01 ")
 ;;143
 ;;21,"65862-0118-01 ")
 ;;205
 ;;21,"65862-0164-01 ")
 ;;2088
 ;;21,"65862-0165-01 ")
 ;;2101
 ;;21,"65862-0166-01 ")
 ;;2117
 ;;21,"65862-0286-01 ")
 ;;1751
 ;;21,"65862-0287-01 ")
 ;;1758
 ;;21,"65862-0288-01 ")
 ;;1765
 ;;21,"65862-0471-90 ")
 ;;823
 ;;21,"65862-0472-90 ")
 ;;854
 ;;21,"65862-0473-90 ")
 ;;889
 ;;21,"65862-0474-01 ")
 ;;1914
 ;;21,"65862-0474-30 ")
 ;;1915
 ;;21,"65862-0475-01 ")
 ;;2009
 ;;21,"65862-0475-05 ")
 ;;2010
 ;;21,"65862-0476-01 ")
 ;;2062
 ;;21,"65862-0476-05 ")
 ;;2063
 ;;21,"65862-0477-01 ")
 ;;1962
 ;;21,"65862-0477-05 ")
 ;;1963
 ;;21,"65862-0617-90 ")
 ;;1899
 ;;21,"65862-0618-90 ")
 ;;1799
 ;;21,"65862-0619-90 ")
 ;;1832
 ;;21,"65862-0620-90 ")
 ;;1865
 ;;21,"66105-0101-09 ")
 ;;1800
 ;;21,"66105-0102-09 ")
 ;;1833
 ;;21,"66105-0103-09 ")
 ;;1866
 ;;21,"66105-0524-09 ")
 ;;1900
 ;;21,"66105-0548-03 ")
 ;;1334
 ;;21,"66105-0555-10 ")
 ;;1707
 ;;21,"66267-0323-30 ")
 ;;508
 ;;21,"66267-0323-60 ")
 ;;509
 ;;21,"66267-0323-90 ")
 ;;510
 ;;21,"66267-0323-91 ")
 ;;511
 ;;21,"66267-0380-30 ")
 ;;669
 ;;21,"66267-0380-60 ")
 ;;670
 ;;21,"66267-0380-90 ")
 ;;671
 ;;21,"66267-0380-91 ")
 ;;672
 ;;21,"66267-0413-30 ")
 ;;789
 ;;21,"66267-0413-60 ")
 ;;790
 ;;21,"66267-0413-90 ")
 ;;791
 ;;21,"66267-0413-92 ")
 ;;792
 ;;21,"66336-0124-30 ")
 ;;206
 ;;21,"66336-0232-30 ")
 ;;243
 ;;21,"66336-0366-30 ")
 ;;69
 ;;21,"66336-0389-30 ")
 ;;512
 ;;21,"66336-0389-60 ")
 ;;513
 ;;21,"66336-0391-30 ")
 ;;793
 ;;21,"66336-0391-60 ")
 ;;794
 ;;21,"66336-0393-30 ")
 ;;673
 ;;21,"66336-0393-60 ")
 ;;674
 ;;21,"66336-0618-60 ")
 ;;288
 ;;21,"66336-0691-30 ")
 ;;144
 ;;21,"66336-0741-30 ")
 ;;1335
 ;;21,"66336-0750-60 ")
 ;;407
 ;;21,"66336-0750-90 ")
 ;;408
 ;;21,"66336-0773-30 ")
 ;;70
 ;;21,"66336-0794-60 ")
 ;;258
 ;;21,"66336-0946-30 ")
 ;;351
 ;;21,"66336-0946-60 ")
 ;;352
 ;;21,"66336-0946-90 ")
 ;;353
 ;;21,"66336-0972-30 ")
 ;;1068
 ;;21,"66636-0691-30 ")
 ;;145
 ;;21,"66685-0301-00 ")
 ;;576
 ;;21,"66685-0301-02 ")
 ;;577
 ;;21,"66685-0302-00 ")
 ;;795
 ;;21,"66685-0302-02 ")
 ;;796
 ;;21,"66685-0303-00 ")
 ;;514
 ;;21,"66685-0303-02 ")
 ;;515
 ;;21,"66685-0304-00 ")
 ;;675
 ;;21,"66685-0304-02 ")
 ;;676
 ;;21,"66685-0701-01 ")
 ;;1149
 ;;21,"66685-0701-02 ")
 ;;1150
 ;;21,"66685-0702-01 ")
 ;;1708
 ;;21,"66685-0702-02 ")
 ;;1709
 ;;21,"66685-0702-03 ")
 ;;1710
 ;;21,"66685-0703-01 ")
 ;;1069
 ;;21,"66685-0703-02 ")
 ;;1070
 ;;21,"66685-0703-03 ")
 ;;1071
 ;;21,"66685-0704-01 ")
 ;;1336
 ;;21,"66685-0704-02 ")
 ;;1337
 ;;21,"66685-0704-03 ")
 ;;1338
 ;;21,"66685-0705-01 ")
 ;;1411
 ;;21,"66685-0705-02 ")
 ;;1412
 ;;21,"66685-0706-01 ")
 ;;1545
 ;;21,"66685-0706-03 ")
 ;;1546
 ;;21,"66685-0706-04 ")
 ;;1547
 ;;21,"67046-0156-30 ")
 ;;797
 ;;21,"67046-0157-30 ")
 ;;798
 ;;21,"67046-0158-30 ")
 ;;516
 ;;21,"67046-0159-30 ")
 ;;677
 ;;21,"67046-0159-60 ")
 ;;678
 ;;21,"67046-0160-30 ")
 ;;517
 ;;21,"67046-0161-30 ")
 ;;679
 ;;21,"67046-0161-60 ")
 ;;680
 ;;21,"67253-0106-10 ")
 ;;2089
 ;;21,"67253-0107-10 ")
 ;;2102
 ;;21,"67253-0671-10 ")
 ;;1916
 ;;21,"67253-0672-10 ")
 ;;2011
 ;;21,"67253-0672-11 ")
 ;;2012
 ;;21,"67253-0673-10 ")
 ;;2064
 ;;21,"67253-0673-11 ")
 ;;2065
 ;;21,"67253-0674-10 ")
 ;;1964
 ;;21,"67253-0674-11 ")
 ;;1965
 ;;21,"67544-0062-30 ")
 ;;1151
 ;;21,"67544-0128-15 ")
 ;;1711
 ;;21,"67544-0134-15 ")
 ;;1339
 ;;21,"67544-0148-15 ")
 ;;1548
 ;;21,"67544-0159-15 ")
 ;;1072
 ;;21,"67544-0173-30 ")
 ;;1712
 ;;21,"67544-0174-30 ")
 ;;1340
 ;;21,"67544-0219-15 ")
 ;;1073
 ;;21,"67544-0306-30 ")
 ;;890
 ;;21,"67544-0311-30 ")
 ;;891
 ;;21,"67544-0322-15 ")
 ;;855
 ;;21,"67544-0350-80 ")
 ;;578
 ;;21,"67544-0380-30 ")
 ;;824
 ;;21,"67544-0431-15 ")
 ;;856
 ;;21,"67544-0454-15 ")
 ;;892
 ;;21,"67544-0489-15 ")
 ;;825
 ;;21,"67544-0997-30 ")
 ;;1549
 ;;21,"67544-0999-60 ")
 ;;1341
 ;;21,"68001-0140-04 ")
 ;;1917
 ;;21,"68001-0141-00 ")
 ;;1966
 ;;21,"68001-0141-03 ")
 ;;1967
 ;;21,"68001-0142-00 ")
 ;;2013
 ;;21,"68001-0142-03 ")
 ;;2014
 ;;21,"68001-0143-00 ")
 ;;2066
 ;;21,"68001-0143-03 ")
 ;;2067
 ;;21,"68001-0186-05 ")
 ;;1867
 ;;21,"68001-0187-05 ")
 ;;1834
 ;;21,"68001-0188-05 ")
 ;;1801
 ;;21,"68001-0189-05 ")
 ;;1901
 ;;21,"68001-0207-00 ")
 ;;1713
 ;;21,"68001-0207-08 ")
 ;;1714
 ;;21,"68001-0208-00 ")
 ;;1342
 ;;21,"68001-0208-08 ")
 ;;1343
 ;;21,"68001-0209-00 ")
 ;;1550
 ;;21,"68001-0209-08 ")
 ;;1551
 ;;21,"68001-0210-00 ")
 ;;1074
 ;;21,"68001-0210-08 ")
 ;;1075
 ;;21,"68001-0211-00 ")
 ;;1152
 ;;21,"68001-0211-08 ")
 ;;1153
 ;;21,"68001-0212-00 ")
 ;;1413
 ;;21,"68001-0260-05 ")
 ;;1868
 ;;21,"68001-0268-00 ")
 ;;1076
 ;;21,"68001-0268-08 ")
 ;;1077
 ;;21,"68001-0269-00 ")
 ;;1344
 ;;21,"68001-0269-08 ")
 ;;1345
 ;;21,"68001-0270-00 ")
 ;;1414
 ;;21,"68001-0271-00 ")
 ;;1552
 ;;21,"68001-0271-08 ")
 ;;1553
 ;;21,"68084-0058-01 ")
 ;;1154
 ;;21,"68084-0060-01 ")
 ;;1715
 ;;21,"68084-0060-11 ")
 ;;1716
 ;;21,"68084-0061-01 ")
 ;;1078
 ;;21,"68084-0061-11 ")
 ;;1079
 ;;21,"68084-0062-01 ")
 ;;1346
 ;;21,"68084-0062-11 ")
 ;;1347
 ;;21,"68084-0064-01 ")
 ;;1554
 ;;21,"68084-0064-11 ")
 ;;1555
 ;;21,"68084-0196-01 ")
 ;;1717
 ;;21,"68084-0196-11 ")
 ;;1718
 ;;21,"68084-0197-01 ")
 ;;1080
 ;;21,"68084-0198-01 ")
 ;;1348
 ;;21,"68084-0198-11 ")
 ;;1349
 ;;21,"68084-0199-01 ")
 ;;1556
 ;;21,"68084-0266-01 ")
 ;;2015
 ;;21,"68084-0266-11 ")
 ;;2016
 ;;21,"68084-0267-01 ")
 ;;2068
 ;;21,"68084-0267-11 ")
 ;;2069
 ;;21,"68084-0268-01 ")
 ;;1968
 ;;21,"68084-0268-11 ")
 ;;1969
 ;;21,"68084-0294-11 ")
 ;;1918
 ;;21,"68084-0294-21 ")
 ;;1919
 ;;21,"68084-0390-01 ")
 ;;799
 ;;21,"68084-0390-11 ")
 ;;800
 ;;21,"68084-0391-01 ")
 ;;518
 ;;21,"68084-0391-11 ")
 ;;519
 ;;21,"68084-0392-01 ")
 ;;681
 ;;21,"68084-0392-11 ")
 ;;682
 ;;21,"68084-0739-25 ")
 ;;207
 ;;21,"68084-0765-21 ")
 ;;1155
 ;;21,"68115-0127-15 ")
 ;;520
 ;;21,"68115-0128-60 ")
 ;;683
 ;;21,"68115-0128-90 ")
 ;;684
 ;;21,"68115-0217-30 ")
 ;;208
 ;;21,"68115-0362-60 ")
 ;;1350
 ;;21,"68115-0363-30 ")
 ;;1719
 ;;21,"68115-0615-00 ")
 ;;71
 ;;21,"68180-0235-01 ")
 ;;1752
 ;;21,"68180-0236-01 ")
 ;;1759
 ;;21,"68180-0237-01 ")
 ;;1766
 ;;21,"68180-0512-01 ")
 ;;1156
 ;;21,"68180-0512-02 ")
 ;;1157
 ;;21,"68180-0512-09 ")
 ;;1158
 ;;21,"68180-0513-01 ")
 ;;1720
