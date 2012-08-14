BGP01K ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;;BGP CD4 LOINC CODES
 ;
 ; This routine loads Taxonomy BGP CD4 LOINC CODES
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
 ;;21,"13332-2 ")
 ;;1
 ;;21,"13335-5 ")
 ;;2
 ;;21,"13336-3 ")
 ;;3
 ;;21,"13343-9 ")
 ;;4
 ;;21,"13491-6 ")
 ;;5
 ;;21,"13492-4 ")
 ;;6
 ;;21,"16274-3 ")
 ;;7
 ;;21,"17144-7 ")
 ;;8
 ;;21,"17145-4 ")
 ;;9
 ;;21,"17146-2 ")
 ;;10
 ;;21,"17153-8 ")
 ;;11
 ;;21,"20605-2 ")
 ;;12
 ;;21,"20606-0 ")
 ;;13
 ;;21,"20607-8 ")
 ;;14
 ;;21,"24467-3 ")
 ;;15
 ;;21,"26569-4 ")
 ;;16
 ;;21,"26570-2 ")
 ;;17
 ;;21,"26573-6 ")
 ;;18
 ;;21,"26759-1 ")
 ;;19
 ;;21,"26922-5 ")
 ;;20
 ;;21,"26982-9 ")
 ;;21
 ;;21,"26983-7 ")
 ;;22
 ;;21,"32515-9 ")
 ;;23
 ;;21,"32516-7 ")
 ;;24
 ;;21,"32532-4 ")
 ;;25
 ;;21,"32533-2 ")
 ;;26
 ;;21,"32537-3 ")
 ;;27
 ;;21,"34475-4 ")
 ;;28
 ;;21,"34622-1 ")
 ;;29
 ;;21,"34929-0 ")
 ;;30
 ;;21,"34930-8 ")
 ;;31
 ;;21,"34931-6 ")
 ;;32
 ;;21,"34932-4 ")
 ;;33
 ;;21,"38237-4 ")
 ;;34
 ;;21,"38238-2 ")
 ;;35
 ;;21,"38239-0 ")
 ;;36
 ;;21,"38240-8 ")
 ;;37
 ;;21,"41994-5 ")
 ;;38
 ;;21,"42737-7 ")
 ;;39
 ;;21,"43944-8 ")
 ;;40
 ;;21,"43952-1 ")
 ;;41
 ;;21,"43962-0 ")
 ;;42
 ;;21,"44056-0 ")
 ;;43
 ;;21,"44060-2 ")
 ;;44
 ;;21,"49025-0 ")
 ;;45
 ;;21,"49120-9 ")
 ;;46
 ;;21,"51306-9 ")
 ;;47
 ;;21,"51309-3 ")
 ;;48
 ;;21,"51311-9 ")
 ;;49
 ;;21,"51314-3 ")
 ;;50
 ;;21,"51316-8 ")
 ;;51
 ;;21,"51755-7 ")
 ;;52
 ;;21,"53939-5 ")
 ;;53
 ;;21,"53940-3 ")
 ;;54
 ;;21,"54218-3 ")
 ;;55
 ;;21,"5472-6 ")
 ;;56
 ;;21,"5473-4 ")
 ;;57
 ;;21,"5474-2 ")
 ;;58
 ;;21,"8123-2 ")
 ;;59
 ;;21,"8127-3 ")
 ;;60
 ;;21,"8128-1 ")
 ;;61
 ;;21,"8129-9 ")
 ;;62
 ;;9002226,269,.01)
 ;;BGP CD4 LOINC CODES
 ;;9002226,269,.02)
 ;;LOINC CODES FOR CD4 TESTS
 ;;9002226,269,.04)
 ;;n
 ;;9002226,269,.06)
 ;;@
 ;;9002226,269,.08)
 ;;@
 ;;9002226,269,.09)
 ;;3030709
 ;;9002226,269,.11)
 ;;@
 ;;9002226,269,.12)
 ;;@
 ;;9002226,269,.13)
 ;;1
 ;;9002226,269,.14)
 ;;FIHS
 ;;9002226,269,.15)
 ;;95.3
 ;;9002226,269,.16)
 ;;0
 ;;9002226,269,.17)
 ;;@
 ;;9002226,269,3101)
 ;;@
 ;;9002226.02101,"269,13332-2 ",.01)
 ;;13332-2
 ;;9002226.02101,"269,13332-2 ",.02)
 ;;13332-2
 ;;9002226.02101,"269,13335-5 ",.01)
 ;;13335-5
 ;;9002226.02101,"269,13335-5 ",.02)
 ;;13335-5
 ;;9002226.02101,"269,13336-3 ",.01)
 ;;13336-3
 ;;9002226.02101,"269,13336-3 ",.02)
 ;;13336-3
 ;;9002226.02101,"269,13343-9 ",.01)
 ;;13343-9
 ;;9002226.02101,"269,13343-9 ",.02)
 ;;13343-9
 ;;9002226.02101,"269,13491-6 ",.01)
 ;;13491-6
 ;;9002226.02101,"269,13491-6 ",.02)
 ;;13491-6
 ;;9002226.02101,"269,13492-4 ",.01)
 ;;13492-4
 ;;9002226.02101,"269,13492-4 ",.02)
 ;;13492-4
 ;;9002226.02101,"269,16274-3 ",.01)
 ;;16274-3
 ;;9002226.02101,"269,16274-3 ",.02)
 ;;16274-3
 ;;9002226.02101,"269,17144-7 ",.01)
 ;;17144-7
 ;;9002226.02101,"269,17144-7 ",.02)
 ;;17144-7
 ;;9002226.02101,"269,17145-4 ",.01)
 ;;17145-4
 ;;9002226.02101,"269,17145-4 ",.02)
 ;;17145-4
 ;;9002226.02101,"269,17146-2 ",.01)
 ;;17146-2
 ;;9002226.02101,"269,17146-2 ",.02)
 ;;17146-2
 ;;9002226.02101,"269,17153-8 ",.01)
 ;;17153-8
 ;;9002226.02101,"269,17153-8 ",.02)
 ;;17153-8
 ;;9002226.02101,"269,20605-2 ",.01)
 ;;20605-2
 ;;9002226.02101,"269,20605-2 ",.02)
 ;;20605-2
 ;;9002226.02101,"269,20606-0 ",.01)
 ;;20606-0
 ;;9002226.02101,"269,20606-0 ",.02)
 ;;20606-0
 ;;9002226.02101,"269,20607-8 ",.01)
 ;;20607-8
 ;;9002226.02101,"269,20607-8 ",.02)
 ;;20607-8
 ;;9002226.02101,"269,24467-3 ",.01)
 ;;24467-3
 ;;9002226.02101,"269,24467-3 ",.02)
 ;;24467-3
 ;;9002226.02101,"269,26569-4 ",.01)
 ;;26569-4
 ;;9002226.02101,"269,26569-4 ",.02)
 ;;26569-4
 ;;9002226.02101,"269,26570-2 ",.01)
 ;;26570-2
 ;;9002226.02101,"269,26570-2 ",.02)
 ;;26570-2
 ;;9002226.02101,"269,26573-6 ",.01)
 ;;26573-6
 ;;9002226.02101,"269,26573-6 ",.02)
 ;;26573-6
 ;;9002226.02101,"269,26759-1 ",.01)
 ;;26759-1
 ;;9002226.02101,"269,26759-1 ",.02)
 ;;26759-1
 ;;9002226.02101,"269,26922-5 ",.01)
 ;;26922-5
 ;;9002226.02101,"269,26922-5 ",.02)
 ;;26922-5
 ;;9002226.02101,"269,26982-9 ",.01)
 ;;26982-9
 ;;9002226.02101,"269,26982-9 ",.02)
 ;;26982-9
 ;;9002226.02101,"269,26983-7 ",.01)
 ;;26983-7
 ;;9002226.02101,"269,26983-7 ",.02)
 ;;26983-7
 ;;9002226.02101,"269,32515-9 ",.01)
 ;;32515-9
 ;;9002226.02101,"269,32515-9 ",.02)
 ;;32515-9
 ;;9002226.02101,"269,32516-7 ",.01)
 ;;32516-7
 ;;9002226.02101,"269,32516-7 ",.02)
 ;;32516-7
 ;;9002226.02101,"269,32532-4 ",.01)
 ;;32532-4
 ;;9002226.02101,"269,32532-4 ",.02)
 ;;32532-4
 ;;9002226.02101,"269,32533-2 ",.01)
 ;;32533-2
 ;;9002226.02101,"269,32533-2 ",.02)
 ;;32533-2
 ;;9002226.02101,"269,32537-3 ",.01)
 ;;32537-3
 ;;9002226.02101,"269,32537-3 ",.02)
 ;;32537-3
 ;;9002226.02101,"269,34475-4 ",.01)
 ;;34475-4
 ;;9002226.02101,"269,34475-4 ",.02)
 ;;34475-4
 ;;9002226.02101,"269,34622-1 ",.01)
 ;;34622-1
 ;;9002226.02101,"269,34622-1 ",.02)
 ;;34622-1
 ;;9002226.02101,"269,34929-0 ",.01)
 ;;34929-0
 ;;9002226.02101,"269,34929-0 ",.02)
 ;;34929-0
 ;;9002226.02101,"269,34930-8 ",.01)
 ;;34930-8
 ;;9002226.02101,"269,34930-8 ",.02)
 ;;34930-8
 ;;9002226.02101,"269,34931-6 ",.01)
 ;;34931-6
 ;;9002226.02101,"269,34931-6 ",.02)
 ;;34931-6
 ;;9002226.02101,"269,34932-4 ",.01)
 ;;34932-4
 ;;9002226.02101,"269,34932-4 ",.02)
 ;;34932-4
 ;;9002226.02101,"269,38237-4 ",.01)
 ;;38237-4
 ;;9002226.02101,"269,38237-4 ",.02)
 ;;38237-4
 ;;9002226.02101,"269,38238-2 ",.01)
 ;;38238-2
 ;;9002226.02101,"269,38238-2 ",.02)
 ;;38238-2
 ;;9002226.02101,"269,38239-0 ",.01)
 ;;38239-0
 ;;9002226.02101,"269,38239-0 ",.02)
 ;;38239-0
 ;;9002226.02101,"269,38240-8 ",.01)
 ;;38240-8
 ;;9002226.02101,"269,38240-8 ",.02)
 ;;38240-8
 ;;9002226.02101,"269,41994-5 ",.01)
 ;;41994-5
 ;;9002226.02101,"269,41994-5 ",.02)
 ;;41994-5
 ;;9002226.02101,"269,42737-7 ",.01)
 ;;42737-7
 ;;9002226.02101,"269,42737-7 ",.02)
 ;;42737-7
 ;;9002226.02101,"269,43944-8 ",.01)
 ;;43944-8
 ;;9002226.02101,"269,43944-8 ",.02)
 ;;43944-8
 ;;9002226.02101,"269,43952-1 ",.01)
 ;;43952-1
 ;;9002226.02101,"269,43952-1 ",.02)
 ;;43952-1
 ;;9002226.02101,"269,43962-0 ",.01)
 ;;43962-0
 ;;9002226.02101,"269,43962-0 ",.02)
 ;;43962-0
 ;;9002226.02101,"269,44056-0 ",.01)
 ;;44056-0
 ;;9002226.02101,"269,44056-0 ",.02)
 ;;44056-0
 ;;9002226.02101,"269,44060-2 ",.01)
 ;;44060-2
 ;;9002226.02101,"269,44060-2 ",.02)
 ;;44060-2
 ;;9002226.02101,"269,49025-0 ",.01)
 ;;49025-0
 ;;9002226.02101,"269,49025-0 ",.02)
 ;;49025-0
 ;;9002226.02101,"269,49120-9 ",.01)
 ;;49120-9
 ;;9002226.02101,"269,49120-9 ",.02)
 ;;49120-9
 ;;9002226.02101,"269,51306-9 ",.01)
 ;;51306-9
 ;;9002226.02101,"269,51306-9 ",.02)
 ;;51306-9
 ;;9002226.02101,"269,51309-3 ",.01)
 ;;51309-3
 ;;9002226.02101,"269,51309-3 ",.02)
 ;;51309-3
 ;;9002226.02101,"269,51311-9 ",.01)
 ;;51311-9
 ;;9002226.02101,"269,51311-9 ",.02)
 ;;51311-9
 ;;9002226.02101,"269,51314-3 ",.01)
 ;;51314-3
 ;;9002226.02101,"269,51314-3 ",.02)
 ;;51314-3
 ;;9002226.02101,"269,51316-8 ",.01)
 ;;51316-8
 ;;9002226.02101,"269,51316-8 ",.02)
 ;;51316-8
 ;;9002226.02101,"269,51755-7 ",.01)
 ;;51755-7
 ;;9002226.02101,"269,51755-7 ",.02)
 ;;51755-7
 ;;9002226.02101,"269,53939-5 ",.01)
 ;;53939-5
 ;;9002226.02101,"269,53939-5 ",.02)
 ;;53939-5
 ;;9002226.02101,"269,53940-3 ",.01)
 ;;53940-3
 ;;9002226.02101,"269,53940-3 ",.02)
 ;;53940-3
 ;;9002226.02101,"269,54218-3 ",.01)
 ;;54218-3
 ;;9002226.02101,"269,54218-3 ",.02)
 ;;54218-3
 ;;9002226.02101,"269,5472-6 ",.01)
 ;;5472-6
 ;;9002226.02101,"269,5472-6 ",.02)
 ;;5472-6
 ;;9002226.02101,"269,5473-4 ",.01)
 ;;5473-4
 ;;9002226.02101,"269,5473-4 ",.02)
 ;;5473-4
 ;;9002226.02101,"269,5474-2 ",.01)
 ;;5474-2
 ;;9002226.02101,"269,5474-2 ",.02)
 ;;5474-2
 ;;9002226.02101,"269,8123-2 ",.01)
 ;;8123-2
 ;;9002226.02101,"269,8123-2 ",.02)
 ;;8123-2
 ;;9002226.02101,"269,8127-3 ",.01)
 ;;8127-3
 ;;9002226.02101,"269,8127-3 ",.02)
 ;;8127-3
 ;;9002226.02101,"269,8128-1 ",.01)
 ;;8128-1
 ;;9002226.02101,"269,8128-1 ",.02)
 ;;8128-1
 ;;9002226.02101,"269,8129-9 ",.01)
 ;;8129-9
 ;;9002226.02101,"269,8129-9 ",.02)
 ;;8129-9
 ;;
 ;;3148
 ;;
 ;;897
 ;;
 ;;3191
 ;;
 ;;3196
 ;;
 ;;3197
 ;;
 ;;3149
 ;;
 ;;3150
 ;;
 ;;3151
 ;;
 ;;3208
 ;;
 ;;3209
 ;;
 ;;3435
 ;;
 ;;3436
 ;;
 ;;584
 ;;
 ;;583
 ;;
 ;;2440
 ;;
 ;;2091
 ;;
 ;;2092
 ;;
 ;;2093
 ;;
 ;;2094
 ;;
 ;;2096
 ;;
 ;;2097
 ;;
 ;;2098
 ;;
 ;;2095
 ;;
 ;;3314
 ;;
 ;;3315
 ;;
 ;;3316
 ;;
 ;;300
 ;;
 ;;298
 ;;
 ;;299
 ;;
 ;;301
 ;;
 ;;3446
 ;;
 ;;3447
 ;;
 ;;3448
 ;;
 ;;3449
 ;;
 ;;3450
 ;;
 ;;3451
 ;;
 ;;3453
 ;;
 ;;3452
 ;;
 ;;296
 ;;
 ;;261
 ;;
 ;;262
 ;;
 ;;263
 ;;
 ;;1223
 ;;
 ;;1224
 ;;
 ;;302
 ;;
 ;;1084
 ;;
 ;;2089
 ;;
 ;;2090
 ;;
 ;;535
 ;;
 ;;536
 ;;
 ;;571
 ;;
 ;;572
 ;;
 ;;2527
 ;;
 ;;58
 ;;
 ;;60
 ;;
 ;;61
 ;;
 ;;63
 ;;
 ;;59
 ;;
 ;;62
 ;;
 ;;1524
 ;;
 ;;1525
 ;;
 ;;826
 ;;
 ;;828
 ;;
 ;;824
 ;;
 ;;825
 ;;
 ;;827
 ;;
 ;;829
 ;;
 ;;2553
 ;;
 ;;2554
 ;;
 ;;2555
 ;;
 ;;2556
 ;;
 ;;2557
 ;;
 ;;2558
 ;;
 ;;2559
 ;;
 ;;2560
 ;;
 ;;844
 ;;
 ;;2985
 ;;
 ;;2986
 ;;
 ;;2987
 ;;
 ;;2988
 ;;
 ;;2989
 ;;
 ;;2990
 ;;
 ;;1581
 ;;
 ;;1582
 ;;
 ;;3401
 ;;
 ;;3402
 ;;
 ;;3400
 ;;
 ;;1374
 ;;
 ;;1375
 ;;
 ;;1376
 ;;
 ;;392
 ;;
 ;;3234
 ;;
 ;;3235
 ;;
 ;;3
 ;;
 ;;4
 ;;
 ;;2911
 ;;
 ;;2912
 ;;
 ;;2913
 ;;
 ;;2914
 ;;
 ;;1115
 ;;
 ;;1116
 ;;
 ;;83
 ;;
 ;;395
 ;;
 ;;393
 ;;
 ;;2371
 ;;
 ;;2372
 ;;
 ;;2373
 ;;
 ;;394
 ;;
 ;;391
 ;;
 ;;1053
 ;;
 ;;2996
 ;;
 ;;2997
 ;;
 ;;2995
 ;;
 ;;1754
 ;;
 ;;611
 ;;
 ;;613
 ;;
 ;;614
 ;;
 ;;616
 ;;
 ;;1109
 ;;
 ;;1110
 ;;
 ;;1111
 ;;
 ;;1112
 ;;
 ;;1113
 ;;
 ;;1114
 ;;
 ;;1538
 ;;
 ;;3229
 ;;
 ;;3230
 ;;
 ;;3231
 ;;
 ;;612
 ;;
 ;;615
 ;;
 ;;1752
 ;;
 ;;1753
 ;;
 ;;3364
 ;;
 ;;3363
 ;;
 ;;2490
 ;;
 ;;2491
 ;;
 ;;345
 ;;
 ;;346
 ;;
 ;;347
 ;;
 ;;343
 ;;
 ;;344
 ;;
 ;;3225
 ;;
 ;;3226
 ;;
 ;;1105
 ;;
 ;;1106
 ;;
 ;;1107
 ;;
 ;;1108
 ;;
 ;;600
 ;;
 ;;601
 ;;
 ;;599
 ;;
 ;;1698
 ;;
 ;;1699
 ;;
 ;;1700
 ;;
 ;;1701
 ;;
 ;;1702
 ;;
 ;;595
 ;;
 ;;596
 ;;
 ;;597
 ;;
 ;;598
 ;;
 ;;246
 ;;
 ;;247
 ;;
 ;;248
 ;;
 ;;249
 ;;
 ;;250
 ;;
 ;;251
 ;;
 ;;334
 ;;
 ;;335
 ;;
 ;;336
 ;;
 ;;337
 ;;
 ;;338
 ;;
 ;;28
 ;;
 ;;1574
 ;;
 ;;1575
 ;;
 ;;1576
 ;;
 ;;624
 ;;
 ;;625
 ;;
 ;;626
 ;;
 ;;627
 ;;
 ;;348
 ;;
 ;;1052
 ;;
 ;;40
 ;;
 ;;2503
 ;;
 ;;2504
 ;;
 ;;928
 ;;
 ;;2507
 ;;
 ;;2508
 ;;
 ;;1539
 ;;
 ;;929
 ;;
 ;;2505
 ;;
 ;;2506
 ;;
 ;;1353
 ;;
 ;;830
 ;;
 ;;349
 ;;
 ;;1354
 ;;
 ;;1355
 ;;
 ;;1090
 ;;
 ;;1
 ;;
 ;;1091
 ;;
 ;;1092
 ;;
 ;;2345
 ;;
 ;;1051
 ;;
 ;;2346
 ;;
 ;;2347
 ;;
 ;;1639
 ;;
 ;;1640
 ;;
 ;;1638
 ;;
 ;;1688
 ;;
 ;;1687
 ;;
 ;;85
 ;;
 ;;86
 ;;
 ;;84
 ;;
 ;;88
 ;;
 ;;89
 ;;
 ;;90
 ;;
 ;;87
 ;;
 ;;91
 ;;
 ;;2568
 ;;
 ;;2569
 ;;
 ;;2991
 ;;
 ;;2992
 ;;
 ;;2993
 ;;
 ;;2994
 ;;
 ;;2565
 ;;
 ;;2566
 ;;
 ;;2567
 ;;
 ;;2131
 ;;
 ;;2132
 ;;
 ;;2127
 ;;
 ;;2128
 ;;
 ;;2129
 ;;
 ;;2130
 ;;
 ;;950
 ;;
 ;;951
 ;;
 ;;948
 ;;
 ;;949
 ;;
 ;;1283
 ;;
 ;;1284
 ;;
 ;;1809
 ;;
 ;;1810
 ;;
 ;;1811
 ;;
 ;;1812
 ;;
 ;;1813
 ;;
 ;;1814
 ;;
 ;;3379
 ;;
 ;;3380
 ;;
 ;;3381
 ;;
 ;;2121
 ;;
 ;;2122
 ;;
 ;;2123
 ;;
 ;;2124
 ;;
 ;;2125
 ;;
 ;;2126
 ;;
 ;;943
 ;;
 ;;944
 ;;
 ;;942
 ;;
 ;;946
 ;;
 ;;947
 ;;
 ;;945
 ;;
 ;;1054
 ;;
 ;;2528
 ;;
 ;;2529
 ;;
 ;;2530
 ;;
 ;;2531
 ;;
 ;;2532
 ;;
 ;;2533
 ;;
 ;;2976
 ;;
 ;;2977
 ;;
 ;;2978
 ;;
 ;;2979
 ;;
 ;;67
 ;;
 ;;2909
 ;;
 ;;2910
 ;;
 ;;64
 ;;
 ;;65
 ;;
 ;;66
 ;;
 ;;2
 ;;
 ;;1757
 ;;
 ;;1755
 ;;
 ;;1756
 ;;
 ;;923
 ;;
 ;;1760
 ;;
 ;;1758
 ;;
 ;;1759
 ;;
 ;;1763
 ;;
 ;;1762
 ;;
 ;;1761
 ;;
 ;;2492
 ;;
 ;;2494
 ;;
 ;;2496
 ;;
 ;;2495
 ;;
 ;;2493
 ;;
 ;;2497
 ;;
 ;;813
 ;;
 ;;815
 ;;
 ;;818
 ;;
 ;;814
 ;;
 ;;816
 ;;
 ;;817
 ;;
 ;;1779
 ;;
 ;;1780
 ;;
 ;;3190
 ;;
 ;;1078
 ;;
 ;;1079
 ;;
 ;;617
 ;;
 ;;618
 ;;
 ;;619
 ;;
 ;;620
 ;;
 ;;2335
 ;;
 ;;2336
 ;;
 ;;2337
 ;
OTHER ; OTHER ROUTINES
 D ^BGP01K2
 D ^BGP01K3
 D ^BGP01K4
 D ^BGP01K5
 Q