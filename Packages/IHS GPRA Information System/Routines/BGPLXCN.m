BGPLXCN ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 18, 2003 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"781,27199-9 ",.01)
 ;;27199-9
 ;;9002226.02101,"781,27199-9 ",.02)
 ;;27199-9
 ;;9002226.02101,"781,27201-3 ",.01)
 ;;27201-3
 ;;9002226.02101,"781,27201-3 ",.02)
 ;;27201-3
 ;;9002226.02101,"781,27254-2 ",.01)
 ;;27254-2
 ;;9002226.02101,"781,27254-2 ",.02)
 ;;27254-2
 ;;9002226.02101,"781,27367-2 ",.01)
 ;;27367-2
 ;;9002226.02101,"781,27367-2 ",.02)
 ;;27367-2
 ;;9002226.02101,"781,27411-8 ",.01)
 ;;27411-8
 ;;9002226.02101,"781,27411-8 ",.02)
 ;;27411-8
 ;;9002226.02101,"781,27892-9 ",.01)
 ;;27892-9
 ;;9002226.02101,"781,27892-9 ",.02)
 ;;27892-9
 ;;9002226.02101,"781,27977-8 ",.01)
 ;;27977-8
 ;;9002226.02101,"781,27977-8 ",.02)
 ;;27977-8
 ;;9002226.02101,"781,27978-6 ",.01)
 ;;27978-6
 ;;9002226.02101,"781,27978-6 ",.02)
 ;;27978-6
 ;;9002226.02101,"781,27997-6 ",.01)
 ;;27997-6
 ;;9002226.02101,"781,27997-6 ",.02)
 ;;27997-6
 ;;9002226.02101,"781,28584-1 ",.01)
 ;;28584-1
 ;;9002226.02101,"781,28584-1 ",.02)
 ;;28584-1
 ;;9002226.02101,"781,28585-8 ",.01)
 ;;28585-8
 ;;9002226.02101,"781,28585-8 ",.02)
 ;;28585-8
 ;;9002226.02101,"781,28586-6 ",.01)
 ;;28586-6
 ;;9002226.02101,"781,28586-6 ",.02)
 ;;28586-6
 ;;9002226.02101,"781,28587-4 ",.01)
 ;;28587-4
 ;;9002226.02101,"781,28587-4 ",.02)
 ;;28587-4
 ;;9002226.02101,"781,28588-2 ",.01)
 ;;28588-2
 ;;9002226.02101,"781,28588-2 ",.02)
 ;;28588-2
 ;;9002226.02101,"781,28589-0 ",.01)
 ;;28589-0
 ;;9002226.02101,"781,28589-0 ",.02)
 ;;28589-0
 ;;9002226.02101,"781,28590-8 ",.01)
 ;;28590-8
 ;;9002226.02101,"781,28590-8 ",.02)
 ;;28590-8
 ;;9002226.02101,"781,28591-6 ",.01)
 ;;28591-6
 ;;9002226.02101,"781,28591-6 ",.02)
 ;;28591-6
 ;;9002226.02101,"781,28592-4 ",.01)
 ;;28592-4
 ;;9002226.02101,"781,28592-4 ",.02)
 ;;28592-4
 ;;9002226.02101,"781,28593-2 ",.01)
 ;;28593-2
 ;;9002226.02101,"781,28593-2 ",.02)
 ;;28593-2
 ;;9002226.02101,"781,28594-0 ",.01)
 ;;28594-0
 ;;9002226.02101,"781,28594-0 ",.02)
 ;;28594-0
 ;;9002226.02101,"781,28595-7 ",.01)
 ;;28595-7
 ;;9002226.02101,"781,28595-7 ",.02)
 ;;28595-7
 ;;9002226.02101,"781,28596-5 ",.01)
 ;;28596-5
 ;;9002226.02101,"781,28596-5 ",.02)
 ;;28596-5
 ;;9002226.02101,"781,28597-3 ",.01)
 ;;28597-3
 ;;9002226.02101,"781,28597-3 ",.02)
 ;;28597-3
 ;;9002226.02101,"781,28598-1 ",.01)
 ;;28598-1
 ;;9002226.02101,"781,28598-1 ",.02)
 ;;28598-1
 ;;9002226.02101,"781,28599-9 ",.01)
 ;;28599-9
 ;;9002226.02101,"781,28599-9 ",.02)
 ;;28599-9
 ;;9002226.02101,"781,28600-5 ",.01)
 ;;28600-5
 ;;9002226.02101,"781,28600-5 ",.02)
 ;;28600-5
 ;;9002226.02101,"781,28601-3 ",.01)
 ;;28601-3
 ;;9002226.02101,"781,28601-3 ",.02)
 ;;28601-3
 ;;9002226.02101,"781,28602-1 ",.01)
 ;;28602-1
 ;;9002226.02101,"781,28602-1 ",.02)
 ;;28602-1
 ;;9002226.02101,"781,28603-9 ",.01)
 ;;28603-9
 ;;9002226.02101,"781,28603-9 ",.02)
 ;;28603-9
 ;;9002226.02101,"781,28604-7 ",.01)
 ;;28604-7
 ;;9002226.02101,"781,28604-7 ",.02)
 ;;28604-7
 ;;9002226.02101,"781,28605-4 ",.01)
 ;;28605-4
 ;;9002226.02101,"781,28605-4 ",.02)
 ;;28605-4
 ;;9002226.02101,"781,28606-2 ",.01)
 ;;28606-2
 ;;9002226.02101,"781,28606-2 ",.02)
 ;;28606-2
 ;;9002226.02101,"781,28608-8 ",.01)
 ;;28608-8
 ;;9002226.02101,"781,28608-8 ",.02)
 ;;28608-8
 ;;9002226.02101,"781,28609-6 ",.01)
 ;;28609-6
 ;;9002226.02101,"781,28609-6 ",.02)
 ;;28609-6
 ;;9002226.02101,"781,28610-4 ",.01)
 ;;28610-4
 ;;9002226.02101,"781,28610-4 ",.02)
 ;;28610-4
 ;;9002226.02101,"781,2890-2 ",.01)
 ;;2890-2
 ;;9002226.02101,"781,2890-2 ",.02)
 ;;2890-2
 ;;9002226.02101,"781,29155-9 ",.01)
 ;;29155-9
 ;;9002226.02101,"781,29155-9 ",.02)
 ;;29155-9
 ;;9002226.02101,"781,29157-5 ",.01)
 ;;29157-5
 ;;9002226.02101,"781,29157-5 ",.02)
 ;;29157-5
 ;;9002226.02101,"781,29244-1 ",.01)
 ;;29244-1
 ;;9002226.02101,"781,29244-1 ",.02)
 ;;29244-1
 ;;9002226.02101,"781,29500-6 ",.01)
 ;;29500-6
 ;;9002226.02101,"781,29500-6 ",.02)
 ;;29500-6
 ;;9002226.02101,"781,29501-4 ",.01)
 ;;29501-4
 ;;9002226.02101,"781,29501-4 ",.02)
 ;;29501-4
 ;;9002226.02101,"781,29502-2 ",.01)
 ;;29502-2
 ;;9002226.02101,"781,29502-2 ",.02)
 ;;29502-2
 ;;9002226.02101,"781,29503-0 ",.01)
 ;;29503-0
 ;;9002226.02101,"781,29503-0 ",.02)
 ;;29503-0
 ;;9002226.02101,"781,29504-8 ",.01)
 ;;29504-8
 ;;9002226.02101,"781,29504-8 ",.02)
 ;;29504-8
 ;;9002226.02101,"781,29505-5 ",.01)
 ;;29505-5
 ;;9002226.02101,"781,29505-5 ",.02)
 ;;29505-5
 ;;9002226.02101,"781,29506-3 ",.01)
 ;;29506-3
 ;;9002226.02101,"781,29506-3 ",.02)
 ;;29506-3
 ;;9002226.02101,"781,29507-1 ",.01)
 ;;29507-1
 ;;9002226.02101,"781,29507-1 ",.02)
 ;;29507-1
 ;;9002226.02101,"781,29508-9 ",.01)
 ;;29508-9
 ;;9002226.02101,"781,29508-9 ",.02)
 ;;29508-9
 ;;9002226.02101,"781,29509-7 ",.01)
 ;;29509-7
 ;;9002226.02101,"781,29509-7 ",.02)
 ;;29509-7
 ;;9002226.02101,"781,29510-5 ",.01)
 ;;29510-5
 ;;9002226.02101,"781,29510-5 ",.02)
 ;;29510-5
 ;;9002226.02101,"781,29511-3 ",.01)
 ;;29511-3
 ;;9002226.02101,"781,29511-3 ",.02)
 ;;29511-3
 ;;9002226.02101,"781,29514-7 ",.01)
 ;;29514-7
 ;;9002226.02101,"781,29514-7 ",.02)
 ;;29514-7
 ;;9002226.02101,"781,29515-4 ",.01)
 ;;29515-4
