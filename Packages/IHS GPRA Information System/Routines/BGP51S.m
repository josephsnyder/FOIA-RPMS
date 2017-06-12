BGP51S ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP PQA BIGUANIDE NDC
 ;
 ; This routine loads Taxonomy BGP PQA BIGUANIDE NDC
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
 ;;21,"00003-4221-11 ")
 ;;1015
 ;;21,"00003-4222-16 ")
 ;;1014
 ;;21,"00003-4223-11 ")
 ;;1016
 ;;21,"00006-0078-61 ")
 ;;1035
 ;;21,"00006-0078-62 ")
 ;;1036
 ;;21,"00006-0078-82 ")
 ;;1037
 ;;21,"00006-0080-61 ")
 ;;1038
 ;;21,"00006-0080-62 ")
 ;;1039
 ;;21,"00006-0080-82 ")
 ;;1040
 ;;21,"00006-0081-31 ")
 ;;1041
 ;;21,"00006-0081-54 ")
 ;;1042
 ;;21,"00006-0081-82 ")
 ;;1043
 ;;21,"00006-0575-52 ")
 ;;1017
 ;;21,"00006-0575-61 ")
 ;;1018
 ;;21,"00006-0575-62 ")
 ;;1019
 ;;21,"00006-0575-82 ")
 ;;1020
 ;;21,"00006-0577-52 ")
 ;;1031
 ;;21,"00006-0577-61 ")
 ;;1032
 ;;21,"00006-0577-62 ")
 ;;1033
 ;;21,"00006-0577-82 ")
 ;;1034
 ;;21,"00087-6060-05 ")
 ;;11
 ;;21,"00087-6060-10 ")
 ;;12
 ;;21,"00087-6063-13 ")
 ;;826
 ;;21,"00087-6064-13 ")
 ;;958
 ;;21,"00087-6070-05 ")
 ;;362
 ;;21,"00087-6071-11 ")
 ;;581
 ;;21,"00087-6072-11 ")
 ;;1089
 ;;21,"00087-6073-11 ")
 ;;1125
 ;;21,"00087-6074-11 ")
 ;;1184
 ;;21,"00087-6077-31 ")
 ;;1071
 ;;21,"00087-6078-31 ")
 ;;1088
 ;;21,"00093-1048-01 ")
 ;;13
 ;;21,"00093-1048-10 ")
 ;;14
 ;;21,"00093-1048-19 ")
 ;;15
 ;;21,"00093-1048-93 ")
 ;;16
 ;;21,"00093-1048-98 ")
 ;;17
 ;;21,"00093-1049-01 ")
 ;;424
 ;;21,"00093-1049-10 ")
 ;;425
 ;;21,"00093-1049-19 ")
 ;;360
 ;;21,"00093-1049-93 ")
 ;;361
 ;;21,"00093-1049-98 ")
 ;;423
 ;;21,"00093-5049-06 ")
 ;;1269
 ;;21,"00093-5049-86 ")
 ;;1270
 ;;21,"00093-5050-06 ")
 ;;1284
 ;;21,"00093-5050-86 ")
 ;;1285
 ;;21,"00093-5710-01 ")
 ;;1104
 ;;21,"00093-5710-05 ")
 ;;1105
 ;;21,"00093-5710-19 ")
 ;;1118
 ;;21,"00093-5710-83 ")
 ;;1119
 ;;21,"00093-5710-93 ")
 ;;1122
 ;;21,"00093-5711-01 ")
 ;;1156
 ;;21,"00093-5711-05 ")
 ;;1157
 ;;21,"00093-5711-19 ")
 ;;1158
 ;;21,"00093-5711-93 ")
 ;;1159
 ;;21,"00093-5712-01 ")
 ;;1258
 ;;21,"00093-5712-05 ")
 ;;1259
 ;;21,"00093-5712-19 ")
 ;;1260
 ;;21,"00093-5712-93 ")
 ;;1261
 ;;21,"00093-7212-01 ")
 ;;984
 ;;21,"00093-7214-01 ")
 ;;727
 ;;21,"00093-7214-10 ")
 ;;728
 ;;21,"00093-7214-98 ")
 ;;729
 ;;21,"00093-7261-05 ")
 ;;1160
 ;;21,"00093-7262-05 ")
 ;;1257
 ;;21,"00093-7267-01 ")
 ;;940
 ;;21,"00093-7267-10 ")
 ;;941
 ;;21,"00093-7455-01 ")
 ;;1046
 ;;21,"00093-7456-01 ")
 ;;1070
 ;;21,"00093-7457-01 ")
 ;;1082
 ;;21,"00169-0092-01 ")
 ;;1045
 ;;21,"00169-0093-01 ")
 ;;1044
 ;;21,"00173-0837-18 ")
 ;;1298
 ;;21,"00173-0838-18 ")
 ;;1299
 ;;21,"00173-0839-18 ")
 ;;1305
 ;;21,"00173-0840-18 ")
 ;;1306
 ;;21,"00185-0213-01 ")
 ;;218
 ;;21,"00185-0213-05 ")
 ;;219
 ;;21,"00185-0215-01 ")
 ;;573
 ;;21,"00185-0215-05 ")
 ;;574
 ;;21,"00185-0221-01 ")
 ;;722
 ;;21,"00185-0221-05 ")
 ;;723
 ;;21,"00185-4416-01 ")
 ;;944
 ;;21,"00185-4416-05 ")
 ;;945
 ;;21,"00228-2751-11 ")
 ;;1116
 ;;21,"00228-2751-50 ")
 ;;1117
 ;;21,"00228-2752-11 ")
 ;;1161
 ;;21,"00228-2752-50 ")
 ;;1162
 ;;21,"00228-2753-11 ")
 ;;1255
 ;;21,"00228-2753-50 ")
 ;;1256
 ;;21,"00378-0234-01 ")
 ;;223
 ;;21,"00378-0234-05 ")
 ;;224
 ;;21,"00378-0240-01 ")
 ;;569
 ;;21,"00378-0244-01 ")
 ;;726
 ;;21,"00378-0350-01 ")
 ;;983
 ;;21,"00378-0352-01 ")
 ;;942
 ;;21,"00378-0352-05 ")
 ;;943
 ;;21,"00378-1550-91 ")
 ;;1271
 ;;21,"00378-1575-91 ")
 ;;1289
 ;;21,"00378-3131-01 ")
 ;;1047
 ;;21,"00378-3132-01 ")
 ;;1069
 ;;21,"00378-3133-01 ")
 ;;1083
 ;;21,"00378-7185-05 ")
 ;;231
 ;;21,"00378-7186-05 ")
 ;;566
 ;;21,"00378-7187-05 ")
 ;;732
 ;;21,"00406-2028-01 ")
 ;;220
 ;;21,"00406-2028-05 ")
 ;;221
 ;;21,"00406-2028-10 ")
 ;;222
 ;;21,"00406-2029-01 ")
 ;;570
 ;;21,"00406-2029-05 ")
 ;;571
 ;;21,"00406-2029-10 ")
 ;;572
 ;;21,"00406-2030-05 ")
 ;;724
 ;;21,"00406-2030-10 ")
 ;;725
 ;;21,"00440-7585-90 ")
 ;;1115
 ;;21,"00440-7587-90 ")
 ;;1163
 ;;21,"00440-7589-90 ")
 ;;1253
 ;;21,"00440-7589-95 ")
 ;;1254
 ;;21,"00440-7739-14 ")
 ;;225
 ;;21,"00440-7739-60 ")
 ;;226
 ;;21,"00440-7739-90 ")
 ;;227
 ;;21,"00440-7739-92 ")
 ;;228
 ;;21,"00440-7739-94 ")
 ;;229
 ;;21,"00440-7739-95 ")
 ;;230
 ;;21,"00440-7745-90 ")
 ;;567
 ;;21,"00440-7745-92 ")
 ;;568
 ;;21,"00440-7746-90 ")
 ;;730
 ;;21,"00440-7746-92 ")
 ;;731
 ;;21,"00440-7748-90 ")
 ;;938
 ;;21,"00440-7748-92 ")
 ;;939
 ;;21,"00591-2719-60 ")
 ;;994
 ;;21,"00591-2720-60 ")
 ;;998
 ;;21,"00591-3971-01 ")
 ;;1048
 ;;21,"00591-3972-01 ")
 ;;1068
 ;;21,"00591-3973-01 ")
 ;;1084
 ;;21,"00597-0146-18 ")
 ;;1008
 ;;21,"00597-0146-60 ")
 ;;1009
 ;;21,"00597-0147-18 ")
 ;;1010
 ;;21,"00597-0147-60 ")
 ;;1011
 ;;21,"00597-0148-18 ")
 ;;1012
 ;;21,"00597-0148-60 ")
 ;;1013
 ;;21,"00603-4467-21 ")
 ;;232
 ;;21,"00603-4467-28 ")
 ;;233
 ;;21,"00603-4467-32 ")
 ;;234
 ;;21,"00603-4468-21 ")
 ;;563
 ;;21,"00603-4468-28 ")
 ;;564
 ;;21,"00603-4468-32 ")
 ;;565
 ;;21,"00603-4469-21 ")
 ;;733
 ;;21,"00603-4469-28 ")
 ;;734
 ;;21,"00603-4469-32 ")
 ;;735
 ;;21,"00781-5050-01 ")
 ;;245
 ;;21,"00781-5050-05 ")
 ;;246
 ;;21,"00781-5050-10 ")
 ;;247
 ;;21,"00781-5050-61 ")
 ;;248
 ;;21,"00781-5051-01 ")
 ;;554
 ;;21,"00781-5051-05 ")
 ;;555
 ;;21,"00781-5051-61 ")
 ;;556
 ;;21,"00781-5052-01 ")
 ;;742
 ;;21,"00781-5052-05 ")
 ;;743
 ;;21,"00781-5052-61 ")
 ;;744
 ;;21,"00781-5626-60 ")
 ;;1272
 ;;21,"00781-5627-60 ")
 ;;1288
 ;;21,"00904-5794-61 ")
 ;;919
 ;;21,"00904-5795-61 ")
 ;;986
 ;;21,"00904-5849-14 ")
 ;;249
 ;;21,"00904-5849-18 ")
 ;;250
 ;;21,"00904-5849-40 ")
 ;;251
 ;;21,"00904-5849-52 ")
 ;;252
 ;;21,"00904-5849-53 ")
 ;;253
 ;;21,"00904-5849-54 ")
 ;;254
 ;;21,"00904-5849-80 ")
 ;;255
 ;;21,"00904-5849-89 ")
 ;;256
 ;;21,"00904-5849-93 ")
 ;;257
 ;;21,"00904-5850-40 ")
 ;;549
 ;;21,"00904-5850-52 ")
 ;;550
 ;;21,"00904-5850-53 ")
 ;;551
 ;;21,"00904-5850-89 ")
 ;;552
 ;;21,"00904-5850-93 ")
 ;;553
 ;;21,"00904-5851-40 ")
 ;;745
 ;;21,"00904-5851-52 ")
 ;;746
 ;;21,"00904-5851-89 ")
 ;;747
 ;;21,"00904-5851-93 ")
 ;;748
 ;;21,"00904-6090-61 ")
 ;;270
 ;;21,"00904-6091-61 ")
 ;;540
 ;;21,"00904-6092-61 ")
 ;;760
 ;;21,"00904-6107-40 ")
 ;;916
 ;;21,"00904-6107-61 ")
 ;;917
 ;;21,"00904-6108-60 ")
 ;;987
 ;;21,"00904-6108-61 ")
 ;;988
 ;;21,"00904-6326-61 ")
 ;;235
 ;;21,"00904-6327-61 ")
 ;;562
 ;;21,"00904-6328-61 ")
 ;;736
 ;;21,"00904-6343-14 ")
 ;;236
 ;;21,"00904-6343-18 ")
 ;;237
 ;;21,"00904-6343-40 ")
 ;;238
 ;;21,"00904-6343-52 ")
 ;;239
 ;;21,"00904-6343-53 ")
 ;;240
 ;;21,"00904-6343-54 ")
 ;;241
 ;;21,"00904-6343-80 ")
 ;;242
 ;;21,"00904-6343-89 ")
 ;;243
 ;;21,"00904-6343-93 ")
 ;;244
 ;;21,"00904-6344-40 ")
 ;;557
 ;;21,"00904-6344-52 ")
 ;;558
 ;;21,"00904-6344-53 ")
 ;;559
 ;;21,"00904-6344-89 ")
 ;;560
 ;;21,"00904-6344-93 ")
 ;;561
 ;;21,"00904-6345-40 ")
 ;;737
 ;;21,"00904-6345-52 ")
 ;;738
 ;;21,"00904-6345-89 ")
 ;;739
 ;;21,"00904-6345-93 ")
 ;;740
 ;;21,"10544-0058-30 ")
 ;;741
 ;;21,"10544-0248-90 ")
 ;;918
 ;;21,"10544-0253-30 ")
 ;;761
 ;;21,"10544-0254-30 ")
 ;;276
 ;;21,"10544-0255-30 ")
 ;;539
 ;;21,"10631-0206-01 ")
 ;;824
 ;;21,"10631-0206-02 ")
 ;;825
 ;;21,"13411-0163-02 ")
 ;;277
 ;;21,"13411-0163-03 ")
 ;;278
 ;;21,"13411-0163-06 ")
 ;;279
 ;;21,"13411-0163-09 ")
 ;;280
 ;;21,"13411-0163-10 ")
 ;;281
 ;;21,"13411-0164-02 ")
 ;;534
 ;;21,"13411-0164-03 ")
 ;;535
 ;;21,"13411-0164-06 ")
 ;;536
 ;;21,"13411-0164-09 ")
 ;;537
 ;;21,"13411-0164-10 ")
 ;;538
 ;;21,"13668-0280-33 ")
 ;;1273
 ;;21,"13668-0280-60 ")
 ;;1274
 ;;21,"13668-0281-33 ")
 ;;1286
 ;;21,"13668-0281-60 ")
 ;;1287
 ;;21,"13913-0002-13 ")
 ;;1001
 ;;21,"13913-0003-16 ")
 ;;1004
 ;;21,"14565-0202-10 ")
 ;;923
 ;;21,"14565-0202-50 ")
 ;;924
 ;;21,"16590-0313-30 ")
 ;;271
 ;;21,"16590-0313-60 ")
 ;;272
 ;;21,"16590-0313-72 ")
 ;;273
 ;;21,"16590-0313-82 ")
 ;;274
 ;;21,"16590-0313-90 ")
 ;;275
 ;;21,"16590-0397-30 ")
 ;;762
 ;;21,"16590-0397-60 ")
 ;;763
 ;;21,"16590-0397-90 ")
 ;;764
 ;;21,"20091-0531-01 ")
 ;;261
 ;;21,"20091-0531-05 ")
 ;;262
 ;;21,"20091-0531-10 ")
 ;;263
 ;;21,"20091-0533-01 ")
 ;;543
 ;;21,"20091-0533-05 ")
 ;;544
 ;;21,"20091-0533-10 ")
 ;;545
 ;;21,"20091-0535-01 ")
 ;;752
 ;;21,"20091-0535-05 ")
 ;;753
 ;;21,"20091-0535-10 ")
 ;;754
 ;;21,"21695-0471-00 ")
 ;;264
 ;;21,"21695-0471-30 ")
 ;;265
 ;;21,"21695-0471-60 ")
 ;;266
 ;;21,"21695-0471-72 ")
 ;;267
 ;;21,"21695-0471-78 ")
 ;;268
 ;;21,"21695-0471-90 ")
 ;;269
 ;;21,"21695-0472-30 ")
 ;;541
 ;;21,"21695-0472-60 ")
 ;;542
 ;;21,"21695-0473-00 ")
 ;;755
 ;;21,"21695-0473-30 ")
 ;;756
 ;;21,"21695-0473-60 ")
 ;;757
 ;;21,"21695-0473-78 ")
 ;;758
 ;;21,"21695-0473-90 ")
 ;;759
 ;;21,"21695-0568-30 ")
 ;;1251
 ;;21,"21695-0568-60 ")
 ;;1252
 ;;21,"21695-0828-30 ")
 ;;920
 ;;21,"21695-0828-60 ")
 ;;921
 ;;21,"21695-0828-90 ")
 ;;922
 ;;21,"21695-0894-00 ")
 ;;1086
 ;;21,"23155-0102-01 ")
 ;;258
 ;;21,"23155-0102-05 ")
 ;;259
 ;;21,"23155-0102-10 ")
 ;;260
 ;;21,"23155-0103-01 ")
 ;;546
 ;;21,"23155-0103-05 ")
 ;;547
 ;;21,"23155-0103-10 ")
 ;;548
 ;;21,"23155-0104-01 ")
 ;;749
 ;;21,"23155-0104-05 ")
 ;;750
 ;;21,"23155-0104-10 ")
 ;;751
 ;;21,"23155-0115-01 ")
 ;;1049
 ;;21,"23155-0116-01 ")
 ;;1067
 ;;21,"23155-0117-01 ")
 ;;1085
 ;;21,"23155-0233-01 ")
 ;;1113
 ;;21,"23155-0233-05 ")
 ;;1114
 ;;21,"23155-0234-01 ")
 ;;1164
 ;;21,"23155-0234-05 ")
 ;;1165
 ;;21,"23155-0235-01 ")
 ;;1249
 ;;21,"23155-0235-05 ")
 ;;1250
 ;;21,"23490-6838-01 ")
 ;;287
 ;;21,"23490-6838-02 ")
 ;;288
 ;;21,"23490-6838-03 ")
 ;;289
 ;;21,"23490-6838-04 ")
 ;;290
 ;;21,"23490-6838-09 ")
 ;;291
 ;;21,"23490-6839-01 ")
 ;;525
 ;;21,"23490-6839-02 ")
 ;;526
 ;;21,"23490-7260-01 ")
 ;;770
 ;;21,"23490-7260-02 ")
 ;;771
 ;;21,"23490-7260-03 ")
 ;;772
 ;;21,"23490-7260-04 ")
 ;;773
 ;;21,"23490-7448-03 ")
 ;;1169
 ;;21,"23490-7448-06 ")
 ;;1170
 ;;21,"23490-7449-01 ")
 ;;1242
 ;;21,"23490-7449-06 ")
 ;;1243
 ;;21,"23490-7449-09 ")
 ;;1244
 ;;21,"23490-7458-03 ")
 ;;928
 ;;21,"23490-7458-06 ")
 ;;929
 ;;21,"23490-7458-07 ")
 ;;930
 ;;21,"23490-7458-12 ")
 ;;931
 ;;21,"23490-7458-16 ")
 ;;932
 ;;21,"24658-0290-05 ")
 ;;296
 ;;21,"24658-0290-12 ")
 ;;297
 ;;21,"24658-0290-18 ")
 ;;298
 ;;21,"24658-0290-27 ")
 ;;299
 ;;21,"24658-0290-36 ")
 ;;300
 ;;21,"24658-0290-46 ")
 ;;301
 ;;21,"24658-0290-60 ")
 ;;302
 ;;21,"24658-0290-90 ")
 ;;303
 ;;21,"24658-0292-05 ")
 ;;774
 ;;21,"24658-0292-18 ")
 ;;775
 ;;21,"24658-0292-60 ")
 ;;776
 ;;21,"24658-0292-90 ")
 ;;777
 ;;21,"29033-0018-01 ")
 ;;925
 ;;21,"29033-0018-05 ")
 ;;926
 ;;21,"29033-0018-10 ")
 ;;927
 ;;21,"29033-0021-01 ")
 ;;985
 ;;21,"33261-0145-02 ")
 ;;778
 ;;21,"33261-0145-30 ")
 ;;779
 ;;21,"33261-0145-60 ")
 ;;780
 ;;21,"33261-0145-90 ")
 ;;781
 ;;21,"33261-0157-02 ")
 ;;292
 ;;21,"33261-0157-30 ")
 ;;293
 ;;21,"33261-0157-60 ")
 ;;294
 ;;21,"33261-0157-90 ")
 ;;295
 ;;21,"33261-0372-30 ")
 ;;934
 ;;21,"33261-0372-60 ")
 ;;935
 ;;21,"33261-0372-90 ")
 ;;936
 ;;21,"33261-0411-00 ")
 ;;1245
 ;;21,"33261-0411-30 ")
 ;;1246
 ;;21,"33261-0411-60 ")
 ;;1247
 ;;21,"33261-0411-90 ")
 ;;1248
 ;;21,"33261-0540-00 ")
 ;;527
 ;;21,"33261-0540-30 ")
 ;;528
 ;;21,"33261-0540-60 ")
 ;;529
 ;;21,"33261-0540-90 ")
 ;;530
 ;;21,"33261-0821-30 ")
 ;;1166
 ;;21,"33261-0821-60 ")
 ;;1167
 ;;21,"33261-0821-90 ")
 ;;1168
 ;;21,"33358-0234-00 ")
 ;;284
 ;;21,"33358-0234-30 ")
 ;;285
 ;;21,"33358-0234-60 ")
 ;;286
 ;;21,"33358-0235-60 ")
 ;;937
 ;;21,"33358-0236-30 ")
 ;;532
 ;;21,"33358-0236-60 ")
 ;;533
 ;;21,"33358-0237-30 ")
 ;;765
 ;;21,"33358-0237-60 ")
 ;;766
 ;;21,"35356-0130-60 ")
 ;;1276
 ;;21,"35356-0136-60 ")
 ;;1025
 ;;21,"35356-0269-28 ")
 ;;933
 ;;21,"35356-0691-60 ")
 ;;282
 ;;21,"35356-0792-30 ")
 ;;283
 ;;21,"35356-0886-30 ")
 ;;767
 ;;21,"35356-0886-60 ")
 ;;768
 ;;21,"35356-0886-90 ")
 ;;769
 ;;21,"35356-0897-30 ")
 ;;1172
 ;;21,"35356-0897-60 ")
 ;;1173
 ;;21,"35356-0922-60 ")
 ;;531
 ;;21,"35356-0932-30 ")
 ;;1110
 ;;21,"35356-0932-60 ")
 ;;1111
 ;;21,"35356-0932-90 ")
 ;;1112
 ;;21,"35356-0959-30 ")
 ;;522
 ;;21,"35356-0959-60 ")
 ;;523
 ;;21,"35356-0959-90 ")
 ;;524
 ;;21,"35356-0970-30 ")
 ;;1050
 ;;21,"35356-0970-60 ")
 ;;1051
 ;;21,"35356-0970-90 ")
 ;;1052
 ;;21,"42254-0071-30 ")
 ;;1171
 ;;21,"42291-0305-01 ")
 ;;1066
 ;;21,"42291-0306-01 ")
 ;;1087
 ;;21,"42291-0605-10 ")
 ;;304
 ;;21,"42291-0605-12 ")
 ;;305
 ;;21,"42291-0605-18 ")
 ;;306
 ;;21,"42291-0605-27 ")
 ;;307
 ;;21,"42291-0605-36 ")
 ;;308
 ;;21,"42291-0605-45 ")
 ;;309
 ;;21,"42291-0605-60 ")
 ;;310
 ;;21,"42291-0605-90 ")
 ;;311
 ;;21,"42291-0606-10 ")
 ;;518
 ;;21,"42291-0606-18 ")
 ;;519
 ;
OTHER ; OTHER ROUTINES
 D ^BGP51S10
 D ^BGP51S11
 D ^BGP51S12
 D ^BGP51S13
 D ^BGP51S14
 D ^BGP51S15
 D ^BGP51S16
 D ^BGP51S2
 D ^BGP51S3
 D ^BGP51S4
 D ^BGP51S5
 D ^BGP51S6
 D ^BGP51S7
 D ^BGP51S8
 D ^BGP51S9
 Q
