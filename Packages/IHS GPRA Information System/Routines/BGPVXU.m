BGPVXU ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 03, 2004 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;BGP CHLAMYDIA LOINC CODES
 ;
 ; This routine loads Taxonomy BGP CHLAMYDIA LOINC CODES
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
 ;;21,"10848-0 ")
 ;;1
 ;;21,"10849-8 ")
 ;;2
 ;;21,"13217-5 ")
 ;;3
 ;;21,"13218-3 ")
 ;;4
 ;;21,"13219-1 ")
 ;;5
 ;;21,"13220-9 ")
 ;;6
 ;;21,"13221-7 ")
 ;;7
 ;;21,"14199-4 ")
 ;;8
 ;;21,"14200-0 ")
 ;;9
 ;;21,"14201-8 ")
 ;;10
 ;;21,"14202-6 ")
 ;;11
 ;;21,"14203-4 ")
 ;;12
 ;;21,"14204-2 ")
 ;;13
 ;;21,"14461-8 ")
 ;;14
 ;;21,"14462-6 ")
 ;;15
 ;;21,"14463-4 ")
 ;;16
 ;;21,"14464-2 ")
 ;;17
 ;;21,"14465-9 ")
 ;;18
 ;;21,"14466-7 ")
 ;;19
 ;;21,"14467-5 ")
 ;;20
 ;;21,"14468-3 ")
 ;;21
 ;;21,"14469-1 ")
 ;;22
 ;;21,"14470-9 ")
 ;;23
 ;;21,"14471-7 ")
 ;;24
 ;;21,"14472-5 ")
 ;;25
 ;;21,"14473-3 ")
 ;;26
 ;;21,"14474-1 ")
 ;;27
 ;;21,"14507-8 ")
 ;;28
 ;;21,"14508-6 ")
 ;;29
 ;;21,"14509-4 ")
 ;;30
 ;;21,"14510-2 ")
 ;;31
 ;;21,"14511-0 ")
 ;;32
 ;;21,"14512-8 ")
 ;;33
 ;;21,"14513-6 ")
 ;;34
 ;;21,"16589-4 ")
 ;;35
 ;;21,"16590-2 ")
 ;;36
 ;;21,"16591-0 ")
 ;;37
 ;;21,"16592-8 ")
 ;;38
 ;;21,"16593-6 ")
 ;;39
 ;;21,"16594-4 ")
 ;;40
 ;;21,"16595-1 ")
 ;;41
 ;;21,"16596-9 ")
 ;;42
 ;;21,"16597-7 ")
 ;;43
 ;;21,"16598-5 ")
 ;;44
 ;;21,"16599-3 ")
 ;;45
 ;;21,"16600-9 ")
 ;;46
 ;;21,"16601-7 ")
 ;;47
 ;;21,"16602-5 ")
 ;;48
 ;;21,"18490-3 ")
 ;;49
 ;;21,"18491-1 ")
 ;;50
 ;;21,"18492-9 ")
 ;;51
 ;;21,"20755-5 ")
 ;;52
 ;;21,"20756-3 ")
 ;;53
 ;;21,"20757-1 ")
 ;;54
 ;;21,"20993-2 ")
 ;;55
 ;;21,"21185-4 ")
 ;;56
 ;;21,"21186-2 ")
 ;;57
 ;;21,"21187-0 ")
 ;;58
 ;;21,"21188-8 ")
 ;;59
 ;;21,"21189-6 ")
 ;;60
 ;;21,"21190-4 ")
 ;;61
 ;;21,"21191-2 ")
 ;;62
 ;;21,"21192-0 ")
 ;;63
 ;;21,"21613-5 ")
 ;;64
 ;;21,"22182-0 ")
 ;;65
 ;;21,"22183-8 ")
 ;;66
 ;;21,"22184-6 ")
 ;;67
 ;;21,"22185-3 ")
 ;;68
 ;;21,"22186-1 ")
 ;;69
 ;;21,"22187-9 ")
 ;;70
 ;;21,"22188-7 ")
 ;;71
 ;;21,"22189-5 ")
 ;;72
 ;;21,"22190-3 ")
 ;;73
 ;;21,"22191-1 ")
 ;;74
 ;;21,"22192-9 ")
 ;;75
 ;;21,"22193-7 ")
 ;;76
 ;;21,"22194-5 ")
 ;;77
 ;;21,"22195-2 ")
 ;;78
 ;;21,"22196-0 ")
 ;;79
 ;;21,"22197-8 ")
 ;;80
 ;;21,"22198-6 ")
 ;;81
 ;;21,"22199-4 ")
 ;;82
 ;;21,"22200-0 ")
 ;;83
 ;;21,"22201-8 ")
 ;;84
 ;;21,"22202-6 ")
 ;;85
 ;;21,"23838-6 ")
 ;;86
 ;;21,"23967-3 ")
 ;;87
 ;;21,"23990-5 ")
 ;;88
 ;;21,"24005-1 ")
 ;;89
 ;;21,"24238-8 ")
 ;;90
 ;;21,"24239-6 ")
 ;;91
 ;;21,"25369-0 ")
 ;;92
 ;;21,"26626-2 ")
 ;;93
 ;;21,"26663-5 ")
 ;;94
 ;;21,"26664-3 ")
 ;;95
 ;;21,"26665-0 ")
 ;;96
 ;;21,"26666-8 ")
 ;;97
 ;;21,"26667-6 ")
 ;;98
 ;;21,"26668-4 ")
 ;;99
 ;;21,"26715-3 ")
 ;;100
 ;;21,"27167-6 ")
 ;;101
 ;;21,"27185-8 ")
 ;;102
 ;;21,"27273-2 ")
 ;;103
 ;;21,"27368-0 ")
 ;;104
 ;;21,"27370-6 ")
 ;;105
 ;;21,"27371-4 ")
 ;;106
 ;;21,"28556-9 ")
 ;;107
 ;;21,"28557-7 ")
 ;;108
 ;;21,"28558-5 ")
 ;;109
 ;;21,"29664-0 ")
 ;;110
 ;;21,"29677-2 ")
 ;;111
 ;;21,"30204-2 ")
 ;;112
 ;;21,"31292-6 ")
 ;;113
 ;;21,"31293-4 ")
 ;;114
 ;;21,"31294-2 ")
 ;;115
 ;;21,"31295-9 ")
 ;;116
 ;;21,"31296-7 ")
 ;;117
 ;;21,"31297-5 ")
 ;;118
 ;;21,"31298-3 ")
 ;;119
 ;;21,"31763-6 ")
 ;;120
 ;;21,"31764-4 ")
 ;;121
 ;;21,"31765-1 ")
 ;;122
 ;;21,"31766-9 ")
 ;;123
 ;;21,"31767-7 ")
 ;;124
 ;;21,"31768-5 ")
 ;;125
 ;;21,"31769-3 ")
 ;;126
 ;;21,"31770-1 ")
 ;;127
 ;;21,"31771-9 ")
 ;;128
 ;;21,"31772-7 ")
 ;;129
 ;;21,"31773-5 ")
 ;;130
 ;;21,"31774-3 ")
 ;;131
 ;;21,"31775-0 ")
 ;;132
 ;;21,"31776-8 ")
 ;;133
 ;;21,"31777-6 ")
 ;;134
 ;;21,"32001-0 ")
 ;;135
 ;;21,"32002-8 ")
 ;;136
 ;;21,"32003-6 ")
 ;;137
 ;;21,"32004-4 ")
 ;;138
 ;;21,"32005-1 ")
 ;;139
 ;;21,"32006-9 ")
 ;;140
 ;;21,"32007-7 ")
 ;;141
 ;;21,"32671-0 ")
 ;;142
 ;;21,"32774-2 ")
 ;;143
 ;;21,"33410-2 ")
 ;;144
 ;;21,"33574-5 ")
 ;;145
 ;;21,"33575-2 ")
 ;;146
 ;;21,"33604-0 ")
 ;;147
 ;;21,"33605-7 ")
 ;;148
 ;;21,"4993-2 ")
 ;;149
 ;;21,"5082-3 ")
 ;;150
 ;;21,"5083-1 ")
 ;;151
 ;;21,"5084-9 ")
 ;;152
 ;;21,"5085-6 ")
 ;;153
 ;;21,"5086-4 ")
 ;;154
 ;;21,"5087-2 ")
 ;;155
 ;;21,"5088-0 ")
 ;;156
 ;;21,"5089-8 ")
 ;;157
 ;;21,"5090-6 ")
 ;;158
 ;;21,"556-1 ")
 ;;159
 ;;21,"557-9 ")
 ;;160
 ;;21,"558-7 ")
 ;;161
 ;;21,"559-5 ")
 ;;162
 ;;21,"560-3 ")
 ;;163
 ;;21,"561-1 ")
 ;;164
 ;;21,"6343-8 ")
 ;;165
 ;;21,"6344-6 ")
 ;;166
 ;;21,"6345-3 ")
 ;;167
 ;;21,"6346-1 ")
 ;;168
 ;;21,"6347-9 ")
 ;;169
 ;;21,"6348-7 ")
 ;;170
 ;;21,"6349-5 ")
 ;;171
 ;;21,"6350-3 ")
 ;;172
 ;;21,"6351-1 ")
 ;;173
 ;;21,"6352-9 ")
 ;;174
 ;;21,"6353-7 ")
 ;;175
 ;;21,"6354-5 ")
 ;;176
 ;;21,"6355-2 ")
 ;;177
 ;;21,"6356-0 ")
 ;;178
 ;;21,"6357-8 ")
 ;;179
 ;;21,"6918-7 ")
 ;;180
 ;
OTHER ; OTHER ROUTINES
 D ^BGPVXUB
 D ^BGPVXUC
 D ^BGPVXUD
 D ^BGPVXUE
 Q