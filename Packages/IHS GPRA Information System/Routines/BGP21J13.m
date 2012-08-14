BGP21J13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1199,00228-2751-11 ",.02)
 ;;00228-2751-11
 ;;9002226.02101,"1199,00228-2751-50 ",.01)
 ;;00228-2751-50
 ;;9002226.02101,"1199,00228-2751-50 ",.02)
 ;;00228-2751-50
 ;;9002226.02101,"1199,00228-2752-11 ",.01)
 ;;00228-2752-11
 ;;9002226.02101,"1199,00228-2752-11 ",.02)
 ;;00228-2752-11
 ;;9002226.02101,"1199,00228-2752-50 ",.01)
 ;;00228-2752-50
 ;;9002226.02101,"1199,00228-2752-50 ",.02)
 ;;00228-2752-50
 ;;9002226.02101,"1199,00228-2753-11 ",.01)
 ;;00228-2753-11
 ;;9002226.02101,"1199,00228-2753-11 ",.02)
 ;;00228-2753-11
 ;;9002226.02101,"1199,00228-2753-50 ",.01)
 ;;00228-2753-50
 ;;9002226.02101,"1199,00228-2753-50 ",.02)
 ;;00228-2753-50
 ;;9002226.02101,"1199,00228-2898-03 ",.01)
 ;;00228-2898-03
 ;;9002226.02101,"1199,00228-2898-03 ",.02)
 ;;00228-2898-03
 ;;9002226.02101,"1199,00228-2899-10 ",.01)
 ;;00228-2899-10
 ;;9002226.02101,"1199,00228-2899-10 ",.02)
 ;;00228-2899-10
 ;;9002226.02101,"1199,00228-2899-50 ",.01)
 ;;00228-2899-50
 ;;9002226.02101,"1199,00228-2899-50 ",.02)
 ;;00228-2899-50
 ;;9002226.02101,"1199,00228-2899-96 ",.01)
 ;;00228-2899-96
 ;;9002226.02101,"1199,00228-2899-96 ",.02)
 ;;00228-2899-96
 ;;9002226.02101,"1199,00228-2900-10 ",.01)
 ;;00228-2900-10
 ;;9002226.02101,"1199,00228-2900-10 ",.02)
 ;;00228-2900-10
 ;;9002226.02101,"1199,00228-2900-11 ",.01)
 ;;00228-2900-11
 ;;9002226.02101,"1199,00228-2900-11 ",.02)
 ;;00228-2900-11
 ;;9002226.02101,"1199,00228-2900-50 ",.01)
 ;;00228-2900-50
 ;;9002226.02101,"1199,00228-2900-50 ",.02)
 ;;00228-2900-50
 ;;9002226.02101,"1199,00228-2900-96 ",.01)
 ;;00228-2900-96
 ;;9002226.02101,"1199,00228-2900-96 ",.02)
 ;;00228-2900-96
 ;;9002226.02101,"1199,00247-0444-00 ",.01)
 ;;00247-0444-00
 ;;9002226.02101,"1199,00247-0444-00 ",.02)
 ;;00247-0444-00
 ;;9002226.02101,"1199,00247-0444-30 ",.01)
 ;;00247-0444-30
 ;;9002226.02101,"1199,00247-0444-30 ",.02)
 ;;00247-0444-30
 ;;9002226.02101,"1199,00247-1045-30 ",.01)
 ;;00247-1045-30
 ;;9002226.02101,"1199,00247-1045-30 ",.02)
 ;;00247-1045-30
 ;;9002226.02101,"1199,00247-1045-45 ",.01)
 ;;00247-1045-45
 ;;9002226.02101,"1199,00247-1045-45 ",.02)
 ;;00247-1045-45
 ;;9002226.02101,"1199,00247-1270-00 ",.01)
 ;;00247-1270-00
 ;;9002226.02101,"1199,00247-1270-00 ",.02)
 ;;00247-1270-00
 ;;9002226.02101,"1199,00247-1270-06 ",.01)
 ;;00247-1270-06
 ;;9002226.02101,"1199,00247-1270-06 ",.02)
 ;;00247-1270-06
 ;;9002226.02101,"1199,00378-0197-01 ",.01)
 ;;00378-0197-01
 ;;9002226.02101,"1199,00378-0197-01 ",.02)
 ;;00378-0197-01
 ;;9002226.02101,"1199,00378-0197-05 ",.01)
 ;;00378-0197-05
 ;;9002226.02101,"1199,00378-0197-05 ",.02)
 ;;00378-0197-05
 ;;9002226.02101,"1199,00378-0210-01 ",.01)
 ;;00378-0210-01
 ;;9002226.02101,"1199,00378-0210-01 ",.02)
 ;;00378-0210-01
 ;;9002226.02101,"1199,00378-0210-10 ",.01)
 ;;00378-0210-10
 ;;9002226.02101,"1199,00378-0210-10 ",.02)
 ;;00378-0210-10
 ;;9002226.02101,"1199,00378-0215-01 ",.01)
 ;;00378-0215-01
 ;;9002226.02101,"1199,00378-0215-01 ",.02)
 ;;00378-0215-01
 ;;9002226.02101,"1199,00378-0215-05 ",.01)
 ;;00378-0215-05
 ;;9002226.02101,"1199,00378-0215-05 ",.02)
 ;;00378-0215-05
 ;;9002226.02101,"1199,00378-0217-01 ",.01)
 ;;00378-0217-01
 ;;9002226.02101,"1199,00378-0217-01 ",.02)
 ;;00378-0217-01
 ;;9002226.02101,"1199,00378-0551-01 ",.01)
 ;;00378-0551-01
 ;;9002226.02101,"1199,00378-0551-01 ",.02)
 ;;00378-0551-01
 ;;9002226.02101,"1199,00378-1105-01 ",.01)
 ;;00378-1105-01
 ;;9002226.02101,"1199,00378-1105-01 ",.02)
 ;;00378-1105-01
 ;;9002226.02101,"1199,00378-1105-05 ",.01)
 ;;00378-1105-05
 ;;9002226.02101,"1199,00378-1105-05 ",.02)
 ;;00378-1105-05
 ;;9002226.02101,"1199,00378-1110-01 ",.01)
 ;;00378-1110-01
 ;;9002226.02101,"1199,00378-1110-01 ",.02)
 ;;00378-1110-01
 ;;9002226.02101,"1199,00378-1110-05 ",.01)
 ;;00378-1110-05
 ;;9002226.02101,"1199,00378-1110-05 ",.02)
 ;;00378-1110-05
 ;;9002226.02101,"1199,00378-1113-01 ",.01)
 ;;00378-1113-01
 ;;9002226.02101,"1199,00378-1113-01 ",.02)
 ;;00378-1113-01
 ;;9002226.02101,"1199,00378-1125-01 ",.01)
 ;;00378-1125-01
 ;;9002226.02101,"1199,00378-1125-01 ",.02)
 ;;00378-1125-01
 ;;9002226.02101,"1199,00378-1125-10 ",.01)
 ;;00378-1125-10
 ;;9002226.02101,"1199,00378-1125-10 ",.02)
 ;;00378-1125-10
 ;;9002226.02101,"1199,00378-1142-01 ",.01)
 ;;00378-1142-01
 ;;9002226.02101,"1199,00378-1142-01 ",.02)
 ;;00378-1142-01
 ;;9002226.02101,"1199,00378-3131-01 ",.01)
 ;;00378-3131-01
 ;;9002226.02101,"1199,00378-3131-01 ",.02)
 ;;00378-3131-01
 ;;9002226.02101,"1199,00378-3132-01 ",.01)
 ;;00378-3132-01
 ;;9002226.02101,"1199,00378-3132-01 ",.02)
 ;;00378-3132-01
 ;;9002226.02101,"1199,00378-3133-01 ",.01)
 ;;00378-3133-01
 ;;9002226.02101,"1199,00378-3133-01 ",.02)
 ;;00378-3133-01
 ;;9002226.02101,"1199,00378-4011-01 ",.01)
 ;;00378-4011-01
 ;;9002226.02101,"1199,00378-4011-01 ",.02)
 ;;00378-4011-01
 ;;9002226.02101,"1199,00378-4012-01 ",.01)
 ;;00378-4012-01
 ;;9002226.02101,"1199,00378-4012-01 ",.02)
 ;;00378-4012-01
 ;;9002226.02101,"1199,00378-4013-01 ",.01)
 ;;00378-4013-01
 ;;9002226.02101,"1199,00378-4013-01 ",.02)
 ;;00378-4013-01
 ;;9002226.02101,"1199,00440-7565-14 ",.01)
 ;;00440-7565-14
 ;;9002226.02101,"1199,00440-7565-14 ",.02)
 ;;00440-7565-14