BGP71V ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;;BGP PQA CCB NDC
 ;
 ; This routine loads Taxonomy BGP PQA CCB NDC
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
 ;;21,"00025-1851-31 ")
 ;;1
 ;;21,"00025-1861-31 ")
 ;;2
 ;;21,"00025-1891-31 ")
 ;;3
 ;;21,"00025-1891-34 ")
 ;;4
 ;;21,"00025-1891-51 ")
 ;;5
 ;;21,"00025-1901-31 ")
 ;;6
 ;;21,"00025-1911-31 ")
 ;;7
 ;;21,"00025-2011-31 ")
 ;;8
 ;;21,"00025-2021-31 ")
 ;;9
 ;;21,"00054-0100-22 ")
 ;;10
 ;;21,"00054-0100-31 ")
 ;;11
 ;;21,"00054-0101-20 ")
 ;;12
 ;;21,"00054-0101-22 ")
 ;;13
 ;;21,"00054-0101-28 ")
 ;;14
 ;;21,"00054-0101-31 ")
 ;;15
 ;;21,"00054-0102-20 ")
 ;;16
 ;;21,"00054-0102-22 ")
 ;;17
 ;;21,"00054-0102-28 ")
 ;;18
 ;;21,"00054-0102-31 ")
 ;;19
 ;;21,"00069-1520-68 ")
 ;;20
 ;;21,"00069-1530-41 ")
 ;;21
 ;;21,"00069-1530-68 ")
 ;;22
 ;;21,"00069-1530-72 ")
 ;;23
 ;;21,"00069-1540-41 ")
 ;;24
 ;;21,"00069-1540-68 ")
 ;;25
 ;;21,"00069-2150-30 ")
 ;;26
 ;;21,"00069-2160-30 ")
 ;;27
 ;;21,"00069-2170-30 ")
 ;;28
 ;;21,"00069-2180-30 ")
 ;;29
 ;;21,"00069-2190-30 ")
 ;;30
 ;;21,"00069-2250-30 ")
 ;;31
 ;;21,"00069-2260-30 ")
 ;;32
 ;;21,"00069-2270-30 ")
 ;;33
 ;;21,"00069-2650-41 ")
 ;;34
 ;;21,"00069-2650-66 ")
 ;;35
 ;;21,"00069-2650-72 ")
 ;;36
 ;;21,"00069-2660-41 ")
 ;;37
 ;;21,"00069-2660-66 ")
 ;;38
 ;;21,"00069-2660-72 ")
 ;;39
 ;;21,"00069-2670-66 ")
 ;;40
 ;;21,"00069-2960-30 ")
 ;;41
 ;;21,"00069-2970-30 ")
 ;;42
 ;;21,"00069-2980-30 ")
 ;;43
 ;;21,"00074-3045-30 ")
 ;;44
 ;;21,"00074-3045-90 ")
 ;;45
 ;;21,"00074-3061-30 ")
 ;;46
 ;;21,"00074-3061-90 ")
 ;;47
 ;;21,"00074-3062-30 ")
 ;;48
 ;;21,"00074-3062-90 ")
 ;;49
 ;;21,"00074-3063-30 ")
 ;;50
 ;;21,"00074-3063-90 ")
 ;;51
 ;;21,"00074-3064-30 ")
 ;;52
 ;;21,"00074-3064-90 ")
 ;;53
 ;;21,"00074-3069-30 ")
 ;;54
 ;;21,"00074-3069-90 ")
 ;;55
 ;;21,"00074-3287-13 ")
 ;;56
 ;;21,"00074-3288-13 ")
 ;;57
 ;;21,"00074-3289-13 ")
 ;;58
 ;;21,"00074-3290-13 ")
 ;;59
 ;;21,"00078-0364-05 ")
 ;;60
 ;;21,"00078-0379-05 ")
 ;;61
 ;;21,"00078-0384-05 ")
 ;;62
 ;;21,"00078-0404-05 ")
 ;;63
 ;;21,"00078-0405-05 ")
 ;;64
 ;;21,"00078-0406-05 ")
 ;;65
 ;;21,"00078-0488-15 ")
 ;;66
 ;;21,"00078-0489-15 ")
 ;;67
 ;;21,"00078-0490-15 ")
 ;;68
 ;;21,"00078-0491-15 ")
 ;;69
 ;;21,"00078-0559-15 ")
 ;;70
 ;;21,"00078-0559-30 ")
 ;;71
 ;;21,"00078-0560-15 ")
 ;;72
 ;;21,"00078-0560-30 ")
 ;;73
 ;;21,"00078-0561-15 ")
 ;;74
 ;;21,"00078-0561-30 ")
 ;;75
 ;;21,"00078-0562-15 ")
 ;;76
 ;;21,"00078-0562-30 ")
 ;;77
 ;;21,"00078-0563-15 ")
 ;;78
 ;;21,"00078-0563-30 ")
 ;;79
 ;;21,"00078-0603-15 ")
 ;;80
 ;;21,"00078-0604-15 ")
 ;;81
 ;;21,"00078-0605-15 ")
 ;;82
 ;;21,"00078-0606-15 ")
 ;;83
 ;;21,"00078-0610-15 ")
 ;;84
 ;;21,"00078-0611-15 ")
 ;;85
 ;;21,"00078-0612-15 ")
 ;;86
 ;;21,"00078-0613-15 ")
 ;;87
 ;;21,"00078-0614-15 ")
 ;;88
 ;;21,"00091-2489-23 ")
 ;;89
 ;;21,"00091-2490-23 ")
 ;;90
 ;;21,"00091-2491-23 ")
 ;;91
 ;;21,"00091-2495-23 ")
 ;;92
 ;;21,"00091-4085-01 ")
 ;;93
 ;;21,"00091-4086-01 ")
 ;;94
 ;;21,"00091-4087-01 ")
 ;;95
 ;;21,"00093-0083-98 ")
 ;;96
 ;;21,"00093-0318-01 ")
 ;;97
 ;;21,"00093-0318-05 ")
 ;;98
 ;;21,"00093-0319-01 ")
 ;;99
 ;;21,"00093-0319-05 ")
 ;;100
 ;;21,"00093-0320-01 ")
 ;;101
 ;;21,"00093-0321-01 ")
 ;;102
 ;;21,"00093-0819-01 ")
 ;;103
 ;;21,"00093-0819-55 ")
 ;;104
 ;;21,"00093-1023-01 ")
 ;;105
 ;;21,"00093-2057-01 ")
 ;;106
 ;;21,"00093-2057-55 ")
 ;;107
 ;;21,"00093-2058-01 ")
 ;;108
 ;;21,"00093-2058-55 ")
 ;;109
 ;;21,"00093-2059-01 ")
 ;;110
 ;;21,"00093-3043-01 ")
 ;;111
 ;;21,"00093-3044-01 ")
 ;;112
 ;;21,"00093-3044-05 ")
 ;;113
 ;;21,"00093-3045-01 ")
 ;;114
 ;;21,"00093-3045-05 ")
 ;;115
 ;;21,"00093-5112-98 ")
 ;;116
 ;;21,"00093-5117-98 ")
 ;;117
 ;;21,"00093-5118-98 ")
 ;;118
 ;;21,"00093-5119-98 ")
 ;;119
 ;;21,"00093-5173-01 ")
 ;;120
 ;;21,"00093-5173-55 ")
 ;;121
 ;;21,"00093-7037-56 ")
 ;;122
 ;;21,"00093-7037-98 ")
 ;;123
 ;;21,"00093-7038-56 ")
 ;;124
 ;;21,"00093-7038-98 ")
 ;;125
 ;;21,"00093-7167-55 ")
 ;;126
 ;;21,"00093-7167-98 ")
 ;;127
 ;;21,"00093-7168-98 ")
 ;;128
 ;;21,"00093-7370-01 ")
 ;;129
 ;;21,"00093-7371-01 ")
 ;;130
 ;;21,"00093-7371-10 ")
 ;;131
 ;;21,"00093-7372-01 ")
 ;;132
 ;;21,"00093-7372-10 ")
 ;;133
 ;;21,"00093-7373-01 ")
 ;;134
 ;;21,"00093-7373-10 ")
 ;;135
 ;;21,"00093-7670-01 ")
 ;;136
 ;;21,"00093-7671-01 ")
 ;;137
 ;;21,"00093-7690-56 ")
 ;;138
 ;;21,"00093-7690-98 ")
 ;;139
 ;;21,"00093-7691-56 ")
 ;;140
 ;;21,"00093-7691-98 ")
 ;;141
 ;;21,"00093-7692-56 ")
 ;;142
 ;;21,"00093-7692-98 ")
 ;;143
 ;;21,"00093-7693-56 ")
 ;;144
 ;;21,"00093-7693-98 ")
 ;;145
 ;;21,"00093-7807-56 ")
 ;;146
 ;;21,"00093-7807-98 ")
 ;;147
 ;;21,"00093-7809-56 ")
 ;;148
 ;;21,"00093-7809-98 ")
 ;;149
 ;;21,"00093-7810-56 ")
 ;;150
 ;;21,"00093-7810-98 ")
 ;;151
 ;;21,"00143-9959-09 ")
 ;;152
 ;;21,"00143-9960-09 ")
 ;;153
 ;;21,"00143-9961-09 ")
 ;;154
 ;;21,"00172-4280-60 ")
 ;;155
 ;;21,"00172-4280-70 ")
 ;;156
 ;;21,"00172-4285-60 ")
 ;;157
 ;;21,"00172-4286-00 ")
 ;;158
 ;;21,"00172-4286-10 ")
 ;;159
 ;;21,"00172-4286-60 ")
 ;;160
 ;;21,"00172-4286-70 ")
 ;;161
 ;;21,"00187-0771-47 ")
 ;;162
 ;;21,"00187-0772-47 ")
 ;;163
 ;;21,"00187-0792-47 ")
 ;;164
 ;;21,"00187-0795-30 ")
 ;;165
 ;;21,"00187-0795-42 ")
 ;;166
 ;;21,"00187-0796-30 ")
 ;;167
 ;;21,"00187-0796-42 ")
 ;;168
 ;;21,"00187-0797-30 ")
 ;;169
 ;;21,"00187-0797-42 ")
 ;;170
 ;;21,"00187-0798-30 ")
 ;;171
 ;;21,"00187-0798-42 ")
 ;;172
 ;;21,"00187-0799-42 ")
 ;;173
 ;;21,"00187-2045-30 ")
 ;;174
 ;;21,"00187-2045-90 ")
 ;;175
 ;;21,"00187-2046-30 ")
 ;;176
 ;;21,"00187-2046-90 ")
 ;;177
 ;;21,"00187-2047-30 ")
 ;;178
 ;;21,"00187-2047-90 ")
 ;;179
 ;;21,"00187-2048-30 ")
 ;;180
 ;;21,"00187-2048-90 ")
 ;;181
 ;;21,"00187-2049-30 ")
 ;;182
 ;;21,"00187-2049-90 ")
 ;;183
 ;;21,"00187-2050-30 ")
 ;;184
 ;;21,"00187-2050-90 ")
 ;;185
 ;;21,"00187-2612-30 ")
 ;;186
 ;;21,"00187-2612-90 ")
 ;;187
 ;;21,"00187-2613-30 ")
 ;;188
 ;;21,"00187-2613-90 ")
 ;;189
 ;;21,"00187-2614-30 ")
 ;;190
 ;;21,"00187-2614-90 ")
 ;;191
 ;;21,"00187-2615-30 ")
 ;;192
 ;;21,"00187-2615-90 ")
 ;;193
 ;;21,"00187-2616-30 ")
 ;;194
 ;;21,"00187-2616-90 ")
 ;;195
 ;;21,"00187-2617-30 ")
 ;;196
 ;;21,"00187-2617-90 ")
 ;;197
 ;;21,"00228-1112-03 ")
 ;;198
 ;;21,"00228-1112-09 ")
 ;;199
 ;;21,"00228-1113-03 ")
 ;;200
 ;;21,"00228-1113-09 ")
 ;;201
 ;;21,"00228-1114-03 ")
 ;;202
 ;;21,"00228-1114-09 ")
 ;;203
 ;;21,"00228-1115-03 ")
 ;;204
 ;;21,"00228-1115-09 ")
 ;;205
 ;;21,"00228-1116-03 ")
 ;;206
 ;;21,"00228-1116-09 ")
 ;;207
 ;;21,"00228-1117-03 ")
 ;;208
 ;;21,"00228-1117-09 ")
 ;;209
 ;;21,"00228-2577-03 ")
 ;;210
 ;;21,"00228-2577-09 ")
 ;;211
 ;;21,"00228-2577-50 ")
 ;;212
 ;;21,"00228-2578-03 ")
 ;;213
 ;;21,"00228-2578-09 ")
 ;;214
 ;;21,"00228-2578-50 ")
 ;;215
 ;;21,"00228-2579-03 ")
 ;;216
 ;;21,"00228-2579-09 ")
 ;;217
 ;;21,"00228-2579-50 ")
 ;;218
 ;;21,"00228-2588-03 ")
 ;;219
 ;;21,"00228-2588-09 ")
 ;;220
 ;;21,"00228-2588-50 ")
 ;;221
 ;;21,"00228-2918-03 ")
 ;;222
 ;;21,"00228-2918-09 ")
 ;;223
 ;;21,"00258-3687-90 ")
 ;;224
 ;;21,"00258-3688-90 ")
 ;;225
 ;;21,"00258-3689-90 ")
 ;;226
 ;;21,"00258-3690-90 ")
 ;;227
 ;;21,"00258-3691-90 ")
 ;;228
 ;;21,"00258-3692-90 ")
 ;;229
 ;;21,"00378-0023-01 ")
 ;;230
 ;;21,"00378-0023-05 ")
 ;;231
 ;;21,"00378-0045-01 ")
 ;;232
 ;;21,"00378-0045-05 ")
 ;;233
 ;;21,"00378-0135-01 ")
 ;;234
 ;;21,"00378-0135-05 ")
 ;;235
 ;;21,"00378-0353-01 ")
 ;;236
 ;;21,"00378-0353-10 ")
 ;;237
 ;;21,"00378-0360-01 ")
 ;;238
 ;;21,"00378-0360-10 ")
 ;;239
 ;;21,"00378-0390-01 ")
 ;;240
 ;;21,"00378-0480-01 ")
 ;;241
 ;;21,"00378-0480-30 ")
 ;;242
 ;;21,"00378-0481-01 ")
 ;;243
 ;;21,"00378-0481-30 ")
 ;;244
 ;;21,"00378-0494-01 ")
 ;;245
 ;;21,"00378-0512-01 ")
 ;;246
 ;;21,"00378-0525-01 ")
 ;;247
 ;;21,"00378-0772-01 ")
 ;;248
 ;;21,"00378-0772-05 ")
 ;;249
 ;;21,"00378-1020-05 ")
 ;;250
 ;;21,"00378-1020-77 ")
 ;;251
 ;;21,"00378-1075-93 ")
 ;;252
 ;;21,"00378-1076-93 ")
 ;;253
 ;;21,"00378-1077-93 ")
 ;;254
 ;;21,"00378-1078-93 ")
 ;;255
 ;;21,"00378-1411-01 ")
 ;;256
 ;;21,"00378-1411-05 ")
 ;;257
 ;;21,"00378-1411-77 ")
 ;;258
 ;;21,"00378-1430-05 ")
 ;;259
 ;;21,"00378-1430-77 ")
 ;;260
 ;;21,"00378-1721-93 ")
 ;;261
 ;;21,"00378-1722-93 ")
 ;;262
 ;;21,"00378-1723-93 ")
 ;;263
 ;;21,"00378-1724-93 ")
 ;;264
 ;;21,"00378-2096-01 ")
 ;;265
 ;;21,"00378-2097-01 ")
 ;;266
 ;;21,"00378-2098-01 ")
 ;;267
 ;;21,"00378-2099-01 ")
 ;;268
 ;;21,"00378-2120-01 ")
 ;;269
 ;;21,"00378-2120-93 ")
 ;;270
 ;;21,"00378-2180-01 ")
 ;;271
 ;;21,"00378-2180-05 ")
 ;;272
 ;;21,"00378-2222-01 ")
 ;;273
 ;;21,"00378-2223-01 ")
 ;;274
 ;;21,"00378-2224-01 ")
 ;;275
 ;;21,"00378-3475-01 ")
 ;;276
 ;;21,"00378-3475-30 ")
 ;;277
 ;;21,"00378-3482-01 ")
 ;;278
 ;;21,"00378-3482-30 ")
 ;;279
 ;;21,"00378-3495-01 ")
 ;;280
 ;;21,"00378-4510-93 ")
 ;;281
 ;;21,"00378-4511-93 ")
 ;;282
 ;;21,"00378-4512-93 ")
 ;;283
 ;;21,"00378-4513-05 ")
 ;;284
 ;;21,"00378-4513-93 ")
 ;;285
 ;;21,"00378-4514-05 ")
 ;;286
 ;;21,"00378-4514-93 ")
 ;;287
 ;;21,"00378-4515-05 ")
 ;;288
 ;;21,"00378-4515-93 ")
 ;;289
 ;;21,"00378-4516-93 ")
 ;;290
 ;;21,"00378-4517-05 ")
 ;;291
 ;;21,"00378-4517-93 ")
 ;;292
 ;;21,"00378-4518-05 ")
 ;;293
 ;;21,"00378-4518-93 ")
 ;;294
 ;;21,"00378-4519-05 ")
 ;;295
 ;;21,"00378-4519-93 ")
 ;;296
 ;;21,"00378-4520-93 ")
 ;;297
 ;;21,"00378-5011-01 ")
 ;;298
 ;;21,"00378-5011-05 ")
 ;;299
 ;;21,"00378-5012-01 ")
 ;;300
 ;;21,"00378-5012-05 ")
 ;;301
 ;;21,"00378-5013-01 ")
 ;;302
 ;;21,"00378-5013-05 ")
 ;;303
 ;;21,"00378-5208-05 ")
 ;;304
 ;;21,"00378-5208-77 ")
 ;;305
 ;;21,"00378-5209-05 ")
 ;;306
 ;;21,"00378-5209-77 ")
 ;;307
 ;;21,"00378-5210-05 ")
 ;;308
 ;;21,"00378-5210-77 ")
 ;;309
 ;;21,"00378-5220-01 ")
 ;;310
 ;;21,"00378-5220-05 ")
 ;;311
 ;;21,"00378-5280-01 ")
 ;;312
 ;;21,"00378-5280-05 ")
 ;;313
 ;;21,"00378-5340-01 ")
 ;;314
 ;;21,"00378-5340-05 ")
 ;;315
 ;;21,"00378-6060-01 ")
 ;;316
 ;;21,"00378-6090-01 ")
 ;;317
 ;;21,"00378-6120-01 ")
 ;;318
 ;;21,"00378-6161-77 ")
 ;;319
 ;;21,"00378-6161-93 ")
 ;;320
 ;;21,"00378-6162-77 ")
 ;;321
 ;;21,"00378-6162-93 ")
 ;;322
 ;;21,"00378-6163-77 ")
 ;;323
 ;;21,"00378-6163-93 ")
 ;;324
 ;;21,"00378-6164-05 ")
 ;;325
 ;;21,"00378-6164-77 ")
 ;;326
 ;;21,"00378-6164-93 ")
 ;;327
 ;;21,"00378-6165-05 ")
 ;;328
 ;;21,"00378-6165-77 ")
 ;;329
 ;;21,"00378-6165-93 ")
 ;;330
 ;;21,"00378-6166-05 ")
 ;;331
 ;;21,"00378-6166-77 ")
 ;;332
 ;;21,"00378-6166-93 ")
 ;;333
 ;;21,"00378-6167-77 ")
 ;;334
 ;;21,"00378-6167-93 ")
 ;;335
 ;;21,"00378-6168-05 ")
 ;;336
 ;;21,"00378-6168-77 ")
 ;;337
 ;;21,"00378-6168-93 ")
 ;;338
 ;;21,"00378-6169-05 ")
 ;;339
 ;;21,"00378-6169-77 ")
 ;;340
 ;
OTHER ; OTHER ROUTINES
 D ^BGP71V10
 D ^BGP71V11
 D ^BGP71V12
 D ^BGP71V13
 D ^BGP71V14
 D ^BGP71V15
 D ^BGP71V16
 D ^BGP71V17
 D ^BGP71V18
 D ^BGP71V19
 D ^BGP71V2
 D ^BGP71V20
 D ^BGP71V21
 D ^BGP71V22
 D ^BGP71V23
 D ^BGP71V24
 D ^BGP71V25
 D ^BGP71V26
 D ^BGP71V27
 D ^BGP71V28
 D ^BGP71V29
 D ^BGP71V3
 D ^BGP71V30
 D ^BGP71V31
 D ^BGP71V4
 D ^BGP71V5
 D ^BGP71V6
 D ^BGP71V7
 D ^BGP71V8
 D ^BGP71V9
 Q
