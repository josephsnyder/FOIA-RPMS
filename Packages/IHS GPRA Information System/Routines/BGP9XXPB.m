BGP9XXPB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"329,45068-4 ",.02)
 ;;45068-4
 ;;9002226.02101,"329,45069-2 ",.01)
 ;;45069-2
 ;;9002226.02101,"329,45069-2 ",.02)
 ;;45069-2
 ;;9002226.02101,"329,45070-0 ",.01)
 ;;45070-0
 ;;9002226.02101,"329,45070-0 ",.02)
 ;;45070-0
 ;;9002226.02101,"329,45072-6 ",.01)
 ;;45072-6
 ;;9002226.02101,"329,45072-6 ",.02)
 ;;45072-6
 ;;9002226.02101,"329,45074-2 ",.01)
 ;;45074-2
 ;;9002226.02101,"329,45074-2 ",.02)
 ;;45074-2
 ;;9002226.02101,"329,45075-9 ",.01)
 ;;45075-9
 ;;9002226.02101,"329,45075-9 ",.02)
 ;;45075-9
 ;;9002226.02101,"329,45078-3 ",.01)
 ;;45078-3
 ;;9002226.02101,"329,45078-3 ",.02)
 ;;45078-3
 ;;9002226.02101,"329,45079-1 ",.01)
 ;;45079-1
 ;;9002226.02101,"329,45079-1 ",.02)
 ;;45079-1
 ;;9002226.02101,"329,45080-9 ",.01)
 ;;45080-9
 ;;9002226.02101,"329,45080-9 ",.02)
 ;;45080-9
 ;;9002226.02101,"329,45081-7 ",.01)
 ;;45081-7
 ;;9002226.02101,"329,45081-7 ",.02)
 ;;45081-7
 ;;9002226.02101,"329,45082-5 ",.01)
 ;;45082-5
 ;;9002226.02101,"329,45082-5 ",.02)
 ;;45082-5
 ;;9002226.02101,"329,45083-3 ",.01)
 ;;45083-3
 ;;9002226.02101,"329,45083-3 ",.02)
 ;;45083-3
 ;;9002226.02101,"329,45084-1 ",.01)
 ;;45084-1
 ;;9002226.02101,"329,45084-1 ",.02)
 ;;45084-1
 ;;9002226.02101,"329,45089-0 ",.01)
 ;;45089-0
 ;;9002226.02101,"329,45089-0 ",.02)
 ;;45089-0
 ;;9002226.02101,"329,45090-8 ",.01)
 ;;45090-8
 ;;9002226.02101,"329,45090-8 ",.02)
 ;;45090-8
 ;;9002226.02101,"329,45091-6 ",.01)
 ;;45091-6
 ;;9002226.02101,"329,45091-6 ",.02)
 ;;45091-6
 ;;9002226.02101,"329,45093-2 ",.01)
 ;;45093-2
 ;;9002226.02101,"329,45093-2 ",.02)
 ;;45093-2
 ;;9002226.02101,"329,45095-7 ",.01)
 ;;45095-7
 ;;9002226.02101,"329,45095-7 ",.02)
 ;;45095-7
 ;;9002226.02101,"329,45098-1 ",.01)
 ;;45098-1
 ;;9002226.02101,"329,45098-1 ",.02)
 ;;45098-1
 ;;9002226.02101,"329,45100-5 ",.01)
 ;;45100-5
 ;;9002226.02101,"329,45100-5 ",.02)
 ;;45100-5
 ;;9002226.02101,"329,45106-2 ",.01)
 ;;45106-2
 ;;9002226.02101,"329,45106-2 ",.02)
 ;;45106-2
 ;;9002226.02101,"329,45107-0 ",.01)
 ;;45107-0
 ;;9002226.02101,"329,45107-0 ",.02)
 ;;45107-0
 ;;9002226.02101,"329,45108-8 ",.01)
 ;;45108-8
 ;;9002226.02101,"329,45108-8 ",.02)
 ;;45108-8
 ;;9002226.02101,"329,45112-0 ",.01)
 ;;45112-0
 ;;9002226.02101,"329,45112-0 ",.02)
 ;;45112-0
 ;;9002226.02101,"329,557-9 ",.01)
 ;;557-9
 ;;9002226.02101,"329,557-9 ",.02)
 ;;557-9
 ;;9002226.02101,"329,6356-0 ",.01)
 ;;6356-0
 ;;9002226.02101,"329,6356-0 ",.02)
 ;;6356-0
 ;;9002226.02101,"329,6357-8 ",.01)
 ;;6357-8
 ;;9002226.02101,"329,6357-8 ",.02)
 ;;6357-8
