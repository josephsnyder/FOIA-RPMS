BUD0ZA3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00247-1045-30 ")
 ;;304
 ;;21,"00247-1045-45 ")
 ;;305
 ;;21,"00247-1270-00 ")
 ;;306
 ;;21,"00247-1270-03 ")
 ;;307
 ;;21,"00247-1270-06 ")
 ;;308
 ;;21,"00247-1270-30 ")
 ;;309
 ;;21,"00247-1270-60 ")
 ;;310
 ;;21,"00247-1270-90 ")
 ;;311
 ;;21,"00247-1538-10 ")
 ;;312
 ;;21,"00247-1539-10 ")
 ;;313
 ;;21,"00247-1704-30 ")
 ;;314
 ;;21,"00247-1760-00 ")
 ;;315
 ;;21,"00247-1760-02 ")
 ;;316
 ;;21,"00247-1760-30 ")
 ;;317
 ;;21,"00247-1760-60 ")
 ;;318
 ;;21,"00247-1760-77 ")
 ;;319
 ;;21,"00247-1762-02 ")
 ;;320
 ;;21,"00247-1763-02 ")
 ;;321
 ;;21,"00247-1763-30 ")
 ;;322
 ;;21,"00247-1924-30 ")
 ;;323
 ;;21,"00247-1925-30 ")
 ;;324
 ;;21,"00247-1926-30 ")
 ;;325
 ;;21,"00247-1927-06 ")
 ;;326
 ;;21,"00247-1927-30 ")
 ;;327
 ;;21,"00247-1928-30 ")
 ;;328
 ;;21,"00247-1989-15 ")
 ;;329
 ;;21,"00247-2069-30 ")
 ;;330
 ;;21,"00247-2069-60 ")
 ;;331
 ;;21,"00247-2069-90 ")
 ;;332
 ;;21,"00247-2159-00 ")
 ;;333
 ;;21,"00247-2159-30 ")
 ;;334
 ;;21,"00247-2160-30 ")
 ;;335
 ;;21,"00247-2288-30 ")
 ;;336
 ;;21,"00247-2288-60 ")
 ;;337
 ;;21,"00247-2288-77 ")
 ;;338
 ;;21,"00247-2288-90 ")
 ;;339
 ;;21,"00247-2289-30 ")
 ;;340
 ;;21,"00247-2289-60 ")
 ;;341
 ;;21,"00247-2289-77 ")
 ;;342
 ;;21,"00247-2289-90 ")
 ;;343
 ;;21,"00247-2290-30 ")
 ;;344
 ;;21,"00247-2290-60 ")
 ;;345
 ;;21,"00247-2290-77 ")
 ;;346
 ;;21,"00247-2290-90 ")
 ;;347
 ;;21,"00247-2291-30 ")
 ;;348
 ;;21,"00247-2291-60 ")
 ;;349
 ;;21,"00247-2292-30 ")
 ;;350
 ;;21,"00247-2292-60 ")
 ;;351
 ;;21,"00247-2293-30 ")
 ;;352
 ;;21,"00247-2293-60 ")
 ;;353
 ;;21,"00247-2294-30 ")
 ;;354
 ;;21,"00247-2295-30 ")
 ;;355
 ;;21,"00247-2296-30 ")
 ;;356
 ;;21,"00364-0722-90 ")
 ;;357
 ;;21,"00364-2605-05 ")
 ;;358
 ;;21,"00378-0197-01 ")
 ;;359
 ;;21,"00378-0197-05 ")
 ;;360
 ;;21,"00378-0210-01 ")
 ;;361
 ;;21,"00378-0210-10 ")
 ;;362
 ;;21,"00378-0215-01 ")
 ;;363
 ;;21,"00378-0215-05 ")
 ;;364
 ;;21,"00378-0217-01 ")
 ;;365
 ;;21,"00378-0551-01 ")
 ;;366
 ;;21,"00378-1105-01 ")
 ;;367
 ;;21,"00378-1105-05 ")
 ;;368
 ;;21,"00378-1110-01 ")
 ;;369
 ;;21,"00378-1110-05 ")
 ;;370
 ;;21,"00378-1113-01 ")
 ;;371
 ;;21,"00378-1125-01 ")
 ;;372
 ;;21,"00378-1125-10 ")
 ;;373
 ;;21,"00378-1142-01 ")
 ;;374
 ;;21,"00378-3131-01 ")
 ;;375
 ;;21,"00378-3132-01 ")
 ;;376
 ;;21,"00378-3133-01 ")
 ;;377
 ;;21,"00378-4011-01 ")
 ;;378
 ;;21,"00378-4012-01 ")
 ;;379
 ;;21,"00378-4013-01 ")
 ;;380
 ;;21,"00405-4024-01 ")
 ;;381
 ;;21,"00405-4025-01 ")
 ;;382
 ;;21,"00405-4205-01 ")
 ;;383
 ;;21,"00405-4205-02 ")
 ;;384
 ;;21,"00405-4206-01 ")
 ;;385
 ;;21,"00405-4206-03 ")
 ;;386
 ;;21,"00405-5024-01 ")
 ;;387
 ;;21,"00405-5025-01 ")
 ;;388
 ;;21,"00405-5025-03 ")
 ;;389
 ;;21,"00405-5026-01 ")
 ;;390
 ;;21,"00405-5031-01 ")
 ;;391
 ;;21,"00405-5031-03 ")
 ;;392
 ;;21,"00405-5374-01 ")
 ;;393
 ;;21,"00405-5375-01 ")
 ;;394
 ;;21,"00405-5376-01 ")
 ;;395
 ;;21,"00405-5376-03 ")
 ;;396
 ;;21,"00405-5380-01 ")
 ;;397
 ;;21,"00405-5380-02 ")
 ;;398
 ;;21,"00405-5381-01 ")
 ;;399
 ;;21,"00405-5381-02 ")
 ;;400
 ;;21,"00536-3462-05 ")
 ;;401
 ;;21,"00536-5702-01 ")
 ;;402
 ;;21,"00536-5751-01 ")
 ;;403
 ;;21,"00536-5752-01 ")
 ;;404
 ;;21,"00555-0442-02 ")
 ;;405
 ;;21,"00555-0443-02 ")
 ;;406
 ;;21,"00555-0625-02 ")
 ;;407
 ;;21,"00555-0626-02 ")
 ;;408
 ;;21,"00555-0627-02 ")
 ;;409
 ;;21,"00591-0460-01 ")
 ;;410
 ;;21,"00591-0460-05 ")
 ;;411
 ;;21,"00591-0460-10 ")
 ;;412
 ;;21,"00591-0461-01 ")
 ;;413
 ;;21,"00591-0461-05 ")
 ;;414
 ;;21,"00591-0461-10 ")
 ;;415
 ;;21,"00591-0844-01 ")
 ;;416
 ;;21,"00591-0844-10 ")
 ;;417
 ;;21,"00591-0844-15 ")
 ;;418
 ;;21,"00591-0845-01 ")
 ;;419
 ;;21,"00591-0845-10 ")
 ;;420
 ;;21,"00591-0845-15 ")
 ;;421
 ;;21,"00591-0900-30 ")
 ;;422
 ;;21,"00591-3971-01 ")
 ;;423
 ;;21,"00591-3972-01 ")
 ;;424
 ;;21,"00591-3973-01 ")
 ;;425
 ;;21,"00603-2835-28 ")
 ;;426
 ;;21,"00603-2836-28 ")
 ;;427
 ;;21,"00603-3762-21 ")
 ;;428
 ;;21,"00603-3763-21 ")
 ;;429
 ;;21,"00603-3764-32 ")
 ;;430
 ;;21,"00603-6121-21 ")
 ;;431
 ;;21,"00615-3595-53 ")
 ;;432
 ;;21,"00615-3595-63 ")
 ;;433
 ;;21,"00615-3596-53 ")
 ;;434
 ;;21,"00615-3596-63 ")
 ;;435
 ;;21,"00677-1544-01 ")
 ;;436
 ;;21,"00781-1138-01 ")
 ;;437
 ;;21,"00781-1146-01 ")
 ;;438
 ;;21,"00781-1191-01 ")
 ;;439
 ;;21,"00781-1191-10 ")
 ;;440
 ;;21,"00781-1452-01 ")
 ;;441
 ;;21,"00781-1452-10 ")
 ;;442
 ;;21,"00781-1453-01 ")
 ;;443
 ;;21,"00781-1453-10 ")
 ;;444
 ;;21,"00781-1613-01 ")
 ;;445
 ;;21,"00781-1613-05 ")
 ;;446
 ;;21,"00781-1623-01 ")
 ;;447
 ;;21,"00781-1623-05 ")
 ;;448
 ;;21,"00781-1623-10 ")
 ;;449
 ;;21,"00781-1942-13 ")
 ;;450
 ;;21,"00781-5045-01 ")
 ;;451
 ;;21,"00781-5046-01 ")
 ;;452
 ;;21,"00781-5047-01 ")
 ;;453
 ;;21,"00781-5170-01 ")
 ;;454
 ;;21,"00781-5171-01 ")
 ;;455
 ;;21,"00781-5171-05 ")
 ;;456
