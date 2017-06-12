ATXD2O ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP HIGH RISK PNEUMO DXS
 ;
 ; This routine loads Taxonomy BGP HIGH RISK PNEUMO DXS
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
 ;;21,"042. ")
 ;;1
 ;;21,"044.9 ")
 ;;2
 ;;21,"079.53 ")
 ;;3
 ;;21,"250.00 ")
 ;;4
 ;;21,"303.90 ")
 ;;5
 ;;21,"428.0 ")
 ;;6
 ;;21,"429.2 ")
 ;;7
 ;;21,"492.0 ")
 ;;8
 ;;21,"494. ")
 ;;9
 ;;21,"501. ")
 ;;10
 ;;21,"571.0 ")
 ;;11
 ;;21,"581.0 ")
 ;;12
 ;;21,"585.60 ")
 ;;13
 ;;21,"865.00 ")
 ;;14
 ;;21,"996.80 ")
 ;;15
 ;;21,"B20. ")
 ;;16
 ;;21,"B52.0 ")
 ;;17
 ;;21,"B97.35 ")
 ;;18
 ;;21,"E08.21 ")
 ;;19
 ;;21,"E08.22 ")
 ;;20
 ;;21,"E08.29 ")
 ;;21
 ;;21,"E09.21 ")
 ;;22
 ;;21,"E09.22 ")
 ;;23
 ;;21,"E09.29 ")
 ;;24
 ;;21,"E10.10 ")
 ;;25
 ;;21,"E10.11 ")
 ;;26
 ;;21,"E10.21 ")
 ;;27
 ;;21,"E10.22 ")
 ;;28
 ;;21,"E10.29 ")
 ;;29
 ;;21,"E10.311 ")
 ;;30
 ;;21,"E10.319 ")
 ;;31
 ;;21,"E10.321 ")
 ;;32
 ;;21,"E10.329 ")
 ;;33
 ;;21,"E10.331 ")
 ;;34
 ;;21,"E10.339 ")
 ;;35
 ;;21,"E10.341 ")
 ;;36
 ;;21,"E10.349 ")
 ;;37
 ;;21,"E10.351 ")
 ;;38
 ;;21,"E10.359 ")
 ;;39
 ;;21,"E10.36 ")
 ;;40
 ;;21,"E10.39 ")
 ;;41
 ;;21,"E10.40 ")
 ;;42
 ;;21,"E10.41 ")
 ;;43
 ;;21,"E10.42 ")
 ;;44
 ;;21,"E10.43 ")
 ;;45
 ;;21,"E10.44 ")
 ;;46
 ;;21,"E10.49 ")
 ;;47
 ;;21,"E10.51 ")
 ;;48
 ;;21,"E10.52 ")
 ;;49
 ;;21,"E10.59 ")
 ;;50
 ;;21,"E10.610 ")
 ;;51
 ;;21,"E10.618 ")
 ;;52
 ;;21,"E10.620 ")
 ;;53
 ;;21,"E10.621 ")
 ;;54
 ;;21,"E10.622 ")
 ;;55
 ;;21,"E10.628 ")
 ;;56
 ;;21,"E10.630 ")
 ;;57
 ;;21,"E10.638 ")
 ;;58
 ;;21,"E10.641 ")
 ;;59
 ;;21,"E10.649 ")
 ;;60
 ;;21,"E10.65 ")
 ;;61
 ;;21,"E10.69 ")
 ;;62
 ;;21,"E10.8 ")
 ;;63
 ;;21,"E10.9 ")
 ;;64
 ;;21,"E11.00 ")
 ;;65
 ;;21,"E11.01 ")
 ;;66
 ;;21,"E11.21 ")
 ;;67
 ;;21,"E11.22 ")
 ;;68
 ;;21,"E11.29 ")
 ;;69
 ;;21,"E11.311 ")
 ;;70
 ;;21,"E11.319 ")
 ;;71
 ;;21,"E11.321 ")
 ;;72
 ;;21,"E11.329 ")
 ;;73
 ;;21,"E11.331 ")
 ;;74
 ;;21,"E11.339 ")
 ;;75
 ;;21,"E11.341 ")
 ;;76
 ;;21,"E11.349 ")
 ;;77
 ;;21,"E11.351 ")
 ;;78
 ;;21,"E11.359 ")
 ;;79
 ;;21,"E11.36 ")
 ;;80
 ;;21,"E11.39 ")
 ;;81
 ;;21,"E11.40 ")
 ;;82
 ;;21,"E11.41 ")
 ;;83
 ;;21,"E11.42 ")
 ;;84
 ;;21,"E11.43 ")
 ;;85
 ;;21,"E11.44 ")
 ;;86
 ;;21,"E11.49 ")
 ;;87
 ;;21,"E11.51 ")
 ;;88
 ;;21,"E11.52 ")
 ;;89
 ;;21,"E11.59 ")
 ;;90
 ;;21,"E11.610 ")
 ;;91
 ;;21,"E11.618 ")
 ;;92
 ;;21,"E11.620 ")
 ;;93
 ;;21,"E11.621 ")
 ;;94
 ;;21,"E11.622 ")
 ;;95
 ;;21,"E11.628 ")
 ;;96
 ;;21,"E11.630 ")
 ;;97
 ;;21,"E11.638 ")
 ;;98
 ;;21,"E11.641 ")
 ;;99
 ;;21,"E11.649 ")
 ;;100
 ;;21,"E11.65 ")
 ;;101
 ;;21,"E11.69 ")
 ;;102
 ;;21,"E11.8 ")
 ;;103
 ;;21,"E11.9 ")
 ;;104
 ;;21,"E13.00 ")
 ;;105
 ;;21,"E13.01 ")
 ;;106
 ;;21,"E13.10 ")
 ;;107
 ;;21,"E13.11 ")
 ;;108
 ;;21,"E13.21 ")
 ;;109
 ;;21,"E13.22 ")
 ;;110
 ;;21,"E13.29 ")
 ;;111
 ;;21,"E13.311 ")
 ;;112
 ;;21,"E13.319 ")
 ;;113
 ;;21,"E13.321 ")
 ;;114
 ;;21,"E13.329 ")
 ;;115
 ;;21,"E13.331 ")
 ;;116
 ;;21,"E13.339 ")
 ;;117
 ;;21,"E13.341 ")
 ;;118
 ;;21,"E13.349 ")
 ;;119
 ;;21,"E13.351 ")
 ;;120
 ;;21,"E13.359 ")
 ;;121
 ;;21,"E13.36 ")
 ;;122
 ;;21,"E13.39 ")
 ;;123
 ;;21,"E13.40 ")
 ;;124
 ;;21,"E13.41 ")
 ;;125
 ;;21,"E13.42 ")
 ;;126
 ;;21,"E13.43 ")
 ;;127
 ;;21,"E13.44 ")
 ;;128
 ;;21,"E13.49 ")
 ;;129
 ;;21,"E13.51 ")
 ;;130
 ;;21,"E13.52 ")
 ;;131
 ;;21,"E13.59 ")
 ;;132
 ;;21,"E13.610 ")
 ;;133
 ;;21,"E13.618 ")
 ;;134
 ;;21,"E13.620 ")
 ;;135
 ;;21,"E13.621 ")
 ;;136
 ;;21,"E13.622 ")
 ;;137
 ;;21,"E13.628 ")
 ;;138
 ;;21,"E13.630 ")
 ;;139
 ;;21,"E13.638 ")
 ;;140
 ;;21,"E13.641 ")
 ;;141
 ;;21,"E13.649 ")
 ;;142
 ;;21,"E13.65 ")
 ;;143
 ;;21,"E13.69 ")
 ;;144
 ;;21,"E13.8 ")
 ;;145
 ;;21,"E13.9 ")
 ;;146
 ;;21,"F10.20 ")
 ;;147
 ;;21,"F10.220 ")
 ;;148
 ;;21,"F10.221 ")
 ;;149
 ;;21,"F10.229 ")
 ;;150
 ;;21,"F10.230 ")
 ;;151
 ;;21,"F10.231 ")
 ;;152
 ;;21,"F10.232 ")
 ;;153
 ;;21,"F10.239 ")
 ;;154
 ;;21,"F10.24 ")
 ;;155
 ;;21,"F10.250 ")
 ;;156
 ;;21,"F10.251 ")
 ;;157
 ;;21,"F10.259 ")
 ;;158
 ;;21,"F10.26 ")
 ;;159
 ;;21,"F10.27 ")
 ;;160
 ;;21,"F10.280 ")
 ;;161
 ;;21,"F10.281 ")
 ;;162
 ;;21,"F10.282 ")
 ;;163
 ;;21,"F10.288 ")
 ;;164
 ;;21,"F10.29 ")
 ;;165
 ;;21,"I50.1 ")
 ;;166
 ;;21,"I50.20 ")
 ;;167
 ;;21,"I50.22 ")
 ;;168
 ;;21,"I50.23 ")
 ;;169
 ;;21,"I50.30 ")
 ;;170
 ;;21,"I50.32 ")
 ;;171
 ;;21,"I50.33 ")
 ;;172
 ;;21,"I50.40 ")
 ;;173
 ;;21,"I50.42 ")
 ;;174
 ;;21,"I50.43 ")
 ;;175
 ;;21,"I50.9 ")
 ;;176
 ;;21,"J43.0 ")
 ;;177
 ;;21,"J43.1 ")
 ;;178
 ;;21,"J43.2 ")
 ;;179
 ;;21,"J43.8 ")
 ;;180
 ;;21,"J43.9 ")
 ;;181
 ;;21,"J44.0 ")
 ;;182
 ;;21,"J44.1 ")
 ;;183
 ;;21,"J44.9 ")
 ;;184
 ;;21,"J45.21 ")
 ;;185
 ;;21,"J45.22 ")
 ;;186
 ;;21,"J45.30 ")
 ;;187
 ;;21,"J45.31 ")
 ;;188
 ;;21,"J45.32 ")
 ;;189
 ;;21,"J45.40 ")
 ;;190
 ;;21,"J45.41 ")
 ;;191
 ;;21,"J45.42 ")
 ;;192
 ;;21,"J45.50 ")
 ;;193
 ;;21,"J45.51 ")
 ;;194
 ;;21,"J45.52 ")
 ;;195
 ;;21,"J45.901 ")
 ;;196
 ;;21,"J45.902 ")
 ;;197
 ;;21,"J47.0 ")
 ;;198
 ;;21,"J47.1 ")
 ;;199
 ;;21,"J47.9 ")
 ;;200
 ;;21,"J60. ")
 ;;201
 ;;21,"J61. ")
 ;;202
 ;;21,"J62.0 ")
 ;;203
 ;;21,"J62.8 ")
 ;;204
 ;;21,"J63.0 ")
 ;;205
 ;;21,"J63.1 ")
 ;;206
 ;;21,"J63.2 ")
 ;;207
 ;;21,"J63.3 ")
 ;;208
 ;;21,"J63.4 ")
 ;;209
 ;;21,"J63.5 ")
 ;;210
 ;;21,"J63.6 ")
 ;;211
 ;;21,"J64. ")
 ;;212
 ;;21,"J66.8 ")
 ;;213
 ;;21,"J67.0 ")
 ;;214
 ;;21,"J67.1 ")
 ;;215
 ;;21,"J67.2 ")
 ;;216
 ;;21,"J67.3 ")
 ;;217
 ;;21,"J67.4 ")
 ;;218
 ;;21,"J67.5 ")
 ;;219
 ;;21,"J67.6 ")
 ;;220
 ;;21,"J67.8 ")
 ;;221
 ;;21,"J67.9 ")
 ;;222
 ;;21,"K70.11 ")
 ;;223
 ;;21,"K70.2 ")
 ;;224
 ;;21,"K70.30 ")
 ;;225
 ;;21,"K70.31 ")
 ;;226
 ;;21,"K70.40 ")
 ;;227
 ;;21,"K70.41 ")
 ;;228
 ;;21,"K73.0 ")
 ;;229
 ;;21,"K73.1 ")
 ;;230
 ;;21,"K73.2 ")
 ;;231
 ;;21,"K73.8 ")
 ;;232
 ;;21,"K73.9 ")
 ;;233
 ;;21,"K74.0 ")
 ;;234
 ;;21,"K74.1 ")
 ;;235
 ;;21,"K74.2 ")
 ;;236
 ;;21,"K74.3 ")
 ;;237
 ;;21,"K74.4 ")
 ;;238
 ;;21,"K74.5 ")
 ;;239
 ;;21,"K74.69 ")
 ;;240
 ;;21,"K75.81 ")
 ;;241
 ;;21,"N02.0 ")
 ;;242
 ;;21,"N02.1 ")
 ;;243
 ;;21,"N02.2 ")
 ;;244
 ;;21,"N02.3 ")
 ;;245
 ;;21,"N02.4 ")
 ;;246
 ;;21,"N02.5 ")
 ;;247
 ;;21,"N02.6 ")
 ;;248
 ;;21,"N02.7 ")
 ;;249
 ;;21,"N02.8 ")
 ;;250
 ;;21,"N02.9 ")
 ;;251
 ;;21,"N04.0 ")
 ;;252
 ;;21,"N04.1 ")
 ;;253
 ;;21,"N04.2 ")
 ;;254
 ;;21,"N04.3 ")
 ;;255
 ;;21,"N04.4 ")
 ;;256
 ;;21,"N04.5 ")
 ;;257
 ;;21,"N04.6 ")
 ;;258
 ;;21,"N04.7 ")
 ;;259
 ;;21,"N04.8 ")
 ;;260
 ;;21,"N04.9 ")
 ;;261
 ;;21,"N08. ")
 ;;262
 ;;21,"N18.6 ")
 ;;263
 ;;21,"N18.9 ")
 ;;264
 ;;21,"N19. ")
 ;;265
 ;;21,"T86.00 ")
 ;;266
 ;;21,"T86.01 ")
 ;;267
 ;;21,"T86.02 ")
 ;;268
 ;;21,"T86.03 ")
 ;;269
 ;;21,"T86.09 ")
 ;;270
 ;;21,"T86.10 ")
 ;;271
 ;;21,"T86.11 ")
 ;;272
 ;;21,"T86.12 ")
 ;;273
 ;;21,"T86.13 ")
 ;;274
 ;;21,"T86.19 ")
 ;;275
 ;;21,"T86.20 ")
 ;;276
 ;;21,"T86.21 ")
 ;;277
 ;;21,"T86.22 ")
 ;;278
 ;;21,"T86.23 ")
 ;;279
 ;;21,"T86.290 ")
 ;;280
 ;;21,"T86.298 ")
 ;;281
 ;;21,"T86.30 ")
 ;;282
 ;;21,"T86.31 ")
 ;;283
 ;;21,"T86.32 ")
 ;;284
 ;;21,"T86.33 ")
 ;;285
 ;;21,"T86.39 ")
 ;;286
 ;;21,"T86.40 ")
 ;;287
 ;;21,"T86.41 ")
 ;;288
 ;;21,"T86.42 ")
 ;;289
 ;;21,"T86.43 ")
 ;;290
 ;;21,"T86.49 ")
 ;;291
 ;;21,"T86.5 ")
 ;;292
 ;;21,"T86.810 ")
 ;;293
 ;;21,"T86.811 ")
 ;;294
 ;;21,"T86.812 ")
 ;;295
 ;;21,"T86.818 ")
 ;;296
 ;;21,"T86.819 ")
 ;;297
 ;;21,"T86.830 ")
 ;;298
 ;;21,"T86.831 ")
 ;;299
 ;;21,"T86.832 ")
 ;;300
 ;;21,"T86.838 ")
 ;;301
 ;;21,"T86.839 ")
 ;;302
 ;;21,"T86.850 ")
 ;;303
 ;;21,"T86.851 ")
 ;;304
 ;;21,"T86.852 ")
 ;;305
 ;;21,"T86.858 ")
 ;;306
 ;;21,"T86.859 ")
 ;;307
 ;;21,"T86.890 ")
 ;;308
 ;;21,"T86.891 ")
 ;;309
 ;;21,"T86.892 ")
 ;;310
 ;;21,"T86.898 ")
 ;;311
 ;;21,"T86.899 ")
 ;;312
 ;;21,"V08. ")
 ;;313
 ;;21,"V42.0 ")
 ;;314
 ;;21,"V58.1 ")
 ;;315
 ;;21,"V67.2 ")
 ;;316
 ;;21,"Z08. ")
 ;;317
 ;;21,"Z21. ")
 ;;318
 ;;21,"Z48.21 ")
 ;;319
 ;;21,"Z48.22 ")
 ;;320
 ;;21,"Z48.23 ")
 ;;321
 ;;21,"Z48.24 ")
 ;;322
 ;;21,"Z48.280 ")
 ;;323
 ;;21,"Z48.288 ")
 ;;324
 ;;21,"Z48.290 ")
 ;;325
 ;;21,"Z48.298 ")
 ;;326
 ;;21,"Z51.11 ")
 ;;327
 ;;21,"Z51.12 ")
 ;;328
 ;;21,"Z94.0 ")
 ;;329
 ;;21,"Z94.1 ")
 ;;330
 ;;21,"Z94.2 ")
 ;;331
 ;;21,"Z94.3 ")
 ;;332
 ;;21,"Z94.4 ")
 ;;333
 ;;21,"Z94.6 ")
 ;;334
 ;;21,"Z94.81 ")
 ;;335
 ;;21,"Z94.82 ")
 ;;336
 ;;21,"Z94.83 ")
 ;;337
 ;;21,"Z94.84 ")
 ;;338
 ;;21,"Z95.3 ")
 ;;339
 ;;21,"Z95.4 ")
 ;;340
 ;;9002226,1124,.01)
 ;;BGP HIGH RISK PNEUMO DXS
 ;;9002226,1124,.02)
 ;;@
 ;;9002226,1124,.04)
 ;;n
 ;;9002226,1124,.06)
 ;;@
 ;;9002226,1124,.08)
 ;;0
 ;;9002226,1124,.09)
 ;;3130515
 ;;9002226,1124,.11)
 ;;@
 ;;9002226,1124,.12)
 ;;31
 ;;9002226,1124,.13)
 ;;1
 ;;9002226,1124,.14)
 ;;@
 ;;9002226,1124,.15)
 ;;80
 ;;9002226,1124,.16)
 ;;@
 ;;9002226,1124,.17)
 ;;@
 ;;9002226,1124,3101)
 ;;@
 ;;9002226.02101,"1124,042. ",.01)
 ;;042. 
 ;;9002226.02101,"1124,042. ",.02)
 ;;043.9 
 ;;9002226.02101,"1124,042. ",.03)
 ;;1
 ;;9002226.02101,"1124,044.9 ",.01)
 ;;044.9 
 ;;9002226.02101,"1124,044.9 ",.02)
 ;;044.9 
 ;;9002226.02101,"1124,044.9 ",.03)
 ;;1
 ;;9002226.02101,"1124,079.53 ",.01)
 ;;079.53 
 ;;9002226.02101,"1124,079.53 ",.02)
 ;;079.53 
 ;;9002226.02101,"1124,079.53 ",.03)
 ;;1
 ;;9002226.02101,"1124,250.00 ",.01)
 ;;250.00 
 ;;9002226.02101,"1124,250.00 ",.02)
 ;;250.93 
 ;;9002226.02101,"1124,250.00 ",.03)
 ;;1
 ;;9002226.02101,"1124,303.90 ",.01)
 ;;303.90 
 ;;9002226.02101,"1124,303.90 ",.02)
 ;;303.91 
 ;;9002226.02101,"1124,303.90 ",.03)
 ;;1
 ;;9002226.02101,"1124,428.0 ",.01)
 ;;428.0 
 ;;9002226.02101,"1124,428.0 ",.02)
 ;;428.9 
 ;;9002226.02101,"1124,428.0 ",.03)
 ;;1
 ;;9002226.02101,"1124,429.2 ",.01)
 ;;429.2 
 ;;9002226.02101,"1124,429.2 ",.02)
 ;;429.2 
 ;;9002226.02101,"1124,429.2 ",.03)
 ;;1
 ;;9002226.02101,"1124,492.0 ",.01)
 ;;492.0 
 ;;9002226.02101,"1124,492.0 ",.02)
 ;;493.91 
 ;;9002226.02101,"1124,492.0 ",.03)
 ;;1
 ;;9002226.02101,"1124,494. ",.01)
 ;;494. 
 ;;9002226.02101,"1124,494. ",.02)
 ;;496. 
 ;;9002226.02101,"1124,494. ",.03)
 ;;1
 ;;9002226.02101,"1124,501. ",.01)
 ;;501. 
 ;;9002226.02101,"1124,501. ",.02)
 ;;505. 
 ;;9002226.02101,"1124,501. ",.03)
 ;;1
 ;;9002226.02101,"1124,571.0 ",.01)
 ;;571.0 
 ;;9002226.02101,"1124,571.0 ",.02)
 ;;571.9 
 ;;9002226.02101,"1124,571.0 ",.03)
 ;;1
 ;;9002226.02101,"1124,581.0 ",.01)
 ;;581.0 
 ;;9002226.02101,"1124,581.0 ",.02)
 ;;581.9 
 ;;9002226.02101,"1124,581.0 ",.03)
 ;;1
 ;;9002226.02101,"1124,585.60 ",.01)
 ;;585.60 
 ;;9002226.02101,"1124,585.60 ",.02)
 ;;585.90 
 ;;9002226.02101,"1124,585.60 ",.03)
 ;;1
 ;;9002226.02101,"1124,865.00 ",.01)
 ;;865.00 
 ;;9002226.02101,"1124,865.00 ",.02)
 ;;865.19 
 ;;9002226.02101,"1124,865.00 ",.03)
 ;;1
 ;;9002226.02101,"1124,996.80 ",.01)
 ;;996.80 
 ;;9002226.02101,"1124,996.80 ",.02)
 ;;996.89 
 ;;9002226.02101,"1124,996.80 ",.03)
 ;;1
 ;;9002226.02101,"1124,B20. ",.01)
 ;;B20.
 ;;9002226.02101,"1124,B20. ",.02)
 ;;B20.
 ;;9002226.02101,"1124,B20. ",.03)
 ;;30
 ;;9002226.02101,"1124,B52.0 ",.01)
 ;;B52.0
 ;;9002226.02101,"1124,B52.0 ",.02)
 ;;B52.0
 ;;9002226.02101,"1124,B52.0 ",.03)
 ;;30
 ;;9002226.02101,"1124,B97.35 ",.01)
 ;;B97.35
 ;;9002226.02101,"1124,B97.35 ",.02)
 ;;B97.35
 ;;9002226.02101,"1124,B97.35 ",.03)
 ;;30
 ;;9002226.02101,"1124,E08.21 ",.01)
 ;;E08.21
 ;;9002226.02101,"1124,E08.21 ",.02)
 ;;E08.21
 ;;9002226.02101,"1124,E08.21 ",.03)
 ;;30
 ;;9002226.02101,"1124,E08.22 ",.01)
 ;;E08.22
 ;;9002226.02101,"1124,E08.22 ",.02)
 ;;E08.22
 ;;9002226.02101,"1124,E08.22 ",.03)
 ;;30
 ;;9002226.02101,"1124,E08.29 ",.01)
 ;;E08.29
 ;;9002226.02101,"1124,E08.29 ",.02)
 ;;E08.29
 ;;9002226.02101,"1124,E08.29 ",.03)
 ;;30
 ;;9002226.02101,"1124,E09.21 ",.01)
 ;;E09.21
 ;;9002226.02101,"1124,E09.21 ",.02)
 ;;E09.21
 ;;9002226.02101,"1124,E09.21 ",.03)
 ;;30
 ;;9002226.02101,"1124,E09.22 ",.01)
 ;;E09.22
 ;;9002226.02101,"1124,E09.22 ",.02)
 ;;E09.22
 ;;9002226.02101,"1124,E09.22 ",.03)
 ;;30
 ;;9002226.02101,"1124,E09.29 ",.01)
 ;;E09.29
 ;;9002226.02101,"1124,E09.29 ",.02)
 ;;E09.29
 ;;9002226.02101,"1124,E09.29 ",.03)
 ;;30
 ;;9002226.02101,"1124,E10.10 ",.01)
 ;;E10.10
 ;;9002226.02101,"1124,E10.10 ",.02)
 ;;E10.10
 ;;9002226.02101,"1124,E10.10 ",.03)
 ;;30
 ;;9002226.02101,"1124,E10.11 ",.01)
 ;;E10.11
 ;
OTHER ; OTHER ROUTINES
 D ^ATXD2O2
 D ^ATXD2O3
 D ^ATXD2O4
 D ^ATXD2O5
 Q
