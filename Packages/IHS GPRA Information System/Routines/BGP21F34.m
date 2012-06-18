BGP21F34 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,23490-5097-02 ",.01)
 ;;23490-5097-02
 ;;9002226.02101,"1195,23490-5097-02 ",.02)
 ;;23490-5097-02
 ;;9002226.02101,"1195,23490-5097-03 ",.01)
 ;;23490-5097-03
 ;;9002226.02101,"1195,23490-5097-03 ",.02)
 ;;23490-5097-03
 ;;9002226.02101,"1195,23490-5098-01 ",.01)
 ;;23490-5098-01
 ;;9002226.02101,"1195,23490-5098-01 ",.02)
 ;;23490-5098-01
 ;;9002226.02101,"1195,23490-5098-02 ",.01)
 ;;23490-5098-02
 ;;9002226.02101,"1195,23490-5098-02 ",.02)
 ;;23490-5098-02
 ;;9002226.02101,"1195,23490-5920-00 ",.01)
 ;;23490-5920-00
 ;;9002226.02101,"1195,23490-5920-00 ",.02)
 ;;23490-5920-00
 ;;9002226.02101,"1195,23490-5920-01 ",.01)
 ;;23490-5920-01
 ;;9002226.02101,"1195,23490-5920-01 ",.02)
 ;;23490-5920-01
 ;;9002226.02101,"1195,23490-5921-01 ",.01)
 ;;23490-5921-01
 ;;9002226.02101,"1195,23490-5921-01 ",.02)
 ;;23490-5921-01
 ;;9002226.02101,"1195,23490-5921-02 ",.01)
 ;;23490-5921-02
 ;;9002226.02101,"1195,23490-5921-02 ",.02)
 ;;23490-5921-02
 ;;9002226.02101,"1195,23490-6203-03 ",.01)
 ;;23490-6203-03
 ;;9002226.02101,"1195,23490-6203-03 ",.02)
 ;;23490-6203-03
 ;;9002226.02101,"1195,23490-6203-06 ",.01)
 ;;23490-6203-06
 ;;9002226.02101,"1195,23490-6203-06 ",.02)
 ;;23490-6203-06
 ;;9002226.02101,"1195,23490-6203-09 ",.01)
 ;;23490-6203-09
 ;;9002226.02101,"1195,23490-6203-09 ",.02)
 ;;23490-6203-09
 ;;9002226.02101,"1195,23490-6503-03 ",.01)
 ;;23490-6503-03
 ;;9002226.02101,"1195,23490-6503-03 ",.02)
 ;;23490-6503-03
 ;;9002226.02101,"1195,23490-6504-03 ",.01)
 ;;23490-6504-03
 ;;9002226.02101,"1195,23490-6504-03 ",.02)
 ;;23490-6504-03
 ;;9002226.02101,"1195,23490-6504-06 ",.01)
 ;;23490-6504-06
 ;;9002226.02101,"1195,23490-6504-06 ",.02)
 ;;23490-6504-06
 ;;9002226.02101,"1195,23490-6504-09 ",.01)
 ;;23490-6504-09
 ;;9002226.02101,"1195,23490-6504-09 ",.02)
 ;;23490-6504-09
 ;;9002226.02101,"1195,23490-7861-03 ",.01)
 ;;23490-7861-03
 ;;9002226.02101,"1195,23490-7861-03 ",.02)
 ;;23490-7861-03
 ;;9002226.02101,"1195,23490-9369-03 ",.01)
 ;;23490-9369-03
 ;;9002226.02101,"1195,23490-9369-03 ",.02)
 ;;23490-9369-03
 ;;9002226.02101,"1195,23490-9369-06 ",.01)
 ;;23490-9369-06
 ;;9002226.02101,"1195,23490-9369-06 ",.02)
 ;;23490-9369-06
 ;;9002226.02101,"1195,23490-9370-03 ",.01)
 ;;23490-9370-03
 ;;9002226.02101,"1195,23490-9370-03 ",.02)
 ;;23490-9370-03
 ;;9002226.02101,"1195,23490-9370-06 ",.01)
 ;;23490-9370-06
 ;;9002226.02101,"1195,23490-9370-06 ",.02)
 ;;23490-9370-06
 ;;9002226.02101,"1195,23490-9371-03 ",.01)
 ;;23490-9371-03
 ;;9002226.02101,"1195,23490-9371-03 ",.02)
 ;;23490-9371-03
 ;;9002226.02101,"1195,23490-9371-06 ",.01)
 ;;23490-9371-06
 ;;9002226.02101,"1195,23490-9371-06 ",.02)
 ;;23490-9371-06
 ;;9002226.02101,"1195,23490-9372-03 ",.01)
 ;;23490-9372-03
 ;;9002226.02101,"1195,23490-9372-03 ",.02)
 ;;23490-9372-03
 ;;9002226.02101,"1195,23490-9372-06 ",.01)
 ;;23490-9372-06
 ;;9002226.02101,"1195,23490-9372-06 ",.02)
 ;;23490-9372-06
 ;;9002226.02101,"1195,23629-0001-10 ",.01)
 ;;23629-0001-10
 ;;9002226.02101,"1195,23629-0001-10 ",.02)
 ;;23629-0001-10
 ;;9002226.02101,"1195,23629-0038-10 ",.01)
 ;;23629-0038-10
 ;;9002226.02101,"1195,23629-0038-10 ",.02)
 ;;23629-0038-10
 ;;9002226.02101,"1195,24090-0470-88 ",.01)
 ;;24090-0470-88
 ;;9002226.02101,"1195,24090-0470-88 ",.02)
 ;;24090-0470-88
 ;;9002226.02101,"1195,24090-0471-88 ",.01)
 ;;24090-0471-88
 ;;9002226.02101,"1195,24090-0471-88 ",.02)
 ;;24090-0471-88
 ;;9002226.02101,"1195,24090-0473-88 ",.01)
 ;;24090-0473-88
 ;;9002226.02101,"1195,24090-0473-88 ",.02)
 ;;24090-0473-88
 ;;9002226.02101,"1195,24090-0479-88 ",.01)
 ;;24090-0479-88
 ;;9002226.02101,"1195,24090-0479-88 ",.02)
 ;;24090-0479-88
 ;;9002226.02101,"1195,29300-0126-01 ",.01)
 ;;29300-0126-01
 ;;9002226.02101,"1195,29300-0126-01 ",.02)
 ;;29300-0126-01
 ;;9002226.02101,"1195,29300-0126-13 ",.01)
 ;;29300-0126-13
 ;;9002226.02101,"1195,29300-0126-13 ",.02)
 ;;29300-0126-13
 ;;9002226.02101,"1195,29300-0127-01 ",.01)
 ;;29300-0127-01
 ;;9002226.02101,"1195,29300-0127-01 ",.02)
 ;;29300-0127-01
 ;;9002226.02101,"1195,29300-0127-13 ",.01)
 ;;29300-0127-13
 ;;9002226.02101,"1195,29300-0127-13 ",.02)
 ;;29300-0127-13
 ;;9002226.02101,"1195,29300-0187-01 ",.01)
 ;;29300-0187-01
 ;;9002226.02101,"1195,29300-0187-01 ",.02)
 ;;29300-0187-01
 ;;9002226.02101,"1195,29300-0187-05 ",.01)
 ;;29300-0187-05
 ;;9002226.02101,"1195,29300-0187-05 ",.02)
 ;;29300-0187-05
 ;;9002226.02101,"1195,29300-0187-13 ",.01)
 ;;29300-0187-13
 ;;9002226.02101,"1195,29300-0187-13 ",.02)
 ;;29300-0187-13
 ;;9002226.02101,"1195,29300-0188-01 ",.01)
 ;;29300-0188-01
 ;;9002226.02101,"1195,29300-0188-01 ",.02)
 ;;29300-0188-01
 ;;9002226.02101,"1195,29300-0188-05 ",.01)
 ;;29300-0188-05
 ;;9002226.02101,"1195,29300-0188-05 ",.02)
 ;;29300-0188-05
 ;;9002226.02101,"1195,29300-0188-13 ",.01)
 ;;29300-0188-13
 ;;9002226.02101,"1195,29300-0188-13 ",.02)
 ;;29300-0188-13
 ;;9002226.02101,"1195,29300-0189-01 ",.01)
 ;;29300-0189-01
 ;;9002226.02101,"1195,29300-0189-01 ",.02)
 ;;29300-0189-01
 ;;9002226.02101,"1195,29300-0189-05 ",.01)
 ;;29300-0189-05
 ;;9002226.02101,"1195,29300-0189-05 ",.02)
 ;;29300-0189-05
 ;;9002226.02101,"1195,29300-0189-13 ",.01)
 ;;29300-0189-13
