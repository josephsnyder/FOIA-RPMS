BGP13W5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55887-0192-90 ")
 ;;2036
 ;;21,"55887-0259-30 ")
 ;;1153
 ;;21,"55887-0259-60 ")
 ;;1154
 ;;21,"55887-0259-82 ")
 ;;1155
 ;;21,"55887-0259-90 ")
 ;;1156
 ;;21,"55887-0267-30 ")
 ;;122
 ;;21,"55887-0267-60 ")
 ;;123
 ;;21,"55887-0267-82 ")
 ;;124
 ;;21,"55887-0267-90 ")
 ;;125
 ;;21,"55887-0274-30 ")
 ;;1442
 ;;21,"55887-0274-90 ")
 ;;1443
 ;;21,"55887-0348-30 ")
 ;;1850
 ;;21,"55887-0348-60 ")
 ;;1851
 ;;21,"55887-0348-90 ")
 ;;1852
 ;;21,"55887-0349-30 ")
 ;;1817
 ;;21,"55887-0349-60 ")
 ;;1818
 ;;21,"55887-0349-90 ")
 ;;1819
 ;;21,"55887-0401-30 ")
 ;;2341
 ;;21,"55887-0453-30 ")
 ;;2287
 ;;21,"55887-0453-60 ")
 ;;2288
 ;;21,"55887-0453-82 ")
 ;;2289
 ;;21,"55887-0453-90 ")
 ;;2290
 ;;21,"55887-0474-30 ")
 ;;1651
 ;;21,"55887-0474-60 ")
 ;;1652
 ;;21,"55887-0474-90 ")
 ;;1653
 ;;21,"55887-0474-92 ")
 ;;1654
 ;;21,"55887-0559-30 ")
 ;;2170
 ;;21,"55887-0559-60 ")
 ;;2171
 ;;21,"55887-0559-82 ")
 ;;2172
 ;;21,"55887-0559-90 ")
 ;;2173
 ;;21,"55887-0585-30 ")
 ;;41
 ;;21,"55887-0585-60 ")
 ;;42
 ;;21,"55887-0585-82 ")
 ;;43
 ;;21,"55887-0585-90 ")
 ;;44
 ;;21,"55887-0599-30 ")
 ;;434
 ;;21,"55887-0599-60 ")
 ;;435
 ;;21,"55887-0599-82 ")
 ;;436
 ;;21,"55887-0599-90 ")
 ;;437
 ;;21,"55887-0613-30 ")
 ;;12
 ;;21,"55887-0613-60 ")
 ;;13
 ;;21,"55887-0613-82 ")
 ;;14
 ;;21,"55887-0613-90 ")
 ;;15
 ;;21,"55887-0625-30 ")
 ;;88
 ;;21,"55887-0625-60 ")
 ;;89
 ;;21,"55887-0625-90 ")
 ;;90
 ;;21,"55887-0838-01 ")
 ;;596
 ;;21,"55887-0838-30 ")
 ;;597
 ;;21,"55887-0838-60 ")
 ;;598
 ;;21,"55887-0838-82 ")
 ;;599
 ;;21,"55887-0838-90 ")
 ;;600
 ;;21,"55887-0998-30 ")
 ;;303
 ;;21,"55887-0998-60 ")
 ;;304
 ;;21,"55887-0998-82 ")
 ;;305
 ;;21,"55887-0998-90 ")
 ;;306
 ;;21,"57664-0166-08 ")
 ;;1655
 ;;21,"57664-0166-18 ")
 ;;1656
 ;;21,"57664-0166-52 ")
 ;;1657
 ;;21,"57664-0166-58 ")
 ;;1658
 ;;21,"57664-0167-08 ")
 ;;1444
 ;;21,"57664-0167-18 ")
 ;;1445
 ;;21,"57664-0167-52 ")
 ;;1446
 ;;21,"57664-0167-58 ")
 ;;1447
 ;;21,"57664-0242-13 ")
 ;;972
 ;;21,"57664-0242-18 ")
 ;;973
 ;;21,"57664-0242-88 ")
 ;;974
 ;;21,"57664-0244-13 ")
 ;;1039
 ;;21,"57664-0244-18 ")
 ;;1040
 ;;21,"57664-0244-88 ")
 ;;1041
 ;;21,"57664-0245-13 ")
 ;;824
 ;;21,"57664-0245-18 ")
 ;;825
 ;;21,"57664-0245-88 ")
 ;;826
 ;;21,"57664-0247-13 ")
 ;;899
 ;;21,"57664-0247-18 ")
 ;;900
 ;;21,"57664-0247-88 ")
 ;;901
 ;;21,"57664-0264-18 ")
 ;;438
 ;;21,"57664-0264-88 ")
 ;;439
 ;;21,"57664-0265-18 ")
 ;;601
 ;;21,"57664-0265-88 ")
 ;;602
 ;;21,"57664-0266-18 ")
 ;;307
 ;;21,"57664-0266-88 ")
 ;;308
 ;;21,"57664-0477-08 ")
 ;;1659
 ;;21,"57664-0477-18 ")
 ;;1660
 ;;21,"57664-0477-52 ")
 ;;1661
 ;;21,"57664-0477-58 ")
 ;;1662
 ;;21,"57664-0506-08 ")
 ;;1533
 ;;21,"57664-0506-18 ")
 ;;1534
 ;;21,"57664-0506-52 ")
 ;;1535
 ;;21,"57664-0506-58 ")
 ;;1536
 ;;21,"57866-0219-01 ")
 ;;603
 ;;21,"57866-0251-01 ")
 ;;1663
 ;;21,"57866-2607-02 ")
 ;;1042
 ;;21,"57866-2608-02 ")
 ;;827
 ;;21,"57866-3155-01 ")
 ;;1537
 ;;21,"57866-3330-01 ")
 ;;604
 ;;21,"57866-3330-03 ")
 ;;605
 ;;21,"57866-3330-05 ")
 ;;606
 ;;21,"57866-3331-01 ")
 ;;309
 ;;21,"57866-3331-02 ")
 ;;310
 ;;21,"57866-3331-03 ")
 ;;311
 ;;21,"57866-3332-01 ")
 ;;440
 ;;21,"57866-3332-03 ")
 ;;441
 ;;21,"57866-4309-01 ")
 ;;2094
 ;;21,"57866-4313-01 ")
 ;;2174
 ;;21,"57866-4313-04 ")
 ;;2175
 ;;21,"57866-4314-01 ")
 ;;2255
 ;;21,"57866-4315-01 ")
 ;;2291
 ;;21,"57866-4316-01 ")
 ;;2324
 ;;21,"57866-4655-01 ")
 ;;727
 ;;21,"57866-4655-02 ")
 ;;728
 ;;21,"57866-4911-01 ")
 ;;1981
 ;;21,"57866-4912-01 ")
 ;;2009
 ;;21,"57866-4913-01 ")
 ;;1935
 ;;21,"57866-4914-01 ")
 ;;1958
 ;;21,"57866-6337-01 ")
 ;;1853
 ;;21,"57866-6338-01 ")
 ;;1878
 ;;21,"57866-6339-01 ")
 ;;1820
 ;;21,"57866-6578-01 ")
 ;;1664
 ;;21,"57866-6578-02 ")
 ;;1665
 ;;21,"57866-6578-03 ")
 ;;1666
 ;;21,"57866-6578-05 ")
 ;;1667
 ;;21,"57866-6579-01 ")
 ;;1448
 ;;21,"57866-6579-03 ")
 ;;1449
 ;;21,"57866-6622-01 ")
 ;;1108
 ;;21,"57866-6623-01 ")
 ;;1157
 ;;21,"57866-7067-01 ")
 ;;902
 ;;21,"57866-7067-02 ")
 ;;903
 ;;21,"57866-7068-01 ")
 ;;753
 ;;21,"57866-7068-02 ")
 ;;754
 ;;21,"57866-9803-02 ")
 ;;607
 ;;21,"58016-0001-00 ")
 ;;2292
 ;;21,"58016-0001-30 ")
 ;;2293
 ;;21,"58016-0001-60 ")
 ;;2294
 ;;21,"58016-0001-90 ")
 ;;2295
 ;;21,"58016-0045-00 ")
 ;;1251
 ;;21,"58016-0045-30 ")
 ;;1252
 ;;21,"58016-0045-60 ")
 ;;1253
 ;;21,"58016-0045-90 ")
 ;;1254
 ;;21,"58016-0136-30 ")
 ;;2010
 ;;21,"58016-0286-00 ")
 ;;160
 ;;21,"58016-0286-02 ")
 ;;161
 ;;21,"58016-0286-30 ")
 ;;162
 ;;21,"58016-0286-60 ")
 ;;163
 ;;21,"58016-0286-90 ")
 ;;164
 ;;21,"58016-0300-00 ")
 ;;224
 ;;21,"58016-0300-30 ")
 ;;225
 ;;21,"58016-0300-60 ")
 ;;226
 ;;21,"58016-0300-90 ")
 ;;227
 ;;21,"58016-0331-00 ")
 ;;16
 ;;21,"58016-0331-30 ")
 ;;17
 ;;21,"58016-0331-60 ")
 ;;18
 ;;21,"58016-0331-90 ")
 ;;19
 ;;21,"58016-0333-00 ")
 ;;608
 ;;21,"58016-0333-15 ")
 ;;609
 ;;21,"58016-0333-30 ")
 ;;610
 ;;21,"58016-0333-60 ")
 ;;611
 ;;21,"58016-0373-00 ")
 ;;1343
 ;;21,"58016-0373-02 ")
 ;;1344
 ;;21,"58016-0373-30 ")
 ;;1345
 ;;21,"58016-0373-60 ")
 ;;1346
 ;;21,"58016-0373-90 ")
 ;;1347
 ;;21,"58016-0442-00 ")
 ;;1668
 ;;21,"58016-0442-02 ")
 ;;1669
 ;;21,"58016-0442-30 ")
 ;;1670
 ;;21,"58016-0442-60 ")
 ;;1671
 ;;21,"58016-0442-90 ")
 ;;1672
 ;;21,"58016-0442-99 ")
 ;;1673
 ;;21,"58016-0467-30 ")
 ;;1674
 ;;21,"58016-0526-00 ")
 ;;45
 ;;21,"58016-0526-02 ")
 ;;46
 ;;21,"58016-0526-30 ")
 ;;47
 ;;21,"58016-0526-60 ")
 ;;48
 ;;21,"58016-0526-90 ")
 ;;49
 ;;21,"58016-0528-00 ")
 ;;2095
 ;;21,"58016-0528-30 ")
 ;;2096
 ;;21,"58016-0528-60 ")
 ;;2097
 ;;21,"58016-0529-00 ")
 ;;2176
 ;;21,"58016-0529-10 ")
 ;;2177
 ;;21,"58016-0529-30 ")
 ;;2178
 ;;21,"58016-0529-50 ")
 ;;2179
 ;;21,"58016-0531-00 ")
 ;;2256
 ;;21,"58016-0531-30 ")
 ;;2257
 ;;21,"58016-0532-00 ")
 ;;2325
 ;;21,"58016-0532-02 ")
 ;;2326
 ;;21,"58016-0532-60 ")
 ;;2327
 ;;21,"58016-0582-00 ")
 ;;442
 ;;21,"58016-0582-15 ")
 ;;443
 ;;21,"58016-0582-20 ")
 ;;444
 ;;21,"58016-0582-30 ")
 ;;445
 ;;21,"58016-0582-60 ")
 ;;446
 ;;21,"58016-0604-00 ")
 ;;2011
 ;;21,"58016-0640-00 ")
 ;;1675
 ;;21,"58016-0640-15 ")
 ;;1676
 ;;21,"58016-0640-20 ")
 ;;1677
 ;;21,"58016-0640-30 ")
 ;;1678
 ;;21,"58016-0771-00 ")
 ;;312
 ;;21,"58016-0771-12 ")
 ;;313
 ;;21,"58016-0771-15 ")
 ;;314
 ;;21,"58016-0771-20 ")
 ;;315
 ;;21,"58016-0771-30 ")
 ;;316
 ;;21,"58016-0771-60 ")
 ;;317
 ;;21,"58016-0859-00 ")
 ;;2012
 ;;21,"58016-0859-30 ")
 ;;2013
 ;;21,"58016-0859-60 ")
 ;;2014
 ;;21,"58016-0859-90 ")
 ;;2015
 ;;21,"58016-0974-00 ")
 ;;1289
 ;;21,"58016-0974-30 ")
 ;;1290
 ;;21,"58016-0974-60 ")
 ;;1291
 ;;21,"58016-0974-90 ")
 ;;1292
 ;;21,"58177-0293-04 ")
 ;;1293
 ;;21,"58177-0293-09 ")
 ;;1294
 ;;21,"58177-0293-11 ")
 ;;1295
 ;;21,"58177-0358-04 ")
 ;;1255
 ;;21,"58177-0358-09 ")
 ;;1256
 ;;21,"58177-0368-04 ")
 ;;1217
 ;;21,"58177-0368-09 ")
 ;;1218
 ;;21,"58177-0368-11 ")
 ;;1219
 ;;21,"58177-0369-04 ")
 ;;1348
 ;;21,"58177-0369-09 ")
 ;;1349
 ;;21,"58177-0369-11 ")
 ;;1350
 ;;21,"58864-0016-01 ")
 ;;1679
 ;;21,"58864-0016-28 ")
 ;;1680
 ;;21,"58864-0016-30 ")
 ;;1681
 ;;21,"58864-0016-60 ")
 ;;1682
 ;;21,"58864-0065-01 ")
 ;;612
 ;;21,"58864-0065-30 ")
 ;;613
 ;;21,"58864-0363-30 ")
 ;;2180
 ;;21,"58864-0367-01 ")
 ;;1109
 ;;21,"58864-0368-01 ")
 ;;1158
 ;;21,"58864-0431-60 ")
 ;;2258
 ;;21,"58864-0645-56 ")
 ;;2098
 ;;21,"58864-0680-30 ")
 ;;2296
 ;;21,"58864-0695-30 ")
 ;;1450
 ;;21,"58864-0717-30 ")
 ;;318
 ;;21,"58864-0727-30 ")
 ;;904
 ;;21,"58864-0737-30 ")
 ;;1043
 ;;21,"58864-0749-30 ")
 ;;447
 ;;21,"58864-0749-90 ")
 ;;448
 ;;21,"58864-0759-30 ")
 ;;1220
 ;;21,"58864-0765-30 ")
 ;;1351
 ;;21,"58864-0784-30 ")
 ;;165
 ;;21,"59762-1258-01 ")
 ;;755
 ;;21,"59762-1258-02 ")
 ;;756
 ;;21,"59762-1261-01 ")
 ;;729
 ;;21,"59762-1261-02 ")
 ;;730
 ;;21,"59762-1300-01 ")
 ;;1538
 ;;21,"59762-1300-03 ")
 ;;1539
 ;;21,"59762-1301-01 ")
 ;;1683
 ;;21,"59762-1301-03 ")
 ;;1684
 ;;21,"59762-1302-01 ")
 ;;1451
 ;;21,"59762-1302-03 ")
 ;;1452
 ;;21,"59772-2461-01 ")
 ;;1821
 ;;21,"59772-2462-01 ")
 ;;1854
 ;;21,"59772-2462-03 ")
 ;;1855
 ;;21,"59772-2463-01 ")
 ;;1879
 ;;21,"59772-2463-03 ")
 ;;1880
 ;;21,"59772-2464-01 ")
 ;;1795
 ;;21,"59772-2465-01 ")
 ;;1801
 ;;21,"59911-5842-01 ")
 ;;228
 ;;21,"59911-7060-01 ")
 ;;757
 ;;21,"59911-7061-01 ")
 ;;731
 ;;21,"59930-1602-01 ")
 ;;1110
 ;;21,"59930-1602-02 ")
 ;;1111
 ;;21,"59930-1602-03 ")
 ;;1112
 ;;21,"59930-1636-01 ")
 ;;1159
 ;;21,"59930-1636-04 ")
 ;;1160
 ;;21,"59930-1653-01 ")
 ;;1185
 ;;21,"59930-1653-03 ")
 ;;1186
 ;;21,"60346-0431-60 ")
 ;;2297
 ;;21,"60346-0523-25 ")
 ;;1685
 ;;21,"60346-0523-30 ")
 ;;1686
 ;;21,"60346-0523-60 ")
 ;;1687
 ;;21,"60346-0570-30 ")
 ;;2099
 ;;21,"60346-0570-40 ")
 ;;2100
 ;;21,"60346-0570-90 ")
 ;;2101
 ;;21,"60346-0570-94 ")
 ;;2102
 ;;21,"60346-0587-60 ")
 ;;449
 ;;21,"60346-0598-15 ")
 ;;2181
 ;;21,"60346-0598-25 ")
 ;;2182
 ;;21,"60346-0598-30 ")
 ;;2183
 ;;21,"60346-0598-60 ")
 ;;2184
 ;;21,"60346-0598-90 ")
 ;;2185
 ;;21,"60346-0719-30 ")
 ;;614
 ;;21,"60346-0719-60 ")
 ;;615
 ;;21,"60346-0719-62 ")
 ;;616
 ;;21,"60346-0719-90 ")
 ;;617
 ;;21,"60346-0719-94 ")
 ;;618
 ;;21,"60346-0775-30 ")
 ;;319
 ;;21,"60346-0806-30 ")
 ;;2259
 ;;21,"60346-0806-60 ")
 ;;2260
 ;;21,"60346-0806-90 ")
 ;;2261
 ;;21,"60346-0836-30 ")
 ;;211
 ;;21,"60346-0914-30 ")
 ;;320
 ;;21,"60346-0914-60 ")
 ;;321
 ;;21,"60346-0914-90 ")
 ;;322
 ;;21,"60346-0914-94 ")
 ;;323
 ;;21,"60346-0967-30 ")
 ;;2328
 ;;21,"60346-0967-60 ")
 ;;2329
 ;;21,"60346-0967-90 ")
 ;;2330
 ;;21,"60429-0025-30 ")
 ;;619
 ;;21,"60429-0025-90 ")
 ;;620
 ;;21,"60429-0026-30 ")
 ;;324
 ;;21,"60429-0126-30 ")
 ;;1688
 ;;21,"60429-0126-60 ")
 ;;1689
 ;;21,"60429-0127-30 ")
 ;;1453
 ;;21,"60429-0211-90 ")
 ;;450
 ;;21,"60429-0753-01 ")
 ;;705
 ;;21,"60429-0754-01 ")
 ;;712
 ;;21,"60505-2606-01 ")
 ;;975
 ;;21,"60505-2606-08 ")
 ;;976
 ;;21,"60505-2607-01 ")
 ;;1044
 ;;21,"60505-2607-08 ")
 ;;1045
 ;;21,"60505-2608-01 ")
 ;;828
 ;;21,"60505-2608-08 ")
 ;;829
 ;;21,"60505-2609-01 ")
 ;;905
 ;;21,"60505-2609-08 ")
 ;;906
 ;;21,"60793-0283-01 ")
 ;;193
 ;;21,"60793-0284-01 ")
 ;;200
 ;;21,"60793-0800-01 ")
 ;;1822
 ;;21,"60793-0801-01 ")
 ;;1856
 ;;21,"60793-0802-01 ")
 ;;1881
 ;;21,"60951-0782-70 ")
 ;;2348
 ;;21,"60976-0346-43 ")
 ;;1113
 ;;21,"60976-0346-44 ")
 ;;1114
 ;;21,"60976-0346-47 ")
 ;;1115
 ;;21,"61570-0175-01 ")
 ;;194
 ;;21,"61570-0176-01 ")
 ;;201
 ;;21,"61570-0200-01 ")
 ;;1823
 ;;21,"61570-0201-01 ")
 ;;1857
 ;;21,"61570-0201-10 ")
 ;;1858
 ;;21,"61570-0202-01 ")
 ;;1882
 ;;21,"61570-0202-10 ")
 ;;1883
 ;;21,"61570-0203-01 ")
 ;;1796
 ;;21,"61570-0204-01 ")
 ;;1802
 ;;21,"62037-0830-01 ")
 ;;1296
 ;;21,"62037-0830-10 ")
 ;;1297
 ;;21,"62037-0831-01 ")
 ;;1352
 ;;21,"62037-0831-10 ")
 ;;1353
 ;;21,"62037-0832-01 ")
 ;;1230
 ;;21,"62037-0832-10 ")
 ;;1231
 ;;21,"62037-0833-01 ")
 ;;1261
 ;;21,"62037-0833-10 ")
 ;;1262
 ;;21,"62584-0265-01 ")
 ;;1540
 ;;21,"62584-0265-11 ")
 ;;1541
 ;;21,"62584-0266-01 ")
 ;;1690
 ;;21,"62584-0266-11 ")
 ;;1691
 ;;21,"62584-0267-01 ")
 ;;1454
 ;;21,"62584-0267-11 ")
 ;;1455
 ;;21,"62584-0467-01 ")
 ;;621
 ;;21,"62584-0467-11 ")
 ;;622
 ;;21,"62584-0467-80 ")
 ;;623
 ;;21,"62584-0467-85 ")
 ;;624
 ;;21,"62584-0620-01 ")
 ;;625
 ;;21,"62584-0715-01 ")
 ;;325
 ;;21,"62584-0715-11 ")
 ;;326
 ;;21,"62584-0788-01 ")
 ;;1692
 ;;21,"62584-0788-33 ")
 ;;1693
 ;;21,"62584-0842-01 ")
 ;;2103
 ;;21,"62584-0842-33 ")
 ;;2104
 ;;21,"62584-0842-80 ")
 ;;2105
 ;;21,"62584-0842-85 ")
 ;;2106
 ;;21,"62584-0843-01 ")
 ;;2186
 ;;21,"62584-0843-33 ")
 ;;2187
 ;;21,"62584-0843-80 ")
 ;;2188
 ;;21,"62584-0843-85 ")
 ;;2189
