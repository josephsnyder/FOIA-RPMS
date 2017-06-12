ATXF4D ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 15, 2016;
 ;;5.1;TAXONOMY;**15**;FEB 04, 1997;Build 20
 ;;BQI CANCER REPORTABLE DXS
 ;
 ; This routine loads Taxonomy BQI CANCER REPORTABLE DXS
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
 ;;21,"140.0 ")
 ;;1
 ;;21,"141.0 ")
 ;;2
 ;;21,"142.0 ")
 ;;3
 ;;21,"143.0 ")
 ;;4
 ;;21,"144.0 ")
 ;;5
 ;;21,"145.0 ")
 ;;6
 ;;21,"146.0 ")
 ;;7
 ;;21,"147.0 ")
 ;;8
 ;;21,"148.0 ")
 ;;9
 ;;21,"149.0 ")
 ;;10
 ;;21,"150.0 ")
 ;;11
 ;;21,"151.0 ")
 ;;12
 ;;21,"152.0 ")
 ;;13
 ;;21,"153.0 ")
 ;;14
 ;;21,"154.0 ")
 ;;15
 ;;21,"155.0 ")
 ;;16
 ;;21,"156.0 ")
 ;;17
 ;;21,"157.0 ")
 ;;18
 ;;21,"158.0 ")
 ;;19
 ;;21,"159.0 ")
 ;;20
 ;;21,"160.0 ")
 ;;21
 ;;21,"161.0 ")
 ;;22
 ;;21,"162.0 ")
 ;;23
 ;;21,"163.0 ")
 ;;24
 ;;21,"164.0 ")
 ;;25
 ;;21,"165.0 ")
 ;;26
 ;;21,"170.0 ")
 ;;27
 ;;21,"171.0 ")
 ;;28
 ;;21,"172.0 ")
 ;;29
 ;;21,"173.00 ")
 ;;30
 ;;21,"173.09 ")
 ;;31
 ;;21,"173.10 ")
 ;;32
 ;;21,"173.19 ")
 ;;33
 ;;21,"173.20 ")
 ;;34
 ;;21,"173.29 ")
 ;;35
 ;;21,"173.30 ")
 ;;36
 ;;21,"173.39 ")
 ;;37
 ;;21,"173.40 ")
 ;;38
 ;;21,"173.49 ")
 ;;39
 ;;21,"173.50 ")
 ;;40
 ;;21,"173.59 ")
 ;;41
 ;;21,"173.60 ")
 ;;42
 ;;21,"173.69 ")
 ;;43
 ;;21,"173.70 ")
 ;;44
 ;;21,"173.79 ")
 ;;45
 ;;21,"173.80 ")
 ;;46
 ;;21,"173.89 ")
 ;;47
 ;;21,"173.90 ")
 ;;48
 ;;21,"173.99 ")
 ;;49
 ;;21,"174.0 ")
 ;;50
 ;;21,"175.0 ")
 ;;51
 ;;21,"176.0 ")
 ;;52
 ;;21,"180.0 ")
 ;;53
 ;;21,"182.0 ")
 ;;54
 ;;21,"183.0 ")
 ;;55
 ;;21,"184.0 ")
 ;;56
 ;;21,"186.0 ")
 ;;57
 ;;21,"187.1 ")
 ;;58
 ;;21,"188.0 ")
 ;;59
 ;;21,"189.0 ")
 ;;60
 ;;21,"190.0 ")
 ;;61
 ;;21,"191.0 ")
 ;;62
 ;;21,"192.0 ")
 ;;63
 ;;21,"194.0 ")
 ;;64
 ;;21,"195.0 ")
 ;;65
 ;;21,"196.0 ")
 ;;66
 ;;21,"197.0 ")
 ;;67
 ;;21,"198.0 ")
 ;;68
 ;;21,"198.81 ")
 ;;69
 ;;21,"199.0 ")
 ;;70
 ;;21,"200.0 ")
 ;;71
 ;;21,"201.0 ")
 ;;72
 ;;21,"202.0 ")
 ;;73
 ;;21,"203.00 ")
 ;;74
 ;;21,"203.10 ")
 ;;75
 ;;21,"203.80 ")
 ;;76
 ;;21,"204.00 ")
 ;;77
 ;;21,"204.10 ")
 ;;78
 ;;21,"204.20 ")
 ;;79
 ;;21,"204.80 ")
 ;;80
 ;;21,"204.90 ")
 ;;81
 ;;21,"205.00 ")
 ;;82
 ;;21,"205.10 ")
 ;;83
 ;;21,"205.20 ")
 ;;84
 ;;21,"205.30 ")
 ;;85
 ;;21,"205.80 ")
 ;;86
 ;;21,"205.90 ")
 ;;87
 ;;21,"206.00 ")
 ;;88
 ;;21,"206.10 ")
 ;;89
 ;;21,"206.20 ")
 ;;90
 ;;21,"206.80 ")
 ;;91
 ;;21,"206.90 ")
 ;;92
 ;;21,"207.00 ")
 ;;93
 ;;21,"207.10 ")
 ;;94
 ;;21,"207.20 ")
 ;;95
 ;;21,"207.90 ")
 ;;96
 ;;21,"208.00 ")
 ;;97
 ;;21,"208.10 ")
 ;;98
 ;;21,"208.20 ")
 ;;99
 ;;21,"208.80 ")
 ;;100
 ;;21,"208.90 ")
 ;;101
 ;;21,"209.00 ")
 ;;102
 ;;21,"209.10 ")
 ;;103
 ;;21,"209.20 ")
 ;;104
 ;;21,"209.30 ")
 ;;105
 ;;21,"209.70 ")
 ;;106
 ;;21,"225.0 ")
 ;;107
 ;;21,"227.3 ")
 ;;108
 ;;21,"228.02 ")
 ;;109
 ;;21,"228.1 ")
 ;;110
 ;;21,"230.0 ")
 ;;111
 ;;21,"231.0 ")
 ;;112
 ;;21,"232.0 ")
 ;;113
 ;;21,"233.0 ")
 ;;114
 ;;21,"234.0 ")
 ;;115
 ;;21,"237.0 ")
 ;;116
 ;;21,"237.5 ")
 ;;117
 ;;21,"237.9 ")
 ;;118
 ;;21,"238.4 ")
 ;;119
 ;;21,"238.71 ")
 ;;120
 ;;21,"239.6 ")
 ;;121
 ;;21,"239.7 ")
 ;;122
 ;;21,"273.3 ")
 ;;123
 ;;21,"277.89 ")
 ;;124
 ;;21,"C00.0 ")
 ;;125
 ;;21,"C01. ")
 ;;126
 ;;21,"C02.0 ")
 ;;127
 ;;21,"C03.0 ")
 ;;128
 ;;21,"C04.0 ")
 ;;129
 ;;21,"C05.0 ")
 ;;130
 ;;21,"C06.0 ")
 ;;131
 ;;21,"C07. ")
 ;;132
 ;;21,"C08.0 ")
 ;;133
 ;;21,"C09.0 ")
 ;;134
 ;;21,"C10.0 ")
 ;;135
 ;;21,"C11.0 ")
 ;;136
 ;;21,"C12. ")
 ;;137
 ;;21,"C13.0 ")
 ;;138
 ;;21,"C14.0 ")
 ;;139
 ;;21,"C15.3 ")
 ;;140
 ;;21,"C16.0 ")
 ;;141
 ;;21,"C17.0 ")
 ;;142
 ;;21,"C18.0 ")
 ;;143
 ;;21,"C19. ")
 ;;144
 ;;21,"C20. ")
 ;;145
 ;;21,"C21.0 ")
 ;;146
 ;;21,"C22.0 ")
 ;;147
 ;;21,"C23. ")
 ;;148
 ;;21,"C24.0 ")
 ;;149
 ;;21,"C25.0 ")
 ;;150
 ;;21,"C26.0 ")
 ;;151
 ;;21,"C30.0 ")
 ;;152
 ;;21,"C31.0 ")
 ;;153
 ;;21,"C32.0 ")
 ;;154
 ;;21,"C33. ")
 ;;155
 ;;21,"C34.00 ")
 ;;156
 ;;21,"C34.10 ")
 ;;157
 ;;21,"C34.30 ")
 ;;158
 ;;21,"C34.80 ")
 ;;159
 ;;21,"C34.90 ")
 ;;160
 ;;21,"C37. ")
 ;;161
 ;;21,"C38.0 ")
 ;;162
 ;;21,"C39.0 ")
 ;;163
 ;;21,"C40.00 ")
 ;;164
 ;;21,"C40.10 ")
 ;;165
 ;;21,"C40.20 ")
 ;;166
 ;;21,"C40.30 ")
 ;;167
 ;;21,"C40.80 ")
 ;;168
 ;;21,"C40.90 ")
 ;;169
 ;;21,"C41.0 ")
 ;;170
 ;;21,"C43.0 ")
 ;;171
 ;;21,"C43.10 ")
 ;;172
 ;;21,"C43.20 ")
 ;;173
 ;;21,"C43.30 ")
 ;;174
 ;;21,"C43.51 ")
 ;;175
 ;;21,"C43.60 ")
 ;;176
 ;;21,"C43.70 ")
 ;;177
 ;;21,"C44.00 ")
 ;;178
 ;;21,"C44.09 ")
 ;;179
 ;;21,"C44.101 ")
 ;;180
 ;;21,"C44.109 ")
 ;;181
 ;;21,"C44.191 ")
 ;;182
 ;;21,"C44.199 ")
 ;;183
 ;;21,"C44.201 ")
 ;;184
 ;;21,"C44.209 ")
 ;;185
 ;;21,"C44.291 ")
 ;;186
 ;;21,"C44.300 ")
 ;;187
 ;;21,"C44.390 ")
 ;;188
 ;;21,"C44.40 ")
 ;;189
 ;;21,"C44.49 ")
 ;;190
 ;;21,"C44.500 ")
 ;;191
 ;;21,"C44.590 ")
 ;;192
 ;;21,"C44.601 ")
 ;;193
 ;;21,"C44.691 ")
 ;;194
 ;;21,"C44.701 ")
 ;;195
 ;;21,"C44.791 ")
 ;;196
 ;;21,"C44.80 ")
 ;;197
 ;;21,"C44.89 ")
 ;;198
 ;;21,"C44.90 ")
 ;;199
 ;;21,"C44.99 ")
 ;;200
 ;;21,"C45.0 ")
 ;;201
 ;;21,"C46.0 ")
 ;;202
 ;;21,"C46.50 ")
 ;;203
 ;;21,"C46.7 ")
 ;;204
 ;;21,"C46.9 ")
 ;;205
 ;;21,"C47.0 ")
 ;;206
 ;;21,"C47.10 ")
 ;;207
 ;;21,"C47.20 ")
 ;;208
 ;;21,"C48.0 ")
 ;;209
 ;;21,"C49.0 ")
 ;;210
 ;;21,"C49.10 ")
 ;;211
 ;;21,"C49.20 ")
 ;;212
 ;;21,"C4A.0 ")
 ;;213
 ;;21,"C4A.10 ")
 ;;214
 ;;21,"C4A.20 ")
 ;;215
 ;;21,"C4A.30 ")
 ;;216
 ;;21,"C4A.51 ")
 ;;217
 ;;21,"C4A.60 ")
 ;;218
 ;;21,"C4A.70 ")
 ;;219
 ;;21,"C50.011 ")
 ;;220
 ;;21,"C50.021 ")
 ;;221
 ;;21,"C50.111 ")
 ;;222
 ;;21,"C50.121 ")
 ;;223
 ;;21,"C50.211 ")
 ;;224
 ;;21,"C50.221 ")
 ;;225
 ;;21,"C50.311 ")
 ;;226
 ;;21,"C50.321 ")
 ;;227
 ;;21,"C50.411 ")
 ;;228
 ;;21,"C50.421 ")
 ;;229
 ;;21,"C50.511 ")
 ;;230
 ;;21,"C50.521 ")
 ;;231
 ;;21,"C50.611 ")
 ;;232
 ;;21,"C50.621 ")
 ;;233
 ;;21,"C50.811 ")
 ;;234
 ;;21,"C50.821 ")
 ;;235
 ;;21,"C50.911 ")
 ;;236
 ;;21,"C50.921 ")
 ;;237
 ;;21,"C51.0 ")
 ;;238
 ;;21,"C52. ")
 ;;239
 ;;21,"C53.0 ")
 ;;240
 ;;21,"C54.0 ")
 ;;241
 ;;21,"C55. ")
 ;;242
 ;;21,"C56.1 ")
 ;;243
 ;;21,"C57.00 ")
 ;;244
 ;;21,"C57.10 ")
 ;;245
 ;;21,"C57.20 ")
 ;;246
 ;;21,"C58. ")
 ;;247
 ;;21,"C60.0 ")
 ;;248
 ;;21,"C62. ")
 ;;249
 ;;21,"C62.00 ")
 ;;250
 ;;21,"C62.10 ")
 ;;251
 ;;21,"C62.90 ")
 ;;252
 ;;21,"C63.00 ")
 ;;253
 ;;21,"C63.10 ")
 ;;254
 ;;21,"C63.7 ")
 ;;255
 ;;21,"C64.1 ")
 ;;256
 ;;21,"C65.1 ")
 ;;257
 ;;21,"C66.1 ")
 ;;258
 ;;21,"C67.0 ")
 ;;259
 ;;21,"C68.0 ")
 ;;260
 ;;21,"C69.00 ")
 ;;261
 ;;21,"C69.10 ")
 ;;262
 ;;21,"C69.20 ")
 ;;263
 ;;21,"C69.30 ")
 ;;264
 ;;21,"C69.40 ")
 ;;265
 ;;21,"C69.50 ")
 ;;266
 ;;21,"C69.60 ")
 ;;267
 ;;21,"C69.80 ")
 ;;268
 ;;21,"C69.90 ")
 ;;269
 ;;21,"C70.0 ")
 ;;270
 ;;21,"C71.0 ")
 ;;271
 ;;21,"C72.0 ")
 ;;272
 ;;21,"C72.20 ")
 ;;273
 ;;21,"C72.30 ")
 ;;274
 ;;21,"C72.40 ")
 ;;275
 ;;21,"C72.50 ")
 ;;276
 ;;21,"C72.9 ")
 ;;277
 ;;21,"C73. ")
 ;;278
 ;;21,"C74.0 ")
 ;;279
 ;;21,"C74.10 ")
 ;;280
 ;;21,"C74.90 ")
 ;;281
 ;;21,"C75.0 ")
 ;;282
 ;;21,"C76.0 ")
 ;;283
 ;;21,"C76.40 ")
 ;;284
 ;;21,"C76.50 ")
 ;;285
 ;;21,"C77.0 ")
 ;;286
 ;;21,"C78.00 ")
 ;;287
 ;;21,"C79.00 ")
 ;;288
 ;;21,"C7A.00 ")
 ;;289
 ;;21,"C7A.010 ")
 ;;290
 ;;21,"C7A.020 ")
 ;;291
 ;;21,"C7A.090 ")
 ;;292
 ;;21,"C7A.1 ")
 ;;293
 ;;21,"C7B.00 ")
 ;;294
 ;;21,"C80.0 ")
 ;;295
 ;;21,"C81.0 ")
 ;;296
 ;;21,"C82.0 ")
 ;;297
 ;;21,"C83.0 ")
 ;;298
 ;;21,"C84.0 ")
 ;;299
 ;;21,"C85.10 ")
 ;;300
 ;;21,"C86.0 ")
 ;;301
 ;;21,"C88.0 ")
 ;;302
 ;;21,"C90.00 ")
 ;;303
 ;;21,"C90.10 ")
 ;;304
 ;;21,"C90.20 ")
 ;;305
 ;;21,"C90.30 ")
 ;;306
 ;;21,"C91.00 ")
 ;;307
 ;;21,"C91.10 ")
 ;;308
 ;;21,"C91.30 ")
 ;;309
 ;;21,"C91.40 ")
 ;;310
 ;;21,"C91.50 ")
 ;;311
 ;;21,"C91.60 ")
 ;;312
 ;;21,"C91.90 ")
 ;;313
 ;;21,"C91.A0 ")
 ;;314
 ;;21,"C91.Z0 ")
 ;;315
 ;;21,"C92.00 ")
 ;;316
 ;;21,"C92.10 ")
 ;;317
 ;;21,"C92.20 ")
 ;;318
 ;;21,"C92.30 ")
 ;;319
 ;;21,"C92.40 ")
 ;;320
 ;;21,"C92.50 ")
 ;;321
 ;;21,"C92.60 ")
 ;;322
 ;;21,"C92.90 ")
 ;;323
 ;;21,"C92.A0 ")
 ;;324
 ;;21,"C92.Z0 ")
 ;;325
 ;;21,"C93.00 ")
 ;;326
 ;;21,"C93.10 ")
 ;;327
 ;;21,"C93.30 ")
 ;;328
 ;;21,"C93.90 ")
 ;;329
 ;;21,"C93.Z0 ")
 ;;330
 ;;21,"C94.00 ")
 ;;331
 ;;21,"C94.20 ")
 ;;332
 ;;21,"C94.30 ")
 ;;333
 ;;21,"C94.40 ")
 ;;334
 ;;21,"C94.80 ")
 ;;335
 ;;21,"C95.00 ")
 ;;336
 ;;21,"C95.10 ")
 ;;337
 ;;21,"C95.90 ")
 ;;338
 ;;21,"C96.0 ")
 ;;339
 ;;21,"D00.00 ")
 ;;340
 ;;21,"D01.0 ")
 ;;341
 ;;21,"D01.40 ")
 ;;342
 ;;21,"D02.0 ")
 ;;343
 ;;21,"D02.20 ")
 ;;344
 ;;21,"D03.0 ")
 ;;345
 ;;21,"D03.10 ")
 ;;346
 ;;21,"D03.20 ")
 ;;347
 ;;21,"D03.30 ")
 ;;348
 ;;21,"D03.51 ")
 ;;349
 ;;21,"D03.60 ")
 ;;350
 ;;21,"D03.70 ")
 ;;351
 ;;21,"D04.0 ")
 ;;352
 ;;21,"D04.10 ")
 ;;353
 ;;21,"D04.20 ")
 ;;354
 ;;21,"D04.30 ")
 ;;355
 ;;21,"D04.60 ")
 ;;356
 ;;21,"D04.70 ")
 ;;357
 ;;21,"D05.00 ")
 ;;358
 ;;21,"D05.10 ")
 ;;359
 ;;21,"D05.80 ")
 ;;360
 ;;21,"D05.90 ")
 ;;361
 ;;21,"D06.0 ")
 ;;362
 ;;21,"D07.0 ")
 ;;363
 ;;21,"D07.30 ")
 ;;364
 ;;21,"D07.60 ")
 ;;365
 ;;21,"D09.0 ")
 ;;366
 ;;21,"D09.10 ")
 ;;367
 ;;21,"D09.20 ")
 ;;368
 ;;21,"D18.02 ")
 ;;369
 ;;21,"D18.1 ")
 ;;370
 ;;21,"D32.0 ")
 ;;371
 ;;21,"D33.0 ")
 ;;372
 ;;21,"D35.2 ")
 ;;373
 ;;21,"D42.0 ")
 ;;374
 ;;21,"D43.0 ")
 ;;375
 ;;21,"D44.3 ")
 ;;376
 ;;21,"D46.0 ")
 ;;377
 ;;21,"D46.20 ")
 ;;378
 ;;21,"D47.1 ")
 ;;379
 ;;21,"D47.3 ")
 ;;380
 ;;21,"D47.Z1 ")
 ;;381
 ;;21,"D49.6 ")
 ;;382
 ;;9002226,2107,.01)
 ;;BQI CANCER REPORTABLE DXS
 ;;9002226,2107,.02)
 ;;CDC Reportable Cancer DXs
 ;;9002226,2107,.04)
 ;;n
 ;;9002226,2107,.06)
 ;;@
 ;;9002226,2107,.08)
 ;;@
 ;;9002226,2107,.09)
 ;;3160112
 ;;9002226,2107,.11)
 ;;@
 ;;9002226,2107,.12)
 ;;31
 ;;9002226,2107,.13)
 ;;1
 ;;9002226,2107,.14)
 ;;@
 ;;9002226,2107,.15)
 ;;80
 ;;9002226,2107,.16)
 ;;1
 ;;9002226,2107,.17)
 ;;@
 ;;9002226,2107,3101)
 ;;@
 ;;9002226.01101,"2107,1",.01)
 ;;This is the list of cancer diagnoses that is reportable to the
 ;;9002226.01101,"2107,2",.01)
 ;;CDC Cancer Registry.
 ;;9002226.02101,"2107,140.0 ",.01)
 ;;140.0
 ;;9002226.02101,"2107,140.0 ",.02)
 ;;140.9
 ;;9002226.02101,"2107,140.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,141.0 ",.01)
 ;;141.0
 ;;9002226.02101,"2107,141.0 ",.02)
 ;;141.9
 ;;9002226.02101,"2107,141.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,142.0 ",.01)
 ;;142.0
 ;;9002226.02101,"2107,142.0 ",.02)
 ;;142.9
 ;;9002226.02101,"2107,142.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,143.0 ",.01)
 ;;143.0
 ;;9002226.02101,"2107,143.0 ",.02)
 ;;143.9
 ;;9002226.02101,"2107,143.0 ",.03)
 ;;1
 ;
OTHER ; OTHER ROUTINES
 D ^ATXF4D2
 D ^ATXF4D3
 D ^ATXF4D4
 D ^ATXF4D5
 D ^ATXF4D6
 Q
