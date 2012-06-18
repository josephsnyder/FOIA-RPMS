BGP13W13 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1099,00904-7818-60 ",.01)
 ;;00904-7818-60
 ;;9002226.02101,"1099,00904-7818-60 ",.02)
 ;;00904-7818-60
 ;;9002226.02101,"1099,00904-7881-60 ",.01)
 ;;00904-7881-60
 ;;9002226.02101,"1099,00904-7881-60 ",.02)
 ;;00904-7881-60
 ;;9002226.02101,"1099,00904-7882-60 ",.01)
 ;;00904-7882-60
 ;;9002226.02101,"1099,00904-7882-60 ",.02)
 ;;00904-7882-60
 ;;9002226.02101,"1099,00904-7946-60 ",.01)
 ;;00904-7946-60
 ;;9002226.02101,"1099,00904-7946-60 ",.02)
 ;;00904-7946-60
 ;;9002226.02101,"1099,00904-7946-80 ",.01)
 ;;00904-7946-80
 ;;9002226.02101,"1099,00904-7946-80 ",.02)
 ;;00904-7946-80
 ;;9002226.02101,"1099,00904-7947-60 ",.01)
 ;;00904-7947-60
 ;;9002226.02101,"1099,00904-7947-60 ",.02)
 ;;00904-7947-60
 ;;9002226.02101,"1099,00904-7947-80 ",.01)
 ;;00904-7947-80
 ;;9002226.02101,"1099,00904-7947-80 ",.02)
 ;;00904-7947-80
 ;;9002226.02101,"1099,10702-0013-01 ",.01)
 ;;10702-0013-01
 ;;9002226.02101,"1099,10702-0013-01 ",.02)
 ;;10702-0013-01
 ;;9002226.02101,"1099,10702-0014-01 ",.01)
 ;;10702-0014-01
 ;;9002226.02101,"1099,10702-0014-01 ",.02)
 ;;10702-0014-01
 ;;9002226.02101,"1099,12280-0049-00 ",.01)
 ;;12280-0049-00
 ;;9002226.02101,"1099,12280-0049-00 ",.02)
 ;;12280-0049-00
 ;;9002226.02101,"1099,12280-0050-00 ",.01)
 ;;12280-0050-00
 ;;9002226.02101,"1099,12280-0050-00 ",.02)
 ;;12280-0050-00
 ;;9002226.02101,"1099,12280-0050-15 ",.01)
 ;;12280-0050-15
 ;;9002226.02101,"1099,12280-0050-15 ",.02)
 ;;12280-0050-15
 ;;9002226.02101,"1099,12280-0050-30 ",.01)
 ;;12280-0050-30
 ;;9002226.02101,"1099,12280-0050-30 ",.02)
 ;;12280-0050-30
 ;;9002226.02101,"1099,12280-0145-00 ",.01)
 ;;12280-0145-00
 ;;9002226.02101,"1099,12280-0145-00 ",.02)
 ;;12280-0145-00
 ;;9002226.02101,"1099,12280-0172-00 ",.01)
 ;;12280-0172-00
 ;;9002226.02101,"1099,12280-0172-00 ",.02)
 ;;12280-0172-00
 ;;9002226.02101,"1099,12280-0172-30 ",.01)
 ;;12280-0172-30
 ;;9002226.02101,"1099,12280-0172-30 ",.02)
 ;;12280-0172-30
 ;;9002226.02101,"1099,12280-0200-00 ",.01)
 ;;12280-0200-00
 ;;9002226.02101,"1099,12280-0200-00 ",.02)
 ;;12280-0200-00
 ;;9002226.02101,"1099,12280-0303-15 ",.01)
 ;;12280-0303-15
 ;;9002226.02101,"1099,12280-0303-15 ",.02)
 ;;12280-0303-15
 ;;9002226.02101,"1099,12280-0303-30 ",.01)
 ;;12280-0303-30
 ;;9002226.02101,"1099,12280-0303-30 ",.02)
 ;;12280-0303-30
 ;;9002226.02101,"1099,12280-0376-00 ",.01)
 ;;12280-0376-00
 ;;9002226.02101,"1099,12280-0376-00 ",.02)
 ;;12280-0376-00
 ;;9002226.02101,"1099,12280-0376-30 ",.01)
 ;;12280-0376-30
 ;;9002226.02101,"1099,12280-0376-30 ",.02)
 ;;12280-0376-30
 ;;9002226.02101,"1099,12280-0377-00 ",.01)
 ;;12280-0377-00
 ;;9002226.02101,"1099,12280-0377-00 ",.02)
 ;;12280-0377-00
 ;;9002226.02101,"1099,12280-0377-30 ",.01)
 ;;12280-0377-30
 ;;9002226.02101,"1099,12280-0377-30 ",.02)
 ;;12280-0377-30
 ;;9002226.02101,"1099,12280-0403-30 ",.01)
 ;;12280-0403-30
 ;;9002226.02101,"1099,12280-0403-30 ",.02)
 ;;12280-0403-30
 ;;9002226.02101,"1099,12280-0404-30 ",.01)
 ;;12280-0404-30
 ;;9002226.02101,"1099,12280-0404-30 ",.02)
 ;;12280-0404-30
 ;;9002226.02101,"1099,12280-0405-30 ",.01)
 ;;12280-0405-30
 ;;9002226.02101,"1099,12280-0405-30 ",.02)
 ;;12280-0405-30
 ;;9002226.02101,"1099,12280-0406-30 ",.01)
 ;;12280-0406-30
 ;;9002226.02101,"1099,12280-0406-30 ",.02)
 ;;12280-0406-30
 ;;9002226.02101,"1099,13411-0169-01 ",.01)
 ;;13411-0169-01
 ;;9002226.02101,"1099,13411-0169-01 ",.02)
 ;;13411-0169-01
 ;;9002226.02101,"1099,13411-0169-03 ",.01)
 ;;13411-0169-03
 ;;9002226.02101,"1099,13411-0169-03 ",.02)
 ;;13411-0169-03
 ;;9002226.02101,"1099,13411-0169-06 ",.01)
 ;;13411-0169-06
 ;;9002226.02101,"1099,13411-0169-06 ",.02)
 ;;13411-0169-06
 ;;9002226.02101,"1099,13411-0169-09 ",.01)
 ;;13411-0169-09
 ;;9002226.02101,"1099,13411-0169-09 ",.02)
 ;;13411-0169-09
 ;;9002226.02101,"1099,13411-0169-10 ",.01)
 ;;13411-0169-10
 ;;9002226.02101,"1099,13411-0169-10 ",.02)
 ;;13411-0169-10
 ;;9002226.02101,"1099,13411-0176-01 ",.01)
 ;;13411-0176-01
 ;;9002226.02101,"1099,13411-0176-01 ",.02)
 ;;13411-0176-01
 ;;9002226.02101,"1099,13411-0176-03 ",.01)
 ;;13411-0176-03
 ;;9002226.02101,"1099,13411-0176-03 ",.02)
 ;;13411-0176-03
 ;;9002226.02101,"1099,13411-0176-06 ",.01)
 ;;13411-0176-06
 ;;9002226.02101,"1099,13411-0176-06 ",.02)
 ;;13411-0176-06
 ;;9002226.02101,"1099,13411-0176-09 ",.01)
 ;;13411-0176-09
 ;;9002226.02101,"1099,13411-0176-09 ",.02)
 ;;13411-0176-09
 ;;9002226.02101,"1099,13411-0176-10 ",.01)
 ;;13411-0176-10
 ;;9002226.02101,"1099,13411-0176-10 ",.02)
 ;;13411-0176-10
 ;;9002226.02101,"1099,15330-0025-01 ",.01)
 ;;15330-0025-01
 ;;9002226.02101,"1099,15330-0025-01 ",.02)
 ;;15330-0025-01
 ;;9002226.02101,"1099,15330-0025-10 ",.01)
 ;;15330-0025-10
 ;;9002226.02101,"1099,15330-0025-10 ",.02)
 ;;15330-0025-10
 ;;9002226.02101,"1099,15330-0028-01 ",.01)
 ;;15330-0028-01
 ;;9002226.02101,"1099,15330-0028-01 ",.02)
 ;;15330-0028-01
 ;;9002226.02101,"1099,15330-0028-10 ",.01)
 ;;15330-0028-10
 ;;9002226.02101,"1099,15330-0028-10 ",.02)
 ;;15330-0028-10
 ;;9002226.02101,"1099,15330-0029-01 ",.01)
 ;;15330-0029-01
 ;;9002226.02101,"1099,15330-0029-01 ",.02)
 ;;15330-0029-01
 ;;9002226.02101,"1099,15330-0029-10 ",.01)
 ;;15330-0029-10
 ;;9002226.02101,"1099,15330-0029-10 ",.02)
 ;;15330-0029-10
 ;;9002226.02101,"1099,16571-0430-11 ",.01)
 ;;16571-0430-11
 ;;9002226.02101,"1099,16571-0430-11 ",.02)
 ;;16571-0430-11
 ;;9002226.02101,"1099,16571-0431-11 ",.01)
 ;;16571-0431-11
 ;;9002226.02101,"1099,16571-0431-11 ",.02)
 ;;16571-0431-11
 ;;9002226.02101,"1099,16571-0441-11 ",.01)
 ;;16571-0441-11
 ;;9002226.02101,"1099,16571-0441-11 ",.02)
 ;;16571-0441-11
 ;;9002226.02101,"1099,16590-0132-30 ",.01)
 ;;16590-0132-30
 ;;9002226.02101,"1099,16590-0132-30 ",.02)
 ;;16590-0132-30
 ;;9002226.02101,"1099,16590-0132-60 ",.01)
 ;;16590-0132-60
 ;;9002226.02101,"1099,16590-0132-60 ",.02)
 ;;16590-0132-60
 ;;9002226.02101,"1099,16590-0133-30 ",.01)
 ;;16590-0133-30
 ;;9002226.02101,"1099,16590-0133-30 ",.02)
 ;;16590-0133-30
 ;;9002226.02101,"1099,16590-0133-60 ",.01)
 ;;16590-0133-60
 ;;9002226.02101,"1099,16590-0133-60 ",.02)
 ;;16590-0133-60
 ;;9002226.02101,"1099,16590-0256-30 ",.01)
 ;;16590-0256-30
 ;;9002226.02101,"1099,16590-0256-30 ",.02)
 ;;16590-0256-30
 ;;9002226.02101,"1099,16590-0256-60 ",.01)
 ;;16590-0256-60
 ;;9002226.02101,"1099,16590-0256-60 ",.02)
 ;;16590-0256-60
 ;;9002226.02101,"1099,16590-0256-90 ",.01)
 ;;16590-0256-90
 ;;9002226.02101,"1099,16590-0256-90 ",.02)
 ;;16590-0256-90
 ;;9002226.02101,"1099,16590-0317-15 ",.01)
 ;;16590-0317-15
 ;;9002226.02101,"1099,16590-0317-15 ",.02)
 ;;16590-0317-15
 ;;9002226.02101,"1099,16590-0317-30 ",.01)
 ;;16590-0317-30
 ;;9002226.02101,"1099,16590-0317-30 ",.02)
 ;;16590-0317-30
 ;;9002226.02101,"1099,16590-0317-60 ",.01)
 ;;16590-0317-60
 ;;9002226.02101,"1099,16590-0317-60 ",.02)
 ;;16590-0317-60
 ;;9002226.02101,"1099,16590-0317-72 ",.01)
 ;;16590-0317-72
 ;;9002226.02101,"1099,16590-0317-72 ",.02)
 ;;16590-0317-72
 ;;9002226.02101,"1099,16590-0317-90 ",.01)
 ;;16590-0317-90
 ;;9002226.02101,"1099,16590-0317-90 ",.02)
 ;;16590-0317-90
 ;;9002226.02101,"1099,16590-0328-30 ",.01)
 ;;16590-0328-30
 ;;9002226.02101,"1099,16590-0328-30 ",.02)
 ;;16590-0328-30
 ;;9002226.02101,"1099,16590-0428-30 ",.01)
 ;;16590-0428-30
 ;;9002226.02101,"1099,16590-0428-30 ",.02)
 ;;16590-0428-30
 ;;9002226.02101,"1099,16590-0428-60 ",.01)
 ;;16590-0428-60
 ;;9002226.02101,"1099,16590-0428-60 ",.02)
 ;;16590-0428-60
 ;;9002226.02101,"1099,16590-0428-72 ",.01)
 ;;16590-0428-72
 ;;9002226.02101,"1099,16590-0428-72 ",.02)
 ;;16590-0428-72
 ;;9002226.02101,"1099,16590-0428-90 ",.01)
 ;;16590-0428-90
 ;;9002226.02101,"1099,16590-0428-90 ",.02)
 ;;16590-0428-90
 ;;9002226.02101,"1099,16590-0462-30 ",.01)
 ;;16590-0462-30
 ;;9002226.02101,"1099,16590-0462-30 ",.02)
 ;;16590-0462-30
 ;;9002226.02101,"1099,16590-0533-30 ",.01)
 ;;16590-0533-30
 ;;9002226.02101,"1099,16590-0533-30 ",.02)
 ;;16590-0533-30
 ;;9002226.02101,"1099,16590-0533-60 ",.01)
 ;;16590-0533-60
 ;;9002226.02101,"1099,16590-0533-60 ",.02)
 ;;16590-0533-60
 ;;9002226.02101,"1099,16590-0533-72 ",.01)
 ;;16590-0533-72
 ;;9002226.02101,"1099,16590-0533-72 ",.02)
 ;;16590-0533-72
 ;;9002226.02101,"1099,16590-0533-90 ",.01)
 ;;16590-0533-90
 ;;9002226.02101,"1099,16590-0533-90 ",.02)
 ;;16590-0533-90
 ;;9002226.02101,"1099,16590-0808-45 ",.01)
 ;;16590-0808-45
 ;;9002226.02101,"1099,16590-0808-45 ",.02)
 ;;16590-0808-45
 ;;9002226.02101,"1099,16590-0808-60 ",.01)
 ;;16590-0808-60
 ;;9002226.02101,"1099,16590-0808-60 ",.02)
 ;;16590-0808-60
 ;;9002226.02101,"1099,16590-0808-90 ",.01)
 ;;16590-0808-90
 ;;9002226.02101,"1099,16590-0808-90 ",.02)
 ;;16590-0808-90
 ;;9002226.02101,"1099,16590-0851-28 ",.01)
 ;;16590-0851-28
 ;;9002226.02101,"1099,16590-0851-28 ",.02)
 ;;16590-0851-28
 ;;9002226.02101,"1099,16590-0900-30 ",.01)
 ;;16590-0900-30
 ;;9002226.02101,"1099,16590-0900-30 ",.02)
 ;;16590-0900-30
 ;;9002226.02101,"1099,16590-0900-60 ",.01)
 ;;16590-0900-60
 ;;9002226.02101,"1099,16590-0900-60 ",.02)
 ;;16590-0900-60
 ;;9002226.02101,"1099,16590-0917-30 ",.01)
 ;;16590-0917-30
 ;;9002226.02101,"1099,16590-0917-30 ",.02)
 ;;16590-0917-30
 ;;9002226.02101,"1099,16590-0917-60 ",.01)
 ;;16590-0917-60
 ;;9002226.02101,"1099,16590-0917-60 ",.02)
 ;;16590-0917-60
 ;;9002226.02101,"1099,16714-0021-04 ",.01)
 ;;16714-0021-04
 ;;9002226.02101,"1099,16714-0021-04 ",.02)
 ;;16714-0021-04
 ;;9002226.02101,"1099,16714-0021-06 ",.01)
 ;;16714-0021-06
 ;;9002226.02101,"1099,16714-0021-06 ",.02)
 ;;16714-0021-06
 ;;9002226.02101,"1099,16714-0022-04 ",.01)
 ;;16714-0022-04
 ;;9002226.02101,"1099,16714-0022-04 ",.02)
 ;;16714-0022-04
 ;;9002226.02101,"1099,16714-0022-06 ",.01)
 ;;16714-0022-06
 ;;9002226.02101,"1099,16714-0022-06 ",.02)
 ;;16714-0022-06
 ;;9002226.02101,"1099,16714-0023-04 ",.01)
 ;;16714-0023-04
 ;;9002226.02101,"1099,16714-0023-04 ",.02)
 ;;16714-0023-04
 ;;9002226.02101,"1099,16714-0023-06 ",.01)
 ;;16714-0023-06
 ;;9002226.02101,"1099,16714-0023-06 ",.02)
 ;;16714-0023-06
 ;;9002226.02101,"1099,16714-0024-04 ",.01)
 ;;16714-0024-04
 ;;9002226.02101,"1099,16714-0024-04 ",.02)
 ;;16714-0024-04
 ;;9002226.02101,"1099,16714-0025-04 ",.01)
 ;;16714-0025-04
 ;;9002226.02101,"1099,16714-0025-04 ",.02)
 ;;16714-0025-04
 ;;9002226.02101,"1099,16714-0025-05 ",.01)
 ;;16714-0025-05
 ;;9002226.02101,"1099,16714-0025-05 ",.02)
 ;;16714-0025-05
 ;;9002226.02101,"1099,16714-0031-04 ",.01)
 ;;16714-0031-04
 ;;9002226.02101,"1099,16714-0031-04 ",.02)
 ;;16714-0031-04
 ;;9002226.02101,"1099,16714-0031-06 ",.01)
 ;;16714-0031-06
 ;;9002226.02101,"1099,16714-0031-06 ",.02)
 ;;16714-0031-06
 ;;9002226.02101,"1099,16714-0032-04 ",.01)
 ;;16714-0032-04
 ;;9002226.02101,"1099,16714-0032-04 ",.02)
 ;;16714-0032-04
 ;;9002226.02101,"1099,16714-0032-06 ",.01)
 ;;16714-0032-06
 ;;9002226.02101,"1099,16714-0032-06 ",.02)
 ;;16714-0032-06
 ;;9002226.02101,"1099,16714-0033-04 ",.01)
 ;;16714-0033-04
 ;;9002226.02101,"1099,16714-0033-04 ",.02)
 ;;16714-0033-04
 ;;9002226.02101,"1099,16714-0033-06 ",.01)
 ;;16714-0033-06
 ;;9002226.02101,"1099,16714-0033-06 ",.02)
 ;;16714-0033-06
 ;;9002226.02101,"1099,17236-0686-30 ",.01)
 ;;17236-0686-30
 ;;9002226.02101,"1099,17236-0686-30 ",.02)
 ;;17236-0686-30
 ;;9002226.02101,"1099,21695-0291-30 ",.01)
 ;;21695-0291-30
 ;;9002226.02101,"1099,21695-0291-30 ",.02)
 ;;21695-0291-30
 ;;9002226.02101,"1099,21695-0298-30 ",.01)
 ;;21695-0298-30
 ;;9002226.02101,"1099,21695-0298-30 ",.02)
 ;;21695-0298-30
 ;;9002226.02101,"1099,21695-0298-60 ",.01)
 ;;21695-0298-60
 ;;9002226.02101,"1099,21695-0298-60 ",.02)
 ;;21695-0298-60
 ;;9002226.02101,"1099,21695-0298-78 ",.01)
 ;;21695-0298-78
 ;;9002226.02101,"1099,21695-0298-78 ",.02)
 ;;21695-0298-78
 ;;9002226.02101,"1099,21695-0298-90 ",.01)
 ;;21695-0298-90
 ;;9002226.02101,"1099,21695-0298-90 ",.02)
 ;;21695-0298-90
 ;;9002226.02101,"1099,21695-0299-00 ",.01)
 ;;21695-0299-00
 ;;9002226.02101,"1099,21695-0299-00 ",.02)
 ;;21695-0299-00
 ;;9002226.02101,"1099,21695-0299-30 ",.01)
 ;;21695-0299-30
 ;;9002226.02101,"1099,21695-0299-30 ",.02)
 ;;21695-0299-30
 ;;9002226.02101,"1099,21695-0299-60 ",.01)
 ;;21695-0299-60
 ;;9002226.02101,"1099,21695-0299-60 ",.02)
 ;;21695-0299-60
 ;;9002226.02101,"1099,21695-0299-90 ",.01)
 ;;21695-0299-90
 ;;9002226.02101,"1099,21695-0299-90 ",.02)
 ;;21695-0299-90
 ;;9002226.02101,"1099,21695-0322-30 ",.01)
 ;;21695-0322-30
 ;;9002226.02101,"1099,21695-0322-30 ",.02)
 ;;21695-0322-30
