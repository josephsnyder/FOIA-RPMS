BGPM5ABI ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"880,54569599301 ",.01)
 ;;54569599301
 ;;9002226.02101,"880,54569599301 ",.02)
 ;;54569599301
 ;;9002226.02101,"880,54868079500 ",.01)
 ;;54868079500
 ;;9002226.02101,"880,54868079500 ",.02)
 ;;54868079500
 ;;9002226.02101,"880,54868514800 ",.01)
 ;;54868514800
 ;;9002226.02101,"880,54868514800 ",.02)
 ;;54868514800
 ;;9002226.02101,"880,54868514801 ",.01)
 ;;54868514801
 ;;9002226.02101,"880,54868514801 ",.02)
 ;;54868514801
 ;;9002226.02101,"880,54868514802 ",.01)
 ;;54868514802
 ;;9002226.02101,"880,54868514802 ",.02)
 ;;54868514802
 ;;9002226.02101,"880,54868514803 ",.01)
 ;;54868514803
 ;;9002226.02101,"880,54868514803 ",.02)
 ;;54868514803
 ;;9002226.02101,"880,54868514804 ",.01)
 ;;54868514804
 ;;9002226.02101,"880,54868514804 ",.02)
 ;;54868514804
 ;;9002226.02101,"880,54868518500 ",.01)
 ;;54868518500
 ;;9002226.02101,"880,54868518500 ",.02)
 ;;54868518500
 ;;9002226.02101,"880,54868518501 ",.01)
 ;;54868518501
 ;;9002226.02101,"880,54868518501 ",.02)
 ;;54868518501
 ;;9002226.02101,"880,54868518502 ",.01)
 ;;54868518502
 ;;9002226.02101,"880,54868518502 ",.02)
 ;;54868518502
 ;;9002226.02101,"880,54868518503 ",.01)
 ;;54868518503
 ;;9002226.02101,"880,54868518503 ",.02)
 ;;54868518503
 ;;9002226.02101,"880,54868518800 ",.01)
 ;;54868518800
 ;;9002226.02101,"880,54868518800 ",.02)
 ;;54868518800
 ;;9002226.02101,"880,54868518801 ",.01)
 ;;54868518801
 ;;9002226.02101,"880,54868518801 ",.02)
 ;;54868518801
 ;;9002226.02101,"880,54868518802 ",.01)
 ;;54868518802
 ;;9002226.02101,"880,54868518802 ",.02)
 ;;54868518802
 ;;9002226.02101,"880,54868524300 ",.01)
 ;;54868524300
 ;;9002226.02101,"880,54868524300 ",.02)
 ;;54868524300
 ;;9002226.02101,"880,54868524301 ",.01)
 ;;54868524301
 ;;9002226.02101,"880,54868524301 ",.02)
 ;;54868524301
 ;;9002226.02101,"880,54868524302 ",.01)
 ;;54868524302
 ;;9002226.02101,"880,54868524302 ",.02)
 ;;54868524302
 ;;9002226.02101,"880,54868524303 ",.01)
 ;;54868524303
 ;;9002226.02101,"880,54868524303 ",.02)
 ;;54868524303
 ;;9002226.02101,"880,54868524304 ",.01)
 ;;54868524304
 ;;9002226.02101,"880,54868524304 ",.02)
 ;;54868524304
 ;;9002226.02101,"880,54868546700 ",.01)
 ;;54868546700
 ;;9002226.02101,"880,54868546700 ",.02)
 ;;54868546700
 ;;9002226.02101,"880,54868546701 ",.01)
 ;;54868546701
 ;;9002226.02101,"880,54868546701 ",.02)
 ;;54868546701
 ;;9002226.02101,"880,54868546702 ",.01)
 ;;54868546702
 ;;9002226.02101,"880,54868546702 ",.02)
 ;;54868546702
 ;;9002226.02101,"880,55111069501 ",.01)
 ;;55111069501
 ;;9002226.02101,"880,55111069501 ",.02)
 ;;55111069501
 ;;9002226.02101,"880,55111069505 ",.01)
 ;;55111069505
 ;;9002226.02101,"880,55111069505 ",.02)
 ;;55111069505
 ;;9002226.02101,"880,55111069510 ",.01)
 ;;55111069510
 ;;9002226.02101,"880,55111069510 ",.02)
 ;;55111069510
 ;;9002226.02101,"880,55111069601 ",.01)
 ;;55111069601
 ;;9002226.02101,"880,55111069601 ",.02)
 ;;55111069601
 ;;9002226.02101,"880,55111069605 ",.01)
 ;;55111069605
 ;;9002226.02101,"880,55111069605 ",.02)
 ;;55111069605
 ;;9002226.02101,"880,55111069610 ",.01)
 ;;55111069610
 ;;9002226.02101,"880,55111069610 ",.02)
 ;;55111069610
 ;;9002226.02101,"880,55111069701 ",.01)
 ;;55111069701
 ;;9002226.02101,"880,55111069701 ",.02)
 ;;55111069701
 ;;9002226.02101,"880,55111069705 ",.01)
 ;;55111069705
 ;;9002226.02101,"880,55111069705 ",.02)
 ;;55111069705
 ;;9002226.02101,"880,55111069710 ",.01)
 ;;55111069710
 ;;9002226.02101,"880,55111069710 ",.02)
 ;;55111069710
 ;;9002226.02101,"880,55289028130 ",.01)
 ;;55289028130
 ;;9002226.02101,"880,55289028130 ",.02)
 ;;55289028130
 ;;9002226.02101,"880,55289028160 ",.01)
 ;;55289028160
 ;;9002226.02101,"880,55289028160 ",.02)
 ;;55289028160
 ;;9002226.02101,"880,55289028186 ",.01)
 ;;55289028186
 ;;9002226.02101,"880,55289028186 ",.02)
 ;;55289028186
 ;;9002226.02101,"880,55289028190 ",.01)
 ;;55289028190
 ;;9002226.02101,"880,55289028190 ",.02)
 ;;55289028190
 ;;9002226.02101,"880,55887017330 ",.01)
 ;;55887017330
 ;;9002226.02101,"880,55887017330 ",.02)
 ;;55887017330
 ;;9002226.02101,"880,55887036830 ",.01)
 ;;55887036830
 ;;9002226.02101,"880,55887036830 ",.02)
 ;;55887036830
 ;;9002226.02101,"880,55887036860 ",.01)
 ;;55887036860
 ;;9002226.02101,"880,55887036860 ",.02)
 ;;55887036860
 ;;9002226.02101,"880,55887036890 ",.01)
 ;;55887036890
 ;;9002226.02101,"880,55887036890 ",.02)
 ;;55887036890
 ;;9002226.02101,"880,55887036896 ",.01)
 ;;55887036896
 ;;9002226.02101,"880,55887036896 ",.02)
 ;;55887036896
 ;;9002226.02101,"880,55887084530 ",.01)
 ;;55887084530
 ;;9002226.02101,"880,55887084530 ",.02)
 ;;55887084530
 ;;9002226.02101,"880,55887084560 ",.01)
 ;;55887084560
 ;;9002226.02101,"880,55887084560 ",.02)
 ;;55887084560
 ;;9002226.02101,"880,57664072413 ",.01)
 ;;57664072413
 ;;9002226.02101,"880,57664072413 ",.02)
 ;;57664072413
 ;;9002226.02101,"880,57664072418 ",.01)
 ;;57664072418
 ;;9002226.02101,"880,57664072418 ",.02)
 ;;57664072418
 ;;9002226.02101,"880,57664072488 ",.01)
 ;;57664072488
 ;;9002226.02101,"880,57664072488 ",.02)
 ;;57664072488
 ;;9002226.02101,"880,57664072513 ",.01)
 ;;57664072513
 ;;9002226.02101,"880,57664072513 ",.02)
 ;;57664072513
 ;;9002226.02101,"880,57664072518 ",.01)
 ;;57664072518
 ;;9002226.02101,"880,57664072518 ",.02)
 ;;57664072518
 ;;9002226.02101,"880,57664072588 ",.01)
 ;;57664072588
 ;;9002226.02101,"880,57664072588 ",.02)
 ;;57664072588
 ;;9002226.02101,"880,57664072713 ",.01)
 ;;57664072713
 ;;9002226.02101,"880,57664072713 ",.02)
 ;;57664072713
 ;;9002226.02101,"880,57664072718 ",.01)
 ;;57664072718
 ;;9002226.02101,"880,57664072718 ",.02)
 ;;57664072718
 ;;9002226.02101,"880,57664072788 ",.01)
 ;;57664072788
 ;;9002226.02101,"880,57664072788 ",.02)
 ;;57664072788
 ;;9002226.02101,"880,58016005800 ",.01)
 ;;58016005800
 ;;9002226.02101,"880,58016005800 ",.02)
 ;;58016005800
 ;;9002226.02101,"880,58016005801 ",.01)
 ;;58016005801
 ;;9002226.02101,"880,58016005801 ",.02)
 ;;58016005801
 ;;9002226.02101,"880,58016005802 ",.01)
 ;;58016005802
 ;;9002226.02101,"880,58016005802 ",.02)
 ;;58016005802
 ;;9002226.02101,"880,58016005803 ",.01)
 ;;58016005803
 ;;9002226.02101,"880,58016005803 ",.02)
 ;;58016005803
 ;;9002226.02101,"880,58016005804 ",.01)
 ;;58016005804
 ;;9002226.02101,"880,58016005804 ",.02)
 ;;58016005804
 ;;9002226.02101,"880,58016005805 ",.01)
 ;;58016005805
 ;;9002226.02101,"880,58016005805 ",.02)
 ;;58016005805
 ;;9002226.02101,"880,58016005830 ",.01)
 ;;58016005830
 ;;9002226.02101,"880,58016005830 ",.02)
 ;;58016005830
 ;;9002226.02101,"880,58016005860 ",.01)
 ;;58016005860
 ;;9002226.02101,"880,58016005860 ",.02)
 ;;58016005860
 ;;9002226.02101,"880,58016005890 ",.01)
 ;;58016005890
 ;;9002226.02101,"880,58016005890 ",.02)
 ;;58016005890
 ;;9002226.02101,"880,58016041100 ",.01)
 ;;58016041100
 ;;9002226.02101,"880,58016041100 ",.02)
 ;;58016041100
 ;;9002226.02101,"880,58016041102 ",.01)
 ;;58016041102
 ;;9002226.02101,"880,58016041102 ",.02)
 ;;58016041102
 ;;9002226.02101,"880,58016041130 ",.01)
 ;;58016041130
 ;;9002226.02101,"880,58016041130 ",.02)
 ;;58016041130
 ;;9002226.02101,"880,58016041160 ",.01)
 ;;58016041160
 ;;9002226.02101,"880,58016041160 ",.02)
 ;;58016041160
 ;;9002226.02101,"880,58016041190 ",.01)
 ;;58016041190
 ;;9002226.02101,"880,58016041190 ",.02)
 ;;58016041190
 ;;9002226.02101,"880,58864095230 ",.01)
 ;;58864095230
 ;;9002226.02101,"880,58864095230 ",.02)
 ;;58864095230
 ;;9002226.02101,"880,58864095330 ",.01)
 ;;58864095330
 ;;9002226.02101,"880,58864095330 ",.02)
 ;;58864095330
 ;;9002226.02101,"880,59762233003 ",.01)
 ;;59762233003
 ;;9002226.02101,"880,59762233003 ",.02)
 ;;59762233003
 ;;9002226.02101,"880,59762233005 ",.01)
 ;;59762233005
 ;;9002226.02101,"880,59762233005 ",.02)
 ;;59762233005
 ;;9002226.02101,"880,59762233007 ",.01)
 ;;59762233007
 ;;9002226.02101,"880,59762233007 ",.02)
 ;;59762233007
 ;;9002226.02101,"880,59762233103 ",.01)
 ;;59762233103
 ;;9002226.02101,"880,59762233103 ",.02)
 ;;59762233103
 ;;9002226.02101,"880,59762233106 ",.01)
 ;;59762233106
 ;;9002226.02101,"880,59762233106 ",.02)
 ;;59762233106
 ;;9002226.02101,"880,59762233108 ",.01)
 ;;59762233108
 ;;9002226.02101,"880,59762233108 ",.02)
 ;;59762233108
 ;;9002226.02101,"880,59762233203 ",.01)
 ;;59762233203
 ;;9002226.02101,"880,59762233203 ",.02)
 ;;59762233203
 ;;9002226.02101,"880,59762233206 ",.01)
 ;;59762233206
 ;;9002226.02101,"880,59762233206 ",.02)
 ;;59762233206
 ;;9002226.02101,"880,59762233208 ",.01)
 ;;59762233208
 ;;9002226.02101,"880,59762233208 ",.02)
 ;;59762233208
 ;;9002226.02101,"880,61392059225 ",.01)
 ;;61392059225
 ;;9002226.02101,"880,61392059225 ",.02)
 ;;61392059225
 ;;9002226.02101,"880,61392059230 ",.01)
 ;;61392059230
 ;;9002226.02101,"880,61392059230 ",.02)
 ;;61392059230
 ;;9002226.02101,"880,61392059231 ",.01)
 ;;61392059231
 ;;9002226.02101,"880,61392059231 ",.02)
 ;;61392059231
 ;;9002226.02101,"880,61392059239 ",.01)
 ;;61392059239
 ;;9002226.02101,"880,61392059239 ",.02)
 ;;61392059239
 ;;9002226.02101,"880,61392059325 ",.01)
 ;;61392059325
 ;;9002226.02101,"880,61392059325 ",.02)
 ;;61392059325
 ;;9002226.02101,"880,61392059330 ",.01)
 ;;61392059330
 ;;9002226.02101,"880,61392059330 ",.02)
 ;;61392059330
 ;;9002226.02101,"880,61392059331 ",.01)
 ;;61392059331
 ;;9002226.02101,"880,61392059331 ",.02)
 ;;61392059331
 ;;9002226.02101,"880,61392059339 ",.01)
 ;;61392059339
 ;;9002226.02101,"880,61392059339 ",.02)
 ;;61392059339
 ;;9002226.02101,"880,63629139201 ",.01)
 ;;63629139201
 ;;9002226.02101,"880,63629139201 ",.02)
 ;;63629139201
 ;;9002226.02101,"880,63629139202 ",.01)
 ;;63629139202
 ;;9002226.02101,"880,63629139202 ",.02)
 ;;63629139202
 ;;9002226.02101,"880,63629139203 ",.01)
 ;;63629139203
 ;;9002226.02101,"880,63629139203 ",.02)
 ;;63629139203
 ;;9002226.02101,"880,63629279301 ",.01)
 ;;63629279301
 ;;9002226.02101,"880,63629279301 ",.02)
 ;;63629279301
 ;;9002226.02101,"880,63629279302 ",.01)
 ;;63629279302
 ;;9002226.02101,"880,63629279302 ",.02)
 ;;63629279302
 ;;9002226.02101,"880,63629279303 ",.01)
 ;;63629279303
 ;;9002226.02101,"880,63629279303 ",.02)
 ;;63629279303
 ;;9002226.02101,"880,63629279304 ",.01)
 ;;63629279304
 ;;9002226.02101,"880,63629279304 ",.02)
 ;;63629279304
 ;;9002226.02101,"880,63629279305 ",.01)
 ;;63629279305
 ;;9002226.02101,"880,63629279305 ",.02)
 ;;63629279305
 ;;9002226.02101,"880,63629399801 ",.01)
 ;;63629399801
 ;;9002226.02101,"880,63629399801 ",.02)
 ;;63629399801
 ;;9002226.02101,"880,63874093901 ",.01)
 ;;63874093901
 ;;9002226.02101,"880,63874093901 ",.02)
 ;;63874093901
 ;;9002226.02101,"880,63874093910 ",.01)
 ;;63874093910
 ;;9002226.02101,"880,63874093910 ",.02)
 ;;63874093910
 ;;9002226.02101,"880,63874093930 ",.01)
 ;;63874093930
 ;;9002226.02101,"880,63874093930 ",.02)
 ;;63874093930
 ;;9002226.02101,"880,63874093960 ",.01)
 ;;63874093960
 ;;9002226.02101,"880,63874093960 ",.02)
 ;;63874093960
 ;;9002226.02101,"880,64720014010 ",.01)
 ;;64720014010
 ;;9002226.02101,"880,64720014010 ",.02)
 ;;64720014010
 ;;9002226.02101,"880,64720014011 ",.01)
 ;;64720014011
 ;;9002226.02101,"880,64720014011 ",.02)
 ;;64720014011
 ;;9002226.02101,"880,64720014050 ",.01)
 ;;64720014050
 ;;9002226.02101,"880,64720014050 ",.02)
 ;;64720014050
 ;;9002226.02101,"880,64720014110 ",.01)
 ;;64720014110
 ;;9002226.02101,"880,64720014110 ",.02)
 ;;64720014110
 ;;9002226.02101,"880,64720014111 ",.01)
 ;;64720014111
 ;;9002226.02101,"880,64720014111 ",.02)
 ;;64720014111