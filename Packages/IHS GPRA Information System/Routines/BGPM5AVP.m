BGPM5AVP ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1033,55887098220 ",.01)
 ;;55887098220
 ;;9002226.02101,"1033,55887098220 ",.02)
 ;;55887098220
 ;;9002226.02101,"1033,55887098221 ",.01)
 ;;55887098221
 ;;9002226.02101,"1033,55887098221 ",.02)
 ;;55887098221
 ;;9002226.02101,"1033,55887098228 ",.01)
 ;;55887098228
 ;;9002226.02101,"1033,55887098228 ",.02)
 ;;55887098228
 ;;9002226.02101,"1033,55887098230 ",.01)
 ;;55887098230
 ;;9002226.02101,"1033,55887098230 ",.02)
 ;;55887098230
 ;;9002226.02101,"1033,55887098236 ",.01)
 ;;55887098236
 ;;9002226.02101,"1033,55887098236 ",.02)
 ;;55887098236
 ;;9002226.02101,"1033,55887098240 ",.01)
 ;;55887098240
 ;;9002226.02101,"1033,55887098240 ",.02)
 ;;55887098240
 ;;9002226.02101,"1033,55887098242 ",.01)
 ;;55887098242
 ;;9002226.02101,"1033,55887098242 ",.02)
 ;;55887098242
 ;;9002226.02101,"1033,55887098250 ",.01)
 ;;55887098250
 ;;9002226.02101,"1033,55887098250 ",.02)
 ;;55887098250
 ;;9002226.02101,"1033,55887098260 ",.01)
 ;;55887098260
 ;;9002226.02101,"1033,55887098260 ",.02)
 ;;55887098260
 ;;9002226.02101,"1033,55887098282 ",.01)
 ;;55887098282
 ;;9002226.02101,"1033,55887098282 ",.02)
 ;;55887098282
 ;;9002226.02101,"1033,55887098290 ",.01)
 ;;55887098290
 ;;9002226.02101,"1033,55887098290 ",.02)
 ;;55887098290
 ;;9002226.02101,"1033,55887098301 ",.01)
 ;;55887098301
 ;;9002226.02101,"1033,55887098301 ",.02)
 ;;55887098301
 ;;9002226.02101,"1033,55887098306 ",.01)
 ;;55887098306
 ;;9002226.02101,"1033,55887098306 ",.02)
 ;;55887098306
 ;;9002226.02101,"1033,55887098310 ",.01)
 ;;55887098310
 ;;9002226.02101,"1033,55887098310 ",.02)
 ;;55887098310
 ;;9002226.02101,"1033,55887098314 ",.01)
 ;;55887098314
 ;;9002226.02101,"1033,55887098314 ",.02)
 ;;55887098314
 ;;9002226.02101,"1033,55887098315 ",.01)
 ;;55887098315
 ;;9002226.02101,"1033,55887098315 ",.02)
 ;;55887098315
 ;;9002226.02101,"1033,55887098320 ",.01)
 ;;55887098320
 ;;9002226.02101,"1033,55887098320 ",.02)
 ;;55887098320
 ;;9002226.02101,"1033,55887098328 ",.01)
 ;;55887098328
 ;;9002226.02101,"1033,55887098328 ",.02)
 ;;55887098328
 ;;9002226.02101,"1033,55887098330 ",.01)
 ;;55887098330
 ;;9002226.02101,"1033,55887098330 ",.02)
 ;;55887098330
 ;;9002226.02101,"1033,55887098340 ",.01)
 ;;55887098340
 ;;9002226.02101,"1033,55887098340 ",.02)
 ;;55887098340
 ;;9002226.02101,"1033,55887098342 ",.01)
 ;;55887098342
 ;;9002226.02101,"1033,55887098342 ",.02)
 ;;55887098342
 ;;9002226.02101,"1033,55887098360 ",.01)
 ;;55887098360
 ;;9002226.02101,"1033,55887098360 ",.02)
 ;;55887098360
 ;;9002226.02101,"1033,55887099128 ",.01)
 ;;55887099128
 ;;9002226.02101,"1033,55887099128 ",.02)
 ;;55887099128
 ;;9002226.02101,"1033,55887099309 ",.01)
 ;;55887099309
 ;;9002226.02101,"1033,55887099309 ",.02)
 ;;55887099309
 ;;9002226.02101,"1033,55887099314 ",.01)
 ;;55887099314
 ;;9002226.02101,"1033,55887099314 ",.02)
 ;;55887099314
 ;;9002226.02101,"1033,55887099315 ",.01)
 ;;55887099315
 ;;9002226.02101,"1033,55887099315 ",.02)
 ;;55887099315
 ;;9002226.02101,"1033,55887099320 ",.01)
 ;;55887099320
 ;;9002226.02101,"1033,55887099320 ",.02)
 ;;55887099320
 ;;9002226.02101,"1033,55887099342 ",.01)
 ;;55887099342
 ;;9002226.02101,"1033,55887099342 ",.02)
 ;;55887099342
 ;;9002226.02101,"1033,55953008401 ",.01)
 ;;55953008401
 ;;9002226.02101,"1033,55953008401 ",.02)
 ;;55953008401
 ;;9002226.02101,"1033,55953011401 ",.01)
 ;;55953011401
 ;;9002226.02101,"1033,55953011401 ",.02)
 ;;55953011401
 ;;9002226.02101,"1033,55953025180 ",.01)
 ;;55953025180
 ;;9002226.02101,"1033,55953025180 ",.02)
 ;;55953025180
 ;;9002226.02101,"1033,55953025380 ",.01)
 ;;55953025380
 ;;9002226.02101,"1033,55953025380 ",.02)
 ;;55953025380
 ;;9002226.02101,"1033,55953071601 ",.01)
 ;;55953071601
 ;;9002226.02101,"1033,55953071601 ",.02)
 ;;55953071601
 ;;9002226.02101,"1033,55953072401 ",.01)
 ;;55953072401
 ;;9002226.02101,"1033,55953072401 ",.02)
 ;;55953072401
 ;;9002226.02101,"1033,55983032801 ",.01)
 ;;55983032801
 ;;9002226.02101,"1033,55983032801 ",.02)
 ;;55983032801
 ;;9002226.02101,"1033,55983050113 ",.01)
 ;;55983050113
 ;;9002226.02101,"1033,55983050113 ",.02)
 ;;55983050113
 ;;9002226.02101,"1033,55983050114 ",.01)
 ;;55983050114
 ;;9002226.02101,"1033,55983050114 ",.02)
 ;;55983050114
 ;;9002226.02101,"1033,57297012101 ",.01)
 ;;57297012101
 ;;9002226.02101,"1033,57297012101 ",.02)
 ;;57297012101
 ;;9002226.02101,"1033,57297012102 ",.01)
 ;;57297012102
 ;;9002226.02101,"1033,57297012102 ",.02)
 ;;57297012102
 ;;9002226.02101,"1033,57297012201 ",.01)
 ;;57297012201
 ;;9002226.02101,"1033,57297012201 ",.02)
 ;;57297012201
 ;;9002226.02101,"1033,57297012202 ",.01)
 ;;57297012202
 ;;9002226.02101,"1033,57297012202 ",.02)
 ;;57297012202
 ;;9002226.02101,"1033,57297012301 ",.01)
 ;;57297012301
 ;;9002226.02101,"1033,57297012301 ",.02)
 ;;57297012301
 ;;9002226.02101,"1033,57297012302 ",.01)
 ;;57297012302
 ;;9002226.02101,"1033,57297012302 ",.02)
 ;;57297012302
 ;;9002226.02101,"1033,57297012401 ",.01)
 ;;57297012401
 ;;9002226.02101,"1033,57297012401 ",.02)
 ;;57297012401
 ;;9002226.02101,"1033,57297012402 ",.01)
 ;;57297012402
 ;;9002226.02101,"1033,57297012402 ",.02)
 ;;57297012402
 ;;9002226.02101,"1033,57297018001 ",.01)
 ;;57297018001
 ;;9002226.02101,"1033,57297018001 ",.02)
 ;;57297018001
 ;;9002226.02101,"1033,57297018008 ",.01)
 ;;57297018008
 ;;9002226.02101,"1033,57297018008 ",.02)
 ;;57297018008
 ;;9002226.02101,"1033,57297018101 ",.01)
 ;;57297018101
 ;;9002226.02101,"1033,57297018101 ",.02)
 ;;57297018101
 ;;9002226.02101,"1033,57297018102 ",.01)
 ;;57297018102
 ;;9002226.02101,"1033,57297018102 ",.02)
 ;;57297018102
 ;;9002226.02101,"1033,57297018201 ",.01)
 ;;57297018201
 ;;9002226.02101,"1033,57297018201 ",.02)
 ;;57297018201
 ;;9002226.02101,"1033,57297018202 ",.01)
 ;;57297018202
 ;;9002226.02101,"1033,57297018202 ",.02)
 ;;57297018202
 ;;9002226.02101,"1033,57297018203 ",.01)
 ;;57297018203
 ;;9002226.02101,"1033,57297018203 ",.02)
 ;;57297018203
 ;;9002226.02101,"1033,57297030201 ",.01)
 ;;57297030201
 ;;9002226.02101,"1033,57297030201 ",.02)
 ;;57297030201
 ;;9002226.02101,"1033,57297030220 ",.01)
 ;;57297030220
 ;;9002226.02101,"1033,57297030220 ",.02)
 ;;57297030220
 ;;9002226.02101,"1033,57297030260 ",.01)
 ;;57297030260
 ;;9002226.02101,"1033,57297030260 ",.02)
 ;;57297030260
 ;;9002226.02101,"1033,57297030301 ",.01)
 ;;57297030301
 ;;9002226.02101,"1033,57297030301 ",.02)
 ;;57297030301
 ;;9002226.02101,"1033,57297030320 ",.01)
 ;;57297030320
 ;;9002226.02101,"1033,57297030320 ",.02)
 ;;57297030320
 ;;9002226.02101,"1033,57297030360 ",.01)
 ;;57297030360
 ;;9002226.02101,"1033,57297030360 ",.02)
 ;;57297030360
 ;;9002226.02101,"1033,57297030410 ",.01)
 ;;57297030410
 ;;9002226.02101,"1033,57297030410 ",.02)
 ;;57297030410
 ;;9002226.02101,"1033,57297040101 ",.01)
 ;;57297040101
 ;;9002226.02101,"1033,57297040101 ",.02)
 ;;57297040101
 ;;9002226.02101,"1033,57297040102 ",.01)
 ;;57297040102
 ;;9002226.02101,"1033,57297040102 ",.02)
 ;;57297040102
 ;;9002226.02101,"1033,57297040103 ",.01)
 ;;57297040103
 ;;9002226.02101,"1033,57297040103 ",.02)
 ;;57297040103
 ;;9002226.02101,"1033,57297040201 ",.01)
 ;;57297040201
 ;;9002226.02101,"1033,57297040201 ",.02)
 ;;57297040201
 ;;9002226.02101,"1033,57297040202 ",.01)
 ;;57297040202
 ;;9002226.02101,"1033,57297040202 ",.02)
 ;;57297040202
 ;;9002226.02101,"1033,57297040203 ",.01)
 ;;57297040203
 ;;9002226.02101,"1033,57297040203 ",.02)
 ;;57297040203
 ;;9002226.02101,"1033,57297040301 ",.01)
 ;;57297040301
 ;;9002226.02101,"1033,57297040301 ",.02)
 ;;57297040301
 ;;9002226.02101,"1033,57297040401 ",.01)
 ;;57297040401
 ;;9002226.02101,"1033,57297040401 ",.02)
 ;;57297040401
 ;;9002226.02101,"1033,57297040402 ",.01)
 ;;57297040402
 ;;9002226.02101,"1033,57297040402 ",.02)
 ;;57297040402
 ;;9002226.02101,"1033,57297061101 ",.01)
 ;;57297061101
 ;;9002226.02101,"1033,57297061101 ",.02)
 ;;57297061101
 ;;9002226.02101,"1033,57297061110 ",.01)
 ;;57297061110
 ;;9002226.02101,"1033,57297061110 ",.02)
 ;;57297061110
 ;;9002226.02101,"1033,57297062201 ",.01)
 ;;57297062201
 ;;9002226.02101,"1033,57297062201 ",.02)
 ;;57297062201
 ;;9002226.02101,"1033,57297062210 ",.01)
 ;;57297062210
 ;;9002226.02101,"1033,57297062210 ",.02)
 ;;57297062210
 ;;9002226.02101,"1033,57297062225 ",.01)
 ;;57297062225
 ;;9002226.02101,"1033,57297062225 ",.02)
 ;;57297062225
 ;;9002226.02101,"1033,57297062250 ",.01)
 ;;57297062250
 ;;9002226.02101,"1033,57297062250 ",.02)
 ;;57297062250
 ;;9002226.02101,"1033,57297063301 ",.01)
 ;;57297063301
 ;;9002226.02101,"1033,57297063301 ",.02)
 ;;57297063301
 ;;9002226.02101,"1033,57297063310 ",.01)
 ;;57297063310
 ;;9002226.02101,"1033,57297063310 ",.02)
 ;;57297063310
 ;;9002226.02101,"1033,57297064401 ",.01)
 ;;57297064401
 ;;9002226.02101,"1033,57297064401 ",.02)
 ;;57297064401
 ;;9002226.02101,"1033,57297064410 ",.01)
 ;;57297064410
 ;;9002226.02101,"1033,57297064410 ",.02)
 ;;57297064410
 ;;9002226.02101,"1033,57297065501 ",.01)
 ;;57297065501
 ;;9002226.02101,"1033,57297065501 ",.02)
 ;;57297065501
 ;;9002226.02101,"1033,57297071160 ",.01)
 ;;57297071160
 ;;9002226.02101,"1033,57297071160 ",.02)
 ;;57297071160
 ;;9002226.02101,"1033,57297072310 ",.01)
 ;;57297072310
 ;;9002226.02101,"1033,57297072310 ",.02)
 ;;57297072310
 ;;9002226.02101,"1033,57297072320 ",.01)
 ;;57297072320
 ;;9002226.02101,"1033,57297072320 ",.02)
 ;;57297072320
 ;;9002226.02101,"1033,57319048505 ",.01)
 ;;57319048505
 ;;9002226.02101,"1033,57319048505 ",.02)
 ;;57319048505
 ;;9002226.02101,"1033,57319048506 ",.01)
 ;;57319048506
 ;;9002226.02101,"1033,57319048506 ",.02)
 ;;57319048506
 ;;9002226.02101,"1033,57319048507 ",.01)
 ;;57319048507
 ;;9002226.02101,"1033,57319048507 ",.02)
 ;;57319048507
 ;;9002226.02101,"1033,57575000330 ",.01)
 ;;57575000330
 ;;9002226.02101,"1033,57575000330 ",.02)
 ;;57575000330
 ;;9002226.02101,"1033,57575000430 ",.01)
 ;;57575000430
 ;;9002226.02101,"1033,57575000430 ",.02)
 ;;57575000430
 ;;9002226.02101,"1033,57575000606 ",.01)
 ;;57575000606
 ;;9002226.02101,"1033,57575000606 ",.02)
 ;;57575000606
 ;;9002226.02101,"1033,57575000620 ",.01)
 ;;57575000620
 ;;9002226.02101,"1033,57575000620 ",.02)
 ;;57575000620
 ;;9002226.02101,"1033,57575001340 ",.01)
 ;;57575001340
 ;;9002226.02101,"1033,57575001340 ",.02)
 ;;57575001340
 ;;9002226.02101,"1033,57575001440 ",.01)
 ;;57575001440
 ;;9002226.02101,"1033,57575001440 ",.02)
 ;;57575001440
 ;;9002226.02101,"1033,57575001540 ",.01)
 ;;57575001540
 ;;9002226.02101,"1033,57575001540 ",.02)
 ;;57575001540
 ;;9002226.02101,"1033,57575001640 ",.01)
 ;;57575001640
 ;;9002226.02101,"1033,57575001640 ",.02)
 ;;57575001640
 ;;9002226.02101,"1033,57575001720 ",.01)
 ;;57575001720
 ;;9002226.02101,"1033,57575001720 ",.02)
 ;;57575001720
 ;;9002226.02101,"1033,57575008210 ",.01)
 ;;57575008210
 ;;9002226.02101,"1033,57575008210 ",.02)
 ;;57575008210
 ;;9002226.02101,"1033,57575008240 ",.01)
 ;;57575008240
 ;;9002226.02101,"1033,57575008240 ",.02)
 ;;57575008240
 ;;9002226.02101,"1033,57575009440 ",.01)
 ;;57575009440
 ;;9002226.02101,"1033,57575009440 ",.02)
 ;;57575009440
 ;;9002226.02101,"1033,57866010601 ",.01)
 ;;57866010601
 ;;9002226.02101,"1033,57866010601 ",.02)
 ;;57866010601
 ;;9002226.02101,"1033,57866010602 ",.01)
 ;;57866010602
 ;;9002226.02101,"1033,57866010602 ",.02)
 ;;57866010602
 ;;9002226.02101,"1033,57866011701 ",.01)
 ;;57866011701
 ;;9002226.02101,"1033,57866011701 ",.02)
 ;;57866011701
 ;;9002226.02101,"1033,57866011703 ",.01)
 ;;57866011703
