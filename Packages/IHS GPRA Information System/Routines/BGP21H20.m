BGP21H20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,00093-5272-01 ",.02)
 ;;00093-5272-01
 ;;9002226.02101,"1197,00093-5272-19 ",.01)
 ;;00093-5272-19
 ;;9002226.02101,"1197,00093-5272-19 ",.02)
 ;;00093-5272-19
 ;;9002226.02101,"1197,00093-5272-55 ",.01)
 ;;00093-5272-55
 ;;9002226.02101,"1197,00093-5272-55 ",.02)
 ;;00093-5272-55
 ;;9002226.02101,"1197,00093-5272-93 ",.01)
 ;;00093-5272-93
 ;;9002226.02101,"1197,00093-5272-93 ",.02)
 ;;00093-5272-93
 ;;9002226.02101,"1197,00093-7167-55 ",.01)
 ;;00093-7167-55
 ;;9002226.02101,"1197,00093-7167-55 ",.02)
 ;;00093-7167-55
 ;;9002226.02101,"1197,00093-7167-98 ",.01)
 ;;00093-7167-98
 ;;9002226.02101,"1197,00093-7167-98 ",.02)
 ;;00093-7167-98
 ;;9002226.02101,"1197,00093-7168-98 ",.01)
 ;;00093-7168-98
 ;;9002226.02101,"1197,00093-7168-98 ",.02)
 ;;00093-7168-98
 ;;9002226.02101,"1197,00093-7370-01 ",.01)
 ;;00093-7370-01
 ;;9002226.02101,"1197,00093-7370-01 ",.02)
 ;;00093-7370-01
 ;;9002226.02101,"1197,00093-7371-01 ",.01)
 ;;00093-7371-01
 ;;9002226.02101,"1197,00093-7371-01 ",.02)
 ;;00093-7371-01
 ;;9002226.02101,"1197,00093-7371-10 ",.01)
 ;;00093-7371-10
 ;;9002226.02101,"1197,00093-7371-10 ",.02)
 ;;00093-7371-10
 ;;9002226.02101,"1197,00093-7372-01 ",.01)
 ;;00093-7372-01
 ;;9002226.02101,"1197,00093-7372-01 ",.02)
 ;;00093-7372-01
 ;;9002226.02101,"1197,00093-7372-10 ",.01)
 ;;00093-7372-10
 ;;9002226.02101,"1197,00093-7372-10 ",.02)
 ;;00093-7372-10
 ;;9002226.02101,"1197,00093-7373-01 ",.01)
 ;;00093-7373-01
 ;;9002226.02101,"1197,00093-7373-01 ",.02)
 ;;00093-7373-01
 ;;9002226.02101,"1197,00093-7373-10 ",.01)
 ;;00093-7373-10
 ;;9002226.02101,"1197,00093-7373-10 ",.02)
 ;;00093-7373-10
 ;;9002226.02101,"1197,00172-4219-70 ",.01)
 ;;00172-4219-70
 ;;9002226.02101,"1197,00172-4219-70 ",.02)
 ;;00172-4219-70
 ;;9002226.02101,"1197,00172-4220-70 ",.01)
 ;;00172-4220-70
 ;;9002226.02101,"1197,00172-4220-70 ",.02)
 ;;00172-4220-70
 ;;9002226.02101,"1197,00172-4221-70 ",.01)
 ;;00172-4221-70
 ;;9002226.02101,"1197,00172-4221-70 ",.02)
 ;;00172-4221-70
 ;;9002226.02101,"1197,00172-4280-00 ",.01)
 ;;00172-4280-00
 ;;9002226.02101,"1197,00172-4280-00 ",.02)
 ;;00172-4280-00
 ;;9002226.02101,"1197,00172-4280-10 ",.01)
 ;;00172-4280-10
 ;;9002226.02101,"1197,00172-4280-10 ",.02)
 ;;00172-4280-10
 ;;9002226.02101,"1197,00172-4280-60 ",.01)
 ;;00172-4280-60
 ;;9002226.02101,"1197,00172-4280-60 ",.02)
 ;;00172-4280-60
 ;;9002226.02101,"1197,00172-4280-70 ",.01)
 ;;00172-4280-70
 ;;9002226.02101,"1197,00172-4280-70 ",.02)
 ;;00172-4280-70
 ;;9002226.02101,"1197,00172-4285-00 ",.01)
 ;;00172-4285-00
 ;;9002226.02101,"1197,00172-4285-00 ",.02)
 ;;00172-4285-00
 ;;9002226.02101,"1197,00172-4285-10 ",.01)
 ;;00172-4285-10
 ;;9002226.02101,"1197,00172-4285-10 ",.02)
 ;;00172-4285-10
 ;;9002226.02101,"1197,00172-4285-60 ",.01)
 ;;00172-4285-60
 ;;9002226.02101,"1197,00172-4285-60 ",.02)
 ;;00172-4285-60
 ;;9002226.02101,"1197,00172-4286-00 ",.01)
 ;;00172-4286-00
 ;;9002226.02101,"1197,00172-4286-00 ",.02)
 ;;00172-4286-00
 ;;9002226.02101,"1197,00172-4286-10 ",.01)
 ;;00172-4286-10
 ;;9002226.02101,"1197,00172-4286-10 ",.02)
 ;;00172-4286-10
 ;;9002226.02101,"1197,00172-4286-60 ",.01)
 ;;00172-4286-60
 ;;9002226.02101,"1197,00172-4286-60 ",.02)
 ;;00172-4286-60
 ;;9002226.02101,"1197,00172-4286-70 ",.01)
 ;;00172-4286-70
 ;;9002226.02101,"1197,00172-4286-70 ",.02)
 ;;00172-4286-70
 ;;9002226.02101,"1197,00172-4288-60 ",.01)
 ;;00172-4288-60
 ;;9002226.02101,"1197,00172-4288-60 ",.02)
 ;;00172-4288-60
 ;;9002226.02101,"1197,00172-4289-60 ",.01)
 ;;00172-4289-60
 ;;9002226.02101,"1197,00172-4289-60 ",.02)
 ;;00172-4289-60
 ;;9002226.02101,"1197,00173-0784-01 ",.01)
 ;;00173-0784-01
 ;;9002226.02101,"1197,00173-0784-01 ",.02)
 ;;00173-0784-01
 ;;9002226.02101,"1197,00173-0785-01 ",.01)
 ;;00173-0785-01
 ;;9002226.02101,"1197,00173-0785-01 ",.02)
 ;;00173-0785-01
 ;;9002226.02101,"1197,00182-1300-89 ",.01)
 ;;00182-1300-89
 ;;9002226.02101,"1197,00182-1300-89 ",.02)
 ;;00182-1300-89
 ;;9002226.02101,"1197,00182-1301-89 ",.01)
 ;;00182-1301-89
 ;;9002226.02101,"1197,00182-1301-89 ",.02)
 ;;00182-1301-89
 ;;9002226.02101,"1197,00182-8225-89 ",.01)
 ;;00182-8225-89
 ;;9002226.02101,"1197,00182-8225-89 ",.02)
 ;;00182-8225-89
 ;;9002226.02101,"1197,00182-8226-89 ",.01)
 ;;00182-8226-89
 ;;9002226.02101,"1197,00182-8226-89 ",.02)
 ;;00182-8226-89
 ;;9002226.02101,"1197,00182-8227-89 ",.01)
 ;;00182-8227-89
 ;;9002226.02101,"1197,00182-8227-89 ",.02)
 ;;00182-8227-89
 ;;9002226.02101,"1197,00182-8232-00 ",.01)
 ;;00182-8232-00
 ;;9002226.02101,"1197,00182-8232-00 ",.02)
 ;;00182-8232-00
 ;;9002226.02101,"1197,00182-8232-89 ",.01)
 ;;00182-8232-89
 ;;9002226.02101,"1197,00182-8232-89 ",.02)
 ;;00182-8232-89
 ;;9002226.02101,"1197,00182-8233-00 ",.01)
 ;;00182-8233-00
 ;;9002226.02101,"1197,00182-8233-00 ",.02)
 ;;00182-8233-00
 ;;9002226.02101,"1197,00182-8233-89 ",.01)
 ;;00182-8233-89
 ;;9002226.02101,"1197,00182-8233-89 ",.02)
 ;;00182-8233-89
 ;;9002226.02101,"1197,00182-8234-00 ",.01)
 ;;00182-8234-00
 ;;9002226.02101,"1197,00182-8234-00 ",.02)
 ;;00182-8234-00
 ;;9002226.02101,"1197,00182-8234-89 ",.01)
 ;;00182-8234-89
 ;;9002226.02101,"1197,00182-8234-89 ",.02)
 ;;00182-8234-89