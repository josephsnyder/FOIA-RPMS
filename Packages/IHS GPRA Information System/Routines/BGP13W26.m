BGP13W26 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1099,63739-0173-01 ",.01)
 ;;63739-0173-01
 ;;9002226.02101,"1099,63739-0173-01 ",.02)
 ;;63739-0173-01
 ;;9002226.02101,"1099,63739-0173-02 ",.01)
 ;;63739-0173-02
 ;;9002226.02101,"1099,63739-0173-02 ",.02)
 ;;63739-0173-02
 ;;9002226.02101,"1099,63739-0173-03 ",.01)
 ;;63739-0173-03
 ;;9002226.02101,"1099,63739-0173-03 ",.02)
 ;;63739-0173-03
 ;;9002226.02101,"1099,63739-0173-10 ",.01)
 ;;63739-0173-10
 ;;9002226.02101,"1099,63739-0173-10 ",.02)
 ;;63739-0173-10
 ;;9002226.02101,"1099,63739-0173-15 ",.01)
 ;;63739-0173-15
 ;;9002226.02101,"1099,63739-0173-15 ",.02)
 ;;63739-0173-15
 ;;9002226.02101,"1099,63739-0216-01 ",.01)
 ;;63739-0216-01
 ;;9002226.02101,"1099,63739-0216-01 ",.02)
 ;;63739-0216-01
 ;;9002226.02101,"1099,63739-0216-02 ",.01)
 ;;63739-0216-02
 ;;9002226.02101,"1099,63739-0216-02 ",.02)
 ;;63739-0216-02
 ;;9002226.02101,"1099,63739-0216-03 ",.01)
 ;;63739-0216-03
 ;;9002226.02101,"1099,63739-0216-03 ",.02)
 ;;63739-0216-03
 ;;9002226.02101,"1099,63739-0217-01 ",.01)
 ;;63739-0217-01
 ;;9002226.02101,"1099,63739-0217-01 ",.02)
 ;;63739-0217-01
 ;;9002226.02101,"1099,63739-0217-02 ",.01)
 ;;63739-0217-02
 ;;9002226.02101,"1099,63739-0217-02 ",.02)
 ;;63739-0217-02
 ;;9002226.02101,"1099,63739-0217-03 ",.01)
 ;;63739-0217-03
 ;;9002226.02101,"1099,63739-0217-03 ",.02)
 ;;63739-0217-03
 ;;9002226.02101,"1099,63739-0366-10 ",.01)
 ;;63739-0366-10
 ;;9002226.02101,"1099,63739-0366-10 ",.02)
 ;;63739-0366-10
 ;;9002226.02101,"1099,63739-0405-10 ",.01)
 ;;63739-0405-10
 ;;9002226.02101,"1099,63739-0405-10 ",.02)
 ;;63739-0405-10
 ;;9002226.02101,"1099,63739-0428-10 ",.01)
 ;;63739-0428-10
 ;;9002226.02101,"1099,63739-0428-10 ",.02)
 ;;63739-0428-10
 ;;9002226.02101,"1099,63874-0332-01 ",.01)
 ;;63874-0332-01
 ;;9002226.02101,"1099,63874-0332-01 ",.02)
 ;;63874-0332-01
 ;;9002226.02101,"1099,63874-0332-02 ",.01)
 ;;63874-0332-02
 ;;9002226.02101,"1099,63874-0332-02 ",.02)
 ;;63874-0332-02
 ;;9002226.02101,"1099,63874-0332-07 ",.01)
 ;;63874-0332-07
 ;;9002226.02101,"1099,63874-0332-07 ",.02)
 ;;63874-0332-07
 ;;9002226.02101,"1099,63874-0332-10 ",.01)
 ;;63874-0332-10
 ;;9002226.02101,"1099,63874-0332-10 ",.02)
 ;;63874-0332-10
 ;;9002226.02101,"1099,63874-0332-14 ",.01)
 ;;63874-0332-14
 ;;9002226.02101,"1099,63874-0332-14 ",.02)
 ;;63874-0332-14
 ;;9002226.02101,"1099,63874-0332-15 ",.01)
 ;;63874-0332-15
 ;;9002226.02101,"1099,63874-0332-15 ",.02)
 ;;63874-0332-15
 ;;9002226.02101,"1099,63874-0332-20 ",.01)
 ;;63874-0332-20
 ;;9002226.02101,"1099,63874-0332-20 ",.02)
 ;;63874-0332-20
 ;;9002226.02101,"1099,63874-0332-30 ",.01)
 ;;63874-0332-30
 ;;9002226.02101,"1099,63874-0332-30 ",.02)
 ;;63874-0332-30
 ;;9002226.02101,"1099,63874-0332-60 ",.01)
 ;;63874-0332-60
 ;;9002226.02101,"1099,63874-0332-60 ",.02)
 ;;63874-0332-60
 ;;9002226.02101,"1099,63874-0332-90 ",.01)
 ;;63874-0332-90
 ;;9002226.02101,"1099,63874-0332-90 ",.02)
 ;;63874-0332-90
 ;;9002226.02101,"1099,63874-0368-01 ",.01)
 ;;63874-0368-01
 ;;9002226.02101,"1099,63874-0368-01 ",.02)
 ;;63874-0368-01
 ;;9002226.02101,"1099,63874-0368-02 ",.01)
 ;;63874-0368-02
 ;;9002226.02101,"1099,63874-0368-02 ",.02)
 ;;63874-0368-02
 ;;9002226.02101,"1099,63874-0368-15 ",.01)
 ;;63874-0368-15
 ;;9002226.02101,"1099,63874-0368-15 ",.02)
 ;;63874-0368-15
 ;;9002226.02101,"1099,63874-0368-20 ",.01)
 ;;63874-0368-20
 ;;9002226.02101,"1099,63874-0368-20 ",.02)
 ;;63874-0368-20
 ;;9002226.02101,"1099,63874-0368-28 ",.01)
 ;;63874-0368-28
 ;;9002226.02101,"1099,63874-0368-28 ",.02)
 ;;63874-0368-28
 ;;9002226.02101,"1099,63874-0368-30 ",.01)
 ;;63874-0368-30
 ;;9002226.02101,"1099,63874-0368-30 ",.02)
 ;;63874-0368-30
 ;;9002226.02101,"1099,63874-0368-60 ",.01)
 ;;63874-0368-60
 ;;9002226.02101,"1099,63874-0368-60 ",.02)
 ;;63874-0368-60
 ;;9002226.02101,"1099,63874-0388-01 ",.01)
 ;;63874-0388-01
 ;;9002226.02101,"1099,63874-0388-01 ",.02)
 ;;63874-0388-01
 ;;9002226.02101,"1099,63874-0388-07 ",.01)
 ;;63874-0388-07
 ;;9002226.02101,"1099,63874-0388-07 ",.02)
 ;;63874-0388-07
 ;;9002226.02101,"1099,63874-0388-10 ",.01)
 ;;63874-0388-10
 ;;9002226.02101,"1099,63874-0388-10 ",.02)
 ;;63874-0388-10
 ;;9002226.02101,"1099,63874-0388-12 ",.01)
 ;;63874-0388-12
 ;;9002226.02101,"1099,63874-0388-12 ",.02)
 ;;63874-0388-12
 ;;9002226.02101,"1099,63874-0388-15 ",.01)
 ;;63874-0388-15
 ;;9002226.02101,"1099,63874-0388-15 ",.02)
 ;;63874-0388-15
 ;;9002226.02101,"1099,63874-0388-20 ",.01)
 ;;63874-0388-20
 ;;9002226.02101,"1099,63874-0388-20 ",.02)
 ;;63874-0388-20
 ;;9002226.02101,"1099,63874-0388-30 ",.01)
 ;;63874-0388-30
 ;;9002226.02101,"1099,63874-0388-30 ",.02)
 ;;63874-0388-30
 ;;9002226.02101,"1099,63874-0406-01 ",.01)
 ;;63874-0406-01
 ;;9002226.02101,"1099,63874-0406-01 ",.02)
 ;;63874-0406-01
 ;;9002226.02101,"1099,63874-0406-10 ",.01)
 ;;63874-0406-10
 ;;9002226.02101,"1099,63874-0406-10 ",.02)
 ;;63874-0406-10
 ;;9002226.02101,"1099,63874-0406-14 ",.01)
 ;;63874-0406-14
 ;;9002226.02101,"1099,63874-0406-14 ",.02)
 ;;63874-0406-14
 ;;9002226.02101,"1099,63874-0406-15 ",.01)
 ;;63874-0406-15
 ;;9002226.02101,"1099,63874-0406-15 ",.02)
 ;;63874-0406-15
 ;;9002226.02101,"1099,63874-0406-20 ",.01)
 ;;63874-0406-20
 ;;9002226.02101,"1099,63874-0406-20 ",.02)
 ;;63874-0406-20
 ;;9002226.02101,"1099,63874-0406-28 ",.01)
 ;;63874-0406-28
 ;;9002226.02101,"1099,63874-0406-28 ",.02)
 ;;63874-0406-28
 ;;9002226.02101,"1099,63874-0406-30 ",.01)
 ;;63874-0406-30
 ;;9002226.02101,"1099,63874-0406-30 ",.02)
 ;;63874-0406-30
 ;;9002226.02101,"1099,63874-0406-60 ",.01)
 ;;63874-0406-60
 ;;9002226.02101,"1099,63874-0406-60 ",.02)
 ;;63874-0406-60
 ;;9002226.02101,"1099,63874-0407-01 ",.01)
 ;;63874-0407-01
 ;;9002226.02101,"1099,63874-0407-01 ",.02)
 ;;63874-0407-01
 ;;9002226.02101,"1099,63874-0407-10 ",.01)
 ;;63874-0407-10
 ;;9002226.02101,"1099,63874-0407-10 ",.02)
 ;;63874-0407-10
 ;;9002226.02101,"1099,63874-0407-15 ",.01)
 ;;63874-0407-15
 ;;9002226.02101,"1099,63874-0407-15 ",.02)
 ;;63874-0407-15
 ;;9002226.02101,"1099,63874-0407-20 ",.01)
 ;;63874-0407-20
 ;;9002226.02101,"1099,63874-0407-20 ",.02)
 ;;63874-0407-20
 ;;9002226.02101,"1099,63874-0407-30 ",.01)
 ;;63874-0407-30
 ;;9002226.02101,"1099,63874-0407-30 ",.02)
 ;;63874-0407-30
 ;;9002226.02101,"1099,63874-0407-60 ",.01)
 ;;63874-0407-60
 ;;9002226.02101,"1099,63874-0407-60 ",.02)
 ;;63874-0407-60
 ;;9002226.02101,"1099,63874-0407-90 ",.01)
 ;;63874-0407-90
 ;;9002226.02101,"1099,63874-0407-90 ",.02)
 ;;63874-0407-90
 ;;9002226.02101,"1099,63874-0454-01 ",.01)
 ;;63874-0454-01
 ;;9002226.02101,"1099,63874-0454-01 ",.02)
 ;;63874-0454-01
 ;;9002226.02101,"1099,63874-0454-02 ",.01)
 ;;63874-0454-02
 ;;9002226.02101,"1099,63874-0454-02 ",.02)
 ;;63874-0454-02
 ;;9002226.02101,"1099,63874-0454-04 ",.01)
 ;;63874-0454-04
 ;;9002226.02101,"1099,63874-0454-04 ",.02)
 ;;63874-0454-04
 ;;9002226.02101,"1099,63874-0454-15 ",.01)
 ;;63874-0454-15
 ;;9002226.02101,"1099,63874-0454-15 ",.02)
 ;;63874-0454-15
 ;;9002226.02101,"1099,63874-0454-20 ",.01)
 ;;63874-0454-20
 ;;9002226.02101,"1099,63874-0454-20 ",.02)
 ;;63874-0454-20
 ;;9002226.02101,"1099,63874-0454-30 ",.01)
 ;;63874-0454-30
 ;;9002226.02101,"1099,63874-0454-30 ",.02)
 ;;63874-0454-30
 ;;9002226.02101,"1099,63874-0454-60 ",.01)
 ;;63874-0454-60
 ;;9002226.02101,"1099,63874-0454-60 ",.02)
 ;;63874-0454-60
 ;;9002226.02101,"1099,63874-0468-01 ",.01)
 ;;63874-0468-01
 ;;9002226.02101,"1099,63874-0468-01 ",.02)
 ;;63874-0468-01
 ;;9002226.02101,"1099,63874-0468-10 ",.01)
 ;;63874-0468-10
 ;;9002226.02101,"1099,63874-0468-10 ",.02)
 ;;63874-0468-10
 ;;9002226.02101,"1099,63874-0468-14 ",.01)
 ;;63874-0468-14
 ;;9002226.02101,"1099,63874-0468-14 ",.02)
 ;;63874-0468-14
 ;;9002226.02101,"1099,63874-0468-15 ",.01)
 ;;63874-0468-15
 ;;9002226.02101,"1099,63874-0468-15 ",.02)
 ;;63874-0468-15
 ;;9002226.02101,"1099,63874-0468-20 ",.01)
 ;;63874-0468-20
 ;;9002226.02101,"1099,63874-0468-20 ",.02)
 ;;63874-0468-20
 ;;9002226.02101,"1099,63874-0468-30 ",.01)
 ;;63874-0468-30
 ;;9002226.02101,"1099,63874-0468-30 ",.02)
 ;;63874-0468-30
 ;;9002226.02101,"1099,63874-0468-60 ",.01)
 ;;63874-0468-60
 ;;9002226.02101,"1099,63874-0468-60 ",.02)
 ;;63874-0468-60
 ;;9002226.02101,"1099,63874-0468-90 ",.01)
 ;;63874-0468-90
 ;;9002226.02101,"1099,63874-0468-90 ",.02)
 ;;63874-0468-90
 ;;9002226.02101,"1099,63874-0486-01 ",.01)
 ;;63874-0486-01
 ;;9002226.02101,"1099,63874-0486-01 ",.02)
 ;;63874-0486-01
 ;;9002226.02101,"1099,63874-0486-02 ",.01)
 ;;63874-0486-02
 ;;9002226.02101,"1099,63874-0486-02 ",.02)
 ;;63874-0486-02
 ;;9002226.02101,"1099,63874-0486-15 ",.01)
 ;;63874-0486-15
 ;;9002226.02101,"1099,63874-0486-15 ",.02)
 ;;63874-0486-15
 ;;9002226.02101,"1099,63874-0486-30 ",.01)
 ;;63874-0486-30
 ;;9002226.02101,"1099,63874-0486-30 ",.02)
 ;;63874-0486-30
 ;;9002226.02101,"1099,63874-0486-40 ",.01)
 ;;63874-0486-40
 ;;9002226.02101,"1099,63874-0486-40 ",.02)
 ;;63874-0486-40
 ;;9002226.02101,"1099,63874-0486-60 ",.01)
 ;;63874-0486-60
 ;;9002226.02101,"1099,63874-0486-60 ",.02)
 ;;63874-0486-60
 ;;9002226.02101,"1099,64376-0502-01 ",.01)
 ;;64376-0502-01
 ;;9002226.02101,"1099,64376-0502-01 ",.02)
 ;;64376-0502-01
 ;;9002226.02101,"1099,64376-0502-10 ",.01)
 ;;64376-0502-10
 ;;9002226.02101,"1099,64376-0502-10 ",.02)
 ;;64376-0502-10
 ;;9002226.02101,"1099,64376-0503-01 ",.01)
 ;;64376-0503-01
 ;;9002226.02101,"1099,64376-0503-01 ",.02)
 ;;64376-0503-01
 ;;9002226.02101,"1099,64376-0503-10 ",.01)
 ;;64376-0503-10
 ;;9002226.02101,"1099,64376-0503-10 ",.02)
 ;;64376-0503-10
 ;;9002226.02101,"1099,64679-0734-02 ",.01)
 ;;64679-0734-02
 ;;9002226.02101,"1099,64679-0734-02 ",.02)
 ;;64679-0734-02
 ;;9002226.02101,"1099,64679-0734-03 ",.01)
 ;;64679-0734-03
 ;;9002226.02101,"1099,64679-0734-03 ",.02)
 ;;64679-0734-03
 ;;9002226.02101,"1099,64679-0734-08 ",.01)
 ;;64679-0734-08
 ;;9002226.02101,"1099,64679-0734-08 ",.02)
 ;;64679-0734-08
 ;;9002226.02101,"1099,64679-0735-02 ",.01)
 ;;64679-0735-02
 ;;9002226.02101,"1099,64679-0735-02 ",.02)
 ;;64679-0735-02
 ;;9002226.02101,"1099,64679-0735-03 ",.01)
 ;;64679-0735-03
 ;;9002226.02101,"1099,64679-0735-03 ",.02)
 ;;64679-0735-03
 ;;9002226.02101,"1099,64679-0735-08 ",.01)
 ;;64679-0735-08
 ;;9002226.02101,"1099,64679-0735-08 ",.02)
 ;;64679-0735-08
 ;;9002226.02101,"1099,64679-0736-02 ",.01)
 ;;64679-0736-02
 ;;9002226.02101,"1099,64679-0736-02 ",.02)
 ;;64679-0736-02
 ;;9002226.02101,"1099,64679-0736-03 ",.01)
 ;;64679-0736-03
 ;;9002226.02101,"1099,64679-0736-03 ",.02)
 ;;64679-0736-03
 ;;9002226.02101,"1099,64679-0736-08 ",.01)
 ;;64679-0736-08
 ;;9002226.02101,"1099,64679-0736-08 ",.02)
 ;;64679-0736-08
 ;;9002226.02101,"1099,64679-0737-02 ",.01)
 ;;64679-0737-02
 ;;9002226.02101,"1099,64679-0737-02 ",.02)
 ;;64679-0737-02
 ;;9002226.02101,"1099,64679-0737-03 ",.01)
 ;;64679-0737-03
 ;;9002226.02101,"1099,64679-0737-03 ",.02)
 ;;64679-0737-03
 ;;9002226.02101,"1099,64679-0737-08 ",.01)
 ;;64679-0737-08
 ;;9002226.02101,"1099,64679-0737-08 ",.02)
 ;;64679-0737-08
 ;;9002226.02101,"1099,65162-0669-10 ",.01)
 ;;65162-0669-10
 ;;9002226.02101,"1099,65162-0669-10 ",.02)
 ;;65162-0669-10
 ;;9002226.02101,"1099,65162-0670-10 ",.01)
 ;;65162-0670-10
 ;;9002226.02101,"1099,65162-0670-10 ",.02)
 ;;65162-0670-10
 ;;9002226.02101,"1099,65243-0014-03 ",.01)
 ;;65243-0014-03
 ;;9002226.02101,"1099,65243-0014-03 ",.02)
 ;;65243-0014-03
 ;;9002226.02101,"1099,65243-0014-09 ",.01)
 ;;65243-0014-09
 ;;9002226.02101,"1099,65243-0014-09 ",.02)
 ;;65243-0014-09
 ;;9002226.02101,"1099,65243-0014-18 ",.01)
 ;;65243-0014-18
 ;;9002226.02101,"1099,65243-0014-18 ",.02)
 ;;65243-0014-18
 ;;9002226.02101,"1099,65243-0014-45 ",.01)
 ;;65243-0014-45
 ;;9002226.02101,"1099,65243-0014-45 ",.02)
 ;;65243-0014-45
 ;;9002226.02101,"1099,65243-0232-03 ",.01)
 ;;65243-0232-03
 ;;9002226.02101,"1099,65243-0232-03 ",.02)
 ;;65243-0232-03
 ;;9002226.02101,"1099,65243-0232-06 ",.01)
 ;;65243-0232-06
 ;;9002226.02101,"1099,65243-0232-06 ",.02)
 ;;65243-0232-06
 ;;9002226.02101,"1099,65243-0232-09 ",.01)
 ;;65243-0232-09
 ;;9002226.02101,"1099,65243-0232-09 ",.02)
 ;;65243-0232-09
 ;;9002226.02101,"1099,65243-0232-12 ",.01)
 ;;65243-0232-12
 ;;9002226.02101,"1099,65243-0232-12 ",.02)
 ;;65243-0232-12
 ;;9002226.02101,"1099,65243-0232-18 ",.01)
 ;;65243-0232-18
 ;;9002226.02101,"1099,65243-0232-18 ",.02)
 ;;65243-0232-18
 ;;9002226.02101,"1099,65243-0265-03 ",.01)
 ;;65243-0265-03
 ;;9002226.02101,"1099,65243-0265-03 ",.02)
 ;;65243-0265-03
