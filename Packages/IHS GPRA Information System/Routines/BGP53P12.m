BGP53P12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"802,68180-0102-09 ",.01)
 ;;68180-0102-09
 ;;9002226.02101,"802,68180-0102-09 ",.02)
 ;;68180-0102-09
 ;;9002226.02101,"802,68180-0103-02 ",.01)
 ;;68180-0103-02
 ;;9002226.02101,"802,68180-0103-02 ",.02)
 ;;68180-0103-02
 ;;9002226.02101,"802,68180-0103-09 ",.01)
 ;;68180-0103-09
 ;;9002226.02101,"802,68180-0103-09 ",.02)
 ;;68180-0103-09
 ;;9002226.02101,"802,68180-0104-02 ",.01)
 ;;68180-0104-02
 ;;9002226.02101,"802,68180-0104-02 ",.02)
 ;;68180-0104-02
 ;;9002226.02101,"802,68180-0104-09 ",.01)
 ;;68180-0104-09
 ;;9002226.02101,"802,68180-0104-09 ",.02)
 ;;68180-0104-09
 ;;9002226.02101,"802,68180-0105-02 ",.01)
 ;;68180-0105-02
 ;;9002226.02101,"802,68180-0105-02 ",.02)
 ;;68180-0105-02
 ;;9002226.02101,"802,68180-0105-09 ",.01)
 ;;68180-0105-09
 ;;9002226.02101,"802,68180-0105-09 ",.02)
 ;;68180-0105-09
 ;;9002226.02101,"802,68180-0196-06 ",.01)
 ;;68180-0196-06
 ;;9002226.02101,"802,68180-0196-06 ",.02)
 ;;68180-0196-06
 ;;9002226.02101,"802,68180-0197-06 ",.01)
 ;;68180-0197-06
 ;;9002226.02101,"802,68180-0197-06 ",.02)
 ;;68180-0197-06
 ;;9002226.02101,"802,68180-0198-06 ",.01)
 ;;68180-0198-06
 ;;9002226.02101,"802,68180-0198-06 ",.02)
 ;;68180-0198-06
 ;;9002226.02101,"802,68180-0199-06 ",.01)
 ;;68180-0199-06
 ;;9002226.02101,"802,68180-0199-06 ",.02)
 ;;68180-0199-06
 ;;9002226.02101,"802,68180-0210-03 ",.01)
 ;;68180-0210-03
 ;;9002226.02101,"802,68180-0210-03 ",.02)
 ;;68180-0210-03
 ;;9002226.02101,"802,68180-0210-09 ",.01)
 ;;68180-0210-09
 ;;9002226.02101,"802,68180-0210-09 ",.02)
 ;;68180-0210-09
 ;;9002226.02101,"802,68180-0211-03 ",.01)
 ;;68180-0211-03
 ;;9002226.02101,"802,68180-0211-03 ",.02)
 ;;68180-0211-03
 ;;9002226.02101,"802,68180-0211-09 ",.01)
 ;;68180-0211-09
 ;;9002226.02101,"802,68180-0211-09 ",.02)
 ;;68180-0211-09
 ;;9002226.02101,"802,68180-0212-03 ",.01)
 ;;68180-0212-03
 ;;9002226.02101,"802,68180-0212-03 ",.02)
 ;;68180-0212-03
 ;;9002226.02101,"802,68180-0212-09 ",.01)
 ;;68180-0212-09
 ;;9002226.02101,"802,68180-0212-09 ",.02)
 ;;68180-0212-09
 ;;9002226.02101,"802,68180-0215-03 ",.01)
 ;;68180-0215-03
 ;;9002226.02101,"802,68180-0215-03 ",.02)
 ;;68180-0215-03
 ;;9002226.02101,"802,68180-0215-06 ",.01)
 ;;68180-0215-06
 ;;9002226.02101,"802,68180-0215-06 ",.02)
 ;;68180-0215-06
 ;;9002226.02101,"802,68180-0215-09 ",.01)
 ;;68180-0215-09
 ;;9002226.02101,"802,68180-0215-09 ",.02)
 ;;68180-0215-09
 ;;9002226.02101,"802,68180-0216-03 ",.01)
 ;;68180-0216-03
 ;;9002226.02101,"802,68180-0216-03 ",.02)
 ;;68180-0216-03
 ;;9002226.02101,"802,68180-0216-06 ",.01)
 ;;68180-0216-06
 ;;9002226.02101,"802,68180-0216-06 ",.02)
 ;;68180-0216-06
 ;;9002226.02101,"802,68180-0216-09 ",.01)
 ;;68180-0216-09
 ;;9002226.02101,"802,68180-0216-09 ",.02)
 ;;68180-0216-09
 ;;9002226.02101,"802,68180-0217-03 ",.01)
 ;;68180-0217-03
 ;;9002226.02101,"802,68180-0217-03 ",.02)
 ;;68180-0217-03
 ;;9002226.02101,"802,68180-0217-06 ",.01)
 ;;68180-0217-06
 ;;9002226.02101,"802,68180-0217-06 ",.02)
 ;;68180-0217-06
 ;;9002226.02101,"802,68180-0217-09 ",.01)
 ;;68180-0217-09
 ;;9002226.02101,"802,68180-0217-09 ",.02)
 ;;68180-0217-09
 ;;9002226.02101,"802,68180-0410-06 ",.01)
 ;;68180-0410-06
 ;;9002226.02101,"802,68180-0410-06 ",.02)
 ;;68180-0410-06
 ;;9002226.02101,"802,68180-0410-09 ",.01)
 ;;68180-0410-09
 ;;9002226.02101,"802,68180-0410-09 ",.02)
 ;;68180-0410-09
 ;;9002226.02101,"802,68180-0411-06 ",.01)
 ;;68180-0411-06
 ;;9002226.02101,"802,68180-0411-06 ",.02)
 ;;68180-0411-06
 ;;9002226.02101,"802,68180-0411-09 ",.01)
 ;;68180-0411-09
 ;;9002226.02101,"802,68180-0411-09 ",.02)
 ;;68180-0411-09
 ;;9002226.02101,"802,68180-0412-06 ",.01)
 ;;68180-0412-06
 ;;9002226.02101,"802,68180-0412-06 ",.02)
 ;;68180-0412-06
 ;;9002226.02101,"802,68180-0412-09 ",.01)
 ;;68180-0412-09
 ;;9002226.02101,"802,68180-0412-09 ",.02)
 ;;68180-0412-09
 ;;9002226.02101,"802,68180-0413-06 ",.01)
 ;;68180-0413-06
 ;;9002226.02101,"802,68180-0413-06 ",.02)
 ;;68180-0413-06
 ;;9002226.02101,"802,68180-0413-09 ",.01)
 ;;68180-0413-09
 ;;9002226.02101,"802,68180-0413-09 ",.02)
 ;;68180-0413-09
 ;;9002226.02101,"802,68180-0414-06 ",.01)
 ;;68180-0414-06
 ;;9002226.02101,"802,68180-0414-06 ",.02)
 ;;68180-0414-06
 ;;9002226.02101,"802,68180-0414-09 ",.01)
 ;;68180-0414-09
 ;;9002226.02101,"802,68180-0414-09 ",.02)
 ;;68180-0414-09
 ;;9002226.02101,"802,68382-0135-01 ",.01)
 ;;68382-0135-01
 ;;9002226.02101,"802,68382-0135-01 ",.02)
 ;;68382-0135-01
 ;;9002226.02101,"802,68382-0135-06 ",.01)
 ;;68382-0135-06
 ;;9002226.02101,"802,68382-0135-06 ",.02)
 ;;68382-0135-06
 ;;9002226.02101,"802,68382-0135-10 ",.01)
 ;;68382-0135-10
 ;;9002226.02101,"802,68382-0135-10 ",.02)
 ;;68382-0135-10
 ;;9002226.02101,"802,68382-0135-16 ",.01)
 ;;68382-0135-16
 ;;9002226.02101,"802,68382-0135-16 ",.02)
 ;;68382-0135-16
 ;;9002226.02101,"802,68382-0136-01 ",.01)
 ;;68382-0136-01
 ;;9002226.02101,"802,68382-0136-01 ",.02)
 ;;68382-0136-01
 ;;9002226.02101,"802,68382-0136-06 ",.01)
 ;;68382-0136-06
 ;;9002226.02101,"802,68382-0136-06 ",.02)
 ;;68382-0136-06
 ;;9002226.02101,"802,68382-0136-10 ",.01)
 ;;68382-0136-10
 ;;9002226.02101,"802,68382-0136-10 ",.02)
 ;;68382-0136-10
 ;;9002226.02101,"802,68382-0136-16 ",.01)
 ;;68382-0136-16
 ;;9002226.02101,"802,68382-0136-16 ",.02)
 ;;68382-0136-16
 ;;9002226.02101,"802,68382-0137-01 ",.01)
 ;;68382-0137-01
 ;;9002226.02101,"802,68382-0137-01 ",.02)
 ;;68382-0137-01
 ;;9002226.02101,"802,68382-0137-06 ",.01)
 ;;68382-0137-06
 ;;9002226.02101,"802,68382-0137-06 ",.02)
 ;;68382-0137-06
 ;;9002226.02101,"802,68382-0137-10 ",.01)
 ;;68382-0137-10
 ;;9002226.02101,"802,68382-0137-10 ",.02)
 ;;68382-0137-10
 ;;9002226.02101,"802,68382-0137-16 ",.01)
 ;;68382-0137-16
 ;;9002226.02101,"802,68382-0137-16 ",.02)
 ;;68382-0137-16
 ;;9002226.02101,"802,68382-0142-06 ",.01)
 ;;68382-0142-06
 ;;9002226.02101,"802,68382-0142-06 ",.02)
 ;;68382-0142-06
 ;;9002226.02101,"802,68382-0142-10 ",.01)
 ;;68382-0142-10
 ;;9002226.02101,"802,68382-0142-10 ",.02)
 ;;68382-0142-10
 ;;9002226.02101,"802,68382-0142-16 ",.01)
 ;;68382-0142-16
 ;;9002226.02101,"802,68382-0142-16 ",.02)
 ;;68382-0142-16
 ;;9002226.02101,"802,68382-0143-06 ",.01)
 ;;68382-0143-06
 ;;9002226.02101,"802,68382-0143-06 ",.02)
 ;;68382-0143-06
 ;;9002226.02101,"802,68382-0143-10 ",.01)
 ;;68382-0143-10
 ;;9002226.02101,"802,68382-0143-10 ",.02)
 ;;68382-0143-10
 ;;9002226.02101,"802,68382-0143-16 ",.01)
 ;;68382-0143-16
 ;;9002226.02101,"802,68382-0143-16 ",.02)
 ;;68382-0143-16
 ;;9002226.02101,"802,68462-0199-13 ",.01)
 ;;68462-0199-13
 ;;9002226.02101,"802,68462-0199-13 ",.02)
 ;;68462-0199-13
 ;;9002226.02101,"802,68462-0200-13 ",.01)
 ;;68462-0200-13
 ;;9002226.02101,"802,68462-0200-13 ",.02)
 ;;68462-0200-13
 ;;9002226.02101,"802,68462-0201-13 ",.01)
 ;;68462-0201-13
 ;;9002226.02101,"802,68462-0201-13 ",.02)
 ;;68462-0201-13
