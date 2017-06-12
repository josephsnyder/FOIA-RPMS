BGP51Q46 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,65862-0040-05 ",.02)
 ;;65862-0040-05
 ;;9002226.02101,"1729,65862-0040-99 ",.01)
 ;;65862-0040-99
 ;;9002226.02101,"1729,65862-0040-99 ",.02)
 ;;65862-0040-99
 ;;9002226.02101,"1729,65862-0041-01 ",.01)
 ;;65862-0041-01
 ;;9002226.02101,"1729,65862-0041-01 ",.02)
 ;;65862-0041-01
 ;;9002226.02101,"1729,65862-0041-05 ",.01)
 ;;65862-0041-05
 ;;9002226.02101,"1729,65862-0041-05 ",.02)
 ;;65862-0041-05
 ;;9002226.02101,"1729,65862-0041-99 ",.01)
 ;;65862-0041-99
 ;;9002226.02101,"1729,65862-0041-99 ",.02)
 ;;65862-0041-99
 ;;9002226.02101,"1729,65862-0042-01 ",.01)
 ;;65862-0042-01
 ;;9002226.02101,"1729,65862-0042-01 ",.02)
 ;;65862-0042-01
 ;;9002226.02101,"1729,65862-0042-05 ",.01)
 ;;65862-0042-05
 ;;9002226.02101,"1729,65862-0042-05 ",.02)
 ;;65862-0042-05
 ;;9002226.02101,"1729,65862-0042-99 ",.01)
 ;;65862-0042-99
 ;;9002226.02101,"1729,65862-0042-99 ",.02)
 ;;65862-0042-99
 ;;9002226.02101,"1729,65862-0043-01 ",.01)
 ;;65862-0043-01
 ;;9002226.02101,"1729,65862-0043-01 ",.02)
 ;;65862-0043-01
 ;;9002226.02101,"1729,65862-0043-05 ",.01)
 ;;65862-0043-05
 ;;9002226.02101,"1729,65862-0043-05 ",.02)
 ;;65862-0043-05
 ;;9002226.02101,"1729,65862-0044-01 ",.01)
 ;;65862-0044-01
 ;;9002226.02101,"1729,65862-0044-01 ",.02)
 ;;65862-0044-01
 ;;9002226.02101,"1729,65862-0044-05 ",.01)
 ;;65862-0044-05
 ;;9002226.02101,"1729,65862-0044-05 ",.02)
 ;;65862-0044-05
 ;;9002226.02101,"1729,65862-0045-01 ",.01)
 ;;65862-0045-01
 ;;9002226.02101,"1729,65862-0045-01 ",.02)
 ;;65862-0045-01
 ;;9002226.02101,"1729,65862-0045-05 ",.01)
 ;;65862-0045-05
 ;;9002226.02101,"1729,65862-0045-05 ",.02)
 ;;65862-0045-05
 ;;9002226.02101,"1729,65862-0116-01 ",.01)
 ;;65862-0116-01
 ;;9002226.02101,"1729,65862-0116-01 ",.02)
 ;;65862-0116-01
 ;;9002226.02101,"1729,65862-0117-01 ",.01)
 ;;65862-0117-01
 ;;9002226.02101,"1729,65862-0117-01 ",.02)
 ;;65862-0117-01
 ;;9002226.02101,"1729,65862-0118-01 ",.01)
 ;;65862-0118-01
 ;;9002226.02101,"1729,65862-0118-01 ",.02)
 ;;65862-0118-01
 ;;9002226.02101,"1729,65862-0161-90 ",.01)
 ;;65862-0161-90
 ;;9002226.02101,"1729,65862-0161-90 ",.02)
 ;;65862-0161-90
 ;;9002226.02101,"1729,65862-0162-30 ",.01)
 ;;65862-0162-30
 ;;9002226.02101,"1729,65862-0162-30 ",.02)
 ;;65862-0162-30
 ;;9002226.02101,"1729,65862-0162-90 ",.01)
 ;;65862-0162-90
 ;;9002226.02101,"1729,65862-0162-90 ",.02)
 ;;65862-0162-90
 ;;9002226.02101,"1729,65862-0163-90 ",.01)
 ;;65862-0163-90
 ;;9002226.02101,"1729,65862-0163-90 ",.02)
 ;;65862-0163-90
 ;;9002226.02101,"1729,65862-0164-01 ",.01)
 ;;65862-0164-01
 ;;9002226.02101,"1729,65862-0164-01 ",.02)
 ;;65862-0164-01
 ;;9002226.02101,"1729,65862-0165-01 ",.01)
 ;;65862-0165-01
 ;;9002226.02101,"1729,65862-0165-01 ",.02)
 ;;65862-0165-01
 ;;9002226.02101,"1729,65862-0166-01 ",.01)
 ;;65862-0166-01
 ;;9002226.02101,"1729,65862-0166-01 ",.02)
 ;;65862-0166-01
 ;;9002226.02101,"1729,65862-0201-90 ",.01)
 ;;65862-0201-90
 ;;9002226.02101,"1729,65862-0201-90 ",.02)
 ;;65862-0201-90
 ;;9002226.02101,"1729,65862-0201-99 ",.01)
 ;;65862-0201-99
 ;;9002226.02101,"1729,65862-0201-99 ",.02)
 ;;65862-0201-99
 ;;9002226.02101,"1729,65862-0202-30 ",.01)
 ;;65862-0202-30
 ;;9002226.02101,"1729,65862-0202-30 ",.02)
 ;;65862-0202-30
 ;;9002226.02101,"1729,65862-0202-90 ",.01)
 ;;65862-0202-90
 ;;9002226.02101,"1729,65862-0202-90 ",.02)
 ;;65862-0202-90
 ;;9002226.02101,"1729,65862-0202-99 ",.01)
 ;;65862-0202-99
 ;;9002226.02101,"1729,65862-0202-99 ",.02)
 ;;65862-0202-99
 ;;9002226.02101,"1729,65862-0203-30 ",.01)
 ;;65862-0203-30
 ;;9002226.02101,"1729,65862-0203-30 ",.02)
 ;;65862-0203-30
 ;;9002226.02101,"1729,65862-0203-90 ",.01)
 ;;65862-0203-90
 ;;9002226.02101,"1729,65862-0203-90 ",.02)
 ;;65862-0203-90
 ;;9002226.02101,"1729,65862-0203-99 ",.01)
 ;;65862-0203-99
 ;;9002226.02101,"1729,65862-0203-99 ",.02)
 ;;65862-0203-99
 ;;9002226.02101,"1729,65862-0286-01 ",.01)
 ;;65862-0286-01
 ;;9002226.02101,"1729,65862-0286-01 ",.02)
 ;;65862-0286-01
 ;;9002226.02101,"1729,65862-0287-01 ",.01)
 ;;65862-0287-01
 ;;9002226.02101,"1729,65862-0287-01 ",.02)
 ;;65862-0287-01
 ;;9002226.02101,"1729,65862-0288-01 ",.01)
 ;;65862-0288-01
 ;;9002226.02101,"1729,65862-0288-01 ",.02)
 ;;65862-0288-01
 ;;9002226.02101,"1729,65862-0308-01 ",.01)
 ;;65862-0308-01
 ;;9002226.02101,"1729,65862-0308-01 ",.02)
 ;;65862-0308-01
 ;;9002226.02101,"1729,65862-0309-01 ",.01)
 ;;65862-0309-01
 ;;9002226.02101,"1729,65862-0309-01 ",.02)
 ;;65862-0309-01
 ;;9002226.02101,"1729,65862-0468-30 ",.01)
 ;;65862-0468-30
 ;;9002226.02101,"1729,65862-0468-30 ",.02)
 ;;65862-0468-30
 ;;9002226.02101,"1729,65862-0468-90 ",.01)
 ;;65862-0468-90
 ;;9002226.02101,"1729,65862-0468-90 ",.02)
 ;;65862-0468-90
 ;;9002226.02101,"1729,65862-0468-99 ",.01)
 ;;65862-0468-99
 ;;9002226.02101,"1729,65862-0468-99 ",.02)
 ;;65862-0468-99
 ;;9002226.02101,"1729,65862-0469-30 ",.01)
 ;;65862-0469-30
 ;;9002226.02101,"1729,65862-0469-30 ",.02)
 ;;65862-0469-30
 ;;9002226.02101,"1729,65862-0469-90 ",.01)
 ;;65862-0469-90
 ;;9002226.02101,"1729,65862-0469-90 ",.02)
 ;;65862-0469-90
 ;;9002226.02101,"1729,65862-0469-99 ",.01)
 ;;65862-0469-99
 ;;9002226.02101,"1729,65862-0469-99 ",.02)
 ;;65862-0469-99
 ;;9002226.02101,"1729,65862-0470-30 ",.01)
 ;;65862-0470-30
 ;;9002226.02101,"1729,65862-0470-30 ",.02)
 ;;65862-0470-30
 ;;9002226.02101,"1729,65862-0470-90 ",.01)
 ;;65862-0470-90
 ;;9002226.02101,"1729,65862-0470-90 ",.02)
 ;;65862-0470-90
 ;;9002226.02101,"1729,65862-0470-99 ",.01)
 ;;65862-0470-99
 ;;9002226.02101,"1729,65862-0470-99 ",.02)
 ;;65862-0470-99
 ;;9002226.02101,"1729,65862-0471-90 ",.01)
 ;;65862-0471-90
 ;;9002226.02101,"1729,65862-0471-90 ",.02)
 ;;65862-0471-90
 ;;9002226.02101,"1729,65862-0472-90 ",.01)
 ;;65862-0472-90
 ;;9002226.02101,"1729,65862-0472-90 ",.02)
 ;;65862-0472-90
 ;;9002226.02101,"1729,65862-0473-90 ",.01)
 ;;65862-0473-90
 ;;9002226.02101,"1729,65862-0473-90 ",.02)
 ;;65862-0473-90
 ;;9002226.02101,"1729,65862-0474-01 ",.01)
 ;;65862-0474-01
 ;;9002226.02101,"1729,65862-0474-01 ",.02)
 ;;65862-0474-01
 ;;9002226.02101,"1729,65862-0474-30 ",.01)
 ;;65862-0474-30
 ;;9002226.02101,"1729,65862-0474-30 ",.02)
 ;;65862-0474-30
 ;;9002226.02101,"1729,65862-0475-01 ",.01)
 ;;65862-0475-01
 ;;9002226.02101,"1729,65862-0475-01 ",.02)
 ;;65862-0475-01
 ;;9002226.02101,"1729,65862-0475-05 ",.01)
 ;;65862-0475-05
 ;;9002226.02101,"1729,65862-0475-05 ",.02)
 ;;65862-0475-05
 ;;9002226.02101,"1729,65862-0476-01 ",.01)
 ;;65862-0476-01
 ;;9002226.02101,"1729,65862-0476-01 ",.02)
 ;;65862-0476-01
 ;;9002226.02101,"1729,65862-0476-05 ",.01)
 ;;65862-0476-05
 ;;9002226.02101,"1729,65862-0476-05 ",.02)
 ;;65862-0476-05
 ;;9002226.02101,"1729,65862-0477-01 ",.01)
 ;;65862-0477-01
 ;;9002226.02101,"1729,65862-0477-01 ",.02)
 ;;65862-0477-01
 ;;9002226.02101,"1729,65862-0477-05 ",.01)
 ;;65862-0477-05
 ;;9002226.02101,"1729,65862-0477-05 ",.02)
 ;;65862-0477-05
 ;;9002226.02101,"1729,65862-0547-90 ",.01)
 ;;65862-0547-90
 ;;9002226.02101,"1729,65862-0547-90 ",.02)
 ;;65862-0547-90
 ;;9002226.02101,"1729,65862-0547-99 ",.01)
 ;;65862-0547-99
 ;;9002226.02101,"1729,65862-0547-99 ",.02)
 ;;65862-0547-99
 ;;9002226.02101,"1729,65862-0548-90 ",.01)
 ;;65862-0548-90
 ;;9002226.02101,"1729,65862-0548-90 ",.02)
 ;;65862-0548-90
 ;;9002226.02101,"1729,65862-0548-99 ",.01)
 ;;65862-0548-99
 ;;9002226.02101,"1729,65862-0548-99 ",.02)
 ;;65862-0548-99
 ;;9002226.02101,"1729,65862-0549-90 ",.01)
 ;;65862-0549-90
 ;;9002226.02101,"1729,65862-0549-90 ",.02)
 ;;65862-0549-90
 ;;9002226.02101,"1729,65862-0549-99 ",.01)
 ;;65862-0549-99
 ;;9002226.02101,"1729,65862-0549-99 ",.02)
 ;;65862-0549-99
 ;;9002226.02101,"1729,65862-0550-05 ",.01)
 ;;65862-0550-05
 ;;9002226.02101,"1729,65862-0550-05 ",.02)
 ;;65862-0550-05
 ;;9002226.02101,"1729,65862-0550-90 ",.01)
 ;;65862-0550-90
 ;;9002226.02101,"1729,65862-0550-90 ",.02)
 ;;65862-0550-90
 ;;9002226.02101,"1729,65862-0551-05 ",.01)
 ;;65862-0551-05
 ;;9002226.02101,"1729,65862-0551-05 ",.02)
 ;;65862-0551-05
 ;;9002226.02101,"1729,65862-0551-90 ",.01)
 ;;65862-0551-90
 ;;9002226.02101,"1729,65862-0551-90 ",.02)
 ;;65862-0551-90
 ;;9002226.02101,"1729,65862-0582-01 ",.01)
 ;;65862-0582-01
 ;;9002226.02101,"1729,65862-0582-01 ",.02)
 ;;65862-0582-01
 ;;9002226.02101,"1729,65862-0582-05 ",.01)
 ;;65862-0582-05
 ;;9002226.02101,"1729,65862-0582-05 ",.02)
 ;;65862-0582-05
 ;;9002226.02101,"1729,65862-0583-01 ",.01)
 ;;65862-0583-01
 ;;9002226.02101,"1729,65862-0583-01 ",.02)
 ;;65862-0583-01
 ;;9002226.02101,"1729,65862-0583-05 ",.01)
 ;;65862-0583-05
 ;;9002226.02101,"1729,65862-0583-05 ",.02)
 ;;65862-0583-05
 ;;9002226.02101,"1729,65862-0584-01 ",.01)
 ;;65862-0584-01
 ;;9002226.02101,"1729,65862-0584-01 ",.02)
 ;;65862-0584-01
 ;;9002226.02101,"1729,65862-0584-05 ",.01)
 ;;65862-0584-05
 ;;9002226.02101,"1729,65862-0584-05 ",.02)
 ;;65862-0584-05
 ;;9002226.02101,"1729,65862-0585-01 ",.01)
 ;;65862-0585-01
 ;;9002226.02101,"1729,65862-0585-01 ",.02)
 ;;65862-0585-01
 ;;9002226.02101,"1729,65862-0585-05 ",.01)
 ;;65862-0585-05
 ;;9002226.02101,"1729,65862-0585-05 ",.02)
 ;;65862-0585-05
 ;;9002226.02101,"1729,65862-0586-01 ",.01)
 ;;65862-0586-01
 ;;9002226.02101,"1729,65862-0586-01 ",.02)
 ;;65862-0586-01
 ;;9002226.02101,"1729,65862-0586-05 ",.01)
 ;;65862-0586-05
 ;;9002226.02101,"1729,65862-0586-05 ",.02)
 ;;65862-0586-05
 ;;9002226.02101,"1729,65862-0587-01 ",.01)
 ;;65862-0587-01
 ;;9002226.02101,"1729,65862-0587-01 ",.02)
 ;;65862-0587-01
 ;;9002226.02101,"1729,65862-0587-05 ",.01)
 ;;65862-0587-05
 ;;9002226.02101,"1729,65862-0587-05 ",.02)
 ;;65862-0587-05
 ;;9002226.02101,"1729,65862-0617-90 ",.01)
 ;;65862-0617-90
 ;;9002226.02101,"1729,65862-0617-90 ",.02)
 ;;65862-0617-90
 ;;9002226.02101,"1729,65862-0618-90 ",.01)
 ;;65862-0618-90
 ;;9002226.02101,"1729,65862-0618-90 ",.02)
 ;;65862-0618-90
 ;;9002226.02101,"1729,65862-0619-90 ",.01)
 ;;65862-0619-90
 ;;9002226.02101,"1729,65862-0619-90 ",.02)
 ;;65862-0619-90
 ;;9002226.02101,"1729,65862-0620-90 ",.01)
 ;;65862-0620-90
 ;;9002226.02101,"1729,65862-0620-90 ",.02)
 ;;65862-0620-90
 ;;9002226.02101,"1729,65862-0637-30 ",.01)
 ;;65862-0637-30
 ;;9002226.02101,"1729,65862-0637-30 ",.02)
 ;;65862-0637-30
 ;;9002226.02101,"1729,65862-0637-90 ",.01)
 ;;65862-0637-90
 ;;9002226.02101,"1729,65862-0637-90 ",.02)
 ;;65862-0637-90
 ;;9002226.02101,"1729,65862-0638-05 ",.01)
 ;;65862-0638-05
 ;;9002226.02101,"1729,65862-0638-05 ",.02)
 ;;65862-0638-05
 ;;9002226.02101,"1729,65862-0638-30 ",.01)
 ;;65862-0638-30
 ;;9002226.02101,"1729,65862-0638-30 ",.02)
 ;;65862-0638-30
 ;;9002226.02101,"1729,65862-0638-90 ",.01)
 ;;65862-0638-90
 ;;9002226.02101,"1729,65862-0638-90 ",.02)
 ;;65862-0638-90
 ;;9002226.02101,"1729,65862-0639-05 ",.01)
 ;;65862-0639-05
 ;;9002226.02101,"1729,65862-0639-05 ",.02)
 ;;65862-0639-05
 ;;9002226.02101,"1729,65862-0639-30 ",.01)
 ;;65862-0639-30
 ;;9002226.02101,"1729,65862-0639-30 ",.02)
 ;;65862-0639-30
 ;;9002226.02101,"1729,65862-0639-90 ",.01)
 ;;65862-0639-90
 ;;9002226.02101,"1729,65862-0639-90 ",.02)
 ;;65862-0639-90
 ;;9002226.02101,"1729,66105-0503-01 ",.01)
 ;;66105-0503-01
 ;;9002226.02101,"1729,66105-0503-01 ",.02)
 ;;66105-0503-01
 ;;9002226.02101,"1729,66105-0503-03 ",.01)
 ;;66105-0503-03
 ;;9002226.02101,"1729,66105-0503-03 ",.02)
 ;;66105-0503-03
 ;;9002226.02101,"1729,66105-0503-06 ",.01)
 ;;66105-0503-06
 ;;9002226.02101,"1729,66105-0503-06 ",.02)
 ;;66105-0503-06
 ;;9002226.02101,"1729,66105-0503-09 ",.01)
 ;;66105-0503-09
 ;;9002226.02101,"1729,66105-0503-09 ",.02)
 ;;66105-0503-09
 ;;9002226.02101,"1729,66105-0503-15 ",.01)
 ;;66105-0503-15
 ;;9002226.02101,"1729,66105-0503-15 ",.02)
 ;;66105-0503-15
 ;;9002226.02101,"1729,66105-0504-01 ",.01)
 ;;66105-0504-01
 ;;9002226.02101,"1729,66105-0504-01 ",.02)
 ;;66105-0504-01
 ;;9002226.02101,"1729,66105-0504-03 ",.01)
 ;;66105-0504-03
 ;;9002226.02101,"1729,66105-0504-03 ",.02)
 ;;66105-0504-03
 ;;9002226.02101,"1729,66105-0504-06 ",.01)
 ;;66105-0504-06
 ;;9002226.02101,"1729,66105-0504-06 ",.02)
 ;;66105-0504-06
 ;;9002226.02101,"1729,66105-0504-09 ",.01)
 ;;66105-0504-09
 ;;9002226.02101,"1729,66105-0504-09 ",.02)
 ;;66105-0504-09
 ;;9002226.02101,"1729,66105-0504-15 ",.01)
 ;;66105-0504-15
 ;;9002226.02101,"1729,66105-0504-15 ",.02)
 ;;66105-0504-15
 ;;9002226.02101,"1729,66105-0545-01 ",.01)
 ;;66105-0545-01
 ;;9002226.02101,"1729,66105-0545-01 ",.02)
 ;;66105-0545-01
 ;;9002226.02101,"1729,66105-0545-03 ",.01)
 ;;66105-0545-03
 ;;9002226.02101,"1729,66105-0545-03 ",.02)
 ;;66105-0545-03
 ;;9002226.02101,"1729,66105-0545-06 ",.01)
 ;;66105-0545-06
 ;;9002226.02101,"1729,66105-0545-06 ",.02)
 ;;66105-0545-06
 ;;9002226.02101,"1729,66105-0545-09 ",.01)
 ;;66105-0545-09
 ;;9002226.02101,"1729,66105-0545-09 ",.02)
 ;;66105-0545-09
 ;;9002226.02101,"1729,66105-0545-10 ",.01)
 ;;66105-0545-10
 ;;9002226.02101,"1729,66105-0545-10 ",.02)
 ;;66105-0545-10
 ;;9002226.02101,"1729,66105-0553-03 ",.01)
 ;;66105-0553-03
 ;;9002226.02101,"1729,66105-0553-03 ",.02)
 ;;66105-0553-03
 ;;9002226.02101,"1729,66105-0663-03 ",.01)
 ;;66105-0663-03
 ;;9002226.02101,"1729,66105-0663-03 ",.02)
 ;;66105-0663-03
 ;;9002226.02101,"1729,66105-0669-03 ",.01)
 ;;66105-0669-03
 ;;9002226.02101,"1729,66105-0669-03 ",.02)
 ;;66105-0669-03
 ;;9002226.02101,"1729,66105-0842-03 ",.01)
 ;;66105-0842-03
 ;;9002226.02101,"1729,66105-0842-03 ",.02)
 ;;66105-0842-03
