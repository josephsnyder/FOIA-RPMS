BGPM5ATR ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55045120603 ")
 ;;1156
 ;;21,"55045120604 ")
 ;;1157
 ;;21,"55045120607 ")
 ;;1158
 ;;21,"55045120608 ")
 ;;1159
 ;;21,"55045120609 ")
 ;;1160
 ;;21,"55045120700 ")
 ;;1161
 ;;21,"55045120701 ")
 ;;1162
 ;;21,"55045120702 ")
 ;;1163
 ;;21,"55045120703 ")
 ;;1164
 ;;21,"55045120704 ")
 ;;1165
 ;;21,"55045120705 ")
 ;;1166
 ;;21,"55045120706 ")
 ;;1167
 ;;21,"55045120707 ")
 ;;1168
 ;;21,"55045120708 ")
 ;;1169
 ;;21,"55045120709 ")
 ;;1170
 ;;21,"55045121000 ")
 ;;1171
 ;;21,"55045121001 ")
 ;;1172
 ;;21,"55045121002 ")
 ;;1173
 ;;21,"55045121003 ")
 ;;1174
 ;;21,"55045121005 ")
 ;;1175
 ;;21,"55045121006 ")
 ;;1176
 ;;21,"55045121007 ")
 ;;1177
 ;;21,"55045121008 ")
 ;;1178
 ;;21,"55045121009 ")
 ;;1179
 ;;21,"55045122600 ")
 ;;1180
 ;;21,"55045122601 ")
 ;;1181
 ;;21,"55045122602 ")
 ;;1182
 ;;21,"55045122603 ")
 ;;1183
 ;;21,"55045122604 ")
 ;;1184
 ;;21,"55045122605 ")
 ;;1185
 ;;21,"55045122606 ")
 ;;1186
 ;;21,"55045122607 ")
 ;;1187
 ;;21,"55045122608 ")
 ;;1188
 ;;21,"55045122609 ")
 ;;1189
 ;;21,"55045122700 ")
 ;;1190
 ;;21,"55045122701 ")
 ;;1191
 ;;21,"55045122702 ")
 ;;1192
 ;;21,"55045122703 ")
 ;;1193
 ;;21,"55045122704 ")
 ;;1194
 ;;21,"55045122706 ")
 ;;1195
 ;;21,"55045122707 ")
 ;;1196
 ;;21,"55045122708 ")
 ;;1197
 ;;21,"55045122709 ")
 ;;1198
 ;;21,"55045124701 ")
 ;;1199
 ;;21,"55045126209 ")
 ;;1200
 ;;21,"55045131301 ")
 ;;1201
 ;;21,"55045131302 ")
 ;;1202
 ;;21,"55045132200 ")
 ;;1203
 ;;21,"55045132201 ")
 ;;1204
 ;;21,"55045132202 ")
 ;;1205
 ;;21,"55045132203 ")
 ;;1206
 ;;21,"55045132204 ")
 ;;1207
 ;;21,"55045132205 ")
 ;;1208
 ;;21,"55045132206 ")
 ;;1209
 ;;21,"55045132207 ")
 ;;1210
 ;;21,"55045132208 ")
 ;;1211
 ;;21,"55045132209 ")
 ;;1212
 ;;21,"55045141501 ")
 ;;1213
 ;;21,"55045145003 ")
 ;;1214
 ;;21,"55045145006 ")
 ;;1215
 ;;21,"55045150009 ")
 ;;1216
 ;;21,"55045151406 ")
 ;;1217
 ;;21,"55045151407 ")
 ;;1218
 ;;21,"55045151408 ")
 ;;1219
 ;;21,"55045180407 ")
 ;;1220
 ;;21,"55045191800 ")
 ;;1221
 ;;21,"55045191801 ")
 ;;1222
 ;;21,"55045191802 ")
 ;;1223
 ;;21,"55045191803 ")
 ;;1224
 ;;21,"55045191806 ")
 ;;1225
 ;;21,"55045191807 ")
 ;;1226
 ;;21,"55045191808 ")
 ;;1227
 ;;21,"55045191809 ")
 ;;1228
 ;;21,"55045200400 ")
 ;;1229
 ;;21,"55045200403 ")
 ;;1230
 ;;21,"55045200404 ")
 ;;1231
 ;;21,"55045200405 ")
 ;;1232
 ;;21,"55045200406 ")
 ;;1233
 ;;21,"55045200408 ")
 ;;1234
 ;;21,"55045200600 ")
 ;;1235
 ;;21,"55045200601 ")
 ;;1236
 ;;21,"55045200602 ")
 ;;1237
 ;;21,"55045200603 ")
 ;;1238
 ;;21,"55045200604 ")
 ;;1239
 ;;21,"55045200605 ")
 ;;1240
 ;;21,"55045200606 ")
 ;;1241
 ;;21,"55045200607 ")
 ;;1242
 ;;21,"55045200608 ")
 ;;1243
 ;;21,"55045200609 ")
 ;;1244
 ;;21,"55045201309 ")
 ;;1245
 ;;21,"55045212701 ")
 ;;1246
 ;;21,"55045215407 ")
 ;;1247
 ;;21,"55045215408 ")
 ;;1248
 ;;21,"55045215409 ")
 ;;1249
 ;;21,"55045215503 ")
 ;;1250
 ;;21,"55045215801 ")
 ;;1251
 ;;21,"55045215804 ")
 ;;1252
 ;;21,"55045226001 ")
 ;;1253
 ;;21,"55045230201 ")
 ;;1254
 ;;21,"55045230203 ")
 ;;1255
 ;;21,"55045233707 ")
 ;;1256
 ;;21,"55045233708 ")
 ;;1257
 ;;21,"55045242601 ")
 ;;1258
 ;;21,"55045242602 ")
 ;;1259
 ;;21,"55045242603 ")
 ;;1260
 ;;21,"55045242606 ")
 ;;1261
 ;;21,"55045242607 ")
 ;;1262
 ;;21,"55045242608 ")
 ;;1263
 ;;21,"55045261001 ")
 ;;1264
 ;;21,"55045261002 ")
 ;;1265
 ;;21,"55045261004 ")
 ;;1266
 ;;21,"55045261006 ")
 ;;1267
 ;;21,"55045261007 ")
 ;;1268
 ;;21,"55045261009 ")
 ;;1269
 ;;21,"55045267201 ")
 ;;1270
 ;;21,"55045267202 ")
 ;;1271
 ;;21,"55045267206 ")
 ;;1272
 ;;21,"55045267208 ")
 ;;1273
 ;;21,"55045267209 ")
 ;;1274
 ;;21,"55045273107 ")
 ;;1275
 ;;21,"55045278704 ")
 ;;1276
 ;;21,"55045295302 ")
 ;;1277
 ;;21,"55045295304 ")
 ;;1278
 ;;21,"55045295305 ")
 ;;1279
 ;;21,"55045295306 ")
 ;;1280
 ;;21,"55045295307 ")
 ;;1281
 ;;21,"55045295308 ")
 ;;1282
 ;;21,"55045296603 ")
 ;;1283
 ;;21,"55045296607 ")
 ;;1284
 ;;21,"55045296608 ")
 ;;1285
 ;;21,"55045299202 ")
 ;;1286
 ;;21,"55045299302 ")
 ;;1287
 ;;21,"55045301601 ")
 ;;1288
 ;;21,"55045301607 ")
 ;;1289
 ;;21,"55045308000 ")
 ;;1290
 ;;21,"55045308001 ")
 ;;1291
 ;;21,"55045308002 ")
 ;;1292
 ;;21,"55045308003 ")
 ;;1293
 ;;21,"55045308004 ")
 ;;1294
 ;;21,"55045308005 ")
 ;;1295
 ;;21,"55045308007 ")
 ;;1296
 ;;21,"55045308008 ")
 ;;1297
 ;;21,"55045308100 ")
 ;;1298
 ;;21,"55045308101 ")
 ;;1299
 ;;21,"55045308102 ")
 ;;1300
 ;;21,"55045308103 ")
 ;;1301
 ;;21,"55045308106 ")
 ;;1302
 ;;21,"55045308107 ")
 ;;1303
 ;;21,"55045308108 ")
 ;;1304
 ;;21,"55045308109 ")
 ;;1305
 ;;21,"55045314201 ")
 ;;1306
 ;;21,"55045314205 ")
 ;;1307
 ;;21,"55045314207 ")
 ;;1308
 ;;21,"55045319401 ")
 ;;1309
 ;;21,"55045319403 ")
 ;;1310
 ;;21,"55045319404 ")
 ;;1311
 ;;21,"55045319406 ")
 ;;1312
 ;;21,"55045319409 ")
 ;;1313
 ;;21,"55045323201 ")
 ;;1314
 ;;21,"55045323202 ")
 ;;1315
 ;;21,"55045323308 ")
 ;;1316
 ;;21,"55045326001 ")
 ;;1317
 ;;21,"55045326006 ")
 ;;1318
 ;;21,"55045326009 ")
 ;;1319
 ;;21,"55045326804 ")
 ;;1320
 ;;21,"55045326806 ")
 ;;1321
 ;;21,"55045326808 ")
 ;;1322
 ;;21,"55045328802 ")
 ;;1323
 ;;21,"55045328805 ")
 ;;1324
 ;;21,"55045328808 ")
 ;;1325
 ;;21,"55045330604 ")
 ;;1326
 ;;21,"55045330605 ")
 ;;1327
 ;;21,"55045330606 ")
 ;;1328
 ;;21,"55045330608 ")
 ;;1329
 ;;21,"55045335500 ")
 ;;1330
 ;;21,"55045338505 ")
 ;;1331
 ;;21,"55045341405 ")
 ;;1332
 ;;21,"55045344206 ")
 ;;1333
 ;;21,"55045346701 ")
 ;;1334
 ;;21,"55045347906 ")
 ;;1335
 ;;21,"55045348302 ")
 ;;1336
 ;;21,"55045349001 ")
 ;;1337
 ;;21,"55045350301 ")
 ;;1338
 ;;21,"55045350302 ")
 ;;1339
 ;;21,"55045351101 ")
 ;;1340
 ;;21,"55045351102 ")
 ;;1341
 ;;21,"55045351901 ")
 ;;1342
 ;;21,"55045357001 ")
 ;;1343
 ;;21,"55045369803 ")
 ;;1344
 ;;21,"55045372501 ")
 ;;1345
 ;;21,"55045372602 ")
 ;;1346
 ;;21,"55045372701 ")
 ;;1347
 ;;21,"55065012310 ")
 ;;1348
 ;;21,"55065012342 ")
 ;;1349
 ;;21,"55065012350 ")
 ;;1350
 ;;21,"55065012410 ")
 ;;1351
 ;;21,"55065012450 ")
 ;;1352
 ;;21,"55065012510 ")
 ;;1353
 ;;21,"55065012550 ")
 ;;1354
 ;;21,"55111012506 ")
 ;;1355
 ;;21,"55111012601 ")
 ;;1356
 ;;21,"55111012605 ")
 ;;1357
 ;;21,"55111012650 ")
 ;;1358
 ;;21,"55111012678 ")
 ;;1359
 ;;21,"55111012701 ")
 ;;1360
 ;;21,"55111012705 ")
 ;;1361
 ;;21,"55111012750 ")
 ;;1362
 ;;21,"55111012778 ")
 ;;1363
 ;;21,"55111012801 ")
 ;;1364
 ;;21,"55111012805 ")
 ;;1365
 ;;21,"55111012850 ")
 ;;1366
 ;;21,"55111012878 ")
 ;;1367
 ;;21,"55111016001 ")
 ;;1368
 ;;21,"55111016005 ")
 ;;1369
 ;;21,"55111016030 ")
 ;;1370
 ;;21,"55111016050 ")
 ;;1371
 ;;21,"55111016078 ")
 ;;1372
 ;;21,"55111016101 ")
 ;;1373
 ;;21,"55111016105 ")
 ;;1374
 ;;21,"55111016130 ")
 ;;1375
 ;;21,"55111016150 ")
 ;;1376
 ;;21,"55111016178 ")
 ;;1377
 ;;21,"55111016201 ")
 ;;1378
 ;;21,"55111016205 ")
 ;;1379
 ;;21,"55111016230 ")
 ;;1380
 ;;21,"55111016250 ")
 ;;1381
 ;;21,"55111016278 ")
 ;;1382
 ;;21,"55111028101 ")
 ;;1383
 ;;21,"55111028105 ")
 ;;1384
 ;;21,"55111028130 ")
 ;;1385
 ;;21,"55111028150 ")
 ;;1386
 ;;21,"55111028178 ")
 ;;1387
 ;;21,"55111028179 ")
 ;;1388
 ;;21,"55111042201 ")
 ;;1389
 ;;21,"55111042205 ")
 ;;1390
 ;;21,"55111042230 ")
 ;;1391
 ;;21,"55111042278 ")
 ;;1392
 ;;21,"55111042301 ")
 ;;1393
 ;;21,"55111042305 ")
 ;;1394
 ;;21,"55111042330 ")
 ;;1395
 ;;21,"55111042378 ")
 ;;1396
 ;;21,"55111063701 ")
 ;;1397
 ;;21,"55111063710 ")
 ;;1398
 ;;21,"55111063801 ")
 ;;1399
 ;;21,"55111063810 ")
 ;;1400
 ;;21,"55111063910 ")
 ;;1401
 ;;21,"55111063950 ")
 ;;1402
 ;;21,"55111063960 ")
 ;;1403
 ;;21,"55154052500 ")
 ;;1404
 ;;21,"55154066000 ")
 ;;1405
 ;;21,"55154066007 ")
 ;;1406
 ;;21,"55154117509 ")
 ;;1407
 ;;21,"55154205000 ")
 ;;1408
 ;;21,"55154206200 ")
 ;;1409
 ;;21,"55154235205 ")
 ;;1410
 ;;21,"55154239005 ")
 ;;1411
 ;;21,"55154247505 ")
 ;;1412
 ;;21,"55154247605 ")
 ;;1413
 ;;21,"55154265009 ")
 ;;1414
 ;;21,"55154265105 ")
 ;;1415
 ;;21,"55154265309 ")
 ;;1416
 ;;21,"55154265500 ")
 ;;1417
 ;;21,"55154265504 ")
 ;;1418
 ;;21,"55154265506 ")
 ;;1419
 ;;21,"55154286505 ")
 ;;1420
 ;;21,"55154318405 ")
 ;;1421
 ;;21,"55154343005 ")
 ;;1422
 ;;21,"55154343105 ")
 ;;1423
 ;;21,"55154343200 ")
 ;;1424
 ;;21,"55154506700 ")
 ;;1425
 ;;21,"55154510807 ")
 ;;1426
 ;;21,"55154541805 ")
 ;;1427
 ;;21,"55154542005 ")
 ;;1428
 ;;21,"55154543205 ")
 ;;1429
 ;;21,"55154546600 ")
 ;;1430
 ;;21,"55154552200 ")
 ;;1431
 ;;21,"55154552207 ")
 ;;1432
 ;;21,"55154554600 ")
 ;;1433
 ;;21,"55154554607 ")
 ;;1434
 ;;21,"55154558600 ")
 ;;1435
 ;;21,"55154567000 ")
 ;;1436
 ;;21,"55154567400 ")
 ;;1437
 ;;21,"55154575905 ")
 ;;1438
 ;;21,"55154585100 ")
 ;;1439
 ;;21,"55154585200 ")
 ;;1440
 ;;21,"55154585300 ")
 ;;1441
 ;;21,"55154616409 ")
 ;;1442
 ;;21,"55154617209 ")
 ;;1443
 ;;21,"55154617700 ")
 ;;1444
 ;;21,"55154617900 ")
 ;;1445
 ;;21,"55154618700 ")
 ;;1446
 ;;21,"55154634500 ")
 ;;1447
 ;;21,"55154685005 ")
 ;;1448
 ;;21,"55154695305 ")
 ;;1449
 ;;21,"55154695405 ")
 ;;1450
 ;;21,"55154695605 ")
 ;;1451
 ;;21,"55154695705 ")
 ;;1452
 ;;21,"55154695805 ")
 ;;1453
 ;;21,"55154696205 ")
 ;;1454
 ;;21,"55154696500 ")
 ;;1455
 ;;21,"55154696504 ")
 ;;1456
 ;;21,"55154696506 ")
 ;;1457
 ;;21,"55154746902 ")
 ;;1458
 ;;21,"55154746909 ")
 ;;1459
 ;;21,"55154760305 ")
 ;;1460
 ;;21,"55154760307 ")
 ;;1461
 ;;21,"55154760605 ")
 ;;1462
 ;;21,"55154760705 ")
 ;;1463
 ;;21,"55154827700 ")
 ;;1464
 ;;21,"55154827800 ")
 ;;1465
 ;;21,"55154937905 ")
 ;;1466
 ;;21,"55154938105 ")
 ;;1467
 ;;21,"55154938505 ")
 ;;1468
 ;;21,"55154947500 ")
 ;;1469
 ;;21,"55154947504 ")
 ;;1470
 ;;21,"55154947506 ")
 ;;1471
 ;;21,"55154947609 ")
 ;;1472
 ;;21,"55154955505 ")
 ;;1473
 ;;21,"55154955905 ")
 ;;1474
 ;;21,"55175274601 ")
 ;;1475
 ;;21,"55190023224 ")
 ;;1476
 ;;21,"55190023230 ")
 ;;1477
 ;;21,"55190040224 ")
 ;;1478
 ;;21,"55190040230 ")
 ;;1479
 ;;21,"55190040424 ")
 ;;1480
 ;;21,"55190040430 ")
 ;;1481
 ;;21,"55190046017 ")
 ;;1482
 ;;21,"55190046020 ")
 ;;1483
 ;;21,"55190046117 ")
 ;;1484
 ;;21,"55190046120 ")
 ;;1485
 ;;21,"55190048817 ")
 ;;1486
 ;;21,"55190048820 ")
 ;;1487
 ;;21,"55190048917 ")
 ;;1488
 ;;21,"55190048920 ")
 ;;1489
 ;;21,"55190050016 ")
 ;;1490
 ;;21,"55190050017 ")
 ;;1491
 ;;21,"55190050018 ")
 ;;1492
 ;;21,"55190050020 ")
 ;;1493
 ;;21,"55190050116 ")
 ;;1494
 ;;21,"55190050117 ")
 ;;1495
 ;;21,"55190050118 ")
 ;;1496
 ;;21,"55190050120 ")
 ;;1497
 ;;21,"55190064814 ")
 ;;1498
 ;;21,"55190064815 ")
 ;;1499
 ;;21,"55190064816 ")
 ;;1500
 ;;21,"55190064824 ")
 ;;1501
 ;;21,"55190064832 ")
 ;;1502
 ;;21,"55190067315 ")
 ;;1503
 ;;21,"55190067316 ")
 ;;1504
 ;;21,"55190067324 ")
 ;;1505
 ;;21,"55190067330 ")
 ;;1506
 ;;21,"55190073024 ")
 ;;1507
