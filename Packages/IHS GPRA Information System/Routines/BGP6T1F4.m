BGP6T1F4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1797,63629-1459-05 ",.01)
 ;;63629-1459-05
 ;;9002226.02101,"1797,63629-1459-05 ",.02)
 ;;63629-1459-05
 ;;9002226.02101,"1797,63629-1459-06 ",.01)
 ;;63629-1459-06
 ;;9002226.02101,"1797,63629-1459-06 ",.02)
 ;;63629-1459-06
 ;;9002226.02101,"1797,63629-1748-01 ",.01)
 ;;63629-1748-01
 ;;9002226.02101,"1797,63629-1748-01 ",.02)
 ;;63629-1748-01
 ;;9002226.02101,"1797,63629-1748-02 ",.01)
 ;;63629-1748-02
 ;;9002226.02101,"1797,63629-1748-02 ",.02)
 ;;63629-1748-02
 ;;9002226.02101,"1797,63629-1748-03 ",.01)
 ;;63629-1748-03
 ;;9002226.02101,"1797,63629-1748-03 ",.02)
 ;;63629-1748-03
 ;;9002226.02101,"1797,65162-0689-88 ",.01)
 ;;65162-0689-88
 ;;9002226.02101,"1797,65162-0689-88 ",.02)
 ;;65162-0689-88
 ;;9002226.02101,"1797,66116-0208-30 ",.01)
 ;;66116-0208-30
 ;;9002226.02101,"1797,66116-0208-30 ",.02)
 ;;66116-0208-30
 ;;9002226.02101,"1797,66116-0217-10 ",.01)
 ;;66116-0217-10
 ;;9002226.02101,"1797,66116-0217-10 ",.02)
 ;;66116-0217-10
 ;;9002226.02101,"1797,66116-0217-14 ",.01)
 ;;66116-0217-14
 ;;9002226.02101,"1797,66116-0217-14 ",.02)
 ;;66116-0217-14
 ;;9002226.02101,"1797,66116-0217-30 ",.01)
 ;;66116-0217-30
 ;;9002226.02101,"1797,66116-0217-30 ",.02)
 ;;66116-0217-30
 ;;9002226.02101,"1797,66116-0250-30 ",.01)
 ;;66116-0250-30
 ;;9002226.02101,"1797,66116-0250-30 ",.02)
 ;;66116-0250-30
 ;;9002226.02101,"1797,66116-0462-20 ",.01)
 ;;66116-0462-20
 ;;9002226.02101,"1797,66116-0462-20 ",.02)
 ;;66116-0462-20
 ;;9002226.02101,"1797,66267-0156-14 ",.01)
 ;;66267-0156-14
 ;;9002226.02101,"1797,66267-0156-14 ",.02)
 ;;66267-0156-14
 ;;9002226.02101,"1797,66267-0156-28 ",.01)
 ;;66267-0156-28
 ;;9002226.02101,"1797,66267-0156-28 ",.02)
 ;;66267-0156-28
 ;;9002226.02101,"1797,66267-0156-40 ",.01)
 ;;66267-0156-40
 ;;9002226.02101,"1797,66267-0156-40 ",.02)
 ;;66267-0156-40
 ;;9002226.02101,"1797,66336-0008-14 ",.01)
 ;;66336-0008-14
 ;;9002226.02101,"1797,66336-0008-14 ",.02)
 ;;66336-0008-14
 ;;9002226.02101,"1797,66336-0008-28 ",.01)
 ;;66336-0008-28
 ;;9002226.02101,"1797,66336-0008-28 ",.02)
 ;;66336-0008-28
 ;;9002226.02101,"1797,66336-0008-30 ",.01)
 ;;66336-0008-30
 ;;9002226.02101,"1797,66336-0008-30 ",.02)
 ;;66336-0008-30
 ;;9002226.02101,"1797,66336-0590-14 ",.01)
 ;;66336-0590-14
 ;;9002226.02101,"1797,66336-0590-14 ",.02)
 ;;66336-0590-14
 ;;9002226.02101,"1797,66336-0590-20 ",.01)
 ;;66336-0590-20
 ;;9002226.02101,"1797,66336-0590-20 ",.02)
 ;;66336-0590-20
 ;;9002226.02101,"1797,66993-0471-73 ",.01)
 ;;66993-0471-73
 ;;9002226.02101,"1797,66993-0471-73 ",.02)
 ;;66993-0471-73
 ;;9002226.02101,"1797,68001-0001-00 ",.01)
 ;;68001-0001-00
 ;;9002226.02101,"1797,68001-0001-00 ",.02)
 ;;68001-0001-00
 ;;9002226.02101,"1797,68001-0002-00 ",.01)
 ;;68001-0002-00
 ;;9002226.02101,"1797,68001-0002-00 ",.02)
 ;;68001-0002-00
 ;;9002226.02101,"1797,68001-0003-00 ",.01)
 ;;68001-0003-00
 ;;9002226.02101,"1797,68001-0003-00 ",.02)
 ;;68001-0003-00
 ;;9002226.02101,"1797,68084-0077-01 ",.01)
 ;;68084-0077-01
 ;;9002226.02101,"1797,68084-0077-01 ",.02)
 ;;68084-0077-01
 ;;9002226.02101,"1797,68084-0077-11 ",.01)
 ;;68084-0077-11
 ;;9002226.02101,"1797,68084-0077-11 ",.02)
 ;;68084-0077-11
 ;;9002226.02101,"1797,68084-0078-01 ",.01)
 ;;68084-0078-01
 ;;9002226.02101,"1797,68084-0078-01 ",.02)
 ;;68084-0078-01
 ;;9002226.02101,"1797,68084-0078-11 ",.01)
 ;;68084-0078-11
 ;;9002226.02101,"1797,68084-0078-11 ",.02)
 ;;68084-0078-11
 ;;9002226.02101,"1797,68084-0446-01 ",.01)
 ;;68084-0446-01
 ;;9002226.02101,"1797,68084-0446-01 ",.02)
 ;;68084-0446-01
 ;;9002226.02101,"1797,68084-0446-11 ",.01)
 ;;68084-0446-11
 ;;9002226.02101,"1797,68084-0446-11 ",.02)
 ;;68084-0446-11
 ;;9002226.02101,"1797,68788-0518-01 ",.01)
 ;;68788-0518-01
 ;;9002226.02101,"1797,68788-0518-01 ",.02)
 ;;68788-0518-01
