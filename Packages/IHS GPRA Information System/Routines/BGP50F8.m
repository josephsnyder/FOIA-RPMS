BGP50F8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 05, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55289-0591-30 ")
 ;;706
 ;;21,"55289-0591-90 ")
 ;;707
 ;;21,"55289-0622-03 ")
 ;;619
 ;;21,"55289-0622-30 ")
 ;;620
 ;;21,"55289-0638-01 ")
 ;;1295
 ;;21,"55289-0638-12 ")
 ;;1296
 ;;21,"55289-0638-14 ")
 ;;1297
 ;;21,"55289-0638-30 ")
 ;;1298
 ;;21,"55289-0638-60 ")
 ;;1299
 ;;21,"55289-0638-90 ")
 ;;1300
 ;;21,"55289-0638-98 ")
 ;;1301
 ;;21,"55289-0694-10 ")
 ;;602
 ;;21,"55289-0694-30 ")
 ;;603
 ;;21,"55289-0694-90 ")
 ;;604
 ;;21,"55289-0696-14 ")
 ;;1503
 ;;21,"55289-0696-30 ")
 ;;1504
 ;;21,"55289-0696-60 ")
 ;;1505
 ;;21,"55289-0696-90 ")
 ;;1506
 ;;21,"55289-0696-98 ")
 ;;1507
 ;;21,"55289-0815-30 ")
 ;;4168
 ;;21,"55289-0817-30 ")
 ;;2980
 ;;21,"55289-0820-30 ")
 ;;4293
 ;;21,"55289-0825-30 ")
 ;;2933
 ;;21,"55289-0838-30 ")
 ;;4239
 ;;21,"55289-0867-30 ")
 ;;2252
 ;;21,"55289-0876-30 ")
 ;;2995
 ;;21,"55289-0878-30 ")
 ;;3611
 ;;21,"55289-0884-30 ")
 ;;1102
 ;;21,"55289-0884-90 ")
 ;;1103
 ;;21,"55289-0917-30 ")
 ;;1803
 ;;21,"55289-0917-90 ")
 ;;1804
 ;;21,"55289-0929-08 ")
 ;;1481
 ;;21,"55289-0929-30 ")
 ;;1482
 ;;21,"55289-0963-30 ")
 ;;23
 ;;21,"55289-0981-30 ")
 ;;3227
 ;;21,"55289-0984-30 ")
 ;;804
 ;;21,"55700-0011-30 ")
 ;;3224
 ;;21,"55700-0011-60 ")
 ;;3225
 ;;21,"55700-0011-90 ")
 ;;3226
 ;;21,"55700-0012-30 ")
 ;;3251
 ;;21,"55700-0012-60 ")
 ;;3252
 ;;21,"55700-0012-90 ")
 ;;3253
 ;;21,"55700-0014-30 ")
 ;;4362
 ;;21,"55700-0014-60 ")
 ;;4363
 ;;21,"55700-0023-30 ")
 ;;4332
 ;;21,"55700-0023-60 ")
 ;;4333
 ;;21,"55700-0032-30 ")
 ;;491
 ;;21,"55700-0037-30 ")
 ;;1520
 ;;21,"55700-0037-60 ")
 ;;1521
 ;;21,"55700-0037-90 ")
 ;;1522
 ;;21,"55700-0059-90 ")
 ;;3931
 ;;21,"55700-0077-90 ")
 ;;3982
 ;;21,"57237-0026-01 ")
 ;;3393
 ;;21,"57237-0026-30 ")
 ;;3394
 ;;21,"57237-0027-01 ")
 ;;3406
 ;;21,"57237-0027-30 ")
 ;;3407
 ;;21,"57237-0052-00 ")
 ;;1000
 ;;21,"57237-0052-05 ")
 ;;1001
 ;;21,"57237-0053-00 ")
 ;;1100
 ;;21,"57237-0053-99 ")
 ;;1101
 ;;21,"57237-0054-00 ")
 ;;1293
 ;;21,"57237-0054-99 ")
 ;;1294
 ;;21,"57237-0055-00 ")
 ;;1508
 ;;21,"57237-0055-99 ")
 ;;1509
 ;;21,"57237-0056-00 ")
 ;;1731
 ;;21,"57237-0057-00 ")
 ;;1801
 ;;21,"57237-0057-99 ")
 ;;1802
 ;;21,"58016-0053-00 ")
 ;;2876
 ;;21,"58016-0053-30 ")
 ;;2877
 ;;21,"58016-0053-60 ")
 ;;2878
 ;;21,"58016-0053-90 ")
 ;;2879
 ;;21,"58016-0065-00 ")
 ;;3312
 ;;21,"58016-0065-30 ")
 ;;3313
 ;;21,"58016-0065-60 ")
 ;;3314
 ;;21,"58016-0065-90 ")
 ;;3315
 ;;21,"58016-0066-00 ")
 ;;2867
 ;;21,"58016-0066-30 ")
 ;;2868
 ;;21,"58016-0066-60 ")
 ;;2869
 ;;21,"58016-0066-90 ")
 ;;2870
 ;;21,"58016-0069-00 ")
 ;;1732
 ;;21,"58016-0069-30 ")
 ;;1733
 ;;21,"58016-0069-60 ")
 ;;1734
 ;;21,"58016-0069-90 ")
 ;;1735
 ;;21,"58016-0228-00 ")
 ;;3512
 ;;21,"58016-0228-02 ")
 ;;3513
 ;;21,"58016-0228-30 ")
 ;;3514
 ;;21,"58016-0228-60 ")
 ;;3515
 ;;21,"58016-0228-90 ")
 ;;3516
 ;;21,"58016-0362-14 ")
 ;;1280
 ;;21,"58016-0362-21 ")
 ;;1281
 ;;21,"58016-0362-28 ")
 ;;1282
 ;;21,"58016-0363-00 ")
 ;;1714
 ;;21,"58016-0363-14 ")
 ;;1715
 ;;21,"58016-0363-21 ")
 ;;1716
 ;;21,"58016-0363-30 ")
 ;;1717
 ;;21,"58016-0363-60 ")
 ;;1718
 ;;21,"58016-0420-00 ")
 ;;86
 ;;21,"58016-0420-10 ")
 ;;87
 ;;21,"58016-0420-30 ")
 ;;88
 ;;21,"58016-0420-60 ")
 ;;89
 ;;21,"58016-0420-90 ")
 ;;90
 ;;21,"58016-0564-00 ")
 ;;1257
 ;;21,"58016-0564-30 ")
 ;;1258
 ;;21,"58016-0564-60 ")
 ;;1259
 ;;21,"58016-0564-90 ")
 ;;1260
 ;;21,"58016-0571-00 ")
 ;;827
 ;;21,"58016-0571-30 ")
 ;;828
 ;;21,"58016-0571-60 ")
 ;;829
 ;;21,"58016-0571-90 ")
 ;;830
 ;;21,"58016-0579-00 ")
 ;;597
 ;;21,"58016-0579-20 ")
 ;;598
 ;;21,"58016-0579-30 ")
 ;;599
 ;;21,"58016-0579-60 ")
 ;;600
 ;;21,"58016-0580-00 ")
 ;;710
 ;;21,"58016-0580-20 ")
 ;;711
 ;;21,"58016-0580-30 ")
 ;;712
 ;;21,"58016-0580-60 ")
 ;;713
 ;;21,"58016-0581-00 ")
 ;;807
 ;;21,"58016-0581-20 ")
 ;;808
 ;;21,"58016-0581-30 ")
 ;;809
 ;;21,"58016-0581-60 ")
 ;;810
 ;;21,"58016-0685-00 ")
 ;;167
 ;;21,"58016-0685-10 ")
 ;;168
 ;;21,"58016-0685-30 ")
 ;;169
 ;;21,"58016-0685-60 ")
 ;;170
 ;;21,"58016-0685-90 ")
 ;;171
 ;;21,"58016-0686-00 ")
 ;;241
 ;;21,"58016-0686-10 ")
 ;;242
 ;;21,"58016-0686-30 ")
 ;;243
 ;;21,"58016-0686-60 ")
 ;;244
 ;;21,"58016-0686-90 ")
 ;;245
 ;;21,"58016-0760-00 ")
 ;;1710
 ;;21,"58016-0760-30 ")
 ;;1711
 ;;21,"58016-0760-60 ")
 ;;1712
 ;;21,"58016-0760-90 ")
 ;;1713
 ;;21,"58016-0917-00 ")
 ;;1096
 ;;21,"58016-0917-30 ")
 ;;1097
 ;;21,"58016-0917-60 ")
 ;;1098
 ;;21,"58016-0917-90 ")
 ;;1099
 ;;21,"58016-0956-00 ")
 ;;1261
 ;;21,"58016-0956-30 ")
 ;;1262
 ;;21,"58016-0956-60 ")
 ;;1263
 ;;21,"58016-0956-90 ")
 ;;1264
 ;;21,"58016-0963-00 ")
 ;;1283
 ;;21,"58016-0963-30 ")
 ;;1284
 ;;21,"58016-0963-60 ")
 ;;1285
 ;;21,"58016-0963-90 ")
 ;;1286
 ;;21,"58016-0998-00 ")
 ;;1516
 ;;21,"58016-0998-30 ")
 ;;1517
 ;;21,"58016-0998-60 ")
 ;;1518
 ;;21,"58016-0998-90 ")
 ;;1519
 ;;21,"58016-2638-14 ")
 ;;1265
 ;;21,"58016-2638-21 ")
 ;;1266
 ;;21,"58016-2638-30 ")
 ;;1267
 ;;21,"58016-2638-60 ")
 ;;1268
 ;;21,"58016-2638-90 ")
 ;;1269
 ;;21,"58016-4631-01 ")
 ;;4150
 ;;21,"58118-0115-03 ")
 ;;2836
 ;;21,"58118-0115-06 ")
 ;;2837
 ;;21,"58118-0115-09 ")
 ;;2838
 ;;21,"58118-0116-03 ")
 ;;3929
 ;;21,"58118-0116-09 ")
 ;;3930
 ;;21,"58118-0117-03 ")
 ;;3983
 ;;21,"58118-0117-09 ")
 ;;3984
 ;;21,"58118-0118-03 ")
 ;;4051
 ;;21,"58118-0118-09 ")
 ;;4052
 ;;21,"58118-0337-03 ")
 ;;24
 ;;21,"58118-0337-09 ")
 ;;25
 ;;21,"58118-0338-08 ")
 ;;83
 ;;21,"58118-0338-09 ")
 ;;84
 ;;21,"58118-0339-08 ")
 ;;153
 ;;21,"58118-0339-09 ")
 ;;154
 ;;21,"58118-0340-03 ")
 ;;229
 ;;21,"58118-0340-09 ")
 ;;230
 ;;21,"58118-0409-03 ")
 ;;2743
 ;;21,"58118-0409-06 ")
 ;;2744
 ;;21,"58118-0409-09 ")
 ;;2745
 ;;21,"58118-0512-03 ")
 ;;1002
 ;;21,"58118-0512-09 ")
 ;;1003
 ;;21,"58118-0513-08 ")
 ;;1094
 ;;21,"58118-0513-09 ")
 ;;1095
 ;;21,"58118-0514-03 ")
 ;;1287
 ;;21,"58118-0514-06 ")
 ;;1288
 ;;21,"58118-0514-09 ")
 ;;1289
 ;;21,"58118-0515-03 ")
 ;;1514
 ;;21,"58118-0515-09 ")
 ;;1515
 ;;21,"58118-0517-03 ")
 ;;1799
 ;;21,"58118-0517-09 ")
 ;;1800
 ;;21,"58118-0519-03 ")
 ;;3511
 ;;21,"58118-0590-08 ")
 ;;2199
 ;;21,"58118-0590-09 ")
 ;;2200
 ;;21,"58118-0591-08 ")
 ;;2259
 ;;21,"58118-0591-09 ")
 ;;2260
 ;;21,"58118-1518-03 ")
 ;;3420
 ;;21,"58118-1518-06 ")
 ;;3421
 ;;21,"58118-1518-09 ")
 ;;3422
 ;;21,"58118-1520-03 ")
 ;;3607
 ;;21,"58118-1520-09 ")
 ;;3608
 ;;21,"58118-2271-03 ")
 ;;3034
 ;;21,"58118-2271-09 ")
 ;;3035
 ;;21,"58118-2272-03 ")
 ;;3079
 ;;21,"58118-2272-09 ")
 ;;3080
 ;;21,"58118-2273-03 ")
 ;;3137
 ;;21,"58118-2273-09 ")
 ;;3138
 ;;21,"58118-2274-03 ")
 ;;3219
 ;;21,"58118-2274-09 ")
 ;;3220
 ;;21,"58118-2277-03 ")
 ;;3169
 ;;21,"58118-2277-09 ")
 ;;3170
 ;;21,"58118-2279-03 ")
 ;;3249
 ;;21,"58118-2279-09 ")
 ;;3250
 ;;21,"58118-4725-03 ")
 ;;3290
 ;;21,"58118-4725-09 ")
 ;;3291
 ;;21,"58118-4745-03 ")
 ;;3310
 ;;21,"58118-4745-09 ")
 ;;3311
 ;;21,"58118-4775-03 ")
 ;;3327
 ;;21,"58118-4775-09 ")
 ;;3328
 ;;21,"58517-0240-30 ")
 ;;2734
 ;;21,"58864-0000-63 ")
 ;;1501
 ;;21,"58864-0006-30 ")
 ;;1502
 ;;21,"58864-0066-28 ")
 ;;372
 ;;21,"58864-0603-15 ")
 ;;1302
 ;;21,"58864-0603-30 ")
 ;;1303
 ;;21,"58864-0603-90 ")
 ;;1304
 ;;21,"58864-0605-30 ")
 ;;2979
 ;;21,"58864-0618-15 ")
 ;;1797
 ;;21,"58864-0618-30 ")
 ;;1798
 ;;21,"58864-0654-30 ")
 ;;1484
 ;;21,"58864-0659-30 ")
 ;;4040
 ;;21,"58864-0661-30 ")
 ;;3699
 ;;21,"58864-0662-30 ")
 ;;2634
 ;;21,"58864-0674-30 ")
 ;;2188
 ;;21,"58864-0681-30 ")
 ;;2934
 ;;21,"58864-0726-15 ")
 ;;2431
 ;;21,"58864-0726-30 ")
 ;;2432
 ;;21,"58864-0750-30 ")
 ;;1730
 ;;21,"58864-0753-30 ")
 ;;1086
 ;;21,"58864-0753-90 ")
 ;;1087
 ;;21,"58864-0754-30 ")
 ;;615
 ;;21,"58864-0755-30 ")
 ;;716
 ;;21,"58864-0762-30 ")
 ;;821
 ;;21,"58864-0771-15 ")
 ;;2502
 ;;21,"58864-0774-90 ")
 ;;845
 ;;21,"58864-0787-30 ")
 ;;3507
 ;;21,"58864-0807-30 ")
 ;;2569
 ;;21,"58864-0838-30 ")
 ;;3707
 ;;21,"58864-0847-30 ")
 ;;2253
 ;;21,"58864-0859-30 ")
 ;;2027
 ;;21,"58864-0863-30 ")
 ;;2090
 ;;21,"58864-0869-30 ")
 ;;2057
 ;;21,"59746-0333-10 ")
 ;;2582
 ;;21,"59746-0333-90 ")
 ;;2583
 ;;21,"59746-0334-10 ")
 ;;2731
 ;;21,"59746-0334-30 ")
 ;;2732
 ;;21,"59746-0334-90 ")
 ;;2733
 ;;21,"59746-0335-10 ")
 ;;2840
 ;;21,"59746-0335-30 ")
 ;;2841
 ;;21,"59746-0335-90 ")
 ;;2842
 ;;21,"59746-0337-30 ")
 ;;3926
 ;;21,"59746-0337-90 ")
 ;;3927
 ;;21,"59746-0338-30 ")
 ;;3986
 ;;21,"59746-0338-90 ")
 ;;3987
 ;;21,"59746-0339-30 ")
 ;;4053
 ;;21,"59746-0339-90 ")
 ;;4054
 ;;21,"59762-0011-01 ")
 ;;3924
 ;;21,"59762-0011-02 ")
 ;;3925
 ;;21,"59762-0012-01 ")
 ;;3988
 ;;21,"59762-0012-02 ")
 ;;3989
 ;;21,"59762-0015-01 ")
 ;;4055
 ;;21,"59762-0015-02 ")
 ;;4056
 ;;21,"59762-0070-01 ")
 ;;2560
 ;;21,"59762-0071-01 ")
 ;;2735
 ;;21,"59762-0071-02 ")
 ;;2633
 ;;21,"59762-0072-01 ")
 ;;2746
 ;;21,"59762-0072-02 ")
 ;;2839
 ;;21,"59762-0220-01 ")
 ;;3727
 ;;21,"59762-0222-01 ")
 ;;3713
 ;;21,"59762-0223-01 ")
 ;;3743
 ;;21,"59762-2270-01 ")
 ;;996
 ;;21,"59762-2270-03 ")
 ;;997
 ;;21,"59762-2270-07 ")
 ;;998
 ;;21,"59762-2271-01 ")
 ;;1083
 ;;21,"59762-2271-03 ")
 ;;1084
 ;;21,"59762-2271-07 ")
 ;;1085
 ;;21,"59762-2272-01 ")
 ;;1277
 ;;21,"59762-2272-03 ")
 ;;1278
 ;;21,"59762-2272-07 ")
 ;;1279
 ;;21,"59762-2273-01 ")
 ;;1488
 ;;21,"59762-2273-03 ")
 ;;1489
 ;;21,"59762-2273-07 ")
 ;;1490
 ;;21,"59762-2274-01 ")
 ;;1722
 ;;21,"59762-2274-03 ")
 ;;1723
 ;;21,"59762-2274-07 ")
 ;;1724
 ;;21,"59762-2275-01 ")
 ;;1783
 ;;21,"59762-2275-03 ")
 ;;1784
 ;;21,"59762-2275-07 ")
 ;;1785
 ;;21,"59762-3146-01 ")
 ;;81
 ;;21,"59762-3146-02 ")
 ;;82
 ;;21,"59762-3147-01 ")
 ;;156
 ;;21,"59762-3147-02 ")
 ;;157
 ;;21,"59762-3148-01 ")
 ;;234
 ;;21,"59762-3148-02 ")
 ;;235
 ;;21,"59762-3294-01 ")
 ;;3592
 ;;21,"59762-3294-02 ")
 ;;3593
 ;;21,"59762-3294-03 ")
 ;;3594
 ;;21,"59762-3294-04 ")
 ;;3595
 ;;21,"59762-3295-01 ")
 ;;3685
 ;;21,"59762-3295-02 ")
 ;;3686
 ;;21,"59762-3295-03 ")
 ;;3687
 ;;21,"59762-3295-04 ")
 ;;3688
 ;;21,"59762-5019-01 ")
 ;;2010
 ;;21,"59762-5020-01 ")
 ;;2032
 ;;21,"59762-5021-01 ")
 ;;2062
 ;;21,"59762-5022-01 ")
 ;;2094
 ;;21,"59762-5250-01 ")
 ;;3395
 ;;21,"59762-5250-04 ")
 ;;3396
 ;;21,"59762-5251-01 ")
 ;;3404
 ;;21,"59762-5251-04 ")
 ;;3405
 ;;21,"60429-0029-01 ")
 ;;291
 ;;21,"60429-0029-10 ")
 ;;292
 ;;21,"60429-0029-90 ")
 ;;293
 ;;21,"60429-0030-01 ")
 ;;366
 ;;21,"60429-0030-10 ")
 ;;367
 ;;21,"60429-0030-12 ")
 ;;368
 ;;21,"60429-0030-27 ")
 ;;369
 ;;21,"60429-0030-60 ")
 ;;370
 ;;21,"60429-0030-90 ")
 ;;371
 ;;21,"60429-0031-01 ")
 ;;437
 ;;21,"60429-0031-10 ")
 ;;438
 ;;21,"60429-0031-12 ")
 ;;439
 ;;21,"60429-0031-27 ")
 ;;440
 ;;21,"60429-0031-30 ")
 ;;441
 ;;21,"60429-0031-60 ")
 ;;442
 ;;21,"60429-0031-90 ")
 ;;443
 ;;21,"60429-0038-01 ")
 ;;2121
 ;;21,"60429-0039-01 ")
 ;;2144
 ;;21,"60429-0039-10 ")
 ;;2145
 ;;21,"60429-0040-01 ")
 ;;2192
 ;;21,"60429-0040-10 ")
 ;;2193
 ;;21,"60429-0041-01 ")
 ;;2264
 ;;21,"60429-0041-10 ")
 ;;2265
 ;;21,"60429-0044-01 ")
 ;;3424
 ;;21,"60429-0044-10 ")
 ;;3425
 ;;21,"60429-0045-01 ")
 ;;3504
 ;;21,"60429-0045-10 ")
 ;;3505
 ;;21,"60429-0045-90 ")
 ;;3506
 ;;21,"60429-0046-01 ")
 ;;3601
 ;;21,"60429-0046-10 ")
 ;;3602
 ;;21,"60429-0071-01 ")
 ;;480
 ;;21,"60429-0071-05 ")
 ;;481
 ;;21,"60429-0071-10 ")
 ;;482
 ;;21,"60429-0071-27 ")
 ;;483
 ;;21,"60429-0071-30 ")
 ;;484
 ;;21,"60429-0071-60 ")
 ;;485
 ;;21,"60429-0071-90 ")
 ;;486
 ;;21,"60429-0072-01 ")
 ;;608
 ;;21,"60429-0072-05 ")
 ;;609
 ;;21,"60429-0072-10 ")
 ;;610
 ;;21,"60429-0072-27 ")
 ;;611
 ;;21,"60429-0072-30 ")
 ;;612
 ;;21,"60429-0072-60 ")
 ;;613
 ;;21,"60429-0072-90 ")
 ;;614
 ;;21,"60429-0073-01 ")
 ;;717
 ;;21,"60429-0073-05 ")
 ;;718
 ;;21,"60429-0073-10 ")
 ;;719
 ;;21,"60429-0073-27 ")
 ;;720
 ;;21,"60429-0073-30 ")
 ;;721
 ;;21,"60429-0073-60 ")
 ;;722
 ;;21,"60429-0073-90 ")
 ;;723
 ;;21,"60429-0074-01 ")
 ;;814
 ;;21,"60429-0074-05 ")
 ;;815
 ;;21,"60429-0074-10 ")
 ;;816
 ;;21,"60429-0074-27 ")
 ;;817
 ;;21,"60429-0074-30 ")
 ;;818
 ;;21,"60429-0074-60 ")
 ;;819
 ;;21,"60429-0074-90 ")
 ;;820
 ;;21,"60429-0183-10 ")
 ;;487
 ;;21,"60429-0183-30 ")
 ;;488
 ;;21,"60429-0183-90 ")
 ;;489
 ;;21,"60429-0184-10 ")
 ;;605
 ;;21,"60429-0184-30 ")
 ;;606
 ;;21,"60429-0184-90 ")
 ;;607
 ;;21,"60429-0185-10 ")
 ;;724
 ;;21,"60429-0185-30 ")
 ;;725
 ;;21,"60429-0185-90 ")
 ;;726
 ;;21,"60429-0186-10 ")
 ;;811
 ;;21,"60429-0186-30 ")
 ;;812
 ;;21,"60429-0186-90 ")
 ;;813
 ;;21,"60429-0234-10 ")
 ;;842
 ;;21,"60429-0234-45 ")
 ;;843
