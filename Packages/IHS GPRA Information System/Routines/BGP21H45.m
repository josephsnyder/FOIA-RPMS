BGP21H45 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,54868-4200-01 ",.01)
 ;;54868-4200-01
 ;;9002226.02101,"1197,54868-4200-01 ",.02)
 ;;54868-4200-01
 ;;9002226.02101,"1197,54868-4200-02 ",.01)
 ;;54868-4200-02
 ;;9002226.02101,"1197,54868-4200-02 ",.02)
 ;;54868-4200-02
 ;;9002226.02101,"1197,54868-4202-00 ",.01)
 ;;54868-4202-00
 ;;9002226.02101,"1197,54868-4202-00 ",.02)
 ;;54868-4202-00
 ;;9002226.02101,"1197,54868-4202-01 ",.01)
 ;;54868-4202-01
 ;;9002226.02101,"1197,54868-4202-01 ",.02)
 ;;54868-4202-01
 ;;9002226.02101,"1197,54868-4418-00 ",.01)
 ;;54868-4418-00
 ;;9002226.02101,"1197,54868-4418-00 ",.02)
 ;;54868-4418-00
 ;;9002226.02101,"1197,54868-4432-00 ",.01)
 ;;54868-4432-00
 ;;9002226.02101,"1197,54868-4432-00 ",.02)
 ;;54868-4432-00
 ;;9002226.02101,"1197,54868-4432-01 ",.01)
 ;;54868-4432-01
 ;;9002226.02101,"1197,54868-4432-01 ",.02)
 ;;54868-4432-01
 ;;9002226.02101,"1197,54868-4531-00 ",.01)
 ;;54868-4531-00
 ;;9002226.02101,"1197,54868-4531-00 ",.02)
 ;;54868-4531-00
 ;;9002226.02101,"1197,54868-4531-01 ",.01)
 ;;54868-4531-01
 ;;9002226.02101,"1197,54868-4531-01 ",.02)
 ;;54868-4531-01
 ;;9002226.02101,"1197,54868-4531-02 ",.01)
 ;;54868-4531-02
 ;;9002226.02101,"1197,54868-4531-02 ",.02)
 ;;54868-4531-02
 ;;9002226.02101,"1197,54868-4531-03 ",.01)
 ;;54868-4531-03
 ;;9002226.02101,"1197,54868-4531-03 ",.02)
 ;;54868-4531-03
 ;;9002226.02101,"1197,54868-4531-04 ",.01)
 ;;54868-4531-04
 ;;9002226.02101,"1197,54868-4531-04 ",.02)
 ;;54868-4531-04
 ;;9002226.02101,"1197,54868-4532-00 ",.01)
 ;;54868-4532-00
 ;;9002226.02101,"1197,54868-4532-00 ",.02)
 ;;54868-4532-00
 ;;9002226.02101,"1197,54868-4532-01 ",.01)
 ;;54868-4532-01
 ;;9002226.02101,"1197,54868-4532-01 ",.02)
 ;;54868-4532-01
 ;;9002226.02101,"1197,54868-4532-02 ",.01)
 ;;54868-4532-02
 ;;9002226.02101,"1197,54868-4532-02 ",.02)
 ;;54868-4532-02
 ;;9002226.02101,"1197,54868-4532-03 ",.01)
 ;;54868-4532-03
 ;;9002226.02101,"1197,54868-4532-03 ",.02)
 ;;54868-4532-03
 ;;9002226.02101,"1197,54868-4532-04 ",.01)
 ;;54868-4532-04
 ;;9002226.02101,"1197,54868-4532-04 ",.02)
 ;;54868-4532-04
 ;;9002226.02101,"1197,54868-4808-00 ",.01)
 ;;54868-4808-00
 ;;9002226.02101,"1197,54868-4808-00 ",.02)
 ;;54868-4808-00
 ;;9002226.02101,"1197,54868-4868-00 ",.01)
 ;;54868-4868-00
 ;;9002226.02101,"1197,54868-4868-00 ",.02)
 ;;54868-4868-00
 ;;9002226.02101,"1197,54868-4868-01 ",.01)
 ;;54868-4868-01
 ;;9002226.02101,"1197,54868-4868-01 ",.02)
 ;;54868-4868-01
 ;;9002226.02101,"1197,54868-4868-02 ",.01)
 ;;54868-4868-02
 ;;9002226.02101,"1197,54868-4868-02 ",.02)
 ;;54868-4868-02
 ;;9002226.02101,"1197,54868-4870-00 ",.01)
 ;;54868-4870-00
 ;;9002226.02101,"1197,54868-4870-00 ",.02)
 ;;54868-4870-00
 ;;9002226.02101,"1197,54868-4870-01 ",.01)
 ;;54868-4870-01
 ;;9002226.02101,"1197,54868-4870-01 ",.02)
 ;;54868-4870-01
 ;;9002226.02101,"1197,54868-4870-02 ",.01)
 ;;54868-4870-02
 ;;9002226.02101,"1197,54868-4870-02 ",.02)
 ;;54868-4870-02
 ;;9002226.02101,"1197,54868-4875-00 ",.01)
 ;;54868-4875-00
 ;;9002226.02101,"1197,54868-4875-00 ",.02)
 ;;54868-4875-00
 ;;9002226.02101,"1197,54868-4875-01 ",.01)
 ;;54868-4875-01
 ;;9002226.02101,"1197,54868-4875-01 ",.02)
 ;;54868-4875-01
 ;;9002226.02101,"1197,54868-4875-02 ",.01)
 ;;54868-4875-02
 ;;9002226.02101,"1197,54868-4875-02 ",.02)
 ;;54868-4875-02
 ;;9002226.02101,"1197,54868-4970-00 ",.01)
 ;;54868-4970-00
 ;;9002226.02101,"1197,54868-4970-00 ",.02)
 ;;54868-4970-00
 ;;9002226.02101,"1197,54868-4970-01 ",.01)
 ;;54868-4970-01
 ;;9002226.02101,"1197,54868-4970-01 ",.02)
 ;;54868-4970-01
 ;;9002226.02101,"1197,54868-4970-02 ",.01)
 ;;54868-4970-02
 ;;9002226.02101,"1197,54868-4970-02 ",.02)
 ;;54868-4970-02
 ;;9002226.02101,"1197,54868-4992-00 ",.01)
 ;;54868-4992-00
 ;;9002226.02101,"1197,54868-4992-00 ",.02)
 ;;54868-4992-00
 ;;9002226.02101,"1197,54868-4992-01 ",.01)
 ;;54868-4992-01
 ;;9002226.02101,"1197,54868-4992-01 ",.02)
 ;;54868-4992-01
 ;;9002226.02101,"1197,54868-5053-00 ",.01)
 ;;54868-5053-00
 ;;9002226.02101,"1197,54868-5053-00 ",.02)
 ;;54868-5053-00
 ;;9002226.02101,"1197,54868-5053-01 ",.01)
 ;;54868-5053-01
 ;;9002226.02101,"1197,54868-5053-01 ",.02)
 ;;54868-5053-01
 ;;9002226.02101,"1197,54868-5081-00 ",.01)
 ;;54868-5081-00
 ;;9002226.02101,"1197,54868-5081-00 ",.02)
 ;;54868-5081-00
 ;;9002226.02101,"1197,54868-5150-00 ",.01)
 ;;54868-5150-00
 ;;9002226.02101,"1197,54868-5150-00 ",.02)
 ;;54868-5150-00
 ;;9002226.02101,"1197,54868-5179-00 ",.01)
 ;;54868-5179-00
 ;;9002226.02101,"1197,54868-5179-00 ",.02)
 ;;54868-5179-00
 ;;9002226.02101,"1197,54868-5197-00 ",.01)
 ;;54868-5197-00
 ;;9002226.02101,"1197,54868-5197-00 ",.02)
 ;;54868-5197-00
 ;;9002226.02101,"1197,54868-5197-01 ",.01)
 ;;54868-5197-01
 ;;9002226.02101,"1197,54868-5197-01 ",.02)
 ;;54868-5197-01
 ;;9002226.02101,"1197,54868-5197-02 ",.01)
 ;;54868-5197-02
 ;;9002226.02101,"1197,54868-5197-02 ",.02)
 ;;54868-5197-02
 ;;9002226.02101,"1197,54868-5200-00 ",.01)
 ;;54868-5200-00
 ;;9002226.02101,"1197,54868-5200-00 ",.02)
 ;;54868-5200-00
 ;;9002226.02101,"1197,54868-5200-01 ",.01)
 ;;54868-5200-01
 ;;9002226.02101,"1197,54868-5200-01 ",.02)
 ;;54868-5200-01
 ;;9002226.02101,"1197,54868-5208-00 ",.01)
 ;;54868-5208-00
