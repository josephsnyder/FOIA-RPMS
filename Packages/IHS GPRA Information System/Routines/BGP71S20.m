BGP71S20 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"875,54868-0604-00 ",.01)
 ;;54868-0604-00
 ;;9002226.02101,"875,54868-0604-00 ",.02)
 ;;54868-0604-00
 ;;9002226.02101,"875,54868-0735-00 ",.01)
 ;;54868-0735-00
 ;;9002226.02101,"875,54868-0735-00 ",.02)
 ;;54868-0735-00
 ;;9002226.02101,"875,54868-0735-02 ",.01)
 ;;54868-0735-02
 ;;9002226.02101,"875,54868-0735-02 ",.02)
 ;;54868-0735-02
 ;;9002226.02101,"875,54868-0735-03 ",.01)
 ;;54868-0735-03
 ;;9002226.02101,"875,54868-0735-03 ",.02)
 ;;54868-0735-03
 ;;9002226.02101,"875,54868-0735-04 ",.01)
 ;;54868-0735-04
 ;;9002226.02101,"875,54868-0735-04 ",.02)
 ;;54868-0735-04
 ;;9002226.02101,"875,54868-0735-05 ",.01)
 ;;54868-0735-05
 ;;9002226.02101,"875,54868-0735-05 ",.02)
 ;;54868-0735-05
 ;;9002226.02101,"875,54868-0735-07 ",.01)
 ;;54868-0735-07
 ;;9002226.02101,"875,54868-0735-07 ",.02)
 ;;54868-0735-07
 ;;9002226.02101,"875,54868-0735-08 ",.01)
 ;;54868-0735-08
 ;;9002226.02101,"875,54868-0735-08 ",.02)
 ;;54868-0735-08
 ;;9002226.02101,"875,54868-0816-00 ",.01)
 ;;54868-0816-00
 ;;9002226.02101,"875,54868-0816-00 ",.02)
 ;;54868-0816-00
 ;;9002226.02101,"875,54868-0816-02 ",.01)
 ;;54868-0816-02
 ;;9002226.02101,"875,54868-0816-02 ",.02)
 ;;54868-0816-02
 ;;9002226.02101,"875,54868-0816-03 ",.01)
 ;;54868-0816-03
 ;;9002226.02101,"875,54868-0816-03 ",.02)
 ;;54868-0816-03
 ;;9002226.02101,"875,54868-0816-04 ",.01)
 ;;54868-0816-04
 ;;9002226.02101,"875,54868-0816-04 ",.02)
 ;;54868-0816-04
 ;;9002226.02101,"875,54868-0816-05 ",.01)
 ;;54868-0816-05
 ;;9002226.02101,"875,54868-0816-05 ",.02)
 ;;54868-0816-05
 ;;9002226.02101,"875,54868-0816-06 ",.01)
 ;;54868-0816-06
 ;;9002226.02101,"875,54868-0816-06 ",.02)
 ;;54868-0816-06
 ;;9002226.02101,"875,54868-0816-07 ",.01)
 ;;54868-0816-07
 ;;9002226.02101,"875,54868-0816-07 ",.02)
 ;;54868-0816-07
 ;;9002226.02101,"875,54868-0816-08 ",.01)
 ;;54868-0816-08
 ;;9002226.02101,"875,54868-0816-08 ",.02)
 ;;54868-0816-08
 ;;9002226.02101,"875,54868-0816-09 ",.01)
 ;;54868-0816-09
 ;;9002226.02101,"875,54868-0816-09 ",.02)
 ;;54868-0816-09
 ;;9002226.02101,"875,54868-1017-00 ",.01)
 ;;54868-1017-00
 ;;9002226.02101,"875,54868-1017-00 ",.02)
 ;;54868-1017-00
 ;;9002226.02101,"875,54868-1103-01 ",.01)
 ;;54868-1103-01
 ;;9002226.02101,"875,54868-1103-01 ",.02)
 ;;54868-1103-01
 ;;9002226.02101,"875,54868-1103-03 ",.01)
 ;;54868-1103-03
 ;;9002226.02101,"875,54868-1103-03 ",.02)
 ;;54868-1103-03
 ;;9002226.02101,"875,54868-1103-05 ",.01)
 ;;54868-1103-05
 ;;9002226.02101,"875,54868-1103-05 ",.02)
 ;;54868-1103-05
 ;;9002226.02101,"875,54868-1103-06 ",.01)
 ;;54868-1103-06
 ;;9002226.02101,"875,54868-1103-06 ",.02)
 ;;54868-1103-06
 ;;9002226.02101,"875,54868-1103-07 ",.01)
 ;;54868-1103-07
 ;;9002226.02101,"875,54868-1103-07 ",.02)
 ;;54868-1103-07
 ;;9002226.02101,"875,54868-1103-09 ",.01)
 ;;54868-1103-09
 ;;9002226.02101,"875,54868-1103-09 ",.02)
 ;;54868-1103-09
 ;;9002226.02101,"875,54868-1110-00 ",.01)
 ;;54868-1110-00
 ;;9002226.02101,"875,54868-1110-00 ",.02)
 ;;54868-1110-00
 ;;9002226.02101,"875,54868-1110-01 ",.01)
 ;;54868-1110-01
 ;;9002226.02101,"875,54868-1110-01 ",.02)
 ;;54868-1110-01
 ;;9002226.02101,"875,54868-1110-02 ",.01)
 ;;54868-1110-02
 ;;9002226.02101,"875,54868-1110-02 ",.02)
 ;;54868-1110-02
 ;;9002226.02101,"875,54868-1110-03 ",.01)
 ;;54868-1110-03
 ;;9002226.02101,"875,54868-1110-03 ",.02)
 ;;54868-1110-03
 ;;9002226.02101,"875,54868-1110-05 ",.01)
 ;;54868-1110-05
 ;;9002226.02101,"875,54868-1110-05 ",.02)
 ;;54868-1110-05
 ;;9002226.02101,"875,54868-1110-08 ",.01)
 ;;54868-1110-08
 ;;9002226.02101,"875,54868-1110-08 ",.02)
 ;;54868-1110-08
 ;;9002226.02101,"875,54868-1110-09 ",.01)
 ;;54868-1110-09
 ;;9002226.02101,"875,54868-1110-09 ",.02)
 ;;54868-1110-09
 ;;9002226.02101,"875,54868-4102-01 ",.01)
 ;;54868-4102-01
 ;;9002226.02101,"875,54868-4102-01 ",.02)
 ;;54868-4102-01
 ;;9002226.02101,"875,54868-4102-02 ",.01)
 ;;54868-4102-02
 ;;9002226.02101,"875,54868-4102-02 ",.02)
 ;;54868-4102-02
 ;;9002226.02101,"875,54868-4102-03 ",.01)
 ;;54868-4102-03
 ;;9002226.02101,"875,54868-4102-03 ",.02)
 ;;54868-4102-03
 ;;9002226.02101,"875,54868-4102-04 ",.01)
 ;;54868-4102-04
 ;;9002226.02101,"875,54868-4102-04 ",.02)
 ;;54868-4102-04
 ;;9002226.02101,"875,54868-4102-05 ",.01)
 ;;54868-4102-05
 ;;9002226.02101,"875,54868-4102-05 ",.02)
 ;;54868-4102-05
 ;;9002226.02101,"875,54868-4733-00 ",.01)
 ;;54868-4733-00
 ;;9002226.02101,"875,54868-4733-00 ",.02)
 ;;54868-4733-00
 ;;9002226.02101,"875,54868-4733-01 ",.01)
 ;;54868-4733-01
 ;;9002226.02101,"875,54868-4733-01 ",.02)
 ;;54868-4733-01
 ;;9002226.02101,"875,54868-4733-02 ",.01)
 ;;54868-4733-02
 ;;9002226.02101,"875,54868-4733-02 ",.02)
 ;;54868-4733-02
 ;;9002226.02101,"875,54868-4733-03 ",.01)
 ;;54868-4733-03
 ;;9002226.02101,"875,54868-4733-03 ",.02)
 ;;54868-4733-03
 ;;9002226.02101,"875,54868-4733-04 ",.01)
 ;;54868-4733-04
 ;;9002226.02101,"875,54868-4733-04 ",.02)
 ;;54868-4733-04
 ;;9002226.02101,"875,54868-4733-05 ",.01)
 ;;54868-4733-05
 ;;9002226.02101,"875,54868-4733-05 ",.02)
 ;;54868-4733-05
 ;;9002226.02101,"875,54868-4733-06 ",.01)
 ;;54868-4733-06
 ;;9002226.02101,"875,54868-4733-06 ",.02)
 ;;54868-4733-06
 ;;9002226.02101,"875,54868-4733-07 ",.01)
 ;;54868-4733-07
 ;;9002226.02101,"875,54868-4733-07 ",.02)
 ;;54868-4733-07
 ;;9002226.02101,"875,54868-4733-08 ",.01)
 ;;54868-4733-08
 ;;9002226.02101,"875,54868-4733-08 ",.02)
 ;;54868-4733-08
 ;;9002226.02101,"875,54868-5597-00 ",.01)
 ;;54868-5597-00
 ;;9002226.02101,"875,54868-5597-00 ",.02)
 ;;54868-5597-00
 ;;9002226.02101,"875,54868-5597-01 ",.01)
 ;;54868-5597-01
 ;;9002226.02101,"875,54868-5597-01 ",.02)
 ;;54868-5597-01
 ;;9002226.02101,"875,54868-5597-02 ",.01)
 ;;54868-5597-02
 ;;9002226.02101,"875,54868-5597-02 ",.02)
 ;;54868-5597-02
 ;;9002226.02101,"875,54868-5597-03 ",.01)
 ;;54868-5597-03
 ;;9002226.02101,"875,54868-5597-03 ",.02)
 ;;54868-5597-03
 ;;9002226.02101,"875,54868-6022-00 ",.01)
 ;;54868-6022-00
 ;;9002226.02101,"875,54868-6022-00 ",.02)
 ;;54868-6022-00
 ;;9002226.02101,"875,54868-6102-00 ",.01)
 ;;54868-6102-00
 ;;9002226.02101,"875,54868-6102-00 ",.02)
 ;;54868-6102-00
 ;;9002226.02101,"875,54868-6102-01 ",.01)
 ;;54868-6102-01
 ;;9002226.02101,"875,54868-6102-01 ",.02)
 ;;54868-6102-01
 ;;9002226.02101,"875,54868-6102-02 ",.01)
 ;;54868-6102-02
 ;;9002226.02101,"875,54868-6102-02 ",.02)
 ;;54868-6102-02
 ;;9002226.02101,"875,54868-6102-03 ",.01)
 ;;54868-6102-03
 ;;9002226.02101,"875,54868-6102-03 ",.02)
 ;;54868-6102-03
 ;;9002226.02101,"875,54868-6102-04 ",.01)
 ;;54868-6102-04
 ;;9002226.02101,"875,54868-6102-04 ",.02)
 ;;54868-6102-04
 ;;9002226.02101,"875,54868-6102-05 ",.01)
 ;;54868-6102-05
 ;;9002226.02101,"875,54868-6102-05 ",.02)
 ;;54868-6102-05
 ;;9002226.02101,"875,55045-1433-04 ",.01)
 ;;55045-1433-04
 ;;9002226.02101,"875,55045-1433-04 ",.02)
 ;;55045-1433-04
 ;;9002226.02101,"875,55045-1594-08 ",.01)
 ;;55045-1594-08
 ;;9002226.02101,"875,55045-1594-08 ",.02)
 ;;55045-1594-08
 ;;9002226.02101,"875,55048-0055-15 ",.01)
 ;;55048-0055-15
 ;;9002226.02101,"875,55048-0055-15 ",.02)
 ;;55048-0055-15
 ;;9002226.02101,"875,55048-0055-20 ",.01)
 ;;55048-0055-20
 ;;9002226.02101,"875,55048-0055-20 ",.02)
 ;;55048-0055-20
 ;;9002226.02101,"875,55048-0055-30 ",.01)
 ;;55048-0055-30
 ;;9002226.02101,"875,55048-0055-30 ",.02)
 ;;55048-0055-30
 ;;9002226.02101,"875,55048-0055-40 ",.01)
 ;;55048-0055-40
 ;;9002226.02101,"875,55048-0055-40 ",.02)
 ;;55048-0055-40
 ;;9002226.02101,"875,55048-0055-60 ",.01)
 ;;55048-0055-60
 ;;9002226.02101,"875,55048-0055-60 ",.02)
 ;;55048-0055-60
 ;;9002226.02101,"875,55048-0055-71 ",.01)
 ;;55048-0055-71
 ;;9002226.02101,"875,55048-0055-71 ",.02)
 ;;55048-0055-71
 ;;9002226.02101,"875,55048-0055-90 ",.01)
 ;;55048-0055-90
 ;;9002226.02101,"875,55048-0055-90 ",.02)
 ;;55048-0055-90
 ;;9002226.02101,"875,55048-0080-14 ",.01)
 ;;55048-0080-14
 ;;9002226.02101,"875,55048-0080-14 ",.02)
 ;;55048-0080-14
 ;;9002226.02101,"875,55048-0080-15 ",.01)
 ;;55048-0080-15
 ;;9002226.02101,"875,55048-0080-15 ",.02)
 ;;55048-0080-15
 ;;9002226.02101,"875,55048-0080-20 ",.01)
 ;;55048-0080-20
 ;;9002226.02101,"875,55048-0080-20 ",.02)
 ;;55048-0080-20
 ;;9002226.02101,"875,55048-0080-30 ",.01)
 ;;55048-0080-30
 ;;9002226.02101,"875,55048-0080-30 ",.02)
 ;;55048-0080-30
 ;;9002226.02101,"875,55048-0080-40 ",.01)
 ;;55048-0080-40
 ;;9002226.02101,"875,55048-0080-40 ",.02)
 ;;55048-0080-40
 ;;9002226.02101,"875,55048-0080-45 ",.01)
 ;;55048-0080-45
 ;;9002226.02101,"875,55048-0080-45 ",.02)
 ;;55048-0080-45
 ;;9002226.02101,"875,55048-0080-60 ",.01)
 ;;55048-0080-60
 ;;9002226.02101,"875,55048-0080-60 ",.02)
 ;;55048-0080-60
 ;;9002226.02101,"875,55048-0080-71 ",.01)
 ;;55048-0080-71
 ;;9002226.02101,"875,55048-0080-71 ",.02)
 ;;55048-0080-71
 ;;9002226.02101,"875,55048-0080-90 ",.01)
 ;;55048-0080-90
 ;;9002226.02101,"875,55048-0080-90 ",.02)
 ;;55048-0080-90
 ;;9002226.02101,"875,55048-0082-10 ",.01)
 ;;55048-0082-10
 ;;9002226.02101,"875,55048-0082-10 ",.02)
 ;;55048-0082-10
 ;;9002226.02101,"875,55048-0082-30 ",.01)
 ;;55048-0082-30
 ;;9002226.02101,"875,55048-0082-30 ",.02)
 ;;55048-0082-30
 ;;9002226.02101,"875,55048-0082-40 ",.01)
 ;;55048-0082-40
 ;;9002226.02101,"875,55048-0082-40 ",.02)
 ;;55048-0082-40
 ;;9002226.02101,"875,55048-0082-60 ",.01)
 ;;55048-0082-60
 ;;9002226.02101,"875,55048-0082-60 ",.02)
 ;;55048-0082-60
 ;;9002226.02101,"875,55048-0082-90 ",.01)
 ;;55048-0082-90
 ;;9002226.02101,"875,55048-0082-90 ",.02)
 ;;55048-0082-90
 ;;9002226.02101,"875,55048-0107-90 ",.01)
 ;;55048-0107-90
 ;;9002226.02101,"875,55048-0107-90 ",.02)
 ;;55048-0107-90
 ;;9002226.02101,"875,55048-0136-30 ",.01)
 ;;55048-0136-30
 ;;9002226.02101,"875,55048-0136-30 ",.02)
 ;;55048-0136-30
 ;;9002226.02101,"875,55048-0136-60 ",.01)
 ;;55048-0136-60
 ;;9002226.02101,"875,55048-0136-60 ",.02)
 ;;55048-0136-60
 ;;9002226.02101,"875,55048-0136-90 ",.01)
 ;;55048-0136-90
 ;;9002226.02101,"875,55048-0136-90 ",.02)
 ;;55048-0136-90
 ;;9002226.02101,"875,55048-0147-20 ",.01)
 ;;55048-0147-20
 ;;9002226.02101,"875,55048-0147-20 ",.02)
 ;;55048-0147-20
 ;;9002226.02101,"875,55048-0263-90 ",.01)
 ;;55048-0263-90
 ;;9002226.02101,"875,55048-0263-90 ",.02)
 ;;55048-0263-90
 ;;9002226.02101,"875,55048-0507-60 ",.01)
 ;;55048-0507-60
 ;;9002226.02101,"875,55048-0507-60 ",.02)
 ;;55048-0507-60
 ;;9002226.02101,"875,55048-0507-71 ",.01)
 ;;55048-0507-71
 ;;9002226.02101,"875,55048-0507-71 ",.02)
 ;;55048-0507-71
 ;;9002226.02101,"875,55048-0507-78 ",.01)
 ;;55048-0507-78
 ;;9002226.02101,"875,55048-0507-78 ",.02)
 ;;55048-0507-78
 ;;9002226.02101,"875,55048-0507-84 ",.01)
 ;;55048-0507-84
 ;;9002226.02101,"875,55048-0507-84 ",.02)
 ;;55048-0507-84
 ;;9002226.02101,"875,55048-0507-90 ",.01)
 ;;55048-0507-90
 ;;9002226.02101,"875,55048-0507-90 ",.02)
 ;;55048-0507-90
 ;;9002226.02101,"875,55048-0514-30 ",.01)
 ;;55048-0514-30
 ;;9002226.02101,"875,55048-0514-30 ",.02)
 ;;55048-0514-30
 ;;9002226.02101,"875,55048-0514-60 ",.01)
 ;;55048-0514-60
 ;;9002226.02101,"875,55048-0514-60 ",.02)
 ;;55048-0514-60
 ;;9002226.02101,"875,55048-0514-90 ",.01)
 ;;55048-0514-90
 ;;9002226.02101,"875,55048-0514-90 ",.02)
 ;;55048-0514-90
 ;;9002226.02101,"875,55048-0515-20 ",.01)
 ;;55048-0515-20
 ;;9002226.02101,"875,55048-0515-20 ",.02)
 ;;55048-0515-20
 ;;9002226.02101,"875,55048-0515-30 ",.01)
 ;;55048-0515-30
 ;;9002226.02101,"875,55048-0515-30 ",.02)
 ;;55048-0515-30
 ;;9002226.02101,"875,55048-0515-60 ",.01)
 ;;55048-0515-60
 ;;9002226.02101,"875,55048-0515-60 ",.02)
 ;;55048-0515-60
