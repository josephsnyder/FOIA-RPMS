BGP71T15 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1218,42291-0224-18 ",.01)
 ;;42291-0224-18
 ;;9002226.02101,"1218,42291-0224-18 ",.02)
 ;;42291-0224-18
 ;;9002226.02101,"1218,42291-0224-30 ",.01)
 ;;42291-0224-30
 ;;9002226.02101,"1218,42291-0224-30 ",.02)
 ;;42291-0224-30
 ;;9002226.02101,"1218,42291-0224-50 ",.01)
 ;;42291-0224-50
 ;;9002226.02101,"1218,42291-0224-50 ",.02)
 ;;42291-0224-50
 ;;9002226.02101,"1218,42291-0224-60 ",.01)
 ;;42291-0224-60
 ;;9002226.02101,"1218,42291-0224-60 ",.02)
 ;;42291-0224-60
 ;;9002226.02101,"1218,42291-0224-90 ",.01)
 ;;42291-0224-90
 ;;9002226.02101,"1218,42291-0224-90 ",.02)
 ;;42291-0224-90
 ;;9002226.02101,"1218,42543-0001-01 ",.01)
 ;;42543-0001-01
 ;;9002226.02101,"1218,42543-0001-01 ",.02)
 ;;42543-0001-01
 ;;9002226.02101,"1218,42543-0001-10 ",.01)
 ;;42543-0001-10
 ;;9002226.02101,"1218,42543-0001-10 ",.02)
 ;;42543-0001-10
 ;;9002226.02101,"1218,42543-0002-01 ",.01)
 ;;42543-0002-01
 ;;9002226.02101,"1218,42543-0002-01 ",.02)
 ;;42543-0002-01
 ;;9002226.02101,"1218,42543-0002-10 ",.01)
 ;;42543-0002-10
 ;;9002226.02101,"1218,42543-0002-10 ",.02)
 ;;42543-0002-10
 ;;9002226.02101,"1218,42543-0003-01 ",.01)
 ;;42543-0003-01
 ;;9002226.02101,"1218,42543-0003-01 ",.02)
 ;;42543-0003-01
 ;;9002226.02101,"1218,42543-0003-10 ",.01)
 ;;42543-0003-10
 ;;9002226.02101,"1218,42543-0003-10 ",.02)
 ;;42543-0003-10
 ;;9002226.02101,"1218,42806-0038-01 ",.01)
 ;;42806-0038-01
 ;;9002226.02101,"1218,42806-0038-01 ",.02)
 ;;42806-0038-01
 ;;9002226.02101,"1218,42806-0039-01 ",.01)
 ;;42806-0039-01
 ;;9002226.02101,"1218,42806-0039-01 ",.02)
 ;;42806-0039-01
 ;;9002226.02101,"1218,43063-0006-01 ",.01)
 ;;43063-0006-01
 ;;9002226.02101,"1218,43063-0006-01 ",.02)
 ;;43063-0006-01
 ;;9002226.02101,"1218,43063-0006-90 ",.01)
 ;;43063-0006-90
 ;;9002226.02101,"1218,43063-0006-90 ",.02)
 ;;43063-0006-90
 ;;9002226.02101,"1218,43063-0006-93 ",.01)
 ;;43063-0006-93
 ;;9002226.02101,"1218,43063-0006-93 ",.02)
 ;;43063-0006-93
 ;;9002226.02101,"1218,43063-0062-06 ",.01)
 ;;43063-0062-06
 ;;9002226.02101,"1218,43063-0062-06 ",.02)
 ;;43063-0062-06
 ;;9002226.02101,"1218,43063-0062-30 ",.01)
 ;;43063-0062-30
 ;;9002226.02101,"1218,43063-0062-30 ",.02)
 ;;43063-0062-30
 ;;9002226.02101,"1218,43063-0062-90 ",.01)
 ;;43063-0062-90
 ;;9002226.02101,"1218,43063-0062-90 ",.02)
 ;;43063-0062-90
 ;;9002226.02101,"1218,43063-0064-06 ",.01)
 ;;43063-0064-06
 ;;9002226.02101,"1218,43063-0064-06 ",.02)
 ;;43063-0064-06
 ;;9002226.02101,"1218,43063-0125-93 ",.01)
 ;;43063-0125-93
 ;;9002226.02101,"1218,43063-0125-93 ",.02)
 ;;43063-0125-93
 ;;9002226.02101,"1218,43063-0126-93 ",.01)
 ;;43063-0126-93
 ;;9002226.02101,"1218,43063-0126-93 ",.02)
 ;;43063-0126-93
 ;;9002226.02101,"1218,43063-0127-93 ",.01)
 ;;43063-0127-93
 ;;9002226.02101,"1218,43063-0127-93 ",.02)
 ;;43063-0127-93
 ;;9002226.02101,"1218,43063-0129-30 ",.01)
 ;;43063-0129-30
 ;;9002226.02101,"1218,43063-0129-30 ",.02)
 ;;43063-0129-30
 ;;9002226.02101,"1218,43063-0129-60 ",.01)
 ;;43063-0129-60
 ;;9002226.02101,"1218,43063-0129-60 ",.02)
 ;;43063-0129-60
 ;;9002226.02101,"1218,43063-0129-93 ",.01)
 ;;43063-0129-93
 ;;9002226.02101,"1218,43063-0129-93 ",.02)
 ;;43063-0129-93
 ;;9002226.02101,"1218,43063-0134-30 ",.01)
 ;;43063-0134-30
 ;;9002226.02101,"1218,43063-0134-30 ",.02)
 ;;43063-0134-30
 ;;9002226.02101,"1218,43063-0134-90 ",.01)
 ;;43063-0134-90
 ;;9002226.02101,"1218,43063-0134-90 ",.02)
 ;;43063-0134-90
 ;;9002226.02101,"1218,43063-0135-90 ",.01)
 ;;43063-0135-90
 ;;9002226.02101,"1218,43063-0135-90 ",.02)
 ;;43063-0135-90
 ;;9002226.02101,"1218,43063-0210-30 ",.01)
 ;;43063-0210-30
 ;;9002226.02101,"1218,43063-0210-30 ",.02)
 ;;43063-0210-30
 ;;9002226.02101,"1218,43063-0210-90 ",.01)
 ;;43063-0210-90
 ;;9002226.02101,"1218,43063-0210-90 ",.02)
 ;;43063-0210-90
 ;;9002226.02101,"1218,43063-0211-30 ",.01)
 ;;43063-0211-30
 ;;9002226.02101,"1218,43063-0211-30 ",.02)
 ;;43063-0211-30
 ;;9002226.02101,"1218,43063-0211-90 ",.01)
 ;;43063-0211-90
 ;;9002226.02101,"1218,43063-0211-90 ",.02)
 ;;43063-0211-90
 ;;9002226.02101,"1218,43063-0297-30 ",.01)
 ;;43063-0297-30
 ;;9002226.02101,"1218,43063-0297-30 ",.02)
 ;;43063-0297-30
 ;;9002226.02101,"1218,43063-0297-90 ",.01)
 ;;43063-0297-90
 ;;9002226.02101,"1218,43063-0297-90 ",.02)
 ;;43063-0297-90
 ;;9002226.02101,"1218,43063-0316-30 ",.01)
 ;;43063-0316-30
 ;;9002226.02101,"1218,43063-0316-30 ",.02)
 ;;43063-0316-30
 ;;9002226.02101,"1218,43063-0316-90 ",.01)
 ;;43063-0316-90
 ;;9002226.02101,"1218,43063-0316-90 ",.02)
 ;;43063-0316-90
 ;;9002226.02101,"1218,43063-0398-30 ",.01)
 ;;43063-0398-30
 ;;9002226.02101,"1218,43063-0398-30 ",.02)
 ;;43063-0398-30
 ;;9002226.02101,"1218,43063-0398-90 ",.01)
 ;;43063-0398-90
 ;;9002226.02101,"1218,43063-0398-90 ",.02)
 ;;43063-0398-90
 ;;9002226.02101,"1218,43063-0398-93 ",.01)
 ;;43063-0398-93
 ;;9002226.02101,"1218,43063-0398-93 ",.02)
 ;;43063-0398-93
 ;;9002226.02101,"1218,43063-0398-94 ",.01)
 ;;43063-0398-94
 ;;9002226.02101,"1218,43063-0398-94 ",.02)
 ;;43063-0398-94
 ;;9002226.02101,"1218,43063-0440-90 ",.01)
 ;;43063-0440-90
 ;;9002226.02101,"1218,43063-0440-90 ",.02)
 ;;43063-0440-90
 ;;9002226.02101,"1218,43063-0615-90 ",.01)
 ;;43063-0615-90
 ;;9002226.02101,"1218,43063-0615-90 ",.02)
 ;;43063-0615-90
 ;;9002226.02101,"1218,43063-0624-30 ",.01)
 ;;43063-0624-30
 ;;9002226.02101,"1218,43063-0624-30 ",.02)
 ;;43063-0624-30
 ;;9002226.02101,"1218,43063-0647-30 ",.01)
 ;;43063-0647-30
 ;;9002226.02101,"1218,43063-0647-30 ",.02)
 ;;43063-0647-30
 ;;9002226.02101,"1218,43063-0647-90 ",.01)
 ;;43063-0647-90
 ;;9002226.02101,"1218,43063-0647-90 ",.02)
 ;;43063-0647-90
 ;;9002226.02101,"1218,43063-0663-30 ",.01)
 ;;43063-0663-30
 ;;9002226.02101,"1218,43063-0663-30 ",.02)
 ;;43063-0663-30
 ;;9002226.02101,"1218,43199-0037-01 ",.01)
 ;;43199-0037-01
 ;;9002226.02101,"1218,43199-0037-01 ",.02)
 ;;43199-0037-01
 ;;9002226.02101,"1218,43199-0037-05 ",.01)
 ;;43199-0037-05
 ;;9002226.02101,"1218,43199-0037-05 ",.02)
 ;;43199-0037-05
 ;;9002226.02101,"1218,43199-0038-01 ",.01)
 ;;43199-0038-01
 ;;9002226.02101,"1218,43199-0038-01 ",.02)
 ;;43199-0038-01
 ;;9002226.02101,"1218,43199-0038-05 ",.01)
 ;;43199-0038-05
 ;;9002226.02101,"1218,43199-0038-05 ",.02)
 ;;43199-0038-05
 ;;9002226.02101,"1218,43199-0039-01 ",.01)
 ;;43199-0039-01
 ;;9002226.02101,"1218,43199-0039-01 ",.02)
 ;;43199-0039-01
 ;;9002226.02101,"1218,43353-0016-45 ",.01)
 ;;43353-0016-45
 ;;9002226.02101,"1218,43353-0016-45 ",.02)
 ;;43353-0016-45
 ;;9002226.02101,"1218,43353-0016-60 ",.01)
 ;;43353-0016-60
 ;;9002226.02101,"1218,43353-0016-60 ",.02)
 ;;43353-0016-60
 ;;9002226.02101,"1218,43353-0084-60 ",.01)
 ;;43353-0084-60
 ;;9002226.02101,"1218,43353-0084-60 ",.02)
 ;;43353-0084-60
 ;;9002226.02101,"1218,43353-0104-30 ",.01)
 ;;43353-0104-30
 ;;9002226.02101,"1218,43353-0104-30 ",.02)
 ;;43353-0104-30
 ;;9002226.02101,"1218,43353-0104-53 ",.01)
 ;;43353-0104-53
 ;;9002226.02101,"1218,43353-0104-53 ",.02)
 ;;43353-0104-53
 ;;9002226.02101,"1218,43353-0104-60 ",.01)
 ;;43353-0104-60
 ;;9002226.02101,"1218,43353-0104-60 ",.02)
 ;;43353-0104-60
 ;;9002226.02101,"1218,43353-0132-53 ",.01)
 ;;43353-0132-53
 ;;9002226.02101,"1218,43353-0132-53 ",.02)
 ;;43353-0132-53
 ;;9002226.02101,"1218,43353-0133-30 ",.01)
 ;;43353-0133-30
 ;;9002226.02101,"1218,43353-0133-30 ",.02)
 ;;43353-0133-30
 ;;9002226.02101,"1218,43353-0133-53 ",.01)
 ;;43353-0133-53
 ;;9002226.02101,"1218,43353-0133-53 ",.02)
 ;;43353-0133-53
 ;;9002226.02101,"1218,43353-0133-60 ",.01)
 ;;43353-0133-60
 ;;9002226.02101,"1218,43353-0133-60 ",.02)
 ;;43353-0133-60
 ;;9002226.02101,"1218,43353-0133-80 ",.01)
 ;;43353-0133-80
 ;;9002226.02101,"1218,43353-0133-80 ",.02)
 ;;43353-0133-80
 ;;9002226.02101,"1218,43353-0134-45 ",.01)
 ;;43353-0134-45
 ;;9002226.02101,"1218,43353-0134-45 ",.02)
 ;;43353-0134-45
 ;;9002226.02101,"1218,43353-0134-60 ",.01)
 ;;43353-0134-60
 ;;9002226.02101,"1218,43353-0134-60 ",.02)
 ;;43353-0134-60
 ;;9002226.02101,"1218,43353-0149-09 ",.01)
 ;;43353-0149-09
 ;;9002226.02101,"1218,43353-0149-09 ",.02)
 ;;43353-0149-09
 ;;9002226.02101,"1218,43353-0156-53 ",.01)
 ;;43353-0156-53
 ;;9002226.02101,"1218,43353-0156-53 ",.02)
 ;;43353-0156-53
 ;;9002226.02101,"1218,43353-0156-60 ",.01)
 ;;43353-0156-60
 ;;9002226.02101,"1218,43353-0156-60 ",.02)
 ;;43353-0156-60
 ;;9002226.02101,"1218,43353-0156-80 ",.01)
 ;;43353-0156-80
 ;;9002226.02101,"1218,43353-0156-80 ",.02)
 ;;43353-0156-80
 ;;9002226.02101,"1218,43353-0160-30 ",.01)
 ;;43353-0160-30
 ;;9002226.02101,"1218,43353-0160-30 ",.02)
 ;;43353-0160-30
 ;;9002226.02101,"1218,43353-0160-53 ",.01)
 ;;43353-0160-53
 ;;9002226.02101,"1218,43353-0160-53 ",.02)
 ;;43353-0160-53
 ;;9002226.02101,"1218,43353-0160-60 ",.01)
 ;;43353-0160-60
 ;;9002226.02101,"1218,43353-0160-60 ",.02)
 ;;43353-0160-60
 ;;9002226.02101,"1218,43353-0160-70 ",.01)
 ;;43353-0160-70
 ;;9002226.02101,"1218,43353-0160-70 ",.02)
 ;;43353-0160-70
 ;;9002226.02101,"1218,43353-0160-80 ",.01)
 ;;43353-0160-80
 ;;9002226.02101,"1218,43353-0160-80 ",.02)
 ;;43353-0160-80
 ;;9002226.02101,"1218,43353-0173-30 ",.01)
 ;;43353-0173-30
 ;;9002226.02101,"1218,43353-0173-30 ",.02)
 ;;43353-0173-30
 ;;9002226.02101,"1218,43353-0173-42 ",.01)
 ;;43353-0173-42
 ;;9002226.02101,"1218,43353-0173-42 ",.02)
 ;;43353-0173-42
 ;;9002226.02101,"1218,43353-0173-45 ",.01)
 ;;43353-0173-45
 ;;9002226.02101,"1218,43353-0173-45 ",.02)
 ;;43353-0173-45
 ;;9002226.02101,"1218,43353-0173-60 ",.01)
 ;;43353-0173-60
 ;;9002226.02101,"1218,43353-0173-60 ",.02)
 ;;43353-0173-60
 ;;9002226.02101,"1218,43353-0173-80 ",.01)
 ;;43353-0173-80
 ;;9002226.02101,"1218,43353-0173-80 ",.02)
 ;;43353-0173-80
 ;;9002226.02101,"1218,43353-0508-60 ",.01)
 ;;43353-0508-60
 ;;9002226.02101,"1218,43353-0508-60 ",.02)
 ;;43353-0508-60
 ;;9002226.02101,"1218,43353-0583-30 ",.01)
 ;;43353-0583-30
 ;;9002226.02101,"1218,43353-0583-30 ",.02)
 ;;43353-0583-30
 ;;9002226.02101,"1218,43353-0583-45 ",.01)
 ;;43353-0583-45
 ;;9002226.02101,"1218,43353-0583-45 ",.02)
 ;;43353-0583-45
 ;;9002226.02101,"1218,43353-0583-60 ",.01)
 ;;43353-0583-60
 ;;9002226.02101,"1218,43353-0583-60 ",.02)
 ;;43353-0583-60
 ;;9002226.02101,"1218,43353-0701-60 ",.01)
 ;;43353-0701-60
 ;;9002226.02101,"1218,43353-0701-60 ",.02)
 ;;43353-0701-60
 ;;9002226.02101,"1218,43353-0706-60 ",.01)
 ;;43353-0706-60
 ;;9002226.02101,"1218,43353-0706-60 ",.02)
 ;;43353-0706-60
 ;;9002226.02101,"1218,43353-0795-16 ",.01)
 ;;43353-0795-16
 ;;9002226.02101,"1218,43353-0795-16 ",.02)
 ;;43353-0795-16
 ;;9002226.02101,"1218,43353-0795-60 ",.01)
 ;;43353-0795-60
 ;;9002226.02101,"1218,43353-0795-60 ",.02)
 ;;43353-0795-60
 ;;9002226.02101,"1218,43353-0830-60 ",.01)
 ;;43353-0830-60
 ;;9002226.02101,"1218,43353-0830-60 ",.02)
 ;;43353-0830-60
 ;;9002226.02101,"1218,43353-0830-73 ",.01)
 ;;43353-0830-73
 ;;9002226.02101,"1218,43353-0830-73 ",.02)
 ;;43353-0830-73
 ;;9002226.02101,"1218,43353-0832-09 ",.01)
 ;;43353-0832-09
 ;;9002226.02101,"1218,43353-0832-09 ",.02)
 ;;43353-0832-09
 ;;9002226.02101,"1218,43353-0832-60 ",.01)
 ;;43353-0832-60
 ;;9002226.02101,"1218,43353-0832-60 ",.02)
 ;;43353-0832-60
 ;;9002226.02101,"1218,43353-0832-80 ",.01)
 ;;43353-0832-80
 ;;9002226.02101,"1218,43353-0832-80 ",.02)
 ;;43353-0832-80
 ;;9002226.02101,"1218,43353-0833-30 ",.01)
 ;;43353-0833-30
 ;;9002226.02101,"1218,43353-0833-30 ",.02)
 ;;43353-0833-30
 ;;9002226.02101,"1218,43353-0833-45 ",.01)
 ;;43353-0833-45
 ;;9002226.02101,"1218,43353-0833-45 ",.02)
 ;;43353-0833-45
 ;;9002226.02101,"1218,43353-0833-60 ",.01)
 ;;43353-0833-60
