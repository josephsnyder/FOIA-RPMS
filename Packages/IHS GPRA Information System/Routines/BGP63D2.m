BGP63D2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00378-1052-10 ")
 ;;701
 ;;21,"00378-1053-01 ")
 ;;424
 ;;21,"00378-1053-10 ")
 ;;425
 ;;21,"00378-1054-01 ")
 ;;591
 ;;21,"00378-1054-05 ")
 ;;592
 ;;21,"00378-1117-77 ")
 ;;1882
 ;;21,"00378-2072-01 ")
 ;;1101
 ;;21,"00378-2073-01 ")
 ;;1588
 ;;21,"00378-2073-10 ")
 ;;1589
 ;;21,"00378-2074-01 ")
 ;;922
 ;;21,"00378-2074-10 ")
 ;;923
 ;;21,"00378-2075-01 ")
 ;;1189
 ;;21,"00378-2075-10 ")
 ;;1190
 ;;21,"00378-2076-01 ")
 ;;1439
 ;;21,"00378-2076-05 ")
 ;;1440
 ;;21,"00378-2077-01 ")
 ;;1371
 ;;21,"00378-3007-01 ")
 ;;264
 ;;21,"00378-3007-10 ")
 ;;265
 ;;21,"00378-3012-01 ")
 ;;301
 ;;21,"00378-3012-10 ")
 ;;302
 ;;21,"00378-3017-01 ")
 ;;361
 ;;21,"00378-3017-10 ")
 ;;362
 ;;21,"00378-3022-01 ")
 ;;246
 ;;21,"00378-3241-01 ")
 ;;2082
 ;;21,"00378-3242-01 ")
 ;;2095
 ;;21,"00378-3243-01 ")
 ;;2108
 ;;21,"00440-7231-60 ")
 ;;303
 ;;21,"00440-7232-60 ")
 ;;363
 ;;21,"00440-7674-90 ")
 ;;1590
 ;;21,"00440-7675-90 ")
 ;;924
 ;;21,"00440-7676-90 ")
 ;;1191
 ;;21,"00574-0110-01 ")
 ;;1741
 ;;21,"00574-0112-15 ")
 ;;1730
 ;;21,"00591-0405-01 ")
 ;;1102
 ;;21,"00591-0405-05 ")
 ;;1103
 ;;21,"00591-0406-01 ")
 ;;1591
 ;;21,"00591-0406-10 ")
 ;;1592
 ;;21,"00591-0407-01 ")
 ;;925
 ;;21,"00591-0407-10 ")
 ;;926
 ;;21,"00591-0408-01 ")
 ;;1192
 ;;21,"00591-0408-10 ")
 ;;1193
 ;;21,"00591-0409-01 ")
 ;;1441
 ;;21,"00591-0409-05 ")
 ;;1442
 ;;21,"00591-0409-75 ")
 ;;1443
 ;;21,"00591-0668-01 ")
 ;;534
 ;;21,"00591-0668-05 ")
 ;;535
 ;;21,"00591-0671-01 ")
 ;;593
 ;;21,"00591-0671-05 ")
 ;;594
 ;;21,"00591-0671-10 ")
 ;;595
 ;;21,"00591-0885-01 ")
 ;;1372
 ;;21,"00603-4209-21 ")
 ;;1104
 ;;21,"00603-4209-28 ")
 ;;1105
 ;;21,"00603-4210-02 ")
 ;;1593
 ;;21,"00603-4210-16 ")
 ;;1594
 ;;21,"00603-4210-21 ")
 ;;1595
 ;;21,"00603-4210-28 ")
 ;;1596
 ;;21,"00603-4210-30 ")
 ;;1597
 ;;21,"00603-4210-32 ")
 ;;1598
 ;;21,"00603-4210-60 ")
 ;;1599
 ;;21,"00603-4211-02 ")
 ;;927
 ;;21,"00603-4211-21 ")
 ;;928
 ;;21,"00603-4211-28 ")
 ;;929
 ;;21,"00603-4211-32 ")
 ;;930
 ;;21,"00603-4211-34 ")
 ;;931
 ;;21,"00603-4211-60 ")
 ;;932
 ;;21,"00603-4212-02 ")
 ;;1194
 ;;21,"00603-4212-21 ")
 ;;1195
 ;;21,"00603-4212-28 ")
 ;;1196
 ;;21,"00603-4212-32 ")
 ;;1197
 ;;21,"00603-4212-34 ")
 ;;1198
 ;;21,"00603-4212-60 ")
 ;;1199
 ;;21,"00603-4213-21 ")
 ;;1373
 ;;21,"00603-4213-28 ")
 ;;1374
 ;;21,"00603-4214-02 ")
 ;;1444
 ;;21,"00603-4214-04 ")
 ;;1445
 ;;21,"00603-4214-21 ")
 ;;1446
 ;;21,"00603-4214-28 ")
 ;;1447
 ;;21,"00603-4214-30 ")
 ;;1448
 ;;21,"00603-4214-32 ")
 ;;1449
 ;;21,"00603-4214-60 ")
 ;;1450
 ;;21,"00781-1667-92 ")
 ;;1200
 ;;21,"00781-1668-92 ")
 ;;1451
 ;;21,"00781-1828-01 ")
 ;;266
 ;;21,"00781-1839-01 ")
 ;;247
 ;;21,"00781-1891-01 ")
 ;;219
 ;;21,"00781-1892-01 ")
 ;;15
 ;;21,"00781-1893-01 ")
 ;;83
 ;;21,"00781-1894-01 ")
 ;;157
 ;;21,"00781-5083-10 ")
 ;;807
 ;;21,"00781-5083-92 ")
 ;;808
 ;;21,"00781-5084-10 ")
 ;;839
 ;;21,"00781-5084-92 ")
 ;;840
 ;;21,"00781-5320-01 ")
 ;;2083
 ;;21,"00781-5321-01 ")
 ;;2096
 ;;21,"00781-5322-01 ")
 ;;2109
 ;;21,"00781-5441-01 ")
 ;;536
 ;;21,"00781-5441-10 ")
 ;;537
 ;;21,"00781-5442-01 ")
 ;;702
 ;;21,"00781-5442-10 ")
 ;;703
 ;;21,"00781-5443-01 ")
 ;;426
 ;;21,"00781-5443-10 ")
 ;;427
 ;;21,"00781-5444-01 ")
 ;;596
 ;;21,"00781-5444-10 ")
 ;;597
 ;;21,"00904-5045-61 ")
 ;;267
 ;;21,"00904-5046-61 ")
 ;;304
 ;;21,"00904-5047-61 ")
 ;;364
 ;;21,"00904-5502-61 ")
 ;;704
 ;;21,"00904-5502-80 ")
 ;;705
 ;;21,"00904-5609-61 ")
 ;;538
 ;;21,"00904-5610-61 ")
 ;;428
 ;;21,"00904-5611-61 ")
 ;;598
 ;;21,"00904-5638-43 ")
 ;;1600
 ;;21,"00904-5638-89 ")
 ;;1601
 ;;21,"00904-5639-43 ")
 ;;933
 ;;21,"00904-5639-46 ")
 ;;934
 ;;21,"00904-5639-48 ")
 ;;935
 ;;21,"00904-5639-89 ")
 ;;936
 ;;21,"00904-5640-43 ")
 ;;1201
 ;;21,"00904-5640-46 ")
 ;;1202
 ;;21,"00904-5640-48 ")
 ;;1203
 ;;21,"00904-5640-89 ")
 ;;1204
 ;;21,"00904-5640-93 ")
 ;;1205
 ;;21,"00904-5808-43 ")
 ;;937
 ;;21,"00904-5808-46 ")
 ;;938
 ;;21,"00904-5808-48 ")
 ;;939
 ;;21,"00904-5808-61 ")
 ;;940
 ;;21,"00904-5808-80 ")
 ;;941
 ;;21,"00904-5808-89 ")
 ;;942
 ;;21,"00904-5808-93 ")
 ;;943
 ;;21,"00904-5809-43 ")
 ;;1206
 ;;21,"00904-5809-46 ")
 ;;1207
 ;;21,"00904-5809-48 ")
 ;;1208
 ;;21,"00904-5809-61 ")
 ;;1209
 ;;21,"00904-5809-80 ")
 ;;1210
 ;;21,"00904-5809-89 ")
 ;;1211
 ;;21,"00904-5809-93 ")
 ;;1212
 ;;21,"00904-5810-43 ")
 ;;1452
 ;;21,"00904-5810-46 ")
 ;;1453
 ;;21,"00904-5810-48 ")
 ;;1454
 ;;21,"00904-5810-52 ")
 ;;1455
 ;;21,"00904-5810-61 ")
 ;;1456
 ;;21,"00904-5810-80 ")
 ;;1457
 ;;21,"00904-5810-89 ")
 ;;1458
 ;;21,"00904-5810-93 ")
 ;;1459
 ;;21,"00904-5811-43 ")
 ;;1602
 ;;21,"00904-5811-46 ")
 ;;1603
 ;;21,"00904-5811-61 ")
 ;;1604
 ;;21,"00904-5811-80 ")
 ;;1605
 ;;21,"00904-5811-89 ")
 ;;1606
 ;;21,"00904-5812-89 ")
 ;;1106
 ;;21,"00904-6189-40 ")
 ;;220
 ;;21,"00904-6190-40 ")
 ;;16
 ;;21,"00904-6191-40 ")
 ;;84
 ;;21,"00904-6192-40 ")
 ;;158
 ;;21,"00904-6484-80 ")
 ;;1607
 ;;21,"00904-6485-80 ")
 ;;944
 ;;21,"00904-6487-80 ")
 ;;1460
 ;;21,"10544-0238-60 ")
 ;;945
 ;;21,"10544-0239-60 ")
 ;;1213
 ;;21,"10544-0240-30 ")
 ;;1461
 ;;21,"12280-0033-00 ")
 ;;159
 ;;21,"12280-0129-60 ")
 ;;1375
 ;;21,"12280-0144-00 ")
 ;;1214
 ;;21,"13811-0627-10 ")
 ;;221
 ;;21,"13811-0628-10 ")
 ;;17
 ;;21,"13811-0628-50 ")
 ;;18
 ;;21,"13811-0629-10 ")
 ;;85
 ;;21,"13811-0629-50 ")
 ;;86
 ;;21,"13811-0630-10 ")
 ;;160
 ;;21,"13811-0630-50 ")
 ;;161
 ;;21,"15338-0200-30 ")
 ;;539
 ;;21,"15338-0211-30 ")
 ;;706
 ;;21,"15338-0220-30 ")
 ;;429
 ;;21,"15338-0233-30 ")
 ;;599
 ;;21,"16252-0541-30 ")
 ;;2084
 ;;21,"16252-0542-90 ")
 ;;2097
 ;;21,"16252-0543-90 ")
 ;;2110
 ;;21,"16252-0570-30 ")
 ;;1904
 ;;21,"16252-0571-01 ")
 ;;1984
 ;;21,"16252-0571-50 ")
 ;;1985
 ;;21,"16252-0572-01 ")
 ;;2032
 ;;21,"16252-0572-50 ")
 ;;2033
 ;;21,"16252-0573-01 ")
 ;;1930
 ;;21,"16252-0573-50 ")
 ;;1931
 ;;21,"16252-0610-01 ")
 ;;1742
 ;;21,"16252-0611-01 ")
 ;;1731
 ;;21,"16590-0259-30 ")
 ;;87
 ;;21,"16590-0259-60 ")
 ;;88
 ;;21,"16590-0259-90 ")
 ;;89
 ;;21,"16590-0280-30 ")
 ;;19
 ;;21,"16590-0306-30 ")
 ;;946
 ;;21,"16590-0306-60 ")
 ;;947
 ;;21,"16590-0306-90 ")
 ;;948
 ;;21,"16729-0152-01 ")
 ;;1905
 ;;21,"16729-0153-01 ")
 ;;1986
 ;;21,"16729-0153-16 ")
 ;;1987
 ;;21,"16729-0154-01 ")
 ;;2034
 ;;21,"16729-0154-16 ")
 ;;2035
 ;;21,"16729-0155-01 ")
 ;;1932
 ;;21,"16729-0155-16 ")
 ;;1933
 ;;21,"16729-0194-01 ")
 ;;1107
 ;;21,"16729-0195-01 ")
 ;;1608
 ;;21,"16729-0195-17 ")
 ;;1609
 ;;21,"16729-0196-17 ")
 ;;949
 ;;21,"16729-0197-01 ")
 ;;1215
 ;;21,"16729-0197-17 ")
 ;;1216
 ;;21,"16729-0198-01 ")
 ;;1376
 ;;21,"16729-0199-01 ")
 ;;1462
 ;;21,"16729-0199-17 ")
 ;;1463
 ;;21,"18837-0277-30 ")
 ;;1610
 ;;21,"21695-0326-30 ")
 ;;20
 ;;21,"21695-0326-60 ")
 ;;21
 ;;21,"21695-0326-90 ")
 ;;22
 ;;21,"21695-0327-30 ")
 ;;90
 ;;21,"21695-0327-60 ")
 ;;91
 ;;21,"21695-0327-90 ")
 ;;92
 ;;21,"21695-0328-30 ")
 ;;1611
 ;;21,"21695-0328-90 ")
 ;;1612
 ;;21,"21695-0329-30 ")
 ;;950
 ;;21,"21695-0329-78 ")
 ;;951
 ;;21,"21695-0329-90 ")
 ;;952
 ;;21,"21695-0330-20 ")
 ;;1217
 ;;21,"21695-0330-30 ")
 ;;1218
 ;;21,"21695-0330-90 ")
 ;;1219
 ;;21,"21695-0331-30 ")
 ;;1464
 ;;21,"21695-0331-40 ")
 ;;1465
 ;;21,"21695-0331-90 ")
 ;;1466
 ;;21,"21695-0345-30 ")
 ;;1108
 ;;21,"21695-0345-90 ")
 ;;1109
 ;;21,"21695-0393-30 ")
 ;;1883
 ;;21,"21695-0394-30 ")
 ;;1776
 ;;21,"21695-0477-30 ")
 ;;305
 ;;21,"21695-0477-78 ")
 ;;306
 ;;21,"21695-0478-30 ")
 ;;365
 ;;21,"21695-0487-30 ")
 ;;707
 ;;21,"21695-0488-30 ")
 ;;430
 ;;21,"21695-0488-60 ")
 ;;431
 ;;21,"21695-0489-90 ")
 ;;600
 ;;21,"21695-0612-90 ")
 ;;222
 ;;21,"21695-0821-30 ")
 ;;1988
 ;;21,"21695-0822-30 ")
 ;;2036
 ;;21,"21695-0823-30 ")
 ;;1934
 ;;21,"21695-0877-30 ")
 ;;162
 ;;21,"21695-0877-90 ")
 ;;163
 ;;21,"23490-5118-01 ")
 ;;23
 ;;21,"23490-5119-01 ")
 ;;93
 ;;21,"23490-5120-03 ")
 ;;164
 ;;21,"23490-5120-09 ")
 ;;165
 ;;21,"23490-5121-01 ")
 ;;223
 ;;21,"23490-5191-01 ")
 ;;248
 ;;21,"23490-5192-01 ")
 ;;268
 ;;21,"23490-5193-01 ")
 ;;307
 ;;21,"23490-5193-02 ")
 ;;308
 ;;21,"23490-5193-03 ")
 ;;309
 ;;21,"23490-5194-00 ")
 ;;366
 ;;21,"23490-5194-01 ")
 ;;367
 ;;21,"23490-5194-02 ")
 ;;368
 ;;21,"23490-5491-01 ")
 ;;432
 ;;21,"23490-5491-02 ")
 ;;433
 ;;21,"23490-5491-08 ")
 ;;434
 ;;21,"23490-5491-09 ")
 ;;435
 ;;21,"23490-5492-01 ")
 ;;601
 ;;21,"23490-5492-02 ")
 ;;602
 ;;21,"23490-5494-01 ")
 ;;708
 ;;21,"23490-5494-02 ")
 ;;709
 ;;21,"23490-5815-00 ")
 ;;953
 ;;21,"23490-5815-01 ")
 ;;954
 ;;21,"23490-5816-01 ")
 ;;1220
 ;;21,"23490-5816-02 ")
 ;;1221
 ;;21,"23490-5816-06 ")
 ;;1222
 ;;21,"23490-5817-02 ")
 ;;1110
 ;;21,"23490-5818-02 ")
 ;;1467
 ;;21,"23490-5819-02 ")
 ;;1613
 ;;21,"23490-9364-03 ")
 ;;1843
 ;;21,"24658-0240-10 ")
 ;;1111
 ;;21,"24658-0240-90 ")
 ;;1112
 ;;21,"24658-0241-10 ")
 ;;1614
 ;;21,"24658-0241-30 ")
 ;;1615
 ;;21,"24658-0241-45 ")
 ;;1616
 ;;21,"24658-0241-90 ")
 ;;1617
 ;;21,"24658-0242-10 ")
 ;;955
 ;;21,"24658-0242-15 ")
 ;;956
 ;;21,"24658-0242-18 ")
 ;;957
 ;;21,"24658-0242-30 ")
 ;;958
 ;;21,"24658-0242-45 ")
 ;;959
 ;;21,"24658-0242-90 ")
 ;;960
 ;;21,"24658-0243-10 ")
 ;;1223
 ;;21,"24658-0243-15 ")
 ;;1224
 ;;21,"24658-0243-18 ")
 ;;1225
 ;;21,"24658-0243-30 ")
 ;;1226
 ;;21,"24658-0243-45 ")
 ;;1227
 ;;21,"24658-0243-90 ")
 ;;1228
 ;;21,"24658-0244-01 ")
 ;;1377
 ;;21,"24658-0244-10 ")
 ;;1378
 ;;21,"24658-0245-10 ")
 ;;1468
 ;;21,"24658-0245-15 ")
 ;;1469
 ;;21,"24658-0245-18 ")
 ;;1470
 ;;21,"24658-0245-30 ")
 ;;1471
 ;;21,"24658-0245-45 ")
 ;;1472
 ;;21,"24658-0245-60 ")
 ;;1473
 ;;21,"24658-0245-90 ")
 ;;1474
 ;;21,"30698-0449-01 ")
 ;;94
 ;;21,"30698-0450-01 ")
 ;;166
 ;;21,"31722-0200-10 ")
 ;;809
 ;;21,"31722-0200-90 ")
 ;;810
 ;;21,"31722-0201-10 ")
 ;;841
 ;;21,"31722-0201-90 ")
 ;;842
 ;;21,"31722-0202-10 ")
 ;;870
 ;;21,"31722-0202-90 ")
 ;;871
 ;;21,"31722-0267-90 ")
 ;;1884
 ;;21,"31722-0268-90 ")
 ;;1777
 ;;21,"31722-0269-90 ")
 ;;1811
 ;;21,"31722-0270-90 ")
 ;;1844
 ;;21,"31722-0271-01 ")
 ;;1906
 ;;21,"31722-0272-01 ")
 ;;1989
 ;;21,"31722-0272-05 ")
 ;;1990
 ;;21,"31722-0272-10 ")
 ;;1991
 ;;21,"31722-0273-01 ")
 ;;2037
 ;;21,"31722-0273-05 ")
 ;;2038
 ;;21,"31722-0273-10 ")
 ;;2039
 ;;21,"31722-0274-01 ")
 ;;1935
 ;;21,"31722-0274-05 ")
 ;;1936
 ;;21,"31722-0274-10 ")
 ;;1937
 ;;21,"33358-0048-30 ")
 ;;24
 ;;21,"33358-0049-30 ")
 ;;95
 ;;21,"33358-0127-30 ")
 ;;436
 ;;21,"33358-0211-30 ")
 ;;1618
 ;;21,"33358-0212-30 ")
 ;;961
 ;;21,"33358-0213-30 ")
 ;;1229
 ;;21,"35356-0541-30 ")
 ;;540
 ;;21,"42291-0160-90 ")
 ;;224
 ;;21,"42291-0161-90 ")
 ;;25
 ;;21,"42291-0162-18 ")
 ;;96
 ;;21,"42291-0162-50 ")
 ;;97
 ;;21,"42291-0162-90 ")
 ;;98
 ;;21,"42291-0163-18 ")
 ;;167
 ;;21,"42291-0163-50 ")
 ;;168
 ;;21,"42291-0163-90 ")
 ;;169
