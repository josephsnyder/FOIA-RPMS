BGP63D24 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"872,63304-0739-01 ",.02)
 ;;63304-0739-01
 ;;9002226.02101,"872,63304-0739-05 ",.01)
 ;;63304-0739-05
 ;;9002226.02101,"872,63304-0739-05 ",.02)
 ;;63304-0739-05
 ;;9002226.02101,"872,63304-0775-10 ",.01)
 ;;63304-0775-10
 ;;9002226.02101,"872,63304-0775-10 ",.02)
 ;;63304-0775-10
 ;;9002226.02101,"872,63304-0775-90 ",.01)
 ;;63304-0775-90
 ;;9002226.02101,"872,63304-0775-90 ",.02)
 ;;63304-0775-90
 ;;9002226.02101,"872,63304-0776-10 ",.01)
 ;;63304-0776-10
 ;;9002226.02101,"872,63304-0776-10 ",.02)
 ;;63304-0776-10
 ;;9002226.02101,"872,63304-0776-90 ",.01)
 ;;63304-0776-90
 ;;9002226.02101,"872,63304-0776-90 ",.02)
 ;;63304-0776-90
 ;;9002226.02101,"872,63304-0777-10 ",.01)
 ;;63304-0777-10
 ;;9002226.02101,"872,63304-0777-10 ",.02)
 ;;63304-0777-10
 ;;9002226.02101,"872,63304-0777-90 ",.01)
 ;;63304-0777-90
 ;;9002226.02101,"872,63304-0777-90 ",.02)
 ;;63304-0777-90
 ;;9002226.02101,"872,63304-0834-01 ",.01)
 ;;63304-0834-01
 ;;9002226.02101,"872,63304-0834-01 ",.02)
 ;;63304-0834-01
 ;;9002226.02101,"872,63304-0834-10 ",.01)
 ;;63304-0834-10
 ;;9002226.02101,"872,63304-0834-10 ",.02)
 ;;63304-0834-10
 ;;9002226.02101,"872,63304-0835-01 ",.01)
 ;;63304-0835-01
 ;;9002226.02101,"872,63304-0835-01 ",.02)
 ;;63304-0835-01
 ;;9002226.02101,"872,63304-0835-10 ",.01)
 ;;63304-0835-10
 ;;9002226.02101,"872,63304-0835-10 ",.02)
 ;;63304-0835-10
 ;;9002226.02101,"872,63304-0836-01 ",.01)
 ;;63304-0836-01
 ;;9002226.02101,"872,63304-0836-01 ",.02)
 ;;63304-0836-01
 ;;9002226.02101,"872,63304-0836-10 ",.01)
 ;;63304-0836-10
 ;;9002226.02101,"872,63304-0836-10 ",.02)
 ;;63304-0836-10
 ;;9002226.02101,"872,63304-0837-01 ",.01)
 ;;63304-0837-01
 ;;9002226.02101,"872,63304-0837-01 ",.02)
 ;;63304-0837-01
 ;;9002226.02101,"872,63304-0837-10 ",.01)
 ;;63304-0837-10
 ;;9002226.02101,"872,63304-0837-10 ",.02)
 ;;63304-0837-10
 ;;9002226.02101,"872,63629-1240-01 ",.01)
 ;;63629-1240-01
 ;;9002226.02101,"872,63629-1240-01 ",.02)
 ;;63629-1240-01
 ;;9002226.02101,"872,63629-1241-01 ",.01)
 ;;63629-1241-01
 ;;9002226.02101,"872,63629-1241-01 ",.02)
 ;;63629-1241-01
 ;;9002226.02101,"872,63629-1242-01 ",.01)
 ;;63629-1242-01
 ;;9002226.02101,"872,63629-1242-01 ",.02)
 ;;63629-1242-01
 ;;9002226.02101,"872,63629-1254-01 ",.01)
 ;;63629-1254-01
 ;;9002226.02101,"872,63629-1254-01 ",.02)
 ;;63629-1254-01
 ;;9002226.02101,"872,63629-1338-01 ",.01)
 ;;63629-1338-01
 ;;9002226.02101,"872,63629-1338-01 ",.02)
 ;;63629-1338-01
 ;;9002226.02101,"872,63629-1522-01 ",.01)
 ;;63629-1522-01
 ;;9002226.02101,"872,63629-1522-01 ",.02)
 ;;63629-1522-01
 ;;9002226.02101,"872,63629-1522-02 ",.01)
 ;;63629-1522-02
 ;;9002226.02101,"872,63629-1522-02 ",.02)
 ;;63629-1522-02
 ;;9002226.02101,"872,63629-1522-03 ",.01)
 ;;63629-1522-03
 ;;9002226.02101,"872,63629-1522-03 ",.02)
 ;;63629-1522-03
 ;;9002226.02101,"872,63629-1522-04 ",.01)
 ;;63629-1522-04
 ;;9002226.02101,"872,63629-1522-04 ",.02)
 ;;63629-1522-04
 ;;9002226.02101,"872,63629-1522-05 ",.01)
 ;;63629-1522-05
 ;;9002226.02101,"872,63629-1522-05 ",.02)
 ;;63629-1522-05
 ;;9002226.02101,"872,63629-1525-01 ",.01)
 ;;63629-1525-01
 ;;9002226.02101,"872,63629-1525-01 ",.02)
 ;;63629-1525-01
 ;;9002226.02101,"872,63629-1525-02 ",.01)
 ;;63629-1525-02
 ;;9002226.02101,"872,63629-1525-02 ",.02)
 ;;63629-1525-02
 ;;9002226.02101,"872,63629-1525-03 ",.01)
 ;;63629-1525-03
 ;;9002226.02101,"872,63629-1525-03 ",.02)
 ;;63629-1525-03
 ;;9002226.02101,"872,63629-1526-01 ",.01)
 ;;63629-1526-01
 ;;9002226.02101,"872,63629-1526-01 ",.02)
 ;;63629-1526-01
 ;;9002226.02101,"872,63629-1526-02 ",.01)
 ;;63629-1526-02
 ;;9002226.02101,"872,63629-1526-02 ",.02)
 ;;63629-1526-02
 ;;9002226.02101,"872,63629-1526-03 ",.01)
 ;;63629-1526-03
 ;;9002226.02101,"872,63629-1526-03 ",.02)
 ;;63629-1526-03
 ;;9002226.02101,"872,63629-1526-04 ",.01)
 ;;63629-1526-04
 ;;9002226.02101,"872,63629-1526-04 ",.02)
 ;;63629-1526-04
 ;;9002226.02101,"872,63629-1706-01 ",.01)
 ;;63629-1706-01
 ;;9002226.02101,"872,63629-1706-01 ",.02)
 ;;63629-1706-01
 ;;9002226.02101,"872,63629-1728-01 ",.01)
 ;;63629-1728-01
 ;;9002226.02101,"872,63629-1728-01 ",.02)
 ;;63629-1728-01
 ;;9002226.02101,"872,63629-1728-02 ",.01)
 ;;63629-1728-02
 ;;9002226.02101,"872,63629-1728-02 ",.02)
 ;;63629-1728-02
 ;;9002226.02101,"872,63629-1728-03 ",.01)
 ;;63629-1728-03
 ;;9002226.02101,"872,63629-1728-03 ",.02)
 ;;63629-1728-03
 ;;9002226.02101,"872,63629-1728-04 ",.01)
 ;;63629-1728-04
 ;;9002226.02101,"872,63629-1728-04 ",.02)
 ;;63629-1728-04
 ;;9002226.02101,"872,63629-2541-01 ",.01)
 ;;63629-2541-01
 ;;9002226.02101,"872,63629-2541-01 ",.02)
 ;;63629-2541-01
 ;;9002226.02101,"872,63629-2541-02 ",.01)
 ;;63629-2541-02
 ;;9002226.02101,"872,63629-2541-02 ",.02)
 ;;63629-2541-02
 ;;9002226.02101,"872,63629-2541-03 ",.01)
 ;;63629-2541-03
 ;;9002226.02101,"872,63629-2541-03 ",.02)
 ;;63629-2541-03
 ;;9002226.02101,"872,63629-2541-04 ",.01)
 ;;63629-2541-04
 ;;9002226.02101,"872,63629-2541-04 ",.02)
 ;;63629-2541-04
 ;;9002226.02101,"872,63629-2672-01 ",.01)
 ;;63629-2672-01
 ;;9002226.02101,"872,63629-2672-01 ",.02)
 ;;63629-2672-01
 ;;9002226.02101,"872,63629-2672-02 ",.01)
 ;;63629-2672-02
 ;;9002226.02101,"872,63629-2672-02 ",.02)
 ;;63629-2672-02
 ;;9002226.02101,"872,63629-2672-03 ",.01)
 ;;63629-2672-03
 ;;9002226.02101,"872,63629-2672-03 ",.02)
 ;;63629-2672-03
 ;;9002226.02101,"872,63629-2672-04 ",.01)
 ;;63629-2672-04
 ;;9002226.02101,"872,63629-2672-04 ",.02)
 ;;63629-2672-04
 ;;9002226.02101,"872,63629-2679-01 ",.01)
 ;;63629-2679-01
 ;;9002226.02101,"872,63629-2679-01 ",.02)
 ;;63629-2679-01
 ;;9002226.02101,"872,63629-2679-02 ",.01)
 ;;63629-2679-02
 ;;9002226.02101,"872,63629-2679-02 ",.02)
 ;;63629-2679-02
 ;;9002226.02101,"872,63629-2679-03 ",.01)
 ;;63629-2679-03
 ;;9002226.02101,"872,63629-2679-03 ",.02)
 ;;63629-2679-03
 ;;9002226.02101,"872,63629-2688-01 ",.01)
 ;;63629-2688-01
 ;;9002226.02101,"872,63629-2688-01 ",.02)
 ;;63629-2688-01
 ;;9002226.02101,"872,63629-2688-02 ",.01)
 ;;63629-2688-02
 ;;9002226.02101,"872,63629-2688-02 ",.02)
 ;;63629-2688-02
 ;;9002226.02101,"872,63629-2688-03 ",.01)
 ;;63629-2688-03
 ;;9002226.02101,"872,63629-2688-03 ",.02)
 ;;63629-2688-03
 ;;9002226.02101,"872,63629-2688-04 ",.01)
 ;;63629-2688-04
 ;;9002226.02101,"872,63629-2688-04 ",.02)
 ;;63629-2688-04
 ;;9002226.02101,"872,63629-2688-05 ",.01)
 ;;63629-2688-05
 ;;9002226.02101,"872,63629-2688-05 ",.02)
 ;;63629-2688-05
 ;;9002226.02101,"872,63629-2908-01 ",.01)
 ;;63629-2908-01
 ;;9002226.02101,"872,63629-2908-01 ",.02)
 ;;63629-2908-01
 ;;9002226.02101,"872,63629-2908-02 ",.01)
 ;;63629-2908-02
 ;;9002226.02101,"872,63629-2908-02 ",.02)
 ;;63629-2908-02
 ;;9002226.02101,"872,63629-2908-03 ",.01)
 ;;63629-2908-03
 ;;9002226.02101,"872,63629-2908-03 ",.02)
 ;;63629-2908-03
 ;;9002226.02101,"872,63629-2923-01 ",.01)
 ;;63629-2923-01
 ;;9002226.02101,"872,63629-2923-01 ",.02)
 ;;63629-2923-01
 ;;9002226.02101,"872,63629-2935-01 ",.01)
 ;;63629-2935-01
 ;;9002226.02101,"872,63629-2935-01 ",.02)
 ;;63629-2935-01
 ;;9002226.02101,"872,63629-2935-02 ",.01)
 ;;63629-2935-02
 ;;9002226.02101,"872,63629-2935-02 ",.02)
 ;;63629-2935-02
 ;;9002226.02101,"872,63629-2935-03 ",.01)
 ;;63629-2935-03
 ;;9002226.02101,"872,63629-2935-03 ",.02)
 ;;63629-2935-03
 ;;9002226.02101,"872,63629-2935-04 ",.01)
 ;;63629-2935-04
 ;;9002226.02101,"872,63629-2935-04 ",.02)
 ;;63629-2935-04
 ;;9002226.02101,"872,63739-0042-01 ",.01)
 ;;63739-0042-01
 ;;9002226.02101,"872,63739-0042-01 ",.02)
 ;;63739-0042-01
 ;;9002226.02101,"872,63739-0043-01 ",.01)
 ;;63739-0043-01
 ;;9002226.02101,"872,63739-0043-01 ",.02)
 ;;63739-0043-01
 ;;9002226.02101,"872,63739-0302-10 ",.01)
 ;;63739-0302-10
 ;;9002226.02101,"872,63739-0302-10 ",.02)
 ;;63739-0302-10
 ;;9002226.02101,"872,63739-0322-05 ",.01)
 ;;63739-0322-05
 ;;9002226.02101,"872,63739-0322-05 ",.02)
 ;;63739-0322-05
 ;;9002226.02101,"872,63739-0348-10 ",.01)
 ;;63739-0348-10
 ;;9002226.02101,"872,63739-0348-10 ",.02)
 ;;63739-0348-10
 ;;9002226.02101,"872,63739-0349-10 ",.01)
 ;;63739-0349-10
 ;;9002226.02101,"872,63739-0349-10 ",.02)
 ;;63739-0349-10
 ;;9002226.02101,"872,63739-0350-10 ",.01)
 ;;63739-0350-10
 ;;9002226.02101,"872,63739-0350-10 ",.02)
 ;;63739-0350-10
 ;;9002226.02101,"872,63874-0058-10 ",.01)
 ;;63874-0058-10
 ;;9002226.02101,"872,63874-0058-10 ",.02)
 ;;63874-0058-10
 ;;9002226.02101,"872,63874-0058-15 ",.01)
 ;;63874-0058-15
 ;;9002226.02101,"872,63874-0058-15 ",.02)
 ;;63874-0058-15
 ;;9002226.02101,"872,63874-0058-30 ",.01)
 ;;63874-0058-30
 ;;9002226.02101,"872,63874-0058-30 ",.02)
 ;;63874-0058-30
 ;;9002226.02101,"872,63874-0058-90 ",.01)
 ;;63874-0058-90
 ;;9002226.02101,"872,63874-0058-90 ",.02)
 ;;63874-0058-90
 ;;9002226.02101,"872,63874-0347-01 ",.01)
 ;;63874-0347-01
 ;;9002226.02101,"872,63874-0347-01 ",.02)
 ;;63874-0347-01
 ;;9002226.02101,"872,63874-0347-02 ",.01)
 ;;63874-0347-02
 ;;9002226.02101,"872,63874-0347-02 ",.02)
 ;;63874-0347-02
 ;;9002226.02101,"872,63874-0347-05 ",.01)
 ;;63874-0347-05
 ;;9002226.02101,"872,63874-0347-05 ",.02)
 ;;63874-0347-05
 ;;9002226.02101,"872,63874-0347-20 ",.01)
 ;;63874-0347-20
 ;;9002226.02101,"872,63874-0347-20 ",.02)
 ;;63874-0347-20
 ;;9002226.02101,"872,63874-0347-30 ",.01)
 ;;63874-0347-30
 ;;9002226.02101,"872,63874-0347-30 ",.02)
 ;;63874-0347-30
 ;;9002226.02101,"872,63874-0347-40 ",.01)
 ;;63874-0347-40
 ;;9002226.02101,"872,63874-0347-40 ",.02)
 ;;63874-0347-40
 ;;9002226.02101,"872,63874-0347-42 ",.01)
 ;;63874-0347-42
 ;;9002226.02101,"872,63874-0347-42 ",.02)
 ;;63874-0347-42
 ;;9002226.02101,"872,63874-0347-45 ",.01)
 ;;63874-0347-45
 ;;9002226.02101,"872,63874-0347-45 ",.02)
 ;;63874-0347-45
 ;;9002226.02101,"872,63874-0347-90 ",.01)
 ;;63874-0347-90
 ;;9002226.02101,"872,63874-0347-90 ",.02)
 ;;63874-0347-90
 ;;9002226.02101,"872,63874-0348-01 ",.01)
 ;;63874-0348-01
 ;;9002226.02101,"872,63874-0348-01 ",.02)
 ;;63874-0348-01
 ;;9002226.02101,"872,63874-0348-10 ",.01)
 ;;63874-0348-10
 ;;9002226.02101,"872,63874-0348-10 ",.02)
 ;;63874-0348-10
 ;;9002226.02101,"872,63874-0348-14 ",.01)
 ;;63874-0348-14
 ;;9002226.02101,"872,63874-0348-14 ",.02)
 ;;63874-0348-14
 ;;9002226.02101,"872,63874-0348-20 ",.01)
 ;;63874-0348-20
 ;;9002226.02101,"872,63874-0348-20 ",.02)
 ;;63874-0348-20
 ;;9002226.02101,"872,63874-0348-30 ",.01)
 ;;63874-0348-30
 ;;9002226.02101,"872,63874-0348-30 ",.02)
 ;;63874-0348-30
 ;;9002226.02101,"872,63874-0348-60 ",.01)
 ;;63874-0348-60
 ;;9002226.02101,"872,63874-0348-60 ",.02)
 ;;63874-0348-60
 ;;9002226.02101,"872,63874-0348-90 ",.01)
 ;;63874-0348-90
 ;;9002226.02101,"872,63874-0348-90 ",.02)
 ;;63874-0348-90
 ;;9002226.02101,"872,63874-0379-10 ",.01)
 ;;63874-0379-10
 ;;9002226.02101,"872,63874-0379-10 ",.02)
 ;;63874-0379-10
 ;;9002226.02101,"872,63874-0379-30 ",.01)
 ;;63874-0379-30
 ;;9002226.02101,"872,63874-0379-30 ",.02)
 ;;63874-0379-30
 ;;9002226.02101,"872,63874-0423-01 ",.01)
 ;;63874-0423-01
 ;;9002226.02101,"872,63874-0423-01 ",.02)
 ;;63874-0423-01
 ;;9002226.02101,"872,63874-0423-07 ",.01)
 ;;63874-0423-07
 ;;9002226.02101,"872,63874-0423-07 ",.02)
 ;;63874-0423-07
 ;;9002226.02101,"872,63874-0423-10 ",.01)
 ;;63874-0423-10
 ;;9002226.02101,"872,63874-0423-10 ",.02)
 ;;63874-0423-10
 ;;9002226.02101,"872,63874-0423-14 ",.01)
 ;;63874-0423-14
 ;;9002226.02101,"872,63874-0423-14 ",.02)
 ;;63874-0423-14
 ;;9002226.02101,"872,63874-0423-20 ",.01)
 ;;63874-0423-20
 ;;9002226.02101,"872,63874-0423-20 ",.02)
 ;;63874-0423-20
 ;;9002226.02101,"872,63874-0423-30 ",.01)
 ;;63874-0423-30
