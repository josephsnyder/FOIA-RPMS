BGP03G10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"847,81.43 ",.02)
 ;;81.43 
 ;;9002226.02101,"847,81.44 ",.01)
 ;;81.44 
 ;;9002226.02101,"847,81.44 ",.02)
 ;;81.44 
 ;;9002226.02101,"847,81.45 ",.01)
 ;;81.45 
 ;;9002226.02101,"847,81.45 ",.02)
 ;;81.45 
 ;;9002226.02101,"847,81.46 ",.01)
 ;;81.46 
 ;;9002226.02101,"847,81.46 ",.02)
 ;;81.46 
 ;;9002226.02101,"847,81.47 ",.01)
 ;;81.47 
 ;;9002226.02101,"847,81.47 ",.02)
 ;;81.47 
 ;;9002226.02101,"847,81.49 ",.01)
 ;;81.49 
 ;;9002226.02101,"847,81.49 ",.02)
 ;;81.49 
 ;;9002226.02101,"847,81.51 ",.01)
 ;;81.51 
 ;;9002226.02101,"847,81.51 ",.02)
 ;;81.51 
 ;;9002226.02101,"847,81.52 ",.01)
 ;;81.52 
 ;;9002226.02101,"847,81.52 ",.02)
 ;;81.52 
 ;;9002226.02101,"847,81.53 ",.01)
 ;;81.53 
 ;;9002226.02101,"847,81.53 ",.02)
 ;;81.53 
 ;;9002226.02101,"847,81.54 ",.01)
 ;;81.54 
 ;;9002226.02101,"847,81.54 ",.02)
 ;;81.54 
 ;;9002226.02101,"847,81.55 ",.01)
 ;;81.55 
 ;;9002226.02101,"847,81.55 ",.02)
 ;;81.55 
 ;;9002226.02101,"847,81.56 ",.01)
 ;;81.56 
 ;;9002226.02101,"847,81.56 ",.02)
 ;;81.56 
 ;;9002226.02101,"847,81.57 ",.01)
 ;;81.57 
 ;;9002226.02101,"847,81.57 ",.02)
 ;;81.57 
 ;;9002226.02101,"847,81.59 ",.01)
 ;;81.59 
 ;;9002226.02101,"847,81.59 ",.02)
 ;;81.59 
 ;;9002226.02101,"847,81.80 ",.01)
 ;;81.80 
 ;;9002226.02101,"847,81.80 ",.02)
 ;;81.80 
 ;;9002226.02101,"847,81.81 ",.01)
 ;;81.81 
 ;;9002226.02101,"847,81.81 ",.02)
 ;;81.81 
 ;;9002226.02101,"847,81.82 ",.01)
 ;;81.82 
 ;;9002226.02101,"847,81.82 ",.02)
 ;;81.82 
 ;;9002226.02101,"847,81.83 ",.01)
 ;;81.83 
 ;;9002226.02101,"847,81.83 ",.02)
 ;;81.83 
 ;;9002226.02101,"847,81.84 ",.01)
 ;;81.84 
 ;;9002226.02101,"847,81.84 ",.02)
 ;;81.84 
 ;;9002226.02101,"847,81.85 ",.01)
 ;;81.85 
 ;;9002226.02101,"847,81.85 ",.02)
 ;;81.85 
 ;;9002226.02101,"847,81.93 ",.01)
 ;;81.93 
 ;;9002226.02101,"847,81.93 ",.02)
 ;;81.93 
 ;;9002226.02101,"847,81.94 ",.01)
 ;;81.94 
 ;;9002226.02101,"847,81.94 ",.02)
 ;;81.94 
 ;;9002226.02101,"847,81.95 ",.01)
 ;;81.95 
 ;;9002226.02101,"847,81.95 ",.02)
 ;;81.95 
 ;;9002226.02101,"847,81.96 ",.01)
 ;;81.96 
 ;;9002226.02101,"847,81.96 ",.02)
 ;;81.96 
 ;;9002226.02101,"847,81.97 ",.01)
 ;;81.97 
 ;;9002226.02101,"847,81.97 ",.02)
 ;;81.97 
 ;;9002226.02101,"847,81.98 ",.01)
 ;;81.98 
 ;;9002226.02101,"847,81.98 ",.02)
 ;;81.98 
 ;;9002226.02101,"847,81.99 ",.01)
 ;;81.99 
 ;;9002226.02101,"847,81.99 ",.02)
 ;;81.99 
 ;;9002226.02101,"847,82.61 ",.01)
 ;;82.61 
 ;;9002226.02101,"847,82.61 ",.02)
 ;;82.61 
 ;;9002226.02101,"847,82.81 ",.01)
 ;;82.81 
 ;;9002226.02101,"847,82.81 ",.02)
 ;;82.81 
 ;;9002226.02101,"847,83.32 ",.01)
 ;;83.32 
 ;;9002226.02101,"847,83.32 ",.02)
 ;;83.32 
 ;;9002226.02101,"847,83.39 ",.01)
 ;;83.39 
 ;;9002226.02101,"847,83.39 ",.02)
 ;;83.39 
 ;;9002226.02101,"847,83.5 ",.01)
 ;;83.5 
 ;;9002226.02101,"847,83.5 ",.02)
 ;;83.5 
 ;;9002226.02101,"847,83.61 ",.01)
 ;;83.61 
 ;;9002226.02101,"847,83.61 ",.02)
 ;;83.61 
 ;;9002226.02101,"847,83.62 ",.01)
 ;;83.62 
 ;;9002226.02101,"847,83.62 ",.02)
 ;;83.62 
 ;;9002226.02101,"847,83.63 ",.01)
 ;;83.63 
 ;;9002226.02101,"847,83.63 ",.02)
 ;;83.63 
 ;;9002226.02101,"847,83.64 ",.01)
 ;;83.64 
 ;;9002226.02101,"847,83.64 ",.02)
 ;;83.64 
 ;;9002226.02101,"847,83.65 ",.01)
 ;;83.65 
 ;;9002226.02101,"847,83.65 ",.02)
 ;;83.65 
 ;;9002226.02101,"847,83.71 ",.01)
 ;;83.71 
 ;;9002226.02101,"847,83.71 ",.02)
 ;;83.71 
 ;;9002226.02101,"847,83.72 ",.01)
 ;;83.72 
 ;;9002226.02101,"847,83.72 ",.02)
 ;;83.72 
 ;;9002226.02101,"847,83.73 ",.01)
 ;;83.73 
 ;;9002226.02101,"847,83.73 ",.02)
 ;;83.73 
 ;;9002226.02101,"847,83.74 ",.01)
 ;;83.74 
 ;;9002226.02101,"847,83.74 ",.02)
 ;;83.74 
 ;;9002226.02101,"847,83.75 ",.01)
 ;;83.75 
 ;;9002226.02101,"847,83.75 ",.02)
 ;;83.75 
 ;;9002226.02101,"847,83.76 ",.01)
 ;;83.76 
 ;;9002226.02101,"847,83.76 ",.02)
 ;;83.76 
 ;;9002226.02101,"847,83.77 ",.01)
 ;;83.77 
 ;;9002226.02101,"847,83.77 ",.02)
 ;;83.77 
 ;;9002226.02101,"847,83.79 ",.01)
 ;;83.79 
 ;;9002226.02101,"847,83.79 ",.02)
 ;;83.79 
 ;;9002226.02101,"847,83.81 ",.01)
 ;;83.81 
 ;;9002226.02101,"847,83.81 ",.02)
 ;;83.81 
 ;;9002226.02101,"847,83.82 ",.01)
 ;;83.82 
 ;;9002226.02101,"847,83.82 ",.02)
 ;;83.82 
 ;;9002226.02101,"847,83.83 ",.01)
 ;;83.83 
 ;;9002226.02101,"847,83.83 ",.02)
 ;;83.83 
 ;;9002226.02101,"847,83.84 ",.01)
 ;;83.84 
 ;;9002226.02101,"847,83.84 ",.02)
 ;;83.84 
 ;;9002226.02101,"847,83.85 ",.01)
 ;;83.85 
 ;;9002226.02101,"847,83.85 ",.02)
 ;;83.85 
 ;;9002226.02101,"847,83.86 ",.01)
 ;;83.86 
 ;;9002226.02101,"847,83.86 ",.02)
 ;;83.86 
 ;;9002226.02101,"847,83.87 ",.01)
 ;;83.87 
 ;;9002226.02101,"847,83.87 ",.02)
 ;;83.87 
 ;;9002226.02101,"847,83.88 ",.01)
 ;;83.88 
 ;;9002226.02101,"847,83.88 ",.02)
 ;;83.88 
 ;;9002226.02101,"847,83.89 ",.01)
 ;;83.89 
 ;;9002226.02101,"847,83.89 ",.02)
 ;;83.89 
 ;;9002226.02101,"847,83.91 ",.01)
 ;;83.91 
 ;;9002226.02101,"847,83.91 ",.02)
 ;;83.91 
 ;;9002226.02101,"847,83.99 ",.01)
 ;;83.99 
 ;;9002226.02101,"847,83.99 ",.02)
 ;;83.99 
 ;;9002226.02101,"847,84.00 ",.01)
 ;;84.00 
 ;;9002226.02101,"847,84.00 ",.02)
 ;;84.00 
 ;;9002226.02101,"847,84.03 ",.01)
 ;;84.03 
 ;;9002226.02101,"847,84.03 ",.02)
 ;;84.03 
 ;;9002226.02101,"847,84.04 ",.01)
 ;;84.04 
 ;;9002226.02101,"847,84.04 ",.02)
 ;;84.04 
 ;;9002226.02101,"847,84.05 ",.01)
 ;;84.05 
 ;;9002226.02101,"847,84.05 ",.02)
 ;;84.05 
 ;;9002226.02101,"847,84.06 ",.01)
 ;;84.06 
 ;;9002226.02101,"847,84.06 ",.02)
 ;;84.06 
 ;;9002226.02101,"847,84.07 ",.01)
 ;;84.07 
 ;;9002226.02101,"847,84.07 ",.02)
 ;;84.07 
 ;;9002226.02101,"847,84.08 ",.01)
 ;;84.08 
 ;;9002226.02101,"847,84.08 ",.02)
 ;;84.08 
 ;;9002226.02101,"847,84.09 ",.01)
 ;;84.09 
 ;;9002226.02101,"847,84.09 ",.02)
 ;;84.09 
 ;;9002226.02101,"847,84.10 ",.01)
 ;;84.10 
 ;;9002226.02101,"847,84.10 ",.02)
 ;;84.10 
 ;;9002226.02101,"847,84.12 ",.01)
 ;;84.12 
 ;;9002226.02101,"847,84.12 ",.02)
 ;;84.12 
 ;;9002226.02101,"847,84.13 ",.01)
 ;;84.13 
 ;;9002226.02101,"847,84.13 ",.02)
 ;;84.13 
 ;;9002226.02101,"847,84.14 ",.01)
 ;;84.14 
 ;;9002226.02101,"847,84.14 ",.02)
 ;;84.14 
 ;;9002226.02101,"847,84.15 ",.01)
 ;;84.15 
 ;;9002226.02101,"847,84.15 ",.02)
 ;;84.15 
 ;;9002226.02101,"847,84.16 ",.01)
 ;;84.16 
 ;;9002226.02101,"847,84.16 ",.02)
 ;;84.16 
 ;;9002226.02101,"847,84.17 ",.01)
 ;;84.17 
 ;;9002226.02101,"847,84.17 ",.02)
 ;;84.17 
 ;;9002226.02101,"847,84.18 ",.01)
 ;;84.18 
 ;;9002226.02101,"847,84.18 ",.02)
 ;;84.18 
 ;;9002226.02101,"847,84.19 ",.01)
 ;;84.19 
 ;;9002226.02101,"847,84.19 ",.02)
 ;;84.19 
 ;;9002226.02101,"847,84.22 ",.01)
 ;;84.22 
 ;;9002226.02101,"847,84.22 ",.02)
 ;;84.22 
 ;;9002226.02101,"847,84.23 ",.01)
 ;;84.23 
 ;;9002226.02101,"847,84.23 ",.02)
 ;;84.23 
 ;;9002226.02101,"847,84.24 ",.01)
 ;;84.24 
 ;;9002226.02101,"847,84.24 ",.02)
 ;;84.24 
 ;;9002226.02101,"847,84.25 ",.01)
 ;;84.25 
 ;;9002226.02101,"847,84.25 ",.02)
 ;;84.25 
 ;;9002226.02101,"847,84.26 ",.01)
 ;;84.26 
 ;;9002226.02101,"847,84.26 ",.02)
 ;;84.26 
 ;;9002226.02101,"847,84.27 ",.01)
 ;;84.27 
 ;;9002226.02101,"847,84.27 ",.02)
 ;;84.27 
 ;;9002226.02101,"847,84.28 ",.01)
 ;;84.28 
 ;;9002226.02101,"847,84.28 ",.02)
 ;;84.28 
 ;;9002226.02101,"847,84.29 ",.01)
 ;;84.29 
 ;;9002226.02101,"847,84.29 ",.02)
 ;;84.29 
 ;;9002226.02101,"847,84.3 ",.01)
 ;;84.3 
 ;;9002226.02101,"847,84.3 ",.02)
 ;;84.3 
 ;;9002226.02101,"847,84.58 ",.01)
 ;;84.58 
 ;;9002226.02101,"847,84.58 ",.02)
 ;;84.58 
 ;;9002226.02101,"847,85.22 ",.01)
 ;;85.22 
 ;;9002226.02101,"847,85.22 ",.02)
 ;;85.22 
 ;;9002226.02101,"847,85.23 ",.01)
 ;;85.23 
 ;;9002226.02101,"847,85.23 ",.02)
 ;;85.23 
 ;;9002226.02101,"847,85.31 ",.01)
 ;;85.31 
 ;;9002226.02101,"847,85.31 ",.02)
 ;;85.31 
 ;;9002226.02101,"847,85.32 ",.01)
 ;;85.32 
 ;;9002226.02101,"847,85.32 ",.02)
 ;;85.32 
 ;;9002226.02101,"847,85.33 ",.01)
 ;;85.33 
 ;;9002226.02101,"847,85.33 ",.02)
 ;;85.33 
 ;;9002226.02101,"847,85.34 ",.01)
 ;;85.34 
 ;;9002226.02101,"847,85.34 ",.02)
 ;;85.34 
 ;;9002226.02101,"847,85.35 ",.01)
 ;;85.35 
 ;;9002226.02101,"847,85.35 ",.02)
 ;;85.35 
 ;;9002226.02101,"847,85.36 ",.01)
 ;;85.36 
 ;;9002226.02101,"847,85.36 ",.02)
 ;;85.36 
 ;;9002226.02101,"847,85.41 ",.01)
 ;;85.41 
 ;;9002226.02101,"847,85.41 ",.02)
 ;;85.41 
 ;;9002226.02101,"847,85.42 ",.01)
 ;;85.42 
 ;;9002226.02101,"847,85.42 ",.02)
 ;;85.42 
 ;;9002226.02101,"847,85.43 ",.01)
 ;;85.43 
 ;;9002226.02101,"847,85.43 ",.02)
 ;;85.43 
 ;;9002226.02101,"847,85.44 ",.01)
 ;;85.44 
 ;;9002226.02101,"847,85.44 ",.02)
 ;;85.44 
 ;;9002226.02101,"847,85.45 ",.01)
 ;;85.45 
 ;;9002226.02101,"847,85.45 ",.02)
 ;;85.45 
 ;;9002226.02101,"847,85.46 ",.01)
 ;;85.46 
 ;;9002226.02101,"847,85.46 ",.02)
 ;;85.46 
 ;;9002226.02101,"847,85.47 ",.01)
 ;;85.47 
 ;;9002226.02101,"847,85.47 ",.02)
 ;;85.47 
 ;;9002226.02101,"847,85.48 ",.01)
 ;;85.48 
 ;;9002226.02101,"847,85.48 ",.02)
 ;;85.48 
 ;;9002226.02101,"847,85.50 ",.01)
 ;;85.50 
 ;;9002226.02101,"847,85.50 ",.02)
 ;;85.50 
 ;;9002226.02101,"847,85.53 ",.01)
 ;;85.53 
 ;;9002226.02101,"847,85.53 ",.02)
 ;;85.53 
 ;;9002226.02101,"847,85.54 ",.01)
 ;;85.54 
 ;;9002226.02101,"847,85.54 ",.02)
 ;;85.54 
 ;;9002226.02101,"847,85.6 ",.01)
 ;;85.6 
 ;;9002226.02101,"847,85.6 ",.02)
 ;;85.6 
 ;;9002226.02101,"847,85.7 ",.01)
 ;;85.7 
 ;;9002226.02101,"847,85.7 ",.02)
 ;;85.7 
 ;;9002226.02101,"847,85.93 ",.01)
 ;;85.93 
 ;;9002226.02101,"847,85.93 ",.02)
 ;;85.93 
 ;;9002226.02101,"847,85.94 ",.01)
 ;;85.94 
 ;;9002226.02101,"847,85.94 ",.02)
 ;;85.94 
 ;;9002226.02101,"847,85.95 ",.01)
 ;;85.95 
 ;;9002226.02101,"847,85.95 ",.02)
 ;;85.95 
 ;;9002226.02101,"847,85.96 ",.01)
 ;;85.96 
 ;;9002226.02101,"847,85.96 ",.02)
 ;;85.96 
 ;;9002226.02101,"847,86.4 ",.01)
 ;;86.4 
 ;;9002226.02101,"847,86.4 ",.02)
 ;;86.4 
 ;;9002226.02101,"847,86.70 ",.01)
 ;;86.70 
 ;;9002226.02101,"847,86.70 ",.02)
 ;;86.70 
 ;;9002226.02101,"847,86.71 ",.01)
 ;;86.71 
 ;;9002226.02101,"847,86.71 ",.02)
 ;;86.71 
 ;;9002226.02101,"847,86.72 ",.01)
 ;;86.72 
 ;;9002226.02101,"847,86.72 ",.02)
 ;;86.72 
 ;;9002226.02101,"847,86.73 ",.01)
 ;;86.73 
 ;;9002226.02101,"847,86.73 ",.02)
 ;;86.73 
 ;;9002226.02101,"847,86.74 ",.01)
 ;;86.74 
 ;;9002226.02101,"847,86.74 ",.02)
 ;;86.74 
 ;;9002226.02101,"847,86.75 ",.01)
 ;;86.75 
 ;;9002226.02101,"847,86.75 ",.02)
 ;;86.75 
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
