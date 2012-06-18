BGP21F13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"60346-0570-90 ")
 ;;2118
 ;;21,"60346-0570-94 ")
 ;;2119
 ;;21,"60346-0587-60 ")
 ;;382
 ;;21,"60346-0598-15 ")
 ;;2193
 ;;21,"60346-0598-25 ")
 ;;2194
 ;;21,"60346-0598-30 ")
 ;;2195
 ;;21,"60346-0598-60 ")
 ;;2196
 ;;21,"60346-0598-90 ")
 ;;2197
 ;;21,"60346-0719-30 ")
 ;;524
 ;;21,"60346-0719-60 ")
 ;;525
 ;;21,"60346-0719-62 ")
 ;;526
 ;;21,"60346-0719-90 ")
 ;;527
 ;;21,"60346-0719-94 ")
 ;;528
 ;;21,"60346-0775-30 ")
 ;;255
 ;;21,"60346-0806-30 ")
 ;;2291
 ;;21,"60346-0806-60 ")
 ;;2292
 ;;21,"60346-0806-90 ")
 ;;2293
 ;;21,"60346-0836-30 ")
 ;;213
 ;;21,"60346-0914-30 ")
 ;;256
 ;;21,"60346-0914-60 ")
 ;;257
 ;;21,"60346-0914-90 ")
 ;;258
 ;;21,"60346-0914-94 ")
 ;;259
 ;;21,"60346-0967-30 ")
 ;;2389
 ;;21,"60346-0967-60 ")
 ;;2390
 ;;21,"60346-0967-90 ")
 ;;2391
 ;;21,"60429-0025-30 ")
 ;;661
 ;;21,"60429-0025-90 ")
 ;;662
 ;;21,"60429-0026-30 ")
 ;;342
 ;;21,"60429-0126-30 ")
 ;;1780
 ;;21,"60429-0126-60 ")
 ;;1781
 ;;21,"60429-0127-30 ")
 ;;1519
 ;;21,"60429-0211-90 ")
 ;;482
 ;;21,"60429-0753-01 ")
 ;;736
 ;;21,"60429-0754-01 ")
 ;;743
 ;;21,"60505-2606-01 ")
 ;;1014
 ;;21,"60505-2606-08 ")
 ;;1015
 ;;21,"60505-2607-01 ")
 ;;1087
 ;;21,"60505-2607-08 ")
 ;;1088
 ;;21,"60505-2608-01 ")
 ;;866
 ;;21,"60505-2608-08 ")
 ;;867
 ;;21,"60505-2609-01 ")
 ;;944
 ;;21,"60505-2609-08 ")
 ;;945
 ;;21,"60793-0283-01 ")
 ;;205
 ;;21,"60793-0284-01 ")
 ;;212
 ;;21,"60793-0800-01 ")
 ;;1899
 ;;21,"60793-0801-01 ")
 ;;1935
 ;;21,"60793-0802-01 ")
 ;;1959
 ;;21,"60951-0782-70 ")
 ;;2435
 ;;21,"60976-0346-43 ")
 ;;1127
 ;;21,"60976-0346-44 ")
 ;;1128
 ;;21,"60976-0346-47 ")
 ;;1129
 ;;21,"61570-0175-01 ")
 ;;202
 ;;21,"61570-0176-01 ")
 ;;206
 ;;21,"61570-0200-01 ")
 ;;1883
 ;;21,"61570-0201-01 ")
 ;;1910
 ;;21,"61570-0201-10 ")
 ;;1905
 ;;21,"61570-0202-01 ")
 ;;1943
 ;;21,"61570-0202-10 ")
 ;;1941
 ;;21,"61570-0203-01 ")
 ;;1870
 ;;21,"61570-0204-01 ")
 ;;1873
 ;;21,"62037-0830-01 ")
 ;;1349
 ;;21,"62037-0830-10 ")
 ;;1350
 ;;21,"62037-0831-01 ")
 ;;1412
 ;;21,"62037-0831-10 ")
 ;;1413
 ;;21,"62037-0832-01 ")
 ;;1269
 ;;21,"62037-0832-10 ")
 ;;1270
 ;;21,"62037-0833-01 ")
 ;;1307
 ;;21,"62037-0833-10 ")
 ;;1308
 ;;21,"62584-0265-01 ")
 ;;1609
 ;;21,"62584-0265-11 ")
 ;;1610
 ;;21,"62584-0266-01 ")
 ;;1782
 ;;21,"62584-0266-11 ")
 ;;1783
 ;;21,"62584-0267-01 ")
 ;;1520
 ;;21,"62584-0267-11 ")
 ;;1521
 ;;21,"62584-0467-01 ")
 ;;663
 ;;21,"62584-0467-11 ")
 ;;664
 ;;21,"62584-0467-80 ")
 ;;563
 ;;21,"62584-0467-85 ")
 ;;564
 ;;21,"62584-0620-01 ")
 ;;534
 ;;21,"62584-0715-01 ")
 ;;343
 ;;21,"62584-0715-11 ")
 ;;344
 ;;21,"62584-0788-01 ")
 ;;1636
 ;;21,"62584-0788-33 ")
 ;;1637
 ;;21,"62584-0842-01 ")
 ;;2133
 ;;21,"62584-0842-33 ")
 ;;2125
 ;;21,"62584-0842-80 ")
 ;;2140
 ;;21,"62584-0842-85 ")
 ;;2141
 ;;21,"62584-0843-01 ")
 ;;2214
 ;;21,"62584-0843-33 ")
 ;;2203
 ;;21,"62584-0843-80 ")
 ;;2225
 ;;21,"62584-0843-85 ")
 ;;2226
 ;;21,"62584-0844-01 ")
 ;;2305
 ;;21,"62584-0845-01 ")
 ;;2397
 ;;21,"63304-0579-01 ")
 ;;1611
 ;;21,"63304-0579-10 ")
 ;;1612
 ;;21,"63304-0580-01 ")
 ;;1784
 ;;21,"63304-0580-10 ")
 ;;1785
 ;;21,"63304-0581-01 ")
 ;;1522
 ;;21,"63304-0581-10 ")
 ;;1523
 ;;21,"63304-0621-01 ")
 ;;483
 ;;21,"63304-0621-10 ")
 ;;484
 ;;21,"63304-0622-01 ")
 ;;665
 ;;21,"63304-0622-10 ")
 ;;666
 ;;21,"63304-0623-01 ")
 ;;345
 ;;21,"63304-0623-10 ")
 ;;346
 ;;21,"63629-1423-01 ")
 ;;2182
 ;;21,"63629-1423-02 ")
 ;;2183
 ;;21,"63629-1462-01 ")
 ;;1524
 ;;21,"63629-1462-02 ")
 ;;1525
 ;;21,"63629-1462-03 ")
 ;;1526
 ;;21,"63629-1463-01 ")
 ;;1786
 ;;21,"63629-1463-02 ")
 ;;1787
 ;;21,"63629-1463-03 ")
 ;;1788
 ;;21,"63629-1463-04 ")
 ;;1789
 ;;21,"63629-1463-05 ")
 ;;1790
 ;;21,"63629-1674-01 ")
 ;;131
 ;;21,"63629-1740-01 ")
 ;;667
 ;;21,"63629-1740-02 ")
 ;;668
 ;;21,"63629-1740-03 ")
 ;;669
 ;;21,"63629-1785-01 ")
 ;;485
 ;;21,"63629-1785-02 ")
 ;;486
 ;;21,"63629-1785-03 ")
 ;;487
 ;;21,"63629-1842-01 ")
 ;;2059
 ;;21,"63629-2570-01 ")
 ;;2274
 ;;21,"63629-2570-02 ")
 ;;2275
 ;;21,"63629-2570-03 ")
 ;;2276
 ;;21,"63629-2570-04 ")
 ;;2277
 ;;21,"63629-2626-01 ")
 ;;347
 ;;21,"63629-2626-02 ")
 ;;348
 ;;21,"63629-2626-03 ")
 ;;349
 ;;21,"63629-2626-04 ")
 ;;350
 ;;21,"63629-2909-01 ")
 ;;54
 ;;21,"63629-2909-02 ")
 ;;55
 ;;21,"63629-2909-03 ")
 ;;56
 ;;21,"63629-2909-04 ")
 ;;57
 ;;21,"63629-3587-01 ")
 ;;2425
 ;;21,"63629-3587-02 ")
 ;;2426
 ;;21,"63629-3636-01 ")
 ;;1414
 ;;21,"63629-3636-02 ")
 ;;1415
 ;;21,"63629-3668-01 ")
 ;;1089
 ;;21,"63629-3668-02 ")
 ;;1090
 ;;21,"63629-3668-03 ")
 ;;1091
 ;;21,"63629-3669-01 ")
 ;;868
 ;;21,"63629-3669-02 ")
 ;;869
 ;;21,"63629-3669-03 ")
 ;;870
 ;;21,"63629-3738-01 ")
 ;;23
 ;;21,"63629-3871-01 ")
 ;;243
 ;;21,"63629-4060-01 ")
 ;;1016
 ;;21,"63629-4060-02 ")
 ;;1017
 ;;21,"63629-4070-01 ")
 ;;946
 ;;21,"63629-4070-02 ")
 ;;947
