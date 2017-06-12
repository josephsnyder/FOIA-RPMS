BGP71S15 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"875,43063-0516-15 ",.01)
 ;;43063-0516-15
 ;;9002226.02101,"875,43063-0516-15 ",.02)
 ;;43063-0516-15
 ;;9002226.02101,"875,43063-0516-20 ",.01)
 ;;43063-0516-20
 ;;9002226.02101,"875,43063-0516-20 ",.02)
 ;;43063-0516-20
 ;;9002226.02101,"875,43063-0516-21 ",.01)
 ;;43063-0516-21
 ;;9002226.02101,"875,43063-0516-21 ",.02)
 ;;43063-0516-21
 ;;9002226.02101,"875,43063-0516-30 ",.01)
 ;;43063-0516-30
 ;;9002226.02101,"875,43063-0516-30 ",.02)
 ;;43063-0516-30
 ;;9002226.02101,"875,43063-0516-42 ",.01)
 ;;43063-0516-42
 ;;9002226.02101,"875,43063-0516-42 ",.02)
 ;;43063-0516-42
 ;;9002226.02101,"875,43063-0516-60 ",.01)
 ;;43063-0516-60
 ;;9002226.02101,"875,43063-0516-60 ",.02)
 ;;43063-0516-60
 ;;9002226.02101,"875,43063-0516-90 ",.01)
 ;;43063-0516-90
 ;;9002226.02101,"875,43063-0516-90 ",.02)
 ;;43063-0516-90
 ;;9002226.02101,"875,43063-0588-14 ",.01)
 ;;43063-0588-14
 ;;9002226.02101,"875,43063-0588-14 ",.02)
 ;;43063-0588-14
 ;;9002226.02101,"875,43063-0588-15 ",.01)
 ;;43063-0588-15
 ;;9002226.02101,"875,43063-0588-15 ",.02)
 ;;43063-0588-15
 ;;9002226.02101,"875,43063-0588-20 ",.01)
 ;;43063-0588-20
 ;;9002226.02101,"875,43063-0588-20 ",.02)
 ;;43063-0588-20
 ;;9002226.02101,"875,43063-0588-30 ",.01)
 ;;43063-0588-30
 ;;9002226.02101,"875,43063-0588-30 ",.02)
 ;;43063-0588-30
 ;;9002226.02101,"875,43063-0588-40 ",.01)
 ;;43063-0588-40
 ;;9002226.02101,"875,43063-0588-40 ",.02)
 ;;43063-0588-40
 ;;9002226.02101,"875,43063-0641-40 ",.01)
 ;;43063-0641-40
 ;;9002226.02101,"875,43063-0641-40 ",.02)
 ;;43063-0641-40
 ;;9002226.02101,"875,43093-0101-01 ",.01)
 ;;43093-0101-01
 ;;9002226.02101,"875,43093-0101-01 ",.02)
 ;;43093-0101-01
 ;;9002226.02101,"875,43353-0102-53 ",.01)
 ;;43353-0102-53
 ;;9002226.02101,"875,43353-0102-53 ",.02)
 ;;43353-0102-53
 ;;9002226.02101,"875,43353-0102-60 ",.01)
 ;;43353-0102-60
 ;;9002226.02101,"875,43353-0102-60 ",.02)
 ;;43353-0102-60
 ;;9002226.02101,"875,43353-0183-21 ",.01)
 ;;43353-0183-21
 ;;9002226.02101,"875,43353-0183-21 ",.02)
 ;;43353-0183-21
 ;;9002226.02101,"875,43353-0183-30 ",.01)
 ;;43353-0183-30
 ;;9002226.02101,"875,43353-0183-30 ",.02)
 ;;43353-0183-30
 ;;9002226.02101,"875,43353-0183-45 ",.01)
 ;;43353-0183-45
 ;;9002226.02101,"875,43353-0183-45 ",.02)
 ;;43353-0183-45
 ;;9002226.02101,"875,43353-0183-53 ",.01)
 ;;43353-0183-53
 ;;9002226.02101,"875,43353-0183-53 ",.02)
 ;;43353-0183-53
 ;;9002226.02101,"875,43353-0183-60 ",.01)
 ;;43353-0183-60
 ;;9002226.02101,"875,43353-0183-60 ",.02)
 ;;43353-0183-60
 ;;9002226.02101,"875,43353-0183-80 ",.01)
 ;;43353-0183-80
 ;;9002226.02101,"875,43353-0183-80 ",.02)
 ;;43353-0183-80
 ;;9002226.02101,"875,43353-0183-92 ",.01)
 ;;43353-0183-92
 ;;9002226.02101,"875,43353-0183-92 ",.02)
 ;;43353-0183-92
 ;;9002226.02101,"875,43353-0436-53 ",.01)
 ;;43353-0436-53
 ;;9002226.02101,"875,43353-0436-53 ",.02)
 ;;43353-0436-53
 ;;9002226.02101,"875,43353-0436-60 ",.01)
 ;;43353-0436-60
 ;;9002226.02101,"875,43353-0436-60 ",.02)
 ;;43353-0436-60
 ;;9002226.02101,"875,43353-0436-70 ",.01)
 ;;43353-0436-70
 ;;9002226.02101,"875,43353-0436-70 ",.02)
 ;;43353-0436-70
 ;;9002226.02101,"875,43353-0436-80 ",.01)
 ;;43353-0436-80
 ;;9002226.02101,"875,43353-0436-80 ",.02)
 ;;43353-0436-80
 ;;9002226.02101,"875,43353-0779-30 ",.01)
 ;;43353-0779-30
 ;;9002226.02101,"875,43353-0779-30 ",.02)
 ;;43353-0779-30
 ;;9002226.02101,"875,43353-0779-53 ",.01)
 ;;43353-0779-53
 ;;9002226.02101,"875,43353-0779-53 ",.02)
 ;;43353-0779-53
 ;;9002226.02101,"875,43353-0779-60 ",.01)
 ;;43353-0779-60
 ;;9002226.02101,"875,43353-0779-60 ",.02)
 ;;43353-0779-60
 ;;9002226.02101,"875,43353-0779-70 ",.01)
 ;;43353-0779-70
 ;;9002226.02101,"875,43353-0779-70 ",.02)
 ;;43353-0779-70
 ;;9002226.02101,"875,43353-0779-80 ",.01)
 ;;43353-0779-80
 ;;9002226.02101,"875,43353-0779-80 ",.02)
 ;;43353-0779-80
 ;;9002226.02101,"875,43353-0779-90 ",.01)
 ;;43353-0779-90
 ;;9002226.02101,"875,43353-0779-90 ",.02)
 ;;43353-0779-90
 ;;9002226.02101,"875,43353-0779-92 ",.01)
 ;;43353-0779-92
 ;;9002226.02101,"875,43353-0779-92 ",.02)
 ;;43353-0779-92
 ;;9002226.02101,"875,43353-0791-53 ",.01)
 ;;43353-0791-53
 ;;9002226.02101,"875,43353-0791-53 ",.02)
 ;;43353-0791-53
 ;;9002226.02101,"875,43353-0791-60 ",.01)
 ;;43353-0791-60
 ;;9002226.02101,"875,43353-0791-60 ",.02)
 ;;43353-0791-60
 ;;9002226.02101,"875,43353-0791-70 ",.01)
 ;;43353-0791-70
 ;;9002226.02101,"875,43353-0791-70 ",.02)
 ;;43353-0791-70
 ;;9002226.02101,"875,43353-0948-30 ",.01)
 ;;43353-0948-30
 ;;9002226.02101,"875,43353-0948-30 ",.02)
 ;;43353-0948-30
 ;;9002226.02101,"875,43353-0948-53 ",.01)
 ;;43353-0948-53
 ;;9002226.02101,"875,43353-0948-53 ",.02)
 ;;43353-0948-53
 ;;9002226.02101,"875,43353-0948-60 ",.01)
 ;;43353-0948-60
 ;;9002226.02101,"875,43353-0948-60 ",.02)
 ;;43353-0948-60
 ;;9002226.02101,"875,43353-0948-70 ",.01)
 ;;43353-0948-70
 ;;9002226.02101,"875,43353-0948-70 ",.02)
 ;;43353-0948-70
 ;;9002226.02101,"875,43353-0948-80 ",.01)
 ;;43353-0948-80
 ;;9002226.02101,"875,43353-0948-80 ",.02)
 ;;43353-0948-80
 ;;9002226.02101,"875,43353-0948-90 ",.01)
 ;;43353-0948-90
 ;;9002226.02101,"875,43353-0948-90 ",.02)
 ;;43353-0948-90
 ;;9002226.02101,"875,43353-0948-92 ",.01)
 ;;43353-0948-92
 ;;9002226.02101,"875,43353-0948-92 ",.02)
 ;;43353-0948-92
 ;;9002226.02101,"875,43353-0949-53 ",.01)
 ;;43353-0949-53
 ;;9002226.02101,"875,43353-0949-53 ",.02)
 ;;43353-0949-53
 ;;9002226.02101,"875,43353-0949-60 ",.01)
 ;;43353-0949-60
 ;;9002226.02101,"875,43353-0949-60 ",.02)
 ;;43353-0949-60
 ;;9002226.02101,"875,43353-0949-70 ",.01)
 ;;43353-0949-70
 ;;9002226.02101,"875,43353-0949-70 ",.02)
 ;;43353-0949-70
 ;;9002226.02101,"875,43353-0949-80 ",.01)
 ;;43353-0949-80
 ;;9002226.02101,"875,43353-0949-80 ",.02)
 ;;43353-0949-80
 ;;9002226.02101,"875,43386-0480-24 ",.01)
 ;;43386-0480-24
 ;;9002226.02101,"875,43386-0480-24 ",.02)
 ;;43386-0480-24
 ;;9002226.02101,"875,43386-0480-26 ",.01)
 ;;43386-0480-26
 ;;9002226.02101,"875,43386-0480-26 ",.02)
 ;;43386-0480-26
 ;;9002226.02101,"875,43386-0480-28 ",.01)
 ;;43386-0480-28
 ;;9002226.02101,"875,43386-0480-28 ",.02)
 ;;43386-0480-28
 ;;9002226.02101,"875,43547-0225-10 ",.01)
 ;;43547-0225-10
 ;;9002226.02101,"875,43547-0225-10 ",.02)
 ;;43547-0225-10
 ;;9002226.02101,"875,43547-0225-50 ",.01)
 ;;43547-0225-50
 ;;9002226.02101,"875,43547-0225-50 ",.02)
 ;;43547-0225-50
 ;;9002226.02101,"875,43547-0226-10 ",.01)
 ;;43547-0226-10
 ;;9002226.02101,"875,43547-0226-10 ",.02)
 ;;43547-0226-10
 ;;9002226.02101,"875,43547-0226-50 ",.01)
 ;;43547-0226-50
 ;;9002226.02101,"875,43547-0226-50 ",.02)
 ;;43547-0226-50
 ;;9002226.02101,"875,43683-0120-30 ",.01)
 ;;43683-0120-30
 ;;9002226.02101,"875,43683-0120-30 ",.02)
 ;;43683-0120-30
 ;;9002226.02101,"875,45861-0013-00 ",.01)
 ;;45861-0013-00
 ;;9002226.02101,"875,45861-0013-00 ",.02)
 ;;45861-0013-00
 ;;9002226.02101,"875,45861-0103-01 ",.01)
 ;;45861-0103-01
 ;;9002226.02101,"875,45861-0103-01 ",.02)
 ;;45861-0103-01
 ;;9002226.02101,"875,45861-0112-01 ",.01)
 ;;45861-0112-01
 ;;9002226.02101,"875,45861-0112-01 ",.02)
 ;;45861-0112-01
 ;;9002226.02101,"875,45861-0112-02 ",.01)
 ;;45861-0112-02
 ;;9002226.02101,"875,45861-0112-02 ",.02)
 ;;45861-0112-02
 ;;9002226.02101,"875,45861-0112-03 ",.01)
 ;;45861-0112-03
 ;;9002226.02101,"875,45861-0112-03 ",.02)
 ;;45861-0112-03
 ;;9002226.02101,"875,47463-0055-15 ",.01)
 ;;47463-0055-15
 ;;9002226.02101,"875,47463-0055-15 ",.02)
 ;;47463-0055-15
 ;;9002226.02101,"875,47463-0055-20 ",.01)
 ;;47463-0055-20
 ;;9002226.02101,"875,47463-0055-20 ",.02)
 ;;47463-0055-20
 ;;9002226.02101,"875,47463-0055-30 ",.01)
 ;;47463-0055-30
 ;;9002226.02101,"875,47463-0055-30 ",.02)
 ;;47463-0055-30
 ;;9002226.02101,"875,47463-0055-40 ",.01)
 ;;47463-0055-40
 ;;9002226.02101,"875,47463-0055-40 ",.02)
 ;;47463-0055-40
 ;;9002226.02101,"875,47463-0055-60 ",.01)
 ;;47463-0055-60
 ;;9002226.02101,"875,47463-0055-60 ",.02)
 ;;47463-0055-60
 ;;9002226.02101,"875,47463-0055-71 ",.01)
 ;;47463-0055-71
 ;;9002226.02101,"875,47463-0055-71 ",.02)
 ;;47463-0055-71
 ;;9002226.02101,"875,47463-0055-90 ",.01)
 ;;47463-0055-90
 ;;9002226.02101,"875,47463-0055-90 ",.02)
 ;;47463-0055-90
 ;;9002226.02101,"875,47463-0080-15 ",.01)
 ;;47463-0080-15
 ;;9002226.02101,"875,47463-0080-15 ",.02)
 ;;47463-0080-15
 ;;9002226.02101,"875,47463-0080-20 ",.01)
 ;;47463-0080-20
 ;;9002226.02101,"875,47463-0080-20 ",.02)
 ;;47463-0080-20
 ;;9002226.02101,"875,47463-0080-30 ",.01)
 ;;47463-0080-30
 ;;9002226.02101,"875,47463-0080-30 ",.02)
 ;;47463-0080-30
 ;;9002226.02101,"875,47463-0080-40 ",.01)
 ;;47463-0080-40
 ;;9002226.02101,"875,47463-0080-40 ",.02)
 ;;47463-0080-40
 ;;9002226.02101,"875,47463-0080-60 ",.01)
 ;;47463-0080-60
 ;;9002226.02101,"875,47463-0080-60 ",.02)
 ;;47463-0080-60
 ;;9002226.02101,"875,47463-0080-71 ",.01)
 ;;47463-0080-71
 ;;9002226.02101,"875,47463-0080-71 ",.02)
 ;;47463-0080-71
 ;;9002226.02101,"875,47463-0080-90 ",.01)
 ;;47463-0080-90
 ;;9002226.02101,"875,47463-0080-90 ",.02)
 ;;47463-0080-90
 ;;9002226.02101,"875,47463-0081-30 ",.01)
 ;;47463-0081-30
 ;;9002226.02101,"875,47463-0081-30 ",.02)
 ;;47463-0081-30
 ;;9002226.02101,"875,47463-0082-30 ",.01)
 ;;47463-0082-30
 ;;9002226.02101,"875,47463-0082-30 ",.02)
 ;;47463-0082-30
 ;;9002226.02101,"875,47463-0082-40 ",.01)
 ;;47463-0082-40
 ;;9002226.02101,"875,47463-0082-40 ",.02)
 ;;47463-0082-40
 ;;9002226.02101,"875,47463-0082-60 ",.01)
 ;;47463-0082-60
 ;;9002226.02101,"875,47463-0082-60 ",.02)
 ;;47463-0082-60
 ;;9002226.02101,"875,47463-0082-90 ",.01)
 ;;47463-0082-90
 ;;9002226.02101,"875,47463-0082-90 ",.02)
 ;;47463-0082-90
 ;;9002226.02101,"875,47463-0107-90 ",.01)
 ;;47463-0107-90
 ;;9002226.02101,"875,47463-0107-90 ",.02)
 ;;47463-0107-90
 ;;9002226.02101,"875,47463-0263-90 ",.01)
 ;;47463-0263-90
 ;;9002226.02101,"875,47463-0263-90 ",.02)
 ;;47463-0263-90
 ;;9002226.02101,"875,47463-0507-60 ",.01)
 ;;47463-0507-60
 ;;9002226.02101,"875,47463-0507-60 ",.02)
 ;;47463-0507-60
 ;;9002226.02101,"875,47463-0507-84 ",.01)
 ;;47463-0507-84
 ;;9002226.02101,"875,47463-0507-84 ",.02)
 ;;47463-0507-84
 ;;9002226.02101,"875,47463-0507-90 ",.01)
 ;;47463-0507-90
 ;;9002226.02101,"875,47463-0507-90 ",.02)
 ;;47463-0507-90
 ;;9002226.02101,"875,47463-0514-30 ",.01)
 ;;47463-0514-30
 ;;9002226.02101,"875,47463-0514-30 ",.02)
 ;;47463-0514-30
 ;;9002226.02101,"875,47463-0514-60 ",.01)
 ;;47463-0514-60
 ;;9002226.02101,"875,47463-0514-60 ",.02)
 ;;47463-0514-60
 ;;9002226.02101,"875,47463-0514-90 ",.01)
 ;;47463-0514-90
 ;;9002226.02101,"875,47463-0514-90 ",.02)
 ;;47463-0514-90
 ;;9002226.02101,"875,47463-0515-20 ",.01)
 ;;47463-0515-20
 ;;9002226.02101,"875,47463-0515-20 ",.02)
 ;;47463-0515-20
 ;;9002226.02101,"875,47463-0515-30 ",.01)
 ;;47463-0515-30
 ;;9002226.02101,"875,47463-0515-30 ",.02)
 ;;47463-0515-30
 ;;9002226.02101,"875,47463-0515-60 ",.01)
 ;;47463-0515-60
 ;;9002226.02101,"875,47463-0515-60 ",.02)
 ;;47463-0515-60
 ;;9002226.02101,"875,47463-0515-71 ",.01)
 ;;47463-0515-71
 ;;9002226.02101,"875,47463-0515-71 ",.02)
 ;;47463-0515-71
 ;;9002226.02101,"875,47463-0515-90 ",.01)
 ;;47463-0515-90
 ;;9002226.02101,"875,47463-0515-90 ",.02)
 ;;47463-0515-90
 ;;9002226.02101,"875,47463-0616-90 ",.01)
 ;;47463-0616-90
 ;;9002226.02101,"875,47463-0616-90 ",.02)
 ;;47463-0616-90
 ;;9002226.02101,"875,47463-0622-60 ",.01)
 ;;47463-0622-60
 ;;9002226.02101,"875,47463-0622-60 ",.02)
 ;;47463-0622-60
 ;;9002226.02101,"875,47463-0848-90 ",.01)
 ;;47463-0848-90
 ;;9002226.02101,"875,47463-0848-90 ",.02)
 ;;47463-0848-90
