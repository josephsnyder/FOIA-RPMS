BUD1ZA9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2011 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"61392-0064-30 ")
 ;;1216
 ;;21,"61392-0064-31 ")
 ;;1217
 ;;21,"61392-0064-32 ")
 ;;1218
 ;;21,"61392-0064-39 ")
 ;;1219
 ;;21,"61392-0064-45 ")
 ;;1220
 ;;21,"61392-0064-51 ")
 ;;1221
 ;;21,"61392-0064-54 ")
 ;;1222
 ;;21,"61392-0064-60 ")
 ;;1223
 ;;21,"61392-0064-90 ")
 ;;1224
 ;;21,"61392-0064-91 ")
 ;;1225
 ;;21,"61392-0117-30 ")
 ;;1226
 ;;21,"61392-0117-31 ")
 ;;1227
 ;;21,"61392-0117-32 ")
 ;;1228
 ;;21,"61392-0117-39 ")
 ;;1229
 ;;21,"61392-0117-45 ")
 ;;1230
 ;;21,"61392-0117-51 ")
 ;;1231
 ;;21,"61392-0117-54 ")
 ;;1232
 ;;21,"61392-0117-60 ")
 ;;1233
 ;;21,"61392-0117-90 ")
 ;;1234
 ;;21,"61392-0117-91 ")
 ;;1235
 ;;21,"61392-0119-30 ")
 ;;1236
 ;;21,"61392-0119-31 ")
 ;;1237
 ;;21,"61392-0119-32 ")
 ;;1238
 ;;21,"61392-0119-39 ")
 ;;1239
 ;;21,"61392-0119-45 ")
 ;;1240
 ;;21,"61392-0119-51 ")
 ;;1241
 ;;21,"61392-0119-54 ")
 ;;1242
 ;;21,"61392-0119-60 ")
 ;;1243
 ;;21,"61392-0119-90 ")
 ;;1244
 ;;21,"61392-0119-91 ")
 ;;1245
 ;;21,"61392-0120-30 ")
 ;;1246
 ;;21,"61392-0120-31 ")
 ;;1247
 ;;21,"61392-0120-32 ")
 ;;1248
 ;;21,"61392-0120-39 ")
 ;;1249
 ;;21,"61392-0120-45 ")
 ;;1250
 ;;21,"61392-0120-51 ")
 ;;1251
 ;;21,"61392-0120-54 ")
 ;;1252
 ;;21,"61392-0120-60 ")
 ;;1253
 ;;21,"61392-0120-90 ")
 ;;1254
 ;;21,"61392-0120-91 ")
 ;;1255
 ;;21,"62037-0871-30 ")
 ;;1256
 ;;21,"62037-0872-01 ")
 ;;1257
 ;;21,"62037-0872-05 ")
 ;;1258
 ;;21,"62037-0873-01 ")
 ;;1259
 ;;21,"62037-0873-05 ")
 ;;1260
 ;;21,"62682-5004-03 ")
 ;;1261
 ;;21,"62682-5004-08 ")
 ;;1262
 ;;21,"62682-5006-03 ")
 ;;1263
 ;;21,"62939-3211-01 ")
 ;;1264
 ;;21,"62939-3221-01 ")
 ;;1265
 ;;21,"62939-3231-00 ")
 ;;1266
 ;;21,"62939-3231-01 ")
 ;;1267
 ;;21,"63304-0425-01 ")
 ;;1268
 ;;21,"63304-0426-01 ")
 ;;1269
 ;;21,"63304-0427-01 ")
 ;;1270
 ;;21,"63629-1255-01 ")
 ;;1271
 ;;21,"63629-1392-01 ")
 ;;1272
 ;;21,"63629-1392-02 ")
 ;;1273
 ;;21,"63629-1392-03 ")
 ;;1274
 ;;21,"63629-1393-01 ")
 ;;1275
 ;;21,"63629-1393-02 ")
 ;;1276
 ;;21,"63629-1393-03 ")
 ;;1277
 ;;21,"63629-1394-01 ")
 ;;1278
 ;;21,"63629-1394-02 ")
 ;;1279
 ;;21,"63629-1394-03 ")
 ;;1280
 ;;21,"63629-1398-01 ")
 ;;1281
 ;;21,"63629-1398-02 ")
 ;;1282
 ;;21,"63629-1398-03 ")
 ;;1283
 ;;21,"63629-2793-01 ")
 ;;1284
 ;;21,"63629-2793-02 ")
 ;;1285
 ;;21,"63629-2793-03 ")
 ;;1286
 ;;21,"63629-2793-04 ")
 ;;1287
 ;;21,"63629-2907-01 ")
 ;;1288
 ;;21,"63629-2907-02 ")
 ;;1289
 ;;21,"63629-3043-01 ")
 ;;1290
 ;;21,"63629-3158-01 ")
 ;;1291
 ;;21,"63629-3158-02 ")
 ;;1292
 ;;21,"63629-3158-03 ")
 ;;1293
 ;;21,"63739-0116-01 ")
 ;;1294
 ;;21,"63739-0116-03 ")
 ;;1295
 ;;21,"63739-0116-10 ")
 ;;1296
 ;;21,"63739-0116-15 ")
 ;;1297
 ;;21,"63739-0117-01 ")
 ;;1298
 ;;21,"63739-0117-03 ")
 ;;1299
 ;;21,"63739-0117-10 ")
 ;;1300
 ;;21,"63739-0117-15 ")
 ;;1301
 ;;21,"63739-0118-10 ")
 ;;1302
 ;;21,"63739-0118-15 ")
 ;;1303
 ;;21,"63739-0119-10 ")
 ;;1304
 ;;21,"63739-0119-15 ")
 ;;1305
 ;;21,"63874-0316-01 ")
 ;;1306
 ;;21,"63874-0316-02 ")
 ;;1307
 ;;21,"63874-0316-04 ")
 ;;1308
 ;;21,"63874-0316-05 ")
 ;;1309
 ;;21,"63874-0316-10 ")
 ;;1310
 ;;21,"63874-0316-12 ")
 ;;1311
 ;;21,"63874-0316-14 ")
 ;;1312
 ;;21,"63874-0316-15 ")
 ;;1313
 ;;21,"63874-0316-20 ")
 ;;1314
 ;;21,"63874-0316-21 ")
 ;;1315
 ;;21,"63874-0316-24 ")
 ;;1316
 ;;21,"63874-0316-28 ")
 ;;1317
 ;;21,"63874-0316-30 ")
 ;;1318
 ;;21,"63874-0316-50 ")
 ;;1319
 ;;21,"63874-0316-60 ")
 ;;1320
 ;;21,"63874-0316-81 ")
 ;;1321
 ;;21,"63874-0316-90 ")
 ;;1322
 ;;21,"63874-0317-01 ")
 ;;1323
 ;;21,"63874-0317-02 ")
 ;;1324
 ;;21,"63874-0317-04 ")
 ;;1325
 ;;21,"63874-0317-10 ")
 ;;1326
 ;;21,"63874-0317-12 ")
 ;;1327
 ;;21,"63874-0317-14 ")
 ;;1328
 ;;21,"63874-0317-15 ")
 ;;1329
 ;;21,"63874-0317-20 ")
 ;;1330
 ;;21,"63874-0317-24 ")
 ;;1331
 ;;21,"63874-0317-28 ")
 ;;1332
 ;;21,"63874-0317-30 ")
 ;;1333
 ;;21,"63874-0317-40 ")
 ;;1334
 ;;21,"63874-0317-50 ")
 ;;1335
 ;;21,"63874-0317-60 ")
 ;;1336
 ;;21,"63874-0317-90 ")
 ;;1337
 ;;21,"63874-0432-01 ")
 ;;1338
 ;;21,"63874-0432-02 ")
 ;;1339
 ;;21,"63874-0432-04 ")
 ;;1340
 ;;21,"63874-0432-10 ")
 ;;1341
 ;;21,"63874-0432-14 ")
 ;;1342
 ;;21,"63874-0432-20 ")
 ;;1343
 ;;21,"63874-0432-21 ")
 ;;1344
 ;;21,"63874-0432-24 ")
 ;;1345
 ;;21,"63874-0432-28 ")
 ;;1346
 ;;21,"63874-0432-30 ")
 ;;1347
 ;;21,"63874-0432-50 ")
 ;;1348
 ;;21,"63874-0432-60 ")
 ;;1349
 ;;21,"63874-0432-81 ")
 ;;1350
 ;;21,"63874-0432-90 ")
 ;;1351
 ;;21,"63874-0510-01 ")
 ;;1352
 ;;21,"63874-0510-10 ")
 ;;1353
 ;;21,"63874-0510-30 ")
 ;;1354
 ;;21,"63874-0510-90 ")
 ;;1355
 ;;21,"63874-0588-01 ")
 ;;1356
 ;;21,"63874-0588-04 ")
 ;;1357
 ;;21,"63874-0588-10 ")
 ;;1358
 ;;21,"63874-0588-14 ")
 ;;1359
 ;;21,"63874-0588-20 ")
 ;;1360
 ;;21,"63874-0588-30 ")
 ;;1361
 ;;21,"63874-0588-60 ")
 ;;1362
 ;;21,"63874-0588-80 ")
 ;;1363
 ;;21,"63874-0588-90 ")
 ;;1364
