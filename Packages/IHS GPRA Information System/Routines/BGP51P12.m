BGP51P12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,23155-0113-01 ",.01)
 ;;23155-0113-01
 ;;9002226.02101,"1195,23155-0113-01 ",.02)
 ;;23155-0113-01
 ;;9002226.02101,"1195,23155-0114-01 ",.01)
 ;;23155-0114-01
 ;;9002226.02101,"1195,23155-0114-01 ",.02)
 ;;23155-0114-01
 ;;9002226.02101,"1195,23155-0114-05 ",.01)
 ;;23155-0114-05
 ;;9002226.02101,"1195,23155-0114-05 ",.02)
 ;;23155-0114-05
 ;;9002226.02101,"1195,23490-1977-01 ",.01)
 ;;23490-1977-01
 ;;9002226.02101,"1195,23490-1977-01 ",.02)
 ;;23490-1977-01
 ;;9002226.02101,"1195,23490-1977-03 ",.01)
 ;;23490-1977-03
 ;;9002226.02101,"1195,23490-1977-03 ",.02)
 ;;23490-1977-03
 ;;9002226.02101,"1195,23490-5096-01 ",.01)
 ;;23490-5096-01
 ;;9002226.02101,"1195,23490-5096-01 ",.02)
 ;;23490-5096-01
 ;;9002226.02101,"1195,23490-5096-02 ",.01)
 ;;23490-5096-02
 ;;9002226.02101,"1195,23490-5096-02 ",.02)
 ;;23490-5096-02
 ;;9002226.02101,"1195,23490-5096-03 ",.01)
 ;;23490-5096-03
 ;;9002226.02101,"1195,23490-5096-03 ",.02)
 ;;23490-5096-03
 ;;9002226.02101,"1195,23490-5097-01 ",.01)
 ;;23490-5097-01
 ;;9002226.02101,"1195,23490-5097-01 ",.02)
 ;;23490-5097-01
 ;;9002226.02101,"1195,23490-5097-02 ",.01)
 ;;23490-5097-02
 ;;9002226.02101,"1195,23490-5097-02 ",.02)
 ;;23490-5097-02
 ;;9002226.02101,"1195,23490-5097-03 ",.01)
 ;;23490-5097-03
 ;;9002226.02101,"1195,23490-5097-03 ",.02)
 ;;23490-5097-03
 ;;9002226.02101,"1195,23490-5097-09 ",.01)
 ;;23490-5097-09
 ;;9002226.02101,"1195,23490-5097-09 ",.02)
 ;;23490-5097-09
 ;;9002226.02101,"1195,23490-5098-01 ",.01)
 ;;23490-5098-01
 ;;9002226.02101,"1195,23490-5098-01 ",.02)
 ;;23490-5098-01
 ;;9002226.02101,"1195,23490-5098-02 ",.01)
 ;;23490-5098-02
 ;;9002226.02101,"1195,23490-5098-02 ",.02)
 ;;23490-5098-02
 ;;9002226.02101,"1195,23490-5098-09 ",.01)
 ;;23490-5098-09
 ;;9002226.02101,"1195,23490-5098-09 ",.02)
 ;;23490-5098-09
 ;;9002226.02101,"1195,23490-5300-03 ",.01)
 ;;23490-5300-03
 ;;9002226.02101,"1195,23490-5300-03 ",.02)
 ;;23490-5300-03
 ;;9002226.02101,"1195,23490-5300-09 ",.01)
 ;;23490-5300-09
 ;;9002226.02101,"1195,23490-5300-09 ",.02)
 ;;23490-5300-09
 ;;9002226.02101,"1195,23490-5915-00 ",.01)
 ;;23490-5915-00
 ;;9002226.02101,"1195,23490-5915-00 ",.02)
 ;;23490-5915-00
 ;;9002226.02101,"1195,23490-5917-01 ",.01)
 ;;23490-5917-01
 ;;9002226.02101,"1195,23490-5917-01 ",.02)
 ;;23490-5917-01
 ;;9002226.02101,"1195,23490-5920-00 ",.01)
 ;;23490-5920-00
 ;;9002226.02101,"1195,23490-5920-00 ",.02)
 ;;23490-5920-00
 ;;9002226.02101,"1195,23490-5920-01 ",.01)
 ;;23490-5920-01
 ;;9002226.02101,"1195,23490-5920-01 ",.02)
 ;;23490-5920-01
 ;;9002226.02101,"1195,23490-5920-06 ",.01)
 ;;23490-5920-06
 ;;9002226.02101,"1195,23490-5920-06 ",.02)
 ;;23490-5920-06
 ;;9002226.02101,"1195,23490-5921-01 ",.01)
 ;;23490-5921-01
 ;;9002226.02101,"1195,23490-5921-01 ",.02)
 ;;23490-5921-01
 ;;9002226.02101,"1195,23490-5921-02 ",.01)
 ;;23490-5921-02
 ;;9002226.02101,"1195,23490-5921-02 ",.02)
 ;;23490-5921-02
 ;;9002226.02101,"1195,23490-5921-03 ",.01)
 ;;23490-5921-03
 ;;9002226.02101,"1195,23490-5921-03 ",.02)
 ;;23490-5921-03
 ;;9002226.02101,"1195,23490-5927-03 ",.01)
 ;;23490-5927-03
 ;;9002226.02101,"1195,23490-5927-03 ",.02)
 ;;23490-5927-03
 ;;9002226.02101,"1195,23490-5927-09 ",.01)
 ;;23490-5927-09
 ;;9002226.02101,"1195,23490-5927-09 ",.02)
 ;;23490-5927-09
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
 ;;9002226.02101,"1195,24090-0450-85 ",.01)
 ;;24090-0450-85
 ;;9002226.02101,"1195,24090-0450-85 ",.02)
 ;;24090-0450-85
 ;;9002226.02101,"1195,24090-0451-85 ",.01)
 ;;24090-0451-85
 ;;9002226.02101,"1195,24090-0451-85 ",.02)
 ;;24090-0451-85
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
 ;;9002226.02101,"1195,29300-0189-13 ",.02)
 ;;29300-0189-13
 ;;9002226.02101,"1195,30698-0460-01 ",.01)
 ;;30698-0460-01
 ;;9002226.02101,"1195,30698-0460-01 ",.02)
 ;;30698-0460-01
 ;;9002226.02101,"1195,33261-0221-30 ",.01)
 ;;33261-0221-30
 ;;9002226.02101,"1195,33261-0221-30 ",.02)
 ;;33261-0221-30
 ;;9002226.02101,"1195,33261-0221-60 ",.01)
 ;;33261-0221-60
 ;;9002226.02101,"1195,33261-0221-60 ",.02)
 ;;33261-0221-60
 ;;9002226.02101,"1195,33261-0221-90 ",.01)
 ;;33261-0221-90
 ;;9002226.02101,"1195,33261-0221-90 ",.02)
 ;;33261-0221-90
 ;;9002226.02101,"1195,33261-0334-00 ",.01)
 ;;33261-0334-00
 ;;9002226.02101,"1195,33261-0334-00 ",.02)
 ;;33261-0334-00
 ;;9002226.02101,"1195,33261-0334-30 ",.01)
 ;;33261-0334-30
 ;;9002226.02101,"1195,33261-0334-30 ",.02)
 ;;33261-0334-30
 ;;9002226.02101,"1195,33261-0334-60 ",.01)
 ;;33261-0334-60
 ;;9002226.02101,"1195,33261-0334-60 ",.02)
 ;;33261-0334-60
 ;;9002226.02101,"1195,33261-0334-90 ",.01)
 ;;33261-0334-90
 ;;9002226.02101,"1195,33261-0334-90 ",.02)
 ;;33261-0334-90
 ;;9002226.02101,"1195,33261-0349-30 ",.01)
 ;;33261-0349-30
 ;;9002226.02101,"1195,33261-0349-30 ",.02)
 ;;33261-0349-30
 ;;9002226.02101,"1195,33261-0349-60 ",.01)
 ;;33261-0349-60
 ;;9002226.02101,"1195,33261-0349-60 ",.02)
 ;;33261-0349-60
 ;;9002226.02101,"1195,33261-0349-90 ",.01)
 ;;33261-0349-90
 ;;9002226.02101,"1195,33261-0349-90 ",.02)
 ;;33261-0349-90
 ;;9002226.02101,"1195,33261-0517-00 ",.01)
 ;;33261-0517-00
 ;;9002226.02101,"1195,33261-0517-00 ",.02)
 ;;33261-0517-00
 ;;9002226.02101,"1195,33261-0517-30 ",.01)
 ;;33261-0517-30
 ;;9002226.02101,"1195,33261-0517-30 ",.02)
 ;;33261-0517-30
 ;;9002226.02101,"1195,33261-0517-60 ",.01)
 ;;33261-0517-60
 ;;9002226.02101,"1195,33261-0517-60 ",.02)
 ;;33261-0517-60
 ;;9002226.02101,"1195,33261-0517-90 ",.01)
 ;;33261-0517-90
 ;;9002226.02101,"1195,33261-0517-90 ",.02)
 ;;33261-0517-90
 ;;9002226.02101,"1195,33261-0537-00 ",.01)
 ;;33261-0537-00
 ;;9002226.02101,"1195,33261-0537-00 ",.02)
 ;;33261-0537-00
 ;;9002226.02101,"1195,33261-0537-30 ",.01)
 ;;33261-0537-30
 ;;9002226.02101,"1195,33261-0537-30 ",.02)
 ;;33261-0537-30
 ;;9002226.02101,"1195,33261-0537-60 ",.01)
 ;;33261-0537-60
 ;;9002226.02101,"1195,33261-0537-60 ",.02)
 ;;33261-0537-60
 ;;9002226.02101,"1195,33261-0537-90 ",.01)
 ;;33261-0537-90
 ;;9002226.02101,"1195,33261-0537-90 ",.02)
 ;;33261-0537-90
 ;;9002226.02101,"1195,33261-0544-00 ",.01)
 ;;33261-0544-00
 ;;9002226.02101,"1195,33261-0544-00 ",.02)
 ;;33261-0544-00
 ;;9002226.02101,"1195,33261-0544-30 ",.01)
 ;;33261-0544-30
 ;;9002226.02101,"1195,33261-0544-30 ",.02)
 ;;33261-0544-30
 ;;9002226.02101,"1195,33261-0544-60 ",.01)
 ;;33261-0544-60
 ;;9002226.02101,"1195,33261-0544-60 ",.02)
 ;;33261-0544-60
 ;;9002226.02101,"1195,33261-0544-90 ",.01)
 ;;33261-0544-90
 ;;9002226.02101,"1195,33261-0544-90 ",.02)
 ;;33261-0544-90
 ;;9002226.02101,"1195,33261-0545-00 ",.01)
 ;;33261-0545-00
 ;;9002226.02101,"1195,33261-0545-00 ",.02)
 ;;33261-0545-00
 ;;9002226.02101,"1195,33261-0545-30 ",.01)
 ;;33261-0545-30
 ;;9002226.02101,"1195,33261-0545-30 ",.02)
 ;;33261-0545-30
 ;;9002226.02101,"1195,33261-0545-60 ",.01)
 ;;33261-0545-60
 ;;9002226.02101,"1195,33261-0545-60 ",.02)
 ;;33261-0545-60
 ;;9002226.02101,"1195,33261-0545-90 ",.01)
 ;;33261-0545-90
 ;;9002226.02101,"1195,33261-0545-90 ",.02)
 ;;33261-0545-90
 ;;9002226.02101,"1195,33261-0642-30 ",.01)
 ;;33261-0642-30
 ;;9002226.02101,"1195,33261-0642-30 ",.02)
 ;;33261-0642-30
 ;;9002226.02101,"1195,33261-0642-60 ",.01)
 ;;33261-0642-60
 ;;9002226.02101,"1195,33261-0642-60 ",.02)
 ;;33261-0642-60
 ;;9002226.02101,"1195,33261-0642-90 ",.01)
 ;;33261-0642-90
 ;;9002226.02101,"1195,33261-0642-90 ",.02)
 ;;33261-0642-90
 ;;9002226.02101,"1195,33261-0643-30 ",.01)
 ;;33261-0643-30
 ;;9002226.02101,"1195,33261-0643-30 ",.02)
 ;;33261-0643-30
 ;;9002226.02101,"1195,33261-0643-60 ",.01)
 ;;33261-0643-60
 ;;9002226.02101,"1195,33261-0643-60 ",.02)
 ;;33261-0643-60
 ;;9002226.02101,"1195,33261-0643-90 ",.01)
 ;;33261-0643-90
 ;;9002226.02101,"1195,33261-0643-90 ",.02)
 ;;33261-0643-90
 ;;9002226.02101,"1195,33261-0848-00 ",.01)
 ;;33261-0848-00
 ;;9002226.02101,"1195,33261-0848-00 ",.02)
 ;;33261-0848-00
 ;;9002226.02101,"1195,33261-0848-30 ",.01)
 ;;33261-0848-30
 ;;9002226.02101,"1195,33261-0848-30 ",.02)
 ;;33261-0848-30
 ;;9002226.02101,"1195,33261-0848-60 ",.01)
 ;;33261-0848-60
 ;;9002226.02101,"1195,33261-0848-60 ",.02)
 ;;33261-0848-60
 ;;9002226.02101,"1195,33261-0848-90 ",.01)
 ;;33261-0848-90
 ;;9002226.02101,"1195,33261-0848-90 ",.02)
 ;;33261-0848-90
 ;;9002226.02101,"1195,33261-0855-00 ",.01)
 ;;33261-0855-00
 ;;9002226.02101,"1195,33261-0855-00 ",.02)
 ;;33261-0855-00
 ;;9002226.02101,"1195,33261-0855-30 ",.01)
 ;;33261-0855-30
 ;;9002226.02101,"1195,33261-0855-30 ",.02)
 ;;33261-0855-30
 ;;9002226.02101,"1195,33261-0855-60 ",.01)
 ;;33261-0855-60
 ;;9002226.02101,"1195,33261-0855-60 ",.02)
 ;;33261-0855-60
 ;;9002226.02101,"1195,33261-0855-90 ",.01)
 ;;33261-0855-90
 ;;9002226.02101,"1195,33261-0855-90 ",.02)
 ;;33261-0855-90
 ;;9002226.02101,"1195,33261-0898-00 ",.01)
 ;;33261-0898-00
 ;;9002226.02101,"1195,33261-0898-00 ",.02)
 ;;33261-0898-00
 ;;9002226.02101,"1195,33261-0898-30 ",.01)
 ;;33261-0898-30
 ;;9002226.02101,"1195,33261-0898-30 ",.02)
 ;;33261-0898-30
 ;;9002226.02101,"1195,33261-0898-60 ",.01)
 ;;33261-0898-60
 ;;9002226.02101,"1195,33261-0898-60 ",.02)
 ;;33261-0898-60
 ;;9002226.02101,"1195,33261-0898-90 ",.01)
 ;;33261-0898-90
 ;;9002226.02101,"1195,33261-0898-90 ",.02)
 ;;33261-0898-90
 ;;9002226.02101,"1195,33261-0942-00 ",.01)
 ;;33261-0942-00
 ;;9002226.02101,"1195,33261-0942-00 ",.02)
 ;;33261-0942-00
 ;;9002226.02101,"1195,33261-0942-30 ",.01)
 ;;33261-0942-30
 ;;9002226.02101,"1195,33261-0942-30 ",.02)
 ;;33261-0942-30
 ;;9002226.02101,"1195,33261-0942-60 ",.01)
 ;;33261-0942-60
