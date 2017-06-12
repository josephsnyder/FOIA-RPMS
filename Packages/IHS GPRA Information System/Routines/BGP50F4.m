BGP50F4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 05, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"21695-0734-90 ")
 ;;3565
 ;;21,"21695-0735-30 ")
 ;;3656
 ;;21,"21695-0735-60 ")
 ;;3657
 ;;21,"21695-0735-90 ")
 ;;3658
 ;;21,"21695-0780-30 ")
 ;;3388
 ;;21,"21695-0788-90 ")
 ;;4034
 ;;21,"21695-0821-30 ")
 ;;2181
 ;;21,"21695-0821-90 ")
 ;;2182
 ;;21,"21695-0822-30 ")
 ;;2220
 ;;21,"21695-0822-60 ")
 ;;2221
 ;;21,"21695-0822-78 ")
 ;;2222
 ;;21,"21695-0822-90 ")
 ;;2223
 ;;21,"21695-0823-30 ")
 ;;2307
 ;;21,"21695-0823-60 ")
 ;;2308
 ;;21,"21695-0831-30 ")
 ;;4090
 ;;21,"21695-0831-90 ")
 ;;4091
 ;;21,"21695-0866-90 ")
 ;;3076
 ;;21,"21695-0877-30 ")
 ;;212
 ;;21,"21695-0877-90 ")
 ;;213
 ;;21,"21695-0916-30 ")
 ;;3205
 ;;21,"21695-0916-90 ")
 ;;3206
 ;;21,"21695-0917-90 ")
 ;;2937
 ;;21,"21695-0918-90 ")
 ;;2977
 ;;21,"21695-0919-90 ")
 ;;2997
 ;;21,"21695-0966-30 ")
 ;;4020
 ;;21,"21695-0989-30 ")
 ;;2591
 ;;21,"23155-0060-01 ")
 ;;3402
 ;;21,"23155-0061-01 ")
 ;;3409
 ;;21,"23490-0107-03 ")
 ;;2405
 ;;21,"23490-0108-03 ")
 ;;2465
 ;;21,"23490-0109-09 ")
 ;;2523
 ;;21,"23490-5118-01 ")
 ;;61
 ;;21,"23490-5119-01 ")
 ;;135
 ;;21,"23490-5119-02 ")
 ;;136
 ;;21,"23490-5120-03 ")
 ;;210
 ;;21,"23490-5120-09 ")
 ;;211
 ;;21,"23490-5121-01 ")
 ;;6
 ;;21,"23490-5191-01 ")
 ;;468
 ;;21,"23490-5192-01 ")
 ;;281
 ;;21,"23490-5193-01 ")
 ;;347
 ;;21,"23490-5193-02 ")
 ;;348
 ;;21,"23490-5193-03 ")
 ;;349
 ;;21,"23490-5194-00 ")
 ;;418
 ;;21,"23490-5194-01 ")
 ;;419
 ;;21,"23490-5194-02 ")
 ;;420
 ;;21,"23490-5491-01 ")
 ;;655
 ;;21,"23490-5491-02 ")
 ;;656
 ;;21,"23490-5491-08 ")
 ;;657
 ;;21,"23490-5491-09 ")
 ;;658
 ;;21,"23490-5492-01 ")
 ;;778
 ;;21,"23490-5492-02 ")
 ;;779
 ;;21,"23490-5494-01 ")
 ;;567
 ;;21,"23490-5494-02 ")
 ;;568
 ;;21,"23490-5815-00 ")
 ;;1453
 ;;21,"23490-5815-01 ")
 ;;1454
 ;;21,"23490-5815-06 ")
 ;;1455
 ;;21,"23490-5815-09 ")
 ;;1456
 ;;21,"23490-5816-01 ")
 ;;1623
 ;;21,"23490-5816-02 ")
 ;;1624
 ;;21,"23490-5816-06 ")
 ;;1625
 ;;21,"23490-5817-02 ")
 ;;1010
 ;;21,"23490-5818-02 ")
 ;;1950
 ;;21,"23490-5818-09 ")
 ;;1951
 ;;21,"23490-5819-02 ")
 ;;1243
 ;;21,"23490-5819-09 ")
 ;;1244
 ;;21,"23490-5820-01 ")
 ;;3471
 ;;21,"23490-5820-03 ")
 ;;3472
 ;;21,"23490-5820-04 ")
 ;;3473
 ;;21,"23490-5821-01 ")
 ;;3566
 ;;21,"23490-5821-09 ")
 ;;3567
 ;;21,"23490-5822-01 ")
 ;;3655
 ;;21,"23490-7060-01 ")
 ;;3085
 ;;21,"23490-7062-01 ")
 ;;3229
 ;;21,"23490-7590-01 ")
 ;;2943
 ;;21,"23490-7591-01 ")
 ;;2971
 ;;21,"23490-7594-01 ")
 ;;4219
 ;;21,"23490-9364-03 ")
 ;;2114
 ;;21,"23490-9409-03 ")
 ;;2852
 ;;21,"23490-9409-09 ")
 ;;2853
 ;;21,"23490-9410-03 ")
 ;;2889
 ;;21,"23490-9410-09 ")
 ;;2890
 ;;21,"23490-9411-03 ")
 ;;2923
 ;;21,"23490-9411-09 ")
 ;;2924
 ;;21,"23490-9412-03 ")
 ;;2935
 ;;21,"23490-9412-09 ")
 ;;2936
 ;;21,"23490-9462-01 ")
 ;;2592
 ;;21,"23490-9463-01 ")
 ;;2688
 ;;21,"23490-9464-09 ")
 ;;2763
 ;;21,"23490-9466-03 ")
 ;;4021
 ;;21,"23490-9467-01 ")
 ;;4092
 ;;21,"23490-9600-03 ")
 ;;2179
 ;;21,"23490-9600-09 ")
 ;;2180
 ;;21,"23490-9602-03 ")
 ;;2224
 ;;21,"23490-9602-04 ")
 ;;2225
 ;;21,"23490-9604-03 ")
 ;;2306
 ;;21,"24658-0240-10 ")
 ;;1008
 ;;21,"24658-0240-90 ")
 ;;1009
 ;;21,"24658-0241-10 ")
 ;;1245
 ;;21,"24658-0241-30 ")
 ;;1246
 ;;21,"24658-0241-45 ")
 ;;1247
 ;;21,"24658-0241-90 ")
 ;;1248
 ;;21,"24658-0242-10 ")
 ;;1447
 ;;21,"24658-0242-15 ")
 ;;1448
 ;;21,"24658-0242-18 ")
 ;;1449
 ;;21,"24658-0242-30 ")
 ;;1450
 ;;21,"24658-0242-45 ")
 ;;1451
 ;;21,"24658-0242-90 ")
 ;;1452
 ;;21,"24658-0243-10 ")
 ;;1626
 ;;21,"24658-0243-15 ")
 ;;1627
 ;;21,"24658-0243-18 ")
 ;;1628
 ;;21,"24658-0243-30 ")
 ;;1629
 ;;21,"24658-0243-45 ")
 ;;1630
 ;;21,"24658-0243-90 ")
 ;;1631
 ;;21,"24658-0244-01 ")
 ;;1764
 ;;21,"24658-0244-10 ")
 ;;1765
 ;;21,"24658-0245-10 ")
 ;;1941
 ;;21,"24658-0245-15 ")
 ;;1942
 ;;21,"24658-0245-18 ")
 ;;1943
 ;;21,"24658-0245-30 ")
 ;;1944
 ;;21,"24658-0245-45 ")
 ;;1945
 ;;21,"24658-0245-60 ")
 ;;1946
 ;;21,"24658-0245-90 ")
 ;;1947
 ;;21,"30698-0449-01 ")
 ;;173
 ;;21,"30698-0450-01 ")
 ;;247
 ;;21,"30698-0452-01 ")
 ;;3304
 ;;21,"30698-0453-01 ")
 ;;3325
 ;;21,"30698-0454-01 ")
 ;;3342
 ;;21,"31722-0200-10 ")
 ;;875
 ;;21,"31722-0200-90 ")
 ;;876
 ;;21,"31722-0201-10 ")
 ;;904
 ;;21,"31722-0201-90 ")
 ;;905
 ;;21,"31722-0202-10 ")
 ;;990
 ;;21,"31722-0202-90 ")
 ;;991
 ;;21,"31722-0267-90 ")
 ;;2021
 ;;21,"31722-0268-90 ")
 ;;2050
 ;;21,"31722-0269-90 ")
 ;;2077
 ;;21,"31722-0270-90 ")
 ;;2113
 ;;21,"31722-0271-01 ")
 ;;2131
 ;;21,"31722-0272-01 ")
 ;;2176
 ;;21,"31722-0272-05 ")
 ;;2177
 ;;21,"31722-0272-10 ")
 ;;2178
 ;;21,"31722-0273-01 ")
 ;;2226
 ;;21,"31722-0273-05 ")
 ;;2227
 ;;21,"31722-0273-10 ")
 ;;2228
 ;;21,"31722-0274-01 ")
 ;;2303
 ;;21,"31722-0274-05 ")
 ;;2304
 ;;21,"31722-0274-10 ")
 ;;2305
 ;;21,"31722-0374-90 ")
 ;;3719
 ;;21,"31722-0375-90 ")
 ;;3735
 ;;21,"31722-0376-90 ")
 ;;3747
 ;;21,"31722-0417-01 ")
 ;;1006
 ;;21,"31722-0417-10 ")
 ;;1007
 ;;21,"31722-0418-01 ")
 ;;1249
 ;;21,"31722-0418-10 ")
 ;;1250
 ;;21,"31722-0419-01 ")
 ;;1445
 ;;21,"31722-0419-10 ")
 ;;1446
 ;;21,"31722-0420-01 ")
 ;;1632
 ;;21,"31722-0420-10 ")
 ;;1633
 ;;21,"31722-0421-01 ")
 ;;1762
 ;;21,"31722-0421-10 ")
 ;;1763
 ;;21,"31722-0422-01 ")
 ;;1948
 ;;21,"31722-0422-10 ")
 ;;1949
 ;;21,"31722-0729-30 ")
 ;;2406
 ;;21,"31722-0729-90 ")
 ;;2407
 ;;21,"31722-0730-30 ")
 ;;2466
 ;;21,"31722-0730-90 ")
 ;;2467
 ;;21,"31722-0731-30 ")
 ;;2527
 ;;21,"31722-0731-90 ")
 ;;2528
 ;;21,"33261-0109-30 ")
 ;;1952
 ;;21,"33261-0109-60 ")
 ;;1953
 ;;21,"33261-0109-90 ")
 ;;1954
 ;;21,"33261-0110-07 ")
 ;;1606
 ;;21,"33261-0110-14 ")
 ;;1607
 ;;21,"33261-0110-20 ")
 ;;1608
 ;;21,"33261-0110-21 ")
 ;;1609
 ;;21,"33261-0110-28 ")
 ;;1610
 ;;21,"33261-0110-30 ")
 ;;1611
 ;;21,"33261-0110-60 ")
 ;;1612
 ;;21,"33261-0110-90 ")
 ;;1613
 ;;21,"33261-0180-02 ")
 ;;138
 ;;21,"33261-0180-30 ")
 ;;139
 ;;21,"33261-0180-60 ")
 ;;140
 ;;21,"33261-0180-90 ")
 ;;141
 ;;21,"33261-0182-00 ")
 ;;407
 ;;21,"33261-0182-30 ")
 ;;408
 ;;21,"33261-0182-60 ")
 ;;409
 ;;21,"33261-0182-90 ")
 ;;410
 ;;21,"33261-0373-00 ")
 ;;1235
 ;;21,"33261-0373-30 ")
 ;;1236
 ;;21,"33261-0373-60 ")
 ;;1237
 ;;21,"33261-0373-90 ")
 ;;1238
 ;;21,"33261-0416-30 ")
 ;;3553
 ;;21,"33261-0416-60 ")
 ;;3554
 ;;21,"33261-0416-90 ")
 ;;3555
 ;;21,"33261-0453-30 ")
 ;;3300
 ;;21,"33261-0453-60 ")
 ;;3301
 ;;21,"33261-0453-90 ")
 ;;3302
 ;;21,"33261-0632-00 ")
 ;;670
 ;;21,"33261-0632-30 ")
 ;;671
 ;;21,"33261-0632-60 ")
 ;;672
 ;;21,"33261-0632-90 ")
 ;;673
 ;;21,"33261-0668-00 ")
 ;;765
 ;;21,"33261-0668-30 ")
 ;;766
 ;;21,"33261-0668-60 ")
 ;;767
 ;;21,"33261-0668-90 ")
 ;;768
 ;;21,"33261-0728-00 ")
 ;;3670
 ;;21,"33261-0728-30 ")
 ;;3671
 ;;21,"33261-0728-60 ")
 ;;3672
 ;;21,"33261-0728-90 ")
 ;;3673
 ;;21,"33261-0819-00 ")
 ;;2780
 ;;21,"33261-0819-30 ")
 ;;2781
 ;;21,"33261-0819-60 ")
 ;;2782
 ;;21,"33261-0819-90 ")
 ;;2783
 ;;21,"33261-0824-00 ")
 ;;3072
 ;;21,"33261-0824-30 ")
 ;;3073
 ;;21,"33261-0824-60 ")
 ;;3074
 ;;21,"33261-0824-90 ")
 ;;3075
 ;;21,"33261-0825-00 ")
 ;;3201
 ;;21,"33261-0825-30 ")
 ;;3202
 ;;21,"33261-0825-60 ")
 ;;3203
 ;;21,"33261-0825-90 ")
 ;;3204
 ;;21,"33261-0828-30 ")
 ;;3481
 ;;21,"33261-0828-60 ")
 ;;3482
 ;;21,"33261-0828-90 ")
 ;;3483
 ;;21,"33261-0838-00 ")
 ;;3932
 ;;21,"33261-0838-30 ")
 ;;3933
 ;;21,"33261-0838-60 ")
 ;;3934
 ;;21,"33261-0838-90 ")
 ;;3935
 ;;21,"33261-0846-00 ")
 ;;198
 ;;21,"33261-0846-30 ")
 ;;199
 ;;21,"33261-0846-60 ")
 ;;200
 ;;21,"33261-0846-90 ")
 ;;201
 ;;21,"33261-0903-00 ")
 ;;2231
 ;;21,"33261-0903-30 ")
 ;;2232
 ;;21,"33261-0903-60 ")
 ;;2233
 ;;21,"33261-0903-90 ")
 ;;2234
 ;;21,"33261-0904-00 ")
 ;;4100
 ;;21,"33261-0904-30 ")
 ;;4101
 ;;21,"33261-0904-60 ")
 ;;4102
 ;;21,"33261-0904-90 ")
 ;;4103
 ;;21,"33261-0950-00 ")
 ;;4030
 ;;21,"33261-0950-30 ")
 ;;4031
 ;;21,"33261-0950-60 ")
 ;;4032
 ;;21,"33261-0950-90 ")
 ;;4033
 ;;21,"33261-0974-00 ")
 ;;353
 ;;21,"33261-0974-30 ")
 ;;354
 ;;21,"33261-0974-60 ")
 ;;355
 ;;21,"33261-0974-90 ")
 ;;356
 ;;21,"33261-0977-00 ")
 ;;494
 ;;21,"33261-0977-30 ")
 ;;495
 ;;21,"33261-0977-60 ")
 ;;496
 ;;21,"33261-0977-90 ")
 ;;497
 ;;21,"33261-0982-00 ")
 ;;3113
 ;;21,"33261-0982-30 ")
 ;;3114
 ;;21,"33261-0982-60 ")
 ;;3115
 ;;21,"33261-0982-90 ")
 ;;3116
 ;;21,"33342-0047-07 ")
 ;;2408
 ;;21,"33342-0047-10 ")
 ;;2409
 ;;21,"33342-0048-07 ")
 ;;2468
 ;;21,"33342-0048-10 ")
 ;;2469
 ;;21,"33342-0049-07 ")
 ;;2529
 ;;21,"33342-0049-10 ")
 ;;2530
 ;;21,"33342-0057-07 ")
 ;;3842
 ;;21,"33342-0057-10 ")
 ;;3843
 ;;21,"33342-0058-07 ")
 ;;3875
 ;;21,"33342-0058-10 ")
 ;;3876
 ;;21,"33342-0074-10 ")
 ;;4191
 ;;21,"33342-0074-44 ")
 ;;4192
 ;;21,"33342-0075-10 ")
 ;;4248
 ;;21,"33342-0075-15 ")
 ;;4249
 ;;21,"33342-0076-10 ")
 ;;4303
 ;;21,"33342-0076-15 ")
 ;;4304
 ;;21,"33342-0077-10 ")
 ;;4334
 ;;21,"33342-0077-15 ")
 ;;4335
 ;;21,"33342-0078-10 ")
 ;;4365
 ;;21,"33342-0078-15 ")
 ;;4366
 ;;21,"33358-0047-30 ")
 ;;3299
 ;;21,"33358-0048-30 ")
 ;;60
 ;;21,"33358-0049-30 ")
 ;;137
 ;;21,"33358-0050-30 ")
 ;;3330
 ;;21,"33358-0126-30 ")
 ;;560
 ;;21,"33358-0127-30 ")
 ;;668
 ;;21,"33358-0127-60 ")
 ;;669
 ;;21,"33358-0128-30 ")
 ;;769
 ;;21,"33358-0128-60 ")
 ;;770
 ;;21,"33358-0211-30 ")
 ;;1234
 ;;21,"33358-0212-30 ")
 ;;1466
 ;;21,"33358-0213-30 ")
 ;;1605
 ;;21,"33358-0214-30 ")
 ;;3484
 ;;21,"33358-0214-60 ")
 ;;3485
 ;;21,"33358-0222-00 ")
 ;;3142
 ;;21,"35356-0060-30 ")
 ;;4277
 ;;21,"35356-0101-90 ")
 ;;2998
 ;;21,"35356-0131-30 ")
 ;;2522
 ;;21,"35356-0133-30 ")
 ;;3009
 ;;21,"35356-0216-30 ")
 ;;2891
 ;;21,"35356-0216-90 ")
 ;;2892
 ;;21,"35356-0256-30 ")
 ;;4106
 ;;21,"35356-0256-90 ")
 ;;4107
 ;;21,"35356-0257-30 ")
 ;;4121
 ;;21,"35356-0257-90 ")
 ;;4122
 ;;21,"35356-0258-30 ")
 ;;4127
 ;;21,"35356-0258-90 ")
 ;;4128
 ;;21,"35356-0268-30 ")
 ;;3267
 ;;21,"35356-0287-20 ")
 ;;2850
 ;;21,"35356-0287-30 ")
 ;;2851
 ;;21,"35356-0288-40 ")
 ;;4123
 ;;21,"35356-0289-40 ")
 ;;4126
 ;;21,"35356-0293-90 ")
 ;;4323
 ;;21,"35356-0294-90 ")
 ;;4352
 ;;21,"35356-0295-30 ")
 ;;2893
 ;;21,"35356-0296-30 ")
 ;;2903
 ;;21,"35356-0297-30 ")
 ;;4138
 ;;21,"35356-0298-30 ")
 ;;2915
 ;;21,"35356-0299-30 ")
 ;;4149
 ;;21,"35356-0300-30 ")
 ;;4158
 ;;21,"35356-0373-90 ")
 ;;2567
 ;;21,"35356-0374-15 ")
 ;;3840
 ;;21,"35356-0374-30 ")
 ;;3841
 ;;21,"35356-0406-30 ")
 ;;3874
 ;;21,"35356-0416-10 ")
 ;;3912
 ;;21,"35356-0416-20 ")
 ;;3913
 ;;21,"35356-0416-30 ")
 ;;3914
 ;;21,"35356-0427-30 ")
 ;;2359
 ;;21,"35356-0428-30 ")
 ;;2463
 ;;21,"35356-0432-30 ")
 ;;202
 ;;21,"35356-0432-60 ")
 ;;203
 ;;21,"35356-0432-90 ")
 ;;204
 ;;21,"35356-0541-30 ")
 ;;498
 ;;21,"35356-0587-30 ")
 ;;7
 ;;21,"35356-0587-60 ")
 ;;8
 ;;21,"35356-0587-90 ")
 ;;9
 ;;21,"35356-0601-30 ")
 ;;1994
 ;;21,"35356-0695-30 ")
 ;;1470
 ;;21,"35356-0773-30 ")
 ;;2775
 ;;21,"35356-0777-30 ")
 ;;3475
 ;;21,"35356-0778-30 ")
 ;;3669
 ;;21,"35356-0779-30 ")
 ;;2673
 ;;21,"35356-0780-30 ")
 ;;4027
 ;;21,"35356-0854-30 ")
 ;;2464
 ;;21,"35356-0861-30 ")
 ;;147
 ;;21,"35356-0869-30 ")
 ;;664
 ;;21,"35356-0869-60 ")
 ;;665
 ;;21,"35356-0869-90 ")
 ;;666
 ;;21,"35356-0871-30 ")
 ;;771
 ;;21,"35356-0879-30 ")
 ;;1228
 ;;21,"35356-0879-60 ")
 ;;1229
 ;;21,"35356-0879-90 ")
 ;;1230
 ;;21,"35356-0883-30 ")
 ;;2776
 ;;21,"35356-0884-30 ")
 ;;2674
 ;;21,"35356-0884-90 ")
 ;;2675
 ;;21,"35356-0893-30 ")
 ;;2295
 ;;21,"35356-0893-60 ")
 ;;2296
 ;;21,"35356-0893-90 ")
 ;;2297
 ;;21,"35356-0910-30 ")
 ;;59
 ;;21,"35356-0913-30 ")
 ;;2116
 ;;21,"35356-0917-30 ")
 ;;3071
 ;;21,"35356-0945-30 ")
 ;;561
 ;;21,"35356-0945-60 ")
 ;;562
 ;;21,"35356-0945-90 ")
 ;;563
 ;;21,"35356-0948-30 ")
 ;;1960
 ;;21,"35356-0948-60 ")
 ;;1961
 ;;21,"35356-0948-90 ")
 ;;1962
 ;;21,"35356-0949-30 ")
 ;;2598
 ;;21,"35356-0960-30 ")
 ;;3118
 ;;21,"35356-0960-60 ")
 ;;3119
 ;;21,"35356-0960-90 ")
 ;;3120
 ;;21,"35356-0961-30 ")
 ;;906
 ;;21,"35356-0961-60 ")
 ;;907
 ;;21,"35356-0961-90 ")
 ;;908
 ;;21,"35356-0965-30 ")
 ;;3159
 ;;21,"35356-0965-60 ")
 ;;3160
 ;;21,"35356-0965-90 ")
 ;;3161
 ;;21,"35356-0973-30 ")
 ;;1015
 ;;21,"35356-0973-60 ")
 ;;1016
 ;;21,"35356-0973-90 ")
 ;;1017
 ;;21,"35356-0976-30 ")
 ;;4252
 ;;21,"35356-0976-60 ")
 ;;4253
 ;;21,"35356-0979-30 ")
 ;;4305
 ;;21,"35356-0979-60 ")
 ;;4306
 ;;21,"35356-0998-30 ")
 ;;3733
 ;;21,"35356-0998-60 ")
 ;;3734
 ;;21,"42254-0072-30 ")
 ;;3117
 ;;21,"42254-0073-30 ")
 ;;3158
 ;;21,"42254-0074-30 ")
 ;;3242
 ;;21,"42254-0156-30 ")
 ;;142
 ;;21,"42254-0156-90 ")
 ;;143
 ;;21,"42254-0192-90 ")
 ;;11
