BGP21F14 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63629-4072-01 ")
 ;;174
 ;;21,"63629-4075-01 ")
 ;;92
 ;;21,"63629-4096-01 ")
 ;;1351
 ;;21,"63739-0027-01 ")
 ;;406
 ;;21,"63739-0027-02 ")
 ;;386
 ;;21,"63739-0027-03 ")
 ;;405
 ;;21,"63739-0027-10 ")
 ;;409
 ;;21,"63739-0027-15 ")
 ;;396
 ;;21,"63739-0028-01 ")
 ;;547
 ;;21,"63739-0028-02 ")
 ;;535
 ;;21,"63739-0028-03 ")
 ;;548
 ;;21,"63739-0028-10 ")
 ;;566
 ;;21,"63739-0028-15 ")
 ;;549
 ;;21,"63739-0173-01 ")
 ;;1651
 ;;21,"63739-0173-02 ")
 ;;1640
 ;;21,"63739-0173-03 ")
 ;;1652
 ;;21,"63739-0173-10 ")
 ;;1649
 ;;21,"63739-0173-15 ")
 ;;1650
 ;;21,"63739-0216-01 ")
 ;;2127
 ;;21,"63739-0216-02 ")
 ;;2126
 ;;21,"63739-0216-03 ")
 ;;2128
 ;;21,"63739-0217-01 ")
 ;;2205
 ;;21,"63739-0217-02 ")
 ;;2204
 ;;21,"63739-0217-03 ")
 ;;2206
 ;;21,"63739-0366-10 ")
 ;;1207
 ;;21,"63739-0405-10 ")
 ;;1579
 ;;21,"63739-0428-10 ")
 ;;1668
 ;;21,"63739-0454-10 ")
 ;;1285
 ;;21,"63874-0332-01 ")
 ;;670
 ;;21,"63874-0332-02 ")
 ;;671
 ;;21,"63874-0332-07 ")
 ;;672
 ;;21,"63874-0332-10 ")
 ;;673
 ;;21,"63874-0332-14 ")
 ;;674
 ;;21,"63874-0332-15 ")
 ;;675
 ;;21,"63874-0332-20 ")
 ;;676
 ;;21,"63874-0332-30 ")
 ;;677
 ;;21,"63874-0332-60 ")
 ;;678
 ;;21,"63874-0332-90 ")
 ;;679
 ;;21,"63874-0368-01 ")
 ;;2278
 ;;21,"63874-0368-02 ")
 ;;2279
 ;;21,"63874-0368-15 ")
 ;;2280
 ;;21,"63874-0368-20 ")
 ;;2281
 ;;21,"63874-0368-28 ")
 ;;2282
 ;;21,"63874-0368-30 ")
 ;;2283
 ;;21,"63874-0368-60 ")
 ;;2284
 ;;21,"63874-0388-01 ")
 ;;351
 ;;21,"63874-0388-07 ")
 ;;352
 ;;21,"63874-0388-10 ")
 ;;353
 ;;21,"63874-0388-12 ")
 ;;354
 ;;21,"63874-0388-15 ")
 ;;355
 ;;21,"63874-0388-20 ")
 ;;356
 ;;21,"63874-0388-30 ")
 ;;357
 ;;21,"63874-0406-01 ")
 ;;1791
 ;;21,"63874-0406-10 ")
 ;;1792
 ;;21,"63874-0406-14 ")
 ;;1793
 ;;21,"63874-0406-15 ")
 ;;1794
 ;;21,"63874-0406-20 ")
 ;;1795
 ;;21,"63874-0406-28 ")
 ;;1796
 ;;21,"63874-0406-30 ")
 ;;1797
 ;;21,"63874-0406-60 ")
 ;;1798
 ;;21,"63874-0407-01 ")
 ;;1527
 ;;21,"63874-0407-10 ")
 ;;1528
 ;;21,"63874-0407-15 ")
 ;;1529
 ;;21,"63874-0407-20 ")
 ;;1530
 ;;21,"63874-0407-30 ")
 ;;1531
 ;;21,"63874-0407-60 ")
 ;;1532
 ;;21,"63874-0407-90 ")
 ;;1533
 ;;21,"63874-0454-01 ")
 ;;2184
 ;;21,"63874-0454-02 ")
 ;;2185
 ;;21,"63874-0454-04 ")
 ;;2186
 ;;21,"63874-0454-15 ")
 ;;2187
 ;;21,"63874-0454-20 ")
 ;;2188
 ;;21,"63874-0454-30 ")
 ;;2189
 ;;21,"63874-0454-60 ")
 ;;2190
 ;;21,"63874-0468-01 ")
 ;;488
 ;;21,"63874-0468-10 ")
 ;;489
 ;;21,"63874-0468-14 ")
 ;;490
 ;;21,"63874-0468-15 ")
 ;;491
 ;;21,"63874-0468-20 ")
 ;;492
 ;;21,"63874-0468-30 ")
 ;;493
 ;;21,"63874-0468-60 ")
 ;;494
 ;;21,"63874-0468-90 ")
 ;;495
 ;;21,"63874-0486-01 ")
 ;;2349
 ;;21,"63874-0486-02 ")
 ;;2350
 ;;21,"63874-0486-15 ")
 ;;2351
 ;;21,"63874-0486-30 ")
 ;;2352
 ;;21,"63874-0486-40 ")
 ;;2353
 ;;21,"63874-0486-60 ")
 ;;2354
 ;;21,"64376-0502-01 ")
 ;;1627
 ;;21,"64376-0502-10 ")
 ;;1628
 ;;21,"64376-0503-01 ")
 ;;1436
 ;;21,"64376-0503-10 ")
 ;;1432
 ;;21,"64679-0734-02 ")
 ;;1352
 ;;21,"64679-0734-03 ")
 ;;1353
 ;;21,"64679-0734-08 ")
 ;;1354
 ;;21,"64679-0735-02 ")
 ;;1416
 ;;21,"64679-0735-03 ")
 ;;1417
 ;;21,"64679-0735-08 ")
 ;;1418
 ;;21,"64679-0736-02 ")
 ;;1271
 ;;21,"64679-0736-03 ")
 ;;1272
 ;;21,"64679-0736-08 ")
 ;;1273
 ;;21,"64679-0737-02 ")
 ;;1309
 ;;21,"64679-0737-03 ")
 ;;1310
 ;;21,"64679-0737-08 ")
 ;;1311
 ;;21,"65162-0669-10 ")
 ;;244
 ;;21,"65162-0670-10 ")
 ;;252
 ;;21,"65243-0014-03 ")
 ;;680
 ;;21,"65243-0014-09 ")
 ;;681
 ;;21,"65243-0014-18 ")
 ;;682
 ;;21,"65243-0014-45 ")
 ;;683
 ;;21,"65243-0232-03 ")
 ;;1799
 ;;21,"65243-0232-06 ")
 ;;1800
 ;;21,"65243-0232-09 ")
 ;;1801
 ;;21,"65243-0232-12 ")
 ;;1802
 ;;21,"65243-0232-18 ")
 ;;1803
 ;;21,"65243-0265-03 ")
 ;;1534
 ;;21,"65243-0265-06 ")
 ;;1535
 ;;21,"65243-0265-09 ")
 ;;1536
 ;;21,"65243-0265-18 ")
 ;;1537
 ;;21,"65243-0265-45 ")
 ;;1538
 ;;21,"65243-0308-03 ")
 ;;684
 ;;21,"65243-0308-09 ")
 ;;685
 ;;21,"65243-0308-18 ")
 ;;686
 ;;21,"65243-0329-03 ")
 ;;1804
 ;;21,"65243-0329-09 ")
 ;;1805
 ;;21,"65243-0329-18 ")
 ;;1806
 ;;21,"65243-0347-09 ")
 ;;496
 ;;21,"65243-0379-09 ")
 ;;1539
 ;;21,"65243-0382-09 ")
 ;;1807
 ;;21,"65483-0391-10 ")
 ;;1160
 ;;21,"65483-0391-11 ")
 ;;1135
 ;;21,"65483-0391-50 ")
 ;;1136
 ;;21,"65483-0392-10 ")
 ;;1208
 ;;21,"65483-0392-22 ")
 ;;1183
 ;;21,"65483-0392-50 ")
 ;;1184
 ;;21,"65483-0393-10 ")
 ;;1233
 ;;21,"65483-0393-33 ")
 ;;1222
 ;;21,"65483-0393-50 ")
 ;;1223
 ;;21,"65726-0250-10 ")
 ;;2107
 ;;21,"65726-0250-25 ")
 ;;2108
 ;;21,"65726-0251-10 ")
 ;;2098
 ;;21,"65726-0251-25 ")
 ;;2097
 ;;21,"65862-0062-01 ")
 ;;1613
 ;;21,"65862-0062-99 ")
 ;;1614
 ;;21,"65862-0063-01 ")
 ;;1808
 ;;21,"65862-0063-99 ")
 ;;1809
 ;;21,"65862-0064-01 ")
 ;;1540
 ;;21,"65862-0064-99 ")
 ;;1541
 ;;21,"65862-0086-01 ")
 ;;789
 ;;21,"65862-0086-30 ")
 ;;790
