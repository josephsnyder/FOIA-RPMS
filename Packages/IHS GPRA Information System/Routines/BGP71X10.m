BGP71X10 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1222,54868-3318-05 ",.01)
 ;;54868-3318-05
 ;;9002226.02101,"1222,54868-3318-05 ",.02)
 ;;54868-3318-05
 ;;9002226.02101,"1222,54868-3319-01 ",.01)
 ;;54868-3319-01
 ;;9002226.02101,"1222,54868-3319-01 ",.02)
 ;;54868-3319-01
 ;;9002226.02101,"1222,54868-3319-02 ",.01)
 ;;54868-3319-02
 ;;9002226.02101,"1222,54868-3319-02 ",.02)
 ;;54868-3319-02
 ;;9002226.02101,"1222,54868-3319-04 ",.01)
 ;;54868-3319-04
 ;;9002226.02101,"1222,54868-3319-04 ",.02)
 ;;54868-3319-04
 ;;9002226.02101,"1222,54868-3319-05 ",.01)
 ;;54868-3319-05
 ;;9002226.02101,"1222,54868-3319-05 ",.02)
 ;;54868-3319-05
 ;;9002226.02101,"1222,54868-3319-06 ",.01)
 ;;54868-3319-06
 ;;9002226.02101,"1222,54868-3319-06 ",.02)
 ;;54868-3319-06
 ;;9002226.02101,"1222,54868-3319-07 ",.01)
 ;;54868-3319-07
 ;;9002226.02101,"1222,54868-3319-07 ",.02)
 ;;54868-3319-07
 ;;9002226.02101,"1222,54868-3327-00 ",.01)
 ;;54868-3327-00
 ;;9002226.02101,"1222,54868-3327-00 ",.02)
 ;;54868-3327-00
 ;;9002226.02101,"1222,54868-3334-00 ",.01)
 ;;54868-3334-00
 ;;9002226.02101,"1222,54868-3334-00 ",.02)
 ;;54868-3334-00
 ;;9002226.02101,"1222,54868-3334-01 ",.01)
 ;;54868-3334-01
 ;;9002226.02101,"1222,54868-3334-01 ",.02)
 ;;54868-3334-01
 ;;9002226.02101,"1222,54868-3334-02 ",.01)
 ;;54868-3334-02
 ;;9002226.02101,"1222,54868-3334-02 ",.02)
 ;;54868-3334-02
 ;;9002226.02101,"1222,54868-3334-03 ",.01)
 ;;54868-3334-03
 ;;9002226.02101,"1222,54868-3334-03 ",.02)
 ;;54868-3334-03
 ;;9002226.02101,"1222,54868-3334-04 ",.01)
 ;;54868-3334-04
 ;;9002226.02101,"1222,54868-3334-04 ",.02)
 ;;54868-3334-04
 ;;9002226.02101,"1222,54868-3335-00 ",.01)
 ;;54868-3335-00
 ;;9002226.02101,"1222,54868-3335-00 ",.02)
 ;;54868-3335-00
 ;;9002226.02101,"1222,54868-3335-01 ",.01)
 ;;54868-3335-01
 ;;9002226.02101,"1222,54868-3335-01 ",.02)
 ;;54868-3335-01
 ;;9002226.02101,"1222,54868-3335-02 ",.01)
 ;;54868-3335-02
 ;;9002226.02101,"1222,54868-3335-02 ",.02)
 ;;54868-3335-02
 ;;9002226.02101,"1222,54868-3335-03 ",.01)
 ;;54868-3335-03
 ;;9002226.02101,"1222,54868-3335-03 ",.02)
 ;;54868-3335-03
 ;;9002226.02101,"1222,54868-3377-00 ",.01)
 ;;54868-3377-00
 ;;9002226.02101,"1222,54868-3377-00 ",.02)
 ;;54868-3377-00
 ;;9002226.02101,"1222,54868-3377-01 ",.01)
 ;;54868-3377-01
 ;;9002226.02101,"1222,54868-3377-01 ",.02)
 ;;54868-3377-01
 ;;9002226.02101,"1222,54868-3377-02 ",.01)
 ;;54868-3377-02
 ;;9002226.02101,"1222,54868-3377-02 ",.02)
 ;;54868-3377-02
 ;;9002226.02101,"1222,54868-3377-03 ",.01)
 ;;54868-3377-03
 ;;9002226.02101,"1222,54868-3377-03 ",.02)
 ;;54868-3377-03
 ;;9002226.02101,"1222,54868-3426-00 ",.01)
 ;;54868-3426-00
 ;;9002226.02101,"1222,54868-3426-00 ",.02)
 ;;54868-3426-00
 ;;9002226.02101,"1222,54868-3426-01 ",.01)
 ;;54868-3426-01
 ;;9002226.02101,"1222,54868-3426-01 ",.02)
 ;;54868-3426-01
 ;;9002226.02101,"1222,54868-3711-00 ",.01)
 ;;54868-3711-00
 ;;9002226.02101,"1222,54868-3711-00 ",.02)
 ;;54868-3711-00
 ;;9002226.02101,"1222,54868-3711-01 ",.01)
 ;;54868-3711-01
 ;;9002226.02101,"1222,54868-3711-01 ",.02)
 ;;54868-3711-01
 ;;9002226.02101,"1222,54868-4091-00 ",.01)
 ;;54868-4091-00
 ;;9002226.02101,"1222,54868-4091-00 ",.02)
 ;;54868-4091-00
 ;;9002226.02101,"1222,54868-4091-01 ",.01)
 ;;54868-4091-01
 ;;9002226.02101,"1222,54868-4091-01 ",.02)
 ;;54868-4091-01
 ;;9002226.02101,"1222,54868-4091-02 ",.01)
 ;;54868-4091-02
 ;;9002226.02101,"1222,54868-4091-02 ",.02)
 ;;54868-4091-02
 ;;9002226.02101,"1222,54868-4091-03 ",.01)
 ;;54868-4091-03
 ;;9002226.02101,"1222,54868-4091-03 ",.02)
 ;;54868-4091-03
 ;;9002226.02101,"1222,54868-4420-00 ",.01)
 ;;54868-4420-00
 ;;9002226.02101,"1222,54868-4420-00 ",.02)
 ;;54868-4420-00
 ;;9002226.02101,"1222,54868-4529-00 ",.01)
 ;;54868-4529-00
 ;;9002226.02101,"1222,54868-4529-00 ",.02)
 ;;54868-4529-00
 ;;9002226.02101,"1222,54868-4529-01 ",.01)
 ;;54868-4529-01
 ;;9002226.02101,"1222,54868-4529-01 ",.02)
 ;;54868-4529-01
 ;;9002226.02101,"1222,54868-4529-02 ",.01)
 ;;54868-4529-02
 ;;9002226.02101,"1222,54868-4529-02 ",.02)
 ;;54868-4529-02
 ;;9002226.02101,"1222,54868-4529-03 ",.01)
 ;;54868-4529-03
 ;;9002226.02101,"1222,54868-4529-03 ",.02)
 ;;54868-4529-03
 ;;9002226.02101,"1222,54868-4609-00 ",.01)
 ;;54868-4609-00
 ;;9002226.02101,"1222,54868-4609-00 ",.02)
 ;;54868-4609-00
 ;;9002226.02101,"1222,54868-4609-01 ",.01)
 ;;54868-4609-01
 ;;9002226.02101,"1222,54868-4609-01 ",.02)
 ;;54868-4609-01
 ;;9002226.02101,"1222,54868-4842-00 ",.01)
 ;;54868-4842-00
 ;;9002226.02101,"1222,54868-4842-00 ",.02)
 ;;54868-4842-00
 ;;9002226.02101,"1222,54868-4842-01 ",.01)
 ;;54868-4842-01
 ;;9002226.02101,"1222,54868-4842-01 ",.02)
 ;;54868-4842-01
 ;;9002226.02101,"1222,54868-4842-02 ",.01)
 ;;54868-4842-02
 ;;9002226.02101,"1222,54868-4842-02 ",.02)
 ;;54868-4842-02
 ;;9002226.02101,"1222,54868-4906-00 ",.01)
 ;;54868-4906-00
 ;;9002226.02101,"1222,54868-4906-00 ",.02)
 ;;54868-4906-00
 ;;9002226.02101,"1222,54868-4988-00 ",.01)
 ;;54868-4988-00
 ;;9002226.02101,"1222,54868-4988-00 ",.02)
 ;;54868-4988-00
 ;;9002226.02101,"1222,54868-4988-01 ",.01)
 ;;54868-4988-01
 ;;9002226.02101,"1222,54868-4988-01 ",.02)
 ;;54868-4988-01
 ;;9002226.02101,"1222,54868-4988-02 ",.01)
 ;;54868-4988-02
 ;;9002226.02101,"1222,54868-4988-02 ",.02)
 ;;54868-4988-02
 ;;9002226.02101,"1222,54868-4988-03 ",.01)
 ;;54868-4988-03
 ;;9002226.02101,"1222,54868-4988-03 ",.02)
 ;;54868-4988-03
 ;;9002226.02101,"1222,54868-4988-04 ",.01)
 ;;54868-4988-04
 ;;9002226.02101,"1222,54868-4988-04 ",.02)
 ;;54868-4988-04
 ;;9002226.02101,"1222,54868-5148-00 ",.01)
 ;;54868-5148-00
 ;;9002226.02101,"1222,54868-5148-00 ",.02)
 ;;54868-5148-00
 ;;9002226.02101,"1222,54868-5148-01 ",.01)
 ;;54868-5148-01
 ;;9002226.02101,"1222,54868-5148-01 ",.02)
 ;;54868-5148-01
 ;;9002226.02101,"1222,54868-5148-02 ",.01)
 ;;54868-5148-02
 ;;9002226.02101,"1222,54868-5148-02 ",.02)
 ;;54868-5148-02
 ;;9002226.02101,"1222,54868-5148-03 ",.01)
 ;;54868-5148-03
 ;;9002226.02101,"1222,54868-5148-03 ",.02)
 ;;54868-5148-03
 ;;9002226.02101,"1222,54868-5148-04 ",.01)
 ;;54868-5148-04
 ;;9002226.02101,"1222,54868-5148-04 ",.02)
 ;;54868-5148-04
 ;;9002226.02101,"1222,54868-5185-00 ",.01)
 ;;54868-5185-00
 ;;9002226.02101,"1222,54868-5185-00 ",.02)
 ;;54868-5185-00
 ;;9002226.02101,"1222,54868-5185-01 ",.01)
 ;;54868-5185-01
 ;;9002226.02101,"1222,54868-5185-01 ",.02)
 ;;54868-5185-01
 ;;9002226.02101,"1222,54868-5185-02 ",.01)
 ;;54868-5185-02
 ;;9002226.02101,"1222,54868-5185-02 ",.02)
 ;;54868-5185-02
 ;;9002226.02101,"1222,54868-5185-03 ",.01)
 ;;54868-5185-03
 ;;9002226.02101,"1222,54868-5185-03 ",.02)
 ;;54868-5185-03
 ;;9002226.02101,"1222,54868-5188-00 ",.01)
 ;;54868-5188-00
 ;;9002226.02101,"1222,54868-5188-00 ",.02)
 ;;54868-5188-00
 ;;9002226.02101,"1222,54868-5188-01 ",.01)
 ;;54868-5188-01
 ;;9002226.02101,"1222,54868-5188-01 ",.02)
 ;;54868-5188-01
 ;;9002226.02101,"1222,54868-5188-02 ",.01)
 ;;54868-5188-02
 ;;9002226.02101,"1222,54868-5188-02 ",.02)
 ;;54868-5188-02
 ;;9002226.02101,"1222,54868-5210-00 ",.01)
 ;;54868-5210-00
 ;;9002226.02101,"1222,54868-5210-00 ",.02)
 ;;54868-5210-00
 ;;9002226.02101,"1222,54868-5210-01 ",.01)
 ;;54868-5210-01
 ;;9002226.02101,"1222,54868-5210-01 ",.02)
 ;;54868-5210-01
 ;;9002226.02101,"1222,54868-5210-02 ",.01)
 ;;54868-5210-02
 ;;9002226.02101,"1222,54868-5210-02 ",.02)
 ;;54868-5210-02
 ;;9002226.02101,"1222,54868-5210-03 ",.01)
 ;;54868-5210-03
 ;;9002226.02101,"1222,54868-5210-03 ",.02)
 ;;54868-5210-03
 ;;9002226.02101,"1222,54868-5243-00 ",.01)
 ;;54868-5243-00
 ;;9002226.02101,"1222,54868-5243-00 ",.02)
 ;;54868-5243-00
 ;;9002226.02101,"1222,54868-5243-01 ",.01)
 ;;54868-5243-01
 ;;9002226.02101,"1222,54868-5243-01 ",.02)
 ;;54868-5243-01
 ;;9002226.02101,"1222,54868-5243-02 ",.01)
 ;;54868-5243-02
 ;;9002226.02101,"1222,54868-5243-02 ",.02)
 ;;54868-5243-02
 ;;9002226.02101,"1222,54868-5243-03 ",.01)
 ;;54868-5243-03
 ;;9002226.02101,"1222,54868-5243-03 ",.02)
 ;;54868-5243-03
 ;;9002226.02101,"1222,54868-5243-04 ",.01)
 ;;54868-5243-04
 ;;9002226.02101,"1222,54868-5243-04 ",.02)
 ;;54868-5243-04
 ;;9002226.02101,"1222,54868-5364-00 ",.01)
 ;;54868-5364-00
 ;;9002226.02101,"1222,54868-5364-00 ",.02)
 ;;54868-5364-00
 ;;9002226.02101,"1222,54868-5364-01 ",.01)
 ;;54868-5364-01
 ;;9002226.02101,"1222,54868-5364-01 ",.02)
 ;;54868-5364-01
 ;;9002226.02101,"1222,54868-5364-02 ",.01)
 ;;54868-5364-02
 ;;9002226.02101,"1222,54868-5364-02 ",.02)
 ;;54868-5364-02
 ;;9002226.02101,"1222,54868-5457-00 ",.01)
 ;;54868-5457-00
 ;;9002226.02101,"1222,54868-5457-00 ",.02)
 ;;54868-5457-00
 ;;9002226.02101,"1222,54868-5457-01 ",.01)
 ;;54868-5457-01
 ;;9002226.02101,"1222,54868-5457-01 ",.02)
 ;;54868-5457-01
 ;;9002226.02101,"1222,54868-5457-02 ",.01)
 ;;54868-5457-02
 ;;9002226.02101,"1222,54868-5457-02 ",.02)
 ;;54868-5457-02
 ;;9002226.02101,"1222,54868-5467-00 ",.01)
 ;;54868-5467-00
 ;;9002226.02101,"1222,54868-5467-00 ",.02)
 ;;54868-5467-00
 ;;9002226.02101,"1222,54868-5467-01 ",.01)
 ;;54868-5467-01
 ;;9002226.02101,"1222,54868-5467-01 ",.02)
 ;;54868-5467-01
 ;;9002226.02101,"1222,54868-5467-02 ",.01)
 ;;54868-5467-02
 ;;9002226.02101,"1222,54868-5467-02 ",.02)
 ;;54868-5467-02
 ;;9002226.02101,"1222,54868-5712-00 ",.01)
 ;;54868-5712-00
 ;;9002226.02101,"1222,54868-5712-00 ",.02)
 ;;54868-5712-00
 ;;9002226.02101,"1222,54868-5739-00 ",.01)
 ;;54868-5739-00
 ;;9002226.02101,"1222,54868-5739-00 ",.02)
 ;;54868-5739-00
 ;;9002226.02101,"1222,55048-0241-30 ",.01)
 ;;55048-0241-30
 ;;9002226.02101,"1222,55048-0241-30 ",.02)
 ;;55048-0241-30
 ;;9002226.02101,"1222,55048-0242-30 ",.01)
 ;;55048-0242-30
 ;;9002226.02101,"1222,55048-0242-30 ",.02)
 ;;55048-0242-30
 ;;9002226.02101,"1222,55048-0243-30 ",.01)
 ;;55048-0243-30
 ;;9002226.02101,"1222,55048-0243-30 ",.02)
 ;;55048-0243-30
 ;;9002226.02101,"1222,55048-0243-60 ",.01)
 ;;55048-0243-60
 ;;9002226.02101,"1222,55048-0243-60 ",.02)
 ;;55048-0243-60
 ;;9002226.02101,"1222,55048-0244-30 ",.01)
 ;;55048-0244-30
 ;;9002226.02101,"1222,55048-0244-30 ",.02)
 ;;55048-0244-30
 ;;9002226.02101,"1222,55048-0245-30 ",.01)
 ;;55048-0245-30
 ;;9002226.02101,"1222,55048-0245-30 ",.02)
 ;;55048-0245-30
 ;;9002226.02101,"1222,55048-0245-60 ",.01)
 ;;55048-0245-60
 ;;9002226.02101,"1222,55048-0245-60 ",.02)
 ;;55048-0245-60
 ;;9002226.02101,"1222,55048-0246-30 ",.01)
 ;;55048-0246-30
 ;;9002226.02101,"1222,55048-0246-30 ",.02)
 ;;55048-0246-30
 ;;9002226.02101,"1222,55048-0247-30 ",.01)
 ;;55048-0247-30
 ;;9002226.02101,"1222,55048-0247-30 ",.02)
 ;;55048-0247-30
 ;;9002226.02101,"1222,55048-0248-30 ",.01)
 ;;55048-0248-30
 ;;9002226.02101,"1222,55048-0248-30 ",.02)
 ;;55048-0248-30
 ;;9002226.02101,"1222,55048-0248-90 ",.01)
 ;;55048-0248-90
 ;;9002226.02101,"1222,55048-0248-90 ",.02)
 ;;55048-0248-90
 ;;9002226.02101,"1222,55048-0269-30 ",.01)
 ;;55048-0269-30
 ;;9002226.02101,"1222,55048-0269-30 ",.02)
 ;;55048-0269-30
 ;;9002226.02101,"1222,55048-0270-30 ",.01)
 ;;55048-0270-30
 ;;9002226.02101,"1222,55048-0270-30 ",.02)
 ;;55048-0270-30
 ;;9002226.02101,"1222,55048-0273-60 ",.01)
 ;;55048-0273-60
 ;;9002226.02101,"1222,55048-0273-60 ",.02)
 ;;55048-0273-60
 ;;9002226.02101,"1222,55048-0273-71 ",.01)
 ;;55048-0273-71
 ;;9002226.02101,"1222,55048-0273-71 ",.02)
 ;;55048-0273-71
 ;;9002226.02101,"1222,55048-0288-60 ",.01)
 ;;55048-0288-60
 ;;9002226.02101,"1222,55048-0288-60 ",.02)
 ;;55048-0288-60
 ;;9002226.02101,"1222,55048-0289-60 ",.01)
 ;;55048-0289-60
 ;;9002226.02101,"1222,55048-0289-60 ",.02)
 ;;55048-0289-60
 ;;9002226.02101,"1222,55111-0320-01 ",.01)
 ;;55111-0320-01
