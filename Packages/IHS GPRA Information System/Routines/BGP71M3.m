BGP71M3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1798,00615-0547-43 ",.01)
 ;;00615-0547-43
 ;;9002226.02101,"1798,00615-0547-43 ",.02)
 ;;00615-0547-43
 ;;9002226.02101,"1798,00641-1410-31 ",.01)
 ;;00641-1410-31
 ;;9002226.02101,"1798,00641-1410-31 ",.02)
 ;;00641-1410-31
 ;;9002226.02101,"1798,00641-1410-35 ",.01)
 ;;00641-1410-35
 ;;9002226.02101,"1798,00641-1410-35 ",.02)
 ;;00641-1410-35
 ;;9002226.02101,"1798,00781-3059-72 ",.01)
 ;;00781-3059-72
 ;;9002226.02101,"1798,00781-3059-72 ",.02)
 ;;00781-3059-72
 ;;9002226.02101,"1798,00781-3059-95 ",.01)
 ;;00781-3059-95
 ;;9002226.02101,"1798,00781-3059-95 ",.02)
 ;;00781-3059-95
 ;;9002226.02101,"1798,00781-5451-01 ",.01)
 ;;00781-5451-01
 ;;9002226.02101,"1798,00781-5451-01 ",.02)
 ;;00781-5451-01
 ;;9002226.02101,"1798,00781-5452-01 ",.01)
 ;;00781-5452-01
 ;;9002226.02101,"1798,00781-5452-01 ",.02)
 ;;00781-5452-01
 ;;9002226.02101,"1798,00781-5456-01 ",.01)
 ;;00781-5456-01
 ;;9002226.02101,"1798,00781-5456-01 ",.02)
 ;;00781-5456-01
 ;;9002226.02101,"1798,00781-5457-01 ",.01)
 ;;00781-5457-01
 ;;9002226.02101,"1798,00781-5457-01 ",.02)
 ;;00781-5457-01
 ;;9002226.02101,"1798,00904-5921-61 ",.01)
 ;;00904-5921-61
 ;;9002226.02101,"1798,00904-5921-61 ",.02)
 ;;00904-5921-61
 ;;9002226.02101,"1798,00904-5922-61 ",.01)
 ;;00904-5922-61
 ;;9002226.02101,"1798,00904-5922-61 ",.02)
 ;;00904-5922-61
 ;;9002226.02101,"1798,00904-6183-60 ",.01)
 ;;00904-6183-60
 ;;9002226.02101,"1798,00904-6183-60 ",.02)
 ;;00904-6183-60
 ;;9002226.02101,"1798,00904-6184-60 ",.01)
 ;;00904-6184-60
 ;;9002226.02101,"1798,00904-6184-60 ",.02)
 ;;00904-6184-60
 ;;9002226.02101,"1798,10135-0534-01 ",.01)
 ;;10135-0534-01
 ;;9002226.02101,"1798,10135-0534-01 ",.02)
 ;;10135-0534-01
 ;;9002226.02101,"1798,10135-0534-10 ",.01)
 ;;10135-0534-10
 ;;9002226.02101,"1798,10135-0534-10 ",.02)
 ;;10135-0534-10
 ;;9002226.02101,"1798,10135-0535-01 ",.01)
 ;;10135-0535-01
 ;;9002226.02101,"1798,10135-0535-01 ",.02)
 ;;10135-0535-01
 ;;9002226.02101,"1798,10135-0535-10 ",.01)
 ;;10135-0535-10
 ;;9002226.02101,"1798,10135-0535-10 ",.02)
 ;;10135-0535-10
 ;;9002226.02101,"1798,10370-0533-01 ",.01)
 ;;10370-0533-01
 ;;9002226.02101,"1798,10370-0533-01 ",.02)
 ;;10370-0533-01
 ;;9002226.02101,"1798,10370-0534-01 ",.01)
 ;;10370-0534-01
 ;;9002226.02101,"1798,10370-0534-01 ",.02)
 ;;10370-0534-01
 ;;9002226.02101,"1798,10370-0536-01 ",.01)
 ;;10370-0536-01
 ;;9002226.02101,"1798,10370-0536-01 ",.02)
 ;;10370-0536-01
 ;;9002226.02101,"1798,10370-0538-01 ",.01)
 ;;10370-0538-01
 ;;9002226.02101,"1798,10370-0538-01 ",.02)
 ;;10370-0538-01
 ;;9002226.02101,"1798,16590-0319-30 ",.01)
 ;;16590-0319-30
 ;;9002226.02101,"1798,16590-0319-30 ",.02)
 ;;16590-0319-30
 ;;9002226.02101,"1798,16590-0319-60 ",.01)
 ;;16590-0319-60
 ;;9002226.02101,"1798,16590-0319-60 ",.02)
 ;;16590-0319-60
 ;;9002226.02101,"1798,16590-0319-82 ",.01)
 ;;16590-0319-82
 ;;9002226.02101,"1798,16590-0319-82 ",.02)
 ;;16590-0319-82
 ;;9002226.02101,"1798,16729-0030-01 ",.01)
 ;;16729-0030-01
 ;;9002226.02101,"1798,16729-0030-01 ",.02)
 ;;16729-0030-01
 ;;9002226.02101,"1798,16729-0030-16 ",.01)
 ;;16729-0030-16
 ;;9002226.02101,"1798,16729-0030-16 ",.02)
 ;;16729-0030-16
 ;;9002226.02101,"1798,16729-0031-01 ",.01)
 ;;16729-0031-01
 ;;9002226.02101,"1798,16729-0031-01 ",.02)
 ;;16729-0031-01
 ;;9002226.02101,"1798,16729-0031-16 ",.01)
 ;;16729-0031-16
 ;;9002226.02101,"1798,16729-0031-16 ",.02)
 ;;16729-0031-16
 ;;9002226.02101,"1798,17856-0057-01 ",.01)
 ;;17856-0057-01
 ;;9002226.02101,"1798,17856-0057-01 ",.02)
 ;;17856-0057-01
 ;;9002226.02101,"1798,17856-0057-30 ",.01)
 ;;17856-0057-30
 ;;9002226.02101,"1798,17856-0057-30 ",.02)
 ;;17856-0057-30
 ;;9002226.02101,"1798,21695-0678-30 ",.01)
 ;;21695-0678-30
 ;;9002226.02101,"1798,21695-0678-30 ",.02)
 ;;21695-0678-30
 ;;9002226.02101,"1798,21695-0879-60 ",.01)
 ;;21695-0879-60
 ;;9002226.02101,"1798,21695-0879-60 ",.02)
 ;;21695-0879-60
 ;;9002226.02101,"1798,21695-0879-90 ",.01)
 ;;21695-0879-90
 ;;9002226.02101,"1798,21695-0879-90 ",.02)
 ;;21695-0879-90
 ;;9002226.02101,"1798,21695-0880-60 ",.01)
 ;;21695-0880-60
 ;;9002226.02101,"1798,21695-0880-60 ",.02)
 ;;21695-0880-60
 ;;9002226.02101,"1798,23155-0194-01 ",.01)
 ;;23155-0194-01
 ;;9002226.02101,"1798,23155-0194-01 ",.02)
 ;;23155-0194-01
 ;;9002226.02101,"1798,23155-0195-01 ",.01)
 ;;23155-0195-01
 ;;9002226.02101,"1798,23155-0195-01 ",.02)
 ;;23155-0195-01
 ;;9002226.02101,"1798,24987-0240-55 ",.01)
 ;;24987-0240-55
 ;;9002226.02101,"1798,24987-0240-55 ",.02)
 ;;24987-0240-55
 ;;9002226.02101,"1798,24987-0242-55 ",.01)
 ;;24987-0242-55
 ;;9002226.02101,"1798,24987-0242-55 ",.02)
 ;;24987-0242-55
 ;;9002226.02101,"1798,24987-0242-56 ",.01)
 ;;24987-0242-56
 ;;9002226.02101,"1798,24987-0242-56 ",.02)
 ;;24987-0242-56
 ;;9002226.02101,"1798,24987-0242-57 ",.01)
 ;;24987-0242-57
 ;;9002226.02101,"1798,24987-0242-57 ",.02)
 ;;24987-0242-57
 ;;9002226.02101,"1798,24987-0242-75 ",.01)
 ;;24987-0242-75
 ;;9002226.02101,"1798,24987-0242-75 ",.02)
 ;;24987-0242-75
 ;;9002226.02101,"1798,24987-0242-76 ",.01)
 ;;24987-0242-76
 ;;9002226.02101,"1798,24987-0242-76 ",.02)
 ;;24987-0242-76
 ;;9002226.02101,"1798,24987-0245-55 ",.01)
 ;;24987-0245-55
 ;;9002226.02101,"1798,24987-0245-55 ",.02)
 ;;24987-0245-55
 ;;9002226.02101,"1798,24987-0249-55 ",.01)
 ;;24987-0249-55
 ;;9002226.02101,"1798,24987-0249-55 ",.02)
 ;;24987-0249-55
 ;;9002226.02101,"1798,24987-0249-56 ",.01)
 ;;24987-0249-56
 ;;9002226.02101,"1798,24987-0249-56 ",.02)
 ;;24987-0249-56
 ;;9002226.02101,"1798,24987-0249-57 ",.01)
 ;;24987-0249-57
 ;;9002226.02101,"1798,24987-0249-57 ",.02)
 ;;24987-0249-57
 ;;9002226.02101,"1798,24987-0249-75 ",.01)
 ;;24987-0249-75
 ;;9002226.02101,"1798,24987-0249-75 ",.02)
 ;;24987-0249-75
 ;;9002226.02101,"1798,24987-0249-76 ",.01)
 ;;24987-0249-76
 ;;9002226.02101,"1798,24987-0249-76 ",.02)
 ;;24987-0249-76
 ;;9002226.02101,"1798,24987-0260-10 ",.01)
 ;;24987-0260-10
 ;;9002226.02101,"1798,24987-0260-10 ",.02)
 ;;24987-0260-10
 ;;9002226.02101,"1798,24987-0262-10 ",.01)
 ;;24987-0262-10
 ;;9002226.02101,"1798,24987-0262-10 ",.02)
 ;;24987-0262-10
 ;;9002226.02101,"1798,33261-0753-30 ",.01)
 ;;33261-0753-30
 ;;9002226.02101,"1798,33261-0753-30 ",.02)
 ;;33261-0753-30
 ;;9002226.02101,"1798,33261-0753-60 ",.01)
 ;;33261-0753-60
 ;;9002226.02101,"1798,33261-0753-60 ",.02)
 ;;33261-0753-60
 ;;9002226.02101,"1798,33261-0753-90 ",.01)
 ;;33261-0753-90
 ;;9002226.02101,"1798,33261-0753-90 ",.02)
 ;;33261-0753-90
 ;;9002226.02101,"1798,33261-0832-00 ",.01)
 ;;33261-0832-00
 ;;9002226.02101,"1798,33261-0832-00 ",.02)
 ;;33261-0832-00
 ;;9002226.02101,"1798,33261-0832-30 ",.01)
 ;;33261-0832-30
 ;;9002226.02101,"1798,33261-0832-30 ",.02)
 ;;33261-0832-30
 ;;9002226.02101,"1798,33261-0832-60 ",.01)
 ;;33261-0832-60
 ;;9002226.02101,"1798,33261-0832-60 ",.02)
 ;;33261-0832-60
 ;;9002226.02101,"1798,33261-0832-90 ",.01)
 ;;33261-0832-90
 ;;9002226.02101,"1798,33261-0832-90 ",.02)
 ;;33261-0832-90
 ;;9002226.02101,"1798,33358-0108-30 ",.01)
 ;;33358-0108-30
 ;;9002226.02101,"1798,33358-0108-30 ",.02)
 ;;33358-0108-30
 ;;9002226.02101,"1798,33358-0261-00 ",.01)
 ;;33358-0261-00
 ;;9002226.02101,"1798,33358-0261-00 ",.02)
 ;;33358-0261-00
 ;;9002226.02101,"1798,33358-0261-20 ",.01)
 ;;33358-0261-20
 ;;9002226.02101,"1798,33358-0261-20 ",.02)
 ;;33358-0261-20
 ;;9002226.02101,"1798,33358-0261-30 ",.01)
 ;;33358-0261-30
 ;;9002226.02101,"1798,33358-0261-30 ",.02)
 ;;33358-0261-30
 ;;9002226.02101,"1798,33358-0261-90 ",.01)
 ;;33358-0261-90
 ;;9002226.02101,"1798,33358-0261-90 ",.02)
 ;;33358-0261-90
 ;;9002226.02101,"1798,35356-0161-30 ",.01)
 ;;35356-0161-30
 ;;9002226.02101,"1798,35356-0161-30 ",.02)
 ;;35356-0161-30
 ;;9002226.02101,"1798,35356-0161-90 ",.01)
 ;;35356-0161-90
 ;;9002226.02101,"1798,35356-0161-90 ",.02)
 ;;35356-0161-90
 ;;9002226.02101,"1798,42254-0351-90 ",.01)
 ;;42254-0351-90
 ;;9002226.02101,"1798,42254-0351-90 ",.02)
 ;;42254-0351-90
 ;;9002226.02101,"1798,42291-0234-01 ",.01)
 ;;42291-0234-01
 ;;9002226.02101,"1798,42291-0234-01 ",.02)
 ;;42291-0234-01
 ;;9002226.02101,"1798,42291-0235-01 ",.01)
 ;;42291-0235-01
 ;;9002226.02101,"1798,42291-0235-01 ",.02)
 ;;42291-0235-01
 ;;9002226.02101,"1798,42291-0310-90 ",.01)
 ;;42291-0310-90
 ;;9002226.02101,"1798,42291-0310-90 ",.02)
 ;;42291-0310-90
 ;;9002226.02101,"1798,42291-0311-90 ",.01)
 ;;42291-0311-90
 ;;9002226.02101,"1798,42291-0311-90 ",.02)
 ;;42291-0311-90
 ;;9002226.02101,"1798,42291-0324-01 ",.01)
 ;;42291-0324-01
 ;;9002226.02101,"1798,42291-0324-01 ",.02)
 ;;42291-0324-01
 ;;9002226.02101,"1798,42291-0325-01 ",.01)
 ;;42291-0325-01
 ;;9002226.02101,"1798,42291-0325-01 ",.02)
 ;;42291-0325-01
 ;;9002226.02101,"1798,42291-0326-01 ",.01)
 ;;42291-0326-01
 ;;9002226.02101,"1798,42291-0326-01 ",.02)
 ;;42291-0326-01
 ;;9002226.02101,"1798,42291-0327-01 ",.01)
 ;;42291-0327-01
 ;;9002226.02101,"1798,42291-0327-01 ",.02)
 ;;42291-0327-01
 ;;9002226.02101,"1798,42292-0002-01 ",.01)
 ;;42292-0002-01
 ;;9002226.02101,"1798,42292-0002-01 ",.02)
 ;;42292-0002-01
 ;;9002226.02101,"1798,42292-0002-20 ",.01)
 ;;42292-0002-20
 ;;9002226.02101,"1798,42292-0002-20 ",.02)
 ;;42292-0002-20
 ;;9002226.02101,"1798,42292-0003-01 ",.01)
 ;;42292-0003-01
 ;;9002226.02101,"1798,42292-0003-01 ",.02)
 ;;42292-0003-01
 ;;9002226.02101,"1798,42292-0003-20 ",.01)
 ;;42292-0003-20
 ;;9002226.02101,"1798,42292-0003-20 ",.02)
 ;;42292-0003-20
 ;;9002226.02101,"1798,42806-0048-01 ",.01)
 ;;42806-0048-01
 ;;9002226.02101,"1798,42806-0048-01 ",.02)
 ;;42806-0048-01
 ;;9002226.02101,"1798,42806-0049-01 ",.01)
 ;;42806-0049-01
 ;;9002226.02101,"1798,42806-0049-01 ",.02)
 ;;42806-0049-01
 ;;9002226.02101,"1798,43353-0498-60 ",.01)
 ;;43353-0498-60
 ;;9002226.02101,"1798,43353-0498-60 ",.02)
 ;;43353-0498-60
 ;;9002226.02101,"1798,43353-0511-60 ",.01)
 ;;43353-0511-60
 ;;9002226.02101,"1798,43353-0511-60 ",.02)
 ;;43353-0511-60
 ;;9002226.02101,"1798,43353-0724-30 ",.01)
 ;;43353-0724-30
 ;;9002226.02101,"1798,43353-0724-30 ",.02)
 ;;43353-0724-30
 ;;9002226.02101,"1798,43353-0724-60 ",.01)
 ;;43353-0724-60
 ;;9002226.02101,"1798,43353-0724-60 ",.02)
 ;;43353-0724-60
 ;;9002226.02101,"1798,43353-0724-70 ",.01)
 ;;43353-0724-70
 ;;9002226.02101,"1798,43353-0724-70 ",.02)
 ;;43353-0724-70
 ;;9002226.02101,"1798,43353-0725-30 ",.01)
 ;;43353-0725-30
 ;;9002226.02101,"1798,43353-0725-30 ",.02)
 ;;43353-0725-30
 ;;9002226.02101,"1798,43353-0725-60 ",.01)
 ;;43353-0725-60
 ;;9002226.02101,"1798,43353-0725-60 ",.02)
 ;;43353-0725-60
 ;;9002226.02101,"1798,43353-0835-30 ",.01)
 ;;43353-0835-30
 ;;9002226.02101,"1798,43353-0835-30 ",.02)
 ;;43353-0835-30
 ;;9002226.02101,"1798,43353-0835-60 ",.01)
 ;;43353-0835-60
 ;;9002226.02101,"1798,43353-0835-60 ",.02)
 ;;43353-0835-60
 ;;9002226.02101,"1798,43386-0440-24 ",.01)
 ;;43386-0440-24
 ;;9002226.02101,"1798,43386-0440-24 ",.02)
 ;;43386-0440-24
 ;;9002226.02101,"1798,47463-0208-30 ",.01)
 ;;47463-0208-30
 ;;9002226.02101,"1798,47463-0208-30 ",.02)
 ;;47463-0208-30
 ;;9002226.02101,"1798,47463-0209-30 ",.01)
 ;;47463-0209-30
 ;;9002226.02101,"1798,47463-0209-30 ",.02)
 ;;47463-0209-30
 ;;9002226.02101,"1798,49884-0494-01 ",.01)
 ;;49884-0494-01
 ;;9002226.02101,"1798,49884-0494-01 ",.02)
 ;;49884-0494-01
 ;;9002226.02101,"1798,49884-0494-10 ",.01)
 ;;49884-0494-10
 ;;9002226.02101,"1798,49884-0494-10 ",.02)
 ;;49884-0494-10
 ;;9002226.02101,"1798,49884-0514-01 ",.01)
 ;;49884-0514-01
 ;;9002226.02101,"1798,49884-0514-01 ",.02)
 ;;49884-0514-01
 ;;9002226.02101,"1798,49884-0514-10 ",.01)
 ;;49884-0514-10
