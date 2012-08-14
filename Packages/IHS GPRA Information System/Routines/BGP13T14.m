BGP13T14 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63874-0616-60 ")
 ;;741
 ;;21,"63874-0616-70 ")
 ;;742
 ;;21,"63874-0616-72 ")
 ;;743
 ;;21,"63874-0616-74 ")
 ;;744
 ;;21,"63874-0616-77 ")
 ;;745
 ;;21,"63874-0616-80 ")
 ;;746
 ;;21,"63874-0616-90 ")
 ;;747
 ;;21,"63874-0638-01 ")
 ;;1863
 ;;21,"63874-0638-04 ")
 ;;1864
 ;;21,"63874-0638-10 ")
 ;;1865
 ;;21,"63874-0638-14 ")
 ;;1866
 ;;21,"63874-0638-15 ")
 ;;1867
 ;;21,"63874-0638-20 ")
 ;;1868
 ;;21,"63874-0638-21 ")
 ;;1869
 ;;21,"63874-0638-28 ")
 ;;1870
 ;;21,"63874-0638-30 ")
 ;;1871
 ;;21,"63874-0638-40 ")
 ;;1872
 ;;21,"63874-0638-50 ")
 ;;1873
 ;;21,"63874-0638-60 ")
 ;;1874
 ;;21,"63874-0638-90 ")
 ;;1875
 ;;21,"63874-0670-10 ")
 ;;4041
 ;;21,"63874-0670-15 ")
 ;;4042
 ;;21,"63874-0670-20 ")
 ;;4043
 ;;21,"63874-0670-30 ")
 ;;4044
 ;;21,"63874-0766-30 ")
 ;;1558
 ;;21,"63874-0766-60 ")
 ;;1559
 ;;21,"63874-0767-10 ")
 ;;4045
 ;;21,"63874-0767-14 ")
 ;;4046
 ;;21,"63874-0767-30 ")
 ;;4047
 ;;21,"63874-0775-01 ")
 ;;4984
 ;;21,"63874-0775-12 ")
 ;;4985
 ;;21,"63874-0775-15 ")
 ;;4986
 ;;21,"63874-0775-20 ")
 ;;4987
 ;;21,"63874-0775-30 ")
 ;;4988
 ;;21,"63874-0780-20 ")
 ;;5160
 ;;21,"63874-0828-01 ")
 ;;2561
 ;;21,"63874-0828-04 ")
 ;;2562
 ;;21,"63874-0828-14 ")
 ;;2563
 ;;21,"63874-0828-20 ")
 ;;2564
 ;;21,"63874-0828-21 ")
 ;;2565
 ;;21,"63874-0828-28 ")
 ;;2566
 ;;21,"63874-0828-30 ")
 ;;2567
 ;;21,"63874-0828-60 ")
 ;;2568
 ;;21,"63874-0828-90 ")
 ;;2569
 ;;21,"63874-0829-01 ")
 ;;1560
 ;;21,"63874-0829-10 ")
 ;;1561
 ;;21,"63874-0829-14 ")
 ;;1562
 ;;21,"63874-0829-15 ")
 ;;1563
 ;;21,"63874-0829-20 ")
 ;;1564
 ;;21,"63874-0829-28 ")
 ;;1565
 ;;21,"63874-0829-30 ")
 ;;1566
 ;;21,"63874-0829-42 ")
 ;;1567
 ;;21,"63874-0829-50 ")
 ;;1568
 ;;21,"63874-0829-60 ")
 ;;1569
 ;;21,"63874-0926-01 ")
 ;;842
 ;;21,"63874-0926-04 ")
 ;;843
 ;;21,"63874-0926-10 ")
 ;;844
 ;;21,"63874-0926-28 ")
 ;;845
 ;;21,"63874-0926-30 ")
 ;;846
 ;;21,"63874-0926-60 ")
 ;;847
 ;;21,"63874-0926-90 ")
 ;;848
 ;;21,"63874-1003-03 ")
 ;;4048
 ;;21,"63874-1009-01 ")
 ;;2898
 ;;21,"63874-1009-03 ")
 ;;2899
 ;;21,"63874-1009-06 ")
 ;;2900
 ;;21,"63874-1009-09 ")
 ;;2901
 ;;21,"63874-1020-03 ")
 ;;4280
 ;;21,"63874-1033-01 ")
 ;;3564
 ;;21,"63874-1033-03 ")
 ;;3565
 ;;21,"63874-1033-04 ")
 ;;3566
 ;;21,"63874-1033-06 ")
 ;;3567
 ;;21,"63874-1053-01 ")
 ;;2570
 ;;21,"63874-1053-02 ")
 ;;2571
 ;;21,"63874-1053-03 ")
 ;;2572
 ;;21,"63874-1053-04 ")
 ;;2573
 ;;21,"63874-1053-05 ")
 ;;2574
 ;;21,"63874-1053-06 ")
 ;;2575
 ;;21,"63874-1053-08 ")
 ;;2576
 ;;21,"63874-1053-09 ")
 ;;2577
 ;;21,"63874-1079-06 ")
 ;;3568
 ;;21,"63874-1080-03 ")
 ;;2578
 ;;21,"63874-1080-06 ")
 ;;2579
 ;;21,"63874-1081-01 ")
 ;;3569
 ;;21,"63874-1097-03 ")
 ;;3125
 ;;21,"63874-1098-03 ")
 ;;3126
 ;;21,"63874-1113-03 ")
 ;;1249
 ;;21,"63874-1113-06 ")
 ;;1250
 ;;21,"63874-1125-06 ")
 ;;3884
 ;;21,"63874-1130-06 ")
 ;;2018
 ;;21,"63874-1146-06 ")
 ;;1251
 ;;21,"63874-1151-03 ")
 ;;3885
 ;;21,"63874-1155-03 ")
 ;;3127
 ;;21,"63874-1157-03 ")
 ;;1252
 ;;21,"63874-1158-03 ")
 ;;510
 ;;21,"63874-1253-03 ")
 ;;1409
 ;;21,"64455-0730-30 ")
 ;;5220
 ;;21,"64455-0730-90 ")
 ;;5221
 ;;21,"64455-0731-30 ")
 ;;5222
 ;;21,"64679-0559-01 ")
 ;;3128
 ;;21,"64679-0560-01 ")
 ;;3129
 ;;21,"64679-0561-01 ")
 ;;3130
 ;;21,"64679-0752-01 ")
 ;;4547
 ;;21,"64679-0752-04 ")
 ;;4548
 ;;21,"64679-0752-07 ")
 ;;4549
 ;;21,"64679-0753-01 ")
 ;;4550
 ;;21,"64679-0753-04 ")
 ;;4551
 ;;21,"64679-0753-07 ")
 ;;4552
 ;;21,"64679-0969-14 ")
 ;;1253
 ;;21,"64679-0970-11 ")
 ;;1254
 ;;21,"64679-0970-14 ")
 ;;1255
 ;;21,"64679-0971-14 ")
 ;;1256
 ;;21,"64720-0170-03 ")
 ;;1257
 ;;21,"64720-0170-10 ")
 ;;1258
 ;;21,"64720-0171-03 ")
 ;;1259
 ;;21,"64720-0171-10 ")
 ;;1260
 ;;21,"64720-0171-11 ")
 ;;1261
 ;;21,"64720-0172-03 ")
 ;;1262
 ;;21,"64720-0172-10 ")
 ;;1263
 ;;21,"64720-0172-11 ")
 ;;1264
 ;;21,"64803-0032-01 ")
 ;;2934
 ;;21,"64980-0158-01 ")
 ;;4160
 ;;21,"64980-0159-01 ")
 ;;4161
 ;;21,"65084-0414-13 ")
 ;;849
 ;;21,"65162-0052-10 ")
 ;;1265
 ;;21,"65162-0052-50 ")
 ;;1266
 ;;21,"65162-0053-10 ")
 ;;1267
 ;;21,"65162-0053-50 ")
 ;;1268
 ;;21,"65162-0054-03 ")
 ;;1269
 ;;21,"65162-0054-10 ")
 ;;1270
 ;;21,"65162-0054-50 ")
 ;;1271
 ;;21,"65243-0006-03 ")
 ;;511
 ;;21,"65243-0063-03 ")
 ;;4553
 ;;21,"65243-0310-03 ")
 ;;1272
 ;;21,"65243-0319-03 ")
 ;;1273
 ;;21,"65243-0327-03 ")
 ;;4989
 ;;21,"65473-0701-01 ")
 ;;5119
 ;;21,"65473-0702-01 ")
 ;;5120
 ;;21,"65473-0718-01 ")
 ;;4592
 ;;21,"65473-0719-01 ")
 ;;4593
 ;;21,"65473-0720-01 ")
 ;;4594
 ;;21,"65580-0301-03 ")
 ;;5043
 ;;21,"65580-0301-09 ")
 ;;5044
 ;;21,"65580-0302-03 ")
 ;;5045
 ;;21,"65580-0302-09 ")
 ;;5046
 ;;21,"65580-0303-03 ")
 ;;5047
 ;;21,"65580-0303-09 ")
 ;;5048
 ;;21,"65580-0304-03 ")
 ;;5049
 ;;21,"65580-0304-09 ")
 ;;5050
 ;;21,"65862-0001-01 ")
 ;;3131
 ;;21,"65862-0001-05 ")
 ;;3132
 ;;21,"65862-0001-30 ")
 ;;3133
 ;;21,"65862-0003-01 ")
 ;;3134
 ;;21,"65862-0003-03 ")
 ;;3135
 ;;21,"65862-0003-05 ")
 ;;3136
 ;;21,"65862-0003-30 ")
 ;;3137
 ;;21,"65862-0003-90 ")
 ;;3138
 ;;21,"65862-0005-01 ")
 ;;1274
 ;;21,"65862-0005-05 ")
 ;;1275
 ;;21,"65862-0005-30 ")
 ;;1276
 ;;21,"65862-0006-01 ")
 ;;1277
 ;;21,"65862-0006-05 ")
 ;;1278
 ;;21,"65862-0006-30 ")
 ;;1279
 ;;21,"65862-0007-01 ")
 ;;1280
 ;;21,"65862-0007-05 ")
 ;;1281
 ;;21,"65862-0007-30 ")
 ;;1282
 ;;21,"65862-0011-01 ")
 ;;4554
 ;;21,"65862-0011-05 ")
 ;;4555
 ;;21,"65862-0011-30 ")
 ;;4556
 ;;21,"65862-0011-90 ")
 ;;4557
 ;;21,"65862-0012-01 ")
 ;;4558
 ;;21,"65862-0012-05 ")
 ;;4559
 ;;21,"65862-0012-30 ")
 ;;4560
 ;;21,"65862-0012-90 ")
 ;;4561
 ;;21,"65862-0013-01 ")
 ;;4562
 ;;21,"65862-0013-05 ")
 ;;4563
 ;;21,"65862-0013-30 ")
 ;;4564
 ;;21,"65862-0013-90 ")
 ;;4565
 ;;21,"65862-0021-06 ")
 ;;3139
 ;;21,"65862-0022-06 ")
 ;;3140
 ;;21,"65862-0023-06 ")
 ;;3141
 ;;21,"65862-0031-01 ")
 ;;3142
 ;;21,"65862-0031-03 ")
 ;;3143
 ;;21,"65862-0031-05 ")
 ;;3144
 ;;21,"65862-0031-30 ")
 ;;3145
 ;;21,"65862-0031-90 ")
 ;;3146
 ;;21,"65862-0032-01 ")
 ;;3147
 ;;21,"65862-0032-03 ")
 ;;3148
 ;;21,"65862-0032-05 ")
 ;;3149
 ;;21,"65862-0032-30 ")
 ;;3150
 ;;21,"65862-0032-90 ")
 ;;3151
 ;;21,"65862-0074-24 ")
 ;;1283
 ;;21,"65862-0154-30 ")
 ;;3886
 ;;21,"65862-0155-05 ")
 ;;3887
 ;;21,"65862-0155-30 ")
 ;;3888
 ;;21,"65862-0155-99 ")
 ;;3889
 ;;21,"65862-0156-30 ")
 ;;3890
 ;;21,"65862-0156-99 ")
 ;;3891
 ;;21,"65862-0157-30 ")
 ;;3892
 ;;21,"65862-0157-99 ")
 ;;3893
 ;;21,"65862-0192-01 ")
 ;;2580
 ;;21,"65862-0192-05 ")
 ;;2581
 ;;21,"65862-0192-99 ")
 ;;2582
 ;;21,"65862-0193-01 ")
 ;;2583
 ;;21,"65862-0193-05 ")
 ;;2584
 ;;21,"65862-0193-99 ")
 ;;2585
 ;;21,"65862-0194-01 ")
 ;;2586
 ;;21,"65862-0194-30 ")
 ;;2587
 ;;21,"66105-0111-10 ")
 ;;2141
 ;;21,"66105-0112-01 ")
 ;;2142
 ;;21,"66105-0112-03 ")
 ;;2143
 ;;21,"66105-0112-06 ")
 ;;2144
 ;;21,"66105-0112-10 ")
 ;;2145
 ;;21,"66105-0112-15 ")
 ;;2146
 ;;21,"66105-0116-03 ")
 ;;4049
 ;;21,"66105-0117-03 ")
 ;;4050
 ;;21,"66105-0118-10 ")
 ;;4051
 ;;21,"66105-0480-01 ")
 ;;5161
 ;;21,"66105-0480-02 ")
 ;;5162
 ;;21,"66105-0480-03 ")
 ;;5163
 ;;21,"66105-0480-06 ")
 ;;5164
 ;;21,"66105-0480-15 ")
 ;;5165
 ;;21,"66105-0481-01 ")
 ;;5166
 ;;21,"66105-0481-02 ")
 ;;5167
 ;;21,"66105-0481-03 ")
 ;;5168
 ;;21,"66105-0481-06 ")
 ;;5169
 ;;21,"66105-0481-15 ")
 ;;5170
 ;;21,"66105-0550-03 ")
 ;;4281
 ;;21,"66105-0564-03 ")
 ;;4230
 ;;21,"66105-0969-03 ")
 ;;2902
 ;;21,"66105-0977-03 ")
 ;;2903
 ;;21,"66267-0018-30 ")
 ;;512
 ;;21,"66267-0018-60 ")
 ;;513
 ;;21,"66267-0018-90 ")
 ;;514
 ;;21,"66267-0019-14 ")
 ;;515
 ;;21,"66267-0019-90 ")
 ;;516
 ;;21,"66267-0205-30 ")
 ;;4990
 ;;21,"66267-0205-60 ")
 ;;4991
 ;;21,"66267-0392-30 ")
 ;;4992
 ;;21,"66267-0392-60 ")
 ;;4993
 ;;21,"66267-0483-30 ")
 ;;3570
 ;;21,"66267-0483-45 ")
 ;;3571
 ;;21,"66267-0483-60 ")
 ;;3572
 ;;21,"66267-0484-30 ")
 ;;3573
 ;;21,"66267-0484-45 ")
 ;;3574
 ;;21,"66267-0484-60 ")
 ;;3575
 ;;21,"66267-0488-30 ")
 ;;2588
 ;;21,"66267-0488-60 ")
 ;;2589
 ;;21,"66267-0488-90 ")
 ;;2590
 ;;21,"66267-0560-90 ")
 ;;517
 ;;21,"66267-0576-30 ")
 ;;2591
 ;;21,"66267-0587-30 ")
 ;;2592
 ;;21,"66267-0614-30 ")
 ;;748
 ;;21,"66267-0614-60 ")
 ;;749
 ;;21,"66267-0618-30 ")
 ;;958
 ;;21,"66267-0626-30 ")
 ;;1570
 ;;21,"66267-0680-30 ")
 ;;1876
 ;;21,"66267-0721-30 ")
 ;;3894
 ;;21,"66267-1006-00 ")
 ;;518
 ;;21,"66336-0004-30 ")
 ;;2593
 ;;21,"66336-0004-60 ")
 ;;2594
 ;;21,"66336-0014-30 ")
 ;;4994
 ;;21,"66336-0014-60 ")
 ;;4995
 ;;21,"66336-0027-30 ")
 ;;519
 ;;21,"66336-0027-60 ")
 ;;520
 ;;21,"66336-0224-30 ")
 ;;521
 ;;21,"66336-0271-30 ")
 ;;1284
 ;;21,"66336-0354-30 ")
 ;;522
 ;;21,"66336-0354-60 ")
 ;;523
 ;;21,"66336-0354-90 ")
 ;;524
 ;;21,"66336-0418-30 ")
 ;;2595
 ;;21,"66336-0553-30 ")
 ;;1877
 ;;21,"66336-0620-28 ")
 ;;4996
 ;;21,"66336-0620-30 ")
 ;;4997
 ;;21,"66336-0620-60 ")
 ;;4998
 ;;21,"66336-0621-60 ")
 ;;3576
 ;;21,"66336-0673-30 ")
 ;;525
 ;;21,"66336-0673-50 ")
 ;;526
 ;;21,"66336-0673-60 ")
 ;;527
 ;;21,"66336-0757-60 ")
 ;;3577
 ;;21,"66336-0799-30 ")
 ;;3895
 ;;21,"66336-0838-14 ")
 ;;4999
 ;;21,"66336-0844-30 ")
 ;;2596
 ;;21,"66336-0897-60 ")
 ;;850
 ;;21,"66336-0973-60 ")
 ;;3578
 ;;21,"66336-0993-30 ")
 ;;1285
 ;;21,"66993-0709-30 ")
 ;;3152
 ;;21,"66993-0711-30 ")
 ;;3153
 ;;21,"66993-0712-30 ")
 ;;3154
 ;;21,"67046-0015-30 ")
 ;;528
 ;;21,"67544-0078-30 ")
 ;;3579
 ;;21,"67544-0080-15 ")
 ;;5372
 ;;21,"67544-0085-30 ")
 ;;529
 ;;21,"67544-0085-60 ")
 ;;530
 ;;21,"67544-0162-30 ")
 ;;5000
 ;;21,"67544-0169-15 ")
 ;;3155
 ;;21,"67544-0189-30 ")
 ;;2147
 ;;21,"67544-0190-30 ")
 ;;2148
 ;;21,"67544-0206-30 ")
 ;;531
 ;;21,"67544-0235-15 ")
 ;;3896
 ;;21,"67544-0253-30 ")
 ;;532
 ;;21,"67544-0295-30 ")
 ;;2597
 ;;21,"67544-0298-15 ")
 ;;5373
 ;;21,"67544-0299-30 ")
 ;;851
 ;;21,"67544-0316-15 ")
 ;;5001
 ;;21,"67544-0317-15 ")
 ;;3897
 ;;21,"67544-0331-30 ")
 ;;5002
 ;;21,"67544-0357-15 ")
 ;;3156
 ;;21,"67544-0358-15 ")
 ;;3157
 ;;21,"67544-0360-15 ")
 ;;1286
 ;;21,"67544-0365-15 ")
 ;;3898
 ;;21,"67544-0366-15 ")
 ;;1287
 ;;21,"67544-0409-15 ")
 ;;1288
 ;;21,"67544-0429-15 ")
 ;;3158
 ;;21,"67544-0430-15 ")
 ;;3159
 ;;21,"67544-0434-15 ")
 ;;3899
 ;;21,"67544-0455-15 ")
 ;;3900
 ;;21,"67544-0464-82 ")
 ;;852
 ;;21,"67544-0499-82 ")
 ;;853
 ;;21,"67544-0500-15 ")
 ;;3901
 ;;21,"67544-0528-30 ")
 ;;2598
 ;;21,"67544-0547-30 ")
 ;;854
 ;;21,"67544-0588-15 ")
 ;;1289
 ;;21,"67544-0848-30 ")
 ;;2599
 ;;21,"67544-0906-15 ")
 ;;1290
 ;;21,"67544-0906-73 ")
 ;;1291
 ;;21,"67544-0908-15 ")
 ;;4566
 ;;21,"67544-0959-15 ")
 ;;4567
 ;;21,"67767-0117-60 ")
 ;;855
 ;;21,"67767-0133-05 ")
 ;;856
 ;;21,"67767-0133-25 ")
 ;;857
 ;;21,"67767-0133-60 ")
 ;;858
 ;;21,"67767-0135-60 ")
 ;;859
 ;;21,"67767-0141-30 ")
 ;;890
 ;;21,"67767-0141-90 ")
 ;;891
 ;;21,"67767-0142-05 ")
 ;;892
 ;;21,"67767-0142-30 ")
 ;;893
 ;;21,"67767-0142-90 ")
 ;;894
 ;;21,"67767-0171-60 ")
 ;;860
 ;;21,"67801-0204-10 ")
 ;;5374
 ;;21,"67801-0205-10 ")
 ;;5375
 ;;21,"67801-0310-30 ")
 ;;2904
 ;;21,"67801-0312-03 ")
 ;;2149
 ;;21,"67801-0321-03 ")
 ;;2150
 ;;21,"67801-0409-30 ")
 ;;2905
 ;;21,"67801-0411-03 ")
 ;;2151
 ;;21,"67801-0433-30 ")
 ;;5223
 ;;21,"68071-0122-60 ")
 ;;861
 ;;21,"68071-0222-30 ")
 ;;1292
 ;;21,"68071-0231-30 ")
 ;;1293
 ;;21,"68071-0231-60 ")
 ;;1294
 ;;21,"68071-0231-90 ")
 ;;1295
 ;;21,"68071-0322-30 ")
 ;;2152
 ;;21,"68071-0322-40 ")
 ;;2153
 ;;21,"68071-0322-60 ")
 ;;2154
 ;;21,"68071-0322-90 ")
 ;;2155
 ;;21,"68071-0323-30 ")
 ;;3580
 ;;21,"68071-0323-60 ")
 ;;3581
 ;;21,"68071-0323-90 ")
 ;;3582
 ;;21,"68071-0333-30 ")
 ;;2156
 ;;21,"68071-0412-15 ")
 ;;2157
 ;;21,"68071-0412-30 ")
 ;;2158