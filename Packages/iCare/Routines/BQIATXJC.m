BQIATXJC ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 19, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58864-0780-30 ")
 ;;89
 ;;21,"58864-0781-30 ")
 ;;90
 ;;21,"60598-0006-90 ")
 ;;296
 ;;21,"60598-0007-90 ")
 ;;297
 ;;21,"60598-0008-90 ")
 ;;298
 ;;21,"62022-0627-30 ")
 ;;177
 ;;21,"62022-0628-30 ")
 ;;178
 ;;21,"62022-0629-30 ")
 ;;180
 ;;21,"62022-0630-30 ")
 ;;182
 ;;21,"62022-0770-30 ")
 ;;179
 ;;21,"62022-0780-30 ")
 ;;181
 ;;21,"62022-0781-30 ")
 ;;183
 ;;21,"63739-0280-15 ")
 ;;120
 ;;21,"63739-0281-15 ")
 ;;151
 ;;21,"66116-0238-30 ")
 ;;91
 ;;21,"66116-0276-30 ")
 ;;92
 ;;21,"66116-0277-30 ")
 ;;93
 ;;21,"66116-0451-30 ")
 ;;94
 ;;21,"66582-0311-31 ")
 ;;322
 ;;21,"66582-0311-54 ")
 ;;323
 ;;21,"66582-0311-82 ")
 ;;95
 ;;21,"66582-0312-31 ")
 ;;324
 ;;21,"66582-0312-54 ")
 ;;325
 ;;21,"66582-0312-82 ")
 ;;96
 ;;21,"66582-0313-31 ")
 ;;327
 ;;21,"66582-0313-52 ")
 ;;328
 ;;21,"66582-0313-54 ")
 ;;329
 ;;21,"66582-0313-74 ")
 ;;97
 ;;21,"66582-0315-31 ")
 ;;330
 ;;21,"66582-0315-54 ")
 ;;331
 ;;21,"66582-0315-74 ")
 ;;98
 ;;21,"68030-8615-01 ")
 ;;99
 ;;21,"68115-0218-30 ")
 ;;100
 ;;21,"68115-0219-30 ")
 ;;152
 ;;21,"68115-0219-60 ")
 ;;153
 ;;21,"68115-0658-00 ")
 ;;176
 ;;21,"68115-0664-90 ")
 ;;205
 ;;21,"68115-0668-90 ")
 ;;293
 ;;21,"68115-0672-30 ")
 ;;241
 ;;21,"68115-0720-30 ")
 ;;227
 ;;21,"68115-0759-30 ")
 ;;262
 ;;21,"68115-0777-90 ")
 ;;255
 ;;21,"68115-0800-90 ")
 ;;288
 ;;21,"68115-0836-90 ")
 ;;282
 ;;9002226,573,.01)
 ;;BQI STATIN NDC
 ;;9002226,573,.02)
 ;;@
 ;;9002226,573,.04)
 ;;@
 ;;9002226,573,.06)
 ;;@
 ;;9002226,573,.08)
 ;;0
 ;;9002226,573,.09)
 ;;3060721
 ;;9002226,573,.11)
 ;;@
 ;;9002226,573,.12)
 ;;145
 ;;9002226,573,.13)
 ;;1
 ;;9002226,573,.14)
 ;;@
 ;;9002226,573,.15)
 ;;2
 ;;9002226,573,.16)
 ;;@
 ;;9002226,573,.17)
 ;;@
 ;;9002226,573,3101)
 ;;@
 ;;9002226.02101,"573,00003-5154-05 ",.01)
 ;;00003-5154-05
 ;;9002226.02101,"573,00003-5154-05 ",.02)
 ;;00003-5154-05
 ;;9002226.02101,"573,00003-5154-06 ",.01)
 ;;00003-5154-06
 ;;9002226.02101,"573,00003-5154-06 ",.02)
 ;;00003-5154-06
 ;;9002226.02101,"573,00003-5168-11 ",.01)
 ;;00003-5168-11
 ;;9002226.02101,"573,00003-5168-11 ",.02)
 ;;00003-5168-11
 ;;9002226.02101,"573,00003-5169-11 ",.01)
 ;;00003-5169-11
 ;;9002226.02101,"573,00003-5169-11 ",.02)
 ;;00003-5169-11
 ;;9002226.02101,"573,00003-5173-11 ",.01)
 ;;00003-5173-11
 ;;9002226.02101,"573,00003-5173-11 ",.02)
 ;;00003-5173-11
 ;;9002226.02101,"573,00003-5174-11 ",.01)
 ;;00003-5174-11
 ;;9002226.02101,"573,00003-5174-11 ",.02)
 ;;00003-5174-11
 ;;9002226.02101,"573,00003-5178-05 ",.01)
 ;;00003-5178-05
 ;;9002226.02101,"573,00003-5178-05 ",.02)
 ;;00003-5178-05
 ;;9002226.02101,"573,00003-5178-06 ",.01)
 ;;00003-5178-06
 ;;9002226.02101,"573,00003-5178-06 ",.02)
 ;;00003-5178-06
 ;;9002226.02101,"573,00003-5178-75 ",.01)
 ;;00003-5178-75
 ;;9002226.02101,"573,00003-5178-75 ",.02)
 ;;00003-5178-75
 ;;9002226.02101,"573,00003-5183-11 ",.01)
 ;;00003-5183-11
 ;;9002226.02101,"573,00003-5183-11 ",.02)
 ;;00003-5183-11
 ;;9002226.02101,"573,00003-5184-11 ",.01)
 ;;00003-5184-11
 ;;9002226.02101,"573,00003-5184-11 ",.02)
 ;;00003-5184-11
 ;;9002226.02101,"573,00003-5194-10 ",.01)
 ;;00003-5194-10
 ;;9002226.02101,"573,00003-5194-10 ",.02)
 ;;00003-5194-10
 ;;9002226.02101,"573,00003-5194-33 ",.01)
 ;;00003-5194-33
 ;;9002226.02101,"573,00003-5194-33 ",.02)
 ;;00003-5194-33
 ;;9002226.02101,"573,00003-5195-10 ",.01)
 ;;00003-5195-10
 ;;9002226.02101,"573,00003-5195-10 ",.02)
 ;;00003-5195-10
 ;;9002226.02101,"573,00003-5195-33 ",.01)
 ;;00003-5195-33
 ;;9002226.02101,"573,00003-5195-33 ",.02)
 ;;00003-5195-33
 ;;9002226.02101,"573,00006-0543-28 ",.01)
 ;;00006-0543-28
 ;;9002226.02101,"573,00006-0543-28 ",.02)
 ;;00006-0543-28
 ;;9002226.02101,"573,00006-0543-31 ",.01)
 ;;00006-0543-31
 ;;9002226.02101,"573,00006-0543-31 ",.02)
 ;;00006-0543-31
 ;;9002226.02101,"573,00006-0543-54 ",.01)
 ;;00006-0543-54
 ;;9002226.02101,"573,00006-0543-54 ",.02)
 ;;00006-0543-54
 ;;9002226.02101,"573,00006-0543-61 ",.01)
 ;;00006-0543-61
 ;;9002226.02101,"573,00006-0543-61 ",.02)
 ;;00006-0543-61
 ;;9002226.02101,"573,00006-0543-82 ",.01)
 ;;00006-0543-82
 ;;9002226.02101,"573,00006-0543-82 ",.02)
 ;;00006-0543-82
 ;;9002226.02101,"573,00006-0726-28 ",.01)
 ;;00006-0726-28
 ;;9002226.02101,"573,00006-0726-28 ",.02)
 ;;00006-0726-28
 ;;9002226.02101,"573,00006-0726-31 ",.01)
 ;;00006-0726-31
 ;;9002226.02101,"573,00006-0726-31 ",.02)
 ;;00006-0726-31
 ;;9002226.02101,"573,00006-0726-54 ",.01)
 ;;00006-0726-54
 ;;9002226.02101,"573,00006-0726-54 ",.02)
 ;;00006-0726-54
 ;;9002226.02101,"573,00006-0726-61 ",.01)
 ;;00006-0726-61
 ;;9002226.02101,"573,00006-0726-61 ",.02)
 ;;00006-0726-61
 ;;9002226.02101,"573,00006-0726-82 ",.01)
 ;;00006-0726-82
 ;;9002226.02101,"573,00006-0726-82 ",.02)
 ;;00006-0726-82
 ;;9002226.02101,"573,00006-0730-61 ",.01)
 ;;00006-0730-61
 ;;9002226.02101,"573,00006-0730-61 ",.02)
 ;;00006-0730-61
 ;;9002226.02101,"573,00006-0731-28 ",.01)
 ;;00006-0731-28
 ;;9002226.02101,"573,00006-0731-28 ",.02)
 ;;00006-0731-28
 ;;9002226.02101,"573,00006-0731-61 ",.01)
 ;;00006-0731-61
