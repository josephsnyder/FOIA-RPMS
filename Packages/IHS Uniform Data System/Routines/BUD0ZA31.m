BUD0ZA31 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,54868-4391-00 ",.02)
 ;;54868-4391-00
 ;;9002226.02101,"1062,54868-4412-00 ",.01)
 ;;54868-4412-00
 ;;9002226.02101,"1062,54868-4412-00 ",.02)
 ;;54868-4412-00
 ;;9002226.02101,"1062,54868-4412-01 ",.01)
 ;;54868-4412-01
 ;;9002226.02101,"1062,54868-4412-01 ",.02)
 ;;54868-4412-01
 ;;9002226.02101,"1062,54868-4412-02 ",.01)
 ;;54868-4412-02
 ;;9002226.02101,"1062,54868-4412-02 ",.02)
 ;;54868-4412-02
 ;;9002226.02101,"1062,54868-4420-00 ",.01)
 ;;54868-4420-00
 ;;9002226.02101,"1062,54868-4420-00 ",.02)
 ;;54868-4420-00
 ;;9002226.02101,"1062,54868-4529-00 ",.01)
 ;;54868-4529-00
 ;;9002226.02101,"1062,54868-4529-00 ",.02)
 ;;54868-4529-00
 ;;9002226.02101,"1062,54868-4529-01 ",.01)
 ;;54868-4529-01
 ;;9002226.02101,"1062,54868-4529-01 ",.02)
 ;;54868-4529-01
 ;;9002226.02101,"1062,54868-4529-02 ",.01)
 ;;54868-4529-02
 ;;9002226.02101,"1062,54868-4529-02 ",.02)
 ;;54868-4529-02
 ;;9002226.02101,"1062,54868-4529-03 ",.01)
 ;;54868-4529-03
 ;;9002226.02101,"1062,54868-4529-03 ",.02)
 ;;54868-4529-03
 ;;9002226.02101,"1062,54868-4609-00 ",.01)
 ;;54868-4609-00
 ;;9002226.02101,"1062,54868-4609-00 ",.02)
 ;;54868-4609-00
 ;;9002226.02101,"1062,54868-4626-00 ",.01)
 ;;54868-4626-00
 ;;9002226.02101,"1062,54868-4626-00 ",.02)
 ;;54868-4626-00
 ;;9002226.02101,"1062,54868-4842-00 ",.01)
 ;;54868-4842-00
 ;;9002226.02101,"1062,54868-4842-00 ",.02)
 ;;54868-4842-00
 ;;9002226.02101,"1062,54868-4842-01 ",.01)
 ;;54868-4842-01
 ;;9002226.02101,"1062,54868-4842-01 ",.02)
 ;;54868-4842-01
 ;;9002226.02101,"1062,54868-4842-02 ",.01)
 ;;54868-4842-02
 ;;9002226.02101,"1062,54868-4842-02 ",.02)
 ;;54868-4842-02
 ;;9002226.02101,"1062,54868-4906-00 ",.01)
 ;;54868-4906-00
 ;;9002226.02101,"1062,54868-4906-00 ",.02)
 ;;54868-4906-00
 ;;9002226.02101,"1062,54868-4965-00 ",.01)
 ;;54868-4965-00
 ;;9002226.02101,"1062,54868-4965-00 ",.02)
 ;;54868-4965-00
 ;;9002226.02101,"1062,54868-4965-01 ",.01)
 ;;54868-4965-01
 ;;9002226.02101,"1062,54868-4965-01 ",.02)
 ;;54868-4965-01
 ;;9002226.02101,"1062,54868-4965-02 ",.01)
 ;;54868-4965-02
 ;;9002226.02101,"1062,54868-4965-02 ",.02)
 ;;54868-4965-02
 ;;9002226.02101,"1062,54868-4988-00 ",.01)
 ;;54868-4988-00
 ;;9002226.02101,"1062,54868-4988-00 ",.02)
 ;;54868-4988-00
 ;;9002226.02101,"1062,54868-4988-01 ",.01)
 ;;54868-4988-01
 ;;9002226.02101,"1062,54868-4988-01 ",.02)
 ;;54868-4988-01
 ;;9002226.02101,"1062,54868-4988-02 ",.01)
 ;;54868-4988-02
 ;;9002226.02101,"1062,54868-4988-02 ",.02)
 ;;54868-4988-02
 ;;9002226.02101,"1062,54868-4988-03 ",.01)
 ;;54868-4988-03
 ;;9002226.02101,"1062,54868-4988-03 ",.02)
 ;;54868-4988-03
 ;;9002226.02101,"1062,54868-5108-00 ",.01)
 ;;54868-5108-00
 ;;9002226.02101,"1062,54868-5108-00 ",.02)
 ;;54868-5108-00
 ;;9002226.02101,"1062,54868-5148-00 ",.01)
 ;;54868-5148-00
 ;;9002226.02101,"1062,54868-5148-00 ",.02)
 ;;54868-5148-00
 ;;9002226.02101,"1062,54868-5148-01 ",.01)
 ;;54868-5148-01
 ;;9002226.02101,"1062,54868-5148-01 ",.02)
 ;;54868-5148-01
 ;;9002226.02101,"1062,54868-5148-02 ",.01)
 ;;54868-5148-02
 ;;9002226.02101,"1062,54868-5148-02 ",.02)
 ;;54868-5148-02
 ;;9002226.02101,"1062,54868-5156-00 ",.01)
 ;;54868-5156-00
 ;;9002226.02101,"1062,54868-5156-00 ",.02)
 ;;54868-5156-00
 ;;9002226.02101,"1062,54868-5156-01 ",.01)
 ;;54868-5156-01
 ;;9002226.02101,"1062,54868-5156-01 ",.02)
 ;;54868-5156-01
 ;;9002226.02101,"1062,54868-5157-00 ",.01)
 ;;54868-5157-00
 ;;9002226.02101,"1062,54868-5157-00 ",.02)
 ;;54868-5157-00
 ;;9002226.02101,"1062,54868-5157-01 ",.01)
 ;;54868-5157-01
 ;;9002226.02101,"1062,54868-5157-01 ",.02)
 ;;54868-5157-01
 ;;9002226.02101,"1062,54868-5185-00 ",.01)
 ;;54868-5185-00
 ;;9002226.02101,"1062,54868-5185-00 ",.02)
 ;;54868-5185-00
 ;;9002226.02101,"1062,54868-5185-01 ",.01)
 ;;54868-5185-01
 ;;9002226.02101,"1062,54868-5185-01 ",.02)
 ;;54868-5185-01
 ;;9002226.02101,"1062,54868-5185-02 ",.01)
 ;;54868-5185-02
 ;;9002226.02101,"1062,54868-5185-02 ",.02)
 ;;54868-5185-02
 ;;9002226.02101,"1062,54868-5185-03 ",.01)
 ;;54868-5185-03
 ;;9002226.02101,"1062,54868-5185-03 ",.02)
 ;;54868-5185-03
 ;;9002226.02101,"1062,54868-5188-00 ",.01)
 ;;54868-5188-00
 ;;9002226.02101,"1062,54868-5188-00 ",.02)
 ;;54868-5188-00
 ;;9002226.02101,"1062,54868-5188-01 ",.01)
 ;;54868-5188-01
 ;;9002226.02101,"1062,54868-5188-01 ",.02)
 ;;54868-5188-01
 ;;9002226.02101,"1062,54868-5188-02 ",.01)
 ;;54868-5188-02
 ;;9002226.02101,"1062,54868-5188-02 ",.02)
 ;;54868-5188-02
 ;;9002226.02101,"1062,54868-5201-00 ",.01)
 ;;54868-5201-00
 ;;9002226.02101,"1062,54868-5201-00 ",.02)
 ;;54868-5201-00
 ;;9002226.02101,"1062,54868-5210-00 ",.01)
 ;;54868-5210-00
 ;;9002226.02101,"1062,54868-5210-00 ",.02)
 ;;54868-5210-00
 ;;9002226.02101,"1062,54868-5210-01 ",.01)
 ;;54868-5210-01
 ;;9002226.02101,"1062,54868-5210-01 ",.02)
 ;;54868-5210-01
 ;;9002226.02101,"1062,54868-5210-02 ",.01)
 ;;54868-5210-02
 ;;9002226.02101,"1062,54868-5210-02 ",.02)
 ;;54868-5210-02
 ;;9002226.02101,"1062,54868-5210-03 ",.01)
 ;;54868-5210-03
 ;;9002226.02101,"1062,54868-5210-03 ",.02)
 ;;54868-5210-03
 ;;9002226.02101,"1062,54868-5243-00 ",.01)
 ;;54868-5243-00
 ;;9002226.02101,"1062,54868-5243-00 ",.02)
 ;;54868-5243-00
