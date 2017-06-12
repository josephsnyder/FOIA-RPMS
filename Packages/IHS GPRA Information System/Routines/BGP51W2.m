BGP51W2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00781-5045-01 ")
 ;;53
 ;;21,"00781-5046-01 ")
 ;;120
 ;;21,"00781-5047-01 ")
 ;;178
 ;;21,"00781-5050-01 ")
 ;;1217
 ;;21,"00781-5050-05 ")
 ;;1218
 ;;21,"00781-5050-10 ")
 ;;1219
 ;;21,"00781-5050-61 ")
 ;;1220
 ;;21,"00781-5051-01 ")
 ;;1526
 ;;21,"00781-5051-05 ")
 ;;1527
 ;;21,"00781-5051-61 ")
 ;;1528
 ;;21,"00781-5052-01 ")
 ;;1714
 ;;21,"00781-5052-05 ")
 ;;1715
 ;;21,"00781-5052-61 ")
 ;;1716
 ;;21,"00781-5148-01 ")
 ;;2003
 ;;21,"00781-5149-01 ")
 ;;2010
 ;;21,"00781-5150-01 ")
 ;;2026
 ;;21,"00781-5420-10 ")
 ;;2146
 ;;21,"00781-5420-31 ")
 ;;2147
 ;;21,"00781-5420-92 ")
 ;;2148
 ;;21,"00781-5421-10 ")
 ;;2224
 ;;21,"00781-5421-31 ")
 ;;2225
 ;;21,"00781-5421-92 ")
 ;;2226
 ;;21,"00781-5422-10 ")
 ;;2293
 ;;21,"00781-5422-31 ")
 ;;2294
 ;;21,"00781-5422-92 ")
 ;;2295
 ;;21,"00781-5626-60 ")
 ;;2659
 ;;21,"00781-5627-60 ")
 ;;2675
 ;;21,"00781-5634-31 ")
 ;;2640
 ;;21,"00781-5635-31 ")
 ;;2642
 ;;21,"00904-5794-61 ")
 ;;1891
 ;;21,"00904-5795-61 ")
 ;;1958
 ;;21,"00904-5849-14 ")
 ;;1221
 ;;21,"00904-5849-18 ")
 ;;1222
 ;;21,"00904-5849-40 ")
 ;;1223
 ;;21,"00904-5849-52 ")
 ;;1224
 ;;21,"00904-5849-53 ")
 ;;1225
 ;;21,"00904-5849-54 ")
 ;;1226
 ;;21,"00904-5849-80 ")
 ;;1227
 ;;21,"00904-5849-89 ")
 ;;1228
 ;;21,"00904-5849-93 ")
 ;;1229
 ;;21,"00904-5850-40 ")
 ;;1521
 ;;21,"00904-5850-52 ")
 ;;1522
 ;;21,"00904-5850-53 ")
 ;;1523
 ;;21,"00904-5850-89 ")
 ;;1524
 ;;21,"00904-5850-93 ")
 ;;1525
 ;;21,"00904-5851-40 ")
 ;;1717
 ;;21,"00904-5851-52 ")
 ;;1718
 ;;21,"00904-5851-89 ")
 ;;1719
 ;;21,"00904-5851-93 ")
 ;;1720
 ;;21,"00904-6090-61 ")
 ;;1242
 ;;21,"00904-6091-61 ")
 ;;1512
 ;;21,"00904-6092-61 ")
 ;;1732
 ;;21,"00904-6107-40 ")
 ;;1888
 ;;21,"00904-6107-61 ")
 ;;1889
 ;;21,"00904-6108-60 ")
 ;;1959
 ;;21,"00904-6108-61 ")
 ;;1960
 ;;21,"00904-6123-61 ")
 ;;363
 ;;21,"00904-6124-61 ")
 ;;227
 ;;21,"00904-6137-60 ")
 ;;647
 ;;21,"00904-6138-40 ")
 ;;711
 ;;21,"00904-6138-60 ")
 ;;712
 ;;21,"00904-6139-60 ")
 ;;866
 ;;21,"00904-6139-80 ")
 ;;867
 ;;21,"00904-6326-61 ")
 ;;1207
 ;;21,"00904-6327-61 ")
 ;;1534
 ;;21,"00904-6328-61 ")
 ;;1708
 ;;21,"00904-6343-14 ")
 ;;1208
 ;;21,"00904-6343-18 ")
 ;;1209
 ;;21,"00904-6343-40 ")
 ;;1210
 ;;21,"00904-6343-52 ")
 ;;1211
 ;;21,"00904-6343-53 ")
 ;;1212
 ;;21,"00904-6343-54 ")
 ;;1213
 ;;21,"00904-6343-80 ")
 ;;1214
 ;;21,"00904-6343-89 ")
 ;;1215
 ;;21,"00904-6343-93 ")
 ;;1216
 ;;21,"00904-6344-40 ")
 ;;1529
 ;;21,"00904-6344-52 ")
 ;;1530
 ;;21,"00904-6344-53 ")
 ;;1531
 ;;21,"00904-6344-89 ")
 ;;1532
 ;;21,"00904-6344-93 ")
 ;;1533
 ;;21,"00904-6345-40 ")
 ;;1709
 ;;21,"00904-6345-52 ")
 ;;1710
 ;;21,"00904-6345-89 ")
 ;;1711
 ;;21,"00904-6345-93 ")
 ;;1712
 ;;21,"10544-0058-30 ")
 ;;1713
 ;;21,"10544-0192-30 ")
 ;;362
 ;;21,"10544-0248-90 ")
 ;;1890
 ;;21,"10544-0253-30 ")
 ;;1733
 ;;21,"10544-0254-30 ")
 ;;1248
 ;;21,"10544-0255-30 ")
 ;;1511
 ;;21,"10631-0206-01 ")
 ;;1796
 ;;21,"10631-0206-02 ")
 ;;1797
 ;;21,"13411-0101-01 ")
 ;;2077
 ;;21,"13411-0101-03 ")
 ;;2078
 ;;21,"13411-0101-06 ")
 ;;2079
 ;;21,"13411-0101-09 ")
 ;;2080
 ;;21,"13411-0101-15 ")
 ;;2081
 ;;21,"13411-0102-01 ")
 ;;2159
 ;;21,"13411-0102-03 ")
 ;;2160
 ;;21,"13411-0102-06 ")
 ;;2161
 ;;21,"13411-0102-09 ")
 ;;2162
 ;;21,"13411-0102-15 ")
 ;;2163
 ;;21,"13411-0103-01 ")
 ;;2237
 ;;21,"13411-0103-03 ")
 ;;2238
 ;;21,"13411-0103-06 ")
 ;;2239
 ;;21,"13411-0103-09 ")
 ;;2240
 ;;21,"13411-0103-15 ")
 ;;2241
 ;;21,"13411-0163-02 ")
 ;;1249
 ;;21,"13411-0163-03 ")
 ;;1250
 ;;21,"13411-0163-06 ")
 ;;1251
 ;;21,"13411-0163-09 ")
 ;;1252
 ;;21,"13411-0163-10 ")
 ;;1253
 ;;21,"13411-0164-02 ")
 ;;1506
 ;;21,"13411-0164-03 ")
 ;;1507
 ;;21,"13411-0164-06 ")
 ;;1508
 ;;21,"13411-0164-09 ")
 ;;1509
 ;;21,"13411-0164-10 ")
 ;;1510
 ;;21,"13668-0119-05 ")
 ;;2212
 ;;21,"13668-0119-30 ")
 ;;2213
 ;;21,"13668-0119-90 ")
 ;;2214
 ;;21,"13668-0120-05 ")
 ;;2281
 ;;21,"13668-0120-30 ")
 ;;2282
 ;;21,"13668-0120-90 ")
 ;;2283
 ;;21,"13668-0140-05 ")
 ;;2134
 ;;21,"13668-0140-30 ")
 ;;2135
 ;;21,"13668-0140-90 ")
 ;;2136
 ;;21,"13668-0280-33 ")
 ;;2660
 ;;21,"13668-0280-60 ")
 ;;2661
 ;;21,"13668-0281-33 ")
 ;;2673
 ;;21,"13668-0281-60 ")
 ;;2674
 ;;21,"13913-0002-13 ")
 ;;1973
 ;;21,"13913-0003-16 ")
 ;;1976
 ;;21,"14565-0202-10 ")
 ;;1895
 ;;21,"14565-0202-50 ")
 ;;1896
 ;;21,"16590-0286-30 ")
 ;;215
 ;;21,"16590-0286-60 ")
 ;;216
 ;;21,"16590-0286-90 ")
 ;;217
 ;;21,"16590-0287-30 ")
 ;;359
 ;;21,"16590-0287-60 ")
 ;;360
 ;;21,"16590-0287-90 ")
 ;;361
 ;;21,"16590-0313-30 ")
 ;;1243
 ;;21,"16590-0313-60 ")
 ;;1244
 ;;21,"16590-0313-72 ")
 ;;1245
 ;;21,"16590-0313-82 ")
 ;;1246
 ;;21,"16590-0313-90 ")
 ;;1247
 ;;21,"16590-0397-30 ")
 ;;1734
 ;;21,"16590-0397-60 ")
 ;;1735
 ;;21,"16590-0397-90 ")
 ;;1736
 ;;21,"16590-0940-60 ")
 ;;898
 ;;21,"16729-0001-01 ")
 ;;54
 ;;21,"16729-0002-01 ")
 ;;114
 ;;21,"16729-0003-01 ")
 ;;186
 ;;21,"16729-0020-10 ")
 ;;2137
 ;;21,"16729-0020-15 ")
 ;;2138
 ;;21,"16729-0020-16 ")
 ;;2139
 ;;21,"16729-0021-10 ")
 ;;2215
 ;;21,"16729-0021-15 ")
 ;;2216
 ;;21,"16729-0021-16 ")
 ;;2217
 ;;21,"16729-0022-10 ")
 ;;2284
 ;;21,"16729-0022-15 ")
 ;;2285
 ;;21,"16729-0022-16 ")
 ;;2286
 ;;21,"16729-0139-00 ")
 ;;206
 ;;21,"16729-0139-16 ")
 ;;207
 ;;21,"16729-0140-00 ")
 ;;372
 ;;21,"16729-0140-16 ")
 ;;373
 ;;21,"20091-0531-01 ")
 ;;1233
 ;;21,"20091-0531-05 ")
 ;;1234
 ;;21,"20091-0531-10 ")
 ;;1235
 ;;21,"20091-0533-01 ")
 ;;1515
 ;;21,"20091-0533-05 ")
 ;;1516
 ;;21,"20091-0533-10 ")
 ;;1517
 ;;21,"20091-0535-01 ")
 ;;1724
 ;;21,"20091-0535-05 ")
 ;;1725
 ;;21,"20091-0535-10 ")
 ;;1726
 ;;21,"21695-0147-15 ")
 ;;2082
 ;;21,"21695-0148-15 ")
 ;;2164
 ;;21,"21695-0467-30 ")
 ;;701
 ;;21,"21695-0467-60 ")
 ;;702
 ;;21,"21695-0468-30 ")
 ;;894
 ;;21,"21695-0468-60 ")
 ;;895
 ;;21,"21695-0468-72 ")
 ;;896
 ;;21,"21695-0468-78 ")
 ;;897
 ;;21,"21695-0469-30 ")
 ;;208
 ;;21,"21695-0469-60 ")
 ;;209
 ;;21,"21695-0469-78 ")
 ;;210
 ;;21,"21695-0469-90 ")
 ;;211
 ;;21,"21695-0470-00 ")
 ;;367
 ;;21,"21695-0470-30 ")
 ;;368
 ;;21,"21695-0470-60 ")
 ;;369
 ;;21,"21695-0470-78 ")
 ;;370
 ;;21,"21695-0470-90 ")
 ;;371
 ;;21,"21695-0471-00 ")
 ;;1236
 ;;21,"21695-0471-30 ")
 ;;1237
 ;;21,"21695-0471-60 ")
 ;;1238
 ;;21,"21695-0471-72 ")
 ;;1239
 ;;21,"21695-0471-78 ")
 ;;1240
 ;;21,"21695-0471-90 ")
 ;;1241
 ;;21,"21695-0472-30 ")
 ;;1513
 ;;21,"21695-0472-60 ")
 ;;1514
 ;;21,"21695-0473-00 ")
 ;;1727
 ;;21,"21695-0473-30 ")
 ;;1728
 ;;21,"21695-0473-60 ")
 ;;1729
 ;;21,"21695-0473-78 ")
 ;;1730
 ;;21,"21695-0473-90 ")
 ;;1731
 ;;21,"21695-0568-30 ")
 ;;2628
 ;;21,"21695-0568-60 ")
 ;;2629
 ;;21,"21695-0746-30 ")
 ;;112
 ;;21,"21695-0746-90 ")
 ;;113
 ;;21,"21695-0747-30 ")
 ;;187
 ;;21,"21695-0747-60 ")
 ;;188
 ;;21,"21695-0747-90 ")
 ;;189
 ;;21,"21695-0828-30 ")
 ;;1892
 ;;21,"21695-0828-60 ")
 ;;1893
 ;;21,"21695-0828-90 ")
 ;;1894
 ;;21,"21695-0894-00 ")
 ;;2463
 ;;21,"21695-0967-30 ")
 ;;501
 ;;21,"21695-0993-72 ")
 ;;55
 ;;21,"23155-0056-01 ")
 ;;648
 ;;21,"23155-0057-01 ")
 ;;700
 ;;21,"23155-0058-01 ")
 ;;899
 ;;21,"23155-0058-10 ")
 ;;900
 ;;21,"23155-0102-01 ")
 ;;1230
 ;;21,"23155-0102-05 ")
 ;;1231
 ;;21,"23155-0102-10 ")
 ;;1232
 ;;21,"23155-0103-01 ")
 ;;1518
 ;;21,"23155-0103-05 ")
 ;;1519
 ;;21,"23155-0103-10 ")
 ;;1520
 ;;21,"23155-0104-01 ")
 ;;1721
 ;;21,"23155-0104-05 ")
 ;;1722
 ;;21,"23155-0104-10 ")
 ;;1723
 ;;21,"23155-0115-01 ")
 ;;2426
 ;;21,"23155-0116-01 ")
 ;;2444
 ;;21,"23155-0117-01 ")
 ;;2462
 ;;21,"23155-0233-01 ")
 ;;2490
 ;;21,"23155-0233-05 ")
 ;;2491
 ;;21,"23155-0234-01 ")
 ;;2541
 ;;21,"23155-0234-05 ")
 ;;2542
 ;;21,"23155-0235-01 ")
 ;;2626
 ;;21,"23155-0235-05 ")
 ;;2627
 ;;21,"23490-0104-03 ")
 ;;2076
 ;;21,"23490-0105-03 ")
 ;;2158
 ;;21,"23490-0106-03 ")
 ;;2236
 ;;21,"23490-0112-03 ")
 ;;2070
 ;;21,"23490-5632-01 ")
 ;;364
 ;;21,"23490-5632-02 ")
 ;;365
 ;;21,"23490-5632-03 ")
 ;;366
 ;;21,"23490-5633-01 ")
 ;;557
 ;;21,"23490-5634-03 ")
 ;;212
 ;;21,"23490-5634-06 ")
 ;;213
 ;;21,"23490-5634-09 ")
 ;;214
 ;;21,"23490-5635-03 ")
 ;;530
 ;;21,"23490-5636-03 ")
 ;;502
 ;;21,"23490-5636-06 ")
 ;;503
 ;;21,"23490-5636-09 ")
 ;;504
 ;;21,"23490-5638-01 ")
 ;;708
 ;;21,"23490-5638-02 ")
 ;;709
 ;;21,"23490-5638-04 ")
 ;;710
 ;;21,"23490-5639-01 ")
 ;;885
 ;;21,"23490-5639-02 ")
 ;;886
 ;;21,"23490-5640-03 ")
 ;;183
 ;;21,"23490-5640-06 ")
 ;;184
 ;;21,"23490-5640-07 ")
 ;;185
 ;;21,"23490-5641-06 ")
 ;;115
 ;;21,"23490-5641-07 ")
 ;;116
 ;;21,"23490-6838-01 ")
 ;;1259
 ;;21,"23490-6838-02 ")
 ;;1260
 ;;21,"23490-6838-03 ")
 ;;1261
 ;;21,"23490-6838-04 ")
 ;;1262
 ;;21,"23490-6838-09 ")
 ;;1263
 ;;21,"23490-6839-01 ")
 ;;1497
 ;;21,"23490-6839-02 ")
 ;;1498
 ;;21,"23490-7260-01 ")
 ;;1742
 ;;21,"23490-7260-02 ")
 ;;1743
 ;;21,"23490-7260-03 ")
 ;;1744
 ;;21,"23490-7260-04 ")
 ;;1745
 ;;21,"23490-7448-03 ")
 ;;2546
 ;;21,"23490-7448-06 ")
 ;;2547
 ;;21,"23490-7449-01 ")
 ;;2619
 ;;21,"23490-7449-06 ")
 ;;2620
 ;;21,"23490-7449-09 ")
 ;;2621
 ;;21,"23490-7458-03 ")
 ;;1900
 ;;21,"23490-7458-06 ")
 ;;1901
 ;;21,"23490-7458-07 ")
 ;;1902
 ;;21,"23490-7458-12 ")
 ;;1903
 ;;21,"23490-7458-16 ")
 ;;1904
 ;;21,"24658-0290-05 ")
 ;;1268
 ;;21,"24658-0290-12 ")
 ;;1269
 ;;21,"24658-0290-18 ")
 ;;1270
 ;;21,"24658-0290-27 ")
 ;;1271
 ;;21,"24658-0290-36 ")
 ;;1272
 ;;21,"24658-0290-46 ")
 ;;1273
 ;;21,"24658-0290-60 ")
 ;;1274
 ;;21,"24658-0290-90 ")
 ;;1275
 ;;21,"24658-0292-05 ")
 ;;1746
 ;;21,"24658-0292-18 ")
 ;;1747
 ;;21,"24658-0292-60 ")
 ;;1748
 ;;21,"24658-0292-90 ")
 ;;1749
 ;;21,"29033-0018-01 ")
 ;;1897
 ;;21,"29033-0018-05 ")
 ;;1898
 ;;21,"29033-0018-10 ")
 ;;1899
 ;;21,"29033-0021-01 ")
 ;;1957
 ;;21,"33261-0145-02 ")
 ;;1750
 ;;21,"33261-0145-30 ")
 ;;1751
 ;;21,"33261-0145-60 ")
 ;;1752
 ;;21,"33261-0145-90 ")
 ;;1753
 ;;21,"33261-0157-02 ")
 ;;1264
 ;;21,"33261-0157-30 ")
 ;;1265
 ;;21,"33261-0157-60 ")
 ;;1266
 ;;21,"33261-0157-90 ")
 ;;1267
 ;;21,"33261-0209-30 ")
 ;;891
 ;;21,"33261-0209-60 ")
 ;;892
 ;;21,"33261-0209-90 ")
 ;;893
 ;;21,"33261-0372-30 ")
 ;;1906
 ;;21,"33261-0372-60 ")
 ;;1907
 ;;21,"33261-0372-90 ")
 ;;1908
 ;;21,"33261-0397-00 ")
 ;;218
 ;;21,"33261-0397-30 ")
 ;;219
 ;;21,"33261-0397-60 ")
 ;;220
 ;;21,"33261-0397-90 ")
 ;;221
 ;;21,"33261-0411-00 ")
 ;;2622
 ;;21,"33261-0411-30 ")
 ;;2623
 ;;21,"33261-0411-60 ")
 ;;2624
 ;;21,"33261-0411-90 ")
 ;;2625
 ;;21,"33261-0433-00 ")
 ;;355
 ;;21,"33261-0433-30 ")
 ;;356
 ;;21,"33261-0433-60 ")
 ;;357
 ;;21,"33261-0433-90 ")
 ;;358
 ;;21,"33261-0540-00 ")
 ;;1499
 ;;21,"33261-0540-30 ")
 ;;1500
 ;;21,"33261-0540-60 ")
 ;;1501
 ;;21,"33261-0540-90 ")
 ;;1502
 ;;21,"33261-0821-30 ")
 ;;2543
 ;;21,"33261-0821-60 ")
 ;;2544
 ;;21,"33261-0821-90 ")
 ;;2545
 ;;21,"33261-0831-30 ")
 ;;117
 ;;21,"33261-0831-60 ")
 ;;118
 ;;21,"33261-0831-90 ")
 ;;119
 ;;21,"33261-0892-00 ")
 ;;179
 ;;21,"33261-0892-30 ")
 ;;180
 ;;21,"33261-0892-60 ")
 ;;181
 ;;21,"33261-0892-90 ")
 ;;182
 ;;21,"33342-0054-07 ")
 ;;2140
 ;;21,"33342-0054-10 ")
 ;;2141
 ;;21,"33342-0054-15 ")
 ;;2142
 ;;21,"33342-0055-07 ")
 ;;2218
 ;;21,"33342-0055-10 ")
 ;;2219
 ;;21,"33342-0055-15 ")
 ;;2220
 ;;21,"33342-0056-07 ")
 ;;2287
 ;;21,"33342-0056-10 ")
 ;;2288
 ;;21,"33342-0056-15 ")
 ;;2289
 ;;21,"33358-0157-30 ")
 ;;348
 ;;21,"33358-0157-60 ")
 ;;349
 ;;21,"33358-0158-00 ")
 ;;222
 ;;21,"33358-0158-30 ")
 ;;223
 ;;21,"33358-0158-60 ")
 ;;224
 ;;21,"33358-0160-30 ")
 ;;706
 ;;21,"33358-0160-60 ")
 ;;707
 ;;21,"33358-0161-01 ")
 ;;887
 ;;21,"33358-0161-30 ")
 ;;888
 ;;21,"33358-0161-60 ")
 ;;889
 ;;21,"33358-0161-90 ")
 ;;890
 ;;21,"33358-0234-00 ")
 ;;1256
 ;;21,"33358-0234-30 ")
 ;;1257
 ;;21,"33358-0234-60 ")
 ;;1258
 ;;21,"33358-0235-60 ")
 ;;1909
 ;;21,"33358-0236-30 ")
 ;;1504
 ;;21,"33358-0236-60 ")
 ;;1505
 ;;21,"33358-0237-30 ")
 ;;1737
 ;;21,"33358-0237-60 ")
 ;;1738
 ;;21,"35356-0099-60 ")
 ;;347
 ;;21,"35356-0103-30 ")
 ;;2071
 ;;21,"35356-0121-90 ")
 ;;556
 ;;21,"35356-0130-60 ")
 ;;2663
 ;;21,"35356-0136-60 ")
 ;;2381
 ;;21,"35356-0269-28 ")
 ;;1905
 ;;21,"35356-0271-60 ")
 ;;2304
 ;;21,"35356-0303-01 ")
 ;;1999
 ;;21,"35356-0304-01 ")
 ;;2008
 ;;21,"35356-0305-01 ")
 ;;2023
 ;;21,"35356-0360-30 ")
 ;;703
 ;;21,"35356-0360-60 ")
 ;;704
 ;;21,"35356-0360-90 ")
 ;;705
 ;;21,"35356-0691-60 ")
 ;;1254
 ;;21,"35356-0792-30 ")
 ;;1255
 ;;21,"35356-0875-30 ")
 ;;350
 ;;21,"35356-0875-60 ")
 ;;351
 ;;21,"35356-0886-30 ")
 ;;1739
 ;;21,"35356-0886-60 ")
 ;;1740
 ;;21,"35356-0886-90 ")
 ;;1741
