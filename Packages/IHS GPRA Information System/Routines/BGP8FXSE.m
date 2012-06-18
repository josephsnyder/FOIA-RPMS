BGP8FXSE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"629,00182-0572-05 ",.01)
 ;;00182-0572-05
 ;;9002226.02101,"629,00182-0572-05 ",.02)
 ;;00182-0572-05
 ;;9002226.02101,"629,00182-0572-89 ",.01)
 ;;00182-0572-89
 ;;9002226.02101,"629,00182-0572-89 ",.02)
 ;;00182-0572-89
 ;;9002226.02101,"629,00182-0573-01 ",.01)
 ;;00182-0573-01
 ;;9002226.02101,"629,00182-0573-01 ",.02)
 ;;00182-0573-01
 ;;9002226.02101,"629,00182-0573-05 ",.01)
 ;;00182-0573-05
 ;;9002226.02101,"629,00182-0573-05 ",.02)
 ;;00182-0573-05
 ;;9002226.02101,"629,00182-0573-89 ",.01)
 ;;00182-0573-89
 ;;9002226.02101,"629,00182-0573-89 ",.02)
 ;;00182-0573-89
 ;;9002226.02101,"629,00182-1079-01 ",.01)
 ;;00182-1079-01
 ;;9002226.02101,"629,00182-1079-01 ",.02)
 ;;00182-1079-01
 ;;9002226.02101,"629,00182-1079-05 ",.01)
 ;;00182-1079-05
 ;;9002226.02101,"629,00182-1079-05 ",.02)
 ;;00182-1079-05
 ;;9002226.02101,"629,00182-1189-05 ",.01)
 ;;00182-1189-05
 ;;9002226.02101,"629,00182-1189-05 ",.02)
 ;;00182-1189-05
 ;;9002226.02101,"629,00182-1780-01 ",.01)
 ;;00182-1780-01
 ;;9002226.02101,"629,00182-1780-01 ",.02)
 ;;00182-1780-01
 ;;9002226.02101,"629,00182-1821-05 ",.01)
 ;;00182-1821-05
 ;;9002226.02101,"629,00182-1821-05 ",.02)
 ;;00182-1821-05
 ;;9002226.02101,"629,00182-1911-01 ",.01)
 ;;00182-1911-01
 ;;9002226.02101,"629,00182-1911-01 ",.02)
 ;;00182-1911-01
 ;;9002226.02101,"629,00182-1919-89 ",.01)
 ;;00182-1919-89
 ;;9002226.02101,"629,00182-1919-89 ",.02)
 ;;00182-1919-89
 ;;9002226.02101,"629,00185-0022-01 ",.01)
 ;;00185-0022-01
 ;;9002226.02101,"629,00185-0022-01 ",.02)
 ;;00185-0022-01
 ;;9002226.02101,"629,00185-0022-10 ",.01)
 ;;00185-0022-10
 ;;9002226.02101,"629,00185-0022-10 ",.02)
 ;;00185-0022-10
 ;;9002226.02101,"629,00185-0713-01 ",.01)
 ;;00185-0713-01
 ;;9002226.02101,"629,00185-0713-01 ",.02)
 ;;00185-0713-01
 ;;9002226.02101,"629,00185-0713-05 ",.01)
 ;;00185-0713-05
 ;;9002226.02101,"629,00185-0713-05 ",.02)
 ;;00185-0713-05
 ;;9002226.02101,"629,00185-0714-01 ",.01)
 ;;00185-0714-01
 ;;9002226.02101,"629,00185-0714-01 ",.02)
 ;;00185-0714-01
 ;;9002226.02101,"629,00185-0714-10 ",.01)
 ;;00185-0714-10
 ;;9002226.02101,"629,00185-0714-10 ",.02)
 ;;00185-0714-10
 ;;9002226.02101,"629,00185-0724-01 ",.01)
 ;;00185-0724-01
 ;;9002226.02101,"629,00185-0724-01 ",.02)
 ;;00185-0724-01
 ;;9002226.02101,"629,00185-0724-05 ",.01)
 ;;00185-0724-05
 ;;9002226.02101,"629,00185-0724-05 ",.02)
 ;;00185-0724-05
 ;;9002226.02101,"629,00185-0724-10 ",.01)
 ;;00185-0724-10
 ;;9002226.02101,"629,00185-0724-10 ",.02)
 ;;00185-0724-10
 ;;9002226.02101,"629,00185-0749-01 ",.01)
 ;;00185-0749-01
 ;;9002226.02101,"629,00185-0749-01 ",.02)
 ;;00185-0749-01
 ;;9002226.02101,"629,00185-0749-05 ",.01)
 ;;00185-0749-05
 ;;9002226.02101,"629,00185-0749-05 ",.02)
 ;;00185-0749-05
 ;;9002226.02101,"629,00185-0749-10 ",.01)
 ;;00185-0749-10
 ;;9002226.02101,"629,00185-0749-10 ",.02)
 ;;00185-0749-10
 ;;9002226.02101,"629,00223-0657-01 ",.01)
 ;;00223-0657-01
 ;;9002226.02101,"629,00223-0657-01 ",.02)
 ;;00223-0657-01
 ;;9002226.02101,"629,00223-0657-02 ",.01)
 ;;00223-0657-02
 ;;9002226.02101,"629,00223-0657-02 ",.02)
 ;;00223-0657-02
 ;;9002226.02101,"629,00223-0657-05 ",.01)
 ;;00223-0657-05
 ;;9002226.02101,"629,00223-0657-05 ",.02)
 ;;00223-0657-05
 ;;9002226.02101,"629,00223-0658-01 ",.01)
 ;;00223-0658-01
 ;;9002226.02101,"629,00223-0658-01 ",.02)
 ;;00223-0658-01
 ;;9002226.02101,"629,00223-0658-03 ",.01)
 ;;00223-0658-03
 ;;9002226.02101,"629,00223-0658-03 ",.02)
 ;;00223-0658-03
 ;;9002226.02101,"629,00223-0658-05 ",.01)
 ;;00223-0658-05
 ;;9002226.02101,"629,00223-0658-05 ",.02)
 ;;00223-0658-05
 ;;9002226.02101,"629,00223-1170-01 ",.01)
 ;;00223-1170-01
 ;;9002226.02101,"629,00223-1170-01 ",.02)
 ;;00223-1170-01
 ;;9002226.02101,"629,00223-1170-02 ",.01)
 ;;00223-1170-02
 ;;9002226.02101,"629,00223-1170-02 ",.02)
 ;;00223-1170-02
 ;;9002226.02101,"629,00223-1277-01 ",.01)
 ;;00223-1277-01
 ;;9002226.02101,"629,00223-1277-01 ",.02)
 ;;00223-1277-01
 ;;9002226.02101,"629,00223-1277-02 ",.01)
 ;;00223-1277-02
 ;;9002226.02101,"629,00223-1277-02 ",.02)
 ;;00223-1277-02
 ;;9002226.02101,"629,00223-1277-05 ",.01)
 ;;00223-1277-05
 ;;9002226.02101,"629,00223-1277-05 ",.02)
 ;;00223-1277-05
 ;;9002226.02101,"629,00223-1278-01 ",.01)
 ;;00223-1278-01
 ;;9002226.02101,"629,00223-1278-01 ",.02)
 ;;00223-1278-01
 ;;9002226.02101,"629,00223-1278-02 ",.01)
 ;;00223-1278-02
 ;;9002226.02101,"629,00223-1278-02 ",.02)
 ;;00223-1278-02
 ;;9002226.02101,"629,00223-1278-05 ",.01)
 ;;00223-1278-05
 ;;9002226.02101,"629,00223-1278-05 ",.02)
 ;;00223-1278-05
 ;;9002226.02101,"629,00223-8150-10 ",.01)
 ;;00223-8150-10
 ;;9002226.02101,"629,00223-8150-10 ",.02)
 ;;00223-8150-10
 ;;9002226.02101,"629,00223-8200-10 ",.01)
 ;;00223-8200-10
 ;;9002226.02101,"629,00223-8200-10 ",.02)
 ;;00223-8200-10
 ;;9002226.02101,"629,00247-0013-00 ",.01)
 ;;00247-0013-00
 ;;9002226.02101,"629,00247-0013-00 ",.02)
 ;;00247-0013-00
 ;;9002226.02101,"629,00247-0013-03 ",.01)
 ;;00247-0013-03
 ;;9002226.02101,"629,00247-0013-03 ",.02)
 ;;00247-0013-03
 ;;9002226.02101,"629,00247-0013-06 ",.01)
 ;;00247-0013-06
 ;;9002226.02101,"629,00247-0013-06 ",.02)
 ;;00247-0013-06
 ;;9002226.02101,"629,00247-0013-07 ",.01)
 ;;00247-0013-07
 ;;9002226.02101,"629,00247-0013-07 ",.02)
 ;;00247-0013-07
 ;;9002226.02101,"629,00247-0013-08 ",.01)
 ;;00247-0013-08
 ;;9002226.02101,"629,00247-0013-08 ",.02)
 ;;00247-0013-08
 ;;9002226.02101,"629,00247-0013-09 ",.01)
 ;;00247-0013-09
 ;;9002226.02101,"629,00247-0013-09 ",.02)
 ;;00247-0013-09
 ;;9002226.02101,"629,00247-0013-12 ",.01)
 ;;00247-0013-12
 ;;9002226.02101,"629,00247-0013-12 ",.02)
 ;;00247-0013-12
 ;;9002226.02101,"629,00247-0013-15 ",.01)
 ;;00247-0013-15
 ;;9002226.02101,"629,00247-0013-15 ",.02)
 ;;00247-0013-15
 ;;9002226.02101,"629,00247-0013-18 ",.01)
 ;;00247-0013-18
 ;;9002226.02101,"629,00247-0013-18 ",.02)
 ;;00247-0013-18
 ;;9002226.02101,"629,00247-0013-20 ",.01)
 ;;00247-0013-20
 ;;9002226.02101,"629,00247-0013-20 ",.02)
 ;;00247-0013-20
 ;;9002226.02101,"629,00247-0013-21 ",.01)
 ;;00247-0013-21
 ;;9002226.02101,"629,00247-0013-21 ",.02)
 ;;00247-0013-21
 ;;9002226.02101,"629,00247-0013-25 ",.01)
 ;;00247-0013-25
 ;;9002226.02101,"629,00247-0013-25 ",.02)
 ;;00247-0013-25
 ;;9002226.02101,"629,00247-0013-28 ",.01)
 ;;00247-0013-28
 ;;9002226.02101,"629,00247-0013-28 ",.02)
 ;;00247-0013-28
 ;;9002226.02101,"629,00247-0013-30 ",.01)
 ;;00247-0013-30
 ;;9002226.02101,"629,00247-0013-30 ",.02)
 ;;00247-0013-30
 ;;9002226.02101,"629,00247-0013-40 ",.01)
 ;;00247-0013-40
 ;;9002226.02101,"629,00247-0013-40 ",.02)
 ;;00247-0013-40
 ;;9002226.02101,"629,00247-0013-60 ",.01)
 ;;00247-0013-60
 ;;9002226.02101,"629,00247-0013-60 ",.02)
 ;;00247-0013-60
 ;;9002226.02101,"629,00247-0013-98 ",.01)
 ;;00247-0013-98
 ;;9002226.02101,"629,00247-0013-98 ",.02)
 ;;00247-0013-98
 ;;9002226.02101,"629,00247-0059-00 ",.01)
 ;;00247-0059-00
 ;;9002226.02101,"629,00247-0059-00 ",.02)
 ;;00247-0059-00
 ;;9002226.02101,"629,00247-0059-01 ",.01)
 ;;00247-0059-01
 ;;9002226.02101,"629,00247-0059-01 ",.02)
 ;;00247-0059-01
 ;;9002226.02101,"629,00247-0059-02 ",.01)
 ;;00247-0059-02
 ;;9002226.02101,"629,00247-0059-02 ",.02)
 ;;00247-0059-02
 ;;9002226.02101,"629,00247-0059-03 ",.01)
 ;;00247-0059-03
 ;;9002226.02101,"629,00247-0059-03 ",.02)
 ;;00247-0059-03
 ;;9002226.02101,"629,00247-0059-04 ",.01)
 ;;00247-0059-04
 ;;9002226.02101,"629,00247-0059-04 ",.02)
 ;;00247-0059-04
 ;;9002226.02101,"629,00247-0059-05 ",.01)
 ;;00247-0059-05
 ;;9002226.02101,"629,00247-0059-05 ",.02)
 ;;00247-0059-05
 ;;9002226.02101,"629,00247-0059-06 ",.01)
 ;;00247-0059-06
 ;;9002226.02101,"629,00247-0059-06 ",.02)
 ;;00247-0059-06
 ;;9002226.02101,"629,00247-0059-07 ",.01)
 ;;00247-0059-07
 ;;9002226.02101,"629,00247-0059-07 ",.02)
 ;;00247-0059-07
 ;;9002226.02101,"629,00247-0059-08 ",.01)
 ;;00247-0059-08
 ;;9002226.02101,"629,00247-0059-08 ",.02)
 ;;00247-0059-08
 ;;9002226.02101,"629,00247-0059-09 ",.01)
 ;;00247-0059-09
 ;;9002226.02101,"629,00247-0059-09 ",.02)
 ;;00247-0059-09
 ;;9002226.02101,"629,00247-0059-10 ",.01)
 ;;00247-0059-10
 ;;9002226.02101,"629,00247-0059-10 ",.02)
 ;;00247-0059-10
 ;;9002226.02101,"629,00247-0059-12 ",.01)
 ;;00247-0059-12
 ;;9002226.02101,"629,00247-0059-12 ",.02)
 ;;00247-0059-12
 ;;9002226.02101,"629,00247-0059-14 ",.01)
 ;;00247-0059-14
 ;;9002226.02101,"629,00247-0059-14 ",.02)
 ;;00247-0059-14
 ;;9002226.02101,"629,00247-0059-15 ",.01)
 ;;00247-0059-15
 ;;9002226.02101,"629,00247-0059-15 ",.02)
 ;;00247-0059-15
 ;;9002226.02101,"629,00247-0059-18 ",.01)
 ;;00247-0059-18
 ;;9002226.02101,"629,00247-0059-18 ",.02)
 ;;00247-0059-18
 ;;9002226.02101,"629,00247-0059-20 ",.01)
 ;;00247-0059-20
 ;;9002226.02101,"629,00247-0059-20 ",.02)
 ;;00247-0059-20
 ;;9002226.02101,"629,00247-0059-21 ",.01)
 ;;00247-0059-21
 ;;9002226.02101,"629,00247-0059-21 ",.02)
 ;;00247-0059-21
 ;;9002226.02101,"629,00247-0059-28 ",.01)
 ;;00247-0059-28
 ;;9002226.02101,"629,00247-0059-28 ",.02)
 ;;00247-0059-28
 ;;9002226.02101,"629,00247-0059-30 ",.01)
 ;;00247-0059-30
 ;;9002226.02101,"629,00247-0059-30 ",.02)
 ;;00247-0059-30
 ;;9002226.02101,"629,00247-0059-40 ",.01)
 ;;00247-0059-40
 ;;9002226.02101,"629,00247-0059-40 ",.02)
 ;;00247-0059-40
 ;;9002226.02101,"629,00247-0059-42 ",.01)
 ;;00247-0059-42
 ;;9002226.02101,"629,00247-0059-42 ",.02)
 ;;00247-0059-42
 ;;9002226.02101,"629,00247-0059-60 ",.01)
 ;;00247-0059-60
 ;;9002226.02101,"629,00247-0059-60 ",.02)
 ;;00247-0059-60
 ;;9002226.02101,"629,00247-0059-90 ",.01)
 ;;00247-0059-90
 ;;9002226.02101,"629,00247-0059-90 ",.02)
 ;;00247-0059-90
 ;;9002226.02101,"629,00247-0059-98 ",.01)
 ;;00247-0059-98
 ;;9002226.02101,"629,00247-0059-98 ",.02)
 ;;00247-0059-98
 ;;9002226.02101,"629,00247-0059-99 ",.01)
 ;;00247-0059-99
 ;;9002226.02101,"629,00247-0059-99 ",.02)
 ;;00247-0059-99
 ;;9002226.02101,"629,00247-0088-00 ",.01)
 ;;00247-0088-00
 ;;9002226.02101,"629,00247-0088-00 ",.02)
 ;;00247-0088-00
 ;;9002226.02101,"629,00247-0088-02 ",.01)
 ;;00247-0088-02
 ;;9002226.02101,"629,00247-0088-02 ",.02)
 ;;00247-0088-02
 ;;9002226.02101,"629,00247-0088-04 ",.01)
 ;;00247-0088-04
 ;;9002226.02101,"629,00247-0088-04 ",.02)
 ;;00247-0088-04
 ;;9002226.02101,"629,00247-0088-07 ",.01)
 ;;00247-0088-07
 ;;9002226.02101,"629,00247-0088-07 ",.02)
 ;;00247-0088-07
 ;;9002226.02101,"629,00247-0088-10 ",.01)
 ;;00247-0088-10
 ;;9002226.02101,"629,00247-0088-10 ",.02)
 ;;00247-0088-10
 ;;9002226.02101,"629,00247-0088-14 ",.01)
 ;;00247-0088-14
 ;;9002226.02101,"629,00247-0088-14 ",.02)
 ;;00247-0088-14
 ;;9002226.02101,"629,00247-0088-15 ",.01)
 ;;00247-0088-15
 ;;9002226.02101,"629,00247-0088-15 ",.02)
 ;;00247-0088-15
 ;;9002226.02101,"629,00247-0088-16 ",.01)
 ;;00247-0088-16
 ;;9002226.02101,"629,00247-0088-16 ",.02)
 ;;00247-0088-16
 ;;9002226.02101,"629,00247-0088-18 ",.01)
 ;;00247-0088-18
 ;;9002226.02101,"629,00247-0088-18 ",.02)
 ;;00247-0088-18
 ;;9002226.02101,"629,00247-0088-20 ",.01)
 ;;00247-0088-20
 ;;9002226.02101,"629,00247-0088-20 ",.02)
 ;;00247-0088-20
 ;;9002226.02101,"629,00247-0088-21 ",.01)
 ;;00247-0088-21
 ;;9002226.02101,"629,00247-0088-21 ",.02)
 ;;00247-0088-21
 ;;9002226.02101,"629,00247-0088-28 ",.01)
 ;;00247-0088-28
 ;;9002226.02101,"629,00247-0088-28 ",.02)
 ;;00247-0088-28
 ;;9002226.02101,"629,00247-0088-30 ",.01)
 ;;00247-0088-30
 ;;9002226.02101,"629,00247-0088-30 ",.02)
 ;;00247-0088-30
 ;;9002226.02101,"629,00247-0088-40 ",.01)
 ;;00247-0088-40
 ;;9002226.02101,"629,00247-0088-40 ",.02)
 ;;00247-0088-40
 ;;9002226.02101,"629,00247-0088-52 ",.01)
 ;;00247-0088-52
 ;;9002226.02101,"629,00247-0088-52 ",.02)
 ;;00247-0088-52
 ;;9002226.02101,"629,00247-0088-56 ",.01)
 ;;00247-0088-56
 ;;9002226.02101,"629,00247-0088-56 ",.02)
 ;;00247-0088-56
 ;;9002226.02101,"629,00247-0088-60 ",.01)
 ;;00247-0088-60
 ;;9002226.02101,"629,00247-0088-60 ",.02)
 ;;00247-0088-60
 ;;9002226.02101,"629,00247-0112-03 ",.01)
 ;;00247-0112-03
 ;;9002226.02101,"629,00247-0112-03 ",.02)
 ;;00247-0112-03
 ;;9002226.02101,"629,00247-0112-04 ",.01)
 ;;00247-0112-04
 ;;9002226.02101,"629,00247-0112-04 ",.02)
 ;;00247-0112-04
 ;;9002226.02101,"629,00247-0112-10 ",.01)
 ;;00247-0112-10
 ;;9002226.02101,"629,00247-0112-10 ",.02)
 ;;00247-0112-10
 ;;9002226.02101,"629,00247-0112-12 ",.01)
 ;;00247-0112-12
 ;;9002226.02101,"629,00247-0112-12 ",.02)
 ;;00247-0112-12
 ;;9002226.02101,"629,00247-0112-14 ",.01)
 ;;00247-0112-14
 ;;9002226.02101,"629,00247-0112-14 ",.02)
 ;;00247-0112-14
 ;;9002226.02101,"629,00247-0112-15 ",.01)
 ;;00247-0112-15
 ;;9002226.02101,"629,00247-0112-15 ",.02)
 ;;00247-0112-15
 ;;9002226.02101,"629,00247-0112-16 ",.01)
 ;;00247-0112-16
 ;;9002226.02101,"629,00247-0112-16 ",.02)
 ;;00247-0112-16
 ;;9002226.02101,"629,00247-0112-20 ",.01)
 ;;00247-0112-20
 ;;9002226.02101,"629,00247-0112-20 ",.02)
 ;;00247-0112-20
 ;;9002226.02101,"629,00247-0112-24 ",.01)
 ;;00247-0112-24
 ;;9002226.02101,"629,00247-0112-24 ",.02)
 ;;00247-0112-24
 ;;9002226.02101,"629,00247-0112-28 ",.01)
 ;;00247-0112-28
 ;;9002226.02101,"629,00247-0112-28 ",.02)
 ;;00247-0112-28
 ;;9002226.02101,"629,00247-0112-30 ",.01)
 ;;00247-0112-30
 ;;9002226.02101,"629,00247-0112-30 ",.02)
 ;;00247-0112-30
 ;;9002226.02101,"629,00247-0112-40 ",.01)
 ;;00247-0112-40
 ;;9002226.02101,"629,00247-0112-40 ",.02)
 ;;00247-0112-40
 ;;9002226.02101,"629,00247-0180-03 ",.01)
 ;;00247-0180-03
