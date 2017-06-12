BGP52B13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1813,67544-0194-30 ",.02)
 ;;67544-0194-30
 ;;9002226.02101,"1813,67544-0195-30 ",.01)
 ;;67544-0195-30
 ;;9002226.02101,"1813,67544-0195-30 ",.02)
 ;;67544-0195-30
 ;;9002226.02101,"1813,67544-0195-40 ",.01)
 ;;67544-0195-40
 ;;9002226.02101,"1813,67544-0195-40 ",.02)
 ;;67544-0195-40
 ;;9002226.02101,"1813,67544-0195-45 ",.01)
 ;;67544-0195-45
 ;;9002226.02101,"1813,67544-0195-45 ",.02)
 ;;67544-0195-45
 ;;9002226.02101,"1813,67544-0195-53 ",.01)
 ;;67544-0195-53
 ;;9002226.02101,"1813,67544-0195-53 ",.02)
 ;;67544-0195-53
 ;;9002226.02101,"1813,67544-0195-60 ",.01)
 ;;67544-0195-60
 ;;9002226.02101,"1813,67544-0195-60 ",.02)
 ;;67544-0195-60
 ;;9002226.02101,"1813,67544-0318-15 ",.01)
 ;;67544-0318-15
 ;;9002226.02101,"1813,67544-0318-15 ",.02)
 ;;67544-0318-15
 ;;9002226.02101,"1813,67544-0318-30 ",.01)
 ;;67544-0318-30
 ;;9002226.02101,"1813,67544-0318-30 ",.02)
 ;;67544-0318-30
 ;;9002226.02101,"1813,67544-0318-35 ",.01)
 ;;67544-0318-35
 ;;9002226.02101,"1813,67544-0318-35 ",.02)
 ;;67544-0318-35
 ;;9002226.02101,"1813,67544-0318-40 ",.01)
 ;;67544-0318-40
 ;;9002226.02101,"1813,67544-0318-40 ",.02)
 ;;67544-0318-40
 ;;9002226.02101,"1813,67544-0318-45 ",.01)
 ;;67544-0318-45
 ;;9002226.02101,"1813,67544-0318-45 ",.02)
 ;;67544-0318-45
 ;;9002226.02101,"1813,67544-0318-50 ",.01)
 ;;67544-0318-50
 ;;9002226.02101,"1813,67544-0318-50 ",.02)
 ;;67544-0318-50
 ;;9002226.02101,"1813,67544-0318-53 ",.01)
 ;;67544-0318-53
 ;;9002226.02101,"1813,67544-0318-53 ",.02)
 ;;67544-0318-53
 ;;9002226.02101,"1813,67544-0318-55 ",.01)
 ;;67544-0318-55
 ;;9002226.02101,"1813,67544-0318-55 ",.02)
 ;;67544-0318-55
 ;;9002226.02101,"1813,67544-0318-60 ",.01)
 ;;67544-0318-60
 ;;9002226.02101,"1813,67544-0318-60 ",.02)
 ;;67544-0318-60
 ;;9002226.02101,"1813,67544-0318-61 ",.01)
 ;;67544-0318-61
 ;;9002226.02101,"1813,67544-0318-61 ",.02)
 ;;67544-0318-61
 ;;9002226.02101,"1813,67544-0318-70 ",.01)
 ;;67544-0318-70
 ;;9002226.02101,"1813,67544-0318-70 ",.02)
 ;;67544-0318-70
 ;;9002226.02101,"1813,67544-0401-15 ",.01)
 ;;67544-0401-15
 ;;9002226.02101,"1813,67544-0401-15 ",.02)
 ;;67544-0401-15
 ;;9002226.02101,"1813,67544-0401-30 ",.01)
 ;;67544-0401-30
 ;;9002226.02101,"1813,67544-0401-30 ",.02)
 ;;67544-0401-30
 ;;9002226.02101,"1813,67544-0401-35 ",.01)
 ;;67544-0401-35
 ;;9002226.02101,"1813,67544-0401-35 ",.02)
 ;;67544-0401-35
 ;;9002226.02101,"1813,67544-0401-40 ",.01)
 ;;67544-0401-40
 ;;9002226.02101,"1813,67544-0401-40 ",.02)
 ;;67544-0401-40
 ;;9002226.02101,"1813,67544-0401-45 ",.01)
 ;;67544-0401-45
 ;;9002226.02101,"1813,67544-0401-45 ",.02)
 ;;67544-0401-45
 ;;9002226.02101,"1813,67544-0401-50 ",.01)
 ;;67544-0401-50
 ;;9002226.02101,"1813,67544-0401-50 ",.02)
 ;;67544-0401-50
 ;;9002226.02101,"1813,67544-0401-53 ",.01)
 ;;67544-0401-53
 ;;9002226.02101,"1813,67544-0401-53 ",.02)
 ;;67544-0401-53
 ;;9002226.02101,"1813,67544-0401-55 ",.01)
 ;;67544-0401-55
 ;;9002226.02101,"1813,67544-0401-55 ",.02)
 ;;67544-0401-55
 ;;9002226.02101,"1813,67544-0401-60 ",.01)
 ;;67544-0401-60
 ;;9002226.02101,"1813,67544-0401-60 ",.02)
 ;;67544-0401-60
 ;;9002226.02101,"1813,67544-0401-61 ",.01)
 ;;67544-0401-61
 ;;9002226.02101,"1813,67544-0401-61 ",.02)
 ;;67544-0401-61
 ;;9002226.02101,"1813,67544-0401-70 ",.01)
 ;;67544-0401-70
 ;;9002226.02101,"1813,67544-0401-70 ",.02)
 ;;67544-0401-70
 ;;9002226.02101,"1813,68084-0027-01 ",.01)
 ;;68084-0027-01
 ;;9002226.02101,"1813,68084-0027-01 ",.02)
 ;;68084-0027-01
 ;;9002226.02101,"1813,68084-0027-11 ",.01)
 ;;68084-0027-11
 ;;9002226.02101,"1813,68084-0027-11 ",.02)
 ;;68084-0027-11
 ;;9002226.02101,"1813,68084-0027-77 ",.01)
 ;;68084-0027-77
 ;;9002226.02101,"1813,68084-0027-77 ",.02)
 ;;68084-0027-77
 ;;9002226.02101,"1813,68258-6067-03 ",.01)
 ;;68258-6067-03
 ;;9002226.02101,"1813,68258-6067-03 ",.02)
 ;;68258-6067-03
 ;;9002226.02101,"1813,68258-6068-03 ",.01)
 ;;68258-6068-03
 ;;9002226.02101,"1813,68258-6068-03 ",.02)
 ;;68258-6068-03
 ;;9002226.02101,"1813,68382-0052-01 ",.01)
 ;;68382-0052-01
 ;;9002226.02101,"1813,68382-0052-01 ",.02)
 ;;68382-0052-01
 ;;9002226.02101,"1813,68382-0052-10 ",.01)
 ;;68382-0052-10
 ;;9002226.02101,"1813,68382-0052-10 ",.02)
 ;;68382-0052-10
 ;;9002226.02101,"1813,68382-0053-01 ",.01)
 ;;68382-0053-01
 ;;9002226.02101,"1813,68382-0053-01 ",.02)
 ;;68382-0053-01
 ;;9002226.02101,"1813,68382-0053-10 ",.01)
 ;;68382-0053-10
 ;;9002226.02101,"1813,68382-0053-10 ",.02)
 ;;68382-0053-10
 ;;9002226.02101,"1813,68382-0054-01 ",.01)
 ;;68382-0054-01
 ;;9002226.02101,"1813,68382-0054-01 ",.02)
 ;;68382-0054-01
 ;;9002226.02101,"1813,68382-0054-10 ",.01)
 ;;68382-0054-10
 ;;9002226.02101,"1813,68382-0054-10 ",.02)
 ;;68382-0054-10
 ;;9002226.02101,"1813,68382-0055-01 ",.01)
 ;;68382-0055-01
 ;;9002226.02101,"1813,68382-0055-01 ",.02)
 ;;68382-0055-01
 ;;9002226.02101,"1813,68382-0055-10 ",.01)
 ;;68382-0055-10
 ;;9002226.02101,"1813,68382-0055-10 ",.02)
 ;;68382-0055-10
 ;;9002226.02101,"1813,68382-0056-01 ",.01)
 ;;68382-0056-01
 ;;9002226.02101,"1813,68382-0056-01 ",.02)
 ;;68382-0056-01
 ;;9002226.02101,"1813,68382-0056-10 ",.01)
 ;;68382-0056-10
 ;;9002226.02101,"1813,68382-0056-10 ",.02)
 ;;68382-0056-10
 ;;9002226.02101,"1813,68382-0056-16 ",.01)
 ;;68382-0056-16
 ;;9002226.02101,"1813,68382-0056-16 ",.02)
 ;;68382-0056-16
 ;;9002226.02101,"1813,68382-0057-01 ",.01)
 ;;68382-0057-01
 ;;9002226.02101,"1813,68382-0057-01 ",.02)
 ;;68382-0057-01
 ;;9002226.02101,"1813,68382-0058-01 ",.01)
 ;;68382-0058-01
 ;;9002226.02101,"1813,68382-0058-01 ",.02)
 ;;68382-0058-01
 ;;9002226.02101,"1813,68382-0059-01 ",.01)
 ;;68382-0059-01
 ;;9002226.02101,"1813,68382-0059-01 ",.02)
 ;;68382-0059-01
 ;;9002226.02101,"1813,68382-0064-01 ",.01)
 ;;68382-0064-01
 ;;9002226.02101,"1813,68382-0064-01 ",.02)
 ;;68382-0064-01
 ;;9002226.02101,"1813,68382-0064-10 ",.01)
 ;;68382-0064-10
 ;;9002226.02101,"1813,68382-0064-10 ",.02)
 ;;68382-0064-10
 ;;9002226.02101,"1813,68883-0010-05 ",.01)
 ;;68883-0010-05
 ;;9002226.02101,"1813,68883-0010-05 ",.02)
 ;;68883-0010-05
 ;;9002226.02101,"1813,68883-0100-03 ",.01)
 ;;68883-0100-03
 ;;9002226.02101,"1813,68883-0100-03 ",.02)
 ;;68883-0100-03
 ;;9002226.02101,"1813,68883-0100-05 ",.01)
 ;;68883-0100-05
 ;;9002226.02101,"1813,68883-0100-05 ",.02)
 ;;68883-0100-05
