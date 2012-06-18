BGP21L40 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,63739-0437-10 ",.01)
 ;;63739-0437-10
 ;;9002226.02101,"1201,63739-0437-10 ",.02)
 ;;63739-0437-10
 ;;9002226.02101,"1201,63739-0438-10 ",.01)
 ;;63739-0438-10
 ;;9002226.02101,"1201,63739-0438-10 ",.02)
 ;;63739-0438-10
 ;;9002226.02101,"1201,63874-0319-10 ",.01)
 ;;63874-0319-10
 ;;9002226.02101,"1201,63874-0319-10 ",.02)
 ;;63874-0319-10
 ;;9002226.02101,"1201,63874-0319-15 ",.01)
 ;;63874-0319-15
 ;;9002226.02101,"1201,63874-0319-15 ",.02)
 ;;63874-0319-15
 ;;9002226.02101,"1201,63874-0319-30 ",.01)
 ;;63874-0319-30
 ;;9002226.02101,"1201,63874-0319-30 ",.02)
 ;;63874-0319-30
 ;;9002226.02101,"1201,63874-0319-90 ",.01)
 ;;63874-0319-90
 ;;9002226.02101,"1201,63874-0319-90 ",.02)
 ;;63874-0319-90
 ;;9002226.02101,"1201,63874-0589-01 ",.01)
 ;;63874-0589-01
 ;;9002226.02101,"1201,63874-0589-01 ",.02)
 ;;63874-0589-01
 ;;9002226.02101,"1201,63874-0589-10 ",.01)
 ;;63874-0589-10
 ;;9002226.02101,"1201,63874-0589-10 ",.02)
 ;;63874-0589-10
 ;;9002226.02101,"1201,63874-0589-30 ",.01)
 ;;63874-0589-30
 ;;9002226.02101,"1201,63874-0589-30 ",.02)
 ;;63874-0589-30
 ;;9002226.02101,"1201,63874-0589-90 ",.01)
 ;;63874-0589-90
 ;;9002226.02101,"1201,63874-0589-90 ",.02)
 ;;63874-0589-90
 ;;9002226.02101,"1201,63874-0590-01 ",.01)
 ;;63874-0590-01
 ;;9002226.02101,"1201,63874-0590-01 ",.02)
 ;;63874-0590-01
 ;;9002226.02101,"1201,63874-0590-10 ",.01)
 ;;63874-0590-10
 ;;9002226.02101,"1201,63874-0590-10 ",.02)
 ;;63874-0590-10
 ;;9002226.02101,"1201,63874-0590-15 ",.01)
 ;;63874-0590-15
 ;;9002226.02101,"1201,63874-0590-15 ",.02)
 ;;63874-0590-15
 ;;9002226.02101,"1201,63874-0590-30 ",.01)
 ;;63874-0590-30
 ;;9002226.02101,"1201,63874-0590-30 ",.02)
 ;;63874-0590-30
 ;;9002226.02101,"1201,63874-0590-90 ",.01)
 ;;63874-0590-90
 ;;9002226.02101,"1201,63874-0590-90 ",.02)
 ;;63874-0590-90
 ;;9002226.02101,"1201,65243-0065-15 ",.01)
 ;;65243-0065-15
 ;;9002226.02101,"1201,65243-0065-15 ",.02)
 ;;65243-0065-15
 ;;9002226.02101,"1201,65243-0065-45 ",.01)
 ;;65243-0065-45
 ;;9002226.02101,"1201,65243-0065-45 ",.02)
 ;;65243-0065-45
 ;;9002226.02101,"1201,65243-0082-15 ",.01)
 ;;65243-0082-15
 ;;9002226.02101,"1201,65243-0082-15 ",.02)
 ;;65243-0082-15
 ;;9002226.02101,"1201,65243-0082-45 ",.01)
 ;;65243-0082-45
 ;;9002226.02101,"1201,65243-0082-45 ",.02)
 ;;65243-0082-45
 ;;9002226.02101,"1201,65243-0127-45 ",.01)
 ;;65243-0127-45
 ;;9002226.02101,"1201,65243-0127-45 ",.02)
 ;;65243-0127-45
 ;;9002226.02101,"1201,65243-0348-15 ",.01)
 ;;65243-0348-15
 ;;9002226.02101,"1201,65243-0348-15 ",.02)
 ;;65243-0348-15
 ;;9002226.02101,"1201,65243-0348-45 ",.01)
 ;;65243-0348-45
 ;;9002226.02101,"1201,65243-0348-45 ",.02)
 ;;65243-0348-45
 ;;9002226.02101,"1201,65243-0349-15 ",.01)
 ;;65243-0349-15
 ;;9002226.02101,"1201,65243-0349-15 ",.02)
 ;;65243-0349-15
 ;;9002226.02101,"1201,65243-0349-45 ",.01)
 ;;65243-0349-45
 ;;9002226.02101,"1201,65243-0349-45 ",.02)
 ;;65243-0349-45
 ;;9002226.02101,"1201,65243-0350-45 ",.01)
 ;;65243-0350-45
 ;;9002226.02101,"1201,65243-0350-45 ",.02)
 ;;65243-0350-45
 ;;9002226.02101,"1201,65243-0352-03 ",.01)
 ;;65243-0352-03
 ;;9002226.02101,"1201,65243-0352-03 ",.02)
 ;;65243-0352-03
 ;;9002226.02101,"1201,65243-0352-09 ",.01)
 ;;65243-0352-09
 ;;9002226.02101,"1201,65243-0352-09 ",.02)
 ;;65243-0352-09
 ;;9002226.02101,"1201,65243-0352-45 ",.01)
 ;;65243-0352-45
 ;;9002226.02101,"1201,65243-0352-45 ",.02)
 ;;65243-0352-45
 ;;9002226.02101,"1201,65243-0360-45 ",.01)
 ;;65243-0360-45
 ;;9002226.02101,"1201,65243-0360-45 ",.02)
 ;;65243-0360-45
 ;;9002226.02101,"1201,65243-0361-45 ",.01)
 ;;65243-0361-45
 ;;9002226.02101,"1201,65243-0361-45 ",.02)
 ;;65243-0361-45
 ;;9002226.02101,"1201,65243-0365-45 ",.01)
 ;;65243-0365-45
 ;;9002226.02101,"1201,65243-0365-45 ",.02)
 ;;65243-0365-45
 ;;9002226.02101,"1201,65243-0367-09 ",.01)
 ;;65243-0367-09
 ;;9002226.02101,"1201,65243-0367-09 ",.02)
 ;;65243-0367-09
 ;;9002226.02101,"1201,65243-0367-45 ",.01)
 ;;65243-0367-45
 ;;9002226.02101,"1201,65243-0367-45 ",.02)
 ;;65243-0367-45
 ;;9002226.02101,"1201,65862-0050-30 ",.01)
 ;;65862-0050-30
 ;;9002226.02101,"1201,65862-0050-30 ",.02)
 ;;65862-0050-30
 ;;9002226.02101,"1201,65862-0050-90 ",.01)
 ;;65862-0050-90
 ;;9002226.02101,"1201,65862-0050-90 ",.02)
 ;;65862-0050-90
 ;;9002226.02101,"1201,65862-0050-99 ",.01)
 ;;65862-0050-99
 ;;9002226.02101,"1201,65862-0050-99 ",.02)
 ;;65862-0050-99
 ;;9002226.02101,"1201,65862-0051-26 ",.01)
 ;;65862-0051-26
 ;;9002226.02101,"1201,65862-0051-26 ",.02)
 ;;65862-0051-26
 ;;9002226.02101,"1201,65862-0051-30 ",.01)
 ;;65862-0051-30
 ;;9002226.02101,"1201,65862-0051-30 ",.02)
 ;;65862-0051-30
 ;;9002226.02101,"1201,65862-0051-90 ",.01)
 ;;65862-0051-90
 ;;9002226.02101,"1201,65862-0051-90 ",.02)
 ;;65862-0051-90
 ;;9002226.02101,"1201,65862-0051-99 ",.01)
 ;;65862-0051-99
 ;;9002226.02101,"1201,65862-0051-99 ",.02)
 ;;65862-0051-99
 ;;9002226.02101,"1201,65862-0052-26 ",.01)
 ;;65862-0052-26
 ;;9002226.02101,"1201,65862-0052-26 ",.02)
 ;;65862-0052-26
 ;;9002226.02101,"1201,65862-0052-30 ",.01)
 ;;65862-0052-30
 ;;9002226.02101,"1201,65862-0052-30 ",.02)
 ;;65862-0052-30
 ;;9002226.02101,"1201,65862-0052-90 ",.01)
 ;;65862-0052-90
