BGP21F20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,00172-4235-60 ",.01)
 ;;00172-4235-60
 ;;9002226.02101,"1195,00172-4235-60 ",.02)
 ;;00172-4235-60
 ;;9002226.02101,"1195,00172-4235-70 ",.01)
 ;;00172-4235-70
 ;;9002226.02101,"1195,00172-4235-70 ",.02)
 ;;00172-4235-70
 ;;9002226.02101,"1195,00172-4236-60 ",.01)
 ;;00172-4236-60
 ;;9002226.02101,"1195,00172-4236-60 ",.02)
 ;;00172-4236-60
 ;;9002226.02101,"1195,00172-4237-60 ",.01)
 ;;00172-4237-60
 ;;9002226.02101,"1195,00172-4237-60 ",.02)
 ;;00172-4237-60
 ;;9002226.02101,"1195,00172-4238-60 ",.01)
 ;;00172-4238-60
 ;;9002226.02101,"1195,00172-4238-60 ",.02)
 ;;00172-4238-60
 ;;9002226.02101,"1195,00172-4239-60 ",.01)
 ;;00172-4239-60
 ;;9002226.02101,"1195,00172-4239-60 ",.02)
 ;;00172-4239-60
 ;;9002226.02101,"1195,00172-4364-00 ",.01)
 ;;00172-4364-00
 ;;9002226.02101,"1195,00172-4364-00 ",.02)
 ;;00172-4364-00
 ;;9002226.02101,"1195,00172-4364-10 ",.01)
 ;;00172-4364-10
 ;;9002226.02101,"1195,00172-4364-10 ",.02)
 ;;00172-4364-10
 ;;9002226.02101,"1195,00172-4364-60 ",.01)
 ;;00172-4364-60
 ;;9002226.02101,"1195,00172-4364-60 ",.02)
 ;;00172-4364-60
 ;;9002226.02101,"1195,00172-4364-70 ",.01)
 ;;00172-4364-70
 ;;9002226.02101,"1195,00172-4364-70 ",.02)
 ;;00172-4364-70
 ;;9002226.02101,"1195,00172-4365-00 ",.01)
 ;;00172-4365-00
 ;;9002226.02101,"1195,00172-4365-00 ",.02)
 ;;00172-4365-00
 ;;9002226.02101,"1195,00172-4365-10 ",.01)
 ;;00172-4365-10
 ;;9002226.02101,"1195,00172-4365-10 ",.02)
 ;;00172-4365-10
 ;;9002226.02101,"1195,00172-4365-60 ",.01)
 ;;00172-4365-60
 ;;9002226.02101,"1195,00172-4365-60 ",.02)
 ;;00172-4365-60
 ;;9002226.02101,"1195,00172-4365-70 ",.01)
 ;;00172-4365-70
 ;;9002226.02101,"1195,00172-4365-70 ",.02)
 ;;00172-4365-70
 ;;9002226.02101,"1195,00172-4366-60 ",.01)
 ;;00172-4366-60
 ;;9002226.02101,"1195,00172-4366-60 ",.02)
 ;;00172-4366-60
 ;;9002226.02101,"1195,00172-5730-60 ",.01)
 ;;00172-5730-60
 ;;9002226.02101,"1195,00172-5730-60 ",.02)
 ;;00172-5730-60
 ;;9002226.02101,"1195,00172-5730-70 ",.01)
 ;;00172-5730-70
 ;;9002226.02101,"1195,00172-5730-70 ",.02)
 ;;00172-5730-70
 ;;9002226.02101,"1195,00172-5731-60 ",.01)
 ;;00172-5731-60
 ;;9002226.02101,"1195,00172-5731-60 ",.02)
 ;;00172-5731-60
 ;;9002226.02101,"1195,00172-5731-70 ",.01)
 ;;00172-5731-70
 ;;9002226.02101,"1195,00172-5731-70 ",.02)
 ;;00172-5731-70
 ;;9002226.02101,"1195,00172-5732-60 ",.01)
 ;;00172-5732-60
 ;;9002226.02101,"1195,00172-5732-60 ",.02)
 ;;00172-5732-60
 ;;9002226.02101,"1195,00172-5732-70 ",.01)
 ;;00172-5732-70
 ;;9002226.02101,"1195,00172-5732-70 ",.02)
 ;;00172-5732-70
 ;;9002226.02101,"1195,00173-0346-44 ",.01)
 ;;00173-0346-44
 ;;9002226.02101,"1195,00173-0346-44 ",.02)
 ;;00173-0346-44
 ;;9002226.02101,"1195,00173-0346-47 ",.01)
 ;;00173-0346-47
 ;;9002226.02101,"1195,00173-0346-47 ",.02)
 ;;00173-0346-47
 ;;9002226.02101,"1195,00173-0347-43 ",.01)
 ;;00173-0347-43
 ;;9002226.02101,"1195,00173-0347-43 ",.02)
 ;;00173-0347-43
 ;;9002226.02101,"1195,00173-0347-44 ",.01)
 ;;00173-0347-44
 ;;9002226.02101,"1195,00173-0347-44 ",.02)
 ;;00173-0347-44
 ;;9002226.02101,"1195,00173-0347-47 ",.01)
 ;;00173-0347-47
 ;;9002226.02101,"1195,00173-0347-47 ",.02)
 ;;00173-0347-47
 ;;9002226.02101,"1195,00173-0348-43 ",.01)
 ;;00173-0348-43
 ;;9002226.02101,"1195,00173-0348-43 ",.02)
 ;;00173-0348-43
 ;;9002226.02101,"1195,00173-0348-44 ",.01)
 ;;00173-0348-44
 ;;9002226.02101,"1195,00173-0348-44 ",.02)
 ;;00173-0348-44
 ;;9002226.02101,"1195,00173-0348-47 ",.01)
 ;;00173-0348-47
 ;;9002226.02101,"1195,00173-0348-47 ",.02)
 ;;00173-0348-47
 ;;9002226.02101,"1195,00173-0790-01 ",.01)
 ;;00173-0790-01
 ;;9002226.02101,"1195,00173-0790-01 ",.02)
 ;;00173-0790-01
 ;;9002226.02101,"1195,00173-0790-02 ",.01)
 ;;00173-0790-02
 ;;9002226.02101,"1195,00173-0790-02 ",.02)
 ;;00173-0790-02
 ;;9002226.02101,"1195,00173-0791-01 ",.01)
 ;;00173-0791-01
 ;;9002226.02101,"1195,00173-0791-01 ",.02)
 ;;00173-0791-01
 ;;9002226.02101,"1195,00173-0791-02 ",.01)
 ;;00173-0791-02
 ;;9002226.02101,"1195,00173-0791-02 ",.02)
 ;;00173-0791-02
 ;;9002226.02101,"1195,00182-1001-89 ",.01)
 ;;00182-1001-89
 ;;9002226.02101,"1195,00182-1001-89 ",.02)
 ;;00182-1001-89
 ;;9002226.02101,"1195,00182-1812-89 ",.01)
 ;;00182-1812-89
 ;;9002226.02101,"1195,00182-1812-89 ",.02)
 ;;00182-1812-89
 ;;9002226.02101,"1195,00182-1813-89 ",.01)
 ;;00182-1813-89
 ;;9002226.02101,"1195,00182-1813-89 ",.02)
 ;;00182-1813-89
 ;;9002226.02101,"1195,00182-1814-89 ",.01)
 ;;00182-1814-89
 ;;9002226.02101,"1195,00182-1814-89 ",.02)
 ;;00182-1814-89
 ;;9002226.02101,"1195,00182-1815-89 ",.01)
 ;;00182-1815-89
 ;;9002226.02101,"1195,00182-1815-89 ",.02)
 ;;00182-1815-89
 ;;9002226.02101,"1195,00182-2632-89 ",.01)
 ;;00182-2632-89
 ;;9002226.02101,"1195,00182-2632-89 ",.02)
 ;;00182-2632-89
 ;;9002226.02101,"1195,00182-2633-89 ",.01)
 ;;00182-2633-89
 ;;9002226.02101,"1195,00182-2633-89 ",.02)
 ;;00182-2633-89
 ;;9002226.02101,"1195,00182-2634-89 ",.01)
 ;;00182-2634-89
 ;;9002226.02101,"1195,00182-2634-89 ",.02)
 ;;00182-2634-89
 ;;9002226.02101,"1195,00182-8202-00 ",.01)
 ;;00182-8202-00
 ;;9002226.02101,"1195,00182-8202-00 ",.02)
 ;;00182-8202-00
 ;;9002226.02101,"1195,00182-8202-89 ",.01)
 ;;00182-8202-89
