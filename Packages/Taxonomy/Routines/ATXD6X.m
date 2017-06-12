ATXD6X ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BKMV AIDS DEF ILL DXS
 ;
 ; This routine loads Taxonomy BKMV AIDS DEF ILL DXS
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
 ;;21,"003.1 ")
 ;;1
 ;;21,"007.2 ")
 ;;2
 ;;21,"007.4 ")
 ;;3
 ;;21,"010.00 ")
 ;;4
 ;;21,"031.0 ")
 ;;5
 ;;21,"031.1 ")
 ;;6
 ;;21,"031.2 ")
 ;;7
 ;;21,"031.9 ")
 ;;8
 ;;21,"046.3 ")
 ;;9
 ;;21,"054.0 ")
 ;;10
 ;;21,"078.5 ")
 ;;11
 ;;21,"112.4 ")
 ;;12
 ;;21,"112.84 ")
 ;;13
 ;;21,"112.89 ")
 ;;14
 ;;21,"112.9 ")
 ;;15
 ;;21,"114.1 ")
 ;;16
 ;;21,"114.2 ")
 ;;17
 ;;21,"114.3 ")
 ;;18
 ;;21,"115.00 ")
 ;;19
 ;;21,"117.5 ")
 ;;20
 ;;21,"130.0 ")
 ;;21
 ;;21,"136.3 ")
 ;;22
 ;;21,"176.0 ")
 ;;23
 ;;21,"180.0 ")
 ;;24
 ;;21,"191.0 ")
 ;;25
 ;;21,"196.0 ")
 ;;26
 ;;21,"200.20 ")
 ;;27
 ;;21,"200.80 ")
 ;;28
 ;;21,"202.80 ")
 ;;29
 ;;21,"261. ")
 ;;30
 ;;21,"348.3 ")
 ;;31
 ;;21,"480.0 ")
 ;;32
 ;;21,"482.0 ")
 ;;33
 ;;21,"483.0 ")
 ;;34
 ;;21,"484.0 ")
 ;;35
 ;;21,"485.0 ")
 ;;36
 ;;21,"486.0 ")
 ;;37
 ;;21,"487.0 ")
 ;;38
 ;;21,"799.4 ")
 ;;39
 ;;21,"A02.1 ")
 ;;40
 ;;21,"A07.2 ")
 ;;41
 ;;21,"A07.3 ")
 ;;42
 ;;21,"A15.0 ")
 ;;43
 ;;21,"A15.4 ")
 ;;44
 ;;21,"A15.5 ")
 ;;45
 ;;21,"A15.6 ")
 ;;46
 ;;21,"A15.7 ")
 ;;47
 ;;21,"A15.8 ")
 ;;48
 ;;21,"A15.9 ")
 ;;49
 ;;21,"A17.0 ")
 ;;50
 ;;21,"A17.1 ")
 ;;51
 ;;21,"A17.81 ")
 ;;52
 ;;21,"A17.82 ")
 ;;53
 ;;21,"A17.83 ")
 ;;54
 ;;21,"A17.89 ")
 ;;55
 ;;21,"A17.9 ")
 ;;56
 ;;21,"A18.01 ")
 ;;57
 ;;21,"A18.02 ")
 ;;58
 ;;21,"A18.03 ")
 ;;59
 ;;21,"A18.09 ")
 ;;60
 ;;21,"A18.10 ")
 ;;61
 ;;21,"A18.11 ")
 ;;62
 ;;21,"A18.12 ")
 ;;63
 ;;21,"A18.13 ")
 ;;64
 ;;21,"A18.14 ")
 ;;65
 ;;21,"A18.15 ")
 ;;66
 ;;21,"A18.16 ")
 ;;67
 ;;21,"A18.17 ")
 ;;68
 ;;21,"A18.18 ")
 ;;69
 ;;21,"A18.2 ")
 ;;70
 ;;21,"A18.31 ")
 ;;71
 ;;21,"A18.32 ")
 ;;72
 ;;21,"A18.39 ")
 ;;73
 ;;21,"A18.4 ")
 ;;74
 ;;21,"A18.50 ")
 ;;75
 ;;21,"A18.51 ")
 ;;76
 ;;21,"A18.52 ")
 ;;77
 ;;21,"A18.53 ")
 ;;78
 ;;21,"A18.54 ")
 ;;79
 ;;21,"A18.59 ")
 ;;80
 ;;21,"A18.6 ")
 ;;81
 ;;21,"A18.7 ")
 ;;82
 ;;21,"A18.81 ")
 ;;83
 ;;21,"A18.82 ")
 ;;84
 ;;21,"A18.83 ")
 ;;85
 ;;21,"A18.84 ")
 ;;86
 ;;21,"A18.85 ")
 ;;87
 ;;21,"A18.89 ")
 ;;88
 ;;21,"A19.0 ")
 ;;89
 ;;21,"A19.1 ")
 ;;90
 ;;21,"A19.2 ")
 ;;91
 ;;21,"A19.8 ")
 ;;92
 ;;21,"A19.9 ")
 ;;93
 ;;21,"A22.1 ")
 ;;94
 ;;21,"A31.0 ")
 ;;95
 ;;21,"A31.1 ")
 ;;96
 ;;21,"A31.2 ")
 ;;97
 ;;21,"A31.9 ")
 ;;98
 ;;21,"A48.1 ")
 ;;99
 ;;21,"A60.00 ")
 ;;100
 ;;21,"A60.01 ")
 ;;101
 ;;21,"A60.02 ")
 ;;102
 ;;21,"A60.03 ")
 ;;103
 ;;21,"A60.04 ")
 ;;104
 ;;21,"A60.09 ")
 ;;105
 ;;21,"A60.1 ")
 ;;106
 ;;21,"A60.9 ")
 ;;107
 ;;21,"A81.2 ")
 ;;108
 ;;21,"B00.0 ")
 ;;109
 ;;21,"B00.1 ")
 ;;110
 ;;21,"B00.2 ")
 ;;111
 ;;21,"B00.3 ")
 ;;112
 ;;21,"B00.4 ")
 ;;113
 ;;21,"B00.50 ")
 ;;114
 ;;21,"B00.51 ")
 ;;115
 ;;21,"B00.52 ")
 ;;116
 ;;21,"B00.53 ")
 ;;117
 ;;21,"B00.59 ")
 ;;118
 ;;21,"B00.7 ")
 ;;119
 ;;21,"B00.81 ")
 ;;120
 ;;21,"B00.82 ")
 ;;121
 ;;21,"B00.89 ")
 ;;122
 ;;21,"B00.9 ")
 ;;123
 ;;21,"B20. ")
 ;;124
 ;;21,"B25.0 ")
 ;;125
 ;;21,"B25.1 ")
 ;;126
 ;;21,"B25.2 ")
 ;;127
 ;;21,"B25.8 ")
 ;;128
 ;;21,"B25.9 ")
 ;;129
 ;;21,"B37.1 ")
 ;;130
 ;;21,"B37.89 ")
 ;;131
 ;;21,"B37.9 ")
 ;;132
 ;;21,"B38.3 ")
 ;;133
 ;;21,"B38.4 ")
 ;;134
 ;;21,"B38.7 ")
 ;;135
 ;;21,"B38.81 ")
 ;;136
 ;;21,"B38.89 ")
 ;;137
 ;;21,"B39.0 ")
 ;;138
 ;;21,"B39.1 ")
 ;;139
 ;;21,"B39.2 ")
 ;;140
 ;;21,"B39.3 ")
 ;;141
 ;;21,"B39.4 ")
 ;;142
 ;;21,"B39.5 ")
 ;;143
 ;;21,"B39.9 ")
 ;;144
 ;;21,"B44.0 ")
 ;;145
 ;;21,"B45.0 ")
 ;;146
 ;;21,"B45.1 ")
 ;;147
 ;;21,"B45.2 ")
 ;;148
 ;;21,"B45.3 ")
 ;;149
 ;;21,"B45.7 ")
 ;;150
 ;;21,"B45.8 ")
 ;;151
 ;;21,"B45.9 ")
 ;;152
 ;;21,"B58.00 ")
 ;;153
 ;;21,"B58.01 ")
 ;;154
 ;;21,"B58.09 ")
 ;;155
 ;;21,"B58.1 ")
 ;;156
 ;;21,"B58.2 ")
 ;;157
 ;;21,"B58.3 ")
 ;;158
 ;;21,"B58.81 ")
 ;;159
 ;;21,"B58.82 ")
 ;;160
 ;;21,"B58.83 ")
 ;;161
 ;;21,"B58.89 ")
 ;;162
 ;;21,"B58.9 ")
 ;;163
 ;;21,"B59. ")
 ;;164
 ;;21,"B77.81 ")
 ;;165
 ;;21,"C46.0 ")
 ;;166
 ;;21,"C46.1 ")
 ;;167
 ;;21,"C46.2 ")
 ;;168
 ;;21,"C46.3 ")
 ;;169
 ;;21,"C46.4 ")
 ;;170
 ;;21,"C46.50 ")
 ;;171
 ;;21,"C46.51 ")
 ;;172
 ;;21,"C46.52 ")
 ;;173
 ;;21,"C46.7 ")
 ;;174
 ;;21,"C46.9 ")
 ;;175
 ;;21,"C53.0 ")
 ;;176
 ;;21,"C53.1 ")
 ;;177
 ;;21,"C53.8 ")
 ;;178
 ;;21,"C53.9 ")
 ;;179
 ;;21,"C71.0 ")
 ;;180
 ;;21,"C71.1 ")
 ;;181
 ;;21,"C71.2 ")
 ;;182
 ;;21,"C71.3 ")
 ;;183
 ;;21,"C71.4 ")
 ;;184
 ;;21,"C71.5 ")
 ;;185
 ;;21,"C71.6 ")
 ;;186
 ;;21,"C71.7 ")
 ;;187
 ;;21,"C71.8 ")
 ;;188
 ;;21,"C71.9 ")
 ;;189
 ;;21,"C77.0 ")
 ;;190
 ;;21,"C77.1 ")
 ;;191
 ;;21,"C77.2 ")
 ;;192
 ;;21,"C77.3 ")
 ;;193
 ;;21,"C77.4 ")
 ;;194
 ;;21,"C77.5 ")
 ;;195
 ;;21,"C77.8 ")
 ;;196
 ;;21,"C77.9 ")
 ;;197
 ;;21,"C82.50 ")
 ;;198
 ;;21,"C82.51 ")
 ;;199
 ;;21,"C82.52 ")
 ;;200
 ;;21,"C82.53 ")
 ;;201
 ;;21,"C82.54 ")
 ;;202
 ;;21,"C82.55 ")
 ;;203
 ;;21,"C82.56 ")
 ;;204
 ;;21,"C82.57 ")
 ;;205
 ;;21,"C82.58 ")
 ;;206
 ;;21,"C82.59 ")
 ;;207
 ;;21,"C83.00 ")
 ;;208
 ;;21,"C83.01 ")
 ;;209
 ;;21,"C83.02 ")
 ;;210
 ;;21,"C83.03 ")
 ;;211
 ;;21,"C83.04 ")
 ;;212
 ;;21,"C83.05 ")
 ;;213
 ;;21,"C83.06 ")
 ;;214
 ;;21,"C83.07 ")
 ;;215
 ;;21,"C83.08 ")
 ;;216
 ;;21,"C83.09 ")
 ;;217
 ;;21,"C83.70 ")
 ;;218
 ;;21,"C83.71 ")
 ;;219
 ;;21,"C83.72 ")
 ;;220
 ;;21,"C83.73 ")
 ;;221
 ;;21,"C83.74 ")
 ;;222
 ;;21,"C83.75 ")
 ;;223
 ;;21,"C83.76 ")
 ;;224
 ;;21,"C83.77 ")
 ;;225
 ;;21,"C83.78 ")
 ;;226
 ;;21,"C83.79 ")
 ;;227
 ;;21,"C83.80 ")
 ;;228
 ;;21,"C83.81 ")
 ;;229
 ;;21,"C83.82 ")
 ;;230
 ;;21,"C83.83 ")
 ;;231
 ;;21,"C83.84 ")
 ;;232
 ;;21,"C83.85 ")
 ;;233
 ;;21,"C83.86 ")
 ;;234
 ;;21,"C83.87 ")
 ;;235
 ;;21,"C83.88 ")
 ;;236
 ;;21,"C83.89 ")
 ;;237
 ;;21,"C83.90 ")
 ;;238
 ;;21,"C83.91 ")
 ;;239
 ;;21,"C83.92 ")
 ;;240
 ;;21,"C83.93 ")
 ;;241
 ;;21,"C83.94 ")
 ;;242
 ;;21,"C83.95 ")
 ;;243
 ;;21,"C83.96 ")
 ;;244
 ;;21,"C83.97 ")
 ;;245
 ;;21,"C83.98 ")
 ;;246
 ;;21,"C83.99 ")
 ;;247
 ;;21,"C84.90 ")
 ;;248
 ;;21,"C84.91 ")
 ;;249
 ;;21,"C84.92 ")
 ;;250
 ;;21,"C84.93 ")
 ;;251
 ;;21,"C84.94 ")
 ;;252
 ;;21,"C84.95 ")
 ;;253
 ;;21,"C84.96 ")
 ;;254
 ;;21,"C84.97 ")
 ;;255
 ;;21,"C84.98 ")
 ;;256
 ;;21,"C84.99 ")
 ;;257
 ;;21,"C84.A0 ")
 ;;258
 ;;21,"C84.A1 ")
 ;;259
 ;;21,"C84.A2 ")
 ;;260
 ;;21,"C84.A3 ")
 ;;261
 ;;21,"C84.A4 ")
 ;;262
 ;;21,"C84.A5 ")
 ;;263
 ;;21,"C84.A6 ")
 ;;264
 ;;21,"C84.A7 ")
 ;;265
 ;;21,"C84.A8 ")
 ;;266
 ;;21,"C84.A9 ")
 ;;267
 ;;21,"C84.Z0 ")
 ;;268
 ;;21,"C84.Z1 ")
 ;;269
 ;;21,"C84.Z2 ")
 ;;270
 ;;21,"C84.Z3 ")
 ;;271
 ;;21,"C84.Z4 ")
 ;;272
 ;;21,"C84.Z5 ")
 ;;273
 ;;21,"C84.Z6 ")
 ;;274
 ;;21,"C84.Z7 ")
 ;;275
 ;;21,"C84.Z8 ")
 ;;276
 ;;21,"C84.Z9 ")
 ;;277
 ;;21,"C85.10 ")
 ;;278
 ;;21,"C85.11 ")
 ;;279
 ;;21,"C85.12 ")
 ;;280
 ;;21,"C85.13 ")
 ;;281
 ;;21,"C85.14 ")
 ;;282
 ;;21,"C85.15 ")
 ;;283
 ;;21,"C85.16 ")
 ;;284
 ;;21,"C85.17 ")
 ;;285
 ;;21,"C85.18 ")
 ;;286
 ;;21,"C85.19 ")
 ;;287
 ;;21,"C85.20 ")
 ;;288
 ;;21,"C85.21 ")
 ;;289
 ;;21,"C85.22 ")
 ;;290
 ;;21,"C85.23 ")
 ;;291
 ;;21,"C85.24 ")
 ;;292
 ;;21,"C85.25 ")
 ;;293
 ;;21,"C85.26 ")
 ;;294
 ;;21,"C85.27 ")
 ;;295
 ;;21,"C85.28 ")
 ;;296
 ;;21,"C85.29 ")
 ;;297
 ;;21,"C85.80 ")
 ;;298
 ;;21,"C85.81 ")
 ;;299
 ;;21,"C85.82 ")
 ;;300
 ;;21,"C85.83 ")
 ;;301
 ;;21,"C85.84 ")
 ;;302
 ;;21,"C85.85 ")
 ;;303
 ;;21,"C85.86 ")
 ;;304
 ;;21,"C85.87 ")
 ;;305
 ;;21,"C85.88 ")
 ;;306
 ;;21,"C85.89 ")
 ;;307
 ;;21,"C85.90 ")
 ;;308
 ;;21,"C85.91 ")
 ;;309
 ;;21,"C85.92 ")
 ;;310
 ;;21,"C85.93 ")
 ;;311
 ;;21,"C85.94 ")
 ;;312
 ;;21,"C85.95 ")
 ;;313
 ;;21,"C85.96 ")
 ;;314
 ;;21,"C85.97 ")
 ;;315
 ;;21,"C85.98 ")
 ;;316
 ;;21,"C85.99 ")
 ;;317
 ;;21,"C86.0 ")
 ;;318
 ;;21,"C86.1 ")
 ;;319
 ;;21,"C86.2 ")
 ;;320
 ;;21,"C86.3 ")
 ;;321
 ;;21,"C86.4 ")
 ;;322
 ;;21,"C86.5 ")
 ;;323
 ;;21,"C86.6 ")
 ;;324
 ;;21,"E41. ")
 ;;325
 ;;21,"G93.40 ")
 ;;326
 ;;21,"G93.41 ")
 ;;327
 ;;21,"G93.49 ")
 ;;328
 ;;21,"I67.83 ")
 ;;329
 ;;21,"J10.00 ")
 ;;330
 ;;21,"J10.08 ")
 ;;331
 ;;21,"J11.00 ")
 ;;332
 ;;21,"J11.08 ")
 ;;333
 ;;21,"J12.0 ")
 ;;334
 ;;21,"J12.1 ")
 ;;335
 ;;21,"J12.2 ")
 ;;336
 ;;21,"J12.3 ")
 ;;337
 ;;21,"J12.81 ")
 ;;338
 ;;21,"J12.89 ")
 ;;339
 ;;21,"J12.9 ")
 ;;340
 ;;21,"J13. ")
 ;;341
 ;;21,"J14. ")
 ;;342
 ;;21,"J15.0 ")
 ;;343
 ;;21,"J15.1 ")
 ;;344
 ;;21,"J15.20 ")
 ;;345
 ;;21,"J15.211 ")
 ;;346
 ;;21,"J15.212 ")
 ;;347
 ;;21,"J15.29 ")
 ;;348
 ;;21,"J15.3 ")
 ;;349
 ;;21,"J15.4 ")
 ;;350
 ;;21,"J15.5 ")
 ;;351
 ;;21,"J15.6 ")
 ;;352
 ;;21,"J15.7 ")
 ;;353
 ;;21,"J15.8 ")
 ;;354
 ;;21,"J15.9 ")
 ;;355
 ;;21,"J16.0 ")
 ;;356
 ;;21,"J16.8 ")
 ;;357
 ;;21,"J17. ")
 ;;358
 ;;21,"J18.0 ")
 ;;359
 ;;21,"J18.1 ")
 ;;360
 ;;21,"J18.8 ")
 ;;361
 ;;21,"J18.9 ")
 ;;362
 ;;21,"R64. ")
 ;;363
 ;;9002226,476,.01)
 ;;BKMV AIDS DEF ILL DXS
 ;;9002226,476,.02)
 ;;AIDS DEF ILL DXS
 ;;9002226,476,.04)
 ;;@
 ;;9002226,476,.06)
 ;;@
 ;;9002226,476,.08)
 ;;0
 ;;9002226,476,.09)
 ;;3140317
 ;;9002226,476,.11)
 ;;@
 ;;9002226,476,.12)
 ;;31
 ;;9002226,476,.13)
 ;;1
 ;;9002226,476,.14)
 ;;@
 ;;9002226,476,.15)
 ;;80
 ;;9002226,476,.16)
 ;;@
 ;;9002226,476,.17)
 ;;@
 ;;9002226,476,3101)
 ;;@
 ;;9002226.02101,"476,003.1 ",.01)
 ;;003.1
 ;;9002226.02101,"476,003.1 ",.02)
 ;;003.1
 ;;9002226.02101,"476,003.1 ",.03)
 ;;1
 ;;9002226.02101,"476,007.2 ",.01)
 ;;007.2
 ;;9002226.02101,"476,007.2 ",.02)
 ;;007.2
 ;;9002226.02101,"476,007.2 ",.03)
 ;;1
 ;;9002226.02101,"476,007.4 ",.01)
 ;;007.4
 ;;9002226.02101,"476,007.4 ",.02)
 ;;007.4
 ;;9002226.02101,"476,007.4 ",.03)
 ;;1
 ;;9002226.02101,"476,010.00 ",.01)
 ;;010.00
 ;;9002226.02101,"476,010.00 ",.02)
 ;;018.96
 ;;9002226.02101,"476,010.00 ",.03)
 ;;1
 ;;9002226.02101,"476,031.0 ",.01)
 ;;031.0
 ;;9002226.02101,"476,031.0 ",.02)
 ;;031.0
 ;;9002226.02101,"476,031.0 ",.03)
 ;;1
 ;;9002226.02101,"476,031.1 ",.01)
 ;;031.1
 ;;9002226.02101,"476,031.1 ",.02)
 ;;031.1
 ;;9002226.02101,"476,031.1 ",.03)
 ;;1
 ;;9002226.02101,"476,031.2 ",.01)
 ;;031.2
 ;;9002226.02101,"476,031.2 ",.02)
 ;;031.2
 ;;9002226.02101,"476,031.2 ",.03)
 ;;1
 ;;9002226.02101,"476,031.9 ",.01)
 ;;031.9
 ;;9002226.02101,"476,031.9 ",.02)
 ;;031.9
 ;;9002226.02101,"476,031.9 ",.03)
 ;;1
 ;;9002226.02101,"476,046.3 ",.01)
 ;;046.3
 ;;9002226.02101,"476,046.3 ",.02)
 ;;046.3
 ;;9002226.02101,"476,046.3 ",.03)
 ;;1
 ;;9002226.02101,"476,054.0 ",.01)
 ;;054.0
 ;;9002226.02101,"476,054.0 ",.02)
 ;;054.9
 ;;9002226.02101,"476,054.0 ",.03)
 ;;1
 ;;9002226.02101,"476,078.5 ",.01)
 ;;078.5
 ;;9002226.02101,"476,078.5 ",.02)
 ;;078.5
 ;;9002226.02101,"476,078.5 ",.03)
 ;;1
 ;;9002226.02101,"476,112.4 ",.01)
 ;;112.4
 ;;9002226.02101,"476,112.4 ",.02)
 ;;112.4
 ;;9002226.02101,"476,112.4 ",.03)
 ;;1
 ;;9002226.02101,"476,112.84 ",.01)
 ;;112.84
 ;;9002226.02101,"476,112.84 ",.02)
 ;;112.84
 ;;9002226.02101,"476,112.84 ",.03)
 ;;1
 ;;9002226.02101,"476,112.89 ",.01)
 ;;112.89
 ;;9002226.02101,"476,112.89 ",.02)
 ;;112.89
 ;;9002226.02101,"476,112.89 ",.03)
 ;;1
 ;;9002226.02101,"476,112.9 ",.01)
 ;;112.9
 ;;9002226.02101,"476,112.9 ",.02)
 ;;112.9
 ;;9002226.02101,"476,112.9 ",.03)
 ;;1
 ;;9002226.02101,"476,114.1 ",.01)
 ;;114.1
 ;;9002226.02101,"476,114.1 ",.02)
 ;;114.1
 ;;9002226.02101,"476,114.1 ",.03)
 ;;1
 ;;9002226.02101,"476,114.2 ",.01)
 ;;114.2
 ;;9002226.02101,"476,114.2 ",.02)
 ;;114.2
 ;;9002226.02101,"476,114.2 ",.03)
 ;;1
 ;;9002226.02101,"476,114.3 ",.01)
 ;;114.3
 ;;9002226.02101,"476,114.3 ",.02)
 ;;114.3
 ;;9002226.02101,"476,114.3 ",.03)
 ;;1
 ;;9002226.02101,"476,115.00 ",.01)
 ;;115.00
 ;;9002226.02101,"476,115.00 ",.02)
 ;;115.99
 ;;9002226.02101,"476,115.00 ",.03)
 ;;1
 ;;9002226.02101,"476,117.5 ",.01)
 ;;117.5
 ;;9002226.02101,"476,117.5 ",.02)
 ;;117.5
 ;;9002226.02101,"476,117.5 ",.03)
 ;;1
 ;;9002226.02101,"476,130.0 ",.01)
 ;;130.0
 ;;9002226.02101,"476,130.0 ",.02)
 ;;130.9
 ;;9002226.02101,"476,130.0 ",.03)
 ;;1
 ;;9002226.02101,"476,136.3 ",.01)
 ;;136.3
 ;;9002226.02101,"476,136.3 ",.02)
 ;;136.3
 ;;9002226.02101,"476,136.3 ",.03)
 ;;1
 ;;9002226.02101,"476,176.0 ",.01)
 ;;176.0
 ;;9002226.02101,"476,176.0 ",.02)
 ;;176.9
 ;;9002226.02101,"476,176.0 ",.03)
 ;;1
 ;
OTHER ; OTHER ROUTINES
 D ^ATXD6X2
 D ^ATXD6X3
 D ^ATXD6X4
 D ^ATXD6X5
 Q
