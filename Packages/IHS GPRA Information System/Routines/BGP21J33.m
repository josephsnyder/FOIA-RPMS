BGP21J33 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1199,63739-0116-01 ",.02)
 ;;63739-0116-01
 ;;9002226.02101,"1199,63739-0116-02 ",.01)
 ;;63739-0116-02
 ;;9002226.02101,"1199,63739-0116-02 ",.02)
 ;;63739-0116-02
 ;;9002226.02101,"1199,63739-0116-03 ",.01)
 ;;63739-0116-03
 ;;9002226.02101,"1199,63739-0116-03 ",.02)
 ;;63739-0116-03
 ;;9002226.02101,"1199,63739-0116-10 ",.01)
 ;;63739-0116-10
 ;;9002226.02101,"1199,63739-0116-10 ",.02)
 ;;63739-0116-10
 ;;9002226.02101,"1199,63739-0116-15 ",.01)
 ;;63739-0116-15
 ;;9002226.02101,"1199,63739-0116-15 ",.02)
 ;;63739-0116-15
 ;;9002226.02101,"1199,63739-0117-01 ",.01)
 ;;63739-0117-01
 ;;9002226.02101,"1199,63739-0117-01 ",.02)
 ;;63739-0117-01
 ;;9002226.02101,"1199,63739-0117-02 ",.01)
 ;;63739-0117-02
 ;;9002226.02101,"1199,63739-0117-02 ",.02)
 ;;63739-0117-02
 ;;9002226.02101,"1199,63739-0117-03 ",.01)
 ;;63739-0117-03
 ;;9002226.02101,"1199,63739-0117-03 ",.02)
 ;;63739-0117-03
 ;;9002226.02101,"1199,63739-0117-10 ",.01)
 ;;63739-0117-10
 ;;9002226.02101,"1199,63739-0117-10 ",.02)
 ;;63739-0117-10
 ;;9002226.02101,"1199,63739-0117-15 ",.01)
 ;;63739-0117-15
 ;;9002226.02101,"1199,63739-0117-15 ",.02)
 ;;63739-0117-15
 ;;9002226.02101,"1199,63739-0118-01 ",.01)
 ;;63739-0118-01
 ;;9002226.02101,"1199,63739-0118-01 ",.02)
 ;;63739-0118-01
 ;;9002226.02101,"1199,63739-0118-02 ",.01)
 ;;63739-0118-02
 ;;9002226.02101,"1199,63739-0118-02 ",.02)
 ;;63739-0118-02
 ;;9002226.02101,"1199,63739-0118-03 ",.01)
 ;;63739-0118-03
 ;;9002226.02101,"1199,63739-0118-03 ",.02)
 ;;63739-0118-03
 ;;9002226.02101,"1199,63739-0118-10 ",.01)
 ;;63739-0118-10
 ;;9002226.02101,"1199,63739-0118-10 ",.02)
 ;;63739-0118-10
 ;;9002226.02101,"1199,63739-0118-15 ",.01)
 ;;63739-0118-15
 ;;9002226.02101,"1199,63739-0118-15 ",.02)
 ;;63739-0118-15
 ;;9002226.02101,"1199,63739-0119-01 ",.01)
 ;;63739-0119-01
 ;;9002226.02101,"1199,63739-0119-01 ",.02)
 ;;63739-0119-01
 ;;9002226.02101,"1199,63739-0119-02 ",.01)
 ;;63739-0119-02
 ;;9002226.02101,"1199,63739-0119-02 ",.02)
 ;;63739-0119-02
 ;;9002226.02101,"1199,63739-0119-03 ",.01)
 ;;63739-0119-03
 ;;9002226.02101,"1199,63739-0119-03 ",.02)
 ;;63739-0119-03
 ;;9002226.02101,"1199,63739-0119-10 ",.01)
 ;;63739-0119-10
 ;;9002226.02101,"1199,63739-0119-10 ",.02)
 ;;63739-0119-10
 ;;9002226.02101,"1199,63739-0119-15 ",.01)
 ;;63739-0119-15
 ;;9002226.02101,"1199,63739-0119-15 ",.02)
 ;;63739-0119-15
 ;;9002226.02101,"1199,63874-0316-01 ",.01)
 ;;63874-0316-01
 ;;9002226.02101,"1199,63874-0316-01 ",.02)
 ;;63874-0316-01
 ;;9002226.02101,"1199,63874-0316-02 ",.01)
 ;;63874-0316-02
 ;;9002226.02101,"1199,63874-0316-02 ",.02)
 ;;63874-0316-02
 ;;9002226.02101,"1199,63874-0316-04 ",.01)
 ;;63874-0316-04
 ;;9002226.02101,"1199,63874-0316-04 ",.02)
 ;;63874-0316-04
 ;;9002226.02101,"1199,63874-0316-05 ",.01)
 ;;63874-0316-05
 ;;9002226.02101,"1199,63874-0316-05 ",.02)
 ;;63874-0316-05
 ;;9002226.02101,"1199,63874-0316-10 ",.01)
 ;;63874-0316-10
 ;;9002226.02101,"1199,63874-0316-10 ",.02)
 ;;63874-0316-10
 ;;9002226.02101,"1199,63874-0316-12 ",.01)
 ;;63874-0316-12
 ;;9002226.02101,"1199,63874-0316-12 ",.02)
 ;;63874-0316-12
 ;;9002226.02101,"1199,63874-0316-14 ",.01)
 ;;63874-0316-14
 ;;9002226.02101,"1199,63874-0316-14 ",.02)
 ;;63874-0316-14
 ;;9002226.02101,"1199,63874-0316-15 ",.01)
 ;;63874-0316-15
 ;;9002226.02101,"1199,63874-0316-15 ",.02)
 ;;63874-0316-15
 ;;9002226.02101,"1199,63874-0316-20 ",.01)
 ;;63874-0316-20
 ;;9002226.02101,"1199,63874-0316-20 ",.02)
 ;;63874-0316-20
 ;;9002226.02101,"1199,63874-0316-21 ",.01)
 ;;63874-0316-21
 ;;9002226.02101,"1199,63874-0316-21 ",.02)
 ;;63874-0316-21
 ;;9002226.02101,"1199,63874-0316-24 ",.01)
 ;;63874-0316-24
 ;;9002226.02101,"1199,63874-0316-24 ",.02)
 ;;63874-0316-24
 ;;9002226.02101,"1199,63874-0316-28 ",.01)
 ;;63874-0316-28
 ;;9002226.02101,"1199,63874-0316-28 ",.02)
 ;;63874-0316-28
 ;;9002226.02101,"1199,63874-0316-30 ",.01)
 ;;63874-0316-30
 ;;9002226.02101,"1199,63874-0316-30 ",.02)
 ;;63874-0316-30
 ;;9002226.02101,"1199,63874-0316-50 ",.01)
 ;;63874-0316-50
 ;;9002226.02101,"1199,63874-0316-50 ",.02)
 ;;63874-0316-50
 ;;9002226.02101,"1199,63874-0316-60 ",.01)
 ;;63874-0316-60
 ;;9002226.02101,"1199,63874-0316-60 ",.02)
 ;;63874-0316-60
 ;;9002226.02101,"1199,63874-0316-81 ",.01)
 ;;63874-0316-81
 ;;9002226.02101,"1199,63874-0316-81 ",.02)
 ;;63874-0316-81
 ;;9002226.02101,"1199,63874-0316-90 ",.01)
 ;;63874-0316-90
 ;;9002226.02101,"1199,63874-0316-90 ",.02)
 ;;63874-0316-90
 ;;9002226.02101,"1199,63874-0317-01 ",.01)
 ;;63874-0317-01
 ;;9002226.02101,"1199,63874-0317-01 ",.02)
 ;;63874-0317-01
 ;;9002226.02101,"1199,63874-0317-02 ",.01)
 ;;63874-0317-02
 ;;9002226.02101,"1199,63874-0317-02 ",.02)
 ;;63874-0317-02
 ;;9002226.02101,"1199,63874-0317-04 ",.01)
 ;;63874-0317-04
 ;;9002226.02101,"1199,63874-0317-04 ",.02)
 ;;63874-0317-04
 ;;9002226.02101,"1199,63874-0317-10 ",.01)
 ;;63874-0317-10
 ;;9002226.02101,"1199,63874-0317-10 ",.02)
 ;;63874-0317-10
 ;;9002226.02101,"1199,63874-0317-12 ",.01)
 ;;63874-0317-12
 ;;9002226.02101,"1199,63874-0317-12 ",.02)
 ;;63874-0317-12
 ;;9002226.02101,"1199,63874-0317-14 ",.01)
 ;;63874-0317-14
 ;;9002226.02101,"1199,63874-0317-14 ",.02)
 ;;63874-0317-14
