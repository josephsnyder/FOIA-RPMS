BGP06N ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;;BGP HEDIS CALCIUM CHANNEL NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS CALCIUM CHANNEL NDC
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
 ;;21,"00069-2600-66 ")
 ;;1
 ;;21,"00182-1547-01 ")
 ;;2
 ;;21,"00182-1547-96 ")
 ;;3
 ;;21,"00182-1548-01 ")
 ;;4
 ;;21,"00182-1548-96 ")
 ;;5
 ;;21,"00228-2497-10 ")
 ;;6
 ;;21,"00228-2497-30 ")
 ;;7
 ;;21,"00228-2530-10 ")
 ;;8
 ;;21,"00228-2530-30 ")
 ;;9
 ;;21,"00247-0206-00 ")
 ;;10
 ;;21,"00247-0206-01 ")
 ;;11
 ;;21,"00247-0206-02 ")
 ;;12
 ;;21,"00247-0206-03 ")
 ;;13
 ;;21,"00247-0206-05 ")
 ;;14
 ;;21,"00247-0206-06 ")
 ;;15
 ;;21,"00247-0206-09 ")
 ;;16
 ;;21,"00247-0206-10 ")
 ;;17
 ;;21,"00247-0206-12 ")
 ;;18
 ;;21,"00247-0206-14 ")
 ;;19
 ;;21,"00247-0206-15 ")
 ;;20
 ;;21,"00247-0206-20 ")
 ;;21
 ;;21,"00247-0206-30 ")
 ;;22
 ;;21,"00247-0206-40 ")
 ;;23
 ;;21,"00247-0206-60 ")
 ;;24
 ;;21,"00247-0206-90 ")
 ;;25
 ;;21,"00247-1269-00 ")
 ;;26
 ;;21,"00247-1269-99 ")
 ;;27
 ;;21,"00339-5717-12 ")
 ;;28
 ;;21,"00339-5718-12 ")
 ;;29
 ;;21,"00364-2376-90 ")
 ;;30
 ;;21,"00615-0359-13 ")
 ;;31
 ;;21,"00615-0359-53 ")
 ;;32
 ;;21,"00615-0359-63 ")
 ;;33
 ;;21,"00615-0360-43 ")
 ;;34
 ;;21,"00615-0360-53 ")
 ;;35
 ;;21,"00615-0360-63 ")
 ;;36
 ;;21,"00781-2504-01 ")
 ;;37
 ;;21,"00781-2504-03 ")
 ;;38
 ;;21,"00781-2506-01 ")
 ;;39
 ;;21,"17236-0923-11 ")
 ;;40
 ;;21,"33358-0261-00 ")
 ;;41
 ;;21,"33358-0261-20 ")
 ;;42
 ;;21,"33358-0261-30 ")
 ;;43
 ;;21,"33358-0261-90 ")
 ;;44
 ;;21,"49999-0161-90 ")
 ;;45
 ;;21,"52959-0273-00 ")
 ;;46
 ;;21,"52959-0273-01 ")
 ;;47
 ;;21,"52959-0273-08 ")
 ;;48
 ;;21,"52959-0273-10 ")
 ;;49
 ;;21,"52959-0273-20 ")
 ;;50
 ;;21,"52959-0273-30 ")
 ;;51
 ;;21,"52959-0273-40 ")
 ;;52
 ;;21,"52959-0273-50 ")
 ;;53
 ;;21,"52959-0273-60 ")
 ;;54
 ;;21,"52959-0273-80 ")
 ;;55
 ;;21,"52959-0488-30 ")
 ;;56
 ;;21,"54569-3121-00 ")
 ;;57
 ;;21,"54569-3121-01 ")
 ;;58
 ;;21,"54569-3121-02 ")
 ;;59
 ;;21,"54569-3121-03 ")
 ;;60
 ;;21,"54569-3121-04 ")
 ;;61
 ;;21,"54569-3121-05 ")
 ;;62
 ;;21,"54569-3122-02 ")
 ;;63
 ;;21,"54868-1326-00 ")
 ;;64
 ;;21,"54868-1326-02 ")
 ;;65
 ;;21,"54868-1326-04 ")
 ;;66
 ;;21,"54868-1326-05 ")
 ;;67
 ;;21,"54868-1326-06 ")
 ;;68
 ;;21,"54868-1521-00 ")
 ;;69
 ;;21,"54868-1521-02 ")
 ;;70
 ;;21,"55289-0907-08 ")
 ;;71
 ;;21,"55289-0907-30 ")
 ;;72
 ;;21,"55289-0907-79 ")
 ;;73
 ;;21,"55289-0907-97 ")
 ;;74
 ;;21,"55887-0668-01 ")
 ;;75
 ;;21,"55887-0668-10 ")
 ;;76
 ;;21,"55887-0668-13 ")
 ;;77
 ;;21,"55887-0668-15 ")
 ;;78
 ;;21,"55887-0668-30 ")
 ;;79
 ;;21,"58016-0620-00 ")
 ;;80
 ;;21,"58016-0620-12 ")
 ;;81
 ;;21,"58016-0620-15 ")
 ;;82
 ;;21,"58016-0620-20 ")
 ;;83
 ;;21,"58016-0620-30 ")
 ;;84
 ;;21,"58016-0620-90 ")
 ;;85
 ;;21,"58016-0622-00 ")
 ;;86
 ;;21,"58016-0622-08 ")
 ;;87
 ;;21,"58016-0622-12 ")
 ;;88
 ;;21,"58016-0622-15 ")
 ;;89
 ;;21,"58016-0622-20 ")
 ;;90
 ;;21,"58016-0622-30 ")
 ;;91
 ;;21,"58016-0622-50 ")
 ;;92
 ;;21,"58016-0622-60 ")
 ;;93
 ;;21,"58016-0622-90 ")
 ;;94
 ;;21,"61392-0353-30 ")
 ;;95
 ;;21,"61392-0353-31 ")
 ;;96
 ;;21,"61392-0353-32 ")
 ;;97
 ;;21,"61392-0353-34 ")
 ;;98
 ;;21,"61392-0353-36 ")
 ;;99
 ;;21,"61392-0353-39 ")
 ;;100
 ;;21,"61392-0353-45 ")
 ;;101
 ;;21,"61392-0353-51 ")
 ;;102
 ;;21,"61392-0353-54 ")
 ;;103
 ;;21,"61392-0353-56 ")
 ;;104
 ;;21,"61392-0353-60 ")
 ;;105
 ;;21,"61392-0353-90 ")
 ;;106
 ;;21,"61392-0353-91 ")
 ;;107
 ;;21,"61392-0356-15 ")
 ;;108
 ;;21,"61392-0356-30 ")
 ;;109
 ;;21,"61392-0356-31 ")
 ;;110
 ;;21,"61392-0356-32 ")
 ;;111
 ;;21,"61392-0356-39 ")
 ;;112
 ;;21,"61392-0356-45 ")
 ;;113
 ;;21,"61392-0356-51 ")
 ;;114
 ;;21,"61392-0356-54 ")
 ;;115
 ;;21,"61392-0356-56 ")
 ;;116
 ;;21,"61392-0356-60 ")
 ;;117
 ;;21,"61392-0356-90 ")
 ;;118
 ;;21,"61392-0356-91 ")
 ;;119
 ;;21,"63629-1558-01 ")
 ;;120
 ;;21,"63629-1558-02 ")
 ;;121
 ;;21,"63629-1558-03 ")
 ;;122
 ;;21,"63629-1558-04 ")
 ;;123
 ;;21,"63874-0338-01 ")
 ;;124
 ;;21,"63874-0338-03 ")
 ;;125
 ;;21,"63874-0338-08 ")
 ;;126
 ;;21,"63874-0338-10 ")
 ;;127
 ;;21,"63874-0338-12 ")
 ;;128
 ;;21,"63874-0338-15 ")
 ;;129
 ;;21,"63874-0338-20 ")
 ;;130
 ;;21,"63874-0338-30 ")
 ;;131
 ;;21,"63874-0338-50 ")
 ;;132
 ;;21,"63874-0338-60 ")
 ;;133
 ;;21,"63874-0338-90 ")
 ;;134
 ;;21,"68115-0255-30 ")
 ;;135
 ;;21,"68115-0472-60 ")
 ;;136
 ;;9002226,694,.01)
 ;;BGP HEDIS CALCIUM CHANNEL NDC
 ;;9002226,694,.02)
 ;;@
 ;;9002226,694,.04)
 ;;n
 ;;9002226,694,.06)
 ;;@
 ;;9002226,694,.08)
 ;;@
 ;;9002226,694,.09)
 ;;@
 ;;9002226,694,.11)
 ;;@
 ;;9002226,694,.12)
 ;;@
 ;;9002226,694,.13)
 ;;1
 ;;9002226,694,.14)
 ;;@
 ;;9002226,694,.15)
 ;;@
 ;;9002226,694,.16)
 ;;@
 ;;9002226,694,.17)
 ;;@
 ;;9002226,694,3101)
 ;;@
 ;;9002226.02101,"694,00069-2600-66 ",.01)
 ;;00069-2600-66
 ;;9002226.02101,"694,00069-2600-66 ",.02)
 ;;00069-2600-66
 ;;9002226.02101,"694,00182-1547-01 ",.01)
 ;;00182-1547-01
 ;;9002226.02101,"694,00182-1547-01 ",.02)
 ;;00182-1547-01
 ;;9002226.02101,"694,00182-1547-96 ",.01)
 ;;00182-1547-96
 ;;9002226.02101,"694,00182-1547-96 ",.02)
 ;;00182-1547-96
 ;;9002226.02101,"694,00182-1548-01 ",.01)
 ;;00182-1548-01
 ;;9002226.02101,"694,00182-1548-01 ",.02)
 ;;00182-1548-01
 ;;9002226.02101,"694,00182-1548-96 ",.01)
 ;;00182-1548-96
 ;;9002226.02101,"694,00182-1548-96 ",.02)
 ;;00182-1548-96
 ;;9002226.02101,"694,00228-2497-10 ",.01)
 ;;00228-2497-10
 ;;9002226.02101,"694,00228-2497-10 ",.02)
 ;;00228-2497-10
 ;;9002226.02101,"694,00228-2497-30 ",.01)
 ;;00228-2497-30
 ;;9002226.02101,"694,00228-2497-30 ",.02)
 ;;00228-2497-30
 ;;9002226.02101,"694,00228-2530-10 ",.01)
 ;;00228-2530-10
 ;;9002226.02101,"694,00228-2530-10 ",.02)
 ;;00228-2530-10
 ;;9002226.02101,"694,00228-2530-30 ",.01)
 ;;00228-2530-30
 ;;9002226.02101,"694,00228-2530-30 ",.02)
 ;;00228-2530-30
 ;;9002226.02101,"694,00247-0206-00 ",.01)
 ;;00247-0206-00
 ;;9002226.02101,"694,00247-0206-00 ",.02)
 ;;00247-0206-00
 ;;9002226.02101,"694,00247-0206-01 ",.01)
 ;;00247-0206-01
 ;;9002226.02101,"694,00247-0206-01 ",.02)
 ;;00247-0206-01
 ;;9002226.02101,"694,00247-0206-02 ",.01)
 ;;00247-0206-02
 ;;9002226.02101,"694,00247-0206-02 ",.02)
 ;;00247-0206-02
 ;;9002226.02101,"694,00247-0206-03 ",.01)
 ;;00247-0206-03
 ;;9002226.02101,"694,00247-0206-03 ",.02)
 ;;00247-0206-03
 ;;9002226.02101,"694,00247-0206-05 ",.01)
 ;;00247-0206-05
 ;;9002226.02101,"694,00247-0206-05 ",.02)
 ;;00247-0206-05
 ;;9002226.02101,"694,00247-0206-06 ",.01)
 ;;00247-0206-06
 ;;9002226.02101,"694,00247-0206-06 ",.02)
 ;;00247-0206-06
 ;;9002226.02101,"694,00247-0206-09 ",.01)
 ;;00247-0206-09
 ;;9002226.02101,"694,00247-0206-09 ",.02)
 ;;00247-0206-09
 ;;9002226.02101,"694,00247-0206-10 ",.01)
 ;;00247-0206-10
 ;;9002226.02101,"694,00247-0206-10 ",.02)
 ;;00247-0206-10
 ;;9002226.02101,"694,00247-0206-12 ",.01)
 ;;00247-0206-12
 ;;9002226.02101,"694,00247-0206-12 ",.02)
 ;;00247-0206-12
 ;;9002226.02101,"694,00247-0206-14 ",.01)
 ;;00247-0206-14
 ;;9002226.02101,"694,00247-0206-14 ",.02)
 ;;00247-0206-14
 ;;9002226.02101,"694,00247-0206-15 ",.01)
 ;;00247-0206-15
 ;;9002226.02101,"694,00247-0206-15 ",.02)
 ;;00247-0206-15
 ;;9002226.02101,"694,00247-0206-20 ",.01)
 ;;00247-0206-20
 ;;9002226.02101,"694,00247-0206-20 ",.02)
 ;;00247-0206-20
 ;;9002226.02101,"694,00247-0206-30 ",.01)
 ;;00247-0206-30
 ;;9002226.02101,"694,00247-0206-30 ",.02)
 ;;00247-0206-30
 ;;9002226.02101,"694,00247-0206-40 ",.01)
 ;;00247-0206-40
 ;;9002226.02101,"694,00247-0206-40 ",.02)
 ;;00247-0206-40
 ;;9002226.02101,"694,00247-0206-60 ",.01)
 ;;00247-0206-60
 ;;9002226.02101,"694,00247-0206-60 ",.02)
 ;;00247-0206-60
 ;;9002226.02101,"694,00247-0206-90 ",.01)
 ;;00247-0206-90
 ;;9002226.02101,"694,00247-0206-90 ",.02)
 ;;00247-0206-90
 ;;9002226.02101,"694,00247-1269-00 ",.01)
 ;;00247-1269-00
 ;;9002226.02101,"694,00247-1269-00 ",.02)
 ;;00247-1269-00
 ;;9002226.02101,"694,00247-1269-99 ",.01)
 ;;00247-1269-99
 ;;9002226.02101,"694,00247-1269-99 ",.02)
 ;;00247-1269-99
 ;;9002226.02101,"694,00339-5717-12 ",.01)
 ;;00339-5717-12
 ;;9002226.02101,"694,00339-5717-12 ",.02)
 ;;00339-5717-12
 ;;9002226.02101,"694,00339-5718-12 ",.01)
 ;;00339-5718-12
 ;;9002226.02101,"694,00339-5718-12 ",.02)
 ;;00339-5718-12
 ;;9002226.02101,"694,00364-2376-90 ",.01)
 ;;00364-2376-90
 ;;9002226.02101,"694,00364-2376-90 ",.02)
 ;;00364-2376-90
 ;;9002226.02101,"694,00615-0359-13 ",.01)
 ;;00615-0359-13
 ;;9002226.02101,"694,00615-0359-13 ",.02)
 ;;00615-0359-13
 ;;9002226.02101,"694,00615-0359-53 ",.01)
 ;;00615-0359-53
 ;;9002226.02101,"694,00615-0359-53 ",.02)
 ;;00615-0359-53
 ;;9002226.02101,"694,00615-0359-63 ",.01)
 ;;00615-0359-63
 ;;9002226.02101,"694,00615-0359-63 ",.02)
 ;;00615-0359-63
 ;;9002226.02101,"694,00615-0360-43 ",.01)
 ;;00615-0360-43
 ;;9002226.02101,"694,00615-0360-43 ",.02)
 ;;00615-0360-43
 ;;9002226.02101,"694,00615-0360-53 ",.01)
 ;;00615-0360-53
 ;;9002226.02101,"694,00615-0360-53 ",.02)
 ;;00615-0360-53
 ;;9002226.02101,"694,00615-0360-63 ",.01)
 ;;00615-0360-63
 ;;9002226.02101,"694,00615-0360-63 ",.02)
 ;;00615-0360-63
 ;;9002226.02101,"694,00781-2504-01 ",.01)
 ;;00781-2504-01
 ;;9002226.02101,"694,00781-2504-01 ",.02)
 ;;00781-2504-01
 ;;9002226.02101,"694,00781-2504-03 ",.01)
 ;;00781-2504-03
 ;;9002226.02101,"694,00781-2504-03 ",.02)
 ;;00781-2504-03
 ;;9002226.02101,"694,00781-2506-01 ",.01)
 ;;00781-2506-01
 ;;9002226.02101,"694,00781-2506-01 ",.02)
 ;;00781-2506-01
 ;;9002226.02101,"694,17236-0923-11 ",.01)
 ;;17236-0923-11
 ;;9002226.02101,"694,17236-0923-11 ",.02)
 ;;17236-0923-11
 ;;9002226.02101,"694,33358-0261-00 ",.01)
 ;;33358-0261-00
 ;;9002226.02101,"694,33358-0261-00 ",.02)
 ;;33358-0261-00
 ;;9002226.02101,"694,33358-0261-20 ",.01)
 ;;33358-0261-20
 ;;9002226.02101,"694,33358-0261-20 ",.02)
 ;;33358-0261-20
 ;;9002226.02101,"694,33358-0261-30 ",.01)
 ;;33358-0261-30
 ;;9002226.02101,"694,33358-0261-30 ",.02)
 ;;33358-0261-30
 ;;9002226.02101,"694,33358-0261-90 ",.01)
 ;;33358-0261-90
 ;;9002226.02101,"694,33358-0261-90 ",.02)
 ;;33358-0261-90
 ;;9002226.02101,"694,49999-0161-90 ",.01)
 ;;49999-0161-90
 ;;9002226.02101,"694,49999-0161-90 ",.02)
 ;;49999-0161-90
 ;;9002226.02101,"694,52959-0273-00 ",.01)
 ;;52959-0273-00
 ;;9002226.02101,"694,52959-0273-00 ",.02)
 ;;52959-0273-00
 ;;9002226.02101,"694,52959-0273-01 ",.01)
 ;;52959-0273-01
 ;;9002226.02101,"694,52959-0273-01 ",.02)
 ;;52959-0273-01
 ;;9002226.02101,"694,52959-0273-08 ",.01)
 ;;52959-0273-08
 ;;9002226.02101,"694,52959-0273-08 ",.02)
 ;;52959-0273-08
 ;;9002226.02101,"694,52959-0273-10 ",.01)
 ;;52959-0273-10
 ;;9002226.02101,"694,52959-0273-10 ",.02)
 ;;52959-0273-10
 ;;9002226.02101,"694,52959-0273-20 ",.01)
 ;;52959-0273-20
 ;;9002226.02101,"694,52959-0273-20 ",.02)
 ;;52959-0273-20
 ;;9002226.02101,"694,52959-0273-30 ",.01)
 ;;52959-0273-30
 ;;9002226.02101,"694,52959-0273-30 ",.02)
 ;;52959-0273-30
 ;;9002226.02101,"694,52959-0273-40 ",.01)
 ;;52959-0273-40
 ;;9002226.02101,"694,52959-0273-40 ",.02)
 ;;52959-0273-40
 ;;9002226.02101,"694,52959-0273-50 ",.01)
 ;;52959-0273-50
 ;;9002226.02101,"694,52959-0273-50 ",.02)
 ;;52959-0273-50
 ;;9002226.02101,"694,52959-0273-60 ",.01)
 ;;52959-0273-60
 ;;9002226.02101,"694,52959-0273-60 ",.02)
 ;;52959-0273-60
 ;;9002226.02101,"694,52959-0273-80 ",.01)
 ;;52959-0273-80
 ;;9002226.02101,"694,52959-0273-80 ",.02)
 ;;52959-0273-80
 ;;9002226.02101,"694,52959-0488-30 ",.01)
 ;;52959-0488-30
 ;;9002226.02101,"694,52959-0488-30 ",.02)
 ;;52959-0488-30
 ;;9002226.02101,"694,54569-3121-00 ",.01)
 ;;54569-3121-00
 ;;9002226.02101,"694,54569-3121-00 ",.02)
 ;;54569-3121-00
 ;;9002226.02101,"694,54569-3121-01 ",.01)
 ;;54569-3121-01
 ;;9002226.02101,"694,54569-3121-01 ",.02)
 ;;54569-3121-01
 ;;9002226.02101,"694,54569-3121-02 ",.01)
 ;;54569-3121-02
 ;;9002226.02101,"694,54569-3121-02 ",.02)
 ;;54569-3121-02
 ;;9002226.02101,"694,54569-3121-03 ",.01)
 ;;54569-3121-03
 ;;9002226.02101,"694,54569-3121-03 ",.02)
 ;;54569-3121-03
 ;;9002226.02101,"694,54569-3121-04 ",.01)
 ;;54569-3121-04
 ;;9002226.02101,"694,54569-3121-04 ",.02)
 ;;54569-3121-04
 ;;9002226.02101,"694,54569-3121-05 ",.01)
 ;;54569-3121-05
 ;;9002226.02101,"694,54569-3121-05 ",.02)
 ;;54569-3121-05
 ;;9002226.02101,"694,54569-3122-02 ",.01)
 ;;54569-3122-02
 ;;9002226.02101,"694,54569-3122-02 ",.02)
 ;;54569-3122-02
 ;;9002226.02101,"694,54868-1326-00 ",.01)
 ;;54868-1326-00
 ;;9002226.02101,"694,54868-1326-00 ",.02)
 ;;54868-1326-00
 ;;9002226.02101,"694,54868-1326-02 ",.01)
 ;;54868-1326-02
 ;;9002226.02101,"694,54868-1326-02 ",.02)
 ;;54868-1326-02
 ;;9002226.02101,"694,54868-1326-04 ",.01)
 ;;54868-1326-04
 ;;9002226.02101,"694,54868-1326-04 ",.02)
 ;;54868-1326-04
 ;;9002226.02101,"694,54868-1326-05 ",.01)
 ;;54868-1326-05
 ;;9002226.02101,"694,54868-1326-05 ",.02)
 ;;54868-1326-05
 ;;9002226.02101,"694,54868-1326-06 ",.01)
 ;;54868-1326-06
 ;;9002226.02101,"694,54868-1326-06 ",.02)
 ;;54868-1326-06
 ;;9002226.02101,"694,54868-1521-00 ",.01)
 ;;54868-1521-00
 ;
OTHER ; OTHER ROUTINES
 D ^BGP06N2
 D ^BGP06N3
 D ^BGP06N4
 D ^BGP06N5
 D ^BGP06N6
 Q