BGP51Q20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,00781-2272-01 ",.02)
 ;;00781-2272-01
 ;;9002226.02101,"1729,00781-2272-10 ",.01)
 ;;00781-2272-10
 ;;9002226.02101,"1729,00781-2272-10 ",.02)
 ;;00781-2272-10
 ;;9002226.02101,"1729,00781-2272-64 ",.01)
 ;;00781-2272-64
 ;;9002226.02101,"1729,00781-2272-64 ",.02)
 ;;00781-2272-64
 ;;9002226.02101,"1729,00781-2273-01 ",.01)
 ;;00781-2273-01
 ;;9002226.02101,"1729,00781-2273-01 ",.02)
 ;;00781-2273-01
 ;;9002226.02101,"1729,00781-2273-10 ",.01)
 ;;00781-2273-10
 ;;9002226.02101,"1729,00781-2273-10 ",.02)
 ;;00781-2273-10
 ;;9002226.02101,"1729,00781-2273-64 ",.01)
 ;;00781-2273-64
 ;;9002226.02101,"1729,00781-2273-64 ",.02)
 ;;00781-2273-64
 ;;9002226.02101,"1729,00781-2274-01 ",.01)
 ;;00781-2274-01
 ;;9002226.02101,"1729,00781-2274-01 ",.02)
 ;;00781-2274-01
 ;;9002226.02101,"1729,00781-2274-10 ",.01)
 ;;00781-2274-10
 ;;9002226.02101,"1729,00781-2274-10 ",.02)
 ;;00781-2274-10
 ;;9002226.02101,"1729,00781-2274-64 ",.01)
 ;;00781-2274-64
 ;;9002226.02101,"1729,00781-2274-64 ",.02)
 ;;00781-2274-64
 ;;9002226.02101,"1729,00781-2277-01 ",.01)
 ;;00781-2277-01
 ;;9002226.02101,"1729,00781-2277-01 ",.02)
 ;;00781-2277-01
 ;;9002226.02101,"1729,00781-2279-01 ",.01)
 ;;00781-2279-01
 ;;9002226.02101,"1729,00781-2279-01 ",.02)
 ;;00781-2279-01
 ;;9002226.02101,"1729,00781-5204-10 ",.01)
 ;;00781-5204-10
 ;;9002226.02101,"1729,00781-5204-10 ",.02)
 ;;00781-5204-10
 ;;9002226.02101,"1729,00781-5204-31 ",.01)
 ;;00781-5204-31
 ;;9002226.02101,"1729,00781-5204-31 ",.02)
 ;;00781-5204-31
 ;;9002226.02101,"1729,00781-5204-92 ",.01)
 ;;00781-5204-92
 ;;9002226.02101,"1729,00781-5204-92 ",.02)
 ;;00781-5204-92
 ;;9002226.02101,"1729,00781-5206-10 ",.01)
 ;;00781-5206-10
 ;;9002226.02101,"1729,00781-5206-10 ",.02)
 ;;00781-5206-10
 ;;9002226.02101,"1729,00781-5206-31 ",.01)
 ;;00781-5206-31
 ;;9002226.02101,"1729,00781-5206-31 ",.02)
 ;;00781-5206-31
 ;;9002226.02101,"1729,00781-5206-92 ",.01)
 ;;00781-5206-92
 ;;9002226.02101,"1729,00781-5206-92 ",.02)
 ;;00781-5206-92
 ;;9002226.02101,"1729,00781-5207-10 ",.01)
 ;;00781-5207-10
 ;;9002226.02101,"1729,00781-5207-10 ",.02)
 ;;00781-5207-10
 ;;9002226.02101,"1729,00781-5207-31 ",.01)
 ;;00781-5207-31
 ;;9002226.02101,"1729,00781-5207-31 ",.02)
 ;;00781-5207-31
 ;;9002226.02101,"1729,00781-5207-92 ",.01)
 ;;00781-5207-92
 ;;9002226.02101,"1729,00781-5207-92 ",.02)
 ;;00781-5207-92
 ;;9002226.02101,"1729,00781-5320-01 ",.01)
 ;;00781-5320-01
 ;;9002226.02101,"1729,00781-5320-01 ",.02)
 ;;00781-5320-01
 ;;9002226.02101,"1729,00781-5321-01 ",.01)
 ;;00781-5321-01
 ;;9002226.02101,"1729,00781-5321-01 ",.02)
 ;;00781-5321-01
 ;;9002226.02101,"1729,00781-5322-01 ",.01)
 ;;00781-5322-01
 ;;9002226.02101,"1729,00781-5322-01 ",.02)
 ;;00781-5322-01
 ;;9002226.02101,"1729,00781-5700-10 ",.01)
 ;;00781-5700-10
 ;;9002226.02101,"1729,00781-5700-10 ",.02)
 ;;00781-5700-10
 ;;9002226.02101,"1729,00781-5700-92 ",.01)
 ;;00781-5700-92
 ;;9002226.02101,"1729,00781-5700-92 ",.02)
 ;;00781-5700-92
 ;;9002226.02101,"1729,00781-5701-10 ",.01)
 ;;00781-5701-10
 ;;9002226.02101,"1729,00781-5701-10 ",.02)
 ;;00781-5701-10
 ;;9002226.02101,"1729,00781-5701-31 ",.01)
 ;;00781-5701-31
 ;;9002226.02101,"1729,00781-5701-31 ",.02)
 ;;00781-5701-31
 ;;9002226.02101,"1729,00781-5701-92 ",.01)
 ;;00781-5701-92
 ;;9002226.02101,"1729,00781-5701-92 ",.02)
 ;;00781-5701-92
 ;;9002226.02101,"1729,00781-5702-10 ",.01)
 ;;00781-5702-10
 ;;9002226.02101,"1729,00781-5702-10 ",.02)
 ;;00781-5702-10
 ;;9002226.02101,"1729,00781-5702-31 ",.01)
 ;;00781-5702-31
 ;;9002226.02101,"1729,00781-5702-31 ",.02)
 ;;00781-5702-31
 ;;9002226.02101,"1729,00781-5702-92 ",.01)
 ;;00781-5702-92
 ;;9002226.02101,"1729,00781-5702-92 ",.02)
 ;;00781-5702-92
 ;;9002226.02101,"1729,00781-5805-10 ",.01)
 ;;00781-5805-10
 ;;9002226.02101,"1729,00781-5805-10 ",.02)
 ;;00781-5805-10
 ;;9002226.02101,"1729,00781-5805-92 ",.01)
 ;;00781-5805-92
 ;;9002226.02101,"1729,00781-5805-92 ",.02)
 ;;00781-5805-92
 ;;9002226.02101,"1729,00781-5806-10 ",.01)
 ;;00781-5806-10
 ;;9002226.02101,"1729,00781-5806-10 ",.02)
 ;;00781-5806-10
 ;;9002226.02101,"1729,00781-5806-31 ",.01)
 ;;00781-5806-31
 ;;9002226.02101,"1729,00781-5806-31 ",.02)
 ;;00781-5806-31
 ;;9002226.02101,"1729,00781-5806-92 ",.01)
 ;;00781-5806-92
 ;;9002226.02101,"1729,00781-5806-92 ",.02)
 ;;00781-5806-92
 ;;9002226.02101,"1729,00781-5807-10 ",.01)
 ;;00781-5807-10
 ;;9002226.02101,"1729,00781-5807-10 ",.02)
 ;;00781-5807-10
 ;;9002226.02101,"1729,00781-5807-31 ",.01)
 ;;00781-5807-31
 ;;9002226.02101,"1729,00781-5807-31 ",.02)
 ;;00781-5807-31
 ;;9002226.02101,"1729,00781-5807-92 ",.01)
 ;;00781-5807-92
 ;;9002226.02101,"1729,00781-5807-92 ",.02)
 ;;00781-5807-92
 ;;9002226.02101,"1729,00781-5816-10 ",.01)
 ;;00781-5816-10
 ;;9002226.02101,"1729,00781-5816-10 ",.02)
 ;;00781-5816-10
 ;;9002226.02101,"1729,00781-5816-31 ",.01)
 ;;00781-5816-31
 ;;9002226.02101,"1729,00781-5816-31 ",.02)
 ;;00781-5816-31
 ;;9002226.02101,"1729,00781-5816-92 ",.01)
 ;;00781-5816-92
 ;;9002226.02101,"1729,00781-5816-92 ",.02)
 ;;00781-5816-92
 ;;9002226.02101,"1729,00781-5817-10 ",.01)
 ;;00781-5817-10
 ;;9002226.02101,"1729,00781-5817-10 ",.02)
 ;;00781-5817-10
 ;;9002226.02101,"1729,00781-5817-31 ",.01)
 ;;00781-5817-31
 ;;9002226.02101,"1729,00781-5817-31 ",.02)
 ;;00781-5817-31
 ;;9002226.02101,"1729,00781-5817-92 ",.01)
 ;;00781-5817-92
 ;;9002226.02101,"1729,00781-5817-92 ",.02)
 ;;00781-5817-92
 ;;9002226.02101,"1729,00781-5818-10 ",.01)
 ;;00781-5818-10
 ;;9002226.02101,"1729,00781-5818-10 ",.02)
 ;;00781-5818-10
 ;;9002226.02101,"1729,00781-5818-31 ",.01)
 ;;00781-5818-31
 ;;9002226.02101,"1729,00781-5818-31 ",.02)
 ;;00781-5818-31
 ;;9002226.02101,"1729,00781-5818-92 ",.01)
 ;;00781-5818-92
 ;;9002226.02101,"1729,00781-5818-92 ",.02)
 ;;00781-5818-92
 ;;9002226.02101,"1729,00781-5936-31 ",.01)
 ;;00781-5936-31
 ;;9002226.02101,"1729,00781-5936-31 ",.02)
 ;;00781-5936-31
 ;;9002226.02101,"1729,00781-5937-31 ",.01)
 ;;00781-5937-31
 ;;9002226.02101,"1729,00781-5937-31 ",.02)
 ;;00781-5937-31
 ;;9002226.02101,"1729,00781-5938-31 ",.01)
 ;;00781-5938-31
 ;;9002226.02101,"1729,00781-5938-31 ",.02)
 ;;00781-5938-31
 ;;9002226.02101,"1729,00781-5938-92 ",.01)
 ;;00781-5938-92
 ;;9002226.02101,"1729,00781-5938-92 ",.02)
 ;;00781-5938-92
 ;;9002226.02101,"1729,00781-5939-31 ",.01)
 ;;00781-5939-31
 ;;9002226.02101,"1729,00781-5939-31 ",.02)
 ;;00781-5939-31
 ;;9002226.02101,"1729,00781-5939-92 ",.01)
 ;;00781-5939-92
 ;;9002226.02101,"1729,00781-5939-92 ",.02)
 ;;00781-5939-92
 ;;9002226.02101,"1729,00781-5948-10 ",.01)
 ;;00781-5948-10
 ;;9002226.02101,"1729,00781-5948-10 ",.02)
 ;;00781-5948-10
 ;;9002226.02101,"1729,00781-5948-92 ",.01)
 ;;00781-5948-92
 ;;9002226.02101,"1729,00781-5948-92 ",.02)
 ;;00781-5948-92
 ;;9002226.02101,"1729,00781-5949-10 ",.01)
 ;;00781-5949-10
 ;;9002226.02101,"1729,00781-5949-10 ",.02)
 ;;00781-5949-10
 ;;9002226.02101,"1729,00781-5949-64 ",.01)
 ;;00781-5949-64
 ;;9002226.02101,"1729,00781-5949-64 ",.02)
 ;;00781-5949-64
 ;;9002226.02101,"1729,00781-5949-92 ",.01)
 ;;00781-5949-92
 ;;9002226.02101,"1729,00781-5949-92 ",.02)
 ;;00781-5949-92
 ;;9002226.02101,"1729,00781-5950-10 ",.01)
 ;;00781-5950-10
 ;;9002226.02101,"1729,00781-5950-10 ",.02)
 ;;00781-5950-10
 ;;9002226.02101,"1729,00781-5950-64 ",.01)
 ;;00781-5950-64
 ;;9002226.02101,"1729,00781-5950-64 ",.02)
 ;;00781-5950-64
 ;;9002226.02101,"1729,00781-5950-92 ",.01)
 ;;00781-5950-92
 ;;9002226.02101,"1729,00781-5950-92 ",.02)
 ;;00781-5950-92
 ;;9002226.02101,"1729,00781-5951-10 ",.01)
 ;;00781-5951-10
 ;;9002226.02101,"1729,00781-5951-10 ",.02)
 ;;00781-5951-10
 ;;9002226.02101,"1729,00781-5951-64 ",.01)
 ;;00781-5951-64
 ;;9002226.02101,"1729,00781-5951-64 ",.02)
 ;;00781-5951-64
 ;;9002226.02101,"1729,00781-5951-92 ",.01)
 ;;00781-5951-92
 ;;9002226.02101,"1729,00781-5951-92 ",.02)
 ;;00781-5951-92
 ;;9002226.02101,"1729,00781-5952-10 ",.01)
 ;;00781-5952-10
 ;;9002226.02101,"1729,00781-5952-10 ",.02)
 ;;00781-5952-10
 ;;9002226.02101,"1729,00781-5952-64 ",.01)
 ;;00781-5952-64
 ;;9002226.02101,"1729,00781-5952-64 ",.02)
 ;;00781-5952-64
 ;;9002226.02101,"1729,00781-5952-92 ",.01)
 ;;00781-5952-92
 ;;9002226.02101,"1729,00781-5952-92 ",.02)
 ;;00781-5952-92
 ;;9002226.02101,"1729,00904-5045-61 ",.01)
 ;;00904-5045-61
 ;;9002226.02101,"1729,00904-5045-61 ",.02)
 ;;00904-5045-61
 ;;9002226.02101,"1729,00904-5046-61 ",.01)
 ;;00904-5046-61
 ;;9002226.02101,"1729,00904-5046-61 ",.02)
 ;;00904-5046-61
 ;;9002226.02101,"1729,00904-5047-61 ",.01)
 ;;00904-5047-61
 ;;9002226.02101,"1729,00904-5047-61 ",.02)
 ;;00904-5047-61
 ;;9002226.02101,"1729,00904-5501-60 ",.01)
 ;;00904-5501-60
 ;;9002226.02101,"1729,00904-5501-60 ",.02)
 ;;00904-5501-60
 ;;9002226.02101,"1729,00904-5502-61 ",.01)
 ;;00904-5502-61
 ;;9002226.02101,"1729,00904-5502-61 ",.02)
 ;;00904-5502-61
 ;;9002226.02101,"1729,00904-5609-61 ",.01)
 ;;00904-5609-61
 ;;9002226.02101,"1729,00904-5609-61 ",.02)
 ;;00904-5609-61
 ;;9002226.02101,"1729,00904-5610-61 ",.01)
 ;;00904-5610-61
 ;;9002226.02101,"1729,00904-5610-61 ",.02)
 ;;00904-5610-61
 ;;9002226.02101,"1729,00904-5611-61 ",.01)
 ;;00904-5611-61
 ;;9002226.02101,"1729,00904-5611-61 ",.02)
 ;;00904-5611-61
 ;;9002226.02101,"1729,00904-5638-89 ",.01)
 ;;00904-5638-89
 ;;9002226.02101,"1729,00904-5638-89 ",.02)
 ;;00904-5638-89
 ;;9002226.02101,"1729,00904-5639-43 ",.01)
 ;;00904-5639-43
 ;;9002226.02101,"1729,00904-5639-43 ",.02)
 ;;00904-5639-43
 ;;9002226.02101,"1729,00904-5639-46 ",.01)
 ;;00904-5639-46
 ;;9002226.02101,"1729,00904-5639-46 ",.02)
 ;;00904-5639-46
 ;;9002226.02101,"1729,00904-5639-48 ",.01)
 ;;00904-5639-48
 ;;9002226.02101,"1729,00904-5639-48 ",.02)
 ;;00904-5639-48
 ;;9002226.02101,"1729,00904-5639-89 ",.01)
 ;;00904-5639-89
 ;;9002226.02101,"1729,00904-5639-89 ",.02)
 ;;00904-5639-89
 ;;9002226.02101,"1729,00904-5640-46 ",.01)
 ;;00904-5640-46
 ;;9002226.02101,"1729,00904-5640-46 ",.02)
 ;;00904-5640-46
 ;;9002226.02101,"1729,00904-5640-48 ",.01)
 ;;00904-5640-48
 ;;9002226.02101,"1729,00904-5640-48 ",.02)
 ;;00904-5640-48
 ;;9002226.02101,"1729,00904-5640-89 ",.01)
 ;;00904-5640-89
 ;;9002226.02101,"1729,00904-5640-89 ",.02)
 ;;00904-5640-89
 ;;9002226.02101,"1729,00904-5642-89 ",.01)
 ;;00904-5642-89
 ;;9002226.02101,"1729,00904-5642-89 ",.02)
 ;;00904-5642-89
 ;;9002226.02101,"1729,00904-5701-61 ",.01)
 ;;00904-5701-61
 ;;9002226.02101,"1729,00904-5701-61 ",.02)
 ;;00904-5701-61
 ;;9002226.02101,"1729,00904-5808-43 ",.01)
 ;;00904-5808-43
 ;;9002226.02101,"1729,00904-5808-43 ",.02)
 ;;00904-5808-43
 ;;9002226.02101,"1729,00904-5808-46 ",.01)
 ;;00904-5808-46
 ;;9002226.02101,"1729,00904-5808-46 ",.02)
 ;;00904-5808-46
 ;;9002226.02101,"1729,00904-5808-48 ",.01)
 ;;00904-5808-48
 ;;9002226.02101,"1729,00904-5808-48 ",.02)
 ;;00904-5808-48
 ;;9002226.02101,"1729,00904-5808-61 ",.01)
 ;;00904-5808-61
 ;;9002226.02101,"1729,00904-5808-61 ",.02)
 ;;00904-5808-61
 ;;9002226.02101,"1729,00904-5808-80 ",.01)
 ;;00904-5808-80
 ;;9002226.02101,"1729,00904-5808-80 ",.02)
 ;;00904-5808-80
 ;;9002226.02101,"1729,00904-5808-89 ",.01)
 ;;00904-5808-89
 ;;9002226.02101,"1729,00904-5808-89 ",.02)
 ;;00904-5808-89
 ;;9002226.02101,"1729,00904-5808-93 ",.01)
 ;;00904-5808-93
 ;;9002226.02101,"1729,00904-5808-93 ",.02)
 ;;00904-5808-93
 ;;9002226.02101,"1729,00904-5809-43 ",.01)
 ;;00904-5809-43
 ;;9002226.02101,"1729,00904-5809-43 ",.02)
 ;;00904-5809-43
 ;;9002226.02101,"1729,00904-5809-46 ",.01)
 ;;00904-5809-46
 ;;9002226.02101,"1729,00904-5809-46 ",.02)
 ;;00904-5809-46
 ;;9002226.02101,"1729,00904-5809-48 ",.01)
 ;;00904-5809-48
 ;;9002226.02101,"1729,00904-5809-48 ",.02)
 ;;00904-5809-48
 ;;9002226.02101,"1729,00904-5809-61 ",.01)
 ;;00904-5809-61
 ;;9002226.02101,"1729,00904-5809-61 ",.02)
 ;;00904-5809-61
 ;;9002226.02101,"1729,00904-5809-80 ",.01)
 ;;00904-5809-80
 ;;9002226.02101,"1729,00904-5809-80 ",.02)
 ;;00904-5809-80
 ;;9002226.02101,"1729,00904-5809-89 ",.01)
 ;;00904-5809-89
 ;;9002226.02101,"1729,00904-5809-89 ",.02)
 ;;00904-5809-89
 ;;9002226.02101,"1729,00904-5809-93 ",.01)
 ;;00904-5809-93
 ;;9002226.02101,"1729,00904-5809-93 ",.02)
 ;;00904-5809-93
 ;;9002226.02101,"1729,00904-5810-43 ",.01)
 ;;00904-5810-43
 ;;9002226.02101,"1729,00904-5810-43 ",.02)
 ;;00904-5810-43
 ;;9002226.02101,"1729,00904-5810-46 ",.01)
 ;;00904-5810-46
 ;;9002226.02101,"1729,00904-5810-46 ",.02)
 ;;00904-5810-46
 ;;9002226.02101,"1729,00904-5810-48 ",.01)
 ;;00904-5810-48
 ;;9002226.02101,"1729,00904-5810-48 ",.02)
 ;;00904-5810-48
 ;;9002226.02101,"1729,00904-5810-52 ",.01)
 ;;00904-5810-52
 ;;9002226.02101,"1729,00904-5810-52 ",.02)
 ;;00904-5810-52
 ;;9002226.02101,"1729,00904-5810-61 ",.01)
 ;;00904-5810-61
 ;;9002226.02101,"1729,00904-5810-61 ",.02)
 ;;00904-5810-61
 ;;9002226.02101,"1729,00904-5810-80 ",.01)
 ;;00904-5810-80
 ;;9002226.02101,"1729,00904-5810-80 ",.02)
 ;;00904-5810-80
 ;;9002226.02101,"1729,00904-5810-89 ",.01)
 ;;00904-5810-89
 ;;9002226.02101,"1729,00904-5810-89 ",.02)
 ;;00904-5810-89
 ;;9002226.02101,"1729,00904-5810-93 ",.01)
 ;;00904-5810-93
 ;;9002226.02101,"1729,00904-5810-93 ",.02)
 ;;00904-5810-93
 ;;9002226.02101,"1729,00904-5811-43 ",.01)
 ;;00904-5811-43
 ;;9002226.02101,"1729,00904-5811-43 ",.02)
 ;;00904-5811-43
 ;;9002226.02101,"1729,00904-5811-46 ",.01)
 ;;00904-5811-46
 ;;9002226.02101,"1729,00904-5811-46 ",.02)
 ;;00904-5811-46
