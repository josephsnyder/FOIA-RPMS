BGP21M4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"60760-0010-18 ")
 ;;335
 ;;21,"60760-0010-63 ")
 ;;332
 ;;21,"60760-0595-04 ")
 ;;263
 ;;21,"60760-0595-14 ")
 ;;249
 ;;21,"61958-0401-01 ")
 ;;445
 ;;21,"61958-0601-01 ")
 ;;148
 ;;21,"61958-0602-01 ")
 ;;151
 ;;21,"61958-0701-01 ")
 ;;152
 ;;21,"62584-0046-11 ")
 ;;89
 ;;21,"62584-0046-21 ")
 ;;90
 ;;21,"62584-0048-11 ")
 ;;108
 ;;21,"62584-0048-21 ")
 ;;107
 ;;21,"62682-1016-06 ")
 ;;208
 ;;21,"62682-1018-02 ")
 ;;390
 ;;21,"62682-1018-09 ")
 ;;389
 ;;21,"63010-0010-30 ")
 ;;336
 ;;21,"63010-0011-90 ")
 ;;322
 ;;21,"63010-0020-36 ")
 ;;62
 ;;21,"63010-0021-18 ")
 ;;66
 ;;21,"63010-0027-70 ")
 ;;344
 ;;21,"63304-0920-60 ")
 ;;508
 ;;21,"65862-0024-60 ")
 ;;509
 ;;21,"65862-0046-60 ")
 ;;422
 ;;21,"65862-0047-60 ")
 ;;432
 ;;21,"65862-0048-24 ")
 ;;495
 ;;21,"65862-0107-01 ")
 ;;489
 ;;21,"65862-0111-60 ")
 ;;403
 ;;21,"65862-0112-60 ")
 ;;410
 ;;21,"65862-0310-30 ")
 ;;77
 ;;21,"65862-0311-30 ")
 ;;81
 ;;21,"65862-0312-30 ")
 ;;100
 ;;21,"65862-0313-30 ")
 ;;116
 ;;21,"66267-0509-06 ")
 ;;277
 ;;21,"66267-0514-18 ")
 ;;339
 ;;21,"66267-0514-63 ")
 ;;338
 ;;21,"66336-0032-03 ")
 ;;159
 ;;21,"66336-0563-06 ")
 ;;271
 ;;21,"67253-0109-10 ")
 ;;490
 ;;21,"67253-0761-20 ")
 ;;441
 ;;21,"67253-0961-24 ")
 ;;496
 ;;21,"68030-6059-01 ")
 ;;460
 ;;21,"68030-6060-01 ")
 ;;212
 ;;21,"68030-6064-01 ")
 ;;213
 ;;21,"68030-6065-01 ")
 ;;461
 ;;21,"68030-7284-01 ")
 ;;329
 ;;21,"68084-0431-11 ")
 ;;102
 ;;21,"68084-0431-21 ")
 ;;101
 ;;21,"68084-0432-11 ")
 ;;118
 ;;21,"68084-0432-21 ")
 ;;119
 ;;21,"68084-0460-11 ")
 ;;429
 ;;21,"68084-0460-21 ")
 ;;428
 ;;21,"68084-0461-11 ")
 ;;471
 ;;21,"68084-0461-21 ")
 ;;470
 ;;21,"68084-0462-11 ")
 ;;500
 ;;21,"68084-0462-21 ")
 ;;501
 ;;21,"68115-0090-06 ")
 ;;244
 ;;21,"68115-0360-06 ")
 ;;426
 ;;21,"68258-9003-01 ")
 ;;443
 ;;21,"68258-9020-01 ")
 ;;136
 ;;21,"68258-9021-01 ")
 ;;131
 ;;21,"68258-9108-01 ")
 ;;214
 ;;21,"68258-9126-01 ")
 ;;408
 ;;21,"68258-9142-01 ")
 ;;31
 ;;21,"68258-9158-01 ")
 ;;19
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
 ;;@
 ;;9002226,1202,.11)
 ;;@
 ;;9002226,1202,.12)
 ;;@
 ;;9002226,1202,.13)
 ;;1
 ;;9002226,1202,.14)
 ;;@
 ;;9002226,1202,.15)
 ;;@
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
 ;;9002226.02101,"1202,00004-0220-01 ",.01)
 ;;00004-0220-01
 ;;9002226.02101,"1202,00004-0220-01 ",.02)
 ;;00004-0220-01
 ;;9002226.02101,"1202,00004-0221-01 ",.01)
 ;;00004-0221-01
 ;;9002226.02101,"1202,00004-0221-01 ",.02)
 ;;00004-0221-01
 ;;9002226.02101,"1202,00004-0244-51 ",.01)
 ;;00004-0244-51
 ;;9002226.02101,"1202,00004-0244-51 ",.02)
 ;;00004-0244-51
 ;;9002226.02101,"1202,00004-0245-15 ",.01)
 ;;00004-0245-15
 ;;9002226.02101,"1202,00004-0245-15 ",.02)
 ;;00004-0245-15
 ;;9002226.02101,"1202,00004-0246-48 ",.01)
 ;;00004-0246-48
 ;;9002226.02101,"1202,00004-0246-48 ",.02)
 ;;00004-0246-48
 ;;9002226.02101,"1202,00004-0380-39 ",.01)
 ;;00004-0380-39
 ;;9002226.02101,"1202,00004-0380-39 ",.02)
 ;;00004-0380-39
 ;;9002226.02101,"1202,00006-0227-61 ",.01)
 ;;00006-0227-61
 ;;9002226.02101,"1202,00006-0227-61 ",.02)
 ;;00006-0227-61
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