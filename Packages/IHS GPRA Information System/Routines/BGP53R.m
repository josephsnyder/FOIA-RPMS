BGP53R ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP HEDIS OSTEOPOROSIS NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS OSTEOPOROSIS NDC
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
 ;;21,"00002-4165-02 ")
 ;;1
 ;;21,"00002-4165-07 ")
 ;;2
 ;;21,"00002-4165-30 ")
 ;;3
 ;;21,"00002-4165-34 ")
 ;;4
 ;;21,"00002-4165-79 ")
 ;;5
 ;;21,"00002-8400-01 ")
 ;;6
 ;;21,"00004-0186-82 ")
 ;;7
 ;;21,"00004-0188-09 ")
 ;;8
 ;;21,"00004-0191-09 ")
 ;;9
 ;;21,"00006-0031-01 ")
 ;;10
 ;;21,"00006-0031-21 ")
 ;;11
 ;;21,"00006-0031-44 ")
 ;;12
 ;;21,"00006-0077-01 ")
 ;;13
 ;;21,"00006-0077-21 ")
 ;;14
 ;;21,"00006-0077-44 ")
 ;;15
 ;;21,"00006-0212-31 ")
 ;;16
 ;;21,"00006-0270-44 ")
 ;;17
 ;;21,"00006-0710-01 ")
 ;;18
 ;;21,"00006-0710-11 ")
 ;;19
 ;;21,"00006-0710-21 ")
 ;;20
 ;;21,"00006-0710-44 ")
 ;;21
 ;;21,"00006-0925-31 ")
 ;;22
 ;;21,"00006-0925-58 ")
 ;;23
 ;;21,"00006-0936-01 ")
 ;;24
 ;;21,"00006-0936-28 ")
 ;;25
 ;;21,"00006-0936-31 ")
 ;;26
 ;;21,"00006-0936-58 ")
 ;;27
 ;;21,"00006-0936-82 ")
 ;;28
 ;;21,"00006-3833-01 ")
 ;;29
 ;;21,"00006-3833-34 ")
 ;;30
 ;;21,"00078-0149-23 ")
 ;;31
 ;;21,"00078-0311-54 ")
 ;;32
 ;;21,"00078-0387-25 ")
 ;;33
 ;;21,"00078-0435-61 ")
 ;;34
 ;;21,"00078-0590-61 ")
 ;;35
 ;;21,"00093-5140-01 ")
 ;;36
 ;;21,"00093-5140-56 ")
 ;;37
 ;;21,"00093-5141-01 ")
 ;;38
 ;;21,"00093-5141-56 ")
 ;;39
 ;;21,"00093-5142-56 ")
 ;;40
 ;;21,"00093-5171-19 ")
 ;;41
 ;;21,"00093-5171-20 ")
 ;;42
 ;;21,"00093-5171-29 ")
 ;;43
 ;;21,"00093-5171-44 ")
 ;;44
 ;;21,"00093-5172-19 ")
 ;;45
 ;;21,"00093-5172-20 ")
 ;;46
 ;;21,"00093-5172-29 ")
 ;;47
 ;;21,"00093-5172-44 ")
 ;;48
 ;;21,"00093-7290-01 ")
 ;;49
 ;;21,"00093-7290-10 ")
 ;;50
 ;;21,"00093-7290-56 ")
 ;;51
 ;;21,"00143-9642-01 ")
 ;;52
 ;;21,"00149-0470-01 ")
 ;;53
 ;;21,"00149-0470-03 ")
 ;;54
 ;;21,"00149-0471-01 ")
 ;;55
 ;;21,"00149-0471-03 ")
 ;;56
 ;;21,"00149-0472-01 ")
 ;;57
 ;;21,"00149-0472-04 ")
 ;;58
 ;;21,"00149-0478-01 ")
 ;;59
 ;;21,"00149-0478-03 ")
 ;;60
 ;;21,"00178-0101-02 ")
 ;;61
 ;;21,"00245-0008-35 ")
 ;;62
 ;;21,"00247-1960-15 ")
 ;;63
 ;;21,"00247-1960-30 ")
 ;;64
 ;;21,"00378-3566-01 ")
 ;;65
 ;;21,"00378-3567-01 ")
 ;;66
 ;;21,"00378-3568-22 ")
 ;;67
 ;;21,"00378-3568-93 ")
 ;;68
 ;;21,"00378-3568-99 ")
 ;;69
 ;;21,"00378-3569-22 ")
 ;;70
 ;;21,"00378-3569-93 ")
 ;;71
 ;;21,"00378-3569-99 ")
 ;;72
 ;;21,"00378-4150-32 ")
 ;;73
 ;;21,"00378-4150-53 ")
 ;;74
 ;;21,"00378-5215-53 ")
 ;;75
 ;;21,"00430-0470-15 ")
 ;;76
 ;;21,"00430-0471-15 ")
 ;;77
 ;;21,"00430-0472-03 ")
 ;;78
 ;;21,"00430-0472-07 ")
 ;;79
 ;;21,"00430-0478-01 ")
 ;;80
 ;;21,"00430-0478-02 ")
 ;;81
 ;;21,"00430-0979-03 ")
 ;;82
 ;;21,"00555-0720-54 ")
 ;;83
 ;;21,"00591-0031-04 ")
 ;;84
 ;;21,"00591-0077-04 ")
 ;;85
 ;;21,"00591-2044-03 ")
 ;;86
 ;;21,"00591-2044-54 ")
 ;;87
 ;;21,"00591-3171-04 ")
 ;;88
 ;;21,"00591-3173-04 ")
 ;;89
 ;;21,"00591-3770-31 ")
 ;;90
 ;;21,"00781-6320-79 ")
 ;;91
 ;;21,"12280-0418-30 ")
 ;;92
 ;;21,"16252-0599-02 ")
 ;;93
 ;;21,"16252-0599-44 ")
 ;;94
 ;;21,"16252-0601-02 ")
 ;;95
 ;;21,"16252-0601-44 ")
 ;;96
 ;;21,"16590-0491-04 ")
 ;;97
 ;;21,"16590-0718-04 ")
 ;;98
 ;;21,"16590-0718-20 ")
 ;;99
 ;;21,"16590-0718-30 ")
 ;;100
 ;;21,"16590-0721-04 ")
 ;;101
 ;;21,"16714-0631-01 ")
 ;;102
 ;;21,"16714-0631-02 ")
 ;;103
 ;;21,"16714-0632-01 ")
 ;;104
 ;;21,"16714-0632-02 ")
 ;;105
 ;;21,"16714-0633-01 ")
 ;;106
 ;;21,"16714-0633-02 ")
 ;;107
 ;;21,"21695-0901-04 ")
 ;;108
 ;;21,"21695-0902-04 ")
 ;;109
 ;;21,"23155-0170-31 ")
 ;;110
 ;;21,"23155-0186-31 ")
 ;;111
 ;;21,"23490-9245-00 ")
 ;;112
 ;;21,"24658-0162-71 ")
 ;;113
 ;;21,"24658-0162-73 ")
 ;;114
 ;;21,"24658-0163-71 ")
 ;;115
 ;;21,"24658-0163-73 ")
 ;;116
 ;;21,"25021-0801-66 ")
 ;;117
 ;;21,"25021-0826-82 ")
 ;;118
 ;;21,"25021-0827-61 ")
 ;;119
 ;;21,"25021-0830-82 ")
 ;;120
 ;;21,"35356-0351-01 ")
 ;;121
 ;;21,"35356-0423-03 ")
 ;;122
 ;;21,"41616-0635-83 ")
 ;;123
 ;;21,"41616-0635-88 ")
 ;;124
 ;;21,"41616-0636-83 ")
 ;;125
 ;;21,"41616-0636-88 ")
 ;;126
 ;;21,"41616-0637-68 ")
 ;;127
 ;;21,"41616-0638-68 ")
 ;;128
 ;;21,"42023-0151-01 ")
 ;;129
 ;;21,"42023-0163-01 ")
 ;;130
 ;;21,"42291-0336-03 ")
 ;;131
 ;;21,"43598-0330-11 ")
 ;;132
 ;;21,"43598-0331-11 ")
 ;;133
 ;;21,"47335-0035-40 ")
 ;;134
 ;;21,"47335-0962-41 ")
 ;;135
 ;;21,"49884-0161-11 ")
 ;;136
 ;;21,"49999-0448-04 ")
 ;;137
 ;;21,"49999-0458-30 ")
 ;;138
 ;;21,"49999-0501-04 ")
 ;;139
 ;;21,"51079-0941-01 ")
 ;;140
 ;;21,"51079-0941-05 ")
 ;;141
 ;;21,"51079-0942-01 ")
 ;;142
 ;;21,"51079-0942-05 ")
 ;;143
 ;;21,"51224-0301-10 ")
 ;;144
 ;;21,"53150-0871-01 ")
 ;;145
 ;;21,"54569-4628-00 ")
 ;;146
 ;;21,"54569-4866-00 ")
 ;;147
 ;;21,"54569-5218-00 ")
 ;;148
 ;;21,"54569-5399-00 ")
 ;;149
 ;;21,"54569-5462-00 ")
 ;;150
 ;;21,"54569-6047-00 ")
 ;;151
 ;;21,"54569-6050-00 ")
 ;;152
 ;;21,"54868-3857-00 ")
 ;;153
 ;;21,"54868-4170-00 ")
 ;;154
 ;;21,"54868-4170-01 ")
 ;;155
 ;;21,"54868-4384-00 ")
 ;;156
 ;;21,"54868-4386-00 ")
 ;;157
 ;;21,"54868-4462-00 ")
 ;;158
 ;;21,"54868-4463-00 ")
 ;;159
 ;;21,"54868-4671-00 ")
 ;;160
 ;;21,"54868-5322-00 ")
 ;;161
 ;;21,"54868-5322-01 ")
 ;;162
 ;;21,"54868-5480-00 ")
 ;;163
 ;;21,"54868-5499-00 ")
 ;;164
 ;;21,"54868-5860-00 ")
 ;;165
 ;;21,"54868-5861-00 ")
 ;;166
 ;;21,"54868-5862-00 ")
 ;;167
 ;;21,"55045-3908-01 ")
 ;;168
 ;;21,"55111-0575-03 ")
 ;;169
 ;;21,"55111-0588-01 ")
 ;;170
 ;;21,"55111-0588-30 ")
 ;;171
 ;;21,"55111-0589-01 ")
 ;;172
 ;;21,"55111-0589-30 ")
 ;;173
 ;;21,"55111-0590-48 ")
 ;;174
 ;;21,"55111-0592-48 ")
 ;;175
 ;;21,"55111-0685-07 ")
 ;;176
 ;;21,"55111-0688-52 ")
 ;;177
 ;;21,"55289-0266-30 ")
 ;;178
 ;;21,"55513-0710-01 ")
 ;;179
 ;;21,"55513-0730-01 ")
 ;;180
 ;;21,"55887-0106-04 ")
 ;;181
 ;;21,"55887-0516-20 ")
 ;;182
 ;;21,"55887-0516-30 ")
 ;;183
 ;;21,"55887-0516-60 ")
 ;;184
 ;;21,"55887-0516-82 ")
 ;;185
 ;;21,"55887-0516-90 ")
 ;;186
 ;;21,"55887-0641-03 ")
 ;;187
 ;;21,"55887-0685-04 ")
 ;;188
 ;;21,"58016-0613-04 ")
 ;;189
 ;;21,"58016-0788-00 ")
 ;;190
 ;;21,"58016-0788-30 ")
 ;;191
 ;;21,"58016-0788-60 ")
 ;;192
 ;;21,"58016-0788-90 ")
 ;;193
 ;;21,"59746-0242-02 ")
 ;;194
 ;;21,"59746-0244-02 ")
 ;;195
 ;;21,"60429-0773-04 ")
 ;;196
 ;;21,"60429-0773-12 ")
 ;;197
 ;;21,"60505-0823-06 ")
 ;;198
 ;;21,"60505-2592-01 ")
 ;;199
 ;;21,"60505-2592-03 ")
 ;;200
 ;;21,"60505-2593-01 ")
 ;;201
 ;;21,"60505-2593-03 ")
 ;;202
 ;;21,"60505-2594-04 ")
 ;;203
 ;;21,"60505-2596-02 ")
 ;;204
 ;;21,"60505-2596-04 ")
 ;;205
 ;;21,"60505-2596-08 ")
 ;;206
 ;;21,"60505-2795-00 ")
 ;;207
 ;;21,"60505-3097-02 ")
 ;;208
 ;;21,"60505-3097-04 ")
 ;;209
 ;;21,"60505-6110-00 ")
 ;;210
 ;;21,"62756-0218-40 ")
 ;;211
 ;;21,"63874-0089-01 ")
 ;;212
 ;;21,"64679-0185-01 ")
 ;;213
 ;;21,"64679-0186-01 ")
 ;;214
 ;;21,"65862-0327-30 ")
 ;;215
 ;;21,"65862-0328-04 ")
 ;;216
 ;;21,"65862-0329-04 ")
 ;;217
 ;;21,"66105-0538-03 ")
 ;;218
 ;;21,"66993-0417-02 ")
 ;;219
 ;;21,"66993-0417-30 ")
 ;;220
 ;;21,"66993-0417-88 ")
 ;;221
 ;;21,"67457-0524-33 ")
 ;;222
 ;;21,"67801-0320-03 ")
 ;;223
 ;;21,"67877-0240-31 ")
 ;;224
 ;;21,"67877-0240-33 ")
 ;;225
 ;;21,"67877-0241-31 ")
 ;;226
 ;;21,"67877-0241-33 ")
 ;;227
 ;;21,"68084-0322-11 ")
 ;;228
 ;;21,"68084-0322-94 ")
 ;;229
 ;;21,"68258-3014-01 ")
 ;;230
 ;;21,"76439-0130-04 ")
 ;;231
 ;;21,"76439-0130-12 ")
 ;;232
 ;;21,"76439-0131-04 ")
 ;;233
 ;;21,"76439-0131-12 ")
 ;;234
 ;;21,"76439-0131-20 ")
 ;;235
 ;;9002226,493,.01)
 ;;BGP HEDIS OSTEOPOROSIS NDC
 ;;9002226,493,.02)
 ;;@
 ;;9002226,493,.04)
 ;;n
 ;;9002226,493,.06)
 ;;@
 ;;9002226,493,.08)
 ;;@
 ;;9002226,493,.09)
 ;;3150224
 ;;9002226,493,.11)
 ;;@
 ;;9002226,493,.12)
 ;;@
 ;;9002226,493,.13)
 ;;1
 ;;9002226,493,.14)
 ;;@
 ;;9002226,493,.15)
 ;;50.67
 ;;9002226,493,.16)
 ;;@
 ;;9002226,493,.17)
 ;;@
 ;;9002226,493,3101)
 ;;@
 ;;9002226.02101,"493,00002-4165-02 ",.01)
 ;;00002-4165-02
 ;;9002226.02101,"493,00002-4165-02 ",.02)
 ;;00002-4165-02
 ;;9002226.02101,"493,00002-4165-07 ",.01)
 ;;00002-4165-07
 ;;9002226.02101,"493,00002-4165-07 ",.02)
 ;;00002-4165-07
 ;;9002226.02101,"493,00002-4165-30 ",.01)
 ;;00002-4165-30
 ;;9002226.02101,"493,00002-4165-30 ",.02)
 ;;00002-4165-30
 ;;9002226.02101,"493,00002-4165-34 ",.01)
 ;;00002-4165-34
 ;;9002226.02101,"493,00002-4165-34 ",.02)
 ;;00002-4165-34
 ;;9002226.02101,"493,00002-4165-79 ",.01)
 ;;00002-4165-79
 ;;9002226.02101,"493,00002-4165-79 ",.02)
 ;;00002-4165-79
 ;;9002226.02101,"493,00002-8400-01 ",.01)
 ;;00002-8400-01
 ;;9002226.02101,"493,00002-8400-01 ",.02)
 ;;00002-8400-01
 ;;9002226.02101,"493,00004-0186-82 ",.01)
 ;;00004-0186-82
 ;;9002226.02101,"493,00004-0186-82 ",.02)
 ;;00004-0186-82
 ;;9002226.02101,"493,00004-0188-09 ",.01)
 ;;00004-0188-09
 ;;9002226.02101,"493,00004-0188-09 ",.02)
 ;;00004-0188-09
 ;;9002226.02101,"493,00004-0191-09 ",.01)
 ;;00004-0191-09
 ;;9002226.02101,"493,00004-0191-09 ",.02)
 ;;00004-0191-09
 ;;9002226.02101,"493,00006-0031-01 ",.01)
 ;;00006-0031-01
 ;;9002226.02101,"493,00006-0031-01 ",.02)
 ;;00006-0031-01
 ;;9002226.02101,"493,00006-0031-21 ",.01)
 ;;00006-0031-21
 ;;9002226.02101,"493,00006-0031-21 ",.02)
 ;;00006-0031-21
 ;;9002226.02101,"493,00006-0031-44 ",.01)
 ;;00006-0031-44
 ;;9002226.02101,"493,00006-0031-44 ",.02)
 ;;00006-0031-44
 ;;9002226.02101,"493,00006-0077-01 ",.01)
 ;;00006-0077-01
 ;;9002226.02101,"493,00006-0077-01 ",.02)
 ;;00006-0077-01
 ;;9002226.02101,"493,00006-0077-21 ",.01)
 ;;00006-0077-21
 ;;9002226.02101,"493,00006-0077-21 ",.02)
 ;;00006-0077-21
 ;;9002226.02101,"493,00006-0077-44 ",.01)
 ;;00006-0077-44
 ;;9002226.02101,"493,00006-0077-44 ",.02)
 ;;00006-0077-44
 ;;9002226.02101,"493,00006-0212-31 ",.01)
 ;;00006-0212-31
 ;;9002226.02101,"493,00006-0212-31 ",.02)
 ;;00006-0212-31
 ;;9002226.02101,"493,00006-0270-44 ",.01)
 ;;00006-0270-44
 ;;9002226.02101,"493,00006-0270-44 ",.02)
 ;;00006-0270-44
 ;;9002226.02101,"493,00006-0710-01 ",.01)
 ;;00006-0710-01
 ;;9002226.02101,"493,00006-0710-01 ",.02)
 ;;00006-0710-01
 ;;9002226.02101,"493,00006-0710-11 ",.01)
 ;;00006-0710-11
 ;;9002226.02101,"493,00006-0710-11 ",.02)
 ;;00006-0710-11
 ;;9002226.02101,"493,00006-0710-21 ",.01)
 ;;00006-0710-21
 ;;9002226.02101,"493,00006-0710-21 ",.02)
 ;;00006-0710-21
 ;;9002226.02101,"493,00006-0710-44 ",.01)
 ;;00006-0710-44
 ;;9002226.02101,"493,00006-0710-44 ",.02)
 ;;00006-0710-44
 ;;9002226.02101,"493,00006-0925-31 ",.01)
 ;;00006-0925-31
 ;;9002226.02101,"493,00006-0925-31 ",.02)
 ;;00006-0925-31
 ;;9002226.02101,"493,00006-0925-58 ",.01)
 ;;00006-0925-58
 ;;9002226.02101,"493,00006-0925-58 ",.02)
 ;;00006-0925-58
 ;;9002226.02101,"493,00006-0936-01 ",.01)
 ;;00006-0936-01
 ;;9002226.02101,"493,00006-0936-01 ",.02)
 ;;00006-0936-01
 ;;9002226.02101,"493,00006-0936-28 ",.01)
 ;;00006-0936-28
 ;;9002226.02101,"493,00006-0936-28 ",.02)
 ;;00006-0936-28
 ;;9002226.02101,"493,00006-0936-31 ",.01)
 ;;00006-0936-31
 ;;9002226.02101,"493,00006-0936-31 ",.02)
 ;;00006-0936-31
 ;;9002226.02101,"493,00006-0936-58 ",.01)
 ;;00006-0936-58
 ;;9002226.02101,"493,00006-0936-58 ",.02)
 ;;00006-0936-58
 ;;9002226.02101,"493,00006-0936-82 ",.01)
 ;;00006-0936-82
 ;;9002226.02101,"493,00006-0936-82 ",.02)
 ;;00006-0936-82
 ;;9002226.02101,"493,00006-3833-01 ",.01)
 ;;00006-3833-01
 ;;9002226.02101,"493,00006-3833-01 ",.02)
 ;;00006-3833-01
 ;;9002226.02101,"493,00006-3833-34 ",.01)
 ;;00006-3833-34
 ;;9002226.02101,"493,00006-3833-34 ",.02)
 ;;00006-3833-34
 ;;9002226.02101,"493,00078-0149-23 ",.01)
 ;;00078-0149-23
 ;;9002226.02101,"493,00078-0149-23 ",.02)
 ;;00078-0149-23
 ;;9002226.02101,"493,00078-0311-54 ",.01)
 ;;00078-0311-54
 ;;9002226.02101,"493,00078-0311-54 ",.02)
 ;;00078-0311-54
 ;;9002226.02101,"493,00078-0387-25 ",.01)
 ;;00078-0387-25
 ;;9002226.02101,"493,00078-0387-25 ",.02)
 ;;00078-0387-25
 ;;9002226.02101,"493,00078-0435-61 ",.01)
 ;;00078-0435-61
 ;;9002226.02101,"493,00078-0435-61 ",.02)
 ;;00078-0435-61
 ;;9002226.02101,"493,00078-0590-61 ",.01)
 ;;00078-0590-61
 ;;9002226.02101,"493,00078-0590-61 ",.02)
 ;;00078-0590-61
 ;;9002226.02101,"493,00093-5140-01 ",.01)
 ;;00093-5140-01
 ;;9002226.02101,"493,00093-5140-01 ",.02)
 ;;00093-5140-01
 ;;9002226.02101,"493,00093-5140-56 ",.01)
 ;;00093-5140-56
 ;;9002226.02101,"493,00093-5140-56 ",.02)
 ;;00093-5140-56
 ;;9002226.02101,"493,00093-5141-01 ",.01)
 ;;00093-5141-01
 ;;9002226.02101,"493,00093-5141-01 ",.02)
 ;;00093-5141-01
 ;;9002226.02101,"493,00093-5141-56 ",.01)
 ;;00093-5141-56
 ;;9002226.02101,"493,00093-5141-56 ",.02)
 ;;00093-5141-56
 ;;9002226.02101,"493,00093-5142-56 ",.01)
 ;;00093-5142-56
 ;;9002226.02101,"493,00093-5142-56 ",.02)
 ;;00093-5142-56
 ;;9002226.02101,"493,00093-5171-19 ",.01)
 ;;00093-5171-19
 ;;9002226.02101,"493,00093-5171-19 ",.02)
 ;;00093-5171-19
 ;
OTHER ; OTHER ROUTINES
 D ^BGP53R2
 D ^BGP53R3
 Q
