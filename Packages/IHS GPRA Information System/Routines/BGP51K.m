BGP51K ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP HEDIS NONBENZODIAZ NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS NONBENZODIAZ NDC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00024-5401-31 ")
 ;;31
 ;;21,"00024-5401-50 ")
 ;;32
 ;;21,"00024-5421-31 ")
 ;;300
 ;;21,"00024-5421-50 ")
 ;;301
 ;;21,"00024-5501-10 ")
 ;;639
 ;;21,"00024-5501-31 ")
 ;;640
 ;;21,"00024-5501-50 ")
 ;;641
 ;;21,"00024-5521-10 ")
 ;;708
 ;;21,"00024-5521-31 ")
 ;;709
 ;;21,"00024-5521-34 ")
 ;;710
 ;;21,"00024-5521-50 ")
 ;;711
 ;;21,"00037-6010-30 ")
 ;;760
 ;;21,"00037-6050-30 ")
 ;;759
 ;;21,"00054-0084-25 ")
 ;;810
 ;;21,"00054-0085-25 ")
 ;;884
 ;;21,"00054-0086-25 ")
 ;;167
 ;;21,"00054-0086-29 ")
 ;;168
 ;;21,"00054-0087-25 ")
 ;;503
 ;;21,"00054-0087-29 ")
 ;;504
 ;;21,"00054-0290-13 ")
 ;;894
 ;;21,"00054-0291-25 ")
 ;;909
 ;;21,"00054-0292-25 ")
 ;;950
 ;;21,"00093-0073-01 ")
 ;;169
 ;;21,"00093-0074-01 ")
 ;;505
 ;;21,"00093-5268-01 ")
 ;;811
 ;;21,"00093-5269-01 ")
 ;;883
 ;;21,"00093-5537-56 ")
 ;;893
 ;;21,"00093-5538-01 ")
 ;;910
 ;;21,"00093-5539-01 ")
 ;;949
 ;;21,"00095-0950-05 ")
 ;;761
 ;;21,"00143-3909-01 ")
 ;;812
 ;;21,"00143-3910-01 ")
 ;;882
 ;;21,"00179-1980-15 ")
 ;;170
 ;;21,"00179-1980-30 ")
 ;;171
 ;;21,"00179-1981-30 ")
 ;;506
 ;;21,"00228-3481-11 ")
 ;;648
 ;;21,"00228-3481-50 ")
 ;;649
 ;;21,"00228-3482-11 ")
 ;;730
 ;;21,"00228-3482-50 ")
 ;;731
 ;;21,"00378-5270-01 ")
 ;;892
 ;;21,"00378-5271-01 ")
 ;;911
 ;;21,"00378-5271-10 ")
 ;;912
 ;;21,"00378-5272-01 ")
 ;;951
 ;;21,"00378-5272-10 ")
 ;;952
 ;;21,"00378-5305-01 ")
 ;;81
 ;;21,"00378-5305-05 ")
 ;;82
 ;;21,"00378-5310-01 ")
 ;;400
 ;;21,"00378-5310-05 ")
 ;;401
 ;;21,"00378-6805-01 ")
 ;;800
 ;;21,"00378-6810-01 ")
 ;;869
 ;;21,"00378-6810-10 ")
 ;;870
 ;;21,"00440-7702-30 ")
 ;;958
 ;;21,"00440-8754-02 ")
 ;;83
 ;;21,"00440-8754-14 ")
 ;;84
 ;;21,"00440-8754-30 ")
 ;;85
 ;;21,"00440-8754-60 ")
 ;;86
 ;;21,"00440-8755-07 ")
 ;;395
 ;;21,"00440-8755-10 ")
 ;;396
 ;;21,"00440-8755-14 ")
 ;;397
 ;;21,"00440-8755-30 ")
 ;;398
 ;;21,"00440-8755-60 ")
 ;;399
 ;;21,"00603-6468-09 ")
 ;;87
 ;;21,"00603-6468-16 ")
 ;;88
 ;;21,"00603-6468-21 ")
 ;;89
 ;;21,"00603-6468-28 ")
 ;;90
 ;;21,"00603-6468-32 ")
 ;;91
 ;;21,"00603-6469-09 ")
 ;;388
 ;;21,"00603-6469-13 ")
 ;;389
 ;;21,"00603-6469-16 ")
 ;;390
 ;;21,"00603-6469-20 ")
 ;;391
 ;;21,"00603-6469-21 ")
 ;;392
 ;;21,"00603-6469-28 ")
 ;;393
 ;;21,"00603-6469-32 ")
 ;;394
 ;;21,"00781-5315-01 ")
 ;;650
 ;;21,"00781-5315-05 ")
 ;;651
 ;;21,"00781-5316-01 ")
 ;;741
 ;;21,"00781-5316-05 ")
 ;;742
 ;;21,"00781-5317-01 ")
 ;;78
 ;;21,"00781-5317-10 ")
 ;;79
 ;;21,"00781-5318-01 ")
 ;;384
 ;;21,"00781-5318-10 ")
 ;;385
 ;;21,"00832-0400-00 ")
 ;;798
 ;;21,"00832-0400-10 ")
 ;;799
 ;;21,"00832-0401-00 ")
 ;;871
 ;;21,"00832-0401-10 ")
 ;;872
 ;;21,"00904-6082-61 ")
 ;;80
 ;;21,"00904-6083-61 ")
 ;;383
 ;;21,"00955-1702-10 ")
 ;;653
 ;;21,"00955-1703-10 ")
 ;;738
 ;;21,"10370-0116-10 ")
 ;;739
 ;;21,"10370-0116-50 ")
 ;;740
 ;;21,"10370-0117-10 ")
 ;;652
 ;;21,"10544-0040-15 ")
 ;;386
 ;;21,"10544-0548-30 ")
 ;;387
 ;;21,"12634-0944-71 ")
 ;;507
 ;;21,"13668-0007-01 ")
 ;;202
 ;;21,"13668-0007-05 ")
 ;;203
 ;;21,"13668-0007-10 ")
 ;;204
 ;;21,"13668-0007-15 ")
 ;;205
 ;;21,"13668-0007-30 ")
 ;;206
 ;;21,"13668-0007-71 ")
 ;;207
 ;;21,"13668-0007-74 ")
 ;;208
 ;;21,"13668-0007-90 ")
 ;;209
 ;;21,"13668-0008-01 ")
 ;;508
 ;;21,"13668-0008-05 ")
 ;;509
 ;;21,"13668-0008-10 ")
 ;;510
 ;;21,"13668-0008-15 ")
 ;;511
 ;;21,"13668-0008-30 ")
 ;;512
 ;;21,"13668-0008-71 ")
 ;;513
 ;;21,"13668-0008-74 ")
 ;;514
 ;;21,"13668-0008-90 ")
 ;;515
 ;;21,"16590-0009-20 ")
 ;;20
 ;;21,"16590-0009-30 ")
 ;;21
 ;;21,"16590-0009-60 ")
 ;;22
 ;;21,"16590-0009-90 ")
 ;;23
 ;;21,"16590-0010-20 ")
 ;;294
 ;;21,"16590-0010-28 ")
 ;;295
 ;;21,"16590-0010-30 ")
 ;;296
 ;;21,"16590-0010-56 ")
 ;;297
 ;;21,"16590-0010-60 ")
 ;;298
 ;;21,"16590-0010-90 ")
 ;;299
 ;;21,"16590-0436-06 ")
 ;;687
 ;;21,"16590-0436-10 ")
 ;;688
 ;;21,"16590-0436-20 ")
 ;;689
 ;;21,"16590-0436-25 ")
 ;;690
 ;;21,"16590-0436-28 ")
 ;;691
 ;;21,"16590-0436-30 ")
 ;;692
 ;;21,"16590-0436-60 ")
 ;;693
 ;;21,"16590-0436-90 ")
 ;;694
 ;;21,"16590-0500-25 ")
 ;;976
 ;;21,"16590-0500-28 ")
 ;;977
 ;;21,"16590-0500-30 ")
 ;;978
 ;;21,"16590-0500-60 ")
 ;;979
 ;;21,"16590-0500-72 ")
 ;;980
 ;;21,"16590-0500-90 ")
 ;;981
 ;;21,"16590-0501-25 ")
 ;;930
 ;;21,"16590-0501-28 ")
 ;;931
 ;;21,"16590-0501-30 ")
 ;;932
 ;;21,"16590-0501-60 ")
 ;;933
 ;;21,"16590-0501-72 ")
 ;;934
 ;;21,"16590-0501-90 ")
 ;;935
 ;;21,"16590-0502-30 ")
 ;;897
 ;;21,"16590-0502-60 ")
 ;;898
 ;;21,"16590-0502-72 ")
 ;;899
 ;;21,"16590-0502-90 ")
 ;;900
 ;;21,"16590-0522-30 ")
 ;;833
 ;;21,"16590-0522-60 ")
 ;;834
 ;;21,"16590-0522-72 ")
 ;;835
 ;;21,"16590-0522-90 ")
 ;;836
 ;;21,"16590-0527-10 ")
 ;;516
 ;;21,"16590-0527-14 ")
 ;;517
 ;;21,"16590-0527-15 ")
 ;;518
 ;;21,"16590-0527-20 ")
 ;;519
 ;;21,"16590-0527-25 ")
 ;;520
 ;;21,"16590-0527-28 ")
 ;;521
 ;;21,"16590-0527-30 ")
 ;;522
 ;;21,"16590-0527-40 ")
 ;;523
 ;;21,"16590-0527-45 ")
 ;;524
 ;;21,"16590-0527-60 ")
 ;;525
 ;;21,"16590-0527-71 ")
 ;;526
 ;;21,"16590-0527-90 ")
 ;;527
 ;;21,"16590-0527-93 ")
 ;;528
 ;;21,"16590-0528-10 ")
 ;;210
 ;;21,"16590-0528-15 ")
 ;;211
 ;;21,"16590-0528-20 ")
 ;;212
 ;;21,"16590-0528-25 ")
 ;;213
 ;;21,"16590-0528-30 ")
 ;;214
 ;;21,"16590-0528-40 ")
 ;;215
 ;;21,"16590-0528-56 ")
 ;;216
 ;;21,"16590-0528-60 ")
 ;;217
 ;;21,"16590-0528-71 ")
 ;;218
 ;;21,"16590-0528-90 ")
 ;;219
 ;;21,"16590-0562-15 ")
 ;;632
 ;;21,"16590-0562-25 ")
 ;;633
 ;;21,"16590-0562-28 ")
 ;;634
 ;;21,"16590-0562-30 ")
 ;;635
 ;;21,"16590-0562-60 ")
 ;;636
 ;;21,"16590-0562-90 ")
 ;;637
 ;;21,"16590-0629-28 ")
 ;;842
 ;;21,"16590-0629-30 ")
 ;;843
 ;;21,"16590-0629-90 ")
 ;;844
 ;;21,"16590-0661-30 ")
 ;;784
 ;;21,"16590-0661-60 ")
 ;;785
 ;;21,"16590-0661-90 ")
 ;;786
 ;;21,"16590-0943-25 ")
 ;;654
 ;;21,"16590-0943-28 ")
 ;;655
 ;;21,"16590-0943-30 ")
 ;;656
 ;;21,"16590-0943-56 ")
 ;;657
 ;;21,"16590-0943-60 ")
 ;;658
 ;;21,"16590-0943-72 ")
 ;;659
 ;;21,"16590-0943-90 ")
 ;;660
 ;;21,"16590-0955-25 ")
 ;;744
 ;;21,"16590-0955-28 ")
 ;;745
 ;;21,"16590-0955-30 ")
 ;;746
 ;;21,"16590-0955-60 ")
 ;;747
 ;;21,"16590-0955-72 ")
 ;;748
 ;;21,"16590-0955-90 ")
 ;;749
 ;;21,"16714-0551-02 ")
 ;;787
 ;;21,"16714-0561-02 ")
 ;;841
 ;;21,"16714-0621-01 ")
 ;;226
 ;;21,"16714-0621-02 ")
 ;;227
 ;;21,"16714-0622-01 ")
 ;;538
 ;;21,"16714-0622-02 ")
 ;;539
 ;;21,"21695-0105-14 ")
 ;;845
 ;;21,"21695-0105-30 ")
 ;;846
 ;;21,"21695-0105-60 ")
 ;;847
 ;;21,"21695-0211-15 ")
 ;;18
 ;;21,"21695-0211-30 ")
 ;;19
 ;;21,"21695-0212-15 ")
 ;;291
 ;;21,"21695-0212-30 ")
 ;;292
 ;;21,"21695-0212-45 ")
 ;;293
 ;;21,"21695-0213-15 ")
 ;;685
 ;;21,"21695-0213-30 ")
 ;;686
 ;;21,"21695-0225-30 ")
 ;;936
 ;;21,"21695-0226-15 ")
 ;;974
 ;;21,"21695-0226-30 ")
 ;;975
 ;;21,"21695-0319-30 ")
 ;;638
 ;;21,"21695-0376-30 ")
 ;;779
 ;;21,"21695-0376-60 ")
 ;;780
 ;;21,"21695-0506-07 ")
 ;;220
 ;;21,"21695-0506-10 ")
 ;;221
 ;;21,"21695-0506-15 ")
 ;;222
 ;;21,"21695-0506-30 ")
 ;;223
 ;;21,"21695-0506-60 ")
 ;;224
 ;;21,"21695-0506-90 ")
 ;;225
 ;;21,"21695-0507-04 ")
 ;;529
 ;;21,"21695-0507-07 ")
 ;;530
 ;;21,"21695-0507-10 ")
 ;;531
 ;;21,"21695-0507-14 ")
 ;;532
 ;;21,"21695-0507-15 ")
 ;;533
 ;;21,"21695-0507-20 ")
 ;;534
 ;;21,"21695-0507-30 ")
 ;;535
 ;;21,"21695-0507-60 ")
 ;;536
 ;;21,"21695-0507-90 ")
 ;;537
 ;;21,"23490-6489-01 ")
 ;;598
 ;;21,"23490-6489-06 ")
 ;;599
 ;;21,"23490-6489-09 ")
 ;;600
 ;;21,"29300-0131-01 ")
 ;;793
 ;;21,"29300-0132-01 ")
 ;;857
 ;;21,"33261-0172-07 ")
 ;;195
 ;;21,"33261-0172-14 ")
 ;;196
 ;;21,"33261-0172-21 ")
 ;;197
 ;;21,"33261-0172-28 ")
 ;;198
 ;;21,"33261-0172-30 ")
 ;;199
 ;;21,"33261-0172-60 ")
 ;;200
 ;;21,"33261-0172-90 ")
 ;;201
 ;;21,"33261-0173-07 ")
 ;;588
 ;;21,"33261-0173-12 ")
 ;;589
 ;;21,"33261-0173-14 ")
 ;;590
 ;;21,"33261-0173-15 ")
 ;;591
 ;;21,"33261-0173-21 ")
 ;;592
 ;;21,"33261-0173-28 ")
 ;;593
 ;;21,"33261-0173-30 ")
 ;;594
 ;;21,"33261-0173-42 ")
 ;;595
 ;;21,"33261-0173-60 ")
 ;;596
 ;;21,"33261-0173-90 ")
 ;;597
 ;;21,"33261-0454-02 ")
 ;;853
 ;;21,"33261-0454-30 ")
 ;;854
 ;;21,"33261-0454-60 ")
 ;;855
 ;;21,"33261-0454-90 ")
 ;;856
 ;;21,"33261-0486-30 ")
 ;;790
 ;;21,"33261-0486-60 ")
 ;;791
 ;;21,"33261-0486-90 ")
 ;;792
 ;;21,"33261-0652-07 ")
 ;;671
 ;;21,"33261-0652-14 ")
 ;;672
 ;;21,"33261-0652-30 ")
 ;;673
 ;;21,"33261-0652-60 ")
 ;;674
 ;;21,"33358-0227-30 ")
 ;;988
 ;;21,"33358-0326-30 ")
 ;;832
 ;;21,"35356-0572-30 ")
 ;;788
 ;;21,"35356-0572-60 ")
 ;;789
 ;;21,"35356-0573-30 ")
 ;;858
 ;;21,"35356-0573-60 ")
 ;;859
 ;;21,"35356-0574-30 ")
 ;;771
 ;;21,"35356-0574-60 ")
 ;;772
 ;;21,"35356-0645-30 ")
 ;;191
 ;;21,"35356-0645-60 ")
 ;;192
 ;;21,"35356-0656-30 ")
 ;;860
 ;;21,"35356-0745-15 ")
 ;;587
 ;;21,"35356-0764-30 ")
 ;;861
 ;;21,"35356-0845-30 ")
 ;;667
 ;;21,"42254-0130-60 ")
 ;;806
 ;;21,"42254-0147-14 ")
 ;;876
 ;;21,"42254-0147-30 ")
 ;;877
 ;;21,"42254-0147-60 ")
 ;;878
 ;;21,"42254-0189-60 ")
 ;;807
 ;;21,"42254-0316-30 ")
 ;;804
 ;;21,"42254-0316-60 ")
 ;;805
 ;;21,"42254-0358-30 ")
 ;;736
 ;;21,"42291-0271-30 ")
 ;;890
 ;;21,"42291-0272-90 ")
 ;;914
 ;;21,"42291-0273-90 ")
 ;;954
 ;;21,"42549-0548-28 ")
 ;;477
 ;;21,"42549-0548-30 ")
 ;;478
 ;;21,"42549-0563-30 ")
 ;;476
 ;;21,"42549-0593-30 ")
 ;;475
 ;;21,"43063-0068-79 ")
 ;;474
 ;;21,"43063-0240-30 ")
 ;;808
 ;;21,"43063-0366-01 ")
 ;;466
 ;;21,"43063-0366-06 ")
 ;;467
 ;;21,"43063-0366-10 ")
 ;;468
 ;;21,"43063-0366-14 ")
 ;;469
 ;;21,"43063-0366-15 ")
 ;;470
 ;;21,"43063-0366-21 ")
 ;;471
 ;;21,"43063-0366-30 ")
 ;;472
 ;;21,"43063-0366-60 ")
 ;;473
 ;;21,"43063-0505-30 ")
 ;;803
 ;;21,"43353-0026-10 ")
 ;;93
 ;;21,"43353-0026-20 ")
 ;;94
 ;;21,"43353-0026-28 ")
 ;;95
 ;;21,"43353-0026-45 ")
 ;;96
 ;;21,"43353-0026-53 ")
 ;;97
 ;;21,"43353-0026-59 ")
 ;;98
 ;;21,"43353-0026-60 ")
 ;;99
 ;;21,"43353-0174-07 ")
 ;;100
 ;;21,"43353-0174-10 ")
 ;;101
 ;;21,"43353-0174-14 ")
 ;;102
 ;;21,"43353-0174-15 ")
 ;;103
 ;;21,"43353-0174-20 ")
 ;;104
 ;;21,"43353-0174-30 ")
 ;;105
 ;;21,"43353-0174-45 ")
 ;;106
 ;;21,"43353-0174-53 ")
 ;;107
 ;;21,"43353-0174-59 ")
 ;;108
 ;;21,"43353-0174-60 ")
 ;;109
 ;;21,"43353-0175-07 ")
 ;;438
 ;;21,"43353-0175-10 ")
 ;;439
 ;;21,"43353-0175-14 ")
 ;;440
 ;;21,"43353-0175-15 ")
 ;;441
 ;;21,"43353-0175-20 ")
 ;;442
 ;;21,"43353-0175-21 ")
 ;;443
 ;;21,"43353-0175-25 ")
 ;;444
 ;;21,"43353-0175-30 ")
 ;;445
 ;;21,"43353-0175-40 ")
 ;;446
 ;;21,"43353-0175-45 ")
 ;;447
 ;;21,"43353-0175-53 ")
 ;;448
 ;;21,"43353-0175-59 ")
 ;;449
 ;;21,"43353-0175-60 ")
 ;;450
 ;;21,"43353-0176-14 ")
 ;;451
 ;;21,"43353-0176-40 ")
 ;;452
 ;;21,"43353-0443-30 ")
 ;;703
 ;;21,"43353-0557-28 ")
 ;;92
 ;;21,"43353-0558-07 ")
 ;;453
 ;;21,"43353-0558-10 ")
 ;;454
 ;;21,"43353-0558-14 ")
 ;;455
 ;;21,"43353-0558-15 ")
 ;;456
 ;;21,"43353-0558-20 ")
 ;;457
 ;;21,"43353-0558-21 ")
 ;;458
 ;;21,"43353-0558-25 ")
 ;;459
 ;;21,"43353-0558-28 ")
 ;;460
 ;;21,"43353-0558-30 ")
 ;;461
 ;;21,"43353-0558-40 ")
 ;;462
 ;;21,"43353-0558-45 ")
 ;;463
 ;;21,"43353-0558-53 ")
 ;;464
 ;;21,"43353-0558-60 ")
 ;;465
 ;;21,"43353-0559-30 ")
 ;;955
 ;;21,"43353-0567-20 ")
 ;;406
 ;;21,"43353-0567-30 ")
 ;;407
 ;;21,"43353-0590-07 ")
 ;;121
 ;;21,"43353-0590-10 ")
 ;;122
 ;;21,"43353-0590-14 ")
 ;;123
 ;;21,"43353-0590-15 ")
 ;;124
 ;;21,"43353-0590-20 ")
 ;;125
 ;;21,"43353-0590-28 ")
 ;;126
 ;;21,"43353-0590-30 ")
 ;;127
 ;;21,"43353-0590-45 ")
 ;;128
 ;;21,"43353-0590-53 ")
 ;;129
 ;;21,"43353-0590-59 ")
 ;;130
 ;;21,"43353-0590-60 ")
 ;;131
 ;;21,"43353-0617-07 ")
 ;;423
 ;;21,"43353-0617-10 ")
 ;;424
 ;;21,"43353-0617-14 ")
 ;;425
 ;;21,"43353-0617-15 ")
 ;;426
 ;;21,"43353-0617-20 ")
 ;;427
 ;;21,"43353-0617-21 ")
 ;;428
 ;;21,"43353-0617-25 ")
 ;;429
 ;;21,"43353-0617-28 ")
 ;;430
 ;;21,"43353-0617-30 ")
 ;;431
 ;;21,"43353-0617-40 ")
 ;;432
 ;;21,"43353-0617-45 ")
 ;;433
 ;;21,"43353-0617-53 ")
 ;;434
 ;;21,"43353-0617-59 ")
 ;;435
 ;;21,"43353-0617-60 ")
 ;;436
 ;;21,"43353-0617-62 ")
 ;;437
 ;;21,"43353-0620-07 ")
 ;;110
 ;;21,"43353-0620-10 ")
 ;;111
 ;;21,"43353-0620-14 ")
 ;;112
 ;;21,"43353-0620-15 ")
 ;;113
 ;;21,"43353-0620-20 ")
 ;;114
 ;;21,"43353-0620-28 ")
 ;;115
 ;;21,"43353-0620-30 ")
 ;;116
 ;;21,"43353-0620-45 ")
 ;;117
 ;
OTHER ; OTHER ROUTINES
 D ^BGP51K10
 D ^BGP51K11
 D ^BGP51K12
 D ^BGP51K2
 D ^BGP51K3
 D ^BGP51K4
 D ^BGP51K5
 D ^BGP51K6
 D ^BGP51K7
 D ^BGP51K8
 D ^BGP51K9
 Q
