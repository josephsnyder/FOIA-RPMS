BUD0ZA41 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,63629-1393-02 ",.02)
 ;;63629-1393-02
 ;;9002226.02101,"1062,63629-1393-03 ",.01)
 ;;63629-1393-03
 ;;9002226.02101,"1062,63629-1393-03 ",.02)
 ;;63629-1393-03
 ;;9002226.02101,"1062,63629-1394-01 ",.01)
 ;;63629-1394-01
 ;;9002226.02101,"1062,63629-1394-01 ",.02)
 ;;63629-1394-01
 ;;9002226.02101,"1062,63629-1394-02 ",.01)
 ;;63629-1394-02
 ;;9002226.02101,"1062,63629-1394-02 ",.02)
 ;;63629-1394-02
 ;;9002226.02101,"1062,63629-1394-03 ",.01)
 ;;63629-1394-03
 ;;9002226.02101,"1062,63629-1394-03 ",.02)
 ;;63629-1394-03
 ;;9002226.02101,"1062,63629-1398-01 ",.01)
 ;;63629-1398-01
 ;;9002226.02101,"1062,63629-1398-01 ",.02)
 ;;63629-1398-01
 ;;9002226.02101,"1062,63629-1398-02 ",.01)
 ;;63629-1398-02
 ;;9002226.02101,"1062,63629-1398-02 ",.02)
 ;;63629-1398-02
 ;;9002226.02101,"1062,63629-1398-03 ",.01)
 ;;63629-1398-03
 ;;9002226.02101,"1062,63629-1398-03 ",.02)
 ;;63629-1398-03
 ;;9002226.02101,"1062,63629-2793-01 ",.01)
 ;;63629-2793-01
 ;;9002226.02101,"1062,63629-2793-01 ",.02)
 ;;63629-2793-01
 ;;9002226.02101,"1062,63629-2793-02 ",.01)
 ;;63629-2793-02
 ;;9002226.02101,"1062,63629-2793-02 ",.02)
 ;;63629-2793-02
 ;;9002226.02101,"1062,63629-2793-03 ",.01)
 ;;63629-2793-03
 ;;9002226.02101,"1062,63629-2793-03 ",.02)
 ;;63629-2793-03
 ;;9002226.02101,"1062,63629-2793-04 ",.01)
 ;;63629-2793-04
 ;;9002226.02101,"1062,63629-2793-04 ",.02)
 ;;63629-2793-04
 ;;9002226.02101,"1062,63629-2907-01 ",.01)
 ;;63629-2907-01
 ;;9002226.02101,"1062,63629-2907-01 ",.02)
 ;;63629-2907-01
 ;;9002226.02101,"1062,63629-2907-02 ",.01)
 ;;63629-2907-02
 ;;9002226.02101,"1062,63629-2907-02 ",.02)
 ;;63629-2907-02
 ;;9002226.02101,"1062,63629-3043-01 ",.01)
 ;;63629-3043-01
 ;;9002226.02101,"1062,63629-3043-01 ",.02)
 ;;63629-3043-01
 ;;9002226.02101,"1062,63629-3158-01 ",.01)
 ;;63629-3158-01
 ;;9002226.02101,"1062,63629-3158-01 ",.02)
 ;;63629-3158-01
 ;;9002226.02101,"1062,63629-3158-02 ",.01)
 ;;63629-3158-02
 ;;9002226.02101,"1062,63629-3158-02 ",.02)
 ;;63629-3158-02
 ;;9002226.02101,"1062,63629-3158-03 ",.01)
 ;;63629-3158-03
 ;;9002226.02101,"1062,63629-3158-03 ",.02)
 ;;63629-3158-03
 ;;9002226.02101,"1062,63739-0116-01 ",.01)
 ;;63739-0116-01
 ;;9002226.02101,"1062,63739-0116-01 ",.02)
 ;;63739-0116-01
 ;;9002226.02101,"1062,63739-0116-03 ",.01)
 ;;63739-0116-03
 ;;9002226.02101,"1062,63739-0116-03 ",.02)
 ;;63739-0116-03
 ;;9002226.02101,"1062,63739-0116-10 ",.01)
 ;;63739-0116-10
 ;;9002226.02101,"1062,63739-0116-10 ",.02)
 ;;63739-0116-10
 ;;9002226.02101,"1062,63739-0116-15 ",.01)
 ;;63739-0116-15
 ;;9002226.02101,"1062,63739-0116-15 ",.02)
 ;;63739-0116-15
 ;;9002226.02101,"1062,63739-0117-01 ",.01)
 ;;63739-0117-01
 ;;9002226.02101,"1062,63739-0117-01 ",.02)
 ;;63739-0117-01
 ;;9002226.02101,"1062,63739-0117-03 ",.01)
 ;;63739-0117-03
 ;;9002226.02101,"1062,63739-0117-03 ",.02)
 ;;63739-0117-03
 ;;9002226.02101,"1062,63739-0117-10 ",.01)
 ;;63739-0117-10
 ;;9002226.02101,"1062,63739-0117-10 ",.02)
 ;;63739-0117-10
 ;;9002226.02101,"1062,63739-0117-15 ",.01)
 ;;63739-0117-15
 ;;9002226.02101,"1062,63739-0117-15 ",.02)
 ;;63739-0117-15
 ;;9002226.02101,"1062,63739-0118-10 ",.01)
 ;;63739-0118-10
 ;;9002226.02101,"1062,63739-0118-10 ",.02)
 ;;63739-0118-10
 ;;9002226.02101,"1062,63739-0118-15 ",.01)
 ;;63739-0118-15
 ;;9002226.02101,"1062,63739-0118-15 ",.02)
 ;;63739-0118-15
 ;;9002226.02101,"1062,63739-0119-10 ",.01)
 ;;63739-0119-10
 ;;9002226.02101,"1062,63739-0119-10 ",.02)
 ;;63739-0119-10
 ;;9002226.02101,"1062,63739-0119-15 ",.01)
 ;;63739-0119-15
 ;;9002226.02101,"1062,63739-0119-15 ",.02)
 ;;63739-0119-15
 ;;9002226.02101,"1062,63874-0316-01 ",.01)
 ;;63874-0316-01
 ;;9002226.02101,"1062,63874-0316-01 ",.02)
 ;;63874-0316-01
 ;;9002226.02101,"1062,63874-0316-02 ",.01)
 ;;63874-0316-02
 ;;9002226.02101,"1062,63874-0316-02 ",.02)
 ;;63874-0316-02
 ;;9002226.02101,"1062,63874-0316-04 ",.01)
 ;;63874-0316-04
 ;;9002226.02101,"1062,63874-0316-04 ",.02)
 ;;63874-0316-04
 ;;9002226.02101,"1062,63874-0316-05 ",.01)
 ;;63874-0316-05
 ;;9002226.02101,"1062,63874-0316-05 ",.02)
 ;;63874-0316-05
 ;;9002226.02101,"1062,63874-0316-10 ",.01)
 ;;63874-0316-10
 ;;9002226.02101,"1062,63874-0316-10 ",.02)
 ;;63874-0316-10
 ;;9002226.02101,"1062,63874-0316-12 ",.01)
 ;;63874-0316-12
 ;;9002226.02101,"1062,63874-0316-12 ",.02)
 ;;63874-0316-12
 ;;9002226.02101,"1062,63874-0316-14 ",.01)
 ;;63874-0316-14
 ;;9002226.02101,"1062,63874-0316-14 ",.02)
 ;;63874-0316-14
 ;;9002226.02101,"1062,63874-0316-15 ",.01)
 ;;63874-0316-15
 ;;9002226.02101,"1062,63874-0316-15 ",.02)
 ;;63874-0316-15
 ;;9002226.02101,"1062,63874-0316-20 ",.01)
 ;;63874-0316-20
 ;;9002226.02101,"1062,63874-0316-20 ",.02)
 ;;63874-0316-20
 ;;9002226.02101,"1062,63874-0316-21 ",.01)
 ;;63874-0316-21
 ;;9002226.02101,"1062,63874-0316-21 ",.02)
 ;;63874-0316-21
 ;;9002226.02101,"1062,63874-0316-24 ",.01)
 ;;63874-0316-24
 ;;9002226.02101,"1062,63874-0316-24 ",.02)
 ;;63874-0316-24
 ;;9002226.02101,"1062,63874-0316-28 ",.01)
 ;;63874-0316-28
 ;;9002226.02101,"1062,63874-0316-28 ",.02)
 ;;63874-0316-28
 ;;9002226.02101,"1062,63874-0316-30 ",.01)
 ;;63874-0316-30
 ;;9002226.02101,"1062,63874-0316-30 ",.02)
 ;;63874-0316-30
