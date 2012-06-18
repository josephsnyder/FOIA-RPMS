BGPTXGB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"412,00186-1989-04 ",.02)
 ;;00186-1989-04
 ;;9002226.02101,"412,51479-0011-03 ",.01)
 ;;51479-0011-03
 ;;9002226.02101,"412,51479-0011-03 ",.02)
 ;;51479-0011-03
 ;;9002226.02101,"412,52959-0286-03 ",.01)
 ;;52959-0286-03
 ;;9002226.02101,"412,52959-0286-03 ",.02)
 ;;52959-0286-03
 ;;9002226.02101,"412,52959-0585-00 ",.01)
 ;;52959-0585-00
 ;;9002226.02101,"412,52959-0585-00 ",.02)
 ;;52959-0585-00
 ;;9002226.02101,"412,52959-0596-01 ",.01)
 ;;52959-0596-01
 ;;9002226.02101,"412,52959-0596-01 ",.02)
 ;;52959-0596-01
 ;;9002226.02101,"412,52959-0598-01 ",.01)
 ;;52959-0598-01
 ;;9002226.02101,"412,52959-0598-01 ",.02)
 ;;52959-0598-01
 ;;9002226.02101,"412,54569-0053-00 ",.01)
 ;;54569-0053-00
 ;;9002226.02101,"412,54569-0053-00 ",.02)
 ;;54569-0053-00
 ;;9002226.02101,"412,54569-0067-00 ",.01)
 ;;54569-0067-00
 ;;9002226.02101,"412,54569-0067-00 ",.02)
 ;;54569-0067-00
 ;;9002226.02101,"412,54569-1004-00 ",.01)
 ;;54569-1004-00
 ;;9002226.02101,"412,54569-1004-00 ",.02)
 ;;54569-1004-00
 ;;9002226.02101,"412,54569-3656-00 ",.01)
 ;;54569-3656-00
 ;;9002226.02101,"412,54569-3656-00 ",.02)
 ;;54569-3656-00
 ;;9002226.02101,"412,54569-4540-00 ",.01)
 ;;54569-4540-00
 ;;9002226.02101,"412,54569-4540-00 ",.02)
 ;;54569-4540-00
 ;;9002226.02101,"412,54569-4602-00 ",.01)
 ;;54569-4602-00
 ;;9002226.02101,"412,54569-4602-00 ",.02)
 ;;54569-4602-00
 ;;9002226.02101,"412,54569-4603-00 ",.01)
 ;;54569-4603-00
 ;;9002226.02101,"412,54569-4603-00 ",.02)
 ;;54569-4603-00
 ;;9002226.02101,"412,54569-4863-00 ",.01)
 ;;54569-4863-00
 ;;9002226.02101,"412,54569-4863-00 ",.02)
 ;;54569-4863-00
 ;;9002226.02101,"412,54569-4896-00 ",.01)
 ;;54569-4896-00
 ;;9002226.02101,"412,54569-4896-00 ",.02)
 ;;54569-4896-00
 ;;9002226.02101,"412,54569-5162-00 ",.01)
 ;;54569-5162-00
 ;;9002226.02101,"412,54569-5162-00 ",.02)
 ;;54569-5162-00
 ;;9002226.02101,"412,54569-5163-00 ",.01)
 ;;54569-5163-00
 ;;9002226.02101,"412,54569-5163-00 ",.02)
 ;;54569-5163-00
 ;;9002226.02101,"412,54569-5241-00 ",.01)
 ;;54569-5241-00
 ;;9002226.02101,"412,54569-5241-00 ",.02)
 ;;54569-5241-00
 ;;9002226.02101,"412,54569-5242-00 ",.01)
 ;;54569-5242-00
 ;;9002226.02101,"412,54569-5242-00 ",.02)
 ;;54569-5242-00
 ;;9002226.02101,"412,54569-5243-00 ",.01)
 ;;54569-5243-00
 ;;9002226.02101,"412,54569-5243-00 ",.02)
 ;;54569-5243-00
 ;;9002226.02101,"412,54868-1268-01 ",.01)
 ;;54868-1268-01
 ;;9002226.02101,"412,54868-1268-01 ",.02)
 ;;54868-1268-01
 ;;9002226.02101,"412,54868-1269-01 ",.01)
 ;;54868-1269-01
 ;;9002226.02101,"412,54868-1269-01 ",.02)
 ;;54868-1269-01
 ;;9002226.02101,"412,54868-1841-01 ",.01)
 ;;54868-1841-01
 ;;9002226.02101,"412,54868-1841-01 ",.02)
 ;;54868-1841-01
 ;;9002226.02101,"412,54868-4182-00 ",.01)
 ;;54868-4182-00
 ;;9002226.02101,"412,54868-4182-00 ",.02)
 ;;54868-4182-00
 ;;9002226.02101,"412,54868-4264-00 ",.01)
 ;;54868-4264-00
 ;;9002226.02101,"412,54868-4264-00 ",.02)
 ;;54868-4264-00
 ;;9002226.02101,"412,54868-4295-00 ",.01)
 ;;54868-4295-00
 ;;9002226.02101,"412,54868-4295-00 ",.02)
 ;;54868-4295-00
 ;;9002226.02101,"412,54868-4392-00 ",.01)
 ;;54868-4392-00
 ;;9002226.02101,"412,54868-4392-00 ",.02)
 ;;54868-4392-00
 ;;9002226.02101,"412,54868-4516-00 ",.01)
 ;;54868-4516-00
 ;;9002226.02101,"412,54868-4516-00 ",.02)
 ;;54868-4516-00
 ;;9002226.02101,"412,54868-4517-00 ",.01)
 ;;54868-4517-00
 ;;9002226.02101,"412,54868-4517-00 ",.02)
 ;;54868-4517-00
 ;;9002226.02101,"412,54868-4518-00 ",.01)
 ;;54868-4518-00
 ;;9002226.02101,"412,54868-4518-00 ",.02)
 ;;54868-4518-00
 ;;9002226.02101,"412,54969-4741-00 ",.01)
 ;;54969-4741-00
 ;;9002226.02101,"412,54969-4741-00 ",.02)
 ;;54969-4741-00
 ;;9002226.02101,"412,58016-6075-01 ",.01)
 ;;58016-6075-01
 ;;9002226.02101,"412,58016-6075-01 ",.02)
 ;;58016-6075-01
 ;;9002226.02101,"412,58016-6207-01 ",.01)
 ;;58016-6207-01
 ;;9002226.02101,"412,58016-6207-01 ",.02)
 ;;58016-6207-01
 ;;9002226.02101,"412,59569-4822-00 ",.01)
 ;;59569-4822-00
 ;;9002226.02101,"412,59569-4822-00 ",.02)
 ;;59569-4822-00
