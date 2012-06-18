BGP9SXJL ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"733,54868-3215-01 ",.01)
 ;;54868-3215-01
 ;;9002226.02101,"733,54868-3215-01 ",.02)
 ;;54868-3215-01
 ;;9002226.02101,"733,54868-3451-00 ",.01)
 ;;54868-3451-00
 ;;9002226.02101,"733,54868-3451-00 ",.02)
 ;;54868-3451-00
 ;;9002226.02101,"733,54868-3893-00 ",.01)
 ;;54868-3893-00
 ;;9002226.02101,"733,54868-3893-00 ",.02)
 ;;54868-3893-00
 ;;9002226.02101,"733,55053-0111-01 ",.01)
 ;;55053-0111-01
 ;;9002226.02101,"733,55053-0111-01 ",.02)
 ;;55053-0111-01
 ;;9002226.02101,"733,55053-0124-01 ",.01)
 ;;55053-0124-01
 ;;9002226.02101,"733,55053-0124-01 ",.02)
 ;;55053-0124-01
 ;;9002226.02101,"733,55053-0170-01 ",.01)
 ;;55053-0170-01
 ;;9002226.02101,"733,55053-0170-01 ",.02)
 ;;55053-0170-01
 ;;9002226.02101,"733,55053-0310-01 ",.01)
 ;;55053-0310-01
 ;;9002226.02101,"733,55053-0310-01 ",.02)
 ;;55053-0310-01
 ;;9002226.02101,"733,55053-0380-15 ",.01)
 ;;55053-0380-15
 ;;9002226.02101,"733,55053-0380-15 ",.02)
 ;;55053-0380-15
 ;;9002226.02101,"733,55053-0717-01 ",.01)
 ;;55053-0717-01
 ;;9002226.02101,"733,55053-0717-01 ",.02)
 ;;55053-0717-01
 ;;9002226.02101,"733,55289-0035-01 ",.01)
 ;;55289-0035-01
 ;;9002226.02101,"733,55289-0035-01 ",.02)
 ;;55289-0035-01
 ;;9002226.02101,"733,55289-0035-14 ",.01)
 ;;55289-0035-14
 ;;9002226.02101,"733,55289-0035-14 ",.02)
 ;;55289-0035-14
 ;;9002226.02101,"733,55289-0035-20 ",.01)
 ;;55289-0035-20
 ;;9002226.02101,"733,55289-0035-20 ",.02)
 ;;55289-0035-20
 ;;9002226.02101,"733,55289-0035-30 ",.01)
 ;;55289-0035-30
 ;;9002226.02101,"733,55289-0035-30 ",.02)
 ;;55289-0035-30
 ;;9002226.02101,"733,55289-0035-60 ",.01)
 ;;55289-0035-60
 ;;9002226.02101,"733,55289-0035-60 ",.02)
 ;;55289-0035-60
 ;;9002226.02101,"733,55289-0035-97 ",.01)
 ;;55289-0035-97
 ;;9002226.02101,"733,55289-0035-97 ",.02)
 ;;55289-0035-97
 ;;9002226.02101,"733,55289-0586-04 ",.01)
 ;;55289-0586-04
 ;;9002226.02101,"733,55289-0586-04 ",.02)
 ;;55289-0586-04
 ;;9002226.02101,"733,55289-0586-08 ",.01)
 ;;55289-0586-08
 ;;9002226.02101,"733,55289-0586-08 ",.02)
 ;;55289-0586-08
 ;;9002226.02101,"733,57779-0101-04 ",.01)
 ;;57779-0101-04
 ;;9002226.02101,"733,57779-0101-04 ",.02)
 ;;57779-0101-04
 ;;9002226.02101,"733,57866-3763-01 ",.01)
 ;;57866-3763-01
 ;;9002226.02101,"733,57866-3763-01 ",.02)
 ;;57866-3763-01
 ;;9002226.02101,"733,57866-3764-01 ",.01)
 ;;57866-3764-01
 ;;9002226.02101,"733,57866-3764-01 ",.02)
 ;;57866-3764-01
 ;;9002226.02101,"733,57866-9028-01 ",.01)
 ;;57866-9028-01
 ;;9002226.02101,"733,57866-9028-01 ",.02)
 ;;57866-9028-01
 ;;9002226.02101,"733,58016-0016-00 ",.01)
 ;;58016-0016-00
 ;;9002226.02101,"733,58016-0016-00 ",.02)
 ;;58016-0016-00
 ;;9002226.02101,"733,58016-0016-30 ",.01)
 ;;58016-0016-30
 ;;9002226.02101,"733,58016-0016-30 ",.02)
 ;;58016-0016-30
 ;;9002226.02101,"733,58016-0016-60 ",.01)
 ;;58016-0016-60
 ;;9002226.02101,"733,58016-0016-60 ",.02)
 ;;58016-0016-60
 ;;9002226.02101,"733,58016-0016-90 ",.01)
 ;;58016-0016-90
 ;;9002226.02101,"733,58016-0016-90 ",.02)
 ;;58016-0016-90
 ;;9002226.02101,"733,58016-0032-00 ",.01)
 ;;58016-0032-00
 ;;9002226.02101,"733,58016-0032-00 ",.02)
 ;;58016-0032-00
 ;;9002226.02101,"733,58016-0032-30 ",.01)
 ;;58016-0032-30
 ;;9002226.02101,"733,58016-0032-30 ",.02)
 ;;58016-0032-30
 ;;9002226.02101,"733,58016-0032-60 ",.01)
 ;;58016-0032-60
 ;;9002226.02101,"733,58016-0032-60 ",.02)
 ;;58016-0032-60
 ;;9002226.02101,"733,58016-0032-90 ",.01)
 ;;58016-0032-90
 ;;9002226.02101,"733,58016-0032-90 ",.02)
 ;;58016-0032-90
 ;;9002226.02101,"733,58016-0159-50 ",.01)
 ;;58016-0159-50
 ;;9002226.02101,"733,58016-0159-50 ",.02)
 ;;58016-0159-50
 ;;9002226.02101,"733,58016-0499-24 ",.01)
 ;;58016-0499-24
 ;;9002226.02101,"733,58016-0499-24 ",.02)
 ;;58016-0499-24
 ;;9002226.02101,"733,58016-0499-48 ",.01)
 ;;58016-0499-48
 ;;9002226.02101,"733,58016-0499-48 ",.02)
 ;;58016-0499-48
 ;;9002226.02101,"733,58016-0700-24 ",.01)
 ;;58016-0700-24
 ;;9002226.02101,"733,58016-0700-24 ",.02)
 ;;58016-0700-24
 ;;9002226.02101,"733,58016-0709-00 ",.01)
 ;;58016-0709-00
 ;;9002226.02101,"733,58016-0709-00 ",.02)
 ;;58016-0709-00
 ;;9002226.02101,"733,58016-0709-02 ",.01)
 ;;58016-0709-02
 ;;9002226.02101,"733,58016-0709-02 ",.02)
 ;;58016-0709-02
 ;;9002226.02101,"733,58016-0709-03 ",.01)
 ;;58016-0709-03
 ;;9002226.02101,"733,58016-0709-03 ",.02)
 ;;58016-0709-03
 ;;9002226.02101,"733,58016-0709-20 ",.01)
 ;;58016-0709-20
 ;;9002226.02101,"733,58016-0709-20 ",.02)
 ;;58016-0709-20
 ;;9002226.02101,"733,58016-0709-30 ",.01)
 ;;58016-0709-30
 ;;9002226.02101,"733,58016-0709-30 ",.02)
 ;;58016-0709-30
 ;;9002226.02101,"733,58016-0709-40 ",.01)
 ;;58016-0709-40
 ;;9002226.02101,"733,58016-0709-40 ",.02)
 ;;58016-0709-40
 ;;9002226.02101,"733,58016-0709-42 ",.01)
 ;;58016-0709-42
 ;;9002226.02101,"733,58016-0709-42 ",.02)
 ;;58016-0709-42
 ;;9002226.02101,"733,58016-0709-50 ",.01)
 ;;58016-0709-50
 ;;9002226.02101,"733,58016-0709-50 ",.02)
 ;;58016-0709-50
 ;;9002226.02101,"733,58016-0709-73 ",.01)
 ;;58016-0709-73
 ;;9002226.02101,"733,58016-0709-73 ",.02)
 ;;58016-0709-73
 ;;9002226.02101,"733,58016-0709-89 ",.01)
 ;;58016-0709-89
 ;;9002226.02101,"733,58016-0709-89 ",.02)
 ;;58016-0709-89
