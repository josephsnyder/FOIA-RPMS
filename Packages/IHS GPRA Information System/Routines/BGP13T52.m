BGP13T52 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"992,58016-0814-02 ",.02)
 ;;58016-0814-02
 ;;9002226.02101,"992,58016-0814-15 ",.01)
 ;;58016-0814-15
 ;;9002226.02101,"992,58016-0814-15 ",.02)
 ;;58016-0814-15
 ;;9002226.02101,"992,58016-0814-20 ",.01)
 ;;58016-0814-20
 ;;9002226.02101,"992,58016-0814-20 ",.02)
 ;;58016-0814-20
 ;;9002226.02101,"992,58016-0814-25 ",.01)
 ;;58016-0814-25
 ;;9002226.02101,"992,58016-0814-25 ",.02)
 ;;58016-0814-25
 ;;9002226.02101,"992,58016-0814-30 ",.01)
 ;;58016-0814-30
 ;;9002226.02101,"992,58016-0814-30 ",.02)
 ;;58016-0814-30
 ;;9002226.02101,"992,58016-0814-40 ",.01)
 ;;58016-0814-40
 ;;9002226.02101,"992,58016-0814-40 ",.02)
 ;;58016-0814-40
 ;;9002226.02101,"992,58016-0814-45 ",.01)
 ;;58016-0814-45
 ;;9002226.02101,"992,58016-0814-45 ",.02)
 ;;58016-0814-45
 ;;9002226.02101,"992,58016-0814-50 ",.01)
 ;;58016-0814-50
 ;;9002226.02101,"992,58016-0814-50 ",.02)
 ;;58016-0814-50
 ;;9002226.02101,"992,58016-0814-60 ",.01)
 ;;58016-0814-60
 ;;9002226.02101,"992,58016-0814-60 ",.02)
 ;;58016-0814-60
 ;;9002226.02101,"992,58016-0814-89 ",.01)
 ;;58016-0814-89
 ;;9002226.02101,"992,58016-0814-89 ",.02)
 ;;58016-0814-89
 ;;9002226.02101,"992,58016-0814-90 ",.01)
 ;;58016-0814-90
 ;;9002226.02101,"992,58016-0814-90 ",.02)
 ;;58016-0814-90
 ;;9002226.02101,"992,58016-0814-99 ",.01)
 ;;58016-0814-99
 ;;9002226.02101,"992,58016-0814-99 ",.02)
 ;;58016-0814-99
 ;;9002226.02101,"992,58016-0815-00 ",.01)
 ;;58016-0815-00
 ;;9002226.02101,"992,58016-0815-00 ",.02)
 ;;58016-0815-00
 ;;9002226.02101,"992,58016-0815-15 ",.01)
 ;;58016-0815-15
 ;;9002226.02101,"992,58016-0815-15 ",.02)
 ;;58016-0815-15
 ;;9002226.02101,"992,58016-0815-20 ",.01)
 ;;58016-0815-20
 ;;9002226.02101,"992,58016-0815-20 ",.02)
 ;;58016-0815-20
 ;;9002226.02101,"992,58016-0815-21 ",.01)
 ;;58016-0815-21
 ;;9002226.02101,"992,58016-0815-21 ",.02)
 ;;58016-0815-21
 ;;9002226.02101,"992,58016-0815-28 ",.01)
 ;;58016-0815-28
 ;;9002226.02101,"992,58016-0815-28 ",.02)
 ;;58016-0815-28
 ;;9002226.02101,"992,58016-0815-30 ",.01)
 ;;58016-0815-30
 ;;9002226.02101,"992,58016-0815-30 ",.02)
 ;;58016-0815-30
 ;;9002226.02101,"992,58016-0815-60 ",.01)
 ;;58016-0815-60
 ;;9002226.02101,"992,58016-0815-60 ",.02)
 ;;58016-0815-60
 ;;9002226.02101,"992,58016-0815-90 ",.01)
 ;;58016-0815-90
 ;;9002226.02101,"992,58016-0815-90 ",.02)
 ;;58016-0815-90
 ;;9002226.02101,"992,58016-0815-99 ",.01)
 ;;58016-0815-99
 ;;9002226.02101,"992,58016-0815-99 ",.02)
 ;;58016-0815-99
 ;;9002226.02101,"992,58016-0817-00 ",.01)
 ;;58016-0817-00
 ;;9002226.02101,"992,58016-0817-00 ",.02)
 ;;58016-0817-00
 ;;9002226.02101,"992,58016-0817-02 ",.01)
 ;;58016-0817-02
 ;;9002226.02101,"992,58016-0817-02 ",.02)
 ;;58016-0817-02
 ;;9002226.02101,"992,58016-0817-03 ",.01)
 ;;58016-0817-03
 ;;9002226.02101,"992,58016-0817-03 ",.02)
 ;;58016-0817-03
 ;;9002226.02101,"992,58016-0817-30 ",.01)
 ;;58016-0817-30
 ;;9002226.02101,"992,58016-0817-30 ",.02)
 ;;58016-0817-30
 ;;9002226.02101,"992,58016-0817-60 ",.01)
 ;;58016-0817-60
 ;;9002226.02101,"992,58016-0817-60 ",.02)
 ;;58016-0817-60
 ;;9002226.02101,"992,58016-0817-90 ",.01)
 ;;58016-0817-90
 ;;9002226.02101,"992,58016-0817-90 ",.02)
 ;;58016-0817-90
 ;;9002226.02101,"992,58016-0818-00 ",.01)
 ;;58016-0818-00
 ;;9002226.02101,"992,58016-0818-00 ",.02)
 ;;58016-0818-00
 ;;9002226.02101,"992,58016-0818-02 ",.01)
 ;;58016-0818-02
 ;;9002226.02101,"992,58016-0818-02 ",.02)
 ;;58016-0818-02
 ;;9002226.02101,"992,58016-0818-03 ",.01)
 ;;58016-0818-03
 ;;9002226.02101,"992,58016-0818-03 ",.02)
 ;;58016-0818-03
 ;;9002226.02101,"992,58016-0818-30 ",.01)
 ;;58016-0818-30
 ;;9002226.02101,"992,58016-0818-30 ",.02)
 ;;58016-0818-30
 ;;9002226.02101,"992,58016-0818-60 ",.01)
 ;;58016-0818-60
 ;;9002226.02101,"992,58016-0818-60 ",.02)
 ;;58016-0818-60
 ;;9002226.02101,"992,58016-0818-90 ",.01)
 ;;58016-0818-90
 ;;9002226.02101,"992,58016-0818-90 ",.02)
 ;;58016-0818-90
 ;;9002226.02101,"992,58016-0818-99 ",.01)
 ;;58016-0818-99
 ;;9002226.02101,"992,58016-0818-99 ",.02)
 ;;58016-0818-99
 ;;9002226.02101,"992,58016-0828-10 ",.01)
 ;;58016-0828-10
 ;;9002226.02101,"992,58016-0828-10 ",.02)
 ;;58016-0828-10
 ;;9002226.02101,"992,58016-0828-20 ",.01)
 ;;58016-0828-20
 ;;9002226.02101,"992,58016-0828-20 ",.02)
 ;;58016-0828-20
 ;;9002226.02101,"992,58016-0828-30 ",.01)
 ;;58016-0828-30
 ;;9002226.02101,"992,58016-0828-30 ",.02)
 ;;58016-0828-30
 ;;9002226.02101,"992,58016-0828-40 ",.01)
 ;;58016-0828-40
 ;;9002226.02101,"992,58016-0828-40 ",.02)
 ;;58016-0828-40
 ;;9002226.02101,"992,58016-0828-60 ",.01)
 ;;58016-0828-60
 ;;9002226.02101,"992,58016-0828-60 ",.02)
 ;;58016-0828-60
 ;;9002226.02101,"992,58016-0828-90 ",.01)
 ;;58016-0828-90
 ;;9002226.02101,"992,58016-0828-90 ",.02)
 ;;58016-0828-90
 ;;9002226.02101,"992,58016-0833-00 ",.01)
 ;;58016-0833-00
 ;;9002226.02101,"992,58016-0833-00 ",.02)
 ;;58016-0833-00
 ;;9002226.02101,"992,58016-0833-10 ",.01)
 ;;58016-0833-10
 ;;9002226.02101,"992,58016-0833-10 ",.02)
 ;;58016-0833-10
 ;;9002226.02101,"992,58016-0833-12 ",.01)
 ;;58016-0833-12
 ;;9002226.02101,"992,58016-0833-12 ",.02)
 ;;58016-0833-12
 ;;9002226.02101,"992,58016-0833-14 ",.01)
 ;;58016-0833-14
 ;;9002226.02101,"992,58016-0833-14 ",.02)
 ;;58016-0833-14
 ;;9002226.02101,"992,58016-0833-15 ",.01)
 ;;58016-0833-15
 ;;9002226.02101,"992,58016-0833-15 ",.02)
 ;;58016-0833-15
 ;;9002226.02101,"992,58016-0833-20 ",.01)
 ;;58016-0833-20
 ;;9002226.02101,"992,58016-0833-20 ",.02)
 ;;58016-0833-20
 ;;9002226.02101,"992,58016-0833-21 ",.01)
 ;;58016-0833-21
 ;;9002226.02101,"992,58016-0833-21 ",.02)
 ;;58016-0833-21
 ;;9002226.02101,"992,58016-0833-30 ",.01)
 ;;58016-0833-30
 ;;9002226.02101,"992,58016-0833-30 ",.02)
 ;;58016-0833-30
 ;;9002226.02101,"992,58016-0833-40 ",.01)
 ;;58016-0833-40
 ;;9002226.02101,"992,58016-0833-40 ",.02)
 ;;58016-0833-40
 ;;9002226.02101,"992,58016-0833-50 ",.01)
 ;;58016-0833-50
 ;;9002226.02101,"992,58016-0833-50 ",.02)
 ;;58016-0833-50
 ;;9002226.02101,"992,58016-0833-60 ",.01)
 ;;58016-0833-60
 ;;9002226.02101,"992,58016-0833-60 ",.02)
 ;;58016-0833-60
 ;;9002226.02101,"992,58016-0833-90 ",.01)
 ;;58016-0833-90
 ;;9002226.02101,"992,58016-0833-90 ",.02)
 ;;58016-0833-90
 ;;9002226.02101,"992,58016-0834-00 ",.01)
 ;;58016-0834-00
 ;;9002226.02101,"992,58016-0834-00 ",.02)
 ;;58016-0834-00
 ;;9002226.02101,"992,58016-0834-10 ",.01)
 ;;58016-0834-10
 ;;9002226.02101,"992,58016-0834-10 ",.02)
 ;;58016-0834-10
 ;;9002226.02101,"992,58016-0834-14 ",.01)
 ;;58016-0834-14
 ;;9002226.02101,"992,58016-0834-14 ",.02)
 ;;58016-0834-14
 ;;9002226.02101,"992,58016-0834-15 ",.01)
 ;;58016-0834-15
 ;;9002226.02101,"992,58016-0834-15 ",.02)
 ;;58016-0834-15
 ;;9002226.02101,"992,58016-0834-20 ",.01)
 ;;58016-0834-20
 ;;9002226.02101,"992,58016-0834-20 ",.02)
 ;;58016-0834-20
 ;;9002226.02101,"992,58016-0834-21 ",.01)
 ;;58016-0834-21
 ;;9002226.02101,"992,58016-0834-21 ",.02)
 ;;58016-0834-21
 ;;9002226.02101,"992,58016-0834-30 ",.01)
 ;;58016-0834-30
 ;;9002226.02101,"992,58016-0834-30 ",.02)
 ;;58016-0834-30
 ;;9002226.02101,"992,58016-0834-40 ",.01)
 ;;58016-0834-40
 ;;9002226.02101,"992,58016-0834-40 ",.02)
 ;;58016-0834-40
 ;;9002226.02101,"992,58016-0834-50 ",.01)
 ;;58016-0834-50
 ;;9002226.02101,"992,58016-0834-50 ",.02)
 ;;58016-0834-50
 ;;9002226.02101,"992,58016-0834-60 ",.01)
 ;;58016-0834-60
 ;;9002226.02101,"992,58016-0834-60 ",.02)
 ;;58016-0834-60
 ;;9002226.02101,"992,58016-0834-90 ",.01)
 ;;58016-0834-90
 ;;9002226.02101,"992,58016-0834-90 ",.02)
 ;;58016-0834-90
 ;;9002226.02101,"992,58016-0839-00 ",.01)
 ;;58016-0839-00
 ;;9002226.02101,"992,58016-0839-00 ",.02)
 ;;58016-0839-00
 ;;9002226.02101,"992,58016-0839-02 ",.01)
 ;;58016-0839-02
 ;;9002226.02101,"992,58016-0839-02 ",.02)
 ;;58016-0839-02
 ;;9002226.02101,"992,58016-0839-12 ",.01)
 ;;58016-0839-12
 ;;9002226.02101,"992,58016-0839-12 ",.02)
 ;;58016-0839-12
 ;;9002226.02101,"992,58016-0839-15 ",.01)
 ;;58016-0839-15
 ;;9002226.02101,"992,58016-0839-15 ",.02)
 ;;58016-0839-15
 ;;9002226.02101,"992,58016-0839-20 ",.01)
 ;;58016-0839-20
 ;;9002226.02101,"992,58016-0839-20 ",.02)
 ;;58016-0839-20
 ;;9002226.02101,"992,58016-0839-30 ",.01)
 ;;58016-0839-30
 ;;9002226.02101,"992,58016-0839-30 ",.02)
 ;;58016-0839-30
 ;;9002226.02101,"992,58016-0839-60 ",.01)
 ;;58016-0839-60
 ;;9002226.02101,"992,58016-0839-60 ",.02)
 ;;58016-0839-60
 ;;9002226.02101,"992,58016-0839-90 ",.01)
 ;;58016-0839-90
 ;;9002226.02101,"992,58016-0839-90 ",.02)
 ;;58016-0839-90
 ;;9002226.02101,"992,58016-0841-00 ",.01)
 ;;58016-0841-00
 ;;9002226.02101,"992,58016-0841-00 ",.02)
 ;;58016-0841-00
 ;;9002226.02101,"992,58016-0841-02 ",.01)
 ;;58016-0841-02
 ;;9002226.02101,"992,58016-0841-02 ",.02)
 ;;58016-0841-02
 ;;9002226.02101,"992,58016-0841-12 ",.01)
 ;;58016-0841-12
 ;;9002226.02101,"992,58016-0841-12 ",.02)
 ;;58016-0841-12
 ;;9002226.02101,"992,58016-0841-15 ",.01)
 ;;58016-0841-15
 ;;9002226.02101,"992,58016-0841-15 ",.02)
 ;;58016-0841-15
 ;;9002226.02101,"992,58016-0841-20 ",.01)
 ;;58016-0841-20
 ;;9002226.02101,"992,58016-0841-20 ",.02)
 ;;58016-0841-20
 ;;9002226.02101,"992,58016-0841-30 ",.01)
 ;;58016-0841-30
 ;;9002226.02101,"992,58016-0841-30 ",.02)
 ;;58016-0841-30
 ;;9002226.02101,"992,58016-0841-60 ",.01)
 ;;58016-0841-60
 ;;9002226.02101,"992,58016-0841-60 ",.02)
 ;;58016-0841-60
 ;;9002226.02101,"992,58016-0841-90 ",.01)
 ;;58016-0841-90
 ;;9002226.02101,"992,58016-0841-90 ",.02)
 ;;58016-0841-90
 ;;9002226.02101,"992,58016-0853-00 ",.01)
 ;;58016-0853-00
 ;;9002226.02101,"992,58016-0853-00 ",.02)
 ;;58016-0853-00
 ;;9002226.02101,"992,58016-0853-02 ",.01)
 ;;58016-0853-02
 ;;9002226.02101,"992,58016-0853-02 ",.02)
 ;;58016-0853-02
 ;;9002226.02101,"992,58016-0853-03 ",.01)
 ;;58016-0853-03
 ;;9002226.02101,"992,58016-0853-03 ",.02)
 ;;58016-0853-03
 ;;9002226.02101,"992,58016-0853-14 ",.01)
 ;;58016-0853-14
 ;;9002226.02101,"992,58016-0853-14 ",.02)
 ;;58016-0853-14
 ;;9002226.02101,"992,58016-0853-15 ",.01)
 ;;58016-0853-15
 ;;9002226.02101,"992,58016-0853-15 ",.02)
 ;;58016-0853-15
 ;;9002226.02101,"992,58016-0853-20 ",.01)
 ;;58016-0853-20
 ;;9002226.02101,"992,58016-0853-20 ",.02)
 ;;58016-0853-20
 ;;9002226.02101,"992,58016-0853-28 ",.01)
 ;;58016-0853-28
 ;;9002226.02101,"992,58016-0853-28 ",.02)
 ;;58016-0853-28
 ;;9002226.02101,"992,58016-0853-30 ",.01)
 ;;58016-0853-30
 ;;9002226.02101,"992,58016-0853-30 ",.02)
 ;;58016-0853-30
 ;;9002226.02101,"992,58016-0853-50 ",.01)
 ;;58016-0853-50
 ;;9002226.02101,"992,58016-0853-50 ",.02)
 ;;58016-0853-50
 ;;9002226.02101,"992,58016-0853-60 ",.01)
 ;;58016-0853-60
 ;;9002226.02101,"992,58016-0853-60 ",.02)
 ;;58016-0853-60
 ;;9002226.02101,"992,58016-0853-73 ",.01)
 ;;58016-0853-73
 ;;9002226.02101,"992,58016-0853-73 ",.02)
 ;;58016-0853-73
 ;;9002226.02101,"992,58016-0853-89 ",.01)
 ;;58016-0853-89
 ;;9002226.02101,"992,58016-0853-89 ",.02)
 ;;58016-0853-89
 ;;9002226.02101,"992,58016-0853-90 ",.01)
 ;;58016-0853-90
 ;;9002226.02101,"992,58016-0853-90 ",.02)
 ;;58016-0853-90
 ;;9002226.02101,"992,58016-0858-00 ",.01)
 ;;58016-0858-00
 ;;9002226.02101,"992,58016-0858-00 ",.02)
 ;;58016-0858-00
 ;;9002226.02101,"992,58016-0858-14 ",.01)
 ;;58016-0858-14
 ;;9002226.02101,"992,58016-0858-14 ",.02)
 ;;58016-0858-14
 ;;9002226.02101,"992,58016-0858-21 ",.01)
 ;;58016-0858-21
 ;;9002226.02101,"992,58016-0858-21 ",.02)
 ;;58016-0858-21
 ;;9002226.02101,"992,58016-0858-28 ",.01)
 ;;58016-0858-28
 ;;9002226.02101,"992,58016-0858-28 ",.02)
 ;;58016-0858-28
 ;;9002226.02101,"992,58016-0858-30 ",.01)
 ;;58016-0858-30
 ;;9002226.02101,"992,58016-0858-30 ",.02)
 ;;58016-0858-30
 ;;9002226.02101,"992,58016-0858-40 ",.01)
 ;;58016-0858-40
 ;;9002226.02101,"992,58016-0858-40 ",.02)
 ;;58016-0858-40
 ;;9002226.02101,"992,58016-0858-50 ",.01)
 ;;58016-0858-50
 ;;9002226.02101,"992,58016-0858-50 ",.02)
 ;;58016-0858-50
 ;;9002226.02101,"992,58016-0858-60 ",.01)
 ;;58016-0858-60
 ;;9002226.02101,"992,58016-0858-60 ",.02)
 ;;58016-0858-60
 ;;9002226.02101,"992,58016-0858-99 ",.01)
 ;;58016-0858-99
 ;;9002226.02101,"992,58016-0858-99 ",.02)
 ;;58016-0858-99
 ;;9002226.02101,"992,58016-0862-00 ",.01)
 ;;58016-0862-00
 ;;9002226.02101,"992,58016-0862-00 ",.02)
 ;;58016-0862-00
 ;;9002226.02101,"992,58016-0862-02 ",.01)
 ;;58016-0862-02
 ;;9002226.02101,"992,58016-0862-02 ",.02)
 ;;58016-0862-02
 ;;9002226.02101,"992,58016-0862-03 ",.01)
 ;;58016-0862-03
 ;;9002226.02101,"992,58016-0862-03 ",.02)
 ;;58016-0862-03
