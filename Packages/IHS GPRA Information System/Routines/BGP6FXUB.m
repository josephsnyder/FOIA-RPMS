BGP6FXUB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 12, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;DEC 12, 2005
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54868-2702-02 ")
 ;;45
 ;;21,"54868-2702-03 ")
 ;;46
 ;;21,"54868-3114-00 ")
 ;;47
 ;;21,"54868-3653-00 ")
 ;;48
 ;;21,"54868-3672-00 ")
 ;;356
 ;;21,"54868-3672-01 ")
 ;;49
 ;;21,"54868-3673-00 ")
 ;;333
 ;;21,"54868-3673-01 ")
 ;;334
 ;;21,"54868-3795-00 ")
 ;;494
 ;;21,"54868-3796-00 ")
 ;;533
 ;;21,"54868-3797-00 ")
 ;;519
 ;;21,"54868-3799-00 ")
 ;;368
 ;;21,"54868-3800-00 ")
 ;;375
 ;;21,"54868-3827-00 ")
 ;;50
 ;;21,"54868-3827-01 ")
 ;;51
 ;;21,"54868-3857-00 ")
 ;;52
 ;;21,"54868-4030-00 ")
 ;;53
 ;;21,"54868-4030-01 ")
 ;;54
 ;;21,"54868-4031-00 ")
 ;;55
 ;;21,"54868-4031-01 ")
 ;;56
 ;;21,"54868-4031-02 ")
 ;;57
 ;;21,"54868-4089-00 ")
 ;;58
 ;;21,"54868-4149-00 ")
 ;;59
 ;;21,"54868-4149-01 ")
 ;;60
 ;;21,"54868-4170-00 ")
 ;;61
 ;;21,"54868-4170-01 ")
 ;;62
 ;;21,"54868-4241-00 ")
 ;;63
 ;;21,"54868-4242-00 ")
 ;;64
 ;;21,"54868-4243-00 ")
 ;;65
 ;;21,"54868-4244-00 ")
 ;;66
 ;;21,"54868-4269-00 ")
 ;;67
 ;;21,"54868-4371-00 ")
 ;;68
 ;;21,"54868-4384-00 ")
 ;;69
 ;;21,"54868-4386-00 ")
 ;;182
 ;;21,"54868-4462-00 ")
 ;;70
 ;;21,"54868-4463-00 ")
 ;;71
 ;;21,"54868-4671-00 ")
 ;;185
 ;;21,"54868-4679-00 ")
 ;;72
 ;;21,"54868-4761-01 ")
 ;;73
 ;;21,"54868-4761-02 ")
 ;;74
 ;;21,"54868-4811-00 ")
 ;;75
 ;;21,"54868-4813-00 ")
 ;;76
 ;;21,"54868-4830-00 ")
 ;;77
 ;;21,"54868-4831-00 ")
 ;;78
 ;;21,"54868-4862-00 ")
 ;;79
 ;;21,"54868-4865-00 ")
 ;;80
 ;;21,"54868-4866-00 ")
 ;;81
 ;;21,"54868-4879-00 ")
 ;;82
 ;;21,"54868-4900-00 ")
 ;;83
 ;;21,"54868-4901-00 ")
 ;;84
 ;;21,"54868-4920-00 ")
 ;;85
 ;;21,"54868-5008-00 ")
 ;;86
 ;;21,"54868-5047-00 ")
 ;;87
 ;;21,"54868-5322-00 ")
 ;;88
 ;;21,"54868-5322-01 ")
 ;;89
 ;;21,"55045-1131-01 ")
 ;;90
 ;;21,"55045-1951-01 ")
 ;;91
 ;;21,"55045-2059-01 ")
 ;;92
 ;;21,"55045-2739-00 ")
 ;;93
 ;;21,"55045-2850-00 ")
 ;;94
 ;;21,"55175-4472-00 ")
 ;;95
 ;;21,"55175-4472-01 ")
 ;;96
 ;;21,"55175-4472-02 ")
 ;;97
 ;;21,"55175-4472-03 ")
 ;;98
 ;;21,"55175-5202-02 ")
 ;;99
 ;;21,"55289-0047-25 ")
 ;;235
 ;;21,"55289-0047-30 ")
 ;;236
 ;;21,"55289-0047-42 ")
 ;;237
 ;;21,"55289-0047-90 ")
 ;;238
 ;;21,"55289-0101-30 ")
 ;;408
 ;;21,"55289-0101-50 ")
 ;;409
 ;;21,"55289-0123-30 ")
 ;;194
 ;;21,"55289-0396-30 ")
 ;;445
 ;;21,"55289-0503-07 ")
 ;;301
 ;;21,"55289-0503-21 ")
 ;;302
 ;;21,"55289-0603-07 ")
 ;;100
 ;;21,"55289-0603-21 ")
 ;;101
 ;;21,"55289-0761-30 ")
 ;;102
 ;;21,"55289-0943-07 ")
 ;;275
 ;;21,"55289-0943-25 ")
 ;;276
 ;;21,"55289-0943-28 ")
 ;;103
 ;;21,"55289-0943-30 ")
 ;;277
 ;;21,"55887-0516-20 ")
 ;;143
 ;;21,"55887-0516-30 ")
 ;;144
 ;;21,"55887-0516-60 ")
 ;;145
 ;;21,"55887-0516-82 ")
 ;;146
 ;;21,"55887-0516-90 ")
 ;;147
 ;;21,"57866-0002-01 ")
 ;;104
 ;;21,"57866-0097-01 ")
 ;;105
 ;;21,"57866-3991-02 ")
 ;;106
 ;;21,"57866-3996-03 ")
 ;;107
 ;;21,"57866-6680-02 ")
 ;;108
 ;;21,"57866-6681-01 ")
 ;;278
 ;;21,"57866-6681-02 ")
 ;;279
 ;;21,"57866-6681-03 ")
 ;;280
 ;;21,"57866-6682-01 ")
 ;;239
 ;;21,"57866-6682-02 ")
 ;;109
 ;;21,"57866-7987-01 ")
 ;;210
 ;;21,"57866-7987-02 ")
 ;;110
 ;;21,"58016-0613-04 ")
 ;;164
 ;;21,"58016-0744-00 ")
 ;;195
 ;;21,"58016-0744-10 ")
 ;;196
 ;;21,"58016-0744-12 ")
 ;;197
 ;;21,"58016-0744-14 ")
 ;;198
 ;;21,"58016-0744-15 ")
 ;;199
 ;;21,"58016-0744-20 ")
 ;;200
 ;;21,"58016-0744-30 ")
 ;;201
 ;;21,"58016-0788-00 ")
 ;;156
 ;;21,"58016-0788-30 ")
 ;;157
 ;;21,"58016-0788-60 ")
 ;;158
 ;;21,"58016-0788-90 ")
 ;;159
 ;;21,"58016-0948-00 ")
 ;;281
 ;;21,"58016-0948-10 ")
 ;;282
 ;;21,"58016-0948-12 ")
 ;;283
 ;;21,"58016-0948-14 ")
 ;;284
 ;;21,"58016-0948-15 ")
 ;;285
 ;;21,"58016-0948-20 ")
 ;;286
 ;;21,"58016-0948-30 ")
 ;;287
 ;;21,"58016-0948-50 ")
 ;;288
 ;;21,"58016-0983-00 ")
 ;;240
 ;;21,"58016-0983-10 ")
 ;;241
 ;;21,"58016-0983-12 ")
 ;;242
 ;;21,"58016-0983-14 ")
 ;;243
 ;;21,"58016-0983-15 ")
 ;;244
 ;;21,"58016-0983-20 ")
 ;;245
 ;;21,"58016-0983-30 ")
 ;;246
 ;;21,"58016-3182-01 ")
 ;;495
 ;;21,"58016-4074-01 ")
 ;;369
 ;;21,"58864-0422-01 ")
 ;;111
 ;;21,"58864-0422-28 ")
 ;;112
 ;;21,"58864-0803-30 ")
 ;;113
 ;;21,"59772-0025-03 ")
 ;;471
 ;;21,"59772-0026-03 ")
 ;;410
 ;;21,"59772-0026-04 ")
 ;;411
 ;;21,"59772-0027-03 ")
 ;;446
 ;;21,"59772-0027-04 ")
 ;;447
 ;;21,"59911-5879-02 ")
 ;;472
 ;;21,"59911-5880-02 ")
 ;;412
 ;;21,"59911-5882-02 ")
 ;;448
 ;;21,"60346-0029-20 ")
 ;;114
 ;;21,"60346-0029-90 ")
 ;;115
 ;;21,"60346-0311-30 ")
 ;;116
 ;;21,"60346-0311-90 ")
 ;;117
 ;;21,"60346-0319-30 ")
 ;;118
 ;;21,"60346-0341-30 ")
 ;;119
 ;;21,"60346-0341-90 ")
 ;;120
 ;;21,"60346-0599-20 ")
 ;;121
 ;;21,"60346-0599-30 ")
 ;;122
 ;;21,"60346-0599-90 ")
 ;;123
 ;;21,"60346-0752-20 ")
 ;;124
 ;;21,"60346-0847-30 ")
 ;;125
 ;;21,"60346-0847-90 ")
 ;;126
 ;;21,"60346-0849-90 ")
 ;;127
 ;;21,"60346-0859-07 ")
 ;;128
 ;;21,"61570-0125-63 ")
 ;;563
 ;;21,"63874-0089-01 ")
 ;;129
 ;;21,"64248-0101-01 ")
 ;;357
 ;;21,"64248-0102-01 ")
 ;;335
 ;;21,"64248-0310-01 ")
 ;;503
 ;;21,"64248-0320-01 ")
 ;;509
 ;;21,"64248-0330-01 ")
 ;;496
 ;;21,"64248-0340-01 ")
 ;;520
 ;;21,"64248-0350-01 ")
 ;;534
 ;;21,"64249-0320-01 ")
 ;;130
 ;;21,"66116-0285-30 ")
 ;;131
 ;;21,"66116-0437-30 ")
 ;;132
 ;;21,"66116-0438-30 ")
 ;;133
 ;;21,"66267-0174-30 ")
 ;;134
 ;;21,"66500-0158-01 ")
 ;;475
 ;;21,"66500-0259-01 ")
 ;;413
 ;;21,"66500-0748-01 ")
 ;;449
 ;;21,"66500-0768-01 ")
 ;;473
 ;;21,"68030-6681-01 ")
 ;;135
 ;;21,"68030-6681-02 ")
 ;;136
 ;;21,"68030-6681-03 ")
 ;;137
 ;;21,"68030-6682-01 ")
 ;;138
 ;;21,"68030-7987-01 ")
 ;;139
 ;;21,"68030-9960-01 ")
 ;;140
 ;;21,"68115-0294-30 ")
 ;;247
 ;;21,"68115-0387-30 ")
 ;;414
 ;;21,"68115-0387-60 ")
 ;;415
 ;;21,"68115-0388-30 ")
 ;;450
 ;;21,"68115-0388-60 ")
 ;;451
 ;;21,"68115-0681-04 ")
 ;;186
 ;;21,"68115-0755-04 ")
 ;;165
 ;;21,"68115-0793-00 ")
 ;;160
 ;;9002226,563,.01)
 ;;BGP HEDIS OSTEOPOROSIS NDC
 ;;9002226,563,.02)
 ;;@
 ;;9002226,563,.04)
 ;;n
 ;;9002226,563,.06)
 ;;@
 ;;9002226,563,.08)
 ;;@
 ;;9002226,563,.09)
 ;;@
 ;;9002226,563,.11)
 ;;@
 ;;9002226,563,.12)
 ;;@
 ;;9002226,563,.13)
 ;;1
 ;;9002226,563,.14)
 ;;@
 ;;9002226,563,.15)
 ;;@
 ;;9002226,563,.16)
 ;;@
 ;;9002226,563,.17)
 ;;@
 ;;9002226,563,3101)
 ;;@
 ;;9002226.02101,"563,00002-4165-02 ",.01)
 ;;00002-4165-02
 ;;9002226.02101,"563,00002-4165-02 ",.02)
 ;;00002-4165-02
 ;;9002226.02101,"563,00002-4165-07 ",.01)
 ;;00002-4165-07
 ;;9002226.02101,"563,00002-4165-07 ",.02)
 ;;00002-4165-07
 ;;9002226.02101,"563,00002-4165-30 ",.01)
 ;;00002-4165-30
 ;;9002226.02101,"563,00002-4165-30 ",.02)
 ;;00002-4165-30
 ;;9002226.02101,"563,00002-8971-01 ",.01)
 ;;00002-8971-01
 ;;9002226.02101,"563,00002-8971-01 ",.02)
 ;;00002-8971-01
 ;;9002226.02101,"563,00004-0185-23 ",.01)
 ;;00004-0185-23
 ;;9002226.02101,"563,00004-0185-23 ",.02)
 ;;00004-0185-23
 ;;9002226.02101,"563,00004-0186-82 ",.01)
 ;;00004-0186-82
 ;;9002226.02101,"563,00004-0186-82 ",.02)
 ;;00004-0186-82
 ;;9002226.02101,"563,00006-0031-21 ",.01)
 ;;00006-0031-21
 ;;9002226.02101,"563,00006-0031-21 ",.02)
 ;;00006-0031-21
 ;;9002226.02101,"563,00006-0031-44 ",.01)
 ;;00006-0031-44
 ;;9002226.02101,"563,00006-0031-44 ",.02)
 ;;00006-0031-44
 ;;9002226.02101,"563,00006-0077-21 ",.01)
 ;;00006-0077-21
 ;;9002226.02101,"563,00006-0077-21 ",.02)
 ;;00006-0077-21
 ;;9002226.02101,"563,00006-0077-44 ",.01)
 ;;00006-0077-44
 ;;9002226.02101,"563,00006-0077-44 ",.02)
 ;;00006-0077-44
 ;;9002226.02101,"563,00006-0212-31 ",.01)
 ;;00006-0212-31
 ;;9002226.02101,"563,00006-0212-31 ",.02)
 ;;00006-0212-31
 ;;9002226.02101,"563,00006-0710-21 ",.01)
 ;;00006-0710-21
 ;;9002226.02101,"563,00006-0710-21 ",.02)
 ;;00006-0710-21
 ;;9002226.02101,"563,00006-0710-44 ",.01)
 ;;00006-0710-44
 ;;9002226.02101,"563,00006-0710-44 ",.02)
 ;;00006-0710-44
 ;;9002226.02101,"563,00006-0925-31 ",.01)
 ;;00006-0925-31
 ;;9002226.02101,"563,00006-0925-31 ",.02)
 ;;00006-0925-31
 ;;9002226.02101,"563,00006-0925-58 ",.01)
 ;;00006-0925-58
 ;;9002226.02101,"563,00006-0925-58 ",.02)
 ;;00006-0925-58
 ;;9002226.02101,"563,00006-0936-28 ",.01)
 ;;00006-0936-28
 ;;9002226.02101,"563,00006-0936-28 ",.02)
 ;;00006-0936-28
 ;;9002226.02101,"563,00006-0936-31 ",.01)
 ;;00006-0936-31
 ;;9002226.02101,"563,00006-0936-31 ",.02)
 ;;00006-0936-31
 ;;9002226.02101,"563,00006-0936-58 ",.01)
 ;;00006-0936-58
 ;;9002226.02101,"563,00006-0936-58 ",.02)
 ;;00006-0936-58
 ;;9002226.02101,"563,00006-0936-72 ",.01)
 ;;00006-0936-72
 ;;9002226.02101,"563,00006-0936-72 ",.02)
 ;;00006-0936-72
 ;;9002226.02101,"563,00006-0936-82 ",.01)
 ;;00006-0936-82
 ;;9002226.02101,"563,00006-0936-82 ",.02)
 ;;00006-0936-82
 ;;9002226.02101,"563,00006-3833-34 ",.01)
 ;;00006-3833-34
 ;;9002226.02101,"563,00006-3833-34 ",.02)
 ;;00006-3833-34
 ;;9002226.02101,"563,00009-3772-01 ",.01)
 ;;00009-3772-01
 ;;9002226.02101,"563,00009-3772-01 ",.02)
 ;;00009-3772-01
 ;;9002226.02101,"563,00009-3772-17 ",.01)
 ;;00009-3772-17
 ;;9002226.02101,"563,00009-3772-17 ",.02)
 ;;00009-3772-17
 ;;9002226.02101,"563,00009-3773-01 ",.01)
 ;;00009-3773-01
 ;;9002226.02101,"563,00009-3773-01 ",.02)
 ;;00009-3773-01
 ;;9002226.02101,"563,00009-3773-17 ",.01)
 ;;00009-3773-17
 ;;9002226.02101,"563,00009-3773-17 ",.02)
 ;;00009-3773-17
 ;;9002226.02101,"563,00009-3774-01 ",.01)
 ;;00009-3774-01
 ;;9002226.02101,"563,00009-3774-01 ",.02)
 ;;00009-3774-01
 ;;9002226.02101,"563,00009-3774-17 ",.01)
 ;;00009-3774-17
 ;;9002226.02101,"563,00009-3774-17 ",.02)
 ;;00009-3774-17
 ;;9002226.02101,"563,00009-5174-01 ",.01)
 ;;00009-5174-01
 ;;9002226.02101,"563,00009-5174-01 ",.02)
 ;;00009-5174-01
 ;;9002226.02101,"563,00009-5174-02 ",.01)
 ;;00009-5174-02
 ;;9002226.02101,"563,00009-5174-02 ",.02)
 ;;00009-5174-02
 ;;9002226.02101,"563,00046-0864-81 ",.01)
 ;;00046-0864-81
 ;;9002226.02101,"563,00046-0864-81 ",.02)
 ;;00046-0864-81
 ;;9002226.02101,"563,00046-0865-81 ",.01)
 ;;00046-0865-81
 ;;9002226.02101,"563,00046-0865-81 ",.02)
 ;;00046-0865-81
 ;;9002226.02101,"563,00046-0865-91 ",.01)
 ;;00046-0865-91
 ;;9002226.02101,"563,00046-0865-91 ",.02)
 ;;00046-0865-91
 ;;9002226.02101,"563,00046-0866-81 ",.01)
 ;;00046-0866-81
 ;;9002226.02101,"563,00046-0866-81 ",.02)
 ;;00046-0866-81
 ;;9002226.02101,"563,00046-0866-91 ",.01)
 ;;00046-0866-91
 ;;9002226.02101,"563,00046-0866-91 ",.02)
 ;;00046-0866-91
 ;;9002226.02101,"563,00046-0866-95 ",.01)
 ;;00046-0866-95
 ;;9002226.02101,"563,00046-0866-95 ",.02)
 ;;00046-0866-95
 ;;9002226.02101,"563,00046-0866-99 ",.01)
 ;;00046-0866-99
 ;;9002226.02101,"563,00046-0866-99 ",.02)
 ;;00046-0866-99
 ;;9002226.02101,"563,00046-0867-81 ",.01)
 ;;00046-0867-81
 ;;9002226.02101,"563,00046-0867-81 ",.02)
 ;;00046-0867-81
 ;;9002226.02101,"563,00046-0867-91 ",.01)
 ;;00046-0867-91
 ;;9002226.02101,"563,00046-0867-91 ",.02)
 ;;00046-0867-91
 ;;9002226.02101,"563,00046-0867-95 ",.01)
 ;;00046-0867-95
 ;;9002226.02101,"563,00046-0867-95 ",.02)
 ;;00046-0867-95
 ;;9002226.02101,"563,00046-0867-99 ",.01)
 ;;00046-0867-99
 ;;9002226.02101,"563,00046-0867-99 ",.02)
 ;;00046-0867-99
 ;;9002226.02101,"563,00046-0868-81 ",.01)
 ;;00046-0868-81
 ;;9002226.02101,"563,00046-0868-81 ",.02)
 ;;00046-0868-81
 ;;9002226.02101,"563,00046-0868-91 ",.01)
 ;;00046-0868-91
 ;;9002226.02101,"563,00046-0868-91 ",.02)
 ;;00046-0868-91
 ;;9002226.02101,"563,00046-0875-01 ",.01)
 ;;00046-0875-01
 ;;9002226.02101,"563,00046-0875-01 ",.02)
 ;;00046-0875-01
 ;;9002226.02101,"563,00046-0875-02 ",.01)
 ;;00046-0875-02
 ;;9002226.02101,"563,00046-0875-02 ",.02)
 ;;00046-0875-02
 ;;9002226.02101,"563,00046-0875-05 ",.01)
 ;;00046-0875-05
 ;;9002226.02101,"563,00046-0875-05 ",.02)
 ;;00046-0875-05
 ;;9002226.02101,"563,00046-0875-06 ",.01)
 ;;00046-0875-06
 ;;9002226.02101,"563,00046-0875-06 ",.02)
 ;;00046-0875-06
 ;;9002226.02101,"563,00046-0936-81 ",.01)
 ;;00046-0936-81
 ;;9002226.02101,"563,00046-0936-81 ",.02)
 ;;00046-0936-81
 ;;9002226.02101,"563,00046-0936-99 ",.01)
 ;;00046-0936-99
 ;;9002226.02101,"563,00046-0936-99 ",.02)
 ;;00046-0936-99
 ;;9002226.02101,"563,00046-0937-04 ",.01)
 ;;00046-0937-04
 ;;9002226.02101,"563,00046-0937-04 ",.02)
 ;;00046-0937-04
 ;;9002226.02101,"563,00046-0937-09 ",.01)
 ;;00046-0937-09
 ;;9002226.02101,"563,00046-0937-09 ",.02)
 ;;00046-0937-09
 ;;9002226.02101,"563,00046-0938-08 ",.01)
 ;;00046-0938-08
 ;;9002226.02101,"563,00046-0938-08 ",.02)
 ;;00046-0938-08
 ;;9002226.02101,"563,00046-0938-09 ",.01)
 ;;00046-0938-09
 ;;9002226.02101,"563,00046-0938-09 ",.02)
 ;;00046-0938-09
 ;;9002226.02101,"563,00046-0975-02 ",.01)
 ;;00046-0975-02
 ;;9002226.02101,"563,00046-0975-02 ",.02)
 ;;00046-0975-02
 ;;9002226.02101,"563,00046-0975-05 ",.01)
 ;;00046-0975-05
 ;;9002226.02101,"563,00046-0975-05 ",.02)
 ;;00046-0975-05
 ;;9002226.02101,"563,00046-0975-06 ",.01)
 ;;00046-0975-06
 ;;9002226.02101,"563,00046-0975-06 ",.02)
 ;;00046-0975-06
 ;;9002226.02101,"563,00046-1104-81 ",.01)
 ;;00046-1104-81
 ;;9002226.02101,"563,00046-1104-81 ",.02)
 ;;00046-1104-81