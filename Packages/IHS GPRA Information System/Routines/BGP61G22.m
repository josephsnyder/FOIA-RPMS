BGP61G22 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,54868-5993-00 ",.01)
 ;;54868-5993-00
 ;;9002226.02101,"1220,54868-5993-00 ",.02)
 ;;54868-5993-00
 ;;9002226.02101,"1220,54868-5993-01 ",.01)
 ;;54868-5993-01
 ;;9002226.02101,"1220,54868-5993-01 ",.02)
 ;;54868-5993-01
 ;;9002226.02101,"1220,54868-5996-00 ",.01)
 ;;54868-5996-00
 ;;9002226.02101,"1220,54868-5996-00 ",.02)
 ;;54868-5996-00
 ;;9002226.02101,"1220,54868-5996-01 ",.01)
 ;;54868-5996-01
 ;;9002226.02101,"1220,54868-5996-01 ",.02)
 ;;54868-5996-01
 ;;9002226.02101,"1220,54868-5997-00 ",.01)
 ;;54868-5997-00
 ;;9002226.02101,"1220,54868-5997-00 ",.02)
 ;;54868-5997-00
 ;;9002226.02101,"1220,54868-5997-01 ",.01)
 ;;54868-5997-01
 ;;9002226.02101,"1220,54868-5997-01 ",.02)
 ;;54868-5997-01
 ;;9002226.02101,"1220,54868-6036-00 ",.01)
 ;;54868-6036-00
 ;;9002226.02101,"1220,54868-6036-00 ",.02)
 ;;54868-6036-00
 ;;9002226.02101,"1220,54868-6123-00 ",.01)
 ;;54868-6123-00
 ;;9002226.02101,"1220,54868-6123-00 ",.02)
 ;;54868-6123-00
 ;;9002226.02101,"1220,54868-6124-00 ",.01)
 ;;54868-6124-00
 ;;9002226.02101,"1220,54868-6124-00 ",.02)
 ;;54868-6124-00
 ;;9002226.02101,"1220,54868-6124-01 ",.01)
 ;;54868-6124-01
 ;;9002226.02101,"1220,54868-6124-01 ",.02)
 ;;54868-6124-01
 ;;9002226.02101,"1220,54868-6250-00 ",.01)
 ;;54868-6250-00
 ;;9002226.02101,"1220,54868-6250-00 ",.02)
 ;;54868-6250-00
 ;;9002226.02101,"1220,54868-6297-00 ",.01)
 ;;54868-6297-00
 ;;9002226.02101,"1220,54868-6297-00 ",.02)
 ;;54868-6297-00
 ;;9002226.02101,"1220,54868-6335-00 ",.01)
 ;;54868-6335-00
 ;;9002226.02101,"1220,54868-6335-00 ",.02)
 ;;54868-6335-00
 ;;9002226.02101,"1220,55045-2321-08 ",.01)
 ;;55045-2321-08
 ;;9002226.02101,"1220,55045-2321-08 ",.02)
 ;;55045-2321-08
 ;;9002226.02101,"1220,55045-2321-09 ",.01)
 ;;55045-2321-09
 ;;9002226.02101,"1220,55045-2321-09 ",.02)
 ;;55045-2321-09
 ;;9002226.02101,"1220,55045-2357-08 ",.01)
 ;;55045-2357-08
 ;;9002226.02101,"1220,55045-2357-08 ",.02)
 ;;55045-2357-08
 ;;9002226.02101,"1220,55045-2846-08 ",.01)
 ;;55045-2846-08
 ;;9002226.02101,"1220,55045-2846-08 ",.02)
 ;;55045-2846-08
 ;;9002226.02101,"1220,55045-3017-06 ",.01)
 ;;55045-3017-06
 ;;9002226.02101,"1220,55045-3017-06 ",.02)
 ;;55045-3017-06
 ;;9002226.02101,"1220,55045-3043-09 ",.01)
 ;;55045-3043-09
 ;;9002226.02101,"1220,55045-3043-09 ",.02)
 ;;55045-3043-09
 ;;9002226.02101,"1220,55045-3344-01 ",.01)
 ;;55045-3344-01
 ;;9002226.02101,"1220,55045-3344-01 ",.02)
 ;;55045-3344-01
 ;;9002226.02101,"1220,55045-3499-01 ",.01)
 ;;55045-3499-01
 ;;9002226.02101,"1220,55045-3499-01 ",.02)
 ;;55045-3499-01
 ;;9002226.02101,"1220,55045-3791-01 ",.01)
 ;;55045-3791-01
 ;;9002226.02101,"1220,55045-3791-01 ",.02)
 ;;55045-3791-01
 ;;9002226.02101,"1220,55045-3792-01 ",.01)
 ;;55045-3792-01
 ;;9002226.02101,"1220,55045-3792-01 ",.02)
 ;;55045-3792-01
 ;;9002226.02101,"1220,55045-3794-09 ",.01)
 ;;55045-3794-09
 ;;9002226.02101,"1220,55045-3794-09 ",.02)
 ;;55045-3794-09
 ;;9002226.02101,"1220,55045-3795-09 ",.01)
 ;;55045-3795-09
 ;;9002226.02101,"1220,55045-3795-09 ",.02)
 ;;55045-3795-09
 ;;9002226.02101,"1220,55045-3796-09 ",.01)
 ;;55045-3796-09
 ;;9002226.02101,"1220,55045-3796-09 ",.02)
 ;;55045-3796-09
 ;;9002226.02101,"1220,55048-0018-30 ",.01)
 ;;55048-0018-30
 ;;9002226.02101,"1220,55048-0018-30 ",.02)
 ;;55048-0018-30
 ;;9002226.02101,"1220,55048-0018-90 ",.01)
 ;;55048-0018-90
 ;;9002226.02101,"1220,55048-0018-90 ",.02)
 ;;55048-0018-90
 ;;9002226.02101,"1220,55048-0019-30 ",.01)
 ;;55048-0019-30
 ;;9002226.02101,"1220,55048-0019-30 ",.02)
 ;;55048-0019-30
 ;;9002226.02101,"1220,55048-0019-90 ",.01)
 ;;55048-0019-90
 ;;9002226.02101,"1220,55048-0019-90 ",.02)
 ;;55048-0019-90
 ;;9002226.02101,"1220,55048-0020-30 ",.01)
 ;;55048-0020-30
 ;;9002226.02101,"1220,55048-0020-30 ",.02)
 ;;55048-0020-30
 ;;9002226.02101,"1220,55048-0021-30 ",.01)
 ;;55048-0021-30
 ;;9002226.02101,"1220,55048-0021-30 ",.02)
 ;;55048-0021-30
 ;;9002226.02101,"1220,55048-0022-30 ",.01)
 ;;55048-0022-30
 ;;9002226.02101,"1220,55048-0022-30 ",.02)
 ;;55048-0022-30
 ;;9002226.02101,"1220,55048-0023-30 ",.01)
 ;;55048-0023-30
 ;;9002226.02101,"1220,55048-0023-30 ",.02)
 ;;55048-0023-30
 ;;9002226.02101,"1220,55048-0024-30 ",.01)
 ;;55048-0024-30
 ;;9002226.02101,"1220,55048-0024-30 ",.02)
 ;;55048-0024-30
 ;;9002226.02101,"1220,55048-0111-30 ",.01)
 ;;55048-0111-30
 ;;9002226.02101,"1220,55048-0111-30 ",.02)
 ;;55048-0111-30
 ;;9002226.02101,"1220,55048-0121-30 ",.01)
 ;;55048-0121-30
 ;;9002226.02101,"1220,55048-0121-30 ",.02)
 ;;55048-0121-30
 ;;9002226.02101,"1220,55048-0122-30 ",.01)
 ;;55048-0122-30
 ;;9002226.02101,"1220,55048-0122-30 ",.02)
 ;;55048-0122-30
 ;;9002226.02101,"1220,55048-0123-30 ",.01)
 ;;55048-0123-30
 ;;9002226.02101,"1220,55048-0123-30 ",.02)
 ;;55048-0123-30
 ;;9002226.02101,"1220,55048-0124-30 ",.01)
 ;;55048-0124-30
 ;;9002226.02101,"1220,55048-0124-30 ",.02)
 ;;55048-0124-30
 ;;9002226.02101,"1220,55048-0125-30 ",.01)
 ;;55048-0125-30
 ;;9002226.02101,"1220,55048-0125-30 ",.02)
 ;;55048-0125-30
 ;;9002226.02101,"1220,55048-0210-30 ",.01)
 ;;55048-0210-30
 ;;9002226.02101,"1220,55048-0210-30 ",.02)
 ;;55048-0210-30
 ;;9002226.02101,"1220,55048-0211-30 ",.01)
 ;;55048-0211-30
 ;;9002226.02101,"1220,55048-0211-30 ",.02)
 ;;55048-0211-30
 ;;9002226.02101,"1220,55048-0212-30 ",.01)
 ;;55048-0212-30
 ;;9002226.02101,"1220,55048-0212-30 ",.02)
 ;;55048-0212-30
 ;;9002226.02101,"1220,55048-0213-30 ",.01)
 ;;55048-0213-30
 ;;9002226.02101,"1220,55048-0213-30 ",.02)
 ;;55048-0213-30
 ;;9002226.02101,"1220,55048-0542-30 ",.01)
 ;;55048-0542-30
 ;;9002226.02101,"1220,55048-0542-30 ",.02)
 ;;55048-0542-30
 ;;9002226.02101,"1220,55048-0543-30 ",.01)
 ;;55048-0543-30
 ;;9002226.02101,"1220,55048-0543-30 ",.02)
 ;;55048-0543-30
 ;;9002226.02101,"1220,55048-0544-30 ",.01)
 ;;55048-0544-30
 ;;9002226.02101,"1220,55048-0544-30 ",.02)
 ;;55048-0544-30
 ;;9002226.02101,"1220,55048-0819-30 ",.01)
 ;;55048-0819-30
 ;;9002226.02101,"1220,55048-0819-30 ",.02)
 ;;55048-0819-30
 ;;9002226.02101,"1220,55048-0820-30 ",.01)
 ;;55048-0820-30
 ;;9002226.02101,"1220,55048-0820-30 ",.02)
 ;;55048-0820-30
 ;;9002226.02101,"1220,55111-0269-90 ",.01)
 ;;55111-0269-90
 ;;9002226.02101,"1220,55111-0269-90 ",.02)
 ;;55111-0269-90
 ;;9002226.02101,"1220,55111-0270-05 ",.01)
 ;;55111-0270-05
 ;;9002226.02101,"1220,55111-0270-05 ",.02)
 ;;55111-0270-05
 ;;9002226.02101,"1220,55111-0270-90 ",.01)
 ;;55111-0270-90
 ;;9002226.02101,"1220,55111-0270-90 ",.02)
 ;;55111-0270-90
 ;;9002226.02101,"1220,55111-0271-05 ",.01)
 ;;55111-0271-05
 ;;9002226.02101,"1220,55111-0271-05 ",.02)
 ;;55111-0271-05
 ;;9002226.02101,"1220,55111-0271-90 ",.01)
 ;;55111-0271-90
 ;;9002226.02101,"1220,55111-0271-90 ",.02)
 ;;55111-0271-90
 ;;9002226.02101,"1220,55111-0338-01 ",.01)
 ;;55111-0338-01
 ;;9002226.02101,"1220,55111-0338-01 ",.02)
 ;;55111-0338-01
 ;;9002226.02101,"1220,55111-0339-01 ",.01)
 ;;55111-0339-01
 ;;9002226.02101,"1220,55111-0339-01 ",.02)
 ;;55111-0339-01
 ;;9002226.02101,"1220,55111-0339-05 ",.01)
 ;;55111-0339-05
 ;;9002226.02101,"1220,55111-0339-05 ",.02)
 ;;55111-0339-05
 ;;9002226.02101,"1220,55111-0340-01 ",.01)
 ;;55111-0340-01
 ;;9002226.02101,"1220,55111-0340-01 ",.02)
 ;;55111-0340-01
 ;;9002226.02101,"1220,55111-0340-05 ",.01)
 ;;55111-0340-05
 ;;9002226.02101,"1220,55111-0340-05 ",.02)
 ;;55111-0340-05
 ;;9002226.02101,"1220,55111-0341-01 ",.01)
 ;;55111-0341-01
 ;;9002226.02101,"1220,55111-0341-01 ",.02)
 ;;55111-0341-01
 ;;9002226.02101,"1220,55111-0341-05 ",.01)
 ;;55111-0341-05
 ;;9002226.02101,"1220,55111-0341-05 ",.02)
 ;;55111-0341-05
 ;;9002226.02101,"1220,55111-0586-01 ",.01)
 ;;55111-0586-01
 ;;9002226.02101,"1220,55111-0586-01 ",.02)
 ;;55111-0586-01
 ;;9002226.02101,"1220,55111-0587-01 ",.01)
 ;;55111-0587-01
 ;;9002226.02101,"1220,55111-0587-01 ",.02)
 ;;55111-0587-01
 ;;9002226.02101,"1220,55289-0039-30 ",.01)
 ;;55289-0039-30
 ;;9002226.02101,"1220,55289-0039-30 ",.02)
 ;;55289-0039-30
 ;;9002226.02101,"1220,55289-0078-30 ",.01)
 ;;55289-0078-30
 ;;9002226.02101,"1220,55289-0078-30 ",.02)
 ;;55289-0078-30
 ;;9002226.02101,"1220,55289-0096-30 ",.01)
 ;;55289-0096-30
 ;;9002226.02101,"1220,55289-0096-30 ",.02)
 ;;55289-0096-30
 ;;9002226.02101,"1220,55289-0103-30 ",.01)
 ;;55289-0103-30
 ;;9002226.02101,"1220,55289-0103-30 ",.02)
 ;;55289-0103-30
 ;;9002226.02101,"1220,55289-0103-60 ",.01)
 ;;55289-0103-60
 ;;9002226.02101,"1220,55289-0103-60 ",.02)
 ;;55289-0103-60
 ;;9002226.02101,"1220,55289-0270-30 ",.01)
 ;;55289-0270-30
 ;;9002226.02101,"1220,55289-0270-30 ",.02)
 ;;55289-0270-30
 ;;9002226.02101,"1220,55289-0270-90 ",.01)
 ;;55289-0270-90
 ;;9002226.02101,"1220,55289-0270-90 ",.02)
 ;;55289-0270-90
 ;;9002226.02101,"1220,55289-0289-90 ",.01)
 ;;55289-0289-90
 ;;9002226.02101,"1220,55289-0289-90 ",.02)
 ;;55289-0289-90
 ;;9002226.02101,"1220,55289-0299-30 ",.01)
 ;;55289-0299-30
 ;;9002226.02101,"1220,55289-0299-30 ",.02)
 ;;55289-0299-30
 ;;9002226.02101,"1220,55289-0299-90 ",.01)
 ;;55289-0299-90
 ;;9002226.02101,"1220,55289-0299-90 ",.02)
 ;;55289-0299-90
 ;;9002226.02101,"1220,55289-0306-30 ",.01)
 ;;55289-0306-30
 ;;9002226.02101,"1220,55289-0306-30 ",.02)
 ;;55289-0306-30
 ;;9002226.02101,"1220,55289-0306-90 ",.01)
 ;;55289-0306-90
 ;;9002226.02101,"1220,55289-0306-90 ",.02)
 ;;55289-0306-90
 ;;9002226.02101,"1220,55289-0323-01 ",.01)
 ;;55289-0323-01
 ;;9002226.02101,"1220,55289-0323-01 ",.02)
 ;;55289-0323-01
 ;;9002226.02101,"1220,55289-0323-30 ",.01)
 ;;55289-0323-30
 ;;9002226.02101,"1220,55289-0323-30 ",.02)
 ;;55289-0323-30
 ;;9002226.02101,"1220,55289-0329-01 ",.01)
 ;;55289-0329-01
 ;;9002226.02101,"1220,55289-0329-01 ",.02)
 ;;55289-0329-01
 ;;9002226.02101,"1220,55289-0335-01 ",.01)
 ;;55289-0335-01
 ;;9002226.02101,"1220,55289-0335-01 ",.02)
 ;;55289-0335-01
 ;;9002226.02101,"1220,55289-0335-10 ",.01)
 ;;55289-0335-10
 ;;9002226.02101,"1220,55289-0335-10 ",.02)
 ;;55289-0335-10
 ;;9002226.02101,"1220,55289-0335-50 ",.01)
 ;;55289-0335-50
 ;;9002226.02101,"1220,55289-0335-50 ",.02)
 ;;55289-0335-50
 ;;9002226.02101,"1220,55289-0357-01 ",.01)
 ;;55289-0357-01
 ;;9002226.02101,"1220,55289-0357-01 ",.02)
 ;;55289-0357-01
 ;;9002226.02101,"1220,55289-0357-30 ",.01)
 ;;55289-0357-30
 ;;9002226.02101,"1220,55289-0357-30 ",.02)
 ;;55289-0357-30
 ;;9002226.02101,"1220,55289-0448-30 ",.01)
 ;;55289-0448-30
 ;;9002226.02101,"1220,55289-0448-30 ",.02)
 ;;55289-0448-30
 ;;9002226.02101,"1220,55289-0481-30 ",.01)
 ;;55289-0481-30
 ;;9002226.02101,"1220,55289-0481-30 ",.02)
 ;;55289-0481-30
 ;;9002226.02101,"1220,55289-0481-60 ",.01)
 ;;55289-0481-60
 ;;9002226.02101,"1220,55289-0481-60 ",.02)
 ;;55289-0481-60
 ;;9002226.02101,"1220,55289-0543-30 ",.01)
 ;;55289-0543-30
 ;;9002226.02101,"1220,55289-0543-30 ",.02)
 ;;55289-0543-30
 ;;9002226.02101,"1220,55289-0545-30 ",.01)
 ;;55289-0545-30
 ;;9002226.02101,"1220,55289-0545-30 ",.02)
 ;;55289-0545-30
 ;;9002226.02101,"1220,55289-0549-30 ",.01)
 ;;55289-0549-30
 ;;9002226.02101,"1220,55289-0549-30 ",.02)
 ;;55289-0549-30
 ;;9002226.02101,"1220,55289-0549-60 ",.01)
 ;;55289-0549-60
 ;;9002226.02101,"1220,55289-0549-60 ",.02)
 ;;55289-0549-60
 ;;9002226.02101,"1220,55289-0602-30 ",.01)
 ;;55289-0602-30
 ;;9002226.02101,"1220,55289-0602-30 ",.02)
 ;;55289-0602-30
 ;;9002226.02101,"1220,55289-0607-30 ",.01)
 ;;55289-0607-30
 ;;9002226.02101,"1220,55289-0607-30 ",.02)
 ;;55289-0607-30
 ;;9002226.02101,"1220,55289-0723-30 ",.01)
 ;;55289-0723-30
 ;;9002226.02101,"1220,55289-0723-30 ",.02)
 ;;55289-0723-30
 ;;9002226.02101,"1220,55289-0723-90 ",.01)
 ;;55289-0723-90
 ;;9002226.02101,"1220,55289-0723-90 ",.02)
 ;;55289-0723-90
 ;;9002226.02101,"1220,55289-0723-93 ",.01)
 ;;55289-0723-93
 ;;9002226.02101,"1220,55289-0723-93 ",.02)
 ;;55289-0723-93
 ;;9002226.02101,"1220,55289-0770-14 ",.01)
 ;;55289-0770-14
 ;;9002226.02101,"1220,55289-0770-14 ",.02)
 ;;55289-0770-14
 ;;9002226.02101,"1220,55289-0774-14 ",.01)
 ;;55289-0774-14
 ;;9002226.02101,"1220,55289-0774-14 ",.02)
 ;;55289-0774-14
 ;;9002226.02101,"1220,55289-0798-07 ",.01)
 ;;55289-0798-07
 ;;9002226.02101,"1220,55289-0798-07 ",.02)
 ;;55289-0798-07
 ;;9002226.02101,"1220,55289-0798-30 ",.01)
 ;;55289-0798-30
 ;;9002226.02101,"1220,55289-0798-30 ",.02)
 ;;55289-0798-30
 ;;9002226.02101,"1220,55289-0853-30 ",.01)
 ;;55289-0853-30
 ;;9002226.02101,"1220,55289-0853-30 ",.02)
 ;;55289-0853-30
 ;;9002226.02101,"1220,55289-0893-30 ",.01)
 ;;55289-0893-30
 ;;9002226.02101,"1220,55289-0893-30 ",.02)
 ;;55289-0893-30
