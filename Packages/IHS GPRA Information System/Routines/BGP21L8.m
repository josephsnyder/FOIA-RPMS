BGP21L8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58016-0365-00 ")
 ;;1288
 ;;21,"58016-0365-30 ")
 ;;1289
 ;;21,"58016-0365-60 ")
 ;;1290
 ;;21,"58016-0365-90 ")
 ;;1291
 ;;21,"58016-0385-00 ")
 ;;1132
 ;;21,"58016-0385-30 ")
 ;;1133
 ;;21,"58016-0385-60 ")
 ;;1134
 ;;21,"58016-0385-90 ")
 ;;1135
 ;;21,"58016-0425-00 ")
 ;;690
 ;;21,"58016-0425-30 ")
 ;;691
 ;;21,"58016-0425-60 ")
 ;;692
 ;;21,"58016-0425-90 ")
 ;;693
 ;;21,"58016-0546-00 ")
 ;;418
 ;;21,"58016-0900-00 ")
 ;;419
 ;;21,"58016-0900-02 ")
 ;;420
 ;;21,"58016-0900-30 ")
 ;;421
 ;;21,"58016-0900-60 ")
 ;;422
 ;;21,"58016-0900-90 ")
 ;;423
 ;;21,"58016-0922-00 ")
 ;;526
 ;;21,"58016-0922-02 ")
 ;;527
 ;;21,"58016-0922-30 ")
 ;;528
 ;;21,"58016-0922-60 ")
 ;;529
 ;;21,"58016-0922-90 ")
 ;;530
 ;;21,"58016-0979-00 ")
 ;;315
 ;;21,"58016-0979-02 ")
 ;;316
 ;;21,"58016-0979-20 ")
 ;;317
 ;;21,"58016-0979-30 ")
 ;;318
 ;;21,"58016-0979-60 ")
 ;;319
 ;;21,"58016-0979-90 ")
 ;;320
 ;;21,"58864-0608-30 ")
 ;;126
 ;;21,"58864-0623-15 ")
 ;;197
 ;;21,"58864-0623-30 ")
 ;;198
 ;;21,"58864-0653-30 ")
 ;;614
 ;;21,"58864-0682-30 ")
 ;;1292
 ;;21,"58864-0685-30 ")
 ;;159
 ;;21,"58864-0739-30 ")
 ;;1386
 ;;21,"58864-0743-15 ")
 ;;784
 ;;21,"58864-0743-30 ")
 ;;785
 ;;21,"58864-0760-30 ")
 ;;1136
 ;;21,"58864-0780-30 ")
 ;;424
 ;;21,"58864-0780-60 ")
 ;;425
 ;;21,"58864-0781-30 ")
 ;;321
 ;;21,"58864-0834-30 ")
 ;;224
 ;;21,"59630-0628-30 ")
 ;;566
 ;;21,"59630-0629-30 ")
 ;;570
 ;;21,"59630-0630-30 ")
 ;;574
 ;;21,"60429-0248-10 ")
 ;;322
 ;;21,"60429-0248-60 ")
 ;;323
 ;;21,"60429-0249-10 ")
 ;;426
 ;;21,"60429-0249-60 ")
 ;;427
 ;;21,"60429-0250-10 ")
 ;;531
 ;;21,"60429-0250-60 ")
 ;;532
 ;;21,"60429-0250-90 ")
 ;;533
 ;;21,"60505-0168-05 ")
 ;;615
 ;;21,"60505-0168-09 ")
 ;;616
 ;;21,"60505-0169-07 ")
 ;;694
 ;;21,"60505-0169-09 ")
 ;;695
 ;;21,"60505-0170-07 ")
 ;;786
 ;;21,"60505-0170-08 ")
 ;;787
 ;;21,"60505-0170-09 ")
 ;;788
 ;;21,"60505-0177-00 ")
 ;;324
 ;;21,"60505-0178-00 ")
 ;;428
 ;;21,"60505-0179-00 ")
 ;;534
 ;;21,"60505-1323-05 ")
 ;;826
 ;;21,"60505-1323-09 ")
 ;;827
 ;;21,"60598-0006-90 ")
 ;;1528
 ;;21,"60598-0007-90 ")
 ;;1535
 ;;21,"60598-0008-90 ")
 ;;1521
 ;;21,"60598-0009-90 ")
 ;;1524
 ;;21,"61442-0141-01 ")
 ;;325
 ;;21,"61442-0141-10 ")
 ;;326
 ;;21,"61442-0141-60 ")
 ;;327
 ;;21,"61442-0142-01 ")
 ;;429
 ;;21,"61442-0142-05 ")
 ;;430
 ;;21,"61442-0142-10 ")
 ;;431
 ;;21,"61442-0142-60 ")
 ;;432
 ;;21,"61442-0143-01 ")
 ;;535
 ;;21,"61442-0143-05 ")
 ;;536
 ;;21,"61442-0143-10 ")
 ;;537
 ;;21,"61442-0143-60 ")
 ;;538
 ;;21,"62022-0627-30 ")
 ;;563
 ;;21,"62022-0628-30 ")
 ;;565
 ;;21,"62022-0629-30 ")
 ;;568
 ;;21,"62022-0630-30 ")
 ;;572
 ;;21,"62022-0760-30 ")
 ;;562
 ;;21,"62022-0770-30 ")
 ;;564
 ;;21,"62022-0780-30 ")
 ;;567
 ;;21,"62022-0781-30 ")
 ;;571
 ;;21,"62037-0791-01 ")
 ;;263
 ;;21,"62037-0791-60 ")
 ;;275
 ;;21,"62037-0792-01 ")
 ;;341
 ;;21,"62037-0792-60 ")
 ;;357
 ;;21,"62037-0793-01 ")
 ;;468
 ;;21,"62037-0793-60 ")
 ;;469
 ;;21,"63304-0595-90 ")
 ;;617
 ;;21,"63304-0596-90 ")
 ;;696
 ;;21,"63304-0597-90 ")
 ;;789
 ;;21,"63304-0598-05 ")
 ;;828
 ;;21,"63304-0598-90 ")
 ;;829
 ;;21,"63304-0789-10 ")
 ;;1387
 ;;21,"63304-0789-30 ")
 ;;1341
 ;;21,"63304-0789-90 ")
 ;;1388
 ;;21,"63304-0790-10 ")
 ;;997
 ;;21,"63304-0790-30 ")
 ;;919
 ;;21,"63304-0790-90 ")
 ;;998
 ;;21,"63304-0791-10 ")
 ;;1137
 ;;21,"63304-0791-30 ")
 ;;1036
 ;;21,"63304-0791-90 ")
 ;;1138
 ;;21,"63304-0792-10 ")
 ;;1293
 ;;21,"63304-0792-30 ")
 ;;1187
 ;;21,"63304-0792-90 ")
 ;;1294
 ;;21,"63304-0793-10 ")
 ;;1481
 ;;21,"63304-0793-30 ")
 ;;1411
 ;;21,"63304-0793-50 ")
 ;;1482
 ;;21,"63304-0793-90 ")
 ;;1483
 ;;21,"63629-1447-01 ")
 ;;160
 ;;21,"63629-1464-01 ")
 ;;433
 ;;21,"63629-1464-02 ")
 ;;434
 ;;21,"63629-1464-03 ")
 ;;435
 ;;21,"63629-1606-01 ")
 ;;790
 ;;21,"63629-1606-02 ")
 ;;791
 ;;21,"63629-1784-01 ")
 ;;539
 ;;21,"63629-1784-02 ")
 ;;540
 ;;21,"63629-3366-01 ")
 ;;225
 ;;21,"63629-3366-02 ")
 ;;226
 ;;21,"63629-3366-03 ")
 ;;227
 ;;21,"63629-3366-04 ")
 ;;228
 ;;21,"63629-3381-01 ")
 ;;857
 ;;21,"63629-3381-02 ")
 ;;858
 ;;21,"63629-3381-03 ")
 ;;859
 ;;21,"63629-3381-04 ")
 ;;860
 ;;21,"63629-3385-01 ")
 ;;1295
 ;;21,"63629-3385-02 ")
 ;;1296
 ;;21,"63629-3385-03 ")
 ;;1297
 ;;21,"63629-3385-04 ")
 ;;1298
 ;;21,"63629-3385-05 ")
 ;;1299
 ;;21,"63629-3392-01 ")
 ;;999
 ;;21,"63629-3393-01 ")
 ;;1139
 ;;21,"63629-3393-02 ")
 ;;1140
 ;;21,"63629-3393-03 ")
 ;;1141
 ;;21,"63629-3393-04 ")
 ;;1142
 ;;21,"63629-3408-01 ")
 ;;1484
 ;;21,"63629-3408-02 ")
 ;;1485
 ;;21,"63629-3408-03 ")
 ;;1486
 ;;21,"63629-3408-04 ")
 ;;1487
 ;;21,"63629-3563-01 ")
 ;;697
 ;;21,"63629-3583-01 ")
 ;;328
 ;;21,"63629-3583-02 ")
 ;;329
 ;;21,"63739-0280-10 ")
 ;;264
 ;;21,"63739-0280-15 ")
 ;;265
 ;;21,"63739-0281-03 ")
 ;;350
 ;;21,"63739-0281-10 ")
 ;;436
