BGP13X29 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1100,54458-0991-10 ",.01)
 ;;54458-0991-10
 ;;9002226.02101,"1100,54458-0991-10 ",.02)
 ;;54458-0991-10
 ;;9002226.02101,"1100,54458-0992-10 ",.01)
 ;;54458-0992-10
 ;;9002226.02101,"1100,54458-0992-10 ",.02)
 ;;54458-0992-10
 ;;9002226.02101,"1100,54458-0993-09 ",.01)
 ;;54458-0993-09
 ;;9002226.02101,"1100,54458-0993-09 ",.02)
 ;;54458-0993-09
 ;;9002226.02101,"1100,54458-0994-10 ",.01)
 ;;54458-0994-10
 ;;9002226.02101,"1100,54458-0994-10 ",.02)
 ;;54458-0994-10
 ;;9002226.02101,"1100,54458-0995-10 ",.01)
 ;;54458-0995-10
 ;;9002226.02101,"1100,54458-0995-10 ",.02)
 ;;54458-0995-10
 ;;9002226.02101,"1100,54458-0996-10 ",.01)
 ;;54458-0996-10
 ;;9002226.02101,"1100,54458-0996-10 ",.02)
 ;;54458-0996-10
 ;;9002226.02101,"1100,54458-0997-10 ",.01)
 ;;54458-0997-10
 ;;9002226.02101,"1100,54458-0997-10 ",.02)
 ;;54458-0997-10
 ;;9002226.02101,"1100,54458-0998-09 ",.01)
 ;;54458-0998-09
 ;;9002226.02101,"1100,54458-0998-09 ",.02)
 ;;54458-0998-09
 ;;9002226.02101,"1100,54458-0999-09 ",.01)
 ;;54458-0999-09
 ;;9002226.02101,"1100,54458-0999-09 ",.02)
 ;;54458-0999-09
 ;;9002226.02101,"1100,54569-0522-00 ",.01)
 ;;54569-0522-00
 ;;9002226.02101,"1100,54569-0522-00 ",.02)
 ;;54569-0522-00
 ;;9002226.02101,"1100,54569-0522-01 ",.01)
 ;;54569-0522-01
 ;;9002226.02101,"1100,54569-0522-01 ",.02)
 ;;54569-0522-01
 ;;9002226.02101,"1100,54569-0522-03 ",.01)
 ;;54569-0522-03
 ;;9002226.02101,"1100,54569-0522-03 ",.02)
 ;;54569-0522-03
 ;;9002226.02101,"1100,54569-0523-00 ",.01)
 ;;54569-0523-00
 ;;9002226.02101,"1100,54569-0523-00 ",.02)
 ;;54569-0523-00
 ;;9002226.02101,"1100,54569-0523-02 ",.01)
 ;;54569-0523-02
 ;;9002226.02101,"1100,54569-0523-02 ",.02)
 ;;54569-0523-02
 ;;9002226.02101,"1100,54569-0606-00 ",.01)
 ;;54569-0606-00
 ;;9002226.02101,"1100,54569-0606-00 ",.02)
 ;;54569-0606-00
 ;;9002226.02101,"1100,54569-0606-01 ",.01)
 ;;54569-0606-01
 ;;9002226.02101,"1100,54569-0606-01 ",.02)
 ;;54569-0606-01
 ;;9002226.02101,"1100,54569-0607-00 ",.01)
 ;;54569-0607-00
 ;;9002226.02101,"1100,54569-0607-00 ",.02)
 ;;54569-0607-00
 ;;9002226.02101,"1100,54569-0607-01 ",.01)
 ;;54569-0607-01
 ;;9002226.02101,"1100,54569-0607-01 ",.02)
 ;;54569-0607-01
 ;;9002226.02101,"1100,54569-0612-00 ",.01)
 ;;54569-0612-00
 ;;9002226.02101,"1100,54569-0612-00 ",.02)
 ;;54569-0612-00
 ;;9002226.02101,"1100,54569-1752-03 ",.01)
 ;;54569-1752-03
 ;;9002226.02101,"1100,54569-1752-03 ",.02)
 ;;54569-1752-03
 ;;9002226.02101,"1100,54569-1944-00 ",.01)
 ;;54569-1944-00
 ;;9002226.02101,"1100,54569-1944-00 ",.02)
 ;;54569-1944-00
 ;;9002226.02101,"1100,54569-1944-01 ",.01)
 ;;54569-1944-01
 ;;9002226.02101,"1100,54569-1944-01 ",.02)
 ;;54569-1944-01
 ;;9002226.02101,"1100,54569-1944-02 ",.01)
 ;;54569-1944-02
 ;;9002226.02101,"1100,54569-1944-02 ",.02)
 ;;54569-1944-02
 ;;9002226.02101,"1100,54569-1944-03 ",.01)
 ;;54569-1944-03
 ;;9002226.02101,"1100,54569-1944-03 ",.02)
 ;;54569-1944-03
 ;;9002226.02101,"1100,54569-2051-01 ",.01)
 ;;54569-2051-01
 ;;9002226.02101,"1100,54569-2051-01 ",.02)
 ;;54569-2051-01
 ;;9002226.02101,"1100,54569-2665-01 ",.01)
 ;;54569-2665-01
 ;;9002226.02101,"1100,54569-2665-01 ",.02)
 ;;54569-2665-01
 ;;9002226.02101,"1100,54569-2665-02 ",.01)
 ;;54569-2665-02
 ;;9002226.02101,"1100,54569-2665-02 ",.02)
 ;;54569-2665-02
 ;;9002226.02101,"1100,54569-3258-01 ",.01)
 ;;54569-3258-01
 ;;9002226.02101,"1100,54569-3258-01 ",.02)
 ;;54569-3258-01
 ;;9002226.02101,"1100,54569-3300-00 ",.01)
 ;;54569-3300-00
 ;;9002226.02101,"1100,54569-3300-00 ",.02)
 ;;54569-3300-00
 ;;9002226.02101,"1100,54569-3300-01 ",.01)
 ;;54569-3300-01
 ;;9002226.02101,"1100,54569-3300-01 ",.02)
 ;;54569-3300-01
 ;;9002226.02101,"1100,54569-3359-00 ",.01)
 ;;54569-3359-00
 ;;9002226.02101,"1100,54569-3359-00 ",.02)
 ;;54569-3359-00
 ;;9002226.02101,"1100,54569-3359-01 ",.01)
 ;;54569-3359-01
 ;;9002226.02101,"1100,54569-3359-01 ",.02)
 ;;54569-3359-01
 ;;9002226.02101,"1100,54569-3359-02 ",.01)
 ;;54569-3359-02
 ;;9002226.02101,"1100,54569-3359-02 ",.02)
 ;;54569-3359-02
 ;;9002226.02101,"1100,54569-3423-00 ",.01)
 ;;54569-3423-00
 ;;9002226.02101,"1100,54569-3423-00 ",.02)
 ;;54569-3423-00
 ;;9002226.02101,"1100,54569-3423-01 ",.01)
 ;;54569-3423-01
 ;;9002226.02101,"1100,54569-3423-01 ",.02)
 ;;54569-3423-01
 ;;9002226.02101,"1100,54569-3423-04 ",.01)
 ;;54569-3423-04
 ;;9002226.02101,"1100,54569-3423-04 ",.02)
 ;;54569-3423-04
 ;;9002226.02101,"1100,54569-3713-00 ",.01)
 ;;54569-3713-00
 ;;9002226.02101,"1100,54569-3713-00 ",.02)
 ;;54569-3713-00
 ;;9002226.02101,"1100,54569-3714-00 ",.01)
 ;;54569-3714-00
 ;;9002226.02101,"1100,54569-3714-00 ",.02)
 ;;54569-3714-00
 ;;9002226.02101,"1100,54569-3733-02 ",.01)
 ;;54569-3733-02
 ;;9002226.02101,"1100,54569-3733-02 ",.02)
 ;;54569-3733-02
 ;;9002226.02101,"1100,54569-3771-00 ",.01)
 ;;54569-3771-00
 ;;9002226.02101,"1100,54569-3771-00 ",.02)
 ;;54569-3771-00
 ;;9002226.02101,"1100,54569-3808-00 ",.01)
 ;;54569-3808-00
 ;;9002226.02101,"1100,54569-3808-00 ",.02)
 ;;54569-3808-00
 ;;9002226.02101,"1100,54569-3809-00 ",.01)
 ;;54569-3809-00
 ;;9002226.02101,"1100,54569-3809-00 ",.02)
 ;;54569-3809-00
 ;;9002226.02101,"1100,54569-3984-00 ",.01)
 ;;54569-3984-00
 ;;9002226.02101,"1100,54569-3984-00 ",.02)
 ;;54569-3984-00
 ;;9002226.02101,"1100,54569-3984-01 ",.01)
 ;;54569-3984-01
 ;;9002226.02101,"1100,54569-3984-01 ",.02)
 ;;54569-3984-01
 ;;9002226.02101,"1100,54569-3985-00 ",.01)
 ;;54569-3985-00
 ;;9002226.02101,"1100,54569-3985-00 ",.02)
 ;;54569-3985-00
 ;;9002226.02101,"1100,54569-4246-00 ",.01)
 ;;54569-4246-00
 ;;9002226.02101,"1100,54569-4246-00 ",.02)
 ;;54569-4246-00
 ;;9002226.02101,"1100,54569-4246-01 ",.01)
 ;;54569-4246-01
 ;;9002226.02101,"1100,54569-4246-01 ",.02)
 ;;54569-4246-01
 ;;9002226.02101,"1100,54569-4246-03 ",.01)
 ;;54569-4246-03
 ;;9002226.02101,"1100,54569-4246-03 ",.02)
 ;;54569-4246-03
 ;;9002226.02101,"1100,54569-4246-04 ",.01)
 ;;54569-4246-04
 ;;9002226.02101,"1100,54569-4246-04 ",.02)
 ;;54569-4246-04
 ;;9002226.02101,"1100,54569-4246-05 ",.01)
 ;;54569-4246-05
 ;;9002226.02101,"1100,54569-4246-05 ",.02)
 ;;54569-4246-05
 ;;9002226.02101,"1100,54569-4247-00 ",.01)
 ;;54569-4247-00
 ;;9002226.02101,"1100,54569-4247-00 ",.02)
 ;;54569-4247-00
 ;;9002226.02101,"1100,54569-4247-02 ",.01)
 ;;54569-4247-02
 ;;9002226.02101,"1100,54569-4247-02 ",.02)
 ;;54569-4247-02
 ;;9002226.02101,"1100,54569-4247-03 ",.01)
 ;;54569-4247-03
 ;;9002226.02101,"1100,54569-4247-03 ",.02)
 ;;54569-4247-03
 ;;9002226.02101,"1100,54569-4276-00 ",.01)
 ;;54569-4276-00
 ;;9002226.02101,"1100,54569-4276-00 ",.02)
 ;;54569-4276-00
 ;;9002226.02101,"1100,54569-4437-00 ",.01)
 ;;54569-4437-00
 ;;9002226.02101,"1100,54569-4437-00 ",.02)
 ;;54569-4437-00
 ;;9002226.02101,"1100,54569-4438-00 ",.01)
 ;;54569-4438-00
 ;;9002226.02101,"1100,54569-4438-00 ",.02)
 ;;54569-4438-00
 ;;9002226.02101,"1100,54569-4438-01 ",.01)
 ;;54569-4438-01
 ;;9002226.02101,"1100,54569-4438-01 ",.02)
 ;;54569-4438-01
 ;;9002226.02101,"1100,54569-4454-00 ",.01)
 ;;54569-4454-00
 ;;9002226.02101,"1100,54569-4454-00 ",.02)
 ;;54569-4454-00
 ;;9002226.02101,"1100,54569-4572-00 ",.01)
 ;;54569-4572-00
 ;;9002226.02101,"1100,54569-4572-00 ",.02)
 ;;54569-4572-00
 ;;9002226.02101,"1100,54569-4593-00 ",.01)
 ;;54569-4593-00
 ;;9002226.02101,"1100,54569-4593-00 ",.02)
 ;;54569-4593-00
 ;;9002226.02101,"1100,54569-4593-01 ",.01)
 ;;54569-4593-01
 ;;9002226.02101,"1100,54569-4593-01 ",.02)
 ;;54569-4593-01
 ;;9002226.02101,"1100,54569-4596-00 ",.01)
 ;;54569-4596-00
 ;;9002226.02101,"1100,54569-4596-00 ",.02)
 ;;54569-4596-00
 ;;9002226.02101,"1100,54569-4696-00 ",.01)
 ;;54569-4696-00
 ;;9002226.02101,"1100,54569-4696-00 ",.02)
 ;;54569-4696-00
 ;;9002226.02101,"1100,54569-4696-01 ",.01)
 ;;54569-4696-01
 ;;9002226.02101,"1100,54569-4696-01 ",.02)
 ;;54569-4696-01
 ;;9002226.02101,"1100,54569-4714-00 ",.01)
 ;;54569-4714-00
 ;;9002226.02101,"1100,54569-4714-00 ",.02)
 ;;54569-4714-00
 ;;9002226.02101,"1100,54569-4719-00 ",.01)
 ;;54569-4719-00
 ;;9002226.02101,"1100,54569-4719-00 ",.02)
 ;;54569-4719-00
 ;;9002226.02101,"1100,54569-4719-01 ",.01)
 ;;54569-4719-01
 ;;9002226.02101,"1100,54569-4719-01 ",.02)
 ;;54569-4719-01
 ;;9002226.02101,"1100,54569-4721-00 ",.01)
 ;;54569-4721-00
 ;;9002226.02101,"1100,54569-4721-00 ",.02)
 ;;54569-4721-00
 ;;9002226.02101,"1100,54569-4722-00 ",.01)
 ;;54569-4722-00
 ;;9002226.02101,"1100,54569-4722-00 ",.02)
 ;;54569-4722-00
 ;;9002226.02101,"1100,54569-4722-01 ",.01)
 ;;54569-4722-01
 ;;9002226.02101,"1100,54569-4722-01 ",.02)
 ;;54569-4722-01
 ;;9002226.02101,"1100,54569-4766-00 ",.01)
 ;;54569-4766-00
 ;;9002226.02101,"1100,54569-4766-00 ",.02)
 ;;54569-4766-00
 ;;9002226.02101,"1100,54569-4766-01 ",.01)
 ;;54569-4766-01
 ;;9002226.02101,"1100,54569-4766-01 ",.02)
 ;;54569-4766-01
 ;;9002226.02101,"1100,54569-4767-00 ",.01)
 ;;54569-4767-00
 ;;9002226.02101,"1100,54569-4767-00 ",.02)
 ;;54569-4767-00
 ;;9002226.02101,"1100,54569-4767-01 ",.01)
 ;;54569-4767-01
 ;;9002226.02101,"1100,54569-4767-01 ",.02)
 ;;54569-4767-01
 ;;9002226.02101,"1100,54569-4788-00 ",.01)
 ;;54569-4788-00
 ;;9002226.02101,"1100,54569-4788-00 ",.02)
 ;;54569-4788-00
 ;;9002226.02101,"1100,54569-4788-01 ",.01)
 ;;54569-4788-01
 ;;9002226.02101,"1100,54569-4788-01 ",.02)
 ;;54569-4788-01
 ;;9002226.02101,"1100,54569-4829-00 ",.01)
 ;;54569-4829-00
 ;;9002226.02101,"1100,54569-4829-00 ",.02)
 ;;54569-4829-00
 ;;9002226.02101,"1100,54569-4895-00 ",.01)
 ;;54569-4895-00
 ;;9002226.02101,"1100,54569-4895-00 ",.02)
 ;;54569-4895-00
 ;;9002226.02101,"1100,54569-4948-00 ",.01)
 ;;54569-4948-00
 ;;9002226.02101,"1100,54569-4948-00 ",.02)
 ;;54569-4948-00
 ;;9002226.02101,"1100,54569-4990-00 ",.01)
 ;;54569-4990-00
 ;;9002226.02101,"1100,54569-4990-00 ",.02)
 ;;54569-4990-00
 ;;9002226.02101,"1100,54569-5132-00 ",.01)
 ;;54569-5132-00
 ;;9002226.02101,"1100,54569-5132-00 ",.02)
 ;;54569-5132-00
 ;;9002226.02101,"1100,54569-5133-00 ",.01)
 ;;54569-5133-00
 ;;9002226.02101,"1100,54569-5133-00 ",.02)
 ;;54569-5133-00
 ;;9002226.02101,"1100,54569-5133-01 ",.01)
 ;;54569-5133-01
 ;;9002226.02101,"1100,54569-5133-01 ",.02)
 ;;54569-5133-01
 ;;9002226.02101,"1100,54569-5134-00 ",.01)
 ;;54569-5134-00
 ;;9002226.02101,"1100,54569-5134-00 ",.02)
 ;;54569-5134-00
 ;;9002226.02101,"1100,54569-5134-01 ",.01)
 ;;54569-5134-01
 ;;9002226.02101,"1100,54569-5134-01 ",.02)
 ;;54569-5134-01
 ;;9002226.02101,"1100,54569-5134-02 ",.01)
 ;;54569-5134-02
 ;;9002226.02101,"1100,54569-5134-02 ",.02)
 ;;54569-5134-02
 ;;9002226.02101,"1100,54569-5135-00 ",.01)
 ;;54569-5135-00
 ;;9002226.02101,"1100,54569-5135-00 ",.02)
 ;;54569-5135-00
 ;;9002226.02101,"1100,54569-5135-01 ",.01)
 ;;54569-5135-01
 ;;9002226.02101,"1100,54569-5135-01 ",.02)
 ;;54569-5135-01
 ;;9002226.02101,"1100,54569-5232-00 ",.01)
 ;;54569-5232-00
 ;;9002226.02101,"1100,54569-5232-00 ",.02)
 ;;54569-5232-00
 ;;9002226.02101,"1100,54569-5232-01 ",.01)
 ;;54569-5232-01
 ;;9002226.02101,"1100,54569-5232-01 ",.02)
 ;;54569-5232-01
 ;;9002226.02101,"1100,54569-5282-00 ",.01)
 ;;54569-5282-00
 ;;9002226.02101,"1100,54569-5282-00 ",.02)
 ;;54569-5282-00
 ;;9002226.02101,"1100,54569-5283-00 ",.01)
 ;;54569-5283-00
 ;;9002226.02101,"1100,54569-5283-00 ",.02)
 ;;54569-5283-00
 ;;9002226.02101,"1100,54569-5284-00 ",.01)
 ;;54569-5284-00
 ;;9002226.02101,"1100,54569-5284-00 ",.02)
 ;;54569-5284-00
 ;;9002226.02101,"1100,54569-5284-01 ",.01)
 ;;54569-5284-01
 ;;9002226.02101,"1100,54569-5284-01 ",.02)
 ;;54569-5284-01
 ;;9002226.02101,"1100,54569-5285-00 ",.01)
 ;;54569-5285-00
 ;;9002226.02101,"1100,54569-5285-00 ",.02)
 ;;54569-5285-00
 ;;9002226.02101,"1100,54569-5286-00 ",.01)
 ;;54569-5286-00
 ;;9002226.02101,"1100,54569-5286-00 ",.02)
 ;;54569-5286-00
 ;;9002226.02101,"1100,54569-5361-00 ",.01)
 ;;54569-5361-00
 ;;9002226.02101,"1100,54569-5361-00 ",.02)
 ;;54569-5361-00
 ;;9002226.02101,"1100,54569-5362-00 ",.01)
 ;;54569-5362-00
 ;;9002226.02101,"1100,54569-5362-00 ",.02)
 ;;54569-5362-00
 ;;9002226.02101,"1100,54569-5379-00 ",.01)
 ;;54569-5379-00
 ;;9002226.02101,"1100,54569-5379-00 ",.02)
 ;;54569-5379-00
 ;;9002226.02101,"1100,54569-5420-00 ",.01)
 ;;54569-5420-00
 ;;9002226.02101,"1100,54569-5420-00 ",.02)
 ;;54569-5420-00
 ;;9002226.02101,"1100,54569-5421-00 ",.01)
 ;;54569-5421-00
 ;;9002226.02101,"1100,54569-5421-00 ",.02)
 ;;54569-5421-00
 ;;9002226.02101,"1100,54569-5422-00 ",.01)
 ;;54569-5422-00
 ;;9002226.02101,"1100,54569-5422-00 ",.02)
 ;;54569-5422-00
