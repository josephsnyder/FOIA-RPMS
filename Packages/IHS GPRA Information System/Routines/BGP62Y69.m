BGP62Y69 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,55289-0241-97 ",.02)
 ;;55289-0241-97
 ;;9002226.02101,"868,55289-0274-02 ",.01)
 ;;55289-0274-02
 ;;9002226.02101,"868,55289-0274-02 ",.02)
 ;;55289-0274-02
 ;;9002226.02101,"868,55289-0274-03 ",.01)
 ;;55289-0274-03
 ;;9002226.02101,"868,55289-0274-03 ",.02)
 ;;55289-0274-03
 ;;9002226.02101,"868,55289-0274-07 ",.01)
 ;;55289-0274-07
 ;;9002226.02101,"868,55289-0274-07 ",.02)
 ;;55289-0274-07
 ;;9002226.02101,"868,55289-0310-04 ",.01)
 ;;55289-0310-04
 ;;9002226.02101,"868,55289-0310-04 ",.02)
 ;;55289-0310-04
 ;;9002226.02101,"868,55289-0310-06 ",.01)
 ;;55289-0310-06
 ;;9002226.02101,"868,55289-0310-06 ",.02)
 ;;55289-0310-06
 ;;9002226.02101,"868,55289-0310-14 ",.01)
 ;;55289-0310-14
 ;;9002226.02101,"868,55289-0310-14 ",.02)
 ;;55289-0310-14
 ;;9002226.02101,"868,55289-0371-03 ",.01)
 ;;55289-0371-03
 ;;9002226.02101,"868,55289-0371-03 ",.02)
 ;;55289-0371-03
 ;;9002226.02101,"868,55289-0371-06 ",.01)
 ;;55289-0371-06
 ;;9002226.02101,"868,55289-0371-06 ",.02)
 ;;55289-0371-06
 ;;9002226.02101,"868,55289-0371-10 ",.01)
 ;;55289-0371-10
 ;;9002226.02101,"868,55289-0371-10 ",.02)
 ;;55289-0371-10
 ;;9002226.02101,"868,55289-0371-14 ",.01)
 ;;55289-0371-14
 ;;9002226.02101,"868,55289-0371-14 ",.02)
 ;;55289-0371-14
 ;;9002226.02101,"868,55289-0371-15 ",.01)
 ;;55289-0371-15
 ;;9002226.02101,"868,55289-0371-15 ",.02)
 ;;55289-0371-15
 ;;9002226.02101,"868,55289-0371-20 ",.01)
 ;;55289-0371-20
 ;;9002226.02101,"868,55289-0371-20 ",.02)
 ;;55289-0371-20
 ;;9002226.02101,"868,55289-0371-30 ",.01)
 ;;55289-0371-30
 ;;9002226.02101,"868,55289-0371-30 ",.02)
 ;;55289-0371-30
 ;;9002226.02101,"868,55289-0371-40 ",.01)
 ;;55289-0371-40
 ;;9002226.02101,"868,55289-0371-40 ",.02)
 ;;55289-0371-40
 ;;9002226.02101,"868,55289-0371-50 ",.01)
 ;;55289-0371-50
 ;;9002226.02101,"868,55289-0371-50 ",.02)
 ;;55289-0371-50
 ;;9002226.02101,"868,55289-0371-79 ",.01)
 ;;55289-0371-79
 ;;9002226.02101,"868,55289-0371-79 ",.02)
 ;;55289-0371-79
 ;;9002226.02101,"868,55289-0371-97 ",.01)
 ;;55289-0371-97
 ;;9002226.02101,"868,55289-0371-97 ",.02)
 ;;55289-0371-97
 ;;9002226.02101,"868,55289-0372-10 ",.01)
 ;;55289-0372-10
 ;;9002226.02101,"868,55289-0372-10 ",.02)
 ;;55289-0372-10
 ;;9002226.02101,"868,55289-0372-14 ",.01)
 ;;55289-0372-14
 ;;9002226.02101,"868,55289-0372-14 ",.02)
 ;;55289-0372-14
 ;;9002226.02101,"868,55289-0372-20 ",.01)
 ;;55289-0372-20
 ;;9002226.02101,"868,55289-0372-20 ",.02)
 ;;55289-0372-20
 ;;9002226.02101,"868,55289-0372-97 ",.01)
 ;;55289-0372-97
 ;;9002226.02101,"868,55289-0372-97 ",.02)
 ;;55289-0372-97
 ;;9002226.02101,"868,55289-0385-04 ",.01)
 ;;55289-0385-04
 ;;9002226.02101,"868,55289-0385-04 ",.02)
 ;;55289-0385-04
 ;;9002226.02101,"868,55289-0385-30 ",.01)
 ;;55289-0385-30
 ;;9002226.02101,"868,55289-0385-30 ",.02)
 ;;55289-0385-30
 ;;9002226.02101,"868,55289-0393-02 ",.01)
 ;;55289-0393-02
 ;;9002226.02101,"868,55289-0393-02 ",.02)
 ;;55289-0393-02
 ;;9002226.02101,"868,55289-0394-05 ",.01)
 ;;55289-0394-05
 ;;9002226.02101,"868,55289-0394-05 ",.02)
 ;;55289-0394-05
 ;;9002226.02101,"868,55289-0394-07 ",.01)
 ;;55289-0394-07
 ;;9002226.02101,"868,55289-0394-07 ",.02)
 ;;55289-0394-07
 ;;9002226.02101,"868,55289-0405-14 ",.01)
 ;;55289-0405-14
 ;;9002226.02101,"868,55289-0405-14 ",.02)
 ;;55289-0405-14
 ;;9002226.02101,"868,55289-0405-20 ",.01)
 ;;55289-0405-20
 ;;9002226.02101,"868,55289-0405-20 ",.02)
 ;;55289-0405-20
 ;;9002226.02101,"868,55289-0426-21 ",.01)
 ;;55289-0426-21
 ;;9002226.02101,"868,55289-0426-21 ",.02)
 ;;55289-0426-21
 ;;9002226.02101,"868,55289-0441-04 ",.01)
 ;;55289-0441-04
 ;;9002226.02101,"868,55289-0441-04 ",.02)
 ;;55289-0441-04
 ;;9002226.02101,"868,55289-0441-15 ",.01)
 ;;55289-0441-15
 ;;9002226.02101,"868,55289-0441-15 ",.02)
 ;;55289-0441-15
 ;;9002226.02101,"868,55289-0441-17 ",.01)
 ;;55289-0441-17
 ;;9002226.02101,"868,55289-0441-17 ",.02)
 ;;55289-0441-17
 ;;9002226.02101,"868,55289-0441-20 ",.01)
 ;;55289-0441-20
 ;;9002226.02101,"868,55289-0441-20 ",.02)
 ;;55289-0441-20
 ;;9002226.02101,"868,55289-0441-28 ",.01)
 ;;55289-0441-28
 ;;9002226.02101,"868,55289-0441-28 ",.02)
 ;;55289-0441-28
 ;;9002226.02101,"868,55289-0441-30 ",.01)
 ;;55289-0441-30
 ;;9002226.02101,"868,55289-0441-30 ",.02)
 ;;55289-0441-30
 ;;9002226.02101,"868,55289-0441-40 ",.01)
 ;;55289-0441-40
 ;;9002226.02101,"868,55289-0441-40 ",.02)
 ;;55289-0441-40
 ;;9002226.02101,"868,55289-0441-42 ",.01)
 ;;55289-0441-42
 ;;9002226.02101,"868,55289-0441-42 ",.02)
 ;;55289-0441-42
 ;;9002226.02101,"868,55289-0441-56 ",.01)
 ;;55289-0441-56
 ;;9002226.02101,"868,55289-0441-56 ",.02)
 ;;55289-0441-56
 ;;9002226.02101,"868,55289-0441-80 ",.01)
 ;;55289-0441-80
 ;;9002226.02101,"868,55289-0441-80 ",.02)
 ;;55289-0441-80
 ;;9002226.02101,"868,55289-0441-97 ",.01)
 ;;55289-0441-97
 ;;9002226.02101,"868,55289-0441-97 ",.02)
 ;;55289-0441-97
 ;;9002226.02101,"868,55289-0446-01 ",.01)
 ;;55289-0446-01
 ;;9002226.02101,"868,55289-0446-01 ",.02)
 ;;55289-0446-01
 ;;9002226.02101,"868,55289-0446-10 ",.01)
 ;;55289-0446-10
 ;;9002226.02101,"868,55289-0446-10 ",.02)
 ;;55289-0446-10
 ;;9002226.02101,"868,55289-0446-12 ",.01)
 ;;55289-0446-12
 ;;9002226.02101,"868,55289-0446-12 ",.02)
 ;;55289-0446-12
 ;;9002226.02101,"868,55289-0446-14 ",.01)
 ;;55289-0446-14
 ;;9002226.02101,"868,55289-0446-14 ",.02)
 ;;55289-0446-14
 ;;9002226.02101,"868,55289-0446-16 ",.01)
 ;;55289-0446-16
 ;;9002226.02101,"868,55289-0446-16 ",.02)
 ;;55289-0446-16
 ;;9002226.02101,"868,55289-0446-20 ",.01)
 ;;55289-0446-20
 ;;9002226.02101,"868,55289-0446-20 ",.02)
 ;;55289-0446-20
 ;;9002226.02101,"868,55289-0446-28 ",.01)
 ;;55289-0446-28
 ;;9002226.02101,"868,55289-0446-28 ",.02)
 ;;55289-0446-28
 ;;9002226.02101,"868,55289-0446-30 ",.01)
 ;;55289-0446-30
 ;;9002226.02101,"868,55289-0446-30 ",.02)
 ;;55289-0446-30
 ;;9002226.02101,"868,55289-0446-40 ",.01)
 ;;55289-0446-40
 ;;9002226.02101,"868,55289-0446-40 ",.02)
 ;;55289-0446-40
 ;;9002226.02101,"868,55289-0446-56 ",.01)
 ;;55289-0446-56
 ;;9002226.02101,"868,55289-0446-56 ",.02)
 ;;55289-0446-56
 ;;9002226.02101,"868,55289-0446-60 ",.01)
 ;;55289-0446-60
 ;;9002226.02101,"868,55289-0446-60 ",.02)
 ;;55289-0446-60
 ;;9002226.02101,"868,55289-0457-10 ",.01)
 ;;55289-0457-10
 ;;9002226.02101,"868,55289-0457-10 ",.02)
 ;;55289-0457-10
 ;;9002226.02101,"868,55289-0457-20 ",.01)
 ;;55289-0457-20
 ;;9002226.02101,"868,55289-0457-20 ",.02)
 ;;55289-0457-20
 ;;9002226.02101,"868,55289-0459-06 ",.01)
 ;;55289-0459-06
 ;;9002226.02101,"868,55289-0459-06 ",.02)
 ;;55289-0459-06
 ;;9002226.02101,"868,55289-0459-10 ",.01)
 ;;55289-0459-10
 ;;9002226.02101,"868,55289-0459-10 ",.02)
 ;;55289-0459-10
 ;;9002226.02101,"868,55289-0459-12 ",.01)
 ;;55289-0459-12
 ;;9002226.02101,"868,55289-0459-12 ",.02)
 ;;55289-0459-12
 ;;9002226.02101,"868,55289-0459-14 ",.01)
 ;;55289-0459-14
 ;;9002226.02101,"868,55289-0459-14 ",.02)
 ;;55289-0459-14
 ;;9002226.02101,"868,55289-0502-16 ",.01)
 ;;55289-0502-16
 ;;9002226.02101,"868,55289-0502-16 ",.02)
 ;;55289-0502-16
 ;;9002226.02101,"868,55289-0502-30 ",.01)
 ;;55289-0502-30
 ;;9002226.02101,"868,55289-0502-30 ",.02)
 ;;55289-0502-30
 ;;9002226.02101,"868,55289-0502-60 ",.01)
 ;;55289-0502-60
 ;;9002226.02101,"868,55289-0502-60 ",.02)
 ;;55289-0502-60
 ;;9002226.02101,"868,55289-0525-21 ",.01)
 ;;55289-0525-21
 ;;9002226.02101,"868,55289-0525-21 ",.02)
 ;;55289-0525-21
 ;;9002226.02101,"868,55289-0525-30 ",.01)
 ;;55289-0525-30
 ;;9002226.02101,"868,55289-0525-30 ",.02)
 ;;55289-0525-30
 ;;9002226.02101,"868,55289-0525-40 ",.01)
 ;;55289-0525-40
 ;;9002226.02101,"868,55289-0525-40 ",.02)
 ;;55289-0525-40
 ;;9002226.02101,"868,55289-0525-42 ",.01)
 ;;55289-0525-42
 ;;9002226.02101,"868,55289-0525-42 ",.02)
 ;;55289-0525-42
 ;;9002226.02101,"868,55289-0525-63 ",.01)
 ;;55289-0525-63
 ;;9002226.02101,"868,55289-0525-63 ",.02)
 ;;55289-0525-63
 ;;9002226.02101,"868,55289-0542-10 ",.01)
 ;;55289-0542-10
 ;;9002226.02101,"868,55289-0542-10 ",.02)
 ;;55289-0542-10
 ;;9002226.02101,"868,55289-0589-14 ",.01)
 ;;55289-0589-14
 ;;9002226.02101,"868,55289-0589-14 ",.02)
 ;;55289-0589-14
 ;;9002226.02101,"868,55289-0589-20 ",.01)
 ;;55289-0589-20
 ;;9002226.02101,"868,55289-0589-20 ",.02)
 ;;55289-0589-20
 ;;9002226.02101,"868,55289-0589-28 ",.01)
 ;;55289-0589-28
 ;;9002226.02101,"868,55289-0589-28 ",.02)
 ;;55289-0589-28
 ;;9002226.02101,"868,55289-0592-10 ",.01)
 ;;55289-0592-10
 ;;9002226.02101,"868,55289-0592-10 ",.02)
 ;;55289-0592-10
 ;;9002226.02101,"868,55289-0592-20 ",.01)
 ;;55289-0592-20
 ;;9002226.02101,"868,55289-0592-20 ",.02)
 ;;55289-0592-20
 ;;9002226.02101,"868,55289-0592-28 ",.01)
 ;;55289-0592-28
 ;;9002226.02101,"868,55289-0592-28 ",.02)
 ;;55289-0592-28
 ;;9002226.02101,"868,55289-0592-40 ",.01)
 ;;55289-0592-40
 ;;9002226.02101,"868,55289-0592-40 ",.02)
 ;;55289-0592-40
 ;;9002226.02101,"868,55289-0592-97 ",.01)
 ;;55289-0592-97
 ;;9002226.02101,"868,55289-0592-97 ",.02)
 ;;55289-0592-97
 ;;9002226.02101,"868,55289-0612-28 ",.01)
 ;;55289-0612-28
 ;;9002226.02101,"868,55289-0612-28 ",.02)
 ;;55289-0612-28
 ;;9002226.02101,"868,55289-0612-30 ",.01)
 ;;55289-0612-30
 ;;9002226.02101,"868,55289-0612-30 ",.02)
 ;;55289-0612-30
 ;;9002226.02101,"868,55289-0645-20 ",.01)
 ;;55289-0645-20
 ;;9002226.02101,"868,55289-0645-20 ",.02)
 ;;55289-0645-20
 ;;9002226.02101,"868,55289-0645-28 ",.01)
 ;;55289-0645-28
 ;;9002226.02101,"868,55289-0645-28 ",.02)
 ;;55289-0645-28
 ;;9002226.02101,"868,55289-0645-30 ",.01)
 ;;55289-0645-30
 ;;9002226.02101,"868,55289-0645-30 ",.02)
 ;;55289-0645-30
 ;;9002226.02101,"868,55289-0645-40 ",.01)
 ;;55289-0645-40
 ;;9002226.02101,"868,55289-0645-40 ",.02)
 ;;55289-0645-40
 ;;9002226.02101,"868,55289-0645-56 ",.01)
 ;;55289-0645-56
 ;;9002226.02101,"868,55289-0645-56 ",.02)
 ;;55289-0645-56
 ;;9002226.02101,"868,55289-0645-80 ",.01)
 ;;55289-0645-80
 ;;9002226.02101,"868,55289-0645-80 ",.02)
 ;;55289-0645-80
 ;;9002226.02101,"868,55289-0705-02 ",.01)
 ;;55289-0705-02
 ;;9002226.02101,"868,55289-0705-02 ",.02)
 ;;55289-0705-02
 ;;9002226.02101,"868,55289-0705-06 ",.01)
 ;;55289-0705-06
 ;;9002226.02101,"868,55289-0705-06 ",.02)
 ;;55289-0705-06
 ;;9002226.02101,"868,55289-0705-15 ",.01)
 ;;55289-0705-15
 ;;9002226.02101,"868,55289-0705-15 ",.02)
 ;;55289-0705-15
 ;;9002226.02101,"868,55289-0705-16 ",.01)
 ;;55289-0705-16
 ;;9002226.02101,"868,55289-0705-16 ",.02)
 ;;55289-0705-16
 ;;9002226.02101,"868,55289-0705-20 ",.01)
 ;;55289-0705-20
 ;;9002226.02101,"868,55289-0705-20 ",.02)
 ;;55289-0705-20
 ;;9002226.02101,"868,55289-0705-28 ",.01)
 ;;55289-0705-28
 ;;9002226.02101,"868,55289-0705-28 ",.02)
 ;;55289-0705-28
 ;;9002226.02101,"868,55289-0705-30 ",.01)
 ;;55289-0705-30
 ;;9002226.02101,"868,55289-0705-30 ",.02)
 ;;55289-0705-30
 ;;9002226.02101,"868,55289-0705-40 ",.01)
 ;;55289-0705-40
 ;;9002226.02101,"868,55289-0705-40 ",.02)
 ;;55289-0705-40
 ;;9002226.02101,"868,55289-0705-56 ",.01)
 ;;55289-0705-56
 ;;9002226.02101,"868,55289-0705-56 ",.02)
 ;;55289-0705-56
 ;;9002226.02101,"868,55289-0707-20 ",.01)
 ;;55289-0707-20
 ;;9002226.02101,"868,55289-0707-20 ",.02)
 ;;55289-0707-20
 ;;9002226.02101,"868,55289-0707-28 ",.01)
 ;;55289-0707-28
 ;;9002226.02101,"868,55289-0707-28 ",.02)
 ;;55289-0707-28
 ;;9002226.02101,"868,55289-0711-07 ",.01)
 ;;55289-0711-07
 ;;9002226.02101,"868,55289-0711-07 ",.02)
 ;;55289-0711-07
 ;;9002226.02101,"868,55289-0711-10 ",.01)
 ;;55289-0711-10
 ;;9002226.02101,"868,55289-0711-10 ",.02)
 ;;55289-0711-10
 ;;9002226.02101,"868,55289-0711-14 ",.01)
 ;;55289-0711-14
