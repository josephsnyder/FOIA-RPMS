ATXDBH ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 20, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI PREGNANCY DXS
 ;
 ; This routine loads Taxonomy BQI PREGNANCY DXS
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
 ;;21,"640.00 ")
 ;;1
 ;;21,"640.03 ")
 ;;2
 ;;21,"640.80 ")
 ;;3
 ;;21,"640.83 ")
 ;;4
 ;;21,"640.90 ")
 ;;5
 ;;21,"640.93 ")
 ;;6
 ;;21,"641.00 ")
 ;;7
 ;;21,"641.03 ")
 ;;8
 ;;21,"641.10 ")
 ;;9
 ;;21,"641.13 ")
 ;;10
 ;;21,"641.20 ")
 ;;11
 ;;21,"641.23 ")
 ;;12
 ;;21,"641.30 ")
 ;;13
 ;;21,"641.33 ")
 ;;14
 ;;21,"641.80 ")
 ;;15
 ;;21,"641.83 ")
 ;;16
 ;;21,"641.90 ")
 ;;17
 ;;21,"641.93 ")
 ;;18
 ;;21,"642.00 ")
 ;;19
 ;;21,"642.03 ")
 ;;20
 ;;21,"642.10 ")
 ;;21
 ;;21,"642.13 ")
 ;;22
 ;;21,"642.20 ")
 ;;23
 ;;21,"642.23 ")
 ;;24
 ;;21,"642.30 ")
 ;;25
 ;;21,"642.33 ")
 ;;26
 ;;21,"642.40 ")
 ;;27
 ;;21,"642.43 ")
 ;;28
 ;;21,"642.50 ")
 ;;29
 ;;21,"642.53 ")
 ;;30
 ;;21,"642.60 ")
 ;;31
 ;;21,"642.63 ")
 ;;32
 ;;21,"642.70 ")
 ;;33
 ;;21,"642.73 ")
 ;;34
 ;;21,"642.90 ")
 ;;35
 ;;21,"642.93 ")
 ;;36
 ;;21,"643.00 ")
 ;;37
 ;;21,"643.03 ")
 ;;38
 ;;21,"643.10 ")
 ;;39
 ;;21,"643.13 ")
 ;;40
 ;;21,"643.20 ")
 ;;41
 ;;21,"643.23 ")
 ;;42
 ;;21,"643.80 ")
 ;;43
 ;;21,"643.83 ")
 ;;44
 ;;21,"643.90 ")
 ;;45
 ;;21,"643.93 ")
 ;;46
 ;;21,"644.00 ")
 ;;47
 ;;21,"644.03 ")
 ;;48
 ;;21,"644.10 ")
 ;;49
 ;;21,"644.13 ")
 ;;50
 ;;21,"645.00 ")
 ;;51
 ;;21,"645.03 ")
 ;;52
 ;;21,"645.10 ")
 ;;53
 ;;21,"645.13 ")
 ;;54
 ;;21,"645.20 ")
 ;;55
 ;;21,"645.23 ")
 ;;56
 ;;21,"646.00 ")
 ;;57
 ;;21,"646.03 ")
 ;;58
 ;;21,"646.10 ")
 ;;59
 ;;21,"646.13 ")
 ;;60
 ;;21,"646.20 ")
 ;;61
 ;;21,"646.23 ")
 ;;62
 ;;21,"646.30 ")
 ;;63
 ;;21,"646.33 ")
 ;;64
 ;;21,"646.40 ")
 ;;65
 ;;21,"646.43 ")
 ;;66
 ;;21,"646.50 ")
 ;;67
 ;;21,"646.53 ")
 ;;68
 ;;21,"646.60 ")
 ;;69
 ;;21,"646.63 ")
 ;;70
 ;;21,"646.70 ")
 ;;71
 ;;21,"646.73 ")
 ;;72
 ;;21,"646.80 ")
 ;;73
 ;;21,"646.83 ")
 ;;74
 ;;21,"646.90 ")
 ;;75
 ;;21,"646.93 ")
 ;;76
 ;;21,"647.00 ")
 ;;77
 ;;21,"647.03 ")
 ;;78
 ;;21,"647.10 ")
 ;;79
 ;;21,"647.13 ")
 ;;80
 ;;21,"647.20 ")
 ;;81
 ;;21,"647.23 ")
 ;;82
 ;;21,"647.30 ")
 ;;83
 ;;21,"647.33 ")
 ;;84
 ;;21,"647.40 ")
 ;;85
 ;;21,"647.43 ")
 ;;86
 ;;21,"647.50 ")
 ;;87
 ;;21,"647.53 ")
 ;;88
 ;;21,"647.60 ")
 ;;89
 ;;21,"647.63 ")
 ;;90
 ;;21,"647.80 ")
 ;;91
 ;;21,"647.83 ")
 ;;92
 ;;21,"647.90 ")
 ;;93
 ;;21,"647.93 ")
 ;;94
 ;;21,"648.00 ")
 ;;95
 ;;21,"648.03 ")
 ;;96
 ;;21,"648.10 ")
 ;;97
 ;;21,"648.13 ")
 ;;98
 ;;21,"648.20 ")
 ;;99
 ;;21,"648.23 ")
 ;;100
 ;;21,"648.30 ")
 ;;101
 ;;21,"648.33 ")
 ;;102
 ;;21,"648.40 ")
 ;;103
 ;;21,"648.43 ")
 ;;104
 ;;21,"648.50 ")
 ;;105
 ;;21,"648.53 ")
 ;;106
 ;;21,"648.60 ")
 ;;107
 ;;21,"648.63 ")
 ;;108
 ;;21,"648.70 ")
 ;;109
 ;;21,"648.73 ")
 ;;110
 ;;21,"648.80 ")
 ;;111
 ;;21,"648.83 ")
 ;;112
 ;;21,"648.90 ")
 ;;113
 ;;21,"648.93 ")
 ;;114
 ;;21,"649.00 ")
 ;;115
 ;;21,"649.03 ")
 ;;116
 ;;21,"649.10 ")
 ;;117
 ;;21,"649.13 ")
 ;;118
 ;;21,"649.20 ")
 ;;119
 ;;21,"649.23 ")
 ;;120
 ;;21,"649.30 ")
 ;;121
 ;;21,"649.33 ")
 ;;122
 ;;21,"649.40 ")
 ;;123
 ;;21,"649.43 ")
 ;;124
 ;;21,"649.50 ")
 ;;125
 ;;21,"649.53 ")
 ;;126
 ;;21,"649.60 ")
 ;;127
 ;;21,"649.63 ")
 ;;128
 ;;21,"651.00 ")
 ;;129
 ;;21,"651.03 ")
 ;;130
 ;;21,"651.10 ")
 ;;131
 ;;21,"651.13 ")
 ;;132
 ;;21,"651.20 ")
 ;;133
 ;;21,"651.23 ")
 ;;134
 ;;21,"651.30 ")
 ;;135
 ;;21,"651.33 ")
 ;;136
 ;;21,"651.40 ")
 ;;137
 ;;21,"651.43 ")
 ;;138
 ;;21,"651.50 ")
 ;;139
 ;;21,"651.53 ")
 ;;140
 ;;21,"651.60 ")
 ;;141
 ;;21,"651.63 ")
 ;;142
 ;;21,"651.70 ")
 ;;143
 ;;21,"651.73 ")
 ;;144
 ;;21,"651.80 ")
 ;;145
 ;;21,"651.83 ")
 ;;146
 ;;21,"651.90 ")
 ;;147
 ;;21,"651.93 ")
 ;;148
 ;;21,"652.00 ")
 ;;149
 ;;21,"652.03 ")
 ;;150
 ;;21,"652.10 ")
 ;;151
 ;;21,"652.13 ")
 ;;152
 ;;21,"652.20 ")
 ;;153
 ;;21,"652.23 ")
 ;;154
 ;;21,"652.30 ")
 ;;155
 ;;21,"652.33 ")
 ;;156
 ;;21,"652.40 ")
 ;;157
 ;;21,"652.43 ")
 ;;158
 ;;21,"652.50 ")
 ;;159
 ;;21,"652.53 ")
 ;;160
 ;;21,"652.60 ")
 ;;161
 ;;21,"652.63 ")
 ;;162
 ;;21,"652.70 ")
 ;;163
 ;;21,"652.73 ")
 ;;164
 ;;21,"652.80 ")
 ;;165
 ;;21,"652.83 ")
 ;;166
 ;;21,"652.90 ")
 ;;167
 ;;21,"652.93 ")
 ;;168
 ;;21,"653.00 ")
 ;;169
 ;;21,"653.03 ")
 ;;170
 ;;21,"653.10 ")
 ;;171
 ;;21,"653.13 ")
 ;;172
 ;;21,"653.20 ")
 ;;173
 ;;21,"653.23 ")
 ;;174
 ;;21,"653.30 ")
 ;;175
 ;;21,"653.33 ")
 ;;176
 ;;21,"653.40 ")
 ;;177
 ;;21,"653.43 ")
 ;;178
 ;;21,"653.50 ")
 ;;179
 ;;21,"653.53 ")
 ;;180
 ;;21,"653.60 ")
 ;;181
 ;;21,"653.63 ")
 ;;182
 ;;21,"653.70 ")
 ;;183
 ;;21,"653.73 ")
 ;;184
 ;;21,"653.80 ")
 ;;185
 ;;21,"653.83 ")
 ;;186
 ;;21,"653.90 ")
 ;;187
 ;;21,"653.93 ")
 ;;188
 ;;21,"654.00 ")
 ;;189
 ;;21,"654.03 ")
 ;;190
 ;;21,"654.10 ")
 ;;191
 ;;21,"654.13 ")
 ;;192
 ;;21,"654.20 ")
 ;;193
 ;;21,"654.23 ")
 ;;194
 ;;21,"654.24 ")
 ;;195
 ;;21,"654.30 ")
 ;;196
 ;;21,"654.33 ")
 ;;197
 ;;21,"654.40 ")
 ;;198
 ;;21,"654.43 ")
 ;;199
 ;;21,"654.50 ")
 ;;200
 ;;21,"654.53 ")
 ;;201
 ;;21,"654.60 ")
 ;;202
 ;;21,"654.63 ")
 ;;203
 ;;21,"654.70 ")
 ;;204
 ;;21,"654.73 ")
 ;;205
 ;;21,"654.80 ")
 ;;206
 ;;21,"654.83 ")
 ;;207
 ;;21,"654.90 ")
 ;;208
 ;;21,"654.93 ")
 ;;209
 ;;21,"655.00 ")
 ;;210
 ;;21,"655.03 ")
 ;;211
 ;;21,"655.10 ")
 ;;212
 ;;21,"655.13 ")
 ;;213
 ;;21,"655.20 ")
 ;;214
 ;;21,"655.23 ")
 ;;215
 ;;21,"655.30 ")
 ;;216
 ;;21,"655.33 ")
 ;;217
 ;;21,"655.40 ")
 ;;218
 ;;21,"655.43 ")
 ;;219
 ;;21,"655.50 ")
 ;;220
 ;;21,"655.53 ")
 ;;221
 ;;21,"655.60 ")
 ;;222
 ;;21,"655.63 ")
 ;;223
 ;;21,"655.70 ")
 ;;224
 ;;21,"655.73 ")
 ;;225
 ;;21,"655.80 ")
 ;;226
 ;;21,"655.83 ")
 ;;227
 ;;21,"655.90 ")
 ;;228
 ;;21,"655.93 ")
 ;;229
 ;;21,"656.00 ")
 ;;230
 ;;21,"656.03 ")
 ;;231
 ;;21,"656.10 ")
 ;;232
 ;;21,"656.13 ")
 ;;233
 ;;21,"656.20 ")
 ;;234
 ;;21,"656.23 ")
 ;;235
 ;;21,"656.30 ")
 ;;236
 ;;21,"656.33 ")
 ;;237
 ;;21,"656.40 ")
 ;;238
 ;;21,"656.43 ")
 ;;239
 ;;21,"656.50 ")
 ;;240
 ;;21,"656.53 ")
 ;;241
 ;;21,"656.60 ")
 ;;242
 ;;21,"656.63 ")
 ;;243
 ;;21,"656.70 ")
 ;;244
 ;;21,"656.73 ")
 ;;245
 ;;21,"656.80 ")
 ;;246
 ;;21,"656.83 ")
 ;;247
 ;;21,"656.90 ")
 ;;248
 ;;21,"656.93 ")
 ;;249
 ;;21,"657.00 ")
 ;;250
 ;;21,"657.03 ")
 ;;251
 ;;21,"658.00 ")
 ;;252
 ;;21,"658.03 ")
 ;;253
 ;;21,"658.10 ")
 ;;254
 ;;21,"658.13 ")
 ;;255
 ;;21,"658.20 ")
 ;;256
 ;;21,"658.23 ")
 ;;257
 ;;21,"658.33 ")
 ;;258
 ;;21,"658.40 ")
 ;;259
 ;;21,"658.43 ")
 ;;260
 ;;21,"658.80 ")
 ;;261
 ;;21,"658.83 ")
 ;;262
 ;;21,"658.90 ")
 ;;263
 ;;21,"658.93 ")
 ;;264
 ;;21,"659.03 ")
 ;;265
 ;;21,"659.13 ")
 ;;266
 ;;21,"659.23 ")
 ;;267
 ;;21,"659.33 ")
 ;;268
 ;;21,"659.40 ")
 ;;269
 ;;21,"659.43 ")
 ;;270
 ;;21,"659.50 ")
 ;;271
 ;;21,"659.53 ")
 ;;272
 ;;21,"659.60 ")
 ;;273
 ;;21,"659.63 ")
 ;;274
 ;;21,"659.70 ")
 ;;275
 ;;21,"659.73 ")
 ;;276
 ;;21,"659.74 ")
 ;;277
 ;;21,"659.83 ")
 ;;278
 ;;21,"659.93 ")
 ;;279
 ;;21,"660.03 ")
 ;;280
 ;;21,"660.13 ")
 ;;281
 ;;21,"660.23 ")
 ;;282
 ;;21,"660.33 ")
 ;;283
 ;;21,"660.43 ")
 ;;284
 ;;21,"660.53 ")
 ;;285
 ;;21,"660.63 ")
 ;;286
 ;;21,"660.73 ")
 ;;287
 ;;21,"660.83 ")
 ;;288
 ;;21,"660.93 ")
 ;;289
 ;;21,"661.03 ")
 ;;290
 ;;21,"661.13 ")
 ;;291
 ;;21,"661.23 ")
 ;;292
 ;;21,"661.33 ")
 ;;293
 ;;21,"661.43 ")
 ;;294
 ;;21,"661.93 ")
 ;;295
 ;;21,"662.03 ")
 ;;296
 ;;21,"662.13 ")
 ;;297
 ;;21,"662.23 ")
 ;;298
 ;;21,"662.33 ")
 ;;299
 ;;21,"663.03 ")
 ;;300
 ;;21,"663.13 ")
 ;;301
 ;;21,"663.23 ")
 ;;302
 ;;21,"663.33 ")
 ;;303
 ;;21,"663.43 ")
 ;;304
 ;;21,"663.53 ")
 ;;305
 ;;21,"663.63 ")
 ;;306
 ;;21,"663.83 ")
 ;;307
 ;;21,"663.93 ")
 ;;308
 ;;21,"665.03 ")
 ;;309
 ;;21,"665.83 ")
 ;;310
 ;;21,"665.93 ")
 ;;311
 ;;21,"668.03 ")
 ;;312
 ;;21,"668.13 ")
 ;;313
 ;;21,"668.23 ")
 ;;314
 ;;21,"668.83 ")
 ;;315
 ;;21,"668.93 ")
 ;;316
 ;;21,"669.03 ")
 ;;317
 ;;21,"669.13 ")
 ;;318
 ;;21,"669.23 ")
 ;;319
 ;;21,"669.43 ")
 ;;320
 ;;21,"669.83 ")
 ;;321
 ;;21,"669.93 ")
 ;;322
 ;;21,"671.03 ")
 ;;323
 ;;21,"671.13 ")
 ;;324
 ;;21,"671.23 ")
 ;;325
 ;;21,"671.30 ")
 ;;326
 ;;21,"671.33 ")
 ;;327
 ;;21,"671.50 ")
 ;;328
 ;;21,"671.53 ")
 ;;329
 ;;21,"671.80 ")
 ;;330
 ;;21,"671.83 ")
 ;;331
 ;;21,"671.90 ")
 ;;332
 ;;21,"671.93 ")
 ;;333
 ;;21,"673.03 ")
 ;;334
 ;;21,"673.13 ")
 ;;335
 ;;21,"673.20 ")
 ;;336
 ;;21,"673.23 ")
 ;;337
 ;;21,"673.33 ")
 ;;338
 ;;21,"673.80 ")
 ;;339
 ;;21,"673.83 ")
 ;;340
 ;;21,"674.03 ")
 ;;341
 ;;21,"674.30 ")
 ;;342
 ;;21,"674.40 ")
 ;;343
 ;;21,"675.00 ")
 ;;344
 ;;21,"675.03 ")
 ;;345
 ;;21,"675.10 ")
 ;;346
 ;;21,"675.13 ")
 ;;347
 ;;21,"675.20 ")
 ;;348
 ;;21,"675.23 ")
 ;;349
 ;;21,"675.80 ")
 ;;350
 ;;21,"675.83 ")
 ;;351
 ;;21,"675.90 ")
 ;;352
 ;;21,"675.93 ")
 ;;353
 ;;21,"676.00 ")
 ;;354
 ;;21,"676.03 ")
 ;;355
 ;;21,"676.10 ")
 ;;356
 ;;21,"676.13 ")
 ;;357
 ;;21,"676.20 ")
 ;;358
 ;;21,"676.23 ")
 ;;359
 ;;21,"676.30 ")
 ;;360
 ;;21,"676.33 ")
 ;;361
 ;;21,"676.43 ")
 ;;362
 ;;21,"676.53 ")
 ;;363
 ;;21,"676.60 ")
 ;;364
 ;;21,"676.63 ")
 ;;365
 ;;21,"676.83 ")
 ;;366
 ;;21,"676.93 ")
 ;;367
 ;;21,"O09.00 ")
 ;;368
 ;;21,"O09.01 ")
 ;;369
 ;;21,"O09.02 ")
 ;;370
 ;;21,"O09.03 ")
 ;;371
 ;;21,"O09.10 ")
 ;;372
 ;;21,"O09.11 ")
 ;;373
 ;;21,"O09.12 ")
 ;;374
 ;;21,"O09.13 ")
 ;;375
 ;;21,"O09.211 ")
 ;;376
 ;;21,"O09.212 ")
 ;;377
 ;;21,"O09.213 ")
 ;;378
 ;;21,"O09.219 ")
 ;;379
 ;;21,"O09.291 ")
 ;;380
 ;;21,"O09.292 ")
 ;;381
 ;;21,"O09.293 ")
 ;;382
 ;;21,"O09.299 ")
 ;;383
 ;;21,"O09.30 ")
 ;;384
 ;;21,"O09.31 ")
 ;;385
 ;;21,"O09.32 ")
 ;;386
 ;;21,"O09.33 ")
 ;;387
 ;;21,"O09.40 ")
 ;;388
 ;;21,"O09.41 ")
 ;;389
 ;;21,"O09.42 ")
 ;;390
 ;;21,"O09.43 ")
 ;;391
 ;;21,"O09.511 ")
 ;;392
 ;;21,"O09.512 ")
 ;;393
 ;;21,"O09.513 ")
 ;;394
 ;;21,"O09.519 ")
 ;;395
 ;;21,"O09.521 ")
 ;;396
 ;;21,"O09.522 ")
 ;;397
 ;;21,"O09.523 ")
 ;;398
 ;;21,"O09.529 ")
 ;;399
 ;;21,"O09.611 ")
 ;;400
 ;;21,"O09.612 ")
 ;;401
 ;;21,"O09.613 ")
 ;;402
 ;;21,"O09.619 ")
 ;;403
 ;;21,"O09.621 ")
 ;;404
 ;;21,"O09.622 ")
 ;;405
 ;;21,"O09.623 ")
 ;;406
 ;;21,"O09.629 ")
 ;;407
 ;;21,"O09.70 ")
 ;;408
 ;;21,"O09.71 ")
 ;;409
 ;;21,"O09.72 ")
 ;;410
 ;;21,"O09.73 ")
 ;;411
 ;;21,"O09.811 ")
 ;;412
 ;;21,"O09.812 ")
 ;;413
 ;;21,"O09.813 ")
 ;;414
 ;;21,"O09.819 ")
 ;;415
 ;;21,"O09.821 ")
 ;;416
 ;;21,"O09.822 ")
 ;;417
 ;;21,"O09.823 ")
 ;;418
 ;
OTHER ; OTHER ROUTINES
 D ^ATXDBH10
 D ^ATXDBH11
 D ^ATXDBH12
 D ^ATXDBH13
 D ^ATXDBH14
 D ^ATXDBH15
 D ^ATXDBH16
 D ^ATXDBH17
 D ^ATXDBH18
 D ^ATXDBH19
 D ^ATXDBH2
 D ^ATXDBH20
 D ^ATXDBH21
 D ^ATXDBH22
 D ^ATXDBH23
 D ^ATXDBH24
 D ^ATXDBH25
 D ^ATXDBH26
 D ^ATXDBH27
 D ^ATXDBH28
 D ^ATXDBH29
 D ^ATXDBH3
 D ^ATXDBH30
 D ^ATXDBH31
 D ^ATXDBH32
 D ^ATXDBH33
 D ^ATXDBH34
 D ^ATXDBH35
 D ^ATXDBH4
 D ^ATXDBH5
 D ^ATXDBH6
 D ^ATXDBH7
 D ^ATXDBH8
 D ^ATXDBH9
 Q
