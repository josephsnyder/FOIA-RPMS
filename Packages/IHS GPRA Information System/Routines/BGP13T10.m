BGP13T10 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55887-0663-30 ")
 ;;5148
 ;;21,"55887-0663-60 ")
 ;;5149
 ;;21,"55887-0663-90 ")
 ;;5150
 ;;21,"55887-0664-30 ")
 ;;2462
 ;;21,"55887-0664-90 ")
 ;;2463
 ;;21,"55887-0665-30 ")
 ;;2122
 ;;21,"55887-0665-60 ")
 ;;2123
 ;;21,"55887-0665-82 ")
 ;;2124
 ;;21,"55887-0665-90 ")
 ;;2125
 ;;21,"55887-0745-50 ")
 ;;3452
 ;;21,"55887-0871-30 ")
 ;;4824
 ;;21,"55887-0871-60 ")
 ;;4825
 ;;21,"55887-0925-30 ")
 ;;4502
 ;;21,"55887-0925-60 ")
 ;;4503
 ;;21,"55887-0925-82 ")
 ;;4504
 ;;21,"55887-0925-90 ")
 ;;4505
 ;;21,"55887-0947-07 ")
 ;;2464
 ;;21,"55887-0947-30 ")
 ;;2465
 ;;21,"55887-0967-30 ")
 ;;5339
 ;;21,"55887-0967-60 ")
 ;;5340
 ;;21,"57664-0357-88 ")
 ;;2658
 ;;21,"57664-0361-13 ")
 ;;2659
 ;;21,"57664-0361-88 ")
 ;;2660
 ;;21,"57664-0362-13 ")
 ;;2661
 ;;21,"57664-0362-88 ")
 ;;2662
 ;;21,"57664-0421-13 ")
 ;;3791
 ;;21,"57664-0421-83 ")
 ;;3792
 ;;21,"57664-0421-99 ")
 ;;3793
 ;;21,"57664-0422-13 ")
 ;;3794
 ;;21,"57664-0422-18 ")
 ;;3795
 ;;21,"57664-0422-83 ")
 ;;3796
 ;;21,"57664-0422-99 ")
 ;;3797
 ;;21,"57664-0424-13 ")
 ;;3798
 ;;21,"57664-0424-83 ")
 ;;3799
 ;;21,"57664-0424-99 ")
 ;;3800
 ;;21,"57664-0425-13 ")
 ;;3801
 ;;21,"57664-0425-83 ")
 ;;3802
 ;;21,"57664-0425-99 ")
 ;;3803
 ;;21,"57664-0499-18 ")
 ;;3055
 ;;21,"57664-0499-83 ")
 ;;3056
 ;;21,"57664-0500-18 ")
 ;;3057
 ;;21,"57664-0500-83 ")
 ;;3058
 ;;21,"57664-0501-18 ")
 ;;3059
 ;;21,"57664-0501-83 ")
 ;;3060
 ;;21,"57664-0507-13 ")
 ;;1174
 ;;21,"57664-0507-18 ")
 ;;1175
 ;;21,"57664-0507-83 ")
 ;;1176
 ;;21,"57664-0507-88 ")
 ;;1177
 ;;21,"57664-0508-13 ")
 ;;1178
 ;;21,"57664-0508-18 ")
 ;;1179
 ;;21,"57664-0508-83 ")
 ;;1180
 ;;21,"57664-0508-88 ")
 ;;1181
 ;;21,"57664-0509-13 ")
 ;;1182
 ;;21,"57664-0509-18 ")
 ;;1183
 ;;21,"57664-0509-83 ")
 ;;1184
 ;;21,"57664-0509-88 ")
 ;;1185
 ;;21,"57664-0510-18 ")
 ;;3061
 ;;21,"57664-0510-83 ")
 ;;3062
 ;;21,"57866-0045-08 ")
 ;;4012
 ;;21,"57866-0901-02 ")
 ;;5151
 ;;21,"57866-0920-01 ")
 ;;2466
 ;;21,"57866-0920-02 ")
 ;;2467
 ;;21,"57866-0920-03 ")
 ;;2468
 ;;21,"57866-0922-01 ")
 ;;2469
 ;;21,"57866-0922-02 ")
 ;;2470
 ;;21,"57866-0922-03 ")
 ;;2471
 ;;21,"57866-1035-01 ")
 ;;5127
 ;;21,"57866-1073-02 ")
 ;;1953
 ;;21,"57866-3061-02 ")
 ;;3063
 ;;21,"57866-3071-01 ")
 ;;324
 ;;21,"57866-3072-01 ")
 ;;325
 ;;21,"57866-3072-02 ")
 ;;326
 ;;21,"57866-3072-03 ")
 ;;327
 ;;21,"57866-3072-10 ")
 ;;328
 ;;21,"57866-3073-01 ")
 ;;329
 ;;21,"57866-3073-02 ")
 ;;330
 ;;21,"57866-3073-03 ")
 ;;331
 ;;21,"57866-3083-05 ")
 ;;5152
 ;;21,"57866-3906-01 ")
 ;;332
 ;;21,"57866-3907-01 ")
 ;;333
 ;;21,"57866-3910-01 ")
 ;;1394
 ;;21,"57866-3911-01 ")
 ;;1395
 ;;21,"57866-3930-01 ")
 ;;2747
 ;;21,"57866-3931-01 ")
 ;;2748
 ;;21,"57866-4422-01 ")
 ;;4213
 ;;21,"57866-4564-01 ")
 ;;1755
 ;;21,"57866-4565-01 ")
 ;;1756
 ;;21,"57866-4565-02 ")
 ;;1757
 ;;21,"57866-4565-03 ")
 ;;1758
 ;;21,"57866-4565-04 ")
 ;;1759
 ;;21,"57866-4566-01 ")
 ;;1760
 ;;21,"57866-4688-01 ")
 ;;4826
 ;;21,"57866-4688-02 ")
 ;;4827
 ;;21,"57866-4688-03 ")
 ;;4828
 ;;21,"57866-4688-04 ")
 ;;4829
 ;;21,"57866-4715-01 ")
 ;;4830
 ;;21,"57866-4715-02 ")
 ;;4831
 ;;21,"57866-4715-03 ")
 ;;4832
 ;;21,"57866-4715-04 ")
 ;;4833
 ;;21,"57866-6305-00 ")
 ;;5341
 ;;21,"57866-6305-01 ")
 ;;5342
 ;;21,"57866-6650-01 ")
 ;;3453
 ;;21,"57866-6650-02 ")
 ;;3454
 ;;21,"57866-6650-03 ")
 ;;3455
 ;;21,"57866-9803-01 ")
 ;;2887
 ;;21,"58016-0004-00 ")
 ;;5101
 ;;21,"58016-0004-30 ")
 ;;5102
 ;;21,"58016-0004-60 ")
 ;;5103
 ;;21,"58016-0004-90 ")
 ;;5104
 ;;21,"58016-0009-00 ")
 ;;4506
 ;;21,"58016-0009-30 ")
 ;;4507
 ;;21,"58016-0009-60 ")
 ;;4508
 ;;21,"58016-0009-90 ")
 ;;4509
 ;;21,"58016-0010-00 ")
 ;;4510
 ;;21,"58016-0010-30 ")
 ;;4511
 ;;21,"58016-0010-60 ")
 ;;4512
 ;;21,"58016-0010-90 ")
 ;;4513
 ;;21,"58016-0011-00 ")
 ;;4514
 ;;21,"58016-0011-30 ")
 ;;4515
 ;;21,"58016-0011-60 ")
 ;;4516
 ;;21,"58016-0011-90 ")
 ;;4517
 ;;21,"58016-0024-00 ")
 ;;824
 ;;21,"58016-0024-30 ")
 ;;825
 ;;21,"58016-0024-60 ")
 ;;826
 ;;21,"58016-0024-90 ")
 ;;827
 ;;21,"58016-0027-00 ")
 ;;2888
 ;;21,"58016-0027-30 ")
 ;;2889
 ;;21,"58016-0027-60 ")
 ;;2890
 ;;21,"58016-0027-90 ")
 ;;2891
 ;;21,"58016-0030-00 ")
 ;;1186
 ;;21,"58016-0030-30 ")
 ;;1187
 ;;21,"58016-0030-60 ")
 ;;1188
 ;;21,"58016-0030-90 ")
 ;;1189
 ;;21,"58016-0031-00 ")
 ;;5210
 ;;21,"58016-0031-30 ")
 ;;5211
 ;;21,"58016-0031-60 ")
 ;;5212
 ;;21,"58016-0031-90 ")
 ;;5213
 ;;21,"58016-0073-00 ")
 ;;4111
 ;;21,"58016-0073-30 ")
 ;;4112
 ;;21,"58016-0073-60 ")
 ;;4113
 ;;21,"58016-0073-90 ")
 ;;4114
 ;;21,"58016-0100-00 ")
 ;;3251
 ;;21,"58016-0100-30 ")
 ;;3252
 ;;21,"58016-0100-60 ")
 ;;3253
 ;;21,"58016-0100-90 ")
 ;;3254
 ;;21,"58016-0178-00 ")
 ;;1190
 ;;21,"58016-0178-02 ")
 ;;1191
 ;;21,"58016-0178-04 ")
 ;;1192
 ;;21,"58016-0178-05 ")
 ;;1193
 ;;21,"58016-0178-10 ")
 ;;1194
 ;;21,"58016-0178-12 ")
 ;;1195
 ;;21,"58016-0178-14 ")
 ;;1196
 ;;21,"58016-0178-15 ")
 ;;1197
 ;;21,"58016-0178-20 ")
 ;;1198
 ;;21,"58016-0178-30 ")
 ;;1199
 ;;21,"58016-0178-40 ")
 ;;1200
 ;;21,"58016-0178-50 ")
 ;;1201
 ;;21,"58016-0178-60 ")
 ;;1202
 ;;21,"58016-0178-89 ")
 ;;1203
 ;;21,"58016-0178-90 ")
 ;;1204
 ;;21,"58016-0178-99 ")
 ;;1205
 ;;21,"58016-0191-00 ")
 ;;1533
 ;;21,"58016-0191-15 ")
 ;;1534
 ;;21,"58016-0191-28 ")
 ;;1535
 ;;21,"58016-0191-30 ")
 ;;1536
 ;;21,"58016-0191-50 ")
 ;;1537
 ;;21,"58016-0191-60 ")
 ;;1538
 ;;21,"58016-0220-00 ")
 ;;1954
 ;;21,"58016-0220-30 ")
 ;;1955
 ;;21,"58016-0220-60 ")
 ;;1956
 ;;21,"58016-0220-90 ")
 ;;1957
 ;;21,"58016-0224-00 ")
 ;;1206
 ;;21,"58016-0224-02 ")
 ;;1207
 ;;21,"58016-0224-04 ")
 ;;1208
 ;;21,"58016-0224-05 ")
 ;;1209
 ;;21,"58016-0224-10 ")
 ;;1210
 ;;21,"58016-0224-12 ")
 ;;1211
 ;;21,"58016-0224-14 ")
 ;;1212
 ;;21,"58016-0224-15 ")
 ;;1213
 ;;21,"58016-0224-20 ")
 ;;1214
 ;;21,"58016-0224-30 ")
 ;;1215
 ;;21,"58016-0224-40 ")
 ;;1216
 ;;21,"58016-0224-50 ")
 ;;1217
 ;;21,"58016-0224-60 ")
 ;;1218
 ;;21,"58016-0224-89 ")
 ;;1219
 ;;21,"58016-0224-90 ")
 ;;1220
 ;;21,"58016-0224-99 ")
 ;;1221
 ;;21,"58016-0240-00 ")
 ;;828
 ;;21,"58016-0240-02 ")
 ;;829
 ;;21,"58016-0240-03 ")
 ;;830
 ;;21,"58016-0240-30 ")
 ;;831
 ;;21,"58016-0240-60 ")
 ;;832
 ;;21,"58016-0240-90 ")
 ;;833
 ;;21,"58016-0263-00 ")
 ;;4834
 ;;21,"58016-0263-02 ")
 ;;4835
 ;;21,"58016-0263-03 ")
 ;;4836
 ;;21,"58016-0263-10 ")
 ;;4837
 ;;21,"58016-0263-12 ")
 ;;4838
 ;;21,"58016-0263-15 ")
 ;;4839
 ;;21,"58016-0263-20 ")
 ;;4840
 ;;21,"58016-0263-28 ")
 ;;4841
 ;;21,"58016-0263-30 ")
 ;;4842
 ;;21,"58016-0263-60 ")
 ;;4843
 ;;21,"58016-0263-73 ")
 ;;4844
 ;;21,"58016-0263-89 ")
 ;;4845
 ;;21,"58016-0263-90 ")
 ;;4846
 ;;21,"58016-0282-00 ")
 ;;3064
 ;;21,"58016-0282-30 ")
 ;;3065
 ;;21,"58016-0282-60 ")
 ;;3066
 ;;21,"58016-0282-90 ")
 ;;3067
 ;;21,"58016-0323-00 ")
 ;;1958
 ;;21,"58016-0323-10 ")
 ;;1959
 ;;21,"58016-0323-14 ")
 ;;1960
 ;;21,"58016-0323-15 ")
 ;;1961
 ;;21,"58016-0323-20 ")
 ;;1962
 ;;21,"58016-0323-21 ")
 ;;1963
 ;;21,"58016-0323-28 ")
 ;;1964
 ;;21,"58016-0323-30 ")
 ;;1965
 ;;21,"58016-0323-40 ")
 ;;1966
 ;;21,"58016-0323-50 ")
 ;;1967
 ;;21,"58016-0323-60 ")
 ;;1968
 ;;21,"58016-0323-90 ")
 ;;1969
 ;;21,"58016-0336-00 ")
 ;;3255
 ;;21,"58016-0336-30 ")
 ;;3256
 ;;21,"58016-0336-60 ")
 ;;3257
 ;;21,"58016-0336-90 ")
 ;;3258
 ;;21,"58016-0349-00 ")
 ;;1970
 ;;21,"58016-0349-10 ")
 ;;1971
 ;;21,"58016-0349-14 ")
 ;;1972
 ;;21,"58016-0349-15 ")
 ;;1973
 ;;21,"58016-0349-20 ")
 ;;1974
 ;;21,"58016-0349-21 ")
 ;;1975
 ;;21,"58016-0349-28 ")
 ;;1976
 ;;21,"58016-0349-30 ")
 ;;1977
 ;;21,"58016-0349-40 ")
 ;;1978
 ;;21,"58016-0349-50 ")
 ;;1979
 ;;21,"58016-0349-60 ")
 ;;1980
 ;;21,"58016-0349-90 ")
 ;;1981
 ;;21,"58016-0350-00 ")
 ;;1982
 ;;21,"58016-0350-10 ")
 ;;1983
 ;;21,"58016-0350-14 ")
 ;;1984
 ;;21,"58016-0350-15 ")
 ;;1985
 ;;21,"58016-0350-20 ")
 ;;1986
 ;;21,"58016-0350-21 ")
 ;;1987
 ;;21,"58016-0350-28 ")
 ;;1988
 ;;21,"58016-0350-30 ")
 ;;1989
 ;;21,"58016-0350-40 ")
 ;;1990
 ;;21,"58016-0350-50 ")
 ;;1991
 ;;21,"58016-0350-60 ")
 ;;1992
 ;;21,"58016-0350-90 ")
 ;;1993
 ;;21,"58016-0351-00 ")
 ;;1994
 ;;21,"58016-0351-10 ")
 ;;1995
 ;;21,"58016-0351-14 ")
 ;;1996
 ;;21,"58016-0351-15 ")
 ;;1997
 ;;21,"58016-0351-20 ")
 ;;1998
 ;;21,"58016-0351-21 ")
 ;;1999
 ;;21,"58016-0351-28 ")
 ;;2000
 ;;21,"58016-0351-30 ")
 ;;2001
 ;;21,"58016-0351-40 ")
 ;;2002
 ;;21,"58016-0351-50 ")
 ;;2003
 ;;21,"58016-0351-60 ")
 ;;2004
 ;;21,"58016-0351-90 ")
 ;;2005
 ;;21,"58016-0366-00 ")
 ;;5343
 ;;21,"58016-0366-30 ")
 ;;5344
 ;;21,"58016-0366-60 ")
 ;;5345
 ;;21,"58016-0366-90 ")
 ;;5346
 ;;21,"58016-0485-00 ")
 ;;4013
 ;;21,"58016-0485-02 ")
 ;;4014
 ;;21,"58016-0485-10 ")
 ;;4015
 ;;21,"58016-0485-12 ")
 ;;4016
 ;;21,"58016-0485-15 ")
 ;;4017
 ;;21,"58016-0485-20 ")
 ;;4018
 ;;21,"58016-0485-25 ")
 ;;4019
 ;;21,"58016-0485-30 ")
 ;;4020
 ;;21,"58016-0485-40 ")
 ;;4021
 ;;21,"58016-0485-50 ")
 ;;4022
 ;;21,"58016-0485-60 ")
 ;;4023
 ;;21,"58016-0485-70 ")
 ;;4024
 ;;21,"58016-0485-80 ")
 ;;4025
 ;;21,"58016-0485-90 ")
 ;;4026
 ;;21,"58016-0491-00 ")
 ;;3456
 ;;21,"58016-0491-02 ")
 ;;3457
 ;;21,"58016-0491-15 ")
 ;;3458
 ;;21,"58016-0491-20 ")
 ;;3459
 ;;21,"58016-0491-25 ")
 ;;3460
 ;;21,"58016-0491-30 ")
 ;;3461
 ;;21,"58016-0491-40 ")
 ;;3462
 ;;21,"58016-0491-50 ")
 ;;3463
 ;;21,"58016-0491-60 ")
 ;;3464
 ;;21,"58016-0491-70 ")
 ;;3465
 ;;21,"58016-0491-80 ")
 ;;3466
 ;;21,"58016-0491-90 ")
 ;;3467
 ;;21,"58016-0502-00 ")
 ;;1539
 ;;21,"58016-0502-15 ")
 ;;1540
 ;;21,"58016-0502-28 ")
 ;;1541
 ;;21,"58016-0502-30 ")
 ;;1542
 ;;21,"58016-0502-50 ")
 ;;1543
 ;;21,"58016-0502-60 ")
 ;;1544
 ;;21,"58016-0508-00 ")
 ;;3468
 ;;21,"58016-0508-15 ")
 ;;3469
 ;;21,"58016-0508-30 ")
 ;;3470
 ;;21,"58016-0508-60 ")
 ;;3471
 ;;21,"58016-0519-00 ")
 ;;3472
 ;;21,"58016-0519-02 ")
 ;;3473
 ;;21,"58016-0519-12 ")
 ;;3474
 ;;21,"58016-0519-15 ")
 ;;3475
 ;;21,"58016-0519-20 ")
 ;;3476
 ;;21,"58016-0519-30 ")
 ;;3477
 ;;21,"58016-0519-40 ")
 ;;3478
 ;;21,"58016-0519-50 ")
 ;;3479
 ;;21,"58016-0519-60 ")
 ;;3480
 ;;21,"58016-0519-70 ")
 ;;3481
 ;;21,"58016-0519-80 ")
 ;;3482
 ;;21,"58016-0519-90 ")
 ;;3483
 ;;21,"58016-0519-99 ")
 ;;3484
 ;;21,"58016-0546-00 ")
 ;;3259
 ;;21,"58016-0546-30 ")
 ;;3260
 ;;21,"58016-0546-60 ")
 ;;3261
 ;;21,"58016-0546-90 ")
 ;;3262
 ;;21,"58016-0584-00 ")
 ;;680
 ;;21,"58016-0584-02 ")
 ;;681
 ;;21,"58016-0584-03 ")
 ;;682
 ;;21,"58016-0584-10 ")
 ;;683
 ;;21,"58016-0584-12 ")
 ;;684
 ;;21,"58016-0584-15 ")
 ;;685
 ;;21,"58016-0584-20 ")
 ;;686
 ;;21,"58016-0584-25 ")
 ;;687
 ;;21,"58016-0584-30 ")
 ;;688
 ;;21,"58016-0584-40 ")
 ;;689
 ;;21,"58016-0584-50 ")
 ;;690
 ;;21,"58016-0584-60 ")
 ;;691
 ;;21,"58016-0584-70 ")
 ;;692
 ;;21,"58016-0584-73 ")
 ;;693
 ;;21,"58016-0584-80 ")
 ;;694
 ;;21,"58016-0584-89 ")
 ;;695
 ;;21,"58016-0584-90 ")
 ;;696
 ;;21,"58016-0593-00 ")
 ;;940
 ;;21,"58016-0593-30 ")
 ;;941
 ;;21,"58016-0593-60 ")
 ;;942
 ;;21,"58016-0593-90 ")
 ;;943
 ;;21,"58016-0598-00 ")
 ;;944
 ;;21,"58016-0598-30 ")
 ;;945
 ;;21,"58016-0598-60 ")
 ;;946
 ;;21,"58016-0598-90 ")
 ;;947
 ;;21,"58016-0599-00 ")
 ;;5153
 ;;21,"58016-0599-30 ")
 ;;5154
 ;;21,"58016-0599-60 ")
 ;;5155
 ;;21,"58016-0599-90 ")
 ;;5156
 ;;21,"58016-0600-00 ")
 ;;4268
 ;;21,"58016-0600-30 ")
 ;;4269
 ;;21,"58016-0600-60 ")
 ;;4270
 ;;21,"58016-0600-90 ")
 ;;4271
 ;;21,"58016-0615-00 ")
 ;;2126
 ;;21,"58016-0615-30 ")
 ;;2127
 ;;21,"58016-0615-60 ")
 ;;2128
 ;;21,"58016-0615-90 ")
 ;;2129
 ;;21,"58016-0616-00 ")
 ;;2130
 ;;21,"58016-0616-30 ")
 ;;2131
 ;;21,"58016-0616-60 ")
 ;;2132
 ;;21,"58016-0616-90 ")
 ;;2133
 ;;21,"58016-0624-00 ")
 ;;4272
