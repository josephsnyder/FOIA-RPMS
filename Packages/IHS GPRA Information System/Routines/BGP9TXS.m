BGP9TXS ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP GLUCOSE LOINC
 ;
 ; This routine loads Taxonomy BGP GLUCOSE LOINC
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
 ;;21,"10449-7 ")
 ;;1
 ;;21,"10450-5 ")
 ;;2
 ;;21,"10832-4 ")
 ;;3
 ;;21,"10968-6 ")
 ;;4
 ;;21,"11032-0 ")
 ;;5
 ;;21,"11142-7 ")
 ;;6
 ;;21,"11143-5 ")
 ;;7
 ;;21,"12219-2 ")
 ;;8
 ;;21,"12220-0 ")
 ;;9
 ;;21,"12607-8 ")
 ;;10
 ;;21,"12610-2 ")
 ;;11
 ;;21,"12611-0 ")
 ;;12
 ;;21,"12613-6 ")
 ;;13
 ;;21,"12614-4 ")
 ;;14
 ;;21,"12615-1 ")
 ;;15
 ;;21,"12616-9 ")
 ;;16
 ;;21,"12617-7 ")
 ;;17
 ;;21,"12618-5 ")
 ;;18
 ;;21,"12619-3 ")
 ;;19
 ;;21,"12620-1 ")
 ;;20
 ;;21,"12621-9 ")
 ;;21
 ;;21,"12622-7 ")
 ;;22
 ;;21,"12623-5 ")
 ;;23
 ;;21,"12624-3 ")
 ;;24
 ;;21,"12625-0 ")
 ;;25
 ;;21,"12626-8 ")
 ;;26
 ;;21,"12627-6 ")
 ;;27
 ;;21,"12631-8 ")
 ;;28
 ;;21,"12632-6 ")
 ;;29
 ;;21,"12635-9 ")
 ;;30
 ;;21,"12636-7 ")
 ;;31
 ;;21,"12637-5 ")
 ;;32
 ;;21,"12638-3 ")
 ;;33
 ;;21,"12639-1 ")
 ;;34
 ;;21,"12640-9 ")
 ;;35
 ;;21,"12641-7 ")
 ;;36
 ;;21,"12642-5 ")
 ;;37
 ;;21,"12643-3 ")
 ;;38
 ;;21,"12644-1 ")
 ;;39
 ;;21,"12645-8 ")
 ;;40
 ;;21,"12646-6 ")
 ;;41
 ;;21,"12647-4 ")
 ;;42
 ;;21,"12648-2 ")
 ;;43
 ;;21,"12649-0 ")
 ;;44
 ;;21,"12650-8 ")
 ;;45
 ;;21,"12651-6 ")
 ;;46
 ;;21,"12652-4 ")
 ;;47
 ;;21,"12653-2 ")
 ;;48
 ;;21,"12654-0 ")
 ;;49
 ;;21,"12655-7 ")
 ;;50
 ;;21,"12656-5 ")
 ;;51
 ;;21,"12657-3 ")
 ;;52
 ;;21,"12658-1 ")
 ;;53
 ;;21,"12659-9 ")
 ;;54
 ;;21,"13453-6 ")
 ;;55
 ;;21,"13606-9 ")
 ;;56
 ;;21,"13607-7 ")
 ;;57
 ;;21,"13865-1 ")
 ;;58
 ;;21,"13866-9 ")
 ;;59
 ;;21,"14137-4 ")
 ;;60
 ;;21,"14743-9 ")
 ;;61
 ;;21,"14749-6 ")
 ;;62
 ;;21,"14751-2 ")
 ;;63
 ;;21,"14752-0 ")
 ;;64
 ;;21,"14753-8 ")
 ;;65
 ;;21,"14754-6 ")
 ;;66
 ;;21,"14755-3 ")
 ;;67
 ;;21,"14756-1 ")
 ;;68
 ;;21,"14757-9 ")
 ;;69
 ;;21,"14758-7 ")
 ;;70
 ;;21,"14759-5 ")
 ;;71
 ;;21,"14760-3 ")
 ;;72
 ;;21,"14761-1 ")
 ;;73
 ;;21,"14762-9 ")
 ;;74
 ;;21,"14763-7 ")
 ;;75
 ;;21,"14764-5 ")
 ;;76
 ;;21,"14765-2 ")
 ;;77
 ;;21,"14766-0 ")
 ;;78
 ;;21,"14767-8 ")
 ;;79
 ;;21,"14768-6 ")
 ;;80
 ;;21,"14769-4 ")
 ;;81
 ;;21,"14770-2 ")
 ;;82
 ;;21,"14771-0 ")
 ;;83
 ;;21,"1491-0 ")
 ;;84
 ;;21,"1492-8 ")
 ;;85
 ;;21,"1493-6 ")
 ;;86
 ;;21,"1494-4 ")
 ;;87
 ;;21,"1496-9 ")
 ;;88
 ;;21,"1497-7 ")
 ;;89
 ;;21,"1498-5 ")
 ;;90
 ;;21,"1499-3 ")
 ;;91
 ;;21,"14995-5 ")
 ;;92
 ;;21,"14996-3 ")
 ;;93
 ;;21,"1500-8 ")
 ;;94
 ;;21,"1501-6 ")
 ;;95
 ;;21,"1502-4 ")
 ;;96
 ;;21,"1504-0 ")
 ;;97
 ;;21,"1506-5 ")
 ;;98
 ;;21,"1507-3 ")
 ;;99
 ;;21,"15074-8 ")
 ;;100
 ;;21,"1508-1 ")
 ;;101
 ;;21,"1510-7 ")
 ;;102
 ;;21,"1511-5 ")
 ;;103
 ;;21,"1512-3 ")
 ;;104
 ;;21,"1513-1 ")
 ;;105
 ;;21,"1514-9 ")
 ;;106
 ;;21,"1515-6 ")
 ;;107
 ;;21,"1517-2 ")
 ;;108
 ;;21,"1518-0 ")
 ;;109
 ;;21,"1519-8 ")
 ;;110
 ;;21,"1521-4 ")
 ;;111
 ;;21,"1522-2 ")
 ;;112
 ;;21,"1523-0 ")
 ;;113
 ;;21,"1524-8 ")
 ;;114
 ;;21,"1525-5 ")
 ;;115
 ;;21,"1526-3 ")
 ;;116
 ;;21,"1527-1 ")
 ;;117
 ;;21,"1528-9 ")
 ;;118
 ;;21,"1529-7 ")
 ;;119
 ;;21,"1530-5 ")
 ;;120
 ;;21,"1531-3 ")
 ;;121
 ;;21,"1532-1 ")
 ;;122
 ;;21,"1533-9 ")
 ;;123
 ;;21,"1534-7 ")
 ;;124
 ;;21,"1535-4 ")
 ;;125
 ;;21,"1536-2 ")
 ;;126
 ;;21,"1537-0 ")
 ;;127
 ;;21,"1538-8 ")
 ;;128
 ;;21,"1539-6 ")
 ;;129
 ;;21,"1540-4 ")
 ;;130
 ;;21,"1541-2 ")
 ;;131
 ;;21,"1542-0 ")
 ;;132
 ;;21,"1543-8 ")
 ;;133
 ;;21,"1544-6 ")
 ;;134
 ;;21,"1545-3 ")
 ;;135
 ;;21,"1547-9 ")
 ;;136
 ;;21,"1548-7 ")
 ;;137
 ;;21,"1549-5 ")
 ;;138
 ;;21,"1550-3 ")
 ;;139
 ;;21,"1551-1 ")
 ;;140
 ;;21,"1552-9 ")
 ;;141
 ;;21,"1553-7 ")
 ;;142
 ;;21,"1554-5 ")
 ;;143
 ;;21,"1555-2 ")
 ;;144
 ;;21,"1556-0 ")
 ;;145
 ;;21,"1557-8 ")
 ;;146
 ;;21,"1558-6 ")
 ;;147
 ;;21,"16165-3 ")
 ;;148
 ;;21,"16166-1 ")
 ;;149
 ;;21,"16167-9 ")
 ;;150
 ;;21,"16168-7 ")
 ;;151
 ;;21,"16169-5 ")
 ;;152
 ;;21,"16170-3 ")
 ;;153
 ;;21,"16906-0 ")
 ;;154
 ;;21,"16907-8 ")
 ;;155
 ;;21,"16908-6 ")
 ;;156
 ;;21,"16909-4 ")
 ;;157
 ;;21,"16910-2 ")
 ;;158
 ;;21,"16911-0 ")
 ;;159
 ;;21,"16912-8 ")
 ;;160
 ;;21,"16913-6 ")
 ;;161
 ;;21,"16914-4 ")
 ;;162
 ;;21,"16915-1 ")
 ;;163
 ;;21,"17865-7 ")
 ;;164
 ;;21,"18296-4 ")
 ;;165
 ;;21,"18342-6 ")
 ;;166
 ;;21,"18353-3 ")
 ;;167
 ;;21,"18354-1 ")
 ;;168
 ;;21,"19104-9 ")
 ;;169
 ;;21,"19105-6 ")
 ;;170
 ;;21,"20436-2 ")
 ;;171
 ;;21,"20437-0 ")
 ;;172
 ;;21,"20438-8 ")
 ;;173
 ;;21,"20439-6 ")
 ;;174
 ;;21,"20440-4 ")
 ;;175
 ;;21,"20441-2 ")
 ;;176
 ;;21,"21308-2 ")
 ;;177
 ;;21,"21309-0 ")
 ;;178
 ;;21,"21310-8 ")
 ;;179
 ;;21,"2339-0 ")
 ;;180
 ;;21,"2340-8 ")
 ;;181
 ;
OTHER ; OTHER ROUTINES
 D ^BGP9TXSB
 D ^BGP9TXSC
 D ^BGP9TXSD
 D ^BGP9TXSE
 D ^BGP9TXSF
 D ^BGP9TXSG
 D ^BGP9TXSH
 D ^BGP9TXSI
 D ^BGP9TXSJ
 D ^BGP9TXSK
 D ^BGP9TXSL
 Q