BUD0ZA10 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63874-0665-01 ")
 ;;1365
 ;;21,"63874-0665-04 ")
 ;;1366
 ;;21,"63874-0665-10 ")
 ;;1367
 ;;21,"63874-0665-14 ")
 ;;1368
 ;;21,"63874-0665-30 ")
 ;;1369
 ;;21,"63874-0665-60 ")
 ;;1370
 ;;21,"63874-0665-90 ")
 ;;1371
 ;;21,"63874-0939-01 ")
 ;;1372
 ;;21,"63874-0939-10 ")
 ;;1373
 ;;21,"63874-0939-30 ")
 ;;1374
 ;;21,"63874-0939-60 ")
 ;;1375
 ;;21,"64764-0151-04 ")
 ;;1376
 ;;21,"64764-0151-05 ")
 ;;1377
 ;;21,"64764-0151-06 ")
 ;;1378
 ;;21,"64764-0155-18 ")
 ;;1379
 ;;21,"64764-0155-60 ")
 ;;1380
 ;;21,"64764-0158-18 ")
 ;;1381
 ;;21,"64764-0158-60 ")
 ;;1382
 ;;21,"64764-0301-14 ")
 ;;1383
 ;;21,"64764-0301-15 ")
 ;;1384
 ;;21,"64764-0301-16 ")
 ;;1385
 ;;21,"64764-0302-30 ")
 ;;1386
 ;;21,"64764-0304-30 ")
 ;;1387
 ;;21,"64764-0451-24 ")
 ;;1388
 ;;21,"64764-0451-25 ")
 ;;1389
 ;;21,"64764-0451-26 ")
 ;;1390
 ;;21,"64909-0101-07 ")
 ;;1391
 ;;21,"64909-0102-07 ")
 ;;1392
 ;;21,"64909-0102-08 ")
 ;;1393
 ;;21,"64909-0104-07 ")
 ;;1394
 ;;21,"64909-0105-07 ")
 ;;1395
 ;;21,"64909-0105-08 ")
 ;;1396
 ;;21,"66105-0145-01 ")
 ;;1397
 ;;21,"66105-0145-03 ")
 ;;1398
 ;;21,"66105-0145-06 ")
 ;;1399
 ;;21,"66105-0145-09 ")
 ;;1400
 ;;21,"66105-0145-15 ")
 ;;1401
 ;;21,"66105-0146-03 ")
 ;;1402
 ;;21,"66105-0159-01 ")
 ;;1403
 ;;21,"66105-0159-03 ")
 ;;1404
 ;;21,"66105-0159-06 ")
 ;;1405
 ;;21,"66105-0159-09 ")
 ;;1406
 ;;21,"66105-0159-15 ")
 ;;1407
 ;;21,"66105-0984-03 ")
 ;;1408
 ;;21,"66105-0984-06 ")
 ;;1409
 ;;21,"66105-0984-10 ")
 ;;1410
 ;;21,"66105-0984-11 ")
 ;;1411
 ;;21,"66105-0984-50 ")
 ;;1412
 ;;21,"66105-0985-03 ")
 ;;1413
 ;;21,"66105-0985-06 ")
 ;;1414
 ;;21,"66105-0985-10 ")
 ;;1415
 ;;21,"66105-0985-11 ")
 ;;1416
 ;;21,"66105-0985-50 ")
 ;;1417
 ;;21,"66105-0986-03 ")
 ;;1418
 ;;21,"66105-0986-06 ")
 ;;1419
 ;;21,"66105-0986-10 ")
 ;;1420
 ;;21,"66105-0986-11 ")
 ;;1421
 ;;21,"66105-0986-50 ")
 ;;1422
 ;;21,"66143-7510-05 ")
 ;;1423
 ;;21,"66336-0028-30 ")
 ;;1424
 ;;21,"66336-0269-30 ")
 ;;1425
 ;;21,"66336-0319-30 ")
 ;;1426
 ;;21,"66336-0662-30 ")
 ;;1427
 ;;21,"66336-0662-60 ")
 ;;1428
 ;;21,"66336-0730-30 ")
 ;;1429
 ;;21,"66336-0730-60 ")
 ;;1430
 ;;21,"66336-0784-30 ")
 ;;1431
 ;;21,"66336-0938-30 ")
 ;;1432
 ;;21,"66336-0938-60 ")
 ;;1433
 ;;21,"66780-0110-01 ")
 ;;1434
 ;;21,"66780-0115-02 ")
 ;;1435
 ;;21,"66780-0121-02 ")
 ;;1436
 ;;21,"66780-0210-07 ")
 ;;1437
 ;;21,"66780-0210-08 ")
 ;;1438
 ;;21,"66993-0162-02 ")
 ;;1439
 ;;21,"66993-0163-02 ")
 ;;1440
 ;;21,"66993-0164-02 ")
 ;;1441
 ;;21,"67046-0235-30 ")
 ;;1442
 ;;21,"67251-0460-11 ")
 ;;1443
 ;;21,"67251-0460-50 ")
 ;;1444
 ;;21,"67253-0460-10 ")
 ;;1445
 ;;21,"67253-0460-11 ")
 ;;1446
 ;;21,"67253-0460-50 ")
 ;;1447
 ;;21,"67253-0461-10 ")
 ;;1448
 ;;21,"67253-0461-11 ")
 ;;1449
 ;;21,"67253-0461-50 ")
 ;;1450
 ;;21,"67253-0462-10 ")
 ;;1451
 ;;21,"67253-0462-11 ")
 ;;1452
 ;;21,"67253-0462-50 ")
 ;;1453
 ;;21,"68084-0111-01 ")
 ;;1454
 ;;21,"68084-0111-11 ")
 ;;1455
 ;;21,"68084-0112-01 ")
 ;;1456
 ;;21,"68084-0112-11 ")
 ;;1457
 ;;21,"68084-0136-01 ")
 ;;1458
 ;;21,"68084-0136-11 ")
 ;;1459
 ;;21,"68084-0137-01 ")
 ;;1460
 ;;21,"68084-0137-11 ")
 ;;1461
 ;;21,"68084-0138-01 ")
 ;;1462
 ;;21,"68084-0138-11 ")
 ;;1463
 ;;21,"68084-0295-11 ")
 ;;1464
 ;;21,"68084-0295-21 ")
 ;;1465
 ;;21,"68084-0326-01 ")
 ;;1466
 ;;21,"68084-0326-11 ")
 ;;1467
 ;;21,"68084-0327-01 ")
 ;;1468
 ;;21,"68084-0327-11 ")
 ;;1469
 ;;21,"68115-0154-30 ")
 ;;1470
 ;;21,"68115-0154-60 ")
 ;;1471
 ;;21,"68115-0154-90 ")
 ;;1472
 ;;21,"68115-0155-30 ")
 ;;1473
 ;;21,"68115-0155-60 ")
 ;;1474
 ;;21,"68115-0155-90 ")
 ;;1475
 ;;21,"68115-0156-30 ")
 ;;1476
 ;;21,"68115-0157-30 ")
 ;;1477
 ;;21,"68115-0158-30 ")
 ;;1478
 ;;21,"68115-0158-60 ")
 ;;1479
 ;;21,"68115-0159-30 ")
 ;;1480
 ;;21,"68115-0159-60 ")
 ;;1481
 ;;21,"68115-0160-30 ")
 ;;1482
 ;;21,"68115-0160-90 ")
 ;;1483
 ;;21,"68115-0161-30 ")
 ;;1484
 ;;21,"68115-0161-60 ")
 ;;1485
 ;;21,"68115-0161-90 ")
 ;;1486
 ;;21,"68115-0616-00 ")
 ;;1487
 ;;21,"68115-0622-00 ")
 ;;1488
 ;;21,"68115-0671-30 ")
 ;;1489
 ;;21,"68115-0684-30 ")
 ;;1490
 ;;21,"68115-0709-05 ")
 ;;1491
 ;;21,"68115-0712-60 ")
 ;;1492
 ;;21,"68115-0728-10 ")
 ;;1493
 ;;21,"68115-0729-05 ")
 ;;1494
 ;;21,"68115-0746-10 ")
 ;;1495
 ;;21,"68115-0839-10 ")
 ;;1496
 ;;21,"68115-0840-00 ")
 ;;1497
 ;;21,"68115-0841-30 ")
 ;;1498
 ;;21,"68115-0891-60 ")
 ;;1499
 ;;9002226,1062,.01)
 ;;BUD DIABETES MEDS NDC
 ;;9002226,1062,.02)
 ;;DM MEDS FOR UDS
 ;;9002226,1062,.04)
 ;;n
 ;;9002226,1062,.06)
 ;;@
 ;;9002226,1062,.08)
 ;;@
 ;;9002226,1062,.09)
 ;;@
 ;;9002226,1062,.11)
 ;;@
 ;;9002226,1062,.12)
 ;;@
 ;;9002226,1062,.13)
 ;;1
 ;;9002226,1062,.14)
 ;;@
 ;;9002226,1062,.15)
 ;;@
 ;;9002226,1062,.16)
 ;;@
 ;;9002226,1062,.17)
 ;;@
 ;;9002226,1062,3101)
 ;;@
 ;;9002226.02101,"1062,00002-7510-01 ",.01)
 ;;00002-7510-01
