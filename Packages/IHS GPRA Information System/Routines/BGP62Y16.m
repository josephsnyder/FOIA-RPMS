BGP62Y16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58016-0123-30 ")
 ;;3083
 ;;21,"58016-0123-40 ")
 ;;3084
 ;;21,"58016-0126-00 ")
 ;;3221
 ;;21,"58016-0126-15 ")
 ;;3222
 ;;21,"58016-0126-18 ")
 ;;3223
 ;;21,"58016-0126-20 ")
 ;;3224
 ;;21,"58016-0126-21 ")
 ;;3225
 ;;21,"58016-0126-28 ")
 ;;3226
 ;;21,"58016-0126-30 ")
 ;;3227
 ;;21,"58016-0126-42 ")
 ;;3228
 ;;21,"58016-0126-60 ")
 ;;3229
 ;;21,"58016-0126-99 ")
 ;;3230
 ;;21,"58016-0127-06 ")
 ;;3462
 ;;21,"58016-0127-08 ")
 ;;3463
 ;;21,"58016-0127-10 ")
 ;;3464
 ;;21,"58016-0127-14 ")
 ;;3465
 ;;21,"58016-0127-20 ")
 ;;3466
 ;;21,"58016-0127-21 ")
 ;;3467
 ;;21,"58016-0127-24 ")
 ;;3468
 ;;21,"58016-0127-28 ")
 ;;3469
 ;;21,"58016-0127-30 ")
 ;;3470
 ;;21,"58016-0127-40 ")
 ;;3471
 ;;21,"58016-0127-42 ")
 ;;3472
 ;;21,"58016-0127-50 ")
 ;;3473
 ;;21,"58016-0127-60 ")
 ;;3474
 ;;21,"58016-0137-00 ")
 ;;4269
 ;;21,"58016-0137-02 ")
 ;;4270
 ;;21,"58016-0137-10 ")
 ;;4271
 ;;21,"58016-0137-12 ")
 ;;4272
 ;;21,"58016-0137-15 ")
 ;;4273
 ;;21,"58016-0137-20 ")
 ;;4274
 ;;21,"58016-0137-30 ")
 ;;4275
 ;;21,"58016-0137-60 ")
 ;;4276
 ;;21,"58016-0137-90 ")
 ;;4277
 ;;21,"58016-0138-00 ")
 ;;1698
 ;;21,"58016-0138-02 ")
 ;;1699
 ;;21,"58016-0138-03 ")
 ;;1700
 ;;21,"58016-0138-12 ")
 ;;1701
 ;;21,"58016-0138-14 ")
 ;;1702
 ;;21,"58016-0138-15 ")
 ;;1703
 ;;21,"58016-0138-20 ")
 ;;1704
 ;;21,"58016-0138-21 ")
 ;;1705
 ;;21,"58016-0138-24 ")
 ;;1706
 ;;21,"58016-0138-28 ")
 ;;1707
 ;;21,"58016-0138-30 ")
 ;;1708
 ;;21,"58016-0138-40 ")
 ;;1709
 ;;21,"58016-0138-56 ")
 ;;1710
 ;;21,"58016-0138-60 ")
 ;;1711
 ;;21,"58016-0138-73 ")
 ;;1712
 ;;21,"58016-0138-89 ")
 ;;1713
 ;;21,"58016-0139-00 ")
 ;;2015
 ;;21,"58016-0139-02 ")
 ;;2016
 ;;21,"58016-0139-03 ")
 ;;2017
 ;;21,"58016-0139-04 ")
 ;;2018
 ;;21,"58016-0139-05 ")
 ;;2019
 ;;21,"58016-0139-06 ")
 ;;2020
 ;;21,"58016-0139-08 ")
 ;;2021
 ;;21,"58016-0139-10 ")
 ;;2022
 ;;21,"58016-0139-12 ")
 ;;2023
 ;;21,"58016-0139-14 ")
 ;;2024
 ;;21,"58016-0139-15 ")
 ;;2025
 ;;21,"58016-0139-18 ")
 ;;2026
 ;;21,"58016-0139-20 ")
 ;;2027
 ;;21,"58016-0139-21 ")
 ;;2028
 ;;21,"58016-0139-24 ")
 ;;2029
 ;;21,"58016-0139-28 ")
 ;;2030
 ;;21,"58016-0139-30 ")
 ;;2031
 ;;21,"58016-0139-40 ")
 ;;2032
 ;;21,"58016-0139-50 ")
 ;;2033
 ;;21,"58016-0139-56 ")
 ;;2034
 ;;21,"58016-0139-60 ")
 ;;2035
 ;;21,"58016-0139-73 ")
 ;;2036
 ;;21,"58016-0139-89 ")
 ;;2037
 ;;21,"58016-0145-18 ")
 ;;3255
 ;;21,"58016-0146-00 ")
 ;;3673
 ;;21,"58016-0146-02 ")
 ;;3674
 ;;21,"58016-0146-03 ")
 ;;3675
 ;;21,"58016-0146-10 ")
 ;;3676
 ;;21,"58016-0146-12 ")
 ;;3677
 ;;21,"58016-0146-16 ")
 ;;3678
 ;;21,"58016-0146-20 ")
 ;;3679
 ;;21,"58016-0146-21 ")
 ;;3680
 ;;21,"58016-0146-24 ")
 ;;3681
 ;;21,"58016-0146-28 ")
 ;;3682
 ;;21,"58016-0146-30 ")
 ;;3683
 ;;21,"58016-0146-40 ")
 ;;3684
 ;;21,"58016-0146-60 ")
 ;;3685
 ;;21,"58016-0146-73 ")
 ;;3686
 ;;21,"58016-0146-89 ")
 ;;3687
 ;;21,"58016-0146-90 ")
 ;;3688
 ;;21,"58016-0147-00 ")
 ;;3848
 ;;21,"58016-0147-02 ")
 ;;3849
 ;;21,"58016-0147-03 ")
 ;;3850
 ;;21,"58016-0147-06 ")
 ;;3851
 ;;21,"58016-0147-10 ")
 ;;3852
 ;;21,"58016-0147-12 ")
 ;;3853
 ;;21,"58016-0147-15 ")
 ;;3854
 ;;21,"58016-0147-16 ")
 ;;3855
 ;;21,"58016-0147-20 ")
 ;;3856
 ;;21,"58016-0147-21 ")
 ;;3857
 ;;21,"58016-0147-24 ")
 ;;3858
 ;;21,"58016-0147-28 ")
 ;;3859
 ;;21,"58016-0147-30 ")
 ;;3860
 ;;21,"58016-0147-40 ")
 ;;3861
 ;;21,"58016-0147-50 ")
 ;;3862
 ;;21,"58016-0147-60 ")
 ;;3863
 ;;21,"58016-0147-73 ")
 ;;3864
 ;;21,"58016-0147-89 ")
 ;;3865
 ;;21,"58016-0147-90 ")
 ;;3866
 ;;21,"58016-0148-00 ")
 ;;796
 ;;21,"58016-0148-08 ")
 ;;797
 ;;21,"58016-0148-09 ")
 ;;798
 ;;21,"58016-0148-10 ")
 ;;799
 ;;21,"58016-0148-12 ")
 ;;800
 ;;21,"58016-0148-14 ")
 ;;801
 ;;21,"58016-0148-15 ")
 ;;802
 ;;21,"58016-0148-20 ")
 ;;803
 ;;21,"58016-0148-24 ")
 ;;804
 ;;21,"58016-0148-28 ")
 ;;805
 ;;21,"58016-0148-30 ")
 ;;806
 ;;21,"58016-0148-40 ")
 ;;807
 ;;21,"58016-0148-50 ")
 ;;808
 ;;21,"58016-0149-00 ")
 ;;865
 ;;21,"58016-0149-07 ")
 ;;866
 ;;21,"58016-0149-10 ")
 ;;867
 ;;21,"58016-0149-20 ")
 ;;868
 ;;21,"58016-0149-21 ")
 ;;869
 ;;21,"58016-0149-24 ")
 ;;870
 ;;21,"58016-0149-25 ")
 ;;871
 ;;21,"58016-0149-28 ")
 ;;872
 ;;21,"58016-0149-30 ")
 ;;873
 ;;21,"58016-0149-40 ")
 ;;874
 ;;21,"58016-0156-00 ")
 ;;6236
 ;;21,"58016-0156-02 ")
 ;;6237
 ;;21,"58016-0156-03 ")
 ;;6238
 ;;21,"58016-0156-06 ")
 ;;6239
 ;;21,"58016-0156-07 ")
 ;;6240
 ;;21,"58016-0156-10 ")
 ;;6241
 ;;21,"58016-0156-12 ")
 ;;6242
 ;;21,"58016-0156-14 ")
 ;;6243
 ;;21,"58016-0156-15 ")
 ;;6244
 ;;21,"58016-0156-16 ")
 ;;6245
 ;;21,"58016-0156-20 ")
 ;;6246
 ;;21,"58016-0156-21 ")
 ;;6247
 ;;21,"58016-0156-24 ")
 ;;6248
 ;;21,"58016-0156-28 ")
 ;;6249
 ;;21,"58016-0156-30 ")
 ;;6250
 ;;21,"58016-0156-40 ")
 ;;6251
 ;;21,"58016-0156-60 ")
 ;;6252
 ;;21,"58016-0156-73 ")
 ;;6253
 ;;21,"58016-0156-89 ")
 ;;6254
 ;;21,"58016-0161-10 ")
 ;;6048
 ;;21,"58016-0161-12 ")
 ;;6049
 ;;21,"58016-0161-14 ")
 ;;6050
 ;;21,"58016-0161-15 ")
 ;;6051
 ;;21,"58016-0161-16 ")
 ;;6052
 ;;21,"58016-0161-18 ")
 ;;6053
 ;;21,"58016-0161-20 ")
 ;;6054
 ;;21,"58016-0161-21 ")
 ;;6055
 ;;21,"58016-0161-24 ")
 ;;6056
 ;;21,"58016-0161-28 ")
 ;;6057
 ;;21,"58016-0161-30 ")
 ;;6058
 ;;21,"58016-0161-40 ")
 ;;6059
 ;;21,"58016-0161-50 ")
 ;;6060
 ;;21,"58016-0161-60 ")
 ;;6061
 ;;21,"58016-0162-28 ")
 ;;3115
 ;;21,"58016-0162-30 ")
 ;;3116
 ;;21,"58016-0162-40 ")
 ;;3117
 ;;21,"58016-0167-00 ")
 ;;3475
 ;;21,"58016-0167-20 ")
 ;;3476
 ;;21,"58016-0167-40 ")
 ;;3477
 ;;21,"58016-0171-20 ")
 ;;5599
 ;;21,"58016-0171-30 ")
 ;;5600
 ;;21,"58016-0204-00 ")
 ;;5411
 ;;21,"58016-0204-30 ")
 ;;5412
 ;;21,"58016-0204-60 ")
 ;;5413
 ;;21,"58016-0204-90 ")
 ;;5414
 ;;21,"58016-0284-15 ")
 ;;6458
 ;;21,"58016-0284-20 ")
 ;;6459
 ;;21,"58016-0284-30 ")
 ;;6460
 ;;21,"58016-0284-50 ")
 ;;6461
 ;;21,"58016-0299-00 ")
 ;;2999
 ;;21,"58016-0299-30 ")
 ;;3000
 ;;21,"58016-0299-60 ")
 ;;3001
 ;;21,"58016-0299-90 ")
 ;;3002
 ;;21,"58016-0339-30 ")
 ;;5222
 ;;21,"58016-0391-00 ")
 ;;2716
 ;;21,"58016-0391-01 ")
 ;;2717
 ;;21,"58016-0391-06 ")
 ;;2718
 ;;21,"58016-0391-10 ")
 ;;2719
 ;;21,"58016-0391-15 ")
 ;;2720
 ;;21,"58016-0391-18 ")
 ;;2721
 ;;21,"58016-0391-20 ")
 ;;2722
 ;;21,"58016-0391-28 ")
 ;;2723
 ;;21,"58016-0391-30 ")
 ;;2724
 ;;21,"58016-0391-60 ")
 ;;2725
 ;;21,"58016-0391-90 ")
 ;;2726
 ;;21,"58016-0453-00 ")
 ;;2338
 ;;21,"58016-0453-12 ")
 ;;2339
 ;;21,"58016-0453-15 ")
 ;;2340
 ;;21,"58016-0453-20 ")
 ;;2341
 ;;21,"58016-0453-21 ")
 ;;2342
 ;;21,"58016-0453-30 ")
 ;;2343
 ;;21,"58016-0453-40 ")
 ;;2344
 ;;21,"58016-0550-10 ")
 ;;3003
 ;;21,"58016-0550-12 ")
 ;;3004
 ;;21,"58016-0550-14 ")
 ;;3005
 ;;21,"58016-0550-15 ")
 ;;3006
 ;;21,"58016-0550-20 ")
 ;;3007
 ;;21,"58016-0550-30 ")
 ;;3008
 ;;21,"58016-0550-40 ")
 ;;3009
 ;;21,"58016-0573-00 ")
 ;;4935
 ;;21,"58016-0573-07 ")
 ;;4936
 ;;21,"58016-0573-10 ")
 ;;4937
 ;;21,"58016-0573-20 ")
 ;;4938
 ;;21,"58016-0573-30 ")
 ;;4939
 ;;21,"58016-0573-60 ")
 ;;4940
 ;;21,"58016-0573-90 ")
 ;;4941
 ;;21,"58016-0633-00 ")
 ;;2038
 ;;21,"58016-0633-30 ")
 ;;2039
 ;;21,"58016-0633-60 ")
 ;;2040
 ;;21,"58016-0633-90 ")
 ;;2041
 ;;21,"58016-0634-00 ")
 ;;2480
 ;;21,"58016-0634-30 ")
 ;;2481
 ;;21,"58016-0634-60 ")
 ;;2482
 ;;21,"58016-0634-90 ")
 ;;2483
 ;;21,"58016-0643-00 ")
 ;;752
 ;;21,"58016-0643-02 ")
 ;;753
 ;;21,"58016-0643-04 ")
 ;;754
 ;;21,"58016-0643-09 ")
 ;;755
 ;;21,"58016-0643-12 ")
 ;;756
 ;;21,"58016-0643-15 ")
 ;;757
 ;;21,"58016-0643-18 ")
 ;;758
 ;;21,"58016-0643-20 ")
 ;;759
 ;;21,"58016-0643-21 ")
 ;;760
 ;;21,"58016-0643-24 ")
 ;;761
 ;;21,"58016-0643-30 ")
 ;;762
 ;;21,"58016-0643-40 ")
 ;;763
 ;;21,"58016-0643-50 ")
 ;;764
 ;;21,"58016-0643-60 ")
 ;;765
 ;;21,"58016-0643-89 ")
 ;;766
 ;;21,"58016-0643-90 ")
 ;;767
 ;;21,"58016-0643-99 ")
 ;;768
 ;;21,"58016-0872-12 ")
 ;;5147
 ;;21,"58016-0872-15 ")
 ;;5148
 ;;21,"58016-0872-18 ")
 ;;5149
 ;;21,"58016-0872-20 ")
 ;;5150
 ;;21,"58016-0872-24 ")
 ;;5151
 ;;21,"58016-0872-30 ")
 ;;5152
 ;;21,"58016-0873-00 ")
 ;;6526
 ;;21,"58016-0873-15 ")
 ;;6527
 ;;21,"58016-0873-20 ")
 ;;6528
 ;;21,"58016-0873-30 ")
 ;;6529
 ;;21,"58016-0924-00 ")
 ;;4824
 ;;21,"58016-0924-30 ")
 ;;4825
 ;;21,"58016-0924-60 ")
 ;;4826
 ;;21,"58016-0924-90 ")
 ;;4827
 ;;21,"58016-0953-00 ")
 ;;4573
 ;;21,"58016-0953-02 ")
 ;;4574
 ;;21,"58016-0953-10 ")
 ;;4575
 ;;21,"58016-0953-12 ")
 ;;4576
 ;;21,"58016-0953-15 ")
 ;;4577
 ;;21,"58016-0953-20 ")
 ;;4578
 ;;21,"58016-0953-30 ")
 ;;4579
 ;;21,"58016-0953-60 ")
 ;;4580
 ;;21,"58016-0953-90 ")
 ;;4581
 ;;21,"58016-0955-00 ")
 ;;5920
 ;;21,"58016-0955-30 ")
 ;;5921
 ;;21,"58016-0955-60 ")
 ;;5922
 ;;21,"58016-0955-90 ")
 ;;5923
 ;;21,"58016-0957-00 ")
 ;;4743
 ;;21,"58016-0957-02 ")
 ;;4744
 ;;21,"58016-0957-10 ")
 ;;4745
 ;;21,"58016-0957-12 ")
 ;;4746
 ;;21,"58016-0957-15 ")
 ;;4747
 ;;21,"58016-0957-20 ")
 ;;4748
 ;;21,"58016-0957-30 ")
 ;;4749
 ;;21,"58016-0957-60 ")
 ;;4750
 ;;21,"58016-0957-90 ")
 ;;4751
 ;;21,"58016-0964-00 ")
 ;;5484
 ;;21,"58016-0964-30 ")
 ;;5485
 ;;21,"58016-0964-60 ")
 ;;5486
 ;;21,"58016-0964-90 ")
 ;;5487
 ;;21,"58016-0975-00 ")
 ;;4987
 ;;21,"58016-0975-30 ")
 ;;4988
 ;;21,"58016-0975-60 ")
 ;;4989
 ;;21,"58016-0975-90 ")
 ;;4990
 ;;21,"58016-1004-01 ")
 ;;125
 ;;21,"58016-1005-01 ")
 ;;415
 ;;21,"58016-1006-01 ")
 ;;416
 ;;21,"58016-1007-01 ")
 ;;417
 ;;21,"58016-1011-01 ")
 ;;999
 ;;21,"58016-1019-01 ")
 ;;1570
 ;;21,"58016-1021-01 ")
 ;;1796
 ;;21,"58016-1023-01 ")
 ;;3566
 ;;21,"58016-1024-01 ")
 ;;3567
 ;;21,"58016-1025-01 ")
 ;;3568
 ;;21,"58016-1026-01 ")
 ;;3612
 ;;21,"58016-1027-01 ")
 ;;3613
 ;;21,"58016-1028-01 ")
 ;;3737
 ;;21,"58016-1029-01 ")
 ;;3738
 ;;21,"58016-1033-01 ")
 ;;835
 ;;21,"58016-1034-01 ")
 ;;836
 ;;21,"58016-1035-01 ")
 ;;5564
 ;;21,"58016-1036-01 ")
 ;;3376
 ;;21,"58016-1037-01 ")
 ;;3377
 ;;21,"58016-1038-01 ")
 ;;3493
 ;;21,"58016-1039-01 ")
 ;;3494
 ;;21,"58016-1045-01 ")
 ;;1797
 ;;21,"58016-1046-01 ")
 ;;1571
 ;;21,"58016-4192-01 ")
 ;;5178
 ;;21,"58016-4786-01 ")
 ;;6807
 ;;21,"58016-4790-01 ")
 ;;6885
 ;;21,"58016-4804-01 ")
 ;;1146
 ;;21,"58016-4807-01 ")
 ;;7047
 ;;21,"58016-4814-01 ")
 ;;2727
 ;;21,"58016-4834-01 ")
 ;;6850
 ;;21,"58016-4842-01 ")
 ;;959
 ;;21,"58016-4847-01 ")
 ;;3569
 ;;21,"58016-4869-01 ")
 ;;932
 ;;21,"58016-4873-01 ")
 ;;6851
 ;;21,"58016-4990-01 ")
 ;;1280
 ;;21,"58016-9438-01 ")
 ;;6808
 ;;21,"58016-9551-01 ")
 ;;6926
 ;;21,"58463-0002-30 ")
 ;;718
 ;;21,"58864-0029-30 ")
 ;;647
 ;;21,"58864-0029-40 ")
 ;;648
 ;;21,"58864-0034-10 ")
 ;;4942
 ;;21,"58864-0034-14 ")
 ;;4943
 ;;21,"58864-0067-20 ")
 ;;3010
 ;;21,"58864-0072-30 ")
 ;;1714
 ;;21,"58864-0072-40 ")
 ;;1715
 ;;21,"58864-0073-20 ")
 ;;2042
 ;;21,"58864-0073-28 ")
 ;;2043
