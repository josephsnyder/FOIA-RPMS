BGP53I14 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58016-1005-01 ")
 ;;5041
 ;;21,"58016-1006-01 ")
 ;;5042
 ;;21,"58016-1007-01 ")
 ;;5043
 ;;21,"58016-1011-01 ")
 ;;5044
 ;;21,"58016-1019-01 ")
 ;;5045
 ;;21,"58016-1021-01 ")
 ;;5046
 ;;21,"58016-1023-01 ")
 ;;5047
 ;;21,"58016-1024-01 ")
 ;;5048
 ;;21,"58016-1025-01 ")
 ;;5049
 ;;21,"58016-1026-01 ")
 ;;5050
 ;;21,"58016-1027-01 ")
 ;;5051
 ;;21,"58016-1028-01 ")
 ;;5052
 ;;21,"58016-1029-01 ")
 ;;5053
 ;;21,"58016-1033-01 ")
 ;;5054
 ;;21,"58016-1034-01 ")
 ;;5055
 ;;21,"58016-1035-01 ")
 ;;5056
 ;;21,"58016-1036-01 ")
 ;;5057
 ;;21,"58016-1037-01 ")
 ;;5058
 ;;21,"58016-1038-01 ")
 ;;5059
 ;;21,"58016-1039-01 ")
 ;;5060
 ;;21,"58016-1045-01 ")
 ;;5061
 ;;21,"58016-1046-01 ")
 ;;5062
 ;;21,"58016-4147-01 ")
 ;;5063
 ;;21,"58016-4148-01 ")
 ;;5064
 ;;21,"58016-4192-01 ")
 ;;5065
 ;;21,"58016-4786-01 ")
 ;;5066
 ;;21,"58016-4790-01 ")
 ;;5067
 ;;21,"58016-4804-01 ")
 ;;5068
 ;;21,"58016-4807-01 ")
 ;;5069
 ;;21,"58016-4814-01 ")
 ;;5070
 ;;21,"58016-4834-01 ")
 ;;5071
 ;;21,"58016-4842-01 ")
 ;;5072
 ;;21,"58016-4847-01 ")
 ;;5073
 ;;21,"58016-4869-01 ")
 ;;5074
 ;;21,"58016-4873-01 ")
 ;;5075
 ;;21,"58016-4990-01 ")
 ;;5076
 ;;21,"58016-9438-01 ")
 ;;5077
 ;;21,"58016-9551-01 ")
 ;;5078
 ;;21,"58864-0029-30 ")
 ;;5079
 ;;21,"58864-0029-40 ")
 ;;5080
 ;;21,"58864-0034-10 ")
 ;;5081
 ;;21,"58864-0034-14 ")
 ;;5082
 ;;21,"58864-0067-20 ")
 ;;5083
 ;;21,"58864-0072-30 ")
 ;;5084
 ;;21,"58864-0072-40 ")
 ;;5085
 ;;21,"58864-0073-20 ")
 ;;5086
 ;;21,"58864-0073-28 ")
 ;;5087
 ;;21,"58864-0073-30 ")
 ;;5088
 ;;21,"58864-0073-40 ")
 ;;5089
 ;;21,"58864-0073-56 ")
 ;;5090
 ;;21,"58864-0149-40 ")
 ;;5091
 ;;21,"58864-0150-30 ")
 ;;5092
 ;;21,"58864-0189-10 ")
 ;;5093
 ;;21,"58864-0189-20 ")
 ;;5094
 ;;21,"58864-0189-28 ")
 ;;5095
 ;;21,"58864-0190-12 ")
 ;;5096
 ;;21,"58864-0190-20 ")
 ;;5097
 ;;21,"58864-0190-28 ")
 ;;5098
 ;;21,"58864-0190-30 ")
 ;;5099
 ;;21,"58864-0195-40 ")
 ;;5100
 ;;21,"58864-0379-40 ")
 ;;5101
 ;;21,"58864-0478-06 ")
 ;;5102
 ;;21,"58864-0478-10 ")
 ;;5103
 ;;21,"58864-0478-14 ")
 ;;5104
 ;;21,"58864-0478-20 ")
 ;;5105
 ;;21,"58864-0478-30 ")
 ;;5106
 ;;21,"58864-0607-40 ")
 ;;5107
 ;;21,"58864-0607-60 ")
 ;;5108
 ;;21,"58864-0612-28 ")
 ;;5109
 ;;21,"58864-0615-30 ")
 ;;5110
 ;;21,"58864-0621-05 ")
 ;;5111
 ;;21,"58864-0621-10 ")
 ;;5112
 ;;21,"58864-0621-30 ")
 ;;5113
 ;;21,"58864-0632-40 ")
 ;;5114
 ;;21,"58864-0637-14 ")
 ;;5115
 ;;21,"58864-0637-20 ")
 ;;5116
 ;;21,"58864-0637-30 ")
 ;;5117
 ;;21,"58864-0655-04 ")
 ;;5118
 ;;21,"58864-0655-06 ")
 ;;5119
 ;;21,"58864-0655-14 ")
 ;;5120
 ;;21,"58864-0655-30 ")
 ;;5121
 ;;21,"58864-0675-30 ")
 ;;5122
 ;;21,"58864-0675-40 ")
 ;;5123
 ;;21,"58864-0690-20 ")
 ;;5124
 ;;21,"58864-0767-20 ")
 ;;5125
 ;;21,"58864-0767-21 ")
 ;;5126
 ;;21,"58864-0767-30 ")
 ;;5127
 ;;21,"58864-0775-20 ")
 ;;5128
 ;;21,"58864-0791-06 ")
 ;;5129
 ;;21,"58864-0806-06 ")
 ;;5130
 ;;21,"58864-0806-14 ")
 ;;5131
 ;;21,"58864-0806-20 ")
 ;;5132
 ;;21,"58864-0833-10 ")
 ;;5133
 ;;21,"58864-0833-20 ")
 ;;5134
 ;;21,"58864-0837-20 ")
 ;;5135
 ;;21,"58864-0845-30 ")
 ;;5136
 ;;21,"58864-0845-40 ")
 ;;5137
 ;;21,"58864-0848-30 ")
 ;;5138
 ;;21,"59366-7338-01 ")
 ;;5139
 ;;21,"59366-7339-01 ")
 ;;5140
 ;;21,"59366-7340-05 ")
 ;;5141
 ;;21,"59630-0112-10 ")
 ;;5142
 ;;21,"59630-0113-05 ")
 ;;5143
 ;;21,"59630-0113-10 ")
 ;;5144
 ;;21,"59630-0115-05 ")
 ;;5145
 ;;21,"59630-0142-03 ")
 ;;5146
 ;;21,"59630-0821-12 ")
 ;;5147
 ;;21,"59630-0821-60 ")
 ;;5148
 ;;21,"59630-0821-90 ")
 ;;5149
 ;;21,"59762-0016-01 ")
 ;;5150
 ;;21,"59762-0278-02 ")
 ;;5151
 ;;21,"59762-0279-02 ")
 ;;5152
 ;;21,"59762-0280-03 ")
 ;;5153
 ;;21,"59762-1020-01 ")
 ;;5154
 ;;21,"59762-1020-03 ")
 ;;5155
 ;;21,"59762-1021-01 ")
 ;;5156
 ;;21,"59762-1021-07 ")
 ;;5157
 ;;21,"59762-1022-02 ")
 ;;5158
 ;;21,"59762-1022-04 ")
 ;;5159
 ;;21,"59762-1022-07 ")
 ;;5160
 ;;21,"59762-1023-04 ")
 ;;5161
 ;;21,"59762-1023-05 ")
 ;;5162
 ;;21,"59762-1023-06 ")
 ;;5163
 ;;21,"59762-1050-02 ")
 ;;5164
 ;;21,"59762-1050-05 ")
 ;;5165
 ;;21,"59762-1081-01 ")
 ;;5166
 ;;21,"59762-1081-02 ")
 ;;5167
 ;;21,"59762-1083-01 ")
 ;;5168
 ;;21,"59762-1083-02 ")
 ;;5169
 ;;21,"59762-1534-01 ")
 ;;5170
 ;;21,"59762-1534-02 ")
 ;;5171
 ;;21,"59762-1537-01 ")
 ;;5172
 ;;21,"59762-1537-02 ")
 ;;5173
 ;;21,"59762-1537-03 ")
 ;;5174
 ;;21,"59762-2000-01 ")
 ;;5175
 ;;21,"59762-2000-04 ")
 ;;5176
 ;;21,"59762-2180-01 ")
 ;;5177
 ;;21,"59762-2220-02 ")
 ;;5178
 ;;21,"59762-2221-01 ")
 ;;5179
 ;;21,"59762-2221-02 ")
 ;;5180
 ;;21,"59762-3020-01 ")
 ;;5181
 ;;21,"59762-3020-02 ")
 ;;5182
 ;;21,"59762-3021-01 ")
 ;;5183
 ;;21,"59762-3021-02 ")
 ;;5184
 ;;21,"59762-3051-01 ")
 ;;5185
 ;;21,"59762-3051-02 ")
 ;;5186
 ;;21,"59762-3060-01 ")
 ;;5187
 ;;21,"59762-3060-02 ")
 ;;5188
 ;;21,"59762-3060-03 ")
 ;;5189
 ;;21,"59762-3070-01 ")
 ;;5190
 ;;21,"59762-3070-02 ")
 ;;5191
 ;;21,"59762-3080-01 ")
 ;;5192
 ;;21,"59762-3110-01 ")
 ;;5193
 ;;21,"59762-3120-01 ")
 ;;5194
 ;;21,"59762-3130-01 ")
 ;;5195
 ;;21,"59762-3140-01 ")
 ;;5196
 ;;21,"59762-3328-01 ")
 ;;5197
 ;;21,"59762-4080-01 ")
 ;;5198
 ;;21,"59762-4080-02 ")
 ;;5199
 ;;21,"59762-4080-05 ")
 ;;5200
 ;;21,"59762-4081-01 ")
 ;;5201
 ;;21,"59762-4081-02 ")
 ;;5202
 ;;21,"59762-5010-01 ")
 ;;5203
 ;;21,"59762-5010-02 ")
 ;;5204
 ;;21,"59772-0174-20 ")
 ;;5205
 ;;21,"59772-0802-02 ")
 ;;5206
 ;;21,"60346-0082-44 ")
 ;;5207
 ;;21,"60346-0364-03 ")
 ;;5208
 ;;21,"60346-0364-09 ")
 ;;5209
 ;;21,"60346-0364-15 ")
 ;;5210
 ;;21,"60346-0364-21 ")
 ;;5211
 ;;21,"60346-0364-44 ")
 ;;5212
 ;;21,"60346-0433-06 ")
 ;;5213
 ;;21,"60346-0433-10 ")
 ;;5214
 ;;21,"60346-0433-14 ")
 ;;5215
 ;;21,"60346-0433-15 ")
 ;;5216
 ;;21,"60346-0433-20 ")
 ;;5217
 ;;21,"60346-0433-44 ")
 ;;5218
 ;;21,"60346-0433-99 ")
 ;;5219
 ;;21,"60346-0649-08 ")
 ;;5220
 ;;21,"60346-0655-06 ")
 ;;5221
 ;;21,"60346-0655-10 ")
 ;;5222
 ;;21,"60346-0655-15 ")
 ;;5223
 ;;21,"60429-0021-01 ")
 ;;5224
 ;;21,"60429-0021-05 ")
 ;;5225
 ;;21,"60429-0022-01 ")
 ;;5226
 ;;21,"60429-0022-05 ")
 ;;5227
 ;;21,"60429-0023-01 ")
 ;;5228
 ;;21,"60429-0023-05 ")
 ;;5229
 ;;21,"60429-0024-01 ")
 ;;5230
 ;;21,"60429-0024-05 ")
 ;;5231
 ;;21,"60429-0036-40 ")
 ;;5232
 ;;21,"60429-0037-40 ")
 ;;5233
 ;;21,"60429-0069-92 ")
 ;;5234
 ;;21,"60429-0070-40 ")
 ;;5235
 ;;21,"60429-0147-01 ")
 ;;5236
 ;;21,"60429-0147-10 ")
 ;;5237
 ;;21,"60429-0148-01 ")
 ;;5238
 ;;21,"60429-0148-05 ")
 ;;5239
 ;;21,"60429-0742-01 ")
 ;;5240
 ;;21,"60429-0743-01 ")
 ;;5241
 ;;21,"60429-0743-05 ")
 ;;5242
 ;;21,"60429-0743-20 ")
 ;;5243
 ;;21,"60429-0744-01 ")
 ;;5244
 ;;21,"60432-0065-00 ")
 ;;5245
 ;;21,"60432-0065-47 ")
 ;;5246
 ;;21,"60432-0065-75 ")
 ;;5247
 ;;21,"60432-0070-46 ")
 ;;5248
 ;;21,"60432-0070-48 ")
 ;;5249
 ;;21,"60432-0070-75 ")
 ;;5250
 ;;21,"60505-0679-05 ")
 ;;5251
 ;;21,"60505-0679-08 ")
 ;;5252
 ;;21,"60505-0679-09 ")
 ;;5253
 ;;21,"60505-0680-02 ")
 ;;5254
 ;;21,"60505-0748-04 ")
 ;;5255
 ;;21,"60505-0748-05 ")
 ;;5256
 ;;21,"60505-0749-04 ")
 ;;5257
 ;;21,"60505-0749-05 ")
 ;;5258
 ;;21,"60505-0750-00 ")
 ;;5259
 ;;21,"60505-0750-04 ")
 ;;5260
 ;;21,"60505-0751-00 ")
 ;;5261
 ;;21,"60505-0751-04 ")
 ;;5262
 ;;21,"60505-0752-00 ")
 ;;5263
 ;;21,"60505-0752-04 ")
 ;;5264
 ;;21,"60505-0753-00 ")
 ;;5265
 ;;21,"60505-0753-04 ")
 ;;5266
 ;;21,"60505-0769-00 ")
 ;;5267
 ;;21,"60505-1308-01 ")
 ;;5268
 ;;21,"60505-1309-01 ")
 ;;5269
 ;;21,"60505-1310-01 ")
 ;;5270
 ;;21,"60505-1310-04 ")
 ;;5271
 ;;21,"60505-2532-01 ")
 ;;5272
 ;;21,"60505-2533-01 ")
 ;;5273
 ;;21,"60505-2533-05 ")
 ;;5274
 ;;21,"60505-2539-03 ")
 ;;5275
 ;;21,"60505-2540-02 ")
 ;;5276
 ;;21,"60505-2541-02 ")
 ;;5277
 ;;21,"60505-2573-02 ")
 ;;5278
 ;;21,"60505-2573-05 ")
 ;;5279
 ;;21,"60505-2573-07 ")
 ;;5280
 ;;21,"60505-2574-02 ")
 ;;5281
 ;;21,"60505-2574-05 ")
 ;;5282
 ;;21,"60505-2574-07 ")
 ;;5283
 ;;21,"60505-2581-00 ")
 ;;5284
 ;;21,"60505-2581-03 ")
 ;;5285
 ;;21,"60505-2581-05 ")
 ;;5286
 ;;21,"60505-2582-00 ")
 ;;5287
 ;;21,"60505-2582-03 ")
 ;;5288
 ;;21,"60505-2583-03 ")
 ;;5289
 ;;21,"60505-2615-06 ")
 ;;5290
 ;;21,"60505-2616-06 ")
 ;;5291
 ;;21,"60505-2681-02 ")
 ;;5292
 ;;21,"60505-2681-06 ")
 ;;5293
 ;;21,"60505-2682-02 ")
 ;;5294
 ;;21,"60505-2682-06 ")
 ;;5295
 ;;21,"60505-6076-04 ")
 ;;5296
 ;;21,"60505-6093-05 ")
 ;;5297
 ;;21,"60505-6094-00 ")
 ;;5298
 ;;21,"60505-6102-04 ")
 ;;5299
 ;;21,"60505-6103-06 ")
 ;;5300
 ;;21,"60505-6104-04 ")
 ;;5301
 ;;21,"60760-0069-20 ")
 ;;5302
 ;;21,"60760-0261-20 ")
 ;;5303
 ;;21,"60760-0337-08 ")
 ;;5304
 ;;21,"60760-0337-28 ")
 ;;5305
 ;;21,"60760-0337-60 ")
 ;;5306
 ;;21,"60760-0513-10 ")
 ;;5307
 ;;21,"60760-0562-20 ")
 ;;5308
 ;;21,"60760-0693-05 ")
 ;;5309
 ;;21,"60760-0815-10 ")
 ;;5310
 ;;21,"61392-0714-32 ")
 ;;5311
 ;;21,"61392-0714-45 ")
 ;;5312
 ;;21,"61392-0714-54 ")
 ;;5313
 ;;21,"61392-0714-91 ")
 ;;5314
 ;;21,"61392-0731-30 ")
 ;;5315
 ;;21,"61392-0731-31 ")
 ;;5316
 ;;21,"61392-0731-32 ")
 ;;5317
 ;;21,"61392-0731-39 ")
 ;;5318
 ;;21,"61392-0731-45 ")
 ;;5319
 ;;21,"61392-0731-51 ")
 ;;5320
 ;;21,"61392-0731-54 ")
 ;;5321
 ;;21,"61392-0731-60 ")
 ;;5322
 ;;21,"61392-0731-90 ")
 ;;5323
 ;;21,"61392-0731-91 ")
 ;;5324
 ;;21,"61392-0732-30 ")
 ;;5325
 ;;21,"61392-0732-31 ")
 ;;5326
 ;;21,"61392-0732-32 ")
 ;;5327
 ;;21,"61392-0732-39 ")
 ;;5328
 ;;21,"61392-0732-45 ")
 ;;5329
 ;;21,"61392-0732-51 ")
 ;;5330
 ;;21,"61392-0732-54 ")
 ;;5331
 ;;21,"61392-0732-60 ")
 ;;5332
 ;;21,"61392-0732-90 ")
 ;;5333
 ;;21,"61392-0732-91 ")
 ;;5334
 ;;21,"61392-0782-30 ")
 ;;5335
 ;;21,"61392-0782-31 ")
 ;;5336
 ;;21,"61392-0782-32 ")
 ;;5337
 ;;21,"61392-0782-39 ")
 ;;5338
 ;;21,"61392-0782-45 ")
 ;;5339
 ;;21,"61392-0782-51 ")
 ;;5340
 ;;21,"61392-0782-54 ")
 ;;5341
 ;;21,"61392-0782-60 ")
 ;;5342
 ;;21,"61392-0782-90 ")
 ;;5343
 ;;21,"61392-0782-91 ")
 ;;5344
 ;;21,"61392-0783-30 ")
 ;;5345
 ;;21,"61392-0783-31 ")
 ;;5346
 ;;21,"61392-0783-32 ")
 ;;5347
 ;;21,"61392-0783-39 ")
 ;;5348
 ;;21,"61392-0783-45 ")
 ;;5349
 ;;21,"61392-0783-51 ")
 ;;5350
 ;;21,"61392-0783-54 ")
 ;;5351
 ;;21,"61392-0783-60 ")
 ;;5352
 ;;21,"61392-0783-90 ")
 ;;5353
 ;;21,"61392-0783-91 ")
 ;;5354
 ;;21,"61442-0161-01 ")
 ;;5355
 ;;21,"61442-0161-05 ")
 ;;5356
 ;;21,"61442-0162-01 ")
 ;;5357
 ;;21,"61442-0162-05 ")
 ;;5358
 ;;21,"61442-0171-30 ")
 ;;5359
 ;;21,"61442-0172-30 ")
 ;;5360
 ;;21,"61442-0201-01 ")
 ;;5361
 ;;21,"61442-0201-02 ")
 ;;5362
 ;;21,"61442-0202-01 ")
 ;;5363
 ;;21,"61442-0202-02 ")
 ;;5364
 ;;21,"61442-0222-01 ")
 ;;5365
 ;;21,"61442-0223-01 ")
 ;;5366
 ;;21,"61442-0223-05 ")
 ;;5367
 ;;21,"61553-0012-72 ")
 ;;5368
 ;;21,"61553-0014-73 ")
 ;;5369
 ;;21,"61553-0048-72 ")
 ;;5370
 ;;21,"61553-0211-48 ")
 ;;5371
 ;;21,"61553-0216-48 ")
 ;;5372
 ;;21,"61570-0050-11 ")
 ;;5373
 ;;21,"61570-0052-01 ")
 ;;5374
 ;;21,"61570-0053-01 ")
 ;;5375
 ;;21,"61570-0053-05 ")
 ;;5376
 ;;21,"61570-0053-20 ")
 ;;5377
 ;;21,"61570-0054-10 ")
 ;;5378
 ;;21,"61570-0055-10 ")
 ;;5379
 ;;21,"61570-0056-10 ")
 ;;5380
 ;;21,"61748-0111-14 ")
 ;;5381
 ;;21,"61971-0115-01 ")
 ;;5382
 ;;21,"61971-0115-05 ")
 ;;5383
 ;;21,"61971-0120-01 ")
 ;;5384
 ;;21,"61971-0120-05 ")
 ;;5385
 ;;21,"62037-0777-60 ")
 ;;5386
 ;;21,"62436-0728-01 ")
 ;;5387
 ;;21,"62436-0729-03 ")
 ;;5388
 ;;21,"62436-0729-04 ")
 ;;5389
 ;;21,"62436-0730-01 ")
 ;;5390
 ;;21,"62436-0730-05 ")
 ;;5391
 ;;21,"62584-0235-01 ")
 ;;5392
 ;;21,"62584-0235-11 ")
 ;;5393
 ;;21,"62584-0236-01 ")
 ;;5394
 ;;21,"62584-0236-11 ")
 ;;5395
 ;;21,"62584-0237-01 ")
 ;;5396
 ;;21,"62584-0237-11 ")
 ;;5397
 ;;21,"62584-0238-01 ")
 ;;5398
 ;;21,"62584-0238-11 ")
 ;;5399
 ;;21,"62584-0338-01 ")
 ;;5400
 ;;21,"62584-0338-11 ")
 ;;5401
 ;;21,"62584-0693-01 ")
 ;;5402
 ;;21,"62584-0693-11 ")
 ;;5403
 ;;21,"62584-0693-21 ")
 ;;5404
 ;;21,"62584-0857-01 ")
 ;;5405
 ;;21,"62584-0857-11 ")
 ;;5406
 ;;21,"62756-0293-13 ")
 ;;5407
 ;;21,"62756-0293-88 ")
 ;;5408
 ;;21,"62756-0294-13 ")
 ;;5409
 ;;21,"62756-0294-88 ")
 ;;5410
 ;;21,"62756-0512-44 ")
 ;;5411
 ;;21,"63304-0131-01 ")
 ;;5412
 ;;21,"63304-0132-04 ")
 ;;5413
 ;;21,"63304-0132-50 ")
 ;;5414
 ;;21,"63304-0148-01 ")
 ;;5415
 ;;21,"63304-0149-01 ")
 ;;5416
 ;;21,"63304-0149-50 ")
 ;;5417
 ;;21,"63304-0173-30 ")
 ;;5418
 ;;21,"63304-0509-01 ")
 ;;5419
 ;;21,"63304-0509-20 ")
 ;;5420
 ;;21,"63304-0512-50 ")
 ;;5421
 ;;21,"63304-0520-20 ")
 ;;5422
 ;;21,"63304-0521-01 ")
 ;;5423
 ;;21,"63304-0521-20 ")
 ;;5424
 ;;21,"63304-0582-01 ")
 ;;5425
 ;;21,"63304-0582-50 ")
 ;;5426
