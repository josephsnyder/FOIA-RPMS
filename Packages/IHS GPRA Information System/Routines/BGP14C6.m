BGP14C6 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1105,00078-0234-15 ",.01)
 ;;00078-0234-15
 ;;9002226.02101,"1105,00078-0234-15 ",.02)
 ;;00078-0234-15
 ;;9002226.02101,"1105,00078-0354-05 ",.01)
 ;;00078-0354-05
 ;;9002226.02101,"1105,00078-0354-05 ",.02)
 ;;00078-0354-05
 ;;9002226.02101,"1105,00078-0354-15 ",.01)
 ;;00078-0354-15
 ;;9002226.02101,"1105,00078-0354-15 ",.02)
 ;;00078-0354-15
 ;;9002226.02101,"1105,00093-0576-06 ",.01)
 ;;00093-0576-06
 ;;9002226.02101,"1105,00093-0576-06 ",.02)
 ;;00093-0576-06
 ;;9002226.02101,"1105,00093-0576-10 ",.01)
 ;;00093-0576-10
 ;;9002226.02101,"1105,00093-0576-10 ",.02)
 ;;00093-0576-10
 ;;9002226.02101,"1105,00093-0576-19 ",.01)
 ;;00093-0576-19
 ;;9002226.02101,"1105,00093-0576-19 ",.02)
 ;;00093-0576-19
 ;;9002226.02101,"1105,00093-0576-93 ",.01)
 ;;00093-0576-93
 ;;9002226.02101,"1105,00093-0576-93 ",.02)
 ;;00093-0576-93
 ;;9002226.02101,"1105,00093-0771-10 ",.01)
 ;;00093-0771-10
 ;;9002226.02101,"1105,00093-0771-10 ",.02)
 ;;00093-0771-10
 ;;9002226.02101,"1105,00093-0771-98 ",.01)
 ;;00093-0771-98
 ;;9002226.02101,"1105,00093-0771-98 ",.02)
 ;;00093-0771-98
 ;;9002226.02101,"1105,00093-0926-06 ",.01)
 ;;00093-0926-06
 ;;9002226.02101,"1105,00093-0926-06 ",.02)
 ;;00093-0926-06
 ;;9002226.02101,"1105,00093-0926-10 ",.01)
 ;;00093-0926-10
 ;;9002226.02101,"1105,00093-0926-10 ",.02)
 ;;00093-0926-10
 ;;9002226.02101,"1105,00093-0926-19 ",.01)
 ;;00093-0926-19
 ;;9002226.02101,"1105,00093-0926-19 ",.02)
 ;;00093-0926-19
 ;;9002226.02101,"1105,00093-0926-93 ",.01)
 ;;00093-0926-93
 ;;9002226.02101,"1105,00093-0926-93 ",.02)
 ;;00093-0926-93
 ;;9002226.02101,"1105,00093-0928-06 ",.01)
 ;;00093-0928-06
 ;;9002226.02101,"1105,00093-0928-06 ",.02)
 ;;00093-0928-06
 ;;9002226.02101,"1105,00093-0928-10 ",.01)
 ;;00093-0928-10
 ;;9002226.02101,"1105,00093-0928-10 ",.02)
 ;;00093-0928-10
 ;;9002226.02101,"1105,00093-0928-19 ",.01)
 ;;00093-0928-19
 ;;9002226.02101,"1105,00093-0928-19 ",.02)
 ;;00093-0928-19
 ;;9002226.02101,"1105,00093-0928-93 ",.01)
 ;;00093-0928-93
 ;;9002226.02101,"1105,00093-0928-93 ",.02)
 ;;00093-0928-93
 ;;9002226.02101,"1105,00093-7152-19 ",.01)
 ;;00093-7152-19
 ;;9002226.02101,"1105,00093-7152-19 ",.02)
 ;;00093-7152-19
 ;;9002226.02101,"1105,00093-7152-56 ",.01)
 ;;00093-7152-56
 ;;9002226.02101,"1105,00093-7152-56 ",.02)
 ;;00093-7152-56
 ;;9002226.02101,"1105,00093-7152-93 ",.01)
 ;;00093-7152-93
 ;;9002226.02101,"1105,00093-7152-93 ",.02)
 ;;00093-7152-93
 ;;9002226.02101,"1105,00093-7152-98 ",.01)
 ;;00093-7152-98
 ;;9002226.02101,"1105,00093-7152-98 ",.02)
 ;;00093-7152-98
 ;;9002226.02101,"1105,00093-7153-10 ",.01)
 ;;00093-7153-10
 ;;9002226.02101,"1105,00093-7153-10 ",.02)
 ;;00093-7153-10
 ;;9002226.02101,"1105,00093-7153-19 ",.01)
 ;;00093-7153-19
 ;;9002226.02101,"1105,00093-7153-19 ",.02)
 ;;00093-7153-19
 ;;9002226.02101,"1105,00093-7153-56 ",.01)
 ;;00093-7153-56
 ;;9002226.02101,"1105,00093-7153-56 ",.02)
 ;;00093-7153-56
 ;;9002226.02101,"1105,00093-7153-93 ",.01)
 ;;00093-7153-93
 ;;9002226.02101,"1105,00093-7153-93 ",.02)
 ;;00093-7153-93
 ;;9002226.02101,"1105,00093-7153-98 ",.01)
 ;;00093-7153-98
 ;;9002226.02101,"1105,00093-7153-98 ",.02)
 ;;00093-7153-98
 ;;9002226.02101,"1105,00093-7154-10 ",.01)
 ;;00093-7154-10
 ;;9002226.02101,"1105,00093-7154-10 ",.02)
 ;;00093-7154-10
 ;;9002226.02101,"1105,00093-7154-19 ",.01)
 ;;00093-7154-19
 ;;9002226.02101,"1105,00093-7154-19 ",.02)
 ;;00093-7154-19
 ;;9002226.02101,"1105,00093-7154-56 ",.01)
 ;;00093-7154-56
 ;;9002226.02101,"1105,00093-7154-56 ",.02)
 ;;00093-7154-56
 ;;9002226.02101,"1105,00093-7154-93 ",.01)
 ;;00093-7154-93
 ;;9002226.02101,"1105,00093-7154-93 ",.02)
 ;;00093-7154-93
 ;;9002226.02101,"1105,00093-7154-98 ",.01)
 ;;00093-7154-98
 ;;9002226.02101,"1105,00093-7154-98 ",.02)
 ;;00093-7154-98
 ;;9002226.02101,"1105,00093-7155-10 ",.01)
 ;;00093-7155-10
 ;;9002226.02101,"1105,00093-7155-10 ",.02)
 ;;00093-7155-10
 ;;9002226.02101,"1105,00093-7155-19 ",.01)
 ;;00093-7155-19
 ;;9002226.02101,"1105,00093-7155-19 ",.02)
 ;;00093-7155-19
 ;;9002226.02101,"1105,00093-7155-56 ",.01)
 ;;00093-7155-56
 ;;9002226.02101,"1105,00093-7155-56 ",.02)
 ;;00093-7155-56
 ;;9002226.02101,"1105,00093-7155-93 ",.01)
 ;;00093-7155-93
 ;;9002226.02101,"1105,00093-7155-93 ",.02)
 ;;00093-7155-93
 ;;9002226.02101,"1105,00093-7155-98 ",.01)
 ;;00093-7155-98
 ;;9002226.02101,"1105,00093-7155-98 ",.02)
 ;;00093-7155-98
 ;;9002226.02101,"1105,00093-7156-10 ",.01)
 ;;00093-7156-10
 ;;9002226.02101,"1105,00093-7156-10 ",.02)
 ;;00093-7156-10
 ;;9002226.02101,"1105,00093-7156-56 ",.01)
 ;;00093-7156-56
 ;;9002226.02101,"1105,00093-7156-56 ",.02)
 ;;00093-7156-56
 ;;9002226.02101,"1105,00093-7156-98 ",.01)
 ;;00093-7156-98
 ;;9002226.02101,"1105,00093-7156-98 ",.02)
 ;;00093-7156-98
 ;;9002226.02101,"1105,00093-7201-10 ",.01)
 ;;00093-7201-10
 ;;9002226.02101,"1105,00093-7201-10 ",.02)
 ;;00093-7201-10
 ;;9002226.02101,"1105,00093-7201-98 ",.01)
 ;;00093-7201-98
 ;;9002226.02101,"1105,00093-7201-98 ",.02)
 ;;00093-7201-98
 ;;9002226.02101,"1105,00093-7202-10 ",.01)
 ;;00093-7202-10
 ;;9002226.02101,"1105,00093-7202-10 ",.02)
 ;;00093-7202-10
 ;;9002226.02101,"1105,00093-7202-98 ",.01)
 ;;00093-7202-98
 ;;9002226.02101,"1105,00093-7202-98 ",.02)
 ;;00093-7202-98
 ;;9002226.02101,"1105,00093-7270-10 ",.01)
 ;;00093-7270-10
 ;;9002226.02101,"1105,00093-7270-10 ",.02)
 ;;00093-7270-10
 ;;9002226.02101,"1105,00093-7270-98 ",.01)
 ;;00093-7270-98
 ;;9002226.02101,"1105,00093-7270-98 ",.02)
 ;;00093-7270-98
 ;;9002226.02101,"1105,00185-0070-01 ",.01)
 ;;00185-0070-01
 ;;9002226.02101,"1105,00185-0070-01 ",.02)
 ;;00185-0070-01
 ;;9002226.02101,"1105,00185-0070-05 ",.01)
 ;;00185-0070-05
 ;;9002226.02101,"1105,00185-0070-05 ",.02)
 ;;00185-0070-05
 ;;9002226.02101,"1105,00185-0070-10 ",.01)
 ;;00185-0070-10
 ;;9002226.02101,"1105,00185-0070-10 ",.02)
 ;;00185-0070-10
 ;;9002226.02101,"1105,00185-0070-60 ",.01)
 ;;00185-0070-60
 ;;9002226.02101,"1105,00185-0070-60 ",.02)
 ;;00185-0070-60
 ;;9002226.02101,"1105,00185-0072-01 ",.01)
 ;;00185-0072-01
 ;;9002226.02101,"1105,00185-0072-01 ",.02)
 ;;00185-0072-01
 ;;9002226.02101,"1105,00185-0072-10 ",.01)
 ;;00185-0072-10
 ;;9002226.02101,"1105,00185-0072-10 ",.02)
 ;;00185-0072-10
 ;;9002226.02101,"1105,00185-0072-60 ",.01)
 ;;00185-0072-60
 ;;9002226.02101,"1105,00185-0072-60 ",.02)
 ;;00185-0072-60
 ;;9002226.02101,"1105,00185-0074-01 ",.01)
 ;;00185-0074-01
 ;;9002226.02101,"1105,00185-0074-01 ",.02)
 ;;00185-0074-01
 ;;9002226.02101,"1105,00185-0074-10 ",.01)
 ;;00185-0074-10
 ;;9002226.02101,"1105,00185-0074-10 ",.02)
 ;;00185-0074-10
 ;;9002226.02101,"1105,00185-0074-60 ",.01)
 ;;00185-0074-60
 ;;9002226.02101,"1105,00185-0074-60 ",.02)
 ;;00185-0074-60
 ;;9002226.02101,"1105,00228-2633-06 ",.01)
 ;;00228-2633-06
 ;;9002226.02101,"1105,00228-2633-06 ",.02)
 ;;00228-2633-06
 ;;9002226.02101,"1105,00228-2633-50 ",.01)
 ;;00228-2633-50
 ;;9002226.02101,"1105,00228-2633-50 ",.02)
 ;;00228-2633-50
 ;;9002226.02101,"1105,00228-2634-06 ",.01)
 ;;00228-2634-06
 ;;9002226.02101,"1105,00228-2634-06 ",.02)
 ;;00228-2634-06
 ;;9002226.02101,"1105,00228-2634-50 ",.01)
 ;;00228-2634-50
 ;;9002226.02101,"1105,00228-2634-50 ",.02)
 ;;00228-2634-50
 ;;9002226.02101,"1105,00228-2635-06 ",.01)
 ;;00228-2635-06
 ;;9002226.02101,"1105,00228-2635-06 ",.02)
 ;;00228-2635-06
 ;;9002226.02101,"1105,00228-2635-50 ",.01)
 ;;00228-2635-50
 ;;9002226.02101,"1105,00228-2635-50 ",.02)
 ;;00228-2635-50
 ;;9002226.02101,"1105,00247-1129-30 ",.01)
 ;;00247-1129-30
 ;;9002226.02101,"1105,00247-1129-30 ",.02)
 ;;00247-1129-30
 ;;9002226.02101,"1105,00247-1129-60 ",.01)
 ;;00247-1129-60
 ;;9002226.02101,"1105,00247-1129-60 ",.02)
 ;;00247-1129-60
 ;;9002226.02101,"1105,00247-1130-30 ",.01)
 ;;00247-1130-30
 ;;9002226.02101,"1105,00247-1130-30 ",.02)
 ;;00247-1130-30
 ;;9002226.02101,"1105,00247-1130-60 ",.01)
 ;;00247-1130-60
 ;;9002226.02101,"1105,00247-1130-60 ",.02)
 ;;00247-1130-60
 ;;9002226.02101,"1105,00247-1139-30 ",.01)
 ;;00247-1139-30
 ;;9002226.02101,"1105,00247-1139-30 ",.02)
 ;;00247-1139-30
 ;;9002226.02101,"1105,00247-1139-60 ",.01)
 ;;00247-1139-60
 ;;9002226.02101,"1105,00247-1139-60 ",.02)
 ;;00247-1139-60
 ;;9002226.02101,"1105,00247-1140-30 ",.01)
 ;;00247-1140-30
 ;;9002226.02101,"1105,00247-1140-30 ",.02)
 ;;00247-1140-30
 ;;9002226.02101,"1105,00247-1140-60 ",.01)
 ;;00247-1140-60
 ;;9002226.02101,"1105,00247-1140-60 ",.02)
 ;;00247-1140-60
 ;;9002226.02101,"1105,00247-1152-30 ",.01)
 ;;00247-1152-30
 ;;9002226.02101,"1105,00247-1152-30 ",.02)
 ;;00247-1152-30
 ;;9002226.02101,"1105,00247-1152-60 ",.01)
 ;;00247-1152-60
 ;;9002226.02101,"1105,00247-1152-60 ",.02)
 ;;00247-1152-60
 ;;9002226.02101,"1105,00247-1153-30 ",.01)
 ;;00247-1153-30
 ;;9002226.02101,"1105,00247-1153-30 ",.02)
 ;;00247-1153-30
 ;;9002226.02101,"1105,00247-1153-60 ",.01)
 ;;00247-1153-60
 ;;9002226.02101,"1105,00247-1153-60 ",.02)
 ;;00247-1153-60
 ;;9002226.02101,"1105,00247-1276-30 ",.01)
 ;;00247-1276-30
 ;;9002226.02101,"1105,00247-1276-30 ",.02)
 ;;00247-1276-30
 ;;9002226.02101,"1105,00310-0751-39 ",.01)
 ;;00310-0751-39
 ;;9002226.02101,"1105,00310-0751-39 ",.02)
 ;;00310-0751-39
 ;;9002226.02101,"1105,00310-0751-90 ",.01)
 ;;00310-0751-90
 ;;9002226.02101,"1105,00310-0751-90 ",.02)
 ;;00310-0751-90
 ;;9002226.02101,"1105,00310-0752-39 ",.01)
 ;;00310-0752-39
 ;;9002226.02101,"1105,00310-0752-39 ",.02)
 ;;00310-0752-39
 ;;9002226.02101,"1105,00310-0752-90 ",.01)
 ;;00310-0752-90
 ;;9002226.02101,"1105,00310-0752-90 ",.02)
 ;;00310-0752-90
 ;;9002226.02101,"1105,00310-0754-30 ",.01)
 ;;00310-0754-30
 ;;9002226.02101,"1105,00310-0754-30 ",.02)
 ;;00310-0754-30
 ;;9002226.02101,"1105,00310-0755-90 ",.01)
 ;;00310-0755-90
 ;;9002226.02101,"1105,00310-0755-90 ",.02)
 ;;00310-0755-90
 ;;9002226.02101,"1105,00378-0552-77 ",.01)
 ;;00378-0552-77
 ;;9002226.02101,"1105,00378-0552-77 ",.02)
 ;;00378-0552-77
 ;;9002226.02101,"1105,00378-0553-77 ",.01)
 ;;00378-0553-77
 ;;9002226.02101,"1105,00378-0553-77 ",.02)
 ;;00378-0553-77
 ;;9002226.02101,"1105,00378-0554-77 ",.01)
 ;;00378-0554-77
 ;;9002226.02101,"1105,00378-0554-77 ",.02)
 ;;00378-0554-77
 ;;9002226.02101,"1105,00378-0557-77 ",.01)
 ;;00378-0557-77
 ;;9002226.02101,"1105,00378-0557-77 ",.02)
 ;;00378-0557-77
 ;;9002226.02101,"1105,00378-6510-91 ",.01)
 ;;00378-6510-91
 ;;9002226.02101,"1105,00378-6510-91 ",.02)
 ;;00378-6510-91
 ;;9002226.02101,"1105,00378-6520-05 ",.01)
 ;;00378-6520-05
 ;;9002226.02101,"1105,00378-6520-05 ",.02)
 ;;00378-6520-05
 ;;9002226.02101,"1105,00378-6520-91 ",.01)
 ;;00378-6520-91
 ;;9002226.02101,"1105,00378-6520-91 ",.02)
 ;;00378-6520-91
 ;;9002226.02101,"1105,00378-6540-05 ",.01)
 ;;00378-6540-05
 ;;9002226.02101,"1105,00378-6540-05 ",.02)
 ;;00378-6540-05
 ;;9002226.02101,"1105,00378-6540-91 ",.01)
 ;;00378-6540-91
 ;;9002226.02101,"1105,00378-6540-91 ",.02)
 ;;00378-6540-91
 ;;9002226.02101,"1105,00378-8210-10 ",.01)
 ;;00378-8210-10
 ;;9002226.02101,"1105,00378-8210-10 ",.02)
 ;;00378-8210-10
 ;;9002226.02101,"1105,00378-8210-77 ",.01)
 ;;00378-8210-77
 ;;9002226.02101,"1105,00378-8210-77 ",.02)
 ;;00378-8210-77
 ;;9002226.02101,"1105,00378-8220-10 ",.01)
 ;;00378-8220-10
 ;;9002226.02101,"1105,00378-8220-10 ",.02)
 ;;00378-8220-10
 ;;9002226.02101,"1105,00378-8220-77 ",.01)
 ;;00378-8220-77
 ;;9002226.02101,"1105,00378-8220-77 ",.02)
 ;;00378-8220-77
 ;;9002226.02101,"1105,00378-8240-10 ",.01)
 ;;00378-8240-10
 ;;9002226.02101,"1105,00378-8240-10 ",.02)
 ;;00378-8240-10
 ;;9002226.02101,"1105,00378-8240-77 ",.01)
 ;;00378-8240-77
 ;;9002226.02101,"1105,00378-8240-77 ",.02)
 ;;00378-8240-77
 ;;9002226.02101,"1105,00378-8280-05 ",.01)
 ;;00378-8280-05
 ;;9002226.02101,"1105,00378-8280-05 ",.02)
 ;;00378-8280-05
 ;;9002226.02101,"1105,00378-8280-77 ",.01)
 ;;00378-8280-77
 ;;9002226.02101,"1105,00378-8280-77 ",.02)
 ;;00378-8280-77
 ;;9002226.02101,"1105,00406-2065-03 ",.01)
 ;;00406-2065-03
 ;;9002226.02101,"1105,00406-2065-03 ",.02)
 ;;00406-2065-03
 ;;9002226.02101,"1105,00406-2065-05 ",.01)
 ;;00406-2065-05
 ;;9002226.02101,"1105,00406-2065-05 ",.02)
 ;;00406-2065-05
 ;;9002226.02101,"1105,00406-2065-10 ",.01)
 ;;00406-2065-10
 ;;9002226.02101,"1105,00406-2065-10 ",.02)
 ;;00406-2065-10
 ;;9002226.02101,"1105,00406-2065-60 ",.01)
 ;;00406-2065-60
 ;;9002226.02101,"1105,00406-2065-60 ",.02)
 ;;00406-2065-60
 ;;9002226.02101,"1105,00406-2065-90 ",.01)
 ;;00406-2065-90
 ;;9002226.02101,"1105,00406-2065-90 ",.02)
 ;;00406-2065-90
