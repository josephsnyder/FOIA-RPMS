BGPM5ABX ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"830,54868521701 ",.02)
 ;;54868521701
 ;;9002226.02101,"830,54868521702 ",.01)
 ;;54868521702
 ;;9002226.02101,"830,54868521702 ",.02)
 ;;54868521702
 ;;9002226.02101,"830,54868521703 ",.01)
 ;;54868521703
 ;;9002226.02101,"830,54868521703 ",.02)
 ;;54868521703
 ;;9002226.02101,"830,54868521704 ",.01)
 ;;54868521704
 ;;9002226.02101,"830,54868521704 ",.02)
 ;;54868521704
 ;;9002226.02101,"830,54868521705 ",.01)
 ;;54868521705
 ;;9002226.02101,"830,54868521705 ",.02)
 ;;54868521705
 ;;9002226.02101,"830,54868524300 ",.01)
 ;;54868524300
 ;;9002226.02101,"830,54868524300 ",.02)
 ;;54868524300
 ;;9002226.02101,"830,54868524301 ",.01)
 ;;54868524301
 ;;9002226.02101,"830,54868524301 ",.02)
 ;;54868524301
 ;;9002226.02101,"830,54868524302 ",.01)
 ;;54868524302
 ;;9002226.02101,"830,54868524302 ",.02)
 ;;54868524302
 ;;9002226.02101,"830,54868524303 ",.01)
 ;;54868524303
 ;;9002226.02101,"830,54868524303 ",.02)
 ;;54868524303
 ;;9002226.02101,"830,54868524304 ",.01)
 ;;54868524304
 ;;9002226.02101,"830,54868524304 ",.02)
 ;;54868524304
 ;;9002226.02101,"830,54868546700 ",.01)
 ;;54868546700
 ;;9002226.02101,"830,54868546700 ",.02)
 ;;54868546700
 ;;9002226.02101,"830,54868546701 ",.01)
 ;;54868546701
 ;;9002226.02101,"830,54868546701 ",.02)
 ;;54868546701
 ;;9002226.02101,"830,54868546702 ",.01)
 ;;54868546702
 ;;9002226.02101,"830,54868546702 ",.02)
 ;;54868546702
 ;;9002226.02101,"830,54868550500 ",.01)
 ;;54868550500
 ;;9002226.02101,"830,54868550500 ",.02)
 ;;54868550500
 ;;9002226.02101,"830,54868550501 ",.01)
 ;;54868550501
 ;;9002226.02101,"830,54868550501 ",.02)
 ;;54868550501
 ;;9002226.02101,"830,54868550502 ",.01)
 ;;54868550502
 ;;9002226.02101,"830,54868550502 ",.02)
 ;;54868550502
 ;;9002226.02101,"830,54907076701 ",.01)
 ;;54907076701
 ;;9002226.02101,"830,54907076701 ",.02)
 ;;54907076701
 ;;9002226.02101,"830,54907086001 ",.01)
 ;;54907086001
 ;;9002226.02101,"830,54907086001 ",.02)
 ;;54907086001
 ;;9002226.02101,"830,54907086003 ",.01)
 ;;54907086003
 ;;9002226.02101,"830,54907086003 ",.02)
 ;;54907086003
 ;;9002226.02101,"830,54907086004 ",.01)
 ;;54907086004
 ;;9002226.02101,"830,54907086004 ",.02)
 ;;54907086004
 ;;9002226.02101,"830,54907086005 ",.01)
 ;;54907086005
 ;;9002226.02101,"830,54907086005 ",.02)
 ;;54907086005
 ;;9002226.02101,"830,55045290400 ",.01)
 ;;55045290400
 ;;9002226.02101,"830,55045290400 ",.02)
 ;;55045290400
 ;;9002226.02101,"830,55045290402 ",.01)
 ;;55045290402
 ;;9002226.02101,"830,55045290402 ",.02)
 ;;55045290402
 ;;9002226.02101,"830,55045290409 ",.01)
 ;;55045290409
 ;;9002226.02101,"830,55045290409 ",.02)
 ;;55045290409
 ;;9002226.02101,"830,55045290500 ",.01)
 ;;55045290500
 ;;9002226.02101,"830,55045290500 ",.02)
 ;;55045290500
 ;;9002226.02101,"830,55045290503 ",.01)
 ;;55045290503
 ;;9002226.02101,"830,55045290503 ",.02)
 ;;55045290503
 ;;9002226.02101,"830,55045290506 ",.01)
 ;;55045290506
 ;;9002226.02101,"830,55045290506 ",.02)
 ;;55045290506
 ;;9002226.02101,"830,55045290508 ",.01)
 ;;55045290508
 ;;9002226.02101,"830,55045290508 ",.02)
 ;;55045290508
 ;;9002226.02101,"830,55045290600 ",.01)
 ;;55045290600
 ;;9002226.02101,"830,55045290600 ",.02)
 ;;55045290600
 ;;9002226.02101,"830,55045290601 ",.01)
 ;;55045290601
 ;;9002226.02101,"830,55045290601 ",.02)
 ;;55045290601
 ;;9002226.02101,"830,55045290602 ",.01)
 ;;55045290602
 ;;9002226.02101,"830,55045290602 ",.02)
 ;;55045290602
 ;;9002226.02101,"830,55045290606 ",.01)
 ;;55045290606
 ;;9002226.02101,"830,55045290606 ",.02)
 ;;55045290606
 ;;9002226.02101,"830,55045290609 ",.01)
 ;;55045290609
 ;;9002226.02101,"830,55045290609 ",.02)
 ;;55045290609
 ;;9002226.02101,"830,55045328701 ",.01)
 ;;55045328701
 ;;9002226.02101,"830,55045328701 ",.02)
 ;;55045328701
 ;;9002226.02101,"830,55111042901 ",.01)
 ;;55111042901
 ;;9002226.02101,"830,55111042901 ",.02)
 ;;55111042901
 ;;9002226.02101,"830,55111042905 ",.01)
 ;;55111042905
 ;;9002226.02101,"830,55111042905 ",.02)
 ;;55111042905
 ;;9002226.02101,"830,55111042910 ",.01)
 ;;55111042910
 ;;9002226.02101,"830,55111042910 ",.02)
 ;;55111042910
 ;;9002226.02101,"830,55111042930 ",.01)
 ;;55111042930
 ;;9002226.02101,"830,55111042930 ",.02)
 ;;55111042930
 ;;9002226.02101,"830,55111042960 ",.01)
 ;;55111042960
 ;;9002226.02101,"830,55111042960 ",.02)
 ;;55111042960
 ;;9002226.02101,"830,55111042978 ",.01)
 ;;55111042978
 ;;9002226.02101,"830,55111042978 ",.02)
 ;;55111042978
 ;;9002226.02101,"830,55111043001 ",.01)
 ;;55111043001
 ;;9002226.02101,"830,55111043001 ",.02)
 ;;55111043001
 ;;9002226.02101,"830,55111043005 ",.01)
 ;;55111043005
 ;;9002226.02101,"830,55111043005 ",.02)
 ;;55111043005
 ;;9002226.02101,"830,55111043030 ",.01)
 ;;55111043030
 ;;9002226.02101,"830,55111043030 ",.02)
 ;;55111043030
 ;;9002226.02101,"830,55111043060 ",.01)
 ;;55111043060
 ;;9002226.02101,"830,55111043060 ",.02)
 ;;55111043060
 ;;9002226.02101,"830,55111043078 ",.01)
 ;;55111043078
 ;;9002226.02101,"830,55111043078 ",.02)
 ;;55111043078
 ;;9002226.02101,"830,55111043101 ",.01)
 ;;55111043101
 ;;9002226.02101,"830,55111043101 ",.02)
 ;;55111043101
 ;;9002226.02101,"830,55111043105 ",.01)
 ;;55111043105
 ;;9002226.02101,"830,55111043105 ",.02)
 ;;55111043105
 ;;9002226.02101,"830,55111043130 ",.01)
 ;;55111043130
 ;;9002226.02101,"830,55111043130 ",.02)
 ;;55111043130
 ;;9002226.02101,"830,55111043160 ",.01)
 ;;55111043160
 ;;9002226.02101,"830,55111043160 ",.02)
 ;;55111043160
 ;;9002226.02101,"830,55111043178 ",.01)
 ;;55111043178
 ;;9002226.02101,"830,55111043178 ",.02)
 ;;55111043178
 ;;9002226.02101,"830,55111069501 ",.01)
 ;;55111069501
 ;;9002226.02101,"830,55111069501 ",.02)
 ;;55111069501
 ;;9002226.02101,"830,55111069505 ",.01)
 ;;55111069505
 ;;9002226.02101,"830,55111069505 ",.02)
 ;;55111069505
 ;;9002226.02101,"830,55111069510 ",.01)
 ;;55111069510
 ;;9002226.02101,"830,55111069510 ",.02)
 ;;55111069510
 ;;9002226.02101,"830,55111069601 ",.01)
 ;;55111069601
 ;;9002226.02101,"830,55111069601 ",.02)
 ;;55111069601
 ;;9002226.02101,"830,55111069605 ",.01)
 ;;55111069605
 ;;9002226.02101,"830,55111069605 ",.02)
 ;;55111069605
 ;;9002226.02101,"830,55111069610 ",.01)
 ;;55111069610
 ;;9002226.02101,"830,55111069610 ",.02)
 ;;55111069610
 ;;9002226.02101,"830,55111069701 ",.01)
 ;;55111069701
 ;;9002226.02101,"830,55111069701 ",.02)
 ;;55111069701
 ;;9002226.02101,"830,55111069705 ",.01)
 ;;55111069705
 ;;9002226.02101,"830,55111069705 ",.02)
 ;;55111069705
 ;;9002226.02101,"830,55111069710 ",.01)
 ;;55111069710
 ;;9002226.02101,"830,55111069710 ",.02)
 ;;55111069710
 ;;9002226.02101,"830,55154167509 ",.01)
 ;;55154167509
 ;;9002226.02101,"830,55154167509 ",.02)
 ;;55154167509
 ;;9002226.02101,"830,55154167609 ",.01)
 ;;55154167609
 ;;9002226.02101,"830,55154167609 ",.02)
 ;;55154167609
 ;;9002226.02101,"830,55154205800 ",.01)
 ;;55154205800
 ;;9002226.02101,"830,55154205800 ",.02)
 ;;55154205800
 ;;9002226.02101,"830,55154343709 ",.01)
 ;;55154343709
 ;;9002226.02101,"830,55154343709 ",.02)
 ;;55154343709
 ;;9002226.02101,"830,55154375001 ",.01)
 ;;55154375001
 ;;9002226.02101,"830,55154375001 ",.02)
 ;;55154375001
 ;;9002226.02101,"830,55154456103 ",.01)
 ;;55154456103
 ;;9002226.02101,"830,55154456103 ",.02)
 ;;55154456103
 ;;9002226.02101,"830,55154542209 ",.01)
 ;;55154542209
 ;;9002226.02101,"830,55154542209 ",.02)
 ;;55154542209
 ;;9002226.02101,"830,55154548700 ",.01)
 ;;55154548700
 ;;9002226.02101,"830,55154548700 ",.02)
 ;;55154548700
 ;;9002226.02101,"830,55154548707 ",.01)
 ;;55154548707
 ;;9002226.02101,"830,55154548707 ",.02)
 ;;55154548707
 ;;9002226.02101,"830,55154585003 ",.01)
 ;;55154585003
 ;;9002226.02101,"830,55154585003 ",.02)
 ;;55154585003
 ;;9002226.02101,"830,55154665703 ",.01)
 ;;55154665703
 ;;9002226.02101,"830,55154665703 ",.02)
 ;;55154665703
 ;;9002226.02101,"830,55160014301 ",.01)
 ;;55160014301
 ;;9002226.02101,"830,55160014301 ",.02)
 ;;55160014301
 ;;9002226.02101,"830,55160014305 ",.01)
 ;;55160014305
 ;;9002226.02101,"830,55160014305 ",.02)
 ;;55160014305
 ;;9002226.02101,"830,55160014401 ",.01)
 ;;55160014401
 ;;9002226.02101,"830,55160014401 ",.02)
 ;;55160014401
 ;;9002226.02101,"830,55160014501 ",.01)
 ;;55160014501
 ;;9002226.02101,"830,55160014501 ",.02)
 ;;55160014501
 ;;9002226.02101,"830,55289028130 ",.01)
 ;;55289028130
 ;;9002226.02101,"830,55289028130 ",.02)
 ;;55289028130
 ;;9002226.02101,"830,55289028160 ",.01)
 ;;55289028160
 ;;9002226.02101,"830,55289028160 ",.02)
 ;;55289028160
 ;;9002226.02101,"830,55289028186 ",.01)
 ;;55289028186
 ;;9002226.02101,"830,55289028186 ",.02)
 ;;55289028186
 ;;9002226.02101,"830,55289028190 ",.01)
 ;;55289028190
 ;;9002226.02101,"830,55289028190 ",.02)
 ;;55289028190
 ;;9002226.02101,"830,55289038430 ",.01)
 ;;55289038430
 ;;9002226.02101,"830,55289038430 ",.02)
 ;;55289038430
 ;;9002226.02101,"830,55289038460 ",.01)
 ;;55289038460
 ;;9002226.02101,"830,55289038460 ",.02)
 ;;55289038460
 ;;9002226.02101,"830,55289038486 ",.01)
 ;;55289038486
 ;;9002226.02101,"830,55289038486 ",.02)
 ;;55289038486
 ;;9002226.02101,"830,55289038490 ",.01)
 ;;55289038490
 ;;9002226.02101,"830,55289038490 ",.02)
 ;;55289038490
 ;;9002226.02101,"830,55289038493 ",.01)
 ;;55289038493
 ;;9002226.02101,"830,55289038493 ",.02)
 ;;55289038493
 ;;9002226.02101,"830,55289038494 ",.01)
 ;;55289038494
 ;;9002226.02101,"830,55289038494 ",.02)
 ;;55289038494
 ;;9002226.02101,"830,55289061514 ",.01)
 ;;55289061514
 ;;9002226.02101,"830,55289061514 ",.02)
 ;;55289061514
 ;;9002226.02101,"830,55289061530 ",.01)
 ;;55289061530
 ;;9002226.02101,"830,55289061530 ",.02)
 ;;55289061530
 ;;9002226.02101,"830,55289061560 ",.01)
 ;;55289061560
 ;;9002226.02101,"830,55289061560 ",.02)
 ;;55289061560
 ;;9002226.02101,"830,55289061586 ",.01)
 ;;55289061586
 ;;9002226.02101,"830,55289061586 ",.02)
 ;;55289061586
 ;;9002226.02101,"830,55289061590 ",.01)
 ;;55289061590
 ;;9002226.02101,"830,55289061590 ",.02)
 ;;55289061590
 ;;9002226.02101,"830,55289061593 ",.01)
 ;;55289061593
 ;;9002226.02101,"830,55289061593 ",.02)
 ;;55289061593
 ;;9002226.02101,"830,55289061594 ",.01)
 ;;55289061594
 ;;9002226.02101,"830,55289061594 ",.02)
 ;;55289061594
 ;;9002226.02101,"830,55289061598 ",.01)
 ;;55289061598
 ;;9002226.02101,"830,55289061598 ",.02)
 ;;55289061598
 ;;9002226.02101,"830,55289091930 ",.01)
 ;;55289091930
 ;;9002226.02101,"830,55289091930 ",.02)
 ;;55289091930
 ;;9002226.02101,"830,55289091960 ",.01)
 ;;55289091960
 ;;9002226.02101,"830,55289091960 ",.02)
 ;;55289091960
 ;;9002226.02101,"830,55289091990 ",.01)
 ;;55289091990
 ;;9002226.02101,"830,55289091990 ",.02)
 ;;55289091990
 ;;9002226.02101,"830,55289091993 ",.01)
 ;;55289091993
 ;;9002226.02101,"830,55289091993 ",.02)
 ;;55289091993
 ;;9002226.02101,"830,55289091994 ",.01)
 ;;55289091994
 ;;9002226.02101,"830,55289091994 ",.02)
 ;;55289091994
 ;;9002226.02101,"830,55289091998 ",.01)
 ;;55289091998
 ;;9002226.02101,"830,55289091998 ",.02)
 ;;55289091998
 ;;9002226.02101,"830,55289093430 ",.01)
 ;;55289093430
 ;;9002226.02101,"830,55289093430 ",.02)
 ;;55289093430
 ;;9002226.02101,"830,55289093460 ",.01)
 ;;55289093460
 ;;9002226.02101,"830,55289093460 ",.02)
 ;;55289093460
 ;;9002226.02101,"830,55289093493 ",.01)
 ;;55289093493
 ;;9002226.02101,"830,55289093493 ",.02)
 ;;55289093493
 ;;9002226.02101,"830,55289093494 ",.01)
 ;;55289093494
 ;;9002226.02101,"830,55289093494 ",.02)
 ;;55289093494
 ;;9002226.02101,"830,55289093498 ",.01)
 ;;55289093498
