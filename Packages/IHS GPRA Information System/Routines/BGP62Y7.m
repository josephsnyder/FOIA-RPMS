BGP62Y7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"23490-5322-02 ")
 ;;4200
 ;;21,"23490-5322-03 ")
 ;;4201
 ;;21,"23490-5322-04 ")
 ;;4202
 ;;21,"23490-5323-01 ")
 ;;4405
 ;;21,"23490-5323-02 ")
 ;;4406
 ;;21,"23490-5323-03 ")
 ;;4407
 ;;21,"23490-5323-04 ")
 ;;4408
 ;;21,"23490-5323-05 ")
 ;;4409
 ;;21,"23490-5323-06 ")
 ;;4410
 ;;21,"23490-5323-07 ")
 ;;4411
 ;;21,"23490-5323-08 ")
 ;;4412
 ;;21,"23490-5324-00 ")
 ;;4701
 ;;21,"23490-5324-01 ")
 ;;4702
 ;;21,"23490-5324-02 ")
 ;;4703
 ;;21,"23490-5324-03 ")
 ;;4704
 ;;21,"23490-5329-01 ")
 ;;2893
 ;;21,"23490-5330-05 ")
 ;;2924
 ;;21,"23490-5331-01 ")
 ;;2959
 ;;21,"23490-5331-02 ")
 ;;2960
 ;;21,"23490-5331-04 ")
 ;;2961
 ;;21,"23490-5332-00 ")
 ;;2243
 ;;21,"23490-5332-01 ")
 ;;2244
 ;;21,"23490-5332-02 ")
 ;;2245
 ;;21,"23490-5332-03 ")
 ;;2246
 ;;21,"23490-5332-04 ")
 ;;2247
 ;;21,"23490-5332-05 ")
 ;;2248
 ;;21,"23490-5332-06 ")
 ;;2249
 ;;21,"23490-5332-07 ")
 ;;2250
 ;;21,"23490-5332-08 ")
 ;;2251
 ;;21,"23490-5333-01 ")
 ;;2435
 ;;21,"23490-5333-03 ")
 ;;2436
 ;;21,"23490-5333-04 ")
 ;;2437
 ;;21,"23490-5425-01 ")
 ;;3912
 ;;21,"23490-5425-02 ")
 ;;3913
 ;;21,"23490-5426-01 ")
 ;;3985
 ;;21,"23490-5426-02 ")
 ;;3986
 ;;21,"23490-5426-03 ")
 ;;3987
 ;;21,"23490-5483-01 ")
 ;;5975
 ;;21,"23490-5483-02 ")
 ;;5976
 ;;21,"23490-5483-03 ")
 ;;5977
 ;;21,"23490-5483-04 ")
 ;;5978
 ;;21,"23490-5483-05 ")
 ;;5979
 ;;21,"23490-5483-06 ")
 ;;5980
 ;;21,"23490-5483-07 ")
 ;;5981
 ;;21,"23490-5483-08 ")
 ;;5982
 ;;21,"23490-5485-01 ")
 ;;6151
 ;;21,"23490-5485-02 ")
 ;;6152
 ;;21,"23490-5485-03 ")
 ;;6153
 ;;21,"23490-5485-04 ")
 ;;6154
 ;;21,"23490-5485-05 ")
 ;;6155
 ;;21,"23490-5485-06 ")
 ;;6156
 ;;21,"23490-5503-01 ")
 ;;3060
 ;;21,"23490-5503-02 ")
 ;;3061
 ;;21,"23490-5505-01 ")
 ;;3125
 ;;21,"23490-5505-02 ")
 ;;3126
 ;;21,"23490-5505-03 ")
 ;;3127
 ;;21,"23490-5505-04 ")
 ;;3128
 ;;21,"23490-5512-01 ")
 ;;3272
 ;;21,"23490-5512-02 ")
 ;;3273
 ;;21,"23490-5513-01 ")
 ;;3304
 ;;21,"23490-5513-02 ")
 ;;3305
 ;;21,"23490-5513-03 ")
 ;;3306
 ;;21,"23490-5513-04 ")
 ;;3307
 ;;21,"23490-5513-05 ")
 ;;3308
 ;;21,"23490-5522-02 ")
 ;;3391
 ;;21,"23490-5523-01 ")
 ;;3424
 ;;21,"23490-5523-02 ")
 ;;3425
 ;;21,"23490-5523-03 ")
 ;;3426
 ;;21,"23490-5526-01 ")
 ;;3551
 ;;21,"23490-5526-02 ")
 ;;3552
 ;;21,"23490-6067-07 ")
 ;;3606
 ;;21,"23490-6068-01 ")
 ;;3625
 ;;21,"23490-6068-02 ")
 ;;3626
 ;;21,"23490-6068-03 ")
 ;;3627
 ;;21,"23490-6068-04 ")
 ;;3628
 ;;21,"23490-6068-05 ")
 ;;3629
 ;;21,"23490-6069-07 ")
 ;;3725
 ;;21,"23490-6070-01 ")
 ;;3779
 ;;21,"23490-6070-02 ")
 ;;3780
 ;;21,"23490-6070-03 ")
 ;;3781
 ;;21,"23490-6070-04 ")
 ;;3782
 ;;21,"23490-6070-05 ")
 ;;3783
 ;;21,"23490-6070-06 ")
 ;;3784
 ;;21,"23490-6352-00 ")
 ;;6604
 ;;21,"23490-6352-01 ")
 ;;6605
 ;;21,"23490-6352-02 ")
 ;;6606
 ;;21,"23490-6352-03 ")
 ;;6607
 ;;21,"23490-6352-04 ")
 ;;6608
 ;;21,"23490-6352-05 ")
 ;;6609
 ;;21,"23490-6352-06 ")
 ;;6610
 ;;21,"23490-6352-07 ")
 ;;6611
 ;;21,"23490-6352-08 ")
 ;;6612
 ;;21,"23490-6353-01 ")
 ;;6688
 ;;21,"23490-6353-02 ")
 ;;6689
 ;;21,"23490-6353-03 ")
 ;;6690
 ;;21,"23490-6353-04 ")
 ;;6691
 ;;21,"23490-6353-05 ")
 ;;6692
 ;;21,"23490-6353-07 ")
 ;;6693
 ;;21,"23490-6448-00 ")
 ;;5681
 ;;21,"23490-6448-01 ")
 ;;5682
 ;;21,"23490-6448-02 ")
 ;;5683
 ;;21,"23490-6448-03 ")
 ;;5684
 ;;21,"23490-6448-04 ")
 ;;5685
 ;;21,"23490-6448-05 ")
 ;;5686
 ;;21,"23490-6448-06 ")
 ;;5687
 ;;21,"23490-6448-07 ")
 ;;5688
 ;;21,"23490-6448-08 ")
 ;;5689
 ;;21,"23490-6448-09 ")
 ;;5690
 ;;21,"23490-6449-01 ")
 ;;5538
 ;;21,"23490-6449-02 ")
 ;;5539
 ;;21,"23490-6449-03 ")
 ;;5540
 ;;21,"23490-6449-04 ")
 ;;5541
 ;;21,"23490-6449-05 ")
 ;;5542
 ;;21,"23490-6904-01 ")
 ;;2556
 ;;21,"23490-6905-00 ")
 ;;2588
 ;;21,"23490-6905-01 ")
 ;;2589
 ;;21,"23490-6905-02 ")
 ;;2590
 ;;21,"23490-6940-00 ")
 ;;1229
 ;;21,"23490-6940-01 ")
 ;;1230
 ;;21,"23490-6940-02 ")
 ;;1231
 ;;21,"23490-6940-03 ")
 ;;1232
 ;;21,"23490-6977-01 ")
 ;;931
 ;;21,"23490-6979-00 ")
 ;;946
 ;;21,"23490-6979-01 ")
 ;;947
 ;;21,"23490-7012-00 ")
 ;;5235
 ;;21,"23490-7032-02 ")
 ;;4871
 ;;21,"23490-7075-08 ")
 ;;5447
 ;;21,"23490-7220-03 ")
 ;;708
 ;;21,"23490-7311-01 ")
 ;;149
 ;;21,"23490-7312-01 ")
 ;;437
 ;;21,"23490-7585-01 ")
 ;;1188
 ;;21,"23490-7585-02 ")
 ;;1189
 ;;21,"23490-7585-03 ")
 ;;1190
 ;;21,"23490-7664-01 ")
 ;;4666
 ;;21,"23490-7758-01 ")
 ;;2789
 ;;21,"23490-7760-01 ")
 ;;2657
 ;;21,"23490-7760-02 ")
 ;;2658
 ;;21,"23490-7843-01 ")
 ;;1873
 ;;21,"23490-7843-02 ")
 ;;1874
 ;;21,"23490-7843-07 ")
 ;;1875
 ;;21,"23490-7950-00 ")
 ;;730
 ;;21,"23490-7950-02 ")
 ;;731
 ;;21,"23490-7961-01 ")
 ;;1026
 ;;21,"23490-7961-02 ")
 ;;1027
 ;;21,"23490-7961-03 ")
 ;;1028
 ;;21,"23490-9260-00 ")
 ;;4872
 ;;21,"23490-9260-01 ")
 ;;4873
 ;;21,"23490-9260-03 ")
 ;;4874
 ;;21,"23490-9260-05 ")
 ;;4875
 ;;21,"23490-9367-01 ")
 ;;5586
 ;;21,"23490-9367-02 ")
 ;;5587
 ;;21,"24200-0602-04 ")
 ;;1354
 ;;21,"24200-0603-69 ")
 ;;1358
 ;;21,"24200-0604-04 ")
 ;;1386
 ;;21,"24200-0605-50 ")
 ;;1329
 ;;21,"24200-0605-60 ")
 ;;1330
 ;;21,"24200-0630-03 ")
 ;;2195
 ;;21,"24200-0631-03 ")
 ;;2203
 ;;21,"24236-0167-02 ")
 ;;2252
 ;;21,"24236-0167-05 ")
 ;;2253
 ;;21,"24236-0167-24 ")
 ;;2254
 ;;21,"24236-0167-28 ")
 ;;2255
 ;;21,"24236-0707-05 ")
 ;;2256
 ;;21,"24338-0100-13 ")
 ;;3427
 ;;21,"24338-0102-13 ")
 ;;3129
 ;;21,"24338-0104-13 ")
 ;;3309
 ;;21,"24338-0106-20 ")
 ;;3515
 ;;21,"24338-0110-13 ")
 ;;3428
 ;;21,"24338-0112-60 ")
 ;;3252
 ;;21,"24338-0114-13 ")
 ;;3360
 ;;21,"24338-0120-13 ")
 ;;3062
 ;;21,"24338-0122-13 ")
 ;;3090
 ;;21,"24338-0124-13 ")
 ;;3185
 ;;21,"24338-0126-13 ")
 ;;3274
 ;;21,"24338-0130-13 ")
 ;;3490
 ;;21,"24338-0132-13 ")
 ;;3371
 ;;21,"24338-0134-02 ")
 ;;3372
 ;;21,"24338-0136-10 ")
 ;;3373
 ;;21,"24486-0801-20 ")
 ;;7036
 ;;21,"24486-0802-20 ")
 ;;7040
 ;;21,"24658-0220-05 ")
 ;;6157
 ;;21,"24658-0220-20 ")
 ;;6158
 ;;21,"24658-0225-20 ")
 ;;5983
 ;;21,"24658-0250-01 ")
 ;;4413
 ;;21,"24658-0250-05 ")
 ;;4414
 ;;21,"24658-0250-11 ")
 ;;4415
 ;;21,"24658-0250-20 ")
 ;;4416
 ;;21,"24658-0250-60 ")
 ;;4417
 ;;21,"24658-0312-01 ")
 ;;6159
 ;;21,"24658-0312-05 ")
 ;;6160
 ;;21,"24658-0312-20 ")
 ;;6161
 ;;21,"24658-0312-50 ")
 ;;6162
 ;;21,"24987-0352-10 ")
 ;;5107
 ;;21,"24987-0352-20 ")
 ;;5108
 ;;21,"24987-0352-30 ")
 ;;5109
 ;;21,"24987-0354-10 ")
 ;;5070
 ;;21,"24987-0354-20 ")
 ;;5071
 ;;21,"24987-0354-30 ")
 ;;5072
 ;;21,"24987-0400-00 ")
 ;;5090
 ;;21,"24987-0425-00 ")
 ;;5119
 ;;21,"24987-0436-00 ")
 ;;5110
 ;;21,"24987-0437-00 ")
 ;;5073
 ;;21,"25020-1115-06 ")
 ;;2170
 ;;21,"25021-0100-10 ")
 ;;1375
 ;;21,"25021-0101-10 ")
 ;;1315
 ;;21,"25021-0102-99 ")
 ;;1346
 ;;21,"25021-0103-99 ")
 ;;1360
 ;;21,"25021-0104-10 ")
 ;;6878
 ;;21,"25021-0105-10 ")
 ;;6917
 ;;21,"25021-0106-10 ")
 ;;6795
 ;;21,"25021-0107-20 ")
 ;;6847
 ;;21,"25021-0108-99 ")
 ;;6827
 ;;21,"25021-0112-10 ")
 ;;2531
 ;;21,"25021-0114-82 ")
 ;;4080
 ;;21,"25021-0114-87 ")
 ;;4093
 ;;21,"25021-0115-02 ")
 ;;2171
 ;;21,"25021-0115-04 ")
 ;;2172
 ;;21,"25021-0115-06 ")
 ;;2173
 ;;21,"25021-0115-51 ")
 ;;2174
 ;;21,"25021-0118-10 ")
 ;;5111
 ;;21,"25021-0119-20 ")
 ;;5074
 ;;21,"25021-0120-59 ")
 ;;5091
 ;;21,"25021-0130-20 ")
 ;;4101
 ;;21,"25021-0130-30 ")
 ;;4102
 ;;21,"25021-0132-66 ")
 ;;4114
 ;;21,"25021-0132-67 ")
 ;;4126
 ;;21,"25021-0132-81 ")
 ;;4115
 ;;21,"25021-0132-82 ")
 ;;4127
 ;;21,"25021-0132-83 ")
 ;;4138
 ;;21,"25021-0134-10 ")
 ;;61
 ;;21,"25021-0135-10 ")
 ;;74
 ;;21,"25021-0136-10 ")
 ;;13
 ;;21,"25021-0137-20 ")
 ;;50
 ;;21,"25021-0138-99 ")
 ;;28
 ;;21,"25021-0154-20 ")
 ;;3579
 ;;21,"25021-0825-81 ")
 ;;4116
 ;;21,"25021-0825-82 ")
 ;;4128
 ;;21,"25021-0825-83 ")
 ;;4139
 ;;21,"26637-0221-50 ")
 ;;204
 ;;21,"27437-0201-08 ")
 ;;7063
 ;;21,"27437-0203-11 ")
 ;;7042
 ;;21,"27437-0205-10 ")
 ;;7053
 ;;21,"27437-0205-11 ")
 ;;7054
 ;;21,"27437-0206-02 ")
 ;;7055
 ;;21,"27437-0206-03 ")
 ;;7056
 ;;21,"27437-0207-02 ")
 ;;7065
 ;;21,"27437-0207-03 ")
 ;;7066
 ;;21,"27437-0208-08 ")
 ;;7061
 ;;21,"27437-0208-11 ")
 ;;7062
 ;;21,"33261-0020-07 ")
 ;;1876
 ;;21,"33261-0020-10 ")
 ;;1877
 ;;21,"33261-0020-14 ")
 ;;1878
 ;;21,"33261-0020-20 ")
 ;;1879
 ;;21,"33261-0020-21 ")
 ;;1880
 ;;21,"33261-0020-28 ")
 ;;1881
 ;;21,"33261-0020-30 ")
 ;;1882
 ;;21,"33261-0020-40 ")
 ;;1883
 ;;21,"33261-0020-42 ")
 ;;1884
 ;;21,"33261-0020-48 ")
 ;;1885
 ;;21,"33261-0020-60 ")
 ;;1886
 ;;21,"33261-0111-01 ")
 ;;1233
 ;;21,"33261-0112-01 ")
 ;;1083
 ;;21,"33261-0137-10 ")
 ;;524
 ;;21,"33261-0137-12 ")
 ;;525
 ;;21,"33261-0137-14 ")
 ;;526
 ;;21,"33261-0137-20 ")
 ;;527
 ;;21,"33261-0137-21 ")
 ;;528
 ;;21,"33261-0137-28 ")
 ;;529
 ;;21,"33261-0137-30 ")
 ;;530
 ;;21,"33261-0137-40 ")
 ;;531
 ;;21,"33261-0137-60 ")
 ;;532
 ;;21,"33261-0137-84 ")
 ;;533
 ;;21,"33261-0168-07 ")
 ;;5199
 ;;21,"33261-0168-14 ")
 ;;5200
 ;;21,"33261-0168-21 ")
 ;;5201
 ;;21,"33261-0168-28 ")
 ;;5202
 ;;21,"33261-0168-30 ")
 ;;5203
 ;;21,"33261-0168-60 ")
 ;;5204
 ;;21,"33261-0396-30 ")
 ;;5588
 ;;21,"33342-0021-08 ")
 ;;4797
 ;;21,"33342-0022-08 ")
 ;;4876
 ;;21,"33342-0023-32 ")
 ;;4970
 ;;21,"33358-0025-10 ")
 ;;205
 ;;21,"33358-0025-20 ")
 ;;206
 ;;21,"33358-0025-30 ")
 ;;207
 ;;21,"33358-0026-30 ")
 ;;321
 ;;21,"33358-0026-45 ")
 ;;322
 ;;21,"33358-0026-64 ")
 ;;323
 ;;21,"33358-0026-84 ")
 ;;324
 ;;21,"33358-0028-00 ")
 ;;534
 ;;21,"33358-0028-10 ")
 ;;535
 ;;21,"33358-0028-16 ")
 ;;536
 ;;21,"33358-0028-20 ")
 ;;537
 ;;21,"33358-0028-21 ")
 ;;538
 ;;21,"33358-0028-30 ")
 ;;539
 ;;21,"33358-0028-40 ")
 ;;540
 ;;21,"33358-0028-45 ")
 ;;541
 ;;21,"33358-0028-60 ")
 ;;542
 ;;21,"33358-0029-20 ")
 ;;732
 ;;21,"33358-0030-20 ")
 ;;1084
 ;;21,"33358-0031-20 ")
 ;;1234
 ;;21,"33358-0032-20 ")
 ;;788
 ;;21,"33358-0032-28 ")
 ;;789
 ;;21,"33358-0032-30 ")
 ;;790
 ;;21,"33358-0032-40 ")
 ;;791
 ;;21,"33358-0033-20 ")
 ;;850
 ;;21,"33358-0033-30 ")
 ;;851
 ;;21,"33358-0033-40 ")
 ;;852
 ;;21,"33358-0040-06 ")
 ;;2659
 ;;21,"33358-0041-10 ")
 ;;2790
 ;;21,"33358-0065-20 ")
 ;;5139
 ;;21,"33358-0065-30 ")
 ;;5140
 ;;21,"33358-0066-20 ")
 ;;5205
 ;;21,"33358-0066-30 ")
 ;;5206
 ;;21,"33358-0067-14 ")
 ;;1448
 ;;21,"33358-0067-28 ")
 ;;1449
 ;;21,"33358-0068-20 ")
 ;;7086
 ;;21,"33358-0071-15 ")
 ;;1614
 ;;21,"33358-0071-20 ")
 ;;1615
 ;;21,"33358-0071-28 ")
 ;;1616
 ;;21,"33358-0071-40 ")
 ;;1617
 ;;21,"33358-0071-60 ")
 ;;1618
 ;;21,"33358-0072-14 ")
 ;;1887
 ;;21,"33358-0072-15 ")
 ;;1888
 ;;21,"33358-0072-20 ")
 ;;1889
 ;;21,"33358-0072-21 ")
 ;;1890
 ;;21,"33358-0072-28 ")
 ;;1891
 ;;21,"33358-0072-30 ")
 ;;1892
 ;;21,"33358-0072-40 ")
 ;;1893
 ;;21,"33358-0072-60 ")
 ;;1894
 ;;21,"33358-0080-01 ")
 ;;4145
 ;;21,"33358-0080-06 ")
 ;;4146
 ;;21,"33358-0081-01 ")
 ;;4418
 ;;21,"33358-0081-06 ")
 ;;4419
 ;;21,"33358-0081-10 ")
 ;;4420
