BGP21L20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,13411-0162-15 ",.01)
 ;;13411-0162-15
 ;;9002226.02101,"1201,13411-0162-15 ",.02)
 ;;13411-0162-15
 ;;9002226.02101,"1201,16252-0505-30 ",.01)
 ;;16252-0505-30
 ;;9002226.02101,"1201,16252-0505-30 ",.02)
 ;;16252-0505-30
 ;;9002226.02101,"1201,16252-0505-50 ",.01)
 ;;16252-0505-50
 ;;9002226.02101,"1201,16252-0505-50 ",.02)
 ;;16252-0505-50
 ;;9002226.02101,"1201,16252-0505-90 ",.01)
 ;;16252-0505-90
 ;;9002226.02101,"1201,16252-0505-90 ",.02)
 ;;16252-0505-90
 ;;9002226.02101,"1201,16252-0506-30 ",.01)
 ;;16252-0506-30
 ;;9002226.02101,"1201,16252-0506-30 ",.02)
 ;;16252-0506-30
 ;;9002226.02101,"1201,16252-0506-50 ",.01)
 ;;16252-0506-50
 ;;9002226.02101,"1201,16252-0506-50 ",.02)
 ;;16252-0506-50
 ;;9002226.02101,"1201,16252-0506-90 ",.01)
 ;;16252-0506-90
 ;;9002226.02101,"1201,16252-0506-90 ",.02)
 ;;16252-0506-90
 ;;9002226.02101,"1201,16252-0507-30 ",.01)
 ;;16252-0507-30
 ;;9002226.02101,"1201,16252-0507-30 ",.02)
 ;;16252-0507-30
 ;;9002226.02101,"1201,16252-0507-50 ",.01)
 ;;16252-0507-50
 ;;9002226.02101,"1201,16252-0507-50 ",.02)
 ;;16252-0507-50
 ;;9002226.02101,"1201,16252-0507-90 ",.01)
 ;;16252-0507-90
 ;;9002226.02101,"1201,16252-0507-90 ",.02)
 ;;16252-0507-90
 ;;9002226.02101,"1201,16252-0508-30 ",.01)
 ;;16252-0508-30
 ;;9002226.02101,"1201,16252-0508-30 ",.02)
 ;;16252-0508-30
 ;;9002226.02101,"1201,16252-0508-50 ",.01)
 ;;16252-0508-50
 ;;9002226.02101,"1201,16252-0508-50 ",.02)
 ;;16252-0508-50
 ;;9002226.02101,"1201,16252-0508-90 ",.01)
 ;;16252-0508-90
 ;;9002226.02101,"1201,16252-0508-90 ",.02)
 ;;16252-0508-90
 ;;9002226.02101,"1201,16252-0509-30 ",.01)
 ;;16252-0509-30
 ;;9002226.02101,"1201,16252-0509-30 ",.02)
 ;;16252-0509-30
 ;;9002226.02101,"1201,16252-0509-50 ",.01)
 ;;16252-0509-50
 ;;9002226.02101,"1201,16252-0509-50 ",.02)
 ;;16252-0509-50
 ;;9002226.02101,"1201,16252-0509-90 ",.01)
 ;;16252-0509-90
 ;;9002226.02101,"1201,16252-0509-90 ",.02)
 ;;16252-0509-90
 ;;9002226.02101,"1201,16252-0526-90 ",.01)
 ;;16252-0526-90
 ;;9002226.02101,"1201,16252-0526-90 ",.02)
 ;;16252-0526-90
 ;;9002226.02101,"1201,16252-0527-50 ",.01)
 ;;16252-0527-50
 ;;9002226.02101,"1201,16252-0527-50 ",.02)
 ;;16252-0527-50
 ;;9002226.02101,"1201,16252-0527-90 ",.01)
 ;;16252-0527-90
 ;;9002226.02101,"1201,16252-0527-90 ",.02)
 ;;16252-0527-90
 ;;9002226.02101,"1201,16252-0528-50 ",.01)
 ;;16252-0528-50
 ;;9002226.02101,"1201,16252-0528-50 ",.02)
 ;;16252-0528-50
 ;;9002226.02101,"1201,16252-0528-90 ",.01)
 ;;16252-0528-90
 ;;9002226.02101,"1201,16252-0528-90 ",.02)
 ;;16252-0528-90
 ;;9002226.02101,"1201,16252-0529-90 ",.01)
 ;;16252-0529-90
 ;;9002226.02101,"1201,16252-0529-90 ",.02)
 ;;16252-0529-90
 ;;9002226.02101,"1201,16590-0431-30 ",.01)
 ;;16590-0431-30
 ;;9002226.02101,"1201,16590-0431-30 ",.02)
 ;;16590-0431-30
 ;;9002226.02101,"1201,16590-0446-30 ",.01)
 ;;16590-0446-30
 ;;9002226.02101,"1201,16590-0446-30 ",.02)
 ;;16590-0446-30
 ;;9002226.02101,"1201,16590-0546-30 ",.01)
 ;;16590-0546-30
 ;;9002226.02101,"1201,16590-0546-30 ",.02)
 ;;16590-0546-30
 ;;9002226.02101,"1201,16590-0546-90 ",.01)
 ;;16590-0546-90
 ;;9002226.02101,"1201,16590-0546-90 ",.02)
 ;;16590-0546-90
 ;;9002226.02101,"1201,16590-0547-30 ",.01)
 ;;16590-0547-30
 ;;9002226.02101,"1201,16590-0547-30 ",.02)
 ;;16590-0547-30
 ;;9002226.02101,"1201,16590-0547-60 ",.01)
 ;;16590-0547-60
 ;;9002226.02101,"1201,16590-0547-60 ",.02)
 ;;16590-0547-60
 ;;9002226.02101,"1201,16590-0547-72 ",.01)
 ;;16590-0547-72
 ;;9002226.02101,"1201,16590-0547-72 ",.02)
 ;;16590-0547-72
 ;;9002226.02101,"1201,16590-0547-90 ",.01)
 ;;16590-0547-90
 ;;9002226.02101,"1201,16590-0547-90 ",.02)
 ;;16590-0547-90
 ;;9002226.02101,"1201,16590-0941-30 ",.01)
 ;;16590-0941-30
 ;;9002226.02101,"1201,16590-0941-30 ",.02)
 ;;16590-0941-30
 ;;9002226.02101,"1201,16714-0681-01 ",.01)
 ;;16714-0681-01
 ;;9002226.02101,"1201,16714-0681-01 ",.02)
 ;;16714-0681-01
 ;;9002226.02101,"1201,16714-0681-02 ",.01)
 ;;16714-0681-02
 ;;9002226.02101,"1201,16714-0681-02 ",.02)
 ;;16714-0681-02
 ;;9002226.02101,"1201,16714-0682-01 ",.01)
 ;;16714-0682-01
 ;;9002226.02101,"1201,16714-0682-01 ",.02)
 ;;16714-0682-01
 ;;9002226.02101,"1201,16714-0682-02 ",.01)
 ;;16714-0682-02
 ;;9002226.02101,"1201,16714-0682-02 ",.02)
 ;;16714-0682-02
 ;;9002226.02101,"1201,16714-0682-03 ",.01)
 ;;16714-0682-03
 ;;9002226.02101,"1201,16714-0682-03 ",.02)
 ;;16714-0682-03
 ;;9002226.02101,"1201,16714-0683-01 ",.01)
 ;;16714-0683-01
 ;;9002226.02101,"1201,16714-0683-01 ",.02)
 ;;16714-0683-01
 ;;9002226.02101,"1201,16714-0683-02 ",.01)
 ;;16714-0683-02
 ;;9002226.02101,"1201,16714-0683-02 ",.02)
 ;;16714-0683-02
 ;;9002226.02101,"1201,16714-0683-03 ",.01)
 ;;16714-0683-03
 ;;9002226.02101,"1201,16714-0683-03 ",.02)
 ;;16714-0683-03
 ;;9002226.02101,"1201,16714-0684-01 ",.01)
 ;;16714-0684-01
 ;;9002226.02101,"1201,16714-0684-01 ",.02)
 ;;16714-0684-01
 ;;9002226.02101,"1201,16714-0684-02 ",.01)
 ;;16714-0684-02
 ;;9002226.02101,"1201,16714-0684-02 ",.02)
 ;;16714-0684-02
 ;;9002226.02101,"1201,16714-0684-03 ",.01)
 ;;16714-0684-03
 ;;9002226.02101,"1201,16714-0684-03 ",.02)
 ;;16714-0684-03
 ;;9002226.02101,"1201,16714-0685-01 ",.01)
 ;;16714-0685-01
