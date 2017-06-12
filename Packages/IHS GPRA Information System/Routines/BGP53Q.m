BGP53Q ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP HEDIS BETA BLOCKER NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS BETA BLOCKER NDC
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
 ;;21,"00007-3370-13 ")
 ;;1
 ;;21,"00007-3371-13 ")
 ;;2
 ;;21,"00007-3371-59 ")
 ;;3
 ;;21,"00007-3372-13 ")
 ;;4
 ;;21,"00007-3372-59 ")
 ;;5
 ;;21,"00007-3373-13 ")
 ;;6
 ;;21,"00007-3373-59 ")
 ;;7
 ;;21,"00007-4139-20 ")
 ;;8
 ;;21,"00007-4140-20 ")
 ;;9
 ;;21,"00007-4141-20 ")
 ;;10
 ;;21,"00007-4142-20 ")
 ;;11
 ;;21,"00024-2300-20 ")
 ;;12
 ;;21,"00024-2301-10 ")
 ;;13
 ;;21,"00054-3727-63 ")
 ;;14
 ;;21,"00054-3730-63 ")
 ;;15
 ;;21,"00078-0458-05 ")
 ;;16
 ;;21,"00078-0459-05 ")
 ;;17
 ;;21,"00078-0460-05 ")
 ;;18
 ;;21,"00078-0461-05 ")
 ;;19
 ;;21,"00085-0244-04 ")
 ;;20
 ;;21,"00085-0244-05 ")
 ;;21
 ;;21,"00085-0244-07 ")
 ;;22
 ;;21,"00085-0244-08 ")
 ;;23
 ;;21,"00085-0438-03 ")
 ;;24
 ;;21,"00085-0438-05 ")
 ;;25
 ;;21,"00085-0438-06 ")
 ;;26
 ;;21,"00085-0752-04 ")
 ;;27
 ;;21,"00085-0752-05 ")
 ;;28
 ;;21,"00085-0752-07 ")
 ;;29
 ;;21,"00085-0752-08 ")
 ;;30
 ;;21,"00091-4500-15 ")
 ;;31
 ;;21,"00093-0051-01 ")
 ;;32
 ;;21,"00093-0051-05 ")
 ;;33
 ;;21,"00093-0135-01 ")
 ;;34
 ;;21,"00093-0135-05 ")
 ;;35
 ;;21,"00093-0733-01 ")
 ;;36
 ;;21,"00093-0733-10 ")
 ;;37
 ;;21,"00093-0734-01 ")
 ;;38
 ;;21,"00093-0734-10 ")
 ;;39
 ;;21,"00093-0752-01 ")
 ;;40
 ;;21,"00093-0752-10 ")
 ;;41
 ;;21,"00093-0753-01 ")
 ;;42
 ;;21,"00093-0753-05 ")
 ;;43
 ;;21,"00093-0787-01 ")
 ;;44
 ;;21,"00093-0787-10 ")
 ;;45
 ;;21,"00093-1060-01 ")
 ;;46
 ;;21,"00093-1061-01 ")
 ;;47
 ;;21,"00093-1062-01 ")
 ;;48
 ;;21,"00093-1063-01 ")
 ;;49
 ;;21,"00093-4235-01 ")
 ;;50
 ;;21,"00093-4236-01 ")
 ;;51
 ;;21,"00093-4237-01 ")
 ;;52
 ;;21,"00093-5270-56 ")
 ;;53
 ;;21,"00093-5271-56 ")
 ;;54
 ;;21,"00093-7295-01 ")
 ;;55
 ;;21,"00093-7295-05 ")
 ;;56
 ;;21,"00093-7296-01 ")
 ;;57
 ;;21,"00093-7296-05 ")
 ;;58
 ;;21,"00115-2711-01 ")
 ;;59
 ;;21,"00115-5311-01 ")
 ;;60
 ;;21,"00115-5322-01 ")
 ;;61
 ;;21,"00172-4364-10 ")
 ;;62
 ;;21,"00172-4364-60 ")
 ;;63
 ;;21,"00172-4364-70 ")
 ;;64
 ;;21,"00172-4365-00 ")
 ;;65
 ;;21,"00172-4365-10 ")
 ;;66
 ;;21,"00172-4365-60 ")
 ;;67
 ;;21,"00172-4365-70 ")
 ;;68
 ;;21,"00172-4366-60 ")
 ;;69
 ;;21,"00173-0790-01 ")
 ;;70
 ;;21,"00173-0790-02 ")
 ;;71
 ;;21,"00173-0791-01 ")
 ;;72
 ;;21,"00173-0791-02 ")
 ;;73
 ;;21,"00182-8202-00 ")
 ;;74
 ;;21,"00182-8202-89 ")
 ;;75
 ;;21,"00182-8203-00 ")
 ;;76
 ;;21,"00182-8203-89 ")
 ;;77
 ;;21,"00182-8236-00 ")
 ;;78
 ;;21,"00182-8236-89 ")
 ;;79
 ;;21,"00185-0010-01 ")
 ;;80
 ;;21,"00185-0010-05 ")
 ;;81
 ;;21,"00185-0117-01 ")
 ;;82
 ;;21,"00185-0117-05 ")
 ;;83
 ;;21,"00185-0118-01 ")
 ;;84
 ;;21,"00185-0118-05 ")
 ;;85
 ;;21,"00185-0170-01 ")
 ;;86
 ;;21,"00185-0170-09 ")
 ;;87
 ;;21,"00185-0171-01 ")
 ;;88
 ;;21,"00185-0171-05 ")
 ;;89
 ;;21,"00185-0171-09 ")
 ;;90
 ;;21,"00185-0174-01 ")
 ;;91
 ;;21,"00185-0174-09 ")
 ;;92
 ;;21,"00185-0177-01 ")
 ;;93
 ;;21,"00185-0177-09 ")
 ;;94
 ;;21,"00185-0281-01 ")
 ;;95
 ;;21,"00185-0281-10 ")
 ;;96
 ;;21,"00185-0282-01 ")
 ;;97
 ;;21,"00185-0282-10 ")
 ;;98
 ;;21,"00185-0283-01 ")
 ;;99
 ;;21,"00185-0283-10 ")
 ;;100
 ;;21,"00185-0284-01 ")
 ;;101
 ;;21,"00185-0284-10 ")
 ;;102
 ;;21,"00185-0701-01 ")
 ;;103
 ;;21,"00185-0701-05 ")
 ;;104
 ;;21,"00185-0701-30 ")
 ;;105
 ;;21,"00185-0704-01 ")
 ;;106
 ;;21,"00185-0704-05 ")
 ;;107
 ;;21,"00185-0704-30 ")
 ;;108
 ;;21,"00185-0707-01 ")
 ;;109
 ;;21,"00185-0707-05 ")
 ;;110
 ;;21,"00185-0707-30 ")
 ;;111
 ;;21,"00185-0771-01 ")
 ;;112
 ;;21,"00185-0771-30 ")
 ;;113
 ;;21,"00185-0774-01 ")
 ;;114
 ;;21,"00185-0774-30 ")
 ;;115
 ;;21,"00186-1088-05 ")
 ;;116
 ;;21,"00186-1088-39 ")
 ;;117
 ;;21,"00186-1090-05 ")
 ;;118
 ;;21,"00186-1090-39 ")
 ;;119
 ;;21,"00186-1092-05 ")
 ;;120
 ;;21,"00186-1092-39 ")
 ;;121
 ;;21,"00186-1094-05 ")
 ;;122
 ;;21,"00186-7300-05 ")
 ;;123
 ;;21,"00186-7301-05 ")
 ;;124
 ;;21,"00186-7302-05 ")
 ;;125
 ;;21,"00186-7303-05 ")
 ;;126
 ;;21,"00228-2175-11 ")
 ;;127
 ;;21,"00228-2176-11 ")
 ;;128
 ;;21,"00228-2177-11 ")
 ;;129
 ;;21,"00228-2178-11 ")
 ;;130
 ;;21,"00228-2778-11 ")
 ;;131
 ;;21,"00228-2778-50 ")
 ;;132
 ;;21,"00228-2779-11 ")
 ;;133
 ;;21,"00228-2779-50 ")
 ;;134
 ;;21,"00228-2780-11 ")
 ;;135
 ;;21,"00228-2780-50 ")
 ;;136
 ;;21,"00228-2781-11 ")
 ;;137
 ;;21,"00228-2781-50 ")
 ;;138
 ;;21,"00245-0012-01 ")
 ;;139
 ;;21,"00245-0012-89 ")
 ;;140
 ;;21,"00245-0013-01 ")
 ;;141
 ;;21,"00245-0013-89 ")
 ;;142
 ;;21,"00245-0014-01 ")
 ;;143
 ;;21,"00245-0014-89 ")
 ;;144
 ;;21,"00245-0015-01 ")
 ;;145
 ;;21,"00245-0015-89 ")
 ;;146
 ;;21,"00245-0084-10 ")
 ;;147
 ;;21,"00245-0084-11 ")
 ;;148
 ;;21,"00245-0085-10 ")
 ;;149
 ;;21,"00245-0085-11 ")
 ;;150
 ;;21,"00245-0086-10 ")
 ;;151
 ;;21,"00245-0086-11 ")
 ;;152
 ;;21,"00245-0087-10 ")
 ;;153
 ;;21,"00245-0087-11 ")
 ;;154
 ;;21,"00247-1012-30 ")
 ;;155
 ;;21,"00247-1044-30 ")
 ;;156
 ;;21,"00247-1044-60 ")
 ;;157
 ;;21,"00247-1051-60 ")
 ;;158
 ;;21,"00247-1051-99 ")
 ;;159
 ;;21,"00247-1065-00 ")
 ;;160
 ;;21,"00247-1065-60 ")
 ;;161
 ;;21,"00247-1065-77 ")
 ;;162
 ;;21,"00247-1065-90 ")
 ;;163
 ;;21,"00247-1072-00 ")
 ;;164
 ;;21,"00247-1072-06 ")
 ;;165
 ;;21,"00247-1072-14 ")
 ;;166
 ;;21,"00247-1072-90 ")
 ;;167
 ;;21,"00247-1133-30 ")
 ;;168
 ;;21,"00247-1133-60 ")
 ;;169
 ;;21,"00247-1134-30 ")
 ;;170
 ;;21,"00247-1134-60 ")
 ;;171
 ;;21,"00247-1146-02 ")
 ;;172
 ;;21,"00247-1146-07 ")
 ;;173
 ;;21,"00247-1273-30 ")
 ;;174
 ;;21,"00247-1273-99 ")
 ;;175
 ;;21,"00247-1384-20 ")
 ;;176
 ;;21,"00247-1634-30 ")
 ;;177
 ;;21,"00247-1671-30 ")
 ;;178
 ;;21,"00247-1672-30 ")
 ;;179
 ;;21,"00247-1673-30 ")
 ;;180
 ;;21,"00247-1801-00 ")
 ;;181
 ;;21,"00247-1801-30 ")
 ;;182
 ;;21,"00247-1801-60 ")
 ;;183
 ;;21,"00247-1801-77 ")
 ;;184
 ;;21,"00247-1801-90 ")
 ;;185
 ;;21,"00247-1802-00 ")
 ;;186
 ;;21,"00247-1802-30 ")
 ;;187
 ;;21,"00247-1802-60 ")
 ;;188
 ;;21,"00247-1802-77 ")
 ;;189
 ;;21,"00247-1802-90 ")
 ;;190
 ;;21,"00247-1803-00 ")
 ;;191
 ;;21,"00247-1803-30 ")
 ;;192
 ;;21,"00247-1803-60 ")
 ;;193
 ;;21,"00247-1803-77 ")
 ;;194
 ;;21,"00247-1803-90 ")
 ;;195
 ;;21,"00247-1887-00 ")
 ;;196
 ;;21,"00247-1887-30 ")
 ;;197
 ;;21,"00247-1887-60 ")
 ;;198
 ;;21,"00247-1887-77 ")
 ;;199
 ;;21,"00247-1887-90 ")
 ;;200
 ;;21,"00247-1888-00 ")
 ;;201
 ;;21,"00247-1888-30 ")
 ;;202
 ;;21,"00247-1888-60 ")
 ;;203
 ;;21,"00247-1888-77 ")
 ;;204
 ;;21,"00247-1888-90 ")
 ;;205
 ;;21,"00247-1889-00 ")
 ;;206
 ;;21,"00247-1889-30 ")
 ;;207
 ;;21,"00247-1889-60 ")
 ;;208
 ;;21,"00247-1889-77 ")
 ;;209
 ;;21,"00247-1889-90 ")
 ;;210
 ;;21,"00247-1923-00 ")
 ;;211
 ;;21,"00247-1923-60 ")
 ;;212
 ;;21,"00247-2076-30 ")
 ;;213
 ;;21,"00247-2076-60 ")
 ;;214
 ;;21,"00247-2331-00 ")
 ;;215
 ;;21,"00247-2331-30 ")
 ;;216
 ;;21,"00247-2331-60 ")
 ;;217
 ;;21,"00247-2331-77 ")
 ;;218
 ;;21,"00247-2331-90 ")
 ;;219
 ;;21,"00247-2332-00 ")
 ;;220
 ;;21,"00247-2332-30 ")
 ;;221
 ;;21,"00247-2332-60 ")
 ;;222
 ;;21,"00247-2332-77 ")
 ;;223
 ;;21,"00247-2332-90 ")
 ;;224
 ;;21,"00247-2333-00 ")
 ;;225
 ;;21,"00247-2333-30 ")
 ;;226
 ;;21,"00247-2333-60 ")
 ;;227
 ;;21,"00247-2333-77 ")
 ;;228
 ;;21,"00247-2333-90 ")
 ;;229
 ;;21,"00247-2334-00 ")
 ;;230
 ;;21,"00247-2334-30 ")
 ;;231
 ;;21,"00247-2334-60 ")
 ;;232
 ;;21,"00247-2334-77 ")
 ;;233
 ;;21,"00247-2334-90 ")
 ;;234
 ;;21,"00310-0101-10 ")
 ;;235
 ;;21,"00310-0105-10 ")
 ;;236
 ;;21,"00310-0107-10 ")
 ;;237
 ;;21,"00310-0115-10 ")
 ;;238
 ;;21,"00310-0117-10 ")
 ;;239
 ;;21,"00310-1087-30 ")
 ;;240
 ;;21,"00310-1095-30 ")
 ;;241
 ;;21,"00310-1097-30 ")
 ;;242
 ;;21,"00339-5315-12 ")
 ;;243
 ;;21,"00339-5317-12 ")
 ;;244
 ;;21,"00339-5319-12 ")
 ;;245
 ;;21,"00339-5320-12 ")
 ;;246
 ;;21,"00339-5321-12 ")
 ;;247
 ;;21,"00339-5753-12 ")
 ;;248
 ;;21,"00339-5755-12 ")
 ;;249
 ;;21,"00339-5757-12 ")
 ;;250
 ;;21,"00339-5759-12 ")
 ;;251
 ;;21,"00378-0018-01 ")
 ;;252
 ;;21,"00378-0018-02 ")
 ;;253
 ;;21,"00378-0018-05 ")
 ;;254
 ;;21,"00378-0018-07 ")
 ;;255
 ;;21,"00378-0018-91 ")
 ;;256
 ;;21,"00378-0028-01 ")
 ;;257
 ;;21,"00378-0032-01 ")
 ;;258
 ;;21,"00378-0032-02 ")
 ;;259
 ;;21,"00378-0032-04 ")
 ;;260
 ;;21,"00378-0032-10 ")
 ;;261
 ;;21,"00378-0047-01 ")
 ;;262
 ;;21,"00378-0047-02 ")
 ;;263
 ;;21,"00378-0047-04 ")
 ;;264
 ;;21,"00378-0047-10 ")
 ;;265
 ;;21,"00378-0052-01 ")
 ;;266
 ;;21,"00378-0055-01 ")
 ;;267
 ;;21,"00378-0096-01 ")
 ;;268
 ;;21,"00378-0099-01 ")
 ;;269
 ;;21,"00378-0127-01 ")
 ;;270
 ;;21,"00378-0182-01 ")
 ;;271
 ;;21,"00378-0182-10 ")
 ;;272
 ;;21,"00378-0183-01 ")
 ;;273
 ;;21,"00378-0183-10 ")
 ;;274
 ;;21,"00378-0184-01 ")
 ;;275
 ;;21,"00378-0184-10 ")
 ;;276
 ;;21,"00378-0185-01 ")
 ;;277
 ;;21,"00378-0185-05 ")
 ;;278
 ;;21,"00378-0187-01 ")
 ;;279
 ;;21,"00378-0218-01 ")
 ;;280
 ;;21,"00378-0218-10 ")
 ;;281
 ;;21,"00378-0221-01 ")
 ;;282
 ;;21,"00378-0231-01 ")
 ;;283
 ;;21,"00378-0231-10 ")
 ;;284
 ;;21,"00378-0305-01 ")
 ;;285
 ;;21,"00378-0310-01 ")
 ;;286
 ;;21,"00378-0314-01 ")
 ;;287
 ;;21,"00378-0347-01 ")
 ;;288
 ;;21,"00378-0424-01 ")
 ;;289
 ;;21,"00378-0434-01 ")
 ;;290
 ;;21,"00378-0445-01 ")
 ;;291
 ;;21,"00378-0501-01 ")
 ;;292
 ;;21,"00378-0501-10 ")
 ;;293
 ;;21,"00378-0503-01 ")
 ;;294
 ;;21,"00378-0503-10 ")
 ;;295
 ;;21,"00378-0505-01 ")
 ;;296
 ;;21,"00378-0505-05 ")
 ;;297
 ;;21,"00378-0523-01 ")
 ;;298
 ;;21,"00378-0523-93 ")
 ;;299
 ;;21,"00378-0524-01 ")
 ;;300
 ;;21,"00378-0524-93 ")
 ;;301
 ;;21,"00378-0715-01 ")
 ;;302
 ;;21,"00378-0731-01 ")
 ;;303
 ;;21,"00378-0757-01 ")
 ;;304
 ;;21,"00378-0757-10 ")
 ;;305
 ;;21,"00378-0757-93 ")
 ;;306
 ;;21,"00378-1132-01 ")
 ;;307
 ;;21,"00378-1132-10 ")
 ;;308
 ;;21,"00378-1171-01 ")
 ;;309
 ;;21,"00378-1171-10 ")
 ;;310
 ;;21,"00378-1200-01 ")
 ;;311
 ;;21,"00378-1400-01 ")
 ;;312
 ;;21,"00378-2063-01 ")
 ;;313
 ;;21,"00378-2064-01 ")
 ;;314
 ;;21,"00378-2064-93 ")
 ;;315
 ;;21,"00378-3631-01 ")
 ;;316
 ;;21,"00378-3631-02 ")
 ;;317
 ;;21,"00378-3631-05 ")
 ;;318
 ;;21,"00378-3631-07 ")
 ;;319
 ;;21,"00378-3632-01 ")
 ;;320
 ;;21,"00378-3632-02 ")
 ;;321
 ;;21,"00378-3632-05 ")
 ;;322
 ;;21,"00378-3632-07 ")
 ;;323
 ;;21,"00378-3633-01 ")
 ;;324
 ;;21,"00378-3633-02 ")
 ;;325
 ;;21,"00378-3633-05 ")
 ;;326
 ;;21,"00378-3633-07 ")
 ;;327
 ;;21,"00378-3634-01 ")
 ;;328
 ;;21,"00378-3634-02 ")
 ;;329
 ;;21,"00378-3634-05 ")
 ;;330
 ;;21,"00378-3634-07 ")
 ;;331
 ;;21,"00378-4595-10 ")
 ;;332
 ;;21,"00378-4595-77 ")
 ;;333
 ;;21,"00378-4596-10 ")
 ;;334
 ;;21,"00378-4596-77 ")
 ;;335
 ;;21,"00378-4597-10 ")
 ;;336
 ;;21,"00378-4597-77 ")
 ;;337
 ;;21,"00378-4598-05 ")
 ;;338
 ;;21,"00378-4598-77 ")
 ;;339
 ;;21,"00378-5123-01 ")
 ;;340
 ;;21,"00378-5124-01 ")
 ;;341
 ;;21,"00378-5125-01 ")
 ;;342
 ;;21,"00378-6160-01 ")
 ;;343
 ;;21,"00378-6160-05 ")
 ;;344
 ;;21,"00378-6180-01 ")
 ;;345
 ;;21,"00378-6180-05 ")
 ;;346
 ;;21,"00378-6220-01 ")
 ;;347
 ;;21,"00378-6220-05 ")
 ;;348
 ;;21,"00378-6260-01 ")
 ;;349
 ;;21,"00378-6260-05 ")
 ;;350
 ;;21,"00406-2022-01 ")
 ;;351
 ;;21,"00406-2022-10 ")
 ;;352
 ;;21,"00406-2023-01 ")
 ;;353
 ;;21,"00406-2023-10 ")
 ;;354
 ;;21,"00406-2024-01 ")
 ;;355
 ;;21,"00406-2024-10 ")
 ;;356
 ;;21,"00440-7170-30 ")
 ;;357
 ;;21,"00440-7171-10 ")
 ;;358
 ;;21,"00440-7172-30 ")
 ;;359
 ;;21,"00440-7785-30 ")
 ;;360
 ;;21,"00456-1402-01 ")
 ;;361
 ;;21,"00456-1402-11 ")
 ;;362
 ;;21,"00456-1402-30 ")
 ;;363
 ;;21,"00456-1402-63 ")
 ;;364
 ;;21,"00456-1405-01 ")
 ;;365
 ;;21,"00456-1405-30 ")
 ;;366
 ;;21,"00456-1405-63 ")
 ;;367
 ;;21,"00456-1410-01 ")
 ;;368
 ;;21,"00456-1410-30 ")
 ;;369
 ;;21,"00456-1410-63 ")
 ;;370
 ;;21,"00456-1420-01 ")
 ;;371
 ;;21,"00456-1420-30 ")
 ;;372
 ;;21,"00456-1420-90 ")
 ;;373
 ;;21,"00490-0053-00 ")
 ;;374
 ;;21,"00490-0053-30 ")
 ;;375
 ;;21,"00490-0053-60 ")
 ;;376
 ;;21,"00490-0053-90 ")
 ;;377
 ;;21,"00555-0427-05 ")
 ;;378
 ;;21,"00591-0462-01 ")
 ;;379
 ;;21,"00591-0462-10 ")
 ;;380
 ;;21,"00591-0463-01 ")
 ;;381
 ;;21,"00591-0463-10 ")
 ;;382
 ;;21,"00591-0605-01 ")
 ;;383
 ;;21,"00591-0605-05 ")
 ;;384
 ;;21,"00591-0606-01 ")
 ;;385
 ;;21,"00591-0606-05 ")
 ;;386
 ;;21,"00591-0607-01 ")
 ;;387
 ;;21,"00591-0841-01 ")
 ;;388
 ;;21,"00591-0841-05 ")
 ;;389
 ;;21,"00591-0842-01 ")
 ;;390
 ;;21,"00591-0842-05 ")
 ;;391
 ;;21,"00591-0843-01 ")
 ;;392
 ;;21,"00591-0843-30 ")
 ;;393
 ;
OTHER ; OTHER ROUTINES
 D ^BGP53Q10
 D ^BGP53Q11
 D ^BGP53Q12
 D ^BGP53Q13
 D ^BGP53Q14
 D ^BGP53Q15
 D ^BGP53Q16
 D ^BGP53Q17
 D ^BGP53Q18
 D ^BGP53Q19
 D ^BGP53Q2
 D ^BGP53Q20
 D ^BGP53Q21
 D ^BGP53Q22
 D ^BGP53Q23
 D ^BGP53Q24
 D ^BGP53Q3
 D ^BGP53Q4
 D ^BGP53Q5
 D ^BGP53Q6
 D ^BGP53Q7
 D ^BGP53Q8
 D ^BGP53Q9
 Q
