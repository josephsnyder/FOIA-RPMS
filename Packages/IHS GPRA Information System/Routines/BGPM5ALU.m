BGPM5ALU ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"900,53869297003 ",.01)
 ;;53869297003
 ;;9002226.02101,"900,53869297003 ",.02)
 ;;53869297003
 ;;9002226.02101,"900,53869298003 ",.01)
 ;;53869298003
 ;;9002226.02101,"900,53869298003 ",.02)
 ;;53869298003
 ;;9002226.02101,"900,53922041401 ",.01)
 ;;53922041401
 ;;9002226.02101,"900,53922041401 ",.02)
 ;;53922041401
 ;;9002226.02101,"900,53922041402 ",.01)
 ;;53922041402
 ;;9002226.02101,"900,53922041402 ",.02)
 ;;53922041402
 ;;9002226.02101,"900,53922041403 ",.01)
 ;;53922041403
 ;;9002226.02101,"900,53922041403 ",.02)
 ;;53922041403
 ;;9002226.02101,"900,53922041404 ",.01)
 ;;53922041404
 ;;9002226.02101,"900,53922041404 ",.02)
 ;;53922041404
 ;;9002226.02101,"900,53922041405 ",.01)
 ;;53922041405
 ;;9002226.02101,"900,53922041405 ",.02)
 ;;53922041405
 ;;9002226.02101,"900,53922041406 ",.01)
 ;;53922041406
 ;;9002226.02101,"900,53922041406 ",.02)
 ;;53922041406
 ;;9002226.02101,"900,53922041409 ",.01)
 ;;53922041409
 ;;9002226.02101,"900,53922041409 ",.02)
 ;;53922041409
 ;;9002226.02101,"900,53978090303 ",.01)
 ;;53978090303
 ;;9002226.02101,"900,53978090303 ",.02)
 ;;53978090303
 ;;9002226.02101,"900,53978203307 ",.01)
 ;;53978203307
 ;;9002226.02101,"900,53978203307 ",.02)
 ;;53978203307
 ;;9002226.02101,"900,53978203308 ",.01)
 ;;53978203308
 ;;9002226.02101,"900,53978203308 ",.02)
 ;;53978203308
 ;;9002226.02101,"900,53978364601 ",.01)
 ;;53978364601
 ;;9002226.02101,"900,53978364601 ",.02)
 ;;53978364601
 ;;9002226.02101,"900,53978364603 ",.01)
 ;;53978364603
 ;;9002226.02101,"900,53978364603 ",.02)
 ;;53978364603
 ;;9002226.02101,"900,54458093610 ",.01)
 ;;54458093610
 ;;9002226.02101,"900,54458093610 ",.02)
 ;;54458093610
 ;;9002226.02101,"900,54458093710 ",.01)
 ;;54458093710
 ;;9002226.02101,"900,54458093710 ",.02)
 ;;54458093710
 ;;9002226.02101,"900,54458093810 ",.01)
 ;;54458093810
 ;;9002226.02101,"900,54458093810 ",.02)
 ;;54458093810
 ;;9002226.02101,"900,54458098210 ",.01)
 ;;54458098210
 ;;9002226.02101,"900,54458098210 ",.02)
 ;;54458098210
 ;;9002226.02101,"900,54458098310 ",.01)
 ;;54458098310
 ;;9002226.02101,"900,54458098310 ",.02)
 ;;54458098310
 ;;9002226.02101,"900,54458098410 ",.01)
 ;;54458098410
 ;;9002226.02101,"900,54458098410 ",.02)
 ;;54458098410
 ;;9002226.02101,"900,54569061300 ",.01)
 ;;54569061300
 ;;9002226.02101,"900,54569061300 ",.02)
 ;;54569061300
 ;;9002226.02101,"900,54569061301 ",.01)
 ;;54569061301
 ;;9002226.02101,"900,54569061301 ",.02)
 ;;54569061301
 ;;9002226.02101,"900,54569061302 ",.01)
 ;;54569061302
 ;;9002226.02101,"900,54569061302 ",.02)
 ;;54569061302
 ;;9002226.02101,"900,54569061303 ",.01)
 ;;54569061303
 ;;9002226.02101,"900,54569061303 ",.02)
 ;;54569061303
 ;;9002226.02101,"900,54569061304 ",.01)
 ;;54569061304
 ;;9002226.02101,"900,54569061304 ",.02)
 ;;54569061304
 ;;9002226.02101,"900,54569130502 ",.01)
 ;;54569130502
 ;;9002226.02101,"900,54569130502 ",.02)
 ;;54569130502
 ;;9002226.02101,"900,54569225901 ",.01)
 ;;54569225901
 ;;9002226.02101,"900,54569225901 ",.02)
 ;;54569225901
 ;;9002226.02101,"900,54569325600 ",.01)
 ;;54569325600
 ;;9002226.02101,"900,54569325600 ",.02)
 ;;54569325600
 ;;9002226.02101,"900,54569325601 ",.01)
 ;;54569325601
 ;;9002226.02101,"900,54569325601 ",.02)
 ;;54569325601
 ;;9002226.02101,"900,54569342400 ",.01)
 ;;54569342400
 ;;9002226.02101,"900,54569342400 ",.02)
 ;;54569342400
 ;;9002226.02101,"900,54569369500 ",.01)
 ;;54569369500
 ;;9002226.02101,"900,54569369500 ",.02)
 ;;54569369500
 ;;9002226.02101,"900,54569382100 ",.01)
 ;;54569382100
 ;;9002226.02101,"900,54569382100 ",.02)
 ;;54569382100
 ;;9002226.02101,"900,54569382101 ",.01)
 ;;54569382101
 ;;9002226.02101,"900,54569382101 ",.02)
 ;;54569382101
 ;;9002226.02101,"900,54569418000 ",.01)
 ;;54569418000
 ;;9002226.02101,"900,54569418000 ",.02)
 ;;54569418000
 ;;9002226.02101,"900,54569418001 ",.01)
 ;;54569418001
 ;;9002226.02101,"900,54569418001 ",.02)
 ;;54569418001
 ;;9002226.02101,"900,54569440300 ",.01)
 ;;54569440300
 ;;9002226.02101,"900,54569440300 ",.02)
 ;;54569440300
 ;;9002226.02101,"900,54569440400 ",.01)
 ;;54569440400
 ;;9002226.02101,"900,54569440400 ",.02)
 ;;54569440400
 ;;9002226.02101,"900,54569446600 ",.01)
 ;;54569446600
 ;;9002226.02101,"900,54569446600 ",.02)
 ;;54569446600
 ;;9002226.02101,"900,54569446601 ",.01)
 ;;54569446601
 ;;9002226.02101,"900,54569446601 ",.02)
 ;;54569446601
 ;;9002226.02101,"900,54569446602 ",.01)
 ;;54569446602
 ;;9002226.02101,"900,54569446602 ",.02)
 ;;54569446602
 ;;9002226.02101,"900,54569446700 ",.01)
 ;;54569446700
 ;;9002226.02101,"900,54569446700 ",.02)
 ;;54569446700
 ;;9002226.02101,"900,54569446701 ",.01)
 ;;54569446701
 ;;9002226.02101,"900,54569446701 ",.02)
 ;;54569446701
 ;;9002226.02101,"900,54569458700 ",.01)
 ;;54569458700
 ;;9002226.02101,"900,54569458700 ",.02)
 ;;54569458700
 ;;9002226.02101,"900,54569458701 ",.01)
 ;;54569458701
 ;;9002226.02101,"900,54569458701 ",.02)
 ;;54569458701
 ;;9002226.02101,"900,54569466300 ",.01)
 ;;54569466300
 ;;9002226.02101,"900,54569466300 ",.02)
 ;;54569466300
 ;;9002226.02101,"900,54569466301 ",.01)
 ;;54569466301
 ;;9002226.02101,"900,54569466301 ",.02)
 ;;54569466301
 ;;9002226.02101,"900,54569476100 ",.01)
 ;;54569476100
 ;;9002226.02101,"900,54569476100 ",.02)
 ;;54569476100
 ;;9002226.02101,"900,54569534500 ",.01)
 ;;54569534500
 ;;9002226.02101,"900,54569534500 ",.02)
 ;;54569534500
 ;;9002226.02101,"900,54569534501 ",.01)
 ;;54569534501
 ;;9002226.02101,"900,54569534501 ",.02)
 ;;54569534501
 ;;9002226.02101,"900,54569534600 ",.01)
 ;;54569534600
 ;;9002226.02101,"900,54569534600 ",.02)
 ;;54569534600
 ;;9002226.02101,"900,54569534602 ",.01)
 ;;54569534602
 ;;9002226.02101,"900,54569534602 ",.02)
 ;;54569534602
 ;;9002226.02101,"900,54569534700 ",.01)
 ;;54569534700
 ;;9002226.02101,"900,54569534700 ",.02)
 ;;54569534700
 ;;9002226.02101,"900,54569534702 ",.01)
 ;;54569534702
 ;;9002226.02101,"900,54569534702 ",.02)
 ;;54569534702
 ;;9002226.02101,"900,54569538200 ",.01)
 ;;54569538200
 ;;9002226.02101,"900,54569538200 ",.02)
 ;;54569538200
 ;;9002226.02101,"900,54569538201 ",.01)
 ;;54569538201
 ;;9002226.02101,"900,54569538201 ",.02)
 ;;54569538201
 ;;9002226.02101,"900,54569542000 ",.01)
 ;;54569542000
 ;;9002226.02101,"900,54569542000 ",.02)
 ;;54569542000
 ;;9002226.02101,"900,54569545400 ",.01)
 ;;54569545400
 ;;9002226.02101,"900,54569545400 ",.02)
 ;;54569545400
 ;;9002226.02101,"900,54569548900 ",.01)
 ;;54569548900
 ;;9002226.02101,"900,54569548900 ",.02)
 ;;54569548900
 ;;9002226.02101,"900,54569548902 ",.01)
 ;;54569548902
 ;;9002226.02101,"900,54569548902 ",.02)
 ;;54569548902
 ;;9002226.02101,"900,54569560000 ",.01)
 ;;54569560000
 ;;9002226.02101,"900,54569560000 ",.02)
 ;;54569560000
 ;;9002226.02101,"900,54569560001 ",.01)
 ;;54569560001
 ;;9002226.02101,"900,54569560001 ",.02)
 ;;54569560001
 ;;9002226.02101,"900,54569564800 ",.01)
 ;;54569564800
 ;;9002226.02101,"900,54569564800 ",.02)
 ;;54569564800
 ;;9002226.02101,"900,54569567200 ",.01)
 ;;54569567200
 ;;9002226.02101,"900,54569567200 ",.02)
 ;;54569567200
 ;;9002226.02101,"900,54569567201 ",.01)
 ;;54569567201
 ;;9002226.02101,"900,54569567201 ",.02)
 ;;54569567201
 ;;9002226.02101,"900,54569570400 ",.01)
 ;;54569570400
 ;;9002226.02101,"900,54569570400 ",.02)
 ;;54569570400
 ;;9002226.02101,"900,54569574600 ",.01)
 ;;54569574600
 ;;9002226.02101,"900,54569574600 ",.02)
 ;;54569574600
 ;;9002226.02101,"900,54569574601 ",.01)
 ;;54569574601
 ;;9002226.02101,"900,54569574601 ",.02)
 ;;54569574601
 ;;9002226.02101,"900,54569575000 ",.01)
 ;;54569575000
 ;;9002226.02101,"900,54569575000 ",.02)
 ;;54569575000
 ;;9002226.02101,"900,54569575001 ",.01)
 ;;54569575001
 ;;9002226.02101,"900,54569575001 ",.02)
 ;;54569575001
 ;;9002226.02101,"900,54569576600 ",.01)
 ;;54569576600
 ;;9002226.02101,"900,54569576600 ",.02)
 ;;54569576600
 ;;9002226.02101,"900,54569576800 ",.01)
 ;;54569576800
 ;;9002226.02101,"900,54569576800 ",.02)
 ;;54569576800
 ;;9002226.02101,"900,54569588100 ",.01)
 ;;54569588100
 ;;9002226.02101,"900,54569588100 ",.02)
 ;;54569588100
 ;;9002226.02101,"900,54569595100 ",.01)
 ;;54569595100
 ;;9002226.02101,"900,54569595100 ",.02)
 ;;54569595100
 ;;9002226.02101,"900,54569609900 ",.01)
 ;;54569609900
 ;;9002226.02101,"900,54569609900 ",.02)
 ;;54569609900
 ;;9002226.02101,"900,54569801100 ",.01)
 ;;54569801100
 ;;9002226.02101,"900,54569801100 ",.02)
 ;;54569801100
 ;;9002226.02101,"900,54569801600 ",.01)
 ;;54569801600
 ;;9002226.02101,"900,54569801600 ",.02)
 ;;54569801600
 ;;9002226.02101,"900,54569851100 ",.01)
 ;;54569851100
 ;;9002226.02101,"900,54569851100 ",.02)
 ;;54569851100
 ;;9002226.02101,"900,54569851101 ",.01)
 ;;54569851101
 ;;9002226.02101,"900,54569851101 ",.02)
 ;;54569851101
 ;;9002226.02101,"900,54629005101 ",.01)
 ;;54629005101
 ;;9002226.02101,"900,54629005101 ",.02)
 ;;54629005101
 ;;9002226.02101,"900,54629007101 ",.01)
 ;;54629007101
 ;;9002226.02101,"900,54629007101 ",.02)
 ;;54629007101
 ;;9002226.02101,"900,54629066311 ",.01)
 ;;54629066311
 ;;9002226.02101,"900,54629066311 ",.02)
 ;;54629066311
 ;;9002226.02101,"900,54629066312 ",.01)
 ;;54629066312
 ;;9002226.02101,"900,54629066312 ",.02)
 ;;54629066312
 ;;9002226.02101,"900,54629066390 ",.01)
 ;;54629066390
 ;;9002226.02101,"900,54629066390 ",.02)
 ;;54629066390
 ;;9002226.02101,"900,54629071001 ",.01)
 ;;54629071001
 ;;9002226.02101,"900,54629071001 ",.02)
 ;;54629071001
 ;;9002226.02101,"900,54629071101 ",.01)
 ;;54629071101
 ;;9002226.02101,"900,54629071101 ",.02)
 ;;54629071101
 ;;9002226.02101,"900,54629071201 ",.01)
 ;;54629071201
 ;;9002226.02101,"900,54629071201 ",.02)
 ;;54629071201
 ;;9002226.02101,"900,54629071303 ",.01)
 ;;54629071303
 ;;9002226.02101,"900,54629071303 ",.02)
 ;;54629071303
 ;;9002226.02101,"900,54629071403 ",.01)
 ;;54629071403
 ;;9002226.02101,"900,54629071403 ",.02)
 ;;54629071403
 ;;9002226.02101,"900,54868068600 ",.01)
 ;;54868068600
 ;;9002226.02101,"900,54868068600 ",.02)
 ;;54868068600
 ;;9002226.02101,"900,54868068601 ",.01)
 ;;54868068601
 ;;9002226.02101,"900,54868068601 ",.02)
 ;;54868068601
 ;;9002226.02101,"900,54868068602 ",.01)
 ;;54868068602
 ;;9002226.02101,"900,54868068602 ",.02)
 ;;54868068602
 ;;9002226.02101,"900,54868068603 ",.01)
 ;;54868068603
 ;;9002226.02101,"900,54868068603 ",.02)
 ;;54868068603
 ;;9002226.02101,"900,54868068604 ",.01)
 ;;54868068604
 ;;9002226.02101,"900,54868068604 ",.02)
 ;;54868068604
 ;;9002226.02101,"900,54868108700 ",.01)
 ;;54868108700
 ;;9002226.02101,"900,54868108700 ",.02)
 ;;54868108700
 ;;9002226.02101,"900,54868108701 ",.01)
 ;;54868108701
 ;;9002226.02101,"900,54868108701 ",.02)
 ;;54868108701
 ;;9002226.02101,"900,54868120700 ",.01)
 ;;54868120700
 ;;9002226.02101,"900,54868120700 ",.02)
 ;;54868120700
 ;;9002226.02101,"900,54868120701 ",.01)
 ;;54868120701
 ;;9002226.02101,"900,54868120701 ",.02)
 ;;54868120701
 ;;9002226.02101,"900,54868141800 ",.01)
 ;;54868141800
 ;;9002226.02101,"900,54868141800 ",.02)
 ;;54868141800
 ;;9002226.02101,"900,54868141801 ",.01)
 ;;54868141801
 ;;9002226.02101,"900,54868141801 ",.02)
 ;;54868141801
 ;;9002226.02101,"900,54868188001 ",.01)
 ;;54868188001
 ;;9002226.02101,"900,54868188001 ",.02)
 ;;54868188001
 ;;9002226.02101,"900,54868188101 ",.01)
 ;;54868188101
 ;;9002226.02101,"900,54868188101 ",.02)
 ;;54868188101
 ;;9002226.02101,"900,54868189000 ",.01)
 ;;54868189000
 ;;9002226.02101,"900,54868189000 ",.02)
 ;;54868189000
