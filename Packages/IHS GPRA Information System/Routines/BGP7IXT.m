BGP7IXT ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 16, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;BGP HEDIS ARB NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ARB NDC
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
 ;;21,"00006-0173-68 ")
 ;;88
 ;;21,"00006-0717-28 ")
 ;;28
 ;;21,"00006-0717-31 ")
 ;;29
 ;;21,"00006-0717-54 ")
 ;;30
 ;;21,"00006-0717-58 ")
 ;;31
 ;;21,"00006-0717-82 ")
 ;;32
 ;;21,"00006-0747-28 ")
 ;;19
 ;;21,"00006-0747-31 ")
 ;;23
 ;;21,"00006-0747-54 ")
 ;;24
 ;;21,"00006-0747-58 ")
 ;;25
 ;;21,"00006-0951-28 ")
 ;;228
 ;;21,"00006-0951-54 ")
 ;;229
 ;;21,"00006-0951-58 ")
 ;;230
 ;;21,"00006-0951-82 ")
 ;;231
 ;;21,"00006-0951-87 ")
 ;;100
 ;;21,"00006-0952-28 ")
 ;;234
 ;;21,"00006-0952-31 ")
 ;;206
 ;;21,"00006-0952-54 ")
 ;;204
 ;;21,"00006-0952-58 ")
 ;;224
 ;;21,"00006-0952-82 ")
 ;;198
 ;;21,"00006-0952-87 ")
 ;;104
 ;;21,"00006-0960-28 ")
 ;;202
 ;;21,"00006-0960-31 ")
 ;;203
 ;;21,"00006-0960-54 ")
 ;;215
 ;;21,"00006-0960-58 ")
 ;;205
 ;;21,"00006-0960-82 ")
 ;;196
 ;;21,"00006-0960-86 ")
 ;;102
 ;;21,"00051-5044-01 ")
 ;;132
 ;;21,"00051-5044-42 ")
 ;;155
 ;;21,"00051-5046-01 ")
 ;;136
 ;;21,"00051-5046-42 ")
 ;;135
 ;;21,"00078-0314-05 ")
 ;;55
 ;;21,"00078-0314-06 ")
 ;;56
 ;;21,"00078-0314-34 ")
 ;;57
 ;;21,"00078-0315-05 ")
 ;;71
 ;;21,"00078-0315-06 ")
 ;;62
 ;;21,"00078-0315-34 ")
 ;;53
 ;;21,"00078-0358-05 ")
 ;;162
 ;;21,"00078-0358-06 ")
 ;;163
 ;;21,"00078-0358-34 ")
 ;;164
 ;;21,"00078-0359-05 ")
 ;;106
 ;;21,"00078-0359-06 ")
 ;;145
 ;;21,"00078-0359-34 ")
 ;;172
 ;;21,"00078-0360-05 ")
 ;;121
 ;;21,"00078-0360-06 ")
 ;;111
 ;;21,"00078-0360-34 ")
 ;;107
 ;;21,"00078-0376-06 ")
 ;;173
 ;;21,"00078-0376-15 ")
 ;;174
 ;;21,"00078-0383-05 ")
 ;;66
 ;;21,"00078-0383-06 ")
 ;;67
 ;;21,"00078-0383-34 ")
 ;;68
 ;;21,"00078-0423-06 ")
 ;;160
 ;;21,"00078-0423-15 ")
 ;;161
 ;;21,"00083-4000-01 ")
 ;;118
 ;;21,"00083-4000-41 ")
 ;;117
 ;;21,"00083-4000-61 ")
 ;;116
 ;;21,"00083-4001-01 ")
 ;;115
 ;;21,"00083-4001-41 ")
 ;;105
 ;;21,"00083-4001-61 ")
 ;;113
 ;;21,"00087-2771-31 ")
 ;;197
 ;;21,"00087-2771-32 ")
 ;;226
 ;;21,"00087-2772-15 ")
 ;;194
 ;;21,"00087-2772-31 ")
 ;;218
 ;;21,"00087-2772-32 ")
 ;;219
 ;;21,"00087-2772-35 ")
 ;;220
 ;;21,"00087-2773-15 ")
 ;;223
 ;;21,"00087-2773-31 ")
 ;;235
 ;;21,"00087-2773-32 ")
 ;;225
 ;;21,"00087-2773-35 ")
 ;;216
 ;;21,"00087-2775-31 ")
 ;;50
 ;;21,"00087-2775-32 ")
 ;;49
 ;;21,"00087-2776-31 ")
 ;;48
 ;;21,"00087-2776-32 ")
 ;;47
 ;;21,"00087-2788-31 ")
 ;;46
 ;;21,"00087-2788-32 ")
 ;;45
 ;;21,"00182-0322-54 ")
 ;;61
 ;;21,"00186-0004-31 ")
 ;;103
 ;;21,"00186-0008-31 ")
 ;;129
 ;;21,"00186-0016-28 ")
 ;;150
 ;;21,"00186-0016-31 ")
 ;;152
 ;;21,"00186-0016-54 ")
 ;;153
 ;;21,"00186-0032-28 ")
 ;;131
 ;;21,"00186-0032-31 ")
 ;;123
 ;;21,"00186-0032-54 ")
 ;;124
 ;;21,"00186-0162-28 ")
 ;;44
 ;;21,"00186-0162-54 ")
 ;;63
 ;;21,"00186-0322-28 ")
 ;;36
 ;;21,"00186-0322-54 ")
 ;;89
 ;;21,"00597-0039-28 ")
 ;;128
 ;;21,"00597-0040-28 ")
 ;;133
 ;;21,"00597-0040-37 ")
 ;;122
 ;;21,"00597-0041-28 ")
 ;;130
 ;;21,"00597-0041-37 ")
 ;;138
 ;;21,"00597-0042-28 ")
 ;;70
 ;;21,"00597-0042-37 ")
 ;;54
 ;;21,"00597-0043-28 ")
 ;;5
 ;;21,"00597-0043-37 ")
 ;;3
 ;;21,"00597-0044-28 ")
 ;;2
 ;;21,"00597-0044-37 ")
 ;;6
 ;;21,"12280-0005-90 ")
 ;;232
 ;;21,"12280-0008-00 ")
 ;;179
 ;;21,"12280-0008-90 ")
 ;;171
 ;;21,"12280-0009-90 ")
 ;;69
 ;;21,"12280-0063-90 ")
 ;;221
 ;;21,"12280-0066-30 ")
 ;;207
 ;;21,"12280-0067-90 ")
 ;;64
 ;;21,"12280-0168-30 ")
 ;;158
 ;;21,"49999-0305-30 ")
 ;;127
 ;;21,"54569-4437-00 ")
 ;;233
 ;;21,"54569-4438-00 ")
 ;;199
 ;;21,"54569-4438-01 ")
 ;;96
 ;;21,"54569-4572-00 ")
 ;;222
 ;;21,"54569-4697-00 ")
 ;;175
 ;;21,"54569-4697-01 ")
 ;;188
 ;;21,"54569-4698-00 ")
 ;;170
 ;;21,"54569-4698-01 ")
 ;;177
 ;;21,"54569-4714-00 ")
 ;;154
 ;;21,"54569-4719-00 ")
 ;;156
 ;;21,"54569-4719-01 ")
 ;;139
 ;;21,"54569-4722-00 ")
 ;;33
 ;;21,"54569-4722-01 ")
 ;;21
 ;;21,"54569-4766-00 ")
 ;;58
 ;;21,"54569-4766-01 ")
 ;;34
 ;;21,"54569-4767-00 ")
 ;;65
 ;;21,"54569-4767-01 ")
 ;;8
 ;;21,"54569-4895-00 ")
 ;;227
 ;;21,"54569-5361-00 ")
 ;;190
 ;;21,"54569-5362-00 ")
 ;;180
 ;;21,"54569-5601-00 ")
 ;;43
 ;;21,"54569-5606-00 ")
 ;;92
 ;;21,"54569-5665-00 ")
 ;;86
 ;;21,"54569-5666-00 ")
 ;;185
 ;;21,"54569-5667-00 ")
 ;;15
 ;;21,"54569-5667-01 ")
 ;;16
 ;;21,"54868-0009-00 ")
 ;;77
 ;;21,"54868-0009-01 ")
 ;;87
 ;;21,"54868-2335-00 ")
 ;;101
 ;;21,"54868-3726-00 ")
 ;;95
 ;;21,"54868-3726-01 ")
 ;;94
 ;;21,"54868-3866-00 ")
 ;;4
 ;;21,"54868-4178-00 ")
 ;;189
 ;;21,"54868-4199-00 ")
 ;;144
 ;;21,"54868-4199-01 ")
 ;;143
 ;;21,"54868-4341-00 ")
 ;;26
 ;;21,"54868-4406-00 ")
 ;;178
 ;;21,"54868-4413-00 ")
 ;;126
 ;;21,"54868-4414-00 ")
 ;;120
 ;;21,"54868-4425-00 ")
 ;;20
 ;;21,"54868-4425-01 ")
 ;;7
 ;;21,"54868-4425-02 ")
 ;;1
 ;;21,"54868-4428-00 ")
 ;;11
 ;;21,"54868-4428-01 ")
 ;;12
 ;;21,"54868-4428-02 ")
 ;;13
 ;;21,"54868-4494-00 ")
 ;;76
 ;;21,"54868-4526-00 ")
 ;;75
 ;;21,"54868-4526-01 ")
 ;;74
 ;;21,"54868-4539-00 ")
 ;;168
 ;;21,"54868-4539-01 ")
 ;;157
 ;;21,"54868-4540-00 ")
 ;;73
 ;;21,"54868-4540-01 ")
 ;;41
 ;;21,"54868-4605-00 ")
 ;;159
 ;;21,"54868-4605-01 ")
 ;;213
 ;;21,"54868-4612-00 ")
 ;;125
 ;;21,"54868-4645-00 ")
 ;;181
 ;;21,"54868-4645-01 ")
 ;;182
 ;;21,"54868-4645-02 ")
 ;;183
 ;;21,"54868-4652-00 ")
 ;;191
 ;;21,"54868-4652-01 ")
 ;;192
 ;;21,"54868-4652-02 ")
 ;;193
 ;;21,"54868-4720-00 ")
 ;;146
 ;;21,"54868-4720-01 ")
 ;;148
 ;;21,"54868-4720-02 ")
 ;;151
 ;;21,"54868-4720-03 ")
 ;;149
 ;;21,"54868-4729-00 ")
 ;;85
 ;;21,"54868-4869-00 ")
 ;;84
 ;;21,"54868-4885-00 ")
 ;;169
 ;;21,"54868-4986-00 ")
 ;;91
 ;;21,"54868-4986-01 ")
 ;;112
 ;;21,"54868-5075-00 ")
 ;;81
 ;;21,"54868-5075-01 ")
 ;;82
 ;;21,"54868-5077-00 ")
 ;;90
 ;;21,"54868-5078-00 ")
 ;;83
 ;;21,"54868-5082-00 ")
 ;;176
 ;;21,"54868-5170-00 ")
 ;;80
 ;;21,"54868-5281-00 ")
 ;;78
 ;;21,"54868-5281-01 ")
 ;;72
 ;;21,"54868-5297-00 ")
 ;;79
 ;;21,"54868-5323-00 ")
 ;;17
 ;;21,"55175-5355-03 ")
 ;;142
 ;;21,"55289-0815-30 ")
 ;;22
 ;;21,"55289-0817-30 ")
 ;;195
 ;;21,"55289-0820-30 ")
 ;;18
 ;;21,"55289-0825-30 ")
 ;;167
 ;;21,"55289-0838-30 ")
 ;;14
 ;;21,"55289-0876-30 ")
 ;;187
 ;;21,"55887-0392-30 ")
 ;;108
 ;;21,"55887-0392-60 ")
 ;;109
 ;;21,"55887-0392-90 ")
 ;;110
 ;;21,"55887-0432-30 ")
 ;;119
 ;;21,"55887-0432-60 ")
 ;;99
 ;;21,"55887-0432-90 ")
 ;;114
 ;;21,"57866-2901-02 ")
 ;;186
 ;;21,"58016-4631-01 ")
 ;;10
 ;;21,"58864-0605-30 ")
 ;;209
 ;;21,"58864-0662-30 ")
 ;;93
 ;;21,"58864-0681-30 ")
 ;;184
 ;;21,"58864-0726-15 ")
 ;;141
 ;;21,"58864-0726-30 ")
 ;;140
 ;;21,"58864-0771-15 ")
 ;;97
 ;;21,"58864-0807-30 ")
 ;;98
 ;;21,"58864-0817-90 ")
 ;;214
 ;;21,"64455-0130-01 ")
 ;;137
 ;;21,"64455-0131-01 ")
 ;;134
 ;;21,"64455-0132-01 ")
 ;;35
 ;;21,"64455-0133-01 ")
 ;;9
 ;;21,"65597-0101-30 ")
 ;;208
 ;;21,"65597-0103-10 ")
 ;;210
 ;;21,"65597-0103-30 ")
 ;;211
 ;;21,"65597-0103-90 ")
 ;;147
 ;;21,"65597-0104-10 ")
 ;;212
 ;;21,"65597-0104-30 ")
 ;;165
 ;;21,"65597-0104-90 ")
 ;;217
 ;;21,"65597-0105-30 ")
 ;;52
 ;;21,"65597-0105-90 ")
 ;;42
 ;;21,"65597-0106-30 ")
 ;;40
 ;;21,"65597-0106-90 ")
 ;;39
 ;;21,"65597-0107-30 ")
 ;;38
 ;;21,"65597-0107-90 ")
 ;;37
 ;;21,"68115-0669-00 ")
 ;;59
 ;;21,"68115-0669-90 ")
 ;;60
 ;;21,"68115-0703-90 ")
 ;;51
 ;;21,"68115-0733-00 ")
 ;;200
 ;;21,"68115-0733-90 ")
 ;;201
 ;;21,"68115-0854-00 ")
 ;;166
 ;;21,"68115-0865-30 ")
 ;;27
 ;;9002226,636,.01)
 ;;BGP HEDIS ARB NDC
 ;;9002226,636,.02)
 ;;@
 ;;9002226,636,.04)
 ;;n
 ;;9002226,636,.06)
 ;;@
 ;;9002226,636,.08)
 ;;@
 ;;9002226,636,.09)
 ;;@
 ;;9002226,636,.11)
 ;;@
 ;;9002226,636,.12)
 ;;@
 ;;9002226,636,.13)
 ;;1
 ;;9002226,636,.14)
 ;;@
 ;;9002226,636,.15)
 ;;@
 ;;9002226,636,.16)
 ;;@
 ;;9002226,636,.17)
 ;;@
 ;;9002226,636,3101)
 ;;@
 ;;9002226.02101,"636,00006-0173-68 ",.01)
 ;;00006-0173-68
 ;;9002226.02101,"636,00006-0173-68 ",.02)
 ;;00006-0173-68
 ;;9002226.02101,"636,00006-0717-28 ",.01)
 ;;00006-0717-28
 ;;9002226.02101,"636,00006-0717-28 ",.02)
 ;;00006-0717-28
 ;;9002226.02101,"636,00006-0717-31 ",.01)
 ;;00006-0717-31
 ;;9002226.02101,"636,00006-0717-31 ",.02)
 ;;00006-0717-31
 ;;9002226.02101,"636,00006-0717-54 ",.01)
 ;;00006-0717-54
 ;;9002226.02101,"636,00006-0717-54 ",.02)
 ;;00006-0717-54
 ;;9002226.02101,"636,00006-0717-58 ",.01)
 ;;00006-0717-58
 ;;9002226.02101,"636,00006-0717-58 ",.02)
 ;;00006-0717-58
 ;;9002226.02101,"636,00006-0717-82 ",.01)
 ;;00006-0717-82
 ;;9002226.02101,"636,00006-0717-82 ",.02)
 ;;00006-0717-82
 ;;9002226.02101,"636,00006-0747-28 ",.01)
 ;;00006-0747-28
 ;;9002226.02101,"636,00006-0747-28 ",.02)
 ;;00006-0747-28
 ;;9002226.02101,"636,00006-0747-31 ",.01)
 ;;00006-0747-31
 ;;9002226.02101,"636,00006-0747-31 ",.02)
 ;;00006-0747-31
 ;;9002226.02101,"636,00006-0747-54 ",.01)
 ;;00006-0747-54
 ;;9002226.02101,"636,00006-0747-54 ",.02)
 ;;00006-0747-54
 ;;9002226.02101,"636,00006-0747-58 ",.01)
 ;;00006-0747-58
 ;;9002226.02101,"636,00006-0747-58 ",.02)
 ;;00006-0747-58
 ;;9002226.02101,"636,00006-0951-28 ",.01)
 ;;00006-0951-28
 ;;9002226.02101,"636,00006-0951-28 ",.02)
 ;;00006-0951-28
 ;;9002226.02101,"636,00006-0951-54 ",.01)
 ;;00006-0951-54
 ;;9002226.02101,"636,00006-0951-54 ",.02)
 ;;00006-0951-54
 ;;9002226.02101,"636,00006-0951-58 ",.01)
 ;;00006-0951-58
 ;;9002226.02101,"636,00006-0951-58 ",.02)
 ;;00006-0951-58
 ;;9002226.02101,"636,00006-0951-82 ",.01)
 ;;00006-0951-82
 ;;9002226.02101,"636,00006-0951-82 ",.02)
 ;;00006-0951-82
 ;;9002226.02101,"636,00006-0951-87 ",.01)
 ;;00006-0951-87
 ;;9002226.02101,"636,00006-0951-87 ",.02)
 ;;00006-0951-87
 ;;9002226.02101,"636,00006-0952-28 ",.01)
 ;;00006-0952-28
 ;;9002226.02101,"636,00006-0952-28 ",.02)
 ;;00006-0952-28
 ;;9002226.02101,"636,00006-0952-31 ",.01)
 ;;00006-0952-31
 ;;9002226.02101,"636,00006-0952-31 ",.02)
 ;;00006-0952-31
 ;;9002226.02101,"636,00006-0952-54 ",.01)
 ;;00006-0952-54
 ;;9002226.02101,"636,00006-0952-54 ",.02)
 ;;00006-0952-54
 ;;9002226.02101,"636,00006-0952-58 ",.01)
 ;;00006-0952-58
 ;;9002226.02101,"636,00006-0952-58 ",.02)
 ;;00006-0952-58
 ;;9002226.02101,"636,00006-0952-82 ",.01)
 ;;00006-0952-82
 ;;9002226.02101,"636,00006-0952-82 ",.02)
 ;;00006-0952-82
 ;;9002226.02101,"636,00006-0952-87 ",.01)
 ;;00006-0952-87
 ;;9002226.02101,"636,00006-0952-87 ",.02)
 ;;00006-0952-87
 ;;9002226.02101,"636,00006-0960-28 ",.01)
 ;;00006-0960-28
 ;;9002226.02101,"636,00006-0960-28 ",.02)
 ;;00006-0960-28
 ;;9002226.02101,"636,00006-0960-31 ",.01)
 ;;00006-0960-31
 ;;9002226.02101,"636,00006-0960-31 ",.02)
 ;;00006-0960-31
 ;;9002226.02101,"636,00006-0960-54 ",.01)
 ;;00006-0960-54
 ;;9002226.02101,"636,00006-0960-54 ",.02)
 ;;00006-0960-54
 ;;9002226.02101,"636,00006-0960-58 ",.01)
 ;;00006-0960-58
 ;;9002226.02101,"636,00006-0960-58 ",.02)
 ;;00006-0960-58
 ;;9002226.02101,"636,00006-0960-82 ",.01)
 ;;00006-0960-82
 ;;9002226.02101,"636,00006-0960-82 ",.02)
 ;;00006-0960-82
 ;;9002226.02101,"636,00006-0960-86 ",.01)
 ;;00006-0960-86
 ;;9002226.02101,"636,00006-0960-86 ",.02)
 ;;00006-0960-86
 ;;9002226.02101,"636,00051-5044-01 ",.01)
 ;;00051-5044-01
 ;;9002226.02101,"636,00051-5044-01 ",.02)
 ;;00051-5044-01
 ;;9002226.02101,"636,00051-5044-42 ",.01)
 ;;00051-5044-42
 ;;9002226.02101,"636,00051-5044-42 ",.02)
 ;;00051-5044-42
 ;;9002226.02101,"636,00051-5046-01 ",.01)
 ;;00051-5046-01
 ;;9002226.02101,"636,00051-5046-01 ",.02)
 ;;00051-5046-01
 ;;9002226.02101,"636,00051-5046-42 ",.01)
 ;;00051-5046-42
 ;;9002226.02101,"636,00051-5046-42 ",.02)
 ;;00051-5046-42
 ;;9002226.02101,"636,00078-0314-05 ",.01)
 ;;00078-0314-05
 ;;9002226.02101,"636,00078-0314-05 ",.02)
 ;;00078-0314-05
 ;;9002226.02101,"636,00078-0314-06 ",.01)
 ;;00078-0314-06
 ;;9002226.02101,"636,00078-0314-06 ",.02)
 ;;00078-0314-06
 ;;9002226.02101,"636,00078-0314-34 ",.01)
 ;;00078-0314-34
 ;;9002226.02101,"636,00078-0314-34 ",.02)
 ;;00078-0314-34
 ;;9002226.02101,"636,00078-0315-05 ",.01)
 ;;00078-0315-05
 ;;9002226.02101,"636,00078-0315-05 ",.02)
 ;;00078-0315-05
 ;;9002226.02101,"636,00078-0315-06 ",.01)
 ;;00078-0315-06
 ;;9002226.02101,"636,00078-0315-06 ",.02)
 ;;00078-0315-06
 ;;9002226.02101,"636,00078-0315-34 ",.01)
 ;;00078-0315-34
 ;;9002226.02101,"636,00078-0315-34 ",.02)
 ;;00078-0315-34
 ;;9002226.02101,"636,00078-0358-05 ",.01)
 ;;00078-0358-05
 ;;9002226.02101,"636,00078-0358-05 ",.02)
 ;;00078-0358-05
 ;;9002226.02101,"636,00078-0358-06 ",.01)
 ;;00078-0358-06
 ;;9002226.02101,"636,00078-0358-06 ",.02)
 ;;00078-0358-06
 ;;9002226.02101,"636,00078-0358-34 ",.01)
 ;;00078-0358-34
 ;;9002226.02101,"636,00078-0358-34 ",.02)
 ;;00078-0358-34
 ;;9002226.02101,"636,00078-0359-05 ",.01)
 ;;00078-0359-05
 ;;9002226.02101,"636,00078-0359-05 ",.02)
 ;;00078-0359-05
 ;
OTHER ; OTHER ROUTINES
 D ^BGP7IXTB
 D ^BGP7IXTC
 Q