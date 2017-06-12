BGP63E12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,00781-2274-01 ",.02)
 ;;00781-2274-01
 ;;9002226.02101,"873,00781-2274-10 ",.01)
 ;;00781-2274-10
 ;;9002226.02101,"873,00781-2274-10 ",.02)
 ;;00781-2274-10
 ;;9002226.02101,"873,00781-2277-01 ",.01)
 ;;00781-2277-01
 ;;9002226.02101,"873,00781-2277-01 ",.02)
 ;;00781-2277-01
 ;;9002226.02101,"873,00781-2279-01 ",.01)
 ;;00781-2279-01
 ;;9002226.02101,"873,00781-2279-01 ",.02)
 ;;00781-2279-01
 ;;9002226.02101,"873,00781-5131-01 ",.01)
 ;;00781-5131-01
 ;;9002226.02101,"873,00781-5131-01 ",.02)
 ;;00781-5131-01
 ;;9002226.02101,"873,00781-5132-01 ",.01)
 ;;00781-5132-01
 ;;9002226.02101,"873,00781-5132-01 ",.02)
 ;;00781-5132-01
 ;;9002226.02101,"873,00781-5133-01 ",.01)
 ;;00781-5133-01
 ;;9002226.02101,"873,00781-5133-01 ",.02)
 ;;00781-5133-01
 ;;9002226.02101,"873,00781-5134-01 ",.01)
 ;;00781-5134-01
 ;;9002226.02101,"873,00781-5134-01 ",.02)
 ;;00781-5134-01
 ;;9002226.02101,"873,00781-5204-10 ",.01)
 ;;00781-5204-10
 ;;9002226.02101,"873,00781-5204-10 ",.02)
 ;;00781-5204-10
 ;;9002226.02101,"873,00781-5204-31 ",.01)
 ;;00781-5204-31
 ;;9002226.02101,"873,00781-5204-31 ",.02)
 ;;00781-5204-31
 ;;9002226.02101,"873,00781-5204-92 ",.01)
 ;;00781-5204-92
 ;;9002226.02101,"873,00781-5204-92 ",.02)
 ;;00781-5204-92
 ;;9002226.02101,"873,00781-5206-10 ",.01)
 ;;00781-5206-10
 ;;9002226.02101,"873,00781-5206-10 ",.02)
 ;;00781-5206-10
 ;;9002226.02101,"873,00781-5206-31 ",.01)
 ;;00781-5206-31
 ;;9002226.02101,"873,00781-5206-31 ",.02)
 ;;00781-5206-31
 ;;9002226.02101,"873,00781-5206-92 ",.01)
 ;;00781-5206-92
 ;;9002226.02101,"873,00781-5206-92 ",.02)
 ;;00781-5206-92
 ;;9002226.02101,"873,00781-5207-10 ",.01)
 ;;00781-5207-10
 ;;9002226.02101,"873,00781-5207-10 ",.02)
 ;;00781-5207-10
 ;;9002226.02101,"873,00781-5207-31 ",.01)
 ;;00781-5207-31
 ;;9002226.02101,"873,00781-5207-31 ",.02)
 ;;00781-5207-31
 ;;9002226.02101,"873,00781-5207-92 ",.01)
 ;;00781-5207-92
 ;;9002226.02101,"873,00781-5207-92 ",.02)
 ;;00781-5207-92
 ;;9002226.02101,"873,00781-5372-64 ",.01)
 ;;00781-5372-64
 ;;9002226.02101,"873,00781-5372-64 ",.02)
 ;;00781-5372-64
 ;;9002226.02101,"873,00781-5374-64 ",.01)
 ;;00781-5374-64
 ;;9002226.02101,"873,00781-5374-64 ",.02)
 ;;00781-5374-64
 ;;9002226.02101,"873,00781-5378-64 ",.01)
 ;;00781-5378-64
 ;;9002226.02101,"873,00781-5378-64 ",.02)
 ;;00781-5378-64
 ;;9002226.02101,"873,00781-5607-31 ",.01)
 ;;00781-5607-31
 ;;9002226.02101,"873,00781-5607-31 ",.02)
 ;;00781-5607-31
 ;;9002226.02101,"873,00781-5608-92 ",.01)
 ;;00781-5608-92
 ;;9002226.02101,"873,00781-5608-92 ",.02)
 ;;00781-5608-92
 ;;9002226.02101,"873,00781-5618-92 ",.01)
 ;;00781-5618-92
 ;;9002226.02101,"873,00781-5618-92 ",.02)
 ;;00781-5618-92
 ;;9002226.02101,"873,00781-5619-92 ",.01)
 ;;00781-5619-92
 ;;9002226.02101,"873,00781-5619-92 ",.02)
 ;;00781-5619-92
 ;;9002226.02101,"873,00781-5700-10 ",.01)
 ;;00781-5700-10
 ;;9002226.02101,"873,00781-5700-10 ",.02)
 ;;00781-5700-10
 ;;9002226.02101,"873,00781-5700-92 ",.01)
 ;;00781-5700-92
 ;;9002226.02101,"873,00781-5700-92 ",.02)
 ;;00781-5700-92
 ;;9002226.02101,"873,00781-5701-10 ",.01)
 ;;00781-5701-10
 ;;9002226.02101,"873,00781-5701-10 ",.02)
 ;;00781-5701-10
 ;;9002226.02101,"873,00781-5701-31 ",.01)
 ;;00781-5701-31
 ;;9002226.02101,"873,00781-5701-31 ",.02)
 ;;00781-5701-31
 ;;9002226.02101,"873,00781-5701-92 ",.01)
 ;;00781-5701-92
 ;;9002226.02101,"873,00781-5701-92 ",.02)
 ;;00781-5701-92
 ;;9002226.02101,"873,00781-5702-10 ",.01)
 ;;00781-5702-10
 ;;9002226.02101,"873,00781-5702-10 ",.02)
 ;;00781-5702-10
 ;;9002226.02101,"873,00781-5702-31 ",.01)
 ;;00781-5702-31
 ;;9002226.02101,"873,00781-5702-31 ",.02)
 ;;00781-5702-31
 ;;9002226.02101,"873,00781-5702-92 ",.01)
 ;;00781-5702-92
 ;;9002226.02101,"873,00781-5702-92 ",.02)
 ;;00781-5702-92
 ;;9002226.02101,"873,00781-5756-31 ",.01)
 ;;00781-5756-31
 ;;9002226.02101,"873,00781-5756-31 ",.02)
 ;;00781-5756-31
 ;;9002226.02101,"873,00781-5760-31 ",.01)
 ;;00781-5760-31
 ;;9002226.02101,"873,00781-5760-31 ",.02)
 ;;00781-5760-31
 ;;9002226.02101,"873,00781-5771-31 ",.01)
 ;;00781-5771-31
 ;;9002226.02101,"873,00781-5771-31 ",.02)
 ;;00781-5771-31
 ;;9002226.02101,"873,00781-5787-31 ",.01)
 ;;00781-5787-31
 ;;9002226.02101,"873,00781-5787-31 ",.02)
 ;;00781-5787-31
 ;;9002226.02101,"873,00781-5794-31 ",.01)
 ;;00781-5794-31
 ;;9002226.02101,"873,00781-5794-31 ",.02)
 ;;00781-5794-31
 ;;9002226.02101,"873,00781-5805-10 ",.01)
 ;;00781-5805-10
 ;;9002226.02101,"873,00781-5805-10 ",.02)
 ;;00781-5805-10
 ;;9002226.02101,"873,00781-5805-92 ",.01)
 ;;00781-5805-92
 ;;9002226.02101,"873,00781-5805-92 ",.02)
 ;;00781-5805-92
 ;;9002226.02101,"873,00781-5806-10 ",.01)
 ;;00781-5806-10
 ;;9002226.02101,"873,00781-5806-10 ",.02)
 ;;00781-5806-10
 ;;9002226.02101,"873,00781-5806-31 ",.01)
 ;;00781-5806-31
 ;;9002226.02101,"873,00781-5806-31 ",.02)
 ;;00781-5806-31
 ;;9002226.02101,"873,00781-5806-92 ",.01)
 ;;00781-5806-92
 ;;9002226.02101,"873,00781-5806-92 ",.02)
 ;;00781-5806-92
 ;;9002226.02101,"873,00781-5807-10 ",.01)
 ;;00781-5807-10
 ;;9002226.02101,"873,00781-5807-10 ",.02)
 ;;00781-5807-10
 ;;9002226.02101,"873,00781-5807-31 ",.01)
 ;;00781-5807-31
 ;;9002226.02101,"873,00781-5807-31 ",.02)
 ;;00781-5807-31
 ;;9002226.02101,"873,00781-5807-92 ",.01)
 ;;00781-5807-92
 ;;9002226.02101,"873,00781-5807-92 ",.02)
 ;;00781-5807-92
 ;;9002226.02101,"873,00781-5816-10 ",.01)
 ;;00781-5816-10
 ;;9002226.02101,"873,00781-5816-10 ",.02)
 ;;00781-5816-10
 ;;9002226.02101,"873,00781-5816-31 ",.01)
 ;;00781-5816-31
 ;;9002226.02101,"873,00781-5816-31 ",.02)
 ;;00781-5816-31
 ;;9002226.02101,"873,00781-5816-92 ",.01)
 ;;00781-5816-92
 ;;9002226.02101,"873,00781-5816-92 ",.02)
 ;;00781-5816-92
 ;;9002226.02101,"873,00781-5817-10 ",.01)
 ;;00781-5817-10
 ;;9002226.02101,"873,00781-5817-10 ",.02)
 ;;00781-5817-10
 ;;9002226.02101,"873,00781-5817-31 ",.01)
 ;;00781-5817-31
 ;;9002226.02101,"873,00781-5817-31 ",.02)
 ;;00781-5817-31
 ;;9002226.02101,"873,00781-5817-92 ",.01)
 ;;00781-5817-92
 ;;9002226.02101,"873,00781-5817-92 ",.02)
 ;;00781-5817-92
 ;;9002226.02101,"873,00781-5818-10 ",.01)
 ;;00781-5818-10
 ;;9002226.02101,"873,00781-5818-10 ",.02)
 ;;00781-5818-10
 ;;9002226.02101,"873,00781-5818-31 ",.01)
 ;;00781-5818-31
 ;;9002226.02101,"873,00781-5818-31 ",.02)
 ;;00781-5818-31
 ;;9002226.02101,"873,00781-5818-92 ",.01)
 ;;00781-5818-92
 ;;9002226.02101,"873,00781-5818-92 ",.02)
 ;;00781-5818-92
 ;;9002226.02101,"873,00781-5936-31 ",.01)
 ;;00781-5936-31
 ;;9002226.02101,"873,00781-5936-31 ",.02)
 ;;00781-5936-31
 ;;9002226.02101,"873,00781-5937-31 ",.01)
 ;;00781-5937-31
 ;;9002226.02101,"873,00781-5937-31 ",.02)
 ;;00781-5937-31
 ;;9002226.02101,"873,00781-5938-31 ",.01)
 ;;00781-5938-31
 ;;9002226.02101,"873,00781-5938-31 ",.02)
 ;;00781-5938-31
 ;;9002226.02101,"873,00781-5938-92 ",.01)
 ;;00781-5938-92
 ;;9002226.02101,"873,00781-5938-92 ",.02)
 ;;00781-5938-92
 ;;9002226.02101,"873,00781-5939-31 ",.01)
 ;;00781-5939-31
 ;;9002226.02101,"873,00781-5939-31 ",.02)
 ;;00781-5939-31
 ;;9002226.02101,"873,00781-5939-92 ",.01)
 ;;00781-5939-92
 ;;9002226.02101,"873,00781-5939-92 ",.02)
 ;;00781-5939-92
 ;;9002226.02101,"873,00781-5948-10 ",.01)
 ;;00781-5948-10
 ;;9002226.02101,"873,00781-5948-10 ",.02)
 ;;00781-5948-10
 ;;9002226.02101,"873,00781-5948-92 ",.01)
 ;;00781-5948-92
 ;;9002226.02101,"873,00781-5948-92 ",.02)
 ;;00781-5948-92
 ;;9002226.02101,"873,00781-5949-10 ",.01)
 ;;00781-5949-10
 ;;9002226.02101,"873,00781-5949-10 ",.02)
 ;;00781-5949-10
 ;;9002226.02101,"873,00781-5949-64 ",.01)
 ;;00781-5949-64
 ;;9002226.02101,"873,00781-5949-64 ",.02)
 ;;00781-5949-64
 ;;9002226.02101,"873,00781-5949-92 ",.01)
 ;;00781-5949-92
 ;;9002226.02101,"873,00781-5949-92 ",.02)
 ;;00781-5949-92
 ;;9002226.02101,"873,00781-5950-10 ",.01)
 ;;00781-5950-10
 ;;9002226.02101,"873,00781-5950-10 ",.02)
 ;;00781-5950-10
 ;;9002226.02101,"873,00781-5950-64 ",.01)
 ;;00781-5950-64
 ;;9002226.02101,"873,00781-5950-64 ",.02)
 ;;00781-5950-64
 ;;9002226.02101,"873,00781-5950-92 ",.01)
 ;;00781-5950-92
 ;;9002226.02101,"873,00781-5950-92 ",.02)
 ;;00781-5950-92
 ;;9002226.02101,"873,00781-5951-10 ",.01)
 ;;00781-5951-10
 ;;9002226.02101,"873,00781-5951-10 ",.02)
 ;;00781-5951-10
 ;;9002226.02101,"873,00781-5951-64 ",.01)
 ;;00781-5951-64
 ;;9002226.02101,"873,00781-5951-64 ",.02)
 ;;00781-5951-64
 ;;9002226.02101,"873,00781-5951-92 ",.01)
 ;;00781-5951-92
 ;;9002226.02101,"873,00781-5951-92 ",.02)
 ;;00781-5951-92
 ;;9002226.02101,"873,00781-5952-10 ",.01)
 ;;00781-5952-10
 ;;9002226.02101,"873,00781-5952-10 ",.02)
 ;;00781-5952-10
 ;;9002226.02101,"873,00781-5952-64 ",.01)
 ;;00781-5952-64
 ;;9002226.02101,"873,00781-5952-64 ",.02)
 ;;00781-5952-64
 ;;9002226.02101,"873,00781-5952-92 ",.01)
 ;;00781-5952-92
 ;;9002226.02101,"873,00781-5952-92 ",.02)
 ;;00781-5952-92
 ;;9002226.02101,"873,00832-0483-11 ",.01)
 ;;00832-0483-11
 ;;9002226.02101,"873,00832-0483-11 ",.02)
 ;;00832-0483-11
 ;;9002226.02101,"873,00832-0484-11 ",.01)
 ;;00832-0484-11
 ;;9002226.02101,"873,00832-0484-11 ",.02)
 ;;00832-0484-11
 ;;9002226.02101,"873,00832-0485-11 ",.01)
 ;;00832-0485-11
 ;;9002226.02101,"873,00832-0485-11 ",.02)
 ;;00832-0485-11
 ;;9002226.02101,"873,00904-6389-61 ",.01)
 ;;00904-6389-61
 ;;9002226.02101,"873,00904-6389-61 ",.02)
 ;;00904-6389-61
 ;;9002226.02101,"873,00904-6390-61 ",.01)
 ;;00904-6390-61
 ;;9002226.02101,"873,00904-6390-61 ",.02)
 ;;00904-6390-61
 ;;9002226.02101,"873,00904-6391-61 ",.01)
 ;;00904-6391-61
 ;;9002226.02101,"873,00904-6391-61 ",.02)
 ;;00904-6391-61
 ;;9002226.02101,"873,00955-1040-30 ",.01)
 ;;00955-1040-30
 ;;9002226.02101,"873,00955-1040-30 ",.02)
 ;;00955-1040-30
 ;;9002226.02101,"873,00955-1040-90 ",.01)
 ;;00955-1040-90
 ;;9002226.02101,"873,00955-1040-90 ",.02)
 ;;00955-1040-90
 ;;9002226.02101,"873,00955-1041-30 ",.01)
 ;;00955-1041-30
 ;;9002226.02101,"873,00955-1041-30 ",.02)
 ;;00955-1041-30
 ;;9002226.02101,"873,00955-1041-90 ",.01)
 ;;00955-1041-90
 ;;9002226.02101,"873,00955-1041-90 ",.02)
 ;;00955-1041-90
 ;;9002226.02101,"873,00955-1042-30 ",.01)
 ;;00955-1042-30
 ;;9002226.02101,"873,00955-1042-30 ",.02)
 ;;00955-1042-30
 ;;9002226.02101,"873,00955-1042-90 ",.01)
 ;;00955-1042-90
 ;;9002226.02101,"873,00955-1042-90 ",.02)
 ;;00955-1042-90
 ;;9002226.02101,"873,00955-1045-30 ",.01)
 ;;00955-1045-30
 ;;9002226.02101,"873,00955-1045-30 ",.02)
 ;;00955-1045-30
 ;;9002226.02101,"873,00955-1045-90 ",.01)
 ;;00955-1045-90
 ;;9002226.02101,"873,00955-1045-90 ",.02)
 ;;00955-1045-90
 ;;9002226.02101,"873,00955-1046-30 ",.01)
 ;;00955-1046-30
 ;;9002226.02101,"873,00955-1046-30 ",.02)
 ;;00955-1046-30
 ;;9002226.02101,"873,00955-1046-90 ",.01)
 ;;00955-1046-90
 ;;9002226.02101,"873,00955-1046-90 ",.02)
 ;;00955-1046-90
 ;;9002226.02101,"873,10544-0564-30 ",.01)
 ;;10544-0564-30
 ;;9002226.02101,"873,10544-0564-30 ",.02)
 ;;10544-0564-30
 ;;9002226.02101,"873,12280-0383-30 ",.01)
 ;;12280-0383-30
 ;;9002226.02101,"873,12280-0383-30 ",.02)
 ;;12280-0383-30
 ;;9002226.02101,"873,13411-0106-01 ",.01)
 ;;13411-0106-01
 ;;9002226.02101,"873,13411-0106-01 ",.02)
 ;;13411-0106-01
 ;;9002226.02101,"873,13411-0106-03 ",.01)
 ;;13411-0106-03
 ;;9002226.02101,"873,13411-0106-03 ",.02)
 ;;13411-0106-03
 ;;9002226.02101,"873,13411-0106-06 ",.01)
 ;;13411-0106-06
 ;;9002226.02101,"873,13411-0106-06 ",.02)
 ;;13411-0106-06
 ;;9002226.02101,"873,13411-0106-09 ",.01)
 ;;13411-0106-09
 ;;9002226.02101,"873,13411-0106-09 ",.02)
 ;;13411-0106-09
 ;;9002226.02101,"873,13411-0106-15 ",.01)
 ;;13411-0106-15
