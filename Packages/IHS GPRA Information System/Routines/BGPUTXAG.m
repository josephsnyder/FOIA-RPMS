BGPUTXAG ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGPU;;APR 21, 2005
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"393,00223-2552-02 ",.01)
 ;;00223-2552-02
 ;;9002226.02101,"393,00223-2552-02 ",.02)
 ;;00223-2552-02
 ;;9002226.02101,"393,00223-2553-01 ",.01)
 ;;00223-2553-01
 ;;9002226.02101,"393,00223-2553-01 ",.02)
 ;;00223-2553-01
 ;;9002226.02101,"393,00223-2553-02 ",.01)
 ;;00223-2553-02
 ;;9002226.02101,"393,00223-2553-02 ",.02)
 ;;00223-2553-02
 ;;9002226.02101,"393,00223-2554-01 ",.01)
 ;;00223-2554-01
 ;;9002226.02101,"393,00223-2554-01 ",.02)
 ;;00223-2554-01
 ;;9002226.02101,"393,00223-2554-02 ",.01)
 ;;00223-2554-02
 ;;9002226.02101,"393,00223-2554-02 ",.02)
 ;;00223-2554-02
 ;;9002226.02101,"393,00364-2514-01 ",.01)
 ;;00364-2514-01
 ;;9002226.02101,"393,00364-2514-01 ",.02)
 ;;00364-2514-01
 ;;9002226.02101,"393,00378-0028-01 ",.01)
 ;;00378-0028-01
 ;;9002226.02101,"393,00378-0028-01 ",.02)
 ;;00378-0028-01
 ;;9002226.02101,"393,00378-0032-01 ",.01)
 ;;00378-0032-01
 ;;9002226.02101,"393,00378-0032-01 ",.02)
 ;;00378-0032-01
 ;;9002226.02101,"393,00378-0032-10 ",.01)
 ;;00378-0032-10
 ;;9002226.02101,"393,00378-0032-10 ",.02)
 ;;00378-0032-10
 ;;9002226.02101,"393,00378-0047-01 ",.01)
 ;;00378-0047-01
 ;;9002226.02101,"393,00378-0047-01 ",.02)
 ;;00378-0047-01
 ;;9002226.02101,"393,00378-0047-10 ",.01)
 ;;00378-0047-10
 ;;9002226.02101,"393,00378-0047-10 ",.02)
 ;;00378-0047-10
 ;;9002226.02101,"393,00378-0052-01 ",.01)
 ;;00378-0052-01
 ;;9002226.02101,"393,00378-0052-01 ",.02)
 ;;00378-0052-01
 ;;9002226.02101,"393,00378-0127-01 ",.01)
 ;;00378-0127-01
 ;;9002226.02101,"393,00378-0127-01 ",.02)
 ;;00378-0127-01
 ;;9002226.02101,"393,00378-0182-01 ",.01)
 ;;00378-0182-01
 ;;9002226.02101,"393,00378-0182-01 ",.02)
 ;;00378-0182-01
 ;;9002226.02101,"393,00378-0182-10 ",.01)
 ;;00378-0182-10
 ;;9002226.02101,"393,00378-0182-10 ",.02)
 ;;00378-0182-10
 ;;9002226.02101,"393,00378-0183-01 ",.01)
 ;;00378-0183-01
 ;;9002226.02101,"393,00378-0183-01 ",.02)
 ;;00378-0183-01
 ;;9002226.02101,"393,00378-0183-10 ",.01)
 ;;00378-0183-10
 ;;9002226.02101,"393,00378-0183-10 ",.02)
 ;;00378-0183-10
 ;;9002226.02101,"393,00378-0184-01 ",.01)
 ;;00378-0184-01
 ;;9002226.02101,"393,00378-0184-01 ",.02)
 ;;00378-0184-01
 ;;9002226.02101,"393,00378-0185-01 ",.01)
 ;;00378-0185-01
 ;;9002226.02101,"393,00378-0185-01 ",.02)
 ;;00378-0185-01
 ;;9002226.02101,"393,00378-0185-05 ",.01)
 ;;00378-0185-05
 ;;9002226.02101,"393,00378-0185-05 ",.02)
 ;;00378-0185-05
 ;;9002226.02101,"393,00378-0231-01 ",.01)
 ;;00378-0231-01
 ;;9002226.02101,"393,00378-0231-01 ",.02)
 ;;00378-0231-01
 ;;9002226.02101,"393,00378-0231-10 ",.01)
 ;;00378-0231-10
 ;;9002226.02101,"393,00378-0231-10 ",.02)
 ;;00378-0231-10
 ;;9002226.02101,"393,00378-0305-01 ",.01)
 ;;00378-0305-01
 ;;9002226.02101,"393,00378-0305-01 ",.02)
 ;;00378-0305-01
 ;;9002226.02101,"393,00378-0310-01 ",.01)
 ;;00378-0310-01
 ;;9002226.02101,"393,00378-0310-01 ",.02)
 ;;00378-0310-01
 ;;9002226.02101,"393,00378-0314-01 ",.01)
 ;;00378-0314-01
 ;;9002226.02101,"393,00378-0314-01 ",.02)
 ;;00378-0314-01
 ;;9002226.02101,"393,00378-0434-01 ",.01)
 ;;00378-0434-01
 ;;9002226.02101,"393,00378-0434-01 ",.02)
 ;;00378-0434-01
 ;;9002226.02101,"393,00378-0445-01 ",.01)
 ;;00378-0445-01
 ;;9002226.02101,"393,00378-0445-01 ",.02)
 ;;00378-0445-01
 ;;9002226.02101,"393,00378-0757-01 ",.01)
 ;;00378-0757-01
 ;;9002226.02101,"393,00378-0757-01 ",.02)
 ;;00378-0757-01
 ;;9002226.02101,"393,00378-1132-01 ",.01)
 ;;00378-1132-01
 ;;9002226.02101,"393,00378-1132-01 ",.02)
 ;;00378-1132-01
 ;;9002226.02101,"393,00378-1132-10 ",.01)
 ;;00378-1132-10
 ;;9002226.02101,"393,00378-1132-10 ",.02)
 ;;00378-1132-10
 ;;9002226.02101,"393,00378-1171-01 ",.01)
 ;;00378-1171-01
 ;;9002226.02101,"393,00378-1171-01 ",.02)
 ;;00378-1171-01
 ;;9002226.02101,"393,00378-1171-10 ",.01)
 ;;00378-1171-10
 ;;9002226.02101,"393,00378-1171-10 ",.02)
 ;;00378-1171-10
 ;;9002226.02101,"393,00378-1200-01 ",.01)
 ;;00378-1200-01
 ;;9002226.02101,"393,00378-1200-01 ",.02)
 ;;00378-1200-01
 ;;9002226.02101,"393,00378-1400-01 ",.01)
 ;;00378-1400-01
 ;;9002226.02101,"393,00378-1400-01 ",.02)
 ;;00378-1400-01
 ;;9002226.02101,"393,00591-0438-01 ",.01)
 ;;00591-0438-01
 ;;9002226.02101,"393,00591-0438-01 ",.02)
 ;;00591-0438-01
 ;;9002226.02101,"393,00591-0462-01 ",.01)
 ;;00591-0462-01
 ;;9002226.02101,"393,00591-0462-01 ",.02)
 ;;00591-0462-01
 ;;9002226.02101,"393,00591-0462-10 ",.01)
 ;;00591-0462-10
 ;;9002226.02101,"393,00591-0462-10 ",.02)
 ;;00591-0462-10
 ;;9002226.02101,"393,00591-0463-01 ",.01)
 ;;00591-0463-01
 ;;9002226.02101,"393,00591-0463-01 ",.02)
 ;;00591-0463-01
 ;;9002226.02101,"393,00591-0606-01 ",.01)
 ;;00591-0606-01
 ;;9002226.02101,"393,00591-0606-01 ",.02)
 ;;00591-0606-01
 ;;9002226.02101,"393,00591-0606-05 ",.01)
 ;;00591-0606-05
 ;;9002226.02101,"393,00591-0606-05 ",.02)
 ;;00591-0606-05
 ;;9002226.02101,"393,00591-0607-01 ",.01)
 ;;00591-0607-01
 ;;9002226.02101,"393,00591-0607-01 ",.02)
 ;;00591-0607-01
 ;;9002226.02101,"393,00591-5554-01 ",.01)
 ;;00591-5554-01
 ;;9002226.02101,"393,00591-5554-01 ",.02)
 ;;00591-5554-01
 ;;9002226.02101,"393,00591-5554-10 ",.01)
 ;;00591-5554-10
 ;;9002226.02101,"393,00591-5554-10 ",.02)
 ;;00591-5554-10
