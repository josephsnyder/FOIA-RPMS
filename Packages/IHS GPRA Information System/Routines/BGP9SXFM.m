BGP9SXFM ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"561,68115-0637-13 ",.01)
 ;;68115-0637-13
 ;;9002226.02101,"561,68115-0637-13 ",.02)
 ;;68115-0637-13
 ;;9002226.02101,"561,68115-0651-60 ",.01)
 ;;68115-0651-60
 ;;9002226.02101,"561,68115-0651-60 ",.02)
 ;;68115-0651-60
 ;;9002226.02101,"561,68115-0652-01 ",.01)
 ;;68115-0652-01
 ;;9002226.02101,"561,68115-0652-01 ",.02)
 ;;68115-0652-01
 ;;9002226.02101,"561,68115-0653-01 ",.01)
 ;;68115-0653-01
 ;;9002226.02101,"561,68115-0653-01 ",.02)
 ;;68115-0653-01
 ;;9002226.02101,"561,68115-0657-01 ",.01)
 ;;68115-0657-01
 ;;9002226.02101,"561,68115-0657-01 ",.02)
 ;;68115-0657-01
 ;;9002226.02101,"561,68115-0711-20 ",.01)
 ;;68115-0711-20
 ;;9002226.02101,"561,68115-0711-20 ",.02)
 ;;68115-0711-20
 ;;9002226.02101,"561,68115-0760-01 ",.01)
 ;;68115-0760-01
 ;;9002226.02101,"561,68115-0760-01 ",.02)
 ;;68115-0760-01
 ;;9002226.02101,"561,68115-0769-17 ",.01)
 ;;68115-0769-17
 ;;9002226.02101,"561,68115-0769-17 ",.02)
 ;;68115-0769-17
 ;;9002226.02101,"561,68115-0775-07 ",.01)
 ;;68115-0775-07
 ;;9002226.02101,"561,68115-0775-07 ",.02)
 ;;68115-0775-07
 ;;9002226.02101,"561,68115-0924-60 ",.01)
 ;;68115-0924-60
 ;;9002226.02101,"561,68115-0924-60 ",.02)
 ;;68115-0924-60
 ;;9002226.02101,"561,68115-0995-17 ",.01)
 ;;68115-0995-17
 ;;9002226.02101,"561,68115-0995-17 ",.02)
 ;;68115-0995-17
