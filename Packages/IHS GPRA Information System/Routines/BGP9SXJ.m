BGP9SXJ ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP HEDIS BELLADONNA ALKA NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS BELLADONNA ALKA NDC
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
 ;;21,"00002-1675-01 ")
 ;;1
 ;;21,"00025-0061-31 ")
 ;;2
 ;;21,"00025-0061-34 ")
 ;;3
 ;;21,"00025-0061-51 ")
 ;;4
 ;;21,"00025-0061-52 ")
 ;;5
 ;;21,"00025-0061-55 ")
 ;;6
 ;;21,"00025-0066-02 ")
 ;;7
 ;;21,"00031-4221-12 ")
 ;;8
 ;;21,"00031-4221-25 ")
 ;;9
 ;;21,"00031-4221-29 ")
 ;;10
 ;;21,"00037-0301-92 ")
 ;;11
 ;;21,"00054-3194-46 ")
 ;;12
 ;;21,"00054-8171-16 ")
 ;;13
 ;;21,"00054-8191-16 ")
 ;;14
 ;;21,"00067-4345-04 ")
 ;;15
 ;;21,"00067-4346-24 ")
 ;;16
 ;;21,"00074-1630-10 ")
 ;;17
 ;;21,"00074-4910-01 ")
 ;;18
 ;;21,"00074-4910-15 ")
 ;;19
 ;;21,"00074-4910-33 ")
 ;;20
 ;;21,"00074-4910-34 ")
 ;;21
 ;;21,"00074-4911-01 ")
 ;;22
 ;;21,"00074-4911-18 ")
 ;;23
 ;;21,"00074-4911-33 ")
 ;;24
 ;;21,"00074-4911-34 ")
 ;;25
 ;;21,"00074-7897-15 ")
 ;;26
 ;;21,"00074-9629-02 ")
 ;;27
 ;;21,"00074-9629-05 ")
 ;;28
 ;;21,"00074-9630-05 ")
 ;;29
 ;;21,"00076-0108-03 ")
 ;;30
 ;;21,"00076-0805-03 ")
 ;;31
 ;;21,"00076-0909-90 ")
 ;;32
 ;;21,"00086-0074-05 ")
 ;;33
 ;;21,"00086-0074-10 ")
 ;;34
 ;;21,"00091-0202-01 ")
 ;;35
 ;;21,"00091-1536-05 ")
 ;;36
 ;;21,"00091-3111-01 ")
 ;;37
 ;;21,"00091-3531-01 ")
 ;;38
 ;;21,"00091-3531-05 ")
 ;;39
 ;;21,"00091-3532-01 ")
 ;;40
 ;;21,"00091-3532-05 ")
 ;;41
 ;;21,"00091-3534-01 ")
 ;;42
 ;;21,"00091-3537-01 ")
 ;;43
 ;;21,"00091-3537-05 ")
 ;;44
 ;;21,"00091-3538-01 ")
 ;;45
 ;;21,"00091-3538-05 ")
 ;;46
 ;;21,"00091-4532-16 ")
 ;;47
 ;;21,"00091-4536-15 ")
 ;;48
 ;;21,"00091-4538-15 ")
 ;;49
 ;;21,"00115-4652-01 ")
 ;;50
 ;;21,"00115-4652-03 ")
 ;;51
 ;;21,"00143-1140-10 ")
 ;;52
 ;;21,"00143-1140-51 ")
 ;;53
 ;;21,"00144-0716-01 ")
 ;;54
 ;;21,"00144-0717-01 ")
 ;;55
 ;;21,"00172-3966-60 ")
 ;;56
 ;;21,"00172-3966-80 ")
 ;;57
 ;;21,"00182-0686-40 ")
 ;;58
 ;;21,"00182-0686-41 ")
 ;;59
 ;;21,"00182-0850-01 ")
 ;;60
 ;;21,"00182-1048-10 ")
 ;;61
 ;;21,"00182-1607-01 ")
 ;;62
 ;;21,"00182-1990-01 ")
 ;;63
 ;;21,"00182-1993-01 ")
 ;;64
 ;;21,"00182-6136-40 ")
 ;;65
 ;;21,"00182-8180-89 ")
 ;;66
 ;;21,"00185-0024-01 ")
 ;;67
 ;;21,"00185-0024-05 ")
 ;;68
 ;;21,"00185-0024-10 ")
 ;;69
 ;;21,"00185-0230-01 ")
 ;;70
 ;;21,"00185-0230-10 ")
 ;;71
 ;;21,"00187-0500-01 ")
 ;;72
 ;;21,"00187-0500-02 ")
 ;;73
 ;;21,"00223-0425-01 ")
 ;;74
 ;;21,"00223-0425-03 ")
 ;;75
 ;;21,"00223-6419-01 ")
 ;;76
 ;;21,"00223-6419-02 ")
 ;;77
 ;;21,"00223-6419-03 ")
 ;;78
 ;;21,"00223-7191-25 ")
 ;;79
 ;;21,"00223-7192-00 ")
 ;;80
 ;;21,"00223-7193-25 ")
 ;;81
 ;;21,"00223-7206-01 ")
 ;;82
 ;;21,"00223-8414-25 ")
 ;;83
 ;;21,"00225-0295-15 ")
 ;;84
 ;;21,"00225-0295-20 ")
 ;;85
 ;;21,"00247-0095-00 ")
 ;;86
 ;;21,"00247-0095-03 ")
 ;;87
 ;;21,"00247-0095-04 ")
 ;;88
 ;;21,"00247-0095-06 ")
 ;;89
 ;;21,"00247-0095-08 ")
 ;;90
 ;;21,"00247-0095-10 ")
 ;;91
 ;;21,"00247-0095-12 ")
 ;;92
 ;;21,"00247-0095-15 ")
 ;;93
 ;;21,"00247-0095-16 ")
 ;;94
 ;;21,"00247-0095-18 ")
 ;;95
 ;;21,"00247-0095-20 ")
 ;;96
 ;;21,"00247-0095-30 ")
 ;;97
 ;;21,"00247-0095-40 ")
 ;;98
 ;;21,"00247-0095-50 ")
 ;;99
 ;;21,"00254-2320-28 ")
 ;;100
 ;;21,"00254-2320-38 ")
 ;;101
 ;;21,"00254-9035-58 ")
 ;;102
 ;;21,"00254-9216-43 ")
 ;;103
 ;;21,"00314-0011-01 ")
 ;;104
 ;;21,"00314-0408-01 ")
 ;;105
 ;;21,"00314-0408-10 ")
 ;;106
 ;;21,"00339-4037-12 ")
 ;;107
 ;;21,"00378-0415-01 ")
 ;;108
 ;;21,"00378-0415-10 ")
 ;;109
 ;;21,"00405-0080-03 ")
 ;;110
 ;;21,"00405-2350-16 ")
 ;;111
 ;;21,"00405-2910-61 ")
 ;;112
 ;;21,"00405-4521-01 ")
 ;;113
 ;;21,"00405-4523-01 ")
 ;;114
 ;;21,"00405-4633-01 ")
 ;;115
 ;;21,"00405-4794-01 ")
 ;;116
 ;;21,"00406-0463-01 ")
 ;;117
 ;;21,"00406-0463-10 ")
 ;;118
 ;;21,"00409-1630-10 ")
 ;;119
 ;;21,"00409-4910-15 ")
 ;;120
 ;;21,"00409-4910-34 ")
 ;;121
 ;;21,"00409-4911-34 ")
 ;;122
 ;;21,"00409-9629-05 ")
 ;;123
 ;;21,"00409-9630-05 ")
 ;;124
 ;;21,"00430-0182-15 ")
 ;;125
 ;;21,"00463-1006-20 ")
 ;;126
 ;;21,"00463-1006-30 ")
 ;;127
 ;;21,"00463-6259-10 ")
 ;;128
 ;;21,"00463-6286-10 ")
 ;;129
 ;;21,"00478-5477-10 ")
 ;;130
 ;;21,"00478-5477-50 ")
 ;;131
 ;;21,"00485-0051-01 ")
 ;;132
 ;;21,"00485-0056-01 ")
 ;;133
 ;;21,"00517-0101-25 ")
 ;;134
 ;;21,"00517-0401-25 ")
 ;;135
 ;;21,"00517-0805-25 ")
 ;;136
 ;;21,"00517-1010-25 ")
 ;;137
 ;;21,"00527-1170-01 ")
 ;;138
 ;;21,"00527-1170-10 ")
 ;;139
 ;;21,"00536-5575-01 ")
 ;;140
 ;;21,"00536-5592-01 ")
 ;;141
 ;;21,"00536-5900-01 ")
 ;;142
 ;;21,"00539-0708-01 ")
 ;;143
 ;;21,"00548-1039-00 ")
 ;;144
 ;;21,"00548-2039-00 ")
 ;;145
 ;;21,"00548-3338-00 ")
 ;;146
 ;;21,"00548-3339-00 ")
 ;;147
 ;;21,"00551-0195-01 ")
 ;;148
 ;;21,"00556-0053-04 ")
 ;;149
 ;;21,"00556-0053-16 ")
 ;;150
 ;
OTHER ; OTHER ROUTINES
 D ^BGP9SXJB
 D ^BGP9SXJC
 D ^BGP9SXJD
 D ^BGP9SXJE
 D ^BGP9SXJF
 D ^BGP9SXJG
 D ^BGP9SXJH
 D ^BGP9SXJI
 D ^BGP9SXJJ
 D ^BGP9SXJK
 D ^BGP9SXJL
 D ^BGP9SXJM
 D ^BGP9SXJN
 D ^BGP9SXJO
 D ^BGP9SXJP
 Q
