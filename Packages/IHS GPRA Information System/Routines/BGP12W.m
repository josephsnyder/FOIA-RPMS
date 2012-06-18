BGP12W ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;;BGP HEDIS PRIMARY ASTHMA NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS PRIMARY ASTHMA NDC
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
 ;;21,"00006-0117-01 ")
 ;;264
 ;;21,"00006-0117-28 ")
 ;;265
 ;;21,"00006-0117-31 ")
 ;;266
 ;;21,"00006-0117-54 ")
 ;;267
 ;;21,"00006-0117-80 ")
 ;;268
 ;;21,"00006-0275-01 ")
 ;;269
 ;;21,"00006-0275-28 ")
 ;;270
 ;;21,"00006-0275-31 ")
 ;;271
 ;;21,"00006-0275-54 ")
 ;;272
 ;;21,"00006-0275-82 ")
 ;;273
 ;;21,"00006-0711-01 ")
 ;;274
 ;;21,"00006-0711-28 ")
 ;;275
 ;;21,"00006-0711-31 ")
 ;;276
 ;;21,"00006-0711-54 ")
 ;;277
 ;;21,"00006-3841-01 ")
 ;;278
 ;;21,"00006-3841-30 ")
 ;;279
 ;;21,"00034-7004-70 ")
 ;;552
 ;;21,"00034-7004-80 ")
 ;;553
 ;;21,"00034-7006-80 ")
 ;;554
 ;;21,"00037-0515-68 ")
 ;;231
 ;;21,"00037-0521-92 ")
 ;;232
 ;;21,"00037-0541-92 ")
 ;;235
 ;;21,"00037-0545-68 ")
 ;;236
 ;;21,"00037-0731-92 ")
 ;;233
 ;;21,"00037-0731-99 ")
 ;;234
 ;;21,"00074-3014-60 ")
 ;;104
 ;;21,"00074-8036-22 ")
 ;;562
 ;;21,"00075-0060-37 ")
 ;;105
 ;;21,"00085-0584-01 ")
 ;;354
 ;;21,"00085-0584-05 ")
 ;;355
 ;;21,"00085-0584-10 ")
 ;;356
 ;;21,"00085-0584-50 ")
 ;;357
 ;;21,"00085-0584-81 ")
 ;;358
 ;;21,"00085-0694-01 ")
 ;;551
 ;;21,"00085-0806-01 ")
 ;;359
 ;;21,"00085-0933-01 ")
 ;;360
 ;;21,"00085-0933-05 ")
 ;;361
 ;;21,"00085-0933-10 ")
 ;;362
 ;;21,"00085-0933-50 ")
 ;;363
 ;;21,"00085-0933-81 ")
 ;;364
 ;;21,"00085-1341-01 ")
 ;;95
 ;;21,"00085-1341-02 ")
 ;;100
 ;;21,"00085-1341-03 ")
 ;;98
 ;;21,"00085-1341-04 ")
 ;;96
 ;;21,"00085-1461-02 ")
 ;;99
 ;;21,"00085-1461-07 ")
 ;;103
 ;;21,"00085-4610-01 ")
 ;;149
 ;;21,"00085-7206-01 ")
 ;;150
 ;;21,"00089-0341-80 ")
 ;;389
 ;;21,"00093-6815-73 ")
 ;;114
 ;;21,"00093-6816-73 ")
 ;;115
 ;;21,"00121-4794-15 ")
 ;;390
 ;;21,"00143-1020-01 ")
 ;;84
 ;;21,"00143-1020-10 ")
 ;;85
 ;;21,"00143-1025-01 ")
 ;;86
 ;;21,"00143-1025-10 ")
 ;;87
 ;;21,"00172-6406-49 ")
 ;;122
 ;;21,"00172-6406-59 ")
 ;;123
 ;;21,"00173-0491-00 ")
 ;;172
 ;;21,"00173-0494-00 ")
 ;;173
 ;;21,"00173-0495-00 ")
 ;;174
 ;;21,"00173-0498-00 ")
 ;;175
 ;;21,"00173-0499-00 ")
 ;;176
 ;;21,"00173-0504-00 ")
 ;;213
 ;;21,"00173-0600-02 ")
 ;;192
 ;;21,"00173-0601-02 ")
 ;;193
 ;;21,"00173-0602-02 ")
 ;;194
 ;;21,"00173-0695-00 ")
 ;;23
 ;;21,"00173-0695-02 ")
 ;;24
 ;;21,"00173-0695-04 ")
 ;;25
 ;;21,"00173-0696-00 ")
 ;;26
 ;;21,"00173-0696-02 ")
 ;;27
 ;;21,"00173-0696-04 ")
 ;;28
 ;;21,"00173-0697-00 ")
 ;;29
 ;;21,"00173-0697-02 ")
 ;;30
 ;;21,"00173-0697-04 ")
 ;;31
 ;;21,"00173-0715-00 ")
 ;;57
 ;;21,"00173-0715-20 ")
 ;;58
 ;;21,"00173-0715-22 ")
 ;;59
 ;;21,"00173-0716-00 ")
 ;;60
 ;;21,"00173-0716-20 ")
 ;;61
 ;;21,"00173-0716-22 ")
 ;;62
 ;;21,"00173-0717-00 ")
 ;;63
 ;;21,"00173-0717-20 ")
 ;;64
 ;;21,"00173-0717-22 ")
 ;;65
 ;;21,"00173-0718-00 ")
 ;;195
 ;;21,"00173-0718-20 ")
 ;;196
 ;;21,"00173-0719-00 ")
 ;;197
 ;;21,"00173-0719-20 ")
 ;;198
 ;;21,"00173-0720-00 ")
 ;;199
 ;;21,"00173-0720-20 ")
 ;;200
 ;;21,"00182-0226-41 ")
 ;;391
 ;;21,"00182-1400-89 ")
 ;;438
 ;;21,"00182-1589-89 ")
 ;;439
 ;;21,"00182-1590-89 ")
 ;;440
 ;;21,"00186-0370-20 ")
 ;;324
 ;;21,"00186-0370-28 ")
 ;;325
 ;;21,"00186-0372-20 ")
 ;;326
 ;;21,"00186-0372-28 ")
 ;;327
 ;;21,"00186-0426-04 ")
 ;;116
 ;;21,"00186-0915-42 ")
 ;;251
 ;;21,"00186-0916-12 ")
 ;;240
 ;;21,"00186-0917-06 ")
 ;;241
 ;;21,"00186-1988-04 ")
 ;;244
 ;;21,"00186-1989-04 ")
 ;;245
 ;;21,"00186-1990-04 ")
 ;;246
 ;;21,"00223-6623-01 ")
 ;;437
 ;;21,"00247-0061-02 ")
 ;;365
 ;;21,"00247-0061-08 ")
 ;;366
 ;;21,"00247-0061-20 ")
 ;;367
 ;;21,"00247-0061-30 ")
 ;;368
 ;;21,"00247-0061-50 ")
 ;;369
 ;;21,"00247-0061-60 ")
 ;;370
 ;;21,"00247-0061-90 ")
 ;;371
 ;;21,"00247-0070-00 ")
 ;;372
 ;;21,"00247-0070-02 ")
 ;;373
 ;;21,"00247-0070-09 ")
 ;;374
 ;;21,"00247-0070-10 ")
 ;;375
 ;;21,"00247-0070-12 ")
 ;;376
 ;;21,"00247-0070-20 ")
 ;;377
 ;;21,"00247-0070-30 ")
 ;;378
 ;;21,"00247-0070-50 ")
 ;;379
 ;;21,"00247-0070-52 ")
 ;;380
 ;;21,"00247-0070-60 ")
 ;;381
 ;;21,"00247-0070-90 ")
 ;;382
 ;;21,"00247-0190-20 ")
 ;;106
 ;;21,"00247-0656-02 ")
 ;;441
 ;;21,"00247-0656-04 ")
 ;;442
 ;;21,"00247-0656-10 ")
 ;;443
 ;;21,"00247-0656-14 ")
 ;;444
 ;;21,"00247-0656-20 ")
 ;;445
 ;;21,"00247-0656-28 ")
 ;;446
 ;;21,"00247-0656-30 ")
 ;;447
 ;;21,"00247-0656-60 ")
 ;;448
 ;;21,"00247-0659-07 ")
 ;;66
 ;;21,"00247-0667-08 ")
 ;;221
 ;;21,"00247-0674-41 ")
 ;;222
 ;;21,"00247-0703-07 ")
 ;;73
 ;;21,"00247-0824-06 ")
 ;;449
 ;;21,"00247-0824-10 ")
 ;;450
 ;;21,"00247-0824-30 ")
 ;;451
 ;;21,"00247-0824-60 ")
 ;;452
 ;;21,"00247-0824-90 ")
 ;;453
 ;;21,"00247-0873-02 ")
 ;;214
 ;;21,"00247-0873-52 ")
 ;;215
 ;;21,"00247-0873-60 ")
 ;;216
 ;;21,"00247-1575-13 ")
 ;;177
 ;;21,"00247-1576-12 ")
 ;;178
 ;
OTHER ; OTHER ROUTINES
 D ^BGP12WB
 D ^BGP12WC
 D ^BGP12WD
 D ^BGP12WE
 D ^BGP12WF
 D ^BGP12WG
 D ^BGP12WH
 D ^BGP12WI
 D ^BGP12WJ
 D ^BGP12WK
 D ^BGP12WL
 D ^BGP12WM
 D ^BGP12WN
 D ^BGP12WO
 D ^BGP12WP
 D ^BGP12WQ
 Q
