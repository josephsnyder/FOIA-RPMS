BUD0ZA29 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,54868-0373-01 ",.02)
 ;;54868-0373-01
 ;;9002226.02101,"1062,54868-0373-02 ",.01)
 ;;54868-0373-02
 ;;9002226.02101,"1062,54868-0373-02 ",.02)
 ;;54868-0373-02
 ;;9002226.02101,"1062,54868-0795-00 ",.01)
 ;;54868-0795-00
 ;;9002226.02101,"1062,54868-0795-00 ",.02)
 ;;54868-0795-00
 ;;9002226.02101,"1062,54868-0877-01 ",.01)
 ;;54868-0877-01
 ;;9002226.02101,"1062,54868-0877-01 ",.02)
 ;;54868-0877-01
 ;;9002226.02101,"1062,54868-0996-01 ",.01)
 ;;54868-0996-01
 ;;9002226.02101,"1062,54868-0996-01 ",.02)
 ;;54868-0996-01
 ;;9002226.02101,"1062,54868-0996-02 ",.01)
 ;;54868-0996-02
 ;;9002226.02101,"1062,54868-0996-02 ",.02)
 ;;54868-0996-02
 ;;9002226.02101,"1062,54868-0997-01 ",.01)
 ;;54868-0997-01
 ;;9002226.02101,"1062,54868-0997-01 ",.02)
 ;;54868-0997-01
 ;;9002226.02101,"1062,54868-0997-02 ",.01)
 ;;54868-0997-02
 ;;9002226.02101,"1062,54868-0997-02 ",.02)
 ;;54868-0997-02
 ;;9002226.02101,"1062,54868-0997-04 ",.01)
 ;;54868-0997-04
 ;;9002226.02101,"1062,54868-0997-04 ",.02)
 ;;54868-0997-04
 ;;9002226.02101,"1062,54868-1020-00 ",.01)
 ;;54868-1020-00
 ;;9002226.02101,"1062,54868-1020-00 ",.02)
 ;;54868-1020-00
 ;;9002226.02101,"1062,54868-1089-01 ",.01)
 ;;54868-1089-01
 ;;9002226.02101,"1062,54868-1089-01 ",.02)
 ;;54868-1089-01
 ;;9002226.02101,"1062,54868-1089-02 ",.01)
 ;;54868-1089-02
 ;;9002226.02101,"1062,54868-1089-02 ",.02)
 ;;54868-1089-02
 ;;9002226.02101,"1062,54868-1089-03 ",.01)
 ;;54868-1089-03
 ;;9002226.02101,"1062,54868-1089-03 ",.02)
 ;;54868-1089-03
 ;;9002226.02101,"1062,54868-1244-00 ",.01)
 ;;54868-1244-00
 ;;9002226.02101,"1062,54868-1244-00 ",.02)
 ;;54868-1244-00
 ;;9002226.02101,"1062,54868-1244-01 ",.01)
 ;;54868-1244-01
 ;;9002226.02101,"1062,54868-1244-01 ",.02)
 ;;54868-1244-01
 ;;9002226.02101,"1062,54868-1244-02 ",.01)
 ;;54868-1244-02
 ;;9002226.02101,"1062,54868-1244-02 ",.02)
 ;;54868-1244-02
 ;;9002226.02101,"1062,54868-1244-03 ",.01)
 ;;54868-1244-03
 ;;9002226.02101,"1062,54868-1244-03 ",.02)
 ;;54868-1244-03
 ;;9002226.02101,"1062,54868-1244-04 ",.01)
 ;;54868-1244-04
 ;;9002226.02101,"1062,54868-1244-04 ",.02)
 ;;54868-1244-04
 ;;9002226.02101,"1062,54868-1245-01 ",.01)
 ;;54868-1245-01
 ;;9002226.02101,"1062,54868-1245-01 ",.02)
 ;;54868-1245-01
 ;;9002226.02101,"1062,54868-1245-02 ",.01)
 ;;54868-1245-02
 ;;9002226.02101,"1062,54868-1245-02 ",.02)
 ;;54868-1245-02
 ;;9002226.02101,"1062,54868-1245-03 ",.01)
 ;;54868-1245-03
 ;;9002226.02101,"1062,54868-1245-03 ",.02)
 ;;54868-1245-03
 ;;9002226.02101,"1062,54868-1245-05 ",.01)
 ;;54868-1245-05
 ;;9002226.02101,"1062,54868-1245-05 ",.02)
 ;;54868-1245-05
 ;;9002226.02101,"1062,54868-1361-01 ",.01)
 ;;54868-1361-01
 ;;9002226.02101,"1062,54868-1361-01 ",.02)
 ;;54868-1361-01
 ;;9002226.02101,"1062,54868-1429-01 ",.01)
 ;;54868-1429-01
 ;;9002226.02101,"1062,54868-1429-01 ",.02)
 ;;54868-1429-01
 ;;9002226.02101,"1062,54868-1688-01 ",.01)
 ;;54868-1688-01
 ;;9002226.02101,"1062,54868-1688-01 ",.02)
 ;;54868-1688-01
 ;;9002226.02101,"1062,54868-2380-01 ",.01)
 ;;54868-2380-01
 ;;9002226.02101,"1062,54868-2380-01 ",.02)
 ;;54868-2380-01
 ;;9002226.02101,"1062,54868-2746-00 ",.01)
 ;;54868-2746-00
 ;;9002226.02101,"1062,54868-2746-00 ",.02)
 ;;54868-2746-00
 ;;9002226.02101,"1062,54868-2777-00 ",.01)
 ;;54868-2777-00
 ;;9002226.02101,"1062,54868-2777-00 ",.02)
 ;;54868-2777-00
 ;;9002226.02101,"1062,54868-3017-00 ",.01)
 ;;54868-3017-00
 ;;9002226.02101,"1062,54868-3017-00 ",.02)
 ;;54868-3017-00
 ;;9002226.02101,"1062,54868-3265-00 ",.01)
 ;;54868-3265-00
 ;;9002226.02101,"1062,54868-3265-00 ",.02)
 ;;54868-3265-00
 ;;9002226.02101,"1062,54868-3265-01 ",.01)
 ;;54868-3265-01
 ;;9002226.02101,"1062,54868-3265-01 ",.02)
 ;;54868-3265-01
 ;;9002226.02101,"1062,54868-3265-03 ",.01)
 ;;54868-3265-03
 ;;9002226.02101,"1062,54868-3265-03 ",.02)
 ;;54868-3265-03
 ;;9002226.02101,"1062,54868-3265-04 ",.01)
 ;;54868-3265-04
 ;;9002226.02101,"1062,54868-3265-04 ",.02)
 ;;54868-3265-04
 ;;9002226.02101,"1062,54868-3266-01 ",.01)
 ;;54868-3266-01
 ;;9002226.02101,"1062,54868-3266-01 ",.02)
 ;;54868-3266-01
 ;;9002226.02101,"1062,54868-3266-02 ",.01)
 ;;54868-3266-02
 ;;9002226.02101,"1062,54868-3266-02 ",.02)
 ;;54868-3266-02
 ;;9002226.02101,"1062,54868-3266-03 ",.01)
 ;;54868-3266-03
 ;;9002226.02101,"1062,54868-3266-03 ",.02)
 ;;54868-3266-03
 ;;9002226.02101,"1062,54868-3266-04 ",.01)
 ;;54868-3266-04
 ;;9002226.02101,"1062,54868-3266-04 ",.02)
 ;;54868-3266-04
 ;;9002226.02101,"1062,54868-3318-01 ",.01)
 ;;54868-3318-01
 ;;9002226.02101,"1062,54868-3318-01 ",.02)
 ;;54868-3318-01
 ;;9002226.02101,"1062,54868-3318-02 ",.01)
 ;;54868-3318-02
 ;;9002226.02101,"1062,54868-3318-02 ",.02)
 ;;54868-3318-02
 ;;9002226.02101,"1062,54868-3318-03 ",.01)
 ;;54868-3318-03
 ;;9002226.02101,"1062,54868-3318-03 ",.02)
 ;;54868-3318-03
 ;;9002226.02101,"1062,54868-3318-04 ",.01)
 ;;54868-3318-04
 ;;9002226.02101,"1062,54868-3318-04 ",.02)
 ;;54868-3318-04
 ;;9002226.02101,"1062,54868-3319-01 ",.01)
 ;;54868-3319-01
 ;;9002226.02101,"1062,54868-3319-01 ",.02)
 ;;54868-3319-01
 ;;9002226.02101,"1062,54868-3319-02 ",.01)
 ;;54868-3319-02
 ;;9002226.02101,"1062,54868-3319-02 ",.02)
 ;;54868-3319-02
