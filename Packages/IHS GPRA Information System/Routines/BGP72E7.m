BGP72E7 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1227,68084-0620-11 ",.02)
 ;;68084-0620-11
 ;;9002226.02101,"1227,68084-0638-11 ",.01)
 ;;68084-0638-11
 ;;9002226.02101,"1227,68084-0638-11 ",.02)
 ;;68084-0638-11
 ;;9002226.02101,"1227,68084-0638-21 ",.01)
 ;;68084-0638-21
 ;;9002226.02101,"1227,68084-0638-21 ",.02)
 ;;68084-0638-21
 ;;9002226.02101,"1227,68084-0864-01 ",.01)
 ;;68084-0864-01
 ;;9002226.02101,"1227,68084-0864-01 ",.02)
 ;;68084-0864-01
 ;;9002226.02101,"1227,68084-0864-11 ",.01)
 ;;68084-0864-11
 ;;9002226.02101,"1227,68084-0864-11 ",.02)
 ;;68084-0864-11
 ;;9002226.02101,"1227,68084-0875-01 ",.01)
 ;;68084-0875-01
 ;;9002226.02101,"1227,68084-0875-01 ",.02)
 ;;68084-0875-01
 ;;9002226.02101,"1227,68084-0875-11 ",.01)
 ;;68084-0875-11
 ;;9002226.02101,"1227,68084-0875-11 ",.02)
 ;;68084-0875-11
 ;;9002226.02101,"1227,68258-3031-01 ",.01)
 ;;68258-3031-01
 ;;9002226.02101,"1227,68258-3031-01 ",.02)
 ;;68258-3031-01
 ;;9002226.02101,"1227,68258-3032-03 ",.01)
 ;;68258-3032-03
 ;;9002226.02101,"1227,68258-3032-03 ",.02)
 ;;68258-3032-03
 ;;9002226.02101,"1227,68258-3033-03 ",.01)
 ;;68258-3033-03
 ;;9002226.02101,"1227,68258-3033-03 ",.02)
 ;;68258-3033-03
 ;;9002226.02101,"1227,68258-8961-06 ",.01)
 ;;68258-8961-06
 ;;9002226.02101,"1227,68258-8961-06 ",.02)
 ;;68258-8961-06
 ;;9002226.02101,"1227,68462-0356-01 ",.01)
 ;;68462-0356-01
 ;;9002226.02101,"1227,68462-0356-01 ",.02)
 ;;68462-0356-01
 ;;9002226.02101,"1227,68462-0380-01 ",.01)
 ;;68462-0380-01
 ;;9002226.02101,"1227,68462-0380-01 ",.02)
 ;;68462-0380-01
 ;;9002226.02101,"1227,68462-0392-05 ",.01)
 ;;68462-0392-05
 ;;9002226.02101,"1227,68462-0392-05 ",.02)
 ;;68462-0392-05
 ;;9002226.02101,"1227,68462-0392-30 ",.01)
 ;;68462-0392-30
 ;;9002226.02101,"1227,68462-0392-30 ",.02)
 ;;68462-0392-30
 ;;9002226.02101,"1227,68462-0392-90 ",.01)
 ;;68462-0392-90
 ;;9002226.02101,"1227,68462-0392-90 ",.02)
 ;;68462-0392-90
 ;;9002226.02101,"1227,68645-0466-54 ",.01)
 ;;68645-0466-54
 ;;9002226.02101,"1227,68645-0466-54 ",.02)
 ;;68645-0466-54
 ;;9002226.02101,"1227,68645-0484-70 ",.01)
 ;;68645-0484-70
 ;;9002226.02101,"1227,68645-0484-70 ",.02)
 ;;68645-0484-70
 ;;9002226.02101,"1227,68788-8988-01 ",.01)
 ;;68788-8988-01
 ;;9002226.02101,"1227,68788-8988-01 ",.02)
 ;;68788-8988-01
 ;;9002226.02101,"1227,68788-8988-02 ",.01)
 ;;68788-8988-02
 ;;9002226.02101,"1227,68788-8988-02 ",.02)
 ;;68788-8988-02
 ;;9002226.02101,"1227,68788-8988-03 ",.01)
 ;;68788-8988-03
 ;;9002226.02101,"1227,68788-8988-03 ",.02)
 ;;68788-8988-03
 ;;9002226.02101,"1227,68788-8988-04 ",.01)
 ;;68788-8988-04
 ;;9002226.02101,"1227,68788-8988-04 ",.02)
 ;;68788-8988-04
 ;;9002226.02101,"1227,68788-8988-06 ",.01)
 ;;68788-8988-06
 ;;9002226.02101,"1227,68788-8988-06 ",.02)
 ;;68788-8988-06
 ;;9002226.02101,"1227,68788-8988-09 ",.01)
 ;;68788-8988-09
 ;;9002226.02101,"1227,68788-8988-09 ",.02)
 ;;68788-8988-09
 ;;9002226.02101,"1227,69452-0105-13 ",.01)
 ;;69452-0105-13
 ;;9002226.02101,"1227,69452-0105-13 ",.02)
 ;;69452-0105-13
 ;;9002226.02101,"1227,69452-0105-19 ",.01)
 ;;69452-0105-19
 ;;9002226.02101,"1227,69452-0105-19 ",.02)
 ;;69452-0105-19
 ;;9002226.02101,"1227,69452-0105-32 ",.01)
 ;;69452-0105-32
 ;;9002226.02101,"1227,69452-0105-32 ",.02)
 ;;69452-0105-32
 ;;9002226.02101,"1227,69452-0106-13 ",.01)
 ;;69452-0106-13
 ;;9002226.02101,"1227,69452-0106-13 ",.02)
 ;;69452-0106-13
 ;;9002226.02101,"1227,69452-0106-19 ",.01)
 ;;69452-0106-19
 ;;9002226.02101,"1227,69452-0106-19 ",.02)
 ;;69452-0106-19
 ;;9002226.02101,"1227,69452-0107-13 ",.01)
 ;;69452-0107-13
 ;;9002226.02101,"1227,69452-0107-13 ",.02)
 ;;69452-0107-13
 ;;9002226.02101,"1227,69452-0107-19 ",.01)
 ;;69452-0107-19
 ;;9002226.02101,"1227,69452-0107-19 ",.02)
 ;;69452-0107-19
 ;;9002226.02101,"1227,75989-0550-06 ",.01)
 ;;75989-0550-06
 ;;9002226.02101,"1227,75989-0550-06 ",.02)
 ;;75989-0550-06
 ;;9002226.02101,"1227,75989-0550-12 ",.01)
 ;;75989-0550-12
 ;;9002226.02101,"1227,75989-0550-12 ",.02)
 ;;75989-0550-12
 ;;9002226.04101,"1227,1",.01)
 ;;BGP
