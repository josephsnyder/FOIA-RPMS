BGP9YXRC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"461,00074-7666-62 ",.01)
 ;;00074-7666-62
 ;;9002226.02101,"461,00074-7666-62 ",.02)
 ;;00074-7666-62
 ;;9002226.02101,"461,00074-7668-23 ",.01)
 ;;00074-7668-23
 ;;9002226.02101,"461,00074-7668-23 ",.02)
 ;;00074-7668-23
 ;;9002226.02101,"461,00074-7677-13 ",.01)
 ;;00074-7677-13
 ;;9002226.02101,"461,00074-7677-13 ",.02)
 ;;00074-7677-13
 ;;9002226.02101,"461,00074-7677-23 ",.01)
 ;;00074-7677-23
 ;;9002226.02101,"461,00074-7677-23 ",.02)
 ;;00074-7677-23
 ;;9002226.02101,"461,00074-7705-62 ",.01)
 ;;00074-7705-62
 ;;9002226.02101,"461,00074-7705-62 ",.02)
 ;;00074-7705-62
 ;;9002226.02101,"461,00089-0342-10 ",.01)
 ;;00089-0342-10
 ;;9002226.02101,"461,00089-0342-10 ",.02)
 ;;00089-0342-10
 ;;9002226.02101,"461,00089-0344-10 ",.01)
 ;;00089-0344-10
 ;;9002226.02101,"461,00089-0344-10 ",.02)
 ;;00089-0344-10
 ;;9002226.02101,"461,00172-6406-49 ",.01)
 ;;00172-6406-49
 ;;9002226.02101,"461,00172-6406-49 ",.02)
 ;;00172-6406-49
 ;;9002226.02101,"461,00172-6406-59 ",.01)
 ;;00172-6406-59
 ;;9002226.02101,"461,00172-6406-59 ",.02)
 ;;00172-6406-59
 ;;9002226.02101,"461,00182-1400-89 ",.01)
 ;;00182-1400-89
 ;;9002226.02101,"461,00182-1400-89 ",.02)
 ;;00182-1400-89
 ;;9002226.02101,"461,00182-1589-89 ",.01)
 ;;00182-1589-89
 ;;9002226.02101,"461,00182-1589-89 ",.02)
 ;;00182-1589-89
 ;;9002226.02101,"461,00182-1590-89 ",.01)
 ;;00182-1590-89
 ;;9002226.02101,"461,00182-1590-89 ",.02)
 ;;00182-1590-89
 ;;9002226.02101,"461,00223-6308-01 ",.01)
 ;;00223-6308-01
 ;;9002226.02101,"461,00223-6308-01 ",.02)
 ;;00223-6308-01
 ;;9002226.02101,"461,00223-6308-02 ",.01)
 ;;00223-6308-02
 ;;9002226.02101,"461,00223-6308-02 ",.02)
 ;;00223-6308-02
 ;;9002226.02101,"461,00223-6623-01 ",.01)
 ;;00223-6623-01
 ;;9002226.02101,"461,00223-6623-01 ",.02)
 ;;00223-6623-01
 ;;9002226.02101,"461,00256-0114-01 ",.01)
 ;;00256-0114-01
 ;;9002226.02101,"461,00256-0114-01 ",.02)
 ;;00256-0114-01
 ;;9002226.02101,"461,00256-0115-01 ",.01)
 ;;00256-0115-01
 ;;9002226.02101,"461,00256-0115-01 ",.02)
 ;;00256-0115-01
 ;;9002226.02101,"461,00256-0150-01 ",.01)
 ;;00256-0150-01
 ;;9002226.02101,"461,00256-0150-01 ",.02)
 ;;00256-0150-01
 ;;9002226.02101,"461,00258-3581-01 ",.01)
 ;;00258-3581-01
 ;;9002226.02101,"461,00258-3581-01 ",.02)
 ;;00258-3581-01
 ;;9002226.02101,"461,00258-3581-05 ",.01)
 ;;00258-3581-05
 ;;9002226.02101,"461,00258-3581-05 ",.02)
 ;;00258-3581-05
 ;;9002226.02101,"461,00258-3581-10 ",.01)
 ;;00258-3581-10
 ;;9002226.02101,"461,00258-3581-10 ",.02)
 ;;00258-3581-10
 ;;9002226.02101,"461,00258-3583-01 ",.01)
 ;;00258-3583-01
 ;;9002226.02101,"461,00258-3583-01 ",.02)
 ;;00258-3583-01
 ;;9002226.02101,"461,00258-3583-05 ",.01)
 ;;00258-3583-05
 ;;9002226.02101,"461,00258-3583-05 ",.02)
 ;;00258-3583-05
 ;;9002226.02101,"461,00258-3583-10 ",.01)
 ;;00258-3583-10
 ;;9002226.02101,"461,00258-3583-10 ",.02)
 ;;00258-3583-10
 ;;9002226.02101,"461,00258-3584-01 ",.01)
 ;;00258-3584-01
 ;;9002226.02101,"461,00258-3584-01 ",.02)
 ;;00258-3584-01
 ;;9002226.02101,"461,00258-3584-05 ",.01)
 ;;00258-3584-05
 ;;9002226.02101,"461,00258-3584-05 ",.02)
 ;;00258-3584-05
 ;;9002226.02101,"461,00258-3614-01 ",.01)
 ;;00258-3614-01
 ;;9002226.02101,"461,00258-3614-01 ",.02)
 ;;00258-3614-01
 ;;9002226.02101,"461,00258-3625-01 ",.01)
 ;;00258-3625-01
 ;;9002226.02101,"461,00258-3625-01 ",.02)
 ;;00258-3625-01
 ;;9002226.02101,"461,00258-3634-01 ",.01)
 ;;00258-3634-01
 ;;9002226.02101,"461,00258-3634-01 ",.02)
 ;;00258-3634-01
 ;;9002226.02101,"461,00258-3638-01 ",.01)
 ;;00258-3638-01
 ;;9002226.02101,"461,00258-3638-01 ",.02)
 ;;00258-3638-01
 ;;9002226.02101,"461,00310-0401-60 ",.01)
 ;;00310-0401-60
 ;;9002226.02101,"461,00310-0401-60 ",.02)
 ;;00310-0401-60
 ;;9002226.02101,"461,00310-0402-39 ",.01)
 ;;00310-0402-39
 ;;9002226.02101,"461,00310-0402-39 ",.02)
 ;;00310-0402-39
 ;;9002226.02101,"461,00310-0402-60 ",.01)
 ;;00310-0402-60
 ;;9002226.02101,"461,00310-0402-60 ",.02)
 ;;00310-0402-60
 ;;9002226.02101,"461,00338-0437-04 ",.01)
 ;;00338-0437-04
 ;;9002226.02101,"461,00338-0437-04 ",.02)
 ;;00338-0437-04
 ;;9002226.02101,"461,00338-0439-03 ",.01)
 ;;00338-0439-03
 ;;9002226.02101,"461,00338-0439-03 ",.02)
 ;;00338-0439-03
 ;;9002226.02101,"461,00338-0439-04 ",.01)
 ;;00338-0439-04
 ;;9002226.02101,"461,00338-0439-04 ",.02)
 ;;00338-0439-04
 ;;9002226.02101,"461,00338-0441-02 ",.01)
 ;;00338-0441-02
 ;;9002226.02101,"461,00338-0441-02 ",.02)
 ;;00338-0441-02
 ;;9002226.02101,"461,00338-0441-03 ",.01)
 ;;00338-0441-03
 ;;9002226.02101,"461,00338-0441-03 ",.02)
 ;;00338-0441-03
 ;;9002226.02101,"461,00338-0443-48 ",.01)
 ;;00338-0443-48
 ;;9002226.02101,"461,00338-0443-48 ",.02)
 ;;00338-0443-48
 ;;9002226.02101,"461,00338-0444-02 ",.01)
 ;;00338-0444-02
 ;;9002226.02101,"461,00338-0444-02 ",.02)
 ;;00338-0444-02
 ;;9002226.02101,"461,00338-0445-41 ",.01)
 ;;00338-0445-41
 ;;9002226.02101,"461,00338-0445-41 ",.02)
 ;;00338-0445-41
 ;;9002226.02101,"461,00338-0445-48 ",.01)
 ;;00338-0445-48
 ;;9002226.02101,"461,00338-0445-48 ",.02)
 ;;00338-0445-48
 ;;9002226.02101,"461,00456-0644-16 ",.01)
 ;;00456-0644-16
 ;;9002226.02101,"461,00456-0644-16 ",.02)
 ;;00456-0644-16
