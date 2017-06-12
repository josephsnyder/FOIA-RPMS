BGP51X2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58016-0698-00 ")
 ;;453
 ;;21,"58016-0698-30 ")
 ;;454
 ;;21,"58016-0698-60 ")
 ;;455
 ;;21,"58016-0698-90 ")
 ;;456
 ;;21,"58016-0699-00 ")
 ;;88
 ;;21,"58016-0699-30 ")
 ;;89
 ;;21,"58016-0699-60 ")
 ;;90
 ;;21,"58016-0699-90 ")
 ;;91
 ;;21,"58016-0795-00 ")
 ;;235
 ;;21,"58016-0795-30 ")
 ;;236
 ;;21,"58016-0795-60 ")
 ;;237
 ;;21,"58016-0795-90 ")
 ;;238
 ;;21,"58016-0864-00 ")
 ;;313
 ;;21,"58016-0864-30 ")
 ;;314
 ;;21,"58016-0864-60 ")
 ;;315
 ;;21,"58016-0864-90 ")
 ;;316
 ;;21,"59676-0278-01 ")
 ;;402
 ;;21,"59676-0561-01 ")
 ;;48
 ;;21,"59676-0562-01 ")
 ;;53
 ;;21,"59676-0563-01 ")
 ;;45
 ;;21,"59676-0564-01 ")
 ;;46
 ;;21,"59676-0565-01 ")
 ;;58
 ;;21,"59676-0566-30 ")
 ;;57
 ;;21,"59676-0570-01 ")
 ;;367
 ;;21,"59676-0571-01 ")
 ;;372
 ;;21,"59676-0572-01 ")
 ;;366
 ;;21,"59762-1190-01 ")
 ;;252
 ;;21,"59762-1191-01 ")
 ;;258
 ;;21,"59762-1192-01 ")
 ;;266
 ;;21,"59762-1193-01 ")
 ;;274
 ;;21,"59762-3650-01 ")
 ;;317
 ;;21,"60429-0298-60 ")
 ;;380
 ;;21,"60429-0353-60 ")
 ;;234
 ;;21,"60429-0354-30 ")
 ;;245
 ;;21,"60505-3251-06 ")
 ;;233
 ;;21,"60505-3252-03 ")
 ;;246
 ;;21,"60505-3583-06 ")
 ;;141
 ;;21,"60505-3788-06 ")
 ;;381
 ;;21,"60505-4058-03 ")
 ;;396
 ;;21,"60760-0010-18 ")
 ;;95
 ;;21,"60760-0010-63 ")
 ;;96
 ;;21,"60760-0385-04 ")
 ;;480
 ;;21,"60760-0385-14 ")
 ;;471
 ;;21,"60760-0595-04 ")
 ;;446
 ;;21,"60760-0595-14 ")
 ;;447
 ;;21,"61958-0401-01 ")
 ;;345
 ;;21,"61958-0403-01 ")
 ;;351
 ;;21,"61958-0404-01 ")
 ;;342
 ;;21,"61958-0405-01 ")
 ;;343
 ;;21,"61958-0406-01 ")
 ;;344
 ;;21,"61958-0601-01 ")
 ;;204
 ;;21,"61958-0602-01 ")
 ;;207
 ;;21,"61958-0701-01 ")
 ;;419
 ;;21,"61958-1101-01 ")
 ;;518
 ;;21,"61958-1201-01 ")
 ;;523
 ;;21,"62584-0046-11 ")
 ;;168
 ;;21,"62584-0046-21 ")
 ;;169
 ;;21,"62584-0048-11 ")
 ;;185
 ;;21,"62584-0048-21 ")
 ;;186
 ;;21,"63010-0010-30 ")
 ;;97
 ;;21,"63010-0011-90 ")
 ;;112
 ;;21,"63010-0027-70 ")
 ;;106
 ;;21,"64376-0128-01 ")
 ;;307
 ;;21,"64376-0129-23 ")
 ;;341
 ;;21,"64376-0133-02 ")
 ;;286
 ;;21,"65162-0209-06 ")
 ;;382
 ;;21,"65862-0024-60 ")
 ;;333
 ;;21,"65862-0027-60 ")
 ;;383
 ;;21,"65862-0046-60 ")
 ;;267
 ;;21,"65862-0047-60 ")
 ;;275
 ;;21,"65862-0048-24 ")
 ;;340
 ;;21,"65862-0073-60 ")
 ;;140
 ;;21,"65862-0107-01 ")
 ;;308
 ;;21,"65862-0111-60 ")
 ;;253
 ;;21,"65862-0112-60 ")
 ;;259
 ;;21,"65862-0310-30 ")
 ;;157
 ;;21,"65862-0311-30 ")
 ;;166
 ;;21,"65862-0312-30 ")
 ;;170
 ;;21,"65862-0313-30 ")
 ;;187
 ;;21,"65862-0552-60 ")
 ;;232
 ;;21,"65862-0553-30 ")
 ;;247
 ;;21,"65862-0597-60 ")
 ;;469
 ;;21,"66267-0509-06 ")
 ;;457
 ;;21,"66267-0513-06 ")
 ;;214
 ;;21,"66267-0514-18 ")
 ;;98
 ;;21,"66267-0514-63 ")
 ;;99
 ;;21,"66336-0032-03 ")
 ;;416
 ;;21,"66336-0214-06 ")
 ;;19
 ;;21,"66336-0563-03 ")
 ;;458
 ;;21,"66336-0563-06 ")
 ;;459
 ;;21,"66336-0624-12 ")
 ;;502
 ;;21,"66336-1994-60 ")
 ;;66
 ;;21,"68071-0748-12 ")
 ;;501
 ;;21,"68071-0908-06 ")
 ;;462
 ;;21,"68084-0021-11 ")
 ;;138
 ;;21,"68084-0021-21 ")
 ;;139
 ;;21,"68084-0416-11 ")
 ;;465
 ;;21,"68084-0416-21 ")
 ;;466
 ;;21,"68084-0431-11 ")
 ;;172
 ;;21,"68084-0431-21 ")
 ;;173
 ;;21,"68084-0432-11 ")
 ;;188
 ;;21,"68084-0432-21 ")
 ;;189
 ;;21,"68084-0460-11 ")
 ;;276
 ;;21,"68084-0460-21 ")
 ;;277
 ;;21,"68084-0461-11 ")
 ;;309
 ;;21,"68084-0461-21 ")
 ;;310
 ;;21,"68084-0462-11 ")
 ;;335
 ;;21,"68084-0462-21 ")
 ;;336
 ;;21,"68084-0578-11 ")
 ;;230
 ;;21,"68084-0578-21 ")
 ;;231
 ;;21,"68180-0284-07 ")
 ;;464
 ;;21,"68180-0286-07 ")
 ;;505
 ;;21,"68258-1970-01 ")
 ;;127
 ;;21,"68258-1971-03 ")
 ;;347
 ;;21,"68258-1972-01 ")
 ;;500
 ;;21,"68258-1977-06 ")
 ;;463
 ;;21,"68258-1978-03 ")
 ;;398
 ;;21,"68258-1979-03 ")
 ;;365
 ;;21,"68258-1980-06 ")
 ;;51
 ;;21,"68258-1981-06 ")
 ;;20
 ;;21,"68258-1982-06 ")
 ;;373
 ;;21,"68258-1983-03 ")
 ;;415
 ;;21,"68258-1984-06 ")
 ;;35
 ;;21,"68258-1985-03 ")
 ;;43
 ;;21,"68258-1986-06 ")
 ;;50
 ;;21,"68258-1987-03 ")
 ;;120
 ;;21,"68258-1988-03 ")
 ;;404
 ;;21,"68258-1989-03 ")
 ;;519
 ;;21,"68258-1990-03 ")
 ;;515
 ;;21,"68258-1993-06 ")
 ;;460
 ;;21,"68258-1994-06 ")
 ;;65
 ;;21,"76519-1005-06 ")
 ;;461
 ;;9002226,1202,.01)
 ;;BGP PQA ANTIRETROVIRAL NDC
 ;;9002226,1202,.02)
 ;;@
 ;;9002226,1202,.04)
 ;;n
 ;;9002226,1202,.06)
 ;;@
 ;;9002226,1202,.08)
 ;;@
 ;;9002226,1202,.09)
 ;;3140819
 ;;9002226,1202,.11)
 ;;@
 ;;9002226,1202,.12)
 ;;@
 ;;9002226,1202,.13)
 ;;1
 ;;9002226,1202,.14)
 ;;@
 ;;9002226,1202,.15)
 ;;50.67
 ;;9002226,1202,.16)
 ;;@
 ;;9002226,1202,.17)
 ;;@
 ;;9002226,1202,3101)
 ;;@
 ;;9002226.02101,"1202,00003-1964-01 ",.01)
 ;;00003-1964-01
 ;;9002226.02101,"1202,00003-1964-01 ",.02)
 ;;00003-1964-01
 ;;9002226.02101,"1202,00003-1965-01 ",.01)
 ;;00003-1965-01
 ;;9002226.02101,"1202,00003-1965-01 ",.02)
 ;;00003-1965-01
 ;;9002226.02101,"1202,00003-1966-01 ",.01)
 ;;00003-1966-01
 ;;9002226.02101,"1202,00003-1966-01 ",.02)
 ;;00003-1966-01
 ;;9002226.02101,"1202,00003-1967-01 ",.01)
 ;;00003-1967-01
 ;;9002226.02101,"1202,00003-1967-01 ",.02)
 ;;00003-1967-01
 ;;9002226.02101,"1202,00003-1968-01 ",.01)
 ;;00003-1968-01
 ;;9002226.02101,"1202,00003-1968-01 ",.02)
 ;;00003-1968-01
 ;;9002226.02101,"1202,00003-3622-12 ",.01)
 ;;00003-3622-12
 ;;9002226.02101,"1202,00003-3622-12 ",.02)
 ;;00003-3622-12
 ;;9002226.02101,"1202,00003-3623-12 ",.01)
 ;;00003-3623-12
 ;;9002226.02101,"1202,00003-3623-12 ",.02)
 ;;00003-3623-12
 ;;9002226.02101,"1202,00003-3624-12 ",.01)
 ;;00003-3624-12
 ;;9002226.02101,"1202,00003-3624-12 ",.02)
 ;;00003-3624-12
 ;;9002226.02101,"1202,00003-3631-12 ",.01)
 ;;00003-3631-12
 ;;9002226.02101,"1202,00003-3631-12 ",.02)
 ;;00003-3631-12
 ;;9002226.02101,"1202,00004-0244-51 ",.01)
 ;;00004-0244-51
 ;;9002226.02101,"1202,00004-0244-51 ",.02)
 ;;00004-0244-51
 ;;9002226.02101,"1202,00004-0245-15 ",.01)
 ;;00004-0245-15
 ;;9002226.02101,"1202,00004-0245-15 ",.02)
 ;;00004-0245-15
 ;;9002226.02101,"1202,00004-0380-39 ",.01)
 ;;00004-0380-39
 ;;9002226.02101,"1202,00004-0380-39 ",.02)
 ;;00004-0380-39
 ;;9002226.02101,"1202,00004-0381-40 ",.01)
 ;;00004-0381-40
 ;;9002226.02101,"1202,00004-0381-40 ",.02)
 ;;00004-0381-40
 ;;9002226.02101,"1202,00006-0227-61 ",.01)
 ;;00006-0227-61
 ;;9002226.02101,"1202,00006-0227-61 ",.02)
 ;;00006-0227-61
 ;;9002226.02101,"1202,00006-0473-61 ",.01)
 ;;00006-0473-61
 ;;9002226.02101,"1202,00006-0473-61 ",.02)
 ;;00006-0473-61
 ;;9002226.02101,"1202,00006-0477-61 ",.01)
 ;;00006-0477-61
 ;;9002226.02101,"1202,00006-0477-61 ",.02)
 ;;00006-0477-61
 ;;9002226.02101,"1202,00006-0570-62 ",.01)
 ;;00006-0570-62
 ;;9002226.02101,"1202,00006-0570-62 ",.02)
 ;;00006-0570-62
 ;;9002226.02101,"1202,00006-0571-43 ",.01)
 ;;00006-0571-43
 ;;9002226.02101,"1202,00006-0571-43 ",.02)
 ;;00006-0571-43
 ;;9002226.02101,"1202,00006-0573-01 ",.01)
 ;;00006-0573-01
 ;;9002226.02101,"1202,00006-0573-01 ",.02)
 ;;00006-0573-01
 ;;9002226.02101,"1202,00006-0573-18 ",.01)
 ;;00006-0573-18
 ;;9002226.02101,"1202,00006-0573-18 ",.02)
 ;;00006-0573-18
 ;;9002226.02101,"1202,00006-0573-40 ",.01)
 ;;00006-0573-40
 ;;9002226.02101,"1202,00006-0573-40 ",.02)
 ;;00006-0573-40
 ;;9002226.02101,"1202,00006-0573-42 ",.01)
 ;;00006-0573-42
 ;;9002226.02101,"1202,00006-0573-42 ",.02)
 ;;00006-0573-42
 ;;9002226.02101,"1202,00006-0573-54 ",.01)
 ;;00006-0573-54
 ;;9002226.02101,"1202,00006-0573-54 ",.02)
 ;;00006-0573-54
 ;;9002226.02101,"1202,00006-0573-62 ",.01)
 ;;00006-0573-62
 ;;9002226.02101,"1202,00006-0573-62 ",.02)
 ;;00006-0573-62
 ;;9002226.02101,"1202,00054-0052-21 ",.01)
 ;;00054-0052-21
 ;;9002226.02101,"1202,00054-0052-21 ",.02)
 ;;00054-0052-21
 ;;9002226.02101,"1202,00054-0450-58 ",.01)
 ;;00054-0450-58
 ;;9002226.02101,"1202,00054-0450-58 ",.02)
 ;;00054-0450-58
 ;;9002226.02101,"1202,00054-0459-21 ",.01)
 ;;00054-0459-21
 ;;9002226.02101,"1202,00054-0459-21 ",.02)
 ;;00054-0459-21
 ;;9002226.02101,"1202,00056-0470-30 ",.01)
 ;;00056-0470-30
 ;;9002226.02101,"1202,00056-0470-30 ",.02)
 ;;00056-0470-30
 ;;9002226.02101,"1202,00056-0474-92 ",.01)
 ;;00056-0474-92
 ;;9002226.02101,"1202,00056-0474-92 ",.02)
 ;;00056-0474-92
 ;;9002226.02101,"1202,00056-0510-30 ",.01)
 ;;00056-0510-30
 ;;9002226.02101,"1202,00056-0510-30 ",.02)
 ;;00056-0510-30
 ;;9002226.02101,"1202,00069-0807-60 ",.01)
 ;;00069-0807-60
 ;;9002226.02101,"1202,00069-0807-60 ",.02)
 ;;00069-0807-60
 ;;9002226.02101,"1202,00069-0808-60 ",.01)
 ;;00069-0808-60
 ;;9002226.02101,"1202,00069-0808-60 ",.02)
 ;;00069-0808-60
 ;;9002226.02101,"1202,00074-0522-60 ",.01)
 ;;00074-0522-60
 ;;9002226.02101,"1202,00074-0522-60 ",.02)
 ;;00074-0522-60
 ;;9002226.02101,"1202,00074-1940-63 ",.01)
 ;;00074-1940-63
 ;;9002226.02101,"1202,00074-1940-63 ",.02)
 ;;00074-1940-63
 ;;9002226.02101,"1202,00074-3333-30 ",.01)
 ;;00074-3333-30
 ;;9002226.02101,"1202,00074-3333-30 ",.02)
 ;;00074-3333-30
 ;;9002226.02101,"1202,00074-3956-46 ",.01)
 ;;00074-3956-46
 ;;9002226.02101,"1202,00074-3956-46 ",.02)
 ;;00074-3956-46
 ;;9002226.02101,"1202,00074-6633-30 ",.01)
 ;;00074-6633-30
 ;;9002226.02101,"1202,00074-6633-30 ",.02)
 ;;00074-6633-30
 ;;9002226.02101,"1202,00074-6799-22 ",.01)
 ;;00074-6799-22
 ;;9002226.02101,"1202,00074-6799-22 ",.02)
 ;;00074-6799-22
 ;;9002226.02101,"1202,00087-6632-41 ",.01)
 ;;00087-6632-41
 ;;9002226.02101,"1202,00087-6632-41 ",.02)
 ;;00087-6632-41
 ;;9002226.02101,"1202,00087-6633-41 ",.01)
 ;;00087-6633-41
 ;;9002226.02101,"1202,00087-6633-41 ",.02)
 ;;00087-6633-41
 ;;9002226.02101,"1202,00087-6671-17 ",.01)
 ;;00087-6671-17
 ;;9002226.02101,"1202,00087-6671-17 ",.02)
 ;;00087-6671-17
 ;;9002226.02101,"1202,00087-6672-17 ",.01)
 ;;00087-6672-17
 ;;9002226.02101,"1202,00087-6672-17 ",.02)
 ;;00087-6672-17
 ;;9002226.02101,"1202,00087-6673-17 ",.01)
 ;;00087-6673-17
 ;;9002226.02101,"1202,00087-6673-17 ",.02)
 ;;00087-6673-17
 ;;9002226.02101,"1202,00087-6674-17 ",.01)
 ;;00087-6674-17
 ;;9002226.02101,"1202,00087-6674-17 ",.02)
 ;;00087-6674-17
 ;;9002226.02101,"1202,00093-5385-06 ",.01)
 ;;00093-5385-06
 ;;9002226.02101,"1202,00093-5385-06 ",.02)
 ;;00093-5385-06
 ;;9002226.02101,"1202,00173-0108-55 ",.01)
 ;;00173-0108-55
 ;;9002226.02101,"1202,00173-0108-55 ",.02)
 ;;00173-0108-55
 ;;9002226.02101,"1202,00173-0113-18 ",.01)
 ;;00173-0113-18
 ;;9002226.02101,"1202,00173-0113-18 ",.02)
 ;;00173-0113-18
 ;;9002226.02101,"1202,00173-0470-01 ",.01)
 ;;00173-0470-01
 ;;9002226.02101,"1202,00173-0470-01 ",.02)
 ;;00173-0470-01
 ;;9002226.02101,"1202,00173-0471-00 ",.01)
 ;;00173-0471-00
 ;;9002226.02101,"1202,00173-0471-00 ",.02)
 ;;00173-0471-00
 ;;9002226.02101,"1202,00173-0501-00 ",.01)
 ;;00173-0501-00
 ;;9002226.02101,"1202,00173-0501-00 ",.02)
 ;;00173-0501-00
 ;;9002226.02101,"1202,00173-0595-00 ",.01)
 ;;00173-0595-00
 ;;9002226.02101,"1202,00173-0595-00 ",.02)
 ;;00173-0595-00
 ;;9002226.02101,"1202,00173-0595-02 ",.01)
 ;;00173-0595-02
 ;;9002226.02101,"1202,00173-0595-02 ",.02)
 ;;00173-0595-02
 ;;9002226.02101,"1202,00173-0661-00 ",.01)
 ;;00173-0661-00
 ;;9002226.02101,"1202,00173-0661-00 ",.02)
 ;;00173-0661-00
 ;;9002226.02101,"1202,00173-0661-01 ",.01)
 ;;00173-0661-01
 ;;9002226.02101,"1202,00173-0661-01 ",.02)
 ;;00173-0661-01
 ;;9002226.02101,"1202,00173-0664-00 ",.01)
 ;;00173-0664-00
 ;;9002226.02101,"1202,00173-0664-00 ",.02)
 ;;00173-0664-00
 ;;9002226.02101,"1202,00173-0691-00 ",.01)
 ;;00173-0691-00
 ;;9002226.02101,"1202,00173-0691-00 ",.02)
 ;;00173-0691-00
 ;;9002226.02101,"1202,00173-0714-00 ",.01)
 ;;00173-0714-00
 ;;9002226.02101,"1202,00173-0714-00 ",.02)
 ;;00173-0714-00
 ;;9002226.02101,"1202,00173-0721-00 ",.01)
 ;;00173-0721-00
 ;;9002226.02101,"1202,00173-0721-00 ",.02)
 ;;00173-0721-00
 ;;9002226.02101,"1202,00173-0727-00 ",.01)
 ;;00173-0727-00
 ;;9002226.02101,"1202,00173-0727-00 ",.02)
 ;;00173-0727-00
 ;;9002226.02101,"1202,00173-0742-00 ",.01)
 ;;00173-0742-00
 ;;9002226.02101,"1202,00173-0742-00 ",.02)
 ;;00173-0742-00
 ;;9002226.02101,"1202,00378-4050-91 ",.01)
 ;;00378-4050-91
 ;;9002226.02101,"1202,00378-4050-91 ",.02)
 ;;00378-4050-91
 ;;9002226.02101,"1202,00378-4105-91 ",.01)
 ;;00378-4105-91
 ;;9002226.02101,"1202,00378-4105-91 ",.02)
 ;;00378-4105-91
 ;;9002226.02101,"1202,00378-5040-91 ",.01)
 ;;00378-5040-91
 ;;9002226.02101,"1202,00378-5040-91 ",.02)
 ;;00378-5040-91
 ;;9002226.02101,"1202,00378-5041-91 ",.01)
 ;;00378-5041-91
 ;;9002226.02101,"1202,00378-5041-91 ",.02)
 ;;00378-5041-91
 ;;9002226.02101,"1202,00378-5042-91 ",.01)
 ;;00378-5042-91
 ;;9002226.02101,"1202,00378-5042-91 ",.02)
 ;;00378-5042-91
 ;;9002226.02101,"1202,00378-5043-91 ",.01)
 ;;00378-5043-91
 ;;9002226.02101,"1202,00378-5043-91 ",.02)
 ;;00378-5043-91
 ;;9002226.02101,"1202,00378-6106-91 ",.01)
 ;;00378-6106-91
 ;;9002226.02101,"1202,00378-6106-91 ",.02)
 ;;00378-6106-91
 ;;9002226.02101,"1202,00378-8886-93 ",.01)
 ;;00378-8886-93
 ;;9002226.02101,"1202,00378-8886-93 ",.02)
 ;;00378-8886-93
 ;;9002226.02101,"1202,00378-8887-93 ",.01)
 ;;00378-8887-93
 ;;9002226.02101,"1202,00378-8887-93 ",.02)
 ;;00378-8887-93
 ;;9002226.02101,"1202,00378-8888-93 ",.01)
 ;;00378-8888-93
