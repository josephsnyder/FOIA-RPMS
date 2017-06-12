BGP62Y30 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,00247-0458-14 ",.02)
 ;;00247-0458-14
 ;;9002226.02101,"868,00247-0459-04 ",.01)
 ;;00247-0459-04
 ;;9002226.02101,"868,00247-0459-04 ",.02)
 ;;00247-0459-04
 ;;9002226.02101,"868,00247-0459-06 ",.01)
 ;;00247-0459-06
 ;;9002226.02101,"868,00247-0459-06 ",.02)
 ;;00247-0459-06
 ;;9002226.02101,"868,00247-0459-14 ",.01)
 ;;00247-0459-14
 ;;9002226.02101,"868,00247-0459-14 ",.02)
 ;;00247-0459-14
 ;;9002226.02101,"868,00247-0459-16 ",.01)
 ;;00247-0459-16
 ;;9002226.02101,"868,00247-0459-16 ",.02)
 ;;00247-0459-16
 ;;9002226.02101,"868,00247-0459-20 ",.01)
 ;;00247-0459-20
 ;;9002226.02101,"868,00247-0459-20 ",.02)
 ;;00247-0459-20
 ;;9002226.02101,"868,00247-0459-30 ",.01)
 ;;00247-0459-30
 ;;9002226.02101,"868,00247-0459-30 ",.02)
 ;;00247-0459-30
 ;;9002226.02101,"868,00247-0460-15 ",.01)
 ;;00247-0460-15
 ;;9002226.02101,"868,00247-0460-15 ",.02)
 ;;00247-0460-15
 ;;9002226.02101,"868,00247-0460-20 ",.01)
 ;;00247-0460-20
 ;;9002226.02101,"868,00247-0460-20 ",.02)
 ;;00247-0460-20
 ;;9002226.02101,"868,00247-0460-21 ",.01)
 ;;00247-0460-21
 ;;9002226.02101,"868,00247-0460-21 ",.02)
 ;;00247-0460-21
 ;;9002226.02101,"868,00247-0460-30 ",.01)
 ;;00247-0460-30
 ;;9002226.02101,"868,00247-0460-30 ",.02)
 ;;00247-0460-30
 ;;9002226.02101,"868,00247-0563-20 ",.01)
 ;;00247-0563-20
 ;;9002226.02101,"868,00247-0563-20 ",.02)
 ;;00247-0563-20
 ;;9002226.02101,"868,00247-0585-50 ",.01)
 ;;00247-0585-50
 ;;9002226.02101,"868,00247-0585-50 ",.02)
 ;;00247-0585-50
 ;;9002226.02101,"868,00247-0586-00 ",.01)
 ;;00247-0586-00
 ;;9002226.02101,"868,00247-0586-00 ",.02)
 ;;00247-0586-00
 ;;9002226.02101,"868,00247-0626-30 ",.01)
 ;;00247-0626-30
 ;;9002226.02101,"868,00247-0626-30 ",.02)
 ;;00247-0626-30
 ;;9002226.02101,"868,00247-0626-60 ",.01)
 ;;00247-0626-60
 ;;9002226.02101,"868,00247-0626-60 ",.02)
 ;;00247-0626-60
 ;;9002226.02101,"868,00247-0627-20 ",.01)
 ;;00247-0627-20
 ;;9002226.02101,"868,00247-0627-20 ",.02)
 ;;00247-0627-20
 ;;9002226.02101,"868,00247-0627-30 ",.01)
 ;;00247-0627-30
 ;;9002226.02101,"868,00247-0627-30 ",.02)
 ;;00247-0627-30
 ;;9002226.02101,"868,00247-0627-50 ",.01)
 ;;00247-0627-50
 ;;9002226.02101,"868,00247-0627-50 ",.02)
 ;;00247-0627-50
 ;;9002226.02101,"868,00247-0627-60 ",.01)
 ;;00247-0627-60
 ;;9002226.02101,"868,00247-0627-60 ",.02)
 ;;00247-0627-60
 ;;9002226.02101,"868,00247-0628-00 ",.01)
 ;;00247-0628-00
 ;;9002226.02101,"868,00247-0628-00 ",.02)
 ;;00247-0628-00
 ;;9002226.02101,"868,00247-0628-50 ",.01)
 ;;00247-0628-50
 ;;9002226.02101,"868,00247-0628-50 ",.02)
 ;;00247-0628-50
 ;;9002226.02101,"868,00247-0628-75 ",.01)
 ;;00247-0628-75
 ;;9002226.02101,"868,00247-0628-75 ",.02)
 ;;00247-0628-75
 ;;9002226.02101,"868,00247-0629-00 ",.01)
 ;;00247-0629-00
 ;;9002226.02101,"868,00247-0629-00 ",.02)
 ;;00247-0629-00
 ;;9002226.02101,"868,00247-0629-50 ",.01)
 ;;00247-0629-50
 ;;9002226.02101,"868,00247-0629-50 ",.02)
 ;;00247-0629-50
 ;;9002226.02101,"868,00247-0633-75 ",.01)
 ;;00247-0633-75
 ;;9002226.02101,"868,00247-0633-75 ",.02)
 ;;00247-0633-75
 ;;9002226.02101,"868,00247-0639-00 ",.01)
 ;;00247-0639-00
 ;;9002226.02101,"868,00247-0639-00 ",.02)
 ;;00247-0639-00
 ;;9002226.02101,"868,00247-0639-02 ",.01)
 ;;00247-0639-02
 ;;9002226.02101,"868,00247-0639-02 ",.02)
 ;;00247-0639-02
 ;;9002226.02101,"868,00247-0639-03 ",.01)
 ;;00247-0639-03
 ;;9002226.02101,"868,00247-0639-03 ",.02)
 ;;00247-0639-03
 ;;9002226.02101,"868,00247-0639-04 ",.01)
 ;;00247-0639-04
 ;;9002226.02101,"868,00247-0639-04 ",.02)
 ;;00247-0639-04
 ;;9002226.02101,"868,00247-0639-06 ",.01)
 ;;00247-0639-06
 ;;9002226.02101,"868,00247-0639-06 ",.02)
 ;;00247-0639-06
 ;;9002226.02101,"868,00247-0639-08 ",.01)
 ;;00247-0639-08
 ;;9002226.02101,"868,00247-0639-08 ",.02)
 ;;00247-0639-08
 ;;9002226.02101,"868,00247-0639-12 ",.01)
 ;;00247-0639-12
 ;;9002226.02101,"868,00247-0639-12 ",.02)
 ;;00247-0639-12
 ;;9002226.02101,"868,00247-0639-16 ",.01)
 ;;00247-0639-16
 ;;9002226.02101,"868,00247-0639-16 ",.02)
 ;;00247-0639-16
 ;;9002226.02101,"868,00247-0639-21 ",.01)
 ;;00247-0639-21
 ;;9002226.02101,"868,00247-0639-21 ",.02)
 ;;00247-0639-21
 ;;9002226.02101,"868,00247-0639-24 ",.01)
 ;;00247-0639-24
 ;;9002226.02101,"868,00247-0639-24 ",.02)
 ;;00247-0639-24
 ;;9002226.02101,"868,00247-0639-28 ",.01)
 ;;00247-0639-28
 ;;9002226.02101,"868,00247-0639-28 ",.02)
 ;;00247-0639-28
 ;;9002226.02101,"868,00247-0639-42 ",.01)
 ;;00247-0639-42
 ;;9002226.02101,"868,00247-0639-42 ",.02)
 ;;00247-0639-42
 ;;9002226.02101,"868,00247-0639-50 ",.01)
 ;;00247-0639-50
 ;;9002226.02101,"868,00247-0639-50 ",.02)
 ;;00247-0639-50
 ;;9002226.02101,"868,00247-0639-56 ",.01)
 ;;00247-0639-56
 ;;9002226.02101,"868,00247-0639-56 ",.02)
 ;;00247-0639-56
 ;;9002226.02101,"868,00247-0639-60 ",.01)
 ;;00247-0639-60
 ;;9002226.02101,"868,00247-0639-60 ",.02)
 ;;00247-0639-60
 ;;9002226.02101,"868,00247-0639-80 ",.01)
 ;;00247-0639-80
 ;;9002226.02101,"868,00247-0639-80 ",.02)
 ;;00247-0639-80
 ;;9002226.02101,"868,00247-0645-06 ",.01)
 ;;00247-0645-06
 ;;9002226.02101,"868,00247-0645-06 ",.02)
 ;;00247-0645-06
 ;;9002226.02101,"868,00247-0645-20 ",.01)
 ;;00247-0645-20
 ;;9002226.02101,"868,00247-0645-20 ",.02)
 ;;00247-0645-20
 ;;9002226.02101,"868,00247-0645-28 ",.01)
 ;;00247-0645-28
 ;;9002226.02101,"868,00247-0645-28 ",.02)
 ;;00247-0645-28
 ;;9002226.02101,"868,00247-0645-30 ",.01)
 ;;00247-0645-30
 ;;9002226.02101,"868,00247-0645-30 ",.02)
 ;;00247-0645-30
 ;;9002226.02101,"868,00247-0784-01 ",.01)
 ;;00247-0784-01
 ;;9002226.02101,"868,00247-0784-01 ",.02)
 ;;00247-0784-01
 ;;9002226.02101,"868,00247-0784-02 ",.01)
 ;;00247-0784-02
 ;;9002226.02101,"868,00247-0784-02 ",.02)
 ;;00247-0784-02
 ;;9002226.02101,"868,00247-0784-03 ",.01)
 ;;00247-0784-03
 ;;9002226.02101,"868,00247-0784-03 ",.02)
 ;;00247-0784-03
 ;;9002226.02101,"868,00247-0784-08 ",.01)
 ;;00247-0784-08
 ;;9002226.02101,"868,00247-0784-08 ",.02)
 ;;00247-0784-08
 ;;9002226.02101,"868,00247-0784-18 ",.01)
 ;;00247-0784-18
 ;;9002226.02101,"868,00247-0784-18 ",.02)
 ;;00247-0784-18
 ;;9002226.02101,"868,00247-0784-24 ",.01)
 ;;00247-0784-24
 ;;9002226.02101,"868,00247-0784-24 ",.02)
 ;;00247-0784-24
 ;;9002226.02101,"868,00247-0784-28 ",.01)
 ;;00247-0784-28
 ;;9002226.02101,"868,00247-0784-28 ",.02)
 ;;00247-0784-28
 ;;9002226.02101,"868,00247-0812-01 ",.01)
 ;;00247-0812-01
 ;;9002226.02101,"868,00247-0812-01 ",.02)
 ;;00247-0812-01
 ;;9002226.02101,"868,00247-0928-01 ",.01)
 ;;00247-0928-01
 ;;9002226.02101,"868,00247-0928-01 ",.02)
 ;;00247-0928-01
 ;;9002226.02101,"868,00247-0928-02 ",.01)
 ;;00247-0928-02
 ;;9002226.02101,"868,00247-0928-02 ",.02)
 ;;00247-0928-02
 ;;9002226.02101,"868,00247-0940-15 ",.01)
 ;;00247-0940-15
 ;;9002226.02101,"868,00247-0940-15 ",.02)
 ;;00247-0940-15
 ;;9002226.02101,"868,00247-0941-01 ",.01)
 ;;00247-0941-01
 ;;9002226.02101,"868,00247-0941-01 ",.02)
 ;;00247-0941-01
 ;;9002226.02101,"868,00247-0942-00 ",.01)
 ;;00247-0942-00
 ;;9002226.02101,"868,00247-0942-00 ",.02)
 ;;00247-0942-00
 ;;9002226.02101,"868,00247-0942-50 ",.01)
 ;;00247-0942-50
 ;;9002226.02101,"868,00247-0942-50 ",.02)
 ;;00247-0942-50
 ;;9002226.02101,"868,00247-0942-75 ",.01)
 ;;00247-0942-75
 ;;9002226.02101,"868,00247-0942-75 ",.02)
 ;;00247-0942-75
 ;;9002226.02101,"868,00247-0949-00 ",.01)
 ;;00247-0949-00
 ;;9002226.02101,"868,00247-0949-00 ",.02)
 ;;00247-0949-00
 ;;9002226.02101,"868,00247-0949-78 ",.01)
 ;;00247-0949-78
 ;;9002226.02101,"868,00247-0949-78 ",.02)
 ;;00247-0949-78
 ;;9002226.02101,"868,00247-0949-79 ",.01)
 ;;00247-0949-79
 ;;9002226.02101,"868,00247-0949-79 ",.02)
 ;;00247-0949-79
 ;;9002226.02101,"868,00247-1009-00 ",.01)
 ;;00247-1009-00
 ;;9002226.02101,"868,00247-1009-00 ",.02)
 ;;00247-1009-00
 ;;9002226.02101,"868,00247-1009-02 ",.01)
 ;;00247-1009-02
 ;;9002226.02101,"868,00247-1009-02 ",.02)
 ;;00247-1009-02
 ;;9002226.02101,"868,00247-1009-03 ",.01)
 ;;00247-1009-03
 ;;9002226.02101,"868,00247-1009-03 ",.02)
 ;;00247-1009-03
 ;;9002226.02101,"868,00247-1009-06 ",.01)
 ;;00247-1009-06
 ;;9002226.02101,"868,00247-1009-06 ",.02)
 ;;00247-1009-06
 ;;9002226.02101,"868,00247-1009-30 ",.01)
 ;;00247-1009-30
 ;;9002226.02101,"868,00247-1009-30 ",.02)
 ;;00247-1009-30
 ;;9002226.02101,"868,00247-1181-28 ",.01)
 ;;00247-1181-28
 ;;9002226.02101,"868,00247-1181-28 ",.02)
 ;;00247-1181-28
 ;;9002226.02101,"868,00247-1181-56 ",.01)
 ;;00247-1181-56
 ;;9002226.02101,"868,00247-1181-56 ",.02)
 ;;00247-1181-56
 ;;9002226.02101,"868,00247-1183-20 ",.01)
 ;;00247-1183-20
 ;;9002226.02101,"868,00247-1183-20 ",.02)
 ;;00247-1183-20
 ;;9002226.02101,"868,00247-1261-00 ",.01)
 ;;00247-1261-00
 ;;9002226.02101,"868,00247-1261-00 ",.02)
 ;;00247-1261-00
 ;;9002226.02101,"868,00247-1261-50 ",.01)
 ;;00247-1261-50
 ;;9002226.02101,"868,00247-1261-50 ",.02)
 ;;00247-1261-50
 ;;9002226.02101,"868,00247-1261-79 ",.01)
 ;;00247-1261-79
 ;;9002226.02101,"868,00247-1261-79 ",.02)
 ;;00247-1261-79
 ;;9002226.02101,"868,00247-1288-03 ",.01)
 ;;00247-1288-03
 ;;9002226.02101,"868,00247-1288-03 ",.02)
 ;;00247-1288-03
 ;;9002226.02101,"868,00247-1333-20 ",.01)
 ;;00247-1333-20
 ;;9002226.02101,"868,00247-1333-20 ",.02)
 ;;00247-1333-20
 ;;9002226.02101,"868,00247-1383-00 ",.01)
 ;;00247-1383-00
 ;;9002226.02101,"868,00247-1383-00 ",.02)
 ;;00247-1383-00
 ;;9002226.02101,"868,00247-1383-50 ",.01)
 ;;00247-1383-50
 ;;9002226.02101,"868,00247-1383-50 ",.02)
 ;;00247-1383-50
 ;;9002226.02101,"868,00247-1386-00 ",.01)
 ;;00247-1386-00
 ;;9002226.02101,"868,00247-1386-00 ",.02)
 ;;00247-1386-00
 ;;9002226.02101,"868,00247-1386-50 ",.01)
 ;;00247-1386-50
 ;;9002226.02101,"868,00247-1386-50 ",.02)
 ;;00247-1386-50
 ;;9002226.02101,"868,00247-1468-02 ",.01)
 ;;00247-1468-02
 ;;9002226.02101,"868,00247-1468-02 ",.02)
 ;;00247-1468-02
 ;;9002226.02101,"868,00247-1468-04 ",.01)
 ;;00247-1468-04
 ;;9002226.02101,"868,00247-1468-04 ",.02)
 ;;00247-1468-04
 ;;9002226.02101,"868,00247-1468-10 ",.01)
 ;;00247-1468-10
 ;;9002226.02101,"868,00247-1468-10 ",.02)
 ;;00247-1468-10
 ;;9002226.02101,"868,00247-1468-14 ",.01)
 ;;00247-1468-14
 ;;9002226.02101,"868,00247-1468-14 ",.02)
 ;;00247-1468-14
 ;;9002226.02101,"868,00247-1468-20 ",.01)
 ;;00247-1468-20
 ;;9002226.02101,"868,00247-1468-20 ",.02)
 ;;00247-1468-20
 ;;9002226.02101,"868,00247-1518-05 ",.01)
 ;;00247-1518-05
 ;;9002226.02101,"868,00247-1518-05 ",.02)
 ;;00247-1518-05
 ;;9002226.02101,"868,00247-1518-50 ",.01)
 ;;00247-1518-50
 ;;9002226.02101,"868,00247-1518-50 ",.02)
 ;;00247-1518-50
 ;;9002226.02101,"868,00247-1519-05 ",.01)
 ;;00247-1519-05
 ;;9002226.02101,"868,00247-1519-05 ",.02)
 ;;00247-1519-05
 ;;9002226.02101,"868,00247-1519-10 ",.01)
 ;;00247-1519-10
 ;;9002226.02101,"868,00247-1519-10 ",.02)
 ;;00247-1519-10
 ;;9002226.02101,"868,00247-1519-15 ",.01)
 ;;00247-1519-15
 ;;9002226.02101,"868,00247-1519-15 ",.02)
 ;;00247-1519-15
 ;;9002226.02101,"868,00247-1519-50 ",.01)
 ;;00247-1519-50
 ;;9002226.02101,"868,00247-1519-50 ",.02)
 ;;00247-1519-50
 ;;9002226.02101,"868,00247-1524-06 ",.01)
 ;;00247-1524-06
 ;;9002226.02101,"868,00247-1524-06 ",.02)
 ;;00247-1524-06
 ;;9002226.02101,"868,00247-1623-00 ",.01)
 ;;00247-1623-00
 ;;9002226.02101,"868,00247-1623-00 ",.02)
 ;;00247-1623-00
 ;;9002226.02101,"868,00247-1623-50 ",.01)
 ;;00247-1623-50
 ;;9002226.02101,"868,00247-1623-50 ",.02)
 ;;00247-1623-50
 ;;9002226.02101,"868,00247-1624-30 ",.01)
 ;;00247-1624-30
 ;;9002226.02101,"868,00247-1624-30 ",.02)
 ;;00247-1624-30
 ;;9002226.02101,"868,00247-1624-60 ",.01)
 ;;00247-1624-60
