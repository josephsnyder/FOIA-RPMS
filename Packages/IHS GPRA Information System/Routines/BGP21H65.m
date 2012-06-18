BGP21H65 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,68115-0349-60 ",.01)
 ;;68115-0349-60
 ;;9002226.02101,"1197,68115-0349-60 ",.02)
 ;;68115-0349-60
 ;;9002226.02101,"1197,68115-0350-90 ",.01)
 ;;68115-0350-90
 ;;9002226.02101,"1197,68115-0350-90 ",.02)
 ;;68115-0350-90
 ;;9002226.02101,"1197,68115-0368-00 ",.01)
 ;;68115-0368-00
 ;;9002226.02101,"1197,68115-0368-00 ",.02)
 ;;68115-0368-00
 ;;9002226.02101,"1197,68115-0368-30 ",.01)
 ;;68115-0368-30
 ;;9002226.02101,"1197,68115-0368-30 ",.02)
 ;;68115-0368-30
 ;;9002226.02101,"1197,68115-0441-30 ",.01)
 ;;68115-0441-30
 ;;9002226.02101,"1197,68115-0441-30 ",.02)
 ;;68115-0441-30
 ;;9002226.02101,"1197,68115-0606-00 ",.01)
 ;;68115-0606-00
 ;;9002226.02101,"1197,68115-0606-00 ",.02)
 ;;68115-0606-00
 ;;9002226.02101,"1197,68115-0606-15 ",.01)
 ;;68115-0606-15
 ;;9002226.02101,"1197,68115-0606-15 ",.02)
 ;;68115-0606-15
 ;;9002226.02101,"1197,68115-0606-30 ",.01)
 ;;68115-0606-30
 ;;9002226.02101,"1197,68115-0606-30 ",.02)
 ;;68115-0606-30
 ;;9002226.02101,"1197,68115-0612-90 ",.01)
 ;;68115-0612-90
 ;;9002226.02101,"1197,68115-0612-90 ",.02)
 ;;68115-0612-90
 ;;9002226.02101,"1197,68115-0636-00 ",.01)
 ;;68115-0636-00
 ;;9002226.02101,"1197,68115-0636-00 ",.02)
 ;;68115-0636-00
 ;;9002226.02101,"1197,68115-0650-00 ",.01)
 ;;68115-0650-00
 ;;9002226.02101,"1197,68115-0650-00 ",.02)
 ;;68115-0650-00
 ;;9002226.02101,"1197,68115-0673-00 ",.01)
 ;;68115-0673-00
 ;;9002226.02101,"1197,68115-0673-00 ",.02)
 ;;68115-0673-00
 ;;9002226.02101,"1197,68115-0673-30 ",.01)
 ;;68115-0673-30
 ;;9002226.02101,"1197,68115-0673-30 ",.02)
 ;;68115-0673-30
 ;;9002226.02101,"1197,68115-0778-00 ",.01)
 ;;68115-0778-00
 ;;9002226.02101,"1197,68115-0778-00 ",.02)
 ;;68115-0778-00
 ;;9002226.02101,"1197,68115-0790-00 ",.01)
 ;;68115-0790-00
 ;;9002226.02101,"1197,68115-0790-00 ",.02)
 ;;68115-0790-00
 ;;9002226.02101,"1197,68115-0890-15 ",.01)
 ;;68115-0890-15
 ;;9002226.02101,"1197,68115-0890-15 ",.02)
 ;;68115-0890-15
 ;;9002226.02101,"1197,68115-0890-30 ",.01)
 ;;68115-0890-30
 ;;9002226.02101,"1197,68115-0890-30 ",.02)
 ;;68115-0890-30
 ;;9002226.02101,"1197,68115-0890-60 ",.01)
 ;;68115-0890-60
 ;;9002226.02101,"1197,68115-0890-60 ",.02)
 ;;68115-0890-60
 ;;9002226.02101,"1197,68115-0890-90 ",.01)
 ;;68115-0890-90
 ;;9002226.02101,"1197,68115-0890-90 ",.02)
 ;;68115-0890-90
 ;;9002226.02101,"1197,68180-0750-09 ",.01)
 ;;68180-0750-09
 ;;9002226.02101,"1197,68180-0750-09 ",.02)
 ;;68180-0750-09
 ;;9002226.02101,"1197,68180-0751-03 ",.01)
 ;;68180-0751-03
 ;;9002226.02101,"1197,68180-0751-03 ",.02)
 ;;68180-0751-03
 ;;9002226.02101,"1197,68180-0751-09 ",.01)
 ;;68180-0751-09
 ;;9002226.02101,"1197,68180-0751-09 ",.02)
 ;;68180-0751-09
 ;;9002226.02101,"1197,68180-0752-03 ",.01)
 ;;68180-0752-03
 ;;9002226.02101,"1197,68180-0752-03 ",.02)
 ;;68180-0752-03
 ;;9002226.02101,"1197,68180-0752-09 ",.01)
 ;;68180-0752-09
 ;;9002226.02101,"1197,68180-0752-09 ",.02)
 ;;68180-0752-09
 ;;9002226.02101,"1197,68180-0755-01 ",.01)
 ;;68180-0755-01
 ;;9002226.02101,"1197,68180-0755-01 ",.02)
 ;;68180-0755-01
 ;;9002226.02101,"1197,68180-0756-01 ",.01)
 ;;68180-0756-01
 ;;9002226.02101,"1197,68180-0756-01 ",.02)
 ;;68180-0756-01
 ;;9002226.02101,"1197,68180-0756-02 ",.01)
 ;;68180-0756-02
 ;;9002226.02101,"1197,68180-0756-02 ",.02)
 ;;68180-0756-02
 ;;9002226.02101,"1197,68180-0757-01 ",.01)
 ;;68180-0757-01
 ;;9002226.02101,"1197,68180-0757-01 ",.02)
 ;;68180-0757-01
 ;;9002226.02101,"1197,68180-0757-02 ",.01)
 ;;68180-0757-02
 ;;9002226.02101,"1197,68180-0757-02 ",.02)
 ;;68180-0757-02
 ;;9002226.02101,"1197,68180-0758-01 ",.01)
 ;;68180-0758-01
 ;;9002226.02101,"1197,68180-0758-01 ",.02)
 ;;68180-0758-01
 ;;9002226.02101,"1197,68180-0758-02 ",.01)
 ;;68180-0758-02
 ;;9002226.02101,"1197,68180-0758-02 ",.02)
 ;;68180-0758-02
 ;;9002226.02101,"1197,68258-1019-01 ",.01)
 ;;68258-1019-01
 ;;9002226.02101,"1197,68258-1019-01 ",.02)
 ;;68258-1019-01
 ;;9002226.02101,"1197,68258-1020-01 ",.01)
 ;;68258-1020-01
 ;;9002226.02101,"1197,68258-1020-01 ",.02)
 ;;68258-1020-01
 ;;9002226.02101,"1197,68258-1021-01 ",.01)
 ;;68258-1021-01
 ;;9002226.02101,"1197,68258-1021-01 ",.02)
 ;;68258-1021-01
 ;;9002226.02101,"1197,68258-6014-03 ",.01)
 ;;68258-6014-03
 ;;9002226.02101,"1197,68258-6014-03 ",.02)
 ;;68258-6014-03
 ;;9002226.02101,"1197,68258-9113-01 ",.01)
 ;;68258-9113-01
 ;;9002226.02101,"1197,68258-9113-01 ",.02)
 ;;68258-9113-01
 ;;9002226.02101,"1197,68382-0121-01 ",.01)
 ;;68382-0121-01
 ;;9002226.02101,"1197,68382-0121-01 ",.02)
 ;;68382-0121-01
 ;;9002226.02101,"1197,68382-0121-05 ",.01)
 ;;68382-0121-05
 ;;9002226.02101,"1197,68382-0121-05 ",.02)
 ;;68382-0121-05
 ;;9002226.02101,"1197,68382-0121-16 ",.01)
 ;;68382-0121-16
 ;;9002226.02101,"1197,68382-0121-16 ",.02)
 ;;68382-0121-16
 ;;9002226.02101,"1197,68382-0122-01 ",.01)
 ;;68382-0122-01
 ;;9002226.02101,"1197,68382-0122-01 ",.02)
 ;;68382-0122-01
 ;;9002226.02101,"1197,68382-0122-05 ",.01)
 ;;68382-0122-05
 ;;9002226.02101,"1197,68382-0122-05 ",.02)
 ;;68382-0122-05
 ;;9002226.02101,"1197,68382-0122-16 ",.01)
 ;;68382-0122-16
 ;;9002226.02101,"1197,68382-0122-16 ",.02)
 ;;68382-0122-16
 ;;9002226.02101,"1197,68382-0123-01 ",.01)
 ;;68382-0123-01
