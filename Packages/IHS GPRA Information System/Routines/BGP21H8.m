BGP21H8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54569-3665-00 ")
 ;;1188
 ;;21,"54569-3665-01 ")
 ;;1189
 ;;21,"54569-3667-00 ")
 ;;1246
 ;;21,"54569-3667-01 ")
 ;;1247
 ;;21,"54569-3667-02 ")
 ;;1210
 ;;21,"54569-3691-00 ")
 ;;2091
 ;;21,"54569-3718-00 ")
 ;;1380
 ;;21,"54569-3718-03 ")
 ;;1382
 ;;21,"54569-3719-00 ")
 ;;1298
 ;;21,"54569-3784-00 ")
 ;;677
 ;;21,"54569-3785-00 ")
 ;;686
 ;;21,"54569-3785-02 ")
 ;;687
 ;;21,"54569-3786-00 ")
 ;;668
 ;;21,"54569-3786-01 ")
 ;;670
 ;;21,"54569-3802-00 ")
 ;;2052
 ;;21,"54569-3803-00 ")
 ;;849
 ;;21,"54569-3804-00 ")
 ;;898
 ;;21,"54569-3866-00 ")
 ;;656
 ;;21,"54569-3866-01 ")
 ;;574
 ;;21,"54569-3866-02 ")
 ;;657
 ;;21,"54569-3891-00 ")
 ;;1502
 ;;21,"54569-3891-01 ")
 ;;1503
 ;;21,"54569-3892-00 ")
 ;;1555
 ;;21,"54569-3893-00 ")
 ;;1575
 ;;21,"54569-4183-00 ")
 ;;1335
 ;;21,"54569-4211-00 ")
 ;;734
 ;;21,"54569-4447-00 ")
 ;;2053
 ;;21,"54569-4447-01 ")
 ;;2054
 ;;21,"54569-4447-04 ")
 ;;2026
 ;;21,"54569-4455-00 ")
 ;;804
 ;;21,"54569-4472-00 ")
 ;;324
 ;;21,"54569-4472-01 ")
 ;;406
 ;;21,"54569-4498-00 ")
 ;;2151
 ;;21,"54569-4499-00 ")
 ;;2154
 ;;21,"54569-4622-00 ")
 ;;1724
 ;;21,"54569-4623-00 ")
 ;;1741
 ;;21,"54569-4696-00 ")
 ;;77
 ;;21,"54569-4696-01 ")
 ;;95
 ;;21,"54569-4715-00 ")
 ;;1020
 ;;21,"54569-4716-00 ")
 ;;1044
 ;;21,"54569-4717-00 ")
 ;;1066
 ;;21,"54569-4913-00 ")
 ;;817
 ;;21,"54569-4914-00 ")
 ;;865
 ;;21,"54569-4924-00 ")
 ;;930
 ;;21,"54569-4991-00 ")
 ;;1719
 ;;21,"54569-4992-00 ")
 ;;1752
 ;;21,"54569-5155-00 ")
 ;;1600
 ;;21,"54569-5156-00 ")
 ;;1647
 ;;21,"54569-5157-00 ")
 ;;1683
 ;;21,"54569-5232-00 ")
 ;;112
 ;;21,"54569-5232-01 ")
 ;;135
 ;;21,"54569-5282-00 ")
 ;;60
 ;;21,"54569-5370-00 ")
 ;;449
 ;;21,"54569-5431-00 ")
 ;;803
 ;;21,"54569-5704-00 ")
 ;;238
 ;;21,"54569-5878-00 ")
 ;;19
 ;;21,"54569-5881-00 ")
 ;;216
 ;;21,"54569-5901-00 ")
 ;;575
 ;;21,"54569-5901-01 ")
 ;;576
 ;;21,"54569-5902-00 ")
 ;;325
 ;;21,"54569-5902-01 ")
 ;;326
 ;;21,"54569-5937-00 ")
 ;;78
 ;;21,"54569-5938-00 ")
 ;;113
 ;;21,"54569-5951-00 ")
 ;;220
 ;;21,"54569-6099-00 ")
 ;;225
 ;;21,"54569-6117-00 ")
 ;;1280
 ;;21,"54738-0904-01 ")
 ;;1334
 ;;21,"54738-0904-03 ")
 ;;1319
 ;;21,"54738-0904-90 ")
 ;;1320
 ;;21,"54738-0905-01 ")
 ;;1378
 ;;21,"54738-0905-03 ")
 ;;1345
 ;;21,"54738-0905-90 ")
 ;;1346
 ;;21,"54738-0906-01 ")
 ;;1312
 ;;21,"54738-0906-03 ")
 ;;1281
 ;;21,"54738-0906-90 ")
 ;;1282
 ;;21,"54868-0120-00 ")
 ;;1903
 ;;21,"54868-0120-01 ")
 ;;1904
 ;;21,"54868-0120-02 ")
 ;;1890
 ;;21,"54868-0120-03 ")
 ;;1905
 ;;21,"54868-0120-04 ")
 ;;1891
 ;;21,"54868-0121-00 ")
 ;;1808
 ;;21,"54868-0121-01 ")
 ;;1824
 ;;21,"54868-0121-02 ")
 ;;1825
 ;;21,"54868-0121-05 ")
 ;;1826
 ;;21,"54868-0121-06 ")
 ;;1827
 ;;21,"54868-0671-00 ")
 ;;1211
 ;;21,"54868-0823-00 ")
 ;;1321
 ;;21,"54868-0826-00 ")
 ;;1283
 ;;21,"54868-0826-01 ")
 ;;1284
 ;;21,"54868-0826-02 ")
 ;;1285
 ;;21,"54868-0933-00 ")
 ;;1828
 ;;21,"54868-1005-00 ")
 ;;667
 ;;21,"54868-1006-02 ")
 ;;1601
 ;;21,"54868-1006-03 ")
 ;;1602
 ;;21,"54868-1008-00 ")
 ;;1648
 ;;21,"54868-1008-01 ")
 ;;1649
 ;;21,"54868-1008-02 ")
 ;;1650
 ;;21,"54868-1207-00 ")
 ;;243
 ;;21,"54868-1207-01 ")
 ;;244
 ;;21,"54868-1283-00 ")
 ;;2092
 ;;21,"54868-1283-01 ")
 ;;2093
 ;;21,"54868-1443-03 ")
 ;;1684
 ;;21,"54868-1550-03 ")
 ;;2027
 ;;21,"54868-2147-02 ")
 ;;1975
 ;;21,"54868-2148-03 ")
 ;;818
 ;;21,"54868-2149-00 ")
 ;;866
 ;;21,"54868-2149-02 ")
 ;;867
 ;;21,"54868-2150-01 ")
 ;;911
 ;;21,"54868-2167-00 ")
 ;;1364
 ;;21,"54868-2167-02 ")
 ;;1365
 ;;21,"54868-2168-02 ")
 ;;1299
 ;;21,"54868-2168-03 ")
 ;;1300
 ;;21,"54868-2200-00 ")
 ;;1788
 ;;21,"54868-2200-02 ")
 ;;1789
 ;;21,"54868-2207-00 ")
 ;;2094
 ;;21,"54868-2207-01 ")
 ;;2057
 ;;21,"54868-2207-02 ")
 ;;2095
 ;;21,"54868-2207-03 ")
 ;;2096
 ;;21,"54868-2207-04 ")
 ;;2097
 ;;21,"54868-2207-05 ")
 ;;2098
 ;;21,"54868-2207-06 ")
 ;;2099
 ;;21,"54868-2207-07 ")
 ;;2058
 ;;21,"54868-2211-00 ")
 ;;1759
 ;;21,"54868-2276-01 ")
 ;;1190
 ;;21,"54868-2276-02 ")
 ;;1212
 ;;21,"54868-2277-00 ")
 ;;1256
 ;;21,"54868-2290-00 ")
 ;;1141
 ;;21,"54868-2290-01 ")
 ;;1128
 ;;21,"54868-2290-02 ")
 ;;1142
 ;;21,"54868-2290-03 ")
 ;;1143
 ;;21,"54868-2290-04 ")
 ;;1144
 ;;21,"54868-2322-01 ")
 ;;727
 ;;21,"54868-2322-02 ")
 ;;728
 ;;21,"54868-2322-03 ")
 ;;729
 ;;21,"54868-2469-00 ")
 ;;1386
 ;;21,"54868-2469-01 ")
 ;;1387
 ;;21,"54868-2868-00 ")
 ;;1465
 ;;21,"54868-2868-01 ")
 ;;1466
 ;;21,"54868-2868-02 ")
 ;;1467
 ;;21,"54868-2868-05 ")
 ;;1468
 ;;21,"54868-2869-00 ")
 ;;1525
 ;;21,"54868-2869-01 ")
 ;;1526
 ;;21,"54868-2869-03 ")
 ;;1527
 ;;21,"54868-2870-00 ")
 ;;1563
 ;;21,"54868-2873-00 ")
 ;;577
 ;;21,"54868-2873-01 ")
 ;;578
 ;;21,"54868-2873-03 ")
 ;;579
 ;;21,"54868-2873-04 ")
 ;;580
 ;;21,"54868-2873-05 ")
 ;;581
 ;;21,"54868-2885-00 ")
 ;;1880