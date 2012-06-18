BGP21J28 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1199,55887-0965-30 ",.01)
 ;;55887-0965-30
 ;;9002226.02101,"1199,55887-0965-30 ",.02)
 ;;55887-0965-30
 ;;9002226.02101,"1199,55887-0968-30 ",.01)
 ;;55887-0968-30
 ;;9002226.02101,"1199,55887-0968-30 ",.02)
 ;;55887-0968-30
 ;;9002226.02101,"1199,55887-0969-30 ",.01)
 ;;55887-0969-30
 ;;9002226.02101,"1199,55887-0969-30 ",.02)
 ;;55887-0969-30
 ;;9002226.02101,"1199,57664-0398-13 ",.01)
 ;;57664-0398-13
 ;;9002226.02101,"1199,57664-0398-13 ",.02)
 ;;57664-0398-13
 ;;9002226.02101,"1199,57664-0398-18 ",.01)
 ;;57664-0398-18
 ;;9002226.02101,"1199,57664-0398-18 ",.02)
 ;;57664-0398-18
 ;;9002226.02101,"1199,57664-0398-88 ",.01)
 ;;57664-0398-88
 ;;9002226.02101,"1199,57664-0398-88 ",.02)
 ;;57664-0398-88
 ;;9002226.02101,"1199,57664-0399-13 ",.01)
 ;;57664-0399-13
 ;;9002226.02101,"1199,57664-0399-13 ",.02)
 ;;57664-0399-13
 ;;9002226.02101,"1199,57664-0399-18 ",.01)
 ;;57664-0399-18
 ;;9002226.02101,"1199,57664-0399-18 ",.02)
 ;;57664-0399-18
 ;;9002226.02101,"1199,57664-0399-88 ",.01)
 ;;57664-0399-88
 ;;9002226.02101,"1199,57664-0399-88 ",.02)
 ;;57664-0399-88
 ;;9002226.02101,"1199,57664-0724-88 ",.01)
 ;;57664-0724-88
 ;;9002226.02101,"1199,57664-0724-88 ",.02)
 ;;57664-0724-88
 ;;9002226.02101,"1199,57664-0725-88 ",.01)
 ;;57664-0725-88
 ;;9002226.02101,"1199,57664-0725-88 ",.02)
 ;;57664-0725-88
 ;;9002226.02101,"1199,57664-0727-88 ",.01)
 ;;57664-0727-88
 ;;9002226.02101,"1199,57664-0727-88 ",.02)
 ;;57664-0727-88
 ;;9002226.02101,"1199,57866-0236-01 ",.01)
 ;;57866-0236-01
 ;;9002226.02101,"1199,57866-0236-01 ",.02)
 ;;57866-0236-01
 ;;9002226.02101,"1199,57866-0237-01 ",.01)
 ;;57866-0237-01
 ;;9002226.02101,"1199,57866-0237-01 ",.02)
 ;;57866-0237-01
 ;;9002226.02101,"1199,57866-6302-01 ",.01)
 ;;57866-6302-01
 ;;9002226.02101,"1199,57866-6302-01 ",.02)
 ;;57866-6302-01
 ;;9002226.02101,"1199,57866-6409-01 ",.01)
 ;;57866-6409-01
 ;;9002226.02101,"1199,57866-6409-01 ",.02)
 ;;57866-6409-01
 ;;9002226.02101,"1199,57866-6409-02 ",.01)
 ;;57866-6409-02
 ;;9002226.02101,"1199,57866-6409-02 ",.02)
 ;;57866-6409-02
 ;;9002226.02101,"1199,57866-6409-03 ",.01)
 ;;57866-6409-03
 ;;9002226.02101,"1199,57866-6409-03 ",.02)
 ;;57866-6409-03
 ;;9002226.02101,"1199,57866-6409-04 ",.01)
 ;;57866-6409-04
 ;;9002226.02101,"1199,57866-6409-04 ",.02)
 ;;57866-6409-04
 ;;9002226.02101,"1199,57866-6409-05 ",.01)
 ;;57866-6409-05
 ;;9002226.02101,"1199,57866-6409-05 ",.02)
 ;;57866-6409-05
 ;;9002226.02101,"1199,57866-6409-06 ",.01)
 ;;57866-6409-06
 ;;9002226.02101,"1199,57866-6409-06 ",.02)
 ;;57866-6409-06
 ;;9002226.02101,"1199,57866-6462-01 ",.01)
 ;;57866-6462-01
 ;;9002226.02101,"1199,57866-6462-01 ",.02)
 ;;57866-6462-01
 ;;9002226.02101,"1199,57866-6462-02 ",.01)
 ;;57866-6462-02
 ;;9002226.02101,"1199,57866-6462-02 ",.02)
 ;;57866-6462-02
 ;;9002226.02101,"1199,57866-6463-01 ",.01)
 ;;57866-6463-01
 ;;9002226.02101,"1199,57866-6463-01 ",.02)
 ;;57866-6463-01
 ;;9002226.02101,"1199,57866-6463-02 ",.01)
 ;;57866-6463-02
 ;;9002226.02101,"1199,57866-6463-02 ",.02)
 ;;57866-6463-02
 ;;9002226.02101,"1199,57866-7073-01 ",.01)
 ;;57866-7073-01
 ;;9002226.02101,"1199,57866-7073-01 ",.02)
 ;;57866-7073-01
 ;;9002226.02101,"1199,57866-7073-02 ",.01)
 ;;57866-7073-02
 ;;9002226.02101,"1199,57866-7073-02 ",.02)
 ;;57866-7073-02
 ;;9002226.02101,"1199,57866-7074-01 ",.01)
 ;;57866-7074-01
 ;;9002226.02101,"1199,57866-7074-01 ",.02)
 ;;57866-7074-01
 ;;9002226.02101,"1199,57866-7074-02 ",.01)
 ;;57866-7074-02
 ;;9002226.02101,"1199,57866-7074-02 ",.02)
 ;;57866-7074-02
 ;;9002226.02101,"1199,57866-7991-01 ",.01)
 ;;57866-7991-01
 ;;9002226.02101,"1199,57866-7991-01 ",.02)
 ;;57866-7991-01
 ;;9002226.02101,"1199,58016-0005-00 ",.01)
 ;;58016-0005-00
 ;;9002226.02101,"1199,58016-0005-00 ",.02)
 ;;58016-0005-00
 ;;9002226.02101,"1199,58016-0005-30 ",.01)
 ;;58016-0005-30
 ;;9002226.02101,"1199,58016-0005-30 ",.02)
 ;;58016-0005-30
 ;;9002226.02101,"1199,58016-0005-60 ",.01)
 ;;58016-0005-60
 ;;9002226.02101,"1199,58016-0005-60 ",.02)
 ;;58016-0005-60
 ;;9002226.02101,"1199,58016-0005-90 ",.01)
 ;;58016-0005-90
 ;;9002226.02101,"1199,58016-0005-90 ",.02)
 ;;58016-0005-90
 ;;9002226.02101,"1199,58016-0058-00 ",.01)
 ;;58016-0058-00
 ;;9002226.02101,"1199,58016-0058-00 ",.02)
 ;;58016-0058-00
 ;;9002226.02101,"1199,58016-0058-30 ",.01)
 ;;58016-0058-30
 ;;9002226.02101,"1199,58016-0058-30 ",.02)
 ;;58016-0058-30
 ;;9002226.02101,"1199,58016-0058-60 ",.01)
 ;;58016-0058-60
 ;;9002226.02101,"1199,58016-0058-60 ",.02)
 ;;58016-0058-60
 ;;9002226.02101,"1199,58016-0058-90 ",.01)
 ;;58016-0058-90
 ;;9002226.02101,"1199,58016-0058-90 ",.02)
 ;;58016-0058-90
 ;;9002226.02101,"1199,58016-0334-00 ",.01)
 ;;58016-0334-00
 ;;9002226.02101,"1199,58016-0334-00 ",.02)
 ;;58016-0334-00
 ;;9002226.02101,"1199,58016-0334-02 ",.01)
 ;;58016-0334-02
 ;;9002226.02101,"1199,58016-0334-02 ",.02)
 ;;58016-0334-02
 ;;9002226.02101,"1199,58016-0334-30 ",.01)
 ;;58016-0334-30
 ;;9002226.02101,"1199,58016-0334-30 ",.02)
 ;;58016-0334-30
 ;;9002226.02101,"1199,58016-0334-60 ",.01)
 ;;58016-0334-60
 ;;9002226.02101,"1199,58016-0334-60 ",.02)
 ;;58016-0334-60
 ;;9002226.02101,"1199,58016-0334-90 ",.01)
 ;;58016-0334-90
