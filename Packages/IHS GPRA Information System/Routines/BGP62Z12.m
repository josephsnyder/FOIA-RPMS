BGP62Z12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58016-0833-50 ")
 ;;4791
 ;;21,"58016-0833-60 ")
 ;;4792
 ;;21,"58016-0833-90 ")
 ;;4793
 ;;21,"58016-0834-00 ")
 ;;4849
 ;;21,"58016-0834-10 ")
 ;;4850
 ;;21,"58016-0834-14 ")
 ;;4851
 ;;21,"58016-0834-15 ")
 ;;4852
 ;;21,"58016-0834-20 ")
 ;;4853
 ;;21,"58016-0834-21 ")
 ;;4854
 ;;21,"58016-0834-30 ")
 ;;4855
 ;;21,"58016-0834-40 ")
 ;;4856
 ;;21,"58016-0834-50 ")
 ;;4857
 ;;21,"58016-0834-60 ")
 ;;4858
 ;;21,"58016-0834-90 ")
 ;;4859
 ;;21,"58016-0839-00 ")
 ;;4914
 ;;21,"58016-0839-02 ")
 ;;4915
 ;;21,"58016-0839-12 ")
 ;;4916
 ;;21,"58016-0839-15 ")
 ;;4917
 ;;21,"58016-0839-20 ")
 ;;4918
 ;;21,"58016-0839-30 ")
 ;;4919
 ;;21,"58016-0839-60 ")
 ;;4920
 ;;21,"58016-0839-90 ")
 ;;4921
 ;;21,"58016-0841-00 ")
 ;;4956
 ;;21,"58016-0841-02 ")
 ;;4957
 ;;21,"58016-0841-12 ")
 ;;4958
 ;;21,"58016-0841-15 ")
 ;;4959
 ;;21,"58016-0841-20 ")
 ;;4960
 ;;21,"58016-0841-30 ")
 ;;4961
 ;;21,"58016-0841-60 ")
 ;;4962
 ;;21,"58016-0841-90 ")
 ;;4963
 ;;21,"58016-0853-00 ")
 ;;4641
 ;;21,"58016-0853-02 ")
 ;;4642
 ;;21,"58016-0853-03 ")
 ;;4643
 ;;21,"58016-0853-14 ")
 ;;4644
 ;;21,"58016-0853-15 ")
 ;;4645
 ;;21,"58016-0853-20 ")
 ;;4646
 ;;21,"58016-0853-28 ")
 ;;4647
 ;;21,"58016-0853-30 ")
 ;;4648
 ;;21,"58016-0853-50 ")
 ;;4649
 ;;21,"58016-0853-60 ")
 ;;4650
 ;;21,"58016-0853-73 ")
 ;;4651
 ;;21,"58016-0853-89 ")
 ;;4652
 ;;21,"58016-0853-90 ")
 ;;4653
 ;;21,"58016-0858-00 ")
 ;;4155
 ;;21,"58016-0858-14 ")
 ;;4156
 ;;21,"58016-0858-21 ")
 ;;4157
 ;;21,"58016-0858-28 ")
 ;;4158
 ;;21,"58016-0858-30 ")
 ;;4159
 ;;21,"58016-0858-40 ")
 ;;4160
 ;;21,"58016-0858-50 ")
 ;;4161
 ;;21,"58016-0858-60 ")
 ;;4162
 ;;21,"58016-0858-99 ")
 ;;4163
 ;;21,"58016-0862-00 ")
 ;;603
 ;;21,"58016-0862-02 ")
 ;;604
 ;;21,"58016-0862-03 ")
 ;;605
 ;;21,"58016-0862-12 ")
 ;;606
 ;;21,"58016-0862-15 ")
 ;;607
 ;;21,"58016-0862-20 ")
 ;;608
 ;;21,"58016-0862-30 ")
 ;;609
 ;;21,"58016-0862-50 ")
 ;;610
 ;;21,"58016-0862-60 ")
 ;;611
 ;;21,"58016-0862-73 ")
 ;;612
 ;;21,"58016-0862-89 ")
 ;;613
 ;;21,"58016-0862-90 ")
 ;;614
 ;;21,"58016-0866-00 ")
 ;;4997
 ;;21,"58016-0866-02 ")
 ;;4998
 ;;21,"58016-0866-12 ")
 ;;4999
 ;;21,"58016-0866-15 ")
 ;;5000
 ;;21,"58016-0866-20 ")
 ;;5001
 ;;21,"58016-0866-30 ")
 ;;5002
 ;;21,"58016-0866-60 ")
 ;;5003
 ;;21,"58016-0866-90 ")
 ;;5004
 ;;21,"58016-0875-00 ")
 ;;5268
 ;;21,"58016-0875-12 ")
 ;;5269
 ;;21,"58016-0875-15 ")
 ;;5270
 ;;21,"58016-0875-20 ")
 ;;5271
 ;;21,"58016-0875-30 ")
 ;;5272
 ;;21,"58016-0875-60 ")
 ;;5273
 ;;21,"58016-0880-00 ")
 ;;705
 ;;21,"58016-0880-12 ")
 ;;706
 ;;21,"58016-0880-15 ")
 ;;707
 ;;21,"58016-0880-20 ")
 ;;708
 ;;21,"58016-0880-30 ")
 ;;709
 ;;21,"58016-0881-00 ")
 ;;227
 ;;21,"58016-0881-02 ")
 ;;228
 ;;21,"58016-0881-03 ")
 ;;229
 ;;21,"58016-0881-30 ")
 ;;230
 ;;21,"58016-0881-60 ")
 ;;231
 ;;21,"58016-0881-90 ")
 ;;232
 ;;21,"58016-0894-00 ")
 ;;3780
 ;;21,"58016-0894-02 ")
 ;;3781
 ;;21,"58016-0894-03 ")
 ;;3782
 ;;21,"58016-0894-30 ")
 ;;3783
 ;;21,"58016-0894-60 ")
 ;;3784
 ;;21,"58016-0894-90 ")
 ;;3785
 ;;21,"58016-0894-99 ")
 ;;3786
 ;;21,"58016-0897-00 ")
 ;;2931
 ;;21,"58016-0897-30 ")
 ;;2932
 ;;21,"58016-0897-60 ")
 ;;2933
 ;;21,"58016-0897-90 ")
 ;;2934
 ;;21,"58016-0905-00 ")
 ;;2575
 ;;21,"58016-0905-02 ")
 ;;2576
 ;;21,"58016-0905-03 ")
 ;;2577
 ;;21,"58016-0905-10 ")
 ;;2578
 ;;21,"58016-0905-20 ")
 ;;2579
 ;;21,"58016-0905-30 ")
 ;;2580
 ;;21,"58016-0905-60 ")
 ;;2581
 ;;21,"58016-0905-73 ")
 ;;2582
 ;;21,"58016-0905-89 ")
 ;;2583
 ;;21,"58016-0907-00 ")
 ;;3195
 ;;21,"58016-0907-30 ")
 ;;3196
 ;;21,"58016-0907-60 ")
 ;;3197
 ;;21,"58016-0907-90 ")
 ;;3198
 ;;21,"58016-0977-00 ")
 ;;2161
 ;;21,"58016-0977-02 ")
 ;;2162
 ;;21,"58016-0977-30 ")
 ;;2163
 ;;21,"58016-0977-60 ")
 ;;2164
 ;;21,"58016-0977-90 ")
 ;;2165
 ;;21,"58016-0986-00 ")
 ;;3873
 ;;21,"58016-0986-02 ")
 ;;3874
 ;;21,"58016-0986-03 ")
 ;;3875
 ;;21,"58016-0986-30 ")
 ;;3876
 ;;21,"58016-0986-60 ")
 ;;3877
 ;;21,"58016-0986-90 ")
 ;;3878
 ;;21,"58016-4825-01 ")
 ;;3821
 ;;21,"58016-4826-01 ")
 ;;3917
 ;;21,"58809-0717-01 ")
 ;;4449
 ;;21,"58864-0022-15 ")
 ;;4326
 ;;21,"58864-0022-30 ")
 ;;4327
 ;;21,"58864-0023-30 ")
 ;;4450
 ;;21,"58864-0024-30 ")
 ;;4080
 ;;21,"58864-0025-01 ")
 ;;867
 ;;21,"58864-0025-14 ")
 ;;868
 ;;21,"58864-0025-30 ")
 ;;869
 ;;21,"58864-0025-60 ")
 ;;870
 ;;21,"58864-0103-15 ")
 ;;2584
 ;;21,"58864-0103-30 ")
 ;;2585
 ;;21,"58864-0103-60 ")
 ;;2586
 ;;21,"58864-0372-30 ")
 ;;3053
 ;;21,"58864-0616-15 ")
 ;;2061
 ;;21,"58864-0616-30 ")
 ;;2062
 ;;21,"58864-0625-30 ")
 ;;233
 ;;21,"58864-0625-60 ")
 ;;234
 ;;21,"58864-0627-15 ")
 ;;3413
 ;;21,"58864-0627-30 ")
 ;;3414
 ;;21,"58864-0628-15 ")
 ;;3250
 ;;21,"58864-0629-30 ")
 ;;1538
 ;;21,"58864-0696-30 ")
 ;;1347
 ;;21,"58864-0707-30 ")
 ;;3681
 ;;21,"58864-0715-30 ")
 ;;126
 ;;21,"58864-0716-30 ")
 ;;3251
 ;;21,"58864-0741-15 ")
 ;;3054
 ;;21,"58864-0741-30 ")
 ;;3055
 ;;21,"58864-0756-30 ")
 ;;1229
 ;;21,"58864-0757-30 ")
 ;;4164
 ;;21,"58864-0783-30 ")
 ;;615
 ;;21,"58864-0794-30 ")
 ;;436
 ;;21,"58864-0808-90 ")
 ;;65
 ;;21,"58864-0812-15 ")
 ;;2063
 ;;21,"58864-0823-15 ")
 ;;3879
 ;;21,"58864-0823-30 ")
 ;;3880
 ;;21,"58864-0840-30 ")
 ;;235
 ;;21,"58864-0840-60 ")
 ;;127
 ;;21,"58864-0849-30 ")
 ;;1737
 ;;21,"58864-0852-30 ")
 ;;1905
 ;;21,"58864-0917-30 ")
 ;;2587
 ;;21,"59746-0280-01 ")
 ;;2166
 ;;21,"59746-0281-01 ")
 ;;2235
 ;;21,"59746-0316-60 ")
 ;;236
 ;;21,"59762-0119-01 ")
 ;;463
 ;;21,"59762-0180-01 ")
 ;;1348
 ;;21,"59762-0180-02 ")
 ;;1349
 ;;21,"59762-0180-03 ")
 ;;1350
 ;;21,"59762-0180-04 ")
 ;;1351
 ;;21,"59762-0181-01 ")
 ;;1539
 ;;21,"59762-0181-02 ")
 ;;1540
 ;;21,"59762-0181-03 ")
 ;;1541
 ;;21,"59762-0181-04 ")
 ;;1542
 ;;21,"59762-0182-01 ")
 ;;1230
 ;;21,"59762-0182-02 ")
 ;;1231
 ;;21,"59762-0182-03 ")
 ;;1232
 ;;21,"59762-0182-04 ")
 ;;1233
 ;;21,"59762-1410-07 ")
 ;;3822
 ;;21,"59762-1412-07 ")
 ;;3918
 ;;21,"59762-1414-07 ")
 ;;3978
 ;;21,"59762-1415-03 ")
 ;;3987
 ;;21,"59762-1415-05 ")
 ;;3988
 ;;21,"59762-1415-06 ")
 ;;3989
 ;;21,"59762-1415-09 ")
 ;;3990
 ;;21,"59762-1416-03 ")
 ;;3787
 ;;21,"59762-1416-05 ")
 ;;3788
 ;;21,"59762-1416-06 ")
 ;;3789
 ;;21,"59762-1416-09 ")
 ;;3790
 ;;21,"59762-1417-03 ")
 ;;3881
 ;;21,"59762-1417-05 ")
 ;;3882
 ;;21,"59762-1417-06 ")
 ;;3883
 ;;21,"59762-1417-09 ")
 ;;3884
 ;;21,"59762-1418-03 ")
 ;;3955
 ;;21,"59762-1418-05 ")
 ;;3956
 ;;21,"59762-1418-06 ")
 ;;3957
 ;;21,"59762-1418-09 ")
 ;;3958
 ;;21,"59762-1808-01 ")
 ;;2880
 ;;21,"59762-1808-02 ")
 ;;2881
 ;;21,"59762-1808-03 ")
 ;;2882
 ;;21,"59762-1810-01 ")
 ;;3056
 ;;21,"59762-1810-02 ")
 ;;3057
 ;;21,"59762-1810-03 ")
 ;;3058
 ;;21,"59762-1810-04 ")
 ;;3059
 ;;21,"59762-1812-01 ")
 ;;3167
 ;;21,"59762-1812-02 ")
 ;;3168
 ;;21,"59762-1812-03 ")
 ;;3169
 ;;21,"59762-1815-01 ")
 ;;3252
 ;;21,"59762-1815-02 ")
 ;;3253
 ;;21,"59762-1815-03 ")
 ;;3254
 ;;21,"59762-3480-03 ")
 ;;1297
 ;;21,"59762-3481-02 ")
 ;;1426
 ;;21,"59762-3482-02 ")
 ;;1473
 ;;21,"59762-3483-02 ")
 ;;1633
 ;;21,"59762-3484-02 ")
 ;;1175
 ;;21,"59762-4800-01 ")
 ;;1738
 ;;21,"59762-4800-03 ")
 ;;1739
 ;;21,"59762-4800-05 ")
 ;;1740
 ;;21,"59762-4800-06 ")
 ;;1741
 ;;21,"59762-4801-01 ")
 ;;1906
 ;;21,"59762-4801-03 ")
 ;;1907
 ;;21,"59762-4801-05 ")
 ;;1908
 ;;21,"59762-4801-06 ")
 ;;1909
 ;;21,"59762-4802-01 ")
 ;;2064
 ;;21,"59762-4802-03 ")
 ;;2065
 ;;21,"59762-4802-05 ")
 ;;2066
 ;;21,"59762-4802-06 ")
 ;;2067
 ;;21,"59762-4900-01 ")
 ;;3682
 ;;21,"59762-4900-02 ")
 ;;3683
 ;;21,"59762-4900-03 ")
 ;;3684
 ;;21,"59762-4900-04 ")
 ;;3685
 ;;21,"59762-4900-05 ")
 ;;3686
 ;;21,"59762-4910-01 ")
 ;;3415
 ;;21,"59762-4910-02 ")
 ;;3416
 ;;21,"59762-4910-03 ")
 ;;3417
 ;;21,"59762-4910-04 ")
 ;;3418
 ;;21,"59762-4910-05 ")
 ;;3419
 ;;21,"59762-4940-01 ")
 ;;3463
 ;;21,"59762-4960-01 ")
 ;;3538
 ;;21,"59772-3171-01 ")
 ;;710
 ;;21,"60258-0830-08 ")
 ;;1774
 ;;21,"60429-0016-18 ")
 ;;4328
 ;;21,"60429-0016-30 ")
 ;;4329
 ;;21,"60429-0016-60 ")
 ;;4330
 ;;21,"60429-0016-90 ")
 ;;4331
 ;;21,"60429-0017-30 ")
 ;;4451
 ;;21,"60429-0095-01 ")
 ;;4922
 ;;21,"60429-0095-10 ")
 ;;4923
 ;;21,"60429-0096-01 ")
 ;;4964
 ;;21,"60429-0096-10 ")
 ;;4965
 ;;21,"60429-0097-01 ")
 ;;5005
 ;;21,"60429-0097-10 ")
 ;;5006
 ;;21,"60429-0164-60 ")
 ;;1013
 ;;21,"60429-0165-30 ")
 ;;1064
 ;;21,"60429-0165-90 ")
 ;;1065
 ;;21,"60429-0166-10 ")
 ;;1132
 ;;21,"60429-0166-30 ")
 ;;1133
 ;;21,"60429-0173-01 ")
 ;;1742
 ;;21,"60429-0173-10 ")
 ;;1743
 ;;21,"60429-0173-30 ")
 ;;1744
 ;;21,"60429-0174-01 ")
 ;;1910
 ;;21,"60429-0174-10 ")
 ;;1911
 ;;21,"60429-0174-30 ")
 ;;1912
 ;;21,"60429-0175-01 ")
 ;;2068
 ;;21,"60429-0175-10 ")
 ;;2069
 ;;21,"60429-0175-30 ")
 ;;2070
 ;;21,"60429-0187-05 ")
 ;;871
 ;;21,"60429-0187-30 ")
 ;;872
 ;;21,"60429-0188-01 ")
 ;;616
 ;;21,"60429-0188-05 ")
 ;;617
 ;;21,"60429-0188-30 ")
 ;;618
 ;;21,"60429-0188-60 ")
 ;;619
 ;;21,"60429-0188-90 ")
 ;;620
 ;;21,"60429-0230-01 ")
 ;;711
 ;;21,"60429-0230-05 ")
 ;;712
 ;;21,"60429-0230-30 ")
 ;;713
 ;;21,"60429-0230-90 ")
 ;;714
 ;;21,"60429-0287-30 ")
 ;;4555
 ;;21,"60429-0287-90 ")
 ;;4556
 ;;21,"60429-0288-30 ")
 ;;4581
 ;;21,"60429-0288-90 ")
 ;;4582
 ;;21,"60429-0289-30 ")
 ;;4570
 ;;21,"60429-0289-90 ")
 ;;4571
 ;;21,"60429-0718-18 ")
 ;;2368
 ;;21,"60429-0718-30 ")
 ;;2369
 ;;21,"60429-0718-60 ")
 ;;2370
 ;;21,"60429-0718-90 ")
 ;;2371
 ;;21,"60429-0719-18 ")
 ;;2588
 ;;21,"60429-0719-30 ")
 ;;2589
 ;;21,"60429-0719-60 ")
 ;;2590
 ;;21,"60429-0719-90 ")
 ;;2591
 ;;21,"60429-0734-05 ")
 ;;2883
 ;;21,"60429-0734-10 ")
 ;;2884
 ;;21,"60429-0734-30 ")
 ;;2885
 ;;21,"60429-0734-90 ")
 ;;2886
 ;;21,"60429-0735-01 ")
 ;;3060
 ;;21,"60429-0735-05 ")
 ;;3061
 ;;21,"60429-0735-10 ")
 ;;3062
 ;;21,"60429-0735-30 ")
 ;;3063
 ;;21,"60429-0735-90 ")
 ;;3064
 ;;21,"60429-0736-05 ")
 ;;3170
 ;;21,"60429-0736-30 ")
 ;;3171
 ;;21,"60429-0736-90 ")
 ;;3172
 ;;21,"60429-0737-05 ")
 ;;3255
 ;;21,"60429-0737-10 ")
 ;;3256
 ;;21,"60429-0737-15 ")
 ;;3257
 ;;21,"60429-0737-30 ")
 ;;3258
 ;;21,"60429-0737-45 ")
 ;;3259
 ;;21,"60429-0737-90 ")
 ;;3260
 ;;21,"60429-0758-01 ")
 ;;2794
 ;;21,"60429-0759-01 ")
 ;;2808
 ;;21,"60429-0759-30 ")
 ;;2809
 ;;21,"60429-0759-90 ")
 ;;2810
 ;;21,"60429-0760-01 ")
 ;;2773
 ;;21,"60429-0760-30 ")
 ;;2774
 ;;21,"60429-0760-90 ")
 ;;2775
 ;;21,"60429-0930-01 ")
 ;;715
 ;;21,"60429-0930-05 ")
 ;;716
 ;;21,"60429-0930-30 ")
 ;;717
 ;;21,"60429-0930-90 ")
 ;;718
 ;;21,"60429-0946-01 ")
 ;;437
 ;;21,"60429-0946-05 ")
 ;;438
 ;;21,"60429-0947-01 ")
 ;;66
 ;;21,"60429-0947-05 ")
 ;;67
 ;;21,"60429-0987-01 ")
 ;;873
 ;;21,"60429-0987-05 ")
 ;;874
 ;;21,"60429-0987-30 ")
 ;;875
 ;;21,"60429-0987-60 ")
 ;;876
 ;;21,"60429-0987-90 ")
 ;;877
 ;;21,"60429-0988-01 ")
 ;;621
 ;;21,"60429-0988-05 ")
 ;;622
