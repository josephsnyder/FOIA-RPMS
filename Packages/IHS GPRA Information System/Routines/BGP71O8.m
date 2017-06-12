BGP71O8 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1800,52959-0880-90 ",.01)
 ;;52959-0880-90
 ;;9002226.02101,"1800,52959-0880-90 ",.02)
 ;;52959-0880-90
 ;;9002226.02101,"1800,52959-0881-30 ",.01)
 ;;52959-0881-30
 ;;9002226.02101,"1800,52959-0881-30 ",.02)
 ;;52959-0881-30
 ;;9002226.02101,"1800,52959-0919-00 ",.01)
 ;;52959-0919-00
 ;;9002226.02101,"1800,52959-0919-00 ",.02)
 ;;52959-0919-00
 ;;9002226.02101,"1800,52959-0919-30 ",.01)
 ;;52959-0919-30
 ;;9002226.02101,"1800,52959-0919-30 ",.02)
 ;;52959-0919-30
 ;;9002226.02101,"1800,52959-0919-60 ",.01)
 ;;52959-0919-60
 ;;9002226.02101,"1800,52959-0919-60 ",.02)
 ;;52959-0919-60
 ;;9002226.02101,"1800,52959-0957-30 ",.01)
 ;;52959-0957-30
 ;;9002226.02101,"1800,52959-0957-30 ",.02)
 ;;52959-0957-30
 ;;9002226.02101,"1800,52959-0971-30 ",.01)
 ;;52959-0971-30
 ;;9002226.02101,"1800,52959-0971-30 ",.02)
 ;;52959-0971-30
 ;;9002226.02101,"1800,53002-0502-05 ",.01)
 ;;53002-0502-05
 ;;9002226.02101,"1800,53002-0502-05 ",.02)
 ;;53002-0502-05
 ;;9002226.02101,"1800,53002-0502-10 ",.01)
 ;;53002-0502-10
 ;;9002226.02101,"1800,53002-0502-10 ",.02)
 ;;53002-0502-10
 ;;9002226.02101,"1800,53002-0502-20 ",.01)
 ;;53002-0502-20
 ;;9002226.02101,"1800,53002-0502-20 ",.02)
 ;;53002-0502-20
 ;;9002226.02101,"1800,53002-0502-30 ",.01)
 ;;53002-0502-30
 ;;9002226.02101,"1800,53002-0502-30 ",.02)
 ;;53002-0502-30
 ;;9002226.02101,"1800,53002-1292-01 ",.01)
 ;;53002-1292-01
 ;;9002226.02101,"1800,53002-1292-01 ",.02)
 ;;53002-1292-01
 ;;9002226.02101,"1800,53002-1292-02 ",.01)
 ;;53002-1292-02
 ;;9002226.02101,"1800,53002-1292-02 ",.02)
 ;;53002-1292-02
 ;;9002226.02101,"1800,53002-1292-03 ",.01)
 ;;53002-1292-03
 ;;9002226.02101,"1800,53002-1292-03 ",.02)
 ;;53002-1292-03
 ;;9002226.02101,"1800,53002-1594-01 ",.01)
 ;;53002-1594-01
 ;;9002226.02101,"1800,53002-1594-01 ",.02)
 ;;53002-1594-01
 ;;9002226.02101,"1800,53217-0149-30 ",.01)
 ;;53217-0149-30
 ;;9002226.02101,"1800,53217-0149-30 ",.02)
 ;;53217-0149-30
 ;;9002226.02101,"1800,53217-0149-60 ",.01)
 ;;53217-0149-60
 ;;9002226.02101,"1800,53217-0149-60 ",.02)
 ;;53217-0149-60
 ;;9002226.02101,"1800,53217-0150-30 ",.01)
 ;;53217-0150-30
 ;;9002226.02101,"1800,53217-0150-30 ",.02)
 ;;53217-0150-30
 ;;9002226.02101,"1800,53217-0150-60 ",.01)
 ;;53217-0150-60
 ;;9002226.02101,"1800,53217-0150-60 ",.02)
 ;;53217-0150-60
 ;;9002226.02101,"1800,53217-0151-30 ",.01)
 ;;53217-0151-30
 ;;9002226.02101,"1800,53217-0151-30 ",.02)
 ;;53217-0151-30
 ;;9002226.02101,"1800,53217-0151-60 ",.01)
 ;;53217-0151-60
 ;;9002226.02101,"1800,53217-0151-60 ",.02)
 ;;53217-0151-60
 ;;9002226.02101,"1800,54569-3827-03 ",.01)
 ;;54569-3827-03
 ;;9002226.02101,"1800,54569-3827-03 ",.02)
 ;;54569-3827-03
 ;;9002226.02101,"1800,54569-3828-01 ",.01)
 ;;54569-3828-01
 ;;9002226.02101,"1800,54569-3828-01 ",.02)
 ;;54569-3828-01
 ;;9002226.02101,"1800,54569-4837-00 ",.01)
 ;;54569-4837-00
 ;;9002226.02101,"1800,54569-4837-00 ",.02)
 ;;54569-4837-00
 ;;9002226.02101,"1800,54569-5684-00 ",.01)
 ;;54569-5684-00
 ;;9002226.02101,"1800,54569-5684-00 ",.02)
 ;;54569-5684-00
 ;;9002226.02101,"1800,54569-5696-00 ",.01)
 ;;54569-5696-00
 ;;9002226.02101,"1800,54569-5696-00 ",.02)
 ;;54569-5696-00
 ;;9002226.02101,"1800,54569-5760-00 ",.01)
 ;;54569-5760-00
 ;;9002226.02101,"1800,54569-5760-00 ",.02)
 ;;54569-5760-00
 ;;9002226.02101,"1800,54569-5760-01 ",.01)
 ;;54569-5760-01
 ;;9002226.02101,"1800,54569-5760-01 ",.02)
 ;;54569-5760-01
 ;;9002226.02101,"1800,54569-5906-00 ",.01)
 ;;54569-5906-00
 ;;9002226.02101,"1800,54569-5906-00 ",.02)
 ;;54569-5906-00
 ;;9002226.02101,"1800,54569-5906-01 ",.01)
 ;;54569-5906-01
 ;;9002226.02101,"1800,54569-5906-01 ",.02)
 ;;54569-5906-01
 ;;9002226.02101,"1800,54569-5906-02 ",.01)
 ;;54569-5906-02
 ;;9002226.02101,"1800,54569-5906-02 ",.02)
 ;;54569-5906-02
 ;;9002226.02101,"1800,54569-5906-03 ",.01)
 ;;54569-5906-03
 ;;9002226.02101,"1800,54569-5906-03 ",.02)
 ;;54569-5906-03
 ;;9002226.02101,"1800,54569-5906-04 ",.01)
 ;;54569-5906-04
 ;;9002226.02101,"1800,54569-5906-04 ",.02)
 ;;54569-5906-04
 ;;9002226.02101,"1800,54569-5907-00 ",.01)
 ;;54569-5907-00
 ;;9002226.02101,"1800,54569-5907-00 ",.02)
 ;;54569-5907-00
 ;;9002226.02101,"1800,54569-5907-01 ",.01)
 ;;54569-5907-01
 ;;9002226.02101,"1800,54569-5907-01 ",.02)
 ;;54569-5907-01
 ;;9002226.02101,"1800,54569-6118-00 ",.01)
 ;;54569-6118-00
 ;;9002226.02101,"1800,54569-6118-00 ",.02)
 ;;54569-6118-00
 ;;9002226.02101,"1800,54569-6118-01 ",.01)
 ;;54569-6118-01
 ;;9002226.02101,"1800,54569-6118-01 ",.02)
 ;;54569-6118-01
 ;;9002226.02101,"1800,54569-6231-00 ",.01)
 ;;54569-6231-00
 ;;9002226.02101,"1800,54569-6231-00 ",.02)
 ;;54569-6231-00
 ;;9002226.02101,"1800,54569-6231-01 ",.01)
 ;;54569-6231-01
 ;;9002226.02101,"1800,54569-6231-01 ",.02)
 ;;54569-6231-01
 ;;9002226.02101,"1800,54569-6378-00 ",.01)
 ;;54569-6378-00
 ;;9002226.02101,"1800,54569-6378-00 ",.02)
 ;;54569-6378-00
 ;;9002226.02101,"1800,54569-6543-00 ",.01)
 ;;54569-6543-00
 ;;9002226.02101,"1800,54569-6543-00 ",.02)
 ;;54569-6543-00
 ;;9002226.02101,"1800,54569-6544-00 ",.01)
 ;;54569-6544-00
 ;;9002226.02101,"1800,54569-6544-00 ",.02)
 ;;54569-6544-00
 ;;9002226.02101,"1800,54569-6609-00 ",.01)
 ;;54569-6609-00
 ;;9002226.02101,"1800,54569-6609-00 ",.02)
 ;;54569-6609-00
 ;;9002226.02101,"1800,54569-8804-00 ",.01)
 ;;54569-8804-00
 ;;9002226.02101,"1800,54569-8804-00 ",.02)
 ;;54569-8804-00
 ;;9002226.02101,"1800,54868-0845-00 ",.01)
 ;;54868-0845-00
 ;;9002226.02101,"1800,54868-0845-00 ",.02)
 ;;54868-0845-00
 ;;9002226.02101,"1800,54868-0845-01 ",.01)
 ;;54868-0845-01
 ;;9002226.02101,"1800,54868-0845-01 ",.02)
 ;;54868-0845-01
 ;;9002226.02101,"1800,54868-0845-02 ",.01)
 ;;54868-0845-02
 ;;9002226.02101,"1800,54868-0845-02 ",.02)
 ;;54868-0845-02
 ;;9002226.02101,"1800,54868-0845-03 ",.01)
 ;;54868-0845-03
 ;;9002226.02101,"1800,54868-0845-03 ",.02)
 ;;54868-0845-03
 ;;9002226.02101,"1800,54868-0846-00 ",.01)
 ;;54868-0846-00
 ;;9002226.02101,"1800,54868-0846-00 ",.02)
 ;;54868-0846-00
 ;;9002226.02101,"1800,54868-0846-01 ",.01)
 ;;54868-0846-01
 ;;9002226.02101,"1800,54868-0846-01 ",.02)
 ;;54868-0846-01
 ;;9002226.02101,"1800,54868-0846-02 ",.01)
 ;;54868-0846-02
 ;;9002226.02101,"1800,54868-0846-02 ",.02)
 ;;54868-0846-02
 ;;9002226.02101,"1800,54868-0846-03 ",.01)
 ;;54868-0846-03
 ;;9002226.02101,"1800,54868-0846-03 ",.02)
 ;;54868-0846-03
 ;;9002226.02101,"1800,54868-0846-04 ",.01)
 ;;54868-0846-04
 ;;9002226.02101,"1800,54868-0846-04 ",.02)
 ;;54868-0846-04
 ;;9002226.02101,"1800,54868-0846-05 ",.01)
 ;;54868-0846-05
 ;;9002226.02101,"1800,54868-0846-05 ",.02)
 ;;54868-0846-05
 ;;9002226.02101,"1800,54868-0846-06 ",.01)
 ;;54868-0846-06
 ;;9002226.02101,"1800,54868-0846-06 ",.02)
 ;;54868-0846-06
 ;;9002226.02101,"1800,54868-2642-00 ",.01)
 ;;54868-2642-00
 ;;9002226.02101,"1800,54868-2642-00 ",.02)
 ;;54868-2642-00
 ;;9002226.02101,"1800,54868-2642-01 ",.01)
 ;;54868-2642-01
 ;;9002226.02101,"1800,54868-2642-01 ",.02)
 ;;54868-2642-01
 ;;9002226.02101,"1800,54868-2642-02 ",.01)
 ;;54868-2642-02
 ;;9002226.02101,"1800,54868-2642-02 ",.02)
 ;;54868-2642-02
 ;;9002226.02101,"1800,54868-2642-03 ",.01)
 ;;54868-2642-03
 ;;9002226.02101,"1800,54868-2642-03 ",.02)
 ;;54868-2642-03
 ;;9002226.02101,"1800,54868-2642-04 ",.01)
 ;;54868-2642-04
 ;;9002226.02101,"1800,54868-2642-04 ",.02)
 ;;54868-2642-04
 ;;9002226.02101,"1800,54868-2643-00 ",.01)
 ;;54868-2643-00
 ;;9002226.02101,"1800,54868-2643-00 ",.02)
 ;;54868-2643-00
 ;;9002226.02101,"1800,54868-2643-01 ",.01)
 ;;54868-2643-01
 ;;9002226.02101,"1800,54868-2643-01 ",.02)
 ;;54868-2643-01
 ;;9002226.02101,"1800,54868-2643-02 ",.01)
 ;;54868-2643-02
 ;;9002226.02101,"1800,54868-2643-02 ",.02)
 ;;54868-2643-02
 ;;9002226.02101,"1800,54868-2643-04 ",.01)
 ;;54868-2643-04
 ;;9002226.02101,"1800,54868-2643-04 ",.02)
 ;;54868-2643-04
 ;;9002226.02101,"1800,54868-2643-05 ",.01)
 ;;54868-2643-05
 ;;9002226.02101,"1800,54868-2643-05 ",.02)
 ;;54868-2643-05
 ;;9002226.02101,"1800,54868-2643-06 ",.01)
 ;;54868-2643-06
 ;;9002226.02101,"1800,54868-2643-06 ",.02)
 ;;54868-2643-06
 ;;9002226.02101,"1800,54868-2643-07 ",.01)
 ;;54868-2643-07
 ;;9002226.02101,"1800,54868-2643-07 ",.02)
 ;;54868-2643-07
 ;;9002226.02101,"1800,54868-2643-08 ",.01)
 ;;54868-2643-08
 ;;9002226.02101,"1800,54868-2643-08 ",.02)
 ;;54868-2643-08
 ;;9002226.02101,"1800,54868-4431-00 ",.01)
 ;;54868-4431-00
 ;;9002226.02101,"1800,54868-4431-00 ",.02)
 ;;54868-4431-00
 ;;9002226.02101,"1800,54868-4431-01 ",.01)
 ;;54868-4431-01
 ;;9002226.02101,"1800,54868-4431-01 ",.02)
 ;;54868-4431-01
 ;;9002226.02101,"1800,54868-4431-02 ",.01)
 ;;54868-4431-02
 ;;9002226.02101,"1800,54868-4431-02 ",.02)
 ;;54868-4431-02
 ;;9002226.02101,"1800,54868-4431-03 ",.01)
 ;;54868-4431-03
 ;;9002226.02101,"1800,54868-4431-03 ",.02)
 ;;54868-4431-03
 ;;9002226.02101,"1800,54868-5139-00 ",.01)
 ;;54868-5139-00
 ;;9002226.02101,"1800,54868-5139-00 ",.02)
 ;;54868-5139-00
 ;;9002226.02101,"1800,54868-5139-01 ",.01)
 ;;54868-5139-01
 ;;9002226.02101,"1800,54868-5139-01 ",.02)
 ;;54868-5139-01
 ;;9002226.02101,"1800,54868-5273-00 ",.01)
 ;;54868-5273-00
 ;;9002226.02101,"1800,54868-5273-00 ",.02)
 ;;54868-5273-00
 ;;9002226.02101,"1800,54868-5273-01 ",.01)
 ;;54868-5273-01
 ;;9002226.02101,"1800,54868-5273-01 ",.02)
 ;;54868-5273-01
 ;;9002226.02101,"1800,54868-5273-02 ",.01)
 ;;54868-5273-02
 ;;9002226.02101,"1800,54868-5273-02 ",.02)
 ;;54868-5273-02
 ;;9002226.02101,"1800,54868-5394-00 ",.01)
 ;;54868-5394-00
 ;;9002226.02101,"1800,54868-5394-00 ",.02)
 ;;54868-5394-00
 ;;9002226.02101,"1800,54868-5394-01 ",.01)
 ;;54868-5394-01
 ;;9002226.02101,"1800,54868-5394-01 ",.02)
 ;;54868-5394-01
 ;;9002226.02101,"1800,54868-5394-02 ",.01)
 ;;54868-5394-02
 ;;9002226.02101,"1800,54868-5394-02 ",.02)
 ;;54868-5394-02
 ;;9002226.02101,"1800,54868-5394-03 ",.01)
 ;;54868-5394-03
 ;;9002226.02101,"1800,54868-5394-03 ",.02)
 ;;54868-5394-03
 ;;9002226.02101,"1800,54868-5426-00 ",.01)
 ;;54868-5426-00
 ;;9002226.02101,"1800,54868-5426-00 ",.02)
 ;;54868-5426-00
 ;;9002226.02101,"1800,54868-5426-01 ",.01)
 ;;54868-5426-01
 ;;9002226.02101,"1800,54868-5426-01 ",.02)
 ;;54868-5426-01
 ;;9002226.02101,"1800,54868-5426-02 ",.01)
 ;;54868-5426-02
 ;;9002226.02101,"1800,54868-5426-02 ",.02)
 ;;54868-5426-02
 ;;9002226.02101,"1800,54868-5426-03 ",.01)
 ;;54868-5426-03
 ;;9002226.02101,"1800,54868-5426-03 ",.02)
 ;;54868-5426-03
 ;;9002226.02101,"1800,54868-5426-04 ",.01)
 ;;54868-5426-04
 ;;9002226.02101,"1800,54868-5426-04 ",.02)
 ;;54868-5426-04
 ;;9002226.02101,"1800,54868-5439-00 ",.01)
 ;;54868-5439-00
 ;;9002226.02101,"1800,54868-5439-00 ",.02)
 ;;54868-5439-00
 ;;9002226.02101,"1800,54868-5439-01 ",.01)
 ;;54868-5439-01
 ;;9002226.02101,"1800,54868-5439-01 ",.02)
 ;;54868-5439-01
 ;;9002226.02101,"1800,54868-5461-00 ",.01)
 ;;54868-5461-00
 ;;9002226.02101,"1800,54868-5461-00 ",.02)
 ;;54868-5461-00
 ;;9002226.02101,"1800,54868-5461-01 ",.01)
 ;;54868-5461-01
 ;;9002226.02101,"1800,54868-5461-01 ",.02)
 ;;54868-5461-01
 ;;9002226.02101,"1800,54868-5461-02 ",.01)
 ;;54868-5461-02
 ;;9002226.02101,"1800,54868-5461-02 ",.02)
 ;;54868-5461-02
 ;;9002226.02101,"1800,54868-5908-00 ",.01)
 ;;54868-5908-00
 ;;9002226.02101,"1800,54868-5908-00 ",.02)
 ;;54868-5908-00
 ;;9002226.02101,"1800,54868-5908-01 ",.01)
 ;;54868-5908-01
 ;;9002226.02101,"1800,54868-5908-01 ",.02)
 ;;54868-5908-01
 ;;9002226.02101,"1800,54868-5909-00 ",.01)
 ;;54868-5909-00
 ;;9002226.02101,"1800,54868-5909-00 ",.02)
 ;;54868-5909-00
 ;;9002226.02101,"1800,54868-5909-01 ",.01)
 ;;54868-5909-01
