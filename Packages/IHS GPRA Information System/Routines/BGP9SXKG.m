BGP9SXKG ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"729,00140-0006-14 ",.02)
 ;;00140-0006-14
 ;;9002226.02101,"729,00140-0006-49 ",.01)
 ;;00140-0006-49
 ;;9002226.02101,"729,00140-0006-49 ",.02)
 ;;00140-0006-49
 ;;9002226.02101,"729,00140-0006-50 ",.01)
 ;;00140-0006-50
 ;;9002226.02101,"729,00140-0006-50 ",.02)
 ;;00140-0006-50
 ;;9002226.02101,"729,00140-0013-01 ",.01)
 ;;00140-0013-01
 ;;9002226.02101,"729,00140-0013-01 ",.02)
 ;;00140-0013-01
 ;;9002226.02101,"729,00140-0014-01 ",.01)
 ;;00140-0014-01
 ;;9002226.02101,"729,00140-0014-01 ",.02)
 ;;00140-0014-01
 ;;9002226.02101,"729,00140-0015-01 ",.01)
 ;;00140-0015-01
 ;;9002226.02101,"729,00140-0015-01 ",.02)
 ;;00140-0015-01
 ;;9002226.02101,"729,00140-0065-01 ",.01)
 ;;00140-0065-01
 ;;9002226.02101,"729,00140-0065-01 ",.02)
 ;;00140-0065-01
 ;;9002226.02101,"729,00140-0065-14 ",.01)
 ;;00140-0065-14
 ;;9002226.02101,"729,00140-0065-14 ",.02)
 ;;00140-0065-14
 ;;9002226.02101,"729,00140-0066-01 ",.01)
 ;;00140-0066-01
 ;;9002226.02101,"729,00140-0066-01 ",.02)
 ;;00140-0066-01
 ;;9002226.02101,"729,00140-0066-14 ",.01)
 ;;00140-0066-14
 ;;9002226.02101,"729,00140-0066-14 ",.02)
 ;;00140-0066-14
 ;;9002226.02101,"729,00140-0070-01 ",.01)
 ;;00140-0070-01
 ;;9002226.02101,"729,00140-0070-01 ",.02)
 ;;00140-0070-01
 ;;9002226.02101,"729,00140-0070-49 ",.01)
 ;;00140-0070-49
 ;;9002226.02101,"729,00140-0070-49 ",.02)
 ;;00140-0070-49
 ;;9002226.02101,"729,00140-0071-01 ",.01)
 ;;00140-0071-01
 ;;9002226.02101,"729,00140-0071-01 ",.02)
 ;;00140-0071-01
 ;;9002226.02101,"729,00140-0071-49 ",.01)
 ;;00140-0071-49
 ;;9002226.02101,"729,00140-0071-49 ",.02)
 ;;00140-0071-49
 ;;9002226.02101,"729,00140-1931-06 ",.01)
 ;;00140-1931-06
 ;;9002226.02101,"729,00140-1931-06 ",.02)
 ;;00140-1931-06
 ;;9002226.02101,"729,00140-1932-06 ",.01)
 ;;00140-1932-06
 ;;9002226.02101,"729,00140-1932-06 ",.02)
 ;;00140-1932-06
 ;;9002226.02101,"729,00140-1933-06 ",.01)
 ;;00140-1933-06
 ;;9002226.02101,"729,00140-1933-06 ",.02)
 ;;00140-1933-06
 ;;9002226.02101,"729,00143-3367-01 ",.01)
 ;;00143-3367-01
 ;;9002226.02101,"729,00143-3367-01 ",.02)
 ;;00143-3367-01
 ;;9002226.02101,"729,00143-3367-05 ",.01)
 ;;00143-3367-05
 ;;9002226.02101,"729,00143-3367-05 ",.02)
 ;;00143-3367-05
 ;;9002226.02101,"729,00143-3370-01 ",.01)
 ;;00143-3370-01
 ;;9002226.02101,"729,00143-3370-01 ",.02)
 ;;00143-3370-01
 ;;9002226.02101,"729,00143-3370-05 ",.01)
 ;;00143-3370-05
 ;;9002226.02101,"729,00143-3370-05 ",.02)
 ;;00143-3370-05
 ;;9002226.02101,"729,00172-3925-60 ",.01)
 ;;00172-3925-60
 ;;9002226.02101,"729,00172-3925-60 ",.02)
 ;;00172-3925-60
 ;;9002226.02101,"729,00172-3925-70 ",.01)
 ;;00172-3925-70
 ;;9002226.02101,"729,00172-3925-70 ",.02)
 ;;00172-3925-70
 ;;9002226.02101,"729,00172-3925-80 ",.01)
 ;;00172-3925-80
 ;;9002226.02101,"729,00172-3925-80 ",.02)
 ;;00172-3925-80
 ;;9002226.02101,"729,00172-3926-60 ",.01)
 ;;00172-3926-60
 ;;9002226.02101,"729,00172-3926-60 ",.02)
 ;;00172-3926-60
 ;;9002226.02101,"729,00172-3926-70 ",.01)
 ;;00172-3926-70
 ;;9002226.02101,"729,00172-3926-70 ",.02)
 ;;00172-3926-70
 ;;9002226.02101,"729,00172-3926-80 ",.01)
 ;;00172-3926-80
 ;;9002226.02101,"729,00172-3926-80 ",.02)
 ;;00172-3926-80
 ;;9002226.02101,"729,00172-3927-60 ",.01)
 ;;00172-3927-60
 ;;9002226.02101,"729,00172-3927-60 ",.02)
 ;;00172-3927-60
 ;;9002226.02101,"729,00172-3927-70 ",.01)
 ;;00172-3927-70
 ;;9002226.02101,"729,00172-3927-70 ",.02)
 ;;00172-3927-70
 ;;9002226.02101,"729,00172-3927-80 ",.01)
 ;;00172-3927-80
 ;;9002226.02101,"729,00172-3927-80 ",.02)
 ;;00172-3927-80
 ;;9002226.02101,"729,00182-0977-01 ",.01)
 ;;00182-0977-01
 ;;9002226.02101,"729,00182-0977-01 ",.02)
 ;;00182-0977-01
 ;;9002226.02101,"729,00182-0977-89 ",.01)
 ;;00182-0977-89
 ;;9002226.02101,"729,00182-0977-89 ",.02)
 ;;00182-0977-89
 ;;9002226.02101,"729,00182-0978-01 ",.01)
 ;;00182-0978-01
 ;;9002226.02101,"729,00182-0978-01 ",.02)
 ;;00182-0978-01
 ;;9002226.02101,"729,00182-0978-05 ",.01)
 ;;00182-0978-05
 ;;9002226.02101,"729,00182-0978-05 ",.02)
 ;;00182-0978-05
 ;;9002226.02101,"729,00182-0978-10 ",.01)
 ;;00182-0978-10
 ;;9002226.02101,"729,00182-0978-10 ",.02)
 ;;00182-0978-10
 ;;9002226.02101,"729,00182-0978-89 ",.01)
 ;;00182-0978-89
 ;;9002226.02101,"729,00182-0978-89 ",.02)
 ;;00182-0978-89
 ;;9002226.02101,"729,00182-0979-01 ",.01)
 ;;00182-0979-01
 ;;9002226.02101,"729,00182-0979-01 ",.02)
 ;;00182-0979-01
 ;;9002226.02101,"729,00182-0979-89 ",.01)
 ;;00182-0979-89
 ;;9002226.02101,"729,00182-0979-89 ",.02)
 ;;00182-0979-89
 ;;9002226.02101,"729,00182-1757-01 ",.01)
 ;;00182-1757-01
 ;;9002226.02101,"729,00182-1757-01 ",.02)
 ;;00182-1757-01
 ;;9002226.02101,"729,00182-1757-05 ",.01)
 ;;00182-1757-05
 ;;9002226.02101,"729,00182-1757-05 ",.02)
 ;;00182-1757-05
 ;;9002226.02101,"729,00182-1757-10 ",.01)
 ;;00182-1757-10
 ;;9002226.02101,"729,00182-1757-10 ",.02)
 ;;00182-1757-10
 ;;9002226.02101,"729,00182-1757-89 ",.01)
 ;;00182-1757-89
 ;;9002226.02101,"729,00182-1757-89 ",.02)
 ;;00182-1757-89
 ;;9002226.02101,"729,00182-1817-01 ",.01)
 ;;00182-1817-01
 ;;9002226.02101,"729,00182-1817-01 ",.02)
 ;;00182-1817-01
 ;;9002226.02101,"729,00182-1817-05 ",.01)
 ;;00182-1817-05
