BGP51F2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"21695-0453-12 ")
 ;;1096
 ;;21,"21695-0453-15 ")
 ;;1097
 ;;21,"21695-0453-20 ")
 ;;1098
 ;;21,"21695-0453-25 ")
 ;;1099
 ;;21,"21695-0453-30 ")
 ;;1100
 ;;21,"21695-0453-60 ")
 ;;1101
 ;;21,"21695-0453-90 ")
 ;;1102
 ;;21,"21695-0573-20 ")
 ;;854
 ;;21,"21695-0573-30 ")
 ;;855
 ;;21,"21695-0573-40 ")
 ;;856
 ;;21,"21695-0589-12 ")
 ;;962
 ;;21,"21695-0589-15 ")
 ;;963
 ;;21,"21695-0589-60 ")
 ;;964
 ;;21,"21695-0649-12 ")
 ;;1412
 ;;21,"21695-0698-04 ")
 ;;1520
 ;;21,"21695-0698-16 ")
 ;;1521
 ;;21,"21695-0703-04 ")
 ;;1297
 ;;21,"21695-0885-10 ")
 ;;1283
 ;;21,"21695-0900-16 ")
 ;;246
 ;;21,"21695-0959-12 ")
 ;;1436
 ;;21,"23155-0105-01 ")
 ;;450
 ;;21,"23155-0105-05 ")
 ;;451
 ;;21,"23155-0105-10 ")
 ;;452
 ;;21,"23155-0106-01 ")
 ;;558
 ;;21,"23155-0106-05 ")
 ;;559
 ;;21,"23155-0106-10 ")
 ;;560
 ;;21,"23155-0107-01 ")
 ;;715
 ;;21,"23155-0107-05 ")
 ;;716
 ;;21,"23155-0107-10 ")
 ;;717
 ;;21,"23359-0011-16 ")
 ;;399
 ;;21,"23359-0014-30 ")
 ;;167
 ;;21,"23359-0015-30 ")
 ;;239
 ;;21,"23359-0016-16 ")
 ;;193
 ;;21,"23359-0018-16 ")
 ;;129
 ;;21,"23359-0019-16 ")
 ;;398
 ;;21,"23490-5136-01 ")
 ;;107
 ;;21,"23490-5727-01 ")
 ;;471
 ;;21,"23490-5727-02 ")
 ;;472
 ;;21,"23490-5727-03 ")
 ;;473
 ;;21,"23490-5727-04 ")
 ;;474
 ;;21,"23490-5728-01 ")
 ;;750
 ;;21,"23490-5729-01 ")
 ;;506
 ;;21,"23490-5729-02 ")
 ;;507
 ;;21,"23490-5729-03 ")
 ;;508
 ;;21,"23490-5729-04 ")
 ;;509
 ;;21,"23490-5729-05 ")
 ;;510
 ;;21,"23490-5729-06 ")
 ;;511
 ;;21,"23490-5731-00 ")
 ;;732
 ;;21,"23490-5731-01 ")
 ;;733
 ;;21,"23490-5732-01 ")
 ;;773
 ;;21,"23490-5733-01 ")
 ;;841
 ;;21,"23490-5733-02 ")
 ;;842
 ;;21,"23490-6178-01 ")
 ;;1516
 ;;21,"23490-6178-02 ")
 ;;1517
 ;;21,"23490-6180-01 ")
 ;;1388
 ;;21,"23490-6182-01 ")
 ;;1402
 ;;21,"23490-6182-02 ")
 ;;1403
 ;;21,"23490-6182-03 ")
 ;;1404
 ;;21,"23490-6182-04 ")
 ;;1405
 ;;21,"23490-6183-01 ")
 ;;1024
 ;;21,"23490-6183-02 ")
 ;;1025
 ;;21,"23490-6183-03 ")
 ;;1026
 ;;21,"23490-6183-04 ")
 ;;1027
 ;;21,"23490-6183-06 ")
 ;;1028
 ;;21,"23490-6183-07 ")
 ;;1029
 ;;21,"23490-6183-08 ")
 ;;1030
 ;;21,"23490-6183-09 ")
 ;;1031
 ;;21,"23490-6185-09 ")
 ;;1345
 ;;21,"23490-6187-01 ")
 ;;1301
 ;;21,"23490-6188-01 ")
 ;;1477
 ;;21,"23635-0054-01 ")
 ;;218
 ;;21,"23635-0054-20 ")
 ;;219
 ;;21,"23635-0108-01 ")
 ;;223
 ;;21,"23635-0108-20 ")
 ;;224
 ;;21,"24200-0811-01 ")
 ;;942
 ;;21,"24470-0914-16 ")
 ;;136
 ;;21,"24486-0200-16 ")
 ;;200
 ;;21,"24839-0346-16 ")
 ;;163
 ;;21,"29273-0202-16 ")
 ;;143
 ;;21,"29273-0203-16 ")
 ;;144
 ;;21,"29273-0204-16 ")
 ;;244
 ;;21,"29273-0205-16 ")
 ;;135
 ;;21,"29978-0420-16 ")
 ;;226
 ;;21,"31722-0218-01 ")
 ;;16
 ;;21,"31722-0219-01 ")
 ;;21
 ;;21,"31722-0219-10 ")
 ;;22
 ;;21,"31722-0220-01 ")
 ;;105
 ;;21,"31722-0220-10 ")
 ;;106
 ;;21,"33261-0131-02 ")
 ;;1032
 ;;21,"33261-0131-07 ")
 ;;1033
 ;;21,"33261-0131-10 ")
 ;;1034
 ;;21,"33261-0131-12 ")
 ;;1035
 ;;21,"33261-0131-14 ")
 ;;1036
 ;;21,"33261-0131-20 ")
 ;;1037
 ;;21,"33261-0131-21 ")
 ;;1038
 ;;21,"33261-0131-25 ")
 ;;1039
 ;;21,"33261-0131-28 ")
 ;;1040
 ;;21,"33261-0131-30 ")
 ;;1041
 ;;21,"33261-0131-40 ")
 ;;1042
 ;;21,"33261-0131-50 ")
 ;;1043
 ;;21,"33261-0131-60 ")
 ;;1044
 ;;21,"33261-0131-90 ")
 ;;1045
 ;;21,"33261-0161-14 ")
 ;;514
 ;;21,"33261-0161-20 ")
 ;;515
 ;;21,"33261-0161-21 ")
 ;;516
 ;;21,"33261-0161-28 ")
 ;;517
 ;;21,"33261-0161-30 ")
 ;;518
 ;;21,"33261-0161-40 ")
 ;;519
 ;;21,"33261-0161-60 ")
 ;;520
 ;;21,"33261-0161-90 ")
 ;;521
 ;;21,"33261-0383-14 ")
 ;;358
 ;;21,"33261-0383-28 ")
 ;;359
 ;;21,"33261-0383-30 ")
 ;;360
 ;;21,"33261-0383-60 ")
 ;;361
 ;;21,"33261-0391-01 ")
 ;;1478
 ;;21,"33261-0732-01 ")
 ;;1518
 ;;21,"33261-0857-00 ")
 ;;845
 ;;21,"33261-0857-30 ")
 ;;846
 ;;21,"33261-0857-60 ")
 ;;847
 ;;21,"33261-0857-90 ")
 ;;848
 ;;21,"33261-0858-00 ")
 ;;892
 ;;21,"33261-0858-30 ")
 ;;893
 ;;21,"33261-0858-60 ")
 ;;894
 ;;21,"33261-0858-90 ")
 ;;895
 ;;21,"33261-0865-00 ")
 ;;980
 ;;21,"33261-0865-30 ")
 ;;981
 ;;21,"33261-0865-60 ")
 ;;982
 ;;21,"33261-0865-90 ")
 ;;983
 ;;21,"33261-0897-00 ")
 ;;1288
 ;;21,"33261-0897-30 ")
 ;;1289
 ;;21,"33261-0897-60 ")
 ;;1290
 ;;21,"33261-0897-90 ")
 ;;1291
 ;;21,"33358-0111-20 ")
 ;;356
 ;;21,"33358-0111-30 ")
 ;;357
 ;;21,"33358-0179-30 ")
 ;;469
 ;;21,"33358-0180-01 ")
 ;;751
 ;;21,"33358-0181-20 ")
 ;;512
 ;;21,"33358-0181-30 ")
 ;;513
 ;;21,"33358-0182-20 ")
 ;;843
 ;;21,"33358-0182-30 ")
 ;;844
 ;;21,"33358-0302-08 ")
 ;;1020
 ;;21,"33358-0302-10 ")
 ;;1021
 ;;21,"33358-0302-30 ")
 ;;1022
 ;;21,"33358-0302-60 ")
 ;;1023
 ;;21,"33358-0303-04 ")
 ;;1519
 ;;21,"33358-0304-04 ")
 ;;1495
 ;;21,"33358-0305-04 ")
 ;;1479
 ;;21,"33358-0418-30 ")
 ;;984
 ;;21,"35356-0039-12 ")
 ;;1401
 ;;21,"35356-0123-60 ")
 ;;470
 ;;21,"35356-0127-16 ")
 ;;210
 ;;21,"35356-0671-12 ")
 ;;1018
 ;;21,"35356-0671-15 ")
 ;;1019
 ;;21,"35356-0701-30 ")
 ;;736
 ;;21,"35356-0701-60 ")
 ;;737
 ;;21,"35356-0938-20 ")
 ;;849
 ;;21,"35356-0939-30 ")
 ;;734
 ;;21,"35356-0939-60 ")
 ;;735
 ;;21,"35356-0942-60 ")
 ;;505
 ;;21,"35573-0105-60 ")
 ;;115
 ;;21,"38739-0082-51 ")
 ;;166
 ;;21,"39822-5500-02 ")
 ;;1348
 ;;21,"39822-5500-03 ")
 ;;1349
 ;;21,"39822-5500-05 ")
 ;;1375
 ;;21,"39822-5500-06 ")
 ;;1376
 ;;21,"42192-0508-30 ")
 ;;235
 ;;21,"42192-0513-04 ")
 ;;113
 ;;21,"42192-0514-16 ")
 ;;249
 ;;21,"42254-0045-08 ")
 ;;1147
 ;;21,"42254-0045-10 ")
 ;;1148
 ;;21,"42254-0045-12 ")
 ;;1149
 ;;21,"42254-0045-15 ")
 ;;1150
 ;;21,"42254-0045-20 ")
 ;;1151
 ;;21,"42254-0045-30 ")
 ;;1152
 ;;21,"42254-0045-60 ")
 ;;1153
 ;;21,"42254-0045-90 ")
 ;;1154
 ;;21,"42254-0140-04 ")
 ;;1480
 ;;21,"42254-0163-12 ")
 ;;1432
 ;;21,"42254-0167-12 ")
 ;;1395
 ;;21,"42254-0400-12 ")
 ;;1382
 ;;21,"42291-0225-01 ")
 ;;279
 ;;21,"42291-0225-10 ")
 ;;280
 ;;21,"42291-0322-50 ")
 ;;780
 ;;21,"42291-0322-90 ")
 ;;781
 ;;21,"42291-0323-50 ")
 ;;934
 ;;21,"42291-0323-90 ")
 ;;935
 ;;21,"42549-0528-30 ")
 ;;782
 ;;21,"42549-0543-10 ")
 ;;1133
 ;;21,"42549-0543-20 ")
 ;;1134
 ;;21,"42549-0543-30 ")
 ;;1135
 ;;21,"42819-0103-01 ")
 ;;119
 ;;21,"42819-0104-01 ")
 ;;120
 ;;21,"42819-0105-01 ")
 ;;117
 ;;21,"42819-0106-01 ")
 ;;118
 ;;21,"43063-0049-02 ")
 ;;1131
 ;;21,"43063-0049-06 ")
 ;;1132
 ;;21,"43063-0060-02 ")
 ;;1427
 ;;21,"43063-0060-04 ")
 ;;1428
 ;;21,"43063-0060-06 ")
 ;;1429
 ;;21,"43063-0095-06 ")
 ;;628
 ;;21,"43063-0095-12 ")
 ;;629
 ;;21,"43063-0095-20 ")
 ;;630
 ;;21,"43063-0172-01 ")
 ;;778
 ;;21,"43063-0172-04 ")
 ;;779
 ;;21,"43063-0207-30 ")
 ;;174
 ;;21,"43063-0251-10 ")
 ;;937
 ;;21,"43063-0267-90 ")
 ;;64
 ;;21,"43063-0376-01 ")
 ;;1379
 ;;21,"43063-0405-02 ")
 ;;1136
 ;;21,"43063-0405-04 ")
 ;;1137
 ;;21,"43063-0405-05 ")
 ;;1138
 ;;21,"43063-0405-10 ")
 ;;1139
 ;;21,"43063-0405-12 ")
 ;;1140
 ;;21,"43063-0405-15 ")
 ;;1141
 ;;21,"43063-0405-20 ")
 ;;1142
 ;;21,"43063-0405-25 ")
 ;;1143
 ;;21,"43063-0405-30 ")
 ;;1144
 ;;21,"43063-0405-60 ")
 ;;1145
 ;;21,"43063-0405-79 ")
 ;;1146
 ;;21,"43063-0406-10 ")
 ;;776
 ;;21,"43063-0406-15 ")
 ;;777
 ;;21,"43063-0406-30 ")
 ;;775
 ;;21,"43063-0435-30 ")
 ;;693
 ;;21,"43063-0447-04 ")
 ;;1281
 ;;21,"43093-0104-01 ")
 ;;304
 ;;21,"43353-0199-30 ")
 ;;783
 ;;21,"43353-0199-53 ")
 ;;784
 ;;21,"43353-0199-60 ")
 ;;785
 ;;21,"43353-0199-70 ")
 ;;786
 ;;21,"43353-0199-80 ")
 ;;787
 ;;21,"43353-0796-30 ")
 ;;66
 ;;21,"43353-0796-53 ")
 ;;67
 ;;21,"43378-0104-08 ")
 ;;196
 ;;21,"43378-0105-08 ")
 ;;195
 ;;21,"43378-0106-08 ")
 ;;194
 ;;21,"43378-0114-08 ")
 ;;231
 ;;21,"43378-0115-08 ")
 ;;230
 ;;21,"43378-0116-08 ")
 ;;229
 ;;21,"44183-0512-04 ")
 ;;114
 ;;21,"44183-0514-04 ")
 ;;134
 ;;21,"45802-0758-00 ")
 ;;1380
 ;;21,"45802-0758-30 ")
 ;;1381
 ;;21,"45802-0759-00 ")
 ;;1430
 ;;21,"45802-0759-30 ")
 ;;1431
 ;;21,"47028-0019-01 ")
 ;;251
 ;;21,"47463-0045-60 ")
 ;;65
 ;;21,"47463-0355-90 ")
 ;;788
 ;;21,"47463-0367-15 ")
 ;;631
 ;;21,"47463-0367-30 ")
 ;;632
 ;;21,"47463-0367-60 ")
 ;;633
 ;;21,"47463-0603-00 ")
 ;;1122
 ;;21,"47463-0603-12 ")
 ;;1123
 ;;21,"47463-0603-15 ")
 ;;1124
 ;;21,"47463-0603-20 ")
 ;;1125
 ;;21,"47463-0603-30 ")
 ;;1126
 ;;21,"47463-0603-40 ")
 ;;1127
 ;;21,"47463-0603-60 ")
 ;;1128
 ;;21,"47463-0603-71 ")
 ;;1129
 ;;21,"47463-0603-90 ")
 ;;1130
 ;;21,"47463-0604-30 ")
 ;;961
 ;;21,"47463-0609-30 ")
 ;;1279
 ;;21,"47463-0609-60 ")
 ;;1280
 ;;21,"49769-0320-21 ")
 ;;240
 ;;21,"49769-0326-21 ")
 ;;168
 ;;21,"49769-0489-16 ")
 ;;130
 ;;21,"49884-0043-01 ")
 ;;281
 ;;21,"49884-0043-10 ")
 ;;282
 ;;21,"49884-0235-33 ")
 ;;198
 ;;21,"49884-0235-37 ")
 ;;199
 ;;21,"49999-0024-00 ")
 ;;620
 ;;21,"49999-0024-12 ")
 ;;621
 ;;21,"49999-0024-20 ")
 ;;622
 ;;21,"49999-0024-24 ")
 ;;623
 ;;21,"49999-0024-30 ")
 ;;624
 ;;21,"49999-0024-50 ")
 ;;625
 ;;21,"49999-0024-60 ")
 ;;626
 ;;21,"49999-0024-90 ")
 ;;627
 ;;21,"49999-0035-24 ")
 ;;694
 ;;21,"49999-0035-30 ")
 ;;695
 ;;21,"49999-0035-60 ")
 ;;696
 ;;21,"49999-0036-12 ")
 ;;938
 ;;21,"49999-0036-60 ")
 ;;939
 ;;21,"49999-0090-05 ")
 ;;1155
 ;;21,"49999-0090-10 ")
 ;;1156
 ;;21,"49999-0090-12 ")
 ;;1157
 ;;21,"49999-0090-15 ")
 ;;1158
 ;;21,"49999-0090-20 ")
 ;;1159
 ;;21,"49999-0090-30 ")
 ;;1160
 ;;21,"49999-0090-60 ")
 ;;1161
 ;;21,"49999-0090-90 ")
 ;;1162
 ;;21,"49999-0091-04 ")
 ;;322
 ;;21,"49999-0091-15 ")
 ;;319
 ;;21,"49999-0091-20 ")
 ;;320
 ;;21,"49999-0091-30 ")
 ;;323
 ;;21,"49999-0091-60 ")
 ;;321
 ;;21,"49999-0152-04 ")
 ;;1506
 ;;21,"49999-0262-04 ")
 ;;1305
 ;;21,"49999-0314-04 ")
 ;;1511
 ;;21,"49999-0326-04 ")
 ;;1497
 ;;21,"49999-0339-12 ")
 ;;1391
 ;;21,"49999-0340-12 ")
 ;;1409
 ;;21,"49999-0493-18 ")
 ;;291
 ;;21,"49999-0594-30 ")
 ;;1005
 ;;21,"49999-0594-90 ")
 ;;1006
 ;;21,"49999-0657-04 ")
 ;;1447
 ;;21,"49999-0701-20 ")
 ;;827
 ;;21,"49999-0701-30 ")
 ;;828
 ;;21,"49999-0721-04 ")
 ;;228
 ;;21,"49999-0768-20 ")
 ;;172
 ;;21,"49999-0768-30 ")
 ;;173
 ;;21,"49999-0902-20 ")
 ;;987
 ;;21,"49999-0902-30 ")
 ;;988
 ;;21,"50111-0307-01 ")
 ;;479
 ;;21,"50111-0307-02 ")
 ;;480
 ;;21,"50111-0307-03 ")
 ;;481
 ;;21,"50111-0308-01 ")
 ;;498
 ;;21,"50111-0308-02 ")
 ;;499
 ;;21,"50111-0308-03 ")
 ;;500
 ;;21,"50111-0309-01 ")
 ;;742
 ;;21,"50111-0309-02 ")
 ;;743
 ;;21,"50111-0309-03 ")
 ;;744
 ;;21,"50111-0393-01 ")
 ;;13
 ;;21,"50111-0394-01 ")
 ;;29
 ;;21,"50111-0394-03 ")
 ;;30
 ;;21,"50111-0395-01 ")
 ;;103
 ;;21,"50111-0395-03 ")
 ;;104
 ;;21,"50383-0796-16 ")
 ;;748
 ;;21,"50383-0801-16 ")
 ;;1302
 ;;21,"50383-0803-16 ")
 ;;1512
 ;;21,"50383-0804-16 ")
 ;;1471
 ;;21,"50436-4379-02 ")
 ;;1007
 ;;21,"50436-4379-03 ")
 ;;1008
 ;;21,"50436-4379-05 ")
 ;;1009
 ;;21,"50991-0320-16 ")
 ;;243
 ;;21,"50991-0405-16 ")
 ;;181
 ;;21,"50991-0528-16 ")
 ;;1575
 ;;21,"50991-0790-16 ")
 ;;131
 ;;21,"51079-0066-01 ")
 ;;354
 ;;21,"51079-0066-20 ")
 ;;355
 ;;21,"51079-0077-01 ")
 ;;774
 ;;21,"51079-0077-20 ")
 ;;826
 ;;21,"51079-0078-01 ")
 ;;887
 ;;21,"51079-0078-20 ")
 ;;888
 ;;21,"51079-0221-17 ")
 ;;27
 ;;21,"51079-0221-19 ")
 ;;28
 ;;21,"51079-0404-01 ")
 ;;14
 ;;21,"51079-0404-20 ")
 ;;15
 ;;21,"51079-0406-01 ")
 ;;23
 ;;21,"51079-0406-17 ")
 ;;24
 ;;21,"51079-0406-19 ")
 ;;25
 ;;21,"51079-0406-20 ")
 ;;26
 ;;21,"51079-0796-01 ")
 ;;477
 ;;21,"51079-0796-20 ")
 ;;478
 ;;21,"51079-0806-01 ")
 ;;501
 ;;21,"51079-0806-20 ")
 ;;502
 ;;21,"51079-0816-01 ")
 ;;740
 ;;21,"51079-0816-20 ")
 ;;741
 ;;21,"51079-0895-01 ")
 ;;1010
 ;;21,"51079-0895-20 ")
 ;;1011
 ;;21,"51724-0052-04 ")
 ;;112
 ;;21,"51724-0214-01 ")
 ;;145
 ;;21,"51991-0333-01 ")
 ;;151
 ;;21,"51991-0334-04 ")
 ;;158
 ;;21,"51991-0334-16 ")
 ;;159
 ;;21,"51991-0838-01 ")
 ;;289
 ;;21,"51991-0838-10 ")
 ;;290
 ;;21,"52959-0043-60 ")
 ;;311
 ;;21,"52959-0053-06 ")
 ;;312
 ;;21,"52959-0053-10 ")
 ;;313
 ;;21,"52959-0053-12 ")
 ;;314
 ;;21,"52959-0053-15 ")
 ;;315
 ;;21,"52959-0053-20 ")
 ;;316
 ;;21,"52959-0053-30 ")
 ;;317
 ;;21,"52959-0053-52 ")
 ;;318
 ;;21,"52959-0074-12 ")
 ;;486
 ;;21,"52959-0074-13 ")
 ;;487
 ;;21,"52959-0074-15 ")
 ;;488
 ;;21,"52959-0074-16 ")
 ;;489
 ;;21,"52959-0074-20 ")
 ;;490
 ;;21,"52959-0074-21 ")
 ;;491
 ;;21,"52959-0074-24 ")
 ;;492
 ;;21,"52959-0074-30 ")
 ;;493
 ;;21,"52959-0074-40 ")
 ;;494
 ;;21,"52959-0074-50 ")
 ;;495
 ;;21,"52959-0074-60 ")
 ;;496
 ;;21,"52959-0074-90 ")
 ;;497
 ;;21,"52959-0118-03 ")
 ;;1472
 ;;21,"52959-0118-04 ")
 ;;1473
 ;;21,"52959-0118-05 ")
 ;;1474
 ;;21,"52959-0118-08 ")
 ;;1475
 ;;21,"52959-0229-04 ")
 ;;1496
 ;;21,"52959-0237-12 ")
 ;;1410
 ;;21,"52959-0433-10 ")
 ;;829
