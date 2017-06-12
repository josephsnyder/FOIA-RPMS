BGP53I ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP HEDIS ANTIBIOTICS NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ANTIBIOTICS NDC
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
 ;;21,"00002-8995-19 ")
 ;;1
 ;;21,"00002-9500-01 ")
 ;;2
 ;;21,"00004-1962-01 ")
 ;;3
 ;;21,"00004-1963-01 ")
 ;;4
 ;;21,"00004-1963-02 ")
 ;;5
 ;;21,"00004-1964-01 ")
 ;;6
 ;;21,"00004-1964-04 ")
 ;;7
 ;;21,"00004-1965-01 ")
 ;;8
 ;;21,"00004-1971-01 ")
 ;;9
 ;;21,"00004-2002-78 ")
 ;;10
 ;;21,"00009-0225-02 ")
 ;;11
 ;;21,"00009-0225-03 ")
 ;;12
 ;;21,"00009-0302-25 ")
 ;;13
 ;;21,"00009-0331-02 ")
 ;;14
 ;;21,"00009-0395-02 ")
 ;;15
 ;;21,"00009-0395-14 ")
 ;;16
 ;;21,"00009-0602-25 ")
 ;;17
 ;;21,"00009-0728-09 ")
 ;;18
 ;;21,"00009-0760-04 ")
 ;;19
 ;;21,"00009-0775-26 ")
 ;;20
 ;;21,"00009-0870-21 ")
 ;;21
 ;;21,"00009-0870-26 ")
 ;;22
 ;;21,"00009-0901-25 ")
 ;;23
 ;;21,"00009-0902-11 ")
 ;;24
 ;;21,"00009-0902-18 ")
 ;;25
 ;;21,"00009-3124-03 ")
 ;;26
 ;;21,"00009-3375-02 ")
 ;;27
 ;;21,"00009-3381-02 ")
 ;;28
 ;;21,"00009-3382-02 ")
 ;;29
 ;;21,"00009-3447-03 ")
 ;;30
 ;;21,"00009-3618-01 ")
 ;;31
 ;;21,"00015-3400-95 ")
 ;;32
 ;;21,"00015-3709-95 ")
 ;;33
 ;;21,"00015-7100-28 ")
 ;;34
 ;;21,"00015-7276-75 ")
 ;;35
 ;;21,"00015-7277-60 ")
 ;;36
 ;;21,"00015-7277-75 ")
 ;;37
 ;;21,"00015-7278-62 ")
 ;;38
 ;;21,"00015-7278-73 ")
 ;;39
 ;;21,"00015-7338-12 ")
 ;;40
 ;;21,"00015-7401-20 ")
 ;;41
 ;;21,"00015-7402-20 ")
 ;;42
 ;;21,"00015-7402-99 ")
 ;;43
 ;;21,"00015-7403-20 ")
 ;;44
 ;;21,"00015-7403-99 ")
 ;;45
 ;;21,"00015-7404-18 ")
 ;;46
 ;;21,"00015-7404-20 ")
 ;;47
 ;;21,"00015-7404-89 ")
 ;;48
 ;;21,"00015-7404-99 ")
 ;;49
 ;;21,"00015-7405-18 ")
 ;;50
 ;;21,"00015-7405-20 ")
 ;;51
 ;;21,"00015-7405-89 ")
 ;;52
 ;;21,"00015-7405-99 ")
 ;;53
 ;;21,"00015-7993-68 ")
 ;;54
 ;;21,"00029-6075-27 ")
 ;;55
 ;;21,"00029-6075-31 ")
 ;;56
 ;;21,"00029-6080-12 ")
 ;;57
 ;;21,"00029-6080-27 ")
 ;;58
 ;;21,"00029-6080-31 ")
 ;;59
 ;;21,"00029-6085-22 ")
 ;;60
 ;;21,"00029-6085-23 ")
 ;;61
 ;;21,"00029-6085-39 ")
 ;;62
 ;;21,"00029-6086-12 ")
 ;;63
 ;;21,"00029-6090-22 ")
 ;;64
 ;;21,"00029-6090-23 ")
 ;;65
 ;;21,"00029-6090-39 ")
 ;;66
 ;;21,"00029-6094-40 ")
 ;;67
 ;;21,"00029-6096-48 ")
 ;;68
 ;;21,"00029-6096-60 ")
 ;;69
 ;;21,"00045-0066-01 ")
 ;;70
 ;;21,"00045-0067-01 ")
 ;;71
 ;;21,"00045-0068-01 ")
 ;;72
 ;;21,"00045-0069-51 ")
 ;;73
 ;;21,"00045-1520-10 ")
 ;;74
 ;;21,"00045-1520-50 ")
 ;;75
 ;;21,"00049-0520-22 ")
 ;;76
 ;;21,"00049-0520-44 ")
 ;;77
 ;;21,"00049-0520-83 ")
 ;;78
 ;;21,"00049-0520-84 ")
 ;;79
 ;;21,"00049-0530-22 ")
 ;;80
 ;;21,"00049-0530-28 ")
 ;;81
 ;;21,"00049-0530-44 ")
 ;;82
 ;;21,"00054-0036-21 ")
 ;;83
 ;;21,"00054-0037-21 ")
 ;;84
 ;;21,"00069-0026-01 ")
 ;;85
 ;;21,"00069-0026-05 ")
 ;;86
 ;;21,"00069-0027-10 ")
 ;;87
 ;;21,"00069-0027-12 ")
 ;;88
 ;;21,"00069-0029-18 ")
 ;;89
 ;;21,"00069-0029-20 ")
 ;;90
 ;;21,"00069-0046-31 ")
 ;;91
 ;;21,"00069-0046-37 ")
 ;;92
 ;;21,"00069-0065-25 ")
 ;;93
 ;;21,"00069-0065-30 ")
 ;;94
 ;;21,"00069-0071-28 ")
 ;;95
 ;;21,"00069-0071-35 ")
 ;;96
 ;;21,"00069-0104-04 ")
 ;;97
 ;;21,"00069-0310-20 ")
 ;;98
 ;;21,"00069-0312-20 ")
 ;;99
 ;;21,"00069-0400-10 ")
 ;;100
 ;;21,"00069-0950-50 ")
 ;;101
 ;;21,"00069-0970-65 ")
 ;;102
 ;;21,"00069-0971-93 ")
 ;;103
 ;;21,"00069-0990-50 ")
 ;;104
 ;;21,"00069-3051-07 ")
 ;;105
 ;;21,"00069-3051-75 ")
 ;;106
 ;;21,"00069-3060-30 ")
 ;;107
 ;;21,"00069-3060-75 ")
 ;;108
 ;;21,"00069-3060-86 ")
 ;;109
 ;;21,"00069-3070-30 ")
 ;;110
 ;;21,"00069-3070-75 ")
 ;;111
 ;;21,"00069-3070-86 ")
 ;;112
 ;;21,"00069-3080-30 ")
 ;;113
 ;;21,"00069-3110-19 ")
 ;;114
 ;;21,"00069-3120-19 ")
 ;;115
 ;;21,"00069-3130-19 ")
 ;;116
 ;;21,"00069-3140-19 ")
 ;;117
 ;;21,"00069-3150-14 ")
 ;;118
 ;;21,"00069-3150-83 ")
 ;;119
 ;;21,"00069-3150-84 ")
 ;;120
 ;;21,"00069-3241-15 ")
 ;;121
 ;;21,"00069-3241-22 ")
 ;;122
 ;;21,"00069-3342-15 ")
 ;;123
 ;;21,"00069-3342-22 ")
 ;;124
 ;;21,"00069-4170-02 ")
 ;;125
 ;;21,"00069-4170-34 ")
 ;;126
 ;;21,"00069-4395-19 ")
 ;;127
 ;;21,"00069-4396-27 ")
 ;;128
 ;;21,"00069-4480-03 ")
 ;;129
 ;;21,"00069-4480-10 ")
 ;;130
 ;;21,"00069-4481-03 ")
 ;;131
 ;;21,"00069-4481-10 ")
 ;;132
 ;;21,"00069-4482-03 ")
 ;;133
 ;;21,"00069-4482-10 ")
 ;;134
 ;;21,"00069-4483-03 ")
 ;;135
 ;;21,"00069-4483-10 ")
 ;;136
 ;;21,"00069-4484-01 ")
 ;;137
 ;;21,"00074-2586-11 ")
 ;;138
 ;;21,"00074-2586-60 ")
 ;;139
 ;;21,"00074-2589-13 ")
 ;;140
 ;;21,"00074-2589-53 ")
 ;;141
 ;;21,"00074-3163-13 ")
 ;;142
 ;;21,"00074-3163-50 ")
 ;;143
 ;;21,"00074-3165-11 ")
 ;;144
 ;;21,"00074-3165-14 ")
 ;;145
 ;;21,"00074-3165-41 ")
 ;;146
 ;;21,"00074-3165-60 ")
 ;;147
 ;;21,"00074-3188-13 ")
 ;;148
 ;;21,"00074-3188-50 ")
 ;;149
 ;;21,"00074-3368-11 ")
 ;;150
 ;;21,"00074-3368-60 ")
 ;;151
 ;;21,"00074-3389-13 ")
 ;;152
 ;;21,"00074-3747-16 ")
 ;;153
 ;;21,"00074-3748-16 ")
 ;;154
 ;;21,"00074-3769-10 ")
 ;;155
 ;;21,"00074-3769-30 ")
 ;;156
 ;;21,"00074-3769-60 ")
 ;;157
 ;;21,"00074-3771-13 ")
 ;;158
 ;;21,"00074-3771-60 ")
 ;;159
 ;;21,"00074-5729-13 ")
 ;;160
 ;;21,"00074-5729-53 ")
 ;;161
 ;;21,"00074-6151-13 ")
 ;;162
 ;;21,"00074-6151-60 ")
 ;;163
 ;;21,"00074-6227-13 ")
 ;;164
 ;;21,"00074-6290-60 ")
 ;;165
 ;;21,"00074-6301-13 ")
 ;;166
 ;;21,"00074-6301-53 ")
 ;;167
 ;;21,"00074-6302-13 ")
 ;;168
 ;;21,"00074-6302-53 ")
 ;;169
 ;;21,"00074-6303-50 ")
 ;;170
 ;;21,"00074-6304-13 ")
 ;;171
 ;;21,"00074-6304-53 ")
 ;;172
 ;;21,"00074-6305-13 ")
 ;;173
 ;;21,"00074-6305-53 ")
 ;;174
 ;;21,"00074-6306-13 ")
 ;;175
 ;;21,"00074-6316-13 ")
 ;;176
 ;;21,"00074-6320-13 ")
 ;;177
 ;;21,"00074-6320-53 ")
 ;;178
 ;;21,"00074-6321-13 ")
 ;;179
 ;;21,"00074-6326-13 ")
 ;;180
 ;;21,"00074-6326-53 ")
 ;;181
 ;;21,"00074-6346-20 ")
 ;;182
 ;;21,"00074-6346-53 ")
 ;;183
 ;;21,"00074-6369-02 ")
 ;;184
 ;;21,"00074-6369-10 ")
 ;;185
 ;;21,"00074-6373-13 ")
 ;;186
 ;;21,"00074-6476-44 ")
 ;;187
 ;;21,"00074-7156-13 ")
 ;;188
 ;;21,"00074-7156-43 ")
 ;;189
 ;;21,"00074-7156-53 ")
 ;;190
 ;;21,"00074-8030-13 ")
 ;;191
 ;;21,"00074-8030-43 ")
 ;;192
 ;;21,"00074-8030-53 ")
 ;;193
 ;;21,"00074-8030-55 ")
 ;;194
 ;;21,"00085-1731-01 ")
 ;;195
 ;;21,"00085-1733-01 ")
 ;;196
 ;;21,"00085-1733-02 ")
 ;;197
 ;;21,"00085-1733-03 ")
 ;;198
 ;;21,"00085-1733-05 ")
 ;;199
 ;;21,"00085-1737-01 ")
 ;;200
 ;;21,"00085-1741-02 ")
 ;;201
 ;;21,"00085-1754-01 ")
 ;;202
 ;;21,"00085-1754-02 ")
 ;;203
 ;;21,"00085-1755-02 ")
 ;;204
 ;;21,"00085-1756-01 ")
 ;;205
 ;;21,"00085-1756-02 ")
 ;;206
 ;;21,"00085-1758-01 ")
 ;;207
 ;;21,"00085-1758-02 ")
 ;;208
 ;;21,"00085-1759-01 ")
 ;;209
 ;;21,"00085-1762-01 ")
 ;;210
 ;;21,"00085-1763-03 ")
 ;;211
 ;;21,"00085-1773-01 ")
 ;;212
 ;;21,"00085-1775-01 ")
 ;;213
 ;;21,"00085-1775-02 ")
 ;;214
 ;;21,"00085-1777-01 ")
 ;;215
 ;;21,"00085-1778-02 ")
 ;;216
 ;;21,"00085-1778-03 ")
 ;;217
 ;;21,"00085-1781-01 ")
 ;;218
 ;;21,"00085-1782-01 ")
 ;;219
 ;;21,"00087-0785-42 ")
 ;;220
 ;;21,"00087-7718-40 ")
 ;;221
 ;;21,"00087-7719-40 ")
 ;;222
 ;;21,"00087-7720-60 ")
 ;;223
 ;;21,"00087-7721-50 ")
 ;;224
 ;;21,"00093-0088-01 ")
 ;;225
 ;;21,"00093-0088-05 ")
 ;;226
 ;;21,"00093-0089-01 ")
 ;;227
 ;;21,"00093-0089-05 ")
 ;;228
 ;;21,"00093-1075-73 ")
 ;;229
 ;;21,"00093-1075-76 ")
 ;;230
 ;;21,"00093-1075-78 ")
 ;;231
 ;;21,"00093-1076-73 ")
 ;;232
 ;;21,"00093-1076-76 ")
 ;;233
 ;;21,"00093-1076-78 ")
 ;;234
 ;;21,"00093-1077-01 ")
 ;;235
 ;;21,"00093-1078-53 ")
 ;;236
 ;;21,"00093-1087-01 ")
 ;;237
 ;;21,"00093-1172-01 ")
 ;;238
 ;;21,"00093-1172-10 ")
 ;;239
 ;;21,"00093-1174-01 ")
 ;;240
 ;;21,"00093-1174-10 ")
 ;;241
 ;;21,"00093-2026-23 ")
 ;;242
 ;;21,"00093-2026-31 ")
 ;;243
 ;;21,"00093-2026-94 ")
 ;;244
 ;;21,"00093-2027-23 ")
 ;;245
 ;;21,"00093-2158-01 ")
 ;;246
 ;;21,"00093-2238-01 ")
 ;;247
 ;;21,"00093-2240-01 ")
 ;;248
 ;;21,"00093-2263-01 ")
 ;;249
 ;;21,"00093-2264-01 ")
 ;;250
 ;;21,"00093-2267-01 ")
 ;;251
 ;;21,"00093-2268-01 ")
 ;;252
 ;;21,"00093-2268-05 ")
 ;;253
 ;;21,"00093-2270-34 ")
 ;;254
 ;;21,"00093-2272-34 ")
 ;;255
 ;;21,"00093-2274-34 ")
 ;;256
 ;;21,"00093-2275-34 ")
 ;;257
 ;;21,"00093-2277-73 ")
 ;;258
 ;;21,"00093-2279-73 ")
 ;;259
 ;;21,"00093-3107-01 ")
 ;;260
 ;;21,"00093-3107-05 ")
 ;;261
 ;;21,"00093-3107-19 ")
 ;;262
 ;;21,"00093-3107-93 ")
 ;;263
 ;;21,"00093-3109-05 ")
 ;;264
 ;;21,"00093-3109-19 ")
 ;;265
 ;;21,"00093-3109-53 ")
 ;;266
 ;;21,"00093-3109-93 ")
 ;;267
 ;;21,"00093-3123-01 ")
 ;;268
 ;;21,"00093-3125-01 ")
 ;;269
 ;;21,"00093-3145-01 ")
 ;;270
 ;;21,"00093-3145-05 ")
 ;;271
 ;;21,"00093-3147-01 ")
 ;;272
 ;;21,"00093-3147-05 ")
 ;;273
 ;;21,"00093-3160-06 ")
 ;;274
 ;;21,"00093-3165-01 ")
 ;;275
 ;;21,"00093-3167-53 ")
 ;;276
 ;;21,"00093-3171-01 ")
 ;;277
 ;;21,"00093-3196-01 ")
 ;;278
 ;;21,"00093-3196-53 ")
 ;;279
 ;;21,"00093-4059-53 ")
 ;;280
 ;;21,"00093-4125-73 ")
 ;;281
 ;;21,"00093-4125-74 ")
 ;;282
 ;;21,"00093-4127-73 ")
 ;;283
 ;;21,"00093-4127-74 ")
 ;;284
 ;;21,"00093-4136-64 ")
 ;;285
 ;;21,"00093-4136-73 ")
 ;;286
 ;;21,"00093-4137-64 ")
 ;;287
 ;;21,"00093-4137-73 ")
 ;;288
 ;;21,"00093-4150-73 ")
 ;;289
 ;;21,"00093-4150-79 ")
 ;;290
 ;;21,"00093-4150-80 ")
 ;;291
 ;;21,"00093-4155-73 ")
 ;;292
 ;;21,"00093-4155-79 ")
 ;;293
 ;;21,"00093-4155-80 ")
 ;;294
 ;;21,"00093-4160-73 ")
 ;;295
 ;;21,"00093-4160-76 ")
 ;;296
 ;;21,"00093-4160-78 ")
 ;;297
 ;;21,"00093-4161-73 ")
 ;;298
 ;;21,"00093-4161-76 ")
 ;;299
 ;;21,"00093-4161-78 ")
 ;;300
 ;;21,"00093-4175-73 ")
 ;;301
 ;;21,"00093-4175-74 ")
 ;;302
 ;;21,"00093-4177-73 ")
 ;;303
 ;;21,"00093-4177-74 ")
 ;;304
 ;;21,"00093-5256-01 ")
 ;;305
 ;;21,"00093-5256-68 ")
 ;;306
 ;;21,"00093-5476-16 ")
 ;;307
 ;;21,"00093-7146-09 ")
 ;;308
 ;;21,"00093-7146-18 ")
 ;;309
 ;;21,"00093-7146-19 ")
 ;;310
 ;;21,"00093-7146-56 ")
 ;;311
 ;;21,"00093-7146-93 ")
 ;;312
 ;;21,"00093-7147-56 ")
 ;;313
 ;;21,"00093-7148-23 ")
 ;;314
 ;;21,"00093-7149-23 ")
 ;;315
 ;;21,"00093-7149-31 ")
 ;;316
 ;;21,"00093-7149-94 ")
 ;;317
 ;;21,"00093-7157-06 ")
 ;;318
 ;;21,"00093-7158-06 ")
 ;;319
 ;;21,"00093-7169-19 ")
 ;;320
 ;;21,"00093-7169-33 ")
 ;;321
 ;;21,"00093-7169-56 ")
 ;;322
 ;;21,"00093-7169-90 ")
 ;;323
 ;;21,"00093-7169-93 ")
 ;;324
 ;;21,"00093-7180-01 ")
 ;;325
 ;;21,"00093-7181-01 ")
 ;;326
 ;;21,"00093-7182-01 ")
 ;;327
 ;;21,"00093-7244-06 ")
 ;;328
 ;;21,"00093-7291-53 ")
 ;;329
 ;;21,"00093-7292-53 ")
 ;;330
 ;;21,"00093-7293-53 ")
 ;;331
 ;;21,"00093-7300-01 ")
 ;;332
 ;;21,"00093-7387-56 ")
 ;;333
 ;;21,"00093-8675-74 ")
 ;;334
 ;;21,"00093-8675-75 ")
 ;;335
 ;;21,"00093-8675-78 ")
 ;;336
 ;;21,"00115-1245-01 ")
 ;;337
 ;;21,"00115-1245-08 ")
 ;;338
 ;;21,"00115-1246-01 ")
 ;;339
 ;;21,"00115-1246-08 ")
 ;;340
 ;;21,"00115-1247-01 ")
 ;;341
 ;;21,"00115-1247-08 ")
 ;;342
 ;;21,"00115-1327-13 ")
 ;;343
 ;;21,"00115-7017-01 ")
 ;;344
 ;;21,"00115-7018-06 ")
 ;;345
 ;;21,"00115-7018-13 ")
 ;;346
 ;;21,"00115-7054-01 ")
 ;;347
 ;;21,"00121-4793-20 ")
 ;;348
 ;;21,"00143-2037-01 ")
 ;;349
 ;;21,"00143-2112-05 ")
 ;;350
 ;;21,"00143-2112-50 ")
 ;;351
 ;;21,"00143-3141-50 ")
 ;;352
 ;;21,"00143-3142-05 ")
 ;;353
 ;;21,"00143-3142-50 ")
 ;;354
 ;;21,"00143-9720-01 ")
 ;;355
 ;;21,"00143-9721-01 ")
 ;;356
 ;;21,"00143-9722-01 ")
 ;;357
 ;;21,"00143-9722-24 ")
 ;;358
 ;;21,"00143-9803-05 ")
 ;;359
 ;;21,"00143-9803-50 ")
 ;;360
 ;;21,"00143-9853-16 ")
 ;;361
 ;;21,"00143-9853-24 ")
 ;;362
 ;;21,"00143-9853-75 ")
 ;;363
 ;;21,"00143-9856-25 ")
 ;;364
 ;;21,"00143-9857-25 ")
 ;;365
 ;;21,"00143-9858-25 ")
 ;;366
 ;;21,"00143-9859-25 ")
 ;;367
 ;;21,"00143-9886-01 ")
 ;;368
 ;;21,"00143-9886-50 ")
 ;;369
 ;;21,"00143-9886-75 ")
 ;;370
 ;;21,"00143-9887-01 ")
 ;;371
 ;;21,"00143-9887-50 ")
 ;;372
 ;;21,"00143-9887-75 ")
 ;;373
 ;;21,"00143-9888-01 ")
 ;;374
 ;;21,"00143-9888-15 ")
 ;;375
 ;;21,"00143-9888-80 ")
 ;;376
 ;;21,"00143-9889-01 ")
 ;;377
 ;;21,"00143-9889-15 ")
 ;;378
 ;;21,"00143-9889-80 ")
 ;;379
 ;;21,"00143-9897-01 ")
 ;;380
 ;;21,"00143-9897-05 ")
 ;;381
 ;;21,"00143-9898-01 ")
 ;;382
 ;;21,"00143-9898-05 ")
 ;;383
 ;;21,"00143-9923-90 ")
 ;;384
 ;;21,"00143-9924-90 ")
 ;;385
 ;;21,"00143-9927-01 ")
 ;;386
 ;;21,"00143-9928-01 ")
 ;;387
 ;;21,"00143-9929-50 ")
 ;;388
 ;;21,"00143-9938-01 ")
 ;;389
 ;;21,"00143-9938-05 ")
 ;;390
 ;;21,"00143-9939-01 ")
 ;;391
 ;;21,"00143-9939-05 ")
 ;;392
 ;;21,"00143-9947-01 ")
 ;;393
 ;
OTHER ; OTHER ROUTINES
 D ^BGP53I10
 D ^BGP53I11
 D ^BGP53I12
 D ^BGP53I13
 D ^BGP53I14
 D ^BGP53I15
 D ^BGP53I16
 D ^BGP53I17
 D ^BGP53I18
 D ^BGP53I19
 D ^BGP53I2
 D ^BGP53I20
 D ^BGP53I21
 D ^BGP53I22
 D ^BGP53I23
 D ^BGP53I24
 D ^BGP53I25
 D ^BGP53I26
 D ^BGP53I27
 D ^BGP53I28
 D ^BGP53I29
 D ^BGP53I3
 D ^BGP53I30
 D ^BGP53I31
 D ^BGP53I32
 D ^BGP53I33
 D ^BGP53I34
 D ^BGP53I35
 D ^BGP53I36
 D ^BGP53I37
 D ^BGP53I38
 D ^BGP53I39
 D ^BGP53I4
 D ^BGP53I40
 D ^BGP53I41
 D ^BGP53I42
 D ^BGP53I43
 D ^BGP53I44
 D ^BGP53I45
 D ^BGP53I46
 D ^BGP53I47
 D ^BGP53I48
 D ^BGP53I49
 D ^BGP53I5
 D ^BGP53I50
 D ^BGP53I51
 D ^BGP53I52
 D ^BGP53I53
 D ^BGP53I54
 D ^BGP53I55
 D ^BGP53I56
 D ^BGP53I57
 D ^BGP53I58
 D ^BGP53I59
 D ^BGP53I6
 D ^BGP53I60
 D ^BGP53I61
 D ^BGP53I62
 D ^BGP53I63
 D ^BGP53I64
 D ^BGP53I65
 D ^BGP53I66
 D ^BGP53I67
 D ^BGP53I68
 D ^BGP53I69
 D ^BGP53I7
 D ^BGP53I70
 D ^BGP53I71
 D ^BGP53I72
 D ^BGP53I73
 D ^BGP53I74
 D ^BGP53I75
 D ^BGP53I76
 D ^BGP53I77
 D ^BGP53I78
 D ^BGP53I79
 D ^BGP53I8
 D ^BGP53I9
 Q
