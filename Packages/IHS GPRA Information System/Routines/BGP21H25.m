BGP21H25 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,00440-7141-30 ",.01)
 ;;00440-7141-30
 ;;9002226.02101,"1197,00440-7141-30 ",.02)
 ;;00440-7141-30
 ;;9002226.02101,"1197,00440-7141-90 ",.01)
 ;;00440-7141-90
 ;;9002226.02101,"1197,00440-7141-90 ",.02)
 ;;00440-7141-90
 ;;9002226.02101,"1197,00440-7142-30 ",.01)
 ;;00440-7142-30
 ;;9002226.02101,"1197,00440-7142-30 ",.02)
 ;;00440-7142-30
 ;;9002226.02101,"1197,00440-7142-90 ",.01)
 ;;00440-7142-90
 ;;9002226.02101,"1197,00440-7142-90 ",.02)
 ;;00440-7142-90
 ;;9002226.02101,"1197,00440-7143-30 ",.01)
 ;;00440-7143-30
 ;;9002226.02101,"1197,00440-7143-30 ",.02)
 ;;00440-7143-30
 ;;9002226.02101,"1197,00440-7143-90 ",.01)
 ;;00440-7143-90
 ;;9002226.02101,"1197,00440-7143-90 ",.02)
 ;;00440-7143-90
 ;;9002226.02101,"1197,00440-7228-90 ",.01)
 ;;00440-7228-90
 ;;9002226.02101,"1197,00440-7228-90 ",.02)
 ;;00440-7228-90
 ;;9002226.02101,"1197,00440-7229-90 ",.01)
 ;;00440-7229-90
 ;;9002226.02101,"1197,00440-7229-90 ",.02)
 ;;00440-7229-90
 ;;9002226.02101,"1197,00440-7400-90 ",.01)
 ;;00440-7400-90
 ;;9002226.02101,"1197,00440-7400-90 ",.02)
 ;;00440-7400-90
 ;;9002226.02101,"1197,00440-7401-90 ",.01)
 ;;00440-7401-90
 ;;9002226.02101,"1197,00440-7401-90 ",.02)
 ;;00440-7401-90
 ;;9002226.02101,"1197,00440-7402-90 ",.01)
 ;;00440-7402-90
 ;;9002226.02101,"1197,00440-7402-90 ",.02)
 ;;00440-7402-90
 ;;9002226.02101,"1197,00440-7410-90 ",.01)
 ;;00440-7410-90
 ;;9002226.02101,"1197,00440-7410-90 ",.02)
 ;;00440-7410-90
 ;;9002226.02101,"1197,00440-7410-94 ",.01)
 ;;00440-7410-94
 ;;9002226.02101,"1197,00440-7410-94 ",.02)
 ;;00440-7410-94
 ;;9002226.02101,"1197,00440-7411-90 ",.01)
 ;;00440-7411-90
 ;;9002226.02101,"1197,00440-7411-90 ",.02)
 ;;00440-7411-90
 ;;9002226.02101,"1197,00440-7411-91 ",.01)
 ;;00440-7411-91
 ;;9002226.02101,"1197,00440-7411-91 ",.02)
 ;;00440-7411-91
 ;;9002226.02101,"1197,00440-7411-94 ",.01)
 ;;00440-7411-94
 ;;9002226.02101,"1197,00440-7411-94 ",.02)
 ;;00440-7411-94
 ;;9002226.02101,"1197,00440-7412-90 ",.01)
 ;;00440-7412-90
 ;;9002226.02101,"1197,00440-7412-90 ",.02)
 ;;00440-7412-90
 ;;9002226.02101,"1197,00440-7412-94 ",.01)
 ;;00440-7412-94
 ;;9002226.02101,"1197,00440-7412-94 ",.02)
 ;;00440-7412-94
 ;;9002226.02101,"1197,00440-7413-90 ",.01)
 ;;00440-7413-90
 ;;9002226.02101,"1197,00440-7413-90 ",.02)
 ;;00440-7413-90
 ;;9002226.02101,"1197,00440-7419-90 ",.01)
 ;;00440-7419-90
 ;;9002226.02101,"1197,00440-7419-90 ",.02)
 ;;00440-7419-90
 ;;9002226.02101,"1197,00440-7420-90 ",.01)
 ;;00440-7420-90
 ;;9002226.02101,"1197,00440-7420-90 ",.02)
 ;;00440-7420-90
 ;;9002226.02101,"1197,00440-7421-90 ",.01)
 ;;00440-7421-90
 ;;9002226.02101,"1197,00440-7421-90 ",.02)
 ;;00440-7421-90
 ;;9002226.02101,"1197,00440-7422-90 ",.01)
 ;;00440-7422-90
 ;;9002226.02101,"1197,00440-7422-90 ",.02)
 ;;00440-7422-90
 ;;9002226.02101,"1197,00440-7522-90 ",.01)
 ;;00440-7522-90
 ;;9002226.02101,"1197,00440-7522-90 ",.02)
 ;;00440-7522-90
 ;;9002226.02101,"1197,00440-7523-90 ",.01)
 ;;00440-7523-90
 ;;9002226.02101,"1197,00440-7523-90 ",.02)
 ;;00440-7523-90
 ;;9002226.02101,"1197,00440-7524-90 ",.01)
 ;;00440-7524-90
 ;;9002226.02101,"1197,00440-7524-90 ",.02)
 ;;00440-7524-90
 ;;9002226.02101,"1197,00440-7524-99 ",.01)
 ;;00440-7524-99
 ;;9002226.02101,"1197,00440-7524-99 ",.02)
 ;;00440-7524-99
 ;;9002226.02101,"1197,00440-8604-30 ",.01)
 ;;00440-8604-30
 ;;9002226.02101,"1197,00440-8604-30 ",.02)
 ;;00440-8604-30
 ;;9002226.02101,"1197,00440-8604-90 ",.01)
 ;;00440-8604-90
 ;;9002226.02101,"1197,00440-8604-90 ",.02)
 ;;00440-8604-90
 ;;9002226.02101,"1197,00440-8604-94 ",.01)
 ;;00440-8604-94
 ;;9002226.02101,"1197,00440-8604-94 ",.02)
 ;;00440-8604-94
 ;;9002226.02101,"1197,00440-8605-30 ",.01)
 ;;00440-8605-30
 ;;9002226.02101,"1197,00440-8605-30 ",.02)
 ;;00440-8605-30
 ;;9002226.02101,"1197,00440-8605-90 ",.01)
 ;;00440-8605-90
 ;;9002226.02101,"1197,00440-8605-90 ",.02)
 ;;00440-8605-90
 ;;9002226.02101,"1197,00440-8605-94 ",.01)
 ;;00440-8605-94
 ;;9002226.02101,"1197,00440-8605-94 ",.02)
 ;;00440-8605-94
 ;;9002226.02101,"1197,00440-8606-30 ",.01)
 ;;00440-8606-30
 ;;9002226.02101,"1197,00440-8606-30 ",.02)
 ;;00440-8606-30
 ;;9002226.02101,"1197,00440-8606-60 ",.01)
 ;;00440-8606-60
 ;;9002226.02101,"1197,00440-8606-60 ",.02)
 ;;00440-8606-60
 ;;9002226.02101,"1197,00440-8606-90 ",.01)
 ;;00440-8606-90
 ;;9002226.02101,"1197,00440-8606-90 ",.02)
 ;;00440-8606-90
 ;;9002226.02101,"1197,00440-8606-91 ",.01)
 ;;00440-8606-91
 ;;9002226.02101,"1197,00440-8606-91 ",.02)
 ;;00440-8606-91
 ;;9002226.02101,"1197,00440-8606-92 ",.01)
 ;;00440-8606-92
 ;;9002226.02101,"1197,00440-8606-92 ",.02)
 ;;00440-8606-92
 ;;9002226.02101,"1197,00440-8606-94 ",.01)
 ;;00440-8606-94
 ;;9002226.02101,"1197,00440-8606-94 ",.02)
 ;;00440-8606-94
 ;;9002226.02101,"1197,00440-8608-30 ",.01)
 ;;00440-8608-30
 ;;9002226.02101,"1197,00440-8608-30 ",.02)
 ;;00440-8608-30
 ;;9002226.02101,"1197,00440-8608-60 ",.01)
 ;;00440-8608-60
 ;;9002226.02101,"1197,00440-8608-60 ",.02)
 ;;00440-8608-60
 ;;9002226.02101,"1197,00440-8608-90 ",.01)
 ;;00440-8608-90
 ;;9002226.02101,"1197,00440-8608-90 ",.02)
 ;;00440-8608-90
 ;;9002226.02101,"1197,00440-8609-30 ",.01)
 ;;00440-8609-30
