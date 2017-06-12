BGP62Y10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"50383-0286-11 ")
 ;;4772
 ;;21,"50383-0286-16 ")
 ;;4773
 ;;21,"50383-0286-21 ")
 ;;4774
 ;;21,"50383-0823-16 ")
 ;;5544
 ;;21,"50383-0824-16 ")
 ;;5545
 ;;21,"50383-0824-21 ")
 ;;5546
 ;;21,"50419-0754-01 ")
 ;;4459
 ;;21,"50419-0758-01 ")
 ;;4213
 ;;21,"50419-0759-01 ")
 ;;4095
 ;;21,"50419-0773-01 ")
 ;;4680
 ;;21,"50419-0777-01 ")
 ;;4318
 ;;21,"50419-0788-01 ")
 ;;4667
 ;;21,"50419-0789-01 ")
 ;;4152
 ;;21,"50458-0164-20 ")
 ;;4104
 ;;21,"50458-0165-30 ")
 ;;4105
 ;;21,"50458-0166-01 ")
 ;;4141
 ;;21,"50458-0167-01 ")
 ;;4118
 ;;21,"50458-0168-01 ")
 ;;4130
 ;;21,"50458-0170-01 ")
 ;;4775
 ;;21,"50458-0920-10 ")
 ;;4800
 ;;21,"50458-0920-50 ")
 ;;4801
 ;;21,"50458-0925-10 ")
 ;;4894
 ;;21,"50458-0925-50 ")
 ;;4895
 ;;21,"50458-0930-10 ")
 ;;4976
 ;;21,"50458-0930-20 ")
 ;;4977
 ;;21,"50962-0302-20 ")
 ;;5547
 ;;21,"51079-0016-01 ")
 ;;5376
 ;;21,"51079-0016-20 ")
 ;;5377
 ;;21,"51079-0017-01 ")
 ;;5463
 ;;21,"51079-0017-20 ")
 ;;5464
 ;;21,"51079-0034-01 ")
 ;;4802
 ;;21,"51079-0034-20 ")
 ;;4803
 ;;21,"51079-0035-01 ")
 ;;4896
 ;;21,"51079-0035-20 ")
 ;;4897
 ;;21,"51079-0040-01 ")
 ;;2676
 ;;21,"51079-0040-20 ")
 ;;2677
 ;;21,"51079-0128-01 ")
 ;;5720
 ;;21,"51079-0128-08 ")
 ;;5721
 ;;21,"51079-0128-20 ")
 ;;5722
 ;;21,"51079-0128-90 ")
 ;;5723
 ;;21,"51079-0128-92 ")
 ;;5724
 ;;21,"51079-0181-01 ")
 ;;4214
 ;;21,"51079-0181-20 ")
 ;;4215
 ;;21,"51079-0182-01 ")
 ;;4460
 ;;21,"51079-0182-20 ")
 ;;4461
 ;;21,"51079-0265-01 ")
 ;;1094
 ;;21,"51079-0265-20 ")
 ;;1095
 ;;21,"51079-0267-01 ")
 ;;1246
 ;;21,"51079-0267-20 ")
 ;;1247
 ;;21,"51079-0402-01 ")
 ;;4216
 ;;21,"51079-0402-20 ")
 ;;4217
 ;;21,"51079-0403-01 ")
 ;;4462
 ;;21,"51079-0403-20 ")
 ;;4463
 ;;21,"51079-0591-01 ")
 ;;2678
 ;;21,"51079-0591-20 ")
 ;;2679
 ;;21,"51079-0598-01 ")
 ;;2282
 ;;21,"51079-0598-17 ")
 ;;2283
 ;;21,"51079-0598-19 ")
 ;;2284
 ;;21,"51079-0598-20 ")
 ;;2285
 ;;21,"51079-0601-01 ")
 ;;594
 ;;21,"51079-0601-20 ")
 ;;595
 ;;21,"51079-0604-01 ")
 ;;1650
 ;;21,"51079-0604-20 ")
 ;;1651
 ;;21,"51079-0605-01 ")
 ;;1945
 ;;21,"51079-0605-20 ")
 ;;1946
 ;;21,"51079-0672-01 ")
 ;;2895
 ;;21,"51079-0672-20 ")
 ;;2896
 ;;21,"51079-0673-01 ")
 ;;2968
 ;;21,"51079-0673-06 ")
 ;;2969
 ;;21,"51285-0445-21 ")
 ;;3554
 ;;21,"51285-0445-22 ")
 ;;3555
 ;;21,"51285-0445-23 ")
 ;;3556
 ;;21,"51655-0009-52 ")
 ;;3643
 ;;21,"51655-0009-87 ")
 ;;3644
 ;;21,"51655-0010-24 ")
 ;;3806
 ;;21,"51655-0010-29 ")
 ;;3807
 ;;21,"51655-0010-51 ")
 ;;3808
 ;;21,"51655-0010-52 ")
 ;;3809
 ;;21,"51655-0024-87 ")
 ;;1652
 ;;21,"51655-0075-87 ")
 ;;223
 ;;21,"51655-0097-27 ")
 ;;6618
 ;;21,"51655-0110-31 ")
 ;;1248
 ;;21,"51655-0112-31 ")
 ;;5725
 ;;21,"51655-0112-51 ")
 ;;5726
 ;;21,"51655-0112-53 ")
 ;;5727
 ;;21,"51655-0115-84 ")
 ;;4218
 ;;21,"51655-0115-87 ")
 ;;4219
 ;;21,"51655-0118-29 ")
 ;;4464
 ;;21,"51655-0118-47 ")
 ;;4465
 ;;21,"51655-0118-52 ")
 ;;4466
 ;;21,"51655-0118-53 ")
 ;;4467
 ;;21,"51655-0118-84 ")
 ;;4468
 ;;21,"51655-0118-87 ")
 ;;4469
 ;;21,"51655-0120-29 ")
 ;;3433
 ;;21,"51655-0186-29 ")
 ;;5998
 ;;21,"51655-0194-29 ")
 ;;6700
 ;;21,"51655-0297-51 ")
 ;;3316
 ;;21,"51655-0412-24 ")
 ;;6173
 ;;21,"51655-0480-24 ")
 ;;3191
 ;;21,"51655-0519-29 ")
 ;;3135
 ;;21,"51655-0519-51 ")
 ;;3136
 ;;21,"51655-0537-84 ")
 ;;4220
 ;;21,"51655-0537-87 ")
 ;;4221
 ;;21,"51655-0698-28 ")
 ;;5143
 ;;21,"51655-0917-24 ")
 ;;328
 ;;21,"51655-0933-24 ")
 ;;5211
 ;;21,"51655-0964-24 ")
 ;;2286
 ;;21,"51655-0964-29 ")
 ;;2287
 ;;21,"51655-0964-52 ")
 ;;2288
 ;;21,"51655-0964-89 ")
 ;;2289
 ;;21,"51862-0558-06 ")
 ;;6304
 ;;21,"51991-0034-52 ")
 ;;6442
 ;;21,"52343-0062-20 ")
 ;;5378
 ;;21,"52343-0062-60 ")
 ;;5379
 ;;21,"52343-0063-20 ")
 ;;5465
 ;;21,"52343-0063-60 ")
 ;;5466
 ;;21,"52533-0014-42 ")
 ;;1387
 ;;21,"52533-0015-14 ")
 ;;1355
 ;;21,"52555-0771-01 ")
 ;;4706
 ;;21,"52959-0004-05 ")
 ;;5026
 ;;21,"52959-0011-20 ")
 ;;224
 ;;21,"52959-0011-21 ")
 ;;225
 ;;21,"52959-0011-24 ")
 ;;226
 ;;21,"52959-0011-30 ")
 ;;227
 ;;21,"52959-0011-40 ")
 ;;228
 ;;21,"52959-0011-60 ")
 ;;229
 ;;21,"52959-0020-00 ")
 ;;596
 ;;21,"52959-0020-05 ")
 ;;597
 ;;21,"52959-0020-06 ")
 ;;598
 ;;21,"52959-0020-18 ")
 ;;599
 ;;21,"52959-0020-20 ")
 ;;600
 ;;21,"52959-0020-21 ")
 ;;601
 ;;21,"52959-0020-24 ")
 ;;602
 ;;21,"52959-0020-28 ")
 ;;603
 ;;21,"52959-0020-30 ")
 ;;604
 ;;21,"52959-0020-40 ")
 ;;605
 ;;21,"52959-0020-42 ")
 ;;606
 ;;21,"52959-0020-60 ")
 ;;607
 ;;21,"52959-0021-01 ")
 ;;1096
 ;;21,"52959-0021-04 ")
 ;;1097
 ;;21,"52959-0021-14 ")
 ;;1098
 ;;21,"52959-0021-20 ")
 ;;1099
 ;;21,"52959-0021-21 ")
 ;;1100
 ;;21,"52959-0021-30 ")
 ;;1101
 ;;21,"52959-0029-20 ")
 ;;5380
 ;;21,"52959-0029-24 ")
 ;;5381
 ;;21,"52959-0030-01 ")
 ;;1653
 ;;21,"52959-0030-08 ")
 ;;1654
 ;;21,"52959-0030-12 ")
 ;;1655
 ;;21,"52959-0030-20 ")
 ;;1656
 ;;21,"52959-0030-24 ")
 ;;1657
 ;;21,"52959-0030-28 ")
 ;;1658
 ;;21,"52959-0030-30 ")
 ;;1659
 ;;21,"52959-0030-40 ")
 ;;1660
 ;;21,"52959-0030-56 ")
 ;;1661
 ;;21,"52959-0031-00 ")
 ;;1947
 ;;21,"52959-0031-02 ")
 ;;1948
 ;;21,"52959-0031-04 ")
 ;;1949
 ;;21,"52959-0031-06 ")
 ;;1950
 ;;21,"52959-0031-08 ")
 ;;1951
 ;;21,"52959-0031-10 ")
 ;;1952
 ;;21,"52959-0031-12 ")
 ;;1953
 ;;21,"52959-0031-14 ")
 ;;1954
 ;;21,"52959-0031-15 ")
 ;;1955
 ;;21,"52959-0031-20 ")
 ;;1956
 ;;21,"52959-0031-21 ")
 ;;1957
 ;;21,"52959-0031-24 ")
 ;;1958
 ;;21,"52959-0031-28 ")
 ;;1959
 ;;21,"52959-0031-30 ")
 ;;1960
 ;;21,"52959-0031-40 ")
 ;;1961
 ;;21,"52959-0031-56 ")
 ;;1962
 ;;21,"52959-0031-60 ")
 ;;1963
 ;;21,"52959-0036-06 ")
 ;;4470
 ;;21,"52959-0036-10 ")
 ;;4471
 ;;21,"52959-0036-14 ")
 ;;4472
 ;;21,"52959-0036-15 ")
 ;;4473
 ;;21,"52959-0036-20 ")
 ;;4474
 ;;21,"52959-0036-28 ")
 ;;4475
 ;;21,"52959-0036-30 ")
 ;;4476
 ;;21,"52959-0037-14 ")
 ;;4707
 ;;21,"52959-0037-20 ")
 ;;4708
 ;;21,"52959-0046-10 ")
 ;;1249
 ;;21,"52959-0046-14 ")
 ;;1250
 ;;21,"52959-0046-20 ")
 ;;1251
 ;;21,"52959-0048-20 ")
 ;;3922
 ;;21,"52959-0048-28 ")
 ;;3923
 ;;21,"52959-0048-30 ")
 ;;3924
 ;;21,"52959-0048-40 ")
 ;;3925
 ;;21,"52959-0048-41 ")
 ;;3926
 ;;21,"52959-0049-20 ")
 ;;3995
 ;;21,"52959-0049-21 ")
 ;;3996
 ;;21,"52959-0049-28 ")
 ;;3997
 ;;21,"52959-0049-30 ")
 ;;3998
 ;;21,"52959-0049-40 ")
 ;;3999
 ;;21,"52959-0055-00 ")
 ;;5999
 ;;21,"52959-0055-02 ")
 ;;6000
 ;;21,"52959-0055-06 ")
 ;;6001
 ;;21,"52959-0055-07 ")
 ;;6002
 ;;21,"52959-0055-10 ")
 ;;6003
 ;;21,"52959-0055-12 ")
 ;;6004
 ;;21,"52959-0055-14 ")
 ;;6005
 ;;21,"52959-0055-15 ")
 ;;6006
 ;;21,"52959-0055-20 ")
 ;;6007
 ;;21,"52959-0055-28 ")
 ;;6008
 ;;21,"52959-0055-30 ")
 ;;6009
 ;;21,"52959-0055-90 ")
 ;;6010
 ;;21,"52959-0060-20 ")
 ;;3091
 ;;21,"52959-0060-28 ")
 ;;3092
 ;;21,"52959-0060-30 ")
 ;;3093
 ;;21,"52959-0060-40 ")
 ;;3094
 ;;21,"52959-0060-56 ")
 ;;3095
 ;;21,"52959-0061-15 ")
 ;;3192
 ;;21,"52959-0061-18 ")
 ;;3193
 ;;21,"52959-0061-20 ")
 ;;3194
 ;;21,"52959-0061-21 ")
 ;;3195
 ;;21,"52959-0061-24 ")
 ;;3196
 ;;21,"52959-0061-28 ")
 ;;3197
 ;;21,"52959-0061-30 ")
 ;;3198
 ;;21,"52959-0061-40 ")
 ;;3199
 ;;21,"52959-0061-42 ")
 ;;3200
 ;;21,"52959-0062-10 ")
 ;;3278
 ;;21,"52959-0062-20 ")
 ;;3279
 ;;21,"52959-0062-21 ")
 ;;3280
 ;;21,"52959-0062-28 ")
 ;;3281
 ;;21,"52959-0062-30 ")
 ;;3282
 ;;21,"52959-0062-40 ")
 ;;3283
 ;;21,"52959-0062-56 ")
 ;;3284
 ;;21,"52959-0063-21 ")
 ;;3434
 ;;21,"52959-0063-28 ")
 ;;3435
 ;;21,"52959-0063-30 ")
 ;;3436
 ;;21,"52959-0063-40 ")
 ;;3437
 ;;21,"52959-0064-28 ")
 ;;3096
 ;;21,"52959-0087-20 ")
 ;;1964
 ;;21,"52959-0087-40 ")
 ;;1965
 ;;21,"52959-0130-03 ")
 ;;833
 ;;21,"52959-0134-20 ")
 ;;7013
 ;;21,"52959-0144-00 ")
 ;;5728
 ;;21,"52959-0144-06 ")
 ;;5729
 ;;21,"52959-0144-10 ")
 ;;5730
 ;;21,"52959-0144-14 ")
 ;;5731
 ;;21,"52959-0144-15 ")
 ;;5732
 ;;21,"52959-0144-20 ")
 ;;5733
 ;;21,"52959-0144-21 ")
 ;;5734
 ;;21,"52959-0144-28 ")
 ;;5735
 ;;21,"52959-0144-30 ")
 ;;5736
 ;;21,"52959-0144-40 ")
 ;;5737
 ;;21,"52959-0144-60 ")
 ;;5738
 ;;21,"52959-0164-00 ")
 ;;3557
 ;;21,"52959-0164-03 ")
 ;;3558
 ;;21,"52959-0164-06 ")
 ;;3559
 ;;21,"52959-0171-06 ")
 ;;4222
 ;;21,"52959-0171-10 ")
 ;;4223
 ;;21,"52959-0171-14 ")
 ;;4224
 ;;21,"52959-0171-20 ")
 ;;4225
 ;;21,"52959-0171-28 ")
 ;;4226
 ;;21,"52959-0181-00 ")
 ;;114
 ;;21,"52959-0181-80 ")
 ;;115
 ;;21,"52959-0200-01 ")
 ;;1562
 ;;21,"52959-0200-02 ")
 ;;1563
 ;;21,"52959-0213-10 ")
 ;;3810
 ;;21,"52959-0213-20 ")
 ;;3811
 ;;21,"52959-0213-24 ")
 ;;3812
 ;;21,"52959-0213-28 ")
 ;;3813
 ;;21,"52959-0213-30 ")
 ;;3814
 ;;21,"52959-0213-40 ")
 ;;3815
 ;;21,"52959-0230-10 ")
 ;;2970
 ;;21,"52959-0230-20 ")
 ;;2971
 ;;21,"52959-0240-10 ")
 ;;3361
 ;;21,"52959-0242-03 ")
 ;;2595
 ;;21,"52959-0246-19 ")
 ;;329
 ;;21,"52959-0246-21 ")
 ;;330
 ;;21,"52959-0246-30 ")
 ;;331
 ;;21,"52959-0246-40 ")
 ;;332
 ;;21,"52959-0283-00 ")
 ;;6619
 ;;21,"52959-0283-12 ")
 ;;6620
 ;;21,"52959-0283-20 ")
 ;;6621
 ;;21,"52959-0283-28 ")
 ;;6622
 ;;21,"52959-0283-30 ")
 ;;6623
 ;;21,"52959-0283-40 ")
 ;;6624
 ;;21,"52959-0294-03 ")
 ;;5174
 ;;21,"52959-0296-05 ")
 ;;444
 ;;21,"52959-0300-20 ")
 ;;5333
 ;;21,"52959-0305-00 ")
 ;;3502
 ;;21,"52959-0305-01 ")
 ;;3503
 ;;21,"52959-0313-15 ")
 ;;2561
 ;;21,"52959-0333-20 ")
 ;;3645
 ;;21,"52959-0333-24 ")
 ;;3646
 ;;21,"52959-0333-28 ")
 ;;3647
 ;;21,"52959-0333-30 ")
 ;;3648
 ;;21,"52959-0333-40 ")
 ;;3649
 ;;21,"52959-0336-14 ")
 ;;6701
 ;;21,"52959-0336-20 ")
 ;;6702
 ;;21,"52959-0336-28 ")
 ;;6703
 ;;21,"52959-0336-30 ")
 ;;6704
 ;;21,"52959-0336-40 ")
 ;;6705
 ;;21,"52959-0336-56 ")
 ;;6706
 ;;21,"52959-0336-90 ")
 ;;6707
 ;;21,"52959-0368-14 ")
 ;;5212
 ;;21,"52959-0368-20 ")
 ;;5213
 ;;21,"52959-0368-21 ")
 ;;5214
 ;;21,"52959-0368-28 ")
 ;;5215
 ;;21,"52959-0368-30 ")
 ;;5216
 ;;21,"52959-0368-40 ")
 ;;5217
 ;;21,"52959-0428-04 ")
 ;;1456
 ;;21,"52959-0428-14 ")
 ;;1457
 ;;21,"52959-0428-16 ")
 ;;1458
 ;;21,"52959-0428-18 ")
 ;;1459
 ;;21,"52959-0428-20 ")
 ;;1460
 ;;21,"52959-0428-28 ")
 ;;1461
 ;;21,"52959-0428-30 ")
 ;;1462
 ;;21,"52959-0442-10 ")
 ;;2897
 ;;21,"52959-0442-14 ")
 ;;2898
 ;;21,"52959-0442-20 ")
 ;;2899
 ;;21,"52959-0474-14 ")
 ;;6174
 ;;21,"52959-0474-20 ")
 ;;6175
 ;;21,"52959-0474-30 ")
 ;;6176
 ;;21,"52959-0492-01 ")
 ;;4898
 ;;21,"52959-0492-02 ")
 ;;4899
 ;;21,"52959-0492-04 ")
 ;;4900
 ;;21,"52959-0492-06 ")
 ;;4901
 ;;21,"52959-0492-07 ")
 ;;4902
 ;;21,"52959-0492-10 ")
 ;;4903
 ;;21,"52959-0492-12 ")
 ;;4904
 ;;21,"52959-0492-14 ")
 ;;4905
 ;;21,"52959-0492-30 ")
 ;;4906
 ;;21,"52959-0505-06 ")
 ;;2680
 ;;21,"52959-0560-00 ")
 ;;3607
 ;;21,"52959-0613-02 ")
 ;;403
 ;;21,"52959-0613-03 ")
 ;;404
 ;;21,"52959-0616-00 ")
 ;;991
 ;;21,"52959-0616-01 ")
 ;;992
 ;;21,"52959-0616-02 ")
 ;;993
 ;;21,"52959-0619-03 ")
 ;;5175
 ;;21,"52959-0620-01 ")
 ;;1787
