BGP50M20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 06, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,61442-0142-10 ",.02)
 ;;61442-0142-10
 ;;9002226.02101,"1201,61442-0142-60 ",.01)
 ;;61442-0142-60
 ;;9002226.02101,"1201,61442-0142-60 ",.02)
 ;;61442-0142-60
 ;;9002226.02101,"1201,61442-0143-01 ",.01)
 ;;61442-0143-01
 ;;9002226.02101,"1201,61442-0143-01 ",.02)
 ;;61442-0143-01
 ;;9002226.02101,"1201,61442-0143-05 ",.01)
 ;;61442-0143-05
 ;;9002226.02101,"1201,61442-0143-05 ",.02)
 ;;61442-0143-05
 ;;9002226.02101,"1201,61442-0143-10 ",.01)
 ;;61442-0143-10
 ;;9002226.02101,"1201,61442-0143-10 ",.02)
 ;;61442-0143-10
 ;;9002226.02101,"1201,61442-0143-60 ",.01)
 ;;61442-0143-60
 ;;9002226.02101,"1201,61442-0143-60 ",.02)
 ;;61442-0143-60
 ;;9002226.02101,"1201,62175-0890-43 ",.01)
 ;;62175-0890-43
 ;;9002226.02101,"1201,62175-0890-43 ",.02)
 ;;62175-0890-43
 ;;9002226.02101,"1201,62175-0890-46 ",.01)
 ;;62175-0890-46
 ;;9002226.02101,"1201,62175-0890-46 ",.02)
 ;;62175-0890-46
 ;;9002226.02101,"1201,62175-0891-43 ",.01)
 ;;62175-0891-43
 ;;9002226.02101,"1201,62175-0891-43 ",.02)
 ;;62175-0891-43
 ;;9002226.02101,"1201,62175-0891-46 ",.01)
 ;;62175-0891-46
 ;;9002226.02101,"1201,62175-0891-46 ",.02)
 ;;62175-0891-46
 ;;9002226.02101,"1201,62175-0892-41 ",.01)
 ;;62175-0892-41
 ;;9002226.02101,"1201,62175-0892-41 ",.02)
 ;;62175-0892-41
 ;;9002226.02101,"1201,62175-0892-46 ",.01)
 ;;62175-0892-46
 ;;9002226.02101,"1201,62175-0892-46 ",.02)
 ;;62175-0892-46
 ;;9002226.02101,"1201,62175-0897-41 ",.01)
 ;;62175-0897-41
 ;;9002226.02101,"1201,62175-0897-41 ",.02)
 ;;62175-0897-41
 ;;9002226.02101,"1201,62175-0897-46 ",.01)
 ;;62175-0897-46
 ;;9002226.02101,"1201,62175-0897-46 ",.02)
 ;;62175-0897-46
 ;;9002226.02101,"1201,63304-0499-30 ",.01)
 ;;63304-0499-30
 ;;9002226.02101,"1201,63304-0499-30 ",.02)
 ;;63304-0499-30
 ;;9002226.02101,"1201,63304-0500-30 ",.01)
 ;;63304-0500-30
 ;;9002226.02101,"1201,63304-0500-30 ",.02)
 ;;63304-0500-30
 ;;9002226.02101,"1201,63304-0501-30 ",.01)
 ;;63304-0501-30
 ;;9002226.02101,"1201,63304-0501-30 ",.02)
 ;;63304-0501-30
 ;;9002226.02101,"1201,63304-0502-30 ",.01)
 ;;63304-0502-30
 ;;9002226.02101,"1201,63304-0502-30 ",.02)
 ;;63304-0502-30
 ;;9002226.02101,"1201,63304-0503-30 ",.01)
 ;;63304-0503-30
 ;;9002226.02101,"1201,63304-0503-30 ",.02)
 ;;63304-0503-30
 ;;9002226.02101,"1201,63304-0587-30 ",.01)
 ;;63304-0587-30
 ;;9002226.02101,"1201,63304-0587-30 ",.02)
 ;;63304-0587-30
 ;;9002226.02101,"1201,63304-0588-30 ",.01)
 ;;63304-0588-30
 ;;9002226.02101,"1201,63304-0588-30 ",.02)
 ;;63304-0588-30
 ;;9002226.02101,"1201,63304-0589-30 ",.01)
 ;;63304-0589-30
 ;;9002226.02101,"1201,63304-0589-30 ",.02)
 ;;63304-0589-30
 ;;9002226.02101,"1201,63304-0590-30 ",.01)
 ;;63304-0590-30
 ;;9002226.02101,"1201,63304-0590-30 ",.02)
 ;;63304-0590-30
 ;;9002226.02101,"1201,63304-0591-30 ",.01)
 ;;63304-0591-30
 ;;9002226.02101,"1201,63304-0591-30 ",.02)
 ;;63304-0591-30
 ;;9002226.02101,"1201,63304-0603-30 ",.01)
 ;;63304-0603-30
 ;;9002226.02101,"1201,63304-0603-30 ",.02)
 ;;63304-0603-30
 ;;9002226.02101,"1201,63304-0789-10 ",.01)
 ;;63304-0789-10
 ;;9002226.02101,"1201,63304-0789-10 ",.02)
 ;;63304-0789-10
 ;;9002226.02101,"1201,63304-0789-90 ",.01)
 ;;63304-0789-90
 ;;9002226.02101,"1201,63304-0789-90 ",.02)
 ;;63304-0789-90
 ;;9002226.02101,"1201,63304-0790-10 ",.01)
 ;;63304-0790-10
 ;;9002226.02101,"1201,63304-0790-10 ",.02)
 ;;63304-0790-10
 ;;9002226.02101,"1201,63304-0790-90 ",.01)
 ;;63304-0790-90
 ;;9002226.02101,"1201,63304-0790-90 ",.02)
 ;;63304-0790-90
 ;;9002226.02101,"1201,63304-0791-10 ",.01)
 ;;63304-0791-10
 ;;9002226.02101,"1201,63304-0791-10 ",.02)
 ;;63304-0791-10
 ;;9002226.02101,"1201,63304-0791-90 ",.01)
 ;;63304-0791-90
 ;;9002226.02101,"1201,63304-0791-90 ",.02)
 ;;63304-0791-90
 ;;9002226.02101,"1201,63304-0792-10 ",.01)
 ;;63304-0792-10
 ;;9002226.02101,"1201,63304-0792-10 ",.02)
 ;;63304-0792-10
 ;;9002226.02101,"1201,63304-0792-90 ",.01)
 ;;63304-0792-90
 ;;9002226.02101,"1201,63304-0792-90 ",.02)
 ;;63304-0792-90
 ;;9002226.02101,"1201,63304-0793-10 ",.01)
 ;;63304-0793-10
 ;;9002226.02101,"1201,63304-0793-10 ",.02)
 ;;63304-0793-10
 ;;9002226.02101,"1201,63304-0793-50 ",.01)
 ;;63304-0793-50
 ;;9002226.02101,"1201,63304-0793-50 ",.02)
 ;;63304-0793-50
 ;;9002226.02101,"1201,63304-0793-90 ",.01)
 ;;63304-0793-90
 ;;9002226.02101,"1201,63304-0793-90 ",.02)
 ;;63304-0793-90
 ;;9002226.02101,"1201,63304-0827-05 ",.01)
 ;;63304-0827-05
 ;;9002226.02101,"1201,63304-0827-05 ",.02)
 ;;63304-0827-05
 ;;9002226.02101,"1201,63304-0827-90 ",.01)
 ;;63304-0827-90
 ;;9002226.02101,"1201,63304-0827-90 ",.02)
 ;;63304-0827-90
 ;;9002226.02101,"1201,63304-0828-05 ",.01)
 ;;63304-0828-05
 ;;9002226.02101,"1201,63304-0828-05 ",.02)
 ;;63304-0828-05
 ;;9002226.02101,"1201,63304-0828-90 ",.01)
 ;;63304-0828-90
 ;;9002226.02101,"1201,63304-0828-90 ",.02)
 ;;63304-0828-90
 ;;9002226.02101,"1201,63304-0829-05 ",.01)
 ;;63304-0829-05
 ;;9002226.02101,"1201,63304-0829-05 ",.02)
 ;;63304-0829-05
 ;;9002226.02101,"1201,63304-0829-90 ",.01)
 ;;63304-0829-90
 ;;9002226.02101,"1201,63304-0829-90 ",.02)
 ;;63304-0829-90
 ;;9002226.02101,"1201,63304-0830-05 ",.01)
 ;;63304-0830-05
 ;;9002226.02101,"1201,63304-0830-05 ",.02)
 ;;63304-0830-05
 ;;9002226.02101,"1201,63304-0830-90 ",.01)
 ;;63304-0830-90
 ;;9002226.02101,"1201,63304-0830-90 ",.02)
 ;;63304-0830-90
 ;;9002226.02101,"1201,63629-1447-01 ",.01)
 ;;63629-1447-01
 ;;9002226.02101,"1201,63629-1447-01 ",.02)
 ;;63629-1447-01
 ;;9002226.02101,"1201,63629-1464-01 ",.01)
 ;;63629-1464-01
 ;;9002226.02101,"1201,63629-1464-01 ",.02)
 ;;63629-1464-01
 ;;9002226.02101,"1201,63629-1464-02 ",.01)
 ;;63629-1464-02
 ;;9002226.02101,"1201,63629-1464-02 ",.02)
 ;;63629-1464-02
 ;;9002226.02101,"1201,63629-1464-03 ",.01)
 ;;63629-1464-03
 ;;9002226.02101,"1201,63629-1464-03 ",.02)
 ;;63629-1464-03
 ;;9002226.02101,"1201,63629-1606-01 ",.01)
 ;;63629-1606-01
 ;;9002226.02101,"1201,63629-1606-01 ",.02)
 ;;63629-1606-01
 ;;9002226.02101,"1201,63629-1606-02 ",.01)
 ;;63629-1606-02
 ;;9002226.02101,"1201,63629-1606-02 ",.02)
 ;;63629-1606-02
 ;;9002226.02101,"1201,63629-1784-01 ",.01)
 ;;63629-1784-01
 ;;9002226.02101,"1201,63629-1784-01 ",.02)
 ;;63629-1784-01
 ;;9002226.02101,"1201,63629-1784-02 ",.01)
 ;;63629-1784-02
 ;;9002226.02101,"1201,63629-1784-02 ",.02)
 ;;63629-1784-02
 ;;9002226.02101,"1201,63629-3366-01 ",.01)
 ;;63629-3366-01
 ;;9002226.02101,"1201,63629-3366-01 ",.02)
 ;;63629-3366-01
 ;;9002226.02101,"1201,63629-3366-02 ",.01)
 ;;63629-3366-02
 ;;9002226.02101,"1201,63629-3366-02 ",.02)
 ;;63629-3366-02
 ;;9002226.02101,"1201,63629-3366-03 ",.01)
 ;;63629-3366-03
 ;;9002226.02101,"1201,63629-3366-03 ",.02)
 ;;63629-3366-03
 ;;9002226.02101,"1201,63629-3366-04 ",.01)
 ;;63629-3366-04
 ;;9002226.02101,"1201,63629-3366-04 ",.02)
 ;;63629-3366-04
 ;;9002226.02101,"1201,63629-3381-01 ",.01)
 ;;63629-3381-01
 ;;9002226.02101,"1201,63629-3381-01 ",.02)
 ;;63629-3381-01
 ;;9002226.02101,"1201,63629-3381-02 ",.01)
 ;;63629-3381-02
 ;;9002226.02101,"1201,63629-3381-02 ",.02)
 ;;63629-3381-02
 ;;9002226.02101,"1201,63629-3381-03 ",.01)
 ;;63629-3381-03
 ;;9002226.02101,"1201,63629-3381-03 ",.02)
 ;;63629-3381-03
 ;;9002226.02101,"1201,63629-3381-04 ",.01)
 ;;63629-3381-04
 ;;9002226.02101,"1201,63629-3381-04 ",.02)
 ;;63629-3381-04
 ;;9002226.02101,"1201,63629-3385-01 ",.01)
 ;;63629-3385-01
 ;;9002226.02101,"1201,63629-3385-01 ",.02)
 ;;63629-3385-01
 ;;9002226.02101,"1201,63629-3385-02 ",.01)
 ;;63629-3385-02
 ;;9002226.02101,"1201,63629-3385-02 ",.02)
 ;;63629-3385-02
 ;;9002226.02101,"1201,63629-3385-03 ",.01)
 ;;63629-3385-03
 ;;9002226.02101,"1201,63629-3385-03 ",.02)
 ;;63629-3385-03
 ;;9002226.02101,"1201,63629-3385-04 ",.01)
 ;;63629-3385-04
 ;;9002226.02101,"1201,63629-3385-04 ",.02)
 ;;63629-3385-04
 ;;9002226.02101,"1201,63629-3385-05 ",.01)
 ;;63629-3385-05
 ;;9002226.02101,"1201,63629-3385-05 ",.02)
 ;;63629-3385-05
 ;;9002226.02101,"1201,63629-3392-01 ",.01)
 ;;63629-3392-01
 ;;9002226.02101,"1201,63629-3392-01 ",.02)
 ;;63629-3392-01
 ;;9002226.02101,"1201,63629-3393-01 ",.01)
 ;;63629-3393-01
 ;;9002226.02101,"1201,63629-3393-01 ",.02)
 ;;63629-3393-01
 ;;9002226.02101,"1201,63629-3393-02 ",.01)
 ;;63629-3393-02
 ;;9002226.02101,"1201,63629-3393-02 ",.02)
 ;;63629-3393-02
 ;;9002226.02101,"1201,63629-3393-03 ",.01)
 ;;63629-3393-03
 ;;9002226.02101,"1201,63629-3393-03 ",.02)
 ;;63629-3393-03
 ;;9002226.02101,"1201,63629-3393-04 ",.01)
 ;;63629-3393-04
 ;;9002226.02101,"1201,63629-3393-04 ",.02)
 ;;63629-3393-04
 ;;9002226.02101,"1201,63629-3408-01 ",.01)
 ;;63629-3408-01
 ;;9002226.02101,"1201,63629-3408-01 ",.02)
 ;;63629-3408-01
 ;;9002226.02101,"1201,63629-3408-02 ",.01)
 ;;63629-3408-02
 ;;9002226.02101,"1201,63629-3408-02 ",.02)
 ;;63629-3408-02
 ;;9002226.02101,"1201,63629-3408-03 ",.01)
 ;;63629-3408-03
 ;;9002226.02101,"1201,63629-3408-03 ",.02)
 ;;63629-3408-03
 ;;9002226.02101,"1201,63629-3408-04 ",.01)
 ;;63629-3408-04
 ;;9002226.02101,"1201,63629-3408-04 ",.02)
 ;;63629-3408-04
 ;;9002226.02101,"1201,63629-3563-01 ",.01)
 ;;63629-3563-01
 ;;9002226.02101,"1201,63629-3563-01 ",.02)
 ;;63629-3563-01
 ;;9002226.02101,"1201,63629-3583-01 ",.01)
 ;;63629-3583-01
 ;;9002226.02101,"1201,63629-3583-01 ",.02)
 ;;63629-3583-01
 ;;9002226.02101,"1201,63629-3583-02 ",.01)
 ;;63629-3583-02
 ;;9002226.02101,"1201,63629-3583-02 ",.02)
 ;;63629-3583-02
 ;;9002226.02101,"1201,63629-3583-03 ",.01)
 ;;63629-3583-03
 ;;9002226.02101,"1201,63629-3583-03 ",.02)
 ;;63629-3583-03
 ;;9002226.02101,"1201,63739-0281-10 ",.01)
 ;;63739-0281-10
 ;;9002226.02101,"1201,63739-0281-10 ",.02)
 ;;63739-0281-10
 ;;9002226.02101,"1201,63739-0282-10 ",.01)
 ;;63739-0282-10
 ;;9002226.02101,"1201,63739-0282-10 ",.02)
 ;;63739-0282-10
 ;;9002226.02101,"1201,63739-0435-10 ",.01)
 ;;63739-0435-10
 ;;9002226.02101,"1201,63739-0435-10 ",.02)
 ;;63739-0435-10
 ;;9002226.02101,"1201,63739-0436-10 ",.01)
 ;;63739-0436-10
 ;;9002226.02101,"1201,63739-0436-10 ",.02)
 ;;63739-0436-10
 ;;9002226.02101,"1201,63739-0437-04 ",.01)
 ;;63739-0437-04
 ;;9002226.02101,"1201,63739-0437-04 ",.02)
 ;;63739-0437-04
 ;;9002226.02101,"1201,63739-0437-10 ",.01)
 ;;63739-0437-10
 ;;9002226.02101,"1201,63739-0437-10 ",.02)
 ;;63739-0437-10
 ;;9002226.02101,"1201,63739-0438-10 ",.01)
 ;;63739-0438-10
 ;;9002226.02101,"1201,63739-0438-10 ",.02)
 ;;63739-0438-10
 ;;9002226.02101,"1201,63739-0570-10 ",.01)
 ;;63739-0570-10
 ;;9002226.02101,"1201,63739-0570-10 ",.02)
 ;;63739-0570-10
 ;;9002226.02101,"1201,63739-0571-10 ",.01)
 ;;63739-0571-10
 ;;9002226.02101,"1201,63739-0571-10 ",.02)
 ;;63739-0571-10
 ;;9002226.02101,"1201,63739-0572-10 ",.01)
 ;;63739-0572-10
 ;;9002226.02101,"1201,63739-0572-10 ",.02)
 ;;63739-0572-10
 ;;9002226.02101,"1201,63739-0573-10 ",.01)
 ;;63739-0573-10
 ;;9002226.02101,"1201,63739-0573-10 ",.02)
 ;;63739-0573-10
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
