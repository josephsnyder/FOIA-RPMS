BGP21F54 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,55887-0559-82 ",.01)
 ;;55887-0559-82
 ;;9002226.02101,"1195,55887-0559-82 ",.02)
 ;;55887-0559-82
 ;;9002226.02101,"1195,55887-0559-90 ",.01)
 ;;55887-0559-90
 ;;9002226.02101,"1195,55887-0559-90 ",.02)
 ;;55887-0559-90
 ;;9002226.02101,"1195,55887-0585-30 ",.01)
 ;;55887-0585-30
 ;;9002226.02101,"1195,55887-0585-30 ",.02)
 ;;55887-0585-30
 ;;9002226.02101,"1195,55887-0585-60 ",.01)
 ;;55887-0585-60
 ;;9002226.02101,"1195,55887-0585-60 ",.02)
 ;;55887-0585-60
 ;;9002226.02101,"1195,55887-0585-82 ",.01)
 ;;55887-0585-82
 ;;9002226.02101,"1195,55887-0585-82 ",.02)
 ;;55887-0585-82
 ;;9002226.02101,"1195,55887-0585-90 ",.01)
 ;;55887-0585-90
 ;;9002226.02101,"1195,55887-0585-90 ",.02)
 ;;55887-0585-90
 ;;9002226.02101,"1195,55887-0599-30 ",.01)
 ;;55887-0599-30
 ;;9002226.02101,"1195,55887-0599-30 ",.02)
 ;;55887-0599-30
 ;;9002226.02101,"1195,55887-0599-60 ",.01)
 ;;55887-0599-60
 ;;9002226.02101,"1195,55887-0599-60 ",.02)
 ;;55887-0599-60
 ;;9002226.02101,"1195,55887-0599-82 ",.01)
 ;;55887-0599-82
 ;;9002226.02101,"1195,55887-0599-82 ",.02)
 ;;55887-0599-82
 ;;9002226.02101,"1195,55887-0599-90 ",.01)
 ;;55887-0599-90
 ;;9002226.02101,"1195,55887-0599-90 ",.02)
 ;;55887-0599-90
 ;;9002226.02101,"1195,55887-0613-30 ",.01)
 ;;55887-0613-30
 ;;9002226.02101,"1195,55887-0613-30 ",.02)
 ;;55887-0613-30
 ;;9002226.02101,"1195,55887-0613-60 ",.01)
 ;;55887-0613-60
 ;;9002226.02101,"1195,55887-0613-60 ",.02)
 ;;55887-0613-60
 ;;9002226.02101,"1195,55887-0613-82 ",.01)
 ;;55887-0613-82
 ;;9002226.02101,"1195,55887-0613-82 ",.02)
 ;;55887-0613-82
 ;;9002226.02101,"1195,55887-0613-90 ",.01)
 ;;55887-0613-90
 ;;9002226.02101,"1195,55887-0613-90 ",.02)
 ;;55887-0613-90
 ;;9002226.02101,"1195,55887-0625-30 ",.01)
 ;;55887-0625-30
 ;;9002226.02101,"1195,55887-0625-30 ",.02)
 ;;55887-0625-30
 ;;9002226.02101,"1195,55887-0625-60 ",.01)
 ;;55887-0625-60
 ;;9002226.02101,"1195,55887-0625-60 ",.02)
 ;;55887-0625-60
 ;;9002226.02101,"1195,55887-0625-90 ",.01)
 ;;55887-0625-90
 ;;9002226.02101,"1195,55887-0625-90 ",.02)
 ;;55887-0625-90
 ;;9002226.02101,"1195,55887-0838-01 ",.01)
 ;;55887-0838-01
 ;;9002226.02101,"1195,55887-0838-01 ",.02)
 ;;55887-0838-01
 ;;9002226.02101,"1195,55887-0838-30 ",.01)
 ;;55887-0838-30
 ;;9002226.02101,"1195,55887-0838-30 ",.02)
 ;;55887-0838-30
 ;;9002226.02101,"1195,55887-0838-60 ",.01)
 ;;55887-0838-60
 ;;9002226.02101,"1195,55887-0838-60 ",.02)
 ;;55887-0838-60
 ;;9002226.02101,"1195,55887-0838-82 ",.01)
 ;;55887-0838-82
 ;;9002226.02101,"1195,55887-0838-82 ",.02)
 ;;55887-0838-82
 ;;9002226.02101,"1195,55887-0838-90 ",.01)
 ;;55887-0838-90
 ;;9002226.02101,"1195,55887-0838-90 ",.02)
 ;;55887-0838-90
 ;;9002226.02101,"1195,55887-0998-30 ",.01)
 ;;55887-0998-30
 ;;9002226.02101,"1195,55887-0998-30 ",.02)
 ;;55887-0998-30
 ;;9002226.02101,"1195,55887-0998-60 ",.01)
 ;;55887-0998-60
 ;;9002226.02101,"1195,55887-0998-60 ",.02)
 ;;55887-0998-60
 ;;9002226.02101,"1195,55887-0998-82 ",.01)
 ;;55887-0998-82
 ;;9002226.02101,"1195,55887-0998-82 ",.02)
 ;;55887-0998-82
 ;;9002226.02101,"1195,55887-0998-90 ",.01)
 ;;55887-0998-90
 ;;9002226.02101,"1195,55887-0998-90 ",.02)
 ;;55887-0998-90
 ;;9002226.02101,"1195,57664-0166-08 ",.01)
 ;;57664-0166-08
 ;;9002226.02101,"1195,57664-0166-08 ",.02)
 ;;57664-0166-08
 ;;9002226.02101,"1195,57664-0166-18 ",.01)
 ;;57664-0166-18
 ;;9002226.02101,"1195,57664-0166-18 ",.02)
 ;;57664-0166-18
 ;;9002226.02101,"1195,57664-0166-52 ",.01)
 ;;57664-0166-52
 ;;9002226.02101,"1195,57664-0166-52 ",.02)
 ;;57664-0166-52
 ;;9002226.02101,"1195,57664-0166-58 ",.01)
 ;;57664-0166-58
 ;;9002226.02101,"1195,57664-0166-58 ",.02)
 ;;57664-0166-58
 ;;9002226.02101,"1195,57664-0167-08 ",.01)
 ;;57664-0167-08
 ;;9002226.02101,"1195,57664-0167-08 ",.02)
 ;;57664-0167-08
 ;;9002226.02101,"1195,57664-0167-18 ",.01)
 ;;57664-0167-18
 ;;9002226.02101,"1195,57664-0167-18 ",.02)
 ;;57664-0167-18
 ;;9002226.02101,"1195,57664-0167-52 ",.01)
 ;;57664-0167-52
 ;;9002226.02101,"1195,57664-0167-52 ",.02)
 ;;57664-0167-52
 ;;9002226.02101,"1195,57664-0167-58 ",.01)
 ;;57664-0167-58
 ;;9002226.02101,"1195,57664-0167-58 ",.02)
 ;;57664-0167-58
 ;;9002226.02101,"1195,57664-0242-13 ",.01)
 ;;57664-0242-13
 ;;9002226.02101,"1195,57664-0242-13 ",.02)
 ;;57664-0242-13
 ;;9002226.02101,"1195,57664-0242-18 ",.01)
 ;;57664-0242-18
 ;;9002226.02101,"1195,57664-0242-18 ",.02)
 ;;57664-0242-18
 ;;9002226.02101,"1195,57664-0242-88 ",.01)
 ;;57664-0242-88
 ;;9002226.02101,"1195,57664-0242-88 ",.02)
 ;;57664-0242-88
 ;;9002226.02101,"1195,57664-0244-13 ",.01)
 ;;57664-0244-13
 ;;9002226.02101,"1195,57664-0244-13 ",.02)
 ;;57664-0244-13
 ;;9002226.02101,"1195,57664-0244-18 ",.01)
 ;;57664-0244-18
 ;;9002226.02101,"1195,57664-0244-18 ",.02)
 ;;57664-0244-18
 ;;9002226.02101,"1195,57664-0244-88 ",.01)
 ;;57664-0244-88
 ;;9002226.02101,"1195,57664-0244-88 ",.02)
 ;;57664-0244-88
 ;;9002226.02101,"1195,57664-0245-13 ",.01)
 ;;57664-0245-13
 ;;9002226.02101,"1195,57664-0245-13 ",.02)
 ;;57664-0245-13
 ;;9002226.02101,"1195,57664-0245-18 ",.01)
 ;;57664-0245-18
 ;;9002226.02101,"1195,57664-0245-18 ",.02)
 ;;57664-0245-18
 ;;9002226.02101,"1195,57664-0245-88 ",.01)
 ;;57664-0245-88
