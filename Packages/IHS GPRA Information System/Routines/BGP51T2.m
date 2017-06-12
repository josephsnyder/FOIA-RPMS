BGP51T2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"43683-0124-30 ")
 ;;533
 ;;21,"45802-0770-78 ")
 ;;28
 ;;21,"45802-0822-78 ")
 ;;56
 ;;21,"45802-0947-78 ")
 ;;133
 ;;21,"45963-0753-02 ")
 ;;1116
 ;;21,"47463-0241-30 ")
 ;;57
 ;;21,"47463-0242-30 ")
 ;;27
 ;;21,"47463-0243-30 ")
 ;;134
 ;;21,"47463-0243-60 ")
 ;;135
 ;;21,"47463-0244-30 ")
 ;;303
 ;;21,"47463-0245-30 ")
 ;;576
 ;;21,"47463-0245-60 ")
 ;;577
 ;;21,"47463-0246-30 ")
 ;;976
 ;;21,"47463-0247-30 ")
 ;;987
 ;;21,"47463-0248-90 ")
 ;;750
 ;;21,"49884-0745-01 ")
 ;;504
 ;;21,"49884-0745-05 ")
 ;;505
 ;;21,"49884-0746-01 ")
 ;;578
 ;;21,"49884-0746-05 ")
 ;;579
 ;;21,"49999-0107-00 ")
 ;;411
 ;;21,"49999-0107-20 ")
 ;;412
 ;;21,"49999-0107-30 ")
 ;;413
 ;;21,"49999-0107-60 ")
 ;;414
 ;;21,"49999-0107-90 ")
 ;;415
 ;;21,"49999-0108-00 ")
 ;;308
 ;;21,"49999-0108-30 ")
 ;;309
 ;;21,"49999-0108-60 ")
 ;;310
 ;;21,"49999-0108-90 ")
 ;;311
 ;;21,"49999-0113-00 ")
 ;;738
 ;;21,"49999-0113-01 ")
 ;;739
 ;;21,"49999-0113-30 ")
 ;;740
 ;;21,"49999-0113-60 ")
 ;;741
 ;;21,"49999-0113-90 ")
 ;;742
 ;;21,"49999-0401-30 ")
 ;;1113
 ;;21,"49999-0401-60 ")
 ;;1114
 ;;21,"49999-0401-90 ")
 ;;1115
 ;;21,"49999-0514-30 ")
 ;;479
 ;;21,"49999-0571-60 ")
 ;;930
 ;;21,"49999-0660-30 ")
 ;;1092
 ;;21,"49999-0660-60 ")
 ;;1093
 ;;21,"49999-0781-00 ")
 ;;58
 ;;21,"49999-0781-30 ")
 ;;59
 ;;21,"49999-0781-60 ")
 ;;60
 ;;21,"49999-0781-90 ")
 ;;61
 ;;21,"49999-0807-00 ")
 ;;129
 ;;21,"49999-0807-30 ")
 ;;130
 ;;21,"49999-0807-60 ")
 ;;131
 ;;21,"49999-0807-90 ")
 ;;132
 ;;21,"49999-0808-00 ")
 ;;912
 ;;21,"51079-0425-01 ")
 ;;54
 ;;21,"51079-0425-20 ")
 ;;55
 ;;21,"51079-0426-01 ")
 ;;137
 ;;21,"51079-0426-20 ")
 ;;138
 ;;21,"51079-0810-01 ")
 ;;304
 ;;21,"51079-0810-17 ")
 ;;305
 ;;21,"51079-0810-19 ")
 ;;306
 ;;21,"51079-0810-20 ")
 ;;307
 ;;21,"51079-0811-01 ")
 ;;416
 ;;21,"51079-0811-17 ")
 ;;417
 ;;21,"51079-0811-19 ")
 ;;418
 ;;21,"51079-0811-20 ")
 ;;419
 ;;21,"51079-0872-01 ")
 ;;648
 ;;21,"51079-0872-20 ")
 ;;649
 ;;21,"51079-0873-01 ")
 ;;734
 ;;21,"51079-0873-17 ")
 ;;735
 ;;21,"51079-0873-19 ")
 ;;736
 ;;21,"51079-0873-20 ")
 ;;737
 ;;21,"51138-0251-30 ")
 ;;301
 ;;21,"51138-0252-30 ")
 ;;421
 ;;21,"51138-0265-30 ")
 ;;478
 ;;21,"51138-0266-30 ")
 ;;506
 ;;21,"51138-0267-30 ")
 ;;581
 ;;21,"51138-0268-30 ")
 ;;507
 ;;21,"51138-0269-30 ")
 ;;580
 ;;21,"51138-0270-30 ")
 ;;302
 ;;21,"51138-0271-30 ")
 ;;420
 ;;21,"51138-0337-30 ")
 ;;29
 ;;21,"51138-0338-30 ")
 ;;53
 ;;21,"51138-0339-30 ")
 ;;139
 ;;21,"51138-0367-30 ")
 ;;898
 ;;21,"51138-0368-30 ")
 ;;911
 ;;21,"51138-0369-30 ")
 ;;931
 ;;21,"51138-0370-30 ")
 ;;608
 ;;21,"51138-0371-30 ")
 ;;645
 ;;21,"51138-0372-10 ")
 ;;751
 ;;21,"51138-0372-30 ")
 ;;752
 ;;21,"51138-0470-30 ")
 ;;1011
 ;;21,"51138-0471-30 ")
 ;;1053
 ;;21,"51138-0472-30 ")
 ;;1118
 ;;21,"51138-0473-30 ")
 ;;1010
 ;;21,"51138-0474-30 ")
 ;;1054
 ;;21,"51138-0475-30 ")
 ;;1117
 ;;21,"52959-0449-01 ")
 ;;759
 ;;21,"52959-0449-30 ")
 ;;760
 ;;21,"52959-0449-60 ")
 ;;761
 ;;21,"52959-0598-90 ")
 ;;609
 ;;21,"52959-0822-00 ")
 ;;425
 ;;21,"52959-0822-30 ")
 ;;426
 ;;21,"52959-0822-60 ")
 ;;427
 ;;21,"52959-0823-20 ")
 ;;296
 ;;21,"52959-0823-60 ")
 ;;297
 ;;21,"52959-0888-00 ")
 ;;140
 ;;21,"52959-0888-30 ")
 ;;141
 ;;21,"52959-0936-30 ")
 ;;51
 ;;21,"52959-0936-60 ")
 ;;52
 ;;21,"53002-0446-00 ")
 ;;298
 ;;21,"53002-0446-30 ")
 ;;299
 ;;21,"53002-0446-60 ")
 ;;300
 ;;21,"53002-1111-00 ")
 ;;422
 ;;21,"53002-1111-03 ")
 ;;423
 ;;21,"53002-1111-06 ")
 ;;424
 ;;21,"54348-0098-30 ")
 ;;950
 ;;21,"54348-0104-30 ")
 ;;758
 ;;21,"54458-0966-10 ")
 ;;119
 ;;21,"54458-0967-10 ")
 ;;69
 ;;21,"54458-0968-10 ")
 ;;30
 ;;21,"54569-3830-00 ")
 ;;643
 ;;21,"54569-3830-02 ")
 ;;644
 ;;21,"54569-3831-00 ")
 ;;753
 ;;21,"54569-3831-01 ")
 ;;754
 ;;21,"54569-3831-02 ")
 ;;755
 ;;21,"54569-3831-08 ")
 ;;756
 ;;21,"54569-3831-09 ")
 ;;757
 ;;21,"54569-3841-00 ")
 ;;320
 ;;21,"54569-3841-01 ")
 ;;321
 ;;21,"54569-3841-02 ")
 ;;322
 ;;21,"54569-3841-03 ")
 ;;323
 ;;21,"54569-3842-00 ")
 ;;398
 ;;21,"54569-3842-01 ")
 ;;399
 ;;21,"54569-3842-02 ")
 ;;400
 ;;21,"54569-3842-04 ")
 ;;401
 ;;21,"54569-3842-05 ")
 ;;402
 ;;21,"54569-3937-00 ")
 ;;537
 ;;21,"54569-3938-00 ")
 ;;596
 ;;21,"54569-5547-00 ")
 ;;498
 ;;21,"54569-5547-02 ")
 ;;499
 ;;21,"54569-5548-00 ")
 ;;583
 ;;21,"54569-5548-01 ")
 ;;584
 ;;21,"54569-5548-02 ")
 ;;585
 ;;21,"54569-5618-00 ")
 ;;1049
 ;;21,"54569-5618-01 ")
 ;;1050
 ;;21,"54569-5618-02 ")
 ;;1051
 ;;21,"54569-5618-03 ")
 ;;1052
 ;;21,"54569-5619-00 ")
 ;;1099
 ;;21,"54569-5619-01 ")
 ;;1100
 ;;21,"54569-5619-02 ")
 ;;1101
 ;;21,"54569-5619-03 ")
 ;;1102
 ;;21,"54569-5619-04 ")
 ;;1103
 ;;21,"54569-5855-00 ")
 ;;115
 ;;21,"54569-5855-01 ")
 ;;116
 ;;21,"54569-5855-02 ")
 ;;117
 ;;21,"54569-5855-03 ")
 ;;118
 ;;21,"54569-5991-00 ")
 ;;969
 ;;21,"54569-5992-00 ")
 ;;970
 ;;21,"54569-5992-01 ")
 ;;971
 ;;21,"54569-5993-00 ")
 ;;992
 ;;21,"54569-5993-01 ")
 ;;993
 ;;21,"54569-6072-00 ")
 ;;70
 ;;21,"54569-6072-01 ")
 ;;71
 ;;21,"54569-6072-02 ")
 ;;72
 ;;21,"54569-6072-03 ")
 ;;73
 ;;21,"54868-0036-00 ")
 ;;4
 ;;21,"54868-0036-02 ")
 ;;5
 ;;21,"54868-0036-04 ")
 ;;6
 ;;21,"54868-0795-00 ")
 ;;967
 ;;21,"54868-0877-01 ")
 ;;3
 ;;21,"54868-1020-00 ")
 ;;949
 ;;21,"54868-1361-01 ")
 ;;959
 ;;21,"54868-3017-00 ")
 ;;924
 ;;21,"54868-3265-00 ")
 ;;728
 ;;21,"54868-3265-01 ")
 ;;729
 ;;21,"54868-3265-03 ")
 ;;730
 ;;21,"54868-3265-04 ")
 ;;731
 ;;21,"54868-3265-05 ")
 ;;732
 ;;21,"54868-3265-06 ")
 ;;733
 ;;21,"54868-3266-01 ")
 ;;650
 ;;21,"54868-3266-02 ")
 ;;651
 ;;21,"54868-3266-03 ")
 ;;652
 ;;21,"54868-3266-04 ")
 ;;653
 ;;21,"54868-3318-01 ")
 ;;315
 ;;21,"54868-3318-02 ")
 ;;316
 ;;21,"54868-3318-03 ")
 ;;317
 ;;21,"54868-3318-04 ")
 ;;318
 ;;21,"54868-3318-05 ")
 ;;319
 ;;21,"54868-3319-01 ")
 ;;403
 ;;21,"54868-3319-02 ")
 ;;404
 ;;21,"54868-3319-04 ")
 ;;405
 ;;21,"54868-3319-05 ")
 ;;406
 ;;21,"54868-3319-06 ")
 ;;407
 ;;21,"54868-3319-07 ")
 ;;408
 ;;21,"54868-3327-00 ")
 ;;23
 ;;21,"54868-3334-00 ")
 ;;597
 ;;21,"54868-3334-01 ")
 ;;598
 ;;21,"54868-3334-02 ")
 ;;599
 ;;21,"54868-3334-03 ")
 ;;600
 ;;21,"54868-3334-04 ")
 ;;601
 ;;21,"54868-3335-00 ")
 ;;538
 ;;21,"54868-3335-01 ")
 ;;539
 ;;21,"54868-3335-02 ")
 ;;540
 ;;21,"54868-3335-03 ")
 ;;541
 ;;21,"54868-3377-00 ")
 ;;120
 ;;21,"54868-3377-01 ")
 ;;121
 ;;21,"54868-3377-02 ")
 ;;122
 ;;21,"54868-3377-03 ")
 ;;123
 ;;21,"54868-3426-00 ")
 ;;606
 ;;21,"54868-3426-01 ")
 ;;607
 ;;21,"54868-3711-00 ")
 ;;945
 ;;21,"54868-3711-01 ")
 ;;946
 ;;21,"54868-4091-00 ")
 ;;907
 ;;21,"54868-4091-01 ")
 ;;908
 ;;21,"54868-4091-02 ")
 ;;909
 ;;21,"54868-4091-03 ")
 ;;910
 ;;21,"54868-4420-00 ")
 ;;495
 ;;21,"54868-4529-00 ")
 ;;1094
 ;;21,"54868-4529-01 ")
 ;;1095
 ;;21,"54868-4529-02 ")
 ;;1096
 ;;21,"54868-4529-03 ")
 ;;1097
 ;;21,"54868-4609-00 ")
 ;;1040
 ;;21,"54868-4609-01 ")
 ;;1041
 ;;21,"54868-4842-00 ")
 ;;927
 ;;21,"54868-4842-01 ")
 ;;928
 ;;21,"54868-4842-02 ")
 ;;929
 ;;21,"54868-4906-00 ")
 ;;1004
 ;;21,"54868-4988-00 ")
 ;;568
 ;;21,"54868-4988-01 ")
 ;;569
 ;;21,"54868-4988-02 ")
 ;;570
 ;;21,"54868-4988-03 ")
 ;;571
 ;;21,"54868-4988-04 ")
 ;;572
 ;;21,"54868-5148-00 ")
 ;;1042
 ;;21,"54868-5148-01 ")
 ;;1043
 ;;21,"54868-5148-02 ")
 ;;1044
 ;;21,"54868-5148-03 ")
 ;;1045
 ;;21,"54868-5148-04 ")
 ;;1046
 ;;21,"54868-5185-00 ")
 ;;1005
 ;;21,"54868-5185-01 ")
 ;;1006
 ;;21,"54868-5185-02 ")
 ;;1007
 ;;21,"54868-5185-03 ")
 ;;1008
 ;;21,"54868-5188-00 ")
 ;;973
 ;;21,"54868-5188-01 ")
 ;;974
 ;;21,"54868-5188-02 ")
 ;;975
 ;;21,"54868-5210-00 ")
 ;;500
 ;;21,"54868-5210-01 ")
 ;;501
 ;;21,"54868-5210-02 ")
 ;;502
 ;;21,"54868-5210-03 ")
 ;;503
 ;;21,"54868-5243-00 ")
 ;;1108
 ;;21,"54868-5243-01 ")
 ;;1109
 ;;21,"54868-5243-02 ")
 ;;1110
 ;;21,"54868-5243-03 ")
 ;;1111
 ;;21,"54868-5243-04 ")
 ;;1112
 ;;21,"54868-5364-00 ")
 ;;481
 ;;21,"54868-5364-01 ")
 ;;482
 ;;21,"54868-5364-02 ")
 ;;483
 ;;21,"54868-5457-00 ")
 ;;66
 ;;21,"54868-5457-01 ")
 ;;67
 ;;21,"54868-5457-02 ")
 ;;68
 ;;21,"54868-5467-00 ")
 ;;988
 ;;21,"54868-5467-01 ")
 ;;989
 ;;21,"54868-5467-02 ")
 ;;990
 ;;21,"54868-5712-00 ")
 ;;899
 ;;21,"54868-5739-00 ")
 ;;1183
 ;;21,"55045-2138-01 ")
 ;;725
 ;;21,"55045-2138-08 ")
 ;;726
 ;;21,"55045-2265-01 ")
 ;;313
 ;;21,"55045-2265-08 ")
 ;;314
 ;;21,"55045-2266-01 ")
 ;;409
 ;;21,"55045-2322-01 ")
 ;;727
 ;;21,"55045-3300-01 ")
 ;;573
 ;;21,"55045-3434-08 ")
 ;;480
 ;;21,"55048-0241-30 ")
 ;;64
 ;;21,"55048-0242-30 ")
 ;;24
 ;;21,"55048-0243-30 ")
 ;;127
 ;;21,"55048-0243-60 ")
 ;;128
 ;;21,"55048-0244-30 ")
 ;;312
 ;;21,"55048-0245-30 ")
 ;;574
 ;;21,"55048-0245-60 ")
 ;;575
 ;;21,"55048-0246-30 ")
 ;;972
 ;;21,"55048-0247-30 ")
 ;;991
 ;;21,"55048-0248-30 ")
 ;;723
 ;;21,"55048-0248-90 ")
 ;;724
 ;;21,"55048-0269-30 ")
 ;;654
 ;;21,"55048-0270-30 ")
 ;;410
 ;;21,"55048-0273-60 ")
 ;;1106
 ;;21,"55048-0273-71 ")
 ;;1107
 ;;21,"55048-0288-60 ")
 ;;65
 ;;21,"55048-0289-60 ")
 ;;124
 ;;21,"55111-0320-01 ")
 ;;25
 ;;21,"55111-0320-05 ")
 ;;26
 ;;21,"55111-0321-01 ")
 ;;62
 ;;21,"55111-0321-05 ")
 ;;63
 ;;21,"55111-0322-01 ")
 ;;125
 ;;21,"55111-0322-05 ")
 ;;126
 ;;21,"55111-0695-01 ")
 ;;1009
 ;;21,"55111-0696-01 ")
 ;;1047
 ;;21,"55111-0696-10 ")
 ;;1048
 ;;21,"55111-0697-01 ")
 ;;1104
 ;;21,"55111-0697-10 ")
 ;;1105
 ;;21,"55289-0066-90 ")
 ;;7
 ;;21,"55289-0125-30 ")
 ;;476
 ;;21,"55289-0265-90 ")
 ;;951
 ;;21,"55289-0281-30 ")
 ;;1126
 ;;21,"55289-0281-60 ")
 ;;1127
 ;;21,"55289-0281-86 ")
 ;;1128
 ;;21,"55289-0281-90 ")
 ;;1129
 ;;21,"55289-0301-93 ")
 ;;582
 ;;21,"55289-0424-30 ")
 ;;332
 ;;21,"55289-0606-30 ")
 ;;641
 ;;21,"55289-0606-90 ")
 ;;642
 ;;21,"55289-0779-07 ")
 ;;509
 ;;21,"55289-0806-14 ")
 ;;324
 ;;21,"55289-0806-30 ")
 ;;325
 ;;21,"55289-0806-60 ")
 ;;326
 ;;21,"55289-0806-86 ")
 ;;327
 ;;21,"55289-0806-90 ")
 ;;328
 ;;21,"55289-0892-01 ")
 ;;762
 ;;21,"55289-0892-14 ")
 ;;763
 ;;21,"55289-0892-15 ")
 ;;764
 ;;21,"55289-0892-30 ")
 ;;765
 ;;21,"55289-0892-60 ")
 ;;766
 ;;21,"55289-0892-86 ")
 ;;767
 ;;21,"55289-0892-90 ")
 ;;768
 ;;21,"55289-0892-93 ")
 ;;769
 ;;21,"55289-0892-98 ")
 ;;770
 ;;21,"55289-0976-01 ")
 ;;384
 ;;21,"55289-0976-14 ")
 ;;385
 ;;21,"55289-0976-30 ")
 ;;386
 ;;21,"55289-0976-60 ")
 ;;387
 ;;21,"55289-0976-93 ")
 ;;388
 ;;21,"55700-0022-30 ")
 ;;508
 ;;21,"57237-0020-01 ")
 ;;610
 ;;21,"57237-0021-01 ")
 ;;638
 ;;21,"57237-0021-05 ")
 ;;639
 ;;21,"57237-0021-99 ")
 ;;640
 ;;21,"57237-0022-01 ")
 ;;771
 ;;21,"57237-0022-05 ")
 ;;772
 ;;21,"57237-0022-99 ")
 ;;773
 ;;21,"57237-0023-01 ")
 ;;1012
 ;;21,"57237-0023-05 ")
 ;;1013
 ;;21,"57237-0024-01 ")
 ;;1055
 ;;21,"57237-0024-05 ")
 ;;1056
 ;;21,"57237-0025-01 ")
 ;;1119
 ;;21,"57237-0025-05 ")
 ;;1120
 ;;21,"57664-0398-13 ")
 ;;329
 ;;21,"57664-0398-18 ")
 ;;330
 ;;21,"57664-0398-88 ")
 ;;331
 ;;21,"57664-0399-13 ")
 ;;389
 ;;21,"57664-0399-18 ")
 ;;390
 ;;21,"57664-0399-88 ")
 ;;391
 ;;21,"57664-0724-88 ")
 ;;986
 ;;21,"57664-0725-88 ")
 ;;977
 ;;21,"57664-0727-88 ")
 ;;968
 ;;21,"58016-0005-00 ")
 ;;74
 ;;21,"58016-0005-30 ")
 ;;75
 ;;21,"58016-0005-60 ")
 ;;76
 ;;21,"58016-0005-90 ")
 ;;77
 ;;21,"58016-0058-00 ")
 ;;1014
 ;;21,"58016-0058-30 ")
 ;;1015
 ;;21,"58016-0058-60 ")
 ;;1016
 ;;21,"58016-0058-90 ")
 ;;1017
 ;;21,"58016-0334-00 ")
 ;;510
 ;;21,"58016-0334-02 ")
 ;;511
 ;;21,"58016-0334-30 ")
 ;;512
 ;;21,"58016-0334-60 ")
 ;;513
 ;;21,"58016-0334-90 ")
 ;;514
 ;;21,"58016-0370-30 ")
 ;;955
 ;;21,"58016-0376-00 ")
 ;;392
 ;;21,"58016-0376-02 ")
 ;;393
 ;;21,"58016-0376-30 ")
 ;;394
 ;;21,"58016-0376-60 ")
 ;;395
 ;;21,"58016-0376-90 ")
 ;;396
 ;;21,"58016-0376-99 ")
 ;;397
 ;;21,"58016-0378-00 ")
 ;;774
 ;;21,"58016-0378-02 ")
 ;;775
 ;;21,"58016-0378-30 ")
 ;;776
 ;;21,"58016-0378-60 ")
 ;;777
 ;;21,"58016-0378-90 ")
 ;;778
 ;;21,"58016-0378-99 ")
 ;;779
 ;;21,"58016-0411-00 ")
 ;;1121
 ;;21,"58016-0411-02 ")
 ;;1122
 ;;21,"58016-0411-30 ")
 ;;1123
 ;;21,"58016-0411-60 ")
 ;;1124
 ;;21,"58016-0411-90 ")
 ;;1125
 ;;21,"58016-0467-00 ")
 ;;113
 ;;21,"58016-0467-30 ")
 ;;114
 ;;21,"58016-0467-60 ")
 ;;147
 ;;21,"58016-0467-90 ")
 ;;148
 ;;21,"58016-0691-00 ")
 ;;559
 ;;21,"58016-0691-30 ")
 ;;560
 ;;21,"58016-0691-60 ")
 ;;561
 ;;21,"58016-0691-90 ")
 ;;562
 ;;21,"58016-0844-00 ")
 ;;149
 ;;21,"58016-0844-30 ")
 ;;150
 ;;21,"58016-0844-60 ")
 ;;151
 ;;21,"58016-0844-90 ")
 ;;152
 ;;21,"58016-0876-00 ")
 ;;260
 ;;21,"58016-0876-10 ")
 ;;261
 ;;21,"58016-0876-12 ")
 ;;262
