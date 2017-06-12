BGP50F11 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 05, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"66685-0703-02 ")
 ;;1419
 ;;21,"66685-0704-01 ")
 ;;1559
 ;;21,"66685-0704-02 ")
 ;;1560
 ;;21,"66685-0704-03 ")
 ;;1561
 ;;21,"66685-0705-01 ")
 ;;1772
 ;;21,"66685-0705-02 ")
 ;;1773
 ;;21,"66685-0706-01 ")
 ;;1906
 ;;21,"66685-0706-03 ")
 ;;1907
 ;;21,"66685-0706-04 ")
 ;;1908
 ;;21,"67544-0062-30 ")
 ;;1021
 ;;21,"67544-0062-60 ")
 ;;1022
 ;;21,"67544-0062-82 ")
 ;;1023
 ;;21,"67544-0128-15 ")
 ;;1212
 ;;21,"67544-0128-30 ")
 ;;1213
 ;;21,"67544-0128-45 ")
 ;;1214
 ;;21,"67544-0128-53 ")
 ;;1215
 ;;21,"67544-0128-60 ")
 ;;1216
 ;;21,"67544-0134-15 ")
 ;;1566
 ;;21,"67544-0134-30 ")
 ;;1567
 ;;21,"67544-0134-45 ")
 ;;1568
 ;;21,"67544-0134-60 ")
 ;;1569
 ;;21,"67544-0134-80 ")
 ;;1570
 ;;21,"67544-0148-15 ")
 ;;1910
 ;;21,"67544-0148-30 ")
 ;;1911
 ;;21,"67544-0148-45 ")
 ;;1912
 ;;21,"67544-0148-53 ")
 ;;1913
 ;;21,"67544-0148-60 ")
 ;;1914
 ;;21,"67544-0148-80 ")
 ;;1915
 ;;21,"67544-0150-45 ")
 ;;286
 ;;21,"67544-0150-60 ")
 ;;287
 ;;21,"67544-0150-73 ")
 ;;288
 ;;21,"67544-0150-92 ")
 ;;289
 ;;21,"67544-0159-15 ")
 ;;1413
 ;;21,"67544-0159-30 ")
 ;;1414
 ;;21,"67544-0159-45 ")
 ;;1415
 ;;21,"67544-0159-58 ")
 ;;1416
 ;;21,"67544-0159-60 ")
 ;;1417
 ;;21,"67544-0159-80 ")
 ;;1418
 ;;21,"67544-0160-60 ")
 ;;648
 ;;21,"67544-0160-80 ")
 ;;649
 ;;21,"67544-0165-60 ")
 ;;542
 ;;21,"67544-0165-80 ")
 ;;543
 ;;21,"67544-0166-80 ")
 ;;506
 ;;21,"67544-0173-30 ")
 ;;1217
 ;;21,"67544-0173-45 ")
 ;;1218
 ;;21,"67544-0173-53 ")
 ;;1219
 ;;21,"67544-0173-60 ")
 ;;1220
 ;;21,"67544-0174-30 ")
 ;;1571
 ;;21,"67544-0174-45 ")
 ;;1572
 ;;21,"67544-0174-60 ")
 ;;1573
 ;;21,"67544-0174-80 ")
 ;;1574
 ;;21,"67544-0175-80 ")
 ;;539
 ;;21,"67544-0177-45 ")
 ;;2383
 ;;21,"67544-0192-30 ")
 ;;1251
 ;;21,"67544-0192-45 ")
 ;;1252
 ;;21,"67544-0192-53 ")
 ;;1253
 ;;21,"67544-0192-60 ")
 ;;1254
 ;;21,"67544-0212-45 ")
 ;;2369
 ;;21,"67544-0212-53 ")
 ;;2370
 ;;21,"67544-0216-80 ")
 ;;650
 ;;21,"67544-0218-60 ")
 ;;1019
 ;;21,"67544-0218-82 ")
 ;;1020
 ;;21,"67544-0219-15 ")
 ;;1409
 ;;21,"67544-0219-30 ")
 ;;1410
 ;;21,"67544-0219-45 ")
 ;;1411
 ;;21,"67544-0219-60 ")
 ;;1412
 ;;21,"67544-0234-45 ")
 ;;2651
 ;;21,"67544-0234-53 ")
 ;;2652
 ;;21,"67544-0250-60 ")
 ;;3576
 ;;21,"67544-0250-80 ")
 ;;3577
 ;;21,"67544-0276-60 ")
 ;;3578
 ;;21,"67544-0276-80 ")
 ;;3579
 ;;21,"67544-0286-80 ")
 ;;651
 ;;21,"67544-0300-15 ")
 ;;981
 ;;21,"67544-0300-30 ")
 ;;982
 ;;21,"67544-0300-45 ")
 ;;983
 ;;21,"67544-0306-30 ")
 ;;984
 ;;21,"67544-0306-40 ")
 ;;985
 ;;21,"67544-0306-45 ")
 ;;986
 ;;21,"67544-0306-60 ")
 ;;987
 ;;21,"67544-0311-30 ")
 ;;988
 ;;21,"67544-0311-45 ")
 ;;989
 ;;21,"67544-0315-80 ")
 ;;654
 ;;21,"67544-0321-15 ")
 ;;865
 ;;21,"67544-0321-30 ")
 ;;866
 ;;21,"67544-0321-60 ")
 ;;867
 ;;21,"67544-0322-15 ")
 ;;930
 ;;21,"67544-0322-30 ")
 ;;931
 ;;21,"67544-0322-45 ")
 ;;932
 ;;21,"67544-0322-53 ")
 ;;933
 ;;21,"67544-0322-60 ")
 ;;934
 ;;21,"67544-0322-70 ")
 ;;935
 ;;21,"67544-0322-73 ")
 ;;936
 ;;21,"67544-0322-80 ")
 ;;937
 ;;21,"67544-0322-92 ")
 ;;938
 ;;21,"67544-0322-94 ")
 ;;939
 ;;21,"67544-0350-80 ")
 ;;507
 ;;21,"67544-0377-60 ")
 ;;3586
 ;;21,"67544-0380-30 ")
 ;;868
 ;;21,"67544-0380-60 ")
 ;;869
 ;;21,"67544-0381-15 ")
 ;;910
 ;;21,"67544-0381-30 ")
 ;;911
 ;;21,"67544-0381-45 ")
 ;;912
 ;;21,"67544-0381-53 ")
 ;;913
 ;;21,"67544-0381-60 ")
 ;;914
 ;;21,"67544-0381-70 ")
 ;;915
 ;;21,"67544-0381-73 ")
 ;;916
 ;;21,"67544-0381-80 ")
 ;;917
 ;;21,"67544-0381-92 ")
 ;;918
 ;;21,"67544-0381-94 ")
 ;;919
 ;;21,"67544-0382-30 ")
 ;;2565
 ;;21,"67544-0400-45 ")
 ;;2515
 ;;21,"67544-0403-30 ")
 ;;2944
 ;;21,"67544-0404-30 ")
 ;;2970
 ;;21,"67544-0418-30 ")
 ;;3581
 ;;21,"67544-0418-60 ")
 ;;3582
 ;;21,"67544-0418-80 ")
 ;;3583
 ;;21,"67544-0431-15 ")
 ;;920
 ;;21,"67544-0431-30 ")
 ;;921
 ;;21,"67544-0431-45 ")
 ;;922
 ;;21,"67544-0431-53 ")
 ;;923
 ;;21,"67544-0431-60 ")
 ;;924
 ;;21,"67544-0431-70 ")
 ;;925
 ;;21,"67544-0431-73 ")
 ;;926
 ;;21,"67544-0431-80 ")
 ;;927
 ;;21,"67544-0431-92 ")
 ;;928
 ;;21,"67544-0431-94 ")
 ;;929
 ;;21,"67544-0454-15 ")
 ;;972
 ;;21,"67544-0454-30 ")
 ;;973
 ;;21,"67544-0454-40 ")
 ;;974
 ;;21,"67544-0454-45 ")
 ;;975
 ;;21,"67544-0454-60 ")
 ;;976
 ;;21,"67544-0489-15 ")
 ;;870
 ;;21,"67544-0489-30 ")
 ;;871
 ;;21,"67544-0489-60 ")
 ;;872
 ;;21,"67544-0678-60 ")
 ;;1399
 ;;21,"67544-0992-30 ")
 ;;1581
 ;;21,"67544-0997-30 ")
 ;;1926
 ;;21,"67544-0999-60 ")
 ;;1582
 ;;21,"67544-0999-80 ")
 ;;1583
 ;;21,"67544-1010-30 ")
 ;;3459
 ;;21,"67544-1010-60 ")
 ;;3460
 ;;21,"67544-1038-30 ")
 ;;977
 ;;21,"67544-1038-45 ")
 ;;978
 ;;21,"67544-1042-45 ")
 ;;979
 ;;21,"67544-1042-60 ")
 ;;980
 ;;21,"67544-1054-30 ")
 ;;3580
 ;;21,"67544-1057-30 ")
 ;;3645
 ;;21,"67544-1082-45 ")
 ;;909
 ;;21,"67544-1105-30 ")
 ;;873
 ;;21,"67544-1105-45 ")
 ;;874
 ;;21,"67544-1348-45 ")
 ;;1397
 ;;21,"67544-1348-60 ")
 ;;1398
 ;;21,"67544-1350-45 ")
 ;;1924
 ;;21,"67544-1350-60 ")
 ;;1925
 ;;21,"67544-1372-45 ")
 ;;1208
 ;;21,"67544-1386-30 ")
 ;;3584
 ;;21,"67544-1386-60 ")
 ;;3585
 ;;21,"67544-1387-45 ")
 ;;1584
 ;;21,"68001-0130-00 ")
 ;;3216
 ;;21,"68001-0131-00 ")
 ;;3245
 ;;21,"68001-0132-00 ")
 ;;3029
 ;;21,"68001-0133-00 ")
 ;;3064
 ;;21,"68001-0134-00 ")
 ;;3126
 ;;21,"68001-0135-00 ")
 ;;3153
 ;;21,"68001-0140-04 ")
 ;;2136
 ;;21,"68001-0141-00 ")
 ;;2288
 ;;21,"68001-0141-03 ")
 ;;2289
 ;;21,"68001-0142-00 ")
 ;;2168
 ;;21,"68001-0142-03 ")
 ;;2169
 ;;21,"68001-0143-00 ")
 ;;2240
 ;;21,"68001-0143-03 ")
 ;;2241
 ;;21,"68001-0186-05 ")
 ;;2109
 ;;21,"68001-0187-05 ")
 ;;2081
 ;;21,"68001-0188-05 ")
 ;;2048
 ;;21,"68001-0189-05 ")
 ;;2017
 ;;21,"68001-0207-00 ")
 ;;1202
 ;;21,"68001-0207-08 ")
 ;;1203
 ;;21,"68001-0208-00 ")
 ;;1575
 ;;21,"68001-0208-08 ")
 ;;1576
 ;;21,"68001-0209-00 ")
 ;;1918
 ;;21,"68001-0209-08 ")
 ;;1919
 ;;21,"68001-0210-00 ")
 ;;1404
 ;;21,"68001-0210-08 ")
 ;;1405
 ;;21,"68001-0211-00 ")
 ;;1026
 ;;21,"68001-0211-08 ")
 ;;1027
 ;;21,"68001-0212-00 ")
 ;;1771
 ;;21,"68071-0026-30 ")
 ;;219
 ;;21,"68071-0026-60 ")
 ;;220
 ;;21,"68071-0026-90 ")
 ;;221
 ;;21,"68071-0146-30 ")
 ;;125
 ;;21,"68071-0146-60 ")
 ;;126
 ;;21,"68071-0146-90 ")
 ;;127
 ;;21,"68071-0146-91 ")
 ;;128
 ;;21,"68071-0153-30 ")
 ;;3648
 ;;21,"68071-0153-60 ")
 ;;3649
 ;;21,"68071-0153-90 ")
 ;;3650
 ;;21,"68071-0785-30 ")
 ;;4230
 ;;21,"68071-0785-60 ")
 ;;4231
 ;;21,"68071-0786-30 ")
 ;;4184
 ;;21,"68071-0786-60 ")
 ;;4185
 ;;21,"68071-0787-60 ")
 ;;3910
 ;;21,"68071-0857-30 ")
 ;;2603
 ;;21,"68071-0884-30 ")
 ;;2658
 ;;21,"68071-1517-09 ")
 ;;2659
 ;;21,"68084-0007-11 ")
 ;;2476
 ;;21,"68084-0007-21 ")
 ;;2477
 ;;21,"68084-0060-01 ")
 ;;1204
 ;;21,"68084-0060-11 ")
 ;;1205
 ;;21,"68084-0061-01 ")
 ;;1402
 ;;21,"68084-0061-11 ")
 ;;1403
 ;;21,"68084-0062-01 ")
 ;;1577
 ;;21,"68084-0062-11 ")
 ;;1578
 ;;21,"68084-0064-01 ")
 ;;1922
 ;;21,"68084-0064-11 ")
 ;;1923
 ;;21,"68084-0196-01 ")
 ;;1206
 ;;21,"68084-0196-11 ")
 ;;1207
 ;;21,"68084-0197-01 ")
 ;;1400
 ;;21,"68084-0197-11 ")
 ;;1401
 ;;21,"68084-0198-01 ")
 ;;1579
 ;;21,"68084-0198-11 ")
 ;;1580
 ;;21,"68084-0199-01 ")
 ;;1920
 ;;21,"68084-0199-11 ")
 ;;1921
 ;;21,"68084-0266-01 ")
 ;;2166
 ;;21,"68084-0266-11 ")
 ;;2167
 ;;21,"68084-0267-01 ")
 ;;2242
 ;;21,"68084-0267-11 ")
 ;;2243
 ;;21,"68084-0268-01 ")
 ;;2286
 ;;21,"68084-0268-11 ")
 ;;2287
 ;;21,"68084-0294-11 ")
 ;;2134
 ;;21,"68084-0294-21 ")
 ;;2135
 ;;21,"68084-0346-01 ")
 ;;2604
 ;;21,"68084-0346-11 ")
 ;;2605
 ;;21,"68084-0347-01 ")
 ;;2656
 ;;21,"68084-0347-11 ")
 ;;2657
 ;;21,"68084-0348-01 ")
 ;;2792
 ;;21,"68084-0348-11 ")
 ;;2793
 ;;21,"68084-0349-11 ")
 ;;3065
 ;;21,"68084-0349-21 ")
 ;;3066
 ;;21,"68084-0350-01 ")
 ;;3151
 ;;21,"68084-0350-11 ")
 ;;3152
 ;;21,"68084-0351-11 ")
 ;;3217
 ;;21,"68084-0351-21 ")
 ;;3218
 ;;21,"68084-0390-01 ")
 ;;540
 ;;21,"68084-0390-11 ")
 ;;541
 ;;21,"68084-0391-01 ")
 ;;652
 ;;21,"68084-0391-11 ")
 ;;653
 ;;21,"68084-0392-01 ")
 ;;749
 ;;21,"68084-0392-11 ")
 ;;750
 ;;21,"68084-0518-11 ")
 ;;3461
 ;;21,"68084-0518-21 ")
 ;;3462
 ;;21,"68084-0519-11 ")
 ;;3646
 ;;21,"68084-0519-21 ")
 ;;3647
 ;;21,"68084-0644-11 ")
 ;;2480
 ;;21,"68084-0644-21 ")
 ;;2481
 ;;21,"68084-0726-32 ")
 ;;3212
 ;;21,"68084-0726-33 ")
 ;;3213
 ;;21,"68084-0727-11 ")
 ;;3570
 ;;21,"68084-0727-21 ")
 ;;3571
 ;;21,"68084-0739-25 ")
 ;;227
 ;;21,"68084-0739-95 ")
 ;;228
 ;;21,"68084-0749-11 ")
 ;;4088
 ;;21,"68084-0749-21 ")
 ;;4089
 ;;21,"68084-0765-11 ")
 ;;1035
 ;;21,"68084-0765-21 ")
 ;;1036
 ;;21,"68084-0766-11 ")
 ;;3467
 ;;21,"68084-0766-21 ")
 ;;3468
 ;;21,"68180-0101-02 ")
 ;;4338
 ;;21,"68180-0101-09 ")
 ;;4339
 ;;21,"68180-0102-02 ")
 ;;4369
 ;;21,"68180-0102-09 ")
 ;;4370
 ;;21,"68180-0103-02 ")
 ;;4187
 ;;21,"68180-0103-09 ")
 ;;4188
 ;;21,"68180-0104-02 ")
 ;;4246
 ;;21,"68180-0104-09 ")
 ;;4247
 ;;21,"68180-0105-02 ")
 ;;4299
 ;;21,"68180-0105-09 ")
 ;;4300
 ;;21,"68180-0196-06 ")
 ;;3783
 ;;21,"68180-0197-06 ")
 ;;3785
 ;;21,"68180-0198-06 ")
 ;;3789
 ;;21,"68180-0199-06 ")
 ;;3791
 ;;21,"68180-0210-03 ")
 ;;2610
 ;;21,"68180-0210-09 ")
 ;;2611
 ;;21,"68180-0211-03 ")
 ;;2663
 ;;21,"68180-0211-09 ")
 ;;2664
 ;;21,"68180-0212-03 ")
 ;;2784
 ;;21,"68180-0212-09 ")
 ;;2785
 ;;21,"68180-0215-03 ")
 ;;3952
 ;;21,"68180-0215-06 ")
 ;;3953
 ;;21,"68180-0215-09 ")
 ;;3954
 ;;21,"68180-0216-03 ")
 ;;4011
 ;;21,"68180-0216-06 ")
 ;;4012
 ;;21,"68180-0216-09 ")
 ;;4013
 ;;21,"68180-0217-03 ")
 ;;4085
 ;;21,"68180-0217-06 ")
 ;;4086
 ;;21,"68180-0217-09 ")
 ;;4087
 ;;21,"68180-0235-01 ")
 ;;1987
 ;;21,"68180-0236-01 ")
 ;;1993
 ;;21,"68180-0237-01 ")
 ;;1998
 ;;21,"68180-0410-06 ")
 ;;2415
 ;;21,"68180-0410-09 ")
 ;;2416
 ;;21,"68180-0411-06 ")
 ;;2478
 ;;21,"68180-0411-09 ")
 ;;2479
 ;;21,"68180-0412-06 ")
 ;;2537
 ;;21,"68180-0412-09 ")
 ;;2538
 ;;21,"68180-0413-06 ")
 ;;3848
 ;;21,"68180-0413-09 ")
 ;;3849
 ;;21,"68180-0414-06 ")
 ;;3881
 ;;21,"68180-0414-09 ")
 ;;3882
 ;;21,"68180-0512-01 ")
 ;;1037
 ;;21,"68180-0512-02 ")
 ;;1038
 ;;21,"68180-0512-09 ")
 ;;1039
 ;;21,"68180-0513-01 ")
 ;;1180
 ;;21,"68180-0513-03 ")
 ;;1181
 ;;21,"68180-0513-09 ")
 ;;1182
 ;;21,"68180-0514-01 ")
 ;;1442
 ;;21,"68180-0514-03 ")
 ;;1443
 ;;21,"68180-0514-09 ")
 ;;1444
 ;;21,"68180-0515-01 ")
 ;;1585
 ;;21,"68180-0515-03 ")
 ;;1586
 ;;21,"68180-0515-09 ")
 ;;1587
 ;;21,"68180-0516-01 ")
 ;;1768
 ;;21,"68180-0516-02 ")
 ;;1769
 ;;21,"68180-0516-09 ")
 ;;1770
 ;;21,"68180-0517-01 ")
 ;;1927
 ;;21,"68180-0517-03 ")
 ;;1928
 ;;21,"68180-0517-09 ")
 ;;1929
 ;;21,"68180-0518-01 ")
 ;;3469
 ;;21,"68180-0518-02 ")
 ;;3470
 ;;21,"68180-0519-01 ")
 ;;3568
 ;;21,"68180-0519-02 ")
 ;;3569
 ;;21,"68180-0520-01 ")
 ;;3653
 ;;21,"68180-0520-02 ")
 ;;3654
 ;;21,"68180-0556-09 ")
 ;;2018
 ;;21,"68180-0557-09 ")
 ;;2049
 ;;21,"68180-0558-09 ")
 ;;2078
 ;;21,"68180-0559-09 ")
 ;;2112
 ;;21,"68180-0566-01 ")
 ;;2312
 ;;21,"68180-0567-01 ")
 ;;2330
 ;;21,"68180-0568-01 ")
 ;;2350
 ;;21,"68180-0588-01 ")
 ;;2133
 ;;21,"68180-0589-01 ")
 ;;2170
 ;;21,"68180-0589-02 ")
 ;;2171
 ;;21,"68180-0589-09 ")
 ;;2172
 ;;21,"68180-0590-01 ")
 ;;2237
 ;;21,"68180-0590-02 ")
 ;;2238
 ;;21,"68180-0590-09 ")
 ;;2239
 ;;21,"68180-0591-01 ")
 ;;2290
 ;;21,"68180-0591-02 ")
 ;;2291
 ;;21,"68180-0591-09 ")
 ;;2292
 ;;21,"68180-0755-01 ")
 ;;3032
 ;;21,"68180-0756-01 ")
 ;;3059
 ;;21,"68180-0756-02 ")
 ;;3060
 ;;21,"68180-0757-01 ")
 ;;3129
 ;;21,"68180-0757-02 ")
 ;;3130
 ;;21,"68180-0758-01 ")
 ;;3210
 ;;21,"68180-0758-02 ")
 ;;3211
 ;;21,"68180-0759-01 ")
 ;;3157
 ;;21,"68180-0760-01 ")
 ;;3248
 ;;21,"68258-4001-03 ")
 ;;2859
 ;;21,"68258-6003-03 ")
 ;;1178
 ;;21,"68258-6003-09 ")
 ;;1179
 ;;21,"68258-6021-03 ")
 ;;2173
 ;;21,"68258-6022-03 ")
 ;;2235
 ;;21,"68258-6022-09 ")
 ;;2236
 ;;21,"68258-6023-03 ")
 ;;2293
 ;;21,"68258-6023-09 ")
 ;;2294
 ;;21,"68258-6025-03 ")
 ;;3207
 ;;21,"68258-6025-06 ")
 ;;3208
 ;;21,"68258-6025-09 ")
 ;;3209
 ;;21,"68258-6027-03 ")
 ;;2079
 ;;21,"68258-6027-09 ")
 ;;2080
 ;;21,"68258-6028-03 ")
 ;;2110
 ;;21,"68258-6028-09 ")
 ;;2111
 ;;21,"68258-6030-03 ")
 ;;2786
 ;;21,"68258-6030-09 ")
 ;;2787
 ;;21,"68258-6031-03 ")
 ;;4014
 ;;21,"68258-6031-09 ")
 ;;4015
 ;;21,"68258-6036-03 ")
 ;;1040
 ;;21,"68258-6036-09 ")
 ;;1041
 ;;21,"68258-6040-03 ")
 ;;4083
 ;;21,"68258-6040-09 ")
 ;;4084
 ;;21,"68258-6048-03 ")
 ;;3950
 ;;21,"68258-6048-09 ")
 ;;3951
 ;;21,"68258-6053-03 ")
 ;;4285
 ;;21,"68258-6056-03 ")
 ;;4186
 ;;21,"68258-6058-03 ")
 ;;3808
 ;;21,"68258-6059-03 ")
 ;;3332
