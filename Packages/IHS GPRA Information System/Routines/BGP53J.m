BGP53J ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP HEDIS ANTIDEPRESSANT NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ANTIDEPRESSANT NDC
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
 ;;21,"00002-3004-75 ")
 ;;1
 ;;21,"00002-3230-30 ")
 ;;2
 ;;21,"00002-3231-01 ")
 ;;3
 ;;21,"00002-3231-30 ")
 ;;4
 ;;21,"00002-3231-33 ")
 ;;5
 ;;21,"00002-3232-01 ")
 ;;6
 ;;21,"00002-3232-30 ")
 ;;7
 ;;21,"00002-3232-33 ")
 ;;8
 ;;21,"00002-3233-01 ")
 ;;9
 ;;21,"00002-3233-30 ")
 ;;10
 ;;21,"00002-3233-33 ")
 ;;11
 ;;21,"00002-3234-01 ")
 ;;12
 ;;21,"00002-3234-30 ")
 ;;13
 ;;21,"00002-3234-33 ")
 ;;14
 ;;21,"00002-3235-01 ")
 ;;15
 ;;21,"00002-3235-33 ")
 ;;16
 ;;21,"00002-3235-60 ")
 ;;17
 ;;21,"00002-3237-01 ")
 ;;18
 ;;21,"00002-3237-04 ")
 ;;19
 ;;21,"00002-3237-30 ")
 ;;20
 ;;21,"00002-3237-33 ")
 ;;21
 ;;21,"00002-3240-01 ")
 ;;22
 ;;21,"00002-3240-30 ")
 ;;23
 ;;21,"00002-3240-33 ")
 ;;24
 ;;21,"00002-3240-90 ")
 ;;25
 ;;21,"00002-3270-01 ")
 ;;26
 ;;21,"00002-3270-04 ")
 ;;27
 ;;21,"00002-3270-30 ")
 ;;28
 ;;21,"00002-3270-33 ")
 ;;29
 ;;21,"00007-4471-20 ")
 ;;30
 ;;21,"00008-0701-08 ")
 ;;31
 ;;21,"00008-0703-07 ")
 ;;32
 ;;21,"00008-0704-07 ")
 ;;33
 ;;21,"00008-0705-07 ")
 ;;34
 ;;21,"00008-0781-08 ")
 ;;35
 ;;21,"00008-0833-02 ")
 ;;36
 ;;21,"00008-0833-03 ")
 ;;37
 ;;21,"00008-0833-20 ")
 ;;38
 ;;21,"00008-0833-21 ")
 ;;39
 ;;21,"00008-0833-22 ")
 ;;40
 ;;21,"00008-0836-02 ")
 ;;41
 ;;21,"00008-0836-03 ")
 ;;42
 ;;21,"00008-0836-20 ")
 ;;43
 ;;21,"00008-0836-21 ")
 ;;44
 ;;21,"00008-0836-22 ")
 ;;45
 ;;21,"00008-0837-02 ")
 ;;46
 ;;21,"00008-0837-03 ")
 ;;47
 ;;21,"00008-0837-20 ")
 ;;48
 ;;21,"00008-0837-21 ")
 ;;49
 ;;21,"00008-0837-22 ")
 ;;50
 ;;21,"00008-1211-01 ")
 ;;51
 ;;21,"00008-1211-14 ")
 ;;52
 ;;21,"00008-1211-30 ")
 ;;53
 ;;21,"00008-1211-50 ")
 ;;54
 ;;21,"00008-1222-01 ")
 ;;55
 ;;21,"00008-1222-14 ")
 ;;56
 ;;21,"00008-1222-30 ")
 ;;57
 ;;21,"00008-1222-50 ")
 ;;58
 ;;21,"00024-5810-30 ")
 ;;59
 ;;21,"00024-5811-30 ")
 ;;60
 ;;21,"00024-5812-30 ")
 ;;61
 ;;21,"00029-3206-13 ")
 ;;62
 ;;21,"00029-3207-13 ")
 ;;63
 ;;21,"00029-3208-13 ")
 ;;64
 ;;21,"00029-3210-13 ")
 ;;65
 ;;21,"00029-3211-13 ")
 ;;66
 ;;21,"00029-3211-59 ")
 ;;67
 ;;21,"00029-3212-13 ")
 ;;68
 ;;21,"00029-3213-13 ")
 ;;69
 ;;21,"00029-3215-48 ")
 ;;70
 ;;21,"00029-4606-13 ")
 ;;71
 ;;21,"00029-4607-13 ")
 ;;72
 ;;21,"00049-4900-30 ")
 ;;73
 ;;21,"00049-4900-41 ")
 ;;74
 ;;21,"00049-4910-30 ")
 ;;75
 ;;21,"00049-4910-41 ")
 ;;76
 ;;21,"00049-4940-23 ")
 ;;77
 ;;21,"00049-4960-30 ")
 ;;78
 ;;21,"00052-0105-30 ")
 ;;79
 ;;21,"00052-0105-90 ")
 ;;80
 ;;21,"00052-0106-06 ")
 ;;81
 ;;21,"00052-0106-30 ")
 ;;82
 ;;21,"00052-0106-90 ")
 ;;83
 ;;21,"00052-0106-93 ")
 ;;84
 ;;21,"00052-0107-30 ")
 ;;85
 ;;21,"00052-0107-90 ")
 ;;86
 ;;21,"00052-0108-06 ")
 ;;87
 ;;21,"00052-0108-30 ")
 ;;88
 ;;21,"00052-0108-90 ")
 ;;89
 ;;21,"00052-0108-93 ")
 ;;90
 ;;21,"00052-0109-30 ")
 ;;91
 ;;21,"00052-0110-06 ")
 ;;92
 ;;21,"00052-0110-30 ")
 ;;93
 ;;21,"00052-0110-90 ")
 ;;94
 ;;21,"00054-0024-13 ")
 ;;95
 ;;21,"00054-0062-58 ")
 ;;96
 ;;21,"00054-0210-25 ")
 ;;97
 ;;21,"00054-0211-25 ")
 ;;98
 ;;21,"00054-0273-13 ")
 ;;99
 ;;21,"00054-0274-13 ")
 ;;100
 ;;21,"00054-0275-13 ")
 ;;101
 ;;21,"00054-0276-13 ")
 ;;102
 ;;21,"00068-0007-01 ")
 ;;103
 ;;21,"00068-0011-01 ")
 ;;104
 ;;21,"00068-0015-01 ")
 ;;105
 ;;21,"00068-0019-01 ")
 ;;106
 ;;21,"00068-0020-01 ")
 ;;107
 ;;21,"00068-0021-50 ")
 ;;108
 ;;21,"00071-0350-60 ")
 ;;109
 ;;21,"00093-0056-01 ")
 ;;110
 ;;21,"00093-0057-01 ")
 ;;111
 ;;21,"00093-0072-01 ")
 ;;112
 ;;21,"00093-0199-01 ")
 ;;113
 ;;21,"00093-0280-01 ")
 ;;114
 ;;21,"00093-0280-05 ")
 ;;115
 ;;21,"00093-0280-19 ")
 ;;116
 ;;21,"00093-0280-93 ")
 ;;117
 ;;21,"00093-0290-01 ")
 ;;118
 ;;21,"00093-0290-05 ")
 ;;119
 ;;21,"00093-0290-19 ")
 ;;120
 ;;21,"00093-0290-93 ")
 ;;121
 ;;21,"00093-0638-01 ")
 ;;122
 ;;21,"00093-0638-10 ")
 ;;123
 ;;21,"00093-0810-01 ")
 ;;124
 ;;21,"00093-0810-05 ")
 ;;125
 ;;21,"00093-0811-01 ")
 ;;126
 ;;21,"00093-0811-05 ")
 ;;127
 ;;21,"00093-0812-01 ")
 ;;128
 ;;21,"00093-0812-05 ")
 ;;129
 ;;21,"00093-0813-01 ")
 ;;130
 ;;21,"00093-0813-05 ")
 ;;131
 ;;21,"00093-0956-01 ")
 ;;132
 ;;21,"00093-0958-01 ")
 ;;133
 ;;21,"00093-0960-01 ")
 ;;134
 ;;21,"00093-1024-06 ")
 ;;135
 ;;21,"00093-1025-06 ")
 ;;136
 ;;21,"00093-1026-06 ")
 ;;137
 ;;21,"00093-1042-01 ")
 ;;138
 ;;21,"00093-1042-10 ")
 ;;139
 ;;21,"00093-1042-19 ")
 ;;140
 ;;21,"00093-1042-93 ")
 ;;141
 ;;21,"00093-4346-56 ")
 ;;142
 ;;21,"00093-4356-01 ")
 ;;143
 ;;21,"00093-4356-05 ")
 ;;144
 ;;21,"00093-4356-10 ")
 ;;145
 ;;21,"00093-4356-19 ")
 ;;146
 ;;21,"00093-4356-93 ")
 ;;147
 ;;21,"00093-4740-01 ")
 ;;148
 ;;21,"00093-4740-10 ")
 ;;149
 ;;21,"00093-4740-19 ")
 ;;150
 ;;21,"00093-4740-93 ")
 ;;151
 ;;21,"00093-4741-01 ")
 ;;152
 ;;21,"00093-4741-05 ")
 ;;153
 ;;21,"00093-4741-19 ")
 ;;154
 ;;21,"00093-4741-50 ")
 ;;155
 ;;21,"00093-4741-93 ")
 ;;156
 ;;21,"00093-4742-01 ")
 ;;157
 ;;21,"00093-4742-05 ")
 ;;158
 ;;21,"00093-4742-19 ")
 ;;159
 ;;21,"00093-4742-50 ")
 ;;160
 ;;21,"00093-4742-93 ")
 ;;161
 ;;21,"00093-5350-05 ")
 ;;162
 ;;21,"00093-5350-56 ")
 ;;163
 ;;21,"00093-5351-05 ")
 ;;164
 ;;21,"00093-5351-56 ")
 ;;165
 ;;21,"00093-5501-01 ")
 ;;166
 ;;21,"00093-5502-01 ")
 ;;167
 ;;21,"00093-5503-56 ")
 ;;168
 ;;21,"00093-5504-56 ")
 ;;169
 ;;21,"00093-5505-56 ")
 ;;170
 ;;21,"00093-5506-56 ")
 ;;171
 ;;21,"00093-5507-56 ")
 ;;172
 ;;21,"00093-5703-01 ")
 ;;173
 ;;21,"00093-5850-01 ")
 ;;174
 ;;21,"00093-5850-05 ")
 ;;175
 ;;21,"00093-5850-93 ")
 ;;176
 ;;21,"00093-5851-01 ")
 ;;177
 ;;21,"00093-5851-05 ")
 ;;178
 ;;21,"00093-5851-93 ")
 ;;179
 ;;21,"00093-5852-01 ")
 ;;180
 ;;21,"00093-5852-05 ")
 ;;181
 ;;21,"00093-5852-93 ")
 ;;182
 ;;21,"00093-6108-12 ")
 ;;183
 ;;21,"00093-7113-06 ")
 ;;184
 ;;21,"00093-7114-98 ")
 ;;185
 ;;21,"00093-7115-98 ")
 ;;186
 ;;21,"00093-7116-98 ")
 ;;187
 ;;21,"00093-7121-98 ")
 ;;188
 ;;21,"00093-7178-01 ")
 ;;189
 ;;21,"00093-7188-10 ")
 ;;190
 ;;21,"00093-7188-56 ")
 ;;191
 ;;21,"00093-7198-01 ")
 ;;192
 ;;21,"00093-7198-05 ")
 ;;193
 ;;21,"00093-7198-19 ")
 ;;194
 ;;21,"00093-7198-56 ")
 ;;195
 ;;21,"00093-7198-93 ")
 ;;196
 ;;21,"00093-7206-19 ")
 ;;197
 ;;21,"00093-7206-56 ")
 ;;198
 ;;21,"00093-7206-93 ")
 ;;199
 ;;21,"00093-7207-19 ")
 ;;200
 ;;21,"00093-7207-56 ")
 ;;201
 ;;21,"00093-7207-93 ")
 ;;202
 ;;21,"00093-7208-19 ")
 ;;203
 ;;21,"00093-7208-56 ")
 ;;204
 ;;21,"00093-7208-93 ")
 ;;205
 ;;21,"00093-7225-19 ")
 ;;206
 ;;21,"00093-7225-28 ")
 ;;207
 ;;21,"00093-7226-19 ")
 ;;208
 ;;21,"00093-7226-28 ")
 ;;209
 ;;21,"00093-7303-18 ")
 ;;210
 ;;21,"00093-7303-65 ")
 ;;211
 ;;21,"00093-7304-18 ")
 ;;212
 ;;21,"00093-7304-65 ")
 ;;213
 ;;21,"00093-7305-02 ")
 ;;214
 ;;21,"00093-7305-65 ")
 ;;215
 ;;21,"00093-7380-01 ")
 ;;216
 ;;21,"00093-7381-01 ")
 ;;217
 ;;21,"00093-7382-01 ")
 ;;218
 ;;21,"00093-7383-01 ")
 ;;219
 ;;21,"00093-7384-05 ")
 ;;220
 ;;21,"00093-7384-56 ")
 ;;221
 ;;21,"00093-7384-98 ")
 ;;222
 ;;21,"00093-7385-05 ")
 ;;223
 ;;21,"00093-7385-56 ")
 ;;224
 ;;21,"00093-7385-98 ")
 ;;225
 ;;21,"00093-7386-05 ")
 ;;226
 ;;21,"00093-7386-56 ")
 ;;227
 ;;21,"00093-7386-98 ")
 ;;228
 ;;21,"00093-7542-06 ")
 ;;229
 ;;21,"00093-7543-56 ")
 ;;230
 ;;21,"00093-7544-56 ")
 ;;231
 ;;21,"00093-9612-12 ")
 ;;232
 ;;21,"00115-5445-13 ")
 ;;233
 ;;21,"00115-6811-02 ")
 ;;234
 ;;21,"00115-6811-08 ")
 ;;235
 ;;21,"00115-6811-10 ")
 ;;236
 ;;21,"00121-0678-12 ")
 ;;237
 ;;21,"00121-0678-16 ")
 ;;238
 ;;21,"00121-0721-04 ")
 ;;239
 ;;21,"00121-4721-05 ")
 ;;240
 ;;21,"00131-3265-32 ")
 ;;241
 ;;21,"00131-3265-46 ")
 ;;242
 ;;21,"00131-3266-32 ")
 ;;243
 ;;21,"00131-3266-46 ")
 ;;244
 ;;21,"00131-3267-32 ")
 ;;245
 ;;21,"00131-3267-46 ")
 ;;246
 ;;21,"00131-3268-32 ")
 ;;247
 ;;21,"00131-3268-46 ")
 ;;248
 ;;21,"00143-9580-05 ")
 ;;249
 ;;21,"00143-9580-09 ")
 ;;250
 ;;21,"00143-9580-30 ")
 ;;251
 ;;21,"00143-9581-05 ")
 ;;252
 ;;21,"00143-9581-09 ")
 ;;253
 ;;21,"00143-9581-30 ")
 ;;254
 ;;21,"00143-9582-09 ")
 ;;255
 ;;21,"00143-9582-30 ")
 ;;256
 ;;21,"00143-9654-05 ")
 ;;257
 ;;21,"00143-9654-09 ")
 ;;258
 ;;21,"00143-9654-30 ")
 ;;259
 ;;21,"00143-9655-05 ")
 ;;260
 ;;21,"00143-9655-09 ")
 ;;261
 ;;21,"00143-9655-30 ")
 ;;262
 ;;21,"00143-9656-09 ")
 ;;263
 ;;21,"00143-9656-30 ")
 ;;264
 ;;21,"00143-9807-01 ")
 ;;265
 ;;21,"00143-9807-05 ")
 ;;266
 ;;21,"00143-9808-01 ")
 ;;267
 ;;21,"00143-9808-05 ")
 ;;268
 ;;21,"00143-9809-01 ")
 ;;269
 ;;21,"00172-4332-49 ")
 ;;270
 ;;21,"00172-4333-49 ")
 ;;271
 ;;21,"00172-4334-10 ")
 ;;272
 ;;21,"00172-4334-49 ")
 ;;273
 ;;21,"00172-4335-10 ")
 ;;274
 ;;21,"00172-4335-49 ")
 ;;275
 ;;21,"00172-4343-10 ")
 ;;276
 ;;21,"00172-4343-49 ")
 ;;277
 ;;21,"00173-0135-55 ")
 ;;278
 ;;21,"00173-0177-55 ")
 ;;279
 ;;21,"00173-0178-55 ")
 ;;280
 ;;21,"00173-0722-00 ")
 ;;281
 ;;21,"00173-0730-01 ")
 ;;282
 ;;21,"00173-0730-02 ")
 ;;283
 ;;21,"00173-0731-01 ")
 ;;284
 ;;21,"00173-0947-55 ")
 ;;285
 ;;21,"00182-1259-00 ")
 ;;286
 ;;21,"00182-1259-89 ")
 ;;287
 ;;21,"00182-1260-00 ")
 ;;288
 ;;21,"00182-1260-89 ")
 ;;289
 ;;21,"00185-0017-01 ")
 ;;290
 ;;21,"00185-0020-10 ")
 ;;291
 ;;21,"00185-0020-30 ")
 ;;292
 ;;21,"00185-0027-01 ")
 ;;293
 ;;21,"00185-0027-05 ")
 ;;294
 ;;21,"00185-0057-30 ")
 ;;295
 ;;21,"00185-0085-10 ")
 ;;296
 ;;21,"00185-0153-30 ")
 ;;297
 ;;21,"00185-0157-01 ")
 ;;298
 ;;21,"00185-0157-05 ")
 ;;299
 ;;21,"00185-0212-10 ")
 ;;300
 ;;21,"00185-0212-30 ")
 ;;301
 ;;21,"00185-0222-10 ")
 ;;302
 ;;21,"00185-0222-30 ")
 ;;303
 ;;21,"00185-0265-30 ")
 ;;304
 ;;21,"00185-0371-01 ")
 ;;305
 ;;21,"00185-0372-01 ")
 ;;306
 ;;21,"00185-0373-01 ")
 ;;307
 ;;21,"00185-0373-10 ")
 ;;308
 ;;21,"00185-0410-01 ")
 ;;309
 ;;21,"00185-0410-05 ")
 ;;310
 ;;21,"00185-0410-60 ")
 ;;311
 ;;21,"00185-0415-01 ")
 ;;312
 ;;21,"00185-0415-05 ")
 ;;313
 ;;21,"00185-0415-52 ")
 ;;314
 ;;21,"00185-0415-60 ")
 ;;315
 ;;21,"00185-1111-60 ")
 ;;316
 ;;21,"00187-0730-30 ")
 ;;317
 ;;21,"00187-0730-90 ")
 ;;318
 ;;21,"00187-0731-30 ")
 ;;319
 ;;21,"00187-3805-10 ")
 ;;320
 ;;21,"00187-3806-10 ")
 ;;321
 ;;21,"00228-2721-09 ")
 ;;322
 ;;21,"00228-2721-50 ")
 ;;323
 ;;21,"00228-2722-09 ")
 ;;324
 ;;21,"00228-2722-90 ")
 ;;325
 ;;21,"00228-2723-09 ")
 ;;326
 ;;21,"00228-2723-96 ")
 ;;327
 ;;21,"00228-2890-06 ")
 ;;328
 ;;21,"00228-2891-03 ")
 ;;329
 ;;21,"00228-2892-03 ")
 ;;330
 ;;21,"00247-0370-30 ")
 ;;331
 ;;21,"00247-0371-03 ")
 ;;332
 ;;21,"00247-0371-45 ")
 ;;333
 ;;21,"00247-0372-04 ")
 ;;334
 ;;21,"00247-0372-10 ")
 ;;335
 ;;21,"00247-0615-10 ")
 ;;336
 ;;21,"00247-0615-50 ")
 ;;337
 ;;21,"00247-0615-52 ")
 ;;338
 ;;21,"00247-0616-10 ")
 ;;339
 ;;21,"00247-0616-15 ")
 ;;340
 ;;21,"00247-0616-30 ")
 ;;341
 ;;21,"00247-0673-00 ")
 ;;342
 ;;21,"00247-0673-07 ")
 ;;343
 ;;21,"00247-0673-10 ")
 ;;344
 ;;21,"00247-0673-14 ")
 ;;345
 ;;21,"00247-0673-30 ")
 ;;346
 ;;21,"00247-0673-60 ")
 ;;347
 ;;21,"00247-0673-90 ")
 ;;348
 ;;21,"00247-0675-03 ")
 ;;349
 ;;21,"00247-0675-08 ")
 ;;350
 ;;21,"00247-0675-33 ")
 ;;351
 ;;21,"00247-0787-07 ")
 ;;352
 ;;21,"00247-0787-10 ")
 ;;353
 ;;21,"00247-0787-14 ")
 ;;354
 ;;21,"00247-0787-15 ")
 ;;355
 ;;21,"00247-0787-28 ")
 ;;356
 ;;21,"00247-0787-30 ")
 ;;357
 ;;21,"00247-0787-50 ")
 ;;358
 ;;21,"00247-0787-60 ")
 ;;359
 ;;21,"00247-0789-07 ")
 ;;360
 ;;21,"00247-0789-14 ")
 ;;361
 ;;21,"00247-0789-30 ")
 ;;362
 ;;21,"00247-0853-04 ")
 ;;363
 ;;21,"00247-0853-08 ")
 ;;364
 ;;21,"00247-1035-30 ")
 ;;365
 ;;21,"00247-1041-03 ")
 ;;366
 ;;21,"00247-1041-07 ")
 ;;367
 ;;21,"00247-1041-30 ")
 ;;368
 ;;21,"00247-1042-30 ")
 ;;369
 ;;21,"00247-1056-60 ")
 ;;370
 ;;21,"00247-1057-15 ")
 ;;371
 ;;21,"00247-1057-60 ")
 ;;372
 ;;21,"00247-1058-60 ")
 ;;373
 ;;21,"00247-1075-10 ")
 ;;374
 ;;21,"00247-1075-30 ")
 ;;375
 ;;21,"00247-1075-60 ")
 ;;376
 ;;21,"00247-1214-03 ")
 ;;377
 ;;21,"00247-1214-07 ")
 ;;378
 ;;21,"00247-1214-30 ")
 ;;379
 ;;21,"00247-1521-30 ")
 ;;380
 ;;21,"00247-1521-60 ")
 ;;381
 ;;21,"00247-1522-30 ")
 ;;382
 ;;21,"00247-1522-60 ")
 ;;383
 ;;21,"00247-1523-30 ")
 ;;384
 ;;21,"00247-1523-60 ")
 ;;385
 ;;21,"00247-1677-10 ")
 ;;386
 ;;21,"00247-1677-60 ")
 ;;387
 ;;21,"00247-1679-10 ")
 ;;388
 ;;21,"00247-1679-60 ")
 ;;389
 ;;21,"00247-1680-10 ")
 ;;390
 ;;21,"00247-1731-30 ")
 ;;391
 ;;21,"00247-1731-60 ")
 ;;392
 ;;21,"00247-1731-90 ")
 ;;393
 ;
OTHER ; OTHER ROUTINES
 D ^BGP53J10
 D ^BGP53J11
 D ^BGP53J12
 D ^BGP53J13
 D ^BGP53J14
 D ^BGP53J15
 D ^BGP53J16
 D ^BGP53J17
 D ^BGP53J18
 D ^BGP53J19
 D ^BGP53J2
 D ^BGP53J20
 D ^BGP53J21
 D ^BGP53J22
 D ^BGP53J23
 D ^BGP53J24
 D ^BGP53J25
 D ^BGP53J26
 D ^BGP53J27
 D ^BGP53J28
 D ^BGP53J29
 D ^BGP53J3
 D ^BGP53J30
 D ^BGP53J31
 D ^BGP53J32
 D ^BGP53J33
 D ^BGP53J34
 D ^BGP53J35
 D ^BGP53J36
 D ^BGP53J37
 D ^BGP53J38
 D ^BGP53J39
 D ^BGP53J4
 D ^BGP53J40
 D ^BGP53J41
 D ^BGP53J42
 D ^BGP53J43
 D ^BGP53J44
 D ^BGP53J45
 D ^BGP53J46
 D ^BGP53J47
 D ^BGP53J48
 D ^BGP53J49
 D ^BGP53J5
 D ^BGP53J50
 D ^BGP53J51
 D ^BGP53J52
 D ^BGP53J53
 D ^BGP53J54
 D ^BGP53J55
 D ^BGP53J56
 D ^BGP53J57
 D ^BGP53J6
 D ^BGP53J7
 D ^BGP53J8
 D ^BGP53J9
 Q
